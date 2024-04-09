; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133064 () Bool)

(assert start!133064)

(declare-fun b!1557155 () Bool)

(declare-fun res!1065225 () Bool)

(declare-fun e!867404 () Bool)

(assert (=> b!1557155 (=> (not res!1065225) (not e!867404))))

(declare-datatypes ((B!2376 0))(
  ( (B!2377 (val!19274 Int)) )
))
(declare-datatypes ((tuple2!25064 0))(
  ( (tuple2!25065 (_1!12542 (_ BitVec 64)) (_2!12542 B!2376)) )
))
(declare-datatypes ((List!36454 0))(
  ( (Nil!36451) (Cons!36450 (h!37897 tuple2!25064) (t!51188 List!36454)) )
))
(declare-datatypes ((ListLongMap!22577 0))(
  ( (ListLongMap!22578 (toList!11304 List!36454)) )
))
(declare-fun lm!250 () ListLongMap!22577)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun containsKey!818 (List!36454 (_ BitVec 64)) Bool)

(assert (=> b!1557155 (= res!1065225 (containsKey!818 (toList!11304 lm!250) a0!50))))

(declare-fun res!1065223 () Bool)

(assert (=> start!133064 (=> (not res!1065223) (not e!867404))))

(declare-fun contains!10203 (ListLongMap!22577 (_ BitVec 64)) Bool)

(assert (=> start!133064 (= res!1065223 (contains!10203 lm!250 a0!50))))

(assert (=> start!133064 e!867404))

(declare-fun e!867405 () Bool)

(declare-fun inv!57467 (ListLongMap!22577) Bool)

(assert (=> start!133064 (and (inv!57467 lm!250) e!867405)))

(assert (=> start!133064 true))

(declare-fun tp_is_empty!38381 () Bool)

(assert (=> start!133064 tp_is_empty!38381))

(declare-fun b!97 () B!2376)

(declare-fun b!1557156 () Bool)

(declare-fun a!524 () (_ BitVec 64))

(declare-fun +!4983 (ListLongMap!22577 tuple2!25064) ListLongMap!22577)

(assert (=> b!1557156 (= e!867404 (not (contains!10203 (+!4983 lm!250 (tuple2!25065 a!524 b!97)) a0!50)))))

(declare-fun insertStrictlySorted!557 (List!36454 (_ BitVec 64) B!2376) List!36454)

(assert (=> b!1557156 (containsKey!818 (insertStrictlySorted!557 (toList!11304 lm!250) a!524 b!97) a0!50)))

(declare-datatypes ((Unit!51792 0))(
  ( (Unit!51793) )
))
(declare-fun lt!670451 () Unit!51792)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!3 (List!36454 (_ BitVec 64) B!2376 (_ BitVec 64)) Unit!51792)

(assert (=> b!1557156 (= lt!670451 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!3 (toList!11304 lm!250) a!524 b!97 a0!50))))

(declare-fun b!1557157 () Bool)

(declare-fun res!1065224 () Bool)

(assert (=> b!1557157 (=> (not res!1065224) (not e!867404))))

(declare-fun isStrictlySorted!955 (List!36454) Bool)

(assert (=> b!1557157 (= res!1065224 (isStrictlySorted!955 (toList!11304 lm!250)))))

(declare-fun b!1557158 () Bool)

(declare-fun res!1065221 () Bool)

(assert (=> b!1557158 (=> (not res!1065221) (not e!867404))))

(assert (=> b!1557158 (= res!1065221 (not (= a0!50 a!524)))))

(declare-fun b!1557159 () Bool)

(declare-fun tp!112501 () Bool)

(assert (=> b!1557159 (= e!867405 tp!112501)))

(declare-fun b!1557160 () Bool)

(declare-fun res!1065222 () Bool)

(assert (=> b!1557160 (=> (not res!1065222) (not e!867404))))

(assert (=> b!1557160 (= res!1065222 (not (= a!524 a0!50)))))

(assert (= (and start!133064 res!1065223) b!1557160))

(assert (= (and b!1557160 res!1065222) b!1557157))

(assert (= (and b!1557157 res!1065224) b!1557155))

(assert (= (and b!1557155 res!1065225) b!1557158))

(assert (= (and b!1557158 res!1065221) b!1557156))

(assert (= start!133064 b!1557159))

(declare-fun m!1434375 () Bool)

(assert (=> b!1557155 m!1434375))

(declare-fun m!1434377 () Bool)

(assert (=> start!133064 m!1434377))

(declare-fun m!1434379 () Bool)

(assert (=> start!133064 m!1434379))

(declare-fun m!1434381 () Bool)

(assert (=> b!1557156 m!1434381))

(declare-fun m!1434383 () Bool)

(assert (=> b!1557156 m!1434383))

(declare-fun m!1434385 () Bool)

(assert (=> b!1557156 m!1434385))

(assert (=> b!1557156 m!1434383))

(assert (=> b!1557156 m!1434381))

(declare-fun m!1434387 () Bool)

(assert (=> b!1557156 m!1434387))

(declare-fun m!1434389 () Bool)

(assert (=> b!1557156 m!1434389))

(declare-fun m!1434391 () Bool)

(assert (=> b!1557157 m!1434391))

(push 1)

(assert (not b!1557157))

(assert (not start!133064))

(assert (not b!1557155))

(assert (not b!1557156))

(assert (not b!1557159))

(assert tp_is_empty!38381)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162341 () Bool)

(declare-fun res!1065235 () Bool)

(declare-fun e!867415 () Bool)

(assert (=> d!162341 (=> res!1065235 e!867415)))

(assert (=> d!162341 (= res!1065235 (and (is-Cons!36450 (toList!11304 lm!250)) (= (_1!12542 (h!37897 (toList!11304 lm!250))) a0!50)))))

(assert (=> d!162341 (= (containsKey!818 (toList!11304 lm!250) a0!50) e!867415)))

(declare-fun b!1557170 () Bool)

(declare-fun e!867417 () Bool)

(assert (=> b!1557170 (= e!867415 e!867417)))

(declare-fun res!1065237 () Bool)

(assert (=> b!1557170 (=> (not res!1065237) (not e!867417))))

(assert (=> b!1557170 (= res!1065237 (and (or (not (is-Cons!36450 (toList!11304 lm!250))) (bvsle (_1!12542 (h!37897 (toList!11304 lm!250))) a0!50)) (is-Cons!36450 (toList!11304 lm!250)) (bvslt (_1!12542 (h!37897 (toList!11304 lm!250))) a0!50)))))

(declare-fun b!1557172 () Bool)

(assert (=> b!1557172 (= e!867417 (containsKey!818 (t!51188 (toList!11304 lm!250)) a0!50))))

(assert (= (and d!162341 (not res!1065235)) b!1557170))

(assert (= (and b!1557170 res!1065237) b!1557172))

(declare-fun m!1434394 () Bool)

(assert (=> b!1557172 m!1434394))

(assert (=> b!1557155 d!162341))

(declare-fun d!162349 () Bool)

(declare-fun e!867432 () Bool)

(assert (=> d!162349 e!867432))

(declare-fun res!1065245 () Bool)

(assert (=> d!162349 (=> res!1065245 e!867432)))

(declare-fun lt!670480 () Bool)

(assert (=> d!162349 (= res!1065245 (not lt!670480))))

(declare-fun lt!670481 () Bool)

(assert (=> d!162349 (= lt!670480 lt!670481)))

(declare-fun lt!670482 () Unit!51792)

(declare-fun e!867433 () Unit!51792)

(assert (=> d!162349 (= lt!670482 e!867433)))

(declare-fun c!143881 () Bool)

(assert (=> d!162349 (= c!143881 lt!670481)))

(assert (=> d!162349 (= lt!670481 (containsKey!818 (toList!11304 lm!250) a0!50))))

(assert (=> d!162349 (= (contains!10203 lm!250 a0!50) lt!670480)))

(declare-fun b!1557194 () Bool)

(declare-fun lt!670483 () Unit!51792)

(assert (=> b!1557194 (= e!867433 lt!670483)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!523 (List!36454 (_ BitVec 64)) Unit!51792)

(assert (=> b!1557194 (= lt!670483 (lemmaContainsKeyImpliesGetValueByKeyDefined!523 (toList!11304 lm!250) a0!50))))

(declare-datatypes ((Option!863 0))(
  ( (Some!862 (v!22049 B!2376)) (None!861) )
))
(declare-fun isDefined!572 (Option!863) Bool)

(declare-fun getValueByKey!788 (List!36454 (_ BitVec 64)) Option!863)

(assert (=> b!1557194 (isDefined!572 (getValueByKey!788 (toList!11304 lm!250) a0!50))))

(declare-fun b!1557195 () Bool)

(declare-fun Unit!51796 () Unit!51792)

(assert (=> b!1557195 (= e!867433 Unit!51796)))

(declare-fun b!1557196 () Bool)

(assert (=> b!1557196 (= e!867432 (isDefined!572 (getValueByKey!788 (toList!11304 lm!250) a0!50)))))

(assert (= (and d!162349 c!143881) b!1557194))

(assert (= (and d!162349 (not c!143881)) b!1557195))

(assert (= (and d!162349 (not res!1065245)) b!1557196))

(assert (=> d!162349 m!1434375))

(declare-fun m!1434403 () Bool)

(assert (=> b!1557194 m!1434403))

(declare-fun m!1434405 () Bool)

(assert (=> b!1557194 m!1434405))

(assert (=> b!1557194 m!1434405))

(declare-fun m!1434409 () Bool)

(assert (=> b!1557194 m!1434409))

(assert (=> b!1557196 m!1434405))

(assert (=> b!1557196 m!1434405))

(assert (=> b!1557196 m!1434409))

(assert (=> start!133064 d!162349))

(declare-fun d!162355 () Bool)

(assert (=> d!162355 (= (inv!57467 lm!250) (isStrictlySorted!955 (toList!11304 lm!250)))))

(declare-fun bs!44755 () Bool)

(assert (= bs!44755 d!162355))

(assert (=> bs!44755 m!1434391))

(assert (=> start!133064 d!162355))

(declare-fun b!1557266 () Bool)

(declare-fun res!1065265 () Bool)

(declare-fun e!867474 () Bool)

(assert (=> b!1557266 (=> (not res!1065265) (not e!867474))))

(declare-fun lt!670494 () List!36454)

(assert (=> b!1557266 (= res!1065265 (containsKey!818 lt!670494 a!524))))

(declare-fun b!1557267 () Bool)

(declare-fun e!867475 () List!36454)

(declare-fun call!71679 () List!36454)

(assert (=> b!1557267 (= e!867475 call!71679)))

(declare-fun d!162359 () Bool)

(assert (=> d!162359 e!867474))

(declare-fun res!1065266 () Bool)

(assert (=> d!162359 (=> (not res!1065266) (not e!867474))))

(assert (=> d!162359 (= res!1065266 (isStrictlySorted!955 lt!670494))))

(declare-fun e!867473 () List!36454)

(assert (=> d!162359 (= lt!670494 e!867473)))

(declare-fun c!143910 () Bool)

(assert (=> d!162359 (= c!143910 (and (is-Cons!36450 (toList!11304 lm!250)) (bvslt (_1!12542 (h!37897 (toList!11304 lm!250))) a!524)))))

(assert (=> d!162359 (isStrictlySorted!955 (toList!11304 lm!250))))

(assert (=> d!162359 (= (insertStrictlySorted!557 (toList!11304 lm!250) a!524 b!97) lt!670494)))

(declare-fun b!1557268 () Bool)

(declare-fun e!867476 () List!36454)

(assert (=> b!1557268 (= e!867473 e!867476)))

(declare-fun c!143908 () Bool)

(assert (=> b!1557268 (= c!143908 (and (is-Cons!36450 (toList!11304 lm!250)) (= (_1!12542 (h!37897 (toList!11304 lm!250))) a!524)))))

(declare-fun b!1557269 () Bool)

(declare-fun contains!10206 (List!36454 tuple2!25064) Bool)

(assert (=> b!1557269 (= e!867474 (contains!10206 lt!670494 (tuple2!25065 a!524 b!97)))))

(declare-fun c!143909 () Bool)

(declare-fun e!867472 () List!36454)

(declare-fun b!1557270 () Bool)

(assert (=> b!1557270 (= e!867472 (ite c!143908 (t!51188 (toList!11304 lm!250)) (ite c!143909 (Cons!36450 (h!37897 (toList!11304 lm!250)) (t!51188 (toList!11304 lm!250))) Nil!36451)))))

(declare-fun bm!71674 () Bool)

(declare-fun call!71677 () List!36454)

(declare-fun call!71678 () List!36454)

(assert (=> bm!71674 (= call!71677 call!71678)))

(declare-fun b!1557271 () Bool)

(assert (=> b!1557271 (= e!867475 call!71679)))

(declare-fun b!1557272 () Bool)

(assert (=> b!1557272 (= e!867476 call!71677)))

(declare-fun bm!71675 () Bool)

(assert (=> bm!71675 (= call!71679 call!71677)))

(declare-fun bm!71676 () Bool)

(declare-fun $colon$colon!976 (List!36454 tuple2!25064) List!36454)

(assert (=> bm!71676 (= call!71678 ($colon$colon!976 e!867472 (ite c!143910 (h!37897 (toList!11304 lm!250)) (tuple2!25065 a!524 b!97))))))

(declare-fun c!143907 () Bool)

(assert (=> bm!71676 (= c!143907 c!143910)))

(declare-fun b!1557273 () Bool)

(assert (=> b!1557273 (= c!143909 (and (is-Cons!36450 (toList!11304 lm!250)) (bvsgt (_1!12542 (h!37897 (toList!11304 lm!250))) a!524)))))

(assert (=> b!1557273 (= e!867476 e!867475)))

(declare-fun b!1557274 () Bool)

(assert (=> b!1557274 (= e!867473 call!71678)))

(declare-fun b!1557275 () Bool)

(assert (=> b!1557275 (= e!867472 (insertStrictlySorted!557 (t!51188 (toList!11304 lm!250)) a!524 b!97))))

(assert (= (and d!162359 c!143910) b!1557274))

(assert (= (and d!162359 (not c!143910)) b!1557268))

(assert (= (and b!1557268 c!143908) b!1557272))

(assert (= (and b!1557268 (not c!143908)) b!1557273))

(assert (= (and b!1557273 c!143909) b!1557271))

(assert (= (and b!1557273 (not c!143909)) b!1557267))

(assert (= (or b!1557271 b!1557267) bm!71675))

(assert (= (or b!1557272 bm!71675) bm!71674))

(assert (= (or b!1557274 bm!71674) bm!71676))

(assert (= (and bm!71676 c!143907) b!1557275))

(assert (= (and bm!71676 (not c!143907)) b!1557270))

(assert (= (and d!162359 res!1065266) b!1557266))

(assert (= (and b!1557266 res!1065265) b!1557269))

(declare-fun m!1434417 () Bool)

(assert (=> b!1557269 m!1434417))

(declare-fun m!1434419 () Bool)

(assert (=> d!162359 m!1434419))

(assert (=> d!162359 m!1434391))

(declare-fun m!1434423 () Bool)

(assert (=> b!1557275 m!1434423))

(declare-fun m!1434427 () Bool)

(assert (=> bm!71676 m!1434427))

(declare-fun m!1434431 () Bool)

(assert (=> b!1557266 m!1434431))

(assert (=> b!1557156 d!162359))

(declare-fun d!162365 () Bool)

(declare-fun e!867487 () Bool)

(assert (=> d!162365 e!867487))

(declare-fun res!1065271 () Bool)

(assert (=> d!162365 (=> res!1065271 e!867487)))

(declare-fun lt!670497 () Bool)

(assert (=> d!162365 (= res!1065271 (not lt!670497))))

(declare-fun lt!670498 () Bool)

(assert (=> d!162365 (= lt!670497 lt!670498)))

(declare-fun lt!670499 () Unit!51792)

(declare-fun e!867488 () Unit!51792)

(assert (=> d!162365 (= lt!670499 e!867488)))

(declare-fun c!143919 () Bool)

(assert (=> d!162365 (= c!143919 lt!670498)))

(assert (=> d!162365 (= lt!670498 (containsKey!818 (toList!11304 (+!4983 lm!250 (tuple2!25065 a!524 b!97))) a0!50))))

(assert (=> d!162365 (= (contains!10203 (+!4983 lm!250 (tuple2!25065 a!524 b!97)) a0!50) lt!670497)))

(declare-fun b!1557296 () Bool)

(declare-fun lt!670500 () Unit!51792)

(assert (=> b!1557296 (= e!867488 lt!670500)))

(assert (=> b!1557296 (= lt!670500 (lemmaContainsKeyImpliesGetValueByKeyDefined!523 (toList!11304 (+!4983 lm!250 (tuple2!25065 a!524 b!97))) a0!50))))

(assert (=> b!1557296 (isDefined!572 (getValueByKey!788 (toList!11304 (+!4983 lm!250 (tuple2!25065 a!524 b!97))) a0!50))))

(declare-fun b!1557297 () Bool)

(declare-fun Unit!51799 () Unit!51792)

(assert (=> b!1557297 (= e!867488 Unit!51799)))

(declare-fun b!1557298 () Bool)

(assert (=> b!1557298 (= e!867487 (isDefined!572 (getValueByKey!788 (toList!11304 (+!4983 lm!250 (tuple2!25065 a!524 b!97))) a0!50)))))

(assert (= (and d!162365 c!143919) b!1557296))

(assert (= (and d!162365 (not c!143919)) b!1557297))

(assert (= (and d!162365 (not res!1065271)) b!1557298))

(declare-fun m!1434447 () Bool)

(assert (=> d!162365 m!1434447))

(declare-fun m!1434449 () Bool)

(assert (=> b!1557296 m!1434449))

(declare-fun m!1434451 () Bool)

(assert (=> b!1557296 m!1434451))

(assert (=> b!1557296 m!1434451))

(declare-fun m!1434457 () Bool)

(assert (=> b!1557296 m!1434457))

(assert (=> b!1557298 m!1434451))

(assert (=> b!1557298 m!1434451))

(assert (=> b!1557298 m!1434457))

(assert (=> b!1557156 d!162365))

(declare-fun d!162371 () Bool)

(assert (=> d!162371 (containsKey!818 (insertStrictlySorted!557 (toList!11304 lm!250) a!524 b!97) a0!50)))

(declare-fun lt!670515 () Unit!51792)

(declare-fun choose!2072 (List!36454 (_ BitVec 64) B!2376 (_ BitVec 64)) Unit!51792)

(assert (=> d!162371 (= lt!670515 (choose!2072 (toList!11304 lm!250) a!524 b!97 a0!50))))

(declare-fun e!867499 () Bool)

(assert (=> d!162371 e!867499))

(declare-fun res!1065286 () Bool)

(assert (=> d!162371 (=> (not res!1065286) (not e!867499))))

(assert (=> d!162371 (= res!1065286 (isStrictlySorted!955 (toList!11304 lm!250)))))

(assert (=> d!162371 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!3 (toList!11304 lm!250) a!524 b!97 a0!50) lt!670515)))

(declare-fun b!1557317 () Bool)

(declare-fun res!1065287 () Bool)

(assert (=> b!1557317 (=> (not res!1065287) (not e!867499))))

(assert (=> b!1557317 (= res!1065287 (containsKey!818 (toList!11304 lm!250) a0!50))))

(declare-fun b!1557318 () Bool)

(assert (=> b!1557318 (= e!867499 (not (= a0!50 a!524)))))

(assert (= (and d!162371 res!1065286) b!1557317))

(assert (= (and b!1557317 res!1065287) b!1557318))

(assert (=> d!162371 m!1434383))

(assert (=> d!162371 m!1434383))

(assert (=> d!162371 m!1434385))

(declare-fun m!1434471 () Bool)

(assert (=> d!162371 m!1434471))

(assert (=> d!162371 m!1434391))

(assert (=> b!1557317 m!1434375))

(assert (=> b!1557156 d!162371))

(declare-fun d!162377 () Bool)

(declare-fun res!1065292 () Bool)

(declare-fun e!867502 () Bool)

(assert (=> d!162377 (=> res!1065292 e!867502)))

(assert (=> d!162377 (= res!1065292 (and (is-Cons!36450 (insertStrictlySorted!557 (toList!11304 lm!250) a!524 b!97)) (= (_1!12542 (h!37897 (insertStrictlySorted!557 (toList!11304 lm!250) a!524 b!97))) a0!50)))))

