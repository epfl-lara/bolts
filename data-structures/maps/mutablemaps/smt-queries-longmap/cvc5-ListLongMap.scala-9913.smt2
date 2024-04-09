; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117290 () Bool)

(assert start!117290)

(declare-fun b!1379357 () Bool)

(declare-fun res!921904 () Bool)

(declare-fun e!781415 () Bool)

(assert (=> b!1379357 (=> (not res!921904) (not e!781415))))

(declare-datatypes ((array!93802 0))(
  ( (array!93803 (arr!45295 (Array (_ BitVec 32) (_ BitVec 64))) (size!45846 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93802)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379357 (= res!921904 (validKeyInArray!0 (select (arr!45295 a!4094) i!1451)))))

(declare-fun b!1379358 () Bool)

(declare-fun e!781414 () Bool)

(declare-fun e!781412 () Bool)

(assert (=> b!1379358 (= e!781414 (not e!781412))))

(declare-fun res!921906 () Bool)

(assert (=> b!1379358 (=> res!921906 e!781412)))

(declare-fun lt!607436 () (_ BitVec 32))

(declare-fun lt!607437 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379358 (= res!921906 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45846 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607436 (bvsub lt!607437 #b00000000000000000000000000000001)))))))

(declare-fun lt!607434 () (_ BitVec 32))

(declare-fun lt!607438 () (_ BitVec 32))

(assert (=> b!1379358 (= (bvadd lt!607434 lt!607438) lt!607436)))

(declare-fun lt!607440 () array!93802)

(declare-fun arrayCountValidKeys!0 (array!93802 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379358 (= lt!607436 (arrayCountValidKeys!0 lt!607440 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379358 (= lt!607434 (arrayCountValidKeys!0 lt!607440 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45815 0))(
  ( (Unit!45816) )
))
(declare-fun lt!607441 () Unit!45815)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93802 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45815)

(assert (=> b!1379358 (= lt!607441 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607440 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607432 () (_ BitVec 32))

(declare-fun lt!607435 () (_ BitVec 32))

(assert (=> b!1379358 (= (bvadd lt!607432 lt!607435) lt!607437)))

(assert (=> b!1379358 (= lt!607437 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379358 (= lt!607432 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607439 () Unit!45815)

(assert (=> b!1379358 (= lt!607439 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379359 () Bool)

(assert (=> b!1379359 (= e!781415 e!781414)))

(declare-fun res!921907 () Bool)

(assert (=> b!1379359 (=> (not res!921907) (not e!781414))))

(assert (=> b!1379359 (= res!921907 (and (= lt!607438 (bvsub lt!607435 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379359 (= lt!607438 (arrayCountValidKeys!0 lt!607440 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379359 (= lt!607435 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379359 (= lt!607440 (array!93803 (store (arr!45295 a!4094) i!1451 k!2953) (size!45846 a!4094)))))

(declare-fun b!1379360 () Bool)

(declare-fun res!921905 () Bool)

(assert (=> b!1379360 (=> (not res!921905) (not e!781415))))

(assert (=> b!1379360 (= res!921905 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379361 () Bool)

(declare-fun res!921909 () Bool)

(assert (=> b!1379361 (=> (not res!921909) (not e!781415))))

(assert (=> b!1379361 (= res!921909 (and (bvslt (size!45846 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45846 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921908 () Bool)

(assert (=> start!117290 (=> (not res!921908) (not e!781415))))

(assert (=> start!117290 (= res!921908 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45846 a!4094))))))

(assert (=> start!117290 e!781415))

(assert (=> start!117290 true))

(declare-fun array_inv!34240 (array!93802) Bool)

(assert (=> start!117290 (array_inv!34240 a!4094)))

(declare-fun b!1379362 () Bool)

(assert (=> b!1379362 (= e!781412 true)))

(assert (=> b!1379362 (= (arrayCountValidKeys!0 lt!607440 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!607433 () Unit!45815)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93802 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45815)

(assert (=> b!1379362 (= lt!607433 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(assert (= (and start!117290 res!921908) b!1379357))

(assert (= (and b!1379357 res!921904) b!1379360))

(assert (= (and b!1379360 res!921905) b!1379361))

(assert (= (and b!1379361 res!921909) b!1379359))

(assert (= (and b!1379359 res!921907) b!1379358))

(assert (= (and b!1379358 (not res!921906)) b!1379362))

(declare-fun m!1264485 () Bool)

(assert (=> b!1379362 m!1264485))

(declare-fun m!1264487 () Bool)

(assert (=> b!1379362 m!1264487))

(declare-fun m!1264489 () Bool)

(assert (=> b!1379362 m!1264489))

(declare-fun m!1264491 () Bool)

(assert (=> b!1379360 m!1264491))

(declare-fun m!1264493 () Bool)

(assert (=> b!1379357 m!1264493))

(assert (=> b!1379357 m!1264493))

(declare-fun m!1264495 () Bool)

(assert (=> b!1379357 m!1264495))

(declare-fun m!1264497 () Bool)

(assert (=> b!1379359 m!1264497))

(declare-fun m!1264499 () Bool)

(assert (=> b!1379359 m!1264499))

(declare-fun m!1264501 () Bool)

(assert (=> b!1379359 m!1264501))

(declare-fun m!1264503 () Bool)

(assert (=> b!1379358 m!1264503))

(declare-fun m!1264505 () Bool)

(assert (=> b!1379358 m!1264505))

(declare-fun m!1264507 () Bool)

(assert (=> b!1379358 m!1264507))

(declare-fun m!1264509 () Bool)

(assert (=> b!1379358 m!1264509))

(declare-fun m!1264511 () Bool)

(assert (=> b!1379358 m!1264511))

(declare-fun m!1264513 () Bool)

(assert (=> b!1379358 m!1264513))

(declare-fun m!1264515 () Bool)

(assert (=> start!117290 m!1264515))

(push 1)

(assert (not b!1379360))

(assert (not b!1379359))

(assert (not b!1379358))

(assert (not start!117290))

(assert (not b!1379357))

(assert (not b!1379362))

(check-sat)

