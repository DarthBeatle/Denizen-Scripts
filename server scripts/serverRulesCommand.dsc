Server_Rules_Command:
    type: command
    debug: true
    name: rules
    usage: /rules
    description: Display server rules
    script:

        - define rules <script[server_rules_data]>

        - narrate <aqua>----------------------------------
        - narrate "<aqua>|  <green><bold>Realms Season 5 Server Rules  <aqua>|"
        - narrate <aqua>----------------------------------

        # Loop through and print each rule in server_rules_data to player
        - foreach <[rules].parsed_key[server_rules]> as:rule:
            - narrate <element[<[rule.symbol]> <[rule.text]>]>