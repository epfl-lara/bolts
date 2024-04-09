; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117170 () Bool)

(assert start!117170)

(declare-fun b!1378541 () Bool)

(declare-fun res!921187 () Bool)

(declare-fun e!780978 () Bool)

(assert (=> b!1378541 (=> (not res!921187) (not e!780978))))

(declare-datatypes ((array!93703 0))(
  ( (array!93704 (arr!45247 (Array (_ BitVec 32) (_ BitVec 64))) (size!45798 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93703)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378541 (= res!921187 (and (bvslt (size!45798 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45798 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378543 () Bool)

(declare-fun e!780977 () Bool)

(assert (=> b!1378543 (= e!780977 true)))

(declare-fun lt!606833 () array!93703)

(declare-fun arrayCountValidKeys!0 (array!93703 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378543 (= (arrayCountValidKeys!0 lt!606833 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45755 0))(
  ( (Unit!45756) )
))
(declare-fun lt!606830 () Unit!45755)

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93703 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45755)

(assert (=> b!1378543 (= lt!606830 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378544 () Bool)

(declare-fun res!921186 () Bool)

(assert (=> b!1378544 (=> (not res!921186) (not e!780978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378544 (= res!921186 (validKeyInArray!0 (select (arr!45247 a!4094) i!1451)))))

(declare-fun b!1378545 () Bool)

(declare-fun e!780980 () Bool)

(assert (=> b!1378545 (= e!780978 e!780980)))

(declare-fun res!921189 () Bool)

(assert (=> b!1378545 (=> (not res!921189) (not e!780980))))

(declare-fun lt!606838 () (_ BitVec 32))

(declare-fun lt!606837 () (_ BitVec 32))

(assert (=> b!1378545 (= res!921189 (and (= lt!606838 (bvsub lt!606837 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378545 (= lt!606838 (arrayCountValidKeys!0 lt!606833 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378545 (= lt!606837 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378545 (= lt!606833 (array!93704 (store (arr!45247 a!4094) i!1451 k!2953) (size!45798 a!4094)))))

(declare-fun b!1378546 () Bool)

(declare-fun res!921185 () Bool)

(assert (=> b!1378546 (=> (not res!921185) (not e!780978))))

(assert (=> b!1378546 (= res!921185 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921184 () Bool)

(assert (=> start!117170 (=> (not res!921184) (not e!780978))))

(assert (=> start!117170 (= res!921184 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45798 a!4094))))))

(assert (=> start!117170 e!780978))

(assert (=> start!117170 true))

(declare-fun array_inv!34192 (array!93703) Bool)

(assert (=> start!117170 (array_inv!34192 a!4094)))

(declare-fun b!1378542 () Bool)

(assert (=> b!1378542 (= e!780980 (not e!780977))))

(declare-fun res!921188 () Bool)

(assert (=> b!1378542 (=> res!921188 e!780977)))

(declare-fun lt!606832 () (_ BitVec 32))

(declare-fun lt!606835 () (_ BitVec 32))

(assert (=> b!1378542 (= res!921188 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45798 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606835 (bvsub lt!606832 #b00000000000000000000000000000001)))))))

(declare-fun lt!606834 () (_ BitVec 32))

(assert (=> b!1378542 (= (bvadd lt!606834 lt!606838) lt!606835)))

(assert (=> b!1378542 (= lt!606835 (arrayCountValidKeys!0 lt!606833 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378542 (= lt!606834 (arrayCountValidKeys!0 lt!606833 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606831 () Unit!45755)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45755)

(assert (=> b!1378542 (= lt!606831 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606833 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606829 () (_ BitVec 32))

(assert (=> b!1378542 (= (bvadd lt!606829 lt!606837) lt!606832)))

(assert (=> b!1378542 (= lt!606832 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378542 (= lt!606829 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606836 () Unit!45755)

(assert (=> b!1378542 (= lt!606836 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117170 res!921184) b!1378544))

(assert (= (and b!1378544 res!921186) b!1378546))

(assert (= (and b!1378546 res!921185) b!1378541))

(assert (= (and b!1378541 res!921187) b!1378545))

(assert (= (and b!1378545 res!921189) b!1378542))

(assert (= (and b!1378542 (not res!921188)) b!1378543))

(declare-fun m!1263375 () Bool)

(assert (=> b!1378543 m!1263375))

(declare-fun m!1263377 () Bool)

(assert (=> b!1378543 m!1263377))

(declare-fun m!1263379 () Bool)

(assert (=> b!1378543 m!1263379))

(declare-fun m!1263381 () Bool)

(assert (=> b!1378542 m!1263381))

(declare-fun m!1263383 () Bool)

(assert (=> b!1378542 m!1263383))

(declare-fun m!1263385 () Bool)

(assert (=> b!1378542 m!1263385))

(declare-fun m!1263387 () Bool)

(assert (=> b!1378542 m!1263387))

(declare-fun m!1263389 () Bool)

(assert (=> b!1378542 m!1263389))

(declare-fun m!1263391 () Bool)

(assert (=> b!1378542 m!1263391))

(declare-fun m!1263393 () Bool)

(assert (=> start!117170 m!1263393))

(declare-fun m!1263395 () Bool)

(assert (=> b!1378545 m!1263395))

(declare-fun m!1263397 () Bool)

(assert (=> b!1378545 m!1263397))

(declare-fun m!1263399 () Bool)

(assert (=> b!1378545 m!1263399))

(declare-fun m!1263401 () Bool)

(assert (=> b!1378546 m!1263401))

(declare-fun m!1263403 () Bool)

(assert (=> b!1378544 m!1263403))

(assert (=> b!1378544 m!1263403))

(declare-fun m!1263405 () Bool)

(assert (=> b!1378544 m!1263405))

(push 1)

(assert (not b!1378544))

(assert (not b!1378545))

(assert (not b!1378543))

(assert (not start!117170))

(assert (not b!1378546))

