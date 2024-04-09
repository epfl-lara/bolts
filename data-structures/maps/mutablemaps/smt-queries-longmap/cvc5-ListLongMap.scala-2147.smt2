; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36182 () Bool)

(assert start!36182)

(declare-fun b!362494 () Bool)

(declare-fun res!201937 () Bool)

(declare-fun e!222017 () Bool)

(assert (=> b!362494 (=> (not res!201937) (not e!222017))))

(declare-datatypes ((array!20460 0))(
  ( (array!20461 (arr!9709 (Array (_ BitVec 32) (_ BitVec 64))) (size!10061 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20460)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362494 (= res!201937 (not (validKeyInArray!0 (select (arr!9709 a!4337) i!1478))))))

(declare-fun b!362496 () Bool)

(declare-fun res!201938 () Bool)

(assert (=> b!362496 (=> (not res!201938) (not e!222017))))

(assert (=> b!362496 (= res!201938 (bvslt (size!10061 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!201939 () Bool)

(assert (=> start!36182 (=> (not res!201939) (not e!222017))))

(assert (=> start!36182 (= res!201939 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10061 a!4337))))))

(assert (=> start!36182 e!222017))

(assert (=> start!36182 true))

(declare-fun array_inv!7147 (array!20460) Bool)

(assert (=> start!36182 (array_inv!7147 a!4337)))

(declare-fun b!362497 () Bool)

(assert (=> b!362497 (= e!222017 (not true))))

(declare-fun lt!166888 () array!20460)

(declare-fun arrayCountValidKeys!0 (array!20460 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362497 (= (arrayCountValidKeys!0 lt!166888 (bvadd #b00000000000000000000000000000001 i!1478) (size!10061 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10061 a!4337)))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-datatypes ((Unit!11143 0))(
  ( (Unit!11144) )
))
(declare-fun lt!166889 () Unit!11143)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11143)

(assert (=> b!362497 (= lt!166889 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362497 (= (arrayCountValidKeys!0 lt!166888 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362497 (= lt!166888 (array!20461 (store (arr!9709 a!4337) i!1478 k!2980) (size!10061 a!4337)))))

(declare-fun lt!166887 () Unit!11143)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11143)

(assert (=> b!362497 (= lt!166887 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362495 () Bool)

(declare-fun res!201940 () Bool)

(assert (=> b!362495 (=> (not res!201940) (not e!222017))))

(assert (=> b!362495 (= res!201940 (validKeyInArray!0 k!2980))))

(assert (= (and start!36182 res!201939) b!362494))

(assert (= (and b!362494 res!201937) b!362495))

(assert (= (and b!362495 res!201940) b!362496))

(assert (= (and b!362496 res!201938) b!362497))

(declare-fun m!359155 () Bool)

(assert (=> b!362494 m!359155))

(assert (=> b!362494 m!359155))

(declare-fun m!359157 () Bool)

(assert (=> b!362494 m!359157))

(declare-fun m!359159 () Bool)

(assert (=> start!36182 m!359159))

(declare-fun m!359161 () Bool)

(assert (=> b!362497 m!359161))

(declare-fun m!359163 () Bool)

(assert (=> b!362497 m!359163))

(declare-fun m!359165 () Bool)

(assert (=> b!362497 m!359165))

(declare-fun m!359167 () Bool)

(assert (=> b!362497 m!359167))

(declare-fun m!359169 () Bool)

(assert (=> b!362497 m!359169))

(declare-fun m!359171 () Bool)

(assert (=> b!362497 m!359171))

(declare-fun m!359173 () Bool)

(assert (=> b!362497 m!359173))

(declare-fun m!359175 () Bool)

(assert (=> b!362495 m!359175))

(push 1)

(assert (not b!362497))

(assert (not start!36182))

(assert (not b!362495))

(assert (not b!362494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

