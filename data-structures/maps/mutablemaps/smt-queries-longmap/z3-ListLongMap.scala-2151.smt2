; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36208 () Bool)

(assert start!36208)

(declare-fun b!362673 () Bool)

(declare-fun e!222117 () Bool)

(declare-fun e!222118 () Bool)

(assert (=> b!362673 (= e!222117 (not e!222118))))

(declare-fun res!202120 () Bool)

(assert (=> b!362673 (=> res!202120 e!222118)))

(declare-datatypes ((array!20486 0))(
  ( (array!20487 (arr!9722 (Array (_ BitVec 32) (_ BitVec 64))) (size!10074 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20486)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362673 (= res!202120 (or (bvslt (size!10074 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167180 () (_ BitVec 32))

(declare-fun lt!167183 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20486 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362673 (= (bvadd lt!167180 lt!167183) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10074 a!4337)))))

(declare-datatypes ((Unit!11169 0))(
  ( (Unit!11170) )
))
(declare-fun lt!167185 () Unit!11169)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11169)

(assert (=> b!362673 (= lt!167185 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10074 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167186 () (_ BitVec 32))

(assert (=> b!362673 (= lt!167186 lt!167183)))

(assert (=> b!362673 (= lt!167183 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10074 a!4337)))))

(declare-fun lt!167181 () array!20486)

(assert (=> b!362673 (= lt!167186 (arrayCountValidKeys!0 lt!167181 (bvadd #b00000000000000000000000000000001 i!1478) (size!10074 a!4337)))))

(declare-fun lt!167184 () Unit!11169)

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11169)

(assert (=> b!362673 (= lt!167184 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167182 () (_ BitVec 32))

(assert (=> b!362673 (= lt!167182 (bvadd #b00000000000000000000000000000001 lt!167180))))

(assert (=> b!362673 (= lt!167182 (arrayCountValidKeys!0 lt!167181 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362673 (= lt!167180 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362673 (= lt!167181 (array!20487 (store (arr!9722 a!4337) i!1478 k0!2980) (size!10074 a!4337)))))

(declare-fun lt!167178 () Unit!11169)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11169)

(assert (=> b!362673 (= lt!167178 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun res!202118 () Bool)

(assert (=> start!36208 (=> (not res!202118) (not e!222117))))

(assert (=> start!36208 (= res!202118 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10074 a!4337))))))

(assert (=> start!36208 e!222117))

(assert (=> start!36208 true))

(declare-fun array_inv!7160 (array!20486) Bool)

(assert (=> start!36208 (array_inv!7160 a!4337)))

(declare-fun b!362674 () Bool)

(declare-fun res!202119 () Bool)

(assert (=> b!362674 (=> (not res!202119) (not e!222117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362674 (= res!202119 (not (validKeyInArray!0 (select (arr!9722 a!4337) i!1478))))))

(declare-fun b!362675 () Bool)

(declare-fun res!202116 () Bool)

(assert (=> b!362675 (=> (not res!202116) (not e!222117))))

(assert (=> b!362675 (= res!202116 (bvslt (size!10074 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362676 () Bool)

(assert (=> b!362676 (= e!222118 true)))

(assert (=> b!362676 (= (bvadd lt!167182 lt!167186) (arrayCountValidKeys!0 lt!167181 #b00000000000000000000000000000000 (size!10074 a!4337)))))

(declare-fun lt!167179 () Unit!11169)

(assert (=> b!362676 (= lt!167179 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167181 #b00000000000000000000000000000000 (size!10074 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362677 () Bool)

(declare-fun res!202117 () Bool)

(assert (=> b!362677 (=> (not res!202117) (not e!222117))))

(assert (=> b!362677 (= res!202117 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36208 res!202118) b!362674))

(assert (= (and b!362674 res!202119) b!362677))

(assert (= (and b!362677 res!202117) b!362675))

(assert (= (and b!362675 res!202116) b!362673))

(assert (= (and b!362673 (not res!202120)) b!362676))

(declare-fun m!359509 () Bool)

(assert (=> b!362674 m!359509))

(assert (=> b!362674 m!359509))

(declare-fun m!359511 () Bool)

(assert (=> b!362674 m!359511))

(declare-fun m!359513 () Bool)

(assert (=> b!362673 m!359513))

(declare-fun m!359515 () Bool)

(assert (=> b!362673 m!359515))

(declare-fun m!359517 () Bool)

(assert (=> b!362673 m!359517))

(declare-fun m!359519 () Bool)

(assert (=> b!362673 m!359519))

(declare-fun m!359521 () Bool)

(assert (=> b!362673 m!359521))

(declare-fun m!359523 () Bool)

(assert (=> b!362673 m!359523))

(declare-fun m!359525 () Bool)

(assert (=> b!362673 m!359525))

(declare-fun m!359527 () Bool)

(assert (=> b!362673 m!359527))

(declare-fun m!359529 () Bool)

(assert (=> b!362673 m!359529))

(declare-fun m!359531 () Bool)

(assert (=> start!36208 m!359531))

(declare-fun m!359533 () Bool)

(assert (=> b!362677 m!359533))

(declare-fun m!359535 () Bool)

(assert (=> b!362676 m!359535))

(declare-fun m!359537 () Bool)

(assert (=> b!362676 m!359537))

(check-sat (not b!362673) (not b!362677) (not b!362676) (not start!36208) (not b!362674))
