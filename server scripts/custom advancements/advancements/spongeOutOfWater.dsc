## Advancement Trigger: Dry a sponge by placing it in the nether or smelting it in a furnace
grantSpongeOutOfWaterAdvancement:
    debug: false
    type: world
    events:
        on player takes sponge from furnace flagged:!hasSpongeOutOfWaterAdvancement:
            - flag <player> hasSpongeOutOfWaterAdvancement
            - advancement id:sponge_out_of_water grant:<player>

        on player places wet_sponge flagged:!hasSpongeOutOfWaterAdvancement:
            - if <context.location.world.environment> == NETHER:
                - flag <player> hasSpongeOutOfWaterAdvancement
                - advancement id:sponge_out_of_water grant:<player>