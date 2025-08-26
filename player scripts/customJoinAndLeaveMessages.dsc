customJoinAndLeaveMessages:
    type: world
    events:
        on player joins:
            - determine NONE passively
            - random:
                - define message "<white><bold>Welcome, <gold><magic>!<reset><blue><bold><player.name><reset><gold><magic>!"
                - define message "<dark_gray><bold><player.name> <reset><gray>kinda looks like an amonger... kinda"
                - define message "<yellow><player.name> has dry lips... no no don't try licking them everyone already knows"
                - define message "<light_purple><bold><player.name> <reset><dark_purple>was dared to join"
                - define message "<dark_red><bold><player.name> <red>is the one who asked"
                - define message "<dark_red><italic><player.name> has come for your soul"
                - define message "<dark_blue><player.name> <blue>better call saul"
                - define message "<dark_gray><player.name> gave into peer pressure"
                - define message "<dark_green><player.name> <white>joined <blue><magic>:<reset><aqua><italic>yipee<reset><blue><magic>:"
                - define message "<yellow><player.name> left the game"
                - define message "<gray><italic><player.name> immediately regrets their decision"
                - define message "<yellow><player.name> has nothing better to do"
                - define message "<dark_gray><player.name>, <gray>welcome to the underground, how was the fall?"
                - define message "<dark_green><player.name> <green>follow at such a distance that no one can tell they are associated"
                - define message <element[The color of this text is blue, if you see any other color then that means you have a crush on me... oh and <bold><player.name><reset> has joined].color[<list[blue|green|yellow|gold|gray|aqua|red|light_purple].random>]>
                - define message "<red>Hush no one say anything, <dark_red><player.name> <red>has joined"
                - define message "<dark_aqua><player.name> <aqua>thinks the narrator should get a raise"
                - define message <player.name.color_gradient[from=#FF0000;to=#FFFF00]>
            - announce <[message]>
            - wait 5s
            - narrate "<green>Friendly reminder to check the <gold>/rules"

        on player quits:
            - determine NONE passively
            - random:
                - define message "<red><player.name> <dark_red>has left us.. so sad D:"
                - define message "<gray><italic><player.name> has bad internet"
                - define message "<dark_green><player.name> <green>went to go touch grass"
                - define message "<dark_red><bold><player.name> <reset><red>took an L"
                - define message "<dark_blue><bold><player.name> <reset><blue>took the W"
                - define message "<black><player.name> <white>left before the chaos"
                - define message "<dark_purple><player.name> <light_purple>went mental"
                - define message "<gray><player.name> escaped the fog"
                - define message "<gray><italic><player.name> ragequitted"
                - define message "<dark_aqua><bold><player.name> <reset><aqua>did too much trolling"
                - define message "<white><player.name> was ejected [1 impostor remains]"
                - define message "<white><player.name> was ejected [0 impostors remain]"
                - define message "<gold><magic>^*&<reset><dark_purple><bold><player.name><reset> <white>clipped out of reality<gold><magic>#$@"
                - define message "<gray><player.name> left bowomp"
                - define message "<yellow><player.name> joined the game"
                - define message "<dark_aqua><bold><player.name> <reset><aqua>got trolled"
                - define message "<yellow><player.name> went to bed"
                - define message "<dark_red><bold><player.name> <reset><red>was told to shut up"
                - define message "<dark_green><bold><player.name> <reset><green>has lost all of their braincells"
                - define message "<yellow><player.name> probably has better things to do"
                - define message "<gray><player.name> has a skill issue"
                - define message "<dark_purple><bold><player.name.to_uppercase> <light_purple><bold>THINKS THIS MESSAGE SUCKS"
                - define message "<gray><italic>'Oh come on how bad could it be' <reset><gray>- <dark_gray><player.name>"
            - announce <[message]>


##Randomize Join and Leave messages
#Join:
 #playername kinda looks like an amonger... kinda
 #playername has dry lips... no no dont try licking them everyone already knows
 #playername was dared to join
 #playername is the one who asked
 #Playername has come for your soul
 #Playername better call saul
 #player gave into peer pressure
 #player joined :yipee:
 #playername left the game
 #playername Immediately Regrets their decision
#Leave:
#Playername has bad internet
#Playername went to go touch grass
#playername took an L
#playername got the W
#Playername left before the chaos
#playername went mental
#Playername escaped the fog
#playername ragequitted
#playername did too much trolling
#playername was ejected [1 impostor remains]
#playername was ejected [0 impostors remain]
#player clipped out of reality
#playername left bowomp
#playername joined the game
#playername got trolled
#player went to bed
#player was told to shut up
#playername has lost all all of their braincells
