; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133180 () Bool)

(assert start!133180)

(assert (=> start!133180 false))

(declare-fun e!867798 () Bool)

(assert (=> start!133180 e!867798))

(assert (=> start!133180 true))

(declare-fun b!1557817 () Bool)

(declare-fun tp_is_empty!38413 () Bool)

(declare-fun tp!112576 () Bool)

(assert (=> b!1557817 (= e!867798 (and tp_is_empty!38413 tp!112576))))

(declare-datatypes ((B!2408 0))(
  ( (B!2409 (val!19290 Int)) )
))
(declare-datatypes ((tuple2!25096 0))(
  ( (tuple2!25097 (_1!12558 (_ BitVec 64)) (_2!12558 B!2408)) )
))
(declare-datatypes ((List!36470 0))(
  ( (Nil!36467) (Cons!36466 (h!37913 tuple2!25096) (t!51204 List!36470)) )
))
(declare-fun l!1292 () List!36470)

(assert (= (and start!133180 (is-Cons!36466 l!1292)) b!1557817))

(push 1)

(assert (not b!1557817))

(assert tp_is_empty!38413)

(check-sat)

(pop 1)

