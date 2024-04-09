; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36330 () Bool)

(assert start!36330)

(declare-fun b!363324 () Bool)

(declare-fun res!202638 () Bool)

(declare-fun e!222471 () Bool)

(assert (=> b!363324 (=> (not res!202638) (not e!222471))))

(declare-datatypes ((array!20572 0))(
  ( (array!20573 (arr!9762 (Array (_ BitVec 32) (_ BitVec 64))) (size!10114 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20572)

(assert (=> b!363324 (= res!202638 (bvslt (size!10114 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363325 () Bool)

(declare-fun res!202636 () Bool)

(assert (=> b!363325 (=> (not res!202636) (not e!222471))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363325 (= res!202636 (validKeyInArray!0 k!2980))))

(declare-fun res!202639 () Bool)

(assert (=> start!36330 (=> (not res!202639) (not e!222471))))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> start!36330 (= res!202639 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10114 a!4337))))))

(assert (=> start!36330 e!222471))

(assert (=> start!36330 true))

(declare-fun array_inv!7200 (array!20572) Bool)

(assert (=> start!36330 (array_inv!7200 a!4337)))

(declare-fun b!363326 () Bool)

(declare-fun e!222473 () Bool)

(declare-fun lt!167713 () (_ BitVec 32))

(declare-fun lt!167720 () (_ BitVec 32))

(assert (=> b!363326 (= e!222473 (= lt!167713 (bvadd #b00000000000000000000000000000001 lt!167720)))))

(declare-fun lt!167718 () (_ BitVec 32))

(declare-fun lt!167723 () (_ BitVec 32))

(assert (=> b!363326 (= (bvadd lt!167718 lt!167723) lt!167713)))

(declare-fun lt!167717 () array!20572)

(declare-fun arrayCountValidKeys!0 (array!20572 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363326 (= lt!167713 (arrayCountValidKeys!0 lt!167717 #b00000000000000000000000000000000 (size!10114 a!4337)))))

(declare-datatypes ((Unit!11237 0))(
  ( (Unit!11238) )
))
(declare-fun lt!167716 () Unit!11237)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11237)

(assert (=> b!363326 (= lt!167716 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167717 #b00000000000000000000000000000000 (size!10114 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363327 () Bool)

(assert (=> b!363327 (= e!222471 (not e!222473))))

(declare-fun res!202635 () Bool)

(assert (=> b!363327 (=> res!202635 e!222473)))

(assert (=> b!363327 (= res!202635 (or (bvslt (size!10114 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167722 () (_ BitVec 32))

(declare-fun lt!167721 () (_ BitVec 32))

(assert (=> b!363327 (= (bvadd lt!167722 lt!167721) lt!167720)))

(assert (=> b!363327 (= lt!167720 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10114 a!4337)))))

(declare-fun lt!167719 () Unit!11237)

(assert (=> b!363327 (= lt!167719 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10114 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363327 (= lt!167723 lt!167721)))

(assert (=> b!363327 (= lt!167721 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10114 a!4337)))))

(assert (=> b!363327 (= lt!167723 (arrayCountValidKeys!0 lt!167717 (bvadd #b00000000000000000000000000000001 i!1478) (size!10114 a!4337)))))

(declare-fun lt!167714 () Unit!11237)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20572 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11237)

(assert (=> b!363327 (= lt!167714 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363327 (= lt!167718 (bvadd #b00000000000000000000000000000001 lt!167722))))

(assert (=> b!363327 (= lt!167718 (arrayCountValidKeys!0 lt!167717 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363327 (= lt!167722 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363327 (= lt!167717 (array!20573 (store (arr!9762 a!4337) i!1478 k!2980) (size!10114 a!4337)))))

(declare-fun lt!167715 () Unit!11237)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20572 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11237)

(assert (=> b!363327 (= lt!167715 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363328 () Bool)

(declare-fun res!202637 () Bool)

(assert (=> b!363328 (=> (not res!202637) (not e!222471))))

(assert (=> b!363328 (= res!202637 (not (validKeyInArray!0 (select (arr!9762 a!4337) i!1478))))))

(assert (= (and start!36330 res!202639) b!363328))

(assert (= (and b!363328 res!202637) b!363325))

(assert (= (and b!363325 res!202636) b!363324))

(assert (= (and b!363324 res!202638) b!363327))

(assert (= (and b!363327 (not res!202635)) b!363326))

(declare-fun m!360475 () Bool)

(assert (=> b!363325 m!360475))

(declare-fun m!360477 () Bool)

(assert (=> start!36330 m!360477))

(declare-fun m!360479 () Bool)

(assert (=> b!363326 m!360479))

(declare-fun m!360481 () Bool)

(assert (=> b!363326 m!360481))

(declare-fun m!360483 () Bool)

(assert (=> b!363327 m!360483))

(declare-fun m!360485 () Bool)

(assert (=> b!363327 m!360485))

(declare-fun m!360487 () Bool)

(assert (=> b!363327 m!360487))

(declare-fun m!360489 () Bool)

(assert (=> b!363327 m!360489))

(declare-fun m!360491 () Bool)

(assert (=> b!363327 m!360491))

(declare-fun m!360493 () Bool)

(assert (=> b!363327 m!360493))

(declare-fun m!360495 () Bool)

(assert (=> b!363327 m!360495))

(declare-fun m!360497 () Bool)

(assert (=> b!363327 m!360497))

(declare-fun m!360499 () Bool)

(assert (=> b!363327 m!360499))

(declare-fun m!360501 () Bool)

(assert (=> b!363328 m!360501))

(assert (=> b!363328 m!360501))

(declare-fun m!360503 () Bool)

(assert (=> b!363328 m!360503))

(push 1)

(assert (not b!363326))

(assert (not b!363325))

(assert (not start!36330))

(assert (not b!363327))

(assert (not b!363328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

