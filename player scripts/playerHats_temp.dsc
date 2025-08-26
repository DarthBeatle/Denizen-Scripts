playerHatsCommand:
    type: command
    name: hat
    usage: /hat
    permission: member.hat
    permission message: <dark_red> You don't have access to this command! If you thnk this is an error, please contact the admin
    description: player can equip or unequip a held item as a hat
    script:
        - if <context.server>:
            - announce to_console "<dark_red>This command can be used by players only"
            - stop
        - define hat_in_hand <player.item_in_hand>
        - define current_hat <player.equipment.get[4]>
        # Check if player is not wearing a hat and they are not holding an item
        - if <[current_hat].material.name> == air && <[hat_in_hand].material.name> == air:
            - narrate "<red>You aren't wearing a hat! Hold an item in your hand and try again"
            - stop
        - if <[current_hat].material.name> == <[hat_in_hand].material.name>:
            - narrate "<red>You're already wearing that hat, silly!"
            - stop
        - if <[hat_in_hand].material.name> == air:
            - narrate "<green>Your hat has been removed"
            - equip <player> head:<[hat_in_hand]>
            - give <[current_hat]>
            - stop
        - if <[hat_in_hand].material.name> != air:
            - narrate "<green>Enjoy your new hat!"
            - equip <player> head:<[hat_in_hand]>
            - adjust <player> item_in_hand:air
            # Give back the current hat only if it's not air. Fixes error in console: Cannot give air
            - if <[current_hat].material.name> != air:
                - give <[current_hat]>
            - stop
