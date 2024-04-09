; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36266 () Bool)

(assert start!36266)

(declare-fun b!362980 () Bool)

(declare-fun e!222280 () Bool)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362980 (= e!222280 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1478) i!1478))))))

(declare-datatypes ((array!20529 0))(
  ( (array!20530 (arr!9742 (Array (_ BitVec 32) (_ BitVec 64))) (size!10094 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20529)

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20529 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362980 (= (arrayCountValidKeys!0 (array!20530 (store (arr!9742 a!4337) i!1478 k!2980) (size!10094 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11197 0))(
  ( (Unit!11198) )
))
(declare-fun lt!167339 () Unit!11197)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20529 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11197)

(assert (=> b!362980 (= lt!167339 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362978 () Bool)

(declare-fun res!202361 () Bool)

(assert (=> b!362978 (=> (not res!202361) (not e!222280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362978 (= res!202361 (validKeyInArray!0 k!2980))))

(declare-fun b!362979 () Bool)

(declare-fun res!202360 () Bool)

(assert (=> b!362979 (=> (not res!202360) (not e!222280))))

(assert (=> b!362979 (= res!202360 (bvslt (size!10094 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202362 () Bool)

(assert (=> start!36266 (=> (not res!202362) (not e!222280))))

(assert (=> start!36266 (= res!202362 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10094 a!4337))))))

(assert (=> start!36266 e!222280))

(assert (=> start!36266 true))

(declare-fun array_inv!7180 (array!20529) Bool)

(assert (=> start!36266 (array_inv!7180 a!4337)))

(declare-fun b!362977 () Bool)

(declare-fun res!202363 () Bool)

(assert (=> b!362977 (=> (not res!202363) (not e!222280))))

(assert (=> b!362977 (= res!202363 (not (validKeyInArray!0 (select (arr!9742 a!4337) i!1478))))))

(assert (= (and start!36266 res!202362) b!362977))

(assert (= (and b!362977 res!202363) b!362978))

(assert (= (and b!362978 res!202361) b!362979))

(assert (= (and b!362979 res!202360) b!362980))

(declare-fun m!359905 () Bool)

(assert (=> b!362980 m!359905))

(declare-fun m!359907 () Bool)

(assert (=> b!362980 m!359907))

(declare-fun m!359909 () Bool)

(assert (=> b!362980 m!359909))

(declare-fun m!359911 () Bool)

(assert (=> b!362980 m!359911))

(declare-fun m!359913 () Bool)

(assert (=> b!362978 m!359913))

(declare-fun m!359915 () Bool)

(assert (=> start!36266 m!359915))

(declare-fun m!359917 () Bool)

(assert (=> b!362977 m!359917))

(assert (=> b!362977 m!359917))

(declare-fun m!359919 () Bool)

(assert (=> b!362977 m!359919))

(push 1)

(assert (not start!36266))

(assert (not b!362980))

(assert (not b!362977))

(assert (not b!362978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

