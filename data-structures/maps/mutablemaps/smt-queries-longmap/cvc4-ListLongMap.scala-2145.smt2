; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36174 () Bool)

(assert start!36174)

(declare-fun b!362436 () Bool)

(declare-fun e!221983 () Bool)

(assert (=> b!362436 (= e!221983 true)))

(declare-fun lt!166842 () (_ BitVec 32))

(declare-datatypes ((array!20452 0))(
  ( (array!20453 (arr!9705 (Array (_ BitVec 32) (_ BitVec 64))) (size!10057 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20452)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20452 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362436 (= lt!166842 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166843 () (_ BitVec 32))

(declare-fun lt!166841 () array!20452)

(assert (=> b!362436 (= lt!166843 (arrayCountValidKeys!0 lt!166841 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362437 () Bool)

(declare-fun res!201880 () Bool)

(declare-fun e!221982 () Bool)

(assert (=> b!362437 (=> (not res!201880) (not e!221982))))

(assert (=> b!362437 (= res!201880 (bvslt (size!10057 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362438 () Bool)

(declare-fun res!201881 () Bool)

(assert (=> b!362438 (=> (not res!201881) (not e!221982))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362438 (= res!201881 (validKeyInArray!0 k!2980))))

(declare-fun b!362439 () Bool)

(declare-fun res!201882 () Bool)

(assert (=> b!362439 (=> (not res!201882) (not e!221982))))

(assert (=> b!362439 (= res!201882 (not (validKeyInArray!0 (select (arr!9705 a!4337) i!1478))))))

(declare-fun res!201883 () Bool)

(assert (=> start!36174 (=> (not res!201883) (not e!221982))))

(assert (=> start!36174 (= res!201883 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10057 a!4337))))))

(assert (=> start!36174 e!221982))

(assert (=> start!36174 true))

(declare-fun array_inv!7143 (array!20452) Bool)

(assert (=> start!36174 (array_inv!7143 a!4337)))

(declare-fun b!362440 () Bool)

(assert (=> b!362440 (= e!221982 (not e!221983))))

(declare-fun res!201879 () Bool)

(assert (=> b!362440 (=> res!201879 e!221983)))

(assert (=> b!362440 (= res!201879 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362440 (= (arrayCountValidKeys!0 lt!166841 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362440 (= lt!166841 (array!20453 (store (arr!9705 a!4337) i!1478 k!2980) (size!10057 a!4337)))))

(declare-datatypes ((Unit!11135 0))(
  ( (Unit!11136) )
))
(declare-fun lt!166844 () Unit!11135)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11135)

(assert (=> b!362440 (= lt!166844 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36174 res!201883) b!362439))

(assert (= (and b!362439 res!201882) b!362438))

(assert (= (and b!362438 res!201881) b!362437))

(assert (= (and b!362437 res!201880) b!362440))

(assert (= (and b!362440 (not res!201879)) b!362436))

(declare-fun m!359075 () Bool)

(assert (=> b!362436 m!359075))

(declare-fun m!359077 () Bool)

(assert (=> b!362436 m!359077))

(declare-fun m!359079 () Bool)

(assert (=> start!36174 m!359079))

(declare-fun m!359081 () Bool)

(assert (=> b!362439 m!359081))

(assert (=> b!362439 m!359081))

(declare-fun m!359083 () Bool)

(assert (=> b!362439 m!359083))

(declare-fun m!359085 () Bool)

(assert (=> b!362438 m!359085))

(declare-fun m!359087 () Bool)

(assert (=> b!362440 m!359087))

(declare-fun m!359089 () Bool)

(assert (=> b!362440 m!359089))

(declare-fun m!359091 () Bool)

(assert (=> b!362440 m!359091))

(declare-fun m!359093 () Bool)

(assert (=> b!362440 m!359093))

(push 1)

(assert (not b!362440))

(assert (not start!36174))

(assert (not b!362438))

(assert (not b!362439))

(assert (not b!362436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

