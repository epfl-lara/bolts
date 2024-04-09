; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117154 () Bool)

(assert start!117154)

(declare-fun res!921043 () Bool)

(declare-fun e!780884 () Bool)

(assert (=> start!117154 (=> (not res!921043) (not e!780884))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93687 0))(
  ( (array!93688 (arr!45239 (Array (_ BitVec 32) (_ BitVec 64))) (size!45790 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93687)

(assert (=> start!117154 (= res!921043 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45790 a!4094))))))

(assert (=> start!117154 e!780884))

(assert (=> start!117154 true))

(declare-fun array_inv!34184 (array!93687) Bool)

(assert (=> start!117154 (array_inv!34184 a!4094)))

(declare-fun b!1378397 () Bool)

(declare-fun e!780881 () Bool)

(assert (=> b!1378397 (= e!780884 e!780881)))

(declare-fun res!921045 () Bool)

(assert (=> b!1378397 (=> (not res!921045) (not e!780881))))

(declare-fun lt!606592 () (_ BitVec 32))

(declare-fun lt!606595 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378397 (= res!921045 (and (= lt!606592 (bvsub lt!606595 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606594 () array!93687)

(declare-fun arrayCountValidKeys!0 (array!93687 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378397 (= lt!606592 (arrayCountValidKeys!0 lt!606594 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378397 (= lt!606595 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378397 (= lt!606594 (array!93688 (store (arr!45239 a!4094) i!1451 k0!2953) (size!45790 a!4094)))))

(declare-fun b!1378398 () Bool)

(declare-fun res!921040 () Bool)

(assert (=> b!1378398 (=> (not res!921040) (not e!780884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378398 (= res!921040 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378399 () Bool)

(declare-fun e!780883 () Bool)

(assert (=> b!1378399 (= e!780881 (not e!780883))))

(declare-fun res!921042 () Bool)

(assert (=> b!1378399 (=> res!921042 e!780883)))

(declare-fun lt!606591 () (_ BitVec 32))

(declare-fun lt!606589 () (_ BitVec 32))

(assert (=> b!1378399 (= res!921042 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45790 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606591 (bvsub lt!606589 #b00000000000000000000000000000001)))))))

(declare-fun lt!606590 () (_ BitVec 32))

(assert (=> b!1378399 (= (bvadd lt!606590 lt!606592) lt!606591)))

(assert (=> b!1378399 (= lt!606591 (arrayCountValidKeys!0 lt!606594 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378399 (= lt!606590 (arrayCountValidKeys!0 lt!606594 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45739 0))(
  ( (Unit!45740) )
))
(declare-fun lt!606593 () Unit!45739)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45739)

(assert (=> b!1378399 (= lt!606593 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606594 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606597 () (_ BitVec 32))

(assert (=> b!1378399 (= (bvadd lt!606597 lt!606595) lt!606589)))

(assert (=> b!1378399 (= lt!606589 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378399 (= lt!606597 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606596 () Unit!45739)

(assert (=> b!1378399 (= lt!606596 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378400 () Bool)

(assert (=> b!1378400 (= e!780883 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378400 (= (arrayCountValidKeys!0 lt!606594 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!606598 () Unit!45739)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93687 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45739)

(assert (=> b!1378400 (= lt!606598 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378401 () Bool)

(declare-fun res!921041 () Bool)

(assert (=> b!1378401 (=> (not res!921041) (not e!780884))))

(assert (=> b!1378401 (= res!921041 (and (bvslt (size!45790 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45790 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378402 () Bool)

(declare-fun res!921044 () Bool)

(assert (=> b!1378402 (=> (not res!921044) (not e!780884))))

(assert (=> b!1378402 (= res!921044 (validKeyInArray!0 (select (arr!45239 a!4094) i!1451)))))

(assert (= (and start!117154 res!921043) b!1378402))

(assert (= (and b!1378402 res!921044) b!1378398))

(assert (= (and b!1378398 res!921040) b!1378401))

(assert (= (and b!1378401 res!921041) b!1378397))

(assert (= (and b!1378397 res!921045) b!1378399))

(assert (= (and b!1378399 (not res!921042)) b!1378400))

(declare-fun m!1263119 () Bool)

(assert (=> b!1378397 m!1263119))

(declare-fun m!1263121 () Bool)

(assert (=> b!1378397 m!1263121))

(declare-fun m!1263123 () Bool)

(assert (=> b!1378397 m!1263123))

(declare-fun m!1263125 () Bool)

(assert (=> start!117154 m!1263125))

(declare-fun m!1263127 () Bool)

(assert (=> b!1378398 m!1263127))

(declare-fun m!1263129 () Bool)

(assert (=> b!1378399 m!1263129))

(declare-fun m!1263131 () Bool)

(assert (=> b!1378399 m!1263131))

(declare-fun m!1263133 () Bool)

(assert (=> b!1378399 m!1263133))

(declare-fun m!1263135 () Bool)

(assert (=> b!1378399 m!1263135))

(declare-fun m!1263137 () Bool)

(assert (=> b!1378399 m!1263137))

(declare-fun m!1263139 () Bool)

(assert (=> b!1378399 m!1263139))

(declare-fun m!1263141 () Bool)

(assert (=> b!1378402 m!1263141))

(assert (=> b!1378402 m!1263141))

(declare-fun m!1263143 () Bool)

(assert (=> b!1378402 m!1263143))

(declare-fun m!1263145 () Bool)

(assert (=> b!1378400 m!1263145))

(declare-fun m!1263147 () Bool)

(assert (=> b!1378400 m!1263147))

(declare-fun m!1263149 () Bool)

(assert (=> b!1378400 m!1263149))

(check-sat (not b!1378397) (not b!1378400) (not start!117154) (not b!1378399) (not b!1378402) (not b!1378398))
(check-sat)
