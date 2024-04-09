; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88454 () Bool)

(assert start!88454)

(assert (=> start!88454 false))

(declare-fun e!572464 () Bool)

(assert (=> start!88454 e!572464))

(assert (=> start!88454 true))

(declare-fun b!1017445 () Bool)

(declare-fun tp_is_empty!23647 () Bool)

(declare-fun tp!70892 () Bool)

(assert (=> b!1017445 (= e!572464 (and tp_is_empty!23647 tp!70892))))

(declare-datatypes ((B!1580 0))(
  ( (B!1581 (val!11874 Int)) )
))
(declare-datatypes ((tuple2!15384 0))(
  ( (tuple2!15385 (_1!7702 (_ BitVec 64)) (_2!7702 B!1580)) )
))
(declare-datatypes ((List!21676 0))(
  ( (Nil!21673) (Cons!21672 (h!22870 tuple2!15384) (t!30685 List!21676)) )
))
(declare-fun l!1036 () List!21676)

(assert (= (and start!88454 (is-Cons!21672 l!1036)) b!1017445))

(push 1)

(assert (not b!1017445))

(assert tp_is_empty!23647)

(check-sat)

(pop 1)

(push 1)

(check-sat)

