; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36262 () Bool)

(assert start!36262)

(declare-fun b!362953 () Bool)

(declare-fun res!202338 () Bool)

(declare-fun e!222268 () Bool)

(assert (=> b!362953 (=> (not res!202338) (not e!222268))))

(declare-datatypes ((array!20525 0))(
  ( (array!20526 (arr!9740 (Array (_ BitVec 32) (_ BitVec 64))) (size!10092 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20525)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362953 (= res!202338 (not (validKeyInArray!0 (select (arr!9740 a!4337) i!1478))))))

(declare-fun b!362955 () Bool)

(declare-fun res!202337 () Bool)

(assert (=> b!362955 (=> (not res!202337) (not e!222268))))

(assert (=> b!362955 (= res!202337 (bvslt (size!10092 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362954 () Bool)

(declare-fun res!202339 () Bool)

(assert (=> b!362954 (=> (not res!202339) (not e!222268))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362954 (= res!202339 (validKeyInArray!0 k0!2980))))

(declare-fun b!362956 () Bool)

(assert (=> b!362956 (= e!222268 (not true))))

(declare-fun arrayCountValidKeys!0 (array!20525 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362956 (= (arrayCountValidKeys!0 (array!20526 (store (arr!9740 a!4337) i!1478 k0!2980) (size!10092 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11193 0))(
  ( (Unit!11194) )
))
(declare-fun lt!167333 () Unit!11193)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11193)

(assert (=> b!362956 (= lt!167333 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun res!202336 () Bool)

(assert (=> start!36262 (=> (not res!202336) (not e!222268))))

(assert (=> start!36262 (= res!202336 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10092 a!4337))))))

(assert (=> start!36262 e!222268))

(assert (=> start!36262 true))

(declare-fun array_inv!7178 (array!20525) Bool)

(assert (=> start!36262 (array_inv!7178 a!4337)))

(assert (= (and start!36262 res!202336) b!362953))

(assert (= (and b!362953 res!202338) b!362954))

(assert (= (and b!362954 res!202339) b!362955))

(assert (= (and b!362955 res!202337) b!362956))

(declare-fun m!359873 () Bool)

(assert (=> b!362953 m!359873))

(assert (=> b!362953 m!359873))

(declare-fun m!359875 () Bool)

(assert (=> b!362953 m!359875))

(declare-fun m!359877 () Bool)

(assert (=> b!362954 m!359877))

(declare-fun m!359879 () Bool)

(assert (=> b!362956 m!359879))

(declare-fun m!359881 () Bool)

(assert (=> b!362956 m!359881))

(declare-fun m!359883 () Bool)

(assert (=> b!362956 m!359883))

(declare-fun m!359885 () Bool)

(assert (=> b!362956 m!359885))

(declare-fun m!359887 () Bool)

(assert (=> start!36262 m!359887))

(check-sat (not b!362954) (not start!36262) (not b!362956) (not b!362953))
