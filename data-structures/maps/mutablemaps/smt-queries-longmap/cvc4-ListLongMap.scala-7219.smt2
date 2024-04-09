; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92416 () Bool)

(assert start!92416)

(declare-fun b!1050288 () Bool)

(declare-fun e!596033 () Bool)

(assert (=> b!1050288 (= e!596033 true)))

(assert (=> b!1050288 false))

(declare-datatypes ((Unit!34365 0))(
  ( (Unit!34366) )
))
(declare-fun lt!463879 () Unit!34365)

(declare-datatypes ((array!66165 0))(
  ( (array!66166 (arr!31818 (Array (_ BitVec 32) (_ BitVec 64))) (size!32355 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66165)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((List!22261 0))(
  ( (Nil!22258) (Cons!22257 (h!23466 (_ BitVec 64)) (t!31575 List!22261)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66165 (_ BitVec 64) (_ BitVec 32) List!22261) Unit!34365)

(assert (=> b!1050288 (= lt!463879 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22258))))

(declare-fun arrayContainsKey!0 (array!66165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050288 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463878 () (_ BitVec 32))

(declare-fun lt!463876 () Unit!34365)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66165 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34365)

(assert (=> b!1050288 (= lt!463876 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463878 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66165 (_ BitVec 32) List!22261) Bool)

(assert (=> b!1050288 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22258)))

(declare-fun lt!463875 () Unit!34365)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66165 (_ BitVec 32) (_ BitVec 32)) Unit!34365)

(assert (=> b!1050288 (= lt!463875 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!699527 () Bool)

(declare-fun e!596038 () Bool)

(assert (=> start!92416 (=> (not res!699527) (not e!596038))))

(assert (=> start!92416 (= res!699527 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32355 a!3488)) (bvslt (size!32355 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92416 e!596038))

(assert (=> start!92416 true))

(declare-fun array_inv!24440 (array!66165) Bool)

(assert (=> start!92416 (array_inv!24440 a!3488)))

(declare-fun b!1050289 () Bool)

(declare-fun res!699524 () Bool)

(assert (=> b!1050289 (=> (not res!699524) (not e!596038))))

(assert (=> b!1050289 (= res!699524 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22258))))

(declare-fun b!1050290 () Bool)

(declare-fun e!596035 () Bool)

(assert (=> b!1050290 (= e!596035 (arrayContainsKey!0 a!3488 k!2747 lt!463878))))

(declare-fun b!1050291 () Bool)

(declare-fun e!596039 () Bool)

(assert (=> b!1050291 (= e!596038 e!596039)))

(declare-fun res!699523 () Bool)

(assert (=> b!1050291 (=> (not res!699523) (not e!596039))))

(declare-fun lt!463877 () array!66165)

(assert (=> b!1050291 (= res!699523 (arrayContainsKey!0 lt!463877 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050291 (= lt!463877 (array!66166 (store (arr!31818 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32355 a!3488)))))

(declare-fun b!1050292 () Bool)

(declare-fun res!699529 () Bool)

(assert (=> b!1050292 (=> (not res!699529) (not e!596038))))

(assert (=> b!1050292 (= res!699529 (= (select (arr!31818 a!3488) i!1381) k!2747))))

(declare-fun b!1050293 () Bool)

(declare-fun e!596037 () Bool)

(assert (=> b!1050293 (= e!596039 e!596037)))

(declare-fun res!699528 () Bool)

(assert (=> b!1050293 (=> (not res!699528) (not e!596037))))

(assert (=> b!1050293 (= res!699528 (not (= lt!463878 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66165 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050293 (= lt!463878 (arrayScanForKey!0 lt!463877 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050294 () Bool)

(assert (=> b!1050294 (= e!596037 (not e!596033))))

(declare-fun res!699526 () Bool)

(assert (=> b!1050294 (=> res!699526 e!596033)))

(assert (=> b!1050294 (= res!699526 (bvsle lt!463878 i!1381))))

(declare-fun e!596034 () Bool)

(assert (=> b!1050294 e!596034))

(declare-fun res!699531 () Bool)

(assert (=> b!1050294 (=> (not res!699531) (not e!596034))))

(assert (=> b!1050294 (= res!699531 (= (select (store (arr!31818 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463878) k!2747))))

(declare-fun b!1050295 () Bool)

(declare-fun res!699530 () Bool)

(assert (=> b!1050295 (=> (not res!699530) (not e!596038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050295 (= res!699530 (validKeyInArray!0 k!2747))))

(declare-fun b!1050296 () Bool)

(assert (=> b!1050296 (= e!596034 e!596035)))

(declare-fun res!699525 () Bool)

(assert (=> b!1050296 (=> res!699525 e!596035)))

(assert (=> b!1050296 (= res!699525 (bvsle lt!463878 i!1381))))

(assert (= (and start!92416 res!699527) b!1050289))

(assert (= (and b!1050289 res!699524) b!1050295))

(assert (= (and b!1050295 res!699530) b!1050292))

(assert (= (and b!1050292 res!699529) b!1050291))

(assert (= (and b!1050291 res!699523) b!1050293))

(assert (= (and b!1050293 res!699528) b!1050294))

(assert (= (and b!1050294 res!699531) b!1050296))

(assert (= (and b!1050296 (not res!699525)) b!1050290))

(assert (= (and b!1050294 (not res!699526)) b!1050288))

(declare-fun m!971105 () Bool)

(assert (=> b!1050292 m!971105))

(declare-fun m!971107 () Bool)

(assert (=> start!92416 m!971107))

(declare-fun m!971109 () Bool)

(assert (=> b!1050290 m!971109))

(declare-fun m!971111 () Bool)

(assert (=> b!1050291 m!971111))

(declare-fun m!971113 () Bool)

(assert (=> b!1050291 m!971113))

(declare-fun m!971115 () Bool)

(assert (=> b!1050295 m!971115))

(declare-fun m!971117 () Bool)

(assert (=> b!1050288 m!971117))

(declare-fun m!971119 () Bool)

(assert (=> b!1050288 m!971119))

(declare-fun m!971121 () Bool)

(assert (=> b!1050288 m!971121))

(declare-fun m!971123 () Bool)

(assert (=> b!1050288 m!971123))

(declare-fun m!971125 () Bool)

(assert (=> b!1050288 m!971125))

(assert (=> b!1050294 m!971113))

(declare-fun m!971127 () Bool)

(assert (=> b!1050294 m!971127))

(declare-fun m!971129 () Bool)

(assert (=> b!1050293 m!971129))

(declare-fun m!971131 () Bool)

(assert (=> b!1050289 m!971131))

(push 1)

(assert (not b!1050288))

