% --- Main
solve_bfs :-
    initial_state(S),
    bfs([[S]], Solution),
    writeln('Solution found for BFS:'),
    print_steps(Solution).

% --- Base case for stopping
bfs([[State|Path]|_], Solution) :-
    final_state(State),
    reverse([State|Path], Solution).

% --- Recursive rule
bfs([CurrentPath|OtherPaths], Solution) :-
    CurrentPath = [State|Path],
    findall([NextState, State|Path],
            (safe_transition(State, NextState), \+ member(NextState, [State|Path])),
            NewPaths),
    append(OtherPaths, NewPaths, NextQueue),
    bfs(NextQueue, Solution).

% --- Helper to print the path
print_steps([]).
print_steps([H|T]) :- writeln(H), print_steps(T).