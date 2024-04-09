; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117224 () Bool)

(assert start!117224)

(declare-fun b!1378944 () Bool)

(declare-fun e!781173 () Bool)

(assert (=> b!1378944 (= e!781173 (not true))))

(declare-datatypes ((array!93757 0))(
  ( (array!93758 (arr!45274 (Array (_ BitVec 32) (_ BitVec 64))) (size!45825 (_ BitVec 32))) )
))
(declare-fun lt!606999 () array!93757)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!607000 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93757 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378944 (= (bvadd (arrayCountValidKeys!0 lt!606999 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607000) (arrayCountValidKeys!0 lt!606999 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45773 0))(
  ( (Unit!45774) )
))
(declare-fun lt!607002 () Unit!45773)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45773)

(assert (=> b!1378944 (= lt!607002 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606999 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun a!4094 () array!93757)

(declare-fun lt!607001 () (_ BitVec 32))

(assert (=> b!1378944 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607001) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607003 () Unit!45773)

(assert (=> b!1378944 (= lt!607003 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378945 () Bool)

(declare-fun e!781174 () Bool)

(assert (=> b!1378945 (= e!781174 e!781173)))

(declare-fun res!921590 () Bool)

(assert (=> b!1378945 (=> (not res!921590) (not e!781173))))

(assert (=> b!1378945 (= res!921590 (and (= lt!607000 (bvsub lt!607001 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378945 (= lt!607000 (arrayCountValidKeys!0 lt!606999 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378945 (= lt!607001 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378945 (= lt!606999 (array!93758 (store (arr!45274 a!4094) i!1451 k!2953) (size!45825 a!4094)))))

(declare-fun res!921588 () Bool)

(assert (=> start!117224 (=> (not res!921588) (not e!781174))))

(assert (=> start!117224 (= res!921588 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45825 a!4094))))))

(assert (=> start!117224 e!781174))

(assert (=> start!117224 true))

(declare-fun array_inv!34219 (array!93757) Bool)

(assert (=> start!117224 (array_inv!34219 a!4094)))

(declare-fun b!1378946 () Bool)

(declare-fun res!921591 () Bool)

(assert (=> b!1378946 (=> (not res!921591) (not e!781174))))

(assert (=> b!1378946 (= res!921591 (and (bvslt (size!45825 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45825 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378947 () Bool)

(declare-fun res!921589 () Bool)

(assert (=> b!1378947 (=> (not res!921589) (not e!781174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378947 (= res!921589 (validKeyInArray!0 (select (arr!45274 a!4094) i!1451)))))

(declare-fun b!1378948 () Bool)

(declare-fun res!921587 () Bool)

(assert (=> b!1378948 (=> (not res!921587) (not e!781174))))

(assert (=> b!1378948 (= res!921587 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117224 res!921588) b!1378947))

(assert (= (and b!1378947 res!921589) b!1378948))

(assert (= (and b!1378948 res!921587) b!1378946))

(assert (= (and b!1378946 res!921591) b!1378945))

(assert (= (and b!1378945 res!921590) b!1378944))

(declare-fun m!1263843 () Bool)

(assert (=> b!1378948 m!1263843))

(declare-fun m!1263845 () Bool)

(assert (=> b!1378947 m!1263845))

(assert (=> b!1378947 m!1263845))

(declare-fun m!1263847 () Bool)

(assert (=> b!1378947 m!1263847))

(declare-fun m!1263849 () Bool)

(assert (=> b!1378944 m!1263849))

(declare-fun m!1263851 () Bool)

(assert (=> b!1378944 m!1263851))

(declare-fun m!1263853 () Bool)

(assert (=> b!1378944 m!1263853))

(declare-fun m!1263855 () Bool)

(assert (=> b!1378944 m!1263855))

(declare-fun m!1263857 () Bool)

(assert (=> b!1378944 m!1263857))

(declare-fun m!1263859 () Bool)

(assert (=> b!1378944 m!1263859))

(declare-fun m!1263861 () Bool)

(assert (=> b!1378945 m!1263861))

(declare-fun m!1263863 () Bool)

(assert (=> b!1378945 m!1263863))

(declare-fun m!1263865 () Bool)

(assert (=> b!1378945 m!1263865))

(declare-fun m!1263867 () Bool)

(assert (=> start!117224 m!1263867))

(push 1)

(assert (not b!1378944))

(assert (not b!1378945))

(assert (not start!117224))

(assert (not b!1378947))

(assert (not b!1378948))

(check-sat)

(pop 1)

