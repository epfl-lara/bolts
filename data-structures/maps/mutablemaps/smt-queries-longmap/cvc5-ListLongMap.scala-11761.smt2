; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138058 () Bool)

(assert start!138058)

(declare-fun b!1584027 () Bool)

(declare-fun res!1082039 () Bool)

(declare-fun e!884253 () Bool)

(assert (=> b!1584027 (=> (not res!1082039) (not e!884253))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584027 (= res!1082039 (not (= otherKey!56 newKey!123)))))

(declare-fun res!1082037 () Bool)

(assert (=> start!138058 (=> (not res!1082037) (not e!884253))))

(declare-datatypes ((B!2906 0))(
  ( (B!2907 (val!19815 Int)) )
))
(declare-datatypes ((tuple2!25962 0))(
  ( (tuple2!25963 (_1!12991 (_ BitVec 64)) (_2!12991 B!2906)) )
))
(declare-datatypes ((List!37096 0))(
  ( (Nil!37093) (Cons!37092 (h!38636 tuple2!25962) (t!52017 List!37096)) )
))
(declare-fun l!1251 () List!37096)

(declare-fun isStrictlySorted!1158 (List!37096) Bool)

(assert (=> start!138058 (= res!1082037 (isStrictlySorted!1158 l!1251))))

(assert (=> start!138058 e!884253))

(declare-fun e!884252 () Bool)

(assert (=> start!138058 e!884252))

(assert (=> start!138058 true))

(declare-fun b!1584026 () Bool)

(declare-fun res!1082038 () Bool)

(assert (=> b!1584026 (=> (not res!1082038) (not e!884253))))

(declare-fun containsKey!992 (List!37096 (_ BitVec 64)) Bool)

(assert (=> b!1584026 (= res!1082038 (not (containsKey!992 l!1251 otherKey!56)))))

(declare-fun b!1584029 () Bool)

(declare-fun tp_is_empty!39439 () Bool)

(declare-fun tp!115069 () Bool)

(assert (=> b!1584029 (= e!884252 (and tp_is_empty!39439 tp!115069))))

(declare-fun b!1584028 () Bool)

(declare-fun ListPrimitiveSize!217 (List!37096) Int)

(assert (=> b!1584028 (= e!884253 (< (ListPrimitiveSize!217 l!1251) 0))))

(assert (= (and start!138058 res!1082037) b!1584026))

(assert (= (and b!1584026 res!1082038) b!1584027))

(assert (= (and b!1584027 res!1082039) b!1584028))

(assert (= (and start!138058 (is-Cons!37092 l!1251)) b!1584029))

(declare-fun m!1453547 () Bool)

(assert (=> start!138058 m!1453547))

(declare-fun m!1453549 () Bool)

(assert (=> b!1584026 m!1453549))

(declare-fun m!1453551 () Bool)

(assert (=> b!1584028 m!1453551))

(push 1)

(assert (not start!138058))

(assert (not b!1584028))

(assert (not b!1584029))

(assert (not b!1584026))

(assert tp_is_empty!39439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167309 () Bool)

(declare-fun res!1082072 () Bool)

(declare-fun e!884283 () Bool)

(assert (=> d!167309 (=> res!1082072 e!884283)))

(assert (=> d!167309 (= res!1082072 (and (is-Cons!37092 l!1251) (= (_1!12991 (h!38636 l!1251)) otherKey!56)))))

(assert (=> d!167309 (= (containsKey!992 l!1251 otherKey!56) e!884283)))

(declare-fun b!1584074 () Bool)

(declare-fun e!884284 () Bool)

(assert (=> b!1584074 (= e!884283 e!884284)))

(declare-fun res!1082073 () Bool)

(assert (=> b!1584074 (=> (not res!1082073) (not e!884284))))

(assert (=> b!1584074 (= res!1082073 (and (or (not (is-Cons!37092 l!1251)) (bvsle (_1!12991 (h!38636 l!1251)) otherKey!56)) (is-Cons!37092 l!1251) (bvslt (_1!12991 (h!38636 l!1251)) otherKey!56)))))

(declare-fun b!1584075 () Bool)

(assert (=> b!1584075 (= e!884284 (containsKey!992 (t!52017 l!1251) otherKey!56))))

(assert (= (and d!167309 (not res!1082072)) b!1584074))

(assert (= (and b!1584074 res!1082073) b!1584075))

(declare-fun m!1453569 () Bool)

(assert (=> b!1584075 m!1453569))

(assert (=> b!1584026 d!167309))

(declare-fun d!167315 () Bool)

(declare-fun lt!677164 () Int)

(assert (=> d!167315 (>= lt!677164 0)))

(declare-fun e!884297 () Int)

(assert (=> d!167315 (= lt!677164 e!884297)))

(declare-fun c!146781 () Bool)

(assert (=> d!167315 (= c!146781 (is-Nil!37093 l!1251))))

(assert (=> d!167315 (= (ListPrimitiveSize!217 l!1251) lt!677164)))

(declare-fun b!1584088 () Bool)

(assert (=> b!1584088 (= e!884297 0)))

(declare-fun b!1584089 () Bool)

(assert (=> b!1584089 (= e!884297 (+ 1 (ListPrimitiveSize!217 (t!52017 l!1251))))))

(assert (= (and d!167315 c!146781) b!1584088))

(assert (= (and d!167315 (not c!146781)) b!1584089))

(declare-fun m!1453575 () Bool)

(assert (=> b!1584089 m!1453575))

(assert (=> b!1584028 d!167315))

(declare-fun d!167321 () Bool)

(declare-fun res!1082092 () Bool)

(declare-fun e!884315 () Bool)

(assert (=> d!167321 (=> res!1082092 e!884315)))

(assert (=> d!167321 (= res!1082092 (or (is-Nil!37093 l!1251) (is-Nil!37093 (t!52017 l!1251))))))

(assert (=> d!167321 (= (isStrictlySorted!1158 l!1251) e!884315)))

(declare-fun b!1584116 () Bool)

(declare-fun e!884316 () Bool)

(assert (=> b!1584116 (= e!884315 e!884316)))

(declare-fun res!1082093 () Bool)

(assert (=> b!1584116 (=> (not res!1082093) (not e!884316))))

(assert (=> b!1584116 (= res!1082093 (bvslt (_1!12991 (h!38636 l!1251)) (_1!12991 (h!38636 (t!52017 l!1251)))))))

(declare-fun b!1584117 () Bool)

(assert (=> b!1584117 (= e!884316 (isStrictlySorted!1158 (t!52017 l!1251)))))

(assert (= (and d!167321 (not res!1082092)) b!1584116))

(assert (= (and b!1584116 res!1082093) b!1584117))

(declare-fun m!1453581 () Bool)

(assert (=> b!1584117 m!1453581))

(assert (=> start!138058 d!167321))

(declare-fun b!1584122 () Bool)

(declare-fun e!884319 () Bool)

(declare-fun tp!115084 () Bool)

(assert (=> b!1584122 (= e!884319 (and tp_is_empty!39439 tp!115084))))

(assert (=> b!1584029 (= tp!115069 e!884319)))

(assert (= (and b!1584029 (is-Cons!37092 (t!52017 l!1251))) b!1584122))

(push 1)

