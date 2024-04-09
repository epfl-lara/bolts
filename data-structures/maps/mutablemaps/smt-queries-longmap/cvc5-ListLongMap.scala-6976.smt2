; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88436 () Bool)

(assert start!88436)

(assert (=> start!88436 false))

(declare-fun e!572428 () Bool)

(assert (=> start!88436 e!572428))

(declare-fun b!1017373 () Bool)

(declare-fun tp_is_empty!23629 () Bool)

(declare-fun tp!70865 () Bool)

(assert (=> b!1017373 (= e!572428 (and tp_is_empty!23629 tp!70865))))

(declare-datatypes ((B!1562 0))(
  ( (B!1563 (val!11865 Int)) )
))
(declare-datatypes ((tuple2!15366 0))(
  ( (tuple2!15367 (_1!7693 (_ BitVec 64)) (_2!7693 B!1562)) )
))
(declare-datatypes ((List!21667 0))(
  ( (Nil!21664) (Cons!21663 (h!22861 tuple2!15366) (t!30676 List!21667)) )
))
(declare-fun l!1036 () List!21667)

(assert (= (and start!88436 (is-Cons!21663 l!1036)) b!1017373))

(push 1)

(assert (not b!1017373))

(assert tp_is_empty!23629)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

