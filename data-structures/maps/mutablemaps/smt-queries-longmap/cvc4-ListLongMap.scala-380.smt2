; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7202 () Bool)

(assert start!7202)

(assert (=> start!7202 false))

(declare-fun e!29384 () Bool)

(assert (=> start!7202 e!29384))

(declare-fun b!46132 () Bool)

(declare-fun tp_is_empty!1961 () Bool)

(declare-fun tp!6062 () Bool)

(assert (=> b!46132 (= e!29384 (and tp_is_empty!1961 tp!6062))))

(declare-datatypes ((B!864 0))(
  ( (B!865 (val!1019 Int)) )
))
(declare-datatypes ((tuple2!1690 0))(
  ( (tuple2!1691 (_1!855 (_ BitVec 64)) (_2!855 B!864)) )
))
(declare-datatypes ((List!1253 0))(
  ( (Nil!1250) (Cons!1249 (h!1829 tuple2!1690) (t!4286 List!1253)) )
))
(declare-fun l!812 () List!1253)

(assert (= (and start!7202 (is-Cons!1249 l!812)) b!46132))

(push 1)

(assert (not b!46132))

(assert tp_is_empty!1961)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

