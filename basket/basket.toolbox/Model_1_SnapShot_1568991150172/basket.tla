------------------------------- MODULE basket  ------------------------------------------------
EXTENDS Integers
VARIABLE basket
CONSTANT Values

vars == << basket >>

Terminated == <>[](basket = Values)
----------------------------------------------------------------------

Init == basket = {}

Next == 
    /\ \E el \in Values: el \notin basket
    /\ basket' = basket \cup {(CHOOSE el \in Values: el \notin basket)}

Spec == Init /\ []([Next]_vars)
=======================================================================