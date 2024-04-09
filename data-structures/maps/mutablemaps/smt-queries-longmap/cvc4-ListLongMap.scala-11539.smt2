; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134354 () Bool)

(assert start!134354)

(assert (=> start!134354 false))

(assert (=> start!134354 true))

(declare-fun e!874395 () Bool)

(assert (=> start!134354 e!874395))

(declare-fun b!1568456 () Bool)

(declare-fun tp_is_empty!39023 () Bool)

(declare-fun tp!114037 () Bool)

(assert (=> b!1568456 (= e!874395 (and tp_is_empty!39023 tp!114037))))

(declare-datatypes ((B!2472 0))(
  ( (B!2473 (val!19598 Int)) )
))
(declare-datatypes ((tuple2!25462 0))(
  ( (tuple2!25463 (_1!12741 (_ BitVec 64)) (_2!12741 B!2472)) )
))
(declare-datatypes ((List!36879 0))(
  ( (Nil!36876) (Cons!36875 (h!38323 tuple2!25462) (t!51794 List!36879)) )
))
(declare-fun l!750 () List!36879)

(assert (= (and start!134354 (is-Cons!36875 l!750)) b!1568456))

(push 1)

(assert (not b!1568456))

(assert tp_is_empty!39023)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

