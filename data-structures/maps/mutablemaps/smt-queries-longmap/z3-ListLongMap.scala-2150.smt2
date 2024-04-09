; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36202 () Bool)

(assert start!36202)

(declare-fun b!362628 () Bool)

(declare-fun res!202075 () Bool)

(declare-fun e!222091 () Bool)

(assert (=> b!362628 (=> (not res!202075) (not e!222091))))

(declare-datatypes ((array!20480 0))(
  ( (array!20481 (arr!9719 (Array (_ BitVec 32) (_ BitVec 64))) (size!10071 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20480)

(assert (=> b!362628 (= res!202075 (bvslt (size!10071 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362630 () Bool)

(declare-fun e!222090 () Bool)

(assert (=> b!362630 (= e!222090 true)))

(declare-fun lt!167101 () array!20480)

(declare-fun lt!167099 () (_ BitVec 32))

(declare-fun lt!167105 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20480 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362630 (= (bvadd lt!167099 lt!167105) (arrayCountValidKeys!0 lt!167101 #b00000000000000000000000000000000 (size!10071 a!4337)))))

(declare-datatypes ((Unit!11163 0))(
  ( (Unit!11164) )
))
(declare-fun lt!167098 () Unit!11163)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11163)

(assert (=> b!362630 (= lt!167098 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167101 #b00000000000000000000000000000000 (size!10071 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362631 () Bool)

(declare-fun res!202071 () Bool)

(assert (=> b!362631 (=> (not res!202071) (not e!222091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362631 (= res!202071 (not (validKeyInArray!0 (select (arr!9719 a!4337) i!1478))))))

(declare-fun b!362632 () Bool)

(assert (=> b!362632 (= e!222091 (not e!222090))))

(declare-fun res!202074 () Bool)

(assert (=> b!362632 (=> res!202074 e!222090)))

(assert (=> b!362632 (= res!202074 (or (bvslt (size!10071 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167103 () (_ BitVec 32))

(declare-fun lt!167100 () (_ BitVec 32))

(assert (=> b!362632 (= (bvadd lt!167103 lt!167100) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10071 a!4337)))))

(declare-fun lt!167104 () Unit!11163)

(assert (=> b!362632 (= lt!167104 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10071 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362632 (= lt!167105 lt!167100)))

(assert (=> b!362632 (= lt!167100 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10071 a!4337)))))

(assert (=> b!362632 (= lt!167105 (arrayCountValidKeys!0 lt!167101 (bvadd #b00000000000000000000000000000001 i!1478) (size!10071 a!4337)))))

(declare-fun lt!167097 () Unit!11163)

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11163)

(assert (=> b!362632 (= lt!167097 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362632 (= lt!167099 (bvadd #b00000000000000000000000000000001 lt!167103))))

(assert (=> b!362632 (= lt!167099 (arrayCountValidKeys!0 lt!167101 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362632 (= lt!167103 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362632 (= lt!167101 (array!20481 (store (arr!9719 a!4337) i!1478 k0!2980) (size!10071 a!4337)))))

(declare-fun lt!167102 () Unit!11163)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11163)

(assert (=> b!362632 (= lt!167102 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362629 () Bool)

(declare-fun res!202073 () Bool)

(assert (=> b!362629 (=> (not res!202073) (not e!222091))))

(assert (=> b!362629 (= res!202073 (validKeyInArray!0 k0!2980))))

(declare-fun res!202072 () Bool)

(assert (=> start!36202 (=> (not res!202072) (not e!222091))))

(assert (=> start!36202 (= res!202072 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10071 a!4337))))))

(assert (=> start!36202 e!222091))

(assert (=> start!36202 true))

(declare-fun array_inv!7157 (array!20480) Bool)

(assert (=> start!36202 (array_inv!7157 a!4337)))

(assert (= (and start!36202 res!202072) b!362631))

(assert (= (and b!362631 res!202071) b!362629))

(assert (= (and b!362629 res!202073) b!362628))

(assert (= (and b!362628 res!202075) b!362632))

(assert (= (and b!362632 (not res!202074)) b!362630))

(declare-fun m!359419 () Bool)

(assert (=> b!362632 m!359419))

(declare-fun m!359421 () Bool)

(assert (=> b!362632 m!359421))

(declare-fun m!359423 () Bool)

(assert (=> b!362632 m!359423))

(declare-fun m!359425 () Bool)

(assert (=> b!362632 m!359425))

(declare-fun m!359427 () Bool)

(assert (=> b!362632 m!359427))

(declare-fun m!359429 () Bool)

(assert (=> b!362632 m!359429))

(declare-fun m!359431 () Bool)

(assert (=> b!362632 m!359431))

(declare-fun m!359433 () Bool)

(assert (=> b!362632 m!359433))

(declare-fun m!359435 () Bool)

(assert (=> b!362632 m!359435))

(declare-fun m!359437 () Bool)

(assert (=> b!362631 m!359437))

(assert (=> b!362631 m!359437))

(declare-fun m!359439 () Bool)

(assert (=> b!362631 m!359439))

(declare-fun m!359441 () Bool)

(assert (=> start!36202 m!359441))

(declare-fun m!359443 () Bool)

(assert (=> b!362629 m!359443))

(declare-fun m!359445 () Bool)

(assert (=> b!362630 m!359445))

(declare-fun m!359447 () Bool)

(assert (=> b!362630 m!359447))

(check-sat (not b!362631) (not b!362629) (not b!362630) (not start!36202) (not b!362632))
