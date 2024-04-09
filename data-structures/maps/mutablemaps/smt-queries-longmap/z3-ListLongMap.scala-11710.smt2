; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137058 () Bool)

(assert start!137058)

(declare-fun res!1079186 () Bool)

(declare-fun e!881169 () Bool)

(assert (=> start!137058 (=> (not res!1079186) (not e!881169))))

(declare-datatypes ((B!2602 0))(
  ( (B!2603 (val!19663 Int)) )
))
(declare-datatypes ((tuple2!25592 0))(
  ( (tuple2!25593 (_1!12806 (_ BitVec 64)) (_2!12806 B!2602)) )
))
(declare-datatypes ((List!36944 0))(
  ( (Nil!36941) (Cons!36940 (h!38484 tuple2!25592) (t!51865 List!36944)) )
))
(declare-fun lt!676491 () List!36944)

(declare-fun keyValue!4 () tuple2!25592)

(declare-datatypes ((ListLongMap!22943 0))(
  ( (ListLongMap!22944 (toList!11487 List!36944)) )
))
(declare-fun contains!10473 (ListLongMap!22943 (_ BitVec 64)) Bool)

(assert (=> start!137058 (= res!1079186 (contains!10473 (ListLongMap!22944 lt!676491) (_1!12806 keyValue!4)))))

(declare-datatypes ((Option!886 0))(
  ( (Some!885 (v!22373 B!2602)) (None!884) )
))
(declare-fun getValueByKey!811 (List!36944 (_ BitVec 64)) Option!886)

(assert (=> start!137058 (= (getValueByKey!811 lt!676491 (_1!12806 keyValue!4)) (Some!885 (_2!12806 keyValue!4)))))

(declare-datatypes ((Unit!52166 0))(
  ( (Unit!52167) )
))
(declare-fun lt!676492 () Unit!52166)

(declare-fun lemmaContainsTupThenGetReturnValue!394 (List!36944 (_ BitVec 64) B!2602) Unit!52166)

(assert (=> start!137058 (= lt!676492 (lemmaContainsTupThenGetReturnValue!394 lt!676491 (_1!12806 keyValue!4) (_2!12806 keyValue!4)))))

(declare-fun thiss!201 () ListLongMap!22943)

(declare-fun insertStrictlySorted!614 (List!36944 (_ BitVec 64) B!2602) List!36944)

(assert (=> start!137058 (= lt!676491 (insertStrictlySorted!614 (toList!11487 thiss!201) (_1!12806 keyValue!4) (_2!12806 keyValue!4)))))

(assert (=> start!137058 (not e!881169)))

(declare-fun e!881168 () Bool)

(declare-fun inv!58969 (ListLongMap!22943) Bool)

(assert (=> start!137058 (and (inv!58969 thiss!201) e!881168)))

(declare-fun tp_is_empty!39147 () Bool)

(assert (=> start!137058 tp_is_empty!39147))

(declare-fun b!1579546 () Bool)

(declare-fun contains!10474 (List!36944 tuple2!25592) Bool)

(assert (=> b!1579546 (= e!881169 (contains!10474 lt!676491 keyValue!4))))

(declare-fun b!1579547 () Bool)

(declare-fun tp!114364 () Bool)

(assert (=> b!1579547 (= e!881168 tp!114364)))

(assert (= (and start!137058 res!1079186) b!1579546))

(assert (= start!137058 b!1579547))

(declare-fun m!1451297 () Bool)

(assert (=> start!137058 m!1451297))

(declare-fun m!1451299 () Bool)

(assert (=> start!137058 m!1451299))

(declare-fun m!1451301 () Bool)

(assert (=> start!137058 m!1451301))

(declare-fun m!1451303 () Bool)

(assert (=> start!137058 m!1451303))

(declare-fun m!1451305 () Bool)

(assert (=> start!137058 m!1451305))

(declare-fun m!1451307 () Bool)

(assert (=> b!1579546 m!1451307))

(check-sat (not b!1579546) (not start!137058) (not b!1579547) tp_is_empty!39147)
(check-sat)
(get-model)

(declare-fun d!166249 () Bool)

(declare-fun lt!676501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!830 (List!36944) (InoxSet tuple2!25592))

(assert (=> d!166249 (= lt!676501 (select (content!830 lt!676491) keyValue!4))))

(declare-fun e!881181 () Bool)

(assert (=> d!166249 (= lt!676501 e!881181)))

(declare-fun res!1079195 () Bool)

(assert (=> d!166249 (=> (not res!1079195) (not e!881181))))

(get-info :version)

(assert (=> d!166249 (= res!1079195 ((_ is Cons!36940) lt!676491))))

(assert (=> d!166249 (= (contains!10474 lt!676491 keyValue!4) lt!676501)))

(declare-fun b!1579558 () Bool)

(declare-fun e!881180 () Bool)

(assert (=> b!1579558 (= e!881181 e!881180)))

(declare-fun res!1079194 () Bool)

(assert (=> b!1579558 (=> res!1079194 e!881180)))

(assert (=> b!1579558 (= res!1079194 (= (h!38484 lt!676491) keyValue!4))))

(declare-fun b!1579559 () Bool)

(assert (=> b!1579559 (= e!881180 (contains!10474 (t!51865 lt!676491) keyValue!4))))

(assert (= (and d!166249 res!1079195) b!1579558))

(assert (= (and b!1579558 (not res!1079194)) b!1579559))

(declare-fun m!1451321 () Bool)

(assert (=> d!166249 m!1451321))

(declare-fun m!1451323 () Bool)

(assert (=> d!166249 m!1451323))

(declare-fun m!1451325 () Bool)

(assert (=> b!1579559 m!1451325))

(assert (=> b!1579546 d!166249))

(declare-fun d!166255 () Bool)

(declare-fun isStrictlySorted!1041 (List!36944) Bool)

(assert (=> d!166255 (= (inv!58969 thiss!201) (isStrictlySorted!1041 (toList!11487 thiss!201)))))

(declare-fun bs!45745 () Bool)

(assert (= bs!45745 d!166255))

(declare-fun m!1451327 () Bool)

(assert (=> bs!45745 m!1451327))

(assert (=> start!137058 d!166255))

(declare-fun d!166257 () Bool)

(declare-fun e!881198 () Bool)

(assert (=> d!166257 e!881198))

(declare-fun res!1079204 () Bool)

(assert (=> d!166257 (=> res!1079204 e!881198)))

(declare-fun lt!676516 () Bool)

(assert (=> d!166257 (= res!1079204 (not lt!676516))))

(declare-fun lt!676514 () Bool)

(assert (=> d!166257 (= lt!676516 lt!676514)))

(declare-fun lt!676515 () Unit!52166)

(declare-fun e!881199 () Unit!52166)

(assert (=> d!166257 (= lt!676515 e!881199)))

(declare-fun c!146403 () Bool)

(assert (=> d!166257 (= c!146403 lt!676514)))

(declare-fun containsKey!888 (List!36944 (_ BitVec 64)) Bool)

(assert (=> d!166257 (= lt!676514 (containsKey!888 (toList!11487 (ListLongMap!22944 lt!676491)) (_1!12806 keyValue!4)))))

(assert (=> d!166257 (= (contains!10473 (ListLongMap!22944 lt!676491) (_1!12806 keyValue!4)) lt!676516)))

(declare-fun b!1579584 () Bool)

(declare-fun lt!676513 () Unit!52166)

(assert (=> b!1579584 (= e!881199 lt!676513)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!542 (List!36944 (_ BitVec 64)) Unit!52166)

(assert (=> b!1579584 (= lt!676513 (lemmaContainsKeyImpliesGetValueByKeyDefined!542 (toList!11487 (ListLongMap!22944 lt!676491)) (_1!12806 keyValue!4)))))

(declare-fun isDefined!591 (Option!886) Bool)

(assert (=> b!1579584 (isDefined!591 (getValueByKey!811 (toList!11487 (ListLongMap!22944 lt!676491)) (_1!12806 keyValue!4)))))

(declare-fun b!1579585 () Bool)

(declare-fun Unit!52170 () Unit!52166)

(assert (=> b!1579585 (= e!881199 Unit!52170)))

(declare-fun b!1579586 () Bool)

(assert (=> b!1579586 (= e!881198 (isDefined!591 (getValueByKey!811 (toList!11487 (ListLongMap!22944 lt!676491)) (_1!12806 keyValue!4))))))

(assert (= (and d!166257 c!146403) b!1579584))

(assert (= (and d!166257 (not c!146403)) b!1579585))

(assert (= (and d!166257 (not res!1079204)) b!1579586))

(declare-fun m!1451339 () Bool)

(assert (=> d!166257 m!1451339))

(declare-fun m!1451341 () Bool)

(assert (=> b!1579584 m!1451341))

(declare-fun m!1451343 () Bool)

(assert (=> b!1579584 m!1451343))

(assert (=> b!1579584 m!1451343))

(declare-fun m!1451345 () Bool)

(assert (=> b!1579584 m!1451345))

(assert (=> b!1579586 m!1451343))

(assert (=> b!1579586 m!1451343))

(assert (=> b!1579586 m!1451345))

(assert (=> start!137058 d!166257))

(declare-fun b!1579644 () Bool)

(declare-fun e!881232 () List!36944)

(declare-fun e!881230 () List!36944)

(assert (=> b!1579644 (= e!881232 e!881230)))

(declare-fun c!146429 () Bool)

(assert (=> b!1579644 (= c!146429 (and ((_ is Cons!36940) (toList!11487 thiss!201)) (= (_1!12806 (h!38484 (toList!11487 thiss!201))) (_1!12806 keyValue!4))))))

(declare-fun b!1579645 () Bool)

(declare-fun e!881234 () List!36944)

(declare-fun call!72463 () List!36944)

(assert (=> b!1579645 (= e!881234 call!72463)))

(declare-fun bm!72459 () Bool)

(declare-fun call!72462 () List!36944)

(assert (=> bm!72459 (= call!72463 call!72462)))

(declare-fun b!1579646 () Bool)

(assert (=> b!1579646 (= e!881230 call!72462)))

(declare-fun b!1579647 () Bool)

(declare-fun res!1079216 () Bool)

(declare-fun e!881231 () Bool)

(assert (=> b!1579647 (=> (not res!1079216) (not e!881231))))

(declare-fun lt!676533 () List!36944)

(assert (=> b!1579647 (= res!1079216 (containsKey!888 lt!676533 (_1!12806 keyValue!4)))))

(declare-fun b!1579648 () Bool)

(declare-fun call!72464 () List!36944)

(assert (=> b!1579648 (= e!881232 call!72464)))

(declare-fun bm!72460 () Bool)

(declare-fun e!881233 () List!36944)

(declare-fun c!146430 () Bool)

(declare-fun $colon$colon!1015 (List!36944 tuple2!25592) List!36944)

(assert (=> bm!72460 (= call!72464 ($colon$colon!1015 e!881233 (ite c!146430 (h!38484 (toList!11487 thiss!201)) (tuple2!25593 (_1!12806 keyValue!4) (_2!12806 keyValue!4)))))))

(declare-fun c!146427 () Bool)

(assert (=> bm!72460 (= c!146427 c!146430)))

(declare-fun b!1579649 () Bool)

(assert (=> b!1579649 (= e!881234 call!72463)))

(declare-fun d!166265 () Bool)

(assert (=> d!166265 e!881231))

(declare-fun res!1079217 () Bool)

(assert (=> d!166265 (=> (not res!1079217) (not e!881231))))

(assert (=> d!166265 (= res!1079217 (isStrictlySorted!1041 lt!676533))))

(assert (=> d!166265 (= lt!676533 e!881232)))

(assert (=> d!166265 (= c!146430 (and ((_ is Cons!36940) (toList!11487 thiss!201)) (bvslt (_1!12806 (h!38484 (toList!11487 thiss!201))) (_1!12806 keyValue!4))))))

(assert (=> d!166265 (isStrictlySorted!1041 (toList!11487 thiss!201))))

(assert (=> d!166265 (= (insertStrictlySorted!614 (toList!11487 thiss!201) (_1!12806 keyValue!4) (_2!12806 keyValue!4)) lt!676533)))

(declare-fun b!1579650 () Bool)

(declare-fun c!146428 () Bool)

(assert (=> b!1579650 (= c!146428 (and ((_ is Cons!36940) (toList!11487 thiss!201)) (bvsgt (_1!12806 (h!38484 (toList!11487 thiss!201))) (_1!12806 keyValue!4))))))

(assert (=> b!1579650 (= e!881230 e!881234)))

(declare-fun b!1579651 () Bool)

(assert (=> b!1579651 (= e!881231 (contains!10474 lt!676533 (tuple2!25593 (_1!12806 keyValue!4) (_2!12806 keyValue!4))))))

(declare-fun b!1579652 () Bool)

(assert (=> b!1579652 (= e!881233 (ite c!146429 (t!51865 (toList!11487 thiss!201)) (ite c!146428 (Cons!36940 (h!38484 (toList!11487 thiss!201)) (t!51865 (toList!11487 thiss!201))) Nil!36941)))))

(declare-fun b!1579653 () Bool)

(assert (=> b!1579653 (= e!881233 (insertStrictlySorted!614 (t!51865 (toList!11487 thiss!201)) (_1!12806 keyValue!4) (_2!12806 keyValue!4)))))

(declare-fun bm!72461 () Bool)

(assert (=> bm!72461 (= call!72462 call!72464)))

(assert (= (and d!166265 c!146430) b!1579648))

(assert (= (and d!166265 (not c!146430)) b!1579644))

(assert (= (and b!1579644 c!146429) b!1579646))

(assert (= (and b!1579644 (not c!146429)) b!1579650))

(assert (= (and b!1579650 c!146428) b!1579649))

(assert (= (and b!1579650 (not c!146428)) b!1579645))

(assert (= (or b!1579649 b!1579645) bm!72459))

(assert (= (or b!1579646 bm!72459) bm!72461))

(assert (= (or b!1579648 bm!72461) bm!72460))

(assert (= (and bm!72460 c!146427) b!1579653))

(assert (= (and bm!72460 (not c!146427)) b!1579652))

(assert (= (and d!166265 res!1079217) b!1579647))

(assert (= (and b!1579647 res!1079216) b!1579651))

(declare-fun m!1451357 () Bool)

(assert (=> bm!72460 m!1451357))

(declare-fun m!1451359 () Bool)

(assert (=> b!1579647 m!1451359))

(declare-fun m!1451361 () Bool)

(assert (=> b!1579651 m!1451361))

(declare-fun m!1451363 () Bool)

(assert (=> b!1579653 m!1451363))

(declare-fun m!1451365 () Bool)

(assert (=> d!166265 m!1451365))

(assert (=> d!166265 m!1451327))

(assert (=> start!137058 d!166265))

(declare-fun d!166271 () Bool)

(assert (=> d!166271 (= (getValueByKey!811 lt!676491 (_1!12806 keyValue!4)) (Some!885 (_2!12806 keyValue!4)))))

(declare-fun lt!676539 () Unit!52166)

(declare-fun choose!2098 (List!36944 (_ BitVec 64) B!2602) Unit!52166)

(assert (=> d!166271 (= lt!676539 (choose!2098 lt!676491 (_1!12806 keyValue!4) (_2!12806 keyValue!4)))))

(declare-fun e!881246 () Bool)

(assert (=> d!166271 e!881246))

(declare-fun res!1079228 () Bool)

(assert (=> d!166271 (=> (not res!1079228) (not e!881246))))

(assert (=> d!166271 (= res!1079228 (isStrictlySorted!1041 lt!676491))))

(assert (=> d!166271 (= (lemmaContainsTupThenGetReturnValue!394 lt!676491 (_1!12806 keyValue!4) (_2!12806 keyValue!4)) lt!676539)))

(declare-fun b!1579676 () Bool)

(declare-fun res!1079229 () Bool)

(assert (=> b!1579676 (=> (not res!1079229) (not e!881246))))

(assert (=> b!1579676 (= res!1079229 (containsKey!888 lt!676491 (_1!12806 keyValue!4)))))

(declare-fun b!1579677 () Bool)

(assert (=> b!1579677 (= e!881246 (contains!10474 lt!676491 (tuple2!25593 (_1!12806 keyValue!4) (_2!12806 keyValue!4))))))

(assert (= (and d!166271 res!1079228) b!1579676))

(assert (= (and b!1579676 res!1079229) b!1579677))

(assert (=> d!166271 m!1451305))

(declare-fun m!1451367 () Bool)

(assert (=> d!166271 m!1451367))

(declare-fun m!1451369 () Bool)

(assert (=> d!166271 m!1451369))

(declare-fun m!1451371 () Bool)

(assert (=> b!1579676 m!1451371))

(declare-fun m!1451373 () Bool)

(assert (=> b!1579677 m!1451373))

(assert (=> start!137058 d!166271))

(declare-fun b!1579691 () Bool)

(declare-fun e!881253 () Option!886)

(assert (=> b!1579691 (= e!881253 None!884)))

(declare-fun b!1579689 () Bool)

(declare-fun e!881252 () Option!886)

(assert (=> b!1579689 (= e!881252 e!881253)))

(declare-fun c!146442 () Bool)

(assert (=> b!1579689 (= c!146442 (and ((_ is Cons!36940) lt!676491) (not (= (_1!12806 (h!38484 lt!676491)) (_1!12806 keyValue!4)))))))

(declare-fun d!166273 () Bool)

(declare-fun c!146441 () Bool)

(assert (=> d!166273 (= c!146441 (and ((_ is Cons!36940) lt!676491) (= (_1!12806 (h!38484 lt!676491)) (_1!12806 keyValue!4))))))

(assert (=> d!166273 (= (getValueByKey!811 lt!676491 (_1!12806 keyValue!4)) e!881252)))

(declare-fun b!1579688 () Bool)

(assert (=> b!1579688 (= e!881252 (Some!885 (_2!12806 (h!38484 lt!676491))))))

(declare-fun b!1579690 () Bool)

(assert (=> b!1579690 (= e!881253 (getValueByKey!811 (t!51865 lt!676491) (_1!12806 keyValue!4)))))

(assert (= (and d!166273 c!146441) b!1579688))

(assert (= (and d!166273 (not c!146441)) b!1579689))

(assert (= (and b!1579689 c!146442) b!1579690))

(assert (= (and b!1579689 (not c!146442)) b!1579691))

(declare-fun m!1451395 () Bool)

(assert (=> b!1579690 m!1451395))

(assert (=> start!137058 d!166273))

(declare-fun b!1579696 () Bool)

(declare-fun e!881256 () Bool)

(declare-fun tp!114370 () Bool)

(assert (=> b!1579696 (= e!881256 (and tp_is_empty!39147 tp!114370))))

(assert (=> b!1579547 (= tp!114364 e!881256)))

(assert (= (and b!1579547 ((_ is Cons!36940) (toList!11487 thiss!201))) b!1579696))

(check-sat (not b!1579653) (not b!1579584) (not d!166257) (not d!166249) (not b!1579676) (not d!166265) (not b!1579586) (not b!1579559) (not bm!72460) (not d!166271) (not b!1579696) (not d!166255) tp_is_empty!39147 (not b!1579690) (not b!1579647) (not b!1579651) (not b!1579677))
(check-sat)
