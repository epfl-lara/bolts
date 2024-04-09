; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36186 () Bool)

(assert start!36186)

(declare-fun b!362521 () Bool)

(declare-fun e!222028 () Bool)

(assert (=> b!362521 (= e!222028 (not true))))

(declare-datatypes ((array!20464 0))(
  ( (array!20465 (arr!9711 (Array (_ BitVec 32) (_ BitVec 64))) (size!10063 (_ BitVec 32))) )
))
(declare-fun lt!166906 () array!20464)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun a!4337 () array!20464)

(declare-fun arrayCountValidKeys!0 (array!20464 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362521 (= (arrayCountValidKeys!0 lt!166906 (bvadd #b00000000000000000000000000000001 i!1478) (size!10063 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10063 a!4337)))))

(declare-datatypes ((Unit!11147 0))(
  ( (Unit!11148) )
))
(declare-fun lt!166907 () Unit!11147)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11147)

(assert (=> b!362521 (= lt!166907 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362521 (= (arrayCountValidKeys!0 lt!166906 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362521 (= lt!166906 (array!20465 (store (arr!9711 a!4337) i!1478 k!2980) (size!10063 a!4337)))))

(declare-fun lt!166905 () Unit!11147)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11147)

(assert (=> b!362521 (= lt!166905 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362520 () Bool)

(declare-fun res!201964 () Bool)

(assert (=> b!362520 (=> (not res!201964) (not e!222028))))

(assert (=> b!362520 (= res!201964 (bvslt (size!10063 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!201962 () Bool)

(assert (=> start!36186 (=> (not res!201962) (not e!222028))))

(assert (=> start!36186 (= res!201962 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10063 a!4337))))))

(assert (=> start!36186 e!222028))

(assert (=> start!36186 true))

(declare-fun array_inv!7149 (array!20464) Bool)

(assert (=> start!36186 (array_inv!7149 a!4337)))

(declare-fun b!362519 () Bool)

(declare-fun res!201963 () Bool)

(assert (=> b!362519 (=> (not res!201963) (not e!222028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362519 (= res!201963 (validKeyInArray!0 k!2980))))

(declare-fun b!362518 () Bool)

(declare-fun res!201961 () Bool)

(assert (=> b!362518 (=> (not res!201961) (not e!222028))))

(assert (=> b!362518 (= res!201961 (not (validKeyInArray!0 (select (arr!9711 a!4337) i!1478))))))

(assert (= (and start!36186 res!201962) b!362518))

(assert (= (and b!362518 res!201961) b!362519))

(assert (= (and b!362519 res!201963) b!362520))

(assert (= (and b!362520 res!201964) b!362521))

(declare-fun m!359199 () Bool)

(assert (=> b!362521 m!359199))

(declare-fun m!359201 () Bool)

(assert (=> b!362521 m!359201))

(declare-fun m!359203 () Bool)

(assert (=> b!362521 m!359203))

(declare-fun m!359205 () Bool)

(assert (=> b!362521 m!359205))

(declare-fun m!359207 () Bool)

(assert (=> b!362521 m!359207))

(declare-fun m!359209 () Bool)

(assert (=> b!362521 m!359209))

(declare-fun m!359211 () Bool)

(assert (=> b!362521 m!359211))

(declare-fun m!359213 () Bool)

(assert (=> start!36186 m!359213))

(declare-fun m!359215 () Bool)

(assert (=> b!362519 m!359215))

(declare-fun m!359217 () Bool)

(assert (=> b!362518 m!359217))

(assert (=> b!362518 m!359217))

(declare-fun m!359219 () Bool)

(assert (=> b!362518 m!359219))

(push 1)

(assert (not b!362519))

(assert (not start!36186))

(assert (not b!362518))

(assert (not b!362521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

