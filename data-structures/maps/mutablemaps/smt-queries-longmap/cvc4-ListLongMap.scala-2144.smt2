; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36168 () Bool)

(assert start!36168)

(declare-fun b!362391 () Bool)

(declare-fun e!221955 () Bool)

(assert (=> b!362391 (= e!221955 true)))

(declare-fun lt!166805 () (_ BitVec 32))

(declare-datatypes ((array!20446 0))(
  ( (array!20447 (arr!9702 (Array (_ BitVec 32) (_ BitVec 64))) (size!10054 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20446)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20446 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362391 (= lt!166805 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166807 () (_ BitVec 32))

(declare-fun lt!166808 () array!20446)

(assert (=> b!362391 (= lt!166807 (arrayCountValidKeys!0 lt!166808 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362392 () Bool)

(declare-fun res!201836 () Bool)

(declare-fun e!221957 () Bool)

(assert (=> b!362392 (=> (not res!201836) (not e!221957))))

(assert (=> b!362392 (= res!201836 (bvslt (size!10054 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362393 () Bool)

(declare-fun res!201838 () Bool)

(assert (=> b!362393 (=> (not res!201838) (not e!221957))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362393 (= res!201838 (validKeyInArray!0 k!2980))))

(declare-fun b!362394 () Bool)

(declare-fun res!201835 () Bool)

(assert (=> b!362394 (=> (not res!201835) (not e!221957))))

(assert (=> b!362394 (= res!201835 (not (validKeyInArray!0 (select (arr!9702 a!4337) i!1478))))))

(declare-fun b!362395 () Bool)

(assert (=> b!362395 (= e!221957 (not e!221955))))

(declare-fun res!201834 () Bool)

(assert (=> b!362395 (=> res!201834 e!221955)))

(assert (=> b!362395 (= res!201834 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362395 (= (arrayCountValidKeys!0 lt!166808 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362395 (= lt!166808 (array!20447 (store (arr!9702 a!4337) i!1478 k!2980) (size!10054 a!4337)))))

(declare-datatypes ((Unit!11129 0))(
  ( (Unit!11130) )
))
(declare-fun lt!166806 () Unit!11129)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11129)

(assert (=> b!362395 (= lt!166806 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!201837 () Bool)

(assert (=> start!36168 (=> (not res!201837) (not e!221957))))

(assert (=> start!36168 (= res!201837 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10054 a!4337))))))

(assert (=> start!36168 e!221957))

(assert (=> start!36168 true))

(declare-fun array_inv!7140 (array!20446) Bool)

(assert (=> start!36168 (array_inv!7140 a!4337)))

(assert (= (and start!36168 res!201837) b!362394))

(assert (= (and b!362394 res!201835) b!362393))

(assert (= (and b!362393 res!201838) b!362392))

(assert (= (and b!362392 res!201836) b!362395))

(assert (= (and b!362395 (not res!201834)) b!362391))

(declare-fun m!359015 () Bool)

(assert (=> b!362394 m!359015))

(assert (=> b!362394 m!359015))

(declare-fun m!359017 () Bool)

(assert (=> b!362394 m!359017))

(declare-fun m!359019 () Bool)

(assert (=> start!36168 m!359019))

(declare-fun m!359021 () Bool)

(assert (=> b!362393 m!359021))

(declare-fun m!359023 () Bool)

(assert (=> b!362391 m!359023))

(declare-fun m!359025 () Bool)

(assert (=> b!362391 m!359025))

(declare-fun m!359027 () Bool)

(assert (=> b!362395 m!359027))

(declare-fun m!359029 () Bool)

(assert (=> b!362395 m!359029))

(declare-fun m!359031 () Bool)

(assert (=> b!362395 m!359031))

(declare-fun m!359033 () Bool)

(assert (=> b!362395 m!359033))

(push 1)

(assert (not b!362393))

(assert (not b!362395))

(assert (not start!36168))

(assert (not b!362394))

(assert (not b!362391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

