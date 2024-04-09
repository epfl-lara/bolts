; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137028 () Bool)

(assert start!137028)

(declare-datatypes ((B!2596 0))(
  ( (B!2597 (val!19660 Int)) )
))
(declare-datatypes ((tuple2!25586 0))(
  ( (tuple2!25587 (_1!12803 (_ BitVec 64)) (_2!12803 B!2596)) )
))
(declare-datatypes ((List!36941 0))(
  ( (Nil!36938) (Cons!36937 (h!38481 tuple2!25586) (t!51862 List!36941)) )
))
(declare-fun lt!676455 () List!36941)

(declare-fun keyValue!4 () tuple2!25586)

(declare-datatypes ((Option!883 0))(
  ( (Some!882 (v!22370 B!2596)) (None!881) )
))
(declare-fun getValueByKey!808 (List!36941 (_ BitVec 64)) Option!883)

(assert (=> start!137028 (= (getValueByKey!808 lt!676455 (_1!12803 keyValue!4)) (Some!882 (_2!12803 keyValue!4)))))

(declare-datatypes ((Unit!52160 0))(
  ( (Unit!52161) )
))
(declare-fun lt!676456 () Unit!52160)

(declare-fun lemmaContainsTupThenGetReturnValue!391 (List!36941 (_ BitVec 64) B!2596) Unit!52160)

(assert (=> start!137028 (= lt!676456 (lemmaContainsTupThenGetReturnValue!391 lt!676455 (_1!12803 keyValue!4) (_2!12803 keyValue!4)))))

(declare-datatypes ((ListLongMap!22937 0))(
  ( (ListLongMap!22938 (toList!11484 List!36941)) )
))
(declare-fun thiss!201 () ListLongMap!22937)

(declare-fun insertStrictlySorted!611 (List!36941 (_ BitVec 64) B!2596) List!36941)

(assert (=> start!137028 (= lt!676455 (insertStrictlySorted!611 (toList!11484 thiss!201) (_1!12803 keyValue!4) (_2!12803 keyValue!4)))))

(declare-fun inv!58961 (ListLongMap!22937) Bool)

(assert (=> start!137028 (not (inv!58961 (ListLongMap!22938 lt!676455)))))

(declare-fun e!881073 () Bool)

(assert (=> start!137028 (and (inv!58961 thiss!201) e!881073)))

(declare-fun tp_is_empty!39141 () Bool)

(assert (=> start!137028 tp_is_empty!39141))

(declare-fun b!1579373 () Bool)

(declare-fun tp!114346 () Bool)

(assert (=> b!1579373 (= e!881073 tp!114346)))

(assert (= start!137028 b!1579373))

(declare-fun m!1451193 () Bool)

(assert (=> start!137028 m!1451193))

(declare-fun m!1451195 () Bool)

(assert (=> start!137028 m!1451195))

(declare-fun m!1451197 () Bool)

(assert (=> start!137028 m!1451197))

(declare-fun m!1451199 () Bool)

(assert (=> start!137028 m!1451199))

(declare-fun m!1451201 () Bool)

(assert (=> start!137028 m!1451201))

(check-sat (not start!137028) (not b!1579373) tp_is_empty!39141)
(check-sat)
(get-model)

(declare-fun d!166221 () Bool)

(assert (=> d!166221 (= (getValueByKey!808 lt!676455 (_1!12803 keyValue!4)) (Some!882 (_2!12803 keyValue!4)))))

(declare-fun lt!676468 () Unit!52160)

(declare-fun choose!2096 (List!36941 (_ BitVec 64) B!2596) Unit!52160)

(assert (=> d!166221 (= lt!676468 (choose!2096 lt!676455 (_1!12803 keyValue!4) (_2!12803 keyValue!4)))))

(declare-fun e!881088 () Bool)

(assert (=> d!166221 e!881088))

(declare-fun res!1079155 () Bool)

(assert (=> d!166221 (=> (not res!1079155) (not e!881088))))

(declare-fun isStrictlySorted!1040 (List!36941) Bool)

(assert (=> d!166221 (= res!1079155 (isStrictlySorted!1040 lt!676455))))

(assert (=> d!166221 (= (lemmaContainsTupThenGetReturnValue!391 lt!676455 (_1!12803 keyValue!4) (_2!12803 keyValue!4)) lt!676468)))

(declare-fun b!1579399 () Bool)

(declare-fun res!1079156 () Bool)

(assert (=> b!1579399 (=> (not res!1079156) (not e!881088))))

(declare-fun containsKey!886 (List!36941 (_ BitVec 64)) Bool)

(assert (=> b!1579399 (= res!1079156 (containsKey!886 lt!676455 (_1!12803 keyValue!4)))))

(declare-fun b!1579400 () Bool)

(declare-fun contains!10470 (List!36941 tuple2!25586) Bool)

(assert (=> b!1579400 (= e!881088 (contains!10470 lt!676455 (tuple2!25587 (_1!12803 keyValue!4) (_2!12803 keyValue!4))))))

(assert (= (and d!166221 res!1079155) b!1579399))

(assert (= (and b!1579399 res!1079156) b!1579400))

(assert (=> d!166221 m!1451199))

(declare-fun m!1451225 () Bool)

(assert (=> d!166221 m!1451225))

(declare-fun m!1451227 () Bool)

(assert (=> d!166221 m!1451227))

(declare-fun m!1451231 () Bool)

(assert (=> b!1579399 m!1451231))

(declare-fun m!1451233 () Bool)

(assert (=> b!1579400 m!1451233))

(assert (=> start!137028 d!166221))

(declare-fun b!1579432 () Bool)

(declare-fun e!881104 () Option!883)

(assert (=> b!1579432 (= e!881104 None!881)))

(declare-fun b!1579429 () Bool)

(declare-fun e!881103 () Option!883)

(assert (=> b!1579429 (= e!881103 (Some!882 (_2!12803 (h!38481 lt!676455))))))

(declare-fun b!1579430 () Bool)

(assert (=> b!1579430 (= e!881103 e!881104)))

(declare-fun c!146362 () Bool)

(get-info :version)

(assert (=> b!1579430 (= c!146362 (and ((_ is Cons!36937) lt!676455) (not (= (_1!12803 (h!38481 lt!676455)) (_1!12803 keyValue!4)))))))

(declare-fun b!1579431 () Bool)

(assert (=> b!1579431 (= e!881104 (getValueByKey!808 (t!51862 lt!676455) (_1!12803 keyValue!4)))))

(declare-fun d!166231 () Bool)

(declare-fun c!146361 () Bool)

(assert (=> d!166231 (= c!146361 (and ((_ is Cons!36937) lt!676455) (= (_1!12803 (h!38481 lt!676455)) (_1!12803 keyValue!4))))))

(assert (=> d!166231 (= (getValueByKey!808 lt!676455 (_1!12803 keyValue!4)) e!881103)))

(assert (= (and d!166231 c!146361) b!1579429))

(assert (= (and d!166231 (not c!146361)) b!1579430))

(assert (= (and b!1579430 c!146362) b!1579431))

(assert (= (and b!1579430 (not c!146362)) b!1579432))

(declare-fun m!1451237 () Bool)

(assert (=> b!1579431 m!1451237))

(assert (=> start!137028 d!166231))

(declare-fun b!1579506 () Bool)

(declare-fun res!1079178 () Bool)

(declare-fun e!881144 () Bool)

(assert (=> b!1579506 (=> (not res!1079178) (not e!881144))))

(declare-fun lt!676479 () List!36941)

(assert (=> b!1579506 (= res!1079178 (containsKey!886 lt!676479 (_1!12803 keyValue!4)))))

(declare-fun b!1579507 () Bool)

(assert (=> b!1579507 (= e!881144 (contains!10470 lt!676479 (tuple2!25587 (_1!12803 keyValue!4) (_2!12803 keyValue!4))))))

(declare-fun d!166235 () Bool)

(assert (=> d!166235 e!881144))

(declare-fun res!1079177 () Bool)

(assert (=> d!166235 (=> (not res!1079177) (not e!881144))))

(assert (=> d!166235 (= res!1079177 (isStrictlySorted!1040 lt!676479))))

(declare-fun e!881142 () List!36941)

(assert (=> d!166235 (= lt!676479 e!881142)))

(declare-fun c!146388 () Bool)

(assert (=> d!166235 (= c!146388 (and ((_ is Cons!36937) (toList!11484 thiss!201)) (bvslt (_1!12803 (h!38481 (toList!11484 thiss!201))) (_1!12803 keyValue!4))))))

(assert (=> d!166235 (isStrictlySorted!1040 (toList!11484 thiss!201))))

(assert (=> d!166235 (= (insertStrictlySorted!611 (toList!11484 thiss!201) (_1!12803 keyValue!4) (_2!12803 keyValue!4)) lt!676479)))

(declare-fun b!1579508 () Bool)

(declare-fun e!881145 () List!36941)

(assert (=> b!1579508 (= e!881142 e!881145)))

(declare-fun c!146390 () Bool)

(assert (=> b!1579508 (= c!146390 (and ((_ is Cons!36937) (toList!11484 thiss!201)) (= (_1!12803 (h!38481 (toList!11484 thiss!201))) (_1!12803 keyValue!4))))))

(declare-fun b!1579509 () Bool)

(declare-fun e!881146 () List!36941)

(assert (=> b!1579509 (= e!881146 (insertStrictlySorted!611 (t!51862 (toList!11484 thiss!201)) (_1!12803 keyValue!4) (_2!12803 keyValue!4)))))

(declare-fun c!146389 () Bool)

(declare-fun b!1579510 () Bool)

(assert (=> b!1579510 (= e!881146 (ite c!146390 (t!51862 (toList!11484 thiss!201)) (ite c!146389 (Cons!36937 (h!38481 (toList!11484 thiss!201)) (t!51862 (toList!11484 thiss!201))) Nil!36938)))))

(declare-fun bm!72441 () Bool)

(declare-fun call!72446 () List!36941)

(declare-fun call!72445 () List!36941)

(assert (=> bm!72441 (= call!72446 call!72445)))

(declare-fun b!1579511 () Bool)

(declare-fun call!72444 () List!36941)

(assert (=> b!1579511 (= e!881142 call!72444)))

(declare-fun b!1579512 () Bool)

(assert (=> b!1579512 (= c!146389 (and ((_ is Cons!36937) (toList!11484 thiss!201)) (bvsgt (_1!12803 (h!38481 (toList!11484 thiss!201))) (_1!12803 keyValue!4))))))

(declare-fun e!881143 () List!36941)

(assert (=> b!1579512 (= e!881145 e!881143)))

(declare-fun bm!72442 () Bool)

(declare-fun $colon$colon!1014 (List!36941 tuple2!25586) List!36941)

(assert (=> bm!72442 (= call!72444 ($colon$colon!1014 e!881146 (ite c!146388 (h!38481 (toList!11484 thiss!201)) (tuple2!25587 (_1!12803 keyValue!4) (_2!12803 keyValue!4)))))))

(declare-fun c!146387 () Bool)

(assert (=> bm!72442 (= c!146387 c!146388)))

(declare-fun bm!72443 () Bool)

(assert (=> bm!72443 (= call!72445 call!72444)))

(declare-fun b!1579513 () Bool)

(assert (=> b!1579513 (= e!881143 call!72446)))

(declare-fun b!1579514 () Bool)

(assert (=> b!1579514 (= e!881145 call!72445)))

(declare-fun b!1579515 () Bool)

(assert (=> b!1579515 (= e!881143 call!72446)))

(assert (= (and d!166235 c!146388) b!1579511))

(assert (= (and d!166235 (not c!146388)) b!1579508))

(assert (= (and b!1579508 c!146390) b!1579514))

(assert (= (and b!1579508 (not c!146390)) b!1579512))

(assert (= (and b!1579512 c!146389) b!1579515))

(assert (= (and b!1579512 (not c!146389)) b!1579513))

(assert (= (or b!1579515 b!1579513) bm!72441))

(assert (= (or b!1579514 bm!72441) bm!72443))

(assert (= (or b!1579511 bm!72443) bm!72442))

(assert (= (and bm!72442 c!146387) b!1579509))

(assert (= (and bm!72442 (not c!146387)) b!1579510))

(assert (= (and d!166235 res!1079177) b!1579506))

(assert (= (and b!1579506 res!1079178) b!1579507))

(declare-fun m!1451261 () Bool)

(assert (=> b!1579506 m!1451261))

(declare-fun m!1451263 () Bool)

(assert (=> b!1579507 m!1451263))

(declare-fun m!1451265 () Bool)

(assert (=> bm!72442 m!1451265))

(declare-fun m!1451267 () Bool)

(assert (=> d!166235 m!1451267))

(declare-fun m!1451269 () Bool)

(assert (=> d!166235 m!1451269))

(declare-fun m!1451271 () Bool)

(assert (=> b!1579509 m!1451271))

(assert (=> start!137028 d!166235))

(declare-fun d!166243 () Bool)

(assert (=> d!166243 (= (inv!58961 thiss!201) (isStrictlySorted!1040 (toList!11484 thiss!201)))))

(declare-fun bs!45740 () Bool)

(assert (= bs!45740 d!166243))

(assert (=> bs!45740 m!1451269))

(assert (=> start!137028 d!166243))

(declare-fun d!166245 () Bool)

(assert (=> d!166245 (= (inv!58961 (ListLongMap!22938 lt!676455)) (isStrictlySorted!1040 (toList!11484 (ListLongMap!22938 lt!676455))))))

(declare-fun bs!45741 () Bool)

(assert (= bs!45741 d!166245))

(declare-fun m!1451283 () Bool)

(assert (=> bs!45741 m!1451283))

(assert (=> start!137028 d!166245))

(declare-fun b!1579535 () Bool)

(declare-fun e!881157 () Bool)

(declare-fun tp!114358 () Bool)

(assert (=> b!1579535 (= e!881157 (and tp_is_empty!39141 tp!114358))))

(assert (=> b!1579373 (= tp!114346 e!881157)))

(assert (= (and b!1579373 ((_ is Cons!36937) (toList!11484 thiss!201))) b!1579535))

(check-sat (not d!166221) (not b!1579507) (not b!1579535) (not b!1579509) tp_is_empty!39141 (not bm!72442) (not b!1579399) (not b!1579431) (not d!166243) (not b!1579400) (not d!166235) (not d!166245) (not b!1579506))
(check-sat)
