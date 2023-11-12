% Parent
parent(P, C) :- % P: parent, C: child
    child(C, P). % Parent of child -> child of parent

% Sibling
sibling(X, Y) :- % X: person a, Y: person b
    parent(P, X), % P is parent of X
    parent(P, Y), % P is also parent of Y
    X \= Y. % X and Y are not the same person

% Grandparent
grandparent(X, Z) :- % X: grandparent, Y: grandchild
    parent(X, Y), % X is parent of Y
    parent(Y, Z). % Y is parent of Z

% nth cousin
nthcousin(X,Y,1):- % X: person a, Y: person b, 1: siblings are 1st cousins
    parent(A,X), % A is parent of X
    parent(B,Y), % B is parent of Y
    sibling(A,B), % Are A and B siblings, true if so
    X \= Y. % X and Y are not the same person

nthcousin(X,Y,N):- % X: person a, Y: person b, N: nth cousin (highest up person shared in family tree)
    parent(A,X), % A is parent of X
    parent(B,Y), % B is parent of Y
    nthcousin(A,B,N1), % recursive, !!!
    N is N1 + 1. % tracks the nth, increments per recursion (N1 = N-1)

% Down: N -> N1 = N-1 -> N2 = N1-1 = N-2
% back: N2 = 0 -> N = N2+1 = 0+1 = 1 -> N = N1+1 = 1+1 = 2

% nth cousin k times removed
nthcousinkremoved(X,Y,N,0):- % X: person a, Y: person b, N: nth cousin, 0: k is 0 times removed
    nthcousin(X,Y,N). % same generation so standard method, k is 0

nthcousinkremoved(X,Y,N,K) :- % X: person a, Y: person b, N: nth cousin, K: k times removed
    parent(Z,Y), % Z is parent of Y
    nthcousinkremoved(X,Z,N,K1), % recursive, !!!
    K is K1+1. %  tracks the k, increments per recursion (K1 = K-1)



% somethin !!!!!!!!!!!!!!!!!!!!!!!!
getageofchild(X,Y):- % X: Parent, Y: Child
    child(Z,X), % Z is child of X
    age(Z,Y). % Y is age of Z

kthchild(C,P,K):-
                setof(C, getageofchild(P,C),Set),
                sort(Set,Sorted),
                reverse(Sorted,Reversed),
                nth0(Knew,Reversed,Age),
                K is Knew + 1,
                age(C,Age).
