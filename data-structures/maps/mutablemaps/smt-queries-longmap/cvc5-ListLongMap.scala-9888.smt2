; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117116 () Bool)

(assert start!117116)

(declare-fun b!1378107 () Bool)

(declare-fun e!780707 () Bool)

(assert (=> b!1378107 (= e!780707 (not true))))

(declare-datatypes ((array!93649 0))(
  ( (array!93650 (arr!45220 (Array (_ BitVec 32) (_ BitVec 64))) (size!45771 (_ BitVec 32))) )
))
(declare-fun lt!606280 () array!93649)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606279 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93649 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378107 (= (bvadd (arrayCountValidKeys!0 lt!606280 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606279) (arrayCountValidKeys!0 lt!606280 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45701 0))(
  ( (Unit!45702) )
))
(declare-fun lt!606282 () Unit!45701)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45701)

(assert (=> b!1378107 (= lt!606282 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606280 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun a!4094 () array!93649)

(declare-fun lt!606283 () (_ BitVec 32))

(assert (=> b!1378107 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606283) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606281 () Unit!45701)

(assert (=> b!1378107 (= lt!606281 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378108 () Bool)

(declare-fun res!920753 () Bool)

(declare-fun e!780705 () Bool)

(assert (=> b!1378108 (=> (not res!920753) (not e!780705))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378108 (= res!920753 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378109 () Bool)

(declare-fun res!920752 () Bool)

(assert (=> b!1378109 (=> (not res!920752) (not e!780705))))

(assert (=> b!1378109 (= res!920752 (validKeyInArray!0 (select (arr!45220 a!4094) i!1451)))))

(declare-fun res!920751 () Bool)

(assert (=> start!117116 (=> (not res!920751) (not e!780705))))

(assert (=> start!117116 (= res!920751 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45771 a!4094))))))

(assert (=> start!117116 e!780705))

(assert (=> start!117116 true))

(declare-fun array_inv!34165 (array!93649) Bool)

(assert (=> start!117116 (array_inv!34165 a!4094)))

(declare-fun b!1378110 () Bool)

(assert (=> b!1378110 (= e!780705 e!780707)))

(declare-fun res!920750 () Bool)

(assert (=> b!1378110 (=> (not res!920750) (not e!780707))))

(assert (=> b!1378110 (= res!920750 (and (= lt!606279 (bvsub lt!606283 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378110 (= lt!606279 (arrayCountValidKeys!0 lt!606280 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378110 (= lt!606283 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378110 (= lt!606280 (array!93650 (store (arr!45220 a!4094) i!1451 k!2953) (size!45771 a!4094)))))

(declare-fun b!1378111 () Bool)

(declare-fun res!920754 () Bool)

(assert (=> b!1378111 (=> (not res!920754) (not e!780705))))

(assert (=> b!1378111 (= res!920754 (and (bvslt (size!45771 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45771 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117116 res!920751) b!1378109))

(assert (= (and b!1378109 res!920752) b!1378108))

(assert (= (and b!1378108 res!920753) b!1378111))

(assert (= (and b!1378111 res!920754) b!1378110))

(assert (= (and b!1378110 res!920750) b!1378107))

(declare-fun m!1262619 () Bool)

(assert (=> b!1378110 m!1262619))

(declare-fun m!1262621 () Bool)

(assert (=> b!1378110 m!1262621))

(declare-fun m!1262623 () Bool)

(assert (=> b!1378110 m!1262623))

(declare-fun m!1262625 () Bool)

(assert (=> b!1378109 m!1262625))

(assert (=> b!1378109 m!1262625))

(declare-fun m!1262627 () Bool)

(assert (=> b!1378109 m!1262627))

(declare-fun m!1262629 () Bool)

(assert (=> start!117116 m!1262629))

(declare-fun m!1262631 () Bool)

(assert (=> b!1378108 m!1262631))

(declare-fun m!1262633 () Bool)

(assert (=> b!1378107 m!1262633))

(declare-fun m!1262635 () Bool)

(assert (=> b!1378107 m!1262635))

(declare-fun m!1262637 () Bool)

(assert (=> b!1378107 m!1262637))

(declare-fun m!1262639 () Bool)

(assert (=> b!1378107 m!1262639))

(declare-fun m!1262641 () Bool)

(assert (=> b!1378107 m!1262641))

(declare-fun m!1262643 () Bool)

(assert (=> b!1378107 m!1262643))

(push 1)

(assert (not b!1378110))

(assert (not start!117116))

(assert (not b!1378109))

(assert (not b!1378108))

(assert (not b!1378107))

(check-sat)

(pop 1)

