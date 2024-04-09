; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36324 () Bool)

(assert start!36324)

(declare-fun b!363279 () Bool)

(declare-fun res!202591 () Bool)

(declare-fun e!222446 () Bool)

(assert (=> b!363279 (=> (not res!202591) (not e!222446))))

(declare-datatypes ((array!20566 0))(
  ( (array!20567 (arr!9759 (Array (_ BitVec 32) (_ BitVec 64))) (size!10111 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20566)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363279 (= res!202591 (not (validKeyInArray!0 (select (arr!9759 a!4337) i!1478))))))

(declare-fun b!363280 () Bool)

(declare-fun res!202594 () Bool)

(assert (=> b!363280 (=> (not res!202594) (not e!222446))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!363280 (= res!202594 (validKeyInArray!0 k!2980))))

(declare-fun b!363281 () Bool)

(declare-fun res!202590 () Bool)

(assert (=> b!363281 (=> (not res!202590) (not e!222446))))

(assert (=> b!363281 (= res!202590 (bvslt (size!10111 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363283 () Bool)

(declare-fun e!222445 () Bool)

(assert (=> b!363283 (= e!222446 (not e!222445))))

(declare-fun res!202592 () Bool)

(assert (=> b!363283 (=> res!202592 e!222445)))

(assert (=> b!363283 (= res!202592 (or (bvslt (size!10111 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167624 () (_ BitVec 32))

(declare-fun lt!167621 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20566 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363283 (= (bvadd lt!167624 lt!167621) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10111 a!4337)))))

(declare-datatypes ((Unit!11231 0))(
  ( (Unit!11232) )
))
(declare-fun lt!167619 () Unit!11231)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11231)

(assert (=> b!363283 (= lt!167619 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10111 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167620 () (_ BitVec 32))

(assert (=> b!363283 (= lt!167620 lt!167621)))

(assert (=> b!363283 (= lt!167621 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10111 a!4337)))))

(declare-fun lt!167617 () array!20566)

(assert (=> b!363283 (= lt!167620 (arrayCountValidKeys!0 lt!167617 (bvadd #b00000000000000000000000000000001 i!1478) (size!10111 a!4337)))))

(declare-fun lt!167618 () Unit!11231)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20566 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11231)

(assert (=> b!363283 (= lt!167618 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167623 () (_ BitVec 32))

(assert (=> b!363283 (= lt!167623 (bvadd #b00000000000000000000000000000001 lt!167624))))

(assert (=> b!363283 (= lt!167623 (arrayCountValidKeys!0 lt!167617 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363283 (= lt!167624 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363283 (= lt!167617 (array!20567 (store (arr!9759 a!4337) i!1478 k!2980) (size!10111 a!4337)))))

(declare-fun lt!167622 () Unit!11231)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20566 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11231)

(assert (=> b!363283 (= lt!167622 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363282 () Bool)

(assert (=> b!363282 (= e!222445 true)))

(assert (=> b!363282 (= (bvadd lt!167623 lt!167620) (arrayCountValidKeys!0 lt!167617 #b00000000000000000000000000000000 (size!10111 a!4337)))))

(declare-fun lt!167616 () Unit!11231)

(assert (=> b!363282 (= lt!167616 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167617 #b00000000000000000000000000000000 (size!10111 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!202593 () Bool)

(assert (=> start!36324 (=> (not res!202593) (not e!222446))))

(assert (=> start!36324 (= res!202593 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10111 a!4337))))))

(assert (=> start!36324 e!222446))

(assert (=> start!36324 true))

(declare-fun array_inv!7197 (array!20566) Bool)

(assert (=> start!36324 (array_inv!7197 a!4337)))

(assert (= (and start!36324 res!202593) b!363279))

(assert (= (and b!363279 res!202591) b!363280))

(assert (= (and b!363280 res!202594) b!363281))

(assert (= (and b!363281 res!202590) b!363283))

(assert (= (and b!363283 (not res!202592)) b!363282))

(declare-fun m!360385 () Bool)

(assert (=> b!363279 m!360385))

(assert (=> b!363279 m!360385))

(declare-fun m!360387 () Bool)

(assert (=> b!363279 m!360387))

(declare-fun m!360389 () Bool)

(assert (=> start!36324 m!360389))

(declare-fun m!360391 () Bool)

(assert (=> b!363283 m!360391))

(declare-fun m!360393 () Bool)

(assert (=> b!363283 m!360393))

(declare-fun m!360395 () Bool)

(assert (=> b!363283 m!360395))

(declare-fun m!360397 () Bool)

(assert (=> b!363283 m!360397))

(declare-fun m!360399 () Bool)

(assert (=> b!363283 m!360399))

(declare-fun m!360401 () Bool)

(assert (=> b!363283 m!360401))

(declare-fun m!360403 () Bool)

(assert (=> b!363283 m!360403))

(declare-fun m!360405 () Bool)

(assert (=> b!363283 m!360405))

(declare-fun m!360407 () Bool)

(assert (=> b!363283 m!360407))

(declare-fun m!360409 () Bool)

(assert (=> b!363280 m!360409))

(declare-fun m!360411 () Bool)

(assert (=> b!363282 m!360411))

(declare-fun m!360413 () Bool)

(assert (=> b!363282 m!360413))

(push 1)

(assert (not start!36324))

(assert (not b!363282))

(assert (not b!363279))

(assert (not b!363283))

(assert (not b!363280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

