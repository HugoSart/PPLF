homem(albert).
homem(edward).

mulher(alice).
mulher(victoria).

% o primeiro argumento é o(a) filho(a)
% o segundo argumento a mãe o terceiro o pai
pais(edward, victoria, albert).
pais(alice, victoria, albert).

irma_de(X, Y) :-
	mulher(X),
	pais(X, M, F),
	pais(Y, M, F).
