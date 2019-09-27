------------------------------- MODULE traffic2  ------------------------------------------------
\* show that red leads always to green

VARIABLE light
PossibleValues == {"r", "y", "yr", "g" }  \* "red", "yellw", "yellowred", "green"

vars == << PossibleValues >> 

ReadlwaysLeadToGreen == light = "yr" ~> light = "g"

\* Specifing that safety type (typeOk is my name) could have pnyl values in the specified Set of values (PossibleValues)
TypeOk == light \in PossibleValues 

\* Init == status = "init"   \* 
Init == light = "g" 

greenToYellow == 
    /\ light = "g"
    /\ light' = "y"
    
yellowToRed == 
    /\ light = "y"
    /\ light' = "r"
    
redToYellowred == 
    /\ light = "r"
    /\ light' = "yr"
    
yellowRedToGreen == 
    /\ light = "yr"
    /\ light' = "g"
    
Next == 
    \/ greenToYellow
    \/ yellowToRed
    \/ redToYellowred
    \/ yellowRedToGreen

Spec == 
    /\ Init
    /\ []([Next]_vars)
    /\ WF_vars(Next)
    
\* or we can write with a NextLight and passing the prev and next state 
\*
\*NextLight(current, next) ==
\*    /\ light = current
\*    /\ light' = next
\*
\*Next2 ==     
\*    \/ NextLight("g", "y")
\*    \/ NextLight("y", "r")
\*    \/ NextLight("r", "yr")
\*    \/ NextLight("yr", "g")

===============================================================================================