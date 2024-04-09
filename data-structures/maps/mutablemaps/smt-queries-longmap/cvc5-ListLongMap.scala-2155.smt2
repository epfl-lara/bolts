; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36248 () Bool)

(assert start!36248)

(declare-fun res!202255 () Bool)

(declare-fun e!222227 () Bool)

(assert (=> start!36248 (=> (not res!202255) (not e!222227))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20511 0))(
  ( (array!20512 (arr!9733 (Array (_ BitVec 32) (_ BitVec 64))) (size!10085 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20511)

(assert (=> start!36248 (= res!202255 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10085 a!4337))))))

(assert (=> start!36248 e!222227))

(assert (=> start!36248 true))

(declare-fun array_inv!7171 (array!20511) Bool)

(assert (=> start!36248 (array_inv!7171 a!4337)))

(declare-fun b!362872 () Bool)

(assert (=> b!362872 (= e!222227 (not true))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20511 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362872 (= (arrayCountValidKeys!0 (array!20512 (store (arr!9733 a!4337) i!1478 k!2980) (size!10085 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11179 0))(
  ( (Unit!11180) )
))
(declare-fun lt!167312 () Unit!11179)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20511 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11179)

(assert (=> b!362872 (= lt!167312 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362869 () Bool)

(declare-fun res!202252 () Bool)

(assert (=> b!362869 (=> (not res!202252) (not e!222227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362869 (= res!202252 (not (validKeyInArray!0 (select (arr!9733 a!4337) i!1478))))))

(declare-fun b!362870 () Bool)

(declare-fun res!202253 () Bool)

(assert (=> b!362870 (=> (not res!202253) (not e!222227))))

(assert (=> b!362870 (= res!202253 (validKeyInArray!0 k!2980))))

(declare-fun b!362871 () Bool)

(declare-fun res!202254 () Bool)

(assert (=> b!362871 (=> (not res!202254) (not e!222227))))

(assert (=> b!362871 (= res!202254 (bvslt (size!10085 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36248 res!202255) b!362869))

(assert (= (and b!362869 res!202252) b!362870))

(assert (= (and b!362870 res!202253) b!362871))

(assert (= (and b!362871 res!202254) b!362872))

(declare-fun m!359761 () Bool)

(assert (=> start!36248 m!359761))

(declare-fun m!359763 () Bool)

(assert (=> b!362872 m!359763))

(declare-fun m!359765 () Bool)

(assert (=> b!362872 m!359765))

(declare-fun m!359767 () Bool)

(assert (=> b!362872 m!359767))

(declare-fun m!359769 () Bool)

(assert (=> b!362872 m!359769))

(declare-fun m!359771 () Bool)

(assert (=> b!362869 m!359771))

(assert (=> b!362869 m!359771))

(declare-fun m!359773 () Bool)

(assert (=> b!362869 m!359773))

(declare-fun m!359775 () Bool)

(assert (=> b!362870 m!359775))

(push 1)

(assert (not b!362872))

(assert (not b!362869))

(assert (not b!362870))

(assert (not start!36248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

