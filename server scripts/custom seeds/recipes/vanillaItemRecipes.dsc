Saddle_Recipe:
    type: item
    material: saddle
    recipes:
        1:
            type: shaped
            input:
            - leather|leather|leather
            - string|slime_ball|string
            - tripwire_hook|air|tripwire_hook

Rotten_Flesh_To_Leather_Furnace_Recipe:
    type: item
    material: leather
    display name: Rotten Leather
    allow in material recipes: true
    recipes:
        1:
            type: furnace
            output_quantity: 1
            cook_time: 5s
            experience: 3
            input: rotten_flesh

Super_Wheat_Seeds_To_Wheat_Seeds_Recipe:
    type: item
    material: wheat_seeds
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Wheat_Seeds
    # Using no_id so item can stack with vanilla items
    no_id: true

Super_Cocoa_Beans_To_Cocoa_Beans_Recipe:
    type: item
    material: cocoa_beans
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Cocoa_Beans
    # Using no_id so item can stack with vanilla items
    no_id: true

Super_Pumpkin_Seeds_To_Pumpkin_Seeds_Recipe:
    type: item
    material: pumpkin_seeds
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Pumpkin_Seeds
    # Using no_id so item can stack with vanilla items
    no_id: true

Super_Melon_Seeds_To_Melon_Seeds_Recipe:
    type: item
    material: melon_seeds
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Melon_Seeds
    # Using no_id so item can stack with vanilla items
    no_id: true

Super_Beetroot_Seeds_To_Beetroot_Seeds_Recipe:
    type: item
    material: beetroot_seeds
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Beetroot_Seeds
    # Using no_id so item can stack with vanilla items
    no_id: true

Super_Potato_To_Potato:
    type: item
    material: potato
    allow in material recipes: true
    recipes:
        1:
            type: shapeless
            output_quantity: 9
            input: Super_Potato
    # Using no_id so item can stack with vanilla items
    no_id: true