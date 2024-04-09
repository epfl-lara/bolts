; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88616 () Bool)

(assert start!88616)

(assert (=> start!88616 false))

(declare-fun e!572926 () Bool)

(assert (=> start!88616 e!572926))

(declare-fun b!1018189 () Bool)

(declare-fun tp_is_empty!23683 () Bool)

(declare-fun tp!70994 () Bool)

(assert (=> b!1018189 (= e!572926 (and tp_is_empty!23683 tp!70994))))

(declare-datatypes ((B!1616 0))(
  ( (B!1617 (val!11892 Int)) )
))
(declare-datatypes ((tuple2!15420 0))(
  ( (tuple2!15421 (_1!7720 (_ BitVec 64)) (_2!7720 B!1616)) )
))
(declare-datatypes ((List!21694 0))(
  ( (Nil!21691) (Cons!21690 (h!22888 tuple2!15420) (t!30703 List!21694)) )
))
(declare-fun l!996 () List!21694)

(assert (= (and start!88616 (is-Cons!21690 l!996)) b!1018189))

(push 1)

(assert (not b!1018189))

(assert tp_is_empty!23683)

(check-sat)

(pop 1)

(push 1)

(check-sat)

