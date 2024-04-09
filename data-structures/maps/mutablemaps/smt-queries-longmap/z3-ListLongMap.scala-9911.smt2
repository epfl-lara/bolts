; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117256 () Bool)

(assert start!117256)

(declare-fun b!1379184 () Bool)

(declare-fun e!781317 () Bool)

(declare-fun e!781318 () Bool)

(assert (=> b!1379184 (= e!781317 e!781318)))

(declare-fun res!921827 () Bool)

(assert (=> b!1379184 (=> (not res!921827) (not e!781318))))

(declare-fun lt!607264 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!607259 () (_ BitVec 32))

(assert (=> b!1379184 (= res!921827 (and (= lt!607259 (bvsub lt!607264 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93789 0))(
  ( (array!93790 (arr!45290 (Array (_ BitVec 32) (_ BitVec 64))) (size!45841 (_ BitVec 32))) )
))
(declare-fun lt!607266 () array!93789)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93789 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379184 (= lt!607259 (arrayCountValidKeys!0 lt!607266 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93789)

(assert (=> b!1379184 (= lt!607264 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379184 (= lt!607266 (array!93790 (store (arr!45290 a!4094) i!1451 k0!2953) (size!45841 a!4094)))))

(declare-fun b!1379185 () Bool)

(declare-fun res!921830 () Bool)

(assert (=> b!1379185 (=> (not res!921830) (not e!781317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379185 (= res!921830 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921828 () Bool)

(assert (=> start!117256 (=> (not res!921828) (not e!781317))))

(assert (=> start!117256 (= res!921828 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45841 a!4094))))))

(assert (=> start!117256 e!781317))

(assert (=> start!117256 true))

(declare-fun array_inv!34235 (array!93789) Bool)

(assert (=> start!117256 (array_inv!34235 a!4094)))

(declare-fun lt!607267 () (_ BitVec 32))

(declare-fun lt!607262 () (_ BitVec 32))

(declare-fun b!1379186 () Bool)

(assert (=> b!1379186 (= e!781318 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45841 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (= lt!607262 (bvsub lt!607267 #b00000000000000000000000000000001)))))))

(declare-fun lt!607261 () (_ BitVec 32))

(assert (=> b!1379186 (= (bvadd lt!607261 lt!607259) lt!607262)))

(assert (=> b!1379186 (= lt!607262 (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379186 (= lt!607261 (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45805 0))(
  ( (Unit!45806) )
))
(declare-fun lt!607265 () Unit!45805)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45805)

(assert (=> b!1379186 (= lt!607265 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607263 () (_ BitVec 32))

(assert (=> b!1379186 (= (bvadd lt!607263 lt!607264) lt!607267)))

(assert (=> b!1379186 (= lt!607267 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379186 (= lt!607263 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607260 () Unit!45805)

(assert (=> b!1379186 (= lt!607260 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379187 () Bool)

(declare-fun res!921831 () Bool)

(assert (=> b!1379187 (=> (not res!921831) (not e!781317))))

(assert (=> b!1379187 (= res!921831 (and (bvslt (size!45841 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45841 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379188 () Bool)

(declare-fun res!921829 () Bool)

(assert (=> b!1379188 (=> (not res!921829) (not e!781317))))

(assert (=> b!1379188 (= res!921829 (validKeyInArray!0 (select (arr!45290 a!4094) i!1451)))))

(assert (= (and start!117256 res!921828) b!1379188))

(assert (= (and b!1379188 res!921829) b!1379185))

(assert (= (and b!1379185 res!921830) b!1379187))

(assert (= (and b!1379187 res!921831) b!1379184))

(assert (= (and b!1379184 res!921827) b!1379186))

(declare-fun m!1264259 () Bool)

(assert (=> start!117256 m!1264259))

(declare-fun m!1264261 () Bool)

(assert (=> b!1379188 m!1264261))

(assert (=> b!1379188 m!1264261))

(declare-fun m!1264263 () Bool)

(assert (=> b!1379188 m!1264263))

(declare-fun m!1264265 () Bool)

(assert (=> b!1379185 m!1264265))

(declare-fun m!1264267 () Bool)

(assert (=> b!1379186 m!1264267))

(declare-fun m!1264269 () Bool)

(assert (=> b!1379186 m!1264269))

(declare-fun m!1264271 () Bool)

(assert (=> b!1379186 m!1264271))

(declare-fun m!1264273 () Bool)

(assert (=> b!1379186 m!1264273))

(declare-fun m!1264275 () Bool)

(assert (=> b!1379186 m!1264275))

(declare-fun m!1264277 () Bool)

(assert (=> b!1379186 m!1264277))

(declare-fun m!1264279 () Bool)

(assert (=> b!1379184 m!1264279))

(declare-fun m!1264281 () Bool)

(assert (=> b!1379184 m!1264281))

(declare-fun m!1264283 () Bool)

(assert (=> b!1379184 m!1264283))

(check-sat (not b!1379186) (not b!1379184) (not start!117256) (not b!1379185) (not b!1379188))
(check-sat)
(get-model)

(declare-fun d!148457 () Bool)

(assert (=> d!148457 (= (validKeyInArray!0 (select (arr!45290 a!4094) i!1451)) (and (not (= (select (arr!45290 a!4094) i!1451) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45290 a!4094) i!1451) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379188 d!148457))

(declare-fun call!66063 () (_ BitVec 32))

(declare-fun bm!66060 () Bool)

(assert (=> bm!66060 (= call!66063 (arrayCountValidKeys!0 lt!607266 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379212 () Bool)

(declare-fun e!781334 () (_ BitVec 32))

(assert (=> b!1379212 (= e!781334 call!66063)))

(declare-fun d!148459 () Bool)

(declare-fun lt!607297 () (_ BitVec 32))

(assert (=> d!148459 (and (bvsge lt!607297 #b00000000000000000000000000000000) (bvsle lt!607297 (bvsub (size!45841 lt!607266) from!3466)))))

(declare-fun e!781333 () (_ BitVec 32))

(assert (=> d!148459 (= lt!607297 e!781333)))

(declare-fun c!128125 () Bool)

(assert (=> d!148459 (= c!128125 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148459 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 lt!607266)))))

(assert (=> d!148459 (= (arrayCountValidKeys!0 lt!607266 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607297)))

(declare-fun b!1379213 () Bool)

(assert (=> b!1379213 (= e!781333 #b00000000000000000000000000000000)))

(declare-fun b!1379214 () Bool)

(assert (=> b!1379214 (= e!781333 e!781334)))

(declare-fun c!128126 () Bool)

(assert (=> b!1379214 (= c!128126 (validKeyInArray!0 (select (arr!45290 lt!607266) from!3466)))))

(declare-fun b!1379215 () Bool)

(assert (=> b!1379215 (= e!781334 (bvadd #b00000000000000000000000000000001 call!66063))))

(assert (= (and d!148459 c!128125) b!1379213))

(assert (= (and d!148459 (not c!128125)) b!1379214))

(assert (= (and b!1379214 c!128126) b!1379215))

(assert (= (and b!1379214 (not c!128126)) b!1379212))

(assert (= (or b!1379215 b!1379212) bm!66060))

(declare-fun m!1264311 () Bool)

(assert (=> bm!66060 m!1264311))

(declare-fun m!1264313 () Bool)

(assert (=> b!1379214 m!1264313))

(assert (=> b!1379214 m!1264313))

(declare-fun m!1264315 () Bool)

(assert (=> b!1379214 m!1264315))

(assert (=> b!1379184 d!148459))

(declare-fun call!66064 () (_ BitVec 32))

(declare-fun bm!66061 () Bool)

(assert (=> bm!66061 (= call!66064 (arrayCountValidKeys!0 a!4094 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379216 () Bool)

(declare-fun e!781336 () (_ BitVec 32))

(assert (=> b!1379216 (= e!781336 call!66064)))

(declare-fun d!148461 () Bool)

(declare-fun lt!607298 () (_ BitVec 32))

(assert (=> d!148461 (and (bvsge lt!607298 #b00000000000000000000000000000000) (bvsle lt!607298 (bvsub (size!45841 a!4094) from!3466)))))

(declare-fun e!781335 () (_ BitVec 32))

(assert (=> d!148461 (= lt!607298 e!781335)))

(declare-fun c!128127 () Bool)

(assert (=> d!148461 (= c!128127 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148461 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 a!4094)))))

(assert (=> d!148461 (= (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607298)))

(declare-fun b!1379217 () Bool)

(assert (=> b!1379217 (= e!781335 #b00000000000000000000000000000000)))

(declare-fun b!1379218 () Bool)

(assert (=> b!1379218 (= e!781335 e!781336)))

(declare-fun c!128128 () Bool)

(assert (=> b!1379218 (= c!128128 (validKeyInArray!0 (select (arr!45290 a!4094) from!3466)))))

(declare-fun b!1379219 () Bool)

(assert (=> b!1379219 (= e!781336 (bvadd #b00000000000000000000000000000001 call!66064))))

(assert (= (and d!148461 c!128127) b!1379217))

(assert (= (and d!148461 (not c!128127)) b!1379218))

(assert (= (and b!1379218 c!128128) b!1379219))

(assert (= (and b!1379218 (not c!128128)) b!1379216))

(assert (= (or b!1379219 b!1379216) bm!66061))

(declare-fun m!1264317 () Bool)

(assert (=> bm!66061 m!1264317))

(declare-fun m!1264319 () Bool)

(assert (=> b!1379218 m!1264319))

(assert (=> b!1379218 m!1264319))

(declare-fun m!1264321 () Bool)

(assert (=> b!1379218 m!1264321))

(assert (=> b!1379184 d!148461))

(declare-fun d!148463 () Bool)

(assert (=> d!148463 (= (validKeyInArray!0 k0!2953) (and (not (= k0!2953 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2953 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379185 d!148463))

(declare-fun d!148465 () Bool)

(assert (=> d!148465 (= (array_inv!34235 a!4094) (bvsge (size!45841 a!4094) #b00000000000000000000000000000000))))

(assert (=> start!117256 d!148465))

(declare-fun bm!66062 () Bool)

(declare-fun call!66065 () (_ BitVec 32))

(assert (=> bm!66062 (= call!66065 (arrayCountValidKeys!0 lt!607266 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(declare-fun b!1379220 () Bool)

(declare-fun e!781338 () (_ BitVec 32))

(assert (=> b!1379220 (= e!781338 call!66065)))

(declare-fun d!148467 () Bool)

(declare-fun lt!607299 () (_ BitVec 32))

(assert (=> d!148467 (and (bvsge lt!607299 #b00000000000000000000000000000000) (bvsle lt!607299 (bvsub (size!45841 lt!607266) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun e!781337 () (_ BitVec 32))

(assert (=> d!148467 (= lt!607299 e!781337)))

(declare-fun c!128129 () Bool)

(assert (=> d!148467 (= c!128129 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148467 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45841 lt!607266)))))

(assert (=> d!148467 (= (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607299)))

(declare-fun b!1379221 () Bool)

(assert (=> b!1379221 (= e!781337 #b00000000000000000000000000000000)))

(declare-fun b!1379222 () Bool)

(assert (=> b!1379222 (= e!781337 e!781338)))

(declare-fun c!128130 () Bool)

(assert (=> b!1379222 (= c!128130 (validKeyInArray!0 (select (arr!45290 lt!607266) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379223 () Bool)

(assert (=> b!1379223 (= e!781338 (bvadd #b00000000000000000000000000000001 call!66065))))

(assert (= (and d!148467 c!128129) b!1379221))

(assert (= (and d!148467 (not c!128129)) b!1379222))

(assert (= (and b!1379222 c!128130) b!1379223))

(assert (= (and b!1379222 (not c!128130)) b!1379220))

(assert (= (or b!1379223 b!1379220) bm!66062))

(declare-fun m!1264323 () Bool)

(assert (=> bm!66062 m!1264323))

(declare-fun m!1264325 () Bool)

(assert (=> b!1379222 m!1264325))

(assert (=> b!1379222 m!1264325))

(declare-fun m!1264327 () Bool)

(assert (=> b!1379222 m!1264327))

(assert (=> b!1379186 d!148467))

(declare-fun bm!66063 () Bool)

(declare-fun call!66066 () (_ BitVec 32))

(assert (=> bm!66063 (= call!66066 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379224 () Bool)

(declare-fun e!781340 () (_ BitVec 32))

(assert (=> b!1379224 (= e!781340 call!66066)))

(declare-fun d!148469 () Bool)

(declare-fun lt!607300 () (_ BitVec 32))

(assert (=> d!148469 (and (bvsge lt!607300 #b00000000000000000000000000000000) (bvsle lt!607300 (bvsub (size!45841 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun e!781339 () (_ BitVec 32))

(assert (=> d!148469 (= lt!607300 e!781339)))

(declare-fun c!128131 () Bool)

(assert (=> d!148469 (= c!128131 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148469 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 a!4094)))))

(assert (=> d!148469 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607300)))

(declare-fun b!1379225 () Bool)

(assert (=> b!1379225 (= e!781339 #b00000000000000000000000000000000)))

(declare-fun b!1379226 () Bool)

(assert (=> b!1379226 (= e!781339 e!781340)))

(declare-fun c!128132 () Bool)

(assert (=> b!1379226 (= c!128132 (validKeyInArray!0 (select (arr!45290 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379227 () Bool)

(assert (=> b!1379227 (= e!781340 (bvadd #b00000000000000000000000000000001 call!66066))))

(assert (= (and d!148469 c!128131) b!1379225))

(assert (= (and d!148469 (not c!128131)) b!1379226))

(assert (= (and b!1379226 c!128132) b!1379227))

(assert (= (and b!1379226 (not c!128132)) b!1379224))

(assert (= (or b!1379227 b!1379224) bm!66063))

(declare-fun m!1264329 () Bool)

(assert (=> bm!66063 m!1264329))

(declare-fun m!1264331 () Bool)

(assert (=> b!1379226 m!1264331))

(assert (=> b!1379226 m!1264331))

(declare-fun m!1264333 () Bool)

(assert (=> b!1379226 m!1264333))

(assert (=> b!1379186 d!148469))

(declare-fun d!148471 () Bool)

(assert (=> d!148471 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607303 () Unit!45805)

(declare-fun choose!61 (array!93789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45805)

(assert (=> d!148471 (= lt!607303 (choose!61 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148471 (and (bvslt (size!45841 a!4094) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 a!4094)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148471 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607303)))

(declare-fun bs!39719 () Bool)

(assert (= bs!39719 d!148471))

(assert (=> bs!39719 m!1264267))

(assert (=> bs!39719 m!1264281))

(assert (=> bs!39719 m!1264273))

(declare-fun m!1264335 () Bool)

(assert (=> bs!39719 m!1264335))

(assert (=> b!1379186 d!148471))

(declare-fun d!148473 () Bool)

(assert (=> d!148473 (= (bvadd (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 lt!607266 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607304 () Unit!45805)

(assert (=> d!148473 (= lt!607304 (choose!61 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148473 (and (bvslt (size!45841 lt!607266) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 lt!607266)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148473 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607304)))

(declare-fun bs!39720 () Bool)

(assert (= bs!39720 d!148473))

(assert (=> bs!39720 m!1264269))

(assert (=> bs!39720 m!1264279))

(assert (=> bs!39720 m!1264277))

(declare-fun m!1264337 () Bool)

(assert (=> bs!39720 m!1264337))

(assert (=> b!1379186 d!148473))

(declare-fun bm!66064 () Bool)

(declare-fun call!66067 () (_ BitVec 32))

(assert (=> bm!66064 (= call!66067 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(declare-fun b!1379228 () Bool)

(declare-fun e!781342 () (_ BitVec 32))

(assert (=> b!1379228 (= e!781342 call!66067)))

(declare-fun d!148475 () Bool)

(declare-fun lt!607305 () (_ BitVec 32))

(assert (=> d!148475 (and (bvsge lt!607305 #b00000000000000000000000000000000) (bvsle lt!607305 (bvsub (size!45841 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun e!781341 () (_ BitVec 32))

(assert (=> d!148475 (= lt!607305 e!781341)))

(declare-fun c!128133 () Bool)

(assert (=> d!148475 (= c!128133 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148475 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45841 a!4094)))))

(assert (=> d!148475 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607305)))

(declare-fun b!1379229 () Bool)

(assert (=> b!1379229 (= e!781341 #b00000000000000000000000000000000)))

(declare-fun b!1379230 () Bool)

(assert (=> b!1379230 (= e!781341 e!781342)))

(declare-fun c!128134 () Bool)

(assert (=> b!1379230 (= c!128134 (validKeyInArray!0 (select (arr!45290 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379231 () Bool)

(assert (=> b!1379231 (= e!781342 (bvadd #b00000000000000000000000000000001 call!66067))))

(assert (= (and d!148475 c!128133) b!1379229))

(assert (= (and d!148475 (not c!128133)) b!1379230))

(assert (= (and b!1379230 c!128134) b!1379231))

(assert (= (and b!1379230 (not c!128134)) b!1379228))

(assert (= (or b!1379231 b!1379228) bm!66064))

(declare-fun m!1264339 () Bool)

(assert (=> bm!66064 m!1264339))

(assert (=> b!1379230 m!1264331))

(assert (=> b!1379230 m!1264331))

(assert (=> b!1379230 m!1264333))

(assert (=> b!1379186 d!148475))

(declare-fun call!66068 () (_ BitVec 32))

(declare-fun bm!66065 () Bool)

(assert (=> bm!66065 (= call!66068 (arrayCountValidKeys!0 lt!607266 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379232 () Bool)

(declare-fun e!781344 () (_ BitVec 32))

(assert (=> b!1379232 (= e!781344 call!66068)))

(declare-fun d!148477 () Bool)

(declare-fun lt!607306 () (_ BitVec 32))

(assert (=> d!148477 (and (bvsge lt!607306 #b00000000000000000000000000000000) (bvsle lt!607306 (bvsub (size!45841 lt!607266) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun e!781343 () (_ BitVec 32))

(assert (=> d!148477 (= lt!607306 e!781343)))

(declare-fun c!128135 () Bool)

(assert (=> d!148477 (= c!128135 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148477 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45841 lt!607266)))))

(assert (=> d!148477 (= (arrayCountValidKeys!0 lt!607266 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607306)))

(declare-fun b!1379233 () Bool)

(assert (=> b!1379233 (= e!781343 #b00000000000000000000000000000000)))

(declare-fun b!1379234 () Bool)

(assert (=> b!1379234 (= e!781343 e!781344)))

(declare-fun c!128136 () Bool)

(assert (=> b!1379234 (= c!128136 (validKeyInArray!0 (select (arr!45290 lt!607266) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379235 () Bool)

(assert (=> b!1379235 (= e!781344 (bvadd #b00000000000000000000000000000001 call!66068))))

(assert (= (and d!148477 c!128135) b!1379233))

(assert (= (and d!148477 (not c!128135)) b!1379234))

(assert (= (and b!1379234 c!128136) b!1379235))

(assert (= (and b!1379234 (not c!128136)) b!1379232))

(assert (= (or b!1379235 b!1379232) bm!66065))

(declare-fun m!1264341 () Bool)

(assert (=> bm!66065 m!1264341))

(assert (=> b!1379234 m!1264325))

(assert (=> b!1379234 m!1264325))

(assert (=> b!1379234 m!1264327))

(assert (=> b!1379186 d!148477))

(check-sat (not bm!66060) (not b!1379226) (not d!148473) (not bm!66065) (not b!1379222) (not bm!66061) (not bm!66062) (not b!1379218) (not b!1379214) (not bm!66063) (not b!1379230) (not bm!66064) (not d!148471) (not b!1379234))
(check-sat)
