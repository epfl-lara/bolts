; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88446 () Bool)

(assert start!88446)

(assert (=> start!88446 false))

(declare-fun e!572443 () Bool)

(assert (=> start!88446 e!572443))

(assert (=> start!88446 true))

(declare-fun b!1017388 () Bool)

(declare-fun tp_is_empty!23639 () Bool)

(declare-fun tp!70880 () Bool)

(assert (=> b!1017388 (= e!572443 (and tp_is_empty!23639 tp!70880))))

(declare-datatypes ((B!1572 0))(
  ( (B!1573 (val!11870 Int)) )
))
(declare-datatypes ((tuple2!15376 0))(
  ( (tuple2!15377 (_1!7698 (_ BitVec 64)) (_2!7698 B!1572)) )
))
(declare-datatypes ((List!21672 0))(
  ( (Nil!21669) (Cons!21668 (h!22866 tuple2!15376) (t!30681 List!21672)) )
))
(declare-fun l!1036 () List!21672)

(assert (= (and start!88446 (is-Cons!21668 l!1036)) b!1017388))

(push 1)

(assert (not b!1017388))

(assert tp_is_empty!23639)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

