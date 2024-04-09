; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133136 () Bool)

(assert start!133136)

(assert (=> start!133136 false))

(declare-fun e!867612 () Bool)

(assert (=> start!133136 e!867612))

(declare-fun b!1557484 () Bool)

(declare-fun tp_is_empty!38393 () Bool)

(declare-fun tp!112537 () Bool)

(assert (=> b!1557484 (= e!867612 (and tp_is_empty!38393 tp!112537))))

(declare-datatypes ((B!2388 0))(
  ( (B!2389 (val!19280 Int)) )
))
(declare-datatypes ((tuple2!25076 0))(
  ( (tuple2!25077 (_1!12548 (_ BitVec 64)) (_2!12548 B!2388)) )
))
(declare-datatypes ((List!36460 0))(
  ( (Nil!36457) (Cons!36456 (h!37903 tuple2!25076) (t!51194 List!36460)) )
))
(declare-fun l!1292 () List!36460)

(assert (= (and start!133136 (is-Cons!36456 l!1292)) b!1557484))

(push 1)

(assert (not b!1557484))

(assert tp_is_empty!38393)

(check-sat)

(pop 1)

(push 1)

(check-sat)

