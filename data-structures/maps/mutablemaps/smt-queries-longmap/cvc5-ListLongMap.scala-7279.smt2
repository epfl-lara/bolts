; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93018 () Bool)

(assert start!93018)

(declare-fun b!1055208 () Bool)

(declare-fun res!704180 () Bool)

(declare-fun e!599714 () Bool)

(assert (=> b!1055208 (=> res!704180 e!599714)))

(declare-datatypes ((List!22439 0))(
  ( (Nil!22436) (Cons!22435 (h!23644 (_ BitVec 64)) (t!31753 List!22439)) )
))
(declare-fun noDuplicate!1566 (List!22439) Bool)

(assert (=> b!1055208 (= res!704180 (not (noDuplicate!1566 Nil!22436)))))

(declare-fun b!1055209 () Bool)

(declare-fun e!599712 () Bool)

(declare-fun e!599719 () Bool)

(assert (=> b!1055209 (= e!599712 (not e!599719))))

(declare-fun res!704184 () Bool)

(assert (=> b!1055209 (=> res!704184 e!599719)))

(declare-fun lt!465688 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055209 (= res!704184 (bvsle lt!465688 i!1381))))

(declare-fun e!599716 () Bool)

(assert (=> b!1055209 e!599716))

(declare-fun res!704181 () Bool)

(assert (=> b!1055209 (=> (not res!704181) (not e!599716))))

(declare-datatypes ((array!66542 0))(
  ( (array!66543 (arr!31996 (Array (_ BitVec 32) (_ BitVec 64))) (size!32533 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66542)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1055209 (= res!704181 (= (select (store (arr!31996 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465688) k!2747))))

(declare-fun b!1055210 () Bool)

(declare-fun e!599715 () Bool)

(assert (=> b!1055210 (= e!599716 e!599715)))

(declare-fun res!704176 () Bool)

(assert (=> b!1055210 (=> res!704176 e!599715)))

(assert (=> b!1055210 (= res!704176 (bvsle lt!465688 i!1381))))

(declare-fun b!1055211 () Bool)

(declare-fun res!704182 () Bool)

(declare-fun e!599717 () Bool)

(assert (=> b!1055211 (=> (not res!704182) (not e!599717))))

(declare-fun arrayNoDuplicates!0 (array!66542 (_ BitVec 32) List!22439) Bool)

(assert (=> b!1055211 (= res!704182 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22436))))

(declare-fun b!1055212 () Bool)

(declare-fun e!599720 () Bool)

(assert (=> b!1055212 (= e!599717 e!599720)))

(declare-fun res!704183 () Bool)

(assert (=> b!1055212 (=> (not res!704183) (not e!599720))))

(declare-fun lt!465691 () array!66542)

(declare-fun arrayContainsKey!0 (array!66542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055212 (= res!704183 (arrayContainsKey!0 lt!465691 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055212 (= lt!465691 (array!66543 (store (arr!31996 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32533 a!3488)))))

(declare-fun res!704175 () Bool)

(assert (=> start!93018 (=> (not res!704175) (not e!599717))))

(assert (=> start!93018 (= res!704175 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32533 a!3488)) (bvslt (size!32533 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93018 e!599717))

(assert (=> start!93018 true))

(declare-fun array_inv!24618 (array!66542) Bool)

(assert (=> start!93018 (array_inv!24618 a!3488)))

(declare-fun b!1055213 () Bool)

(assert (=> b!1055213 (= e!599720 e!599712)))

(declare-fun res!704173 () Bool)

(assert (=> b!1055213 (=> (not res!704173) (not e!599712))))

(assert (=> b!1055213 (= res!704173 (not (= lt!465688 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66542 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055213 (= lt!465688 (arrayScanForKey!0 lt!465691 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055214 () Bool)

(assert (=> b!1055214 (= e!599715 (arrayContainsKey!0 a!3488 k!2747 lt!465688))))

(declare-fun b!1055215 () Bool)

(declare-fun res!704174 () Bool)

(assert (=> b!1055215 (=> (not res!704174) (not e!599717))))

(assert (=> b!1055215 (= res!704174 (= (select (arr!31996 a!3488) i!1381) k!2747))))

(declare-fun b!1055216 () Bool)

(declare-fun res!704177 () Bool)

(assert (=> b!1055216 (=> (not res!704177) (not e!599717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055216 (= res!704177 (validKeyInArray!0 k!2747))))

(declare-fun b!1055217 () Bool)

(declare-fun e!599713 () Bool)

(assert (=> b!1055217 (= e!599714 e!599713)))

(declare-fun res!704179 () Bool)

(assert (=> b!1055217 (=> (not res!704179) (not e!599713))))

(declare-fun contains!6197 (List!22439 (_ BitVec 64)) Bool)

(assert (=> b!1055217 (= res!704179 (not (contains!6197 Nil!22436 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1055218 () Bool)

(assert (=> b!1055218 (= e!599719 e!599714)))

(declare-fun res!704178 () Bool)

(assert (=> b!1055218 (=> res!704178 e!599714)))

(assert (=> b!1055218 (= res!704178 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32533 a!3488)))))

(assert (=> b!1055218 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34559 0))(
  ( (Unit!34560) )
))
(declare-fun lt!465690 () Unit!34559)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66542 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34559)

(assert (=> b!1055218 (= lt!465690 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465688 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055218 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22436)))

(declare-fun lt!465689 () Unit!34559)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66542 (_ BitVec 32) (_ BitVec 32)) Unit!34559)

(assert (=> b!1055218 (= lt!465689 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055219 () Bool)

(assert (=> b!1055219 (= e!599713 (not (contains!6197 Nil!22436 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!93018 res!704175) b!1055211))

(assert (= (and b!1055211 res!704182) b!1055216))

(assert (= (and b!1055216 res!704177) b!1055215))

(assert (= (and b!1055215 res!704174) b!1055212))

(assert (= (and b!1055212 res!704183) b!1055213))

(assert (= (and b!1055213 res!704173) b!1055209))

(assert (= (and b!1055209 res!704181) b!1055210))

(assert (= (and b!1055210 (not res!704176)) b!1055214))

(assert (= (and b!1055209 (not res!704184)) b!1055218))

(assert (= (and b!1055218 (not res!704178)) b!1055208))

(assert (= (and b!1055208 (not res!704180)) b!1055217))

(assert (= (and b!1055217 res!704179) b!1055219))

(declare-fun m!975357 () Bool)

(assert (=> b!1055215 m!975357))

(declare-fun m!975359 () Bool)

(assert (=> b!1055208 m!975359))

(declare-fun m!975361 () Bool)

(assert (=> b!1055218 m!975361))

(declare-fun m!975363 () Bool)

(assert (=> b!1055218 m!975363))

(declare-fun m!975365 () Bool)

(assert (=> b!1055218 m!975365))

(declare-fun m!975367 () Bool)

(assert (=> b!1055218 m!975367))

(declare-fun m!975369 () Bool)

(assert (=> b!1055219 m!975369))

(declare-fun m!975371 () Bool)

(assert (=> b!1055216 m!975371))

(declare-fun m!975373 () Bool)

(assert (=> b!1055209 m!975373))

(declare-fun m!975375 () Bool)

(assert (=> b!1055209 m!975375))

(declare-fun m!975377 () Bool)

(assert (=> b!1055213 m!975377))

(declare-fun m!975379 () Bool)

(assert (=> b!1055211 m!975379))

(declare-fun m!975381 () Bool)

(assert (=> start!93018 m!975381))

(declare-fun m!975383 () Bool)

(assert (=> b!1055214 m!975383))

(declare-fun m!975385 () Bool)

(assert (=> b!1055217 m!975385))

(declare-fun m!975387 () Bool)

(assert (=> b!1055212 m!975387))

(assert (=> b!1055212 m!975373))

(push 1)

(assert (not b!1055216))

(assert (not b!1055213))

(assert (not b!1055214))

(assert (not b!1055217))

(assert (not b!1055212))

(assert (not b!1055218))

(assert (not b!1055211))

(assert (not b!1055219))

(assert (not start!93018))

(assert (not b!1055208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128107 () Bool)

(declare-fun res!704273 () Bool)

(declare-fun e!599793 () Bool)

(assert (=> d!128107 (=> res!704273 e!599793)))

(assert (=> d!128107 (= res!704273 (= (select (arr!31996 lt!465691) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128107 (= (arrayContainsKey!0 lt!465691 k!2747 #b00000000000000000000000000000000) e!599793)))

(declare-fun b!1055312 () Bool)

(declare-fun e!599794 () Bool)

(assert (=> b!1055312 (= e!599793 e!599794)))

(declare-fun res!704274 () Bool)

(assert (=> b!1055312 (=> (not res!704274) (not e!599794))))

(assert (=> b!1055312 (= res!704274 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32533 lt!465691)))))

(declare-fun b!1055313 () Bool)

(assert (=> b!1055313 (= e!599794 (arrayContainsKey!0 lt!465691 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128107 (not res!704273)) b!1055312))

(assert (= (and b!1055312 res!704274) b!1055313))

(declare-fun m!975457 () Bool)

(assert (=> d!128107 m!975457))

(declare-fun m!975459 () Bool)

(assert (=> b!1055313 m!975459))

(assert (=> b!1055212 d!128107))

(declare-fun d!128111 () Bool)

(declare-fun res!704275 () Bool)

(declare-fun e!599795 () Bool)

(assert (=> d!128111 (=> res!704275 e!599795)))

(assert (=> d!128111 (= res!704275 (= (select (arr!31996 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k!2747))))

(assert (=> d!128111 (= (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599795)))

(declare-fun b!1055314 () Bool)

(declare-fun e!599796 () Bool)

(assert (=> b!1055314 (= e!599795 e!599796)))

(declare-fun res!704276 () Bool)

(assert (=> b!1055314 (=> (not res!704276) (not e!599796))))

(assert (=> b!1055314 (= res!704276 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32533 a!3488)))))

(declare-fun b!1055315 () Bool)

(assert (=> b!1055315 (= e!599796 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128111 (not res!704275)) b!1055314))

(assert (= (and b!1055314 res!704276) b!1055315))

(declare-fun m!975461 () Bool)

(assert (=> d!128111 m!975461))

(declare-fun m!975463 () Bool)

(assert (=> b!1055315 m!975463))

(assert (=> b!1055218 d!128111))

(declare-fun d!128113 () Bool)

(assert (=> d!128113 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465720 () Unit!34559)

(declare-fun choose!114 (array!66542 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34559)

(assert (=> d!128113 (= lt!465720 (choose!114 a!3488 k!2747 lt!465688 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!128113 (bvsge lt!465688 #b00000000000000000000000000000000)))

(assert (=> d!128113 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465688 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465720)))

(declare-fun bs!30930 () Bool)

(assert (= bs!30930 d!128113))

(assert (=> bs!30930 m!975361))

(declare-fun m!975465 () Bool)

(assert (=> bs!30930 m!975465))

(assert (=> b!1055218 d!128113))

(declare-fun b!1055337 () Bool)

(declare-fun e!599816 () Bool)

(declare-fun call!44801 () Bool)

(assert (=> b!1055337 (= e!599816 call!44801)))

(declare-fun c!106985 () Bool)

(declare-fun bm!44798 () Bool)

(assert (=> bm!44798 (= call!44801 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106985 (Cons!22435 (select (arr!31996 a!3488) i!1381) Nil!22436) Nil!22436)))))

(declare-fun b!1055339 () Bool)

(declare-fun e!599818 () Bool)

(assert (=> b!1055339 (= e!599818 (contains!6197 Nil!22436 (select (arr!31996 a!3488) i!1381)))))

(declare-fun b!1055340 () Bool)

(declare-fun e!599817 () Bool)

(assert (=> b!1055340 (= e!599817 e!599816)))

(assert (=> b!1055340 (= c!106985 (validKeyInArray!0 (select (arr!31996 a!3488) i!1381)))))

(declare-fun b!1055341 () Bool)

(assert (=> b!1055341 (= e!599816 call!44801)))

(declare-fun d!128115 () Bool)

(declare-fun res!704294 () Bool)

(declare-fun e!599815 () Bool)

(assert (=> d!128115 (=> res!704294 e!599815)))

(assert (=> d!128115 (= res!704294 (bvsge i!1381 (size!32533 a!3488)))))

(assert (=> d!128115 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22436) e!599815)))

(declare-fun b!1055338 () Bool)

(assert (=> b!1055338 (= e!599815 e!599817)))

(declare-fun res!704292 () Bool)

(assert (=> b!1055338 (=> (not res!704292) (not e!599817))))

(assert (=> b!1055338 (= res!704292 (not e!599818))))

(declare-fun res!704293 () Bool)

(assert (=> b!1055338 (=> (not res!704293) (not e!599818))))

(assert (=> b!1055338 (= res!704293 (validKeyInArray!0 (select (arr!31996 a!3488) i!1381)))))

(assert (= (and d!128115 (not res!704294)) b!1055338))

(assert (= (and b!1055338 res!704293) b!1055339))

(assert (= (and b!1055338 res!704292) b!1055340))

(assert (= (and b!1055340 c!106985) b!1055337))

(assert (= (and b!1055340 (not c!106985)) b!1055341))

(assert (= (or b!1055337 b!1055341) bm!44798))

(assert (=> bm!44798 m!975357))

(declare-fun m!975481 () Bool)

(assert (=> bm!44798 m!975481))

(assert (=> b!1055339 m!975357))

(assert (=> b!1055339 m!975357))

(declare-fun m!975483 () Bool)

(assert (=> b!1055339 m!975483))

(assert (=> b!1055340 m!975357))

(assert (=> b!1055340 m!975357))

(declare-fun m!975485 () Bool)

(assert (=> b!1055340 m!975485))

(assert (=> b!1055338 m!975357))

(assert (=> b!1055338 m!975357))

(assert (=> b!1055338 m!975485))

(assert (=> b!1055218 d!128115))

(declare-fun d!128123 () Bool)

(assert (=> d!128123 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22436)))

(declare-fun lt!465730 () Unit!34559)

(declare-fun choose!39 (array!66542 (_ BitVec 32) (_ BitVec 32)) Unit!34559)

(assert (=> d!128123 (= lt!465730 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!128123 (bvslt (size!32533 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128123 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465730)))

(declare-fun bs!30931 () Bool)

(assert (= bs!30931 d!128123))

(assert (=> bs!30931 m!975365))

(declare-fun m!975499 () Bool)

(assert (=> bs!30931 m!975499))

(assert (=> b!1055218 d!128123))

(declare-fun d!128129 () Bool)

(declare-fun lt!465736 () (_ BitVec 32))

(assert (=> d!128129 (and (or (bvslt lt!465736 #b00000000000000000000000000000000) (bvsge lt!465736 (size!32533 lt!465691)) (and (bvsge lt!465736 #b00000000000000000000000000000000) (bvslt lt!465736 (size!32533 lt!465691)))) (bvsge lt!465736 #b00000000000000000000000000000000) (bvslt lt!465736 (size!32533 lt!465691)) (= (select (arr!31996 lt!465691) lt!465736) k!2747))))

(declare-fun e!599855 () (_ BitVec 32))

(assert (=> d!128129 (= lt!465736 e!599855)))

(declare-fun c!106997 () Bool)

(assert (=> d!128129 (= c!106997 (= (select (arr!31996 lt!465691) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128129 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32533 lt!465691)) (bvslt (size!32533 lt!465691) #b01111111111111111111111111111111))))

(assert (=> d!128129 (= (arrayScanForKey!0 lt!465691 k!2747 #b00000000000000000000000000000000) lt!465736)))

(declare-fun b!1055389 () Bool)

(assert (=> b!1055389 (= e!599855 #b00000000000000000000000000000000)))

(declare-fun b!1055390 () Bool)

(assert (=> b!1055390 (= e!599855 (arrayScanForKey!0 lt!465691 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128129 c!106997) b!1055389))

(assert (= (and d!128129 (not c!106997)) b!1055390))

(declare-fun m!975523 () Bool)

(assert (=> d!128129 m!975523))

(assert (=> d!128129 m!975457))

(declare-fun m!975525 () Bool)

(assert (=> b!1055390 m!975525))

(assert (=> b!1055213 d!128129))

(declare-fun d!128145 () Bool)

(declare-fun res!704327 () Bool)

(declare-fun e!599864 () Bool)

(assert (=> d!128145 (=> res!704327 e!599864)))

(assert (=> d!128145 (= res!704327 (is-Nil!22436 Nil!22436))))

(assert (=> d!128145 (= (noDuplicate!1566 Nil!22436) e!599864)))

(declare-fun b!1055400 () Bool)

(declare-fun e!599865 () Bool)

(assert (=> b!1055400 (= e!599864 e!599865)))

(declare-fun res!704328 () Bool)

(assert (=> b!1055400 (=> (not res!704328) (not e!599865))))

(assert (=> b!1055400 (= res!704328 (not (contains!6197 (t!31753 Nil!22436) (h!23644 Nil!22436))))))

(declare-fun b!1055401 () Bool)

(assert (=> b!1055401 (= e!599865 (noDuplicate!1566 (t!31753 Nil!22436)))))

(assert (= (and d!128145 (not res!704327)) b!1055400))

(assert (= (and b!1055400 res!704328) b!1055401))

(declare-fun m!975529 () Bool)

(assert (=> b!1055400 m!975529))

(declare-fun m!975531 () Bool)

(assert (=> b!1055401 m!975531))

(assert (=> b!1055208 d!128145))

(declare-fun d!128151 () Bool)

(declare-fun lt!465744 () Bool)

(declare-fun content!534 (List!22439) (Set (_ BitVec 64)))

(assert (=> d!128151 (= lt!465744 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!534 Nil!22436)))))

(declare-fun e!599879 () Bool)

(assert (=> d!128151 (= lt!465744 e!599879)))

(declare-fun res!704341 () Bool)

(assert (=> d!128151 (=> (not res!704341) (not e!599879))))

(assert (=> d!128151 (= res!704341 (is-Cons!22435 Nil!22436))))

(assert (=> d!128151 (= (contains!6197 Nil!22436 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465744)))

(declare-fun b!1055414 () Bool)

(declare-fun e!599878 () Bool)

(assert (=> b!1055414 (= e!599879 e!599878)))

(declare-fun res!704342 () Bool)

(assert (=> b!1055414 (=> res!704342 e!599878)))

(assert (=> b!1055414 (= res!704342 (= (h!23644 Nil!22436) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055415 () Bool)

(assert (=> b!1055415 (= e!599878 (contains!6197 (t!31753 Nil!22436) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128151 res!704341) b!1055414))

(assert (= (and b!1055414 (not res!704342)) b!1055415))

(declare-fun m!975547 () Bool)

(assert (=> d!128151 m!975547))

(declare-fun m!975549 () Bool)

(assert (=> d!128151 m!975549))

(declare-fun m!975551 () Bool)

(assert (=> b!1055415 m!975551))

(assert (=> b!1055219 d!128151))

(declare-fun d!128161 () Bool)

(declare-fun res!704349 () Bool)

(declare-fun e!599886 () Bool)

(assert (=> d!128161 (=> res!704349 e!599886)))

(assert (=> d!128161 (= res!704349 (= (select (arr!31996 a!3488) lt!465688) k!2747))))

(assert (=> d!128161 (= (arrayContainsKey!0 a!3488 k!2747 lt!465688) e!599886)))

(declare-fun b!1055422 () Bool)

(declare-fun e!599887 () Bool)

(assert (=> b!1055422 (= e!599886 e!599887)))

(declare-fun res!704350 () Bool)

(assert (=> b!1055422 (=> (not res!704350) (not e!599887))))

(assert (=> b!1055422 (= res!704350 (bvslt (bvadd lt!465688 #b00000000000000000000000000000001) (size!32533 a!3488)))))

(declare-fun b!1055423 () Bool)

(assert (=> b!1055423 (= e!599887 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465688 #b00000000000000000000000000000001)))))

(assert (= (and d!128161 (not res!704349)) b!1055422))

(assert (= (and b!1055422 res!704350) b!1055423))

(declare-fun m!975557 () Bool)

(assert (=> d!128161 m!975557))

(declare-fun m!975559 () Bool)

(assert (=> b!1055423 m!975559))

(assert (=> b!1055214 d!128161))

(declare-fun d!128165 () Bool)

(assert (=> d!128165 (= (array_inv!24618 a!3488) (bvsge (size!32533 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93018 d!128165))

(declare-fun d!128169 () Bool)

(assert (=> d!128169 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055216 d!128169))

(declare-fun b!1055428 () Bool)

(declare-fun e!599893 () Bool)

(declare-fun call!44806 () Bool)

(assert (=> b!1055428 (= e!599893 call!44806)))

(declare-fun bm!44803 () Bool)

(declare-fun c!106999 () Bool)

(assert (=> bm!44803 (= call!44806 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106999 (Cons!22435 (select (arr!31996 a!3488) #b00000000000000000000000000000000) Nil!22436) Nil!22436)))))

(declare-fun b!1055430 () Bool)

(declare-fun e!599896 () Bool)

(assert (=> b!1055430 (= e!599896 (contains!6197 Nil!22436 (select (arr!31996 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055432 () Bool)

(declare-fun e!599894 () Bool)

(assert (=> b!1055432 (= e!599894 e!599893)))

(assert (=> b!1055432 (= c!106999 (validKeyInArray!0 (select (arr!31996 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055434 () Bool)

(assert (=> b!1055434 (= e!599893 call!44806)))

(declare-fun d!128173 () Bool)

(declare-fun res!704357 () Bool)

(declare-fun e!599892 () Bool)

(assert (=> d!128173 (=> res!704357 e!599892)))

(assert (=> d!128173 (= res!704357 (bvsge #b00000000000000000000000000000000 (size!32533 a!3488)))))

(assert (=> d!128173 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22436) e!599892)))

(declare-fun b!1055429 () Bool)

(assert (=> b!1055429 (= e!599892 e!599894)))

(declare-fun res!704355 () Bool)

(assert (=> b!1055429 (=> (not res!704355) (not e!599894))))

(assert (=> b!1055429 (= res!704355 (not e!599896))))

(declare-fun res!704356 () Bool)

(assert (=> b!1055429 (=> (not res!704356) (not e!599896))))

(assert (=> b!1055429 (= res!704356 (validKeyInArray!0 (select (arr!31996 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128173 (not res!704357)) b!1055429))

(assert (= (and b!1055429 res!704356) b!1055430))

(assert (= (and b!1055429 res!704355) b!1055432))

(assert (= (and b!1055432 c!106999) b!1055428))

(assert (= (and b!1055432 (not c!106999)) b!1055434))

(assert (= (or b!1055428 b!1055434) bm!44803))

(declare-fun m!975575 () Bool)

(assert (=> bm!44803 m!975575))

(declare-fun m!975579 () Bool)

(assert (=> bm!44803 m!975579))

(assert (=> b!1055430 m!975575))

(assert (=> b!1055430 m!975575))

(declare-fun m!975581 () Bool)

(assert (=> b!1055430 m!975581))

(assert (=> b!1055432 m!975575))

(assert (=> b!1055432 m!975575))

(declare-fun m!975583 () Bool)

(assert (=> b!1055432 m!975583))

(assert (=> b!1055429 m!975575))

(assert (=> b!1055429 m!975575))

(assert (=> b!1055429 m!975583))

(assert (=> b!1055211 d!128173))

(declare-fun d!128177 () Bool)

(declare-fun lt!465751 () Bool)

(assert (=> d!128177 (= lt!465751 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!534 Nil!22436)))))

(declare-fun e!599903 () Bool)

(assert (=> d!128177 (= lt!465751 e!599903)))

(declare-fun res!704363 () Bool)

(assert (=> d!128177 (=> (not res!704363) (not e!599903))))

(assert (=> d!128177 (= res!704363 (is-Cons!22435 Nil!22436))))

(assert (=> d!128177 (= (contains!6197 Nil!22436 #b0000000000000000000000000000000000000000000000000000000000000000) lt!465751)))

(declare-fun b!1055440 () Bool)

(declare-fun e!599902 () Bool)

(assert (=> b!1055440 (= e!599903 e!599902)))

(declare-fun res!704364 () Bool)

(assert (=> b!1055440 (=> res!704364 e!599902)))

(assert (=> b!1055440 (= res!704364 (= (h!23644 Nil!22436) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055441 () Bool)

(assert (=> b!1055441 (= e!599902 (contains!6197 (t!31753 Nil!22436) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128177 res!704363) b!1055440))

(assert (= (and b!1055440 (not res!704364)) b!1055441))

(assert (=> d!128177 m!975547))

(declare-fun m!975587 () Bool)

(assert (=> d!128177 m!975587))

(declare-fun m!975589 () Bool)

(assert (=> b!1055441 m!975589))

(assert (=> b!1055217 d!128177))

(push 1)

