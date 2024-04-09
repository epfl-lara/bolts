; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36312 () Bool)

(assert start!36312)

(declare-fun b!363199 () Bool)

(declare-fun res!202513 () Bool)

(declare-fun e!222400 () Bool)

(assert (=> b!363199 (=> (not res!202513) (not e!222400))))

(declare-datatypes ((array!20554 0))(
  ( (array!20555 (arr!9753 (Array (_ BitVec 32) (_ BitVec 64))) (size!10105 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20554)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363199 (= res!202513 (not (validKeyInArray!0 (select (arr!9753 a!4337) i!1478))))))

(declare-fun b!363200 () Bool)

(declare-fun res!202512 () Bool)

(assert (=> b!363200 (=> (not res!202512) (not e!222400))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!363200 (= res!202512 (validKeyInArray!0 k!2980))))

(declare-fun b!363201 () Bool)

(declare-fun res!202510 () Bool)

(assert (=> b!363201 (=> (not res!202510) (not e!222400))))

(assert (=> b!363201 (= res!202510 (bvslt (size!10105 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363202 () Bool)

(assert (=> b!363202 (= e!222400 (not true))))

(declare-fun lt!167475 () (_ BitVec 32))

(declare-fun lt!167479 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20554 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363202 (= (bvadd lt!167475 lt!167479) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10105 a!4337)))))

(declare-datatypes ((Unit!11219 0))(
  ( (Unit!11220) )
))
(declare-fun lt!167474 () Unit!11219)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11219)

(assert (=> b!363202 (= lt!167474 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10105 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167477 () (_ BitVec 32))

(assert (=> b!363202 (= lt!167477 lt!167479)))

(assert (=> b!363202 (= lt!167479 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10105 a!4337)))))

(declare-fun lt!167478 () array!20554)

(assert (=> b!363202 (= lt!167477 (arrayCountValidKeys!0 lt!167478 (bvadd #b00000000000000000000000000000001 i!1478) (size!10105 a!4337)))))

(declare-fun lt!167476 () Unit!11219)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20554 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11219)

(assert (=> b!363202 (= lt!167476 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363202 (= (arrayCountValidKeys!0 lt!167478 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167475))))

(assert (=> b!363202 (= lt!167475 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363202 (= lt!167478 (array!20555 (store (arr!9753 a!4337) i!1478 k!2980) (size!10105 a!4337)))))

(declare-fun lt!167480 () Unit!11219)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20554 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11219)

(assert (=> b!363202 (= lt!167480 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202511 () Bool)

(assert (=> start!36312 (=> (not res!202511) (not e!222400))))

(assert (=> start!36312 (= res!202511 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10105 a!4337))))))

(assert (=> start!36312 e!222400))

(assert (=> start!36312 true))

(declare-fun array_inv!7191 (array!20554) Bool)

(assert (=> start!36312 (array_inv!7191 a!4337)))

(assert (= (and start!36312 res!202511) b!363199))

(assert (= (and b!363199 res!202513) b!363200))

(assert (= (and b!363200 res!202512) b!363201))

(assert (= (and b!363201 res!202510) b!363202))

(declare-fun m!360221 () Bool)

(assert (=> b!363199 m!360221))

(assert (=> b!363199 m!360221))

(declare-fun m!360223 () Bool)

(assert (=> b!363199 m!360223))

(declare-fun m!360225 () Bool)

(assert (=> b!363200 m!360225))

(declare-fun m!360227 () Bool)

(assert (=> b!363202 m!360227))

(declare-fun m!360229 () Bool)

(assert (=> b!363202 m!360229))

(declare-fun m!360231 () Bool)

(assert (=> b!363202 m!360231))

(declare-fun m!360233 () Bool)

(assert (=> b!363202 m!360233))

(declare-fun m!360235 () Bool)

(assert (=> b!363202 m!360235))

(declare-fun m!360237 () Bool)

(assert (=> b!363202 m!360237))

(declare-fun m!360239 () Bool)

(assert (=> b!363202 m!360239))

(declare-fun m!360241 () Bool)

(assert (=> b!363202 m!360241))

(declare-fun m!360243 () Bool)

(assert (=> b!363202 m!360243))

(declare-fun m!360245 () Bool)

(assert (=> start!36312 m!360245))

(push 1)

(assert (not b!363202))

(assert (not b!363200))

(assert (not start!36312))

(assert (not b!363199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

