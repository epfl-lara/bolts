; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137764 () Bool)

(assert start!137764)

(assert (=> start!137764 false))

(declare-fun e!883257 () Bool)

(assert (=> start!137764 e!883257))

(declare-fun b!1582502 () Bool)

(declare-fun tp_is_empty!39325 () Bool)

(declare-fun tp!114805 () Bool)

(assert (=> b!1582502 (= e!883257 (and tp_is_empty!39325 tp!114805))))

(declare-datatypes ((B!2792 0))(
  ( (B!2793 (val!19758 Int)) )
))
(declare-datatypes ((tuple2!25848 0))(
  ( (tuple2!25849 (_1!12934 (_ BitVec 64)) (_2!12934 B!2792)) )
))
(declare-datatypes ((List!37039 0))(
  ( (Nil!37036) (Cons!37035 (h!38579 tuple2!25848) (t!51960 List!37039)) )
))
(declare-fun l!1065 () List!37039)

(assert (= (and start!137764 (is-Cons!37035 l!1065)) b!1582502))

(push 1)

(assert (not b!1582502))

(assert tp_is_empty!39325)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

