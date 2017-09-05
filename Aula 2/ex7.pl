equilatero(A, B, C) :-
	A == B,
	A == C,
	B == C.

isoceles(A, B, C) :-
	(   A == B,
	    A == C,
	    B \== C);
	(   B == A,
	    B == C,
	    A \== C);
	(   C == A,
	    C == B,
	    A \== C).

escaleno(A, B, C) :-
	A \== B,
	A \== C,
	B \== C.

triangulo(A, B, C, T) :-
	(   equilatero(A,B,C),
	    T = equilatero);
	(   isoceles(A,B,C),
	    T = isoceles);
	(   escaleno(A,B,C),
	    T = escaleno).




