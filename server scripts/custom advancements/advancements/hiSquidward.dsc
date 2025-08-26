## Advancement Trigger: Kill a squid
grantHiSquidwardAdvancement:
    debug: false
    type: world
    events:
        on squid killed by player flagged:!hasHiSquidwardAdvancement:
            - flag <player> hasHiSquidwardAdvancement
            - advancement id:hi_squidward grant:<player>