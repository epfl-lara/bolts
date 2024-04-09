; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117158 () Bool)

(assert start!117158)

(declare-fun res!921077 () Bool)

(declare-fun e!780905 () Bool)

(assert (=> start!117158 (=> (not res!921077) (not e!780905))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93691 0))(
  ( (array!93692 (arr!45241 (Array (_ BitVec 32) (_ BitVec 64))) (size!45792 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93691)

(assert (=> start!117158 (= res!921077 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45792 a!4094))))))

(assert (=> start!117158 e!780905))

(assert (=> start!117158 true))

(declare-fun array_inv!34186 (array!93691) Bool)

(assert (=> start!117158 (array_inv!34186 a!4094)))

(declare-fun b!1378433 () Bool)

(declare-fun e!780908 () Bool)

(declare-fun e!780907 () Bool)

(assert (=> b!1378433 (= e!780908 (not e!780907))))

(declare-fun res!921076 () Bool)

(assert (=> b!1378433 (=> res!921076 e!780907)))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606655 () (_ BitVec 32))

(declare-fun lt!606658 () (_ BitVec 32))

(assert (=> b!1378433 (= res!921076 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45792 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606658 (bvsub lt!606655 #b00000000000000000000000000000001)))))))

(declare-fun lt!606652 () (_ BitVec 32))

(declare-fun lt!606653 () (_ BitVec 32))

(assert (=> b!1378433 (= (bvadd lt!606652 lt!606653) lt!606658)))

(declare-fun lt!606650 () array!93691)

(declare-fun arrayCountValidKeys!0 (array!93691 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378433 (= lt!606658 (arrayCountValidKeys!0 lt!606650 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378433 (= lt!606652 (arrayCountValidKeys!0 lt!606650 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45743 0))(
  ( (Unit!45744) )
))
(declare-fun lt!606656 () Unit!45743)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45743)

(assert (=> b!1378433 (= lt!606656 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606650 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606651 () (_ BitVec 32))

(declare-fun lt!606657 () (_ BitVec 32))

(assert (=> b!1378433 (= (bvadd lt!606651 lt!606657) lt!606655)))

(assert (=> b!1378433 (= lt!606655 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378433 (= lt!606651 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606654 () Unit!45743)

(assert (=> b!1378433 (= lt!606654 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378434 () Bool)

(declare-fun res!921079 () Bool)

(assert (=> b!1378434 (=> (not res!921079) (not e!780905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378434 (= res!921079 (validKeyInArray!0 (select (arr!45241 a!4094) i!1451)))))

(declare-fun b!1378435 () Bool)

(assert (=> b!1378435 (= e!780907 true)))

(assert (=> b!1378435 (= (arrayCountValidKeys!0 lt!606650 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lt!606649 () Unit!45743)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45743)

(assert (=> b!1378435 (= lt!606649 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378436 () Bool)

(declare-fun res!921081 () Bool)

(assert (=> b!1378436 (=> (not res!921081) (not e!780905))))

(assert (=> b!1378436 (= res!921081 (and (bvslt (size!45792 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45792 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378437 () Bool)

(assert (=> b!1378437 (= e!780905 e!780908)))

(declare-fun res!921078 () Bool)

(assert (=> b!1378437 (=> (not res!921078) (not e!780908))))

(assert (=> b!1378437 (= res!921078 (and (= lt!606653 (bvsub lt!606657 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378437 (= lt!606653 (arrayCountValidKeys!0 lt!606650 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378437 (= lt!606657 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378437 (= lt!606650 (array!93692 (store (arr!45241 a!4094) i!1451 k!2953) (size!45792 a!4094)))))

(declare-fun b!1378438 () Bool)

(declare-fun res!921080 () Bool)

(assert (=> b!1378438 (=> (not res!921080) (not e!780905))))

(assert (=> b!1378438 (= res!921080 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117158 res!921077) b!1378434))

(assert (= (and b!1378434 res!921079) b!1378438))

(assert (= (and b!1378438 res!921080) b!1378436))

(assert (= (and b!1378436 res!921081) b!1378437))

(assert (= (and b!1378437 res!921078) b!1378433))

(assert (= (and b!1378433 (not res!921076)) b!1378435))

(declare-fun m!1263183 () Bool)

(assert (=> b!1378437 m!1263183))

(declare-fun m!1263185 () Bool)

(assert (=> b!1378437 m!1263185))

(declare-fun m!1263187 () Bool)

(assert (=> b!1378437 m!1263187))

(declare-fun m!1263189 () Bool)

(assert (=> b!1378435 m!1263189))

(declare-fun m!1263191 () Bool)

(assert (=> b!1378435 m!1263191))

(declare-fun m!1263193 () Bool)

(assert (=> b!1378435 m!1263193))

(declare-fun m!1263195 () Bool)

(assert (=> b!1378434 m!1263195))

(assert (=> b!1378434 m!1263195))

(declare-fun m!1263197 () Bool)

(assert (=> b!1378434 m!1263197))

(declare-fun m!1263199 () Bool)

(assert (=> start!117158 m!1263199))

(declare-fun m!1263201 () Bool)

(assert (=> b!1378438 m!1263201))

(declare-fun m!1263203 () Bool)

(assert (=> b!1378433 m!1263203))

(declare-fun m!1263205 () Bool)

(assert (=> b!1378433 m!1263205))

(declare-fun m!1263207 () Bool)

(assert (=> b!1378433 m!1263207))

(declare-fun m!1263209 () Bool)

(assert (=> b!1378433 m!1263209))

(declare-fun m!1263211 () Bool)

(assert (=> b!1378433 m!1263211))

(declare-fun m!1263213 () Bool)

(assert (=> b!1378433 m!1263213))

(push 1)

(assert (not b!1378435))

(assert (not b!1378437))

(assert (not start!117158))

(assert (not b!1378434))

(assert (not b!1378433))

(assert (not b!1378438))

(check-sat)

