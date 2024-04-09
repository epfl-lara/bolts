; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137788 () Bool)

(assert start!137788)

(declare-fun res!1081235 () Bool)

(declare-fun e!883305 () Bool)

(assert (=> start!137788 (=> (not res!1081235) (not e!883305))))

(declare-datatypes ((B!2816 0))(
  ( (B!2817 (val!19770 Int)) )
))
(declare-datatypes ((tuple2!25872 0))(
  ( (tuple2!25873 (_1!12946 (_ BitVec 64)) (_2!12946 B!2816)) )
))
(declare-datatypes ((List!37051 0))(
  ( (Nil!37048) (Cons!37047 (h!38591 tuple2!25872) (t!51972 List!37051)) )
))
(declare-fun l!1065 () List!37051)

(declare-fun isStrictlySorted!1122 (List!37051) Bool)

(assert (=> start!137788 (= res!1081235 (isStrictlySorted!1122 l!1065))))

(assert (=> start!137788 e!883305))

(declare-fun e!883304 () Bool)

(assert (=> start!137788 e!883304))

(assert (=> start!137788 true))

(declare-fun b!1582587 () Bool)

(declare-fun res!1081234 () Bool)

(assert (=> b!1582587 (=> (not res!1081234) (not e!883305))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!968 (List!37051 (_ BitVec 64)) Bool)

(assert (=> b!1582587 (= res!1081234 (containsKey!968 l!1065 key!287))))

(declare-fun b!1582588 () Bool)

(declare-fun ListPrimitiveSize!205 (List!37051) Int)

(assert (=> b!1582588 (= e!883305 (< (ListPrimitiveSize!205 l!1065) 0))))

(declare-fun b!1582589 () Bool)

(declare-fun tp_is_empty!39349 () Bool)

(declare-fun tp!114841 () Bool)

(assert (=> b!1582589 (= e!883304 (and tp_is_empty!39349 tp!114841))))

(assert (= (and start!137788 res!1081235) b!1582587))

(assert (= (and b!1582587 res!1081234) b!1582588))

(assert (= (and start!137788 (is-Cons!37047 l!1065)) b!1582589))

(declare-fun m!1452935 () Bool)

(assert (=> start!137788 m!1452935))

(declare-fun m!1452937 () Bool)

(assert (=> b!1582587 m!1452937))

(declare-fun m!1452939 () Bool)

(assert (=> b!1582588 m!1452939))

(push 1)

(assert (not b!1582589))

(assert (not b!1582588))

(assert (not b!1582587))

(assert (not start!137788))

(assert tp_is_empty!39349)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166977 () Bool)

(declare-fun res!1081264 () Bool)

(declare-fun e!883336 () Bool)

(assert (=> d!166977 (=> res!1081264 e!883336)))

(assert (=> d!166977 (= res!1081264 (and (is-Cons!37047 l!1065) (= (_1!12946 (h!38591 l!1065)) key!287)))))

(assert (=> d!166977 (= (containsKey!968 l!1065 key!287) e!883336)))

(declare-fun b!1582628 () Bool)

(declare-fun e!883337 () Bool)

(assert (=> b!1582628 (= e!883336 e!883337)))

(declare-fun res!1081265 () Bool)

(assert (=> b!1582628 (=> (not res!1081265) (not e!883337))))

(assert (=> b!1582628 (= res!1081265 (and (or (not (is-Cons!37047 l!1065)) (bvsle (_1!12946 (h!38591 l!1065)) key!287)) (is-Cons!37047 l!1065) (bvslt (_1!12946 (h!38591 l!1065)) key!287)))))

(declare-fun b!1582629 () Bool)

(assert (=> b!1582629 (= e!883337 (containsKey!968 (t!51972 l!1065) key!287))))

(assert (= (and d!166977 (not res!1081264)) b!1582628))

(assert (= (and b!1582628 res!1081265) b!1582629))

(declare-fun m!1452957 () Bool)

(assert (=> b!1582629 m!1452957))

(assert (=> b!1582587 d!166977))

(declare-fun d!166985 () Bool)

(declare-fun lt!677056 () Int)

(assert (=> d!166985 (>= lt!677056 0)))

(declare-fun e!883351 () Int)

(assert (=> d!166985 (= lt!677056 e!883351)))

(declare-fun c!146607 () Bool)

(assert (=> d!166985 (= c!146607 (is-Nil!37048 l!1065))))

(assert (=> d!166985 (= (ListPrimitiveSize!205 l!1065) lt!677056)))

(declare-fun b!1582646 () Bool)

(assert (=> b!1582646 (= e!883351 0)))

(declare-fun b!1582647 () Bool)

(assert (=> b!1582647 (= e!883351 (+ 1 (ListPrimitiveSize!205 (t!51972 l!1065))))))

(assert (= (and d!166985 c!146607) b!1582646))

(assert (= (and d!166985 (not c!146607)) b!1582647))

(declare-fun m!1452963 () Bool)

(assert (=> b!1582647 m!1452963))

(assert (=> b!1582588 d!166985))

(declare-fun d!166989 () Bool)

(declare-fun res!1081282 () Bool)

(declare-fun e!883363 () Bool)

(assert (=> d!166989 (=> res!1081282 e!883363)))

(assert (=> d!166989 (= res!1081282 (or (is-Nil!37048 l!1065) (is-Nil!37048 (t!51972 l!1065))))))

(assert (=> d!166989 (= (isStrictlySorted!1122 l!1065) e!883363)))

(declare-fun b!1582663 () Bool)

(declare-fun e!883364 () Bool)

(assert (=> b!1582663 (= e!883363 e!883364)))

(declare-fun res!1081283 () Bool)

(assert (=> b!1582663 (=> (not res!1081283) (not e!883364))))

(assert (=> b!1582663 (= res!1081283 (bvslt (_1!12946 (h!38591 l!1065)) (_1!12946 (h!38591 (t!51972 l!1065)))))))

(declare-fun b!1582664 () Bool)

(assert (=> b!1582664 (= e!883364 (isStrictlySorted!1122 (t!51972 l!1065)))))

(assert (= (and d!166989 (not res!1081282)) b!1582663))

(assert (= (and b!1582663 res!1081283) b!1582664))

(declare-fun m!1452967 () Bool)

(assert (=> b!1582664 m!1452967))

(assert (=> start!137788 d!166989))

(declare-fun b!1582675 () Bool)

(declare-fun e!883370 (