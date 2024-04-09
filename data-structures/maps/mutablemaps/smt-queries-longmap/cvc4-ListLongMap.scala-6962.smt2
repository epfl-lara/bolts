; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87950 () Bool)

(assert start!87950)

(assert (=> start!87950 false))

(declare-fun e!571319 () Bool)

(assert (=> start!87950 e!571319))

(declare-fun b!1015486 () Bool)

(declare-fun tp_is_empty!23549 () Bool)

(declare-fun tp!70653 () Bool)

(assert (=> b!1015486 (= e!571319 (and tp_is_empty!23549 tp!70653))))

(declare-datatypes ((B!1482 0))(
  ( (B!1483 (val!11825 Int)) )
))
(declare-datatypes ((tuple2!15286 0))(
  ( (tuple2!15287 (_1!7653 (_ BitVec 64)) (_2!7653 B!1482)) )
))
(declare-datatypes ((List!21591 0))(
  ( (Nil!21588) (Cons!21587 (h!22785 tuple2!15286) (t!30600 List!21591)) )
))
(declare-fun l!1114 () List!21591)

(assert (= (and start!87950 (is-Cons!21587 l!1114)) b!1015486))

(push 1)

(assert (not b!1015486))

(assert tp_is_empty!23549)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

