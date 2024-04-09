; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36198 () Bool)

(assert start!36198)

(declare-fun res!202044 () Bool)

(declare-fun e!222073 () Bool)

(assert (=> start!36198 (=> (not res!202044) (not e!222073))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20476 0))(
  ( (array!20477 (arr!9717 (Array (_ BitVec 32) (_ BitVec 64))) (size!10069 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20476)

(assert (=> start!36198 (= res!202044 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10069 a!4337))))))

(assert (=> start!36198 e!222073))

(assert (=> start!36198 true))

(declare-fun array_inv!7155 (array!20476) Bool)

(assert (=> start!36198 (array_inv!7155 a!4337)))

(declare-fun b!362598 () Bool)

(declare-fun res!202042 () Bool)

(assert (=> b!362598 (=> (not res!202042) (not e!222073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362598 (= res!202042 (not (validKeyInArray!0 (select (arr!9717 a!4337) i!1478))))))

(declare-fun b!362599 () Bool)

(declare-fun e!222074 () Bool)

(assert (=> b!362599 (= e!222074 true)))

(declare-fun lt!167049 () (_ BitVec 32))

(declare-fun lt!167051 () (_ BitVec 32))

(declare-fun lt!167050 () array!20476)

(declare-fun arrayCountValidKeys!0 (array!20476 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362599 (= (bvadd lt!167051 lt!167049) (arrayCountValidKeys!0 lt!167050 #b00000000000000000000000000000000 (size!10069 a!4337)))))

(declare-datatypes ((Unit!11159 0))(
  ( (Unit!11160) )
))
(declare-fun lt!167048 () Unit!11159)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11159)

(assert (=> b!362599 (= lt!167048 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167050 #b00000000000000000000000000000000 (size!10069 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362600 () Bool)

(assert (=> b!362600 (= e!222073 (not e!222074))))

(declare-fun res!202043 () Bool)

(assert (=> b!362600 (=> res!202043 e!222074)))

(assert (=> b!362600 (= res!202043 (or (bvslt (size!10069 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167047 () (_ BitVec 32))

(declare-fun lt!167045 () (_ BitVec 32))

(assert (=> b!362600 (= (bvadd lt!167047 lt!167045) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10069 a!4337)))))

(declare-fun lt!167046 () Unit!11159)

(assert (=> b!362600 (= lt!167046 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10069 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362600 (= lt!167049 lt!167045)))

(assert (=> b!362600 (= lt!167045 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10069 a!4337)))))

(assert (=> b!362600 (= lt!167049 (arrayCountValidKeys!0 lt!167050 (bvadd #b00000000000000000000000000000001 i!1478) (size!10069 a!4337)))))

(declare-fun lt!167043 () Unit!11159)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11159)

(assert (=> b!362600 (= lt!167043 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362600 (= lt!167051 (bvadd #b00000000000000000000000000000001 lt!167047))))

(assert (=> b!362600 (= lt!167051 (arrayCountValidKeys!0 lt!167050 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362600 (= lt!167047 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362600 (= lt!167050 (array!20477 (store (arr!9717 a!4337) i!1478 k!2980) (size!10069 a!4337)))))

(declare-fun lt!167044 () Unit!11159)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11159)

(assert (=> b!362600 (= lt!167044 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362601 () Bool)

(declare-fun res!202041 () Bool)

(assert (=> b!362601 (=> (not res!202041) (not e!222073))))

(assert (=> b!362601 (= res!202041 (bvslt (size!10069 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362602 () Bool)

(declare-fun res!202045 () Bool)

(assert (=> b!362602 (=> (not res!202045) (not e!222073))))

(assert (=> b!362602 (= res!202045 (validKeyInArray!0 k!2980))))

(assert (= (and start!36198 res!202044) b!362598))

(assert (= (and b!362598 res!202042) b!362602))

(assert (= (and b!362602 res!202045) b!362601))

(assert (= (and b!362601 res!202041) b!362600))

(assert (= (and b!362600 (not res!202043)) b!362599))

(declare-fun m!359359 () Bool)

(assert (=> b!362600 m!359359))

(declare-fun m!359361 () Bool)

(assert (=> b!362600 m!359361))

(declare-fun m!359363 () Bool)

(assert (=> b!362600 m!359363))

(declare-fun m!359365 () Bool)

(assert (=> b!362600 m!359365))

(declare-fun m!359367 () Bool)

(assert (=> b!362600 m!359367))

(declare-fun m!359369 () Bool)

(assert (=> b!362600 m!359369))

(declare-fun m!359371 () Bool)

(assert (=> b!362600 m!359371))

(declare-fun m!359373 () Bool)

(assert (=> b!362600 m!359373))

(declare-fun m!359375 () Bool)

(assert (=> b!362600 m!359375))

(declare-fun m!359377 () Bool)

(assert (=> b!362602 m!359377))

(declare-fun m!359379 () Bool)

(assert (=> b!362599 m!359379))

(declare-fun m!359381 () Bool)

(assert (=> b!362599 m!359381))

(declare-fun m!359383 () Bool)

(assert (=> start!36198 m!359383))

(declare-fun m!359385 () Bool)

(assert (=> b!362598 m!359385))

(assert (=> b!362598 m!359385))

(declare-fun m!359387 () Bool)

(assert (=> b!362598 m!359387))

(push 1)

(assert (not start!36198))

(assert (not b!362598))

(assert (not b!362602))

(assert (not b!362599))

(assert (not b!362600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

