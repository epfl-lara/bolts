; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138104 () Bool)

(assert start!138104)

(declare-fun b!1584279 () Bool)

(declare-fun e!884421 () Bool)

(declare-fun tp_is_empty!39455 () Bool)

(declare-fun tp!115111 () Bool)

(assert (=> b!1584279 (= e!884421 (and tp_is_empty!39455 tp!115111))))

(declare-fun res!1082219 () Bool)

(declare-fun e!884420 () Bool)

(assert (=> start!138104 (=> (not res!1082219) (not e!884420))))

(declare-datatypes ((B!2922 0))(
  ( (B!2923 (val!19823 Int)) )
))
(declare-datatypes ((tuple2!25978 0))(
  ( (tuple2!25979 (_1!12999 (_ BitVec 64)) (_2!12999 B!2922)) )
))
(declare-datatypes ((List!37104 0))(
  ( (Nil!37101) (Cons!37100 (h!38644 tuple2!25978) (t!52025 List!37104)) )
))
(declare-fun l!1251 () List!37104)

(declare-fun isStrictlySorted!1166 (List!37104) Bool)

(assert (=> start!138104 (= res!1082219 (isStrictlySorted!1166 l!1251))))

(assert (=> start!138104 e!884420))

(assert (=> start!138104 e!884421))

(assert (=> start!138104 true))

(declare-fun b!1584280 () Bool)

(declare-fun ListPrimitiveSize!222 (List!37104) Int)

(assert (=> b!1584280 (= e!884420 (>= (ListPrimitiveSize!222 (t!52025 l!1251)) (ListPrimitiveSize!222 l!1251)))))

(declare-fun b!1584281 () Bool)

(declare-fun res!1082222 () Bool)

(assert (=> b!1584281 (=> (not res!1082222) (not e!884420))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(assert (=> b!1584281 (= res!1082222 (and (not (= otherKey!56 newKey!123)) (is-Cons!37100 l!1251)))))

(declare-fun b!1584282 () Bool)

(declare-fun res!1082218 () Bool)

(assert (=> b!1584282 (=> (not res!1082218) (not e!884420))))

(declare-fun containsKey!1000 (List!37104 (_ BitVec 64)) Bool)

(assert (=> b!1584282 (= res!1082218 (not (containsKey!1000 l!1251 otherKey!56)))))

(declare-fun b!1584283 () Bool)

(declare-fun res!1082221 () Bool)

(assert (=> b!1584283 (=> (not res!1082221) (not e!884420))))

(assert (=> b!1584283 (= res!1082221 (isStrictlySorted!1166 (t!52025 l!1251)))))

(declare-fun b!1584284 () Bool)

(declare-fun res!1082220 () Bool)

(assert (=> b!1584284 (=> (not res!1082220) (not e!884420))))

(assert (=> b!1584284 (= res!1082220 (not (containsKey!1000 (t!52025 l!1251) otherKey!56)))))

(assert (= (and start!138104 res!1082219) b!1584282))

(assert (= (and b!1584282 res!1082218) b!1584281))

(assert (= (and b!1584281 res!1082222) b!1584283))

(assert (= (and b!1584283 res!1082221) b!1584284))

(assert (= (and b!1584284 res!1082220) b!1584280))

(assert (= (and start!138104 (is-Cons!37100 l!1251)) b!1584279))

(declare-fun m!1453643 () Bool)

(assert (=> start!138104 m!1453643))

(declare-fun m!1453645 () Bool)

(assert (=> b!1584280 m!1453645))

(declare-fun m!1453647 () Bool)

(assert (=> b!1584280 m!1453647))

(declare-fun m!1453649 () Bool)

(assert (=> b!1584282 m!1453649))

(declare-fun m!1453651 () Bool)

(assert (=> b!1584283 m!1453651))

(declare-fun m!1453653 () Bool)

(assert (=> b!1584284 m!1453653))

(push 1)

(assert (not b!1584283))

(assert (not start!138104))

(assert tp_is_empty!39455)

(assert (not b!1584282))

(assert (not b!1584279))

(assert (not b!1584280))

(assert (not b!1584284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167352 () Bool)

(declare-fun res!1082231 () Bool)

(declare-fun e!884430 () Bool)

(assert (=> d!167352 (=> res!1082231 e!884430)))

(assert (=> d!167352 (= res!1082231 (or (is-Nil!37101 l!1251) (is-Nil!37101 (t!52025 l!1251))))))

(assert (=> d!167352 (= (isStrictlySorted!1166 l!1251) e!884430)))

(declare-fun b!1584293 () Bool)

(declare-fun e!884431 () Bool)

(assert (=> b!1584293 (= e!884430 e!884431)))

(declare-fun res!1082232 () Bool)

(assert (=> b!1584293 (=> (not res!1082232) (not e!884431))))

(assert (=> b!1584293 (= res!1082232 (bvslt (_1!12999 (h!38644 l!1251)) (_1!12999 (h!38644 (t!52025 l!1251)))))))

(declare-fun b!1584294 () Bool)

(assert (=> b!1584294 (= e!884431 (isStrictlySorted!1166 (t!52025 l!1251)))))

(assert (= (and d!167352 (not res!1082231)) b!1584293))

(assert (= (and b!1584293 res!1082232) b!1584294))

(assert (=> b!1584294 m!1453651))

(assert (=> start!138104 d!167352))

(declare-fun d!167357 () Bool)

(declare-fun res!1082237 () Bool)

(declare-fun e!884436 () Bool)

(assert (=> d!167357 (=> res!1082237 e!884436)))

(assert (=> d!167357 (= res!1082237 (or (is-Nil!37101 (t!52025 l!1251)) (is-Nil!37101 (t!52025 (t!52025 l!1251)))))))

(assert (=> d!167357 (= (isStrictlySorted!1166 (t!52025 l!1251)) e!884436)))

(declare-fun b!1584297 () Bool)

(declare-fun e!884437 () Bool)

(assert (=> b!1584297 (= e!884436 e!884437)))

(declare-fun res!1082238 () Bool)

(assert (=> b!1584297 (=> (not res!1082238) (not e!884437))))

(assert (=> b!1584297 (= res!1082238 (bvslt (_1!12999 (h!38644 (t!52025 l!1251))) (_1!12999 (h!38644 (t!52025 (t!52025 l!1251))))))))

(declare-fun b!1584298 () Bool)

(assert (=> b!1584298 (= e!884437 (isStrictlySorted!1166 (t!52025 (t!52025 l!1251))))))

(assert (= (and d!167357 (not res!1082237)) b!1584297))

(assert (= (and b!1584297 res!1082238) b!1584298))

(declare-fun m!1453657 () Bool)

(assert (=> b!1584298 m!1453657))

(assert (=> b!1584283 d!167357))

(declare-fun d!167361 () Bool)

(declare-fun res!1082257 () Bool)

(declare-fun e!884456 () Bool)

(assert (=> d!167361 (=> res!1082257 e!884456)))

(assert (=> d!167361 (= res!1082257 (and (is-Cons!37100 (t!52025 l!1251)) (= (_1!12999 (h!38644 (t!52025 l!1251))) otherKey!56)))))

(assert (=> d!167361 (= (containsKey!1000 (t!52025 l!1251) otherKey!56) e!884456)))

(declare-fun b!1584317 () Bool)

(declare-fun e!884457 () Bool)

(assert (=> b!1584317 (= e!884456 e!884457)))

(declare-fun res!1082258 () Bool)

(assert (=> b!1584317 (=> (not res!1082258) (not e!884457))))

(assert (=> b!1584317 (= res!1082258 (and (or (not (is-Cons!37100 (t!52025 l!1251))) (bvsle (_1!12999 (h!38644 (t!52025 l!1251))) otherKey!56)) (is-Cons!37100 (t!52025 l!1251)) (bvslt (_1!12999 (h!38644 (t!52025 l!1251))) otherKey!56)))))

(declare-fun b!1584318 () Bool)

(assert (=> b!1584318 (= e!884457 (containsKey!1000 (t!52025 (t!52025 l!1251)) otherKey!56))))

(assert (= (and d!167361 (not res!1082257)) b!1584317))

(assert (= (and b!1584317 res!1082258) b!1584318))

(declare-fun m!1453661 () Bool)

(assert (=> b!1584318 m!1453661))

(assert (=> b!1584284 d!167361))

(declare-fun d!167367 () Bool)

(declare-fun lt!677174 () Int)

(assert (=> d!167367 (>= lt!677174 0)))

(declare-fun e!884470 () Int)

(assert (=> d!167367 (= lt!677174 e!884470)))

(declare-fun c!146791 () Bool)

(assert (=> d!167367 (= c!146791 (is-Nil!37101 (t!52025 l!1251)))))

(assert (=> d!167367 (= (ListPrimitiveSize!222 (t!52025 l!1251)) lt!677174)))

(declare-fun b!1584339 () Bool)

(assert (=> b!1584339 (= e!884470 0)))

(declare-fun b!1584340 () Bool)

(assert (=> b!1584340 (= e!884470 (+ 1 (ListPrimitiveSize!222 (t!52025 (t!52025 l!1251)))))))

(assert (= (and d!167367 c!146791) b!1584339))

(assert (= (and d!167367 (not c!146791)) b!1584340))

(declare-fun m!1453665 () Bool)

(assert (=> b!1584340 m!1453665))

(assert (=> b!1584280 d!167367))

(declare-fun d!167375 () Bool)

(declare-fun lt!677175 () Int)

(assert (=> d!167375 (>= lt!677175 0)))

(declare-fun e!884471 () Int)

(assert (=> d!167375 (= lt!677175 e!884471)))

(declare-fun c!146792 () Bool)

(assert (=> d!167375 (= c!146792 (is-Nil!37101 l!1251))))

(assert (=> d!167375 (= (ListPrimitiveSize!222 l!1251) lt!677175)))

(declare-fun b!1584341 () Bool)

(assert (=> b!1584341 (= e!884471 0)))

(declare-fun b!1584342 () Bool)

(assert (=> b!1584342 (= e!884471 (+ 1 (ListPrimitiveSize!222 (t!52025 l!1251))))))

(assert (= (and d!167375 c!146792) b!1584341))

(assert (= (and d!167375 (not c!146792)) b!1584342))

(assert (=> b!1584342 m!1453645))

(assert (=> b!1584280 d!167375))

(declare-fun d!167377 () Bool)

(declare-fun res!1082265 () Bool)

(declare-fun e!884473 () Bool)

(assert (=> d!167377 (=> res!1082265 e!884473)))

(assert (=> d!167377 (= res!1082265 (and (is-Cons!37100 l!1251) (= (_1!12999 (h!38644 l!1251)) otherKey!56)))))

(assert (=> d!167377 (= (containsKey!1000 l!1251 otherKey!56) e!884473)))

(declare-fun b!1584345 () Bool)

(declare-fun e!884474 () Bool)

(assert (=> b!1584345 (= e!884473 e!884474)))

(declare-fun res!1082266 () Bool)

(assert (=> b!1584345 (=> (not res!1082266) (not e!884474))))

(assert (=> b!1584345 (= res!1082266 (and (or (not (is-Cons!37100 l!1251)) (bvsle (_1!12999 (h!38644 l!1251)) otherKey!56)) (is-Cons!37100 l!1251) (bvslt (_1!12999 (h!38644 l!1251)) otherKey!56)))))

(declare-fun b!1584346 () Bool)

(assert (=> b!1584346 (= e!884474 (containsKey!1000 (t!52025 l!1251) otherKey!56))))

(assert (= (and d!167377 (not res!1082265)) b!1584345))

(assert (= (and b!1584345 res!1082266) b!1584346))

(assert (=> b!1584346 m!1453653))

(assert (=> b!1584282 d!167377))

(declare-fun b!1584362 () Bool)

(declare-fun e!884483 () Bool)

(declare-fun tp!115117 () Bool)

(assert (=> b!1584362 (= e!884483 (and tp_is_empty!39455 tp!115117))))

(assert (=> b!1584279 (= tp!115111 e!884483)))

(assert (= (and b!1584279 (is-Cons!37100 (t!52025 l!1251))) b!1584362))

