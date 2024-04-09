; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36302 () Bool)

(assert start!36302)

(declare-fun b!363142 () Bool)

(declare-fun e!222371 () Bool)

(declare-datatypes ((array!20544 0))(
  ( (array!20545 (arr!9748 (Array (_ BitVec 32) (_ BitVec 64))) (size!10100 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20544)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363142 (= e!222371 (not (and (bvsge (size!10100 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167397 () array!20544)

(declare-fun arrayCountValidKeys!0 (array!20544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363142 (= (arrayCountValidKeys!0 lt!167397 (bvadd #b00000000000000000000000000000001 i!1478) (size!10100 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10100 a!4337)))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-datatypes ((Unit!11209 0))(
  ( (Unit!11210) )
))
(declare-fun lt!167398 () Unit!11209)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20544 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11209)

(assert (=> b!363142 (= lt!167398 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363142 (= (arrayCountValidKeys!0 lt!167397 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!363142 (= lt!167397 (array!20545 (store (arr!9748 a!4337) i!1478 k!2980) (size!10100 a!4337)))))

(declare-fun lt!167399 () Unit!11209)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20544 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11209)

(assert (=> b!363142 (= lt!167399 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363140 () Bool)

(declare-fun res!202452 () Bool)

(assert (=> b!363140 (=> (not res!202452) (not e!222371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363140 (= res!202452 (validKeyInArray!0 k!2980))))

(declare-fun b!363139 () Bool)

(declare-fun res!202450 () Bool)

(assert (=> b!363139 (=> (not res!202450) (not e!222371))))

(assert (=> b!363139 (= res!202450 (not (validKeyInArray!0 (select (arr!9748 a!4337) i!1478))))))

(declare-fun b!363141 () Bool)

(declare-fun res!202451 () Bool)

(assert (=> b!363141 (=> (not res!202451) (not e!222371))))

(assert (=> b!363141 (= res!202451 (bvslt (size!10100 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202453 () Bool)

(assert (=> start!36302 (=> (not res!202453) (not e!222371))))

(assert (=> start!36302 (= res!202453 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10100 a!4337))))))

(assert (=> start!36302 e!222371))

(assert (=> start!36302 true))

(declare-fun array_inv!7186 (array!20544) Bool)

(assert (=> start!36302 (array_inv!7186 a!4337)))

(assert (= (and start!36302 res!202453) b!363139))

(assert (= (and b!363139 res!202450) b!363140))

(assert (= (and b!363140 res!202452) b!363141))

(assert (= (and b!363141 res!202451) b!363142))

(declare-fun m!360103 () Bool)

(assert (=> b!363142 m!360103))

(declare-fun m!360105 () Bool)

(assert (=> b!363142 m!360105))

(declare-fun m!360107 () Bool)

(assert (=> b!363142 m!360107))

(declare-fun m!360109 () Bool)

(assert (=> b!363142 m!360109))

(declare-fun m!360111 () Bool)

(assert (=> b!363142 m!360111))

(declare-fun m!360113 () Bool)

(assert (=> b!363142 m!360113))

(declare-fun m!360115 () Bool)

(assert (=> b!363142 m!360115))

(declare-fun m!360117 () Bool)

(assert (=> b!363140 m!360117))

(declare-fun m!360119 () Bool)

(assert (=> b!363139 m!360119))

(assert (=> b!363139 m!360119))

(declare-fun m!360121 () Bool)

(assert (=> b!363139 m!360121))

(declare-fun m!360123 () Bool)

(assert (=> start!36302 m!360123))

(push 1)

(assert (not b!363139))

(assert (not b!363140))

