; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88622 () Bool)

(assert start!88622)

(assert (=> start!88622 false))

(declare-fun e!572935 () Bool)

(assert (=> start!88622 e!572935))

(assert (=> start!88622 true))

(declare-fun b!1018198 () Bool)

(declare-fun tp_is_empty!23689 () Bool)

(declare-fun tp!71003 () Bool)

(assert (=> b!1018198 (= e!572935 (and tp_is_empty!23689 tp!71003))))

(declare-datatypes ((B!1622 0))(
  ( (B!1623 (val!11895 Int)) )
))
(declare-datatypes ((tuple2!15426 0))(
  ( (tuple2!15427 (_1!7723 (_ BitVec 64)) (_2!7723 B!1622)) )
))
(declare-datatypes ((List!21697 0))(
  ( (Nil!21694) (Cons!21693 (h!22891 tuple2!15426) (t!30706 List!21697)) )
))
(declare-fun l!996 () List!21697)

(assert (= (and start!88622 (is-Cons!21693 l!996)) b!1018198))

(push 1)

(assert (not b!1018198))

(assert tp_is_empty!23689)

(check-sat)

(pop 1)

(push 1)

(check-sat)

