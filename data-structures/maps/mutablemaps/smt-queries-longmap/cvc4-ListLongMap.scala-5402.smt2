; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72152 () Bool)

(assert start!72152)

(assert (=> start!72152 false))

(declare-fun e!466856 () Bool)

(assert (=> start!72152 e!466856))

(declare-fun b!836621 () Bool)

(declare-fun tp_is_empty!15287 () Bool)

(declare-fun tp!47516 () Bool)

(assert (=> b!836621 (= e!466856 (and tp_is_empty!15287 tp!47516))))

(declare-datatypes ((B!1218 0))(
  ( (B!1219 (val!7691 Int)) )
))
(declare-datatypes ((tuple2!10260 0))(
  ( (tuple2!10261 (_1!5140 (_ BitVec 64)) (_2!5140 B!1218)) )
))
(declare-datatypes ((List!16056 0))(
  ( (Nil!16053) (Cons!16052 (h!17183 tuple2!10260) (t!22435 List!16056)) )
))
(declare-fun l!390 () List!16056)

(assert (= (and start!72152 (is-Cons!16052 l!390)) b!836621))

(push 1)

(assert (not b!836621))

(assert tp_is_empty!15287)

(check-sat)

(pop 1)

(push 1)

(check-sat)

