; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138082 () Bool)

(assert start!138082)

(declare-fun b!1584133 () Bool)

(declare-fun e!884326 () Bool)

(declare-datatypes ((B!2912 0))(
  ( (B!2913 (val!19818 Int)) )
))
(declare-datatypes ((tuple2!25968 0))(
  ( (tuple2!25969 (_1!12994 (_ BitVec 64)) (_2!12994 B!2912)) )
))
(declare-datatypes ((List!37099 0))(
  ( (Nil!37096) (Cons!37095 (h!38639 tuple2!25968) (t!52020 List!37099)) )
))
(declare-fun l!1251 () List!37099)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!995 (List!37099 (_ BitVec 64)) Bool)

(assert (=> b!1584133 (= e!884326 (containsKey!995 (t!52020 l!1251) otherKey!56))))

(declare-fun res!1082103 () Bool)

(declare-fun e!884328 () Bool)

(assert (=> start!138082 (=> (not res!1082103) (not e!884328))))

(declare-fun isStrictlySorted!1161 (List!37099) Bool)

(assert (=> start!138082 (= res!1082103 (isStrictlySorted!1161 l!1251))))

(assert (=> start!138082 e!884328))

(declare-fun e!884327 () Bool)

(assert (=> start!138082 e!884327))

(assert (=> start!138082 true))

(declare-fun b!1584134 () Bool)

(declare-fun res!1082105 () Bool)

(assert (=> b!1584134 (=> (not res!1082105) (not e!884328))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584134 (= res!1082105 (and (not (= otherKey!56 newKey!123)) (is-Cons!37095 l!1251)))))

(declare-fun b!1584135 () Bool)

(declare-fun tp_is_empty!39445 () Bool)

(declare-fun tp!115087 () Bool)

(assert (=> b!1584135 (= e!884327 (and tp_is_empty!39445 tp!115087))))

(declare-fun b!1584136 () Bool)

(declare-fun res!1082102 () Bool)

(assert (=> b!1584136 (=> (not res!1082102) (not e!884328))))

(assert (=> b!1584136 (= res!1082102 (not (containsKey!995 l!1251 otherKey!56)))))

(declare-fun b!1584137 () Bool)

(assert (=> b!1584137 (= e!884328 e!884326)))

(declare-fun res!1082104 () Bool)

(assert (=> b!1584137 (=> res!1082104 e!884326)))

(assert (=> b!1584137 (= res!1082104 (not (isStrictlySorted!1161 (t!52020 l!1251))))))

(assert (= (and start!138082 res!1082103) b!1584136))

(assert (= (and b!1584136 res!1082102) b!1584134))

(assert (= (and b!1584134 res!1082105) b!1584137))

(assert (= (and b!1584137 (not res!1082104)) b!1584133))

(assert (= (and start!138082 (is-Cons!37095 l!1251)) b!1584135))

(declare-fun m!1453583 () Bool)

(assert (=> b!1584133 m!1453583))

(declare-fun m!1453585 () Bool)

(assert (=> start!138082 m!1453585))

(declare-fun m!1453587 () Bool)

(assert (=> b!1584136 m!1453587))

(declare-fun m!1453589 () Bool)

(assert (=> b!1584137 m!1453589))

(push 1)

(assert (not b!1584137))

(assert (not start!138082))

(assert (not b!1584133))

(assert (not b!1584136))

(assert tp_is_empty!39445)

(assert (not b!1584135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167329 () Bool)

(declare-fun res!1082146 () Bool)

(declare-fun e!884363 () Bool)

(assert (=> d!167329 (=> res!1082146 e!884363)))

(assert (=> d!167329 (= res!1082146 (and (is-Cons!37095 (t!52020 l!1251)) (= (_1!12994 (h!38639 (t!52020 l!1251))) otherKey!56)))))

(assert (=> d!167329 (= (containsKey!995 (t!52020 l!1251) otherKey!56) e!884363)))

(declare-fun b!1584184 () Bool)

(declare-fun e!884364 () Bool)

(assert (=> b!1584184 (= e!884363 e!884364)))

(declare-fun res!1082147 () Bool)

(assert (=> b!1584184 (=> (not res!1082147) (not e!884364))))

(assert (=> b!1584184 (= res!1082147 (and (or (not (is-Cons!37095 (t!52020 l!1251))) (bvsle (_1!12994 (h!38639 (t!52020 l!1251))) otherKey!56)) (is-Cons!37095 (t!52020 l!1251)) (bvslt (_1!12994 (h!38639 (t!52020 l!1251))) otherKey!56)))))

(declare-fun b!1584185 () Bool)

(assert (=> b!1584185 (= e!884364 (containsKey!995 (t!52020 (t!52020 l!1251)) otherKey!56))))

(assert (= (and d!167329 (not res!1082146)) b!1584184))

(assert (= (and b!1584184 res!1082147) b!1584185))

(declare-fun m!1453607 () Bool)

(assert (=> b!1584185 m!1453607))

(assert (=> b!1584133 d!167329))

(declare-fun d!167335 () Bool)

(declare-fun res!1082172 () Bool)

(declare-fun e!884389 () Bool)

(assert (=> d!167335 (=> res!1082172 e!884389)))

(assert (=> d!167335 (= res!1082172 (or (is-Nil!37096 l!1251) (is-Nil!37096 (t!52020 l!1251))))))

(assert (=> d!167335 (= (isStrictlySorted!1161 l!1251) e!884389)))

(declare-fun b!1584210 () Bool)

(declare-fun e!884390 () Bool)

(assert (=> b!1584210 (= e!884389 e!884390)))

(declare-fun res!1082173 () Bool)

(assert (=> b!1584210 (=> (not res!1082173) (not e!884390))))

(assert (=> b!1584210 (= res!1082173 (bvslt (_1!12994 (h!38639 l!1251)) (_1!12994 (h!38639 (t!52020 l!1251)))))))

(declare-fun b!1584211 () Bool)

(assert (=> b!1584211 (= e!884390 (isStrictlySorted!1161 (t!52020 l!1251)))))

(assert (= (and d!167335 (not res!1082172)) b!1584210))

(assert (= (and b!1584210 res!1082173) b!1584211))

(assert (=> b!1584211 m!1453589))

(assert (=> start!138082 d!167335))

(declare-fun d!167345 () Bool)

(declare-fun res!1082174 () Bool)

(declare-fun e!884391 () Bool)

(assert (=> d!167345 (=> res!1082174 e!884391)))

(assert (=> d!167345 (= res!1082174 (and (is-Cons!37095 l!1251) (= (_1!12994 (h!38639 l!1251)) otherKey!56)))))

(assert (=> d!167345 (= (containsKey!995 l!1251 otherKey!56) e!884391)))

(declare-fun b!1584216 () Bool)

(declare-fun e!884392 () Bool)

(assert (=> b!1584216 (= e!884391 e!884392)))

(declare-fun res!1082175 () Bool)

(assert (=> b!1584216 (=> (not res!1082175) (not e!884392))))

(assert (=> b!1584216 (= res!1082175 (and (or (not (is-Cons!37095 l!1251)) (bvsle (_1!12994 (h!38639 l!1251)) otherKey!56)) (is-Cons!37095 l!1251) (bvslt (_1!12994 (h!38639 l!1251)) otherKey!56)))))

(declare-fun b!1584217 () Bool)

(assert (=> b!1584217 (= e!884392 (containsKey!995 (t!52020 l!1251) otherKey!56))))

(assert (= (and d!167345 (not res!1082174)) b!1584216))

(assert (= (and b!1584216 res!1082175) b!1584217))

(assert (=> b!1584217 m!1453583))

(assert (=> b!1584136 d!167345))

(declare-fun d!167347 () Bool)

(declare-fun res!1082176 () Bool)

(declare-fun e!884397 () Bool)

(assert (=> d!167347 (=> res!1082176 e!884397)))

(assert (=> d!167347 (= res!1082176 (or (is-Nil!37096 (t!52020 l!1251)) (is-Nil!37096 (t!52020 (t!52020 l!1251)))))))

(assert (=> d!167347 (= (isStrictlySorted!1161 (t!52020 l!1251)) e!884397)))

(declare-fun b!1584222 () Bool)

(declare-fun e!884398 () Bool)

(assert (=> b!1584222 (= e!884397 e!884398)))

(declare-fun res!1082177 () Bool)

(assert (=> b!1584222 (=> (not res!1082177) (not e!884398))))

(assert (=> b!1584222 (= res!1082177 (bvslt (_1!12994 (h!38639 (t!52020 l!1251))) (_1!12994 (h!38639 (t!52020 (t!52020 l!1251))))))))

(declare-fun b!1584223 () Bool)

(assert (=> b!1584223 (= e!884398 (isStrictlySorted!1161 (t!52020 (t!52020 l!1251))))))

(assert (= (and d!167347 (not res!1082176)) b!1584222))

(assert (= (and b!1584222 res!1082177) b!1584223))

(declare-fun m!1453617 () Bool)

(assert (=> b!1584223 m!1453617))

(assert (=> b!1584137 d!167347))

(declare-fun b!1584230 () Bool)

(declare-fun e!884403 () Bool)

(declare-fun tp!115102 () Bool)

(assert (=> b!1584230 (= e!884403 (and tp_is_empty!39445 tp!115102))))

(assert (=> b!1584135 (= tp!115087 e!884403)))

(assert (= (and b!1584135 (is-Cons!37095 (t!52020 l!1251))) b!1584230))

(push 1)

(assert (not b!1584185))

(assert (not b!1584230))

(assert (not b!1584223))

(assert (not b!1584217))

(assert (not b!1584211))

(assert tp_is_empty!39445)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

