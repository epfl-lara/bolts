; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36190 () Bool)

(assert start!36190)

(declare-fun b!362542 () Bool)

(declare-fun res!201988 () Bool)

(declare-fun e!222041 () Bool)

(assert (=> b!362542 (=> (not res!201988) (not e!222041))))

(declare-datatypes ((array!20468 0))(
  ( (array!20469 (arr!9713 (Array (_ BitVec 32) (_ BitVec 64))) (size!10065 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20468)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362542 (= res!201988 (not (validKeyInArray!0 (select (arr!9713 a!4337) i!1478))))))

(declare-fun b!362543 () Bool)

(declare-fun res!201986 () Bool)

(assert (=> b!362543 (=> (not res!201986) (not e!222041))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362543 (= res!201986 (validKeyInArray!0 k0!2980))))

(declare-fun res!201987 () Bool)

(assert (=> start!36190 (=> (not res!201987) (not e!222041))))

(assert (=> start!36190 (= res!201987 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10065 a!4337))))))

(assert (=> start!36190 e!222041))

(assert (=> start!36190 true))

(declare-fun array_inv!7151 (array!20468) Bool)

(assert (=> start!36190 (array_inv!7151 a!4337)))

(declare-fun b!362544 () Bool)

(declare-fun res!201985 () Bool)

(assert (=> b!362544 (=> (not res!201985) (not e!222041))))

(assert (=> b!362544 (= res!201985 (bvslt (size!10065 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362545 () Bool)

(assert (=> b!362545 (= e!222041 (not true))))

(declare-fun lt!166949 () (_ BitVec 32))

(declare-fun lt!166943 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20468 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362545 (= (bvadd lt!166949 lt!166943) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10065 a!4337)))))

(declare-datatypes ((Unit!11151 0))(
  ( (Unit!11152) )
))
(declare-fun lt!166945 () Unit!11151)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11151)

(assert (=> b!362545 (= lt!166945 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10065 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166944 () (_ BitVec 32))

(assert (=> b!362545 (= lt!166944 lt!166943)))

(assert (=> b!362545 (= lt!166943 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10065 a!4337)))))

(declare-fun lt!166946 () array!20468)

(assert (=> b!362545 (= lt!166944 (arrayCountValidKeys!0 lt!166946 (bvadd #b00000000000000000000000000000001 i!1478) (size!10065 a!4337)))))

(declare-fun lt!166948 () Unit!11151)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11151)

(assert (=> b!362545 (= lt!166948 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362545 (= (arrayCountValidKeys!0 lt!166946 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!166949))))

(assert (=> b!362545 (= lt!166949 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362545 (= lt!166946 (array!20469 (store (arr!9713 a!4337) i!1478 k0!2980) (size!10065 a!4337)))))

(declare-fun lt!166947 () Unit!11151)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11151)

(assert (=> b!362545 (= lt!166947 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(assert (= (and start!36190 res!201987) b!362542))

(assert (= (and b!362542 res!201988) b!362543))

(assert (= (and b!362543 res!201986) b!362544))

(assert (= (and b!362544 res!201985) b!362545))

(declare-fun m!359247 () Bool)

(assert (=> b!362542 m!359247))

(assert (=> b!362542 m!359247))

(declare-fun m!359249 () Bool)

(assert (=> b!362542 m!359249))

(declare-fun m!359251 () Bool)

(assert (=> b!362543 m!359251))

(declare-fun m!359253 () Bool)

(assert (=> start!36190 m!359253))

(declare-fun m!359255 () Bool)

(assert (=> b!362545 m!359255))

(declare-fun m!359257 () Bool)

(assert (=> b!362545 m!359257))

(declare-fun m!359259 () Bool)

(assert (=> b!362545 m!359259))

(declare-fun m!359261 () Bool)

(assert (=> b!362545 m!359261))

(declare-fun m!359263 () Bool)

(assert (=> b!362545 m!359263))

(declare-fun m!359265 () Bool)

(assert (=> b!362545 m!359265))

(declare-fun m!359267 () Bool)

(assert (=> b!362545 m!359267))

(declare-fun m!359269 () Bool)

(assert (=> b!362545 m!359269))

(declare-fun m!359271 () Bool)

(assert (=> b!362545 m!359271))

(check-sat (not b!362545) (not b!362542) (not start!36190) (not b!362543))
