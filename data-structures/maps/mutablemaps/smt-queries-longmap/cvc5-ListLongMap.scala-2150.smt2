; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36200 () Bool)

(assert start!36200)

(declare-fun b!362613 () Bool)

(declare-fun res!202057 () Bool)

(declare-fun e!222081 () Bool)

(assert (=> b!362613 (=> (not res!202057) (not e!222081))))

(declare-datatypes ((array!20478 0))(
  ( (array!20479 (arr!9718 (Array (_ BitVec 32) (_ BitVec 64))) (size!10070 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20478)

(assert (=> b!362613 (= res!202057 (bvslt (size!10070 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362614 () Bool)

(declare-fun res!202056 () Bool)

(assert (=> b!362614 (=> (not res!202056) (not e!222081))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362614 (= res!202056 (not (validKeyInArray!0 (select (arr!9718 a!4337) i!1478))))))

(declare-fun res!202060 () Bool)

(assert (=> start!36200 (=> (not res!202060) (not e!222081))))

(assert (=> start!36200 (= res!202060 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10070 a!4337))))))

(assert (=> start!36200 e!222081))

(assert (=> start!36200 true))

(declare-fun array_inv!7156 (array!20478) Bool)

(assert (=> start!36200 (array_inv!7156 a!4337)))

(declare-fun b!362615 () Bool)

(declare-fun res!202058 () Bool)

(assert (=> b!362615 (=> (not res!202058) (not e!222081))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362615 (= res!202058 (validKeyInArray!0 k!2980))))

(declare-fun b!362616 () Bool)

(declare-fun e!222083 () Bool)

(assert (=> b!362616 (= e!222081 (not e!222083))))

(declare-fun res!202059 () Bool)

(assert (=> b!362616 (=> res!202059 e!222083)))

(assert (=> b!362616 (= res!202059 (or (bvslt (size!10070 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167074 () (_ BitVec 32))

(declare-fun lt!167076 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20478 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362616 (= (bvadd lt!167074 lt!167076) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10070 a!4337)))))

(declare-datatypes ((Unit!11161 0))(
  ( (Unit!11162) )
))
(declare-fun lt!167078 () Unit!11161)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11161)

(assert (=> b!362616 (= lt!167078 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10070 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167073 () (_ BitVec 32))

(assert (=> b!362616 (= lt!167073 lt!167076)))

(assert (=> b!362616 (= lt!167076 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10070 a!4337)))))

(declare-fun lt!167075 () array!20478)

(assert (=> b!362616 (= lt!167073 (arrayCountValidKeys!0 lt!167075 (bvadd #b00000000000000000000000000000001 i!1478) (size!10070 a!4337)))))

(declare-fun lt!167071 () Unit!11161)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11161)

(assert (=> b!362616 (= lt!167071 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167077 () (_ BitVec 32))

(assert (=> b!362616 (= lt!167077 (bvadd #b00000000000000000000000000000001 lt!167074))))

(assert (=> b!362616 (= lt!167077 (arrayCountValidKeys!0 lt!167075 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362616 (= lt!167074 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362616 (= lt!167075 (array!20479 (store (arr!9718 a!4337) i!1478 k!2980) (size!10070 a!4337)))))

(declare-fun lt!167072 () Unit!11161)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11161)

(assert (=> b!362616 (= lt!167072 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362617 () Bool)

(assert (=> b!362617 (= e!222083 true)))

(assert (=> b!362617 (= (bvadd lt!167077 lt!167073) (arrayCountValidKeys!0 lt!167075 #b00000000000000000000000000000000 (size!10070 a!4337)))))

(declare-fun lt!167070 () Unit!11161)

(assert (=> b!362617 (= lt!167070 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167075 #b00000000000000000000000000000000 (size!10070 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36200 res!202060) b!362614))

(assert (= (and b!362614 res!202056) b!362615))

(assert (= (and b!362615 res!202058) b!362613))

(assert (= (and b!362613 res!202057) b!362616))

(assert (= (and b!362616 (not res!202059)) b!362617))

(declare-fun m!359389 () Bool)

(assert (=> b!362614 m!359389))

(assert (=> b!362614 m!359389))

(declare-fun m!359391 () Bool)

(assert (=> b!362614 m!359391))

(declare-fun m!359393 () Bool)

(assert (=> b!362617 m!359393))

(declare-fun m!359395 () Bool)

(assert (=> b!362617 m!359395))

(declare-fun m!359397 () Bool)

(assert (=> b!362615 m!359397))

(declare-fun m!359399 () Bool)

(assert (=> b!362616 m!359399))

(declare-fun m!359401 () Bool)

(assert (=> b!362616 m!359401))

(declare-fun m!359403 () Bool)

(assert (=> b!362616 m!359403))

(declare-fun m!359405 () Bool)

(assert (=> b!362616 m!359405))

(declare-fun m!359407 () Bool)

(assert (=> b!362616 m!359407))

(declare-fun m!359409 () Bool)

(assert (=> b!362616 m!359409))

(declare-fun m!359411 () Bool)

(assert (=> b!362616 m!359411))

(declare-fun m!359413 () Bool)

(assert (=> b!362616 m!359413))

(declare-fun m!359415 () Bool)

(assert (=> b!362616 m!359415))

(declare-fun m!359417 () Bool)

(assert (=> start!36200 m!359417))

(push 1)

(assert (not b!362614))

(assert (not b!362617))

(assert (not b!362615))

(assert (not start!36200))

(assert (not b!362616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

