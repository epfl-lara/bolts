; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36156 () Bool)

(assert start!36156)

(declare-fun res!201745 () Bool)

(declare-fun e!221901 () Bool)

(assert (=> start!36156 (=> (not res!201745) (not e!221901))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20434 0))(
  ( (array!20435 (arr!9696 (Array (_ BitVec 32) (_ BitVec 64))) (size!10048 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20434)

(assert (=> start!36156 (= res!201745 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10048 a!4337))))))

(assert (=> start!36156 e!221901))

(assert (=> start!36156 true))

(declare-fun array_inv!7134 (array!20434) Bool)

(assert (=> start!36156 (array_inv!7134 a!4337)))

(declare-fun b!362301 () Bool)

(declare-fun e!221903 () Bool)

(assert (=> b!362301 (= e!221903 true)))

(declare-fun lt!166736 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362301 (= lt!166736 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166735 () (_ BitVec 32))

(declare-fun lt!166733 () array!20434)

(assert (=> b!362301 (= lt!166735 (arrayCountValidKeys!0 lt!166733 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362302 () Bool)

(declare-fun res!201747 () Bool)

(assert (=> b!362302 (=> (not res!201747) (not e!221901))))

(assert (=> b!362302 (= res!201747 (bvslt (size!10048 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362303 () Bool)

(declare-fun res!201746 () Bool)

(assert (=> b!362303 (=> (not res!201746) (not e!221901))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362303 (= res!201746 (validKeyInArray!0 k!2980))))

(declare-fun b!362304 () Bool)

(declare-fun res!201744 () Bool)

(assert (=> b!362304 (=> (not res!201744) (not e!221901))))

(assert (=> b!362304 (= res!201744 (not (validKeyInArray!0 (select (arr!9696 a!4337) i!1478))))))

(declare-fun b!362305 () Bool)

(assert (=> b!362305 (= e!221901 (not e!221903))))

(declare-fun res!201748 () Bool)

(assert (=> b!362305 (=> res!201748 e!221903)))

(assert (=> b!362305 (= res!201748 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362305 (= (arrayCountValidKeys!0 lt!166733 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362305 (= lt!166733 (array!20435 (store (arr!9696 a!4337) i!1478 k!2980) (size!10048 a!4337)))))

(declare-datatypes ((Unit!11117 0))(
  ( (Unit!11118) )
))
(declare-fun lt!166734 () Unit!11117)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11117)

(assert (=> b!362305 (= lt!166734 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36156 res!201745) b!362304))

(assert (= (and b!362304 res!201744) b!362303))

(assert (= (and b!362303 res!201746) b!362302))

(assert (= (and b!362302 res!201747) b!362305))

(assert (= (and b!362305 (not res!201748)) b!362301))

(declare-fun m!358895 () Bool)

(assert (=> b!362301 m!358895))

(declare-fun m!358897 () Bool)

(assert (=> b!362301 m!358897))

(declare-fun m!358899 () Bool)

(assert (=> start!36156 m!358899))

(declare-fun m!358901 () Bool)

(assert (=> b!362305 m!358901))

(declare-fun m!358903 () Bool)

(assert (=> b!362305 m!358903))

(declare-fun m!358905 () Bool)

(assert (=> b!362305 m!358905))

(declare-fun m!358907 () Bool)

(assert (=> b!362305 m!358907))

(declare-fun m!358909 () Bool)

(assert (=> b!362303 m!358909))

(declare-fun m!358911 () Bool)

(assert (=> b!362304 m!358911))

(assert (=> b!362304 m!358911))

(declare-fun m!358913 () Bool)

(assert (=> b!362304 m!358913))

(push 1)

(assert (not b!362301))

(assert (not b!362303))

(assert (not b!362304))

(assert (not start!36156))

(assert (not b!362305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

