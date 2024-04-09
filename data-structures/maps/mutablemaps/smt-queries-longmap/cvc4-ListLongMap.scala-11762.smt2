; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138086 () Bool)

(assert start!138086)

(declare-fun b!1584163 () Bool)

(declare-fun e!884346 () Bool)

(declare-fun e!884344 () Bool)

(assert (=> b!1584163 (= e!884346 e!884344)))

(declare-fun res!1082128 () Bool)

(assert (=> b!1584163 (=> res!1082128 e!884344)))

(declare-datatypes ((B!2916 0))(
  ( (B!2917 (val!19820 Int)) )
))
(declare-datatypes ((tuple2!25972 0))(
  ( (tuple2!25973 (_1!12996 (_ BitVec 64)) (_2!12996 B!2916)) )
))
(declare-datatypes ((List!37101 0))(
  ( (Nil!37098) (Cons!37097 (h!38641 tuple2!25972) (t!52022 List!37101)) )
))
(declare-fun l!1251 () List!37101)

(declare-fun isStrictlySorted!1163 (List!37101) Bool)

(assert (=> b!1584163 (= res!1082128 (not (isStrictlySorted!1163 (t!52022 l!1251))))))

(declare-fun b!1584164 () Bool)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!997 (List!37101 (_ BitVec 64)) Bool)

(assert (=> b!1584164 (= e!884344 (containsKey!997 (t!52022 l!1251) otherKey!56))))

(declare-fun b!1584165 () Bool)

(declare-fun res!1082126 () Bool)

(assert (=> b!1584165 (=> (not res!1082126) (not e!884346))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584165 (= res!1082126 (and (not (= otherKey!56 newKey!123)) (is-Cons!37097 l!1251)))))

(declare-fun res!1082127 () Bool)

(assert (=> start!138086 (=> (not res!1082127) (not e!884346))))

(assert (=> start!138086 (= res!1082127 (isStrictlySorted!1163 l!1251))))

(assert (=> start!138086 e!884346))

(declare-fun e!884345 () Bool)

(assert (=> start!138086 e!884345))

(assert (=> start!138086 true))

(declare-fun b!1584166 () Bool)

(declare-fun res!1082129 () Bool)

(assert (=> b!1584166 (=> (not res!1082129) (not e!884346))))

(assert (=> b!1584166 (= res!1082129 (not (containsKey!997 l!1251 otherKey!56)))))

(declare-fun b!1584167 () Bool)

(declare-fun tp_is_empty!39449 () Bool)

(declare-fun tp!115093 () Bool)

(assert (=> b!1584167 (= e!884345 (and tp_is_empty!39449 tp!115093))))

(assert (= (and start!138086 res!1082127) b!1584166))

(assert (= (and b!1584166 res!1082129) b!1584165))

(assert (= (and b!1584165 res!1082126) b!1584163))

(assert (= (and b!1584163 (not res!1082128)) b!1584164))

(assert (= (and start!138086 (is-Cons!37097 l!1251)) b!1584167))

(declare-fun m!1453599 () Bool)

(assert (=> b!1584163 m!1453599))

(declare-fun m!1453601 () Bool)

(assert (=> b!1584164 m!1453601))

(declare-fun m!1453603 () Bool)

(assert (=> start!138086 m!1453603))

(declare-fun m!1453605 () Bool)

(assert (=> b!1584166 m!1453605))

(push 1)

(assert (not b!1584164))

(assert (not b!1584163))

(assert (not b!1584167))

(assert tp_is_empty!39449)

(assert (not b!1584166))

(assert (not start!138086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167327 () Bool)

(declare-fun res!1082144 () Bool)

(declare-fun e!884361 () Bool)

(assert (=> d!167327 (=> res!1082144 e!884361)))

(assert (=> d!167327 (= res!1082144 (and (is-Cons!37097 l!1251) (= (_1!12996 (h!38641 l!1251)) otherKey!56)))))

(assert (=> d!167327 (= (containsKey!997 l!1251 otherKey!56) e!884361)))

(declare-fun b!1584182 () Bool)

(declare-fun e!884362 () Bool)

(assert (=> b!1584182 (= e!884361 e!884362)))

(declare-fun res!1082145 () Bool)

(assert (=> b!1584182 (=> (not res!1082145) (not e!884362))))

(assert (=> b!1584182 (= res!1082145 (and (or (not (is-Cons!37097 l!1251)) (bvsle (_1!12996 (h!38641 l!1251)) otherKey!56)) (is-Cons!37097 l!1251) (bvslt (_1!12996 (h!38641 l!1251)) otherKey!56)))))

(declare-fun b!1584183 () Bool)

(assert (=> b!1584183 (= e!884362 (containsKey!997 (t!52022 l!1251) otherKey!56))))

(assert (= (and d!167327 (not res!1082144)) b!1584182))

(assert (= (and b!1584182 res!1082145) b!1584183))

(assert (=> b!1584183 m!1453601))

(assert (=> b!1584166 d!167327))

(declare-fun d!167333 () Bool)

(declare-fun res!1082162 () Bool)

(declare-fun e!884379 () Bool)

(assert (=> d!167333 (=> res!1082162 e!884379)))

(assert (=> d!167333 (= res!1082162 (or (is-Nil!37098 (t!52022 l!1251)) (is-Nil!37098 (t!52022 (t!52022 l!1251)))))))

(assert (=> d!167333 (= (isStrictlySorted!1163 (t!52022 l!1251)) e!884379)))

(declare-fun b!1584200 () Bool)

(declare-fun e!884380 () Bool)

(assert (=> b!1584200 (= e!884379 e!884380)))

(declare-fun res!1082163 () Bool)

(assert (=> b!1584200 (=> (not res!1082163) (not e!884380))))

(assert (=> b!1584200 (= res!1082163 (bvslt (_1!12996 (h!38641 (t!52022 l!1251))) (_1!12996 (h!38641 (t!52022 (t!52022 l!1251))))))))

(declare-fun b!1584201 () Bool)

(assert (=> b!1584201 (= e!884380 (isStrictlySorted!1163 (t!52022 (t!52022 l!1251))))))

(assert (= (and d!167333 (not res!1082162)) b!1584200))

(assert (= (and b!1584200 res!1082163) b!1584201))

(declare-fun m!1453609 () Bool)

(assert (=> b!1584201 m!1453609))

(assert (=> b!1584163 d!167333))

(declare-fun d!167337 () Bool)

(declare-fun res!1082164 () Bool)

(declare-fun e!884381 () Bool)

(assert (=> d!167337 (=> res!1082164 e!884381)))

(assert (=> d!167337 (= res!1082164 (or (is-Nil!37098 l!1251) (is-Nil!37098 (t!52022 l!1251))))))

(assert (=> d!167337 (= (isStrictlySorted!1163 l!1251) e!884381)))

(declare-fun b!1584202 () Bool)

(declare-fun e!884382 () Bool)

(assert (=> b!1584202 (= e!884381 e!884382)))

(declare-fun res!1082165 () Bool)

(assert (=> b!1584202 (=> (not res!1082165) (not e!884382))))

(assert (=> b!1584202 (= res!1082165 (bvslt (_1!12996 (h!38641 l!1251)) (_1!12996 (h!38641 (t!52022 l!1251)))))))

(declare-fun b!1584203 () Bool)

(assert (=> b!1584203 (= e!884382 (isStrictlySorted!1163 (t!52022 l!1251)))))

(assert (= (and d!167337 (not res!1082164)) b!1584202))

(assert (= (and b!1584202 res!1082165) b!1584203))

(assert (=> b!1584203 m!1453599))

(assert (=> start!138086 d!167337))

(declare-fun d!167341 () Bool)

(declare-fun res!1082168 () Bool)

(declare-fun e!884385 () Bool)

(assert (=> d!167341 (=> res!1082168 e!884385)))

(assert (=> d!167341 (= res!1082168 (and (is-Cons!37097 (t!52022 l!1251)) (= (_1!12996 (h!38641 (t!52022 l!1251))) otherKey!56)))))

(assert (=> d!167341 (= (containsKey!997 (t!52022 l!1251) otherKey!56) e!884385)))

(declare-fun b!1584206 () Bool)

(declare-fun e!884386 () Bool)

(assert (=> b!1584206 (= e!884385 e!884386)))

(declare-fun res!1082169 () Bool)

(assert (=> b!1584206 (=> (not res!1082169) (not e!884386))))

(assert (=> b!1584206 (= res!1082169 (and (or (not (is-Cons!37097 (t!52022 l!1251))) (bvsle (_1!12996 (h!38641 (t!52022 l!1251))) otherKey!56)) (is-Cons!37097 (t!52022 l!1251)) (bvslt (_1!12996 (h!38641 (t!52022 l!1251))) otherKey!56)))))

(declare-fun b!1584207 () Bool)

(assert (=> b!1584207 (= e!884386 (containsKey!997 (t!52022 (t!52022 l!1251)) otherKey!56))))

(assert (= (and d!167341 (not res!1082168)) b!1584206))

(assert (= (and b!1584206 res!1082169) b!1584207))

(declare-fun m!1453613 () Bool)

(assert (=> b!1584207 m!1453613))

(assert (=> b!1584164 d!167341))

(declare-fun b!1584224 () Bool)

(declare-fun e!884399 () Bool)

(declare-fun tp!115098 () Bool)

(assert (=> b!1584224 (= e!884399 (and tp_is_empty!39449 tp!115098))))

(assert (=> b!1584167 (= tp!115093 e!884399)))

(assert (= (and b!1584167 (is-Cons!37097 (t!52022 l!1251))) b!1584224))

(push 1)

(assert (not b!1584207))

(assert (not b!1584201))

(assert (not b!1584224))

(assert (not b!1584203))

(assert (not b!1584183))

(assert tp_is_empty!39449)

(check-sat)

(pop 1)

(push 1)

(check-sat)

