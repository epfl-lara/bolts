; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116704 () Bool)

(assert start!116704)

(declare-fun b!1375068 () Bool)

(declare-fun e!778998 () Bool)

(assert (=> b!1375068 (= e!778998 true)))

(declare-fun lt!604099 () (_ BitVec 32))

(declare-datatypes ((array!93291 0))(
  ( (array!93292 (arr!45044 (Array (_ BitVec 32) (_ BitVec 64))) (size!45595 (_ BitVec 32))) )
))
(declare-fun lt!604101 () array!93291)

(declare-fun lt!604098 () (_ BitVec 32))

(declare-fun a!4142 () array!93291)

(declare-fun arrayCountValidKeys!0 (array!93291 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375068 (= (bvadd lt!604098 lt!604099) (arrayCountValidKeys!0 lt!604101 #b00000000000000000000000000000000 (size!45595 a!4142)))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((Unit!45475 0))(
  ( (Unit!45476) )
))
(declare-fun lt!604100 () Unit!45475)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45475)

(assert (=> b!1375068 (= lt!604100 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604101 #b00000000000000000000000000000000 (size!45595 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1375069 () Bool)

(declare-fun res!918249 () Bool)

(declare-fun e!779000 () Bool)

(assert (=> b!1375069 (=> (not res!918249) (not e!779000))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375069 (= res!918249 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1375070 () Bool)

(declare-fun res!918246 () Bool)

(assert (=> b!1375070 (=> (not res!918246) (not e!779000))))

(assert (=> b!1375070 (= res!918246 (bvslt (size!45595 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375071 () Bool)

(assert (=> b!1375071 (= e!779000 (not e!778998))))

(declare-fun res!918248 () Bool)

(assert (=> b!1375071 (=> res!918248 e!778998)))

(assert (=> b!1375071 (= res!918248 (or (bvslt (size!45595 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604103 () (_ BitVec 32))

(declare-fun lt!604104 () (_ BitVec 32))

(assert (=> b!1375071 (= (bvadd lt!604103 lt!604104) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45595 a!4142)))))

(declare-fun lt!604105 () Unit!45475)

(assert (=> b!1375071 (= lt!604105 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45595 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375071 (= lt!604099 lt!604104)))

(assert (=> b!1375071 (= lt!604104 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45595 a!4142)))))

(assert (=> b!1375071 (= lt!604099 (arrayCountValidKeys!0 lt!604101 (bvadd #b00000000000000000000000000000001 i!1457) (size!45595 a!4142)))))

(declare-fun lt!604097 () Unit!45475)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45475)

(assert (=> b!1375071 (= lt!604097 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375071 (= lt!604098 (bvsub lt!604103 #b00000000000000000000000000000001))))

(assert (=> b!1375071 (= lt!604098 (arrayCountValidKeys!0 lt!604101 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375071 (= lt!604103 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375071 (= lt!604101 (array!93292 (store (arr!45044 a!4142) i!1457 k0!2959) (size!45595 a!4142)))))

(declare-fun lt!604102 () Unit!45475)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45475)

(assert (=> b!1375071 (= lt!604102 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1375072 () Bool)

(declare-fun res!918247 () Bool)

(assert (=> b!1375072 (=> (not res!918247) (not e!779000))))

(assert (=> b!1375072 (= res!918247 (validKeyInArray!0 (select (arr!45044 a!4142) i!1457)))))

(declare-fun res!918245 () Bool)

(assert (=> start!116704 (=> (not res!918245) (not e!779000))))

(assert (=> start!116704 (= res!918245 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45595 a!4142))))))

(assert (=> start!116704 e!779000))

(assert (=> start!116704 true))

(declare-fun array_inv!33989 (array!93291) Bool)

(assert (=> start!116704 (array_inv!33989 a!4142)))

(assert (= (and start!116704 res!918245) b!1375072))

(assert (= (and b!1375072 res!918247) b!1375069))

(assert (= (and b!1375069 res!918249) b!1375070))

(assert (= (and b!1375070 res!918246) b!1375071))

(assert (= (and b!1375071 (not res!918248)) b!1375068))

(declare-fun m!1258861 () Bool)

(assert (=> b!1375072 m!1258861))

(assert (=> b!1375072 m!1258861))

(declare-fun m!1258863 () Bool)

(assert (=> b!1375072 m!1258863))

(declare-fun m!1258865 () Bool)

(assert (=> b!1375068 m!1258865))

(declare-fun m!1258867 () Bool)

(assert (=> b!1375068 m!1258867))

(declare-fun m!1258869 () Bool)

(assert (=> b!1375071 m!1258869))

(declare-fun m!1258871 () Bool)

(assert (=> b!1375071 m!1258871))

(declare-fun m!1258873 () Bool)

(assert (=> b!1375071 m!1258873))

(declare-fun m!1258875 () Bool)

(assert (=> b!1375071 m!1258875))

(declare-fun m!1258877 () Bool)

(assert (=> b!1375071 m!1258877))

(declare-fun m!1258879 () Bool)

(assert (=> b!1375071 m!1258879))

(declare-fun m!1258881 () Bool)

(assert (=> b!1375071 m!1258881))

(declare-fun m!1258883 () Bool)

(assert (=> b!1375071 m!1258883))

(declare-fun m!1258885 () Bool)

(assert (=> b!1375071 m!1258885))

(declare-fun m!1258887 () Bool)

(assert (=> start!116704 m!1258887))

(declare-fun m!1258889 () Bool)

(assert (=> b!1375069 m!1258889))

(check-sat (not start!116704) (not b!1375069) (not b!1375071) (not b!1375072) (not b!1375068))
