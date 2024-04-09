; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116706 () Bool)

(assert start!116706)

(declare-fun b!1375083 () Bool)

(declare-fun e!779009 () Bool)

(declare-fun e!779007 () Bool)

(assert (=> b!1375083 (= e!779009 (not e!779007))))

(declare-fun res!918263 () Bool)

(assert (=> b!1375083 (=> res!918263 e!779007)))

(declare-datatypes ((array!93293 0))(
  ( (array!93294 (arr!45045 (Array (_ BitVec 32) (_ BitVec 64))) (size!45596 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93293)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375083 (= res!918263 (or (bvslt (size!45596 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604126 () (_ BitVec 32))

(declare-fun lt!604131 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93293 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375083 (= (bvadd lt!604126 lt!604131) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45596 a!4142)))))

(declare-datatypes ((Unit!45477 0))(
  ( (Unit!45478) )
))
(declare-fun lt!604130 () Unit!45477)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45477)

(assert (=> b!1375083 (= lt!604130 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45596 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604132 () (_ BitVec 32))

(assert (=> b!1375083 (= lt!604132 lt!604131)))

(assert (=> b!1375083 (= lt!604131 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45596 a!4142)))))

(declare-fun lt!604128 () array!93293)

(assert (=> b!1375083 (= lt!604132 (arrayCountValidKeys!0 lt!604128 (bvadd #b00000000000000000000000000000001 i!1457) (size!45596 a!4142)))))

(declare-fun lt!604129 () Unit!45477)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45477)

(assert (=> b!1375083 (= lt!604129 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604125 () (_ BitVec 32))

(assert (=> b!1375083 (= lt!604125 (bvsub lt!604126 #b00000000000000000000000000000001))))

(assert (=> b!1375083 (= lt!604125 (arrayCountValidKeys!0 lt!604128 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375083 (= lt!604126 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375083 (= lt!604128 (array!93294 (store (arr!45045 a!4142) i!1457 k!2959) (size!45596 a!4142)))))

(declare-fun lt!604124 () Unit!45477)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45477)

(assert (=> b!1375083 (= lt!604124 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1375084 () Bool)

(assert (=> b!1375084 (= e!779007 true)))

(assert (=> b!1375084 (= (bvadd lt!604125 lt!604132) (arrayCountValidKeys!0 lt!604128 #b00000000000000000000000000000000 (size!45596 a!4142)))))

(declare-fun lt!604127 () Unit!45477)

(assert (=> b!1375084 (= lt!604127 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604128 #b00000000000000000000000000000000 (size!45596 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1375085 () Bool)

(declare-fun res!918262 () Bool)

(assert (=> b!1375085 (=> (not res!918262) (not e!779009))))

(assert (=> b!1375085 (= res!918262 (bvslt (size!45596 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!918261 () Bool)

(assert (=> start!116706 (=> (not res!918261) (not e!779009))))

(assert (=> start!116706 (= res!918261 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45596 a!4142))))))

(assert (=> start!116706 e!779009))

(assert (=> start!116706 true))

(declare-fun array_inv!33990 (array!93293) Bool)

(assert (=> start!116706 (array_inv!33990 a!4142)))

(declare-fun b!1375086 () Bool)

(declare-fun res!918264 () Bool)

(assert (=> b!1375086 (=> (not res!918264) (not e!779009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375086 (= res!918264 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1375087 () Bool)

(declare-fun res!918260 () Bool)

(assert (=> b!1375087 (=> (not res!918260) (not e!779009))))

(assert (=> b!1375087 (= res!918260 (validKeyInArray!0 (select (arr!45045 a!4142) i!1457)))))

(assert (= (and start!116706 res!918261) b!1375087))

(assert (= (and b!1375087 res!918260) b!1375086))

(assert (= (and b!1375086 res!918264) b!1375085))

(assert (= (and b!1375085 res!918262) b!1375083))

(assert (= (and b!1375083 (not res!918263)) b!1375084))

(declare-fun m!1258891 () Bool)

(assert (=> b!1375086 m!1258891))

(declare-fun m!1258893 () Bool)

(assert (=> b!1375084 m!1258893))

(declare-fun m!1258895 () Bool)

(assert (=> b!1375084 m!1258895))

(declare-fun m!1258897 () Bool)

(assert (=> b!1375087 m!1258897))

(assert (=> b!1375087 m!1258897))

(declare-fun m!1258899 () Bool)

(assert (=> b!1375087 m!1258899))

(declare-fun m!1258901 () Bool)

(assert (=> start!116706 m!1258901))

(declare-fun m!1258903 () Bool)

(assert (=> b!1375083 m!1258903))

(declare-fun m!1258905 () Bool)

(assert (=> b!1375083 m!1258905))

(declare-fun m!1258907 () Bool)

(assert (=> b!1375083 m!1258907))

(declare-fun m!1258909 () Bool)

(assert (=> b!1375083 m!1258909))

(declare-fun m!1258911 () Bool)

(assert (=> b!1375083 m!1258911))

(declare-fun m!1258913 () Bool)

(assert (=> b!1375083 m!1258913))

(declare-fun m!1258915 () Bool)

(assert (=> b!1375083 m!1258915))

(declare-fun m!1258917 () Bool)

(assert (=> b!1375083 m!1258917))

(declare-fun m!1258919 () Bool)

(assert (=> b!1375083 m!1258919))

(push 1)

(assert (not b!1375084))

(assert (not b!1375086))

(assert (not b!1375087))

(assert (not start!116706))

(assert (not b!1375083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

