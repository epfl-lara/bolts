; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36194 () Bool)

(assert start!36194)

(declare-fun b!362568 () Bool)

(declare-fun res!202011 () Bool)

(declare-fun e!222055 () Bool)

(assert (=> b!362568 (=> (not res!202011) (not e!222055))))

(declare-datatypes ((array!20472 0))(
  ( (array!20473 (arr!9715 (Array (_ BitVec 32) (_ BitVec 64))) (size!10067 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20472)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362568 (= res!202011 (not (validKeyInArray!0 (select (arr!9715 a!4337) i!1478))))))

(declare-fun b!362569 () Bool)

(declare-fun e!222054 () Bool)

(assert (=> b!362569 (= e!222055 (not e!222054))))

(declare-fun res!202015 () Bool)

(assert (=> b!362569 (=> res!202015 e!222054)))

(assert (=> b!362569 (= res!202015 (or (bvslt (size!10067 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!166992 () (_ BitVec 32))

(declare-fun lt!166991 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20472 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362569 (= (bvadd lt!166992 lt!166991) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10067 a!4337)))))

(declare-datatypes ((Unit!11155 0))(
  ( (Unit!11156) )
))
(declare-fun lt!166995 () Unit!11155)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11155)

(assert (=> b!362569 (= lt!166995 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10067 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166996 () (_ BitVec 32))

(assert (=> b!362569 (= lt!166996 lt!166991)))

(assert (=> b!362569 (= lt!166991 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10067 a!4337)))))

(declare-fun lt!166989 () array!20472)

(assert (=> b!362569 (= lt!166996 (arrayCountValidKeys!0 lt!166989 (bvadd #b00000000000000000000000000000001 i!1478) (size!10067 a!4337)))))

(declare-fun lt!166993 () Unit!11155)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11155)

(assert (=> b!362569 (= lt!166993 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166990 () (_ BitVec 32))

(assert (=> b!362569 (= lt!166990 (bvadd #b00000000000000000000000000000001 lt!166992))))

(assert (=> b!362569 (= lt!166990 (arrayCountValidKeys!0 lt!166989 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362569 (= lt!166992 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362569 (= lt!166989 (array!20473 (store (arr!9715 a!4337) i!1478 k!2980) (size!10067 a!4337)))))

(declare-fun lt!166997 () Unit!11155)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11155)

(assert (=> b!362569 (= lt!166997 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362571 () Bool)

(declare-fun res!202013 () Bool)

(assert (=> b!362571 (=> (not res!202013) (not e!222055))))

(assert (=> b!362571 (= res!202013 (validKeyInArray!0 k!2980))))

(declare-fun b!362572 () Bool)

(assert (=> b!362572 (= e!222054 true)))

(assert (=> b!362572 (= (bvadd lt!166990 lt!166996) (arrayCountValidKeys!0 lt!166989 #b00000000000000000000000000000000 (size!10067 a!4337)))))

(declare-fun lt!166994 () Unit!11155)

(assert (=> b!362572 (= lt!166994 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!166989 #b00000000000000000000000000000000 (size!10067 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362570 () Bool)

(declare-fun res!202014 () Bool)

(assert (=> b!362570 (=> (not res!202014) (not e!222055))))

(assert (=> b!362570 (= res!202014 (bvslt (size!10067 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202012 () Bool)

(assert (=> start!36194 (=> (not res!202012) (not e!222055))))

(assert (=> start!36194 (= res!202012 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10067 a!4337))))))

(assert (=> start!36194 e!222055))

(assert (=> start!36194 true))

(declare-fun array_inv!7153 (array!20472) Bool)

(assert (=> start!36194 (array_inv!7153 a!4337)))

(assert (= (and start!36194 res!202012) b!362568))

(assert (= (and b!362568 res!202011) b!362571))

(assert (= (and b!362571 res!202013) b!362570))

(assert (= (and b!362570 res!202014) b!362569))

(assert (= (and b!362569 (not res!202015)) b!362572))

(declare-fun m!359299 () Bool)

(assert (=> start!36194 m!359299))

(declare-fun m!359301 () Bool)

(assert (=> b!362572 m!359301))

(declare-fun m!359303 () Bool)

(assert (=> b!362572 m!359303))

(declare-fun m!359305 () Bool)

(assert (=> b!362569 m!359305))

(declare-fun m!359307 () Bool)

(assert (=> b!362569 m!359307))

(declare-fun m!359309 () Bool)

(assert (=> b!362569 m!359309))

(declare-fun m!359311 () Bool)

(assert (=> b!362569 m!359311))

(declare-fun m!359313 () Bool)

(assert (=> b!362569 m!359313))

(declare-fun m!359315 () Bool)

(assert (=> b!362569 m!359315))

(declare-fun m!359317 () Bool)

(assert (=> b!362569 m!359317))

(declare-fun m!359319 () Bool)

(assert (=> b!362569 m!359319))

(declare-fun m!359321 () Bool)

(assert (=> b!362569 m!359321))

(declare-fun m!359323 () Bool)

(assert (=> b!362571 m!359323))

(declare-fun m!359325 () Bool)

(assert (=> b!362568 m!359325))

(assert (=> b!362568 m!359325))

(declare-fun m!359327 () Bool)

(assert (=> b!362568 m!359327))

(push 1)

(assert (not b!362568))

(assert (not b!362569))

(assert (not b!362571))

(assert (not b!362572))

(assert (not start!36194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

