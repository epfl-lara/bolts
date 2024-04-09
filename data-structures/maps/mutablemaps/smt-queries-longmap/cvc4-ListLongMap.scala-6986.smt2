; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88626 () Bool)

(assert start!88626)

(assert (=> start!88626 false))

(declare-fun e!572941 () Bool)

(assert (=> start!88626 e!572941))

(assert (=> start!88626 true))

(declare-fun b!1018204 () Bool)

(declare-fun tp_is_empty!23693 () Bool)

(declare-fun tp!71009 () Bool)

(assert (=> b!1018204 (= e!572941 (and tp_is_empty!23693 tp!71009))))

(declare-datatypes ((B!1626 0))(
  ( (B!1627 (val!11897 Int)) )
))
(declare-datatypes ((tuple2!15430 0))(
  ( (tuple2!15431 (_1!7725 (_ BitVec 64)) (_2!7725 B!1626)) )
))
(declare-datatypes ((List!21699 0))(
  ( (Nil!21696) (Cons!21695 (h!22893 tuple2!15430) (t!30708 List!21699)) )
))
(declare-fun l!996 () List!21699)

(assert (= (and start!88626 (is-Cons!21695 l!996)) b!1018204))

(push 1)

(assert (not b!1018204))

(assert tp_is_empty!23693)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

