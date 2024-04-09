; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36320 () Bool)

(assert start!36320)

(declare-fun b!363250 () Bool)

(declare-fun e!222427 () Bool)

(declare-fun e!222428 () Bool)

(assert (=> b!363250 (= e!222427 (not e!222428))))

(declare-fun res!202560 () Bool)

(assert (=> b!363250 (=> res!202560 e!222428)))

(declare-datatypes ((array!20562 0))(
  ( (array!20563 (arr!9757 (Array (_ BitVec 32) (_ BitVec 64))) (size!10109 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20562)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363250 (= res!202560 (or (bvslt (size!10109 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167563 () (_ BitVec 32))

(declare-fun lt!167568 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20562 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363250 (= (bvadd lt!167563 lt!167568) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10109 a!4337)))))

(declare-datatypes ((Unit!11227 0))(
  ( (Unit!11228) )
))
(declare-fun lt!167570 () Unit!11227)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11227)

(assert (=> b!363250 (= lt!167570 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10109 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167565 () (_ BitVec 32))

(assert (=> b!363250 (= lt!167565 lt!167568)))

(assert (=> b!363250 (= lt!167568 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10109 a!4337)))))

(declare-fun lt!167564 () array!20562)

(assert (=> b!363250 (= lt!167565 (arrayCountValidKeys!0 lt!167564 (bvadd #b00000000000000000000000000000001 i!1478) (size!10109 a!4337)))))

(declare-fun lt!167562 () Unit!11227)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20562 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11227)

(assert (=> b!363250 (= lt!167562 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167566 () (_ BitVec 32))

(assert (=> b!363250 (= lt!167566 (bvadd #b00000000000000000000000000000001 lt!167563))))

(assert (=> b!363250 (= lt!167566 (arrayCountValidKeys!0 lt!167564 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363250 (= lt!167563 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363250 (= lt!167564 (array!20563 (store (arr!9757 a!4337) i!1478 k!2980) (size!10109 a!4337)))))

(declare-fun lt!167569 () Unit!11227)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20562 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11227)

(assert (=> b!363250 (= lt!167569 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363251 () Bool)

(declare-fun res!202564 () Bool)

(assert (=> b!363251 (=> (not res!202564) (not e!222427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363251 (= res!202564 (not (validKeyInArray!0 (select (arr!9757 a!4337) i!1478))))))

(declare-fun b!363252 () Bool)

(declare-fun res!202561 () Bool)

(assert (=> b!363252 (=> (not res!202561) (not e!222427))))

(assert (=> b!363252 (= res!202561 (validKeyInArray!0 k!2980))))

(declare-fun b!363253 () Bool)

(assert (=> b!363253 (= e!222428 true)))

(assert (=> b!363253 (= (bvadd lt!167566 lt!167565) (arrayCountValidKeys!0 lt!167564 #b00000000000000000000000000000000 (size!10109 a!4337)))))

(declare-fun lt!167567 () Unit!11227)

(assert (=> b!363253 (= lt!167567 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167564 #b00000000000000000000000000000000 (size!10109 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!202562 () Bool)

(assert (=> start!36320 (=> (not res!202562) (not e!222427))))

(assert (=> start!36320 (= res!202562 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10109 a!4337))))))

(assert (=> start!36320 e!222427))

(assert (=> start!36320 true))

(declare-fun array_inv!7195 (array!20562) Bool)

(assert (=> start!36320 (array_inv!7195 a!4337)))

(declare-fun b!363249 () Bool)

(declare-fun res!202563 () Bool)

(assert (=> b!363249 (=> (not res!202563) (not e!222427))))

(assert (=> b!363249 (= res!202563 (bvslt (size!10109 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36320 res!202562) b!363251))

(assert (= (and b!363251 res!202564) b!363252))

(assert (= (and b!363252 res!202561) b!363249))

(assert (= (and b!363249 res!202563) b!363250))

(assert (= (and b!363250 (not res!202560)) b!363253))

(declare-fun m!360325 () Bool)

(assert (=> b!363251 m!360325))

(assert (=> b!363251 m!360325))

(declare-fun m!360327 () Bool)

(assert (=> b!363251 m!360327))

(declare-fun m!360329 () Bool)

(assert (=> b!363250 m!360329))

(declare-fun m!360331 () Bool)

(assert (=> b!363250 m!360331))

(declare-fun m!360333 () Bool)

(assert (=> b!363250 m!360333))

(declare-fun m!360335 () Bool)

(assert (=> b!363250 m!360335))

(declare-fun m!360337 () Bool)

(assert (=> b!363250 m!360337))

(declare-fun m!360339 () Bool)

(assert (=> b!363250 m!360339))

(declare-fun m!360341 () Bool)

(assert (=> b!363250 m!360341))

(declare-fun m!360343 () Bool)

(assert (=> b!363250 m!360343))

(declare-fun m!360345 () Bool)

(assert (=> b!363250 m!360345))

(declare-fun m!360347 () Bool)

(assert (=> b!363253 m!360347))

(declare-fun m!360349 () Bool)

(assert (=> b!363253 m!360349))

(declare-fun m!360351 () Bool)

(assert (=> b!363252 m!360351))

(declare-fun m!360353 () Bool)

(assert (=> start!36320 m!360353))

(push 1)

(assert (not b!363251))

(assert (not b!363250))

(assert (not start!36320))

(assert (not b!363252))

(assert (not b!363253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

