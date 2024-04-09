; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117146 () Bool)

(assert start!117146)

(declare-fun b!1378332 () Bool)

(declare-fun res!920976 () Bool)

(declare-fun e!780842 () Bool)

(assert (=> b!1378332 (=> (not res!920976) (not e!780842))))

(declare-datatypes ((array!93679 0))(
  ( (array!93680 (arr!45235 (Array (_ BitVec 32) (_ BitVec 64))) (size!45786 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93679)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378332 (= res!920976 (and (bvslt (size!45786 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45786 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378333 () Bool)

(declare-fun e!780840 () Bool)

(assert (=> b!1378333 (= e!780842 e!780840)))

(declare-fun res!920979 () Bool)

(assert (=> b!1378333 (=> (not res!920979) (not e!780840))))

(declare-fun lt!606507 () (_ BitVec 32))

(declare-fun lt!606506 () (_ BitVec 32))

(assert (=> b!1378333 (= res!920979 (and (= lt!606507 (bvsub lt!606506 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606508 () array!93679)

(declare-fun arrayCountValidKeys!0 (array!93679 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378333 (= lt!606507 (arrayCountValidKeys!0 lt!606508 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378333 (= lt!606506 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378333 (= lt!606508 (array!93680 (store (arr!45235 a!4094) i!1451 k!2953) (size!45786 a!4094)))))

(declare-fun b!1378334 () Bool)

(declare-fun res!920975 () Bool)

(assert (=> b!1378334 (=> (not res!920975) (not e!780842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378334 (= res!920975 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378335 () Bool)

(assert (=> b!1378335 (= e!780840 (not true))))

(assert (=> b!1378335 (= (bvadd (arrayCountValidKeys!0 lt!606508 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606507) (arrayCountValidKeys!0 lt!606508 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45731 0))(
  ( (Unit!45732) )
))
(declare-fun lt!606505 () Unit!45731)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45731)

(assert (=> b!1378335 (= lt!606505 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606508 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378335 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606506) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606504 () Unit!45731)

(assert (=> b!1378335 (= lt!606504 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378336 () Bool)

(declare-fun res!920977 () Bool)

(assert (=> b!1378336 (=> (not res!920977) (not e!780842))))

(assert (=> b!1378336 (= res!920977 (validKeyInArray!0 (select (arr!45235 a!4094) i!1451)))))

(declare-fun res!920978 () Bool)

(assert (=> start!117146 (=> (not res!920978) (not e!780842))))

(assert (=> start!117146 (= res!920978 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45786 a!4094))))))

(assert (=> start!117146 e!780842))

(assert (=> start!117146 true))

(declare-fun array_inv!34180 (array!93679) Bool)

(assert (=> start!117146 (array_inv!34180 a!4094)))

(assert (= (and start!117146 res!920978) b!1378336))

(assert (= (and b!1378336 res!920977) b!1378334))

(assert (= (and b!1378334 res!920975) b!1378332))

(assert (= (and b!1378332 res!920976) b!1378333))

(assert (= (and b!1378333 res!920979) b!1378335))

(declare-fun m!1263009 () Bool)

(assert (=> start!117146 m!1263009))

(declare-fun m!1263011 () Bool)

(assert (=> b!1378335 m!1263011))

(declare-fun m!1263013 () Bool)

(assert (=> b!1378335 m!1263013))

(declare-fun m!1263015 () Bool)

(assert (=> b!1378335 m!1263015))

(declare-fun m!1263017 () Bool)

(assert (=> b!1378335 m!1263017))

(declare-fun m!1263019 () Bool)

(assert (=> b!1378335 m!1263019))

(declare-fun m!1263021 () Bool)

(assert (=> b!1378335 m!1263021))

(declare-fun m!1263023 () Bool)

(assert (=> b!1378336 m!1263023))

(assert (=> b!1378336 m!1263023))

(declare-fun m!1263025 () Bool)

(assert (=> b!1378336 m!1263025))

(declare-fun m!1263027 () Bool)

(assert (=> b!1378333 m!1263027))

(declare-fun m!1263029 () Bool)

(assert (=> b!1378333 m!1263029))

(declare-fun m!1263031 () Bool)

(assert (=> b!1378333 m!1263031))

(declare-fun m!1263033 () Bool)

(assert (=> b!1378334 m!1263033))

(push 1)

(assert (not b!1378335))

(assert (not start!117146))

(assert (not b!1378334))

(assert (not b!1378336))

(assert (not b!1378333))

(check-sat)

(pop 1)

