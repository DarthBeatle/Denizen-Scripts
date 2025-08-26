## Advancement Trigger: Fly from the outer end islands to the main end island with an elytra
grantFlyHomeBuddyAdvancement:
    debug: true
    type: world
    events:
        on player starts gliding flagged:!hasFlyHomeBuddyAdvancement|!startedFlyingAtOuterEndIslands:
            - if <player.location.world.environment> == THE_END:
                # Store the location of the main end island end portal and distance to outer end islands. These are used to compare the player's distance. Uses player world in location tag so that it still works if world name is changed
                - define MAIN_END_ISLAND_PORTAL <location[0,67,0,<player.location.world>]>
                # Distance in blocks
                - define DISTANCE_TO_OUTER_END_ISLANDS 1000
                - if <player.location.distance[<[MAIN_END_ISLAND_PORTAL]>].horizontal> >= <[DISTANCE_TO_OUTER_END_ISLANDS]>:
                    - narrate "Fly home buddy"
                    - flag <player> startedFlyingAtOuterEndIslands

        on player stops gliding flagged:!hasFlyHomeBuddyAdvancement|startedFlyingAtOuterEndIslands:
            - if <player.location.world.environment> == THE_END:
                # Distance is for how close the player has to be to trigger advancement
                - define MAIN_END_ISLAND_PORTAL <location[0,67,0,<player.location.world>]>
                # Distance in blocks
                - define DISTANCE_TO_MAIN_END_ISLAND 110
                - if <player.location.distance[<[MAIN_END_ISLAND_PORTAL]>].horizontal> <= <[DISTANCE_TO_MAIN_END_ISLAND]>:
                    - narrate "You made it!"
                    - flag <player> startedFlyingAtOuterEndIslands:!
                    - flag <player> hasFlyHomeBuddyAdvancement
                    - advancement id:fly_home_buddy grant:<player>
                - else:
                    # Remove flag if they stopped flying and are not close enough to main end island
                    - narrate "You're not near the main end island!"
                    - flag <player> startedflyingatouterendislands:!
            - else:
                # Remove flag if player was teleported out of end while flying
                - flag <player> startedflyingatouterendislands:!