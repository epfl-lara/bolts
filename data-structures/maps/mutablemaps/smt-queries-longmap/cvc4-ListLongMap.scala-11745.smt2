; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137786 () Bool)

(assert start!137786)

(assert (=> start!137786 false))

(declare-fun e!883299 () Bool)

(assert (=> start!137786 e!883299))

(assert (=> start!137786 true))

(declare-fun b!1582580 () Bool)

(declare-fun tp_is_empty!39347 () Bool)

(declare-fun tp!114838 () Bool)

(assert (=> b!1582580 (= e!883299 (and tp_is_empty!39347 tp!114838))))

(declare-datatypes ((B!2814 0))(
  ( (B!2815 (val!19769 Int)) )
))
(declare-datatypes ((tuple2!25870 0))(
  ( (tuple2!25871 (_1!12945 (_ BitVec 64)) (_2!12945 B!2814)) )
))
(declare-datatypes ((List!37050 0))(
  ( (Nil!37047) (Cons!37046 (h!38590 tuple2!25870) (t!51971 List!37050)) )
))
(declare-fun l!1065 () List!37050)

(assert (= (and start!137786 (is-Cons!37046 l!1065)) b!1582580))

(push 1)

(assert (not b!1582580))

(assert tp_is_empty!39347)

(check-sat)

(pop 1)

