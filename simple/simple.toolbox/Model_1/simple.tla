------------------------------- MODULE simple ------------------------------------------------
VARIABLE status

PossibleValues == {"init", "running", "stoppped"}
CONSTANT Starting
ASSUME Starting \in PossibleValues

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == status \in PossibleValues

\* Init == status = "init"   \* 
Init == status = Starting

InitToRunning == status = "init" /\ status' = "running"

RunningToStopped == status = "running" /\ status' = "stoppped"

===============================================================================================