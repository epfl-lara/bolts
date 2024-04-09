; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133132 () Bool)

(assert start!133132)

(assert (=> start!133132 false))

(declare-fun e!867606 () Bool)

(assert (=> start!133132 e!867606))

(declare-fun b!1557478 () Bool)

(declare-fun tp_is_empty!38389 () Bool)

(declare-fun tp!112531 () Bool)

(assert (=> b!1557478 (= e!867606 (and tp_is_empty!38389 tp!112531))))

(declare-datatypes ((B!2384 0))(
  ( (B!2385 (val!19278 Int)) )
))
(declare-datatypes ((tuple2!25072 0))(
  ( (tuple2!25073 (_1!12546 (_ BitVec 64)) (_2!12546 B!2384)) )
))
(declare-datatypes ((List!36458 0))(
  ( (Nil!36455) (Cons!36454 (h!37901 tuple2!25072) (t!51192 List!36458)) )
))
(declare-fun l!1292 () List!36458)

(assert (= (and start!133132 (is-Cons!36454 l!1292)) b!1557478))

(push 1)

(assert (not b!1557478))

(assert tp_is_empty!38389)

(check-sat)

(pop 1)

