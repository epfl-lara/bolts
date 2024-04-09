; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87976 () Bool)

(assert start!87976)

(assert (=> start!87976 false))

(declare-fun e!571385 () Bool)

(assert (=> start!87976 e!571385))

(assert (=> start!87976 true))

(declare-fun tp_is_empty!23557 () Bool)

(assert (=> start!87976 tp_is_empty!23557))

(declare-fun b!1015588 () Bool)

(declare-fun tp!70674 () Bool)

(assert (=> b!1015588 (= e!571385 (and tp_is_empty!23557 tp!70674))))

(declare-datatypes ((B!1490 0))(
  ( (B!1491 (val!11829 Int)) )
))
(declare-datatypes ((tuple2!15294 0))(
  ( (tuple2!15295 (_1!7657 (_ BitVec 64)) (_2!7657 B!1490)) )
))
(declare-datatypes ((List!21598 0))(
  ( (Nil!21595) (Cons!21594 (h!22792 tuple2!15294) (t!30607 List!21598)) )
))
(declare-fun l!1114 () List!21598)

(assert (= (and start!87976 (is-Cons!21594 l!1114)) b!1015588))

(push 1)

(assert (not b!1015588))

(assert tp_is_empty!23557)

(check-sat)

(pop 1)

(push 1)

(check-sat)

