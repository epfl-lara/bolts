; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132468 () Bool)

(assert start!132468)

(declare-fun b!1553483 () Bool)

(declare-fun e!864960 () Bool)

(declare-fun e!864963 () Bool)

(assert (=> b!1553483 (= e!864960 (not e!864963))))

(declare-fun res!1063377 () Bool)

(assert (=> b!1553483 (=> res!1063377 e!864963)))

(declare-datatypes ((B!2218 0))(
  ( (B!2219 (val!19195 Int)) )
))
(declare-datatypes ((tuple2!24906 0))(
  ( (tuple2!24907 (_1!12463 (_ BitVec 64)) (_2!12463 B!2218)) )
))
(declare-datatypes ((List!36375 0))(
  ( (Nil!36372) (Cons!36371 (h!37818 tuple2!24906) (t!51103 List!36375)) )
))
(declare-datatypes ((ListLongMap!22527 0))(
  ( (ListLongMap!22528 (toList!11279 List!36375)) )
))
(declare-fun lm!249 () ListLongMap!22527)

(declare-fun isStrictlySorted!888 (List!36375) Bool)

(assert (=> b!1553483 (= res!1063377 (not (isStrictlySorted!888 (toList!11279 lm!249))))))

(declare-fun e!864961 () Bool)

(assert (=> b!1553483 e!864961))

(declare-fun res!1063375 () Bool)

(assert (=> b!1553483 (=> (not res!1063375) (not e!864961))))

(declare-fun lt!669651 () List!36375)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!760 (List!36375 (_ BitVec 64)) Bool)

(assert (=> b!1553483 (= res!1063375 (containsKey!760 lt!669651 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2218)

(declare-fun insertStrictlySorted!508 (List!36375 (_ BitVec 64) B!2218) List!36375)

(assert (=> b!1553483 (= lt!669651 (insertStrictlySorted!508 (toList!11279 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51686 0))(
  ( (Unit!51687) )
))
(declare-fun lt!669653 () Unit!51686)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!5 (List!36375 (_ BitVec 64) B!2218 (_ BitVec 64)) Unit!51686)

(assert (=> b!1553483 (= lt!669653 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!5 (toList!11279 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553484 () Bool)

(declare-fun res!1063373 () Bool)

(assert (=> b!1553484 (=> (not res!1063373) (not e!864960))))

(assert (=> b!1553484 (= res!1063373 (not (= a0!49 a!523)))))

(declare-fun b!1553485 () Bool)

(declare-fun res!1063374 () Bool)

(assert (=> b!1553485 (=> (not res!1063374) (not e!864960))))

(assert (=> b!1553485 (= res!1063374 (containsKey!760 (toList!11279 lm!249) a0!49))))

(declare-fun b!1553486 () Bool)

(declare-fun e!864962 () Bool)

(declare-fun tp!112123 () Bool)

(assert (=> b!1553486 (= e!864962 tp!112123)))

(declare-fun b!1553487 () Bool)

(declare-datatypes ((Option!817 0))(
  ( (Some!816 (v!21997 B!2218)) (None!815) )
))
(declare-fun getValueByKey!742 (List!36375 (_ BitVec 64)) Option!817)

(assert (=> b!1553487 (= e!864961 (= (getValueByKey!742 lt!669651 a0!49) (getValueByKey!742 (toList!11279 lm!249) a0!49)))))

(declare-fun res!1063376 () Bool)

(assert (=> start!132468 (=> (not res!1063376) (not e!864960))))

(declare-fun contains!10151 (ListLongMap!22527 (_ BitVec 64)) Bool)

(assert (=> start!132468 (= res!1063376 (contains!10151 lm!249 a0!49))))

(assert (=> start!132468 e!864960))

(declare-fun inv!57312 (ListLongMap!22527) Bool)

(assert (=> start!132468 (and (inv!57312 lm!249) e!864962)))

(assert (=> start!132468 true))

(declare-fun tp_is_empty!38229 () Bool)

(assert (=> start!132468 tp_is_empty!38229))

(declare-fun b!1553488 () Bool)

(declare-fun +!4976 (ListLongMap!22527 tuple2!24906) ListLongMap!22527)

(assert (=> b!1553488 (= e!864963 (contains!10151 (+!4976 lm!249 (tuple2!24907 a!523 b!96)) a0!49))))

(declare-fun isDefined!551 (Option!817) Bool)

(assert (=> b!1553488 (isDefined!551 (getValueByKey!742 (toList!11279 lm!249) a0!49))))

(declare-fun lt!669652 () Unit!51686)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!502 (List!36375 (_ BitVec 64)) Unit!51686)

(assert (=> b!1553488 (= lt!669652 (lemmaContainsKeyImpliesGetValueByKeyDefined!502 (toList!11279 lm!249) a0!49))))

(assert (= (and start!132468 res!1063376) b!1553484))

(assert (= (and b!1553484 res!1063373) b!1553485))

(assert (= (and b!1553485 res!1063374) b!1553483))

(assert (= (and b!1553483 res!1063375) b!1553487))

(assert (= (and b!1553483 (not res!1063377)) b!1553488))

(assert (= start!132468 b!1553486))

(declare-fun m!1432181 () Bool)

(assert (=> b!1553488 m!1432181))

(declare-fun m!1432183 () Bool)

(assert (=> b!1553488 m!1432183))

(assert (=> b!1553488 m!1432181))

(declare-fun m!1432185 () Bool)

(assert (=> b!1553488 m!1432185))

(assert (=> b!1553488 m!1432183))

(declare-fun m!1432187 () Bool)

(assert (=> b!1553488 m!1432187))

(declare-fun m!1432189 () Bool)

(assert (=> b!1553488 m!1432189))

(declare-fun m!1432191 () Bool)

(assert (=> b!1553487 m!1432191))

(assert (=> b!1553487 m!1432181))

(declare-fun m!1432193 () Bool)

(assert (=> b!1553485 m!1432193))

(declare-fun m!1432195 () Bool)

(assert (=> b!1553483 m!1432195))

(declare-fun m!1432197 () Bool)

(assert (=> b!1553483 m!1432197))

(declare-fun m!1432199 () Bool)

(assert (=> b!1553483 m!1432199))

(declare-fun m!1432201 () Bool)

(assert (=> b!1553483 m!1432201))

(declare-fun m!1432203 () Bool)

(assert (=> start!132468 m!1432203))

(declare-fun m!1432205 () Bool)

(assert (=> start!132468 m!1432205))

(check-sat (not b!1553485) tp_is_empty!38229 (not start!132468) (not b!1553488) (not b!1553487) (not b!1553483) (not b!1553486))
(check-sat)
(get-model)

(declare-fun b!1553527 () Bool)

(declare-fun e!864991 () Option!817)

(assert (=> b!1553527 (= e!864991 (getValueByKey!742 (t!51103 lt!669651) a0!49))))

(declare-fun b!1553528 () Bool)

(assert (=> b!1553528 (= e!864991 None!815)))

(declare-fun b!1553526 () Bool)

(declare-fun e!864990 () Option!817)

(assert (=> b!1553526 (= e!864990 e!864991)))

(declare-fun c!143201 () Bool)

(get-info :version)

(assert (=> b!1553526 (= c!143201 (and ((_ is Cons!36371) lt!669651) (not (= (_1!12463 (h!37818 lt!669651)) a0!49))))))

(declare-fun b!1553525 () Bool)

(assert (=> b!1553525 (= e!864990 (Some!816 (_2!12463 (h!37818 lt!669651))))))

(declare-fun d!161493 () Bool)

(declare-fun c!143200 () Bool)

(assert (=> d!161493 (= c!143200 (and ((_ is Cons!36371) lt!669651) (= (_1!12463 (h!37818 lt!669651)) a0!49)))))

(assert (=> d!161493 (= (getValueByKey!742 lt!669651 a0!49) e!864990)))

(assert (= (and d!161493 c!143200) b!1553525))

(assert (= (and d!161493 (not c!143200)) b!1553526))

(assert (= (and b!1553526 c!143201) b!1553527))

(assert (= (and b!1553526 (not c!143201)) b!1553528))

(declare-fun m!1432235 () Bool)

(assert (=> b!1553527 m!1432235))

(assert (=> b!1553487 d!161493))

(declare-fun b!1553533 () Bool)

(declare-fun e!864995 () Option!817)

(assert (=> b!1553533 (= e!864995 (getValueByKey!742 (t!51103 (toList!11279 lm!249)) a0!49))))

(declare-fun b!1553534 () Bool)

(assert (=> b!1553534 (= e!864995 None!815)))

(declare-fun b!1553532 () Bool)

(declare-fun e!864994 () Option!817)

(assert (=> b!1553532 (= e!864994 e!864995)))

(declare-fun c!143203 () Bool)

(assert (=> b!1553532 (= c!143203 (and ((_ is Cons!36371) (toList!11279 lm!249)) (not (= (_1!12463 (h!37818 (toList!11279 lm!249))) a0!49))))))

(declare-fun b!1553531 () Bool)

(assert (=> b!1553531 (= e!864994 (Some!816 (_2!12463 (h!37818 (toList!11279 lm!249)))))))

(declare-fun d!161499 () Bool)

(declare-fun c!143202 () Bool)

(assert (=> d!161499 (= c!143202 (and ((_ is Cons!36371) (toList!11279 lm!249)) (= (_1!12463 (h!37818 (toList!11279 lm!249))) a0!49)))))

(assert (=> d!161499 (= (getValueByKey!742 (toList!11279 lm!249) a0!49) e!864994)))

(assert (= (and d!161499 c!143202) b!1553531))

(assert (= (and d!161499 (not c!143202)) b!1553532))

(assert (= (and b!1553532 c!143203) b!1553533))

(assert (= (and b!1553532 (not c!143203)) b!1553534))

(declare-fun m!1432239 () Bool)

(assert (=> b!1553533 m!1432239))

(assert (=> b!1553487 d!161499))

(declare-fun d!161503 () Bool)

(declare-fun e!865014 () Bool)

(assert (=> d!161503 e!865014))

(declare-fun res!1063421 () Bool)

(assert (=> d!161503 (=> res!1063421 e!865014)))

(declare-fun lt!669671 () Bool)

(assert (=> d!161503 (= res!1063421 (not lt!669671))))

(declare-fun lt!669673 () Bool)

(assert (=> d!161503 (= lt!669671 lt!669673)))

(declare-fun lt!669672 () Unit!51686)

(declare-fun e!865015 () Unit!51686)

(assert (=> d!161503 (= lt!669672 e!865015)))

(declare-fun c!143206 () Bool)

(assert (=> d!161503 (= c!143206 lt!669673)))

(assert (=> d!161503 (= lt!669673 (containsKey!760 (toList!11279 lm!249) a0!49))))

(assert (=> d!161503 (= (contains!10151 lm!249 a0!49) lt!669671)))

(declare-fun b!1553555 () Bool)

(declare-fun lt!669674 () Unit!51686)

(assert (=> b!1553555 (= e!865015 lt!669674)))

(assert (=> b!1553555 (= lt!669674 (lemmaContainsKeyImpliesGetValueByKeyDefined!502 (toList!11279 lm!249) a0!49))))

(assert (=> b!1553555 (isDefined!551 (getValueByKey!742 (toList!11279 lm!249) a0!49))))

(declare-fun b!1553556 () Bool)

(declare-fun Unit!51690 () Unit!51686)

(assert (=> b!1553556 (= e!865015 Unit!51690)))

(declare-fun b!1553557 () Bool)

(assert (=> b!1553557 (= e!865014 (isDefined!551 (getValueByKey!742 (toList!11279 lm!249) a0!49)))))

(assert (= (and d!161503 c!143206) b!1553555))

(assert (= (and d!161503 (not c!143206)) b!1553556))

(assert (= (and d!161503 (not res!1063421)) b!1553557))

(assert (=> d!161503 m!1432193))

(assert (=> b!1553555 m!1432189))

(assert (=> b!1553555 m!1432181))

(assert (=> b!1553555 m!1432181))

(assert (=> b!1553555 m!1432185))

(assert (=> b!1553557 m!1432181))

(assert (=> b!1553557 m!1432181))

(assert (=> b!1553557 m!1432185))

(assert (=> start!132468 d!161503))

(declare-fun d!161511 () Bool)

(assert (=> d!161511 (= (inv!57312 lm!249) (isStrictlySorted!888 (toList!11279 lm!249)))))

(declare-fun bs!44646 () Bool)

(assert (= bs!44646 d!161511))

(assert (=> bs!44646 m!1432195))

(assert (=> start!132468 d!161511))

(assert (=> b!1553488 d!161499))

(declare-fun d!161513 () Bool)

(declare-fun isEmpty!1137 (Option!817) Bool)

(assert (=> d!161513 (= (isDefined!551 (getValueByKey!742 (toList!11279 lm!249) a0!49)) (not (isEmpty!1137 (getValueByKey!742 (toList!11279 lm!249) a0!49))))))

(declare-fun bs!44647 () Bool)

(assert (= bs!44647 d!161513))

(assert (=> bs!44647 m!1432181))

(declare-fun m!1432247 () Bool)

(assert (=> bs!44647 m!1432247))

(assert (=> b!1553488 d!161513))

(declare-fun d!161515 () Bool)

(assert (=> d!161515 (isDefined!551 (getValueByKey!742 (toList!11279 lm!249) a0!49))))

(declare-fun lt!669679 () Unit!51686)

(declare-fun choose!2047 (List!36375 (_ BitVec 64)) Unit!51686)

(assert (=> d!161515 (= lt!669679 (choose!2047 (toList!11279 lm!249) a0!49))))

(declare-fun e!865024 () Bool)

(assert (=> d!161515 e!865024))

(declare-fun res!1063424 () Bool)

(assert (=> d!161515 (=> (not res!1063424) (not e!865024))))

(assert (=> d!161515 (= res!1063424 (isStrictlySorted!888 (toList!11279 lm!249)))))

(assert (=> d!161515 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!502 (toList!11279 lm!249) a0!49) lt!669679)))

(declare-fun b!1553572 () Bool)

(assert (=> b!1553572 (= e!865024 (containsKey!760 (toList!11279 lm!249) a0!49))))

(assert (= (and d!161515 res!1063424) b!1553572))

(assert (=> d!161515 m!1432181))

(assert (=> d!161515 m!1432181))

(assert (=> d!161515 m!1432185))

(declare-fun m!1432249 () Bool)

(assert (=> d!161515 m!1432249))

(assert (=> d!161515 m!1432195))

(assert (=> b!1553572 m!1432193))

(assert (=> b!1553488 d!161515))

(declare-fun d!161517 () Bool)

(declare-fun e!865027 () Bool)

(assert (=> d!161517 e!865027))

(declare-fun res!1063425 () Bool)

(assert (=> d!161517 (=> res!1063425 e!865027)))

(declare-fun lt!669682 () Bool)

(assert (=> d!161517 (= res!1063425 (not lt!669682))))

(declare-fun lt!669684 () Bool)

(assert (=> d!161517 (= lt!669682 lt!669684)))

(declare-fun lt!669683 () Unit!51686)

(declare-fun e!865028 () Unit!51686)

(assert (=> d!161517 (= lt!669683 e!865028)))

(declare-fun c!143215 () Bool)

(assert (=> d!161517 (= c!143215 lt!669684)))

(assert (=> d!161517 (= lt!669684 (containsKey!760 (toList!11279 (+!4976 lm!249 (tuple2!24907 a!523 b!96))) a0!49))))

(assert (=> d!161517 (= (contains!10151 (+!4976 lm!249 (tuple2!24907 a!523 b!96)) a0!49) lt!669682)))

(declare-fun b!1553579 () Bool)

(declare-fun lt!669685 () Unit!51686)

(assert (=> b!1553579 (= e!865028 lt!669685)))

(assert (=> b!1553579 (= lt!669685 (lemmaContainsKeyImpliesGetValueByKeyDefined!502 (toList!11279 (+!4976 lm!249 (tuple2!24907 a!523 b!96))) a0!49))))

(assert (=> b!1553579 (isDefined!551 (getValueByKey!742 (toList!11279 (+!4976 lm!249 (tuple2!24907 a!523 b!96))) a0!49))))

(declare-fun b!1553580 () Bool)

(declare-fun Unit!51691 () Unit!51686)

(assert (=> b!1553580 (= e!865028 Unit!51691)))

(declare-fun b!1553581 () Bool)

(assert (=> b!1553581 (= e!865027 (isDefined!551 (getValueByKey!742 (toList!11279 (+!4976 lm!249 (tuple2!24907 a!523 b!96))) a0!49)))))

(assert (= (and d!161517 c!143215) b!1553579))

(assert (= (and d!161517 (not c!143215)) b!1553580))

(assert (= (and d!161517 (not res!1063425)) b!1553581))

(declare-fun m!1432251 () Bool)

(assert (=> d!161517 m!1432251))

(declare-fun m!1432253 () Bool)

(assert (=> b!1553579 m!1432253))

(declare-fun m!1432255 () Bool)

(assert (=> b!1553579 m!1432255))

(assert (=> b!1553579 m!1432255))

(declare-fun m!1432257 () Bool)

(assert (=> b!1553579 m!1432257))

(assert (=> b!1553581 m!1432255))

(assert (=> b!1553581 m!1432255))

(assert (=> b!1553581 m!1432257))

(assert (=> b!1553488 d!161517))

(declare-fun d!161519 () Bool)

(declare-fun e!865053 () Bool)

(assert (=> d!161519 e!865053))

(declare-fun res!1063443 () Bool)

(assert (=> d!161519 (=> (not res!1063443) (not e!865053))))

(declare-fun lt!669697 () ListLongMap!22527)

(assert (=> d!161519 (= res!1063443 (contains!10151 lt!669697 (_1!12463 (tuple2!24907 a!523 b!96))))))

(declare-fun lt!669696 () List!36375)

(assert (=> d!161519 (= lt!669697 (ListLongMap!22528 lt!669696))))

(declare-fun lt!669699 () Unit!51686)

(declare-fun lt!669698 () Unit!51686)

(assert (=> d!161519 (= lt!669699 lt!669698)))

(assert (=> d!161519 (= (getValueByKey!742 lt!669696 (_1!12463 (tuple2!24907 a!523 b!96))) (Some!816 (_2!12463 (tuple2!24907 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!375 (List!36375 (_ BitVec 64) B!2218) Unit!51686)

(assert (=> d!161519 (= lt!669698 (lemmaContainsTupThenGetReturnValue!375 lt!669696 (_1!12463 (tuple2!24907 a!523 b!96)) (_2!12463 (tuple2!24907 a!523 b!96))))))

(assert (=> d!161519 (= lt!669696 (insertStrictlySorted!508 (toList!11279 lm!249) (_1!12463 (tuple2!24907 a!523 b!96)) (_2!12463 (tuple2!24907 a!523 b!96))))))

(assert (=> d!161519 (= (+!4976 lm!249 (tuple2!24907 a!523 b!96)) lt!669697)))

(declare-fun b!1553628 () Bool)

(declare-fun res!1063442 () Bool)

(assert (=> b!1553628 (=> (not res!1063442) (not e!865053))))

(assert (=> b!1553628 (= res!1063442 (= (getValueByKey!742 (toList!11279 lt!669697) (_1!12463 (tuple2!24907 a!523 b!96))) (Some!816 (_2!12463 (tuple2!24907 a!523 b!96)))))))

(declare-fun b!1553629 () Bool)

(declare-fun contains!10155 (List!36375 tuple2!24906) Bool)

(assert (=> b!1553629 (= e!865053 (contains!10155 (toList!11279 lt!669697) (tuple2!24907 a!523 b!96)))))

(assert (= (and d!161519 res!1063443) b!1553628))

(assert (= (and b!1553628 res!1063442) b!1553629))

(declare-fun m!1432279 () Bool)

(assert (=> d!161519 m!1432279))

(declare-fun m!1432281 () Bool)

(assert (=> d!161519 m!1432281))

(declare-fun m!1432283 () Bool)

(assert (=> d!161519 m!1432283))

(declare-fun m!1432285 () Bool)

(assert (=> d!161519 m!1432285))

(declare-fun m!1432287 () Bool)

(assert (=> b!1553628 m!1432287))

(declare-fun m!1432289 () Bool)

(assert (=> b!1553629 m!1432289))

(assert (=> b!1553488 d!161519))

(declare-fun d!161525 () Bool)

(declare-fun res!1063456 () Bool)

(declare-fun e!865066 () Bool)

(assert (=> d!161525 (=> res!1063456 e!865066)))

(assert (=> d!161525 (= res!1063456 (or ((_ is Nil!36372) (toList!11279 lm!249)) ((_ is Nil!36372) (t!51103 (toList!11279 lm!249)))))))

(assert (=> d!161525 (= (isStrictlySorted!888 (toList!11279 lm!249)) e!865066)))

(declare-fun b!1553642 () Bool)

(declare-fun e!865067 () Bool)

(assert (=> b!1553642 (= e!865066 e!865067)))

(declare-fun res!1063457 () Bool)

(assert (=> b!1553642 (=> (not res!1063457) (not e!865067))))

(assert (=> b!1553642 (= res!1063457 (bvslt (_1!12463 (h!37818 (toList!11279 lm!249))) (_1!12463 (h!37818 (t!51103 (toList!11279 lm!249))))))))

(declare-fun b!1553643 () Bool)

(assert (=> b!1553643 (= e!865067 (isStrictlySorted!888 (t!51103 (toList!11279 lm!249))))))

(assert (= (and d!161525 (not res!1063456)) b!1553642))

(assert (= (and b!1553642 res!1063457) b!1553643))

(declare-fun m!1432291 () Bool)

(assert (=> b!1553643 m!1432291))

(assert (=> b!1553483 d!161525))

(declare-fun d!161527 () Bool)

(declare-fun res!1063466 () Bool)

(declare-fun e!865076 () Bool)

(assert (=> d!161527 (=> res!1063466 e!865076)))

(assert (=> d!161527 (= res!1063466 (and ((_ is Cons!36371) lt!669651) (= (_1!12463 (h!37818 lt!669651)) a0!49)))))

(assert (=> d!161527 (= (containsKey!760 lt!669651 a0!49) e!865076)))

(declare-fun b!1553652 () Bool)

(declare-fun e!865077 () Bool)

(assert (=> b!1553652 (= e!865076 e!865077)))

(declare-fun res!1063467 () Bool)

(assert (=> b!1553652 (=> (not res!1063467) (not e!865077))))

(assert (=> b!1553652 (= res!1063467 (and (or (not ((_ is Cons!36371) lt!669651)) (bvsle (_1!12463 (h!37818 lt!669651)) a0!49)) ((_ is Cons!36371) lt!669651) (bvslt (_1!12463 (h!37818 lt!669651)) a0!49)))))

(declare-fun b!1553653 () Bool)

(assert (=> b!1553653 (= e!865077 (containsKey!760 (t!51103 lt!669651) a0!49))))

(assert (= (and d!161527 (not res!1063466)) b!1553652))

(assert (= (and b!1553652 res!1063467) b!1553653))

(declare-fun m!1432305 () Bool)

(assert (=> b!1553653 m!1432305))

(assert (=> b!1553483 d!161527))

(declare-fun bm!71392 () Bool)

(declare-fun call!71397 () List!36375)

(declare-fun call!71396 () List!36375)

(assert (=> bm!71392 (= call!71397 call!71396)))

(declare-fun b!1553728 () Bool)

(declare-fun e!865123 () List!36375)

(assert (=> b!1553728 (= e!865123 call!71396)))

(declare-fun b!1553729 () Bool)

(declare-fun e!865122 () List!36375)

(assert (=> b!1553729 (= e!865122 e!865123)))

(declare-fun c!143261 () Bool)

(assert (=> b!1553729 (= c!143261 (and ((_ is Cons!36371) (toList!11279 lm!249)) (= (_1!12463 (h!37818 (toList!11279 lm!249))) a!523)))))

(declare-fun b!1553730 () Bool)

(declare-fun call!71395 () List!36375)

(assert (=> b!1553730 (= e!865122 call!71395)))

(declare-fun e!865124 () List!36375)

(declare-fun b!1553731 () Bool)

(assert (=> b!1553731 (= e!865124 (insertStrictlySorted!508 (t!51103 (toList!11279 lm!249)) a!523 b!96))))

(declare-fun b!1553733 () Bool)

(declare-fun e!865126 () List!36375)

(assert (=> b!1553733 (= e!865126 call!71397)))

(declare-fun b!1553734 () Bool)

(declare-fun c!143260 () Bool)

(assert (=> b!1553734 (= c!143260 (and ((_ is Cons!36371) (toList!11279 lm!249)) (bvsgt (_1!12463 (h!37818 (toList!11279 lm!249))) a!523)))))

(assert (=> b!1553734 (= e!865123 e!865126)))

(declare-fun b!1553735 () Bool)

(declare-fun lt!669746 () List!36375)

(declare-fun e!865125 () Bool)

(assert (=> b!1553735 (= e!865125 (contains!10155 lt!669746 (tuple2!24907 a!523 b!96)))))

(declare-fun b!1553736 () Bool)

(assert (=> b!1553736 (= e!865124 (ite c!143261 (t!51103 (toList!11279 lm!249)) (ite c!143260 (Cons!36371 (h!37818 (toList!11279 lm!249)) (t!51103 (toList!11279 lm!249))) Nil!36372)))))

(declare-fun b!1553737 () Bool)

(declare-fun res!1063486 () Bool)

(assert (=> b!1553737 (=> (not res!1063486) (not e!865125))))

(assert (=> b!1553737 (= res!1063486 (containsKey!760 lt!669746 a!523))))

(declare-fun d!161533 () Bool)

(assert (=> d!161533 e!865125))

(declare-fun res!1063487 () Bool)

(assert (=> d!161533 (=> (not res!1063487) (not e!865125))))

(assert (=> d!161533 (= res!1063487 (isStrictlySorted!888 lt!669746))))

(assert (=> d!161533 (= lt!669746 e!865122)))

(declare-fun c!143262 () Bool)

(assert (=> d!161533 (= c!143262 (and ((_ is Cons!36371) (toList!11279 lm!249)) (bvslt (_1!12463 (h!37818 (toList!11279 lm!249))) a!523)))))

(assert (=> d!161533 (isStrictlySorted!888 (toList!11279 lm!249))))

(assert (=> d!161533 (= (insertStrictlySorted!508 (toList!11279 lm!249) a!523 b!96) lt!669746)))

(declare-fun b!1553732 () Bool)

(assert (=> b!1553732 (= e!865126 call!71397)))

(declare-fun bm!71393 () Bool)

(assert (=> bm!71393 (= call!71396 call!71395)))

(declare-fun bm!71394 () Bool)

(declare-fun $colon$colon!949 (List!36375 tuple2!24906) List!36375)

(assert (=> bm!71394 (= call!71395 ($colon$colon!949 e!865124 (ite c!143262 (h!37818 (toList!11279 lm!249)) (tuple2!24907 a!523 b!96))))))

(declare-fun c!143263 () Bool)

(assert (=> bm!71394 (= c!143263 c!143262)))

(assert (= (and d!161533 c!143262) b!1553730))

(assert (= (and d!161533 (not c!143262)) b!1553729))

(assert (= (and b!1553729 c!143261) b!1553728))

(assert (= (and b!1553729 (not c!143261)) b!1553734))

(assert (= (and b!1553734 c!143260) b!1553733))

(assert (= (and b!1553734 (not c!143260)) b!1553732))

(assert (= (or b!1553733 b!1553732) bm!71392))

(assert (= (or b!1553728 bm!71392) bm!71393))

(assert (= (or b!1553730 bm!71393) bm!71394))

(assert (= (and bm!71394 c!143263) b!1553731))

(assert (= (and bm!71394 (not c!143263)) b!1553736))

(assert (= (and d!161533 res!1063487) b!1553737))

(assert (= (and b!1553737 res!1063486) b!1553735))

(declare-fun m!1432335 () Bool)

(assert (=> b!1553735 m!1432335))

(declare-fun m!1432337 () Bool)

(assert (=> b!1553731 m!1432337))

(declare-fun m!1432339 () Bool)

(assert (=> bm!71394 m!1432339))

(declare-fun m!1432341 () Bool)

(assert (=> d!161533 m!1432341))

(assert (=> d!161533 m!1432195))

(declare-fun m!1432343 () Bool)

(assert (=> b!1553737 m!1432343))

(assert (=> b!1553483 d!161533))

(declare-fun d!161559 () Bool)

(declare-fun e!865135 () Bool)

(assert (=> d!161559 e!865135))

(declare-fun res!1063500 () Bool)

(assert (=> d!161559 (=> (not res!1063500) (not e!865135))))

(assert (=> d!161559 (= res!1063500 (= (containsKey!760 (insertStrictlySorted!508 (toList!11279 lm!249) a!523 b!96) a0!49) (containsKey!760 (toList!11279 lm!249) a0!49)))))

(declare-fun lt!669765 () Unit!51686)

(declare-fun choose!2051 (List!36375 (_ BitVec 64) B!2218 (_ BitVec 64)) Unit!51686)

(assert (=> d!161559 (= lt!669765 (choose!2051 (toList!11279 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865136 () Bool)

(assert (=> d!161559 e!865136))

(declare-fun res!1063501 () Bool)

(assert (=> d!161559 (=> (not res!1063501) (not e!865136))))

(assert (=> d!161559 (= res!1063501 (isStrictlySorted!888 (toList!11279 lm!249)))))

(assert (=> d!161559 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!5 (toList!11279 lm!249) a!523 b!96 a0!49) lt!669765)))

(declare-fun b!1553750 () Bool)

(assert (=> b!1553750 (= e!865136 (not (= a!523 a0!49)))))

(declare-fun b!1553751 () Bool)

(assert (=> b!1553751 (= e!865135 (= (getValueByKey!742 (insertStrictlySorted!508 (toList!11279 lm!249) a!523 b!96) a0!49) (getValueByKey!742 (toList!11279 lm!249) a0!49)))))

(assert (= (and d!161559 res!1063501) b!1553750))

(assert (= (and d!161559 res!1063500) b!1553751))

(assert (=> d!161559 m!1432199))

(assert (=> d!161559 m!1432199))

(declare-fun m!1432345 () Bool)

(assert (=> d!161559 m!1432345))

(declare-fun m!1432347 () Bool)

(assert (=> d!161559 m!1432347))

(assert (=> d!161559 m!1432195))

(assert (=> d!161559 m!1432193))

(assert (=> b!1553751 m!1432199))

(assert (=> b!1553751 m!1432199))

(declare-fun m!1432353 () Bool)

(assert (=> b!1553751 m!1432353))

(assert (=> b!1553751 m!1432181))

(assert (=> b!1553483 d!161559))

(declare-fun d!161561 () Bool)

(declare-fun res!1063504 () Bool)

(declare-fun e!865138 () Bool)

(assert (=> d!161561 (=> res!1063504 e!865138)))

(assert (=> d!161561 (= res!1063504 (and ((_ is Cons!36371) (toList!11279 lm!249)) (= (_1!12463 (h!37818 (toList!11279 lm!249))) a0!49)))))

(assert (=> d!161561 (= (containsKey!760 (toList!11279 lm!249) a0!49) e!865138)))

(declare-fun b!1553754 () Bool)

(declare-fun e!865139 () Bool)

(assert (=> b!1553754 (= e!865138 e!865139)))

(declare-fun res!1063505 () Bool)

(assert (=> b!1553754 (=> (not res!1063505) (not e!865139))))

(assert (=> b!1553754 (= res!1063505 (and (or (not ((_ is Cons!36371) (toList!11279 lm!249))) (bvsle (_1!12463 (h!37818 (toList!11279 lm!249))) a0!49)) ((_ is Cons!36371) (toList!11279 lm!249)) (bvslt (_1!12463 (h!37818 (toList!11279 lm!249))) a0!49)))))

(declare-fun b!1553755 () Bool)

(assert (=> b!1553755 (= e!865139 (containsKey!760 (t!51103 (toList!11279 lm!249)) a0!49))))

(assert (= (and d!161561 (not res!1063504)) b!1553754))

(assert (= (and b!1553754 res!1063505) b!1553755))

(declare-fun m!1432363 () Bool)

(assert (=> b!1553755 m!1432363))

(assert (=> b!1553485 d!161561))

(declare-fun b!1553770 () Bool)

(declare-fun e!865147 () Bool)

(declare-fun tp!112131 () Bool)

(assert (=> b!1553770 (= e!865147 (and tp_is_empty!38229 tp!112131))))

(assert (=> b!1553486 (= tp!112123 e!865147)))

(assert (= (and b!1553486 ((_ is Cons!36371) (toList!11279 lm!249))) b!1553770))

(check-sat (not d!161515) (not bm!71394) (not b!1553653) (not b!1553533) tp_is_empty!38229 (not b!1553770) (not b!1553643) (not b!1553731) (not b!1553735) (not d!161513) (not b!1553629) (not d!161511) (not b!1553581) (not b!1553737) (not b!1553579) (not b!1553555) (not d!161503) (not b!1553557) (not b!1553572) (not b!1553527) (not b!1553755) (not d!161559) (not b!1553751) (not d!161533) (not b!1553628) (not d!161517) (not d!161519))
(check-sat)
