------------------------------- MODULE simple ------------------------------------------------
VARIABLE status

PossibleValues == {"init", "running", "stoppped"}

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == status \in PossibleValues

Init == status = "init"   \* 

InitToRunning == status = "init" /\ status' = "running"

RunningToStopped == status = "running" /\ status' = "stoppped"

===============================================================================================