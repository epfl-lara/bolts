; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117134 () Bool)

(assert start!117134)

(declare-fun b!1378243 () Bool)

(declare-fun res!920886 () Bool)

(declare-fun e!780786 () Bool)

(assert (=> b!1378243 (=> (not res!920886) (not e!780786))))

(declare-datatypes ((array!93667 0))(
  ( (array!93668 (arr!45229 (Array (_ BitVec 32) (_ BitVec 64))) (size!45780 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93667)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378243 (= res!920886 (validKeyInArray!0 (select (arr!45229 a!4094) i!1451)))))

(declare-fun b!1378244 () Bool)

(declare-fun res!920888 () Bool)

(assert (=> b!1378244 (=> (not res!920888) (not e!780786))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378244 (= res!920888 (and (bvslt (size!45780 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45780 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378245 () Bool)

(declare-fun e!780787 () Bool)

(assert (=> b!1378245 (= e!780787 (not true))))

(declare-fun lt!606416 () array!93667)

(declare-fun lt!606417 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93667 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378245 (= (bvadd (arrayCountValidKeys!0 lt!606416 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606417) (arrayCountValidKeys!0 lt!606416 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45719 0))(
  ( (Unit!45720) )
))
(declare-fun lt!606415 () Unit!45719)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45719)

(assert (=> b!1378245 (= lt!606415 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606416 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606418 () (_ BitVec 32))

(assert (=> b!1378245 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606418) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606414 () Unit!45719)

(assert (=> b!1378245 (= lt!606414 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378246 () Bool)

(declare-fun res!920885 () Bool)

(assert (=> b!1378246 (=> (not res!920885) (not e!780786))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378246 (= res!920885 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378242 () Bool)

(assert (=> b!1378242 (= e!780786 e!780787)))

(declare-fun res!920887 () Bool)

(assert (=> b!1378242 (=> (not res!920887) (not e!780787))))

(assert (=> b!1378242 (= res!920887 (and (= lt!606417 (bvsub lt!606418 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378242 (= lt!606417 (arrayCountValidKeys!0 lt!606416 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378242 (= lt!606418 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378242 (= lt!606416 (array!93668 (store (arr!45229 a!4094) i!1451 k!2953) (size!45780 a!4094)))))

(declare-fun res!920889 () Bool)

(assert (=> start!117134 (=> (not res!920889) (not e!780786))))

(assert (=> start!117134 (= res!920889 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45780 a!4094))))))

(assert (=> start!117134 e!780786))

(assert (=> start!117134 true))

(declare-fun array_inv!34174 (array!93667) Bool)

(assert (=> start!117134 (array_inv!34174 a!4094)))

(assert (= (and start!117134 res!920889) b!1378243))

(assert (= (and b!1378243 res!920886) b!1378246))

(assert (= (and b!1378246 res!920885) b!1378244))

(assert (= (and b!1378244 res!920888) b!1378242))

(assert (= (and b!1378242 res!920887) b!1378245))

(declare-fun m!1262853 () Bool)

(assert (=> b!1378242 m!1262853))

(declare-fun m!1262855 () Bool)

(assert (=> b!1378242 m!1262855))

(declare-fun m!1262857 () Bool)

(assert (=> b!1378242 m!1262857))

(declare-fun m!1262859 () Bool)

(assert (=> b!1378245 m!1262859))

(declare-fun m!1262861 () Bool)

(assert (=> b!1378245 m!1262861))

(declare-fun m!1262863 () Bool)

(assert (=> b!1378245 m!1262863))

(declare-fun m!1262865 () Bool)

(assert (=> b!1378245 m!1262865))

(declare-fun m!1262867 () Bool)

(assert (=> b!1378245 m!1262867))

(declare-fun m!1262869 () Bool)

(assert (=> b!1378245 m!1262869))

(declare-fun m!1262871 () Bool)

(assert (=> b!1378243 m!1262871))

(assert (=> b!1378243 m!1262871))

(declare-fun m!1262873 () Bool)

(assert (=> b!1378243 m!1262873))

(declare-fun m!1262875 () Bool)

(assert (=> start!117134 m!1262875))

(declare-fun m!1262877 () Bool)

(assert (=> b!1378246 m!1262877))

(push 1)

(assert (not b!1378242))

(assert (not b!1378245))

(assert (not start!117134))

(assert (not b!1378246))

(assert (not b!1378243))

(check-sat)

