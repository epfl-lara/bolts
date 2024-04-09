; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36152 () Bool)

(assert start!36152)

(declare-fun b!362271 () Bool)

(declare-fun res!201714 () Bool)

(declare-fun e!221883 () Bool)

(assert (=> b!362271 (=> (not res!201714) (not e!221883))))

(declare-datatypes ((array!20430 0))(
  ( (array!20431 (arr!9694 (Array (_ BitVec 32) (_ BitVec 64))) (size!10046 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20430)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362271 (= res!201714 (not (validKeyInArray!0 (select (arr!9694 a!4337) i!1478))))))

(declare-fun b!362272 () Bool)

(declare-fun e!221885 () Bool)

(assert (=> b!362272 (= e!221885 true)))

(declare-fun lt!166712 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20430 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362272 (= lt!166712 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166710 () (_ BitVec 32))

(declare-fun lt!166711 () array!20430)

(assert (=> b!362272 (= lt!166710 (arrayCountValidKeys!0 lt!166711 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362273 () Bool)

(declare-fun res!201718 () Bool)

(assert (=> b!362273 (=> (not res!201718) (not e!221883))))

(assert (=> b!362273 (= res!201718 (bvslt (size!10046 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!201717 () Bool)

(assert (=> start!36152 (=> (not res!201717) (not e!221883))))

(assert (=> start!36152 (= res!201717 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10046 a!4337))))))

(assert (=> start!36152 e!221883))

(assert (=> start!36152 true))

(declare-fun array_inv!7132 (array!20430) Bool)

(assert (=> start!36152 (array_inv!7132 a!4337)))

(declare-fun b!362274 () Bool)

(declare-fun res!201715 () Bool)

(assert (=> b!362274 (=> (not res!201715) (not e!221883))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362274 (= res!201715 (validKeyInArray!0 k!2980))))

(declare-fun b!362275 () Bool)

(assert (=> b!362275 (= e!221883 (not e!221885))))

(declare-fun res!201716 () Bool)

(assert (=> b!362275 (=> res!201716 e!221885)))

(assert (=> b!362275 (= res!201716 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362275 (= (arrayCountValidKeys!0 lt!166711 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362275 (= lt!166711 (array!20431 (store (arr!9694 a!4337) i!1478 k!2980) (size!10046 a!4337)))))

(declare-datatypes ((Unit!11113 0))(
  ( (Unit!11114) )
))
(declare-fun lt!166709 () Unit!11113)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11113)

(assert (=> b!362275 (= lt!166709 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36152 res!201717) b!362271))

(assert (= (and b!362271 res!201714) b!362274))

(assert (= (and b!362274 res!201715) b!362273))

(assert (= (and b!362273 res!201718) b!362275))

(assert (= (and b!362275 (not res!201716)) b!362272))

(declare-fun m!358855 () Bool)

(assert (=> b!362274 m!358855))

(declare-fun m!358857 () Bool)

(assert (=> b!362271 m!358857))

(assert (=> b!362271 m!358857))

(declare-fun m!358859 () Bool)

(assert (=> b!362271 m!358859))

(declare-fun m!358861 () Bool)

(assert (=> start!36152 m!358861))

(declare-fun m!358863 () Bool)

(assert (=> b!362272 m!358863))

(declare-fun m!358865 () Bool)

(assert (=> b!362272 m!358865))

(declare-fun m!358867 () Bool)

(assert (=> b!362275 m!358867))

(declare-fun m!358869 () Bool)

(assert (=> b!362275 m!358869))

(declare-fun m!358871 () Bool)

(assert (=> b!362275 m!358871))

(declare-fun m!358873 () Bool)

(assert (=> b!362275 m!358873))

(push 1)

(assert (not start!36152))

(assert (not b!362275))

(assert (not b!362274))

(assert (not b!362271))

(assert (not b!362272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

