; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116700 () Bool)

(assert start!116700)

(declare-fun res!918218 () Bool)

(declare-fun e!778981 () Bool)

(assert (=> start!116700 (=> (not res!918218) (not e!778981))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93287 0))(
  ( (array!93288 (arr!45042 (Array (_ BitVec 32) (_ BitVec 64))) (size!45593 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93287)

(assert (=> start!116700 (= res!918218 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45593 a!4142))))))

(assert (=> start!116700 e!778981))

(assert (=> start!116700 true))

(declare-fun array_inv!33987 (array!93287) Bool)

(assert (=> start!116700 (array_inv!33987 a!4142)))

(declare-fun b!1375042 () Bool)

(assert (=> b!1375042 (= e!778981 (not (and (bvsge (size!45593 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!604046 () (_ BitVec 32))

(declare-fun lt!604048 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93287 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375042 (= (bvadd lt!604046 lt!604048) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45593 a!4142)))))

(declare-datatypes ((Unit!45471 0))(
  ( (Unit!45472) )
))
(declare-fun lt!604050 () Unit!45471)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45471)

(assert (=> b!1375042 (= lt!604050 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45593 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604045 () (_ BitVec 32))

(assert (=> b!1375042 (= lt!604045 lt!604048)))

(assert (=> b!1375042 (= lt!604048 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45593 a!4142)))))

(declare-fun lt!604049 () array!93287)

(assert (=> b!1375042 (= lt!604045 (arrayCountValidKeys!0 lt!604049 (bvadd #b00000000000000000000000000000001 i!1457) (size!45593 a!4142)))))

(declare-fun lt!604047 () Unit!45471)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93287 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45471)

(assert (=> b!1375042 (= lt!604047 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375042 (= (arrayCountValidKeys!0 lt!604049 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!604046 #b00000000000000000000000000000001))))

(assert (=> b!1375042 (= lt!604046 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375042 (= lt!604049 (array!93288 (store (arr!45042 a!4142) i!1457 k!2959) (size!45593 a!4142)))))

(declare-fun lt!604051 () Unit!45471)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93287 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45471)

(assert (=> b!1375042 (= lt!604051 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1375040 () Bool)

(declare-fun res!918217 () Bool)

(assert (=> b!1375040 (=> (not res!918217) (not e!778981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375040 (= res!918217 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1375041 () Bool)

(declare-fun res!918216 () Bool)

(assert (=> b!1375041 (=> (not res!918216) (not e!778981))))

(assert (=> b!1375041 (= res!918216 (bvslt (size!45593 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375039 () Bool)

(declare-fun res!918219 () Bool)

(assert (=> b!1375039 (=> (not res!918219) (not e!778981))))

(assert (=> b!1375039 (= res!918219 (validKeyInArray!0 (select (arr!45042 a!4142) i!1457)))))

(assert (= (and start!116700 res!918218) b!1375039))

(assert (= (and b!1375039 res!918219) b!1375040))

(assert (= (and b!1375040 res!918217) b!1375041))

(assert (= (and b!1375041 res!918216) b!1375042))

(declare-fun m!1258805 () Bool)

(assert (=> start!116700 m!1258805))

(declare-fun m!1258807 () Bool)

(assert (=> b!1375042 m!1258807))

(declare-fun m!1258809 () Bool)

(assert (=> b!1375042 m!1258809))

(declare-fun m!1258811 () Bool)

(assert (=> b!1375042 m!1258811))

(declare-fun m!1258813 () Bool)

(assert (=> b!1375042 m!1258813))

(declare-fun m!1258815 () Bool)

(assert (=> b!1375042 m!1258815))

(declare-fun m!1258817 () Bool)

(assert (=> b!1375042 m!1258817))

(declare-fun m!1258819 () Bool)

(assert (=> b!1375042 m!1258819))

(declare-fun m!1258821 () Bool)

(assert (=> b!1375042 m!1258821))

(declare-fun m!1258823 () Bool)

(assert (=> b!1375042 m!1258823))

(declare-fun m!1258825 () Bool)

(assert (=> b!1375040 m!1258825))

(declare-fun m!1258827 () Bool)

(assert (=> b!1375039 m!1258827))

(assert (=> b!1375039 m!1258827))

(declare-fun m!1258829 () Bool)

(assert (=> b!1375039 m!1258829))

(push 1)

(assert (not start!116700))

(assert (not b!1375039))

(assert (not b!1375040))

(assert (not b!1375042))

(check-sat)

(pop 1)

