------------------------------- MODULE simple ------------------------------------------------
VARIABLE status
Init == status = "init"
Next == status = "init" /\ status' = "running"
===============================================================================================