roleSwitchCommand:
    type: command
    name: roleswitch
    usage: /roleswitch rolename
    aliases:
        - rs
    permission: admin.roleswitch
    permission message: <dark_red>You don't have access to this command
    tab complete:
        - determine <proc[TabComplete].context[<list[roleswitch|roleswitchTabComplete].include_single[<context.raw_args>]>]>
    description: switch between roles
    script:
        - if <context.server>:
            - announce to_console "<dark_red>This command can be used by players only"
        - else:
            - define Args <context.raw_args>
            - if <[Args]> == <empty>:
                - narrate "<&[error]>Please specify a role name!"
            - if <player.in_group[<[Args]>]>:
                - narrate "<&[error]>You already have the <bold><[Args]><reset><red> role!"
            - else if <server.permission_groups.contains_text[<[Args]>]>:
                - wait 1t
                - group set <[Args]>
                - narrate "<green>Your role has been set to <blue><[Args]>"
            - else:
                - narrate "<&[error]>The role <bold><[Args]><reset><red> does not exist!"

#roleswitchTabComplete and roleswitchTabComplete_rolename are required configuration as part of zozar_firehood's TabComplete Engine
roleswitchTabComplete:
    type: data
    roleswitch:
        _*rolename: end

roleswitchTabComplete_rolename:
    type: procedure
    script:
        - determine <server.permission_groups>

# This tab completion engine was written by zozer_firehood, a member of the Denizen scripting community
#Link: https://forum.denizenscript.com/threads/tabcomplete-engine.299/
TabComplete:
  type: procedure
  debug: false
  definitions: command|data|raw_args
  script:
    - define raw_args <[raw_args].if_null[<empty>]>
    - define newArg '<[raw_args].ends_with[ ].or[<[raw_args].equals[<empty>]>]>'
    - define path <[command]>
    - define script <script[<[data]>]>
    - define args <list>
    - if <[raw_args]> != <empty>:
      - define 'args:|:<[raw_args].split[ ]>'
    - define argsSize <[args].size>
    - if <[newArg]>:
      - define argsSize:+:1
    - repeat <[argsSize].sub[1]> as:index:
      - define value <[args].get[<[index]>]>
      - if <[value]> == <empty>:
        - foreach next
      - define keys <[script].list_keys[<[path]>]>
      - define permLockedKeys <[keys].filter[starts_with[?]]>
      - define keys:<-:<[permLockedKeys]>
      - if <[keys].contains[<[value]>]>:
        - define path <[path]>.<[value]>
      - else:
        - if <[permLockedKeys].size> > 0:
          - define perm '<[permLockedKeys].filter[ends_with[ <[value]>]]>'
          - if !<[perm].is_empty> && '<player.has_permission[<[perm].first.after[?].before[ ]>]>':
            - define path <[path]>.<[perm].first>
            - repeat next
        - define default <[keys].filter[starts_with[_]]>
        - if <[default].is_empty>:
          - determine <list>
        - define path <[path]>.<[default].first>
      - if <[script].data_key[<[path]>]> == end:
        - determine <list>
    - foreach <[script].list_keys[<[path]>]>:
      - if <[value].starts_with[_]>:
        - define value <[value].after[_]>
        - if <[value].starts_with[*]>:
          - define ret:|:<proc[<[data]>_<[value].after[*]>].context[<[args]>]>
      - else if <[value].starts_with[?]>:
        - define perm '<[value].before[ ].after[?]>'
        - if <player.has_permission[<[perm]>]>:
          - define 'ret:|:<[value].after[ ]>'
      - else:
        - define ret:->:<[value]>
    - if !<[ret].exists>:
      - determine <list>
    - if <[newArg]>:
      - determine <[ret]>
    - determine <[ret].filter[starts_with[<[args].last>]]>