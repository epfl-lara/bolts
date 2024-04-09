; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36322 () Bool)

(assert start!36322)

(declare-fun b!363264 () Bool)

(declare-fun res!202576 () Bool)

(declare-fun e!222436 () Bool)

(assert (=> b!363264 (=> (not res!202576) (not e!222436))))

(declare-datatypes ((array!20564 0))(
  ( (array!20565 (arr!9758 (Array (_ BitVec 32) (_ BitVec 64))) (size!10110 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20564)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363264 (= res!202576 (not (validKeyInArray!0 (select (arr!9758 a!4337) i!1478))))))

(declare-fun b!363265 () Bool)

(declare-fun e!222435 () Bool)

(assert (=> b!363265 (= e!222436 (not e!222435))))

(declare-fun res!202575 () Bool)

(assert (=> b!363265 (=> res!202575 e!222435)))

(assert (=> b!363265 (= res!202575 (or (bvslt (size!10110 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167597 () (_ BitVec 32))

(declare-fun lt!167595 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20564 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363265 (= (bvadd lt!167597 lt!167595) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10110 a!4337)))))

(declare-datatypes ((Unit!11229 0))(
  ( (Unit!11230) )
))
(declare-fun lt!167594 () Unit!11229)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11229)

(assert (=> b!363265 (= lt!167594 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10110 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167590 () (_ BitVec 32))

(assert (=> b!363265 (= lt!167590 lt!167595)))

(assert (=> b!363265 (= lt!167595 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10110 a!4337)))))

(declare-fun lt!167596 () array!20564)

(assert (=> b!363265 (= lt!167590 (arrayCountValidKeys!0 lt!167596 (bvadd #b00000000000000000000000000000001 i!1478) (size!10110 a!4337)))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lt!167589 () Unit!11229)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20564 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11229)

(assert (=> b!363265 (= lt!167589 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167591 () (_ BitVec 32))

(assert (=> b!363265 (= lt!167591 (bvadd #b00000000000000000000000000000001 lt!167597))))

(assert (=> b!363265 (= lt!167591 (arrayCountValidKeys!0 lt!167596 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363265 (= lt!167597 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363265 (= lt!167596 (array!20565 (store (arr!9758 a!4337) i!1478 k0!2980) (size!10110 a!4337)))))

(declare-fun lt!167592 () Unit!11229)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20564 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11229)

(assert (=> b!363265 (= lt!167592 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!363266 () Bool)

(declare-fun res!202579 () Bool)

(assert (=> b!363266 (=> (not res!202579) (not e!222436))))

(assert (=> b!363266 (= res!202579 (bvslt (size!10110 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202577 () Bool)

(assert (=> start!36322 (=> (not res!202577) (not e!222436))))

(assert (=> start!36322 (= res!202577 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10110 a!4337))))))

(assert (=> start!36322 e!222436))

(assert (=> start!36322 true))

(declare-fun array_inv!7196 (array!20564) Bool)

(assert (=> start!36322 (array_inv!7196 a!4337)))

(declare-fun b!363267 () Bool)

(declare-fun res!202578 () Bool)

(assert (=> b!363267 (=> (not res!202578) (not e!222436))))

(assert (=> b!363267 (= res!202578 (validKeyInArray!0 k0!2980))))

(declare-fun b!363268 () Bool)

(assert (=> b!363268 (= e!222435 true)))

(assert (=> b!363268 (= (bvadd lt!167591 lt!167590) (arrayCountValidKeys!0 lt!167596 #b00000000000000000000000000000000 (size!10110 a!4337)))))

(declare-fun lt!167593 () Unit!11229)

(assert (=> b!363268 (= lt!167593 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167596 #b00000000000000000000000000000000 (size!10110 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36322 res!202577) b!363264))

(assert (= (and b!363264 res!202576) b!363267))

(assert (= (and b!363267 res!202578) b!363266))

(assert (= (and b!363266 res!202579) b!363265))

(assert (= (and b!363265 (not res!202575)) b!363268))

(declare-fun m!360355 () Bool)

(assert (=> b!363265 m!360355))

(declare-fun m!360357 () Bool)

(assert (=> b!363265 m!360357))

(declare-fun m!360359 () Bool)

(assert (=> b!363265 m!360359))

(declare-fun m!360361 () Bool)

(assert (=> b!363265 m!360361))

(declare-fun m!360363 () Bool)

(assert (=> b!363265 m!360363))

(declare-fun m!360365 () Bool)

(assert (=> b!363265 m!360365))

(declare-fun m!360367 () Bool)

(assert (=> b!363265 m!360367))

(declare-fun m!360369 () Bool)

(assert (=> b!363265 m!360369))

(declare-fun m!360371 () Bool)

(assert (=> b!363265 m!360371))

(declare-fun m!360373 () Bool)

(assert (=> b!363268 m!360373))

(declare-fun m!360375 () Bool)

(assert (=> b!363268 m!360375))

(declare-fun m!360377 () Bool)

(assert (=> start!36322 m!360377))

(declare-fun m!360379 () Bool)

(assert (=> b!363267 m!360379))

(declare-fun m!360381 () Bool)

(assert (=> b!363264 m!360381))

(assert (=> b!363264 m!360381))

(declare-fun m!360383 () Bool)

(assert (=> b!363264 m!360383))

(check-sat (not b!363265) (not b!363264) (not b!363267) (not start!36322) (not b!363268))
