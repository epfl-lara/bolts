; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36316 () Bool)

(assert start!36316)

(declare-fun b!363224 () Bool)

(declare-fun res!202536 () Bool)

(declare-fun e!222413 () Bool)

(assert (=> b!363224 (=> (not res!202536) (not e!222413))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363224 (= res!202536 (validKeyInArray!0 k0!2980))))

(declare-fun b!363223 () Bool)

(declare-fun res!202537 () Bool)

(assert (=> b!363223 (=> (not res!202537) (not e!222413))))

(declare-datatypes ((array!20558 0))(
  ( (array!20559 (arr!9755 (Array (_ BitVec 32) (_ BitVec 64))) (size!10107 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20558)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363223 (= res!202537 (not (validKeyInArray!0 (select (arr!9755 a!4337) i!1478))))))

(declare-fun res!202535 () Bool)

(assert (=> start!36316 (=> (not res!202535) (not e!222413))))

(assert (=> start!36316 (= res!202535 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10107 a!4337))))))

(assert (=> start!36316 e!222413))

(assert (=> start!36316 true))

(declare-fun array_inv!7193 (array!20558) Bool)

(assert (=> start!36316 (array_inv!7193 a!4337)))

(declare-fun b!363225 () Bool)

(declare-fun res!202534 () Bool)

(assert (=> b!363225 (=> (not res!202534) (not e!222413))))

(assert (=> b!363225 (= res!202534 (bvslt (size!10107 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363226 () Bool)

(assert (=> b!363226 (= e!222413 (not (and (bvsge (size!10107 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167520 () (_ BitVec 32))

(declare-fun lt!167519 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20558 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363226 (= (bvadd lt!167520 lt!167519) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10107 a!4337)))))

(declare-datatypes ((Unit!11223 0))(
  ( (Unit!11224) )
))
(declare-fun lt!167517 () Unit!11223)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11223)

(assert (=> b!363226 (= lt!167517 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10107 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167522 () (_ BitVec 32))

(assert (=> b!363226 (= lt!167522 lt!167519)))

(assert (=> b!363226 (= lt!167519 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10107 a!4337)))))

(declare-fun lt!167521 () array!20558)

(assert (=> b!363226 (= lt!167522 (arrayCountValidKeys!0 lt!167521 (bvadd #b00000000000000000000000000000001 i!1478) (size!10107 a!4337)))))

(declare-fun lt!167518 () Unit!11223)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20558 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11223)

(assert (=> b!363226 (= lt!167518 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363226 (= (arrayCountValidKeys!0 lt!167521 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167520))))

(assert (=> b!363226 (= lt!167520 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363226 (= lt!167521 (array!20559 (store (arr!9755 a!4337) i!1478 k0!2980) (size!10107 a!4337)))))

(declare-fun lt!167516 () Unit!11223)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20558 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11223)

(assert (=> b!363226 (= lt!167516 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(assert (= (and start!36316 res!202535) b!363223))

(assert (= (and b!363223 res!202537) b!363224))

(assert (= (and b!363224 res!202536) b!363225))

(assert (= (and b!363225 res!202534) b!363226))

(declare-fun m!360273 () Bool)

(assert (=> b!363224 m!360273))

(declare-fun m!360275 () Bool)

(assert (=> b!363223 m!360275))

(assert (=> b!363223 m!360275))

(declare-fun m!360277 () Bool)

(assert (=> b!363223 m!360277))

(declare-fun m!360279 () Bool)

(assert (=> start!36316 m!360279))

(declare-fun m!360281 () Bool)

(assert (=> b!363226 m!360281))

(declare-fun m!360283 () Bool)

(assert (=> b!363226 m!360283))

(declare-fun m!360285 () Bool)

(assert (=> b!363226 m!360285))

(declare-fun m!360287 () Bool)

(assert (=> b!363226 m!360287))

(declare-fun m!360289 () Bool)

(assert (=> b!363226 m!360289))

(declare-fun m!360291 () Bool)

(assert (=> b!363226 m!360291))

(declare-fun m!360293 () Bool)

(assert (=> b!363226 m!360293))

(declare-fun m!360295 () Bool)

(assert (=> b!363226 m!360295))

(declare-fun m!360297 () Bool)

(assert (=> b!363226 m!360297))

(check-sat (not b!363224) (not b!363223) (not start!36316) (not b!363226))
(check-sat)
