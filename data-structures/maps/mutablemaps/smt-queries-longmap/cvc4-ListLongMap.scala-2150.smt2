; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36204 () Bool)

(assert start!36204)

(declare-fun res!202089 () Bool)

(declare-fun e!222100 () Bool)

(assert (=> start!36204 (=> (not res!202089) (not e!222100))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20482 0))(
  ( (array!20483 (arr!9720 (Array (_ BitVec 32) (_ BitVec 64))) (size!10072 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20482)

(assert (=> start!36204 (= res!202089 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10072 a!4337))))))

(assert (=> start!36204 e!222100))

(assert (=> start!36204 true))

(declare-fun array_inv!7158 (array!20482) Bool)

(assert (=> start!36204 (array_inv!7158 a!4337)))

(declare-fun b!362643 () Bool)

(declare-fun res!202090 () Bool)

(assert (=> b!362643 (=> (not res!202090) (not e!222100))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362643 (= res!202090 (validKeyInArray!0 k!2980))))

(declare-fun b!362644 () Bool)

(declare-fun res!202086 () Bool)

(assert (=> b!362644 (=> (not res!202086) (not e!222100))))

(assert (=> b!362644 (= res!202086 (bvslt (size!10072 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362645 () Bool)

(declare-fun res!202087 () Bool)

(assert (=> b!362645 (=> (not res!202087) (not e!222100))))

(assert (=> b!362645 (= res!202087 (not (validKeyInArray!0 (select (arr!9720 a!4337) i!1478))))))

(declare-fun b!362646 () Bool)

(declare-fun e!222101 () Bool)

(assert (=> b!362646 (= e!222100 (not e!222101))))

(declare-fun res!202088 () Bool)

(assert (=> b!362646 (=> res!202088 e!222101)))

(assert (=> b!362646 (= res!202088 (or (bvslt (size!10072 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167129 () (_ BitVec 32))

(declare-fun lt!167124 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20482 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362646 (= (bvadd lt!167129 lt!167124) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10072 a!4337)))))

(declare-datatypes ((Unit!11165 0))(
  ( (Unit!11166) )
))
(declare-fun lt!167131 () Unit!11165)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11165)

(assert (=> b!362646 (= lt!167131 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10072 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167127 () (_ BitVec 32))

(assert (=> b!362646 (= lt!167127 lt!167124)))

(assert (=> b!362646 (= lt!167124 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10072 a!4337)))))

(declare-fun lt!167130 () array!20482)

(assert (=> b!362646 (= lt!167127 (arrayCountValidKeys!0 lt!167130 (bvadd #b00000000000000000000000000000001 i!1478) (size!10072 a!4337)))))

(declare-fun lt!167125 () Unit!11165)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11165)

(assert (=> b!362646 (= lt!167125 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167128 () (_ BitVec 32))

(assert (=> b!362646 (= lt!167128 (bvadd #b00000000000000000000000000000001 lt!167129))))

(assert (=> b!362646 (= lt!167128 (arrayCountValidKeys!0 lt!167130 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362646 (= lt!167129 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362646 (= lt!167130 (array!20483 (store (arr!9720 a!4337) i!1478 k!2980) (size!10072 a!4337)))))

(declare-fun lt!167126 () Unit!11165)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11165)

(assert (=> b!362646 (= lt!167126 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362647 () Bool)

(assert (=> b!362647 (= e!222101 true)))

(assert (=> b!362647 (= (bvadd lt!167128 lt!167127) (arrayCountValidKeys!0 lt!167130 #b00000000000000000000000000000000 (size!10072 a!4337)))))

(declare-fun lt!167132 () Unit!11165)

(assert (=> b!362647 (= lt!167132 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167130 #b00000000000000000000000000000000 (size!10072 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36204 res!202089) b!362645))

(assert (= (and b!362645 res!202087) b!362643))

(assert (= (and b!362643 res!202090) b!362644))

(assert (= (and b!362644 res!202086) b!362646))

(assert (= (and b!362646 (not res!202088)) b!362647))

(declare-fun m!359449 () Bool)

(assert (=> b!362645 m!359449))

(assert (=> b!362645 m!359449))

(declare-fun m!359451 () Bool)

(assert (=> b!362645 m!359451))

(declare-fun m!359453 () Bool)

(assert (=> b!362643 m!359453))

(declare-fun m!359455 () Bool)

(assert (=> start!36204 m!359455))

(declare-fun m!359457 () Bool)

(assert (=> b!362646 m!359457))

(declare-fun m!359459 () Bool)

(assert (=> b!362646 m!359459))

(declare-fun m!359461 () Bool)

(assert (=> b!362646 m!359461))

(declare-fun m!359463 () Bool)

(assert (=> b!362646 m!359463))

(declare-fun m!359465 () Bool)

(assert (=> b!362646 m!359465))

(declare-fun m!359467 () Bool)

(assert (=> b!362646 m!359467))

(declare-fun m!359469 () Bool)

(assert (=> b!362646 m!359469))

(declare-fun m!359471 () Bool)

(assert (=> b!362646 m!359471))

(declare-fun m!359473 () Bool)

(assert (=> b!362646 m!359473))

(declare-fun m!359475 () Bool)

(assert (=> b!362647 m!359475))

(declare-fun m!359477 () Bool)

(assert (=> b!362647 m!359477))

(push 1)

(assert (not b!362646))

(assert (not b!362647))

(assert (not b!362643))

(assert (not b!362645))

(assert (not start!36204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

