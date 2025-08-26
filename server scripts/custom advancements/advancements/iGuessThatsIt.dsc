## Advancement Trigger: kill yourself with a bow or crossbow
grantIGuessThatsItAdvancement:
    debug: false
    type: world
    events:
        on player killed by projectile flagged:!hasIGuessThatsItAdvancement:
            - if <context.entity> == <context.damager> && <context.projectile.entity_type> == ARROW || <context.projectile.entity_type> == SPECTRAL_ARROW:
                - flag <player> hasIGuessThatsItAdvancement
                - advancement id:i_guess_thats_it grant:<player>