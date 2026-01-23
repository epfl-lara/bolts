; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485270 () Bool)

(assert start!485270)

(declare-fun b!4749792 () Bool)

(declare-fun res!2013891 () Bool)

(declare-fun e!2962833 () Bool)

(assert (=> b!4749792 (=> (not res!2013891) (not e!2962833))))

(declare-datatypes ((K!14478 0))(
  ( (K!14479 (val!19853 Int)) )
))
(declare-datatypes ((V!14724 0))(
  ( (V!14725 (val!19854 Int)) )
))
(declare-datatypes ((tuple2!54822 0))(
  ( (tuple2!54823 (_1!30705 K!14478) (_2!30705 V!14724)) )
))
(declare-datatypes ((List!53191 0))(
  ( (Nil!53067) (Cons!53067 (h!59464 tuple2!54822) (t!360515 List!53191)) )
))
(declare-fun l!14304 () List!53191)

(assert (=> b!4749792 (= res!2013891 (not (is-Nil!53067 l!14304)))))

(declare-fun b!4749793 () Bool)

(declare-fun noDuplicateKeys!2131 (List!53191) Bool)

(assert (=> b!4749793 (= e!2962833 (not (noDuplicateKeys!2131 (t!360515 l!14304))))))

(declare-datatypes ((ListMap!5507 0))(
  ( (ListMap!5508 (toList!6099 List!53191)) )
))
(declare-fun lt!1913250 () ListMap!5507)

(declare-fun acc!1214 () ListMap!5507)

(declare-fun addToMapMapFromBucket!1555 (List!53191 ListMap!5507) ListMap!5507)

(declare-fun +!2365 (ListMap!5507 tuple2!54822) ListMap!5507)

(assert (=> b!4749793 (= lt!1913250 (addToMapMapFromBucket!1555 (t!360515 l!14304) (+!2365 acc!1214 (h!59464 l!14304))))))

(declare-fun res!2013892 () Bool)

(assert (=> start!485270 (=> (not res!2013892) (not e!2962833))))

(assert (=> start!485270 (= res!2013892 (noDuplicateKeys!2131 l!14304))))

(assert (=> start!485270 e!2962833))

(declare-fun e!2962831 () Bool)

(assert (=> start!485270 e!2962831))

(declare-fun tp_is_empty!31817 () Bool)

(declare-fun tp_is_empty!31819 () Bool)

(assert (=> start!485270 (and tp_is_empty!31817 tp_is_empty!31819)))

(declare-fun e!2962832 () Bool)

(declare-fun inv!68349 (ListMap!5507) Bool)

(assert (=> start!485270 (and (inv!68349 acc!1214) e!2962832)))

(declare-fun b!4749794 () Bool)

(declare-fun tp!1350022 () Bool)

(assert (=> b!4749794 (= e!2962832 tp!1350022)))

(declare-fun b!4749795 () Bool)

(declare-fun tp!1350023 () Bool)

(assert (=> b!4749795 (= e!2962831 (and tp_is_empty!31817 tp_is_empty!31819 tp!1350023))))

(declare-fun b!4749796 () Bool)

(declare-fun res!2013890 () Bool)

(assert (=> b!4749796 (=> (not res!2013890) (not e!2962833))))

(declare-fun t!14174 () tuple2!54822)

(assert (=> b!4749796 (= res!2013890 (noDuplicateKeys!2131 (Cons!53067 t!14174 l!14304)))))

(assert (= (and start!485270 res!2013892) b!4749796))

(assert (= (and b!4749796 res!2013890) b!4749792))

(assert (= (and b!4749792 res!2013891) b!4749793))

(assert (= (and start!485270 (is-Cons!53067 l!14304)) b!4749795))

(assert (= start!485270 b!4749794))

(declare-fun m!5710347 () Bool)

(assert (=> b!4749793 m!5710347))

(declare-fun m!5710349 () Bool)

(assert (=> b!4749793 m!5710349))

(assert (=> b!4749793 m!5710349))

(declare-fun m!5710351 () Bool)

(assert (=> b!4749793 m!5710351))

(declare-fun m!5710353 () Bool)

(assert (=> start!485270 m!5710353))

(declare-fun m!5710355 () Bool)

(assert (=> start!485270 m!5710355))

(declare-fun m!5710357 () Bool)

(assert (=> b!4749796 m!5710357))

(push 1)

(assert (not start!485270))

(assert (not b!4749795))

(assert (not b!4749793))

(assert tp_is_empty!31817)

(assert tp_is_empty!31819)

(assert (not b!4749794))

(assert (not b!4749796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1518048 () Bool)

(declare-fun res!2013906 () Bool)

(declare-fun e!2962847 () Bool)

(assert (=> d!1518048 (=> res!2013906 e!2962847)))

(assert (=> d!1518048 (= res!2013906 (not (is-Cons!53067 (t!360515 l!14304))))))

(assert (=> d!1518048 (= (noDuplicateKeys!2131 (t!360515 l!14304)) e!2962847)))

(declare-fun b!4749816 () Bool)

(declare-fun e!2962848 () Bool)

(assert (=> b!4749816 (= e!2962847 e!2962848)))

(declare-fun res!2013907 () Bool)

(assert (=> b!4749816 (=> (not res!2013907) (not e!2962848))))

(declare-fun containsKey!3541 (List!53191 K!14478) Bool)

(assert (=> b!4749816 (= res!2013907 (not (containsKey!3541 (t!360515 (t!360515 l!14304)) (_1!30705 (h!59464 (t!360515 l!14304))))))))

(declare-fun b!4749817 () Bool)

(assert (=> b!4749817 (= e!2962848 (noDuplicateKeys!2131 (t!360515 (t!360515 l!14304))))))

(assert (= (and d!1518048 (not res!2013906)) b!4749816))

(assert (= (and b!4749816 res!2013907) b!4749817))

(declare-fun m!5710371 () Bool)

(assert (=> b!4749816 m!5710371))

(declare-fun m!5710373 () Bool)

(assert (=> b!4749817 m!5710373))

(assert (=> b!4749793 d!1518048))

(declare-fun b!4749844 () Bool)

(assert (=> b!4749844 true))

(declare-fun bs!1140106 () Bool)

(declare-fun b!4749843 () Bool)

(assert (= bs!1140106 (and b!4749843 b!4749844)))

(declare-fun lambda!221426 () Int)

(declare-fun lambda!221425 () Int)

(assert (=> bs!1140106 (= lambda!221426 lambda!221425)))

(assert (=> b!4749843 true))

(declare-fun lambda!221427 () Int)

(declare-fun lt!1913313 () ListMap!5507)

(assert (=> bs!1140106 (= (= lt!1913313 (+!2365 acc!1214 (h!59464 l!14304))) (= lambda!221427 lambda!221425))))

(assert (=> b!4749843 (= (= lt!1913313 (+!2365 acc!1214 (h!59464 l!14304))) (= lambda!221427 lambda!221426))))

(assert (=> b!4749843 true))

(declare-fun bs!1140107 () Bool)

(declare-fun d!1518050 () Bool)

(assert (= bs!1140107 (and d!1518050 b!4749844)))

(declare-fun lambda!221428 () Int)

(declare-fun lt!1913312 () ListMap!5507)

(assert (=> bs!1140107 (= (= lt!1913312 (+!2365 acc!1214 (h!59464 l!14304))) (= lambda!221428 lambda!221425))))

(declare-fun bs!1140108 () Bool)

(assert (= bs!1140108 (and d!1518050 b!4749843)))

(assert (=> bs!1140108 (= (= lt!1913312 (+!2365 acc!1214 (h!59464 l!14304))) (= lambda!221428 lambda!221426))))

(assert (=> bs!1140108 (= (= lt!1913312 lt!1913313) (= lambda!221428 lambda!221427))))

(assert (=> d!1518050 true))

(declare-fun bm!332567 () Bool)

(declare-datatypes ((Unit!135329 0))(
  ( (Unit!135330) )
))
(declare-fun call!332572 () Unit!135329)

(declare-fun lemmaContainsAllItsOwnKeys!863 (ListMap!5507) Unit!135329)

(assert (=> bm!332567 (= call!332572 (lemmaContainsAllItsOwnKeys!863 (+!2365 acc!1214 (h!59464 l!14304))))))

(declare-fun call!332573 () Bool)

(declare-fun c!811038 () Bool)

(declare-fun bm!332568 () Bool)

(declare-fun forall!11748 (List!53191 Int) Bool)

(assert (=> bm!332568 (= call!332573 (forall!11748 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) (ite c!811038 lambda!221425 lambda!221426)))))

(declare-fun b!4749842 () Bool)

(declare-fun res!2013924 () Bool)

(declare-fun e!2962868 () Bool)

(assert (=> b!4749842 (=> (not res!2013924) (not e!2962868))))

(assert (=> b!4749842 (= res!2013924 (forall!11748 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) lambda!221428))))

(declare-fun e!2962869 () ListMap!5507)

(assert (=> b!4749843 (= e!2962869 lt!1913313)))

(declare-fun lt!1913321 () ListMap!5507)

(assert (=> b!4749843 (= lt!1913321 (+!2365 (+!2365 acc!1214 (h!59464 l!14304)) (h!59464 (t!360515 l!14304))))))

(assert (=> b!4749843 (= lt!1913313 (addToMapMapFromBucket!1555 (t!360515 (t!360515 l!14304)) (+!2365 (+!2365 acc!1214 (h!59464 l!14304)) (h!59464 (t!360515 l!14304)))))))

(declare-fun lt!1913306 () Unit!135329)

(assert (=> b!4749843 (= lt!1913306 call!332572)))

(assert (=> b!4749843 call!332573))

(declare-fun lt!1913316 () Unit!135329)

(assert (=> b!4749843 (= lt!1913316 lt!1913306)))

(assert (=> b!4749843 (forall!11748 (toList!6099 lt!1913321) lambda!221427)))

(declare-fun lt!1913302 () Unit!135329)

(declare-fun Unit!135331 () Unit!135329)

(assert (=> b!4749843 (= lt!1913302 Unit!135331)))

(declare-fun call!332574 () Bool)

(assert (=> b!4749843 call!332574))

(declare-fun lt!1913315 () Unit!135329)

(declare-fun Unit!135332 () Unit!135329)

(assert (=> b!4749843 (= lt!1913315 Unit!135332)))

(declare-fun lt!1913303 () Unit!135329)

(declare-fun Unit!135333 () Unit!135329)

(assert (=> b!4749843 (= lt!1913303 Unit!135333)))

(declare-fun lt!1913314 () Unit!135329)

(declare-fun forallContained!3774 (List!53191 Int tuple2!54822) Unit!135329)

(assert (=> b!4749843 (= lt!1913314 (forallContained!3774 (toList!6099 lt!1913321) lambda!221427 (h!59464 (t!360515 l!14304))))))

(declare-fun contains!16480 (ListMap!5507 K!14478) Bool)

(assert (=> b!4749843 (contains!16480 lt!1913321 (_1!30705 (h!59464 (t!360515 l!14304))))))

(declare-fun lt!1913304 () Unit!135329)

(declare-fun Unit!135334 () Unit!135329)

(assert (=> b!4749843 (= lt!1913304 Unit!135334)))

(assert (=> b!4749843 (contains!16480 lt!1913313 (_1!30705 (h!59464 (t!360515 l!14304))))))

(declare-fun lt!1913319 () Unit!135329)

(declare-fun Unit!135335 () Unit!135329)

(assert (=> b!4749843 (= lt!1913319 Unit!135335)))

(assert (=> b!4749843 (forall!11748 (t!360515 l!14304) lambda!221427)))

(declare-fun lt!1913308 () Unit!135329)

(declare-fun Unit!135336 () Unit!135329)

(assert (=> b!4749843 (= lt!1913308 Unit!135336)))

(assert (=> b!4749843 (forall!11748 (toList!6099 lt!1913321) lambda!221427)))

(declare-fun lt!1913317 () Unit!135329)

(declare-fun Unit!135337 () Unit!135329)

(assert (=> b!4749843 (= lt!1913317 Unit!135337)))

(declare-fun lt!1913305 () Unit!135329)

(declare-fun Unit!135338 () Unit!135329)

(assert (=> b!4749843 (= lt!1913305 Unit!135338)))

(declare-fun lt!1913322 () Unit!135329)

(declare-fun addForallContainsKeyThenBeforeAdding!862 (ListMap!5507 ListMap!5507 K!14478 V!14724) Unit!135329)

(assert (=> b!4749843 (= lt!1913322 (addForallContainsKeyThenBeforeAdding!862 (+!2365 acc!1214 (h!59464 l!14304)) lt!1913313 (_1!30705 (h!59464 (t!360515 l!14304))) (_2!30705 (h!59464 (t!360515 l!14304)))))))

(assert (=> b!4749843 (forall!11748 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) lambda!221427)))

(declare-fun lt!1913310 () Unit!135329)

(assert (=> b!4749843 (= lt!1913310 lt!1913322)))

(assert (=> b!4749843 (forall!11748 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) lambda!221427)))

(declare-fun lt!1913309 () Unit!135329)

(declare-fun Unit!135339 () Unit!135329)

(assert (=> b!4749843 (= lt!1913309 Unit!135339)))

(declare-fun res!2013925 () Bool)

(assert (=> b!4749843 (= res!2013925 (forall!11748 (t!360515 l!14304) lambda!221427))))

(declare-fun e!2962867 () Bool)

(assert (=> b!4749843 (=> (not res!2013925) (not e!2962867))))

(assert (=> b!4749843 e!2962867))

(declare-fun lt!1913318 () Unit!135329)

(declare-fun Unit!135340 () Unit!135329)

(assert (=> b!4749843 (= lt!1913318 Unit!135340)))

(assert (=> b!4749844 (= e!2962869 (+!2365 acc!1214 (h!59464 l!14304)))))

(declare-fun lt!1913320 () Unit!135329)

(assert (=> b!4749844 (= lt!1913320 call!332572)))

(assert (=> b!4749844 call!332573))

(declare-fun lt!1913311 () Unit!135329)

(assert (=> b!4749844 (= lt!1913311 lt!1913320)))

(assert (=> b!4749844 call!332574))

(declare-fun lt!1913307 () Unit!135329)

(declare-fun Unit!135341 () Unit!135329)

(assert (=> b!4749844 (= lt!1913307 Unit!135341)))

(declare-fun b!4749845 () Bool)

(declare-fun invariantList!1580 (List!53191) Bool)

(assert (=> b!4749845 (= e!2962868 (invariantList!1580 (toList!6099 lt!1913312)))))

(assert (=> d!1518050 e!2962868))

(declare-fun res!2013926 () Bool)

(assert (=> d!1518050 (=> (not res!2013926) (not e!2962868))))

(assert (=> d!1518050 (= res!2013926 (forall!11748 (t!360515 l!14304) lambda!221428))))

(assert (=> d!1518050 (= lt!1913312 e!2962869)))

(assert (=> d!1518050 (= c!811038 (is-Nil!53067 (t!360515 l!14304)))))

(assert (=> d!1518050 (noDuplicateKeys!2131 (t!360515 l!14304))))

(assert (=> d!1518050 (= (addToMapMapFromBucket!1555 (t!360515 l!14304) (+!2365 acc!1214 (h!59464 l!14304))) lt!1913312)))

(declare-fun bm!332569 () Bool)

(assert (=> bm!332569 (= call!332574 (forall!11748 (ite c!811038 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) (t!360515 (t!360515 l!14304))) (ite c!811038 lambda!221425 lambda!221427)))))

(declare-fun b!4749846 () Bool)

(assert (=> b!4749846 (= e!2962867 (forall!11748 (toList!6099 (+!2365 acc!1214 (h!59464 l!14304))) lambda!221427))))

(assert (= (and d!1518050 c!811038) b!4749844))

(assert (= (and d!1518050 (not c!811038)) b!4749843))

(assert (= (and b!4749843 res!2013925) b!4749846))

(assert (= (or b!4749844 b!4749843) bm!332567))

(assert (= (or b!4749844 b!4749843) bm!332569))

(assert (= (or b!4749844 b!4749843) bm!332568))

(assert (= (and d!1518050 res!2013926) b!4749842))

(assert (= (and b!4749842 res!2013924) b!4749845))

(declare-fun m!5710387 () Bool)

(assert (=> b!4749842 m!5710387))

(declare-fun m!5710389 () Bool)

(assert (=> b!4749843 m!5710389))

(declare-fun m!5710391 () Bool)

(assert (=> b!4749843 m!5710391))

(declare-fun m!5710393 () Bool)

(assert (=> b!4749843 m!5710393))

(declare-fun m!5710395 () Bool)

(assert (=> b!4749843 m!5710395))

(declare-fun m!5710397 () Bool)

(assert (=> b!4749843 m!5710397))

(declare-fun m!5710399 () Bool)

(assert (=> b!4749843 m!5710399))

(declare-fun m!5710401 () Bool)

(assert (=> b!4749843 m!5710401))

(assert (=> b!4749843 m!5710397))

(assert (=> b!4749843 m!5710349))

(assert (=> b!4749843 m!5710389))

(declare-fun m!5710403 () Bool)

(assert (=> b!4749843 m!5710403))

(assert (=> b!4749843 m!5710393))

(assert (=> b!4749843 m!5710349))

(declare-fun m!5710405 () Bool)

(assert (=> b!4749843 m!5710405))

(assert (=> b!4749843 m!5710395))

(declare-fun m!5710407 () Bool)

(assert (=> d!1518050 m!5710407))

(assert (=> d!1518050 m!5710347))

(declare-fun m!5710409 () Bool)

(assert (=> bm!332568 m!5710409))

(declare-fun m!5710411 () Bool)

(assert (=> b!4749845 m!5710411))

(assert (=> bm!332567 m!5710349))

(declare-fun m!5710413 () Bool)

(assert (=> bm!332567 m!5710413))

(declare-fun m!5710415 () Bool)

(assert (=> bm!332569 m!5710415))

(assert (=> b!4749846 m!5710393))

(assert (=> b!4749793 d!1518050))

(declare-fun d!1518062 () Bool)

(declare-fun e!2962872 () Bool)

(assert (=> d!1518062 e!2962872))

(declare-fun res!2013931 () Bool)

(assert (=> d!1518062 (=> (not res!2013931) (not e!2962872))))

(declare-fun lt!1913331 () ListMap!5507)

(assert (=> d!1518062 (= res!2013931 (contains!16480 lt!1913331 (_1!30705 (h!59464 l!14304))))))

(declare-fun lt!1913333 () List!53191)

(assert (=> d!1518062 (= lt!1913331 (ListMap!5508 lt!1913333))))

(declare-fun lt!1913334 () Unit!135329)

(declare-fun lt!1913332 () Unit!135329)

(assert (=> d!1518062 (= lt!1913334 lt!1913332)))

(declare-datatypes ((Option!12517 0))(
  ( (None!12516) (Some!12516 (v!47213 V!14724)) )
))
(declare-fun getValueByKey!2067 (List!53191 K!14478) Option!12517)

(assert (=> d!1518062 (= (getValueByKey!2067 lt!1913333 (_1!30705 (h!59464 l!14304))) (Some!12516 (_2!30705 (h!59464 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1144 (List!53191 K!14478 V!14724) Unit!135329)

(assert (=> d!1518062 (= lt!1913332 (lemmaContainsTupThenGetReturnValue!1144 lt!1913333 (_1!30705 (h!59464 l!14304)) (_2!30705 (h!59464 l!14304))))))

(declare-fun insertNoDuplicatedKeys!652 (List!53191 K!14478 V!14724) List!53191)

(assert (=> d!1518062 (= lt!1913333 (insertNoDuplicatedKeys!652 (toList!6099 acc!1214) (_1!30705 (h!59464 l!14304)) (_2!30705 (h!59464 l!14304))))))

(assert (=> d!1518062 (= (+!2365 acc!1214 (h!59464 l!14304)) lt!1913331)))

(declare-fun b!4749853 () Bool)

(declare-fun res!2013932 () Bool)

(assert (=> b!4749853 (=> (not res!2013932) (not e!2962872))))

(assert (=> b!4749853 (= res!2013932 (= (getValueByKey!2067 (toList!6099 lt!1913331) (_1!30705 (h!59464 l!14304))) (Some!12516 (_2!30705 (h!59464 l!14304)))))))

(declare-fun b!4749854 () Bool)

(declare-fun contains!16481 (List!53191 tuple2!54822) Bool)

(assert (=> b!4749854 (= e!2962872 (contains!16481 (toList!6099 lt!1913331) (h!59464 l!14304)))))

(assert (= (and d!1518062 res!2013931) b!4749853))

(assert (= (and b!4749853 res!2013932) b!4749854))

(declare-fun m!5710417 () Bool)

(assert (=> d!1518062 m!5710417))

(declare-fun m!5710419 () Bool)

(assert (=> d!1518062 m!5710419))

(declare-fun m!5710421 () Bool)

(assert (=> d!1518062 m!5710421))

(declare-fun m!5710423 () Bool)

(assert (=> d!1518062 m!5710423))

(declare-fun m!5710425 () Bool)

(assert (=> b!4749853 m!5710425))

(declare-fun m!5710427 () Bool)

(assert (=> b!4749854 m!5710427))

(assert (=> b!4749793 d!1518062))

(declare-fun d!1518064 () Bool)

(declare-fun res!2013933 () Bool)

(declare-fun e!2962873 () Bool)

(assert (=> d!1518064 (=> res!2013933 e!2962873)))

(assert (=> d!1518064 (= res!2013933 (not (is-Cons!53067 l!14304)))))

(assert (=> d!1518064 (= (noDuplicateKeys!2131 l!14304) e!2962873)))

(declare-fun b!4749855 () Bool)

(declare-fun e!2962874 () Bool)

(assert (=> b!4749855 (= e!2962873 e!2962874)))

(declare-fun res!2013934 () Bool)

(assert (=> b!4749855 (=> (not res!2013934) (not e!2962874))))

(assert (=> b!4749855 (= res!2013934 (not (containsKey!3541 (t!360515 l!14304) (_1!30705 (h!59464 l!14304)))))))

(declare-fun b!4749856 () Bool)

(assert (=> b!4749856 (= e!2962874 (noDuplicateKeys!2131 (t!360515 l!14304)))))

(assert (= (and d!1518064 (not res!2013933)) b!4749855))

(assert (= (and b!4749855 res!2013934) b!4749856))

(declare-fun m!5710429 () Bool)

(assert (=> b!4749855 m!5710429))

(assert (=> b!4749856 m!5710347))

(assert (=> start!485270 d!1518064))

(declare-fun d!1518066 () Bool)

(assert (=> d!1518066 (= (inv!68349 acc!1214) (invariantList!1580 (toList!6099 acc!1214)))))

(declare-fun bs!1140109 () Bool)

(assert (= bs!1140109 d!1518066))

(declare-fun m!5710431 () Bool)

(assert (=> bs!1140109 m!5710431))

(assert (=> start!485270 d!1518066))

(declare-fun d!1518068 () Bool)

(declare-fun res!2013935 () Bool)

(declare-fun e!2962875 () Bool)

(assert (=> d!1518068 (=> res!2013935 e!2962875)))

(assert (=> d!1518068 (= res!2013935 (not (is-Cons!53067 (Cons!53067 t!14174 l!14304))))))

(assert (=> d!1518068 (= (noDuplicateKeys!2131 (Cons!53067 t!14174 l!14304)) e!2962875)))

(declare-fun b!4749857 () Bool)

(declare-fun e!2962876 () Bool)

(assert (=> b!4749857 (= e!2962875 e!2962876)))

(declare-fun res!2013936 () Bool)

(assert (=> b!4749857 (=> (not res!2013936) (not e!2962876))))

(assert (=> b!4749857 (= res!2013936 (not (containsKey!3541 (t!360515 (Cons!53067 t!14174 l!14304)) (_1!30705 (h!59464 (Cons!53067 t!14174 l!14304))))))))

(declare-fun b!4749858 () Bool)

(assert (=> b!4749858 (= e!2962876 (noDuplicateKeys!2131 (t!360515 (Cons!53067 t!14174 l!14304))))))

(assert (= (and d!1518068 (not res!2013935)) b!4749857))

(assert (= (and b!4749857 res!2013936) b!4749858))

(declare-fun m!5710433 () Bool)

(assert (=> b!4749857 m!5710433))

(declare-fun m!5710435 () Bool)

(assert (=> b!4749858 m!5710435))

(assert (=> b!4749796 d!1518068))

(declare-fun e!2962879 () Bool)

(declare-fun tp!1350032 () Bool)

(declare-fun b!4749863 () Bool)

(assert (=> b!4749863 (= e!2962879 (and tp_is_empty!31817 tp_is_empty!31819 tp!1350032))))

(assert (=> b!4749794 (= tp!1350022 e!2962879)))

(assert (= (and b!4749794 (is-Cons!53067 (toList!6099 acc!1214))) b!4749863))

(declare-fun b!4749864 () Bool)

(declare-fun tp!1350033 () Bool)

(declare-fun e!2962880 () Bool)

(assert (=> b!4749864 (= e!2962880 (and tp_is_empty!31817 tp_is_empty!31819 tp!1350033))))

(assert (=> b!4749795 (= tp!1350023 e!2962880)))

(assert (= (and b!4749795 (is-Cons!53067 (t!360515 l!14304))) b!4749864))

(push 1)

(assert (not b!4749854))

(assert (not b!4749843))

(assert (not bm!332567))

(assert (not b!4749864))

(assert (not b!4749853))

(assert (not bm!332569))

(assert (not b!4749816))

(assert (not b!4749863))

(assert (not b!4749817))

(assert (not bm!332568))

(assert (not b!4749845))

(assert (not b!4749856))

(assert (not b!4749858))

(assert (not d!1518050))

(assert (not b!4749846))

(assert (not b!4749855))

(assert (not b!4749842))

(assert (not d!1518066))

(assert (not d!1518062))

(assert tp_is_empty!31817)

(assert tp_is_empty!31819)

(assert (not b!4749857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

