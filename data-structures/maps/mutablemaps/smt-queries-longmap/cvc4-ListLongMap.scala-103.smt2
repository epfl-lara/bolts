; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1690 () Bool)

(assert start!1690)

(assert (=> start!1690 false))

(declare-fun e!7130 () Bool)

(assert (=> start!1690 e!7130))

(declare-fun b!11969 () Bool)

(declare-fun tp_is_empty!599 () Bool)

(declare-fun tp!2012 () Bool)

(assert (=> b!11969 (= e!7130 (and tp_is_empty!599 tp!2012))))

(declare-datatypes ((B!426 0))(
  ( (B!427 (val!308 Int)) )
))
(declare-datatypes ((tuple2!398 0))(
  ( (tuple2!399 (_1!199 (_ BitVec 64)) (_2!199 B!426)) )
))
(declare-datatypes ((List!355 0))(
  ( (Nil!352) (Cons!351 (h!917 tuple2!398) (t!2742 List!355)) )
))
(declare-fun l!1094 () List!355)

(assert (= (and start!1690 (is-Cons!351 l!1094)) b!11969))

(push 1)

(assert (not b!11969))

(assert tp_is_empty!599)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

