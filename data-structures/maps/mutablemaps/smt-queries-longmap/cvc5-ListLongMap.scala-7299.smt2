; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93288 () Bool)

(assert start!93288)

(declare-fun b!1057267 () Bool)

(declare-fun e!601292 () Bool)

(declare-fun e!601289 () Bool)

(assert (=> b!1057267 (= e!601292 (not e!601289))))

(declare-fun res!706078 () Bool)

(assert (=> b!1057267 (=> res!706078 e!601289)))

(declare-fun lt!466390 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057267 (= res!706078 (or (bvsgt lt!466390 i!1381) (bvsle i!1381 lt!466390)))))

(declare-fun e!601294 () Bool)

(assert (=> b!1057267 e!601294))

(declare-fun res!706077 () Bool)

(assert (=> b!1057267 (=> (not res!706077) (not e!601294))))

(declare-datatypes ((array!66674 0))(
  ( (array!66675 (arr!32056 (Array (_ BitVec 32) (_ BitVec 64))) (size!32593 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66674)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1057267 (= res!706077 (= (select (store (arr!32056 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466390) k!2747))))

(declare-fun b!1057268 () Bool)

(declare-fun e!601290 () Bool)

(assert (=> b!1057268 (= e!601294 e!601290)))

(declare-fun res!706075 () Bool)

(assert (=> b!1057268 (=> res!706075 e!601290)))

(assert (=> b!1057268 (= res!706075 (or (bvsgt lt!466390 i!1381) (bvsle i!1381 lt!466390)))))

(declare-fun b!1057269 () Bool)

(declare-fun res!706079 () Bool)

(declare-fun e!601291 () Bool)

(assert (=> b!1057269 (=> (not res!706079) (not e!601291))))

(assert (=> b!1057269 (= res!706079 (= (select (arr!32056 a!3488) i!1381) k!2747))))

(declare-fun b!1057270 () Bool)

(declare-fun e!601295 () Bool)

(assert (=> b!1057270 (= e!601295 e!601292)))

(declare-fun res!706080 () Bool)

(assert (=> b!1057270 (=> (not res!706080) (not e!601292))))

(assert (=> b!1057270 (= res!706080 (not (= lt!466390 i!1381)))))

(declare-fun lt!466387 () array!66674)

(declare-fun arrayScanForKey!0 (array!66674 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057270 (= lt!466390 (arrayScanForKey!0 lt!466387 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057266 () Bool)

(declare-fun res!706082 () Bool)

(assert (=> b!1057266 (=> (not res!706082) (not e!601291))))

(declare-datatypes ((List!22499 0))(
  ( (Nil!22496) (Cons!22495 (h!23704 (_ BitVec 64)) (t!31813 List!22499)) )
))
(declare-fun arrayNoDuplicates!0 (array!66674 (_ BitVec 32) List!22499) Bool)

(assert (=> b!1057266 (= res!706082 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22496))))

(declare-fun res!706083 () Bool)

(assert (=> start!93288 (=> (not res!706083) (not e!601291))))

(assert (=> start!93288 (= res!706083 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32593 a!3488)) (bvslt (size!32593 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93288 e!601291))

(assert (=> start!93288 true))

(declare-fun array_inv!24678 (array!66674) Bool)

(assert (=> start!93288 (array_inv!24678 a!3488)))

(declare-fun b!1057271 () Bool)

(declare-fun res!706076 () Bool)

(assert (=> b!1057271 (=> (not res!706076) (not e!601291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057271 (= res!706076 (validKeyInArray!0 k!2747))))

(declare-fun b!1057272 () Bool)

(assert (=> b!1057272 (= e!601289 (bvsge lt!466390 #b00000000000000000000000000000000))))

(declare-fun lt!466389 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057272 (arrayContainsKey!0 a!3488 k!2747 lt!466389)))

(declare-datatypes ((Unit!34643 0))(
  ( (Unit!34644) )
))
(declare-fun lt!466386 () Unit!34643)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66674 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34643)

(assert (=> b!1057272 (= lt!466386 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466389))))

(assert (=> b!1057272 (= lt!466389 (bvadd #b00000000000000000000000000000001 lt!466390))))

(assert (=> b!1057272 (arrayNoDuplicates!0 a!3488 lt!466390 Nil!22496)))

(declare-fun lt!466388 () Unit!34643)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66674 (_ BitVec 32) (_ BitVec 32)) Unit!34643)

(assert (=> b!1057272 (= lt!466388 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466390))))

(declare-fun b!1057273 () Bool)

(assert (=> b!1057273 (= e!601291 e!601295)))

(declare-fun res!706081 () Bool)

(assert (=> b!1057273 (=> (not res!706081) (not e!601295))))

(assert (=> b!1057273 (= res!706081 (arrayContainsKey!0 lt!466387 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057273 (= lt!466387 (array!66675 (store (arr!32056 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32593 a!3488)))))

(declare-fun b!1057274 () Bool)

(assert (=> b!1057274 (= e!601290 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!93288 res!706083) b!1057266))

(assert (= (and b!1057266 res!706082) b!1057271))

(assert (= (and b!1057271 res!706076) b!1057269))

(assert (= (and b!1057269 res!706079) b!1057273))

(assert (= (and b!1057273 res!706081) b!1057270))

(assert (= (and b!1057270 res!706080) b!1057267))

(assert (= (and b!1057267 res!706077) b!1057268))

(assert (= (and b!1057268 (not res!706075)) b!1057274))

(assert (= (and b!1057267 (not res!706078)) b!1057272))

(declare-fun m!977109 () Bool)

(assert (=> b!1057269 m!977109))

(declare-fun m!977111 () Bool)

(assert (=> b!1057270 m!977111))

(declare-fun m!977113 () Bool)

(assert (=> b!1057274 m!977113))

(declare-fun m!977115 () Bool)

(assert (=> start!93288 m!977115))

(declare-fun m!977117 () Bool)

(assert (=> b!1057271 m!977117))

(declare-fun m!977119 () Bool)

(assert (=> b!1057267 m!977119))

(declare-fun m!977121 () Bool)

(assert (=> b!1057267 m!977121))

(declare-fun m!977123 () Bool)

(assert (=> b!1057272 m!977123))

(declare-fun m!977125 () Bool)

(assert (=> b!1057272 m!977125))

(declare-fun m!977127 () Bool)

(assert (=> b!1057272 m!977127))

(declare-fun m!977129 () Bool)

(assert (=> b!1057272 m!977129))

(declare-fun m!977131 () Bool)

(assert (=> b!1057273 m!977131))

(assert (=> b!1057273 m!977119))

(declare-fun m!977133 () Bool)

(assert (=> b!1057266 m!977133))

(push 1)

(assert (not b!1057270))

(assert (not b!1057272))

(assert (not b!1057273))

(assert (not b!1057266))

(assert (not b!1057274))

(assert (not start!93288))

(assert (not b!1057271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128361 () Bool)

(declare-fun res!706164 () Bool)

