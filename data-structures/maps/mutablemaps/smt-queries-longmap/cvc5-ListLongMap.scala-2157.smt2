; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36260 () Bool)

(assert start!36260)

(declare-fun b!362941 () Bool)

(declare-fun res!202326 () Bool)

(declare-fun e!222263 () Bool)

(assert (=> b!362941 (=> (not res!202326) (not e!222263))))

(declare-datatypes ((array!20523 0))(
  ( (array!20524 (arr!9739 (Array (_ BitVec 32) (_ BitVec 64))) (size!10091 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20523)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362941 (= res!202326 (not (validKeyInArray!0 (select (arr!9739 a!4337) i!1478))))))

(declare-fun b!362942 () Bool)

(declare-fun res!202327 () Bool)

(assert (=> b!362942 (=> (not res!202327) (not e!222263))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362942 (= res!202327 (validKeyInArray!0 k!2980))))

(declare-fun b!362944 () Bool)

(assert (=> b!362944 (= e!222263 (not true))))

(declare-fun arrayCountValidKeys!0 (array!20523 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362944 (= (arrayCountValidKeys!0 (array!20524 (store (arr!9739 a!4337) i!1478 k!2980) (size!10091 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11191 0))(
  ( (Unit!11192) )
))
(declare-fun lt!167330 () Unit!11191)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11191)

(assert (=> b!362944 (= lt!167330 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202324 () Bool)

(assert (=> start!36260 (=> (not res!202324) (not e!222263))))

(assert (=> start!36260 (= res!202324 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10091 a!4337))))))

(assert (=> start!36260 e!222263))

(assert (=> start!36260 true))

(declare-fun array_inv!7177 (array!20523) Bool)

(assert (=> start!36260 (array_inv!7177 a!4337)))

(declare-fun b!362943 () Bool)

(declare-fun res!202325 () Bool)

(assert (=> b!362943 (=> (not res!202325) (not e!222263))))

(assert (=> b!362943 (= res!202325 (bvslt (size!10091 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36260 res!202324) b!362941))

(assert (= (and b!362941 res!202326) b!362942))

(assert (= (and b!362942 res!202327) b!362943))

(assert (= (and b!362943 res!202325) b!362944))

(declare-fun m!359857 () Bool)

(assert (=> b!362941 m!359857))

(assert (=> b!362941 m!359857))

(declare-fun m!359859 () Bool)

(assert (=> b!362941 m!359859))

(declare-fun m!359861 () Bool)

(assert (=> b!362942 m!359861))

(declare-fun m!359863 () Bool)

(assert (=> b!362944 m!359863))

(declare-fun m!359865 () Bool)

(assert (=> b!362944 m!359865))

(declare-fun m!359867 () Bool)

(assert (=> b!362944 m!359867))

(declare-fun m!359869 () Bool)

(assert (=> b!362944 m!359869))

(declare-fun m!359871 () Bool)

(assert (=> start!36260 m!359871))

(push 1)

(assert (not b!362942))

(assert (not start!36260))

(assert (not b!362944))

(assert (not b!362941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

