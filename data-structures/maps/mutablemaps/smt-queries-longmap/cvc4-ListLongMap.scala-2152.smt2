; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36216 () Bool)

(assert start!36216)

(declare-fun b!362733 () Bool)

(declare-fun e!222155 () Bool)

(assert (=> b!362733 (= e!222155 true)))

(declare-fun lt!167289 () (_ BitVec 32))

(declare-fun lt!167290 () (_ BitVec 32))

(declare-datatypes ((array!20494 0))(
  ( (array!20495 (arr!9726 (Array (_ BitVec 32) (_ BitVec 64))) (size!10078 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20494)

(declare-fun lt!167292 () array!20494)

(declare-fun arrayCountValidKeys!0 (array!20494 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362733 (= (bvadd lt!167290 lt!167289) (arrayCountValidKeys!0 lt!167292 #b00000000000000000000000000000000 (size!10078 a!4337)))))

(declare-datatypes ((Unit!11177 0))(
  ( (Unit!11178) )
))
(declare-fun lt!167293 () Unit!11177)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11177)

(assert (=> b!362733 (= lt!167293 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167292 #b00000000000000000000000000000000 (size!10078 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun res!202178 () Bool)

(declare-fun e!222153 () Bool)

(assert (=> start!36216 (=> (not res!202178) (not e!222153))))

(assert (=> start!36216 (= res!202178 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10078 a!4337))))))

(assert (=> start!36216 e!222153))

(assert (=> start!36216 true))

(declare-fun array_inv!7164 (array!20494) Bool)

(assert (=> start!36216 (array_inv!7164 a!4337)))

(declare-fun b!362734 () Bool)

(declare-fun res!202180 () Bool)

(assert (=> b!362734 (=> (not res!202180) (not e!222153))))

(assert (=> b!362734 (= res!202180 (bvslt (size!10078 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362735 () Bool)

(declare-fun res!202179 () Bool)

(assert (=> b!362735 (=> (not res!202179) (not e!222153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362735 (= res!202179 (not (validKeyInArray!0 (select (arr!9726 a!4337) i!1478))))))

(declare-fun b!362736 () Bool)

(declare-fun res!202177 () Bool)

(assert (=> b!362736 (=> (not res!202177) (not e!222153))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362736 (= res!202177 (validKeyInArray!0 k!2980))))

(declare-fun b!362737 () Bool)

(assert (=> b!362737 (= e!222153 (not e!222155))))

(declare-fun res!202176 () Bool)

(assert (=> b!362737 (=> res!202176 e!222155)))

(assert (=> b!362737 (= res!202176 (or (bvslt (size!10078 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167291 () (_ BitVec 32))

(declare-fun lt!167286 () (_ BitVec 32))

(assert (=> b!362737 (= (bvadd lt!167291 lt!167286) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10078 a!4337)))))

(declare-fun lt!167287 () Unit!11177)

(assert (=> b!362737 (= lt!167287 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10078 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362737 (= lt!167289 lt!167286)))

(assert (=> b!362737 (= lt!167286 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10078 a!4337)))))

(assert (=> b!362737 (= lt!167289 (arrayCountValidKeys!0 lt!167292 (bvadd #b00000000000000000000000000000001 i!1478) (size!10078 a!4337)))))

(declare-fun lt!167294 () Unit!11177)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20494 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11177)

(assert (=> b!362737 (= lt!167294 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362737 (= lt!167290 (bvadd #b00000000000000000000000000000001 lt!167291))))

(assert (=> b!362737 (= lt!167290 (arrayCountValidKeys!0 lt!167292 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362737 (= lt!167291 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362737 (= lt!167292 (array!20495 (store (arr!9726 a!4337) i!1478 k!2980) (size!10078 a!4337)))))

(declare-fun lt!167288 () Unit!11177)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20494 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11177)

(assert (=> b!362737 (= lt!167288 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36216 res!202178) b!362735))

(assert (= (and b!362735 res!202179) b!362736))

(assert (= (and b!362736 res!202177) b!362734))

(assert (= (and b!362734 res!202180) b!362737))

(assert (= (and b!362737 (not res!202176)) b!362733))

(declare-fun m!359629 () Bool)

(assert (=> b!362736 m!359629))

(declare-fun m!359631 () Bool)

(assert (=> b!362733 m!359631))

(declare-fun m!359633 () Bool)

(assert (=> b!362733 m!359633))

(declare-fun m!359635 () Bool)

(assert (=> b!362737 m!359635))

(declare-fun m!359637 () Bool)

(assert (=> b!362737 m!359637))

(declare-fun m!359639 () Bool)

(assert (=> b!362737 m!359639))

(declare-fun m!359641 () Bool)

(assert (=> b!362737 m!359641))

(declare-fun m!359643 () Bool)

(assert (=> b!362737 m!359643))

(declare-fun m!359645 () Bool)

(assert (=> b!362737 m!359645))

(declare-fun m!359647 () Bool)

(assert (=> b!362737 m!359647))

(declare-fun m!359649 () Bool)

(assert (=> b!362737 m!359649))

(declare-fun m!359651 () Bool)

(assert (=> b!362737 m!359651))

(declare-fun m!359653 () Bool)

(assert (=> b!362735 m!359653))

(assert (=> b!362735 m!359653))

(declare-fun m!359655 () Bool)

(assert (=> b!362735 m!359655))

(declare-fun m!359657 () Bool)

(assert (=> start!36216 m!359657))

(push 1)

(assert (not b!362733))

(assert (not b!362737))

(assert (not start!36216))

(assert (not b!362735))

(assert (not b!362736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

