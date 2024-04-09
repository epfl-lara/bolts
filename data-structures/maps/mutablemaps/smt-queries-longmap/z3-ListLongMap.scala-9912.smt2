; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117286 () Bool)

(assert start!117286)

(declare-fun b!1379325 () Bool)

(declare-fun e!781393 () Bool)

(declare-fun e!781392 () Bool)

(assert (=> b!1379325 (= e!781393 e!781392)))

(declare-fun res!921873 () Bool)

(assert (=> b!1379325 (=> (not res!921873) (not e!781392))))

(declare-fun lt!607381 () (_ BitVec 32))

(declare-fun lt!607380 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379325 (= res!921873 (and (= lt!607380 (bvsub lt!607381 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93798 0))(
  ( (array!93799 (arr!45293 (Array (_ BitVec 32) (_ BitVec 64))) (size!45844 (_ BitVec 32))) )
))
(declare-fun lt!607377 () array!93798)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93798 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379325 (= lt!607380 (arrayCountValidKeys!0 lt!607377 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93798)

(assert (=> b!1379325 (= lt!607381 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379325 (= lt!607377 (array!93799 (store (arr!45293 a!4094) i!1451 k0!2953) (size!45844 a!4094)))))

(declare-fun b!1379326 () Bool)

(declare-fun res!921875 () Bool)

(assert (=> b!1379326 (=> (not res!921875) (not e!781393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379326 (= res!921875 (validKeyInArray!0 (select (arr!45293 a!4094) i!1451)))))

(declare-fun b!1379327 () Bool)

(declare-fun res!921874 () Bool)

(assert (=> b!1379327 (=> (not res!921874) (not e!781393))))

(assert (=> b!1379327 (= res!921874 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921876 () Bool)

(assert (=> start!117286 (=> (not res!921876) (not e!781393))))

(assert (=> start!117286 (= res!921876 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45844 a!4094))))))

(assert (=> start!117286 e!781393))

(assert (=> start!117286 true))

(declare-fun array_inv!34238 (array!93798) Bool)

(assert (=> start!117286 (array_inv!34238 a!4094)))

(declare-fun b!1379328 () Bool)

(declare-fun res!921872 () Bool)

(assert (=> b!1379328 (=> (not res!921872) (not e!781393))))

(assert (=> b!1379328 (= res!921872 (and (bvslt (size!45844 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45844 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379329 () Bool)

(declare-fun lt!607378 () (_ BitVec 32))

(declare-fun lt!607384 () (_ BitVec 32))

(assert (=> b!1379329 (= e!781392 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45844 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607384 (bvsub lt!607378 #b00000000000000000000000000000001))) (bvslt (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))))

(declare-fun lt!607382 () (_ BitVec 32))

(assert (=> b!1379329 (= (bvadd lt!607382 lt!607380) lt!607384)))

(assert (=> b!1379329 (= lt!607384 (arrayCountValidKeys!0 lt!607377 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379329 (= lt!607382 (arrayCountValidKeys!0 lt!607377 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45811 0))(
  ( (Unit!45812) )
))
(declare-fun lt!607376 () Unit!45811)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93798 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45811)

(assert (=> b!1379329 (= lt!607376 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607377 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607383 () (_ BitVec 32))

(assert (=> b!1379329 (= (bvadd lt!607383 lt!607381) lt!607378)))

(assert (=> b!1379329 (= lt!607378 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379329 (= lt!607383 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607379 () Unit!45811)

(assert (=> b!1379329 (= lt!607379 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117286 res!921876) b!1379326))

(assert (= (and b!1379326 res!921875) b!1379327))

(assert (= (and b!1379327 res!921874) b!1379328))

(assert (= (and b!1379328 res!921872) b!1379325))

(assert (= (and b!1379325 res!921873) b!1379329))

(declare-fun m!1264433 () Bool)

(assert (=> b!1379329 m!1264433))

(declare-fun m!1264435 () Bool)

(assert (=> b!1379329 m!1264435))

(declare-fun m!1264437 () Bool)

(assert (=> b!1379329 m!1264437))

(declare-fun m!1264439 () Bool)

(assert (=> b!1379329 m!1264439))

(declare-fun m!1264441 () Bool)

(assert (=> b!1379329 m!1264441))

(declare-fun m!1264443 () Bool)

(assert (=> b!1379329 m!1264443))

(declare-fun m!1264445 () Bool)

(assert (=> start!117286 m!1264445))

(declare-fun m!1264447 () Bool)

(assert (=> b!1379327 m!1264447))

(declare-fun m!1264449 () Bool)

(assert (=> b!1379325 m!1264449))

(declare-fun m!1264451 () Bool)

(assert (=> b!1379325 m!1264451))

(declare-fun m!1264453 () Bool)

(assert (=> b!1379325 m!1264453))

(declare-fun m!1264455 () Bool)

(assert (=> b!1379326 m!1264455))

(assert (=> b!1379326 m!1264455))

(declare-fun m!1264457 () Bool)

(assert (=> b!1379326 m!1264457))

(check-sat (not b!1379325) (not start!117286) (not b!1379327) (not b!1379329) (not b!1379326))
(check-sat)
