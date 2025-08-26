Restrict_Block_Placement:
    type: world
    debug: true
    events:

        on player places block:
            - define plant_blacklist <script[restricted_blocks_data].parsed_key[plant_blacklist]>
            - foreach <[plant_blacklist]> as:plant:
                - narrate <[plant]>
                - if <context.item_in_hand> == <[plant]>:
                    - narrate "You can't plant those!"
                    - determine cancelled