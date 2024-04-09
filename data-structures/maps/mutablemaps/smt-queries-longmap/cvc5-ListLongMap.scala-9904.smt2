; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117212 () Bool)

(assert start!117212)

(declare-fun b!1378838 () Bool)

(declare-fun res!921481 () Bool)

(declare-fun e!781119 () Bool)

(assert (=> b!1378838 (=> (not res!921481) (not e!781119))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378838 (= res!921481 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378839 () Bool)

(declare-fun res!921484 () Bool)

(declare-fun e!781121 () Bool)

(assert (=> b!1378839 (=> (not res!921484) (not e!781121))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378839 (= res!921484 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378840 () Bool)

(assert (=> b!1378840 (= e!781119 (not true))))

(declare-fun lt!606958 () (_ BitVec 32))

(declare-datatypes ((array!93745 0))(
  ( (array!93746 (arr!45268 (Array (_ BitVec 32) (_ BitVec 64))) (size!45819 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93745)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93745 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378840 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606958) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45761 0))(
  ( (Unit!45762) )
))
(declare-fun lt!606957 () Unit!45761)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45761)

(assert (=> b!1378840 (= lt!606957 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378841 () Bool)

(declare-fun res!921483 () Bool)

(assert (=> b!1378841 (=> (not res!921483) (not e!781121))))

(assert (=> b!1378841 (= res!921483 (validKeyInArray!0 (select (arr!45268 a!4094) i!1451)))))

(declare-fun b!1378842 () Bool)

(assert (=> b!1378842 (= e!781121 e!781119)))

(declare-fun res!921485 () Bool)

(assert (=> b!1378842 (=> (not res!921485) (not e!781119))))

(assert (=> b!1378842 (= res!921485 (= (arrayCountValidKeys!0 (array!93746 (store (arr!45268 a!4094) i!1451 k!2953) (size!45819 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606958 #b00000000000000000000000000000001)))))

(assert (=> b!1378842 (= lt!606958 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!921482 () Bool)

(assert (=> start!117212 (=> (not res!921482) (not e!781121))))

(assert (=> start!117212 (= res!921482 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45819 a!4094))))))

(assert (=> start!117212 e!781121))

(assert (=> start!117212 true))

(declare-fun array_inv!34213 (array!93745) Bool)

(assert (=> start!117212 (array_inv!34213 a!4094)))

(declare-fun b!1378843 () Bool)

(declare-fun res!921486 () Bool)

(assert (=> b!1378843 (=> (not res!921486) (not e!781121))))

(assert (=> b!1378843 (= res!921486 (and (bvslt (size!45819 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45819 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117212 res!921482) b!1378841))

(assert (= (and b!1378841 res!921483) b!1378839))

(assert (= (and b!1378839 res!921484) b!1378843))

(assert (= (and b!1378843 res!921486) b!1378842))

(assert (= (and b!1378842 res!921485) b!1378838))

(assert (= (and b!1378838 res!921481) b!1378840))

(declare-fun m!1263723 () Bool)

(assert (=> b!1378842 m!1263723))

(declare-fun m!1263725 () Bool)

(assert (=> b!1378842 m!1263725))

(declare-fun m!1263727 () Bool)

(assert (=> b!1378842 m!1263727))

(declare-fun m!1263729 () Bool)

(assert (=> b!1378839 m!1263729))

(declare-fun m!1263731 () Bool)

(assert (=> b!1378840 m!1263731))

(declare-fun m!1263733 () Bool)

(assert (=> b!1378840 m!1263733))

(declare-fun m!1263735 () Bool)

(assert (=> b!1378840 m!1263735))

(declare-fun m!1263737 () Bool)

(assert (=> start!117212 m!1263737))

(declare-fun m!1263739 () Bool)

(assert (=> b!1378841 m!1263739))

(assert (=> b!1378841 m!1263739))

(declare-fun m!1263741 () Bool)

(assert (=> b!1378841 m!1263741))

(push 1)

(assert (not start!117212))

(assert (not b!1378840))

(assert (not b!1378839))

(assert (not b!1378841))

(assert (not b!1378842))

(check-sat)

(pop 1)

