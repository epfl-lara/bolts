; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137100 () Bool)

(assert start!137100)

(assert (=> start!137100 false))

(declare-fun e!881298 () Bool)

(assert (=> start!137100 e!881298))

(declare-fun b!1579763 () Bool)

(declare-fun tp_is_empty!39153 () Bool)

(declare-fun tp!114382 () Bool)

(assert (=> b!1579763 (= e!881298 (and tp_is_empty!39153 tp!114382))))

(declare-datatypes ((B!2608 0))(
  ( (B!2609 (val!19666 Int)) )
))
(declare-datatypes ((tuple2!25598 0))(
  ( (tuple2!25599 (_1!12809 (_ BitVec 64)) (_2!12809 B!2608)) )
))
(declare-datatypes ((List!36947 0))(
  ( (Nil!36944) (Cons!36943 (h!38487 tuple2!25598) (t!51868 List!36947)) )
))
(declare-fun l!1390 () List!36947)

(get-info :version)

(assert (= (and start!137100 ((_ is Cons!36943) l!1390)) b!1579763))

(check-sat (not b!1579763) tp_is_empty!39153)
(check-sat)
