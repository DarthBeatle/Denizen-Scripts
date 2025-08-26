## Advancement Trigger: Player has at least 250 pitcher pods in their inventory
checkPlayerInventoryForPitcherPods:
    debug: false
    type: world
    events:
        on player picks up pitcher_pod flagged:!hasPitcherPodAdvancement:
            - run checkInventoryAndGrantAdvancement

# Checks for all relevant click types when moving items from an inventory to player
        on player NUMBER_KEY|SHIFT_LEFT|SHIFT_RIGHT|SWAP_OFFHAND clicks pitcher_pod in inventory flagged:!hasPitcherPodAdvancement:
            - if <context.clicked_inventory.inventory_type> != PLAYER:
                - run checkInventoryAndGrantAdvancement

# Check for relevant click types in players inventory to detect if player added pitcher pods
        on player RIGHT|LEFT clicks !pitcher_pod in inventory with:pitcher_pod flagged:!hasPitcherPodAdvancement:
            - if <context.clicked_inventory.inventory_type> == PLAYER:
                - run checkInventoryAndGrantAdvancement

# Check for click dragging in inventory
        on player drags pitcher_pod in inventory flagged:!hasPitcherPodAdvancement:
            - if <context.clicked_inventory.inventory_type> == PLAYER:
                - run checkInventoryAndGrantAdvancement

checkInventoryAndGrantAdvancement:
    debug: false
    type: task
    script:
    - define numberOfPitcherPods 0
    # waiting a tick for inventory contents to update with item picked up
    - wait 1t
    - foreach <player.inventory.list_contents> as:item:
        - if <[item].material.name> == PITCHER_POD:
            - define numberOfPitcherPods:+:<[item].quantity>
    - if <[numberOfPitcherPods]> >= 250:
        - flag <player> hasPitcherPodAdvancement
        - advancement id:lots_of_pitcher_pods grant:<player>