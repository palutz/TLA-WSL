------------------------------- MODULE myseq  ------------------------------------------------
EXTENDS Integers, Sequences

\* let's write our Cons funciton
Cons(el, seq) == <<el>> \o seq     \* \o = concat

\* Define our Last function (recursive
RECURSIVE Last(_)   \* We need to define a recursive call
Last(seq) == 
    IF Len(seq) = 1 THEN Head(seq)
    ELSE Last(Tail(seq))
    
RECURSIVE Contains(_, _)
Contains(seq, el) ==
    IF Len(seq) = 0 THEN FALSE
    ELSE IF(Head(seq) = el) THEN TRUE ELSE Contains(Tail(seq), el)
================================================================================================