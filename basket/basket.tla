------------------------------- MODULE basket  ------------------------------------------------
EXTENDS Integers, FiniteSets, Sequences
VARIABLE basket
CONSTANT Values

vars == << basket >>

Terminated == <>[](basket = Values)
----------------------------------------------------------------------

RECURSIVE Contains(_, _)
Contains(seq, el) ==
    IF Len(seq) = 0 THEN FALSE
    ELSE IF(Head(seq) = el) THEN TRUE ELSE Contains(Tail(seq), el)

\*Init == basket = {}  \* set  
Init == basket = <<>>  \* using seq

\* Len(basket) = Cardinality(Values)
Next == 
    /\ \E el \in Values: ~Contains(basket, el)
    /\ basket' = Append(basket,  (CHOOSE el \in Values: ~Contains(basket, el)))

\* choose is deterministic and not random so ...
Next2 == 
    /\ Len(basket) = Cardinality(Values)
    /\ \E el \in Values: basket' = Append(basket, el) /\ ~Contains(basket, el)  \* the new basket (basket') has to be the result of append but with e not already in basket (not Contains)


Spec == Init /\ []([Next]_vars)
=======================================================================