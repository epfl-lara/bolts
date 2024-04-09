; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137768 () Bool)

(assert start!137768)

(assert (=> start!137768 false))

(declare-fun e!883263 () Bool)

(assert (=> start!137768 e!883263))

(declare-fun b!1582508 () Bool)

(declare-fun tp_is_empty!39329 () Bool)

(declare-fun tp!114811 () Bool)

(assert (=> b!1582508 (= e!883263 (and tp_is_empty!39329 tp!114811))))

(declare-datatypes ((B!2796 0))(
  ( (B!2797 (val!19760 Int)) )
))
(declare-datatypes ((tuple2!25852 0))(
  ( (tuple2!25853 (_1!12936 (_ BitVec 64)) (_2!12936 B!2796)) )
))
(declare-datatypes ((List!37041 0))(
  ( (Nil!37038) (Cons!37037 (h!38581 tuple2!25852) (t!51962 List!37041)) )
))
(declare-fun l!1065 () List!37041)

(assert (= (and start!137768 (is-Cons!37037 l!1065)) b!1582508))

(push 1)

(assert (not b!1582508))

(assert tp_is_empty!39329)

(check-sat)

(pop 1)

