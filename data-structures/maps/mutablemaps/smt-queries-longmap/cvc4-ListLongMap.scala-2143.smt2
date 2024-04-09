; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36162 () Bool)

(assert start!36162)

(declare-fun res!201793 () Bool)

(declare-fun e!221930 () Bool)

(assert (=> start!36162 (=> (not res!201793) (not e!221930))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20440 0))(
  ( (array!20441 (arr!9699 (Array (_ BitVec 32) (_ BitVec 64))) (size!10051 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20440)

(assert (=> start!36162 (= res!201793 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10051 a!4337))))))

(assert (=> start!36162 e!221930))

(assert (=> start!36162 true))

(declare-fun array_inv!7137 (array!20440) Bool)

(assert (=> start!36162 (array_inv!7137 a!4337)))

(declare-fun b!362346 () Bool)

(declare-fun res!201789 () Bool)

(assert (=> b!362346 (=> (not res!201789) (not e!221930))))

(assert (=> b!362346 (= res!201789 (bvslt (size!10051 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362347 () Bool)

(declare-fun res!201790 () Bool)

(assert (=> b!362347 (=> (not res!201790) (not e!221930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362347 (= res!201790 (not (validKeyInArray!0 (select (arr!9699 a!4337) i!1478))))))

(declare-fun b!362348 () Bool)

(declare-fun e!221928 () Bool)

(assert (=> b!362348 (= e!221928 true)))

(declare-fun lt!166769 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20440 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362348 (= lt!166769 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166770 () (_ BitVec 32))

(declare-fun lt!166771 () array!20440)

(assert (=> b!362348 (= lt!166770 (arrayCountValidKeys!0 lt!166771 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362349 () Bool)

(assert (=> b!362349 (= e!221930 (not e!221928))))

(declare-fun res!201792 () Bool)

(assert (=> b!362349 (=> res!201792 e!221928)))

(assert (=> b!362349 (= res!201792 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362349 (= (arrayCountValidKeys!0 lt!166771 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362349 (= lt!166771 (array!20441 (store (arr!9699 a!4337) i!1478 k!2980) (size!10051 a!4337)))))

(declare-datatypes ((Unit!11123 0))(
  ( (Unit!11124) )
))
(declare-fun lt!166772 () Unit!11123)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11123)

(assert (=> b!362349 (= lt!166772 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362350 () Bool)

(declare-fun res!201791 () Bool)

(assert (=> b!362350 (=> (not res!201791) (not e!221930))))

(assert (=> b!362350 (= res!201791 (validKeyInArray!0 k!2980))))

(assert (= (and start!36162 res!201793) b!362347))

(assert (= (and b!362347 res!201790) b!362350))

(assert (= (and b!362350 res!201791) b!362346))

(assert (= (and b!362346 res!201789) b!362349))

(assert (= (and b!362349 (not res!201792)) b!362348))

(declare-fun m!358955 () Bool)

(assert (=> b!362349 m!358955))

(declare-fun m!358957 () Bool)

(assert (=> b!362349 m!358957))

(declare-fun m!358959 () Bool)

(assert (=> b!362349 m!358959))

(declare-fun m!358961 () Bool)

(assert (=> b!362349 m!358961))

(declare-fun m!358963 () Bool)

(assert (=> start!36162 m!358963))

(declare-fun m!358965 () Bool)

(assert (=> b!362350 m!358965))

(declare-fun m!358967 () Bool)

(assert (=> b!362347 m!358967))

(assert (=> b!362347 m!358967))

(declare-fun m!358969 () Bool)

(assert (=> b!362347 m!358969))

(declare-fun m!358971 () Bool)

(assert (=> b!362348 m!358971))

(declare-fun m!358973 () Bool)

(assert (=> b!362348 m!358973))

(push 1)

(assert (not start!36162))

(assert (not b!362347))

(assert (not b!362350))

(assert (not b!362348))

(assert (not b!362349))

(check-sat)

(pop 1)

