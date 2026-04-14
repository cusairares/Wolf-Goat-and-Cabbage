Wolf, Goat, and Cabbage Puzzle (Prolog)
=======================================

A simple Prolog implementation of the classic river crossing puzzle using 
Depth-First Search (DFS), and Breadth-First Search (BFS).

Rules:
- If left unattended together, the wolf will eat the goat.
- If left unattended together, the goat will eat the cabbage.
- The farmer can only carry one item at a time in the boat.

How to Run:
1. Start SWI-Prolog ("swipl").
2. Load the source: "?- consult('path')." 
3. Run the solver: "?- start1" for DFS." or "?- start2" for BFS