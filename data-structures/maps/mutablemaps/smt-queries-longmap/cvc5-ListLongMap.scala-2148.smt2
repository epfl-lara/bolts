; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36188 () Bool)

(assert start!36188)

(declare-fun b!362532 () Bool)

(declare-fun res!201974 () Bool)

(declare-fun e!222034 () Bool)

(assert (=> b!362532 (=> (not res!201974) (not e!222034))))

(declare-datatypes ((array!20466 0))(
  ( (array!20467 (arr!9712 (Array (_ BitVec 32) (_ BitVec 64))) (size!10064 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20466)

(assert (=> b!362532 (= res!201974 (bvslt (size!10064 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362530 () Bool)

(declare-fun res!201976 () Bool)

(assert (=> b!362530 (=> (not res!201976) (not e!222034))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362530 (= res!201976 (not (validKeyInArray!0 (select (arr!9712 a!4337) i!1478))))))

(declare-fun b!362531 () Bool)

(declare-fun res!201975 () Bool)

(assert (=> b!362531 (=> (not res!201975) (not e!222034))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362531 (= res!201975 (validKeyInArray!0 k!2980))))

(declare-fun res!201973 () Bool)

(assert (=> start!36188 (=> (not res!201973) (not e!222034))))

(assert (=> start!36188 (= res!201973 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10064 a!4337))))))

(assert (=> start!36188 e!222034))

(assert (=> start!36188 true))

(declare-fun array_inv!7150 (array!20466) Bool)

(assert (=> start!36188 (array_inv!7150 a!4337)))

(declare-fun b!362533 () Bool)

(assert (=> b!362533 (= e!222034 (not true))))

(declare-fun lt!166928 () (_ BitVec 32))

(declare-fun lt!166926 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20466 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362533 (= (bvadd lt!166928 lt!166926) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10064 a!4337)))))

(declare-datatypes ((Unit!11149 0))(
  ( (Unit!11150) )
))
(declare-fun lt!166924 () Unit!11149)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11149)

(assert (=> b!362533 (= lt!166924 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10064 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166925 () (_ BitVec 32))

(assert (=> b!362533 (= lt!166925 lt!166926)))

(assert (=> b!362533 (= lt!166926 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10064 a!4337)))))

(declare-fun lt!166922 () array!20466)

(assert (=> b!362533 (= lt!166925 (arrayCountValidKeys!0 lt!166922 (bvadd #b00000000000000000000000000000001 i!1478) (size!10064 a!4337)))))

(declare-fun lt!166927 () Unit!11149)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11149)

(assert (=> b!362533 (= lt!166927 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362533 (= (arrayCountValidKeys!0 lt!166922 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 lt!166928))))

(assert (=> b!362533 (= lt!166928 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362533 (= lt!166922 (array!20467 (store (arr!9712 a!4337) i!1478 k!2980) (size!10064 a!4337)))))

(declare-fun lt!166923 () Unit!11149)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11149)

(assert (=> b!362533 (= lt!166923 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36188 res!201973) b!362530))

(assert (= (and b!362530 res!201976) b!362531))

(assert (= (and b!362531 res!201975) b!362532))

(assert (= (and b!362532 res!201974) b!362533))

(declare-fun m!359221 () Bool)

(assert (=> b!362530 m!359221))

(assert (=> b!362530 m!359221))

(declare-fun m!359223 () Bool)

(assert (=> b!362530 m!359223))

(declare-fun m!359225 () Bool)

(assert (=> b!362531 m!359225))

(declare-fun m!359227 () Bool)

(assert (=> start!36188 m!359227))

(declare-fun m!359229 () Bool)

(assert (=> b!362533 m!359229))

(declare-fun m!359231 () Bool)

(assert (=> b!362533 m!359231))

(declare-fun m!359233 () Bool)

(assert (=> b!362533 m!359233))

(declare-fun m!359235 () Bool)

(assert (=> b!362533 m!359235))

(declare-fun m!359237 () Bool)

(assert (=> b!362533 m!359237))

(declare-fun m!359239 () Bool)

(assert (=> b!362533 m!359239))

(declare-fun m!359241 () Bool)

(assert (=> b!362533 m!359241))

(declare-fun m!359243 () Bool)

(assert (=> b!362533 m!359243))

(declare-fun m!359245 () Bool)

(assert (=> b!362533 m!359245))

(push 1)

(assert (not b!362533))

(assert (not b!362531))

(assert (not start!36188))

(assert (not b!362530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

