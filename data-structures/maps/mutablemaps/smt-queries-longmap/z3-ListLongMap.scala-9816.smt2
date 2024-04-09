; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116584 () Bool)

(assert start!116584)

(declare-fun b!1374445 () Bool)

(declare-fun res!917751 () Bool)

(declare-fun e!778664 () Bool)

(assert (=> b!1374445 (=> (not res!917751) (not e!778664))))

(declare-datatypes ((array!93207 0))(
  ( (array!93208 (arr!45005 (Array (_ BitVec 32) (_ BitVec 64))) (size!45556 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93207)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374445 (= res!917751 (validKeyInArray!0 (select (arr!45005 a!4142) i!1457)))))

(declare-fun b!1374446 () Bool)

(declare-fun e!778666 () Bool)

(assert (=> b!1374446 (= e!778664 (not e!778666))))

(declare-fun res!917753 () Bool)

(assert (=> b!1374446 (=> res!917753 e!778666)))

(assert (=> b!1374446 (= res!917753 (or (bvslt (size!45556 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603684 () (_ BitVec 32))

(declare-fun lt!603683 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93207 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374446 (= (bvadd lt!603684 lt!603683) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45556 a!4142)))))

(declare-datatypes ((Unit!45409 0))(
  ( (Unit!45410) )
))
(declare-fun lt!603686 () Unit!45409)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45409)

(assert (=> b!1374446 (= lt!603686 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45556 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603682 () (_ BitVec 32))

(assert (=> b!1374446 (= lt!603682 lt!603683)))

(assert (=> b!1374446 (= lt!603683 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45556 a!4142)))))

(declare-fun lt!603678 () array!93207)

(assert (=> b!1374446 (= lt!603682 (arrayCountValidKeys!0 lt!603678 (bvadd #b00000000000000000000000000000001 i!1457) (size!45556 a!4142)))))

(declare-fun lt!603681 () Unit!45409)

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93207 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45409)

(assert (=> b!1374446 (= lt!603681 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603679 () (_ BitVec 32))

(assert (=> b!1374446 (= lt!603679 (bvsub lt!603684 #b00000000000000000000000000000001))))

(assert (=> b!1374446 (= lt!603679 (arrayCountValidKeys!0 lt!603678 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374446 (= lt!603684 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374446 (= lt!603678 (array!93208 (store (arr!45005 a!4142) i!1457 k0!2959) (size!45556 a!4142)))))

(declare-fun lt!603685 () Unit!45409)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93207 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45409)

(assert (=> b!1374446 (= lt!603685 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374447 () Bool)

(declare-fun res!917754 () Bool)

(assert (=> b!1374447 (=> (not res!917754) (not e!778664))))

(assert (=> b!1374447 (= res!917754 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374448 () Bool)

(declare-fun res!917752 () Bool)

(assert (=> b!1374448 (=> (not res!917752) (not e!778664))))

(assert (=> b!1374448 (= res!917752 (bvslt (size!45556 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374449 () Bool)

(assert (=> b!1374449 (= e!778666 true)))

(assert (=> b!1374449 (= (bvadd lt!603679 lt!603682) (arrayCountValidKeys!0 lt!603678 #b00000000000000000000000000000000 (size!45556 a!4142)))))

(declare-fun lt!603680 () Unit!45409)

(assert (=> b!1374449 (= lt!603680 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603678 #b00000000000000000000000000000000 (size!45556 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917750 () Bool)

(assert (=> start!116584 (=> (not res!917750) (not e!778664))))

(assert (=> start!116584 (= res!917750 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45556 a!4142))))))

(assert (=> start!116584 e!778664))

(assert (=> start!116584 true))

(declare-fun array_inv!33950 (array!93207) Bool)

(assert (=> start!116584 (array_inv!33950 a!4142)))

(assert (= (and start!116584 res!917750) b!1374445))

(assert (= (and b!1374445 res!917751) b!1374447))

(assert (= (and b!1374447 res!917754) b!1374448))

(assert (= (and b!1374448 res!917752) b!1374446))

(assert (= (and b!1374446 (not res!917753)) b!1374449))

(declare-fun m!1257967 () Bool)

(assert (=> start!116584 m!1257967))

(declare-fun m!1257969 () Bool)

(assert (=> b!1374446 m!1257969))

(declare-fun m!1257971 () Bool)

(assert (=> b!1374446 m!1257971))

(declare-fun m!1257973 () Bool)

(assert (=> b!1374446 m!1257973))

(declare-fun m!1257975 () Bool)

(assert (=> b!1374446 m!1257975))

(declare-fun m!1257977 () Bool)

(assert (=> b!1374446 m!1257977))

(declare-fun m!1257979 () Bool)

(assert (=> b!1374446 m!1257979))

(declare-fun m!1257981 () Bool)

(assert (=> b!1374446 m!1257981))

(declare-fun m!1257983 () Bool)

(assert (=> b!1374446 m!1257983))

(declare-fun m!1257985 () Bool)

(assert (=> b!1374446 m!1257985))

(declare-fun m!1257987 () Bool)

(assert (=> b!1374449 m!1257987))

(declare-fun m!1257989 () Bool)

(assert (=> b!1374449 m!1257989))

(declare-fun m!1257991 () Bool)

(assert (=> b!1374445 m!1257991))

(assert (=> b!1374445 m!1257991))

(declare-fun m!1257993 () Bool)

(assert (=> b!1374445 m!1257993))

(declare-fun m!1257995 () Bool)

(assert (=> b!1374447 m!1257995))

(check-sat (not b!1374445) (not b!1374446) (not start!116584) (not b!1374447) (not b!1374449))
