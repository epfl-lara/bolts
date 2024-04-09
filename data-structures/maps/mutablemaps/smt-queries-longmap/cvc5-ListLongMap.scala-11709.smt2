; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137026 () Bool)

(assert start!137026)

(declare-datatypes ((B!2594 0))(
  ( (B!2595 (val!19659 Int)) )
))
(declare-datatypes ((tuple2!25584 0))(
  ( (tuple2!25585 (_1!12802 (_ BitVec 64)) (_2!12802 B!2594)) )
))
(declare-datatypes ((List!36940 0))(
  ( (Nil!36937) (Cons!36936 (h!38480 tuple2!25584) (t!51861 List!36940)) )
))
(declare-fun lt!676449 () List!36940)

(declare-fun keyValue!4 () tuple2!25584)

(declare-datatypes ((Option!882 0))(
  ( (Some!881 (v!22369 B!2594)) (None!880) )
))
(declare-fun getValueByKey!807 (List!36940 (_ BitVec 64)) Option!882)

(assert (=> start!137026 (= (getValueByKey!807 lt!676449 (_1!12802 keyValue!4)) (Some!881 (_2!12802 keyValue!4)))))

(declare-datatypes ((Unit!52158 0))(
  ( (Unit!52159) )
))
(declare-fun lt!676450 () Unit!52158)

(declare-fun lemmaContainsTupThenGetReturnValue!390 (List!36940 (_ BitVec 64) B!2594) Unit!52158)

(assert (=> start!137026 (= lt!676450 (lemmaContainsTupThenGetReturnValue!390 lt!676449 (_1!12802 keyValue!4) (_2!12802 keyValue!4)))))

(declare-datatypes ((ListLongMap!22935 0))(
  ( (ListLongMap!22936 (toList!11483 List!36940)) )
))
(declare-fun thiss!201 () ListLongMap!22935)

(declare-fun insertStrictlySorted!610 (List!36940 (_ BitVec 64) B!2594) List!36940)

(assert (=> start!137026 (= lt!676449 (insertStrictlySorted!610 (toList!11483 thiss!201) (_1!12802 keyValue!4) (_2!12802 keyValue!4)))))

(declare-fun inv!58960 (ListLongMap!22935) Bool)

(assert (=> start!137026 (not (inv!58960 (ListLongMap!22936 lt!676449)))))

(declare-fun e!881070 () Bool)

(assert (=> start!137026 (and (inv!58960 thiss!201) e!881070)))

(declare-fun tp_is_empty!39139 () Bool)

(assert (=> start!137026 tp_is_empty!39139))

(declare-fun b!1579370 () Bool)

(declare-fun tp!114343 () Bool)

(assert (=> b!1579370 (= e!881070 tp!114343)))

(assert (= start!137026 b!1579370))

(declare-fun m!1451183 () Bool)

(assert (=> start!137026 m!1451183))

(declare-fun m!1451185 () Bool)

(assert (=> start!137026 m!1451185))

(declare-fun m!1451187 () Bool)

(assert (=> start!137026 m!1451187))

(declare-fun m!1451189 () Bool)

(assert (=> start!137026 m!1451189))

(declare-fun m!1451191 () Bool)

(assert (=> start!137026 m!1451191))

(push 1)

(assert (not start!137026))

(assert (not b!1579370))

(assert tp_is_empty!39139)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166217 () Bool)

(assert (=> d!166217 (= (getValueByKey!807 lt!676449 (_1!12802 keyValue!4)) (Some!881 (_2!12802 keyValue!4)))))

(declare-fun lt!676467 () Unit!52158)

(declare-fun choose!2095 (List!36940 (_ BitVec 64) B!2594) Unit!52158)

(assert (=> d!166217 (= lt!676467 (choose!2095 lt!676449 (_1!12802 keyValue!4) (_2!12802 keyValue!4)))))

(declare-fun e!881087 () Bool)

(assert (=> d!166217 e!881087))

(declare-fun res!1079153 () Bool)

(assert (=> d!166217 (=> (not res!1079153) (not e!881087))))

(declare-fun isStrictlySorted!1039 (List!36940) Bool)

(assert (=> d!166217 (= res!1079153 (isStrictlySorted!1039 lt!676449))))

(assert (=> d!166217 (= (lemmaContainsTupThenGetReturnValue!390 lt!676449 (_1!12802 keyValue!4) (_2!12802 keyValue!4)) lt!676467)))

(declare-fun b!1579397 () Bool)

(declare-fun res!1079154 () Bool)

(assert (=> b!1579397 (=> (not res!1079154) (not e!881087))))

(declare-fun containsKey!885 (List!36940 (_ BitVec 64)) Bool)

(assert (=> b!1579397 (= res!1079154 (containsKey!885 lt!676449 (_1!12802 keyValue!4)))))

(declare-fun b!1579398 () Bool)

(declare-fun contains!10468 (List!36940 tuple2!25584) Bool)

(assert (=> b!1579398 (= e!881087 (contains!10468 lt!676449 (tuple2!25585 (_1!12802 keyValue!4) (_2!12802 keyValue!4))))))

(assert (= (and d!166217 res!1079153) b!1579397))

(assert (= (and b!1579397 res!1079154) b!1579398))

(assert (=> d!166217 m!1451183))

(declare-fun m!1451219 () Bool)

(assert (=> d!166217 m!1451219))

(declare-fun m!1451221 () Bool)

(assert (=> d!166217 m!1451221))

(declare-fun m!1451223 () Bool)

(assert (=> b!1579397 m!1451223))

(declare-fun m!1451229 () Bool)

(assert (=> b!1579398 m!1451229))

(assert (=> start!137026 d!166217))

(declare-fun d!166229 () Bool)

(assert (=> d!166229 (= (inv!58960 thiss!201) (isStrictlySorted!1039 (toList!11483 thiss!201)))))

(declare-fun bs!45738 () Bool)

(assert (= bs!45738 d!166229))

(declare-fun m!1451235 () Bool)

(assert (=> bs!45738 m!1451235))

(assert (=> start!137026 d!166229))

(declare-fun b!1579435 () Bool)

(declare-fun e!881106 () Option!882)

(assert (=> b!1579435 (= e!881106 (getValueByKey!807 (t!51861 lt!676449) (_1!12802 keyValue!4)))))

(declare-fun b!1579433 () Bool)

(declare-fun e!881105 () Option!882)

(assert (=> b!1579433 (= e!881105 (Some!881 (_2!12802 (h!38480 lt!676449))))))

(declare-fun b!1579434 () Bool)

(assert (=> b!1579434 (= e!881105 e!881106)))

(declare-fun c!146364 () Bool)

(assert (=> b!1579434 (= c!146364 (and (is-Cons!36936 lt!676449) (not (= (_1!12802 (h!38480 lt!676449)) (_1!12802 keyValue!4)))))))

(declare-fun b!1579436 () Bool)

(assert (=> b!1579436 (= e!881106 None!880)))

(declare-fun d!166233 () Bool)

(declare-fun c!146363 () Bool)

(assert (=> d!166233 (= c!146363 (and (is-Cons!36936 lt!676449) (= (_1!12802 (h!38480 lt!676449)) (_1!12802 keyValue!4))))))

(assert (=> d!166233 (= (getValueByKey!807 lt!676449 (_1!12802 keyValue!4)) e!881105)))

(assert (= (and d!166233 c!146363) b!1579433))

(assert (= (and d!166233 (not c!146363)) b!1579434))

(assert (= (and b!1579434 c!146364) b!1579435))

(assert (= (and b!1579434 (not c!146364)) b!1579436))

(declare-fun m!1451239 () Bool)

(assert (=> b!1579435 m!1451239))

(assert (=> start!137026 d!166233))

(declare-fun d!166237 () Bool)

(assert (=> d!166237 (= (inv!58960 (ListLongMap!22936 lt!676449)) (isStrictlySorted!1039 (toList!11483 (ListLongMap!22936 lt!676449))))))

(declare-fun bs!45739 () Bool)

(assert (= bs!45739 d!166237))

(declare-fun m!1451241 () Bool)

(assert (=> bs!45739 m!1451241))

(assert (=> start!137026 d!166237))

(declare-fun c!146392 () Bool)

(declare-fun e!881151 () List!36940)

(declare-fun call!72448 () List!36940)

(declare-fun bm!72444 () Bool)

(declare-fun $colon$colon!1013 (List!36940 tuple2!25584) List!36940)

(assert (=> bm!72444 (= call!72448 ($colon$colon!1013 e!881151 (ite c!146392 (h!38480 (toList!11483 thiss!201)) (tuple2!25585 (_1!12802 keyValue!4) (_2!12802 keyValue!4)))))))

(declare-fun c!146393 () Bool)

(assert (=> bm!72444 (= c!146393 c!146392)))

(declare-fun bm!72445 () Bool)

(declare-fun call!72449 () List!36940)

(assert (=> bm!72445 (= call!72449 call!72448)))

(declare-fun d!166239 () Bool)

(declare-fun e!881149 () Bool)

(assert (=> d!166239 e!881149))

(declare-fun res!1079179 () Bool)

(assert (=> d!166239 (=> (not res!1079179) (not e!881149))))

(declare-fun lt!676480 () List!36940)

(assert (=> d!166239 (= res!1079179 (isStrictlySorted!1039 lt!676480))))

(declare-fun e!881150 () List!36940)

(assert (=> d!166239 (= lt!676480 e!881150)))

(assert (=> d!166239 (= c!146392 (and (is-Cons!36936 (toList!11483 thiss!201)) (bvslt (_1!12802 (h!38480 (toList!11483 thiss!201))) (_1!12802 keyValue!4))))))

(assert (=> d!166239 (isStrictlySorted!1039 (toList!11483 thiss!201))))

(assert (=> d!166239 (= (insertStrictlySorted!610 (toList!11483 thiss!201) (_1!12802 keyValue!4) (_2!12802 keyValue!4)) lt!676480)))

(declare-fun b!1579516 () Bool)

(declare-fun e!881147 () List!36940)

(declare-fun call!72447 () List!36940)

(assert (=> b!1579516 (= e!881147 call!72447)))

(declare-fun b!1579517 () Bool)

(declare-fun res!1079180 () Bool)

(assert (=> b!1579517 (=> (not res!1079180) (not e!881149))))

(assert (=> b!1579517 (= res!1079180 (containsKey!885 lt!676480 (_1!12802 keyValue!4)))))

(declare-fun b!1579518 () Bool)

(declare-fun e!881148 () List!36940)

(assert (=> b!1579518 (= e!881150 e!881148)))

(declare-fun c!146394 () Bool)

(assert (=> b!1579518 (= c!146394 (and (is-Cons!36936 (toList!11483 thiss!201)) (= (_1!12802 (h!38480 (toList!11483 thiss!201))) (_1!12802 keyValue!4))))))

(declare-fun b!1579519 () Bool)

(declare-fun c!146391 () Bool)

(assert (=> b!1579519 (= e!881151 (ite c!146394 (t!51861 (toList!11483 thiss!201)) (ite c!146391 (Cons!36936 (h!38480 (toList!11483 thiss!201)) (t!51861 (toList!11483 thiss!201))) Nil!36937)))))

(declare-fun b!1579520 () Bool)

(assert (=> b!1579520 (= e!881151 (insertStrictlySorted!610 (t!51861 (toList!11483 thiss!201)) (_1!12802 keyValue!4) (_2!12802 keyValue!4)))))

(declare-fun b!1579521 () Bool)

(assert (=> b!1579521 (= e!881147 call!72447)))

(declare-fun b!1579522 () Bool)

(assert (=> b!1579522 (= e!881148 call!72449)))

(declare-fun b!1579523 () Bool)

(assert (=> b!1579523 (= e!881150 call!72448)))

(declare-fun b!1579524 () Bool)

(assert (=> b!1579524 (= c!146391 (and (is-Cons!36936 (toList!11483 thiss!201)) (bvsgt (_1!12802 (h!38480 (toList!11483 thiss!201))) (_1!12802 keyValue!4))))))

(assert (=> b!1579524 (= e!881148 e!881147)))

(declare-fun b!1579525 () Bool)

(assert (=> b!1579525 (= e!881149 (contains!10468 lt!676480 (tuple2!25585 (_1!12802 keyValue!4) (_2!12802 keyValue!4))))))

(declare-fun bm!72446 () Bool)

(assert (=> bm!72446 (= call!72447 call!72449)))

(assert (= (and d!166239 c!146392) b!1579523))

(assert (= (and d!166239 (not c!146392)) b!1579518))

(assert (= (and b!1579518 c!146394) b!1579522))

(assert (= (and b!1579518 (not c!146394)) b!1579524))

(assert (= (and b!1579524 c!146391) b!1579516))

(assert (= (and b!1579524 (not c!146391)) b!1579521))

(assert (= (or b!1579516 b!1579521) bm!72446))

(assert (= (or b!1579522 bm!72446) bm!72445))

(assert (= (or b!1579523 bm!72445) bm!72444))

(assert (= (and bm!72444 c!146393) b!1579520))

(assert (= (and bm!72444 (not c!146393)) b!1579519))

(assert (= (and d!166239 res!1079179) b!1579517))

(assert (= (and b!1579517 res!1079180) b!1579525))

(declare-fun m!1451273 () Bool)

(assert (=> b!1579517 m!1451273))

(declare-fun m!1451275 () Bool)

(assert (=> d!166239 m!1451275))

(assert (=> d!166239 m!1451235))

(declare-fun m!1451277 () Bool)

(assert (=> b!1579525 m!1451277))

(declare-fun m!1451279 () Bool)

(assert (=> bm!72444 m!1451279))

(declare-fun m!1451281 () Bool)

(assert (=> b!1579520 m!1451281))

(assert (=> start!137026 d!166239))

(declare-fun b!1579530 () Bool)

(declare-fun e!881154 () Bool)

(declare-fun tp!114355 () Bool)

(assert (=> b!1579530 (= e!881154 (and tp_is_empty!39139 tp!114355))))

(assert (=> b!1579370 (= tp!114343 e!881154)))

