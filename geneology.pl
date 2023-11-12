% \+: not, \=: not equal

% Generation 1
% male(John). %1. John (Grandfather) -> Robert, Emily
% female(Mary). %2. Mary (Grandmother) -> Robert, Emily
% Generation 2
% male(Robert). %3. Robert (Son of John and Mary)
% female(Emily). %4. Emily (Daughter of John and Mary)
% female(Sarah). %5. Sarah (Robert's Wife)
% male(James). %6. James (Emily's Husband)
% Generation 3
% female(Alice). %7. Alice (Daughter of Robert and Sarah)
% male(George). %8. George (Son of Robert and Sarah)
% female(Lily). %9. Lily (Daughter of Emily and James)
% male(William). %10. William (Son of Emily and James)
% Generation 4
% female(Emma). %11. Emma (Daughter of Alice)
% male(Ethan). %12. Ethan (Son of Alice)
% female(Olivia). %13. Olivia (Daughter of George)
% male(Noah). %14. Noah (Son of Lily)
% female(Ava). %15. Ava (Daughter of William)

% parent(john, robert). % 1 -> 2
% parent(john, emily). % 1 -> 2
% parent(mary, robert). % 1 -> 2
% parent(mary, emily). % 1 -> 2

% parent(robert, alice). % 2 -> 3
% parent(robert, george). % 2 -> 3
% parent(sarah, alice). % 2 ->
% parent(sarah, george). % 2 -> 3
% parent(emily, lily). % 2 -> 3
% parent(emily, william). % 2 -> 3
% parent(james, lily). % 2 -> 3
% parent(james, william). % 2 -> 3

% parent(alice, emma). % 3 -> 4
% parent(alice, ethan). % 3 -> 4
% parent(george, olivia). % 3 -> 4
% parent(lily, noah). % 3 -> 4
% parent(william, ava). % 3 -> 4

% Generation 1
% child(robert, john). %John -> Emily, Robert
% child(emily, john).
%child(robert, mary). %Mary -> Emily, Robert
%child(emily, mary).
% Generation 2
%child(alice, robert). %Robert -> Alice, Geroge
%child(george, robert).
%child(alice, sarah). % Sarah -> Alice, George
%child(george, sarah). % Sarah is Robert's wife
%child(lily, emily). %Emily -> Lily, Williams
%child(william, emily).
%child(lily, james). %James -> Lily, Williams
%child(william, james). % James is Emily's husband
% Generation 3
%child(emma, alice). %Alice -> Emma, Ethan
%child(ethan, alice).
%child(olivia, george). %George -> Olivia
%child(noah, lily). %Lily -> Noah
%child(ava, william). %William -> Ava

% age(john, 80). %1
%age(mary, 60). %2
%age(robert, 58). %3
%age(emily, 60). %4

%age(alice, 40). %5
%age(george, 38). %6
%age(lily, 35). %7
%age(william, 35). %8
%age(sarah, 58). %9 Assuming Sarah is the same age as Robert
%age(james, 60). %10 Assuming James is the same age as Emily


%age(emma, 20). %11
%age(ethan, 18). %12
%age(olivia, 15). %13
%age(noah, 13). %14
%age(ava, 13). %15"

% Testing above, what was used

age(mary, 109).

age(sarah, 95).

age(tony, 100).

age(grant, 83).

age(hank, 81).

age(kelsey, 84).

age(jake, 43).

age(joe, 53).

age(bob, 50).

age(mike, 49).

age(piper, 52).

age(dillon, 44).

age(justin, 23).

age(christian, 22).

age(taylor, 32).

age(daniel, 29).

age(peter, 31).

child(sarah, mary).

child(tony, mary).

child(grant, sarah).

child(hank, tony).

child(kelsey, tony).

child(jake, grant).

child(joe, hank).

child(bob, hank).

child(mike, hank).

child(piper, hank).

child(dillon, kelsey).

child(justin, joe).

child(christian, joe).

child(taylor, mike).

child(daniel, piper).

child(peter, piper).










