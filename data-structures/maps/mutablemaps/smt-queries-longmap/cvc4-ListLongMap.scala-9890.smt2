; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117132 () Bool)

(assert start!117132)

(declare-fun b!1378227 () Bool)

(declare-fun e!780777 () Bool)

(declare-fun e!780778 () Bool)

(assert (=> b!1378227 (= e!780777 e!780778)))

(declare-fun res!920871 () Bool)

(assert (=> b!1378227 (=> (not res!920871) (not e!780778))))

(declare-fun lt!606400 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606402 () (_ BitVec 32))

(assert (=> b!1378227 (= res!920871 (and (= lt!606400 (bvsub lt!606402 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93665 0))(
  ( (array!93666 (arr!45228 (Array (_ BitVec 32) (_ BitVec 64))) (size!45779 (_ BitVec 32))) )
))
(declare-fun lt!606401 () array!93665)

(declare-fun arrayCountValidKeys!0 (array!93665 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378227 (= lt!606400 (arrayCountValidKeys!0 lt!606401 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93665)

(assert (=> b!1378227 (= lt!606402 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378227 (= lt!606401 (array!93666 (store (arr!45228 a!4094) i!1451 k!2953) (size!45779 a!4094)))))

(declare-fun b!1378228 () Bool)

(declare-fun res!920870 () Bool)

(assert (=> b!1378228 (=> (not res!920870) (not e!780777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378228 (= res!920870 (validKeyInArray!0 (select (arr!45228 a!4094) i!1451)))))

(declare-fun b!1378230 () Bool)

(declare-fun res!920873 () Bool)

(assert (=> b!1378230 (=> (not res!920873) (not e!780777))))

(assert (=> b!1378230 (= res!920873 (and (bvslt (size!45779 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45779 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378231 () Bool)

(declare-fun res!920872 () Bool)

(assert (=> b!1378231 (=> (not res!920872) (not e!780777))))

(assert (=> b!1378231 (= res!920872 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!920874 () Bool)

(assert (=> start!117132 (=> (not res!920874) (not e!780777))))

(assert (=> start!117132 (= res!920874 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45779 a!4094))))))

(assert (=> start!117132 e!780777))

(assert (=> start!117132 true))

(declare-fun array_inv!34173 (array!93665) Bool)

(assert (=> start!117132 (array_inv!34173 a!4094)))

(declare-fun b!1378229 () Bool)

(assert (=> b!1378229 (= e!780778 (not true))))

(assert (=> b!1378229 (= (bvadd (arrayCountValidKeys!0 lt!606401 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606400) (arrayCountValidKeys!0 lt!606401 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45717 0))(
  ( (Unit!45718) )
))
(declare-fun lt!606399 () Unit!45717)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45717)

(assert (=> b!1378229 (= lt!606399 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606401 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378229 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606402) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606403 () Unit!45717)

(assert (=> b!1378229 (= lt!606403 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117132 res!920874) b!1378228))

(assert (= (and b!1378228 res!920870) b!1378231))

(assert (= (and b!1378231 res!920872) b!1378230))

(assert (= (and b!1378230 res!920873) b!1378227))

(assert (= (and b!1378227 res!920871) b!1378229))

(declare-fun m!1262827 () Bool)

(assert (=> b!1378229 m!1262827))

(declare-fun m!1262829 () Bool)

(assert (=> b!1378229 m!1262829))

(declare-fun m!1262831 () Bool)

(assert (=> b!1378229 m!1262831))

(declare-fun m!1262833 () Bool)

(assert (=> b!1378229 m!1262833))

(declare-fun m!1262835 () Bool)

(assert (=> b!1378229 m!1262835))

(declare-fun m!1262837 () Bool)

(assert (=> b!1378229 m!1262837))

(declare-fun m!1262839 () Bool)

(assert (=> b!1378231 m!1262839))

(declare-fun m!1262841 () Bool)

(assert (=> b!1378227 m!1262841))

(declare-fun m!1262843 () Bool)

(assert (=> b!1378227 m!1262843))

(declare-fun m!1262845 () Bool)

(assert (=> b!1378227 m!1262845))

(declare-fun m!1262847 () Bool)

(assert (=> b!1378228 m!1262847))

(assert (=> b!1378228 m!1262847))

(declare-fun m!1262849 () Bool)

(assert (=> b!1378228 m!1262849))

(declare-fun m!1262851 () Bool)

(assert (=> start!117132 m!1262851))

(push 1)

(assert (not b!1378228))

(assert (not b!1378231))

(assert (not b!1378229))

(assert (not b!1378227))

(assert (not start!117132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

