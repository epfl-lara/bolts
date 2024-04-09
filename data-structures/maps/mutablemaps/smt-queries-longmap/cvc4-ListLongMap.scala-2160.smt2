; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36306 () Bool)

(assert start!36306)

(declare-fun b!363165 () Bool)

(declare-fun res!202475 () Bool)

(declare-fun e!222383 () Bool)

(assert (=> b!363165 (=> (not res!202475) (not e!222383))))

(declare-datatypes ((array!20548 0))(
  ( (array!20549 (arr!9750 (Array (_ BitVec 32) (_ BitVec 64))) (size!10102 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20548)

(assert (=> b!363165 (= res!202475 (bvslt (size!10102 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363164 () Bool)

(declare-fun res!202474 () Bool)

(assert (=> b!363164 (=> (not res!202474) (not e!222383))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363164 (= res!202474 (validKeyInArray!0 k!2980))))

(declare-fun b!363166 () Bool)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363166 (= e!222383 (not (and (bvsge (size!10102 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167417 () array!20548)

(declare-fun arrayCountValidKeys!0 (array!20548 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363166 (= (arrayCountValidKeys!0 lt!167417 (bvadd #b00000000000000000000000000000001 i!1478) (size!10102 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10102 a!4337)))))

(declare-datatypes ((Unit!11213 0))(
  ( (Unit!11214) )
))
(declare-fun lt!167416 () Unit!11213)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20548 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11213)

(assert (=> b!363166 (= lt!167416 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363166 (= (arrayCountValidKeys!0 lt!167417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!363166 (= lt!167417 (array!20549 (store (arr!9750 a!4337) i!1478 k!2980) (size!10102 a!4337)))))

(declare-fun lt!167415 () Unit!11213)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20548 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11213)

(assert (=> b!363166 (= lt!167415 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363163 () Bool)

(declare-fun res!202476 () Bool)

(assert (=> b!363163 (=> (not res!202476) (not e!222383))))

(assert (=> b!363163 (= res!202476 (not (validKeyInArray!0 (select (arr!9750 a!4337) i!1478))))))

(declare-fun res!202477 () Bool)

(assert (=> start!36306 (=> (not res!202477) (not e!222383))))

(assert (=> start!36306 (= res!202477 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10102 a!4337))))))

(assert (=> start!36306 e!222383))

(assert (=> start!36306 true))

(declare-fun array_inv!7188 (array!20548) Bool)

(assert (=> start!36306 (array_inv!7188 a!4337)))

(assert (= (and start!36306 res!202477) b!363163))

(assert (= (and b!363163 res!202476) b!363164))

(assert (= (and b!363164 res!202474) b!363165))

(assert (= (and b!363165 res!202475) b!363166))

(declare-fun m!360147 () Bool)

(assert (=> b!363164 m!360147))

(declare-fun m!360149 () Bool)

(assert (=> b!363166 m!360149))

(declare-fun m!360151 () Bool)

(assert (=> b!363166 m!360151))

(declare-fun m!360153 () Bool)

(assert (=> b!363166 m!360153))

(declare-fun m!360155 () Bool)

(assert (=> b!363166 m!360155))

(declare-fun m!360157 () Bool)

(assert (=> b!363166 m!360157))

(declare-fun m!360159 () Bool)

(assert (=> b!363166 m!360159))

(declare-fun m!360161 () Bool)

(assert (=> b!363166 m!360161))

(declare-fun m!360163 () Bool)

(assert (=> b!363163 m!360163))

(assert (=> b!363163 m!360163))

(declare-fun m!360165 () Bool)

(assert (=> b!363163 m!360165))

(declare-fun m!360167 () Bool)

(assert (=> start!36306 m!360167))

(push 1)

(assert (not b!363166))

(assert (not start!36306))

(assert (not b!363164))

(assert (not b!363163))

(check-sat)

