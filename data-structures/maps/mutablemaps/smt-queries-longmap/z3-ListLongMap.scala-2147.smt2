; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36184 () Bool)

(assert start!36184)

(declare-fun b!362506 () Bool)

(declare-fun res!201952 () Bool)

(declare-fun e!222022 () Bool)

(assert (=> b!362506 (=> (not res!201952) (not e!222022))))

(declare-datatypes ((array!20462 0))(
  ( (array!20463 (arr!9710 (Array (_ BitVec 32) (_ BitVec 64))) (size!10062 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20462)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362506 (= res!201952 (not (validKeyInArray!0 (select (arr!9710 a!4337) i!1478))))))

(declare-fun res!201950 () Bool)

(assert (=> start!36184 (=> (not res!201950) (not e!222022))))

(assert (=> start!36184 (= res!201950 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10062 a!4337))))))

(assert (=> start!36184 e!222022))

(assert (=> start!36184 true))

(declare-fun array_inv!7148 (array!20462) Bool)

(assert (=> start!36184 (array_inv!7148 a!4337)))

(declare-fun b!362507 () Bool)

(declare-fun res!201949 () Bool)

(assert (=> b!362507 (=> (not res!201949) (not e!222022))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362507 (= res!201949 (validKeyInArray!0 k0!2980))))

(declare-fun b!362509 () Bool)

(assert (=> b!362509 (= e!222022 (not true))))

(declare-fun lt!166898 () array!20462)

(declare-fun arrayCountValidKeys!0 (array!20462 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362509 (= (arrayCountValidKeys!0 lt!166898 (bvadd #b00000000000000000000000000000001 i!1478) (size!10062 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10062 a!4337)))))

(declare-datatypes ((Unit!11145 0))(
  ( (Unit!11146) )
))
(declare-fun lt!166897 () Unit!11145)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11145)

(assert (=> b!362509 (= lt!166897 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362509 (= (arrayCountValidKeys!0 lt!166898 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362509 (= lt!166898 (array!20463 (store (arr!9710 a!4337) i!1478 k0!2980) (size!10062 a!4337)))))

(declare-fun lt!166896 () Unit!11145)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11145)

(assert (=> b!362509 (= lt!166896 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362508 () Bool)

(declare-fun res!201951 () Bool)

(assert (=> b!362508 (=> (not res!201951) (not e!222022))))

(assert (=> b!362508 (= res!201951 (bvslt (size!10062 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36184 res!201950) b!362506))

(assert (= (and b!362506 res!201952) b!362507))

(assert (= (and b!362507 res!201949) b!362508))

(assert (= (and b!362508 res!201951) b!362509))

(declare-fun m!359177 () Bool)

(assert (=> b!362506 m!359177))

(assert (=> b!362506 m!359177))

(declare-fun m!359179 () Bool)

(assert (=> b!362506 m!359179))

(declare-fun m!359181 () Bool)

(assert (=> start!36184 m!359181))

(declare-fun m!359183 () Bool)

(assert (=> b!362507 m!359183))

(declare-fun m!359185 () Bool)

(assert (=> b!362509 m!359185))

(declare-fun m!359187 () Bool)

(assert (=> b!362509 m!359187))

(declare-fun m!359189 () Bool)

(assert (=> b!362509 m!359189))

(declare-fun m!359191 () Bool)

(assert (=> b!362509 m!359191))

(declare-fun m!359193 () Bool)

(assert (=> b!362509 m!359193))

(declare-fun m!359195 () Bool)

(assert (=> b!362509 m!359195))

(declare-fun m!359197 () Bool)

(assert (=> b!362509 m!359197))

(check-sat (not start!36184) (not b!362507) (not b!362506) (not b!362509))
