; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117292 () Bool)

(assert start!117292)

(declare-fun b!1379375 () Bool)

(declare-fun e!781426 () Bool)

(declare-fun e!781427 () Bool)

(assert (=> b!1379375 (= e!781426 e!781427)))

(declare-fun res!921923 () Bool)

(assert (=> b!1379375 (=> (not res!921923) (not e!781427))))

(declare-fun lt!607471 () (_ BitVec 32))

(declare-fun lt!607468 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379375 (= res!921923 (and (= lt!607468 (bvsub lt!607471 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93804 0))(
  ( (array!93805 (arr!45296 (Array (_ BitVec 32) (_ BitVec 64))) (size!45847 (_ BitVec 32))) )
))
(declare-fun lt!607467 () array!93804)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93804 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379375 (= lt!607468 (arrayCountValidKeys!0 lt!607467 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93804)

(assert (=> b!1379375 (= lt!607471 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379375 (= lt!607467 (array!93805 (store (arr!45296 a!4094) i!1451 k0!2953) (size!45847 a!4094)))))

(declare-fun res!921922 () Bool)

(assert (=> start!117292 (=> (not res!921922) (not e!781426))))

(assert (=> start!117292 (= res!921922 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45847 a!4094))))))

(assert (=> start!117292 e!781426))

(assert (=> start!117292 true))

(declare-fun array_inv!34241 (array!93804) Bool)

(assert (=> start!117292 (array_inv!34241 a!4094)))

(declare-fun b!1379376 () Bool)

(declare-fun res!921924 () Bool)

(assert (=> b!1379376 (=> (not res!921924) (not e!781426))))

(assert (=> b!1379376 (= res!921924 (and (bvslt (size!45847 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45847 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379377 () Bool)

(declare-fun res!921925 () Bool)

(assert (=> b!1379377 (=> (not res!921925) (not e!781426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379377 (= res!921925 (validKeyInArray!0 (select (arr!45296 a!4094) i!1451)))))

(declare-fun b!1379378 () Bool)

(declare-fun res!921927 () Bool)

(assert (=> b!1379378 (=> (not res!921927) (not e!781426))))

(assert (=> b!1379378 (= res!921927 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379379 () Bool)

(declare-fun e!781425 () Bool)

(assert (=> b!1379379 (= e!781427 (not e!781425))))

(declare-fun res!921926 () Bool)

(assert (=> b!1379379 (=> res!921926 e!781425)))

(declare-fun lt!607469 () (_ BitVec 32))

(declare-fun lt!607470 () (_ BitVec 32))

(assert (=> b!1379379 (= res!921926 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45847 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607470 (bvsub lt!607469 #b00000000000000000000000000000001)))))))

(declare-fun lt!607464 () (_ BitVec 32))

(assert (=> b!1379379 (= (bvadd lt!607464 lt!607468) lt!607470)))

(assert (=> b!1379379 (= lt!607470 (arrayCountValidKeys!0 lt!607467 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379379 (= lt!607464 (arrayCountValidKeys!0 lt!607467 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45817 0))(
  ( (Unit!45818) )
))
(declare-fun lt!607466 () Unit!45817)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93804 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45817)

(assert (=> b!1379379 (= lt!607466 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607467 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607463 () (_ BitVec 32))

(assert (=> b!1379379 (= (bvadd lt!607463 lt!607471) lt!607469)))

(assert (=> b!1379379 (= lt!607469 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379379 (= lt!607463 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607462 () Unit!45817)

(assert (=> b!1379379 (= lt!607462 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379380 () Bool)

(assert (=> b!1379380 (= e!781425 true)))

(assert (=> b!1379380 (= (arrayCountValidKeys!0 lt!607467 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!607465 () Unit!45817)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93804 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45817)

(assert (=> b!1379380 (= lt!607465 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(assert (= (and start!117292 res!921922) b!1379377))

(assert (= (and b!1379377 res!921925) b!1379378))

(assert (= (and b!1379378 res!921927) b!1379376))

(assert (= (and b!1379376 res!921924) b!1379375))

(assert (= (and b!1379375 res!921923) b!1379379))

(assert (= (and b!1379379 (not res!921926)) b!1379380))

(declare-fun m!1264517 () Bool)

(assert (=> b!1379377 m!1264517))

(assert (=> b!1379377 m!1264517))

(declare-fun m!1264519 () Bool)

(assert (=> b!1379377 m!1264519))

(declare-fun m!1264521 () Bool)

(assert (=> start!117292 m!1264521))

(declare-fun m!1264523 () Bool)

(assert (=> b!1379380 m!1264523))

(declare-fun m!1264525 () Bool)

(assert (=> b!1379380 m!1264525))

(declare-fun m!1264527 () Bool)

(assert (=> b!1379380 m!1264527))

(declare-fun m!1264529 () Bool)

(assert (=> b!1379375 m!1264529))

(declare-fun m!1264531 () Bool)

(assert (=> b!1379375 m!1264531))

(declare-fun m!1264533 () Bool)

(assert (=> b!1379375 m!1264533))

(declare-fun m!1264535 () Bool)

(assert (=> b!1379378 m!1264535))

(declare-fun m!1264537 () Bool)

(assert (=> b!1379379 m!1264537))

(declare-fun m!1264539 () Bool)

(assert (=> b!1379379 m!1264539))

(declare-fun m!1264541 () Bool)

(assert (=> b!1379379 m!1264541))

(declare-fun m!1264543 () Bool)

(assert (=> b!1379379 m!1264543))

(declare-fun m!1264545 () Bool)

(assert (=> b!1379379 m!1264545))

(declare-fun m!1264547 () Bool)

(assert (=> b!1379379 m!1264547))

(check-sat (not b!1379378) (not b!1379380) (not b!1379375) (not b!1379377) (not b!1379379) (not start!117292))
(check-sat)
