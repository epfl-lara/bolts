; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137030 () Bool)

(assert start!137030)

(declare-datatypes ((B!2598 0))(
  ( (B!2599 (val!19661 Int)) )
))
(declare-datatypes ((tuple2!25588 0))(
  ( (tuple2!25589 (_1!12804 (_ BitVec 64)) (_2!12804 B!2598)) )
))
(declare-datatypes ((List!36942 0))(
  ( (Nil!36939) (Cons!36938 (h!38482 tuple2!25588) (t!51863 List!36942)) )
))
(declare-fun lt!676461 () List!36942)

(declare-fun keyValue!4 () tuple2!25588)

(declare-datatypes ((Option!884 0))(
  ( (Some!883 (v!22371 B!2598)) (None!882) )
))
(declare-fun getValueByKey!809 (List!36942 (_ BitVec 64)) Option!884)

(assert (=> start!137030 (= (getValueByKey!809 lt!676461 (_1!12804 keyValue!4)) (Some!883 (_2!12804 keyValue!4)))))

(declare-datatypes ((Unit!52162 0))(
  ( (Unit!52163) )
))
(declare-fun lt!676462 () Unit!52162)

(declare-fun lemmaContainsTupThenGetReturnValue!392 (List!36942 (_ BitVec 64) B!2598) Unit!52162)

(assert (=> start!137030 (= lt!676462 (lemmaContainsTupThenGetReturnValue!392 lt!676461 (_1!12804 keyValue!4) (_2!12804 keyValue!4)))))

(declare-datatypes ((ListLongMap!22939 0))(
  ( (ListLongMap!22940 (toList!11485 List!36942)) )
))
(declare-fun thiss!201 () ListLongMap!22939)

(declare-fun insertStrictlySorted!612 (List!36942 (_ BitVec 64) B!2598) List!36942)

(assert (=> start!137030 (= lt!676461 (insertStrictlySorted!612 (toList!11485 thiss!201) (_1!12804 keyValue!4) (_2!12804 keyValue!4)))))

(declare-fun inv!58962 (ListLongMap!22939) Bool)

(assert (=> start!137030 (not (inv!58962 (ListLongMap!22940 lt!676461)))))

(declare-fun e!881076 () Bool)

(assert (=> start!137030 (and (inv!58962 thiss!201) e!881076)))

(declare-fun tp_is_empty!39143 () Bool)

(assert (=> start!137030 tp_is_empty!39143))

(declare-fun b!1579376 () Bool)

(declare-fun tp!114349 () Bool)

(assert (=> b!1579376 (= e!881076 tp!114349)))

(assert (= start!137030 b!1579376))

(declare-fun m!1451203 () Bool)

(assert (=> start!137030 m!1451203))

(declare-fun m!1451205 () Bool)

(assert (=> start!137030 m!1451205))

(declare-fun m!1451207 () Bool)

(assert (=> start!137030 m!1451207))

(declare-fun m!1451209 () Bool)

(assert (=> start!137030 m!1451209))

(declare-fun m!1451211 () Bool)

(assert (=> start!137030 m!1451211))

(push 1)

(assert (not start!137030))

(assert (not b!1579376))

(assert tp_is_empty!39143)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1579386 () Bool)

(declare-fun e!881081 () Option!884)

(declare-fun e!881082 () Option!884)

(assert (=> b!1579386 (= e!881081 e!881082)))

(declare-fun c!146346 () Bool)

(assert (=> b!1579386 (= c!146346 (and (is-Cons!36938 lt!676461) (not (= (_1!12804 (h!38482 lt!676461)) (_1!12804 keyValue!4)))))))

(declare-fun b!1579387 () Bool)

(assert (=> b!1579387 (= e!881082 (getValueByKey!809 (t!51863 lt!676461) (_1!12804 keyValue!4)))))

(declare-fun b!1579385 () Bool)

(assert (=> b!1579385 (= e!881081 (Some!883 (_2!12804 (h!38482 lt!676461))))))

(declare-fun b!1579388 () Bool)

(assert (=> b!1579388 (= e!881082 None!882)))

(declare-fun d!166219 () Bool)

(declare-fun c!146345 () Bool)

(assert (=> d!166219 (= c!146345 (and (is-Cons!36938 lt!676461) (= (_1!12804 (h!38482 lt!676461)) (_1!12804 keyValue!4))))))

(assert (=> d!166219 (= (getValueByKey!809 lt!676461 (_1!12804 keyValue!4)) e!881081)))

(assert (= (and d!166219 c!146345) b!1579385))

(assert (= (and d!166219 (not c!146345)) b!1579386))

(assert (= (and b!1579386 c!146346) b!1579387))

(assert (= (and b!1579386 (not c!146346)) b!1579388))

(declare-fun m!1451213 () Bool)

(assert (=> b!1579387 m!1451213))

(assert (=> start!137030 d!166219))

(declare-fun d!166223 () Bool)

(declare-fun isStrictlySorted!1038 (List!36942) Bool)

(assert (=> d!166223 (= (inv!58962 thiss!201) (isStrictlySorted!1038 (toList!11485 thiss!201)))))

(declare-fun bs!45736 () Bool)

(assert (= bs!45736 d!166223))

(declare-fun m!1451215 () Bool)

(assert (=> bs!45736 m!1451215))

(assert (=> start!137030 d!166223))

(declare-fun d!166225 () Bool)

(assert (=> d!166225 (= (inv!58962 (ListLongMap!22940 lt!676461)) (isStrictlySorted!1038 (toList!11485 (ListLongMap!22940 lt!676461))))))

(declare-fun bs!45737 () Bool)

(assert (= bs!45737 d!166225))

(declare-fun m!1451217 () Bool)

(assert (=> bs!45737 m!1451217))

(assert (=> start!137030 d!166225))

(declare-fun bm!72426 () Bool)

(declare-fun call!72429 () List!36942)

(declare-fun call!72430 () List!36942)

(assert (=> bm!72426 (= call!72429 call!72430)))

(declare-fun b!1579445 () Bool)

(declare-fun c!146369 () Bool)

(assert (=> b!1579445 (= c!146369 (and (is-Cons!36938 (toList!11485 thiss!201)) (bvsgt (_1!12804 (h!38482 (toList!11485 thiss!201))) (_1!12804 keyValue!4))))))

(declare-fun e!881112 () List!36942)

(declare-fun e!881113 () List!36942)

(assert (=> b!1579445 (= e!881112 e!881113)))

(declare-fun b!1579446 () Bool)

(assert (=> b!1579446 (= e!881112 call!72430)))

(declare-fun b!1579447 () Bool)

(declare-fun e!881115 () List!36942)

(assert (=> b!1579447 (= e!881115 e!881112)))

(declare-fun c!146367 () Bool)

(assert (=> b!1579447 (= c!146367 (and (is-Cons!36938 (toList!11485 thiss!201)) (= (_1!12804 (h!38482 (toList!11485 thiss!201))) (_1!12804 keyValue!4))))))

(declare-fun d!166227 () Bool)

(declare-fun e!881114 () Bool)

(assert (=> d!166227 e!881114))

(declare-fun res!1079162 () Bool)

(assert (=> d!166227 (=> (not res!1079162) (not e!881114))))

(declare-fun lt!676471 () List!36942)

(assert (=> d!166227 (= res!1079162 (isStrictlySorted!1038 lt!676471))))

(assert (=> d!166227 (= lt!676471 e!881115)))

(declare-fun c!146370 () Bool)

(assert (=> d!166227 (= c!146370 (and (is-Cons!36938 (toList!11485 thiss!201)) (bvslt (_1!12804 (h!38482 (toList!11485 thiss!201))) (_1!12804 keyValue!4))))))

(assert (=> d!166227 (isStrictlySorted!1038 (toList!11485 thiss!201))))

(assert (=> d!166227 (= (insertStrictlySorted!612 (toList!11485 thiss!201) (_1!12804 keyValue!4) (_2!12804 keyValue!4)) lt!676471)))

(declare-fun b!1579448 () Bool)

(declare-fun e!881111 () List!36942)

(assert (=> b!1579448 (= e!881111 (ite c!146367 (t!51863 (toList!11485 thiss!201)) (ite c!146369 (Cons!36938 (h!38482 (toList!11485 thiss!201)) (t!51863 (toList!11485 thiss!201))) Nil!36939)))))

(declare-fun b!1579449 () Bool)

(assert (=> b!1579449 (= e!881113 call!72429)))

(declare-fun b!1579450 () Bool)

(declare-fun contains!10469 (List!36942 tuple2!25588) Bool)

(assert (=> b!1579450 (= e!881114 (contains!10469 lt!676471 (tuple2!25589 (_1!12804 keyValue!4) (_2!12804 keyValue!4))))))

(declare-fun bm!72427 () Bool)

(declare-fun call!72431 () List!36942)

(assert (=> bm!72427 (= call!72430 call!72431)))

(declare-fun bm!72428 () Bool)

(declare-fun $colon$colon!1012 (List!36942 tuple2!25588) List!36942)

(assert (=> bm!72428 (= call!72431 ($colon$colon!1012 e!881111 (ite c!146370 (h!38482 (toList!11485 thiss!201)) (tuple2!25589 (_1!12804 keyValue!4) (_2!12804 keyValue!4)))))))

(declare-fun c!146368 () Bool)

(assert (=> bm!72428 (= c!146368 c!146370)))

(declare-fun b!1579451 () Bool)

(assert (=> b!1579451 (= e!881115 call!72431)))

(declare-fun b!1579452 () Bool)

(declare-fun res!1079161 () Bool)

(assert (=> b!1579452 (=> (not res!1079161) (not e!881114))))

(declare-fun containsKey!887 (List!36942 (_ BitVec 64)) Bool)

(assert (=> b!1579452 (= res!1079161 (containsKey!887 lt!676471 (_1!12804 keyValue!4)))))

(declare-fun b!1579453 () Bool)

(assert (=> b!1579453 (= e!881113 call!72429)))

(declare-fun b!1579454 () Bool)

(assert (=> b!1579454 (= e!881111 (insertStrictlySorted!612 (t!51863 (toList!11485 thiss!201)) (_1!12804 keyValue!4) (_2!12804 keyValue!4)))))

(assert (= (and d!166227 c!146370) b!1579451))

(assert (= (and d!166227 (not c!146370)) b!1579447))

(assert (= (and b!1579447 c!146367) b!1579446))

(assert (= (and b!1579447 (not c!146367)) b!1579445))

(assert (= (and b!1579445 c!146369) b!1579449))

(assert (= (and b!1579445 (not c!146369)) b!1579453))

(assert (= (or b!1579449 b!1579453) bm!72426))

(assert (= (or b!1579446 bm!72426) bm!72427))

(assert (= (or b!1579451 bm!72427) bm!72428))

(assert (= (and bm!72428 c!146368) b!1579454))

(assert (= (and bm!72428 (not c!146368)) b!1579448))

(assert (= (and d!166227 res!1079162) b!1579452))

(assert (= (and b!1579452 res!1079161) b!1579450))

(declare-fun m!1451243 () Bool)

(assert (=> d!166227 m!1451243))

(assert (=> d!166227 m!1451215))

(declare-fun m!1451245 () Bool)

(assert (=> b!1579450 m!1451245))

(declare-fun m!1451247 () Bool)

(assert (=> b!1579454 m!1451247))

(declare-fun m!1451249 () Bool)

(assert (=> b!1579452 m!1451249))

(declare-fun m!1451251 () Bool)

(assert (=> bm!72428 m!1451251))

(assert (=> start!137030 d!166227))

(declare-fun d!166241 () Bool)

(assert (=> d!166241 (= (getValueByKey!809 lt!676461 (_1!12804 keyValue!4)) (Some!883 (_2!12804 keyValue!4)))))

(declare-fun lt!676474 () Unit!52162)

(declare-fun choose!2097 (List!36942 (_ BitVec 64) B!2598) Unit!52162)

(assert (=> d!166241 (= lt!676474 (choose!2097 lt!676461 (_1!12804 keyValue!4) (_2!12804 keyValue!4)))))

(declare-fun e!881118 () Bool)

(assert (=> d!166241 e!881118))

(declare-fun res!1079167 () Bool)

(assert (=> d!166241 (=> (not res!1079167) (not e!881118))))

(assert (=> d!166241 (= res!1079167 (isStrictlySorted!1038 lt!676461))))

(assert (=> d!166241 (= (lemmaContainsTupThenGetReturnValue!392 lt!676461 (_1!12804 keyValue!4) (_2!12804 keyValue!4)) lt!676474)))

(declare-fun b!1579459 () Bool)

(declare-fun res!1079168 () Bool)

(assert (=> b!1579459 (=> (not res!1079168) (not e!881118))))

(assert (=> b!1579459 (= res!1079168 (containsKey!887 lt!676461 (_1!12804 keyValue!4)))))

(declare-fun b!1579460 () Bool)

(assert (=> b!1579460 (= e!881118 (contains!10469 lt!676461 (tuple2!25589 (_1!12804 keyValue!4) (_2!12804 keyValue!4))))))

(assert (= (and d!166241 res!1079167) b!1579459))

(assert (= (and b!1579459 res!1079168) b!1579460))

(assert (=> d!166241 m!1451207))

(declare-fun m!1451253 () Bool)

(assert (=> d!166241 m!1451253))

(declare-fun m!1451255 () Bool)

(assert (=> d!166241 m!1451255))

(declare-fun m!1451257 () Bool)

(assert (=> b!1579459 m!1451257))

(declare-fun m!1451259 () Bool)

(assert (=> b!1579460 m!1451259))

(assert (=> start!137030 d!166241))

(declare-fun b!1579465 () Bool)

(declare-fun e!881121 () Bool)

(declare-fun tp!114352 () Bool)

(assert (=> b!1579465 (= e!881121 (and tp_is_empty!39143 tp!114352))))

(assert (=> b!1579376 (= tp!114349 e!881121)))

(assert (= (and b!1579376 (is-Cons!36938 (toList!11485 thiss!201))) b!1579465))

(push 1)

