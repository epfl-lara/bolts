; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136994 () Bool)

(assert start!136994)

(declare-fun res!1079071 () Bool)

(declare-fun e!880958 () Bool)

(assert (=> start!136994 (=> res!1079071 e!880958)))

(declare-datatypes ((B!2592 0))(
  ( (B!2593 (val!19658 Int)) )
))
(declare-datatypes ((tuple2!25582 0))(
  ( (tuple2!25583 (_1!12801 (_ BitVec 64)) (_2!12801 B!2592)) )
))
(declare-datatypes ((List!36939 0))(
  ( (Nil!36936) (Cons!36935 (h!38479 tuple2!25582) (t!51860 List!36939)) )
))
(declare-fun lt!676426 () List!36939)

(declare-fun isStrictlySorted!1037 (List!36939) Bool)

(assert (=> start!136994 (= res!1079071 (not (isStrictlySorted!1037 lt!676426)))))

(declare-datatypes ((ListLongMap!22933 0))(
  ( (ListLongMap!22934 (toList!11482 List!36939)) )
))
(declare-fun thiss!201 () ListLongMap!22933)

(declare-fun keyValue!4 () tuple2!25582)

(declare-fun insertStrictlySorted!609 (List!36939 (_ BitVec 64) B!2592) List!36939)

(assert (=> start!136994 (= lt!676426 (insertStrictlySorted!609 (toList!11482 thiss!201) (_1!12801 keyValue!4) (_2!12801 keyValue!4)))))

(assert (=> start!136994 e!880958))

(declare-fun e!880959 () Bool)

(declare-fun inv!58954 (ListLongMap!22933) Bool)

(assert (=> start!136994 (and (inv!58954 thiss!201) e!880959)))

(declare-fun tp_is_empty!39137 () Bool)

(assert (=> start!136994 tp_is_empty!39137))

(declare-fun b!1579206 () Bool)

(declare-fun res!1079072 () Bool)

(assert (=> b!1579206 (=> res!1079072 e!880958)))

(declare-fun containsKey!884 (List!36939 (_ BitVec 64)) Bool)

(assert (=> b!1579206 (= res!1079072 (not (containsKey!884 lt!676426 (_1!12801 keyValue!4))))))

(declare-fun b!1579207 () Bool)

(declare-fun contains!10467 (List!36939 tuple2!25582) Bool)

(assert (=> b!1579207 (= e!880958 (not (contains!10467 lt!676426 keyValue!4)))))

(declare-fun b!1579208 () Bool)

(declare-fun tp!114331 () Bool)

(assert (=> b!1579208 (= e!880959 tp!114331)))

(assert (= (and start!136994 (not res!1079071)) b!1579206))

(assert (= (and b!1579206 (not res!1079072)) b!1579207))

(assert (= start!136994 b!1579208))

(declare-fun m!1451107 () Bool)

(assert (=> start!136994 m!1451107))

(declare-fun m!1451109 () Bool)

(assert (=> start!136994 m!1451109))

(declare-fun m!1451111 () Bool)

(assert (=> start!136994 m!1451111))

(declare-fun m!1451113 () Bool)

(assert (=> b!1579206 m!1451113))

(declare-fun m!1451115 () Bool)

(assert (=> b!1579207 m!1451115))

(push 1)

(assert tp_is_empty!39137)

(assert (not b!1579206))

(assert (not b!1579208))

(assert (not b!1579207))

(assert (not start!136994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166187 () Bool)

(declare-fun lt!676432 () Bool)

(declare-fun content!828 (List!36939) (Set tuple2!25582))

(assert (=> d!166187 (= lt!676432 (member keyValue!4 (content!828 lt!676426)))))

(declare-fun e!880974 () Bool)

(assert (=> d!166187 (= lt!676432 e!880974)))

(declare-fun res!1079088 () Bool)

(assert (=> d!166187 (=> (not res!1079088) (not e!880974))))

(assert (=> d!166187 (= res!1079088 (is-Cons!36935 lt!676426))))

(assert (=> d!166187 (= (contains!10467 lt!676426 keyValue!4) lt!676432)))

(declare-fun b!1579223 () Bool)

(declare-fun e!880975 () Bool)

(assert (=> b!1579223 (= e!880974 e!880975)))

(declare-fun res!1079087 () Bool)

(assert (=> b!1579223 (=> res!1079087 e!880975)))

(assert (=> b!1579223 (= res!1079087 (= (h!38479 lt!676426) keyValue!4))))

(declare-fun b!1579224 () Bool)

(assert (=> b!1579224 (= e!880975 (contains!10467 (t!51860 lt!676426) keyValue!4))))

(assert (= (and d!166187 res!1079088) b!1579223))

(assert (= (and b!1579223 (not res!1079087)) b!1579224))

(declare-fun m!1451123 () Bool)

(assert (=> d!166187 m!1451123))

(declare-fun m!1451125 () Bool)

(assert (=> d!166187 m!1451125))

(declare-fun m!1451127 () Bool)

(assert (=> b!1579224 m!1451127))

(assert (=> b!1579207 d!166187))

(declare-fun d!166193 () Bool)

(declare-fun res!1079101 () Bool)

(declare-fun e!880988 () Bool)

(assert (=> d!166193 (=> res!1079101 e!880988)))

(assert (=> d!166193 (= res!1079101 (or (is-Nil!36936 lt!676426) (is-Nil!36936 (t!51860 lt!676426))))))

(assert (=> d!166193 (= (isStrictlySorted!1037 lt!676426) e!880988)))

(declare-fun b!1579237 () Bool)

(declare-fun e!880989 () Bool)

(assert (=> b!1579237 (= e!880988 e!880989)))

(declare-fun res!1079102 () Bool)

(assert (=> b!1579237 (=> (not res!1079102) (not e!880989))))

(assert (=> b!1579237 (= res!1079102 (bvslt (_1!12801 (h!38479 lt!676426)) (_1!12801 (h!38479 (t!51860 lt!676426)))))))

(declare-fun b!1579238 () Bool)

(assert (=> b!1579238 (= e!880989 (isStrictlySorted!1037 (t!51860 lt!676426)))))

(assert (= (and d!166193 (not res!1079101)) b!1579237))

(assert (= (and b!1579237 res!1079102) b!1579238))

(declare-fun m!1451133 () Bool)

(assert (=> b!1579238 m!1451133))

(assert (=> start!136994 d!166193))

(declare-fun b!1579309 () Bool)

(declare-fun e!881034 () List!36939)

(declare-fun call!72413 () List!36939)

(assert (=> b!1579309 (= e!881034 call!72413)))

(declare-fun e!881037 () List!36939)

(declare-fun call!72412 () List!36939)

(declare-fun c!146330 () Bool)

(declare-fun bm!72409 () Bool)

(declare-fun $colon$colon!1009 (List!36939 tuple2!25582) List!36939)

(assert (=> bm!72409 (= call!72412 ($colon$colon!1009 e!881037 (ite c!146330 (h!38479 (toList!11482 thiss!201)) (tuple2!25583 (_1!12801 keyValue!4) (_2!12801 keyValue!4)))))))

(declare-fun c!146327 () Bool)

(assert (=> bm!72409 (= c!146327 c!146330)))

(declare-fun b!1579310 () Bool)

(declare-fun res!1079130 () Bool)

(declare-fun e!881036 () Bool)

(assert (=> b!1579310 (=> (not res!1079130) (not e!881036))))

(declare-fun lt!676442 () List!36939)

(assert (=> b!1579310 (= res!1079130 (containsKey!884 lt!676442 (_1!12801 keyValue!4)))))

(declare-fun bm!72410 () Bool)

(declare-fun call!72414 () List!36939)

(assert (=> bm!72410 (= call!72413 call!72414)))

(declare-fun d!166199 () Bool)

(assert (=> d!166199 e!881036))

(declare-fun res!1079129 () Bool)

(assert (=> d!166199 (=> (not res!1079129) (not e!881036))))

(assert (=> d!166199 (= res!1079129 (isStrictlySorted!1037 lt!676442))))

(declare-fun e!881035 () List!36939)

(assert (=> d!166199 (= lt!676442 e!881035)))

(assert (=> d!166199 (= c!146330 (and (is-Cons!36935 (toList!11482 thiss!201)) (bvslt (_1!12801 (h!38479 (toList!11482 thiss!201))) (_1!12801 keyValue!4))))))

(assert (=> d!166199 (isStrictlySorted!1037 (toList!11482 thiss!201))))

(assert (=> d!166199 (= (insertStrictlySorted!609 (toList!11482 thiss!201) (_1!12801 keyValue!4) (_2!12801 keyValue!4)) lt!676442)))

(declare-fun c!146329 () Bool)

(declare-fun c!146328 () Bool)

(declare-fun b!1579311 () Bool)

(assert (=> b!1579311 (= e!881037 (ite c!146328 (t!51860 (toList!11482 thiss!201)) (ite c!146329 (Cons!36935 (h!38479 (toList!11482 thiss!201)) (t!51860 (toList!11482 thiss!201))) Nil!36936)))))

(declare-fun b!1579312 () Bool)

(declare-fun e!881038 () List!36939)

(assert (=> b!1579312 (= e!881035 e!881038)))

(assert (=> b!1579312 (= c!146328 (and (is-Cons!36935 (toList!11482 thiss!201)) (= (_1!12801 (h!38479 (toList!11482 thiss!201))) (_1!12801 keyValue!4))))))

(declare-fun b!1579313 () Bool)

(assert (=> b!1579313 (= e!881038 call!72414)))

(declare-fun b!1579314 () Bool)

(assert (=> b!1579314 (= c!146329 (and (is-Cons!36935 (toList!11482 thiss!201)) (bvsgt (_1!12801 (h!38479 (toList!11482 thiss!201))) (_1!12801 keyValue!4))))))

(assert (=> b!1579314 (= e!881038 e!881034)))

(declare-fun b!1579315 () Bool)

(assert (=> b!1579315 (= e!881035 call!72412)))

(declare-fun b!1579316 () Bool)

(assert (=> b!1579316 (= e!881034 call!72413)))

(declare-fun b!1579317 () Bool)

(assert (=> b!1579317 (= e!881037 (insertStrictlySorted!609 (t!51860 (toList!11482 thiss!201)) (_1!12801 keyValue!4) (_2!12801 keyValue!4)))))

(declare-fun b!1579318 () Bool)

(assert (=> b!1579318 (= e!881036 (contains!10467 lt!676442 (tuple2!25583 (_1!12801 keyValue!4) (_2!12801 keyValue!4))))))

(declare-fun bm!72411 () Bool)

(assert (=> bm!72411 (= call!72414 call!72412)))

(assert (= (and d!166199 c!146330) b!1579315))

(assert (= (and d!166199 (not c!146330)) b!1579312))

(assert (= (and b!1579312 c!146328) b!1579313))

(assert (= (and b!1579312 (not c!146328)) b!1579314))

(assert (= (and b!1579314 c!146329) b!1579316))

(assert (= (and b!1579314 (not c!146329)) b!1579309))

(assert (= (or b!1579316 b!1579309) bm!72410))

(assert (= (or b!1579313 bm!72410) bm!72411))

(assert (= (or b!1579315 bm!72411) bm!72409))

(assert (= (and bm!72409 c!146327) b!1579317))

(assert (= (and bm!72409 (not c!146327)) b!1579311))

(assert (= (and d!166199 res!1079129) b!1579310))

(assert (= (and b!1579310 res!1079130) b!1579318))

(declare-fun m!1451145 () Bool)

(assert (=> b!1579317 m!1451145))

(declare-fun m!1451147 () Bool)

(assert (=> b!1579318 m!1451147))

(declare-fun m!1451149 () Bool)

(assert (=> d!166199 m!1451149))

(declare-fun m!1451151 () Bool)

(assert (=> d!166199 m!1451151))

(declare-fun m!1451153 () Bool)

(assert (=> b!1579310 m!1451153))

(declare-fun m!1451155 () Bool)

(assert (=> bm!72409 m!1451155))

(assert (=> start!136994 d!166199))

(declare-fun d!166207 () Bool)

(assert (=> d!166207 (= (inv!58954 thiss!201) (isStrictlySorted!1037 (toList!11482 thiss!201)))))

(declare-fun bs!45730 () Bool)

(assert (= bs!45730 d!166207))

(assert (=> bs!45730 m!1451151))

(assert (=> start!136994 d!166207))

(declare-fun d!166209 () Bool)

(declare-fun res!1079143 () Bool)

