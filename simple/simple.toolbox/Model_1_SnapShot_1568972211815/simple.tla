------------------------------- MODULE simple ------------------------------------------------
VARIABLE status

PossibleValues == {"init", "running"}

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == status \in PossibleValues

Init == status = "init"   \* 

Next == status = "init" /\ status' = "running"
===============================================================================================