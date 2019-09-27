------------------------------- MODULE myseq  ------------------------------------------------
EXTENDS Integers, Sequences

\* let's write our Cons function
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

RECURSIVE SeqToSet(_)
SeqToSet(seq) == 
    IF Len(seq) = 0 THEN {}
    ELSE {Head(seq)} \cup SeqToSet(Tail(seq))
    
\* HIgh Order Functions
RECURSIVE MapSeq(_, _)
MapSeq(f(_), seq) ==
    IF Len(seq) = 0 THEN <<>>
    ELSE Cons(f(Head(seq)), MapSeq(f, Tail(seq)))
    
\* calling like 
\* LET plusone(a) = a + 1 IN MapSeq(plusOne, <<1, 2, 3, 4, 5, 5 >>)

RECURSIVE FoldLeftSeq(_, _, _)
FoldLeftSeq(acc, f(_,_), seq) ==
    IF Len(seq) = 0 THEN acc
    ELSE FoldLeftSeq(f(acc, Head(seq)), f, Tail(seq))  
================================================================================================