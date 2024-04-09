; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36214 () Bool)

(assert start!36214)

(declare-fun b!362718 () Bool)

(declare-fun res!202165 () Bool)

(declare-fun e!222146 () Bool)

(assert (=> b!362718 (=> (not res!202165) (not e!222146))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362718 (= res!202165 (validKeyInArray!0 k0!2980))))

(declare-fun b!362719 () Bool)

(declare-fun e!222145 () Bool)

(assert (=> b!362719 (= e!222146 (not e!222145))))

(declare-fun res!202161 () Bool)

(assert (=> b!362719 (=> res!202161 e!222145)))

(declare-datatypes ((array!20492 0))(
  ( (array!20493 (arr!9725 (Array (_ BitVec 32) (_ BitVec 64))) (size!10077 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20492)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362719 (= res!202161 (or (bvslt (size!10077 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167267 () (_ BitVec 32))

(declare-fun lt!167261 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20492 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362719 (= (bvadd lt!167267 lt!167261) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10077 a!4337)))))

(declare-datatypes ((Unit!11175 0))(
  ( (Unit!11176) )
))
(declare-fun lt!167264 () Unit!11175)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11175)

(assert (=> b!362719 (= lt!167264 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10077 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167263 () (_ BitVec 32))

(assert (=> b!362719 (= lt!167263 lt!167261)))

(assert (=> b!362719 (= lt!167261 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10077 a!4337)))))

(declare-fun lt!167266 () array!20492)

(assert (=> b!362719 (= lt!167263 (arrayCountValidKeys!0 lt!167266 (bvadd #b00000000000000000000000000000001 i!1478) (size!10077 a!4337)))))

(declare-fun lt!167260 () Unit!11175)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20492 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11175)

(assert (=> b!362719 (= lt!167260 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167262 () (_ BitVec 32))

(assert (=> b!362719 (= lt!167262 (bvadd #b00000000000000000000000000000001 lt!167267))))

(assert (=> b!362719 (= lt!167262 (arrayCountValidKeys!0 lt!167266 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362719 (= lt!167267 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362719 (= lt!167266 (array!20493 (store (arr!9725 a!4337) i!1478 k0!2980) (size!10077 a!4337)))))

(declare-fun lt!167265 () Unit!11175)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20492 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11175)

(assert (=> b!362719 (= lt!167265 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun res!202164 () Bool)

(assert (=> start!36214 (=> (not res!202164) (not e!222146))))

(assert (=> start!36214 (= res!202164 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10077 a!4337))))))

(assert (=> start!36214 e!222146))

(assert (=> start!36214 true))

(declare-fun array_inv!7163 (array!20492) Bool)

(assert (=> start!36214 (array_inv!7163 a!4337)))

(declare-fun b!362720 () Bool)

(declare-fun res!202162 () Bool)

(assert (=> b!362720 (=> (not res!202162) (not e!222146))))

(assert (=> b!362720 (= res!202162 (not (validKeyInArray!0 (select (arr!9725 a!4337) i!1478))))))

(declare-fun b!362721 () Bool)

(declare-fun res!202163 () Bool)

(assert (=> b!362721 (=> (not res!202163) (not e!222146))))

(assert (=> b!362721 (= res!202163 (bvslt (size!10077 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362722 () Bool)

(assert (=> b!362722 (= e!222145 true)))

(assert (=> b!362722 (= (bvadd lt!167262 lt!167263) (arrayCountValidKeys!0 lt!167266 #b00000000000000000000000000000000 (size!10077 a!4337)))))

(declare-fun lt!167259 () Unit!11175)

(assert (=> b!362722 (= lt!167259 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167266 #b00000000000000000000000000000000 (size!10077 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36214 res!202164) b!362720))

(assert (= (and b!362720 res!202162) b!362718))

(assert (= (and b!362718 res!202165) b!362721))

(assert (= (and b!362721 res!202163) b!362719))

(assert (= (and b!362719 (not res!202161)) b!362722))

(declare-fun m!359599 () Bool)

(assert (=> start!36214 m!359599))

(declare-fun m!359601 () Bool)

(assert (=> b!362720 m!359601))

(assert (=> b!362720 m!359601))

(declare-fun m!359603 () Bool)

(assert (=> b!362720 m!359603))

(declare-fun m!359605 () Bool)

(assert (=> b!362718 m!359605))

(declare-fun m!359607 () Bool)

(assert (=> b!362722 m!359607))

(declare-fun m!359609 () Bool)

(assert (=> b!362722 m!359609))

(declare-fun m!359611 () Bool)

(assert (=> b!362719 m!359611))

(declare-fun m!359613 () Bool)

(assert (=> b!362719 m!359613))

(declare-fun m!359615 () Bool)

(assert (=> b!362719 m!359615))

(declare-fun m!359617 () Bool)

(assert (=> b!362719 m!359617))

(declare-fun m!359619 () Bool)

(assert (=> b!362719 m!359619))

(declare-fun m!359621 () Bool)

(assert (=> b!362719 m!359621))

(declare-fun m!359623 () Bool)

(assert (=> b!362719 m!359623))

(declare-fun m!359625 () Bool)

(assert (=> b!362719 m!359625))

(declare-fun m!359627 () Bool)

(assert (=> b!362719 m!359627))

(check-sat (not b!362720) (not b!362722) (not start!36214) (not b!362718) (not b!362719))
