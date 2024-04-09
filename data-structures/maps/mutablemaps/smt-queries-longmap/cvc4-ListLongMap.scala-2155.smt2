; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36252 () Bool)

(assert start!36252)

(declare-fun res!202276 () Bool)

(declare-fun e!222238 () Bool)

(assert (=> start!36252 (=> (not res!202276) (not e!222238))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20515 0))(
  ( (array!20516 (arr!9735 (Array (_ BitVec 32) (_ BitVec 64))) (size!10087 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20515)

(assert (=> start!36252 (= res!202276 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10087 a!4337))))))

(assert (=> start!36252 e!222238))

(assert (=> start!36252 true))

(declare-fun array_inv!7173 (array!20515) Bool)

(assert (=> start!36252 (array_inv!7173 a!4337)))

(declare-fun b!362895 () Bool)

(declare-fun res!202279 () Bool)

(assert (=> b!362895 (=> (not res!202279) (not e!222238))))

(assert (=> b!362895 (= res!202279 (bvslt (size!10087 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362896 () Bool)

(assert (=> b!362896 (= e!222238 (not true))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20515 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362896 (= (arrayCountValidKeys!0 (array!20516 (store (arr!9735 a!4337) i!1478 k!2980) (size!10087 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11183 0))(
  ( (Unit!11184) )
))
(declare-fun lt!167318 () Unit!11183)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11183)

(assert (=> b!362896 (= lt!167318 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362893 () Bool)

(declare-fun res!202278 () Bool)

(assert (=> b!362893 (=> (not res!202278) (not e!222238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362893 (= res!202278 (not (validKeyInArray!0 (select (arr!9735 a!4337) i!1478))))))

(declare-fun b!362894 () Bool)

(declare-fun res!202277 () Bool)

(assert (=> b!362894 (=> (not res!202277) (not e!222238))))

(assert (=> b!362894 (= res!202277 (validKeyInArray!0 k!2980))))

(assert (= (and start!36252 res!202276) b!362893))

(assert (= (and b!362893 res!202278) b!362894))

(assert (= (and b!362894 res!202277) b!362895))

(assert (= (and b!362895 res!202279) b!362896))

(declare-fun m!359793 () Bool)

(assert (=> start!36252 m!359793))

(declare-fun m!359795 () Bool)

(assert (=> b!362896 m!359795))

(declare-fun m!359797 () Bool)

(assert (=> b!362896 m!359797))

(declare-fun m!359799 () Bool)

(assert (=> b!362896 m!359799))

(declare-fun m!359801 () Bool)

(assert (=> b!362896 m!359801))

(declare-fun m!359803 () Bool)

(assert (=> b!362893 m!359803))

(assert (=> b!362893 m!359803))

(declare-fun m!359805 () Bool)

(assert (=> b!362893 m!359805))

(declare-fun m!359807 () Bool)

(assert (=> b!362894 m!359807))

(push 1)

(assert (not b!362893))

(assert (not b!362894))

(assert (not start!36252))

(assert (not b!362896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

