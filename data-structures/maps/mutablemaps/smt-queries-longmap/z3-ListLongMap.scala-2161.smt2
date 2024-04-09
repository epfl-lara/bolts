; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36310 () Bool)

(assert start!36310)

(declare-fun b!363190 () Bool)

(declare-fun e!222395 () Bool)

(assert (=> b!363190 (= e!222395 (not true))))

(declare-fun lt!167454 () (_ BitVec 32))

(declare-fun lt!167453 () (_ BitVec 32))

(declare-datatypes ((array!20552 0))(
  ( (array!20553 (arr!9752 (Array (_ BitVec 32) (_ BitVec 64))) (size!10104 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20552)

(declare-fun arrayCountValidKeys!0 (array!20552 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363190 (= (bvadd lt!167454 lt!167453) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10104 a!4337)))))

(declare-datatypes ((Unit!11217 0))(
  ( (Unit!11218) )
))
(declare-fun lt!167457 () Unit!11217)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11217)

(assert (=> b!363190 (= lt!167457 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10104 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167458 () (_ BitVec 32))

(assert (=> b!363190 (= lt!167458 lt!167453)))

(assert (=> b!363190 (= lt!167453 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10104 a!4337)))))

(declare-fun lt!167456 () array!20552)

(assert (=> b!363190 (= lt!167458 (arrayCountValidKeys!0 lt!167456 (bvadd #b00000000000000000000000000000001 i!1478) (size!10104 a!4337)))))

(declare-fun lt!167459 () Unit!11217)

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20552 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11217)

(assert (=> b!363190 (= lt!167459 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363190 (= (arrayCountValidKeys!0 lt!167456 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167454))))

(assert (=> b!363190 (= lt!167454 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363190 (= lt!167456 (array!20553 (store (arr!9752 a!4337) i!1478 k0!2980) (size!10104 a!4337)))))

(declare-fun lt!167455 () Unit!11217)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20552 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11217)

(assert (=> b!363190 (= lt!167455 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!363189 () Bool)

(declare-fun res!202499 () Bool)

(assert (=> b!363189 (=> (not res!202499) (not e!222395))))

(assert (=> b!363189 (= res!202499 (bvslt (size!10104 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202501 () Bool)

(assert (=> start!36310 (=> (not res!202501) (not e!222395))))

(assert (=> start!36310 (= res!202501 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10104 a!4337))))))

(assert (=> start!36310 e!222395))

(assert (=> start!36310 true))

(declare-fun array_inv!7190 (array!20552) Bool)

(assert (=> start!36310 (array_inv!7190 a!4337)))

(declare-fun b!363187 () Bool)

(declare-fun res!202500 () Bool)

(assert (=> b!363187 (=> (not res!202500) (not e!222395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363187 (= res!202500 (not (validKeyInArray!0 (select (arr!9752 a!4337) i!1478))))))

(declare-fun b!363188 () Bool)

(declare-fun res!202498 () Bool)

(assert (=> b!363188 (=> (not res!202498) (not e!222395))))

(assert (=> b!363188 (= res!202498 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36310 res!202501) b!363187))

(assert (= (and b!363187 res!202500) b!363188))

(assert (= (and b!363188 res!202498) b!363189))

(assert (= (and b!363189 res!202499) b!363190))

(declare-fun m!360195 () Bool)

(assert (=> b!363190 m!360195))

(declare-fun m!360197 () Bool)

(assert (=> b!363190 m!360197))

(declare-fun m!360199 () Bool)

(assert (=> b!363190 m!360199))

(declare-fun m!360201 () Bool)

(assert (=> b!363190 m!360201))

(declare-fun m!360203 () Bool)

(assert (=> b!363190 m!360203))

(declare-fun m!360205 () Bool)

(assert (=> b!363190 m!360205))

(declare-fun m!360207 () Bool)

(assert (=> b!363190 m!360207))

(declare-fun m!360209 () Bool)

(assert (=> b!363190 m!360209))

(declare-fun m!360211 () Bool)

(assert (=> b!363190 m!360211))

(declare-fun m!360213 () Bool)

(assert (=> start!36310 m!360213))

(declare-fun m!360215 () Bool)

(assert (=> b!363187 m!360215))

(assert (=> b!363187 m!360215))

(declare-fun m!360217 () Bool)

(assert (=> b!363187 m!360217))

(declare-fun m!360219 () Bool)

(assert (=> b!363188 m!360219))

(check-sat (not b!363187) (not start!36310) (not b!363190) (not b!363188))
