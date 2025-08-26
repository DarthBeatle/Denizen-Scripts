smite_command:
    type: command
    debug: true
    name: smite
    description: strikes a player with lightning
    usage: /smite player
    permission: admin.smite
    permission message: <dark_red>You don't have access to this command
    script:
    - if <context.server>:
        - announce to_console "<dark_red>This command can be used by players only"
        - stop
    - define user <player.name>
    - define userloc <player.location>
    - define Args <context.raw_args>
    - if <[Args]> == <empty>:
        - narrate "<&[error]>Please specify a player!"
        - stop
    - foreach <server.online_players> as:target:
        - if <[Args]> == <[target].name>:
            - if <[target].name> == <[user]>:
                - narrate "<red>You can't smite yourself lol"
                - stop
            - if <[target].in_group[owner]>:
                - narrate "<red><bold>How dare you try to smite the owner! You shall pay!"
                - strike <[userloc]>
                - stop
            - if <[target].in_group[admin]>:
                - narrate "<red>You cannot smite an admin!"
                - stop
            - announce "<gold><[user]> <gray>smited <[target].name>!"
            - strike <[target].location>