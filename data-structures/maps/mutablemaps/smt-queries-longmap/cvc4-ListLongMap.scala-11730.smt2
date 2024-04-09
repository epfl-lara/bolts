; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137576 () Bool)

(assert start!137576)

(assert (=> start!137576 false))

(declare-fun e!882699 () Bool)

(assert (=> start!137576 e!882699))

(declare-fun b!1581791 () Bool)

(declare-fun tp_is_empty!39269 () Bool)

(declare-fun tp!114640 () Bool)

(assert (=> b!1581791 (= e!882699 (and tp_is_empty!39269 tp!114640))))

(declare-datatypes ((B!2724 0))(
  ( (B!2725 (val!19724 Int)) )
))
(declare-datatypes ((tuple2!25780 0))(
  ( (tuple2!25781 (_1!12900 (_ BitVec 64)) (_2!12900 B!2724)) )
))
(declare-datatypes ((List!37005 0))(
  ( (Nil!37002) (Cons!37001 (h!38545 tuple2!25780) (t!51926 List!37005)) )
))
(declare-fun l!1356 () List!37005)

(assert (= (and start!137576 (is-Cons!37001 l!1356)) b!1581791))

(push 1)

(assert (not b!1581791))

(assert tp_is_empty!39269)

(check-sat)

(pop 1)

(push 1)

