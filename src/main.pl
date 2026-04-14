% Load all logic bases
:- consult('state_logic.pl').
:- consult('moves.pl').
:- consult('dfs.pl').
:- consult('bfs.pl').

% Start command
start1 :-
    writeln('==========================='),
    writeln('   Lupul, Capra si Varza   '),
    writeln('==========================='),
    solve_dfs.

start2 :-
    writeln('==========================='),
    writeln('   Lupul, Capra si Varza   '),
    writeln('==========================='),
    solve_bfs.