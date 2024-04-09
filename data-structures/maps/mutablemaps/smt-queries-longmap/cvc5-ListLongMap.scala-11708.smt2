; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136990 () Bool)

(assert start!136990)

(declare-fun res!1079060 () Bool)

(declare-fun e!880946 () Bool)

(assert (=> start!136990 (=> res!1079060 e!880946)))

(declare-datatypes ((B!2588 0))(
  ( (B!2589 (val!19656 Int)) )
))
(declare-datatypes ((tuple2!25578 0))(
  ( (tuple2!25579 (_1!12799 (_ BitVec 64)) (_2!12799 B!2588)) )
))
(declare-datatypes ((List!36937 0))(
  ( (Nil!36934) (Cons!36933 (h!38477 tuple2!25578) (t!51858 List!36937)) )
))
(declare-fun lt!676420 () List!36937)

(declare-fun isStrictlySorted!1035 (List!36937) Bool)

(assert (=> start!136990 (= res!1079060 (not (isStrictlySorted!1035 lt!676420)))))

(declare-datatypes ((ListLongMap!22929 0))(
  ( (ListLongMap!22930 (toList!11480 List!36937)) )
))
(declare-fun thiss!201 () ListLongMap!22929)

(declare-fun keyValue!4 () tuple2!25578)

(declare-fun insertStrictlySorted!607 (List!36937 (_ BitVec 64) B!2588) List!36937)

(assert (=> start!136990 (= lt!676420 (insertStrictlySorted!607 (toList!11480 thiss!201) (_1!12799 keyValue!4) (_2!12799 keyValue!4)))))

(assert (=> start!136990 e!880946))

(declare-fun e!880947 () Bool)

(declare-fun inv!58952 (ListLongMap!22929) Bool)

(assert (=> start!136990 (and (inv!58952 thiss!201) e!880947)))

(declare-fun tp_is_empty!39133 () Bool)

(assert (=> start!136990 tp_is_empty!39133))

(declare-fun b!1579188 () Bool)

(declare-fun res!1079059 () Bool)

(assert (=> b!1579188 (=> res!1079059 e!880946)))

(declare-fun containsKey!882 (List!36937 (_ BitVec 64)) Bool)

(assert (=> b!1579188 (= res!1079059 (not (containsKey!882 lt!676420 (_1!12799 keyValue!4))))))

(declare-fun b!1579189 () Bool)

(declare-fun contains!10465 (List!36937 tuple2!25578) Bool)

(assert (=> b!1579189 (= e!880946 (not (contains!10465 lt!676420 keyValue!4)))))

(declare-fun b!1579190 () Bool)

(declare-fun tp!114325 () Bool)

(assert (=> b!1579190 (= e!880947 tp!114325)))

(assert (= (and start!136990 (not res!1079060)) b!1579188))

(assert (= (and b!1579188 (not res!1079059)) b!1579189))

(assert (= start!136990 b!1579190))

(declare-fun m!1451087 () Bool)

(assert (=> start!136990 m!1451087))

(declare-fun m!1451089 () Bool)

(assert (=> start!136990 m!1451089))

(declare-fun m!1451091 () Bool)

(assert (=> start!136990 m!1451091))

(declare-fun m!1451093 () Bool)

(assert (=> b!1579188 m!1451093))

(declare-fun m!1451095 () Bool)

(assert (=> b!1579189 m!1451095))

(push 1)

(assert (not b!1579188))

(assert (not b!1579189))

(assert tp_is_empty!39133)

(assert (not b!1579190))

(assert (not start!136990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166189 () Bool)

(declare-fun res!1079089 () Bool)

(declare-fun e!880976 () Bool)

(assert (=> d!166189 (=> res!1079089 e!880976)))

(assert (=> d!166189 (= res!1079089 (and (is-Cons!36933 lt!676420) (= (_1!12799 (h!38477 lt!676420)) (_1!12799 keyValue!4))))))

(assert (=> d!166189 (= (containsKey!882 lt!676420 (_1!12799 keyValue!4)) e!880976)))

(declare-fun b!1579225 () Bool)

(declare-fun e!880977 () Bool)

(assert (=> b!1579225 (= e!880976 e!880977)))

(declare-fun res!1079090 () Bool)

(assert (=> b!1579225 (=> (not res!1079090) (not e!880977))))

(assert (=> b!1579225 (= res!1079090 (and (or (not (is-Cons!36933 lt!676420)) (bvsle (_1!12799 (h!38477 lt!676420)) (_1!12799 keyValue!4))) (is-Cons!36933 lt!676420) (bvslt (_1!12799 (h!38477 lt!676420)) (_1!12799 keyValue!4))))))

(declare-fun b!1579226 () Bool)

(assert (=> b!1579226 (= e!880977 (containsKey!882 (t!51858 lt!676420) (_1!12799 keyValue!4)))))

(assert (= (and d!166189 (not res!1079089)) b!1579225))

(assert (= (and b!1579225 res!1079090) b!1579226))

(declare-fun m!1451129 () Bool)

(assert (=> b!1579226 m!1451129))

(assert (=> b!1579188 d!166189))

(declare-fun d!166195 () Bool)

(declare-fun lt!676435 () Bool)

(declare-fun content!829 (List!36937) (Set tuple2!25578))

(assert (=> d!166195 (= lt!676435 (set.member keyValue!4 (content!829 lt!676420)))))

(declare-fun e!880999 () Bool)

(assert (=> d!166195 (= lt!676435 e!880999)))

(declare-fun res!1079111 () Bool)

(assert (=> d!166195 (=> (not res!1079111) (not e!880999))))

(assert (=> d!166195 (= res!1079111 (is-Cons!36933 lt!676420))))

(assert (=> d!166195 (= (contains!10465 lt!676420 keyValue!4) lt!676435)))

(declare-fun b!1579247 () Bool)

(declare-fun e!880998 () Bool)

(assert (=> b!1579247 (= e!880999 e!880998)))

(declare-fun res!1079112 () Bool)

(assert (=> b!1579247 (=> res!1079112 e!880998)))

(assert (=> b!1579247 (= res!1079112 (= (h!38477 lt!676420) keyValue!4))))

(declare-fun b!1579248 () Bool)

(assert (=> b!1579248 (= e!880998 (contains!10465 (t!51858 lt!676420) keyValue!4))))

(assert (= (and d!166195 res!1079111) b!1579247))

(assert (= (and b!1579247 (not res!1079112)) b!1579248))

(declare-fun m!1451135 () Bool)

(assert (=> d!166195 m!1451135))

(declare-fun m!1451137 () Bool)

(assert (=> d!166195 m!1451137))

(declare-fun m!1451139 () Bool)

(assert (=> b!1579248 m!1451139))

(assert (=> b!1579189 d!166195))

(declare-fun d!166201 () Bool)

(declare-fun res!1079119 () Bool)

(declare-fun e!881006 () Bool)

(assert (=> d!166201 (=> res!1079119 e!881006)))

(assert (=> d!166201 (= res!1079119 (or (is-Nil!36934 lt!676420) (is-Nil!36934 (t!51858 lt!676420))))))

(assert (=> d!166201 (= (isStrictlySorted!1035 lt!676420) e!881006)))

(declare-fun b!1579255 () Bool)

(declare-fun e!881007 () Bool)

(assert (=> b!1579255 (= e!881006 e!881007)))

(declare-fun res!1079120 () Bool)

(assert (=> b!1579255 (=> (not res!1079120) (not e!881007))))

(assert (=> b!1579255 (= res!1079120 (bvslt (_1!12799 (h!38477 lt!676420)) (_1!12799 (h!38477 (t!51858 lt!676420)))))))

(declare-fun b!1579256 () Bool)

(assert (=> b!1579256 (= e!881007 (isStrictlySorted!1035 (t!51858 lt!676420)))))

(assert (= (and d!166201 (not res!1079119)) b!1579255))

(assert (= (and b!1579255 res!1079120) b!1579256))

(declare-fun m!1451143 () Bool)

(assert (=> b!1579256 m!1451143))

(assert (=> start!136990 d!166201))

(declare-fun bm!72417 () Bool)

(declare-fun call!72420 () List!36937)

(declare-fun call!72421 () List!36937)

(assert (=> bm!72417 (= call!72420 call!72421)))

(declare-fun b!1579345 () Bool)

(declare-fun c!146339 () Bool)

(assert (=> b!1579345 (= c!146339 (and (is-Cons!36933 (toList!11480 thiss!201)) (bvsgt (_1!12799 (h!38477 (toList!11480 thiss!201))) (_1!12799 keyValue!4))))))

(declare-fun e!881055 () List!36937)

(declare-fun e!881054 () List!36937)

(assert (=> b!1579345 (= e!881055 e!881054)))

(declare-fun c!146338 () Bool)

(declare-fun e!881058 () List!36937)

(declare-fun bm!72418 () Bool)

(declare-fun $colon$colon!1010 (List!36937 tuple2!25578) List!36937)

(assert (=> bm!72418 (= call!72421 ($colon$colon!1010 e!881058 (ite c!146338 (h!38477 (toList!11480 thiss!201)) (tuple2!25579 (_1!12799 keyValue!4) (_2!12799 keyValue!4)))))))

(declare-fun c!146340 () Bool)

(assert (=> bm!72418 (= c!146340 c!146338)))

(declare-fun b!1579346 () Bool)

(declare-fun c!146337 () Bool)

(assert (=> b!1579346 (= e!881058 (ite c!146337 (t!51858 (toList!11480 thiss!201)) (ite c!146339 (Cons!36933 (h!38477 (toList!11480 thiss!201)) (t!51858 (toList!11480 thiss!201))) Nil!36934)))))

(declare-fun b!1579347 () Bool)

(declare-fun res!1079142 () Bool)

(declare-fun e!881056 () Bool)

(assert (=> b!1579347 (=> (not res!1079142) (not e!881056))))

(declare-fun lt!676444 () List!36937)

(assert (=> b!1579347 (= res!1079142 (containsKey!882 lt!676444 (_1!12799 keyValue!4)))))

(declare-fun b!1579348 () Bool)

(assert (=> b!1579348 (= e!881056 (contains!10465 lt!676444 (tuple2!25579 (_1!12799 keyValue!4) (_2!12799 keyValue!4))))))

(declare-fun b!1579349 () Bool)

(assert (=> b!1579349 (= e!881058 (insertStrictlySorted!607 (t!51858 (toList!11480 thiss!201)) (_1!12799 keyValue!4) (_2!12799 keyValue!4)))))

(declare-fun b!1579350 () Bool)

(declare-fun call!72422 () List!36937)

(assert (=> b!1579350 (= e!881054 call!72422)))

(declare-fun b!1579351 () Bool)

(declare-fun e!881057 () List!36937)

(assert (=> b!1579351 (= e!881057 e!881055)))

(assert (=> b!1579351 (= c!146337 (and (is-Cons!36933 (toList!11480 thiss!201)) (= (_1!12799 (h!38477 (toList!11480 thiss!201))) (_1!12799 keyValue!4))))))

(declare-fun b!1579352 () Bool)

(assert (=> b!1579352 (= e!881054 call!72422)))

(declare-fun d!166205 () Bool)

(assert (=> d!166205 e!881056))

(declare-fun res!1079141 () Bool)

(assert (=> d!166205 (=> (not res!1079141) (not e!881056))))

(assert (=> d!166205 (= res!1079141 (isStrictlySorted!1035 lt!676444))))

(assert (=> d!166205 (= lt!676444 e!881057)))

(assert (=> d!166205 (= c!146338 (and (is-Cons!36933 (toList!11480 thiss!201)) (bvslt (_1!12799 (h!38477 (toList!11480 thiss!201))) (_1!12799 keyValue!4))))))

(assert (=> d!166205 (isStrictlySorted!1035 (toList!11480 thiss!201))))

(assert (=> d!166205 (= (insertStrictlySorted!607 (toList!11480 thiss!201) (_1!12799 keyValue!4) (_2!12799 keyValue!4)) lt!676444)))

(declare-fun bm!72419 () Bool)

(assert (=> bm!72419 (= call!72422 call!72420)))

(declare-fun b!1579353 () Bool)

(assert (=> b!1579353 (= e!881057 call!72421)))

(declare-fun b!1579354 () Bool)

(assert (=> b!1579354 (= e!881055 call!72420)))

(assert (= (and d!166205 c!146338) b!1579353))

(assert (= (and d!166205 (not c!146338)) b!1579351))

(assert (= (and b!1579351 c!146337) b!1579354))

(assert (= (and b!1579351 (not c!146337)) b!1579345))

(assert (= (and b!1579345 c!146339) b!1579352))

(assert (= (and b!1579345 (not c!146339)) b!1579350))

(assert (= (or b!1579352 b!1579350) bm!72419))

(assert (= (or b!1579354 bm!72419) bm!72417))

(assert (= (or b!1579353 bm!72417) bm!72418))

(assert (= (and bm!72418 c!146340) b!1579349))

(assert (= (and bm!72418 (not c!146340)) b!1579346))

(assert (= (and d!166205 res!1079141) b!1579347))

(assert (= (and b!1579347 res!1079142) b!1579348))

(declare-fun m!1451171 () Bool)

(assert (=> bm!72418 m!1451171))

(declare-fun m!1451173 () Bool)

(assert (=> b!1579348 m!1451173))

(declare-fun m!1451175 () Bool)

(assert (=> b!1579347 m!1451175))

(declare-fun m!1451177 () Bool)

(assert (=> b!1579349 m!1451177))

(declare-fun m!1451179 () Bool)

(assert (=> d!166205 m!1451179))

(declare-fun m!1451181 () Bool)

(assert (=> d!166205 m!1451181))

(assert (=> start!136990 d!166205))

(declare-fun d!166213 () Bool)

(assert (=> d!166213 (= (inv!58952 thiss!201) (isStrictlySorted!1035 (toList!11480 thiss!201)))))

(declare-fun bs!45732 () Bool)

(assert (= bs!45732 d!166213))

(assert (=> bs!45732 m!1451181))

(assert (=> start!136990 d!166213))

(declare-fun b!1579367 () Bool)

(declare-fun e!881067 () Bool)

(declare-fun tp!114340 () Bool)

(assert (=> b!1579367 (= e!881067 (and tp_is_empty!39133 tp!114340))))

(assert (=> b!1579190 (= tp!114325 e!881067)))

(assert (= (and b!1579190 (is-Cons!36933 (toList!11480 thiss!201))) b!1579367))

(push 1)

