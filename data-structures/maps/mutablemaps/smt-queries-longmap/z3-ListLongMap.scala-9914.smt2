; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117298 () Bool)

(assert start!117298)

(declare-fun b!1379429 () Bool)

(declare-fun res!921981 () Bool)

(declare-fun e!781462 () Bool)

(assert (=> b!1379429 (=> (not res!921981) (not e!781462))))

(declare-datatypes ((array!93810 0))(
  ( (array!93811 (arr!45299 (Array (_ BitVec 32) (_ BitVec 64))) (size!45850 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93810)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379429 (= res!921981 (validKeyInArray!0 (select (arr!45299 a!4094) i!1451)))))

(declare-fun res!921978 () Bool)

(assert (=> start!117298 (=> (not res!921978) (not e!781462))))

(assert (=> start!117298 (= res!921978 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45850 a!4094))))))

(assert (=> start!117298 e!781462))

(assert (=> start!117298 true))

(declare-fun array_inv!34244 (array!93810) Bool)

(assert (=> start!117298 (array_inv!34244 a!4094)))

(declare-fun b!1379430 () Bool)

(declare-fun res!921976 () Bool)

(assert (=> b!1379430 (=> (not res!921976) (not e!781462))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379430 (= res!921976 (and (bvslt (size!45850 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45850 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379431 () Bool)

(declare-fun e!781461 () Bool)

(assert (=> b!1379431 (= e!781462 e!781461)))

(declare-fun res!921977 () Bool)

(assert (=> b!1379431 (=> (not res!921977) (not e!781461))))

(declare-fun lt!607552 () (_ BitVec 32))

(declare-fun lt!607559 () (_ BitVec 32))

(assert (=> b!1379431 (= res!921977 (and (= lt!607559 (bvsub lt!607552 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607554 () array!93810)

(declare-fun arrayCountValidKeys!0 (array!93810 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379431 (= lt!607559 (arrayCountValidKeys!0 lt!607554 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379431 (= lt!607552 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379431 (= lt!607554 (array!93811 (store (arr!45299 a!4094) i!1451 k0!2953) (size!45850 a!4094)))))

(declare-fun b!1379432 () Bool)

(declare-fun res!921980 () Bool)

(assert (=> b!1379432 (=> (not res!921980) (not e!781462))))

(assert (=> b!1379432 (= res!921980 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379433 () Bool)

(declare-fun e!781463 () Bool)

(assert (=> b!1379433 (= e!781463 true)))

(assert (=> b!1379433 (= (arrayCountValidKeys!0 lt!607554 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45823 0))(
  ( (Unit!45824) )
))
(declare-fun lt!607558 () Unit!45823)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93810 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45823)

(assert (=> b!1379433 (= lt!607558 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1379434 () Bool)

(assert (=> b!1379434 (= e!781461 (not e!781463))))

(declare-fun res!921979 () Bool)

(assert (=> b!1379434 (=> res!921979 e!781463)))

(declare-fun lt!607557 () (_ BitVec 32))

(declare-fun lt!607561 () (_ BitVec 32))

(assert (=> b!1379434 (= res!921979 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45850 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607561 (bvsub lt!607557 #b00000000000000000000000000000001)))))))

(declare-fun lt!607553 () (_ BitVec 32))

(assert (=> b!1379434 (= (bvadd lt!607553 lt!607559) lt!607561)))

(assert (=> b!1379434 (= lt!607561 (arrayCountValidKeys!0 lt!607554 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379434 (= lt!607553 (arrayCountValidKeys!0 lt!607554 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607556 () Unit!45823)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93810 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45823)

(assert (=> b!1379434 (= lt!607556 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607554 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607560 () (_ BitVec 32))

(assert (=> b!1379434 (= (bvadd lt!607560 lt!607552) lt!607557)))

(assert (=> b!1379434 (= lt!607557 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379434 (= lt!607560 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607555 () Unit!45823)

(assert (=> b!1379434 (= lt!607555 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117298 res!921978) b!1379429))

(assert (= (and b!1379429 res!921981) b!1379432))

(assert (= (and b!1379432 res!921980) b!1379430))

(assert (= (and b!1379430 res!921976) b!1379431))

(assert (= (and b!1379431 res!921977) b!1379434))

(assert (= (and b!1379434 (not res!921979)) b!1379433))

(declare-fun m!1264613 () Bool)

(assert (=> b!1379431 m!1264613))

(declare-fun m!1264615 () Bool)

(assert (=> b!1379431 m!1264615))

(declare-fun m!1264617 () Bool)

(assert (=> b!1379431 m!1264617))

(declare-fun m!1264619 () Bool)

(assert (=> start!117298 m!1264619))

(declare-fun m!1264621 () Bool)

(assert (=> b!1379434 m!1264621))

(declare-fun m!1264623 () Bool)

(assert (=> b!1379434 m!1264623))

(declare-fun m!1264625 () Bool)

(assert (=> b!1379434 m!1264625))

(declare-fun m!1264627 () Bool)

(assert (=> b!1379434 m!1264627))

(declare-fun m!1264629 () Bool)

(assert (=> b!1379434 m!1264629))

(declare-fun m!1264631 () Bool)

(assert (=> b!1379434 m!1264631))

(declare-fun m!1264633 () Bool)

(assert (=> b!1379429 m!1264633))

(assert (=> b!1379429 m!1264633))

(declare-fun m!1264635 () Bool)

(assert (=> b!1379429 m!1264635))

(declare-fun m!1264637 () Bool)

(assert (=> b!1379432 m!1264637))

(declare-fun m!1264639 () Bool)

(assert (=> b!1379433 m!1264639))

(declare-fun m!1264641 () Bool)

(assert (=> b!1379433 m!1264641))

(declare-fun m!1264643 () Bool)

(assert (=> b!1379433 m!1264643))

(check-sat (not b!1379434) (not b!1379429) (not b!1379432) (not b!1379431) (not start!117298) (not b!1379433))
(check-sat)
