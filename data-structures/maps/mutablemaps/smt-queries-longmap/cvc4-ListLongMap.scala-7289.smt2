; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93166 () Bool)

(assert start!93166)

(declare-fun b!1056331 () Bool)

(declare-fun res!705225 () Bool)

(declare-fun e!600561 () Bool)

(assert (=> b!1056331 (=> (not res!705225) (not e!600561))))

(declare-datatypes ((array!66612 0))(
  ( (array!66613 (arr!32028 (Array (_ BitVec 32) (_ BitVec 64))) (size!32565 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66612)

(declare-datatypes ((List!22471 0))(
  ( (Nil!22468) (Cons!22467 (h!23676 (_ BitVec 64)) (t!31785 List!22471)) )
))
(declare-fun arrayNoDuplicates!0 (array!66612 (_ BitVec 32) List!22471) Bool)

(assert (=> b!1056331 (= res!705225 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22468))))

(declare-fun b!1056332 () Bool)

(declare-fun e!600566 () Bool)

(declare-fun e!600565 () Bool)

(assert (=> b!1056332 (= e!600566 e!600565)))

(declare-fun res!705220 () Bool)

(assert (=> b!1056332 (=> (not res!705220) (not e!600565))))

(declare-fun lt!466078 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056332 (= res!705220 (not (= lt!466078 i!1381)))))

(declare-fun lt!466077 () array!66612)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66612 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056332 (= lt!466078 (arrayScanForKey!0 lt!466077 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705221 () Bool)

(assert (=> start!93166 (=> (not res!705221) (not e!600561))))

(assert (=> start!93166 (= res!705221 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32565 a!3488)) (bvslt (size!32565 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93166 e!600561))

(assert (=> start!93166 true))

(declare-fun array_inv!24650 (array!66612) Bool)

(assert (=> start!93166 (array_inv!24650 a!3488)))

(declare-fun e!600563 () Bool)

(declare-fun b!1056333 () Bool)

(declare-fun arrayContainsKey!0 (array!66612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056333 (= e!600563 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056334 () Bool)

(declare-fun e!600562 () Bool)

(assert (=> b!1056334 (= e!600562 e!600563)))

(declare-fun res!705224 () Bool)

(assert (=> b!1056334 (=> res!705224 e!600563)))

(assert (=> b!1056334 (= res!705224 (or (bvsgt lt!466078 i!1381) (bvsle i!1381 lt!466078)))))

(declare-fun b!1056335 () Bool)

(declare-fun res!705218 () Bool)

(assert (=> b!1056335 (=> (not res!705218) (not e!600561))))

(assert (=> b!1056335 (= res!705218 (= (select (arr!32028 a!3488) i!1381) k!2747))))

(declare-fun b!1056336 () Bool)

(assert (=> b!1056336 (= e!600561 e!600566)))

(declare-fun res!705222 () Bool)

(assert (=> b!1056336 (=> (not res!705222) (not e!600566))))

(assert (=> b!1056336 (= res!705222 (arrayContainsKey!0 lt!466077 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056336 (= lt!466077 (array!66613 (store (arr!32028 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32565 a!3488)))))

(declare-fun b!1056337 () Bool)

(assert (=> b!1056337 (= e!600565 (not (or (bvsgt lt!466078 i!1381) (bvsle i!1381 lt!466078) (bvsgt #b00000000000000000000000000000000 (size!32565 a!3488)) (and (bvsge lt!466078 #b00000000000000000000000000000000) (bvsle lt!466078 (size!32565 a!3488))))))))

(assert (=> b!1056337 e!600562))

(declare-fun res!705219 () Bool)

(assert (=> b!1056337 (=> (not res!705219) (not e!600562))))

(assert (=> b!1056337 (= res!705219 (= (select (store (arr!32028 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466078) k!2747))))

(declare-fun b!1056338 () Bool)

(declare-fun res!705223 () Bool)

(assert (=> b!1056338 (=> (not res!705223) (not e!600561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056338 (= res!705223 (validKeyInArray!0 k!2747))))

(assert (= (and start!93166 res!705221) b!1056331))

(assert (= (and b!1056331 res!705225) b!1056338))

(assert (= (and b!1056338 res!705223) b!1056335))

(assert (= (and b!1056335 res!705218) b!1056336))

(assert (= (and b!1056336 res!705222) b!1056332))

(assert (= (and b!1056332 res!705220) b!1056337))

(assert (= (and b!1056337 res!705219) b!1056334))

(assert (= (and b!1056334 (not res!705224)) b!1056333))

(declare-fun m!976347 () Bool)

(assert (=> b!1056332 m!976347))

(declare-fun m!976349 () Bool)

(assert (=> b!1056331 m!976349))

(declare-fun m!976351 () Bool)

(assert (=> b!1056335 m!976351))

(declare-fun m!976353 () Bool)

(assert (=> b!1056336 m!976353))

(declare-fun m!976355 () Bool)

(assert (=> b!1056336 m!976355))

(declare-fun m!976357 () Bool)

(assert (=> b!1056338 m!976357))

(declare-fun m!976359 () Bool)

(assert (=> b!1056333 m!976359))

(assert (=> b!1056337 m!976355))

(declare-fun m!976361 () Bool)

(assert (=> b!1056337 m!976361))

(declare-fun m!976363 () Bool)

(assert (=> start!93166 m!976363))

(push 1)

(assert (not b!1056336))

(assert (not b!1056333))

(assert (not start!93166))

(assert (not b!1056331))

(assert (not b!1056332))

(assert (not b!1056338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1056392 () Bool)

(declare-fun e!600612 () Bool)

(declare-fun call!44822 () Bool)

(assert (=> b!1056392 (= e!600612 call!44822)))

(declare-fun b!1056393 () Bool)

(declare-fun e!600609 () Bool)

(assert (=> b!1056393 (= e!600609 e!600612)))

(declare-fun c!107030 () Bool)

(assert (=> b!1056393 (= c!107030 (validKeyInArray!0 (select (arr!32028 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056394 () Bool)

(declare-fun e!600610 () Bool)

(declare-fun contains!6210 (List!22471 (_ BitVec 64)) Bool)

(assert (=> b!1056394 (= e!600610 (contains!6210 Nil!22468 (select (arr!32028 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056395 () Bool)

(declare-fun e!600611 () Bool)

(assert (=> b!1056395 (= e!600611 e!600609)))

(declare-fun res!705259 () Bool)

(assert (=> b!1056395 (=> (not res!705259) (not e!600609))))

(assert (=> b!1056395 (= res!705259 (not e!600610))))

(declare-fun res!705257 () Bool)

(assert (=> b!1056395 (=> (not res!705257) (not e!600610))))

(assert (=> b!1056395 (= res!705257 (validKeyInArray!0 (select (arr!32028 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128249 () Bool)

(declare-fun res!705258 () Bool)

(assert (=> d!128249 (=> res!705258 e!600611)))

(assert (=> d!128249 (= res!705258 (bvsge #b00000000000000000000000000000000 (size!32565 a!3488)))))

(assert (=> d!128249 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22468) e!600611)))

(declare-fun b!1056396 () Bool)

(assert (=> b!1056396 (= e!600612 call!44822)))

(declare-fun bm!44819 () Bool)

(assert (=> bm!44819 (= call!44822 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107030 (Cons!22467 (select (arr!32028 a!3488) #b00000000000000000000000000000000) Nil!22468) Nil!22468)))))

(assert (= (and d!128249 (not res!705258)) b!1056395))

(assert (= (and b!1056395 res!705257) b!1056394))

(assert (= (and b!1056395 res!705259) b!1056393))

(assert (= (and b!1056393 c!107030) b!1056396))

(assert (= (and b!1056393 (not c!107030)) b!1056392))

(assert (= (or b!1056396 b!1056392) bm!44819))

(declare-fun m!976393 () Bool)

(assert (=> b!1056393 m!976393))

(assert (=> b!1056393 m!976393))

(declare-fun m!976395 () Bool)

(assert (=> b!1056393 m!976395))

(assert (=> b!1056394 m!976393))

(assert (=> b!1056394 m!976393))

(declare-fun m!976397 () Bool)

(assert (=> b!1056394 m!976397))

(assert (=> b!1056395 m!976393))

(assert (=> b!1056395 m!976393))

(assert (=> b!1056395 m!976395))

(assert (=> bm!44819 m!976393))

(declare-fun m!976399 () Bool)

(assert (=> bm!44819 m!976399))

(assert (=> b!1056331 d!128249))

(declare-fun d!128261 () Bool)

(declare-fun res!705270 () Bool)

(declare-fun e!600625 () Bool)

(assert (=> d!128261 (=> res!705270 e!600625)))

(assert (=> d!128261 (= res!705270 (= (select (arr!32028 lt!466077) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128261 (= (arrayContainsKey!0 lt!466077 k!2747 #b00000000000000000000000000000000) e!600625)))

(declare-fun b!1056411 () Bool)

(declare-fun e!600626 () Bool)

(assert (=> b!1056411 (= e!600625 e!600626)))

(declare-fun res!705271 () Bool)

(assert (=> b!1056411 (=> (not res!705271) (not e!600626))))

(assert (=> b!1056411 (= res!705271 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32565 lt!466077)))))

(declare-fun b!1056412 () Bool)

(assert (=> b!1056412 (= e!600626 (arrayContainsKey!0 lt!466077 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128261 (not res!705270)) b!1056411))

(assert (= (and b!1056411 res!705271) b!1056412))

(declare-fun m!976401 () Bool)

(assert (=> d!128261 m!976401))

(declare-fun m!976403 () Bool)

(assert (=> b!1056412 m!976403))

(assert (=> b!1056336 d!128261))

(declare-fun d!128263 () Bool)

(assert (=> d!128263 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056338 d!128263))

(declare-fun d!128267 () Bool)

(declare-fun lt!466087 () (_ BitVec 32))

(assert (=> d!128267 (and (or (bvslt lt!466087 #b00000000000000000000000000000000) (bvsge lt!466087 (size!32565 lt!466077)) (and (bvsge lt!466087 #b00000000000000000000000000000000) (bvslt lt!466087 (size!32565 lt!466077)))) (bvsge lt!466087 #b00000000000000000000000000000000) (bvslt lt!466087 (size!32565 lt!466077)) (= (select (arr!32028 lt!466077) lt!466087) k!2747))))

(declare-fun e!600633 () (_ BitVec 32))

(assert (=> d!128267 (= lt!466087 e!600633)))

(declare-fun c!107036 () Bool)

(assert (=> d!128267 (= c!107036 (= (select (arr!32028 lt!466077) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128267 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32565 lt!466077)) (bvslt (size!32565 lt!466077) #b01111111111111111111111111111111))))

(assert (=> d!128267 (= (arrayScanForKey!0 lt!466077 k!2747 #b00000000000000000000000000000000) lt!466087)))

(declare-fun b!1056422 () Bool)

(assert (=> b!1056422 (= e!600633 #b00000000000000000000000000000000)))

(declare-fun b!1056423 () Bool)

(assert (=> b!1056423 (= e!600633 (arrayScanForKey!0 lt!466077 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128267 c!107036) b!1056422))

(assert (= (and d!128267 (not c!107036)) b!1056423))

(declare-fun m!976413 () Bool)

(assert (=> d!128267 m!976413))

(assert (=> d!128267 m!976401))

(declare-fun m!976415 () Bool)

(assert (=> b!1056423 m!976415))

(assert (=> b!1056332 d!128267))

(declare-fun d!128269 () Bool)

(declare-fun res!705275 () Bool)

(declare-fun e!600634 () Bool)

(assert (=> d!128269 (=> res!705275 e!600634)))

(assert (=> d!128269 (= res!705275 (= (select (arr!32028 a!3488) i!1381) k!2747))))

(assert (=> d!128269 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!600634)))

(declare-fun b!1056424 () Bool)

(declare-fun e!600635 () Bool)

(assert (=> b!1056424 (= e!600634 e!600635)))

(declare-fun res!705276 () Bool)

(assert (=> b!1056424 (=> (not res!705276) (not e!600635))))

(assert (=> b!1056424 (= res!705276 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32565 a!3488)))))

(declare-fun b!1056425 () Bool)

(assert (=> b!1056425 (= e!600635 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128269 (not res!705275)) b!1056424))

(assert (= (and b!1056424 res!705276) b!1056425))

(assert (=> d!128269 m!976351))

(declare-fun m!976417 () Bool)

(assert (=> b!1056425 m!976417))

(assert (=> b!1056333 d!128269))

(declare-fun d!128271 () Bool)

(assert (=> d!128271 (= (array_inv!24650 a!3488) (bvsge (size!32565 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93166 d!128271))

(push 1)

(assert (not b!1056393))

(assert (not b!1056423))

(assert (not b!1056395))

(assert (not b!1056412))

(assert (not bm!44819))

(assert (not b!1056425))

(assert (not b!1056394))

(check-sat)

