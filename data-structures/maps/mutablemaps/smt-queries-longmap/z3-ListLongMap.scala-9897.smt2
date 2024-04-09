; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117172 () Bool)

(assert start!117172)

(declare-fun res!921207 () Bool)

(declare-fun e!780991 () Bool)

(assert (=> start!117172 (=> (not res!921207) (not e!780991))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93705 0))(
  ( (array!93706 (arr!45248 (Array (_ BitVec 32) (_ BitVec 64))) (size!45799 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93705)

(assert (=> start!117172 (= res!921207 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45799 a!4094))))))

(assert (=> start!117172 e!780991))

(assert (=> start!117172 true))

(declare-fun array_inv!34193 (array!93705) Bool)

(assert (=> start!117172 (array_inv!34193 a!4094)))

(declare-fun b!1378559 () Bool)

(declare-fun res!921206 () Bool)

(assert (=> b!1378559 (=> (not res!921206) (not e!780991))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378559 (= res!921206 (and (bvslt (size!45799 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45799 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378560 () Bool)

(declare-fun e!780990 () Bool)

(declare-fun e!780989 () Bool)

(assert (=> b!1378560 (= e!780990 (not e!780989))))

(declare-fun res!921202 () Bool)

(assert (=> b!1378560 (=> res!921202 e!780989)))

(declare-fun lt!606860 () (_ BitVec 32))

(declare-fun lt!606868 () (_ BitVec 32))

(assert (=> b!1378560 (= res!921202 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45799 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606860 (bvsub lt!606868 #b00000000000000000000000000000001)))))))

(declare-fun lt!606867 () (_ BitVec 32))

(declare-fun lt!606864 () (_ BitVec 32))

(assert (=> b!1378560 (= (bvadd lt!606867 lt!606864) lt!606860)))

(declare-fun lt!606863 () array!93705)

(declare-fun arrayCountValidKeys!0 (array!93705 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378560 (= lt!606860 (arrayCountValidKeys!0 lt!606863 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378560 (= lt!606867 (arrayCountValidKeys!0 lt!606863 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45757 0))(
  ( (Unit!45758) )
))
(declare-fun lt!606859 () Unit!45757)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45757)

(assert (=> b!1378560 (= lt!606859 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606863 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606861 () (_ BitVec 32))

(declare-fun lt!606862 () (_ BitVec 32))

(assert (=> b!1378560 (= (bvadd lt!606861 lt!606862) lt!606868)))

(assert (=> b!1378560 (= lt!606868 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378560 (= lt!606861 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606865 () Unit!45757)

(assert (=> b!1378560 (= lt!606865 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378561 () Bool)

(declare-fun res!921204 () Bool)

(assert (=> b!1378561 (=> (not res!921204) (not e!780991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378561 (= res!921204 (validKeyInArray!0 (select (arr!45248 a!4094) i!1451)))))

(declare-fun b!1378562 () Bool)

(assert (=> b!1378562 (= e!780989 true)))

(assert (=> b!1378562 (= (arrayCountValidKeys!0 lt!606863 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun lt!606866 () Unit!45757)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93705 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45757)

(assert (=> b!1378562 (= lt!606866 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378563 () Bool)

(assert (=> b!1378563 (= e!780991 e!780990)))

(declare-fun res!921205 () Bool)

(assert (=> b!1378563 (=> (not res!921205) (not e!780990))))

(assert (=> b!1378563 (= res!921205 (and (= lt!606864 (bvsub lt!606862 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378563 (= lt!606864 (arrayCountValidKeys!0 lt!606863 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378563 (= lt!606862 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378563 (= lt!606863 (array!93706 (store (arr!45248 a!4094) i!1451 k0!2953) (size!45799 a!4094)))))

(declare-fun b!1378564 () Bool)

(declare-fun res!921203 () Bool)

(assert (=> b!1378564 (=> (not res!921203) (not e!780991))))

(assert (=> b!1378564 (= res!921203 (not (validKeyInArray!0 k0!2953)))))

(assert (= (and start!117172 res!921207) b!1378561))

(assert (= (and b!1378561 res!921204) b!1378564))

(assert (= (and b!1378564 res!921203) b!1378559))

(assert (= (and b!1378559 res!921206) b!1378563))

(assert (= (and b!1378563 res!921205) b!1378560))

(assert (= (and b!1378560 (not res!921202)) b!1378562))

(declare-fun m!1263407 () Bool)

(assert (=> b!1378562 m!1263407))

(declare-fun m!1263409 () Bool)

(assert (=> b!1378562 m!1263409))

(declare-fun m!1263411 () Bool)

(assert (=> b!1378562 m!1263411))

(declare-fun m!1263413 () Bool)

(assert (=> b!1378563 m!1263413))

(declare-fun m!1263415 () Bool)

(assert (=> b!1378563 m!1263415))

(declare-fun m!1263417 () Bool)

(assert (=> b!1378563 m!1263417))

(declare-fun m!1263419 () Bool)

(assert (=> b!1378560 m!1263419))

(declare-fun m!1263421 () Bool)

(assert (=> b!1378560 m!1263421))

(declare-fun m!1263423 () Bool)

(assert (=> b!1378560 m!1263423))

(declare-fun m!1263425 () Bool)

(assert (=> b!1378560 m!1263425))

(declare-fun m!1263427 () Bool)

(assert (=> b!1378560 m!1263427))

(declare-fun m!1263429 () Bool)

(assert (=> b!1378560 m!1263429))

(declare-fun m!1263431 () Bool)

(assert (=> b!1378561 m!1263431))

(assert (=> b!1378561 m!1263431))

(declare-fun m!1263433 () Bool)

(assert (=> b!1378561 m!1263433))

(declare-fun m!1263435 () Bool)

(assert (=> start!117172 m!1263435))

(declare-fun m!1263437 () Bool)

(assert (=> b!1378564 m!1263437))

(check-sat (not b!1378563) (not b!1378560) (not start!117172) (not b!1378561) (not b!1378562) (not b!1378564))
