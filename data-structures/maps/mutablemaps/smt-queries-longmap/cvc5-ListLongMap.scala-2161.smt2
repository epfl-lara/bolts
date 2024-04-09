; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36308 () Bool)

(assert start!36308)

(declare-fun b!363178 () Bool)

(declare-fun e!222389 () Bool)

(assert (=> b!363178 (= e!222389 (not true))))

(declare-fun lt!167438 () (_ BitVec 32))

(declare-fun lt!167435 () (_ BitVec 32))

(declare-datatypes ((array!20550 0))(
  ( (array!20551 (arr!9751 (Array (_ BitVec 32) (_ BitVec 64))) (size!10103 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20550)

(declare-fun arrayCountValidKeys!0 (array!20550 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363178 (= (bvadd lt!167438 lt!167435) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10103 a!4337)))))

(declare-datatypes ((Unit!11215 0))(
  ( (Unit!11216) )
))
(declare-fun lt!167432 () Unit!11215)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11215)

(assert (=> b!363178 (= lt!167432 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10103 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167436 () (_ BitVec 32))

(assert (=> b!363178 (= lt!167436 lt!167435)))

(assert (=> b!363178 (= lt!167435 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10103 a!4337)))))

(declare-fun lt!167433 () array!20550)

(assert (=> b!363178 (= lt!167436 (arrayCountValidKeys!0 lt!167433 (bvadd #b00000000000000000000000000000001 i!1478) (size!10103 a!4337)))))

(declare-fun lt!167437 () Unit!11215)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20550 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11215)

(assert (=> b!363178 (= lt!167437 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363178 (= (arrayCountValidKeys!0 lt!167433 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!167438))))

(assert (=> b!363178 (= lt!167438 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363178 (= lt!167433 (array!20551 (store (arr!9751 a!4337) i!1478 k!2980) (size!10103 a!4337)))))

(declare-fun lt!167434 () Unit!11215)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20550 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11215)

(assert (=> b!363178 (= lt!167434 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363175 () Bool)

(declare-fun res!202487 () Bool)

(assert (=> b!363175 (=> (not res!202487) (not e!222389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363175 (= res!202487 (not (validKeyInArray!0 (select (arr!9751 a!4337) i!1478))))))

(declare-fun b!363176 () Bool)

(declare-fun res!202488 () Bool)

(assert (=> b!363176 (=> (not res!202488) (not e!222389))))

(assert (=> b!363176 (= res!202488 (validKeyInArray!0 k!2980))))

(declare-fun b!363177 () Bool)

(declare-fun res!202489 () Bool)

(assert (=> b!363177 (=> (not res!202489) (not e!222389))))

(assert (=> b!363177 (= res!202489 (bvslt (size!10103 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202486 () Bool)

(assert (=> start!36308 (=> (not res!202486) (not e!222389))))

(assert (=> start!36308 (= res!202486 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10103 a!4337))))))

(assert (=> start!36308 e!222389))

(assert (=> start!36308 true))

(declare-fun array_inv!7189 (array!20550) Bool)

(assert (=> start!36308 (array_inv!7189 a!4337)))

(assert (= (and start!36308 res!202486) b!363175))

(assert (= (and b!363175 res!202487) b!363176))

(assert (= (and b!363176 res!202488) b!363177))

(assert (= (and b!363177 res!202489) b!363178))

(declare-fun m!360169 () Bool)

(assert (=> b!363178 m!360169))

(declare-fun m!360171 () Bool)

(assert (=> b!363178 m!360171))

(declare-fun m!360173 () Bool)

(assert (=> b!363178 m!360173))

(declare-fun m!360175 () Bool)

(assert (=> b!363178 m!360175))

(declare-fun m!360177 () Bool)

(assert (=> b!363178 m!360177))

(declare-fun m!360179 () Bool)

(assert (=> b!363178 m!360179))

(declare-fun m!360181 () Bool)

(assert (=> b!363178 m!360181))

(declare-fun m!360183 () Bool)

(assert (=> b!363178 m!360183))

(declare-fun m!360185 () Bool)

(assert (=> b!363178 m!360185))

(declare-fun m!360187 () Bool)

(assert (=> b!363175 m!360187))

(assert (=> b!363175 m!360187))

(declare-fun m!360189 () Bool)

(assert (=> b!363175 m!360189))

(declare-fun m!360191 () Bool)

(assert (=> b!363176 m!360191))

(declare-fun m!360193 () Bool)

(assert (=> start!36308 m!360193))

(push 1)

(assert (not b!363175))

(assert (not start!36308))

(assert (not b!363178))

(assert (not b!363176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

