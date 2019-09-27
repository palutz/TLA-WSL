---- MODULE MC ----
EXTENDS myseq, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1568992662057129000 == 
LET plus(a, b) == a+b IN FoldLeftSeq(0, plus, <<1,2,3>>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1568992662057129000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 16:17:42 BST 2019 by palutz
