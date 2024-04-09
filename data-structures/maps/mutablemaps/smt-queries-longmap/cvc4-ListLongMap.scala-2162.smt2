; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36318 () Bool)

(assert start!36318)

(declare-fun b!363235 () Bool)

(declare-fun res!202546 () Bool)

(declare-fun e!222419 () Bool)

(assert (=> b!363235 (=> (not res!202546) (not e!222419))))

(declare-datatypes ((array!20560 0))(
  ( (array!20561 (arr!9756 (Array (_ BitVec 32) (_ BitVec 64))) (size!10108 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20560)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363235 (= res!202546 (not (validKeyInArray!0 (select (arr!9756 a!4337) i!1478))))))

(declare-fun b!363238 () Bool)

(assert (=> b!363238 (= e!222419 (not (and (bvsge (size!10108 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167542 () (_ BitVec 32))

(declare-fun lt!167540 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20560 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363238 (= (bvadd lt!167542 lt!167540) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10108 a!4337)))))

(declare-datatypes ((Unit!11225 0))(
  ( (Unit!11226) )
))
(declare-fun lt!167541 () Unit!11225)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11225)

(assert (=> b!363238 (= lt!167541 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10108 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167539 () (_ BitVec 32))

(assert (=> b!363238 (= lt!167539 lt!167540)))

(assert (=> b!363238 (= lt!167540 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10108 a!4337)))))

(declare-fun lt!167543 () array!20560)

(assert (=> b!363238 (= lt!167539 (arrayCountValidKeys!0 lt!167543 (bvadd #b00000000000000000000000000000001 i!1478) (size!10108 a!4337)))))

(declare-fun lt!167537 () Unit!11225)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20560 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11225)

(assert (=> b!363238 (= lt!167537 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363238 (= (arrayCountValidKeys!0 lt!167543 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167542))))

(assert (=> b!363238 (= lt!167542 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363238 (= lt!167543 (array!20561 (store (arr!9756 a!4337) i!1478 k!2980) (size!10108 a!4337)))))

(declare-fun lt!167538 () Unit!11225)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20560 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11225)

(assert (=> b!363238 (= lt!167538 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202547 () Bool)

(assert (=> start!36318 (=> (not res!202547) (not e!222419))))

(assert (=> start!36318 (= res!202547 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10108 a!4337))))))

(assert (=> start!36318 e!222419))

(assert (=> start!36318 true))

(declare-fun array_inv!7194 (array!20560) Bool)

(assert (=> start!36318 (array_inv!7194 a!4337)))

(declare-fun b!363236 () Bool)

(declare-fun res!202549 () Bool)

(assert (=> b!363236 (=> (not res!202549) (not e!222419))))

(assert (=> b!363236 (= res!202549 (validKeyInArray!0 k!2980))))

(declare-fun b!363237 () Bool)

(declare-fun res!202548 () Bool)

(assert (=> b!363237 (=> (not res!202548) (not e!222419))))

(assert (=> b!363237 (= res!202548 (bvslt (size!10108 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36318 res!202547) b!363235))

(assert (= (and b!363235 res!202546) b!363236))

(assert (= (and b!363236 res!202549) b!363237))

(assert (= (and b!363237 res!202548) b!363238))

(declare-fun m!360299 () Bool)

(assert (=> b!363235 m!360299))

(assert (=> b!363235 m!360299))

(declare-fun m!360301 () Bool)

(assert (=> b!363235 m!360301))

(declare-fun m!360303 () Bool)

(assert (=> b!363238 m!360303))

(declare-fun m!360305 () Bool)

(assert (=> b!363238 m!360305))

(declare-fun m!360307 () Bool)

(assert (=> b!363238 m!360307))

(declare-fun m!360309 () Bool)

(assert (=> b!363238 m!360309))

(declare-fun m!360311 () Bool)

(assert (=> b!363238 m!360311))

(declare-fun m!360313 () Bool)

(assert (=> b!363238 m!360313))

(declare-fun m!360315 () Bool)

(assert (=> b!363238 m!360315))

(declare-fun m!360317 () Bool)

(assert (=> b!363238 m!360317))

(declare-fun m!360319 () Bool)

(assert (=> b!363238 m!360319))

(declare-fun m!360321 () Bool)

(assert (=> start!36318 m!360321))

(declare-fun m!360323 () Bool)

(assert (=> b!363236 m!360323))

(push 1)

