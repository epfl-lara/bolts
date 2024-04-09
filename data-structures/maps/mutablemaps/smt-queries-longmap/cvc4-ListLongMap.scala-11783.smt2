; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138482 () Bool)

(assert start!138482)

(declare-fun res!1083422 () Bool)

(declare-fun e!885890 () Bool)

(assert (=> start!138482 (=> (not res!1083422) (not e!885890))))

(declare-datatypes ((B!3042 0))(
  ( (B!3043 (val!19883 Int)) )
))
(declare-datatypes ((tuple2!26098 0))(
  ( (tuple2!26099 (_1!13059 (_ BitVec 64)) (_2!13059 B!3042)) )
))
(declare-datatypes ((List!37164 0))(
  ( (Nil!37161) (Cons!37160 (h!38704 tuple2!26098) (t!52103 List!37164)) )
))
(declare-fun l!636 () List!37164)

(declare-fun isStrictlySorted!1223 (List!37164) Bool)

(assert (=> start!138482 (= res!1083422 (isStrictlySorted!1223 l!636))))

(assert (=> start!138482 e!885890))

(declare-fun e!885891 () Bool)

(assert (=> start!138482 e!885891))

(assert (=> start!138482 true))

(declare-fun b!1586314 () Bool)

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586314 (= e!885890 (and (or (not (is-Cons!37160 l!636)) (not (= (_1!13059 (h!38704 l!636)) key!185))) (or (not (is-Cons!37160 l!636)) (bvsle (_1!13059 (h!38704 l!636)) key!185)) (or (not (is-Cons!37160 l!636)) (bvsge (_1!13059 (h!38704 l!636)) key!185)) (not (is-Nil!37161 l!636))))))

(declare-fun b!1586315 () Bool)

(declare-fun tp_is_empty!39575 () Bool)

(declare-fun tp!115426 () Bool)

(assert (=> b!1586315 (= e!885891 (and tp_is_empty!39575 tp!115426))))

(assert (= (and start!138482 res!1083422) b!1586314))

(assert (= (and start!138482 (is-Cons!37160 l!636)) b!1586315))

(declare-fun m!1454731 () Bool)

(assert (=> start!138482 m!1454731))

(push 1)

(assert (not start!138482))

(assert (not b!1586315))

(assert tp_is_empty!39575)

(check-sat)

(pop 1)

(push 1)

(check-sat)

