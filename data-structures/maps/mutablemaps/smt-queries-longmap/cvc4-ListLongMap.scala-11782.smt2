; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138464 () Bool)

(assert start!138464)

(declare-fun res!1083394 () Bool)

(declare-fun e!885834 () Bool)

(assert (=> start!138464 (=> (not res!1083394) (not e!885834))))

(declare-datatypes ((B!3036 0))(
  ( (B!3037 (val!19880 Int)) )
))
(declare-datatypes ((tuple2!26092 0))(
  ( (tuple2!26093 (_1!13056 (_ BitVec 64)) (_2!13056 B!3036)) )
))
(declare-datatypes ((List!37161 0))(
  ( (Nil!37158) (Cons!37157 (h!38701 tuple2!26092) (t!52100 List!37161)) )
))
(declare-fun l!636 () List!37161)

(declare-fun isStrictlySorted!1220 (List!37161) Bool)

(assert (=> start!138464 (= res!1083394 (isStrictlySorted!1220 l!636))))

(assert (=> start!138464 e!885834))

(declare-fun e!885833 () Bool)

(assert (=> start!138464 e!885833))

(assert (=> start!138464 true))

(declare-fun b!1586238 () Bool)

(declare-fun res!1083395 () Bool)

(assert (=> b!1586238 (=> (not res!1083395) (not e!885834))))

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586238 (= res!1083395 (and (or (not (is-Cons!37157 l!636)) (not (= (_1!13056 (h!38701 l!636)) key!185))) (or (not (is-Cons!37157 l!636)) (bvsle (_1!13056 (h!38701 l!636)) key!185)) (is-Cons!37157 l!636) (bvslt (_1!13056 (h!38701 l!636)) key!185)))))

(declare-fun b!1586239 () Bool)

(declare-fun ListPrimitiveSize!234 (List!37161) Int)

(assert (=> b!1586239 (= e!885834 (>= (ListPrimitiveSize!234 (t!52100 l!636)) (ListPrimitiveSize!234 l!636)))))

(declare-fun b!1586240 () Bool)

(declare-fun tp_is_empty!39569 () Bool)

(declare-fun tp!115408 () Bool)

(assert (=> b!1586240 (= e!885833 (and tp_is_empty!39569 tp!115408))))

(assert (= (and start!138464 res!1083394) b!1586238))

(assert (= (and b!1586238 res!1083395) b!1586239))

(assert (= (and start!138464 (is-Cons!37157 l!636)) b!1586240))

(declare-fun m!1454709 () Bool)

(assert (=> start!138464 m!1454709))

(declare-fun m!1454711 () Bool)

(assert (=> b!1586239 m!1454711))

(declare-fun m!1454713 () Bool)

(assert (=> b!1586239 m!1454713))

(push 1)

(assert (not start!138464))

(assert (not b!1586239))

(assert (not b!1586240))

(assert tp_is_empty!39569)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167897 () Bool)

(declare-fun res!1083412 () Bool)

(declare-fun e!885865 () Bool)

(assert (=> d!167897 (=> res!1083412 e!885865)))

(assert (=> d!167897 (= res!1083412 (or (is-Nil!37158 l!636) (is-Nil!37158 (t!52100 l!636))))))

(assert (=> d!167897 (= (isStrictlySorted!1220 l!636) e!885865)))

(declare-fun b!1586283 () Bool)

(declare-fun e!885866 () Bool)

(assert (=> b!1586283 (= e!885865 e!885866)))

(declare-fun res!1083413 () Bool)

(assert (=> b!1586283 (=> (not res!1083413) (not e!885866))))

(assert (=> b!1586283 (= res!1083413 (bvslt (_1!13056 (h!38701 l!636)) (_1!13056 (h!38701 (t!52100 l!636)))))))

(declare-fun b!1586284 () Bool)

(assert (=> b!1586284 (= e!885866 (isStrictlySorted!1220 (t!52100 l!636)))))

(assert (= (and d!167897 (not res!1083412)) b!1586283))

(assert (= (and b!1586283 res!1083413) b!1586284))

(declare-fun m!1454723 () Bool)

(assert (=> b!1586284 m!1454723))

(assert (=> start!138464 d!167897))

(declare-fun d!167901 () Bool)

(declare-fun lt!677448 () Int)

(assert (=> d!167901 (>= lt!677448 0)))

(declare-fun e!885869 () Int)

(assert (=> d!167901 (= lt!677448 e!885869)))

(declare-fun c!147002 () Bool)

(assert (=> d!167901 (= c!147002 (is-Nil!37158 (t!52100 l!636)))))

