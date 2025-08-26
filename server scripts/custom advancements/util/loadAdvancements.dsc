createAdvancementsOnServerPrestart:
    debug: true
    type: world
    events:
        on server prestart:
        # Normal
        - advancement id:custom_advancements_root icon:diamond "title:Custom Advancements" "description:Looks like there are some new advancements to collect!" background:minecraft:textures/gui/sprites/boss_bar/blue_background.png
        - advancement id:bee_in_a_boat parent:custom_advancements_root icon:oak_boat "title:Bee in a Boat" "description:Put a bee in a boat and then take a ride together!"
        - advancement id:i_guess_thats_it parent:custom_advancements_root icon:bow "title:I Guess That's It" "description:Kill yourself with a bow"
        - advancement id:hi_squidward parent:i_guess_thats_it icon:iron_sword "title:Hi Squidward" "description:Kill a squid"
        # Goal
        - advancement id:sponge_out_of_water parent:custom_advancements_root icon:sponge "title:Sponge Out of Water" "description:Dry a sponge by placing it in the nether or smelting it in a furnace" frame:goal
        - advancement id:astronaut_in_the_ocean parent:sponge_out_of_water icon:water_bucket "title:Astronaut in the Ocean" "description:Swim in the End" frame:goal
        # Challenge
        - advancement id:lots_of_pitcher_pods parent:custom_advancements_root icon:pitcher_pod "title:250 Pitcher Pods!?!?!" "description:Collect 250 pitcher pods" frame:challenge hidden:true
        - advancement id:fly_home_buddy parent:lots_of_pitcher_pods icon:elytra "title:Fly Home, Buddy" "description:Fly from the outer end islands to the main end island with an elytra" frame:challenge hidden:true

grandRootAdvancementToPlayer:
    debug: false
    type: world
    events:
        on player joins flagged:!hasRootAdvancement:
        - wait 5t
        - flag <player> hasRootAdvancement
        - advancement id:custom_advancements_root grant:<player>