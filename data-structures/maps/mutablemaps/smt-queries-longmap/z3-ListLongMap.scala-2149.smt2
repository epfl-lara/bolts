; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36196 () Bool)

(assert start!36196)

(declare-fun b!362583 () Bool)

(declare-fun e!222065 () Bool)

(assert (=> b!362583 (= e!222065 true)))

(declare-fun lt!167023 () (_ BitVec 32))

(declare-datatypes ((array!20474 0))(
  ( (array!20475 (arr!9716 (Array (_ BitVec 32) (_ BitVec 64))) (size!10068 (_ BitVec 32))) )
))
(declare-fun lt!167016 () array!20474)

(declare-fun a!4337 () array!20474)

(declare-fun lt!167024 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20474 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362583 (= (bvadd lt!167023 lt!167024) (arrayCountValidKeys!0 lt!167016 #b00000000000000000000000000000000 (size!10068 a!4337)))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((Unit!11157 0))(
  ( (Unit!11158) )
))
(declare-fun lt!167018 () Unit!11157)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11157)

(assert (=> b!362583 (= lt!167018 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167016 #b00000000000000000000000000000000 (size!10068 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362584 () Bool)

(declare-fun e!222064 () Bool)

(assert (=> b!362584 (= e!222064 (not e!222065))))

(declare-fun res!202026 () Bool)

(assert (=> b!362584 (=> res!202026 e!222065)))

(assert (=> b!362584 (= res!202026 (or (bvslt (size!10068 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167017 () (_ BitVec 32))

(declare-fun lt!167021 () (_ BitVec 32))

(assert (=> b!362584 (= (bvadd lt!167017 lt!167021) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10068 a!4337)))))

(declare-fun lt!167020 () Unit!11157)

(assert (=> b!362584 (= lt!167020 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10068 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362584 (= lt!167024 lt!167021)))

(assert (=> b!362584 (= lt!167021 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10068 a!4337)))))

(assert (=> b!362584 (= lt!167024 (arrayCountValidKeys!0 lt!167016 (bvadd #b00000000000000000000000000000001 i!1478) (size!10068 a!4337)))))

(declare-fun lt!167022 () Unit!11157)

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11157)

(assert (=> b!362584 (= lt!167022 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362584 (= lt!167023 (bvadd #b00000000000000000000000000000001 lt!167017))))

(assert (=> b!362584 (= lt!167023 (arrayCountValidKeys!0 lt!167016 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362584 (= lt!167017 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362584 (= lt!167016 (array!20475 (store (arr!9716 a!4337) i!1478 k0!2980) (size!10068 a!4337)))))

(declare-fun lt!167019 () Unit!11157)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11157)

(assert (=> b!362584 (= lt!167019 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun res!202030 () Bool)

(assert (=> start!36196 (=> (not res!202030) (not e!222064))))

(assert (=> start!36196 (= res!202030 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10068 a!4337))))))

(assert (=> start!36196 e!222064))

(assert (=> start!36196 true))

(declare-fun array_inv!7154 (array!20474) Bool)

(assert (=> start!36196 (array_inv!7154 a!4337)))

(declare-fun b!362585 () Bool)

(declare-fun res!202027 () Bool)

(assert (=> b!362585 (=> (not res!202027) (not e!222064))))

(assert (=> b!362585 (= res!202027 (bvslt (size!10068 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362586 () Bool)

(declare-fun res!202029 () Bool)

(assert (=> b!362586 (=> (not res!202029) (not e!222064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362586 (= res!202029 (validKeyInArray!0 k0!2980))))

(declare-fun b!362587 () Bool)

(declare-fun res!202028 () Bool)

(assert (=> b!362587 (=> (not res!202028) (not e!222064))))

(assert (=> b!362587 (= res!202028 (not (validKeyInArray!0 (select (arr!9716 a!4337) i!1478))))))

(assert (= (and start!36196 res!202030) b!362587))

(assert (= (and b!362587 res!202028) b!362586))

(assert (= (and b!362586 res!202029) b!362585))

(assert (= (and b!362585 res!202027) b!362584))

(assert (= (and b!362584 (not res!202026)) b!362583))

(declare-fun m!359329 () Bool)

(assert (=> b!362586 m!359329))

(declare-fun m!359331 () Bool)

(assert (=> start!36196 m!359331))

(declare-fun m!359333 () Bool)

(assert (=> b!362584 m!359333))

(declare-fun m!359335 () Bool)

(assert (=> b!362584 m!359335))

(declare-fun m!359337 () Bool)

(assert (=> b!362584 m!359337))

(declare-fun m!359339 () Bool)

(assert (=> b!362584 m!359339))

(declare-fun m!359341 () Bool)

(assert (=> b!362584 m!359341))

(declare-fun m!359343 () Bool)

(assert (=> b!362584 m!359343))

(declare-fun m!359345 () Bool)

(assert (=> b!362584 m!359345))

(declare-fun m!359347 () Bool)

(assert (=> b!362584 m!359347))

(declare-fun m!359349 () Bool)

(assert (=> b!362584 m!359349))

(declare-fun m!359351 () Bool)

(assert (=> b!362583 m!359351))

(declare-fun m!359353 () Bool)

(assert (=> b!362583 m!359353))

(declare-fun m!359355 () Bool)

(assert (=> b!362587 m!359355))

(assert (=> b!362587 m!359355))

(declare-fun m!359357 () Bool)

(assert (=> b!362587 m!359357))

(check-sat (not b!362583) (not start!36196) (not b!362587) (not b!362586) (not b!362584))
