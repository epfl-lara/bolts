; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138032 () Bool)

(assert start!138032)

(assert (=> start!138032 false))

(declare-fun e!884133 () Bool)

(assert (=> start!138032 e!884133))

(assert (=> start!138032 true))

(declare-fun b!1583834 () Bool)

(declare-fun tp_is_empty!39431 () Bool)

(declare-fun tp!115048 () Bool)

(assert (=> b!1583834 (= e!884133 (and tp_is_empty!39431 tp!115048))))

(declare-datatypes ((B!2898 0))(
  ( (B!2899 (val!19811 Int)) )
))
(declare-datatypes ((tuple2!25954 0))(
  ( (tuple2!25955 (_1!12987 (_ BitVec 64)) (_2!12987 B!2898)) )
))
(declare-datatypes ((List!37092 0))(
  ( (Nil!37089) (Cons!37088 (h!38632 tuple2!25954) (t!52013 List!37092)) )
))
(declare-fun l!1251 () List!37092)

(assert (= (and start!138032 (is-Cons!37088 l!1251)) b!1583834))

(push 1)

(assert (not b!1583834))

(assert tp_is_empty!39431)

(check-sat)

(pop 1)

(push 1)

(check-sat)

