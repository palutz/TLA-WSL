---- MODULE MC ----
EXTENDS myseq, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1568991650418123000 == 
Last(<<1, 2, 3>>)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1568991650418123000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 16:00:50 BST 2019 by palutz
