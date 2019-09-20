------------------------------- MODULE simple ------------------------------------------------
VARIABLE status

vars == << status >>

PossibleValues == {"init", "running", "stoppped"}

Terminated == <>[](status = "stopped")

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == status \in PossibleValues

\* Init == status = "init"   \* 
Init == status = "init"

InitToRunning == status = "init" /\ status' = "running"

RunningToStopped == status = "running" /\ status' = "stoppped"

Next == InitToRunning \/ RunningToStopped

Spec == Init /\ []([Next]_vars) /\ WF_vars(Next)

===============================================================================================