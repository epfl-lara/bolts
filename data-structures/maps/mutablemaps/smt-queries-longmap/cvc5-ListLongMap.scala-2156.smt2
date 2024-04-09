; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36254 () Bool)

(assert start!36254)

(declare-fun res!202290 () Bool)

(declare-fun e!222244 () Bool)

(assert (=> start!36254 (=> (not res!202290) (not e!222244))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20517 0))(
  ( (array!20518 (arr!9736 (Array (_ BitVec 32) (_ BitVec 64))) (size!10088 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20517)

(assert (=> start!36254 (= res!202290 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10088 a!4337))))))

(assert (=> start!36254 e!222244))

(assert (=> start!36254 true))

(declare-fun array_inv!7174 (array!20517) Bool)

(assert (=> start!36254 (array_inv!7174 a!4337)))

(declare-fun b!362905 () Bool)

(declare-fun res!202288 () Bool)

(assert (=> b!362905 (=> (not res!202288) (not e!222244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362905 (= res!202288 (not (validKeyInArray!0 (select (arr!9736 a!4337) i!1478))))))

(declare-fun b!362908 () Bool)

(assert (=> b!362908 (= e!222244 (not true))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20517 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362908 (= (arrayCountValidKeys!0 (array!20518 (store (arr!9736 a!4337) i!1478 k!2980) (size!10088 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11185 0))(
  ( (Unit!11186) )
))
(declare-fun lt!167321 () Unit!11185)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11185)

(assert (=> b!362908 (= lt!167321 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362907 () Bool)

(declare-fun res!202291 () Bool)

(assert (=> b!362907 (=> (not res!202291) (not e!222244))))

(assert (=> b!362907 (= res!202291 (bvslt (size!10088 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362906 () Bool)

(declare-fun res!202289 () Bool)

(assert (=> b!362906 (=> (not res!202289) (not e!222244))))

(assert (=> b!362906 (= res!202289 (validKeyInArray!0 k!2980))))

(assert (= (and start!36254 res!202290) b!362905))

(assert (= (and b!362905 res!202288) b!362906))

(assert (= (and b!362906 res!202289) b!362907))

(assert (= (and b!362907 res!202291) b!362908))

(declare-fun m!359809 () Bool)

(assert (=> start!36254 m!359809))

(declare-fun m!359811 () Bool)

(assert (=> b!362905 m!359811))

(assert (=> b!362905 m!359811))

(declare-fun m!359813 () Bool)

(assert (=> b!362905 m!359813))

(declare-fun m!359815 () Bool)

(assert (=> b!362908 m!359815))

(declare-fun m!359817 () Bool)

(assert (=> b!362908 m!359817))

(declare-fun m!359819 () Bool)

(assert (=> b!362908 m!359819))

(declare-fun m!359821 () Bool)

(assert (=> b!362908 m!359821))

(declare-fun m!359823 () Bool)

(assert (=> b!362906 m!359823))

(push 1)

(assert (not b!362905))

(assert (not b!362906))

(assert (not start!36254))

(assert (not b!362908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

