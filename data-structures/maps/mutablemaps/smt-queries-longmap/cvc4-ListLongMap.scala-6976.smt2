; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88440 () Bool)

(assert start!88440)

(assert (=> start!88440 false))

(declare-fun e!572434 () Bool)

(assert (=> start!88440 e!572434))

(declare-fun b!1017379 () Bool)

(declare-fun tp_is_empty!23633 () Bool)

(declare-fun tp!70871 () Bool)

(assert (=> b!1017379 (= e!572434 (and tp_is_empty!23633 tp!70871))))

(declare-datatypes ((B!1566 0))(
  ( (B!1567 (val!11867 Int)) )
))
(declare-datatypes ((tuple2!15370 0))(
  ( (tuple2!15371 (_1!7695 (_ BitVec 64)) (_2!7695 B!1566)) )
))
(declare-datatypes ((List!21669 0))(
  ( (Nil!21666) (Cons!21665 (h!22863 tuple2!15370) (t!30678 List!21669)) )
))
(declare-fun l!1036 () List!21669)

(assert (= (and start!88440 (is-Cons!21665 l!1036)) b!1017379))

(push 1)

(assert (not b!1017379))

(assert tp_is_empty!23633)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

