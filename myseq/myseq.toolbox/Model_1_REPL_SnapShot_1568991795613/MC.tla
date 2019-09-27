---- MODULE MC ----
EXTENDS myseq, TLC

\* Constant expression definition @modelExpressionEval
const_expr_1568991793599125000 == 
Contains(<<1, 2, 3>>, 3)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1568991793599125000>>)
----

=============================================================================
\* Modification History
\* Created Fri Sep 20 16:03:13 BST 2019 by palutz
