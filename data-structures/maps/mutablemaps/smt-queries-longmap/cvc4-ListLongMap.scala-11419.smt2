; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133142 () Bool)

(assert start!133142)

(assert (=> start!133142 false))

(declare-fun e!867621 () Bool)

(assert (=> start!133142 e!867621))

(assert (=> start!133142 true))

(declare-fun b!1557493 () Bool)

(declare-fun tp_is_empty!38399 () Bool)

(declare-fun tp!112546 () Bool)

(assert (=> b!1557493 (= e!867621 (and tp_is_empty!38399 tp!112546))))

(declare-datatypes ((B!2394 0))(
  ( (B!2395 (val!19283 Int)) )
))
(declare-datatypes ((tuple2!25082 0))(
  ( (tuple2!25083 (_1!12551 (_ BitVec 64)) (_2!12551 B!2394)) )
))
(declare-datatypes ((List!36463 0))(
  ( (Nil!36460) (Cons!36459 (h!37906 tuple2!25082) (t!51197 List!36463)) )
))
(declare-fun l!1292 () List!36463)

(assert (= (and start!133142 (is-Cons!36459 l!1292)) b!1557493))

(push 1)

(assert (not b!1557493))

(assert tp_is_empty!38399)

(check-sat)

(pop 1)

(push 1)

(check-sat)

