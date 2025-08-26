## Advancement Trigger: get in a boat with a bee
grantBeeInABoatAdvancement:
    debug: false
    type: world
    events:
        on player enters *_boat flagged:!hasBeeInABoatAdvancement:
            - if <context.vehicle.has_passenger> && <context.vehicle.passenger.name> == BEE:
                - flag <player> hasBeeInABoatAdvancement
                - advancement id:bee_in_a_boat grant:<player>