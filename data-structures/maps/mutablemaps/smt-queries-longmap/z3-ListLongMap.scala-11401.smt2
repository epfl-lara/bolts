; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132774 () Bool)

(assert start!132774)

(declare-fun b!1555127 () Bool)

(declare-fun e!866040 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2284 0))(
  ( (B!2285 (val!19228 Int)) )
))
(declare-datatypes ((tuple2!24972 0))(
  ( (tuple2!24973 (_1!12496 (_ BitVec 64)) (_2!12496 B!2284)) )
))
(declare-datatypes ((List!36408 0))(
  ( (Nil!36405) (Cons!36404 (h!37851 tuple2!24972) (t!51136 List!36408)) )
))
(declare-fun lt!670189 () List!36408)

(declare-fun l!1177 () List!36408)

(declare-datatypes ((Option!847 0))(
  ( (Some!846 (v!22027 B!2284)) (None!845) )
))
(declare-fun getValueByKey!772 (List!36408 (_ BitVec 64)) Option!847)

(assert (=> b!1555127 (= e!866040 (= (getValueByKey!772 lt!670189 otherKey!50) (getValueByKey!772 (t!51136 l!1177) otherKey!50)))))

(declare-fun b!1555128 () Bool)

(declare-fun e!866041 () Bool)

(declare-fun e!866042 () Bool)

(assert (=> b!1555128 (= e!866041 (not e!866042))))

(declare-fun res!1064228 () Bool)

(assert (=> b!1555128 (=> res!1064228 e!866042)))

(declare-fun lt!670188 () List!36408)

(declare-fun containsKey!790 (List!36408 (_ BitVec 64)) Bool)

(assert (=> b!1555128 (= res!1064228 (not (= (containsKey!790 lt!670188 otherKey!50) (containsKey!790 l!1177 otherKey!50))))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2284)

(declare-fun insertStrictlySorted!532 (List!36408 (_ BitVec 64) B!2284) List!36408)

(assert (=> b!1555128 (= lt!670188 (insertStrictlySorted!532 l!1177 newKey!105 newValue!105))))

(assert (=> b!1555128 e!866040))

(declare-fun res!1064232 () Bool)

(assert (=> b!1555128 (=> (not res!1064232) (not e!866040))))

(assert (=> b!1555128 (= res!1064232 (= (containsKey!790 lt!670189 otherKey!50) (containsKey!790 (t!51136 l!1177) otherKey!50)))))

(assert (=> b!1555128 (= lt!670189 (insertStrictlySorted!532 (t!51136 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51763 0))(
  ( (Unit!51764) )
))
(declare-fun lt!670190 () Unit!51763)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!29 (List!36408 (_ BitVec 64) B!2284 (_ BitVec 64)) Unit!51763)

(assert (=> b!1555128 (= lt!670190 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!29 (t!51136 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555129 () Bool)

(declare-fun res!1064230 () Bool)

(assert (=> b!1555129 (=> (not res!1064230) (not e!866041))))

(declare-fun isStrictlySorted!918 (List!36408) Bool)

(assert (=> b!1555129 (= res!1064230 (isStrictlySorted!918 (t!51136 l!1177)))))

(declare-fun b!1555130 () Bool)

(assert (=> b!1555130 (= e!866042 (isStrictlySorted!918 lt!670188))))

(declare-fun b!1555131 () Bool)

(declare-fun e!866043 () Bool)

(declare-fun tp_is_empty!38295 () Bool)

(declare-fun tp!112276 () Bool)

(assert (=> b!1555131 (= e!866043 (and tp_is_empty!38295 tp!112276))))

(declare-fun b!1555132 () Bool)

(declare-fun res!1064231 () Bool)

(assert (=> b!1555132 (=> (not res!1064231) (not e!866041))))

(get-info :version)

(assert (=> b!1555132 (= res!1064231 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36404) l!1177) (not (= (_1!12496 (h!37851 l!1177)) otherKey!50))))))

(declare-fun res!1064229 () Bool)

(assert (=> start!132774 (=> (not res!1064229) (not e!866041))))

(assert (=> start!132774 (= res!1064229 (isStrictlySorted!918 l!1177))))

(assert (=> start!132774 e!866041))

(assert (=> start!132774 e!866043))

(assert (=> start!132774 true))

(assert (=> start!132774 tp_is_empty!38295))

(assert (= (and start!132774 res!1064229) b!1555132))

(assert (= (and b!1555132 res!1064231) b!1555129))

(assert (= (and b!1555129 res!1064230) b!1555128))

(assert (= (and b!1555128 res!1064232) b!1555127))

(assert (= (and b!1555128 (not res!1064228)) b!1555130))

(assert (= (and start!132774 ((_ is Cons!36404) l!1177)) b!1555131))

(declare-fun m!1433271 () Bool)

(assert (=> b!1555130 m!1433271))

(declare-fun m!1433273 () Bool)

(assert (=> b!1555129 m!1433273))

(declare-fun m!1433275 () Bool)

(assert (=> b!1555128 m!1433275))

(declare-fun m!1433277 () Bool)

(assert (=> b!1555128 m!1433277))

(declare-fun m!1433279 () Bool)

(assert (=> b!1555128 m!1433279))

(declare-fun m!1433281 () Bool)

(assert (=> b!1555128 m!1433281))

(declare-fun m!1433283 () Bool)

(assert (=> b!1555128 m!1433283))

(declare-fun m!1433285 () Bool)

(assert (=> b!1555128 m!1433285))

(declare-fun m!1433287 () Bool)

(assert (=> b!1555128 m!1433287))

(declare-fun m!1433289 () Bool)

(assert (=> start!132774 m!1433289))

(declare-fun m!1433291 () Bool)

(assert (=> b!1555127 m!1433291))

(declare-fun m!1433293 () Bool)

(assert (=> b!1555127 m!1433293))

(check-sat (not b!1555130) (not b!1555131) (not b!1555128) (not b!1555127) (not start!132774) tp_is_empty!38295 (not b!1555129))
(check-sat)
(get-model)

(declare-fun b!1555223 () Bool)

(declare-fun e!866095 () List!36408)

(declare-fun call!71505 () List!36408)

(assert (=> b!1555223 (= e!866095 call!71505)))

(declare-fun b!1555224 () Bool)

(declare-fun e!866098 () List!36408)

(assert (=> b!1555224 (= e!866098 (insertStrictlySorted!532 (t!51136 l!1177) newKey!105 newValue!105))))

(declare-fun bm!71500 () Bool)

(declare-fun call!71503 () List!36408)

(declare-fun call!71504 () List!36408)

(assert (=> bm!71500 (= call!71503 call!71504)))

(declare-fun b!1555225 () Bool)

(declare-fun e!866099 () List!36408)

(assert (=> b!1555225 (= e!866095 e!866099)))

(declare-fun c!143526 () Bool)

(assert (=> b!1555225 (= c!143526 (and ((_ is Cons!36404) l!1177) (= (_1!12496 (h!37851 l!1177)) newKey!105)))))

(declare-fun bm!71501 () Bool)

(assert (=> bm!71501 (= call!71504 call!71505)))

(declare-fun b!1555226 () Bool)

(declare-fun c!143524 () Bool)

(assert (=> b!1555226 (= c!143524 (and ((_ is Cons!36404) l!1177) (bvsgt (_1!12496 (h!37851 l!1177)) newKey!105)))))

(declare-fun e!866097 () List!36408)

(assert (=> b!1555226 (= e!866099 e!866097)))

(declare-fun d!161833 () Bool)

(declare-fun e!866096 () Bool)

(assert (=> d!161833 e!866096))

(declare-fun res!1064265 () Bool)

(assert (=> d!161833 (=> (not res!1064265) (not e!866096))))

(declare-fun lt!670205 () List!36408)

(assert (=> d!161833 (= res!1064265 (isStrictlySorted!918 lt!670205))))

(assert (=> d!161833 (= lt!670205 e!866095)))

(declare-fun c!143525 () Bool)

(assert (=> d!161833 (= c!143525 (and ((_ is Cons!36404) l!1177) (bvslt (_1!12496 (h!37851 l!1177)) newKey!105)))))

(assert (=> d!161833 (isStrictlySorted!918 l!1177)))

(assert (=> d!161833 (= (insertStrictlySorted!532 l!1177 newKey!105 newValue!105) lt!670205)))

(declare-fun b!1555227 () Bool)

(assert (=> b!1555227 (= e!866097 call!71503)))

(declare-fun b!1555228 () Bool)

(declare-fun res!1064264 () Bool)

(assert (=> b!1555228 (=> (not res!1064264) (not e!866096))))

(assert (=> b!1555228 (= res!1064264 (containsKey!790 lt!670205 newKey!105))))

(declare-fun b!1555229 () Bool)

(declare-fun contains!10180 (List!36408 tuple2!24972) Bool)

(assert (=> b!1555229 (= e!866096 (contains!10180 lt!670205 (tuple2!24973 newKey!105 newValue!105)))))

(declare-fun b!1555230 () Bool)

(assert (=> b!1555230 (= e!866098 (ite c!143526 (t!51136 l!1177) (ite c!143524 (Cons!36404 (h!37851 l!1177) (t!51136 l!1177)) Nil!36405)))))

(declare-fun bm!71502 () Bool)

(declare-fun $colon$colon!960 (List!36408 tuple2!24972) List!36408)

(assert (=> bm!71502 (= call!71505 ($colon$colon!960 e!866098 (ite c!143525 (h!37851 l!1177) (tuple2!24973 newKey!105 newValue!105))))))

(declare-fun c!143527 () Bool)

(assert (=> bm!71502 (= c!143527 c!143525)))

(declare-fun b!1555231 () Bool)

(assert (=> b!1555231 (= e!866099 call!71504)))

(declare-fun b!1555232 () Bool)

(assert (=> b!1555232 (= e!866097 call!71503)))

(assert (= (and d!161833 c!143525) b!1555223))

(assert (= (and d!161833 (not c!143525)) b!1555225))

(assert (= (and b!1555225 c!143526) b!1555231))

(assert (= (and b!1555225 (not c!143526)) b!1555226))

(assert (= (and b!1555226 c!143524) b!1555227))

(assert (= (and b!1555226 (not c!143524)) b!1555232))

(assert (= (or b!1555227 b!1555232) bm!71500))

(assert (= (or b!1555231 bm!71500) bm!71501))

(assert (= (or b!1555223 bm!71501) bm!71502))

(assert (= (and bm!71502 c!143527) b!1555224))

(assert (= (and bm!71502 (not c!143527)) b!1555230))

(assert (= (and d!161833 res!1064265) b!1555228))

(assert (= (and b!1555228 res!1064264) b!1555229))

(declare-fun m!1433333 () Bool)

(assert (=> d!161833 m!1433333))

(assert (=> d!161833 m!1433289))

(declare-fun m!1433335 () Bool)

(assert (=> b!1555229 m!1433335))

(declare-fun m!1433337 () Bool)

(assert (=> bm!71502 m!1433337))

(declare-fun m!1433339 () Bool)

(assert (=> b!1555228 m!1433339))

(assert (=> b!1555224 m!1433285))

(assert (=> b!1555128 d!161833))

(declare-fun d!161845 () Bool)

(declare-fun res!1064278 () Bool)

(declare-fun e!866115 () Bool)

(assert (=> d!161845 (=> res!1064278 e!866115)))

(assert (=> d!161845 (= res!1064278 (and ((_ is Cons!36404) lt!670189) (= (_1!12496 (h!37851 lt!670189)) otherKey!50)))))

(assert (=> d!161845 (= (containsKey!790 lt!670189 otherKey!50) e!866115)))

(declare-fun b!1555253 () Bool)

(declare-fun e!866116 () Bool)

(assert (=> b!1555253 (= e!866115 e!866116)))

(declare-fun res!1064279 () Bool)

(assert (=> b!1555253 (=> (not res!1064279) (not e!866116))))

(assert (=> b!1555253 (= res!1064279 (and (or (not ((_ is Cons!36404) lt!670189)) (bvsle (_1!12496 (h!37851 lt!670189)) otherKey!50)) ((_ is Cons!36404) lt!670189) (bvslt (_1!12496 (h!37851 lt!670189)) otherKey!50)))))

(declare-fun b!1555254 () Bool)

(assert (=> b!1555254 (= e!866116 (containsKey!790 (t!51136 lt!670189) otherKey!50))))

(assert (= (and d!161845 (not res!1064278)) b!1555253))

(assert (= (and b!1555253 res!1064279) b!1555254))

(declare-fun m!1433347 () Bool)

(assert (=> b!1555254 m!1433347))

(assert (=> b!1555128 d!161845))

(declare-fun d!161849 () Bool)

(declare-fun e!866139 () Bool)

(assert (=> d!161849 e!866139))

(declare-fun res!1064297 () Bool)

(assert (=> d!161849 (=> (not res!1064297) (not e!866139))))

(assert (=> d!161849 (= res!1064297 (= (containsKey!790 (insertStrictlySorted!532 (t!51136 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!790 (t!51136 l!1177) otherKey!50)))))

(declare-fun lt!670213 () Unit!51763)

(declare-fun choose!2064 (List!36408 (_ BitVec 64) B!2284 (_ BitVec 64)) Unit!51763)

(assert (=> d!161849 (= lt!670213 (choose!2064 (t!51136 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866140 () Bool)

(assert (=> d!161849 e!866140))

(declare-fun res!1064296 () Bool)

(assert (=> d!161849 (=> (not res!1064296) (not e!866140))))

(assert (=> d!161849 (= res!1064296 (isStrictlySorted!918 (t!51136 l!1177)))))

(assert (=> d!161849 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!29 (t!51136 l!1177) newKey!105 newValue!105 otherKey!50) lt!670213)))

(declare-fun b!1555287 () Bool)

(assert (=> b!1555287 (= e!866140 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555288 () Bool)

(assert (=> b!1555288 (= e!866139 (= (getValueByKey!772 (insertStrictlySorted!532 (t!51136 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!772 (t!51136 l!1177) otherKey!50)))))

(assert (= (and d!161849 res!1064296) b!1555287))

(assert (= (and d!161849 res!1064297) b!1555288))

(assert (=> d!161849 m!1433281))

(assert (=> d!161849 m!1433273))

(declare-fun m!1433357 () Bool)

(assert (=> d!161849 m!1433357))

(assert (=> d!161849 m!1433285))

(declare-fun m!1433359 () Bool)

(assert (=> d!161849 m!1433359))

(assert (=> d!161849 m!1433285))

(assert (=> b!1555288 m!1433285))

(assert (=> b!1555288 m!1433285))

(declare-fun m!1433361 () Bool)

(assert (=> b!1555288 m!1433361))

(assert (=> b!1555288 m!1433293))

(assert (=> b!1555128 d!161849))

(declare-fun d!161857 () Bool)

(declare-fun res!1064300 () Bool)

(declare-fun e!866143 () Bool)

(assert (=> d!161857 (=> res!1064300 e!866143)))

(assert (=> d!161857 (= res!1064300 (and ((_ is Cons!36404) l!1177) (= (_1!12496 (h!37851 l!1177)) otherKey!50)))))

(assert (=> d!161857 (= (containsKey!790 l!1177 otherKey!50) e!866143)))

(declare-fun b!1555291 () Bool)

(declare-fun e!866144 () Bool)

(assert (=> b!1555291 (= e!866143 e!866144)))

(declare-fun res!1064301 () Bool)

(assert (=> b!1555291 (=> (not res!1064301) (not e!866144))))

(assert (=> b!1555291 (= res!1064301 (and (or (not ((_ is Cons!36404) l!1177)) (bvsle (_1!12496 (h!37851 l!1177)) otherKey!50)) ((_ is Cons!36404) l!1177) (bvslt (_1!12496 (h!37851 l!1177)) otherKey!50)))))

(declare-fun b!1555292 () Bool)

(assert (=> b!1555292 (= e!866144 (containsKey!790 (t!51136 l!1177) otherKey!50))))

(assert (= (and d!161857 (not res!1064300)) b!1555291))

(assert (= (and b!1555291 res!1064301) b!1555292))

(assert (=> b!1555292 m!1433281))

(assert (=> b!1555128 d!161857))

(declare-fun b!1555293 () Bool)

(declare-fun e!866145 () List!36408)

(declare-fun call!71517 () List!36408)

(assert (=> b!1555293 (= e!866145 call!71517)))

(declare-fun e!866148 () List!36408)

(declare-fun b!1555294 () Bool)

(assert (=> b!1555294 (= e!866148 (insertStrictlySorted!532 (t!51136 (t!51136 l!1177)) newKey!105 newValue!105))))

(declare-fun bm!71512 () Bool)

(declare-fun call!71515 () List!36408)

(declare-fun call!71516 () List!36408)

(assert (=> bm!71512 (= call!71515 call!71516)))

(declare-fun b!1555295 () Bool)

(declare-fun e!866149 () List!36408)

(assert (=> b!1555295 (= e!866145 e!866149)))

(declare-fun c!143542 () Bool)

(assert (=> b!1555295 (= c!143542 (and ((_ is Cons!36404) (t!51136 l!1177)) (= (_1!12496 (h!37851 (t!51136 l!1177))) newKey!105)))))

(declare-fun bm!71513 () Bool)

(assert (=> bm!71513 (= call!71516 call!71517)))

(declare-fun b!1555296 () Bool)

(declare-fun c!143540 () Bool)

(assert (=> b!1555296 (= c!143540 (and ((_ is Cons!36404) (t!51136 l!1177)) (bvsgt (_1!12496 (h!37851 (t!51136 l!1177))) newKey!105)))))

(declare-fun e!866147 () List!36408)

(assert (=> b!1555296 (= e!866149 e!866147)))

(declare-fun d!161859 () Bool)

(declare-fun e!866146 () Bool)

(assert (=> d!161859 e!866146))

(declare-fun res!1064303 () Bool)

(assert (=> d!161859 (=> (not res!1064303) (not e!866146))))

(declare-fun lt!670215 () List!36408)

(assert (=> d!161859 (= res!1064303 (isStrictlySorted!918 lt!670215))))

(assert (=> d!161859 (= lt!670215 e!866145)))

(declare-fun c!143541 () Bool)

(assert (=> d!161859 (= c!143541 (and ((_ is Cons!36404) (t!51136 l!1177)) (bvslt (_1!12496 (h!37851 (t!51136 l!1177))) newKey!105)))))

(assert (=> d!161859 (isStrictlySorted!918 (t!51136 l!1177))))

(assert (=> d!161859 (= (insertStrictlySorted!532 (t!51136 l!1177) newKey!105 newValue!105) lt!670215)))

(declare-fun b!1555297 () Bool)

(assert (=> b!1555297 (= e!866147 call!71515)))

(declare-fun b!1555298 () Bool)

(declare-fun res!1064302 () Bool)

(assert (=> b!1555298 (=> (not res!1064302) (not e!866146))))

(assert (=> b!1555298 (= res!1064302 (containsKey!790 lt!670215 newKey!105))))

(declare-fun b!1555299 () Bool)

(assert (=> b!1555299 (= e!866146 (contains!10180 lt!670215 (tuple2!24973 newKey!105 newValue!105)))))

(declare-fun b!1555300 () Bool)

(assert (=> b!1555300 (= e!866148 (ite c!143542 (t!51136 (t!51136 l!1177)) (ite c!143540 (Cons!36404 (h!37851 (t!51136 l!1177)) (t!51136 (t!51136 l!1177))) Nil!36405)))))

(declare-fun bm!71514 () Bool)

(assert (=> bm!71514 (= call!71517 ($colon$colon!960 e!866148 (ite c!143541 (h!37851 (t!51136 l!1177)) (tuple2!24973 newKey!105 newValue!105))))))

(declare-fun c!143543 () Bool)

(assert (=> bm!71514 (= c!143543 c!143541)))

(declare-fun b!1555301 () Bool)

(assert (=> b!1555301 (= e!866149 call!71516)))

(declare-fun b!1555302 () Bool)

(assert (=> b!1555302 (= e!866147 call!71515)))

(assert (= (and d!161859 c!143541) b!1555293))

(assert (= (and d!161859 (not c!143541)) b!1555295))

(assert (= (and b!1555295 c!143542) b!1555301))

(assert (= (and b!1555295 (not c!143542)) b!1555296))

(assert (= (and b!1555296 c!143540) b!1555297))

(assert (= (and b!1555296 (not c!143540)) b!1555302))

(assert (= (or b!1555297 b!1555302) bm!71512))

(assert (= (or b!1555301 bm!71512) bm!71513))

(assert (= (or b!1555293 bm!71513) bm!71514))

(assert (= (and bm!71514 c!143543) b!1555294))

(assert (= (and bm!71514 (not c!143543)) b!1555300))

(assert (= (and d!161859 res!1064303) b!1555298))

(assert (= (and b!1555298 res!1064302) b!1555299))

(declare-fun m!1433371 () Bool)

(assert (=> d!161859 m!1433371))

(assert (=> d!161859 m!1433273))

(declare-fun m!1433373 () Bool)

(assert (=> b!1555299 m!1433373))

(declare-fun m!1433375 () Bool)

(assert (=> bm!71514 m!1433375))

(declare-fun m!1433377 () Bool)

(assert (=> b!1555298 m!1433377))

(declare-fun m!1433379 () Bool)

(assert (=> b!1555294 m!1433379))

(assert (=> b!1555128 d!161859))

(declare-fun d!161865 () Bool)

(declare-fun res!1064308 () Bool)

(declare-fun e!866157 () Bool)

(assert (=> d!161865 (=> res!1064308 e!866157)))

(assert (=> d!161865 (= res!1064308 (and ((_ is Cons!36404) (t!51136 l!1177)) (= (_1!12496 (h!37851 (t!51136 l!1177))) otherKey!50)))))

(assert (=> d!161865 (= (containsKey!790 (t!51136 l!1177) otherKey!50) e!866157)))

(declare-fun b!1555315 () Bool)

(declare-fun e!866158 () Bool)

(assert (=> b!1555315 (= e!866157 e!866158)))

(declare-fun res!1064309 () Bool)

(assert (=> b!1555315 (=> (not res!1064309) (not e!866158))))

(assert (=> b!1555315 (= res!1064309 (and (or (not ((_ is Cons!36404) (t!51136 l!1177))) (bvsle (_1!12496 (h!37851 (t!51136 l!1177))) otherKey!50)) ((_ is Cons!36404) (t!51136 l!1177)) (bvslt (_1!12496 (h!37851 (t!51136 l!1177))) otherKey!50)))))

(declare-fun b!1555316 () Bool)

(assert (=> b!1555316 (= e!866158 (containsKey!790 (t!51136 (t!51136 l!1177)) otherKey!50))))

(assert (= (and d!161865 (not res!1064308)) b!1555315))

(assert (= (and b!1555315 res!1064309) b!1555316))

(declare-fun m!1433381 () Bool)

(assert (=> b!1555316 m!1433381))

(assert (=> b!1555128 d!161865))

(declare-fun d!161867 () Bool)

(declare-fun res!1064310 () Bool)

(declare-fun e!866159 () Bool)

(assert (=> d!161867 (=> res!1064310 e!866159)))

(assert (=> d!161867 (= res!1064310 (and ((_ is Cons!36404) lt!670188) (= (_1!12496 (h!37851 lt!670188)) otherKey!50)))))

(assert (=> d!161867 (= (containsKey!790 lt!670188 otherKey!50) e!866159)))

(declare-fun b!1555317 () Bool)

(declare-fun e!866160 () Bool)

(assert (=> b!1555317 (= e!866159 e!866160)))

(declare-fun res!1064311 () Bool)

(assert (=> b!1555317 (=> (not res!1064311) (not e!866160))))

(assert (=> b!1555317 (= res!1064311 (and (or (not ((_ is Cons!36404) lt!670188)) (bvsle (_1!12496 (h!37851 lt!670188)) otherKey!50)) ((_ is Cons!36404) lt!670188) (bvslt (_1!12496 (h!37851 lt!670188)) otherKey!50)))))

(declare-fun b!1555318 () Bool)

(assert (=> b!1555318 (= e!866160 (containsKey!790 (t!51136 lt!670188) otherKey!50))))

(assert (= (and d!161867 (not res!1064310)) b!1555317))

(assert (= (and b!1555317 res!1064311) b!1555318))

(declare-fun m!1433391 () Bool)

(assert (=> b!1555318 m!1433391))

(assert (=> b!1555128 d!161867))

(declare-fun b!1555353 () Bool)

(declare-fun e!866182 () Option!847)

(assert (=> b!1555353 (= e!866182 (getValueByKey!772 (t!51136 lt!670189) otherKey!50))))

(declare-fun b!1555354 () Bool)

(assert (=> b!1555354 (= e!866182 None!845)))

(declare-fun b!1555352 () Bool)

(declare-fun e!866181 () Option!847)

(assert (=> b!1555352 (= e!866181 e!866182)))

(declare-fun c!143561 () Bool)

(assert (=> b!1555352 (= c!143561 (and ((_ is Cons!36404) lt!670189) (not (= (_1!12496 (h!37851 lt!670189)) otherKey!50))))))

(declare-fun d!161871 () Bool)

(declare-fun c!143560 () Bool)

(assert (=> d!161871 (= c!143560 (and ((_ is Cons!36404) lt!670189) (= (_1!12496 (h!37851 lt!670189)) otherKey!50)))))

(assert (=> d!161871 (= (getValueByKey!772 lt!670189 otherKey!50) e!866181)))

(declare-fun b!1555351 () Bool)

(assert (=> b!1555351 (= e!866181 (Some!846 (_2!12496 (h!37851 lt!670189))))))

(assert (= (and d!161871 c!143560) b!1555351))

(assert (= (and d!161871 (not c!143560)) b!1555352))

(assert (= (and b!1555352 c!143561) b!1555353))

(assert (= (and b!1555352 (not c!143561)) b!1555354))

(declare-fun m!1433399 () Bool)

(assert (=> b!1555353 m!1433399))

(assert (=> b!1555127 d!161871))

(declare-fun b!1555367 () Bool)

(declare-fun e!866189 () Option!847)

(assert (=> b!1555367 (= e!866189 (getValueByKey!772 (t!51136 (t!51136 l!1177)) otherKey!50))))

(declare-fun b!1555368 () Bool)

(assert (=> b!1555368 (= e!866189 None!845)))

(declare-fun b!1555366 () Bool)

(declare-fun e!866188 () Option!847)

(assert (=> b!1555366 (= e!866188 e!866189)))

(declare-fun c!143567 () Bool)

(assert (=> b!1555366 (= c!143567 (and ((_ is Cons!36404) (t!51136 l!1177)) (not (= (_1!12496 (h!37851 (t!51136 l!1177))) otherKey!50))))))

(declare-fun d!161881 () Bool)

(declare-fun c!143566 () Bool)

(assert (=> d!161881 (= c!143566 (and ((_ is Cons!36404) (t!51136 l!1177)) (= (_1!12496 (h!37851 (t!51136 l!1177))) otherKey!50)))))

(assert (=> d!161881 (= (getValueByKey!772 (t!51136 l!1177) otherKey!50) e!866188)))

(declare-fun b!1555365 () Bool)

(assert (=> b!1555365 (= e!866188 (Some!846 (_2!12496 (h!37851 (t!51136 l!1177)))))))

(assert (= (and d!161881 c!143566) b!1555365))

(assert (= (and d!161881 (not c!143566)) b!1555366))

(assert (= (and b!1555366 c!143567) b!1555367))

(assert (= (and b!1555366 (not c!143567)) b!1555368))

(declare-fun m!1433401 () Bool)

(assert (=> b!1555367 m!1433401))

(assert (=> b!1555127 d!161881))

(declare-fun d!161883 () Bool)

(declare-fun res!1064340 () Bool)

(declare-fun e!866210 () Bool)

(assert (=> d!161883 (=> res!1064340 e!866210)))

(assert (=> d!161883 (= res!1064340 (or ((_ is Nil!36405) l!1177) ((_ is Nil!36405) (t!51136 l!1177))))))

(assert (=> d!161883 (= (isStrictlySorted!918 l!1177) e!866210)))

(declare-fun b!1555391 () Bool)

(declare-fun e!866211 () Bool)

(assert (=> b!1555391 (= e!866210 e!866211)))

(declare-fun res!1064341 () Bool)

(assert (=> b!1555391 (=> (not res!1064341) (not e!866211))))

(assert (=> b!1555391 (= res!1064341 (bvslt (_1!12496 (h!37851 l!1177)) (_1!12496 (h!37851 (t!51136 l!1177)))))))

(declare-fun b!1555392 () Bool)

(assert (=> b!1555392 (= e!866211 (isStrictlySorted!918 (t!51136 l!1177)))))

(assert (= (and d!161883 (not res!1064340)) b!1555391))

(assert (= (and b!1555391 res!1064341) b!1555392))

(assert (=> b!1555392 m!1433273))

(assert (=> start!132774 d!161883))

(declare-fun d!161895 () Bool)

(declare-fun res!1064342 () Bool)

(declare-fun e!866213 () Bool)

(assert (=> d!161895 (=> res!1064342 e!866213)))

(assert (=> d!161895 (= res!1064342 (or ((_ is Nil!36405) lt!670188) ((_ is Nil!36405) (t!51136 lt!670188))))))

(assert (=> d!161895 (= (isStrictlySorted!918 lt!670188) e!866213)))

(declare-fun b!1555394 () Bool)

(declare-fun e!866214 () Bool)

(assert (=> b!1555394 (= e!866213 e!866214)))

(declare-fun res!1064343 () Bool)

(assert (=> b!1555394 (=> (not res!1064343) (not e!866214))))

(assert (=> b!1555394 (= res!1064343 (bvslt (_1!12496 (h!37851 lt!670188)) (_1!12496 (h!37851 (t!51136 lt!670188)))))))

(declare-fun b!1555395 () Bool)

(assert (=> b!1555395 (= e!866214 (isStrictlySorted!918 (t!51136 lt!670188)))))

(assert (= (and d!161895 (not res!1064342)) b!1555394))

(assert (= (and b!1555394 res!1064343) b!1555395))

(declare-fun m!1433421 () Bool)

(assert (=> b!1555395 m!1433421))

(assert (=> b!1555130 d!161895))

(declare-fun d!161897 () Bool)

(declare-fun res!1064344 () Bool)

(declare-fun e!866215 () Bool)

(assert (=> d!161897 (=> res!1064344 e!866215)))

(assert (=> d!161897 (= res!1064344 (or ((_ is Nil!36405) (t!51136 l!1177)) ((_ is Nil!36405) (t!51136 (t!51136 l!1177)))))))

(assert (=> d!161897 (= (isStrictlySorted!918 (t!51136 l!1177)) e!866215)))

(declare-fun b!1555396 () Bool)

(declare-fun e!866216 () Bool)

(assert (=> b!1555396 (= e!866215 e!866216)))

(declare-fun res!1064345 () Bool)

(assert (=> b!1555396 (=> (not res!1064345) (not e!866216))))

(assert (=> b!1555396 (= res!1064345 (bvslt (_1!12496 (h!37851 (t!51136 l!1177))) (_1!12496 (h!37851 (t!51136 (t!51136 l!1177))))))))

(declare-fun b!1555397 () Bool)

(assert (=> b!1555397 (= e!866216 (isStrictlySorted!918 (t!51136 (t!51136 l!1177))))))

(assert (= (and d!161897 (not res!1064344)) b!1555396))

(assert (= (and b!1555396 res!1064345) b!1555397))

(declare-fun m!1433423 () Bool)

(assert (=> b!1555397 m!1433423))

(assert (=> b!1555129 d!161897))

(declare-fun b!1555402 () Bool)

(declare-fun e!866219 () Bool)

(declare-fun tp!112285 () Bool)

(assert (=> b!1555402 (= e!866219 (and tp_is_empty!38295 tp!112285))))

(assert (=> b!1555131 (= tp!112276 e!866219)))

(assert (= (and b!1555131 ((_ is Cons!36404) (t!51136 l!1177))) b!1555402))

(check-sat (not bm!71502) (not b!1555392) (not b!1555402) (not b!1555397) (not b!1555316) (not b!1555367) (not b!1555395) (not d!161833) (not b!1555292) (not b!1555224) (not b!1555318) (not b!1555353) (not bm!71514) (not b!1555288) (not b!1555229) (not b!1555298) (not d!161859) (not b!1555299) tp_is_empty!38295 (not b!1555294) (not b!1555254) (not d!161849) (not b!1555228))
(check-sat)
