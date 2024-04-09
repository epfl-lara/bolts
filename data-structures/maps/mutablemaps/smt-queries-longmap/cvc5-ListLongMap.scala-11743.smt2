; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137770 () Bool)

(assert start!137770)

(assert (=> start!137770 false))

(declare-fun e!883266 () Bool)

(assert (=> start!137770 e!883266))

(assert (=> start!137770 true))

(declare-fun b!1582511 () Bool)

(declare-fun tp_is_empty!39331 () Bool)

(declare-fun tp!114814 () Bool)

(assert (=> b!1582511 (= e!883266 (and tp_is_empty!39331 tp!114814))))

(declare-datatypes ((B!2798 0))(
  ( (B!2799 (val!19761 Int)) )
))
(declare-datatypes ((tuple2!25854 0))(
  ( (tuple2!25855 (_1!12937 (_ BitVec 64)) (_2!12937 B!2798)) )
))
(declare-datatypes ((List!37042 0))(
  ( (Nil!37039) (Cons!37038 (h!38582 tuple2!25854) (t!51963 List!37042)) )
))
(declare-fun l!1065 () List!37042)

(assert (= (and start!137770 (is-Cons!37038 l!1065)) b!1582511))

(push 1)

(assert (not b!1582511))

(assert tp_is_empty!39331)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

