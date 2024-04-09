; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138084 () Bool)

(assert start!138084)

(declare-fun b!1584148 () Bool)

(declare-fun e!884335 () Bool)

(declare-datatypes ((B!2914 0))(
  ( (B!2915 (val!19819 Int)) )
))
(declare-datatypes ((tuple2!25970 0))(
  ( (tuple2!25971 (_1!12995 (_ BitVec 64)) (_2!12995 B!2914)) )
))
(declare-datatypes ((List!37100 0))(
  ( (Nil!37097) (Cons!37096 (h!38640 tuple2!25970) (t!52021 List!37100)) )
))
(declare-fun l!1251 () List!37100)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!996 (List!37100 (_ BitVec 64)) Bool)

(assert (=> b!1584148 (= e!884335 (containsKey!996 (t!52021 l!1251) otherKey!56))))

(declare-fun b!1584149 () Bool)

(declare-fun res!1082114 () Bool)

(declare-fun e!884337 () Bool)

(assert (=> b!1584149 (=> (not res!1082114) (not e!884337))))

(declare-fun newKey!123 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1584149 (= res!1082114 (and (not (= otherKey!56 newKey!123)) ((_ is Cons!37096) l!1251)))))

(declare-fun b!1584150 () Bool)

(declare-fun res!1082115 () Bool)

(assert (=> b!1584150 (=> (not res!1082115) (not e!884337))))

(assert (=> b!1584150 (= res!1082115 (not (containsKey!996 l!1251 otherKey!56)))))

(declare-fun res!1082117 () Bool)

(assert (=> start!138084 (=> (not res!1082117) (not e!884337))))

(declare-fun isStrictlySorted!1162 (List!37100) Bool)

(assert (=> start!138084 (= res!1082117 (isStrictlySorted!1162 l!1251))))

(assert (=> start!138084 e!884337))

(declare-fun e!884336 () Bool)

(assert (=> start!138084 e!884336))

(assert (=> start!138084 true))

(declare-fun b!1584151 () Bool)

(assert (=> b!1584151 (= e!884337 e!884335)))

(declare-fun res!1082116 () Bool)

(assert (=> b!1584151 (=> res!1082116 e!884335)))

(assert (=> b!1584151 (= res!1082116 (not (isStrictlySorted!1162 (t!52021 l!1251))))))

(declare-fun b!1584152 () Bool)

(declare-fun tp_is_empty!39447 () Bool)

(declare-fun tp!115090 () Bool)

(assert (=> b!1584152 (= e!884336 (and tp_is_empty!39447 tp!115090))))

(assert (= (and start!138084 res!1082117) b!1584150))

(assert (= (and b!1584150 res!1082115) b!1584149))

(assert (= (and b!1584149 res!1082114) b!1584151))

(assert (= (and b!1584151 (not res!1082116)) b!1584148))

(assert (= (and start!138084 ((_ is Cons!37096) l!1251)) b!1584152))

(declare-fun m!1453591 () Bool)

(assert (=> b!1584148 m!1453591))

(declare-fun m!1453593 () Bool)

(assert (=> b!1584150 m!1453593))

(declare-fun m!1453595 () Bool)

(assert (=> start!138084 m!1453595))

(declare-fun m!1453597 () Bool)

(assert (=> b!1584151 m!1453597))

(check-sat (not b!1584152) tp_is_empty!39447 (not b!1584150) (not start!138084) (not b!1584151) (not b!1584148))
(check-sat)
(get-model)

(declare-fun d!167326 () Bool)

(declare-fun res!1082140 () Bool)

(declare-fun e!884357 () Bool)

(assert (=> d!167326 (=> res!1082140 e!884357)))

(assert (=> d!167326 (= res!1082140 (or ((_ is Nil!37097) l!1251) ((_ is Nil!37097) (t!52021 l!1251))))))

(assert (=> d!167326 (= (isStrictlySorted!1162 l!1251) e!884357)))

(declare-fun b!1584176 () Bool)

(declare-fun e!884358 () Bool)

(assert (=> b!1584176 (= e!884357 e!884358)))

(declare-fun res!1082141 () Bool)

(assert (=> b!1584176 (=> (not res!1082141) (not e!884358))))

(assert (=> b!1584176 (= res!1082141 (bvslt (_1!12995 (h!38640 l!1251)) (_1!12995 (h!38640 (t!52021 l!1251)))))))

(declare-fun b!1584177 () Bool)

(assert (=> b!1584177 (= e!884358 (isStrictlySorted!1162 (t!52021 l!1251)))))

(assert (= (and d!167326 (not res!1082140)) b!1584176))

(assert (= (and b!1584176 res!1082141) b!1584177))

(assert (=> b!1584177 m!1453597))

(assert (=> start!138084 d!167326))

(declare-fun d!167331 () Bool)

(declare-fun res!1082160 () Bool)

(declare-fun e!884377 () Bool)

(assert (=> d!167331 (=> res!1082160 e!884377)))

(assert (=> d!167331 (= res!1082160 (and ((_ is Cons!37096) (t!52021 l!1251)) (= (_1!12995 (h!38640 (t!52021 l!1251))) otherKey!56)))))

(assert (=> d!167331 (= (containsKey!996 (t!52021 l!1251) otherKey!56) e!884377)))

(declare-fun b!1584198 () Bool)

(declare-fun e!884378 () Bool)

(assert (=> b!1584198 (= e!884377 e!884378)))

(declare-fun res!1082161 () Bool)

(assert (=> b!1584198 (=> (not res!1082161) (not e!884378))))

(assert (=> b!1584198 (= res!1082161 (and (or (not ((_ is Cons!37096) (t!52021 l!1251))) (bvsle (_1!12995 (h!38640 (t!52021 l!1251))) otherKey!56)) ((_ is Cons!37096) (t!52021 l!1251)) (bvslt (_1!12995 (h!38640 (t!52021 l!1251))) otherKey!56)))))

(declare-fun b!1584199 () Bool)

(assert (=> b!1584199 (= e!884378 (containsKey!996 (t!52021 (t!52021 l!1251)) otherKey!56))))

(assert (= (and d!167331 (not res!1082160)) b!1584198))

(assert (= (and b!1584198 res!1082161) b!1584199))

(declare-fun m!1453611 () Bool)

(assert (=> b!1584199 m!1453611))

(assert (=> b!1584148 d!167331))

(declare-fun d!167339 () Bool)

(declare-fun res!1082166 () Bool)

(declare-fun e!884383 () Bool)

(assert (=> d!167339 (=> res!1082166 e!884383)))

(assert (=> d!167339 (= res!1082166 (and ((_ is Cons!37096) l!1251) (= (_1!12995 (h!38640 l!1251)) otherKey!56)))))

(assert (=> d!167339 (= (containsKey!996 l!1251 otherKey!56) e!884383)))

(declare-fun b!1584204 () Bool)

(declare-fun e!884384 () Bool)

(assert (=> b!1584204 (= e!884383 e!884384)))

(declare-fun res!1082167 () Bool)

(assert (=> b!1584204 (=> (not res!1082167) (not e!884384))))

(assert (=> b!1584204 (= res!1082167 (and (or (not ((_ is Cons!37096) l!1251)) (bvsle (_1!12995 (h!38640 l!1251)) otherKey!56)) ((_ is Cons!37096) l!1251) (bvslt (_1!12995 (h!38640 l!1251)) otherKey!56)))))

(declare-fun b!1584205 () Bool)

(assert (=> b!1584205 (= e!884384 (containsKey!996 (t!52021 l!1251) otherKey!56))))

(assert (= (and d!167339 (not res!1082166)) b!1584204))

(assert (= (and b!1584204 res!1082167) b!1584205))

(assert (=> b!1584205 m!1453591))

(assert (=> b!1584150 d!167339))

(declare-fun d!167343 () Bool)

(declare-fun res!1082170 () Bool)

(declare-fun e!884387 () Bool)

(assert (=> d!167343 (=> res!1082170 e!884387)))

(assert (=> d!167343 (= res!1082170 (or ((_ is Nil!37097) (t!52021 l!1251)) ((_ is Nil!37097) (t!52021 (t!52021 l!1251)))))))

(assert (=> d!167343 (= (isStrictlySorted!1162 (t!52021 l!1251)) e!884387)))

(declare-fun b!1584208 () Bool)

(declare-fun e!884388 () Bool)

(assert (=> b!1584208 (= e!884387 e!884388)))

(declare-fun res!1082171 () Bool)

(assert (=> b!1584208 (=> (not res!1082171) (not e!884388))))

(assert (=> b!1584208 (= res!1082171 (bvslt (_1!12995 (h!38640 (t!52021 l!1251))) (_1!12995 (h!38640 (t!52021 (t!52021 l!1251))))))))

(declare-fun b!1584209 () Bool)

(assert (=> b!1584209 (= e!884388 (isStrictlySorted!1162 (t!52021 (t!52021 l!1251))))))

(assert (= (and d!167343 (not res!1082170)) b!1584208))

(assert (= (and b!1584208 res!1082171) b!1584209))

(declare-fun m!1453615 () Bool)

(assert (=> b!1584209 m!1453615))

(assert (=> b!1584151 d!167343))

(declare-fun b!1584225 () Bool)

(declare-fun e!884400 () Bool)

(declare-fun tp!115099 () Bool)

(assert (=> b!1584225 (= e!884400 (and tp_is_empty!39447 tp!115099))))

(assert (=> b!1584152 (= tp!115090 e!884400)))

(assert (= (and b!1584152 ((_ is Cons!37096) (t!52021 l!1251))) b!1584225))

(check-sat (not b!1584199) tp_is_empty!39447 (not b!1584177) (not b!1584225) (not b!1584209) (not b!1584205))
(check-sat)
