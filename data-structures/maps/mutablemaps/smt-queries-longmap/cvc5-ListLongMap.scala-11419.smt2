; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133138 () Bool)

(assert start!133138)

(assert (=> start!133138 false))

(declare-fun e!867615 () Bool)

(assert (=> start!133138 e!867615))

(assert (=> start!133138 true))

(declare-fun b!1557487 () Bool)

(declare-fun tp_is_empty!38395 () Bool)

(declare-fun tp!112540 () Bool)

(assert (=> b!1557487 (= e!867615 (and tp_is_empty!38395 tp!112540))))

(declare-datatypes ((B!2390 0))(
  ( (B!2391 (val!19281 Int)) )
))
(declare-datatypes ((tuple2!25078 0))(
  ( (tuple2!25079 (_1!12549 (_ BitVec 64)) (_2!12549 B!2390)) )
))
(declare-datatypes ((List!36461 0))(
  ( (Nil!36458) (Cons!36457 (h!37904 tuple2!25078) (t!51195 List!36461)) )
))
(declare-fun l!1292 () List!36461)

(assert (= (and start!133138 (is-Cons!36457 l!1292)) b!1557487))

(push 1)

(assert (not b!1557487))

(assert tp_is_empty!38395)

(check-sat)

(pop 1)

