; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117296 () Bool)

(assert start!117296)

(declare-fun b!1379411 () Bool)

(declare-fun res!921958 () Bool)

(declare-fun e!781448 () Bool)

(assert (=> b!1379411 (=> (not res!921958) (not e!781448))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379411 (= res!921958 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379412 () Bool)

(declare-fun res!921961 () Bool)

(assert (=> b!1379412 (=> (not res!921961) (not e!781448))))

(declare-datatypes ((array!93808 0))(
  ( (array!93809 (arr!45298 (Array (_ BitVec 32) (_ BitVec 64))) (size!45849 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93808)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379412 (= res!921961 (validKeyInArray!0 (select (arr!45298 a!4094) i!1451)))))

(declare-fun b!1379413 () Bool)

(declare-fun e!781450 () Bool)

(assert (=> b!1379413 (= e!781448 e!781450)))

(declare-fun res!921960 () Bool)

(assert (=> b!1379413 (=> (not res!921960) (not e!781450))))

(declare-fun lt!607528 () (_ BitVec 32))

(declare-fun lt!607529 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379413 (= res!921960 (and (= lt!607528 (bvsub lt!607529 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607526 () array!93808)

(declare-fun arrayCountValidKeys!0 (array!93808 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379413 (= lt!607528 (arrayCountValidKeys!0 lt!607526 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379413 (= lt!607529 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379413 (= lt!607526 (array!93809 (store (arr!45298 a!4094) i!1451 k!2953) (size!45849 a!4094)))))

(declare-fun b!1379414 () Bool)

(declare-fun res!921963 () Bool)

(assert (=> b!1379414 (=> (not res!921963) (not e!781448))))

(assert (=> b!1379414 (= res!921963 (and (bvslt (size!45849 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45849 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379415 () Bool)

(declare-fun e!781451 () Bool)

(assert (=> b!1379415 (= e!781451 true)))

(assert (=> b!1379415 (= (arrayCountValidKeys!0 lt!607526 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45821 0))(
  ( (Unit!45822) )
))
(declare-fun lt!607531 () Unit!45821)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93808 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45821)

(assert (=> b!1379415 (= lt!607531 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1379416 () Bool)

(assert (=> b!1379416 (= e!781450 (not e!781451))))

(declare-fun res!921962 () Bool)

(assert (=> b!1379416 (=> res!921962 e!781451)))

(declare-fun lt!607524 () (_ BitVec 32))

(declare-fun lt!607530 () (_ BitVec 32))

(assert (=> b!1379416 (= res!921962 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45849 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607524 (bvsub lt!607530 #b00000000000000000000000000000001)))))))

(declare-fun lt!607522 () (_ BitVec 32))

(assert (=> b!1379416 (= (bvadd lt!607522 lt!607528) lt!607524)))

(assert (=> b!1379416 (= lt!607524 (arrayCountValidKeys!0 lt!607526 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379416 (= lt!607522 (arrayCountValidKeys!0 lt!607526 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607525 () Unit!45821)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93808 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45821)

(assert (=> b!1379416 (= lt!607525 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607526 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607523 () (_ BitVec 32))

(assert (=> b!1379416 (= (bvadd lt!607523 lt!607529) lt!607530)))

(assert (=> b!1379416 (= lt!607530 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379416 (= lt!607523 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607527 () Unit!45821)

(assert (=> b!1379416 (= lt!607527 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921959 () Bool)

(assert (=> start!117296 (=> (not res!921959) (not e!781448))))

(assert (=> start!117296 (= res!921959 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45849 a!4094))))))

(assert (=> start!117296 e!781448))

(assert (=> start!117296 true))

(declare-fun array_inv!34243 (array!93808) Bool)

(assert (=> start!117296 (array_inv!34243 a!4094)))

(assert (= (and start!117296 res!921959) b!1379412))

(assert (= (and b!1379412 res!921961) b!1379411))

(assert (= (and b!1379411 res!921958) b!1379414))

(assert (= (and b!1379414 res!921963) b!1379413))

(assert (= (and b!1379413 res!921960) b!1379416))

(assert (= (and b!1379416 (not res!921962)) b!1379415))

(declare-fun m!1264581 () Bool)

(assert (=> b!1379416 m!1264581))

(declare-fun m!1264583 () Bool)

(assert (=> b!1379416 m!1264583))

(declare-fun m!1264585 () Bool)

(assert (=> b!1379416 m!1264585))

(declare-fun m!1264587 () Bool)

(assert (=> b!1379416 m!1264587))

(declare-fun m!1264589 () Bool)

(assert (=> b!1379416 m!1264589))

(declare-fun m!1264591 () Bool)

(assert (=> b!1379416 m!1264591))

(declare-fun m!1264593 () Bool)

(assert (=> b!1379411 m!1264593))

(declare-fun m!1264595 () Bool)

(assert (=> start!117296 m!1264595))

(declare-fun m!1264597 () Bool)

(assert (=> b!1379413 m!1264597))

(declare-fun m!1264599 () Bool)

(assert (=> b!1379413 m!1264599))

(declare-fun m!1264601 () Bool)

(assert (=> b!1379413 m!1264601))

(declare-fun m!1264603 () Bool)

(assert (=> b!1379412 m!1264603))

(assert (=> b!1379412 m!1264603))

(declare-fun m!1264605 () Bool)

(assert (=> b!1379412 m!1264605))

(declare-fun m!1264607 () Bool)

(assert (=> b!1379415 m!1264607))

(declare-fun m!1264609 () Bool)

(assert (=> b!1379415 m!1264609))

(declare-fun m!1264611 () Bool)

(assert (=> b!1379415 m!1264611))

(push 1)

(assert (not b!1379413))

(assert (not start!117296))

(assert (not b!1379415))

(assert (not b!1379412))

(assert (not b!1379411))

(assert (not b!1379416))

(check-sat)

(pop 1)

