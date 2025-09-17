inv(0,1).
inv(1,0).

mult(0,0,1).
mult(0,1,1).
mult(1,0,1).
mult(1,1,0).


solve(X1, X2, X3, X4, Result) :-
    inv(X1, Y1),
    mult(X2, X3, Y2),
    mult(X3, X4, Y3),
    inv(Y3, Y4),
    mult(Y1, Y2, Y5),
    mult(Y4, Y5, Result),
    format("Y=~w: X1=~w, X2=~w, X3=~w, X4=~w~n", [Result, X1, X2, X3, X4]).

main :-
    write('Введите значения (0 или 1):'), nl,
    write('Result -> '), read(Result),
    nl,
    solve(_, _, _, _, Result).
main.

:- initialization(main).
