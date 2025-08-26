Detect_Contact_Damager_Block:
    type: world
    debug: true
    description: detect when a player takes damage from cactus, pointed dripstone or sweet berry bush
    events:
        on player damaged by contact:
            - if <context.damager_block.block.material.name> == cactus:
                - flag <player> damaged_by_cactus:true expire:1t
            - else if <context.damager_block.material.name> == pointed_dripstone:
                - flag <player> damaged_by_pointed_dripstone:true expire:1t
            - else if <context.damager_block.material.name> == sweet_berry_bush:
                - flag <player> damaged_by_sweet_berry_bush:true expire:1t