; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116588 () Bool)

(assert start!116588)

(declare-fun b!1374475 () Bool)

(declare-fun res!917781 () Bool)

(declare-fun e!778682 () Bool)

(assert (=> b!1374475 (=> (not res!917781) (not e!778682))))

(declare-datatypes ((array!93211 0))(
  ( (array!93212 (arr!45007 (Array (_ BitVec 32) (_ BitVec 64))) (size!45558 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93211)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374475 (= res!917781 (validKeyInArray!0 (select (arr!45007 a!4142) i!1457)))))

(declare-fun b!1374476 () Bool)

(declare-fun e!778684 () Bool)

(assert (=> b!1374476 (= e!778684 true)))

(declare-fun lt!603734 () (_ BitVec 32))

(declare-fun lt!603739 () array!93211)

(declare-fun lt!603740 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93211 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374476 (= (bvadd lt!603740 lt!603734) (arrayCountValidKeys!0 lt!603739 #b00000000000000000000000000000000 (size!45558 a!4142)))))

(declare-datatypes ((Unit!45413 0))(
  ( (Unit!45414) )
))
(declare-fun lt!603732 () Unit!45413)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45413)

(assert (=> b!1374476 (= lt!603732 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603739 #b00000000000000000000000000000000 (size!45558 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374477 () Bool)

(assert (=> b!1374477 (= e!778682 (not e!778684))))

(declare-fun res!917782 () Bool)

(assert (=> b!1374477 (=> res!917782 e!778684)))

(assert (=> b!1374477 (= res!917782 (or (bvslt (size!45558 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603736 () (_ BitVec 32))

(declare-fun lt!603733 () (_ BitVec 32))

(assert (=> b!1374477 (= (bvadd lt!603736 lt!603733) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45558 a!4142)))))

(declare-fun lt!603735 () Unit!45413)

(assert (=> b!1374477 (= lt!603735 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45558 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374477 (= lt!603734 lt!603733)))

(assert (=> b!1374477 (= lt!603733 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45558 a!4142)))))

(assert (=> b!1374477 (= lt!603734 (arrayCountValidKeys!0 lt!603739 (bvadd #b00000000000000000000000000000001 i!1457) (size!45558 a!4142)))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lt!603738 () Unit!45413)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45413)

(assert (=> b!1374477 (= lt!603738 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374477 (= lt!603740 (bvsub lt!603736 #b00000000000000000000000000000001))))

(assert (=> b!1374477 (= lt!603740 (arrayCountValidKeys!0 lt!603739 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374477 (= lt!603736 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374477 (= lt!603739 (array!93212 (store (arr!45007 a!4142) i!1457 k!2959) (size!45558 a!4142)))))

(declare-fun lt!603737 () Unit!45413)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45413)

(assert (=> b!1374477 (= lt!603737 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374478 () Bool)

(declare-fun res!917783 () Bool)

(assert (=> b!1374478 (=> (not res!917783) (not e!778682))))

(assert (=> b!1374478 (= res!917783 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917784 () Bool)

(assert (=> start!116588 (=> (not res!917784) (not e!778682))))

(assert (=> start!116588 (= res!917784 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45558 a!4142))))))

(assert (=> start!116588 e!778682))

(assert (=> start!116588 true))

(declare-fun array_inv!33952 (array!93211) Bool)

(assert (=> start!116588 (array_inv!33952 a!4142)))

(declare-fun b!1374479 () Bool)

(declare-fun res!917780 () Bool)

(assert (=> b!1374479 (=> (not res!917780) (not e!778682))))

(assert (=> b!1374479 (= res!917780 (bvslt (size!45558 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116588 res!917784) b!1374475))

(assert (= (and b!1374475 res!917781) b!1374478))

(assert (= (and b!1374478 res!917783) b!1374479))

(assert (= (and b!1374479 res!917780) b!1374477))

(assert (= (and b!1374477 (not res!917782)) b!1374476))

(declare-fun m!1258027 () Bool)

(assert (=> b!1374477 m!1258027))

(declare-fun m!1258029 () Bool)

(assert (=> b!1374477 m!1258029))

(declare-fun m!1258031 () Bool)

(assert (=> b!1374477 m!1258031))

(declare-fun m!1258033 () Bool)

(assert (=> b!1374477 m!1258033))

(declare-fun m!1258035 () Bool)

(assert (=> b!1374477 m!1258035))

(declare-fun m!1258037 () Bool)

(assert (=> b!1374477 m!1258037))

(declare-fun m!1258039 () Bool)

(assert (=> b!1374477 m!1258039))

(declare-fun m!1258041 () Bool)

(assert (=> b!1374477 m!1258041))

(declare-fun m!1258043 () Bool)

(assert (=> b!1374477 m!1258043))

(declare-fun m!1258045 () Bool)

(assert (=> b!1374475 m!1258045))

(assert (=> b!1374475 m!1258045))

(declare-fun m!1258047 () Bool)

(assert (=> b!1374475 m!1258047))

(declare-fun m!1258049 () Bool)

(assert (=> b!1374476 m!1258049))

(declare-fun m!1258051 () Bool)

(assert (=> b!1374476 m!1258051))

(declare-fun m!1258053 () Bool)

(assert (=> b!1374478 m!1258053))

(declare-fun m!1258055 () Bool)

(assert (=> start!116588 m!1258055))

(push 1)

(assert (not b!1374475))

(assert (not b!1374477))

(assert (not b!1374478))

(assert (not b!1374476))

(assert (not start!116588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

