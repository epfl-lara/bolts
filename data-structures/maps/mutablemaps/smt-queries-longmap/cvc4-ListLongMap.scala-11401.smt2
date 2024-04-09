; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132776 () Bool)

(assert start!132776)

(declare-fun b!1555145 () Bool)

(declare-fun e!866054 () Bool)

(declare-fun e!866052 () Bool)

(assert (=> b!1555145 (= e!866054 (not e!866052))))

(declare-fun res!1064245 () Bool)

(assert (=> b!1555145 (=> res!1064245 e!866052)))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2286 0))(
  ( (B!2287 (val!19229 Int)) )
))
(declare-datatypes ((tuple2!24974 0))(
  ( (tuple2!24975 (_1!12497 (_ BitVec 64)) (_2!12497 B!2286)) )
))
(declare-datatypes ((List!36409 0))(
  ( (Nil!36406) (Cons!36405 (h!37852 tuple2!24974) (t!51137 List!36409)) )
))
(declare-fun l!1177 () List!36409)

(declare-fun lt!670197 () List!36409)

(declare-fun containsKey!791 (List!36409 (_ BitVec 64)) Bool)

(assert (=> b!1555145 (= res!1064245 (not (= (containsKey!791 lt!670197 otherKey!50) (containsKey!791 l!1177 otherKey!50))))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2286)

(declare-fun insertStrictlySorted!533 (List!36409 (_ BitVec 64) B!2286) List!36409)

(assert (=> b!1555145 (= lt!670197 (insertStrictlySorted!533 l!1177 newKey!105 newValue!105))))

(declare-fun e!866055 () Bool)

(assert (=> b!1555145 e!866055))

(declare-fun res!1064247 () Bool)

(assert (=> b!1555145 (=> (not res!1064247) (not e!866055))))

(declare-fun lt!670198 () List!36409)

(assert (=> b!1555145 (= res!1064247 (= (containsKey!791 lt!670198 otherKey!50) (containsKey!791 (t!51137 l!1177) otherKey!50)))))

(assert (=> b!1555145 (= lt!670198 (insertStrictlySorted!533 (t!51137 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51765 0))(
  ( (Unit!51766) )
))
(declare-fun lt!670199 () Unit!51765)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!30 (List!36409 (_ BitVec 64) B!2286 (_ BitVec 64)) Unit!51765)

(assert (=> b!1555145 (= lt!670199 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!30 (t!51137 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555146 () Bool)

(declare-fun isStrictlySorted!919 (List!36409) Bool)

(assert (=> b!1555146 (= e!866052 (isStrictlySorted!919 lt!670197))))

(declare-fun b!1555147 () Bool)

(declare-fun res!1064244 () Bool)

(assert (=> b!1555147 (=> (not res!1064244) (not e!866054))))

(assert (=> b!1555147 (= res!1064244 (isStrictlySorted!919 (t!51137 l!1177)))))

(declare-fun b!1555148 () Bool)

(declare-fun e!866053 () Bool)

(declare-fun tp_is_empty!38297 () Bool)

(declare-fun tp!112279 () Bool)

(assert (=> b!1555148 (= e!866053 (and tp_is_empty!38297 tp!112279))))

(declare-fun res!1064246 () Bool)

(assert (=> start!132776 (=> (not res!1064246) (not e!866054))))

(assert (=> start!132776 (= res!1064246 (isStrictlySorted!919 l!1177))))

(assert (=> start!132776 e!866054))

(assert (=> start!132776 e!866053))

(assert (=> start!132776 true))

(assert (=> start!132776 tp_is_empty!38297))

(declare-fun b!1555149 () Bool)

(declare-fun res!1064243 () Bool)

(assert (=> b!1555149 (=> (not res!1064243) (not e!866054))))

(assert (=> b!1555149 (= res!1064243 (and (not (= newKey!105 otherKey!50)) (is-Cons!36405 l!1177) (not (= (_1!12497 (h!37852 l!1177)) otherKey!50))))))

(declare-fun b!1555150 () Bool)

(declare-datatypes ((Option!848 0))(
  ( (Some!847 (v!22028 B!2286)) (None!846) )
))
(declare-fun getValueByKey!773 (List!36409 (_ BitVec 64)) Option!848)

(assert (=> b!1555150 (= e!866055 (= (getValueByKey!773 lt!670198 otherKey!50) (getValueByKey!773 (t!51137 l!1177) otherKey!50)))))

(assert (= (and start!132776 res!1064246) b!1555149))

(assert (= (and b!1555149 res!1064243) b!1555147))

(assert (= (and b!1555147 res!1064244) b!1555145))

(assert (= (and b!1555145 res!1064247) b!1555150))

(assert (= (and b!1555145 (not res!1064245)) b!1555146))

(assert (= (and start!132776 (is-Cons!36405 l!1177)) b!1555148))

(declare-fun m!1433295 () Bool)

(assert (=> b!1555145 m!1433295))

(declare-fun m!1433297 () Bool)

(assert (=> b!1555145 m!1433297))

(declare-fun m!1433299 () Bool)

(assert (=> b!1555145 m!1433299))

(declare-fun m!1433301 () Bool)

(assert (=> b!1555145 m!1433301))

(declare-fun m!1433303 () Bool)

(assert (=> b!1555145 m!1433303))

(declare-fun m!1433305 () Bool)

(assert (=> b!1555145 m!1433305))

(declare-fun m!1433307 () Bool)

(assert (=> b!1555145 m!1433307))

(declare-fun m!1433309 () Bool)

(assert (=> b!1555147 m!1433309))

(declare-fun m!1433311 () Bool)

(assert (=> b!1555146 m!1433311))

(declare-fun m!1433313 () Bool)

(assert (=> start!132776 m!1433313))

(declare-fun m!1433315 () Bool)

(assert (=> b!1555150 m!1433315))

(declare-fun m!1433317 () Bool)

(assert (=> b!1555150 m!1433317))

(push 1)

(assert (not b!1555145))

(assert (not start!132776))

(assert (not b!1555150))

(assert (not b!1555148))

(assert (not b!1555146))

(assert tp_is_empty!38297)

(assert (not b!1555147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!866093 () List!36409)

(declare-fun b!1555213 () Bool)

(assert (=> b!1555213 (= e!866093 (insertStrictlySorted!533 (t!51137 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555214 () Bool)

(declare-fun c!143522 () Bool)

(assert (=> b!1555214 (= c!143522 (and (is-Cons!36405 l!1177) (bvsgt (_1!12497 (h!37852 l!1177)) newKey!105)))))

(declare-fun e!866094 () List!36409)

(declare-fun e!866092 () List!36409)

(assert (=> b!1555214 (= e!866094 e!866092)))

(declare-fun b!1555215 () Bool)

(declare-fun e!866091 () List!36409)

(assert (=> b!1555215 (= e!866091 e!866094)))

(declare-fun c!143521 () Bool)

(assert (=> b!1555215 (= c!143521 (and (is-Cons!36405 l!1177) (= (_1!12497 (h!37852 l!1177)) newKey!105)))))

(declare-fun b!1555216 () Bool)

(declare-fun call!71502 () List!36409)

(assert (=> b!1555216 (= e!866092 call!71502)))

(declare-fun b!1555217 () Bool)

(assert (=> b!1555217 (= e!866093 (ite c!143521 (t!51137 l!1177) (ite c!143522 (Cons!36405 (h!37852 l!1177) (t!51137 l!1177)) Nil!36406)))))

(declare-fun bm!71497 () Bool)

(declare-fun call!71501 () List!36409)

(assert (=> bm!71497 (= call!71502 call!71501)))

(declare-fun bm!71498 () Bool)

(declare-fun call!71500 () List!36409)

(assert (=> bm!71498 (= call!71501 call!71500)))

(declare-fun b!1555218 () Bool)

(assert (=> b!1555218 (= e!866092 call!71502)))

(declare-fun b!1555219 () Bool)

(declare-fun res!1064263 () Bool)

(declare-fun e!866090 () Bool)

(assert (=> b!1555219 (=> (not res!1064263) (not e!866090))))

(declare-fun lt!670204 () List!36409)

(assert (=> b!1555219 (= res!1064263 (containsKey!791 lt!670204 newKey!105))))

(declare-fun b!1555220 () Bool)

(assert (=> b!1555220 (= e!866091 call!71500)))

(declare-fun bm!71499 () Bool)

(declare-fun c!143523 () Bool)

(declare-fun $colon$colon!959 (List!36409 tuple2!24974) List!36409)

(assert (=> bm!71499 (= call!71500 ($colon$colon!959 e!866093 (ite c!143523 (h!37852 l!1177) (tuple2!24975 newKey!105 newValue!105))))))

(declare-fun c!143520 () Bool)

(assert (=> bm!71499 (= c!143520 c!143523)))

(declare-fun b!1555222 () Bool)

(declare-fun contains!10181 (List!36409 tuple2!24974) Bool)

(assert (=> b!1555222 (= e!866090 (contains!10181 lt!670204 (tuple2!24975 newKey!105 newValue!105)))))

(declare-fun d!161831 () Bool)

(assert (=> d!161831 e!866090))

(declare-fun res!1064262 () Bool)

(assert (=> d!161831 (=> (not res!1064262) (not e!866090))))

(assert (=> d!161831 (= res!1064262 (isStrictlySorted!919 lt!670204))))

(assert (=> d!161831 (= lt!670204 e!866091)))

(assert (=> d!161831 (= c!143523 (and (is-Cons!36405 l!1177) (bvslt (_1!12497 (h!37852 l!1177)) newKey!105)))))

(assert (=> d!161831 (isStrictlySorted!919 l!1177)))

(assert (=> d!161831 (= (insertStrictlySorted!533 l!1177 newKey!105 newValue!105) lt!670204)))

(declare-fun b!1555221 () Bool)

(assert (=> b!1555221 (= e!866094 call!71501)))

(assert (= (and d!161831 c!143523) b!1555220))

(assert (= (and d!161831 (not c!143523)) b!1555215))

(assert (= (and b!1555215 c!143521) b!1555221))

(assert (= (and b!1555215 (not c!143521)) b!1555214))

(assert (= (and b!1555214 c!143522) b!1555218))

(assert (= (and b!1555214 (not c!143522)) b!1555216))

(assert (= (or b!1555218 b!1555216) bm!71497))

(assert (= (or b!1555221 bm!71497) bm!71498))

(assert (= (or b!1555220 bm!71498) bm!71499))

(assert (= (and bm!71499 c!143520) b!1555213))

(assert (= (and bm!71499 (not c!143520)) b!1555217))

(assert (= (and d!161831 res!1064262) b!1555219))

(assert (= (and b!1555219 res!1064263) b!1555222))

(assert (=> b!1555213 m!1433299))

(declare-fun m!1433325 () Bool)

(assert (=> b!1555219 m!1433325))

(declare-fun m!1433327 () Bool)

(assert (=> b!1555222 m!1433327))

(declare-fun m!1433329 () Bool)

(assert (=> bm!71499 m!1433329))

(declare-fun m!1433331 () Bool)

(assert (=> d!161831 m!1433331))

(assert (=> d!161831 m!1433313))

(assert (=> b!1555145 d!161831))

(declare-fun d!161843 () Bool)

(declare-fun res!1064274 () Bool)

(declare-fun e!866108 () Bool)

(assert (=> d!161843 (=> res!1064274 e!866108)))

(assert (=> d!161843 (= res!1064274 (and (is-Cons!36405 l!1177) (= (_1!12497 (h!37852 l!1177)) otherKey!50)))))

(assert (=> d!161843 (= (containsKey!791 l!1177 otherKey!50) e!866108)))

(declare-fun b!1555239 () Bool)

(declare-fun e!866109 () Bool)

(assert (=> b!1555239 (= e!866108 e!866109)))

(declare-fun res!1064275 () Bool)

(assert (=> b!1555239 (=> (not res!1064275) (not e!866109))))

(assert (=> b!1555239 (= res!1064275 (and (or (not (is-Cons!36405 l!1177)) (bvsle (_1!12497 (h!37852 l!1177)) otherKey!50)) (is-Cons!36405 l!1177) (bvslt (_1!12497 (h!37852 l!1177)) otherKey!50)))))

(declare-fun b!1555240 () Bool)

(assert (=> b!1555240 (= e!866109 (containsKey!791 (t!51137 l!1177) otherKey!50))))

(assert (= (and d!161843 (not res!1064274)) b!1555239))

(assert (= (and b!1555239 res!1064275) b!1555240))

(assert (=> b!1555240 m!1433301))

(assert (=> b!1555145 d!161843))

(declare-fun b!1555243 () Bool)

(declare-fun e!866113 () List!36409)

(assert (=> b!1555243 (= e!866113 (insertStrictlySorted!533 (t!51137 (t!51137 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1555244 () Bool)

(declare-fun c!143530 () Bool)

(assert (=> b!1555244 (= c!143530 (and (is-Cons!36405 (t!51137 l!1177)) (bvsgt (_1!12497 (h!37852 (t!51137 l!1177))) newKey!105)))))

(declare-fun e!866114 () List!36409)

(declare-fun e!866112 () List!36409)

(assert (=> b!1555244 (= e!866114 e!866112)))

(declare-fun b!1555245 () Bool)

(declare-fun e!866111 () List!36409)

(assert (=> b!1555245 (= e!866111 e!866114)))

(declare-fun c!143529 () Bool)

(assert (=> b!1555245 (= c!143529 (and (is-Cons!36405 (t!51137 l!1177)) (= (_1!12497 (h!37852 (t!51137 l!1177))) newKey!105)))))

(declare-fun b!1555246 () Bool)

(declare-fun call!71508 () List!36409)

(assert (=> b!1555246 (= e!866112 call!71508)))

(declare-fun b!1555247 () Bool)

(assert (=> b!1555247 (= e!866113 (ite c!143529 (t!51137 (t!51137 l!1177)) (ite c!143530 (Cons!36405 (h!37852 (t!51137 l!1177)) (t!51137 (t!51137 l!1177))) Nil!36406)))))

(declare-fun bm!71503 () Bool)

(declare-fun call!71507 () List!36409)

(assert (=> bm!71503 (= call!71508 call!71507)))

(declare-fun bm!71504 () Bool)

(declare-fun call!71506 () List!36409)

(assert (=> bm!71504 (= call!71507 call!71506)))

(declare-fun b!1555248 () Bool)

(assert (=> b!1555248 (= e!866112 call!71508)))

(declare-fun b!1555249 () Bool)

(declare-fun res!1064277 () Bool)

(declare-fun e!866110 () Bool)

(assert (=> b!1555249 (=> (not res!1064277) (not e!866110))))

(declare-fun lt!670206 () List!36409)

(assert (=> b!1555249 (= res!1064277 (containsKey!791 lt!670206 newKey!105))))

(declare-fun b!1555250 () Bool)

(assert (=> b!1555250 (= e!866111 call!71506)))

(declare-fun bm!71505 () Bool)

(declare-fun c!143531 () Bool)

(assert (=> bm!71505 (= call!71506 ($colon$colon!959 e!866113 (ite c!143531 (h!37852 (t!51137 l!1177)) (tuple2!24975 newKey!105 newValue!105))))))

(declare-fun c!143528 () Bool)

(assert (=> bm!71505 (= c!143528 c!143531)))

(declare-fun b!1555252 () Bool)

(assert (=> b!1555252 (= e!866110 (contains!10181 lt!670206 (tuple2!24975 newKey!105 newValue!105)))))

(declare-fun d!161847 () Bool)

(assert (=> d!161847 e!866110))

(declare-fun res!1064276 () Bool)

(assert (=> d!161847 (=> (not res!1064276) (not e!866110))))

(assert (=> d!161847 (= res!1064276 (isStrictlySorted!919 lt!670206))))

(assert (=> d!161847 (= lt!670206 e!866111)))

(assert (=> d!161847 (= c!143531 (and (is-Cons!36405 (t!51137 l!1177)) (bvslt (_1!12497 (h!37852 (t!51137 l!1177))) newKey!105)))))

(assert (=> d!161847 (isStrictlySorted!919 (t!51137 l!1177))))

(assert (=> d!161847 (= (insertStrictlySorted!533 (t!51137 l!1177) newKey!105 newValue!105) lt!670206)))

(declare-fun b!1555251 () Bool)

(assert (=> b!1555251 (= e!866114 call!71507)))

(assert (= (and d!161847 c!143531) b!1555250))

(assert (= (and d!161847 (not c!143531)) b!1555245))

(assert (= (and b!1555245 c!143529) b!1555251))

(assert (= (and b!1555245 (not c!143529)) b!1555244))

(assert (= (and b!1555244 c!143530) b!1555248))

(assert (= (and b!1555244 (not c!143530)) b!1555246))

(assert (= (or b!1555248 b!1555246) bm!71503))

(assert (= (or b!1555251 bm!71503) bm!71504))

(assert (= (or b!1555250 bm!71504) bm!71505))

(assert (= (and bm!71505 c!143528) b!1555243))

(assert (= (and bm!71505 (not c!143528)) b!1555247))

(assert (= (and d!161847 res!1064276) b!1555249))

(assert (= (and b!1555249 res!1064277) b!1555252))

(declare-fun m!1433341 () Bool)

(assert (=> b!1555243 m!1433341))

(declare-fun m!1433343 () Bool)

(assert (=> b!1555249 m!1433343))

(declare-fun m!1433345 () Bool)

(assert (=> b!1555252 m!1433345))

(declare-fun m!1433349 () Bool)

(assert (=> bm!71505 m!1433349))

(declare-fun m!1433351 () Bool)

(assert (=> d!161847 m!1433351))

(assert (=> d!161847 m!1433309))

(assert (=> b!1555145 d!161847))

(declare-fun d!161851 () Bool)

(declare-fun res!1064280 () Bool)

(declare-fun e!866117 () Bool)

(assert (=> d!161851 (=> res!1064280 e!866117)))

(assert (=> d!161851 (= res!1064280 (and (is-Cons!36405 (t!51137 l!1177)) (= (_1!12497 (h!37852 (t!51137 l!1177))) otherKey!50)))))

(assert (=> d!161851 (= (containsKey!791 (t!51137 l!1177) otherKey!50) e!866117)))

(declare-fun b!1555255 () Bool)

(declare-fun e!866118 () Bool)

(assert (=> b!1555255 (= e!866117 e!866118)))

(declare-fun res!1064281 () Bool)

(assert (=> b!1555255 (=> (not res!1064281) (not e!866118))))

(assert (=> b!1555255 (= res!1064281 (and (or (not (is-Cons!36405 (t!51137 l!1177))) (bvsle (_1!12497 (h!37852 (t!51137 l!1177))) otherKey!50)) (is-Cons!36405 (t!51137 l!1177)) (bvslt (_1!12497 (h!37852 (t!51137 l!1177))) otherKey!50)))))

(declare-fun b!1555256 () Bool)

(assert (=> b!1555256 (= e!866118 (containsKey!791 (t!51137 (t!51137 l!1177)) otherKey!50))))

(assert (= (and d!161851 (not res!1064280)) b!1555255))

(assert (= (and b!1555255 res!1064281) b!1555256))

(declare-fun m!1433353 () Bool)

(assert (=> b!1555256 m!1433353))

(assert (=> b!1555145 d!161851))

(declare-fun d!161853 () Bool)

(declare-fun res!1064282 () Bool)

(declare-fun e!866119 () Bool)

(assert (=> d!161853 (=> res!1064282 e!866119)))

(assert (=> d!161853 (= res!1064282 (and (is-Cons!36405 lt!670198) (= (_1!12497 (h!37852 lt!670198)) otherKey!50)))))

(assert (=> d!161853 (= (containsKey!791 lt!670198 otherKey!50) e!866119)))

(declare-fun b!1555257 () Bool)

(declare-fun e!866120 () Bool)

(assert (=> b!1555257 (= e!866119 e!866120)))

(declare-fun res!1064283 () Bool)

(assert (=> b!1555257 (=> (not res!1064283) (not e!866120))))

(assert (=> b!1555257 (= res!1064283 (and (or (not (is-Cons!36405 lt!670198)) (bvsle (_1!12497 (h!37852 lt!670198)) otherKey!50)) (is-Cons!36405 lt!670198) (bvslt (_1!12497 (h!37852 lt!670198)) otherKey!50)))))

(declare-fun b!1555258 () Bool)

(assert (=> b!1555258 (= e!866120 (containsKey!791 (t!51137 lt!670198) otherKey!50))))

(assert (= (and d!161853 (not res!1064282)) b!1555257))

(assert (= (and b!1555257 res!1064283) b!1555258))

(declare-fun m!1433355 () Bool)

(assert (=> b!1555258 m!1433355))

(assert (=> b!1555145 d!161853))

(declare-fun d!161855 () Bool)

(declare-fun e!866142 () Bool)

(assert (=> d!161855 e!866142))

(declare-fun res!1064298 () Bool)

(assert (=> d!161855 (=> (not res!1064298) (not e!866142))))

(assert (=> d!161855 (= res!1064298 (= (containsKey!791 (insertStrictlySorted!533 (t!51137 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!791 (t!51137 l!1177) otherKey!50)))))

(declare-fun lt!670214 () Unit!51765)

(declare-fun choose!2065 (List!36409 (_ BitVec 64) B!2286 (_ BitVec 64)) Unit!51765)

(assert (=> d!161855 (= lt!670214 (choose!2065 (t!51137 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866141 () Bool)

(assert (=> d!161855 e!866141))

(declare-fun res!1064299 () Bool)

(assert (=> d!161855 (=> (not res!1064299) (not e!866141))))

(assert (=> d!161855 (= res!1064299 (isStrictlySorted!919 (t!51137 l!1177)))))

(assert (=> d!161855 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!30 (t!51137 l!1177) newKey!105 newValue!105 otherKey!50) lt!670214)))

(declare-fun b!1555289 () Bool)

(assert (=> b!1555289 (= e!866141 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555290 () Bool)

(assert (=> b!1555290 (= e!866142 (= (getValueByKey!773 (insertStrictlySorted!533 (t!51137 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!773 (t!51137 l!1177) otherKey!50)))))

(assert (= (and d!161855 res!1064299) b!1555289))

(assert (= (and d!161855 res!1064298) b!1555290))

(assert (=> d!161855 m!1433309))

(assert (=> d!161855 m!1433301))

(assert (=> d!161855 m!1433299))

(assert (=> d!161855 m!1433299))

(declare-fun m!1433363 () Bool)

(assert (=> d!161855 m!1433363))

(declare-fun m!1433365 () Bool)

(assert (=> d!161855 m!1433365))

(assert (=> b!1555290 m!1433299))

(assert (=> b!1555290 m!1433299))

(declare-fun m!1433367 () Bool)

(assert (=> b!1555290 m!1433367))

(assert (=> b!1555290 m!1433317))

(assert (=> b!1555145 d!161855))

(declare-fun d!161861 () Bool)

(declare-fun res!1064304 () Bool)

(declare-fun e!866150 () Bool)

(assert (=> d!161861 (=> res!1064304 e!866150)))

(assert (=> d!161861 (= res!1064304 (and (is-Cons!36405 lt!670197) (= (_1!12497 (h!37852 lt!670197)) otherKey!50)))))

(assert (=> d!161861 (= (containsKey!791 lt!670197 otherKey!50) e!866150)))

(declare-fun b!1555303 () Bool)

(declare-fun e!866151 () Bool)

(assert (=> b!1555303 (= e!866150 e!866151)))

(declare-fun res!1064305 () Bool)

(assert (=> b!1555303 (=> (not res!1064305) (not e!866151))))

(assert (=> b!1555303 (= res!1064305 (and (or (not (is-Cons!36405 lt!670197)) (bvsle (_1!12497 (h!37852 lt!670197)) otherKey!50)) (is-Cons!36405 lt!670197) (bvslt (_1!12497 (h!37852 lt!670197)) otherKey!50)))))

(declare-fun b!1555304 () Bool)

(assert (=> b!1555304 (= e!866151 (containsKey!791 (t!51137 lt!670197) otherKey!50))))

(assert (= (and d!161861 (not res!1064304)) b!1555303))

(assert (= (and b!1555303 res!1064305) b!1555304))

(declare-fun m!1433369 () Bool)

(assert (=> b!1555304 m!1433369))

(assert (=> b!1555145 d!161861))

(declare-fun d!161863 () Bool)

(declare-fun c!143556 () Bool)

(assert (=> d!161863 (= c!143556 (and (is-Cons!36405 lt!670198) (= (_1!12497 (h!37852 lt!670198)) otherKey!50)))))

(declare-fun e!866173 () Option!848)

(assert (=> d!161863 (= (getValueByKey!773 lt!670198 otherKey!50) e!866173)))

(declare-fun b!1555340 () Bool)

(declare-fun e!866174 () Option!848)

(assert (=> b!1555340 (= e!866173 e!866174)))

(declare-fun c!143557 () Bool)

(assert (=> b!1555340 (= c!143557 (and (is-Cons!36405 lt!670198) (not (= (_1!12497 (h!37852 lt!670198)) otherKey!50))))))

(declare-fun b!1555341 () Bool)

(assert (=> b!1555341 (= e!866174 (getValueByKey!773 (t!51137 lt!670198) otherKey!50))))

(declare-fun b!1555342 () Bool)

(assert (=> b!1555342 (= e!866174 None!846)))

(declare-fun b!1555339 () Bool)

(assert (=> b!1555339 (= e!866173 (Some!847 (_2!12497 (h!37852 lt!670198))))))

(assert (= (and d!161863 c!143556) b!1555339))

(assert (= (and d!161863 (not c!143556)) b!1555340))

(assert (= (and b!1555340 c!143557) b!1555341))

(assert (= (and b!1555340 (not c!143557)) b!1555342))

(declare-fun m!1433393 () Bool)

(assert (=> b!1555341 m!1433393))

(assert (=> b!1555150 d!161863))

(declare-fun d!161873 () Bool)

(declare-fun c!143558 () Bool)

(assert (=> d!161873 (= c!143558 (and (is-Cons!36405 (t!51137 l!1177)) (= (_1!12497 (h!37852 (t!51137 l!1177))) otherKey!50)))))

(declare-fun e!866175 () Option!848)

(assert (=> d!161873 (= (getValueByKey!773 (t!51137 l!1177) otherKey!50) e!866175)))

(declare-fun b!1555344 () Bool)

(declare-fun e!866176 () Option!848)

(assert (=> b!1555344 (= e!866175 e!866176)))

(declare-fun c!143559 () Bool)

(assert (=> b!1555344 (= c!143559 (and (is-Cons!36405 (t!51137 l!1177)) (not (= (_1!12497 (h!37852 (t!51137 l!1177))) otherKey!50))))))

(declare-fun b!1555345 () Bool)

(assert (=> b!1555345 (= e!866176 (getValueByKey!773 (t!51137 (t!51137 l!1177)) otherKey!50))))

(declare-fun b!1555346 () Bool)

(assert (=> b!1555346 (= e!866176 None!846)))

(declare-fun b!1555343 () Bool)

(assert (=> b!1555343 (= e!866175 (Some!847 (_2!12497 (h!37852 (t!51137 l!1177)))))))

(assert (= (and d!161873 c!143558) b!1555343))

(assert (= (and d!161873 (not c!143558)) b!1555344))

(assert (= (and b!1555344 c!143559) b!1555345))

(assert (= (and b!1555344 (not c!143559)) b!1555346))

(declare-fun m!1433395 () Bool)

(assert (=> b!1555345 m!1433395))

(assert (=> b!1555150 d!161873))

(declare-fun d!161875 () Bool)

(declare-fun res!1064330 () Bool)

(declare-fun e!866198 () Bool)

(assert (=> d!161875 (=> res!1064330 e!866198)))

(assert (=> d!161875 (= res!1064330 (or (is-Nil!36406 l!1177) (is-Nil!36406 (t!51137 l!1177))))))

(assert (=> d!161875 (= (isStrictlySorted!919 l!1177) e!866198)))

(declare-fun b!1555377 () Bool)

(declare-fun e!866199 () Bool)

(assert (=> b!1555377 (= e!866198 e!866199)))

(declare-fun res!1064331 () Bool)

(assert (=> b!1555377 (=> (not res!1064331) (not e!866199))))

(assert (=> b!1555377 (= res!1064331 (bvslt (_1!12497 (h!37852 l!1177)) (_1!12497 (h!37852 (t!51137 l!1177)))))))

(declare-fun b!1555378 () Bool)

(assert (=> b!1555378 (= e!866199 (isStrictlySorted!919 (t!51137 l!1177)))))

(assert (= (and d!161875 (not res!1064330)) b!1555377))

(assert (= (and b!1555377 res!1064331) b!1555378))

(assert (=> b!1555378 m!1433309))

(assert (=> start!132776 d!161875))

(declare-fun d!161891 () Bool)

(declare-fun res!1064334 () Bool)

(declare-fun e!866202 () Bool)

(assert (=> d!161891 (=> res!1064334 e!866202)))

(assert (=> d!161891 (= res!1064334 (or (is-Nil!36406 (t!51137 l!1177)) (is-Nil!36406 (t!51137 (t!51137 l!1177)))))))

(assert (=> d!161891 (= (isStrictlySorted!919 (t!51137 l!1177)) e!866202)))

