; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117166 () Bool)

(assert start!117166)

(declare-fun b!1378505 () Bool)

(declare-fun e!780955 () Bool)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378505 (= e!780955 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((array!93699 0))(
  ( (array!93700 (arr!45245 (Array (_ BitVec 32) (_ BitVec 64))) (size!45796 (_ BitVec 32))) )
))
(declare-fun lt!606774 () array!93699)

(declare-fun a!4094 () array!93699)

(declare-fun arrayCountValidKeys!0 (array!93699 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378505 (= (arrayCountValidKeys!0 lt!606774 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-datatypes ((Unit!45751 0))(
  ( (Unit!45752) )
))
(declare-fun lt!606778 () Unit!45751)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45751)

(assert (=> b!1378505 (= lt!606778 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378506 () Bool)

(declare-fun res!921149 () Bool)

(declare-fun e!780953 () Bool)

(assert (=> b!1378506 (=> (not res!921149) (not e!780953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378506 (= res!921149 (validKeyInArray!0 (select (arr!45245 a!4094) i!1451)))))

(declare-fun b!1378507 () Bool)

(declare-fun res!921153 () Bool)

(assert (=> b!1378507 (=> (not res!921153) (not e!780953))))

(assert (=> b!1378507 (= res!921153 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378508 () Bool)

(declare-fun res!921150 () Bool)

(assert (=> b!1378508 (=> (not res!921150) (not e!780953))))

(assert (=> b!1378508 (= res!921150 (and (bvslt (size!45796 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45796 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378509 () Bool)

(declare-fun e!780954 () Bool)

(assert (=> b!1378509 (= e!780954 (not e!780955))))

(declare-fun res!921148 () Bool)

(assert (=> b!1378509 (=> res!921148 e!780955)))

(declare-fun lt!606769 () (_ BitVec 32))

(declare-fun lt!606777 () (_ BitVec 32))

(assert (=> b!1378509 (= res!921148 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45796 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606769 (bvsub lt!606777 #b00000000000000000000000000000001)))))))

(declare-fun lt!606771 () (_ BitVec 32))

(declare-fun lt!606776 () (_ BitVec 32))

(assert (=> b!1378509 (= (bvadd lt!606771 lt!606776) lt!606769)))

(assert (=> b!1378509 (= lt!606769 (arrayCountValidKeys!0 lt!606774 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378509 (= lt!606771 (arrayCountValidKeys!0 lt!606774 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606772 () Unit!45751)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45751)

(assert (=> b!1378509 (= lt!606772 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606774 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606775 () (_ BitVec 32))

(declare-fun lt!606770 () (_ BitVec 32))

(assert (=> b!1378509 (= (bvadd lt!606775 lt!606770) lt!606777)))

(assert (=> b!1378509 (= lt!606777 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378509 (= lt!606775 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606773 () Unit!45751)

(assert (=> b!1378509 (= lt!606773 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921151 () Bool)

(assert (=> start!117166 (=> (not res!921151) (not e!780953))))

(assert (=> start!117166 (= res!921151 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45796 a!4094))))))

(assert (=> start!117166 e!780953))

(assert (=> start!117166 true))

(declare-fun array_inv!34190 (array!93699) Bool)

(assert (=> start!117166 (array_inv!34190 a!4094)))

(declare-fun b!1378510 () Bool)

(assert (=> b!1378510 (= e!780953 e!780954)))

(declare-fun res!921152 () Bool)

(assert (=> b!1378510 (=> (not res!921152) (not e!780954))))

(assert (=> b!1378510 (= res!921152 (and (= lt!606776 (bvsub lt!606770 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378510 (= lt!606776 (arrayCountValidKeys!0 lt!606774 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378510 (= lt!606770 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378510 (= lt!606774 (array!93700 (store (arr!45245 a!4094) i!1451 k0!2953) (size!45796 a!4094)))))

(assert (= (and start!117166 res!921151) b!1378506))

(assert (= (and b!1378506 res!921149) b!1378507))

(assert (= (and b!1378507 res!921153) b!1378508))

(assert (= (and b!1378508 res!921150) b!1378510))

(assert (= (and b!1378510 res!921152) b!1378509))

(assert (= (and b!1378509 (not res!921148)) b!1378505))

(declare-fun m!1263311 () Bool)

(assert (=> b!1378510 m!1263311))

(declare-fun m!1263313 () Bool)

(assert (=> b!1378510 m!1263313))

(declare-fun m!1263315 () Bool)

(assert (=> b!1378510 m!1263315))

(declare-fun m!1263317 () Bool)

(assert (=> b!1378507 m!1263317))

(declare-fun m!1263319 () Bool)

(assert (=> b!1378505 m!1263319))

(declare-fun m!1263321 () Bool)

(assert (=> b!1378505 m!1263321))

(declare-fun m!1263323 () Bool)

(assert (=> b!1378505 m!1263323))

(declare-fun m!1263325 () Bool)

(assert (=> b!1378506 m!1263325))

(assert (=> b!1378506 m!1263325))

(declare-fun m!1263327 () Bool)

(assert (=> b!1378506 m!1263327))

(declare-fun m!1263329 () Bool)

(assert (=> b!1378509 m!1263329))

(declare-fun m!1263331 () Bool)

(assert (=> b!1378509 m!1263331))

(declare-fun m!1263333 () Bool)

(assert (=> b!1378509 m!1263333))

(declare-fun m!1263335 () Bool)

(assert (=> b!1378509 m!1263335))

(declare-fun m!1263337 () Bool)

(assert (=> b!1378509 m!1263337))

(declare-fun m!1263339 () Bool)

(assert (=> b!1378509 m!1263339))

(declare-fun m!1263341 () Bool)

(assert (=> start!117166 m!1263341))

(check-sat (not b!1378510) (not b!1378509) (not b!1378506) (not b!1378505) (not b!1378507) (not start!117166))
(check-sat)
