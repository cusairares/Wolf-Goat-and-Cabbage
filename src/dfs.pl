dfs(State, Path, Path) :-
    final_state(State).

dfs(State, Visited, Path) :-
    safe_transition(State, NextState),
    \+ member(NextState, Visited),
    dfs(NextState, [NextState|Visited], Path).

solve :-
    initial_state(S),
    dfs(S, [S], ReversedPath),
    reverse(ReversedPath, Solution),
    write(' Solution Found '),
    print_steps(Solution).

print_steps([]).
    print_steps([State|Rest]) :-
    writeln(State),
    print_steps(Rest).
