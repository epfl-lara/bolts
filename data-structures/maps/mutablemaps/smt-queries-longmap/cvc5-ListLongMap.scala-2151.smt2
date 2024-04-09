; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36206 () Bool)

(assert start!36206)

(declare-fun b!362659 () Bool)

(declare-fun res!202105 () Bool)

(declare-fun e!222108 () Bool)

(assert (=> b!362659 (=> (not res!202105) (not e!222108))))

(declare-datatypes ((array!20484 0))(
  ( (array!20485 (arr!9721 (Array (_ BitVec 32) (_ BitVec 64))) (size!10073 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20484)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362659 (= res!202105 (not (validKeyInArray!0 (select (arr!9721 a!4337) i!1478))))))

(declare-fun b!362660 () Bool)

(declare-fun res!202102 () Bool)

(assert (=> b!362660 (=> (not res!202102) (not e!222108))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362660 (= res!202102 (validKeyInArray!0 k!2980))))

(declare-fun b!362658 () Bool)

(declare-fun e!222110 () Bool)

(assert (=> b!362658 (= e!222108 (not e!222110))))

(declare-fun res!202101 () Bool)

(assert (=> b!362658 (=> res!202101 e!222110)))

(assert (=> b!362658 (= res!202101 (or (bvslt (size!10073 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167159 () (_ BitVec 32))

(declare-fun lt!167153 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20484 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362658 (= (bvadd lt!167159 lt!167153) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10073 a!4337)))))

(declare-datatypes ((Unit!11167 0))(
  ( (Unit!11168) )
))
(declare-fun lt!167157 () Unit!11167)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11167)

(assert (=> b!362658 (= lt!167157 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10073 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167155 () (_ BitVec 32))

(assert (=> b!362658 (= lt!167155 lt!167153)))

(assert (=> b!362658 (= lt!167153 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10073 a!4337)))))

(declare-fun lt!167151 () array!20484)

(assert (=> b!362658 (= lt!167155 (arrayCountValidKeys!0 lt!167151 (bvadd #b00000000000000000000000000000001 i!1478) (size!10073 a!4337)))))

(declare-fun lt!167152 () Unit!11167)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11167)

(assert (=> b!362658 (= lt!167152 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167156 () (_ BitVec 32))

(assert (=> b!362658 (= lt!167156 (bvadd #b00000000000000000000000000000001 lt!167159))))

(assert (=> b!362658 (= lt!167156 (arrayCountValidKeys!0 lt!167151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362658 (= lt!167159 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362658 (= lt!167151 (array!20485 (store (arr!9721 a!4337) i!1478 k!2980) (size!10073 a!4337)))))

(declare-fun lt!167154 () Unit!11167)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11167)

(assert (=> b!362658 (= lt!167154 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202103 () Bool)

(assert (=> start!36206 (=> (not res!202103) (not e!222108))))

(assert (=> start!36206 (= res!202103 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10073 a!4337))))))

(assert (=> start!36206 e!222108))

(assert (=> start!36206 true))

(declare-fun array_inv!7159 (array!20484) Bool)

(assert (=> start!36206 (array_inv!7159 a!4337)))

(declare-fun b!362661 () Bool)

(assert (=> b!362661 (= e!222110 true)))

(assert (=> b!362661 (= (bvadd lt!167156 lt!167155) (arrayCountValidKeys!0 lt!167151 #b00000000000000000000000000000000 (size!10073 a!4337)))))

(declare-fun lt!167158 () Unit!11167)

(assert (=> b!362661 (= lt!167158 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167151 #b00000000000000000000000000000000 (size!10073 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362662 () Bool)

(declare-fun res!202104 () Bool)

(assert (=> b!362662 (=> (not res!202104) (not e!222108))))

(assert (=> b!362662 (= res!202104 (bvslt (size!10073 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36206 res!202103) b!362659))

(assert (= (and b!362659 res!202105) b!362660))

(assert (= (and b!362660 res!202102) b!362662))

(assert (= (and b!362662 res!202104) b!362658))

(assert (= (and b!362658 (not res!202101)) b!362661))

(declare-fun m!359479 () Bool)

(assert (=> b!362660 m!359479))

(declare-fun m!359481 () Bool)

(assert (=> start!36206 m!359481))

(declare-fun m!359483 () Bool)

(assert (=> b!362658 m!359483))

(declare-fun m!359485 () Bool)

(assert (=> b!362658 m!359485))

(declare-fun m!359487 () Bool)

(assert (=> b!362658 m!359487))

(declare-fun m!359489 () Bool)

(assert (=> b!362658 m!359489))

(declare-fun m!359491 () Bool)

(assert (=> b!362658 m!359491))

(declare-fun m!359493 () Bool)

(assert (=> b!362658 m!359493))

(declare-fun m!359495 () Bool)

(assert (=> b!362658 m!359495))

(declare-fun m!359497 () Bool)

(assert (=> b!362658 m!359497))

(declare-fun m!359499 () Bool)

(assert (=> b!362658 m!359499))

(declare-fun m!359501 () Bool)

(assert (=> b!362659 m!359501))

(assert (=> b!362659 m!359501))

(declare-fun m!359503 () Bool)

(assert (=> b!362659 m!359503))

(declare-fun m!359505 () Bool)

(assert (=> b!362661 m!359505))

(declare-fun m!359507 () Bool)

(assert (=> b!362661 m!359507))

(push 1)

(assert (not b!362660))

(assert (not start!36206))

(assert (not b!362659))

(assert (not b!362661))

(assert (not b!362658))

(check-sat)

(pop 1)

