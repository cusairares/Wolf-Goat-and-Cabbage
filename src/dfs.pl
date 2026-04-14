% Base case: Stop when final state is reached
dfs(State, Path, Path) :-
    final_state(State).

% Recursive case: Explore next states
dfs(State, Visited, Path) :-
    safe_transition(State, NextState),
    \+ member(NextState, Visited),  % Avoid cycles
    dfs(NextState, [NextState|Visited], Path).

% Main function to start algorithm
solve_dfs :-
    initial_state(S),
    dfs(S, [S], ReversedPath),
    reverse(ReversedPath, Solution),
    writeln(' Solution found for DFS: '),
    print_steps(Solution).

% Helper to print the path
print_steps([]).
print_steps([State|Rest]) :-
    writeln(State),
    print_steps(Rest).

    