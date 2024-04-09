; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36270 () Bool)

(assert start!36270)

(declare-fun b!363004 () Bool)

(declare-fun e!222292 () Bool)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363004 (= e!222292 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1478) i!1478))))))

(declare-datatypes ((array!20533 0))(
  ( (array!20534 (arr!9744 (Array (_ BitVec 32) (_ BitVec 64))) (size!10096 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20533)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20533 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363004 (= (arrayCountValidKeys!0 (array!20534 (store (arr!9744 a!4337) i!1478 k!2980) (size!10096 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11201 0))(
  ( (Unit!11202) )
))
(declare-fun lt!167345 () Unit!11201)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20533 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11201)

(assert (=> b!363004 (= lt!167345 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!202384 () Bool)

(assert (=> start!36270 (=> (not res!202384) (not e!222292))))

(assert (=> start!36270 (= res!202384 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10096 a!4337))))))

(assert (=> start!36270 e!222292))

(assert (=> start!36270 true))

(declare-fun array_inv!7182 (array!20533) Bool)

(assert (=> start!36270 (array_inv!7182 a!4337)))

(declare-fun b!363002 () Bool)

(declare-fun res!202385 () Bool)

(assert (=> b!363002 (=> (not res!202385) (not e!222292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363002 (= res!202385 (validKeyInArray!0 k!2980))))

(declare-fun b!363003 () Bool)

(declare-fun res!202386 () Bool)

(assert (=> b!363003 (=> (not res!202386) (not e!222292))))

(assert (=> b!363003 (= res!202386 (bvslt (size!10096 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363001 () Bool)

(declare-fun res!202387 () Bool)

(assert (=> b!363001 (=> (not res!202387) (not e!222292))))

(assert (=> b!363001 (= res!202387 (not (validKeyInArray!0 (select (arr!9744 a!4337) i!1478))))))

(assert (= (and start!36270 res!202384) b!363001))

(assert (= (and b!363001 res!202387) b!363002))

(assert (= (and b!363002 res!202385) b!363003))

(assert (= (and b!363003 res!202386) b!363004))

(declare-fun m!359937 () Bool)

(assert (=> b!363004 m!359937))

(declare-fun m!359939 () Bool)

(assert (=> b!363004 m!359939))

(declare-fun m!359941 () Bool)

(assert (=> b!363004 m!359941))

(declare-fun m!359943 () Bool)

(assert (=> b!363004 m!359943))

(declare-fun m!359945 () Bool)

(assert (=> start!36270 m!359945))

(declare-fun m!359947 () Bool)

(assert (=> b!363002 m!359947))

(declare-fun m!359949 () Bool)

(assert (=> b!363001 m!359949))

(assert (=> b!363001 m!359949))

(declare-fun m!359951 () Bool)

(assert (=> b!363001 m!359951))

(push 1)

(assert (not b!363001))

(assert (not b!363002))

(assert (not start!36270))

(assert (not b!363004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

