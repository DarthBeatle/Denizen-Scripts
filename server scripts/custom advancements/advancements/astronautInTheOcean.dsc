## Advancement Trigger: Swim in the end
grantAstronautInTheOceanAdvancement:
    debug: true
    type: world
    events:
        on player starts swimming flagged:!hasAstronautInTheOceanAdvancement:
            - if <player.world.environment> == THE_END:
                - flag <player> hasAstronautInTheOceanAdvancement
                - advancement id:astronaut_in_the_ocean grant:<player>