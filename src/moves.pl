# Import state logic
:- consult('state_logic.pl').

# Farmer crosses alone
move(state(F1, W, G, C), state(F2, W, G, C)) :-
    opposite(F1, F2).

# Farmer crosses with wolf
move(state(F1, F1, G, C), state(F2, F2, G, C)) :-
    opposite(F1, F2).

# Farmer crosses with goat
move(state(F1, W, F1, C), state(F2, W, F2, C)) :-
    opposite(F1, F2).

# Farmer crosses with cabbage
move(state(F1, W, G, F1), state(F2, W, G, F2)) :-
    opposite(F1, F2).

# Safe transition validation
safe_transition(CurrentState, NextState) :-
    move(CurrentState, NextState),
    valid(NextState).