; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116590 () Bool)

(assert start!116590)

(declare-fun b!1374490 () Bool)

(declare-fun res!917795 () Bool)

(declare-fun e!778692 () Bool)

(assert (=> b!1374490 (=> (not res!917795) (not e!778692))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374490 (= res!917795 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374491 () Bool)

(declare-fun res!917797 () Bool)

(assert (=> b!1374491 (=> (not res!917797) (not e!778692))))

(declare-datatypes ((array!93213 0))(
  ( (array!93214 (arr!45008 (Array (_ BitVec 32) (_ BitVec 64))) (size!45559 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93213)

(assert (=> b!1374491 (= res!917797 (bvslt (size!45559 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374492 () Bool)

(declare-fun e!778693 () Bool)

(assert (=> b!1374492 (= e!778693 true)))

(declare-fun lt!603760 () (_ BitVec 32))

(declare-fun lt!603767 () (_ BitVec 32))

(declare-fun lt!603759 () array!93213)

(declare-fun arrayCountValidKeys!0 (array!93213 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374492 (= (bvadd lt!603760 lt!603767) (arrayCountValidKeys!0 lt!603759 #b00000000000000000000000000000000 (size!45559 a!4142)))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((Unit!45415 0))(
  ( (Unit!45416) )
))
(declare-fun lt!603765 () Unit!45415)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45415)

(assert (=> b!1374492 (= lt!603765 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603759 #b00000000000000000000000000000000 (size!45559 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374493 () Bool)

(declare-fun res!917796 () Bool)

(assert (=> b!1374493 (=> (not res!917796) (not e!778692))))

(assert (=> b!1374493 (= res!917796 (validKeyInArray!0 (select (arr!45008 a!4142) i!1457)))))

(declare-fun b!1374494 () Bool)

(assert (=> b!1374494 (= e!778692 (not e!778693))))

(declare-fun res!917799 () Bool)

(assert (=> b!1374494 (=> res!917799 e!778693)))

(assert (=> b!1374494 (= res!917799 (or (bvslt (size!45559 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603761 () (_ BitVec 32))

(declare-fun lt!603766 () (_ BitVec 32))

(assert (=> b!1374494 (= (bvadd lt!603761 lt!603766) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45559 a!4142)))))

(declare-fun lt!603762 () Unit!45415)

(assert (=> b!1374494 (= lt!603762 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45559 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374494 (= lt!603767 lt!603766)))

(assert (=> b!1374494 (= lt!603766 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45559 a!4142)))))

(assert (=> b!1374494 (= lt!603767 (arrayCountValidKeys!0 lt!603759 (bvadd #b00000000000000000000000000000001 i!1457) (size!45559 a!4142)))))

(declare-fun lt!603763 () Unit!45415)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45415)

(assert (=> b!1374494 (= lt!603763 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374494 (= lt!603760 (bvsub lt!603761 #b00000000000000000000000000000001))))

(assert (=> b!1374494 (= lt!603760 (arrayCountValidKeys!0 lt!603759 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374494 (= lt!603761 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374494 (= lt!603759 (array!93214 (store (arr!45008 a!4142) i!1457 k0!2959) (size!45559 a!4142)))))

(declare-fun lt!603764 () Unit!45415)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45415)

(assert (=> b!1374494 (= lt!603764 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!917798 () Bool)

(assert (=> start!116590 (=> (not res!917798) (not e!778692))))

(assert (=> start!116590 (= res!917798 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45559 a!4142))))))

(assert (=> start!116590 e!778692))

(assert (=> start!116590 true))

(declare-fun array_inv!33953 (array!93213) Bool)

(assert (=> start!116590 (array_inv!33953 a!4142)))

(assert (= (and start!116590 res!917798) b!1374493))

(assert (= (and b!1374493 res!917796) b!1374490))

(assert (= (and b!1374490 res!917795) b!1374491))

(assert (= (and b!1374491 res!917797) b!1374494))

(assert (= (and b!1374494 (not res!917799)) b!1374492))

(declare-fun m!1258057 () Bool)

(assert (=> b!1374492 m!1258057))

(declare-fun m!1258059 () Bool)

(assert (=> b!1374492 m!1258059))

(declare-fun m!1258061 () Bool)

(assert (=> b!1374493 m!1258061))

(assert (=> b!1374493 m!1258061))

(declare-fun m!1258063 () Bool)

(assert (=> b!1374493 m!1258063))

(declare-fun m!1258065 () Bool)

(assert (=> start!116590 m!1258065))

(declare-fun m!1258067 () Bool)

(assert (=> b!1374494 m!1258067))

(declare-fun m!1258069 () Bool)

(assert (=> b!1374494 m!1258069))

(declare-fun m!1258071 () Bool)

(assert (=> b!1374494 m!1258071))

(declare-fun m!1258073 () Bool)

(assert (=> b!1374494 m!1258073))

(declare-fun m!1258075 () Bool)

(assert (=> b!1374494 m!1258075))

(declare-fun m!1258077 () Bool)

(assert (=> b!1374494 m!1258077))

(declare-fun m!1258079 () Bool)

(assert (=> b!1374494 m!1258079))

(declare-fun m!1258081 () Bool)

(assert (=> b!1374494 m!1258081))

(declare-fun m!1258083 () Bool)

(assert (=> b!1374494 m!1258083))

(declare-fun m!1258085 () Bool)

(assert (=> b!1374490 m!1258085))

(check-sat (not b!1374490) (not b!1374494) (not b!1374493) (not b!1374492) (not start!116590))
