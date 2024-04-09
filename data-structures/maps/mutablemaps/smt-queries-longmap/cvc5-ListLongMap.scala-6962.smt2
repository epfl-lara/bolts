; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87946 () Bool)

(assert start!87946)

(assert (=> start!87946 false))

(declare-fun e!571313 () Bool)

(assert (=> start!87946 e!571313))

(declare-fun b!1015480 () Bool)

(declare-fun tp_is_empty!23545 () Bool)

(declare-fun tp!70647 () Bool)

(assert (=> b!1015480 (= e!571313 (and tp_is_empty!23545 tp!70647))))

(declare-datatypes ((B!1478 0))(
  ( (B!1479 (val!11823 Int)) )
))
(declare-datatypes ((tuple2!15282 0))(
  ( (tuple2!15283 (_1!7651 (_ BitVec 64)) (_2!7651 B!1478)) )
))
(declare-datatypes ((List!21589 0))(
  ( (Nil!21586) (Cons!21585 (h!22783 tuple2!15282) (t!30598 List!21589)) )
))
(declare-fun l!1114 () List!21589)

(assert (= (and start!87946 (is-Cons!21585 l!1114)) b!1015480))

(push 1)

(assert (not b!1015480))

(assert tp_is_empty!23545)

(check-sat)

(pop 1)

