
initial_state(state(left,left,left,left)).
final_state(state(right,right,right,right)).

#Goat with cabbage without farmer
danger(state(farmer,wolf,goat,cabbage)) :-
    farmer \= goat,
    goat = cabbage.

#Goat with wolf without farmer
danger(state(farmer,wolf,goat,cabbage)) :-
    farmer \= goat,
    goat = wolf.

valid(state) :-\+ danger(state).