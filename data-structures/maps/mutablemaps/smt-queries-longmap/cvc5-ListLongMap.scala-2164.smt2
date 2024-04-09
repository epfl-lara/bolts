; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36326 () Bool)

(assert start!36326)

(declare-fun b!363294 () Bool)

(declare-fun res!202609 () Bool)

(declare-fun e!222453 () Bool)

(assert (=> b!363294 (=> (not res!202609) (not e!222453))))

(declare-datatypes ((array!20568 0))(
  ( (array!20569 (arr!9760 (Array (_ BitVec 32) (_ BitVec 64))) (size!10112 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20568)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363294 (= res!202609 (not (validKeyInArray!0 (select (arr!9760 a!4337) i!1478))))))

(declare-fun b!363295 () Bool)

(declare-fun e!222454 () Bool)

(assert (=> b!363295 (= e!222453 (not e!222454))))

(declare-fun res!202606 () Bool)

(assert (=> b!363295 (=> res!202606 e!222454)))

(assert (=> b!363295 (= res!202606 (or (bvslt (size!10112 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167649 () (_ BitVec 32))

(declare-fun lt!167656 () (_ BitVec 32))

(declare-fun lt!167647 () (_ BitVec 32))

(assert (=> b!363295 (= (bvadd lt!167649 lt!167656) lt!167647)))

(declare-fun arrayCountValidKeys!0 (array!20568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363295 (= lt!167647 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10112 a!4337)))))

(declare-datatypes ((Unit!11233 0))(
  ( (Unit!11234) )
))
(declare-fun lt!167654 () Unit!11233)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11233)

(assert (=> b!363295 (= lt!167654 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10112 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167652 () (_ BitVec 32))

(assert (=> b!363295 (= lt!167652 lt!167656)))

(assert (=> b!363295 (= lt!167656 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10112 a!4337)))))

(declare-fun lt!167655 () array!20568)

(assert (=> b!363295 (= lt!167652 (arrayCountValidKeys!0 lt!167655 (bvadd #b00000000000000000000000000000001 i!1478) (size!10112 a!4337)))))

(declare-fun lt!167651 () Unit!11233)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20568 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11233)

(assert (=> b!363295 (= lt!167651 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167648 () (_ BitVec 32))

(assert (=> b!363295 (= lt!167648 (bvadd #b00000000000000000000000000000001 lt!167649))))

(assert (=> b!363295 (= lt!167648 (arrayCountValidKeys!0 lt!167655 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363295 (= lt!167649 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363295 (= lt!167655 (array!20569 (store (arr!9760 a!4337) i!1478 k!2980) (size!10112 a!4337)))))

(declare-fun lt!167653 () Unit!11233)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20568 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11233)

(assert (=> b!363295 (= lt!167653 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363296 () Bool)

(declare-fun res!202608 () Bool)

(assert (=> b!363296 (=> (not res!202608) (not e!222453))))

(assert (=> b!363296 (= res!202608 (validKeyInArray!0 k!2980))))

(declare-fun b!363297 () Bool)

(declare-fun lt!167650 () (_ BitVec 32))

(assert (=> b!363297 (= e!222454 (= lt!167650 (bvadd #b00000000000000000000000000000001 lt!167647)))))

(assert (=> b!363297 (= (bvadd lt!167648 lt!167652) lt!167650)))

(assert (=> b!363297 (= lt!167650 (arrayCountValidKeys!0 lt!167655 #b00000000000000000000000000000000 (size!10112 a!4337)))))

(declare-fun lt!167657 () Unit!11233)

(assert (=> b!363297 (= lt!167657 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167655 #b00000000000000000000000000000000 (size!10112 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!202607 () Bool)

(assert (=> start!36326 (=> (not res!202607) (not e!222453))))

(assert (=> start!36326 (= res!202607 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10112 a!4337))))))

(assert (=> start!36326 e!222453))

(assert (=> start!36326 true))

(declare-fun array_inv!7198 (array!20568) Bool)

(assert (=> start!36326 (array_inv!7198 a!4337)))

(declare-fun b!363298 () Bool)

(declare-fun res!202605 () Bool)

(assert (=> b!363298 (=> (not res!202605) (not e!222453))))

(assert (=> b!363298 (= res!202605 (bvslt (size!10112 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36326 res!202607) b!363294))

(assert (= (and b!363294 res!202609) b!363296))

(assert (= (and b!363296 res!202608) b!363298))

(assert (= (and b!363298 res!202605) b!363295))

(assert (= (and b!363295 (not res!202606)) b!363297))

(declare-fun m!360415 () Bool)

(assert (=> b!363297 m!360415))

(declare-fun m!360417 () Bool)

(assert (=> b!363297 m!360417))

(declare-fun m!360419 () Bool)

(assert (=> b!363294 m!360419))

(assert (=> b!363294 m!360419))

(declare-fun m!360421 () Bool)

(assert (=> b!363294 m!360421))

(declare-fun m!360423 () Bool)

(assert (=> b!363295 m!360423))

(declare-fun m!360425 () Bool)

(assert (=> b!363295 m!360425))

(declare-fun m!360427 () Bool)

(assert (=> b!363295 m!360427))

(declare-fun m!360429 () Bool)

(assert (=> b!363295 m!360429))

(declare-fun m!360431 () Bool)

(assert (=> b!363295 m!360431))

(declare-fun m!360433 () Bool)

(assert (=> b!363295 m!360433))

(declare-fun m!360435 () Bool)

(assert (=> b!363295 m!360435))

(declare-fun m!360437 () Bool)

(assert (=> b!363295 m!360437))

(declare-fun m!360439 () Bool)

(assert (=> b!363295 m!360439))

(declare-fun m!360441 () Bool)

(assert (=> b!363296 m!360441))

(declare-fun m!360443 () Bool)

(assert (=> start!36326 m!360443))

(push 1)

(assert (not b!363295))

(assert (not b!363296))

(assert (not start!36326))

(assert (not b!363294))

(assert (not b!363297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

