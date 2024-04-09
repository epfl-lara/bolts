; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138422 () Bool)

(assert start!138422)

(declare-fun res!1083272 () Bool)

(declare-fun e!885674 () Bool)

(assert (=> start!138422 (=> (not res!1083272) (not e!885674))))

(declare-datatypes ((B!3012 0))(
  ( (B!3013 (val!19868 Int)) )
))
(declare-datatypes ((tuple2!26068 0))(
  ( (tuple2!26069 (_1!13044 (_ BitVec 64)) (_2!13044 B!3012)) )
))
(declare-datatypes ((List!37149 0))(
  ( (Nil!37146) (Cons!37145 (h!38689 tuple2!26068) (t!52088 List!37149)) )
))
(declare-fun l!556 () List!37149)

(declare-fun isStrictlySorted!1208 (List!37149) Bool)

(assert (=> start!138422 (= res!1083272 (isStrictlySorted!1208 l!556))))

(assert (=> start!138422 e!885674))

(declare-fun e!885675 () Bool)

(assert (=> start!138422 e!885675))

(assert (=> start!138422 true))

(declare-fun b!1586023 () Bool)

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1586023 (= e!885674 (and (or (not (is-Cons!37145 l!556)) (bvsge (_1!13044 (h!38689 l!556)) newKey!21)) (or (not (is-Cons!37145 l!556)) (not (= (_1!13044 (h!38689 l!556)) newKey!21))) (or (not (is-Cons!37145 l!556)) (bvsle (_1!13044 (h!38689 l!556)) newKey!21)) (not (is-Nil!37146 l!556))))))

(declare-fun b!1586024 () Bool)

(declare-fun tp_is_empty!39545 () Bool)

(declare-fun tp!115345 () Bool)

(assert (=> b!1586024 (= e!885675 (and tp_is_empty!39545 tp!115345))))

(assert (= (and start!138422 res!1083272) b!1586023))

(assert (= (and start!138422 (is-Cons!37145 l!556)) b!1586024))

(declare-fun m!1454629 () Bool)

(assert (=> start!138422 m!1454629))

(push 1)

(assert (not start!138422))

(assert (not b!1586024))

(assert tp_is_empty!39545)

(check-sat)

(pop 1)

(push 1)

(check-sat)

