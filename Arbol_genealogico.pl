%HECHOS:

%Padres:

padre_de(abraham, homero).
padre_de(abraham, herbert).
padre_de(clancy, marge).
padre_de(clancy, patty).
padre_de(clancy, selma).
padre_de(homero, bart).
padre_de(homero, lisa).
padre_de(homero, maggie).

%Madres:

madre_de(mona, homero).
madre_de(marge, bart).
madre_de(marge, lisa).
madre_de(marge, maggie).
madre_de(jacqueline, marge).
madre_de(jacqueline, patty).
madre_de(jacqueline, selma).
madre_de(selma, ling).

% Definición de género
hombre(abraham).
hombre(homero).
hombre(herbert).
hombre(clancy).
hombre(bart).

mujer(mona).
mujer(jacqueline).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).

%REGLAS:

primo_de(X,Y) :- hombre(X), madre_de(Z,M), madre_de(Z,P), madre_de(P,X), madre_de(M,Y), P \= M.
prima_de(X,Y) :- mujer(X), madre_de(Z,M), madre_de(Z,P), madre_de(P,X), madre_de(M,Y), P \= M.

