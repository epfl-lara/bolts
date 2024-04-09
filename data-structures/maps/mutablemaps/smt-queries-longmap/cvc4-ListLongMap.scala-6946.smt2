; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87512 () Bool)

(assert start!87512)

(assert (=> start!87512 false))

(declare-fun e!569930 () Bool)

(assert (=> start!87512 e!569930))

(declare-fun b!1013095 () Bool)

(declare-fun tp_is_empty!23453 () Bool)

(declare-fun tp!70389 () Bool)

(assert (=> b!1013095 (= e!569930 (and tp_is_empty!23453 tp!70389))))

(declare-datatypes ((B!1386 0))(
  ( (B!1387 (val!11777 Int)) )
))
(declare-datatypes ((tuple2!15190 0))(
  ( (tuple2!15191 (_1!7605 (_ BitVec 64)) (_2!7605 B!1386)) )
))
(declare-datatypes ((List!21510 0))(
  ( (Nil!21507) (Cons!21506 (h!22704 tuple2!15190) (t!30519 List!21510)) )
))
(declare-fun l!412 () List!21510)

(assert (= (and start!87512 (is-Cons!21506 l!412)) b!1013095))

(push 1)

(assert (not b!1013095))

(assert tp_is_empty!23453)

(check-sat)

(pop 1)

(push 1)

(check-sat)

