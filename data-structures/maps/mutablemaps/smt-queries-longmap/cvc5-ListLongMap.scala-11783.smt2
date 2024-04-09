; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138478 () Bool)

(assert start!138478)

(declare-fun res!1083416 () Bool)

(declare-fun e!885878 () Bool)

(assert (=> start!138478 (=> (not res!1083416) (not e!885878))))

(declare-datatypes ((B!3038 0))(
  ( (B!3039 (val!19881 Int)) )
))
(declare-datatypes ((tuple2!26094 0))(
  ( (tuple2!26095 (_1!13057 (_ BitVec 64)) (_2!13057 B!3038)) )
))
(declare-datatypes ((List!37162 0))(
  ( (Nil!37159) (Cons!37158 (h!38702 tuple2!26094) (t!52101 List!37162)) )
))
(declare-fun l!636 () List!37162)

(declare-fun isStrictlySorted!1221 (List!37162) Bool)

(assert (=> start!138478 (= res!1083416 (isStrictlySorted!1221 l!636))))

(assert (=> start!138478 e!885878))

(declare-fun e!885879 () Bool)

(assert (=> start!138478 e!885879))

(assert (=> start!138478 true))

(declare-fun b!1586302 () Bool)

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586302 (= e!885878 (and (or (not (is-Cons!37158 l!636)) (not (= (_1!13057 (h!38702 l!636)) key!185))) (or (not (is-Cons!37158 l!636)) (bvsle (_1!13057 (h!38702 l!636)) key!185)) (or (not (is-Cons!37158 l!636)) (bvsge (_1!13057 (h!38702 l!636)) key!185)) (not (is-Nil!37159 l!636))))))

(declare-fun b!1586303 () Bool)

(declare-fun tp_is_empty!39571 () Bool)

(declare-fun tp!115420 () Bool)

(assert (=> b!1586303 (= e!885879 (and tp_is_empty!39571 tp!115420))))

(assert (= (and start!138478 res!1083416) b!1586302))

(assert (= (and start!138478 (is-Cons!37158 l!636)) b!1586303))

(declare-fun m!1454727 () Bool)

(assert (=> start!138478 m!1454727))

(push 1)

(assert (not start!138478))

(assert (not b!1586303))

(assert tp_is_empty!39571)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

