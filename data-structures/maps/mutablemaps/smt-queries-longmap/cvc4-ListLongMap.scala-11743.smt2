; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137774 () Bool)

(assert start!137774)

(assert (=> start!137774 false))

(declare-fun e!883272 () Bool)

(assert (=> start!137774 e!883272))

(assert (=> start!137774 true))

(declare-fun b!1582517 () Bool)

(declare-fun tp_is_empty!39335 () Bool)

(declare-fun tp!114820 () Bool)

(assert (=> b!1582517 (= e!883272 (and tp_is_empty!39335 tp!114820))))

(declare-datatypes ((B!2802 0))(
  ( (B!2803 (val!19763 Int)) )
))
(declare-datatypes ((tuple2!25858 0))(
  ( (tuple2!25859 (_1!12939 (_ BitVec 64)) (_2!12939 B!2802)) )
))
(declare-datatypes ((List!37044 0))(
  ( (Nil!37041) (Cons!37040 (h!38584 tuple2!25858) (t!51965 List!37044)) )
))
(declare-fun l!1065 () List!37044)

(assert (= (and start!137774 (is-Cons!37040 l!1065)) b!1582517))

(push 1)

(assert (not b!1582517))

(assert tp_is_empty!39335)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

