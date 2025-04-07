
(define (domain simple_cannolo_siciliano)
    (:requirements :strips)

    (:predicates
        (taken_cannolo) ; The cannolo was taken 
        (fried_cannolo) ; The cannolo was fried
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

    (:action stuff_cannolo
        :parameters ()
        :precondition (fried_cannolo)
        :effect (and (stuffed_cannolo)
            (not (fried_cannolo)))
    )
)