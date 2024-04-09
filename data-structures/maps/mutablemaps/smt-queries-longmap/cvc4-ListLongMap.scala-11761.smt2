; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138062 () Bool)

(assert start!138062)

(declare-fun res!1082055 () Bool)

(declare-fun e!884264 () Bool)

(assert (=> start!138062 (=> (not res!1082055) (not e!884264))))

(declare-datatypes ((B!2910 0))(
  ( (B!2911 (val!19817 Int)) )
))
(declare-datatypes ((tuple2!25966 0))(
  ( (tuple2!25967 (_1!12993 (_ BitVec 64)) (_2!12993 B!2910)) )
))
(declare-datatypes ((List!37098 0))(
  ( (Nil!37095) (Cons!37094 (h!38638 tuple2!25966) (t!52019 List!37098)) )
))
(declare-fun l!1251 () List!37098)

(declare-fun isStrictlySorted!1160 (List!37098) Bool)

(assert (=> start!138062 (= res!1082055 (isStrictlySorted!1160 l!1251))))

(assert (=> start!138062 e!884264))

(declare-fun e!884265 () Bool)

(assert (=> start!138062 e!884265))

(assert (=> start!138062 true))

(declare-fun b!1584052 () Bool)

(declare-fun ListPrimitiveSize!219 (List!37098) Int)

(assert (=> b!1584052 (= e!884264 (< (ListPrimitiveSize!219 l!1251) 0))))

(declare-fun b!1584050 () Bool)

(declare-fun res!1082056 () Bool)

(assert (=> b!1584050 (=> (not res!1082056) (not e!884264))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!994 (List!37098 (_ BitVec 64)) Bool)

(assert (=> b!1584050 (= res!1082056 (not (containsKey!994 l!1251 otherKey!56)))))

(declare-fun b!1584053 () Bool)

(declare-fun tp_is_empty!39443 () Bool)

(declare-fun tp!115075 () Bool)

(assert (=> b!1584053 (= e!884265 (and tp_is_empty!39443 tp!115075))))

(declare-fun b!1584051 () Bool)

(declare-fun res!1082057 () Bool)

(assert (=> b!1584051 (=> (not res!1082057) (not e!884264))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584051 (= res!1082057 (not (= otherKey!56 newKey!123)))))

(assert (= (and start!138062 res!1082055) b!1584050))

(assert (= (and b!1584050 res!1082056) b!1584051))

(assert (= (and b!1584051 res!1082057) b!1584052))

(assert (= (and start!138062 (is-Cons!37094 l!1251)) b!1584053))

(declare-fun m!1453559 () Bool)

(assert (=> start!138062 m!1453559))

(declare-fun m!1453561 () Bool)

(assert (=> b!1584052 m!1453561))

(declare-fun m!1453563 () Bool)

(assert (=> b!1584050 m!1453563))

(push 1)

(assert (not start!138062))

(assert tp_is_empty!39443)

(assert (not b!1584052))

(assert (not b!1584053))

(assert (not b!1584050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167305 () Bool)

(declare-fun lt!677161 () Int)

(assert (=> d!167305 (>= lt!677161 0)))

(declare-fun e!884272 () Int)

(assert (=> d!167305 (= lt!677161 e!884272)))

(declare-fun c!146778 () Bool)

(assert (=> d!167305 (= c!146778 (is-Nil!37095 l!1251))))

(assert (=> d!167305 (= (ListPrimitiveSize!219 l!1251) lt!677161)))

(declare-fun b!1584062 () Bool)

(assert (=> b!1584062 (= e!884272 0)))

(declare-fun b!1584063 () Bool)

(assert (=> b!1584063 (= e!884272 (+ 1 (ListPrimitiveSize!219 (t!52019 l!1251))))))

(assert (= (and d!167305 c!146778) b!1584062))

(assert (= (and d!167305 (not c!146778)) b!1584063))

(declare-fun m!1453565 () Bool)

(assert (=> b!1584063 m!1453565))

(assert (=> b!1584052 d!167305))

(declare-fun d!167311 () Bool)

(declare-fun res!1082078 () Bool)

(declare-fun e!884289 () Bool)

(assert (=> d!167311 (=> res!1082078 e!884289)))

(assert (=> d!167311 (= res!1082078 (or (is-Nil!37095 l!1251) (is-Nil!37095 (t!52019 l!1251))))))

(assert (=> d!167311 (= (isStrictlySorted!1160 l!1251) e!884289)))

(declare-fun b!1584080 () Bool)

(declare-fun e!884290 () Bool)

(assert (=> b!1584080 (= e!884289 e!884290)))

(declare-fun res!1082079 () Bool)

(assert (=> b!1584080 (=> (not res!1082079) (not e!884290))))

(assert (=> b!1584080 (= res!1082079 (bvslt (_1!12993 (h!38638 l!1251)) (_1!12993 (h!38638 (t!52019 l!1251)))))))

(declare-fun b!1584081 () Bool)

(assert (=> b!1584081 (= e!884290 (isStrictlySorted!1160 (t!52019 l!1251)))))

(assert (= (and d!167311 (not res!1082078)) b!1584080))

(assert (= (and b!1584080 res!1082079) b!1584081))

(declare-fun m!1453571 () Bool)

(assert (=> b!1584081 m!1453571))

(assert (=> start!138062 d!167311))

(declare-fun d!167317 () Bool)

(declare-fun res!1082086 () Bool)

(declare-fun e!884302 () Bool)

(assert (=> d!167317 (=> res!1082086 e!884302)))

(assert (=> d!167317 (= res!1082086 (and (is-Cons!37094 l!1251) (= (_1!12993 (h!38638 l!1251)) otherKey!56)))))

(assert (=> d!167317 (= (containsKey!994 l!1251 otherKey!56) e!884302)))

(declare-fun b!1584098 () Bool)

(declare-fun e!884303 () Bool)

(assert (=> b!1584098 (= e!884302 e!884303)))

(declare-fun res!1082087 () Bool)

(assert (=> b!1584098 (=> (not res!1082087) (not e!884303))))

(assert (=> b!1584098 (= res!1082087 (and (or (not (is-Cons!37094 l!1251)) (bvsle (_1!12993 (h!38638 l!1251)) otherKey!56)) (is-Cons!37094 l!1251) (bvslt (_1!12993 (h!38638 l!1251)) otherKey!56)))))

(declare-fun b!1584099 () Bool)

(assert (=> b!1584099 (= e!884303 (containsKey!994 (t!52019 l!1251) otherKey!56))))

(assert (= (and d!167317 (not res!1082086)) b!1584098))

(assert (= (and b!1584098 res!1082087) b!1584099))

(declare-fun m!1453577 () Bool)

(assert (=> b!1584099 m!1453577))

(assert (=> b!1584050 d!167317))

(declare-fun b!1584114 () Bool)

(declare-fun e!884313 () Bool)

(declare-fun tp!115080 () Bool)

(assert (=> b!1584114 (= e!884313 (and tp_is_empty!39443 tp!115080))))

(assert (=> b!1584053 (= tp!115075 e!884313)))

(assert (= (and b!1584053 (is-Cons!37094 (t!52019 l!1251))) b!1584114))

(push 1)

