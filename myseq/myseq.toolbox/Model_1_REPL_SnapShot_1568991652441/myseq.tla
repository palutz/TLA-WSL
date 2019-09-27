------------------------------- MODULE myseq  ------------------------------------------------
EXTENDS Integers, Sequences

\* let's write our Cons funciton
Cons(el, seq) == <<el>> \o seq     \* \o = concat

\* Define our Last function (recursive
RECURSIVE Last(_)   \* We need to define a recursive call
Last(seq) == 
    IF Len(seq) = 1 THEN Head(seq)
    ELSE Last(Tail(seq))
    
================================================================================================