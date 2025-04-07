(define (domain hard_cannolo_siciliano)
    (:requirements :strips)

    (:predicates
        (taken_cannolo) ; The cannolo was taken 
        (fried_cannolo) ; The cannolo was fried
        (sacpoche_filled) ; The sacpoche was stuffed with cottage cheese
        (stuffed_cannolo) ; The cannolo was stuffed with cottage cheese
    )

    (:action take_cannolo
        :parameters ()
        :effect (taken_cannolo)
    )

    (:action discard_cannolo
        :parameters ()
        :precondition (taken_cannolo)
        :effect (not (taken_cannolo))
    )

    (:action fry_cannolo
        :parameters ()
        :precondition (taken_cannolo)
        :effect (fried_cannolo)
    )

    (:action add_cottage_cheese
        :parameters ()
        :effect (sacpoche_filled)
    )

    (:action stuff_cannolo
        :parameters ()
        :precondition (and (sacpoche_filled) (fried_cannolo))
        :effect (and (stuffed_cannolo)
            (not (fried_cannolo))
            (not (sacpoche_filled)))
    )
)