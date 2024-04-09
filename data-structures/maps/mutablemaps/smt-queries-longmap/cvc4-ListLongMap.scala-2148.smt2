; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36192 () Bool)

(assert start!36192)

(declare-fun b!362555 () Bool)

(declare-fun res!201998 () Bool)

(declare-fun e!222047 () Bool)

(assert (=> b!362555 (=> (not res!201998) (not e!222047))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362555 (= res!201998 (validKeyInArray!0 k!2980))))

(declare-fun res!201997 () Bool)

(assert (=> start!36192 (=> (not res!201997) (not e!222047))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20470 0))(
  ( (array!20471 (arr!9714 (Array (_ BitVec 32) (_ BitVec 64))) (size!10066 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20470)

(assert (=> start!36192 (= res!201997 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10066 a!4337))))))

(assert (=> start!36192 e!222047))

(assert (=> start!36192 true))

(declare-fun array_inv!7152 (array!20470) Bool)

(assert (=> start!36192 (array_inv!7152 a!4337)))

(declare-fun b!362556 () Bool)

(declare-fun res!201999 () Bool)

(assert (=> b!362556 (=> (not res!201999) (not e!222047))))

(assert (=> b!362556 (= res!201999 (bvslt (size!10066 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362554 () Bool)

(declare-fun res!202000 () Bool)

(assert (=> b!362554 (=> (not res!202000) (not e!222047))))

(assert (=> b!362554 (= res!202000 (not (validKeyInArray!0 (select (arr!9714 a!4337) i!1478))))))

(declare-fun b!362557 () Bool)

(assert (=> b!362557 (= e!222047 (not true))))

(declare-fun lt!166967 () (_ BitVec 32))

(declare-fun lt!166964 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20470 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362557 (= (bvadd lt!166967 lt!166964) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10066 a!4337)))))

(declare-datatypes ((Unit!11153 0))(
  ( (Unit!11154) )
))
(declare-fun lt!166970 () Unit!11153)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11153)

(assert (=> b!362557 (= lt!166970 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10066 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166968 () (_ BitVec 32))

(assert (=> b!362557 (= lt!166968 lt!166964)))

(assert (=> b!362557 (= lt!166964 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10066 a!4337)))))

(declare-fun lt!166966 () array!20470)

(assert (=> b!362557 (= lt!166968 (arrayCountValidKeys!0 lt!166966 (bvadd #b00000000000000000000000000000001 i!1478) (size!10066 a!4337)))))

(declare-fun lt!166969 () Unit!11153)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11153)

(assert (=> b!362557 (= lt!166969 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362557 (= (arrayCountValidKeys!0 lt!166966 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!166967))))

(assert (=> b!362557 (= lt!166967 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362557 (= lt!166966 (array!20471 (store (arr!9714 a!4337) i!1478 k!2980) (size!10066 a!4337)))))

(declare-fun lt!166965 () Unit!11153)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11153)

(assert (=> b!362557 (= lt!166965 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36192 res!201997) b!362554))

(assert (= (and b!362554 res!202000) b!362555))

(assert (= (and b!362555 res!201998) b!362556))

(assert (= (and b!362556 res!201999) b!362557))

(declare-fun m!359273 () Bool)

(assert (=> b!362555 m!359273))

(declare-fun m!359275 () Bool)

(assert (=> start!36192 m!359275))

(declare-fun m!359277 () Bool)

(assert (=> b!362554 m!359277))

(assert (=> b!362554 m!359277))

(declare-fun m!359279 () Bool)

(assert (=> b!362554 m!359279))

(declare-fun m!359281 () Bool)

(assert (=> b!362557 m!359281))

(declare-fun m!359283 () Bool)

(assert (=> b!362557 m!359283))

(declare-fun m!359285 () Bool)

(assert (=> b!362557 m!359285))

(declare-fun m!359287 () Bool)

(assert (=> b!362557 m!359287))

(declare-fun m!359289 () Bool)

(assert (=> b!362557 m!359289))

(declare-fun m!359291 () Bool)

(assert (=> b!362557 m!359291))

(declare-fun m!359293 () Bool)

(assert (=> b!362557 m!359293))

(declare-fun m!359295 () Bool)

(assert (=> b!362557 m!359295))

(declare-fun m!359297 () Bool)

(assert (=> b!362557 m!359297))

(push 1)

(assert (not b!362557))

(assert (not b!362555))

(assert (not b!362554))

(assert (not start!36192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

