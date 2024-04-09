; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133184 () Bool)

(assert start!133184)

(assert (=> start!133184 false))

(declare-fun e!867804 () Bool)

(assert (=> start!133184 e!867804))

(assert (=> start!133184 true))

(declare-fun b!1557823 () Bool)

(declare-fun tp_is_empty!38417 () Bool)

(declare-fun tp!112582 () Bool)

(assert (=> b!1557823 (= e!867804 (and tp_is_empty!38417 tp!112582))))

(declare-datatypes ((B!2412 0))(
  ( (B!2413 (val!19292 Int)) )
))
(declare-datatypes ((tuple2!25100 0))(
  ( (tuple2!25101 (_1!12560 (_ BitVec 64)) (_2!12560 B!2412)) )
))
(declare-datatypes ((List!36472 0))(
  ( (Nil!36469) (Cons!36468 (h!37915 tuple2!25100) (t!51206 List!36472)) )
))
(declare-fun l!1292 () List!36472)

(assert (= (and start!133184 (is-Cons!36468 l!1292)) b!1557823))

(push 1)

(assert (not b!1557823))

(assert tp_is_empty!38417)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

