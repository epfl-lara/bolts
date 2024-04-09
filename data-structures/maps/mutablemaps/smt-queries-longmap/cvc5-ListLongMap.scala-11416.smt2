; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133060 () Bool)

(assert start!133060)

(declare-fun res!1065192 () Bool)

(declare-fun e!867393 () Bool)

(assert (=> start!133060 (=> (not res!1065192) (not e!867393))))

(declare-datatypes ((B!2372 0))(
  ( (B!2373 (val!19272 Int)) )
))
(declare-datatypes ((tuple2!25060 0))(
  ( (tuple2!25061 (_1!12540 (_ BitVec 64)) (_2!12540 B!2372)) )
))
(declare-datatypes ((List!36452 0))(
  ( (Nil!36449) (Cons!36448 (h!37895 tuple2!25060) (t!51186 List!36452)) )
))
(declare-datatypes ((ListLongMap!22573 0))(
  ( (ListLongMap!22574 (toList!11302 List!36452)) )
))
(declare-fun lm!250 () ListLongMap!22573)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10201 (ListLongMap!22573 (_ BitVec 64)) Bool)

(assert (=> start!133060 (= res!1065192 (contains!10201 lm!250 a0!50))))

(assert (=> start!133060 e!867393))

(declare-fun e!867392 () Bool)

(declare-fun inv!57465 (ListLongMap!22573) Bool)

(assert (=> start!133060 (and (inv!57465 lm!250) e!867392)))

(assert (=> start!133060 true))

(declare-fun tp_is_empty!38377 () Bool)

(assert (=> start!133060 tp_is_empty!38377))

(declare-fun b!1557119 () Bool)

(declare-fun res!1065194 () Bool)

(assert (=> b!1557119 (=> (not res!1065194) (not e!867393))))

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557119 (= res!1065194 (not (= a0!50 a!524)))))

(declare-fun b!1557120 () Bool)

(declare-fun res!1065191 () Bool)

(assert (=> b!1557120 (=> (not res!1065191) (not e!867393))))

(assert (=> b!1557120 (= res!1065191 (not (= a!524 a0!50)))))

(declare-fun b!1557121 () Bool)

(declare-fun res!1065195 () Bool)

(assert (=> b!1557121 (=> (not res!1065195) (not e!867393))))

(declare-fun containsKey!816 (List!36452 (_ BitVec 64)) Bool)

(assert (=> b!1557121 (= res!1065195 (containsKey!816 (toList!11302 lm!250) a0!50))))

(declare-fun b!1557122 () Bool)

(declare-fun tp!112495 () Bool)

(assert (=> b!1557122 (= e!867392 tp!112495)))

(declare-fun b!1557123 () Bool)

(declare-fun b!97 () B!2372)

(declare-fun +!4981 (ListLongMap!22573 tuple2!25060) ListLongMap!22573)

(assert (=> b!1557123 (= e!867393 (not (contains!10201 (+!4981 lm!250 (tuple2!25061 a!524 b!97)) a0!50)))))

(declare-fun insertStrictlySorted!555 (List!36452 (_ BitVec 64) B!2372) List!36452)

(assert (=> b!1557123 (containsKey!816 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97) a0!50)))

(declare-datatypes ((Unit!51788 0))(
  ( (Unit!51789) )
))
(declare-fun lt!670445 () Unit!51788)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!1 (List!36452 (_ BitVec 64) B!2372 (_ BitVec 64)) Unit!51788)

(assert (=> b!1557123 (= lt!670445 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!1 (toList!11302 lm!250) a!524 b!97 a0!50))))

(declare-fun b!1557124 () Bool)

(declare-fun res!1065193 () Bool)

(assert (=> b!1557124 (=> (not res!1065193) (not e!867393))))

(declare-fun isStrictlySorted!953 (List!36452) Bool)

(assert (=> b!1557124 (= res!1065193 (isStrictlySorted!953 (toList!11302 lm!250)))))

(assert (= (and start!133060 res!1065192) b!1557120))

(assert (= (and b!1557120 res!1065191) b!1557124))

(assert (= (and b!1557124 res!1065193) b!1557121))

(assert (= (and b!1557121 res!1065195) b!1557119))

(assert (= (and b!1557119 res!1065194) b!1557123))

(assert (= start!133060 b!1557122))

(declare-fun m!1434339 () Bool)

(assert (=> start!133060 m!1434339))

(declare-fun m!1434341 () Bool)

(assert (=> start!133060 m!1434341))

(declare-fun m!1434343 () Bool)

(assert (=> b!1557121 m!1434343))

(declare-fun m!1434345 () Bool)

(assert (=> b!1557123 m!1434345))

(declare-fun m!1434347 () Bool)

(assert (=> b!1557123 m!1434347))

(declare-fun m!1434349 () Bool)

(assert (=> b!1557123 m!1434349))

(assert (=> b!1557123 m!1434347))

(assert (=> b!1557123 m!1434345))

(declare-fun m!1434351 () Bool)

(assert (=> b!1557123 m!1434351))

(declare-fun m!1434353 () Bool)

(assert (=> b!1557123 m!1434353))

(declare-fun m!1434355 () Bool)

(assert (=> b!1557124 m!1434355))

(push 1)

(assert tp_is_empty!38377)

(assert (not b!1557121))

(assert (not b!1557122))

(assert (not b!1557123))

(assert (not b!1557124))

(assert (not start!133060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162345 () Bool)

(declare-fun e!867423 () Bool)

(assert (=> d!162345 e!867423))

(declare-fun res!1065240 () Bool)

(assert (=> d!162345 (=> res!1065240 e!867423)))

(declare-fun lt!670461 () Bool)

(assert (=> d!162345 (= res!1065240 (not lt!670461))))

(declare-fun lt!670460 () Bool)

(assert (=> d!162345 (= lt!670461 lt!670460)))

(declare-fun lt!670462 () Unit!51788)

(declare-fun e!867422 () Unit!51788)

(assert (=> d!162345 (= lt!670462 e!867422)))

(declare-fun c!143876 () Bool)

(assert (=> d!162345 (= c!143876 lt!670460)))

(assert (=> d!162345 (= lt!670460 (containsKey!816 (toList!11302 lm!250) a0!50))))

(assert (=> d!162345 (= (contains!10201 lm!250 a0!50) lt!670461)))

(declare-fun b!1557179 () Bool)

(declare-fun lt!670463 () Unit!51788)

(assert (=> b!1557179 (= e!867422 lt!670463)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!521 (List!36452 (_ BitVec 64)) Unit!51788)

(assert (=> b!1557179 (= lt!670463 (lemmaContainsKeyImpliesGetValueByKeyDefined!521 (toList!11302 lm!250) a0!50))))

(declare-datatypes ((Option!861 0))(
  ( (Some!860 (v!22047 B!2372)) (None!859) )
))
(declare-fun isDefined!570 (Option!861) Bool)

(declare-fun getValueByKey!786 (List!36452 (_ BitVec 64)) Option!861)

(assert (=> b!1557179 (isDefined!570 (getValueByKey!786 (toList!11302 lm!250) a0!50))))

(declare-fun b!1557180 () Bool)

(declare-fun Unit!51794 () Unit!51788)

(assert (=> b!1557180 (= e!867422 Unit!51794)))

(declare-fun b!1557181 () Bool)

(assert (=> b!1557181 (= e!867423 (isDefined!570 (getValueByKey!786 (toList!11302 lm!250) a0!50)))))

(assert (= (and d!162345 c!143876) b!1557179))

(assert (= (and d!162345 (not c!143876)) b!1557180))

(assert (= (and d!162345 (not res!1065240)) b!1557181))

(assert (=> d!162345 m!1434343))

(declare-fun m!1434397 () Bool)

(assert (=> b!1557179 m!1434397))

(declare-fun m!1434399 () Bool)

(assert (=> b!1557179 m!1434399))

(assert (=> b!1557179 m!1434399))

(declare-fun m!1434401 () Bool)

(assert (=> b!1557179 m!1434401))

(assert (=> b!1557181 m!1434399))

(assert (=> b!1557181 m!1434399))

(assert (=> b!1557181 m!1434401))

(assert (=> start!133060 d!162345))

(declare-fun d!162351 () Bool)

(assert (=> d!162351 (= (inv!57465 lm!250) (isStrictlySorted!953 (toList!11302 lm!250)))))

(declare-fun bs!44754 () Bool)

(assert (= bs!44754 d!162351))

(assert (=> bs!44754 m!1434355))

(assert (=> start!133060 d!162351))

(declare-fun d!162353 () Bool)

(declare-fun res!1065251 () Bool)

(declare-fun e!867440 () Bool)

(assert (=> d!162353 (=> res!1065251 e!867440)))

(assert (=> d!162353 (= res!1065251 (or (is-Nil!36449 (toList!11302 lm!250)) (is-Nil!36449 (t!51186 (toList!11302 lm!250)))))))

(assert (=> d!162353 (= (isStrictlySorted!953 (toList!11302 lm!250)) e!867440)))

(declare-fun b!1557204 () Bool)

(declare-fun e!867441 () Bool)

(assert (=> b!1557204 (= e!867440 e!867441)))

(declare-fun res!1065252 () Bool)

(assert (=> b!1557204 (=> (not res!1065252) (not e!867441))))

(assert (=> b!1557204 (= res!1065252 (bvslt (_1!12540 (h!37895 (toList!11302 lm!250))) (_1!12540 (h!37895 (t!51186 (toList!11302 lm!250))))))))

(declare-fun b!1557205 () Bool)

(assert (=> b!1557205 (= e!867441 (isStrictlySorted!953 (t!51186 (toList!11302 lm!250))))))

(assert (= (and d!162353 (not res!1065251)) b!1557204))

(assert (= (and b!1557204 res!1065252) b!1557205))

(declare-fun m!1434415 () Bool)

(assert (=> b!1557205 m!1434415))

(assert (=> b!1557124 d!162353))

(declare-fun c!143918 () Bool)

(declare-fun e!867482 () List!36452)

(declare-fun bm!71680 () Bool)

(declare-fun call!71684 () List!36452)

(declare-fun $colon$colon!975 (List!36452 tuple2!25060) List!36452)

(assert (=> bm!71680 (= call!71684 ($colon$colon!975 e!867482 (ite c!143918 (h!37895 (toList!11302 lm!250)) (tuple2!25061 a!524 b!97))))))

(declare-fun c!143916 () Bool)

(assert (=> bm!71680 (= c!143916 c!143918)))

(declare-fun bm!71681 () Bool)

(declare-fun call!71683 () List!36452)

(assert (=> bm!71681 (= call!71683 call!71684)))

(declare-fun bm!71682 () Bool)

(declare-fun call!71685 () List!36452)

(assert (=> bm!71682 (= call!71685 call!71683)))

(declare-fun b!1557286 () Bool)

(declare-fun e!867484 () List!36452)

(declare-fun e!867486 () List!36452)

(assert (=> b!1557286 (= e!867484 e!867486)))

(declare-fun c!143915 () Bool)

(assert (=> b!1557286 (= c!143915 (and (is-Cons!36448 (toList!11302 lm!250)) (= (_1!12540 (h!37895 (toList!11302 lm!250))) a!524)))))

(declare-fun b!1557287 () Bool)

(assert (=> b!1557287 (= e!867482 (insertStrictlySorted!555 (t!51186 (toList!11302 lm!250)) a!524 b!97))))

(declare-fun c!143917 () Bool)

(declare-fun b!1557288 () Bool)

(assert (=> b!1557288 (= e!867482 (ite c!143915 (t!51186 (toList!11302 lm!250)) (ite c!143917 (Cons!36448 (h!37895 (toList!11302 lm!250)) (t!51186 (toList!11302 lm!250))) Nil!36449)))))

(declare-fun d!162363 () Bool)

(declare-fun e!867485 () Bool)

(assert (=> d!162363 e!867485))

(declare-fun res!1065270 () Bool)

(assert (=> d!162363 (=> (not res!1065270) (not e!867485))))

(declare-fun lt!670496 () List!36452)

(assert (=> d!162363 (= res!1065270 (isStrictlySorted!953 lt!670496))))

(assert (=> d!162363 (= lt!670496 e!867484)))

(assert (=> d!162363 (= c!143918 (and (is-Cons!36448 (toList!11302 lm!250)) (bvslt (_1!12540 (h!37895 (toList!11302 lm!250))) a!524)))))

(assert (=> d!162363 (isStrictlySorted!953 (toList!11302 lm!250))))

(assert (=> d!162363 (= (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97) lt!670496)))

(declare-fun b!1557289 () Bool)

(assert (=> b!1557289 (= e!867486 call!71683)))

(declare-fun b!1557290 () Bool)

(assert (=> b!1557290 (= c!143917 (and (is-Cons!36448 (toList!11302 lm!250)) (bvsgt (_1!12540 (h!37895 (toList!11302 lm!250))) a!524)))))

(declare-fun e!867483 () List!36452)

(assert (=> b!1557290 (= e!867486 e!867483)))

(declare-fun b!1557291 () Bool)

(assert (=> b!1557291 (= e!867483 call!71685)))

(declare-fun b!1557292 () Bool)

(assert (=> b!1557292 (= e!867484 call!71684)))

(declare-fun b!1557293 () Bool)

(declare-fun contains!10205 (List!36452 tuple2!25060) Bool)

(assert (=> b!1557293 (= e!867485 (contains!10205 lt!670496 (tuple2!25061 a!524 b!97)))))

(declare-fun b!1557294 () Bool)

(declare-fun res!1065269 () Bool)

(assert (=> b!1557294 (=> (not res!1065269) (not e!867485))))

(assert (=> b!1557294 (= res!1065269 (containsKey!816 lt!670496 a!524))))

(declare-fun b!1557295 () Bool)

(assert (=> b!1557295 (= e!867483 call!71685)))

(assert (= (and d!162363 c!143918) b!1557292))

(assert (= (and d!162363 (not c!143918)) b!1557286))

(assert (= (and b!1557286 c!143915) b!1557289))

(assert (= (and b!1557286 (not c!143915)) b!1557290))

(assert (= (and b!1557290 c!143917) b!1557295))

(assert (= (and b!1557290 (not c!143917)) b!1557291))

(assert (= (or b!1557295 b!1557291) bm!71682))

(assert (= (or b!1557289 bm!71682) bm!71681))

(assert (= (or b!1557292 bm!71681) bm!71680))

(assert (= (and bm!71680 c!143916) b!1557287))

(assert (= (and bm!71680 (not c!143916)) b!1557288))

(assert (= (and d!162363 res!1065270) b!1557294))

(assert (= (and b!1557294 res!1065269) b!1557293))

(declare-fun m!1434435 () Bool)

(assert (=> bm!71680 m!1434435))

(declare-fun m!1434439 () Bool)

(assert (=> d!162363 m!1434439))

(assert (=> d!162363 m!1434355))

(declare-fun m!1434441 () Bool)

(assert (=> b!1557294 m!1434441))

(declare-fun m!1434443 () Bool)

(assert (=> b!1557293 m!1434443))

(declare-fun m!1434445 () Bool)

(assert (=> b!1557287 m!1434445))

(assert (=> b!1557123 d!162363))

(declare-fun d!162369 () Bool)

(declare-fun e!867492 () Bool)

(assert (=> d!162369 e!867492))

(declare-fun res!1065273 () Bool)

(assert (=> d!162369 (=> res!1065273 e!867492)))

(declare-fun lt!670506 () Bool)

(assert (=> d!162369 (= res!1065273 (not lt!670506))))

(declare-fun lt!670505 () Bool)

(assert (=> d!162369 (= lt!670506 lt!670505)))

(declare-fun lt!670507 () Unit!51788)

(declare-fun e!867491 () Unit!51788)

(assert (=> d!162369 (= lt!670507 e!867491)))

(declare-fun c!143921 () Bool)

(assert (=> d!162369 (= c!143921 lt!670505)))

(assert (=> d!162369 (= lt!670505 (containsKey!816 (toList!11302 (+!4981 lm!250 (tuple2!25061 a!524 b!97))) a0!50))))

(assert (=> d!162369 (= (contains!10201 (+!4981 lm!250 (tuple2!25061 a!524 b!97)) a0!50) lt!670506)))

(declare-fun b!1557302 () Bool)

(declare-fun lt!670508 () Unit!51788)

(assert (=> b!1557302 (= e!867491 lt!670508)))

(assert (=> b!1557302 (= lt!670508 (lemmaContainsKeyImpliesGetValueByKeyDefined!521 (toList!11302 (+!4981 lm!250 (tuple2!25061 a!524 b!97))) a0!50))))

(assert (=> b!1557302 (isDefined!570 (getValueByKey!786 (toList!11302 (+!4981 lm!250 (tuple2!25061 a!524 b!97))) a0!50))))

(declare-fun b!1557303 () Bool)

(declare-fun Unit!51798 () Unit!51788)

(assert (=> b!1557303 (= e!867491 Unit!51798)))

(declare-fun b!1557304 () Bool)

(assert (=> b!1557304 (= e!867492 (isDefined!570 (getValueByKey!786 (toList!11302 (+!4981 lm!250 (tuple2!25061 a!524 b!97))) a0!50)))))

(assert (= (and d!162369 c!143921) b!1557302))

(assert (= (and d!162369 (not c!143921)) b!1557303))

(assert (= (and d!162369 (not res!1065273)) b!1557304))

(declare-fun m!1434463 () Bool)

(assert (=> d!162369 m!1434463))

(declare-fun m!1434465 () Bool)

(assert (=> b!1557302 m!1434465))

(declare-fun m!1434467 () Bool)

(assert (=> b!1557302 m!1434467))

(assert (=> b!1557302 m!1434467))

(declare-fun m!1434469 () Bool)

(assert (=> b!1557302 m!1434469))

(assert (=> b!1557304 m!1434467))

(assert (=> b!1557304 m!1434467))

(assert (=> b!1557304 m!1434469))

(assert (=> b!1557123 d!162369))

(declare-fun d!162375 () Bool)

(assert (=> d!162375 (containsKey!816 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97) a0!50)))

(declare-fun lt!670517 () Unit!51788)

(declare-fun choose!2071 (List!36452 (_ BitVec 64) B!2372 (_ BitVec 64)) Unit!51788)

(assert (=> d!162375 (= lt!670517 (choose!2071 (toList!11302 lm!250) a!524 b!97 a0!50))))

(declare-fun e!867501 () Bool)

(assert (=> d!162375 e!867501))

(declare-fun res!1065290 () Bool)

(assert (=> d!162375 (=> (not res!1065290) (not e!867501))))

(assert (=> d!162375 (= res!1065290 (isStrictlySorted!953 (toList!11302 lm!250)))))

(assert (=> d!162375 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!1 (toList!11302 lm!250) a!524 b!97 a0!50) lt!670517)))

(declare-fun b!1557321 () Bool)

(declare-fun res!1065291 () Bool)

(assert (=> b!1557321 (=> (not res!1065291) (not e!867501))))

(assert (=> b!1557321 (= res!1065291 (containsKey!816 (toList!11302 lm!250) a0!50))))

(declare-fun b!1557322 () Bool)

(assert (=> b!1557322 (= e!867501 (not (= a0!50 a!524)))))

(assert (= (and d!162375 res!1065290) b!1557321))

(assert (= (and b!1557321 res!1065291) b!1557322))

(assert (=> d!162375 m!1434347))

(assert (=> d!162375 m!1434347))

(assert (=> d!162375 m!1434349))

(declare-fun m!1434475 () Bool)

(assert (=> d!162375 m!1434475))

(assert (=> d!162375 m!1434355))

(assert (=> b!1557321 m!1434343))

(assert (=> b!1557123 d!162375))

(declare-fun d!162381 () Bool)

(declare-fun res!1065300 () Bool)

(declare-fun e!867510 () Bool)

(assert (=> d!162381 (=> res!1065300 e!867510)))

(assert (=> d!162381 (= res!1065300 (and (is-Cons!36448 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97)) (= (_1!12540 (h!37895 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97))) a0!50)))))

(assert (=> d!162381 (= (containsKey!816 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97) a0!50) e!867510)))

(declare-fun b!1557331 () Bool)

(declare-fun e!867511 () Bool)

(assert (=> b!1557331 (= e!867510 e!867511)))

(declare-fun res!1065301 () Bool)

(assert (=> b!1557331 (=> (not res!1065301) (not e!867511))))

(assert (=> b!1557331 (= res!1065301 (and (or (not (is-Cons!36448 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97))) (bvsle (_1!12540 (h!37895 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97))) a0!50)) (is-Cons!36448 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97)) (bvslt (_1!12540 (h!37895 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97))) a0!50)))))

(declare-fun b!1557332 () Bool)

(assert (=> b!1557332 (= e!867511 (containsKey!816 (t!51186 (insertStrictlySorted!555 (toList!11302 lm!250) a!524 b!97)) a0!50))))

(assert (= (and d!162381 (not res!1065300)) b!1557331))

(assert (= (and b!1557331 res!1065301) b!1557332))

(declare-fun m!1434481 () Bool)

(assert (=> b!1557332 m!1434481))

(assert (=> b!1557123 d!162381))

(declare-fun d!162387 () Bool)

(declare-fun e!867528 () Bool)

(assert (=> d!162387 e!867528))

(declare-fun res!1065326 () Bool)

(assert (=> d!162387 (=> (not res!1065326) (not e!867528))))

(declare-fun lt!670552 () ListLongMap!22573)

(assert (=> d!162387 (= res!1065326 (contains!10201 lt!670552 (_1!12540 (tuple2!25061 a!524 b!97))))))

(declare-fun lt!670553 () List!36452)

(assert (=> d!162387 (= lt!670552 (ListLongMap!22574 lt!670553))))

(declare-fun lt!670551 () Unit!51788)

(declare-fun lt!670550 () Unit!51788)

(assert (=> d!162387 (= lt!670551 lt!670550)))

(assert (=> d!162387 (= (getValueByKey!786 lt!670553 (_1!12540 (tuple2!25061 a!524 b!97))) (Some!860 (_2!12540 (tuple2!25061 a!524 b!97))))))

(declare-fun lemmaContainsTupThenGetReturnValue!382 (List!36452 (_ BitVec 64) B!2372) Unit!51788)

(assert (=> d!162387 (= lt!670550 (lemmaContainsTupThenGetReturnValue!382 lt!670553 (_1!12540 (tuple2!25061 a!524 b!97)) (_2!12540 (tuple2!25061 a!524 b!97))))))

(assert (=> d!162387 (= lt!670553 (insertStrictlySorted!555 (toList!11302 lm!250) (_1!12540 (tuple2!25061 a!524 b!97)) (_2!12540 (tuple2!25061 a!524 b!97))))))

(assert (=> d!162387 (= (+!4981 lm!250 (tuple2!25061 a!524 b!97)) lt!670552)))

(declare-fun b!1557357 () Bool)

(declare-fun res!1065327 () Bool)

(assert (=> b!1557357 (=> (not res!1065327) (not e!867528))))

(assert (=> b!1557357 (= res!1065327 (= (getValueByKey!786 (toList!11302 lt!670552) (_1!12540 (tuple2!25061 a!524 b!97))) (Some!860 (_2!12540 (tuple2!25061 a!524 b!97)))))))

(declare-fun b!1557358 () Bool)

(assert (=> b!1557358 (= e!867528 (contains!10205 (toList!11302 lt!670552) (tuple2!25061 a!524 b!97)))))

(assert (= (and d!162387 res!1065326) b!1557357))

(assert (= (and b!1557357 res!1065327) b!1557358))

(declare-fun m!1434507 () Bool)

(assert (=> d!162387 m!1434507))

(declare-fun m!1434509 () Bool)

(assert (=> d!162387 m!1434509))

(declare-fun m!1434511 () Bool)

(assert (=> d!162387 m!1434511))

(declare-fun m!1434515 () Bool)

(assert (=> d!162387 m!1434515))

