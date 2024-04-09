; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138028 () Bool)

(assert start!138028)

(assert (=> start!138028 false))

(declare-fun e!884127 () Bool)

(assert (=> start!138028 e!884127))

(assert (=> start!138028 true))

(declare-fun b!1583828 () Bool)

(declare-fun tp_is_empty!39427 () Bool)

(declare-fun tp!115042 () Bool)

(assert (=> b!1583828 (= e!884127 (and tp_is_empty!39427 tp!115042))))

(declare-datatypes ((B!2894 0))(
  ( (B!2895 (val!19809 Int)) )
))
(declare-datatypes ((tuple2!25950 0))(
  ( (tuple2!25951 (_1!12985 (_ BitVec 64)) (_2!12985 B!2894)) )
))
(declare-datatypes ((List!37090 0))(
  ( (Nil!37087) (Cons!37086 (h!38630 tuple2!25950) (t!52011 List!37090)) )
))
(declare-fun l!1251 () List!37090)

(assert (= (and start!138028 (is-Cons!37086 l!1251)) b!1583828))

(push 1)

(assert (not b!1583828))

(assert tp_is_empty!39427)

(check-sat)

(pop 1)

