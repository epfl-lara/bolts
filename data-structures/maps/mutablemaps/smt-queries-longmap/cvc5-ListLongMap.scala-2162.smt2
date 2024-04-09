; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36314 () Bool)

(assert start!36314)

(declare-fun res!202524 () Bool)

(declare-fun e!222407 () Bool)

(assert (=> start!36314 (=> (not res!202524) (not e!222407))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20556 0))(
  ( (array!20557 (arr!9754 (Array (_ BitVec 32) (_ BitVec 64))) (size!10106 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20556)

(assert (=> start!36314 (= res!202524 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10106 a!4337))))))

(assert (=> start!36314 e!222407))

(assert (=> start!36314 true))

(declare-fun array_inv!7192 (array!20556) Bool)

(assert (=> start!36314 (array_inv!7192 a!4337)))

(declare-fun b!363214 () Bool)

(assert (=> b!363214 (= e!222407 (not (and (bvsge (size!10106 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167496 () (_ BitVec 32))

(declare-fun lt!167501 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20556 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363214 (= (bvadd lt!167496 lt!167501) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10106 a!4337)))))

(declare-datatypes ((Unit!11221 0))(
  ( (Unit!11222) )
))
(declare-fun lt!167498 () Unit!11221)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11221)

(assert (=> b!363214 (= lt!167498 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10106 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167500 () (_ BitVec 32))

(assert (=> b!363214 (= lt!167500 lt!167501)))

(assert (=> b!363214 (= lt!167501 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10106 a!4337)))))

(declare-fun lt!167495 () array!20556)

(assert (=> b!363214 (= lt!167500 (arrayCountValidKeys!0 lt!167495 (bvadd #b00000000000000000000000000000001 i!1478) (size!10106 a!4337)))))

(declare-fun lt!167497 () Unit!11221)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20556 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11221)

(assert (=> b!363214 (= lt!167497 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363214 (= (arrayCountValidKeys!0 lt!167495 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167496))))

(assert (=> b!363214 (= lt!167496 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363214 (= lt!167495 (array!20557 (store (arr!9754 a!4337) i!1478 k!2980) (size!10106 a!4337)))))

(declare-fun lt!167499 () Unit!11221)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20556 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11221)

(assert (=> b!363214 (= lt!167499 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363211 () Bool)

(declare-fun res!202523 () Bool)

(assert (=> b!363211 (=> (not res!202523) (not e!222407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363211 (= res!202523 (not (validKeyInArray!0 (select (arr!9754 a!4337) i!1478))))))

(declare-fun b!363212 () Bool)

(declare-fun res!202522 () Bool)

(assert (=> b!363212 (=> (not res!202522) (not e!222407))))

(assert (=> b!363212 (= res!202522 (validKeyInArray!0 k!2980))))

(declare-fun b!363213 () Bool)

(declare-fun res!202525 () Bool)

(assert (=> b!363213 (=> (not res!202525) (not e!222407))))

(assert (=> b!363213 (= res!202525 (bvslt (size!10106 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36314 res!202524) b!363211))

(assert (= (and b!363211 res!202523) b!363212))

(assert (= (and b!363212 res!202522) b!363213))

(assert (= (and b!363213 res!202525) b!363214))

(declare-fun m!360247 () Bool)

(assert (=> start!36314 m!360247))

(declare-fun m!360249 () Bool)

(assert (=> b!363214 m!360249))

(declare-fun m!360251 () Bool)

(assert (=> b!363214 m!360251))

(declare-fun m!360253 () Bool)

(assert (=> b!363214 m!360253))

(declare-fun m!360255 () Bool)

(assert (=> b!363214 m!360255))

(declare-fun m!360257 () Bool)

(assert (=> b!363214 m!360257))

(declare-fun m!360259 () Bool)

(assert (=> b!363214 m!360259))

(declare-fun m!360261 () Bool)

(assert (=> b!363214 m!360261))

(declare-fun m!360263 () Bool)

(assert (=> b!363214 m!360263))

(declare-fun m!360265 () Bool)

(assert (=> b!363214 m!360265))

(declare-fun m!360267 () Bool)

(assert (=> b!363211 m!360267))

(assert (=> b!363211 m!360267))

(declare-fun m!360269 () Bool)

(assert (=> b!363211 m!360269))

(declare-fun m!360271 () Bool)

(assert (=> b!363212 m!360271))

(push 1)

