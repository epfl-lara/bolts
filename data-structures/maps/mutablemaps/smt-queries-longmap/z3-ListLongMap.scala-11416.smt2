; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133062 () Bool)

(assert start!133062)

(declare-fun b!1557137 () Bool)

(declare-fun res!1065209 () Bool)

(declare-fun e!867399 () Bool)

(assert (=> b!1557137 (=> (not res!1065209) (not e!867399))))

(declare-datatypes ((B!2374 0))(
  ( (B!2375 (val!19273 Int)) )
))
(declare-datatypes ((tuple2!25062 0))(
  ( (tuple2!25063 (_1!12541 (_ BitVec 64)) (_2!12541 B!2374)) )
))
(declare-datatypes ((List!36453 0))(
  ( (Nil!36450) (Cons!36449 (h!37896 tuple2!25062) (t!51187 List!36453)) )
))
(declare-datatypes ((ListLongMap!22575 0))(
  ( (ListLongMap!22576 (toList!11303 List!36453)) )
))
(declare-fun lm!250 () ListLongMap!22575)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun containsKey!817 (List!36453 (_ BitVec 64)) Bool)

(assert (=> b!1557137 (= res!1065209 (containsKey!817 (toList!11303 lm!250) a0!50))))

(declare-fun b!1557138 () Bool)

(declare-fun res!1065207 () Bool)

(assert (=> b!1557138 (=> (not res!1065207) (not e!867399))))

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557138 (= res!1065207 (not (= a0!50 a!524)))))

(declare-fun res!1065210 () Bool)

(assert (=> start!133062 (=> (not res!1065210) (not e!867399))))

(declare-fun contains!10202 (ListLongMap!22575 (_ BitVec 64)) Bool)

(assert (=> start!133062 (= res!1065210 (contains!10202 lm!250 a0!50))))

(assert (=> start!133062 e!867399))

(declare-fun e!867398 () Bool)

(declare-fun inv!57466 (ListLongMap!22575) Bool)

(assert (=> start!133062 (and (inv!57466 lm!250) e!867398)))

(assert (=> start!133062 true))

(declare-fun tp_is_empty!38379 () Bool)

(assert (=> start!133062 tp_is_empty!38379))

(declare-fun b!1557139 () Bool)

(declare-fun res!1065206 () Bool)

(assert (=> b!1557139 (=> (not res!1065206) (not e!867399))))

(declare-fun isStrictlySorted!954 (List!36453) Bool)

(assert (=> b!1557139 (= res!1065206 (isStrictlySorted!954 (toList!11303 lm!250)))))

(declare-fun b!1557140 () Bool)

(declare-fun res!1065208 () Bool)

(assert (=> b!1557140 (=> (not res!1065208) (not e!867399))))

(assert (=> b!1557140 (= res!1065208 (not (= a!524 a0!50)))))

(declare-fun b!1557141 () Bool)

(declare-fun tp!112498 () Bool)

(assert (=> b!1557141 (= e!867398 tp!112498)))

(declare-fun b!97 () B!2374)

(declare-fun b!1557142 () Bool)

(declare-fun +!4982 (ListLongMap!22575 tuple2!25062) ListLongMap!22575)

(assert (=> b!1557142 (= e!867399 (not (contains!10202 (+!4982 lm!250 (tuple2!25063 a!524 b!97)) a0!50)))))

(declare-fun insertStrictlySorted!556 (List!36453 (_ BitVec 64) B!2374) List!36453)

(assert (=> b!1557142 (containsKey!817 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97) a0!50)))

(declare-datatypes ((Unit!51790 0))(
  ( (Unit!51791) )
))
(declare-fun lt!670448 () Unit!51790)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!2 (List!36453 (_ BitVec 64) B!2374 (_ BitVec 64)) Unit!51790)

(assert (=> b!1557142 (= lt!670448 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!2 (toList!11303 lm!250) a!524 b!97 a0!50))))

(assert (= (and start!133062 res!1065210) b!1557140))

(assert (= (and b!1557140 res!1065208) b!1557139))

(assert (= (and b!1557139 res!1065206) b!1557137))

(assert (= (and b!1557137 res!1065209) b!1557138))

(assert (= (and b!1557138 res!1065207) b!1557142))

(assert (= start!133062 b!1557141))

(declare-fun m!1434357 () Bool)

(assert (=> b!1557137 m!1434357))

(declare-fun m!1434359 () Bool)

(assert (=> start!133062 m!1434359))

(declare-fun m!1434361 () Bool)

(assert (=> start!133062 m!1434361))

(declare-fun m!1434363 () Bool)

(assert (=> b!1557139 m!1434363))

(declare-fun m!1434365 () Bool)

(assert (=> b!1557142 m!1434365))

(declare-fun m!1434367 () Bool)

(assert (=> b!1557142 m!1434367))

(declare-fun m!1434369 () Bool)

(assert (=> b!1557142 m!1434369))

(assert (=> b!1557142 m!1434367))

(assert (=> b!1557142 m!1434365))

(declare-fun m!1434371 () Bool)

(assert (=> b!1557142 m!1434371))

(declare-fun m!1434373 () Bool)

(assert (=> b!1557142 m!1434373))

(check-sat (not start!133062) (not b!1557139) (not b!1557141) (not b!1557142) tp_is_empty!38379 (not b!1557137))
(check-sat)
(get-model)

(declare-fun d!162343 () Bool)

(declare-fun res!1065234 () Bool)

(declare-fun e!867414 () Bool)

(assert (=> d!162343 (=> res!1065234 e!867414)))

(get-info :version)

(assert (=> d!162343 (= res!1065234 (and ((_ is Cons!36449) (toList!11303 lm!250)) (= (_1!12541 (h!37896 (toList!11303 lm!250))) a0!50)))))

(assert (=> d!162343 (= (containsKey!817 (toList!11303 lm!250) a0!50) e!867414)))

(declare-fun b!1557169 () Bool)

(declare-fun e!867416 () Bool)

(assert (=> b!1557169 (= e!867414 e!867416)))

(declare-fun res!1065236 () Bool)

(assert (=> b!1557169 (=> (not res!1065236) (not e!867416))))

(assert (=> b!1557169 (= res!1065236 (and (or (not ((_ is Cons!36449) (toList!11303 lm!250))) (bvsle (_1!12541 (h!37896 (toList!11303 lm!250))) a0!50)) ((_ is Cons!36449) (toList!11303 lm!250)) (bvslt (_1!12541 (h!37896 (toList!11303 lm!250))) a0!50)))))

(declare-fun b!1557171 () Bool)

(assert (=> b!1557171 (= e!867416 (containsKey!817 (t!51187 (toList!11303 lm!250)) a0!50))))

(assert (= (and d!162343 (not res!1065234)) b!1557169))

(assert (= (and b!1557169 res!1065236) b!1557171))

(declare-fun m!1434395 () Bool)

(assert (=> b!1557171 m!1434395))

(assert (=> b!1557137 d!162343))

(declare-fun d!162347 () Bool)

(declare-fun e!867435 () Bool)

(assert (=> d!162347 e!867435))

(declare-fun res!1065246 () Bool)

(assert (=> d!162347 (=> res!1065246 e!867435)))

(declare-fun lt!670485 () Bool)

(assert (=> d!162347 (= res!1065246 (not lt!670485))))

(declare-fun lt!670487 () Bool)

(assert (=> d!162347 (= lt!670485 lt!670487)))

(declare-fun lt!670484 () Unit!51790)

(declare-fun e!867434 () Unit!51790)

(assert (=> d!162347 (= lt!670484 e!867434)))

(declare-fun c!143882 () Bool)

(assert (=> d!162347 (= c!143882 lt!670487)))

(assert (=> d!162347 (= lt!670487 (containsKey!817 (toList!11303 lm!250) a0!50))))

(assert (=> d!162347 (= (contains!10202 lm!250 a0!50) lt!670485)))

(declare-fun b!1557197 () Bool)

(declare-fun lt!670486 () Unit!51790)

(assert (=> b!1557197 (= e!867434 lt!670486)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!522 (List!36453 (_ BitVec 64)) Unit!51790)

(assert (=> b!1557197 (= lt!670486 (lemmaContainsKeyImpliesGetValueByKeyDefined!522 (toList!11303 lm!250) a0!50))))

(declare-datatypes ((Option!862 0))(
  ( (Some!861 (v!22048 B!2374)) (None!860) )
))
(declare-fun isDefined!571 (Option!862) Bool)

(declare-fun getValueByKey!787 (List!36453 (_ BitVec 64)) Option!862)

(assert (=> b!1557197 (isDefined!571 (getValueByKey!787 (toList!11303 lm!250) a0!50))))

(declare-fun b!1557198 () Bool)

(declare-fun Unit!51795 () Unit!51790)

(assert (=> b!1557198 (= e!867434 Unit!51795)))

(declare-fun b!1557199 () Bool)

(assert (=> b!1557199 (= e!867435 (isDefined!571 (getValueByKey!787 (toList!11303 lm!250) a0!50)))))

(assert (= (and d!162347 c!143882) b!1557197))

(assert (= (and d!162347 (not c!143882)) b!1557198))

(assert (= (and d!162347 (not res!1065246)) b!1557199))

(assert (=> d!162347 m!1434357))

(declare-fun m!1434407 () Bool)

(assert (=> b!1557197 m!1434407))

(declare-fun m!1434411 () Bool)

(assert (=> b!1557197 m!1434411))

(assert (=> b!1557197 m!1434411))

(declare-fun m!1434413 () Bool)

(assert (=> b!1557197 m!1434413))

(assert (=> b!1557199 m!1434411))

(assert (=> b!1557199 m!1434411))

(assert (=> b!1557199 m!1434413))

(assert (=> start!133062 d!162347))

(declare-fun d!162357 () Bool)

(assert (=> d!162357 (= (inv!57466 lm!250) (isStrictlySorted!954 (toList!11303 lm!250)))))

(declare-fun bs!44756 () Bool)

(assert (= bs!44756 d!162357))

(assert (=> bs!44756 m!1434363))

(assert (=> start!133062 d!162357))

(declare-fun b!1557276 () Bool)

(declare-fun e!867478 () List!36453)

(declare-fun e!867479 () List!36453)

(assert (=> b!1557276 (= e!867478 e!867479)))

(declare-fun c!143911 () Bool)

(assert (=> b!1557276 (= c!143911 (and ((_ is Cons!36449) (toList!11303 lm!250)) (= (_1!12541 (h!37896 (toList!11303 lm!250))) a!524)))))

(declare-fun b!1557277 () Bool)

(declare-fun e!867477 () Bool)

(declare-fun lt!670495 () List!36453)

(declare-fun contains!10204 (List!36453 tuple2!25062) Bool)

(assert (=> b!1557277 (= e!867477 (contains!10204 lt!670495 (tuple2!25063 a!524 b!97)))))

(declare-fun b!1557278 () Bool)

(declare-fun e!867481 () List!36453)

(declare-fun call!71681 () List!36453)

(assert (=> b!1557278 (= e!867481 call!71681)))

(declare-fun b!1557279 () Bool)

(declare-fun res!1065267 () Bool)

(assert (=> b!1557279 (=> (not res!1065267) (not e!867477))))

(assert (=> b!1557279 (= res!1065267 (containsKey!817 lt!670495 a!524))))

(declare-fun bm!71677 () Bool)

(declare-fun e!867480 () List!36453)

(declare-fun call!71682 () List!36453)

(declare-fun c!143912 () Bool)

(declare-fun $colon$colon!974 (List!36453 tuple2!25062) List!36453)

(assert (=> bm!71677 (= call!71682 ($colon$colon!974 e!867480 (ite c!143912 (h!37896 (toList!11303 lm!250)) (tuple2!25063 a!524 b!97))))))

(declare-fun c!143913 () Bool)

(assert (=> bm!71677 (= c!143913 c!143912)))

(declare-fun b!1557280 () Bool)

(assert (=> b!1557280 (= e!867481 call!71681)))

(declare-fun b!1557281 () Bool)

(assert (=> b!1557281 (= e!867480 (insertStrictlySorted!556 (t!51187 (toList!11303 lm!250)) a!524 b!97))))

(declare-fun bm!71678 () Bool)

(declare-fun call!71680 () List!36453)

(assert (=> bm!71678 (= call!71680 call!71682)))

(declare-fun d!162361 () Bool)

(assert (=> d!162361 e!867477))

(declare-fun res!1065268 () Bool)

(assert (=> d!162361 (=> (not res!1065268) (not e!867477))))

(assert (=> d!162361 (= res!1065268 (isStrictlySorted!954 lt!670495))))

(assert (=> d!162361 (= lt!670495 e!867478)))

(assert (=> d!162361 (= c!143912 (and ((_ is Cons!36449) (toList!11303 lm!250)) (bvslt (_1!12541 (h!37896 (toList!11303 lm!250))) a!524)))))

(assert (=> d!162361 (isStrictlySorted!954 (toList!11303 lm!250))))

(assert (=> d!162361 (= (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97) lt!670495)))

(declare-fun b!1557282 () Bool)

(assert (=> b!1557282 (= e!867479 call!71680)))

(declare-fun b!1557283 () Bool)

(declare-fun c!143914 () Bool)

(assert (=> b!1557283 (= e!867480 (ite c!143911 (t!51187 (toList!11303 lm!250)) (ite c!143914 (Cons!36449 (h!37896 (toList!11303 lm!250)) (t!51187 (toList!11303 lm!250))) Nil!36450)))))

(declare-fun bm!71679 () Bool)

(assert (=> bm!71679 (= call!71681 call!71680)))

(declare-fun b!1557284 () Bool)

(assert (=> b!1557284 (= e!867478 call!71682)))

(declare-fun b!1557285 () Bool)

(assert (=> b!1557285 (= c!143914 (and ((_ is Cons!36449) (toList!11303 lm!250)) (bvsgt (_1!12541 (h!37896 (toList!11303 lm!250))) a!524)))))

(assert (=> b!1557285 (= e!867479 e!867481)))

(assert (= (and d!162361 c!143912) b!1557284))

(assert (= (and d!162361 (not c!143912)) b!1557276))

(assert (= (and b!1557276 c!143911) b!1557282))

(assert (= (and b!1557276 (not c!143911)) b!1557285))

(assert (= (and b!1557285 c!143914) b!1557278))

(assert (= (and b!1557285 (not c!143914)) b!1557280))

(assert (= (or b!1557278 b!1557280) bm!71679))

(assert (= (or b!1557282 bm!71679) bm!71678))

(assert (= (or b!1557284 bm!71678) bm!71677))

(assert (= (and bm!71677 c!143913) b!1557281))

(assert (= (and bm!71677 (not c!143913)) b!1557283))

(assert (= (and d!162361 res!1065268) b!1557279))

(assert (= (and b!1557279 res!1065267) b!1557277))

(declare-fun m!1434421 () Bool)

(assert (=> b!1557279 m!1434421))

(declare-fun m!1434425 () Bool)

(assert (=> bm!71677 m!1434425))

(declare-fun m!1434429 () Bool)

(assert (=> b!1557281 m!1434429))

(declare-fun m!1434433 () Bool)

(assert (=> d!162361 m!1434433))

(assert (=> d!162361 m!1434363))

(declare-fun m!1434437 () Bool)

(assert (=> b!1557277 m!1434437))

(assert (=> b!1557142 d!162361))

(declare-fun d!162367 () Bool)

(declare-fun e!867490 () Bool)

(assert (=> d!162367 e!867490))

(declare-fun res!1065272 () Bool)

(assert (=> d!162367 (=> res!1065272 e!867490)))

(declare-fun lt!670502 () Bool)

(assert (=> d!162367 (= res!1065272 (not lt!670502))))

(declare-fun lt!670504 () Bool)

(assert (=> d!162367 (= lt!670502 lt!670504)))

(declare-fun lt!670501 () Unit!51790)

(declare-fun e!867489 () Unit!51790)

(assert (=> d!162367 (= lt!670501 e!867489)))

(declare-fun c!143920 () Bool)

(assert (=> d!162367 (= c!143920 lt!670504)))

(assert (=> d!162367 (= lt!670504 (containsKey!817 (toList!11303 (+!4982 lm!250 (tuple2!25063 a!524 b!97))) a0!50))))

(assert (=> d!162367 (= (contains!10202 (+!4982 lm!250 (tuple2!25063 a!524 b!97)) a0!50) lt!670502)))

(declare-fun b!1557299 () Bool)

(declare-fun lt!670503 () Unit!51790)

(assert (=> b!1557299 (= e!867489 lt!670503)))

(assert (=> b!1557299 (= lt!670503 (lemmaContainsKeyImpliesGetValueByKeyDefined!522 (toList!11303 (+!4982 lm!250 (tuple2!25063 a!524 b!97))) a0!50))))

(assert (=> b!1557299 (isDefined!571 (getValueByKey!787 (toList!11303 (+!4982 lm!250 (tuple2!25063 a!524 b!97))) a0!50))))

(declare-fun b!1557300 () Bool)

(declare-fun Unit!51797 () Unit!51790)

(assert (=> b!1557300 (= e!867489 Unit!51797)))

(declare-fun b!1557301 () Bool)

(assert (=> b!1557301 (= e!867490 (isDefined!571 (getValueByKey!787 (toList!11303 (+!4982 lm!250 (tuple2!25063 a!524 b!97))) a0!50)))))

(assert (= (and d!162367 c!143920) b!1557299))

(assert (= (and d!162367 (not c!143920)) b!1557300))

(assert (= (and d!162367 (not res!1065272)) b!1557301))

(declare-fun m!1434453 () Bool)

(assert (=> d!162367 m!1434453))

(declare-fun m!1434455 () Bool)

(assert (=> b!1557299 m!1434455))

(declare-fun m!1434459 () Bool)

(assert (=> b!1557299 m!1434459))

(assert (=> b!1557299 m!1434459))

(declare-fun m!1434461 () Bool)

(assert (=> b!1557299 m!1434461))

(assert (=> b!1557301 m!1434459))

(assert (=> b!1557301 m!1434459))

(assert (=> b!1557301 m!1434461))

(assert (=> b!1557142 d!162367))

(declare-fun d!162373 () Bool)

(assert (=> d!162373 (containsKey!817 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97) a0!50)))

(declare-fun lt!670516 () Unit!51790)

(declare-fun choose!2070 (List!36453 (_ BitVec 64) B!2374 (_ BitVec 64)) Unit!51790)

(assert (=> d!162373 (= lt!670516 (choose!2070 (toList!11303 lm!250) a!524 b!97 a0!50))))

(declare-fun e!867500 () Bool)

(assert (=> d!162373 e!867500))

(declare-fun res!1065288 () Bool)

(assert (=> d!162373 (=> (not res!1065288) (not e!867500))))

(assert (=> d!162373 (= res!1065288 (isStrictlySorted!954 (toList!11303 lm!250)))))

(assert (=> d!162373 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!2 (toList!11303 lm!250) a!524 b!97 a0!50) lt!670516)))

(declare-fun b!1557319 () Bool)

(declare-fun res!1065289 () Bool)

(assert (=> b!1557319 (=> (not res!1065289) (not e!867500))))

(assert (=> b!1557319 (= res!1065289 (containsKey!817 (toList!11303 lm!250) a0!50))))

(declare-fun b!1557320 () Bool)

(assert (=> b!1557320 (= e!867500 (not (= a0!50 a!524)))))

(assert (= (and d!162373 res!1065288) b!1557319))

(assert (= (and b!1557319 res!1065289) b!1557320))

(assert (=> d!162373 m!1434367))

(assert (=> d!162373 m!1434367))

(assert (=> d!162373 m!1434369))

(declare-fun m!1434473 () Bool)

(assert (=> d!162373 m!1434473))

(assert (=> d!162373 m!1434363))

(assert (=> b!1557319 m!1434357))

(assert (=> b!1557142 d!162373))

(declare-fun d!162379 () Bool)

(declare-fun res!1065294 () Bool)

(declare-fun e!867504 () Bool)

(assert (=> d!162379 (=> res!1065294 e!867504)))

(assert (=> d!162379 (= res!1065294 (and ((_ is Cons!36449) (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97)) (= (_1!12541 (h!37896 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97))) a0!50)))))

(assert (=> d!162379 (= (containsKey!817 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97) a0!50) e!867504)))

(declare-fun b!1557325 () Bool)

(declare-fun e!867505 () Bool)

(assert (=> b!1557325 (= e!867504 e!867505)))

(declare-fun res!1065295 () Bool)

(assert (=> b!1557325 (=> (not res!1065295) (not e!867505))))

(assert (=> b!1557325 (= res!1065295 (and (or (not ((_ is Cons!36449) (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97))) (bvsle (_1!12541 (h!37896 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97))) a0!50)) ((_ is Cons!36449) (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97)) (bvslt (_1!12541 (h!37896 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97))) a0!50)))))

(declare-fun b!1557326 () Bool)

(assert (=> b!1557326 (= e!867505 (containsKey!817 (t!51187 (insertStrictlySorted!556 (toList!11303 lm!250) a!524 b!97)) a0!50))))

(assert (= (and d!162379 (not res!1065294)) b!1557325))

(assert (= (and b!1557325 res!1065295) b!1557326))

(declare-fun m!1434479 () Bool)

(assert (=> b!1557326 m!1434479))

(assert (=> b!1557142 d!162379))

(declare-fun d!162385 () Bool)

(declare-fun e!867517 () Bool)

(assert (=> d!162385 e!867517))

(declare-fun res!1065313 () Bool)

(assert (=> d!162385 (=> (not res!1065313) (not e!867517))))

(declare-fun lt!670538 () ListLongMap!22575)

(assert (=> d!162385 (= res!1065313 (contains!10202 lt!670538 (_1!12541 (tuple2!25063 a!524 b!97))))))

(declare-fun lt!670541 () List!36453)

(assert (=> d!162385 (= lt!670538 (ListLongMap!22576 lt!670541))))

(declare-fun lt!670540 () Unit!51790)

(declare-fun lt!670539 () Unit!51790)

(assert (=> d!162385 (= lt!670540 lt!670539)))

(assert (=> d!162385 (= (getValueByKey!787 lt!670541 (_1!12541 (tuple2!25063 a!524 b!97))) (Some!861 (_2!12541 (tuple2!25063 a!524 b!97))))))

(declare-fun lemmaContainsTupThenGetReturnValue!381 (List!36453 (_ BitVec 64) B!2374) Unit!51790)

(assert (=> d!162385 (= lt!670539 (lemmaContainsTupThenGetReturnValue!381 lt!670541 (_1!12541 (tuple2!25063 a!524 b!97)) (_2!12541 (tuple2!25063 a!524 b!97))))))

(assert (=> d!162385 (= lt!670541 (insertStrictlySorted!556 (toList!11303 lm!250) (_1!12541 (tuple2!25063 a!524 b!97)) (_2!12541 (tuple2!25063 a!524 b!97))))))

(assert (=> d!162385 (= (+!4982 lm!250 (tuple2!25063 a!524 b!97)) lt!670538)))

(declare-fun b!1557343 () Bool)

(declare-fun res!1065312 () Bool)

(assert (=> b!1557343 (=> (not res!1065312) (not e!867517))))

(assert (=> b!1557343 (= res!1065312 (= (getValueByKey!787 (toList!11303 lt!670538) (_1!12541 (tuple2!25063 a!524 b!97))) (Some!861 (_2!12541 (tuple2!25063 a!524 b!97)))))))

(declare-fun b!1557344 () Bool)

(assert (=> b!1557344 (= e!867517 (contains!10204 (toList!11303 lt!670538) (tuple2!25063 a!524 b!97)))))

(assert (= (and d!162385 res!1065313) b!1557343))

(assert (= (and b!1557343 res!1065312) b!1557344))

(declare-fun m!1434487 () Bool)

(assert (=> d!162385 m!1434487))

(declare-fun m!1434491 () Bool)

(assert (=> d!162385 m!1434491))

(declare-fun m!1434495 () Bool)

(assert (=> d!162385 m!1434495))

(declare-fun m!1434499 () Bool)

(assert (=> d!162385 m!1434499))

(declare-fun m!1434503 () Bool)

(assert (=> b!1557343 m!1434503))

(declare-fun m!1434505 () Bool)

(assert (=> b!1557344 m!1434505))

(assert (=> b!1557142 d!162385))

(declare-fun d!162391 () Bool)

(declare-fun res!1065330 () Bool)

(declare-fun e!867531 () Bool)

(assert (=> d!162391 (=> res!1065330 e!867531)))

(assert (=> d!162391 (= res!1065330 (or ((_ is Nil!36450) (toList!11303 lm!250)) ((_ is Nil!36450) (t!51187 (toList!11303 lm!250)))))))

(assert (=> d!162391 (= (isStrictlySorted!954 (toList!11303 lm!250)) e!867531)))

(declare-fun b!1557361 () Bool)

(declare-fun e!867532 () Bool)

(assert (=> b!1557361 (= e!867531 e!867532)))

(declare-fun res!1065331 () Bool)

(assert (=> b!1557361 (=> (not res!1065331) (not e!867532))))

(assert (=> b!1557361 (= res!1065331 (bvslt (_1!12541 (h!37896 (toList!11303 lm!250))) (_1!12541 (h!37896 (t!51187 (toList!11303 lm!250))))))))

(declare-fun b!1557362 () Bool)

(assert (=> b!1557362 (= e!867532 (isStrictlySorted!954 (t!51187 (toList!11303 lm!250))))))

(assert (= (and d!162391 (not res!1065330)) b!1557361))

(assert (= (and b!1557361 res!1065331) b!1557362))

(declare-fun m!1434519 () Bool)

(assert (=> b!1557362 m!1434519))

(assert (=> b!1557139 d!162391))

(declare-fun b!1557377 () Bool)

(declare-fun e!867541 () Bool)

(declare-fun tp!112506 () Bool)

(assert (=> b!1557377 (= e!867541 (and tp_is_empty!38379 tp!112506))))

(assert (=> b!1557141 (= tp!112498 e!867541)))

(assert (= (and b!1557141 ((_ is Cons!36449) (toList!11303 lm!250))) b!1557377))

(check-sat (not b!1557277) (not b!1557319) (not b!1557344) (not b!1557326) (not b!1557199) (not b!1557362) (not d!162385) (not d!162347) (not b!1557197) (not b!1557171) (not b!1557343) (not b!1557299) tp_is_empty!38379 (not b!1557279) (not b!1557281) (not d!162361) (not d!162373) (not bm!71677) (not d!162357) (not d!162367) (not b!1557301) (not b!1557377))
(check-sat)
