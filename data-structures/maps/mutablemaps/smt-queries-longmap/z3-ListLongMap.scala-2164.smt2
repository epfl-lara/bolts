; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36328 () Bool)

(assert start!36328)

(declare-fun res!202621 () Bool)

(declare-fun e!222463 () Bool)

(assert (=> start!36328 (=> (not res!202621) (not e!222463))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20570 0))(
  ( (array!20571 (arr!9761 (Array (_ BitVec 32) (_ BitVec 64))) (size!10113 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20570)

(assert (=> start!36328 (= res!202621 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10113 a!4337))))))

(assert (=> start!36328 e!222463))

(assert (=> start!36328 true))

(declare-fun array_inv!7199 (array!20570) Bool)

(assert (=> start!36328 (array_inv!7199 a!4337)))

(declare-fun b!363309 () Bool)

(declare-fun res!202624 () Bool)

(assert (=> b!363309 (=> (not res!202624) (not e!222463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363309 (= res!202624 (not (validKeyInArray!0 (select (arr!9761 a!4337) i!1478))))))

(declare-fun b!363310 () Bool)

(declare-fun e!222464 () Bool)

(assert (=> b!363310 (= e!222463 (not e!222464))))

(declare-fun res!202622 () Bool)

(assert (=> b!363310 (=> res!202622 e!222464)))

(assert (=> b!363310 (= res!202622 (or (bvslt (size!10113 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167687 () (_ BitVec 32))

(declare-fun lt!167684 () (_ BitVec 32))

(declare-fun lt!167686 () (_ BitVec 32))

(assert (=> b!363310 (= (bvadd lt!167687 lt!167684) lt!167686)))

(declare-fun arrayCountValidKeys!0 (array!20570 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363310 (= lt!167686 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10113 a!4337)))))

(declare-datatypes ((Unit!11235 0))(
  ( (Unit!11236) )
))
(declare-fun lt!167690 () Unit!11235)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11235)

(assert (=> b!363310 (= lt!167690 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10113 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167685 () (_ BitVec 32))

(assert (=> b!363310 (= lt!167685 lt!167684)))

(assert (=> b!363310 (= lt!167684 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10113 a!4337)))))

(declare-fun lt!167682 () array!20570)

(assert (=> b!363310 (= lt!167685 (arrayCountValidKeys!0 lt!167682 (bvadd #b00000000000000000000000000000001 i!1478) (size!10113 a!4337)))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lt!167683 () Unit!11235)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20570 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11235)

(assert (=> b!363310 (= lt!167683 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167688 () (_ BitVec 32))

(assert (=> b!363310 (= lt!167688 (bvadd #b00000000000000000000000000000001 lt!167687))))

(assert (=> b!363310 (= lt!167688 (arrayCountValidKeys!0 lt!167682 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363310 (= lt!167687 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363310 (= lt!167682 (array!20571 (store (arr!9761 a!4337) i!1478 k0!2980) (size!10113 a!4337)))))

(declare-fun lt!167689 () Unit!11235)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20570 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11235)

(assert (=> b!363310 (= lt!167689 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!363311 () Bool)

(declare-fun lt!167680 () (_ BitVec 32))

(assert (=> b!363311 (= e!222464 (= lt!167680 (bvadd #b00000000000000000000000000000001 lt!167686)))))

(assert (=> b!363311 (= (bvadd lt!167688 lt!167685) lt!167680)))

(assert (=> b!363311 (= lt!167680 (arrayCountValidKeys!0 lt!167682 #b00000000000000000000000000000000 (size!10113 a!4337)))))

(declare-fun lt!167681 () Unit!11235)

(assert (=> b!363311 (= lt!167681 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167682 #b00000000000000000000000000000000 (size!10113 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363312 () Bool)

(declare-fun res!202620 () Bool)

(assert (=> b!363312 (=> (not res!202620) (not e!222463))))

(assert (=> b!363312 (= res!202620 (validKeyInArray!0 k0!2980))))

(declare-fun b!363313 () Bool)

(declare-fun res!202623 () Bool)

(assert (=> b!363313 (=> (not res!202623) (not e!222463))))

(assert (=> b!363313 (= res!202623 (bvslt (size!10113 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36328 res!202621) b!363309))

(assert (= (and b!363309 res!202624) b!363312))

(assert (= (and b!363312 res!202620) b!363313))

(assert (= (and b!363313 res!202623) b!363310))

(assert (= (and b!363310 (not res!202622)) b!363311))

(declare-fun m!360445 () Bool)

(assert (=> start!36328 m!360445))

(declare-fun m!360447 () Bool)

(assert (=> b!363312 m!360447))

(declare-fun m!360449 () Bool)

(assert (=> b!363310 m!360449))

(declare-fun m!360451 () Bool)

(assert (=> b!363310 m!360451))

(declare-fun m!360453 () Bool)

(assert (=> b!363310 m!360453))

(declare-fun m!360455 () Bool)

(assert (=> b!363310 m!360455))

(declare-fun m!360457 () Bool)

(assert (=> b!363310 m!360457))

(declare-fun m!360459 () Bool)

(assert (=> b!363310 m!360459))

(declare-fun m!360461 () Bool)

(assert (=> b!363310 m!360461))

(declare-fun m!360463 () Bool)

(assert (=> b!363310 m!360463))

(declare-fun m!360465 () Bool)

(assert (=> b!363310 m!360465))

(declare-fun m!360467 () Bool)

(assert (=> b!363311 m!360467))

(declare-fun m!360469 () Bool)

(assert (=> b!363311 m!360469))

(declare-fun m!360471 () Bool)

(assert (=> b!363309 m!360471))

(assert (=> b!363309 m!360471))

(declare-fun m!360473 () Bool)

(assert (=> b!363309 m!360473))

(check-sat (not b!363311) (not b!363312) (not start!36328) (not b!363310) (not b!363309))
