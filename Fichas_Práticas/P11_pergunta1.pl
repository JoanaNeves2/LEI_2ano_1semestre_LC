pessoa(maria). pessoa(joao). pessoa(tomas). gosta(maria, comida). gosta(maria, vinho).
gosta(joao, vinho). gosta(joao, maria). gosta(tomas, futebol). gosta(tomas, comida).
estuda(tomas, medicina). estuda(maria, matematica). estuda(joao, informatica).
estuda(pedro, informatica). mora(tomas, lisboa). mora(maria, almada). mora(joao, loures).
mora(pedro, almada).

% a)1. O João gosta de tudo o que a Maria gosta.
gosta(joao, X) :- gosta(maria, X).

% a)2. O João gosta de qualquer pessoa que goste de vinho.
gosta(joao, X) :- gosta(X, vinho).

% a)3. O João gosta de qualquer pessoa que esteja a estudar.
gosta(joao, X) :- pessoa(X), estuda(X, _).

% a)4. Quem gosta de comida gosta de vinho.
gosta(X, vinho) :- pessoa(X), gosta(X, comida). 
% podia ter a verificação de ser pessoa(X) pois o quem pode inferir que é preciso ser uma pessoa
% gosta(X,vinho) :- pessoa(X), gosta(X, comida).

