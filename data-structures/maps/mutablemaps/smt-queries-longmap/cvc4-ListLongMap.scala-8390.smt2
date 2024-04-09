; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102056 () Bool)

(assert start!102056)

(declare-fun b!1228401 () Bool)

(declare-fun res!817135 () Bool)

(declare-fun e!697225 () Bool)

(assert (=> b!1228401 (=> (not res!817135) (not e!697225))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228401 (= res!817135 (validKeyInArray!0 k!2913))))

(declare-fun b!1228402 () Bool)

(declare-fun res!817133 () Bool)

(assert (=> b!1228402 (=> (not res!817133) (not e!697225))))

(declare-datatypes ((array!79272 0))(
  ( (array!79273 (arr!38255 (Array (_ BitVec 32) (_ BitVec 64))) (size!38792 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79272)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1228402 (= res!817133 (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)))))

(declare-fun res!817130 () Bool)

(assert (=> start!102056 (=> (not res!817130) (not e!697225))))

(assert (=> start!102056 (= res!817130 (bvslt (size!38792 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102056 e!697225))

(declare-fun array_inv!29031 (array!79272) Bool)

(assert (=> start!102056 (array_inv!29031 a!3806)))

(assert (=> start!102056 true))

(declare-fun b!1228403 () Bool)

(declare-fun res!817136 () Bool)

(assert (=> b!1228403 (=> (not res!817136) (not e!697225))))

(declare-datatypes ((List!27206 0))(
  ( (Nil!27203) (Cons!27202 (h!28411 (_ BitVec 64)) (t!40676 List!27206)) )
))
(declare-fun acc!823 () List!27206)

(declare-fun contains!7121 (List!27206 (_ BitVec 64)) Bool)

(assert (=> b!1228403 (= res!817136 (not (contains!7121 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228404 () Bool)

(declare-fun res!817137 () Bool)

(assert (=> b!1228404 (=> (not res!817137) (not e!697225))))

(declare-fun noDuplicate!1728 (List!27206) Bool)

(assert (=> b!1228404 (= res!817137 (noDuplicate!1728 acc!823))))

(declare-fun b!1228405 () Bool)

(declare-fun e!697224 () Bool)

(assert (=> b!1228405 (= e!697225 (not e!697224))))

(declare-fun res!817138 () Bool)

(assert (=> b!1228405 (=> res!817138 e!697224)))

(assert (=> b!1228405 (= res!817138 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!79272 (_ BitVec 32) List!27206) Bool)

(assert (=> b!1228405 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27203)))

(declare-datatypes ((Unit!40650 0))(
  ( (Unit!40651) )
))
(declare-fun lt!558941 () Unit!40650)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79272 List!27206 List!27206 (_ BitVec 32)) Unit!40650)

(assert (=> b!1228405 (= lt!558941 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27203 from!3184))))

(assert (=> b!1228405 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823))))

(declare-fun b!1228406 () Bool)

(assert (=> b!1228406 (= e!697224 (noDuplicate!1728 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203)))))

(declare-fun b!1228407 () Bool)

(declare-fun res!817131 () Bool)

(assert (=> b!1228407 (=> (not res!817131) (not e!697225))))

(assert (=> b!1228407 (= res!817131 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228408 () Bool)

(declare-fun res!817139 () Bool)

(assert (=> b!1228408 (=> (not res!817139) (not e!697225))))

(declare-fun arrayContainsKey!0 (array!79272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228408 (= res!817139 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228409 () Bool)

(declare-fun res!817132 () Bool)

(assert (=> b!1228409 (=> (not res!817132) (not e!697225))))

(assert (=> b!1228409 (= res!817132 (not (contains!7121 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228410 () Bool)

(declare-fun res!817134 () Bool)

(assert (=> b!1228410 (=> (not res!817134) (not e!697225))))

(assert (=> b!1228410 (= res!817134 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38792 a!3806)) (bvslt from!3184 (size!38792 a!3806))))))

(assert (= (and start!102056 res!817130) b!1228401))

(assert (= (and b!1228401 res!817135) b!1228410))

(assert (= (and b!1228410 res!817134) b!1228404))

(assert (= (and b!1228404 res!817137) b!1228403))

(assert (= (and b!1228403 res!817136) b!1228409))

(assert (= (and b!1228409 res!817132) b!1228408))

(assert (= (and b!1228408 res!817139) b!1228407))

(assert (= (and b!1228407 res!817131) b!1228402))

(assert (= (and b!1228402 res!817133) b!1228405))

(assert (= (and b!1228405 (not res!817138)) b!1228406))

(declare-fun m!1132977 () Bool)

(assert (=> b!1228409 m!1132977))

(declare-fun m!1132979 () Bool)

(assert (=> b!1228403 m!1132979))

(declare-fun m!1132981 () Bool)

(assert (=> b!1228405 m!1132981))

(declare-fun m!1132983 () Bool)

(assert (=> b!1228405 m!1132983))

(declare-fun m!1132985 () Bool)

(assert (=> b!1228405 m!1132985))

(declare-fun m!1132987 () Bool)

(assert (=> b!1228405 m!1132987))

(assert (=> b!1228406 m!1132985))

(declare-fun m!1132989 () Bool)

(assert (=> b!1228406 m!1132989))

(declare-fun m!1132991 () Bool)

(assert (=> b!1228408 m!1132991))

(declare-fun m!1132993 () Bool)

(assert (=> b!1228404 m!1132993))

(declare-fun m!1132995 () Bool)

(assert (=> b!1228407 m!1132995))

(declare-fun m!1132997 () Bool)

(assert (=> start!102056 m!1132997))

(assert (=> b!1228402 m!1132985))

(assert (=> b!1228402 m!1132985))

(declare-fun m!1132999 () Bool)

(assert (=> b!1228402 m!1132999))

(declare-fun m!1133001 () Bool)

(assert (=> b!1228401 m!1133001))

(push 1)

(assert (not b!1228401))

(assert (not b!1228403))

(assert (not b!1228405))

(assert (not b!1228407))

(assert (not b!1228409))

(assert (not b!1228404))

(assert (not b!1228408))

(assert (not start!102056))

(assert (not b!1228402))

(assert (not b!1228406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134149 () Bool)

(declare-fun lt!558947 () Bool)

(declare-fun content!559 (List!27206) (Set (_ BitVec 64)))

(assert (=> d!134149 (= lt!558947 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!559 acc!823)))))

(declare-fun e!697257 () Bool)

(assert (=> d!134149 (= lt!558947 e!697257)))

(declare-fun res!817170 () Bool)

(assert (=> d!134149 (=> (not res!817170) (not e!697257))))

(assert (=> d!134149 (= res!817170 (is-Cons!27202 acc!823))))

(assert (=> d!134149 (= (contains!7121 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558947)))

(declare-fun b!1228441 () Bool)

(declare-fun e!697256 () Bool)

(assert (=> b!1228441 (= e!697257 e!697256)))

(declare-fun res!817171 () Bool)

(assert (=> b!1228441 (=> res!817171 e!697256)))

(assert (=> b!1228441 (= res!817171 (= (h!28411 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228442 () Bool)

(assert (=> b!1228442 (= e!697256 (contains!7121 (t!40676 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134149 res!817170) b!1228441))

(assert (= (and b!1228441 (not res!817171)) b!1228442))

(declare-fun m!1133025 () Bool)

(assert (=> d!134149 m!1133025))

(declare-fun m!1133027 () Bool)

(assert (=> d!134149 m!1133027))

(declare-fun m!1133029 () Bool)

(assert (=> b!1228442 m!1133029))

(assert (=> b!1228409 d!134149))

(declare-fun d!134157 () Bool)

(declare-fun res!817186 () Bool)

(declare-fun e!697272 () Bool)

(assert (=> d!134157 (=> res!817186 e!697272)))

(assert (=> d!134157 (= res!817186 (is-Nil!27203 acc!823))))

(assert (=> d!134157 (= (noDuplicate!1728 acc!823) e!697272)))

(declare-fun b!1228459 () Bool)

(declare-fun e!697273 () Bool)

(assert (=> b!1228459 (= e!697272 e!697273)))

(declare-fun res!817187 () Bool)

(assert (=> b!1228459 (=> (not res!817187) (not e!697273))))

(assert (=> b!1228459 (= res!817187 (not (contains!7121 (t!40676 acc!823) (h!28411 acc!823))))))

(declare-fun b!1228460 () Bool)

(assert (=> b!1228460 (= e!697273 (noDuplicate!1728 (t!40676 acc!823)))))

(assert (= (and d!134157 (not res!817186)) b!1228459))

(assert (= (and b!1228459 res!817187) b!1228460))

(declare-fun m!1133031 () Bool)

(assert (=> b!1228459 m!1133031))

(declare-fun m!1133033 () Bool)

(assert (=> b!1228460 m!1133033))

(assert (=> b!1228404 d!134157))

(declare-fun d!134159 () Bool)

(declare-fun lt!558950 () Bool)

(assert (=> d!134159 (= lt!558950 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!559 acc!823)))))

(declare-fun e!697278 () Bool)

(assert (=> d!134159 (= lt!558950 e!697278)))

(declare-fun res!817188 () Bool)

(assert (=> d!134159 (=> (not res!817188) (not e!697278))))

(assert (=> d!134159 (= res!817188 (is-Cons!27202 acc!823))))

(assert (=> d!134159 (= (contains!7121 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558950)))

(declare-fun b!1228463 () Bool)

(declare-fun e!697276 () Bool)

(assert (=> b!1228463 (= e!697278 e!697276)))

(declare-fun res!817189 () Bool)

(assert (=> b!1228463 (=> res!817189 e!697276)))

(assert (=> b!1228463 (= res!817189 (= (h!28411 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228464 () Bool)

(assert (=> b!1228464 (= e!697276 (contains!7121 (t!40676 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134159 res!817188) b!1228463))

(assert (= (and b!1228463 (not res!817189)) b!1228464))

(assert (=> d!134159 m!1133025))

(declare-fun m!1133037 () Bool)

(assert (=> d!134159 m!1133037))

(declare-fun m!1133041 () Bool)

(assert (=> b!1228464 m!1133041))

(assert (=> b!1228403 d!134159))

(declare-fun d!134161 () Bool)

(declare-fun res!817205 () Bool)

(declare-fun e!697294 () Bool)

(assert (=> d!134161 (=> res!817205 e!697294)))

(assert (=> d!134161 (= res!817205 (= (select (arr!38255 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134161 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697294)))

(declare-fun b!1228482 () Bool)

(declare-fun e!697295 () Bool)

(assert (=> b!1228482 (= e!697294 e!697295)))

(declare-fun res!817206 () Bool)

(assert (=> b!1228482 (=> (not res!817206) (not e!697295))))

(assert (=> b!1228482 (= res!817206 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38792 a!3806)))))

(declare-fun b!1228483 () Bool)

(assert (=> b!1228483 (= e!697295 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134161 (not res!817205)) b!1228482))

(assert (= (and b!1228482 res!817206) b!1228483))

(declare-fun m!1133049 () Bool)

(assert (=> d!134161 m!1133049))

(declare-fun m!1133051 () Bool)

(assert (=> b!1228483 m!1133051))

(assert (=> b!1228408 d!134161))

(declare-fun b!1228521 () Bool)

(declare-fun e!697327 () Bool)

(declare-fun call!60817 () Bool)

(assert (=> b!1228521 (= e!697327 call!60817)))

(declare-fun d!134167 () Bool)

(declare-fun res!817232 () Bool)

(declare-fun e!697329 () Bool)

(assert (=> d!134167 (=> res!817232 e!697329)))

(assert (=> d!134167 (= res!817232 (bvsge from!3184 (size!38792 a!3806)))))

(assert (=> d!134167 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697329)))

(declare-fun c!120508 () Bool)

(declare-fun bm!60814 () Bool)

(assert (=> bm!60814 (= call!60817 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120508 (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1228522 () Bool)

(declare-fun e!697326 () Bool)

(assert (=> b!1228522 (= e!697329 e!697326)))

(declare-fun res!817230 () Bool)

(assert (=> b!1228522 (=> (not res!817230) (not e!697326))))

(declare-fun e!697328 () Bool)

(assert (=> b!1228522 (= res!817230 (not e!697328))))

(declare-fun res!817231 () Bool)

(assert (=> b!1228522 (=> (not res!817231) (not e!697328))))

(assert (=> b!1228522 (= res!817231 (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228523 () Bool)

(assert (=> b!1228523 (= e!697326 e!697327)))

(assert (=> b!1228523 (= c!120508 (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228524 () Bool)

(assert (=> b!1228524 (= e!697328 (contains!7121 acc!823 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228525 () Bool)

(assert (=> b!1228525 (= e!697327 call!60817)))

(assert (= (and d!134167 (not res!817232)) b!1228522))

(assert (= (and b!1228522 res!817231) b!1228524))

(assert (= (and b!1228522 res!817230) b!1228523))

(assert (= (and b!1228523 c!120508) b!1228525))

(assert (= (and b!1228523 (not c!120508)) b!1228521))

(assert (= (or b!1228525 b!1228521) bm!60814))

(assert (=> bm!60814 m!1132985))

(declare-fun m!1133075 () Bool)

(assert (=> bm!60814 m!1133075))

(assert (=> b!1228522 m!1132985))

(assert (=> b!1228522 m!1132985))

(assert (=> b!1228522 m!1132999))

(assert (=> b!1228523 m!1132985))

(assert (=> b!1228523 m!1132985))

(assert (=> b!1228523 m!1132999))

(assert (=> b!1228524 m!1132985))

(assert (=> b!1228524 m!1132985))

(declare-fun m!1133079 () Bool)

(assert (=> b!1228524 m!1133079))

(assert (=> b!1228407 d!134167))

(declare-fun d!134181 () Bool)

(assert (=> d!134181 (= (array_inv!29031 a!3806) (bvsge (size!38792 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102056 d!134181))

(declare-fun d!134185 () Bool)

(assert (=> d!134185 (= (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)) (and (not (= (select (arr!38255 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38255 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228402 d!134185))

(declare-fun d!134189 () Bool)

(assert (=> d!134189 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228401 d!134189))

(declare-fun d!134191 () Bool)

(declare-fun res!817238 () Bool)

(declare-fun e!697336 () Bool)

(assert (=> d!134191 (=> res!817238 e!697336)))

(assert (=> d!134191 (= res!817238 (is-Nil!27203 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203)))))

(assert (=> d!134191 (= (noDuplicate!1728 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203)) e!697336)))

(declare-fun b!1228533 () Bool)

(declare-fun e!697337 () Bool)

(assert (=> b!1228533 (= e!697336 e!697337)))

(declare-fun res!817239 () Bool)

(assert (=> b!1228533 (=> (not res!817239) (not e!697337))))

(assert (=> b!1228533 (= res!817239 (not (contains!7121 (t!40676 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203)) (h!28411 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203)))))))

(declare-fun b!1228534 () Bool)

(assert (=> b!1228534 (= e!697337 (noDuplicate!1728 (t!40676 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203))))))

(assert (= (and d!134191 (not res!817238)) b!1228533))

(assert (= (and b!1228533 res!817239) b!1228534))

(declare-fun m!1133089 () Bool)

(assert (=> b!1228533 m!1133089))

(declare-fun m!1133091 () Bool)

(assert (=> b!1228534 m!1133091))

(assert (=> b!1228406 d!134191))

(declare-fun b!1228535 () Bool)

(declare-fun e!697339 () Bool)

(declare-fun call!60819 () Bool)

(assert (=> b!1228535 (= e!697339 call!60819)))

(declare-fun d!134193 () Bool)

(declare-fun res!817242 () Bool)

(declare-fun e!697341 () Bool)

(assert (=> d!134193 (=> res!817242 e!697341)))

(assert (=> d!134193 (= res!817242 (bvsge from!3184 (size!38792 a!3806)))))

(assert (=> d!134193 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27203) e!697341)))

(declare-fun bm!60816 () Bool)

(declare-fun c!120510 () Bool)

(assert (=> bm!60816 (= call!60819 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120510 (Cons!27202 (select (arr!38255 a!3806) from!3184) Nil!27203) Nil!27203)))))

(declare-fun b!1228536 () Bool)

(declare-fun e!697338 () Bool)

(assert (=> b!1228536 (= e!697341 e!697338)))

(declare-fun res!817240 () Bool)

(assert (=> b!1228536 (=> (not res!817240) (not e!697338))))

(declare-fun e!697340 () Bool)

(assert (=> b!1228536 (= res!817240 (not e!697340))))

(declare-fun res!817241 () Bool)

(assert (=> b!1228536 (=> (not res!817241) (not e!697340))))

(assert (=> b!1228536 (= res!817241 (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228537 () Bool)

(assert (=> b!1228537 (= e!697338 e!697339)))

(assert (=> b!1228537 (= c!120510 (validKeyInArray!0 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228538 () Bool)

(assert (=> b!1228538 (= e!697340 (contains!7121 Nil!27203 (select (arr!38255 a!3806) from!3184)))))

(declare-fun b!1228539 () Bool)

(assert (=> b!1228539 (= e!697339 call!60819)))

(assert (= (and d!134193 (not res!817242)) b!1228536))

(assert (= (and b!1228536 res!817241) b!1228538))

(assert (= (and b!1228536 res!817240) b!1228537))

(assert (= (and b!1228537 c!120510) b!1228539))

(assert (= (and b!1228537 (not c!120510)) b!1228535))

(assert (= (or b!1228539 b!1228535) bm!60816))

(assert (=> bm!60816 m!1132985))

(declare-fun m!1133093 () Bool)

(assert (=> bm!60816 m!1133093))

(assert (=> b!1228536 m!1132985))

(assert (=> b!1228536 m!1132985))

(assert (=> b!1228536 m!1132999))

(assert (=> b!1228537 m!1132985))

(assert (=> b!1228537 m!1132985))

(assert (=> b!1228537 m!1132999))

(assert (=> b!1228538 m!1132985))

(assert (=> b!1228538 m!1132985))

(declare-fun m!1133095 () Bool)

(assert (=> b!1228538 m!1133095))

(assert (=> b!1228405 d!134193))

(declare-fun d!134195 () Bool)

(assert (=> d!134195 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27203)))

(declare-fun lt!558962 () Unit!40650)

(declare-fun choose!80 (array!79272 List!27206 List!27206 (_ BitVec 32)) Unit!40650)

(assert (=> d!134195 (= lt!558962 (choose!80 a!3806 acc!823 Nil!27203 from!3184))))

(assert (=> d!134195 (bvslt (size!38792 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134195 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27203 from!3184) lt!558962)))

(declare-fun bs!34529 () Bool)

(assert (= bs!34529 d!134195))

(assert (=> bs!34529 m!1132981))

(declare-fun m!1133109 () Bool)

(assert (=> bs!34529 m!1133109))

(assert (=> b!1228405 d!134195))

(declare-fun b!1228547 () Bool)

(declare-fun e!697349 () Bool)

(declare-fun call!60821 () Bool)

(assert (=> b!1228547 (= e!697349 call!60821)))

(declare-fun d!134201 () Bool)

(declare-fun res!817250 () Bool)

(declare-fun e!697351 () Bool)

(assert (=> d!134201 (=> res!817250 e!697351)))

(assert (=> d!134201 (= res!817250 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38792 a!3806)))))

(assert (=> d!134201 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823)) e!697351)))

(declare-fun bm!60818 () Bool)

(declare-fun c!120512 () Bool)

(assert (=> bm!60818 (= call!60821 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120512 (Cons!27202 (select (arr!38255 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823)) (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823))))))

(declare-fun b!1228548 () Bool)

(declare-fun e!697348 () Bool)

(assert (=> b!1228548 (= e!697351 e!697348)))

(declare-fun res!817248 () Bool)

(assert (=> b!1228548 (=> (not res!817248) (not e!697348))))

(declare-fun e!697350 () Bool)

(assert (=> b!1228548 (= res!817248 (not e!697350))))

(declare-fun res!817249 () Bool)

(assert (=> b!1228548 (=> (not res!817249) (not e!697350))))

(assert (=> b!1228548 (= res!817249 (validKeyInArray!0 (select (arr!38255 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228549 () Bool)

(assert (=> b!1228549 (= e!697348 e!697349)))

(assert (=> b!1228549 (= c!120512 (validKeyInArray!0 (select (arr!38255 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228550 () Bool)

(assert (=> b!1228550 (= e!697350 (contains!7121 (Cons!27202 (select (arr!38255 a!3806) from!3184) acc!823) (select (arr!38255 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228551 () Bool)

(assert (=> b!1228551 (= e!697349 call!60821)))

(assert (= (and d!134201 (not res!817250)) b!1228548))

(assert (= (and b!1228548 res!817249) b!1228550))

(assert (= (and b!1228548 res!817248) b!1228549))

(assert (= (and b!1228549 c!120512) b!1228551))

(assert (= (and b!1228549 (not c!120512)) b!1228547))

(assert (= (or b!1228551 b!1228547) bm!60818))

(assert (=> bm!60818 m!1133049))

(declare-fun m!1133111 () Bool)

(assert (=> bm!60818 m!1133111))

(assert (=> b!1228548 m!1133049))

(assert (=> b!1228548 m!1133049))

(declare-fun m!1133113 () Bool)

(assert (=> b!1228548 m!1133113))

(assert (=> b!1228549 m!1133049))

(assert (=> b!1228549 m!1133049))

(assert (=> b!1228549 m!1133113))

(assert (=> b!1228550 m!1133049))

(assert (=> b!1228550 m!1133049))

(declare-fun m!1133115 () Bool)

(assert (=> b!1228550 m!1133115))

(assert (=> b!1228405 d!134201))

(push 1)

(assert (not b!1228549))

(assert (not bm!60818))

(assert (not b!1228550))

(assert (not b!1228464))

(assert (not b!1228536))

(assert (not d!134159))

(assert (not b!1228460))

(assert (not b!1228522))

(assert (not b!1228537))

(assert (not b!1228548))

(assert (not b!1228538))

(assert (not bm!60816))

(assert (not bm!60814))

(assert (not b!1228534))

(assert (not d!134149))

(assert (not b!1228442))

(assert (not b!1228483))

(assert (not d!134195))

(assert (not b!1228459))

(assert (not b!1228533))

(assert (not b!1228524))

(assert (not b!1228523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134267 () Bool)

(declare-fun res!817309 () Bool)

(declare-fun e!697422 () Bool)

(assert (=> d!134267 (=> res!817309 e!697422)))

(assert (=> d!134267 (= res!817309 (is-Nil!27203 (t!40676 acc!823)))))

(assert (=> d!134267 (= (noDuplicate!1728 (t!40676 acc!823)) e!697422)))

(declare-fun b!1228634 () Bool)

(declare-fun e!697423 () Bool)

(assert (=> b!1228634 (= e!697422 e!697423)))

(declare-fun res!817310 () Bool)

(assert (=> b!1228634 (=> (not res!817310) (not e!697423))))

(assert (=> b!1228634 (= res!817310 (not (contains!7121 (t!40676 (t!40676 acc!823)) (h!28411 (t!40676 acc!823)))))))

(declare-fun b!1228635 () Bool)

(assert (=> b!1228635 (= e!697423 (noDuplicate!1728 (t!40676 (t!40676 acc!823))))))

(assert (= (and d!134267 (not res!817309)) b!1228634))

(assert (= (and b!1228634 res!817310) b!1228635))

(declare-fun m!1133253 () Bool)

(assert (=> b!1228634 m!1133253))

(declare-fun m!1133255 () Bool)

(assert (=> b!1228635 m!1133255))

(assert (=> b!1228460 d!134267))

(assert (=> d!134195 d!134193))

(declare-fun d!134269 () Bool)

(assert (=> d!134269 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27203)))

(assert (=> d!134269 true))

(declare-fun _$70!80 () Unit!40650)

(assert (=> d!134269 (= (choose!80 a!3806 acc!823 Nil!27203 from!3184) _$70!80)))

