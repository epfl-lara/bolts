; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36210 () Bool)

(assert start!36210)

(declare-fun b!362688 () Bool)

(declare-fun e!222126 () Bool)

(declare-fun e!222127 () Bool)

(assert (=> b!362688 (= e!222126 (not e!222127))))

(declare-fun res!202131 () Bool)

(assert (=> b!362688 (=> res!202131 e!222127)))

(declare-datatypes ((array!20488 0))(
  ( (array!20489 (arr!9723 (Array (_ BitVec 32) (_ BitVec 64))) (size!10075 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20488)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362688 (= res!202131 (or (bvslt (size!10075 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167207 () (_ BitVec 32))

(declare-fun lt!167206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20488 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362688 (= (bvadd lt!167207 lt!167206) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10075 a!4337)))))

(declare-datatypes ((Unit!11171 0))(
  ( (Unit!11172) )
))
(declare-fun lt!167212 () Unit!11171)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11171)

(assert (=> b!362688 (= lt!167212 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10075 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167211 () (_ BitVec 32))

(assert (=> b!362688 (= lt!167211 lt!167206)))

(assert (=> b!362688 (= lt!167206 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10075 a!4337)))))

(declare-fun lt!167210 () array!20488)

(assert (=> b!362688 (= lt!167211 (arrayCountValidKeys!0 lt!167210 (bvadd #b00000000000000000000000000000001 i!1478) (size!10075 a!4337)))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lt!167209 () Unit!11171)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20488 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11171)

(assert (=> b!362688 (= lt!167209 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167205 () (_ BitVec 32))

(assert (=> b!362688 (= lt!167205 (bvadd #b00000000000000000000000000000001 lt!167207))))

(assert (=> b!362688 (= lt!167205 (arrayCountValidKeys!0 lt!167210 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362688 (= lt!167207 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362688 (= lt!167210 (array!20489 (store (arr!9723 a!4337) i!1478 k!2980) (size!10075 a!4337)))))

(declare-fun lt!167208 () Unit!11171)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20488 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11171)

(assert (=> b!362688 (= lt!167208 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202135 () Bool)

(assert (=> start!36210 (=> (not res!202135) (not e!222126))))

(assert (=> start!36210 (= res!202135 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10075 a!4337))))))

(assert (=> start!36210 e!222126))

(assert (=> start!36210 true))

(declare-fun array_inv!7161 (array!20488) Bool)

(assert (=> start!36210 (array_inv!7161 a!4337)))

(declare-fun b!362689 () Bool)

(assert (=> b!362689 (= e!222127 true)))

(assert (=> b!362689 (= (bvadd lt!167205 lt!167211) (arrayCountValidKeys!0 lt!167210 #b00000000000000000000000000000000 (size!10075 a!4337)))))

(declare-fun lt!167213 () Unit!11171)

(assert (=> b!362689 (= lt!167213 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167210 #b00000000000000000000000000000000 (size!10075 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362690 () Bool)

(declare-fun res!202134 () Bool)

(assert (=> b!362690 (=> (not res!202134) (not e!222126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362690 (= res!202134 (not (validKeyInArray!0 (select (arr!9723 a!4337) i!1478))))))

(declare-fun b!362691 () Bool)

(declare-fun res!202133 () Bool)

(assert (=> b!362691 (=> (not res!202133) (not e!222126))))

(assert (=> b!362691 (= res!202133 (bvslt (size!10075 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362692 () Bool)

(declare-fun res!202132 () Bool)

(assert (=> b!362692 (=> (not res!202132) (not e!222126))))

(assert (=> b!362692 (= res!202132 (validKeyInArray!0 k!2980))))

(assert (= (and start!36210 res!202135) b!362690))

(assert (= (and b!362690 res!202134) b!362692))

(assert (= (and b!362692 res!202132) b!362691))

(assert (= (and b!362691 res!202133) b!362688))

(assert (= (and b!362688 (not res!202131)) b!362689))

(declare-fun m!359539 () Bool)

(assert (=> b!362689 m!359539))

(declare-fun m!359541 () Bool)

(assert (=> b!362689 m!359541))

(declare-fun m!359543 () Bool)

(assert (=> b!362692 m!359543))

(declare-fun m!359545 () Bool)

(assert (=> b!362690 m!359545))

(assert (=> b!362690 m!359545))

(declare-fun m!359547 () Bool)

(assert (=> b!362690 m!359547))

(declare-fun m!359549 () Bool)

(assert (=> b!362688 m!359549))

(declare-fun m!359551 () Bool)

(assert (=> b!362688 m!359551))

(declare-fun m!359553 () Bool)

(assert (=> b!362688 m!359553))

(declare-fun m!359555 () Bool)

(assert (=> b!362688 m!359555))

(declare-fun m!359557 () Bool)

(assert (=> b!362688 m!359557))

(declare-fun m!359559 () Bool)

(assert (=> b!362688 m!359559))

(declare-fun m!359561 () Bool)

(assert (=> b!362688 m!359561))

(declare-fun m!359563 () Bool)

(assert (=> b!362688 m!359563))

(declare-fun m!359565 () Bool)

(assert (=> b!362688 m!359565))

(declare-fun m!359567 () Bool)

(assert (=> start!36210 m!359567))

(push 1)

(assert (not start!36210))

(assert (not b!362688))

(assert (not b!362692))

(assert (not b!362689))

(assert (not b!362690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

