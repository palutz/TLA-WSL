------------------------------- MODULE pingpong  ------------------------------------------------
EXTENDS Integers
VARIABLE ping, pong

vars == << ping, pong >>   \* need for the Spec (further property)

\* eventually always ping = ping and pong = pong
Terminated == <>[](ping = "ping" /\ pong = "pong")

TypeOk == 
    /\ ping \in { "", "ping" }
    /\ pong \in { "", "pong" }

Init == ping = "" /\ pong = ""

Ping == 
    /\ ping = ""    \* this line is checking the CURRENT state
    /\ ping' = "ping"   \* this line is checking the NEXT state
    \* Ping formula need to specify also for pong
    \* /\ pong' = pong \* new pong = old pong
    \* or
    /\ UNCHANGED << pong >>   \* saying pong is not changing << >> contains a list
    
\* we always need to specify all the variables in the system
Pong == 
    /\ ping = "ping"
    /\ pong = ""
    /\ pong' = "pong"
    /\ UNCHANGED << ping >>
        
Next == Ping \/ Pong

Spec == Init /\ []([Next]_vars)
===============================================================================================