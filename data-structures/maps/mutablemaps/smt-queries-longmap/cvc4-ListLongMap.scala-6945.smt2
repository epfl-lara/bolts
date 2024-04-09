; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87506 () Bool)

(assert start!87506)

(assert (=> start!87506 false))

(declare-fun e!569921 () Bool)

(assert (=> start!87506 e!569921))

(declare-fun b!1013086 () Bool)

(declare-fun tp_is_empty!23447 () Bool)

(declare-fun tp!70380 () Bool)

(assert (=> b!1013086 (= e!569921 (and tp_is_empty!23447 tp!70380))))

(declare-datatypes ((B!1380 0))(
  ( (B!1381 (val!11774 Int)) )
))
(declare-datatypes ((tuple2!15184 0))(
  ( (tuple2!15185 (_1!7602 (_ BitVec 64)) (_2!7602 B!1380)) )
))
(declare-datatypes ((List!21507 0))(
  ( (Nil!21504) (Cons!21503 (h!22701 tuple2!15184) (t!30516 List!21507)) )
))
(declare-fun l!412 () List!21507)

(assert (= (and start!87506 (is-Cons!21503 l!412)) b!1013086))

(push 1)

(assert (not b!1013086))

(assert tp_is_empty!23447)

(check-sat)

(pop 1)

