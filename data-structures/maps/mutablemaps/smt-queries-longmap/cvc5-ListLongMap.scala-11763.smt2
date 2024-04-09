; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138100 () Bool)

(assert start!138100)

(declare-fun b!1584243 () Bool)

(declare-fun res!1082188 () Bool)

(declare-fun e!884408 () Bool)

(assert (=> b!1584243 (=> (not res!1082188) (not e!884408))))

(declare-datatypes ((B!2918 0))(
  ( (B!2919 (val!19821 Int)) )
))
(declare-datatypes ((tuple2!25974 0))(
  ( (tuple2!25975 (_1!12997 (_ BitVec 64)) (_2!12997 B!2918)) )
))
(declare-datatypes ((List!37102 0))(
  ( (Nil!37099) (Cons!37098 (h!38642 tuple2!25974) (t!52023 List!37102)) )
))
(declare-fun l!1251 () List!37102)

(declare-fun isStrictlySorted!1164 (List!37102) Bool)

(assert (=> b!1584243 (= res!1082188 (isStrictlySorted!1164 (t!52023 l!1251)))))

(declare-fun b!1584244 () Bool)

(declare-fun res!1082190 () Bool)

(assert (=> b!1584244 (=> (not res!1082190) (not e!884408))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!998 (List!37102 (_ BitVec 64)) Bool)

(assert (=> b!1584244 (= res!1082190 (not (containsKey!998 l!1251 otherKey!56)))))

(declare-fun b!1584245 () Bool)

(declare-fun ListPrimitiveSize!220 (List!37102) Int)

(assert (=> b!1584245 (= e!884408 (>= (ListPrimitiveSize!220 (t!52023 l!1251)) (ListPrimitiveSize!220 l!1251)))))

(declare-fun b!1584246 () Bool)

(declare-fun res!1082192 () Bool)

(assert (=> b!1584246 (=> (not res!1082192) (not e!884408))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584246 (= res!1082192 (and (not (= otherKey!56 newKey!123)) (is-Cons!37098 l!1251)))))

(declare-fun res!1082191 () Bool)

(assert (=> start!138100 (=> (not res!1082191) (not e!884408))))

(assert (=> start!138100 (= res!1082191 (isStrictlySorted!1164 l!1251))))

(assert (=> start!138100 e!884408))

(declare-fun e!884409 () Bool)

(assert (=> start!138100 e!884409))

(assert (=> start!138100 true))

(declare-fun b!1584247 () Bool)

(declare-fun res!1082189 () Bool)

(assert (=> b!1584247 (=> (not res!1082189) (not e!884408))))

(assert (=> b!1584247 (= res!1082189 (not (containsKey!998 (t!52023 l!1251) otherKey!56)))))

(declare-fun b!1584248 () Bool)

(declare-fun tp_is_empty!39451 () Bool)

(declare-fun tp!115105 () Bool)

(assert (=> b!1584248 (= e!884409 (and tp_is_empty!39451 tp!115105))))

(assert (= (and start!138100 res!1082191) b!1584244))

(assert (= (and b!1584244 res!1082190) b!1584246))

(assert (= (and b!1584246 res!1082192) b!1584243))

(assert (= (and b!1584243 res!1082188) b!1584247))

(assert (= (and b!1584247 res!1082189) b!1584245))

(assert (= (and start!138100 (is-Cons!37098 l!1251)) b!1584248))

(declare-fun m!1453619 () Bool)

(assert (=> b!1584244 m!1453619))

(declare-fun m!1453621 () Bool)

(assert (=> b!1584245 m!1453621))

(declare-fun m!1453623 () Bool)

(assert (=> b!1584245 m!1453623))

(declare-fun m!1453625 () Bool)

(assert (=> start!138100 m!1453625))

(declare-fun m!1453627 () Bool)

(assert (=> b!1584247 m!1453627))

(declare-fun m!1453629 () Bool)

(assert (=> b!1584243 m!1453629))

(push 1)

(assert (not b!1584245))

(assert (not b!1584248))

(assert (not b!1584244))

(assert (not b!1584247))

(assert (not b!1584243))

(assert tp_is_empty!39451)

(assert (not start!138100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167355 () Bool)

(declare-fun res!1082241 () Bool)

(declare-fun e!884440 () Bool)

(assert (=> d!167355 (=> res!1082241 e!884440)))

(assert (=> d!167355 (= res!1082241 (or (is-Nil!37099 (t!52023 l!1251)) (is-Nil!37099 (t!52023 (t!52023 l!1251)))))))

(assert (=> d!167355 (= (isStrictlySorted!1164 (t!52023 l!1251)) e!884440)))

(declare-fun b!1584303 () Bool)

(declare-fun e!884441 () Bool)

(assert (=> b!1584303 (= e!884440 e!884441)))

(declare-fun res!1082242 () Bool)

(assert (=> b!1584303 (=> (not res!1082242) (not e!884441))))

(assert (=> b!1584303 (= res!1082242 (bvslt (_1!12997 (h!38642 (t!52023 l!1251))) (_1!12997 (h!38642 (t!52023 (t!52023 l!1251))))))))

(declare-fun b!1584304 () Bool)

(assert (=> b!1584304 (= e!884441 (isStrictlySorted!1164 (t!52023 (t!52023 l!1251))))))

(assert (= (and d!167355 (not res!1082241)) b!1584303))

(assert (= (and b!1584303 res!1082242) b!1584304))

(declare-fun m!1453659 () Bool)

(assert (=> b!1584304 m!1453659))

(assert (=> b!1584243 d!167355))

(declare-fun d!167363 () Bool)

(declare-fun res!1082263 () Bool)

(declare-fun e!884462 () Bool)

(assert (=> d!167363 (=> res!1082263 e!884462)))

(assert (=> d!167363 (= res!1082263 (and (is-Cons!37098 l!1251) (= (_1!12997 (h!38642 l!1251)) otherKey!56)))))

(assert (=> d!167363 (= (containsKey!998 l!1251 otherKey!56) e!884462)))

(declare-fun b!1584325 () Bool)

(declare-fun e!884463 () Bool)

(assert (=> b!1584325 (= e!884462 e!884463)))

(declare-fun res!1082264 () Bool)

(assert (=> b!1584325 (=> (not res!1082264) (not e!884463))))

(assert (=> b!1584325 (= res!1082264 (and (or (not (is-Cons!37098 l!1251)) (bvsle (_1!12997 (h!38642 l!1251)) otherKey!56)) (is-Cons!37098 l!1251) (bvslt (_1!12997 (h!38642 l!1251)) otherKey!56)))))

(declare-fun b!1584326 () Bool)

(assert (=> b!1584326 (= e!884463 (containsKey!998 (t!52023 l!1251) otherKey!56))))

(assert (= (and d!167363 (not res!1082263)) b!1584325))

(assert (= (and b!1584325 res!1082264) b!1584326))

(assert (=> b!1584326 m!1453627))

(assert (=> b!1584244 d!167363))

(declare-fun d!167373 () Bool)

(declare-fun lt!677178 () Int)

(assert (=> d!167373 (>= lt!677178 0)))

(declare-fun e!884480 () Int)

(assert (=> d!167373 (= lt!677178 e!884480)))

(declare-fun c!146795 () Bool)

(assert (=> d!167373 (= c!146795 (is-Nil!37099 (t!52023 l!1251)))))

(assert (=> d!167373 (= (ListPrimitiveSize!220 (t!52023 l!1251)) lt!677178)))

(declare-fun b!1584357 () Bool)

(assert (=> b!1584357 (= e!884480 0)))

(declare-fun b!1584358 () Bool)

(assert (=> b!1584358 (= e!884480 (+ 1 (ListPrimitiveSize!220 (t!52023 (t!52023 l!1251)))))))

(assert (= (and d!167373 c!146795) b!1584357))

(assert (= (and d!167373 (not c!146795)) b!1584358))

(declare-fun m!1453669 () Bool)

(assert (=> b!1584358 m!1453669))

(assert (=> b!1584245 d!167373))

(declare-fun d!167381 () Bool)

(declare-fun lt!677179 () Int)

(assert (=> d!167381 (>= lt!677179 0)))

(declare-fun e!884481 () Int)

(assert (=> d!167381 (= lt!677179 e!884481)))

(declare-fun c!146796 () Bool)

(assert (=> d!167381 (= c!146796 (is-Nil!37099 l!1251))))

(assert (=> d!167381 (= (ListPrimitiveSize!220 l!1251) lt!677179)))

(declare-fun b!1584359 () Bool)

(assert (=> b!1584359 (= e!884481 0)))

(declare-fun b!1584360 () Bool)

(assert (=> b!1584360 (= e!884481 (+ 1 (ListPrimitiveSize!220 (t!52023 l!1251))))))

(assert (= (and d!167381 c!146796) b!1584359))

(assert (= (and d!167381 (not c!146796)) b!1584360))

(assert (=> b!1584360 m!1453621))

(assert (=> b!1584245 d!167381))

(declare-fun d!167383 () Bool)

(declare-fun res!1082267 () Bool)

(declare-fun e!884484 () Bool)

(assert (=> d!167383 (=> res!1082267 e!884484)))

(assert (=> d!167383 (= res!1082267 (or (is-Nil!37099 l!1251) (is-Nil!37099 (t!52023 l!1251))))))

(assert (=> d!167383 (= (isStrictlySorted!1164 l!1251) e!884484)))

(declare-fun b!1584363 () Bool)

(declare-fun e!884485 () Bool)

(assert (=> b!1584363 (= e!884484 e!884485)))

(declare-fun res!1082268 () Bool)

(assert (=> b!1584363 (=> (not res!1082268) (not e!884485))))

(assert (=> b!1584363 (= res!1082268 (bvslt (_1!12997 (h!38642 l!1251)) (_1!12997 (h!38642 (t!52023 l!1251)))))))

(declare-fun b!1584364 () Bool)

(assert (=> b!1584364 (= e!884485 (isStrictlySorted!1164 (t!52023 l!1251)))))

(assert (= (and d!167383 (not res!1082267)) b!1584363))

(assert (= (and b!1584363 res!1082268) b!1584364))

(assert (=> b!1584364 m!1453629))

(assert (=> start!138100 d!167383))

(declare-fun d!167385 () Bool)

(declare-fun res!1082269 () Bool)

(declare-fun e!884486 () Bool)

(assert (=> d!167385 (=> res!1082269 e!884486)))

(assert (=> d!167385 (= res!1082269 (and (is-Cons!37098 (t!52023 l!1251)) (= (_1!12997 (h!38642 (t!52023 l!1251))) otherKey!56)))))

(assert (=> d!167385 (= (containsKey!998 (t!52023 l!1251) otherKey!56) e!884486)))

(declare-fun b!1584365 () Bool)

(declare-fun e!884487 () Bool)

(assert (=> b!1584365 (= e!884486 e!884487)))

(declare-fun res!1082270 () Bool)

(assert (=> b!1584365 (=> (not res!1082270) (not e!884487))))

(assert (=> b!1584365 (= res!1082270 (and (or (not (is-Cons!37098 (t!52023 l!1251))) (bvsle (_1!12997 (h!38642 (t!52023 l!1251))) otherKey!56)) (is-Cons!37098 (t!52023 l!1251)) (bvslt (_1!12997 (h!38642 (t!52023 l!1251))) otherKey!56)))))

(declare-fun b!1584366 () Bool)

(assert (=> b!1584366 (= e!884487 (containsKey!998 (t!52023 (t!52023 l!1251)) otherKey!56))))

(assert (= (and d!167385 (not res!1082269)) b!1584365))

(assert (= (and b!1584365 res!1082270) b!1584366))

(declare-fun m!1453671 () Bool)

(assert (=> b!1584366 m!1453671))

(assert (=> b!1584247 d!167385))

(declare-fun b!1584371 () Bool)

(declare-fun e!884490 () Bool)

(declare-fun tp!115120 () Bool)

(assert (=> b!1584371 (= e!884490 (and tp_is_empty!39451 tp!115120))))

(assert (=> b!1584248 (= tp!115105 e!884490)))

(assert (= (and b!1584248 (is-Cons!37098 (t!52023 l!1251))) b!1584371))

(push 1)

