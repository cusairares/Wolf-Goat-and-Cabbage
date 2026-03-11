initial_state(state(left, left, left, left)).
final_state(state(right, right, right, right)).

# Helper fact for opposite banks
opposite(left, right).
opposite(right, left).

# Goat with cabbage without farmer
danger(state(Farmer, _Wolf, Goat, Cabbage)) :-
    Farmer \= Goat,
    Goat = Cabbage.

# Goat with wolf without farmer
danger(state(Farmer, Wolf, Goat, _Cabbage)) :-
    Farmer \= Goat,
    Goat = Wolf.

# State is valid
valid(State) :- 
    \+ danger(State).