------------------------------- MODULE basket  ------------------------------------------------
EXTENDS Integers, Sequences
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

Next == 
    /\ \E el \in Values: ~Contains(basket, el)
    /\ basket' = Append(basket,  {(CHOOSE el \in Values: ~Contains(basket, el))})

Spec == Init /\ []([Next]_vars)
=======================================================================