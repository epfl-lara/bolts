; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117138 () Bool)

(assert start!117138)

(declare-fun b!1378272 () Bool)

(declare-fun res!920916 () Bool)

(declare-fun e!780804 () Bool)

(assert (=> b!1378272 (=> (not res!920916) (not e!780804))))

(declare-datatypes ((array!93671 0))(
  ( (array!93672 (arr!45231 (Array (_ BitVec 32) (_ BitVec 64))) (size!45782 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93671)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378272 (= res!920916 (and (bvslt (size!45782 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45782 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378273 () Bool)

(declare-fun e!780806 () Bool)

(assert (=> b!1378273 (= e!780806 (not true))))

(declare-fun lt!606444 () array!93671)

(declare-fun lt!606445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93671 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378273 (= (bvadd (arrayCountValidKeys!0 lt!606444 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606445) (arrayCountValidKeys!0 lt!606444 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45723 0))(
  ( (Unit!45724) )
))
(declare-fun lt!606448 () Unit!45723)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45723)

(assert (=> b!1378273 (= lt!606448 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606444 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606447 () (_ BitVec 32))

(assert (=> b!1378273 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606447) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606446 () Unit!45723)

(assert (=> b!1378273 (= lt!606446 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378274 () Bool)

(assert (=> b!1378274 (= e!780804 e!780806)))

(declare-fun res!920918 () Bool)

(assert (=> b!1378274 (=> (not res!920918) (not e!780806))))

(assert (=> b!1378274 (= res!920918 (and (= lt!606445 (bvsub lt!606447 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378274 (= lt!606445 (arrayCountValidKeys!0 lt!606444 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378274 (= lt!606447 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378274 (= lt!606444 (array!93672 (store (arr!45231 a!4094) i!1451 k!2953) (size!45782 a!4094)))))

(declare-fun res!920919 () Bool)

(assert (=> start!117138 (=> (not res!920919) (not e!780804))))

(assert (=> start!117138 (= res!920919 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45782 a!4094))))))

(assert (=> start!117138 e!780804))

(assert (=> start!117138 true))

(declare-fun array_inv!34176 (array!93671) Bool)

(assert (=> start!117138 (array_inv!34176 a!4094)))

(declare-fun b!1378275 () Bool)

(declare-fun res!920917 () Bool)

(assert (=> b!1378275 (=> (not res!920917) (not e!780804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378275 (= res!920917 (validKeyInArray!0 (select (arr!45231 a!4094) i!1451)))))

(declare-fun b!1378276 () Bool)

(declare-fun res!920915 () Bool)

(assert (=> b!1378276 (=> (not res!920915) (not e!780804))))

(assert (=> b!1378276 (= res!920915 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117138 res!920919) b!1378275))

(assert (= (and b!1378275 res!920917) b!1378276))

(assert (= (and b!1378276 res!920915) b!1378272))

(assert (= (and b!1378272 res!920916) b!1378274))

(assert (= (and b!1378274 res!920918) b!1378273))

(declare-fun m!1262905 () Bool)

(assert (=> b!1378275 m!1262905))

(assert (=> b!1378275 m!1262905))

(declare-fun m!1262907 () Bool)

(assert (=> b!1378275 m!1262907))

(declare-fun m!1262909 () Bool)

(assert (=> start!117138 m!1262909))

(declare-fun m!1262911 () Bool)

(assert (=> b!1378276 m!1262911))

(declare-fun m!1262913 () Bool)

(assert (=> b!1378273 m!1262913))

(declare-fun m!1262915 () Bool)

(assert (=> b!1378273 m!1262915))

(declare-fun m!1262917 () Bool)

(assert (=> b!1378273 m!1262917))

(declare-fun m!1262919 () Bool)

(assert (=> b!1378273 m!1262919))

(declare-fun m!1262921 () Bool)

(assert (=> b!1378273 m!1262921))

(declare-fun m!1262923 () Bool)

(assert (=> b!1378273 m!1262923))

(declare-fun m!1262925 () Bool)

(assert (=> b!1378274 m!1262925))

(declare-fun m!1262927 () Bool)

(assert (=> b!1378274 m!1262927))

(declare-fun m!1262929 () Bool)

(assert (=> b!1378274 m!1262929))

(push 1)

(assert (not b!1378275))

(assert (not start!117138))

(assert (not b!1378274))

(assert (not b!1378276))

(assert (not b!1378273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

