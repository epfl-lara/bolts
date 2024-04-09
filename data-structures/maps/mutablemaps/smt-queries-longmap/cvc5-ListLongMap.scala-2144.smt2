; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36164 () Bool)

(assert start!36164)

(declare-fun b!362361 () Bool)

(declare-fun res!201805 () Bool)

(declare-fun e!221939 () Bool)

(assert (=> b!362361 (=> (not res!201805) (not e!221939))))

(declare-datatypes ((array!20442 0))(
  ( (array!20443 (arr!9700 (Array (_ BitVec 32) (_ BitVec 64))) (size!10052 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20442)

(assert (=> b!362361 (= res!201805 (bvslt (size!10052 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362362 () Bool)

(declare-fun res!201807 () Bool)

(assert (=> b!362362 (=> (not res!201807) (not e!221939))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362362 (= res!201807 (validKeyInArray!0 k!2980))))

(declare-fun b!362363 () Bool)

(declare-fun res!201804 () Bool)

(assert (=> b!362363 (=> (not res!201804) (not e!221939))))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362363 (= res!201804 (not (validKeyInArray!0 (select (arr!9700 a!4337) i!1478))))))

(declare-fun b!362364 () Bool)

(declare-fun e!221938 () Bool)

(assert (=> b!362364 (= e!221939 (not e!221938))))

(declare-fun res!201808 () Bool)

(assert (=> b!362364 (=> res!201808 e!221938)))

(assert (=> b!362364 (= res!201808 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-fun lt!166784 () array!20442)

(declare-fun arrayCountValidKeys!0 (array!20442 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362364 (= (arrayCountValidKeys!0 lt!166784 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362364 (= lt!166784 (array!20443 (store (arr!9700 a!4337) i!1478 k!2980) (size!10052 a!4337)))))

(declare-datatypes ((Unit!11125 0))(
  ( (Unit!11126) )
))
(declare-fun lt!166781 () Unit!11125)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11125)

(assert (=> b!362364 (= lt!166781 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362365 () Bool)

(assert (=> b!362365 (= e!221938 true)))

(declare-fun lt!166782 () (_ BitVec 32))

(assert (=> b!362365 (= lt!166782 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166783 () (_ BitVec 32))

(assert (=> b!362365 (= lt!166783 (arrayCountValidKeys!0 lt!166784 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!201806 () Bool)

(assert (=> start!36164 (=> (not res!201806) (not e!221939))))

(assert (=> start!36164 (= res!201806 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10052 a!4337))))))

(assert (=> start!36164 e!221939))

(assert (=> start!36164 true))

(declare-fun array_inv!7138 (array!20442) Bool)

(assert (=> start!36164 (array_inv!7138 a!4337)))

(assert (= (and start!36164 res!201806) b!362363))

(assert (= (and b!362363 res!201804) b!362362))

(assert (= (and b!362362 res!201807) b!362361))

(assert (= (and b!362361 res!201805) b!362364))

(assert (= (and b!362364 (not res!201808)) b!362365))

(declare-fun m!358975 () Bool)

(assert (=> b!362364 m!358975))

(declare-fun m!358977 () Bool)

(assert (=> b!362364 m!358977))

(declare-fun m!358979 () Bool)

(assert (=> b!362364 m!358979))

(declare-fun m!358981 () Bool)

(assert (=> b!362364 m!358981))

(declare-fun m!358983 () Bool)

(assert (=> start!36164 m!358983))

(declare-fun m!358985 () Bool)

(assert (=> b!362363 m!358985))

(assert (=> b!362363 m!358985))

(declare-fun m!358987 () Bool)

(assert (=> b!362363 m!358987))

(declare-fun m!358989 () Bool)

(assert (=> b!362365 m!358989))

(declare-fun m!358991 () Bool)

(assert (=> b!362365 m!358991))

(declare-fun m!358993 () Bool)

(assert (=> b!362362 m!358993))

(push 1)

(assert (not b!362363))

(assert (not b!362362))

(assert (not b!362365))

(assert (not b!362364))

(assert (not start!36164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

