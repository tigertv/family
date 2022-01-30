#!/usr/bin/swipl

man(alex).
man(john).

woman(victoria).
woman(johanna).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pair(alex, victoria).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

child(john, alex, victoria).
child(johanna, alex, victoria).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

brother(X, Y) :-
	man(X),
	child(X, Father, Mother),
	child(Y, Father, Mother),
	X \= Y.

