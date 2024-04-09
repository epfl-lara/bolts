; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117294 () Bool)

(assert start!117294)

(declare-fun b!1379393 () Bool)

(declare-fun e!781438 () Bool)

(declare-fun e!781436 () Bool)

(assert (=> b!1379393 (= e!781438 (not e!781436))))

(declare-fun res!921942 () Bool)

(assert (=> b!1379393 (=> res!921942 e!781436)))

(declare-fun lt!607494 () (_ BitVec 32))

(declare-datatypes ((array!93806 0))(
  ( (array!93807 (arr!45297 (Array (_ BitVec 32) (_ BitVec 64))) (size!45848 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93806)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun lt!607495 () (_ BitVec 32))

(assert (=> b!1379393 (= res!921942 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45848 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607495 (bvsub lt!607494 #b00000000000000000000000000000001)))))))

(declare-fun lt!607500 () (_ BitVec 32))

(declare-fun lt!607501 () (_ BitVec 32))

(assert (=> b!1379393 (= (bvadd lt!607500 lt!607501) lt!607495)))

(declare-fun lt!607496 () array!93806)

(declare-fun arrayCountValidKeys!0 (array!93806 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379393 (= lt!607495 (arrayCountValidKeys!0 lt!607496 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379393 (= lt!607500 (arrayCountValidKeys!0 lt!607496 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45819 0))(
  ( (Unit!45820) )
))
(declare-fun lt!607493 () Unit!45819)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93806 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45819)

(assert (=> b!1379393 (= lt!607493 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607496 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607498 () (_ BitVec 32))

(declare-fun lt!607499 () (_ BitVec 32))

(assert (=> b!1379393 (= (bvadd lt!607498 lt!607499) lt!607494)))

(assert (=> b!1379393 (= lt!607494 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379393 (= lt!607498 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607492 () Unit!45819)

(assert (=> b!1379393 (= lt!607492 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379394 () Bool)

(declare-fun res!921941 () Bool)

(declare-fun e!781439 () Bool)

(assert (=> b!1379394 (=> (not res!921941) (not e!781439))))

(assert (=> b!1379394 (= res!921941 (and (bvslt (size!45848 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45848 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379395 () Bool)

(assert (=> b!1379395 (= e!781436 true)))

(assert (=> b!1379395 (= (arrayCountValidKeys!0 lt!607496 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!607497 () Unit!45819)

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93806 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45819)

(assert (=> b!1379395 (= lt!607497 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1379396 () Bool)

(declare-fun res!921945 () Bool)

(assert (=> b!1379396 (=> (not res!921945) (not e!781439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379396 (= res!921945 (validKeyInArray!0 (select (arr!45297 a!4094) i!1451)))))

(declare-fun res!921940 () Bool)

(assert (=> start!117294 (=> (not res!921940) (not e!781439))))

(assert (=> start!117294 (= res!921940 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45848 a!4094))))))

(assert (=> start!117294 e!781439))

(assert (=> start!117294 true))

(declare-fun array_inv!34242 (array!93806) Bool)

(assert (=> start!117294 (array_inv!34242 a!4094)))

(declare-fun b!1379397 () Bool)

(assert (=> b!1379397 (= e!781439 e!781438)))

(declare-fun res!921944 () Bool)

(assert (=> b!1379397 (=> (not res!921944) (not e!781438))))

(assert (=> b!1379397 (= res!921944 (and (= lt!607501 (bvsub lt!607499 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379397 (= lt!607501 (arrayCountValidKeys!0 lt!607496 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379397 (= lt!607499 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379397 (= lt!607496 (array!93807 (store (arr!45297 a!4094) i!1451 k!2953) (size!45848 a!4094)))))

(declare-fun b!1379398 () Bool)

(declare-fun res!921943 () Bool)

(assert (=> b!1379398 (=> (not res!921943) (not e!781439))))

(assert (=> b!1379398 (= res!921943 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117294 res!921940) b!1379396))

(assert (= (and b!1379396 res!921945) b!1379398))

(assert (= (and b!1379398 res!921943) b!1379394))

(assert (= (and b!1379394 res!921941) b!1379397))

(assert (= (and b!1379397 res!921944) b!1379393))

(assert (= (and b!1379393 (not res!921942)) b!1379395))

(declare-fun m!1264549 () Bool)

(assert (=> b!1379396 m!1264549))

(assert (=> b!1379396 m!1264549))

(declare-fun m!1264551 () Bool)

(assert (=> b!1379396 m!1264551))

(declare-fun m!1264553 () Bool)

(assert (=> b!1379393 m!1264553))

(declare-fun m!1264555 () Bool)

(assert (=> b!1379393 m!1264555))

(declare-fun m!1264557 () Bool)

(assert (=> b!1379393 m!1264557))

(declare-fun m!1264559 () Bool)

(assert (=> b!1379393 m!1264559))

(declare-fun m!1264561 () Bool)

(assert (=> b!1379393 m!1264561))

(declare-fun m!1264563 () Bool)

(assert (=> b!1379393 m!1264563))

(declare-fun m!1264565 () Bool)

(assert (=> b!1379397 m!1264565))

(declare-fun m!1264567 () Bool)

(assert (=> b!1379397 m!1264567))

(declare-fun m!1264569 () Bool)

(assert (=> b!1379397 m!1264569))

(declare-fun m!1264571 () Bool)

(assert (=> start!117294 m!1264571))

(declare-fun m!1264573 () Bool)

(assert (=> b!1379398 m!1264573))

(declare-fun m!1264575 () Bool)

(assert (=> b!1379395 m!1264575))

(declare-fun m!1264577 () Bool)

(assert (=> b!1379395 m!1264577))

(declare-fun m!1264579 () Bool)

(assert (=> b!1379395 m!1264579))

(push 1)

(assert (not b!1379398))

(assert (not b!1379393))

(assert (not start!117294))

(assert (not b!1379395))

(assert (not b!1379397))

(assert (not b!1379396))

(check-sat)

(pop 1)

(push 1)

