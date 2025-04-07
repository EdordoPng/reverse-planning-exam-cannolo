%---------------------------------------
% domain
%---------------------------------------

% utils
boolean(true).
boolean(false).

% types
type(type("object")).

% variables
variable(variable("taken_cannolo")).
variable(variable("fried_cannolo")).
variable(variable("sacpoche_filled")).
variable(variable("stuffed_cannolo")).

contains(X, value(X, B)) :- variable(X), boolean(B).

% actions
action(action("take_cannolo")).
postcondition(action("take_cannolo"), effect(unconditional), variable("taken_cannolo"), value(variable("taken_cannolo"), true)) :- action(action("take_cannolo")).

action(action("discard_cannolo")).
precondition(action("discard_cannolo"), variable("taken_cannolo"), value(variable("taken_cannolo"), true)) :- action(action("discard_cannolo")).
postcondition(action("discard_cannolo"), effect(unconditional), variable("taken_cannolo"), value(variable("taken_cannolo"), false)) :- action(action("discard_cannolo")).

action(action("fry_cannolo")).
precondition(action("fry_cannolo"), variable("taken_cannolo"), value(variable("taken_cannolo"), true)) :- action(action("fry_cannolo")).
postcondition(action("fry_cannolo"), effect(unconditional), variable("fried_cannolo"), value(variable("fried_cannolo"), true)) :- action(action("fry_cannolo")).

action(action("add_cottage_cheese")).
postcondition(action("add_cottage_cheese"), effect(unconditional), variable("sacpoche_filled"), value(variable("sacpoche_filled"), true)) :- action(action("add_cottage_cheese")).

action(action("stuff_cannolo")).
precondition(action("stuff_cannolo"), variable("sacpoche_filled"), value(variable("sacpoche_filled"), true)) :- action(action("stuff_cannolo")).
precondition(action("stuff_cannolo"), variable("fried_cannolo"), value(variable("fried_cannolo"), true)) :- action(action("stuff_cannolo")).
postcondition(action("stuff_cannolo"), effect(unconditional), variable("stuffed_cannolo"), value(variable("stuffed_cannolo"), true)) :- action(action("stuff_cannolo")).
postcondition(action("stuff_cannolo"), effect(unconditional), variable("fried_cannolo"), value(variable("fried_cannolo"), false)) :- action(action("stuff_cannolo")).
postcondition(action("stuff_cannolo"), effect(unconditional), variable("sacpoche_filled"), value(variable("sacpoche_filled"), false)) :- action(action("stuff_cannolo")).
