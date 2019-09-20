------------------------------- MODULE bitclock ------------------------------------------------
EXTENDS Integers
VARIABLE clock

PossibleValues == { 0 , 1 }

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == clock \in PossibleValues

Init == clock = 0 

ZeroTo1 == clock = 0 /\ clock' = 1

OneTo0 == clock = 1 /\ clock' = 0

Next == ZeroTo1 \/ OneTo0
\* Alternatives
\* Next1 == clock' = IF clock = 0 THEN 1 ELSE 1
\* Next2 == clock' = (clock +1) % 2
===============================================================================================