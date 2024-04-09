; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132712 () Bool)

(assert start!132712)

(assert (=> start!132712 false))

(declare-fun e!865740 () Bool)

(assert (=> start!132712 e!865740))

(assert (=> start!132712 true))

(declare-fun b!1554655 () Bool)

(declare-fun tp_is_empty!38263 () Bool)

(declare-fun tp!112219 () Bool)

(assert (=> b!1554655 (= e!865740 (and tp_is_empty!38263 tp!112219))))

(declare-datatypes ((B!2252 0))(
  ( (B!2253 (val!19212 Int)) )
))
(declare-datatypes ((tuple2!24940 0))(
  ( (tuple2!24941 (_1!12480 (_ BitVec 64)) (_2!12480 B!2252)) )
))
(declare-datatypes ((List!36392 0))(
  ( (Nil!36389) (Cons!36388 (h!37835 tuple2!24940) (t!51120 List!36392)) )
))
(declare-fun l!1177 () List!36392)

(assert (= (and start!132712 (is-Cons!36388 l!1177)) b!1554655))

(push 1)

(assert (not b!1554655))

(assert tp_is_empty!38263)

(check-sat)

(pop 1)

