% Load all logic bases
:- consult('state_logic.pl').
:- consult('moves.pl').
:- consult('dfs.pl').

% Start command
start :-
    writeln('==========================='),
    writeln('   Lupul, Capra si Varza   '),
    writeln('==========================='),
    solve.