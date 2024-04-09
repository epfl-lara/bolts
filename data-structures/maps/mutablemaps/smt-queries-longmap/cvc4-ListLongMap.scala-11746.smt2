; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137792 () Bool)

(assert start!137792)

(declare-fun res!1081246 () Bool)

(declare-fun e!883316 () Bool)

(assert (=> start!137792 (=> (not res!1081246) (not e!883316))))

(declare-datatypes ((B!2820 0))(
  ( (B!2821 (val!19772 Int)) )
))
(declare-datatypes ((tuple2!25876 0))(
  ( (tuple2!25877 (_1!12948 (_ BitVec 64)) (_2!12948 B!2820)) )
))
(declare-datatypes ((List!37053 0))(
  ( (Nil!37050) (Cons!37049 (h!38593 tuple2!25876) (t!51974 List!37053)) )
))
(declare-fun l!1065 () List!37053)

(declare-fun isStrictlySorted!1124 (List!37053) Bool)

(assert (=> start!137792 (= res!1081246 (isStrictlySorted!1124 l!1065))))

(assert (=> start!137792 e!883316))

(declare-fun e!883317 () Bool)

(assert (=> start!137792 e!883317))

(assert (=> start!137792 true))

(declare-fun b!1582605 () Bool)

(declare-fun res!1081247 () Bool)

(assert (=> b!1582605 (=> (not res!1081247) (not e!883316))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!970 (List!37053 (_ BitVec 64)) Bool)

(assert (=> b!1582605 (= res!1081247 (containsKey!970 l!1065 key!287))))

(declare-fun b!1582606 () Bool)

(declare-fun ListPrimitiveSize!207 (List!37053) Int)

(assert (=> b!1582606 (= e!883316 (< (ListPrimitiveSize!207 l!1065) 0))))

(declare-fun b!1582607 () Bool)

(declare-fun tp_is_empty!39353 () Bool)

(declare-fun tp!114847 () Bool)

(assert (=> b!1582607 (= e!883317 (and tp_is_empty!39353 tp!114847))))

(assert (= (and start!137792 res!1081246) b!1582605))

(assert (= (and b!1582605 res!1081247) b!1582606))

(assert (= (and start!137792 (is-Cons!37049 l!1065)) b!1582607))

(declare-fun m!1452947 () Bool)

(assert (=> start!137792 m!1452947))

(declare-fun m!1452949 () Bool)

(assert (=> b!1582605 m!1452949))

(declare-fun m!1452951 () Bool)

(assert (=> b!1582606 m!1452951))

(push 1)

(assert (not b!1582606))

(assert (not start!137792))

(assert tp_is_empty!39353)

(assert (not b!1582607))

(assert (not b!1582605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166979 () Bool)

(declare-fun res!1081262 () Bool)

(declare-fun e!883332 () Bool)

(assert (=> d!166979 (=> res!1081262 e!883332)))

(assert (=> d!166979 (= res!1081262 (or (is-Nil!37050 l!1065) (is-Nil!37050 (t!51974 l!1065))))))

(assert (=> d!166979 (= (isStrictlySorted!1124 l!1065) e!883332)))

(declare-fun b!1582622 () Bool)

(declare-fun e!883333 () Bool)

(assert (=> b!1582622 (= e!883332 e!883333)))

(declare-fun res!1081263 () Bool)

(assert (=> b!1582622 (=> (not res!1081263) (not e!883333))))

(assert (=> b!1582622 (= res!1081263 (bvslt (_1!12948 (h!38593 l!1065)) (_1!12948 (h!38593 (t!51974 l!1065)))))))

(declare-fun b!1582623 () Bool)

(assert (=> b!1582623 (= e!883333 (isStrictlySorted!1124 (t!51974 l!1065)))))

(assert (= (and d!166979 (not res!1081262)) b!1582622))

(assert (= (and b!1582622 res!1081263) b!1582623))

(declare-fun m!1452955 () Bool)

(assert (=> b!1582623 m!1452955))

(assert (=> start!137792 d!166979))

(declare-fun d!166983 () Bool)

(declare-fun res!1081276 () Bool)

(declare-fun e!883355 () Bool)

(assert (=> d!166983 (=> res!1081276 e!883355)))

(assert (=> d!166983 (= res!1081276 (and (is-Cons!37049 l!1065) (= (_1!12948 (h!38593 l!1065)) key!287)))))

(assert (=> d!166983 (= (containsKey!970 l!1065 key!287) e!883355)))

(declare-fun b!1582653 () Bool)

(declare-fun e!883356 () Bool)

(assert (=> b!1582653 (= e!883355 e!883356)))

(declare-fun res!1081277 () Bool)

(assert (=> b!1582653 (=> (not res!1081277) (not e!883356))))

(assert (=> b!1582653 (= res!1081277 (and (or (not (is-Cons!37049 l!1065)) (bvsle (_1!12948 (h!38593 l!1065)) key!287)) (is-Cons!37049 l!1065) (bvslt (_1!12948 (h!38593 l!1065)) key!287)))))

(declare-fun b!1582654 () Bool)

(assert (=> b!1582654 (= e!883356 (containsKey!970 (t!51974 l!1065) key!287))))

(assert (= (and d!166983 (not res!1081276)) b!1582653))

