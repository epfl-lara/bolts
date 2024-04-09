; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116572 () Bool)

(assert start!116572)

(declare-fun b!1374355 () Bool)

(declare-fun res!917660 () Bool)

(declare-fun e!778612 () Bool)

(assert (=> b!1374355 (=> (not res!917660) (not e!778612))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374355 (= res!917660 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374356 () Bool)

(declare-fun e!778611 () Bool)

(assert (=> b!1374356 (= e!778612 (not e!778611))))

(declare-fun res!917662 () Bool)

(assert (=> b!1374356 (=> res!917662 e!778611)))

(declare-datatypes ((array!93195 0))(
  ( (array!93196 (arr!44999 (Array (_ BitVec 32) (_ BitVec 64))) (size!45550 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93195)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374356 (= res!917662 (or (bvslt (size!45550 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603521 () (_ BitVec 32))

(declare-fun lt!603517 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93195 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374356 (= (bvadd lt!603521 lt!603517) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45550 a!4142)))))

(declare-datatypes ((Unit!45397 0))(
  ( (Unit!45398) )
))
(declare-fun lt!603516 () Unit!45397)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45397)

(assert (=> b!1374356 (= lt!603516 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45550 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603524 () (_ BitVec 32))

(assert (=> b!1374356 (= lt!603524 lt!603517)))

(assert (=> b!1374356 (= lt!603517 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45550 a!4142)))))

(declare-fun lt!603523 () array!93195)

(assert (=> b!1374356 (= lt!603524 (arrayCountValidKeys!0 lt!603523 (bvadd #b00000000000000000000000000000001 i!1457) (size!45550 a!4142)))))

(declare-fun lt!603522 () Unit!45397)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45397)

(assert (=> b!1374356 (= lt!603522 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603519 () (_ BitVec 32))

(assert (=> b!1374356 (= lt!603519 (bvsub lt!603521 #b00000000000000000000000000000001))))

(assert (=> b!1374356 (= lt!603519 (arrayCountValidKeys!0 lt!603523 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374356 (= lt!603521 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374356 (= lt!603523 (array!93196 (store (arr!44999 a!4142) i!1457 k0!2959) (size!45550 a!4142)))))

(declare-fun lt!603518 () Unit!45397)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45397)

(assert (=> b!1374356 (= lt!603518 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374357 () Bool)

(declare-fun res!917661 () Bool)

(assert (=> b!1374357 (=> (not res!917661) (not e!778612))))

(assert (=> b!1374357 (= res!917661 (bvslt (size!45550 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917664 () Bool)

(assert (=> start!116572 (=> (not res!917664) (not e!778612))))

(assert (=> start!116572 (= res!917664 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45550 a!4142))))))

(assert (=> start!116572 e!778612))

(assert (=> start!116572 true))

(declare-fun array_inv!33944 (array!93195) Bool)

(assert (=> start!116572 (array_inv!33944 a!4142)))

(declare-fun b!1374358 () Bool)

(declare-fun res!917663 () Bool)

(assert (=> b!1374358 (=> (not res!917663) (not e!778612))))

(assert (=> b!1374358 (= res!917663 (validKeyInArray!0 (select (arr!44999 a!4142) i!1457)))))

(declare-fun b!1374359 () Bool)

(assert (=> b!1374359 (= e!778611 true)))

(assert (=> b!1374359 (= (bvadd lt!603519 lt!603524) (arrayCountValidKeys!0 lt!603523 #b00000000000000000000000000000000 (size!45550 a!4142)))))

(declare-fun lt!603520 () Unit!45397)

(assert (=> b!1374359 (= lt!603520 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603523 #b00000000000000000000000000000000 (size!45550 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116572 res!917664) b!1374358))

(assert (= (and b!1374358 res!917663) b!1374355))

(assert (= (and b!1374355 res!917660) b!1374357))

(assert (= (and b!1374357 res!917661) b!1374356))

(assert (= (and b!1374356 (not res!917662)) b!1374359))

(declare-fun m!1257787 () Bool)

(assert (=> b!1374359 m!1257787))

(declare-fun m!1257789 () Bool)

(assert (=> b!1374359 m!1257789))

(declare-fun m!1257791 () Bool)

(assert (=> b!1374355 m!1257791))

(declare-fun m!1257793 () Bool)

(assert (=> start!116572 m!1257793))

(declare-fun m!1257795 () Bool)

(assert (=> b!1374356 m!1257795))

(declare-fun m!1257797 () Bool)

(assert (=> b!1374356 m!1257797))

(declare-fun m!1257799 () Bool)

(assert (=> b!1374356 m!1257799))

(declare-fun m!1257801 () Bool)

(assert (=> b!1374356 m!1257801))

(declare-fun m!1257803 () Bool)

(assert (=> b!1374356 m!1257803))

(declare-fun m!1257805 () Bool)

(assert (=> b!1374356 m!1257805))

(declare-fun m!1257807 () Bool)

(assert (=> b!1374356 m!1257807))

(declare-fun m!1257809 () Bool)

(assert (=> b!1374356 m!1257809))

(declare-fun m!1257811 () Bool)

(assert (=> b!1374356 m!1257811))

(declare-fun m!1257813 () Bool)

(assert (=> b!1374358 m!1257813))

(assert (=> b!1374358 m!1257813))

(declare-fun m!1257815 () Bool)

(assert (=> b!1374358 m!1257815))

(check-sat (not b!1374358) (not start!116572) (not b!1374356) (not b!1374355) (not b!1374359))
