; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137782 () Bool)

(assert start!137782)

(assert (=> start!137782 false))

(declare-fun e!883293 () Bool)

(assert (=> start!137782 e!883293))

(assert (=> start!137782 true))

(declare-fun b!1582574 () Bool)

(declare-fun tp_is_empty!39343 () Bool)

(declare-fun tp!114832 () Bool)

(assert (=> b!1582574 (= e!883293 (and tp_is_empty!39343 tp!114832))))

(declare-datatypes ((B!2810 0))(
  ( (B!2811 (val!19767 Int)) )
))
(declare-datatypes ((tuple2!25866 0))(
  ( (tuple2!25867 (_1!12943 (_ BitVec 64)) (_2!12943 B!2810)) )
))
(declare-datatypes ((List!37048 0))(
  ( (Nil!37045) (Cons!37044 (h!38588 tuple2!25866) (t!51969 List!37048)) )
))
(declare-fun l!1065 () List!37048)

(assert (= (and start!137782 (is-Cons!37044 l!1065)) b!1582574))

(push 1)

(assert (not b!1582574))

(assert tp_is_empty!39343)

(check-sat)

(pop 1)

