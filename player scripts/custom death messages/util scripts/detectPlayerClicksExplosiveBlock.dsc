Detect_Player_Clicks_Explosive_Block:
    type: world
    debug: true
    description: This script is used for custom death messages
    events:
        on player right clicks respawn_anchor in:world:
            - ratelimit <player> 1t
            - flag <player> clicked_respawn_anchor_in_overworld:true expire:1t
        on player right clicks respawn_anchor in:world_the_end:
            - ratelimit <player> 1t
            - flag <player> clicked_respawn_anchor_in_end:true expire:1t

        on player right clicks *bed in:world_nether:
            - ratelimit <player> 1t
            - flag <player> clicked_bed_in_nether:true expire:1t
        on player right clicks *bed in:world_the_end:
            - ratelimit <player> 1t
            - flag <player> clicked_bed_in_end:true expire:1t