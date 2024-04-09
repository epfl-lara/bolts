; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116586 () Bool)

(assert start!116586)

(declare-fun b!1374460 () Bool)

(declare-fun res!917769 () Bool)

(declare-fun e!778674 () Bool)

(assert (=> b!1374460 (=> (not res!917769) (not e!778674))))

(declare-datatypes ((array!93209 0))(
  ( (array!93210 (arr!45006 (Array (_ BitVec 32) (_ BitVec 64))) (size!45557 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93209)

(assert (=> b!1374460 (= res!917769 (bvslt (size!45557 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374461 () Bool)

(declare-fun res!917766 () Bool)

(assert (=> b!1374461 (=> (not res!917766) (not e!778674))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374461 (= res!917766 (validKeyInArray!0 (select (arr!45006 a!4142) i!1457)))))

(declare-fun b!1374462 () Bool)

(declare-fun e!778673 () Bool)

(assert (=> b!1374462 (= e!778673 true)))

(declare-fun lt!603710 () (_ BitVec 32))

(declare-fun lt!603707 () (_ BitVec 32))

(declare-fun lt!603713 () array!93209)

(declare-fun arrayCountValidKeys!0 (array!93209 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374462 (= (bvadd lt!603707 lt!603710) (arrayCountValidKeys!0 lt!603713 #b00000000000000000000000000000000 (size!45557 a!4142)))))

(declare-datatypes ((Unit!45411 0))(
  ( (Unit!45412) )
))
(declare-fun lt!603708 () Unit!45411)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45411)

(assert (=> b!1374462 (= lt!603708 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603713 #b00000000000000000000000000000000 (size!45557 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374463 () Bool)

(assert (=> b!1374463 (= e!778674 (not e!778673))))

(declare-fun res!917767 () Bool)

(assert (=> b!1374463 (=> res!917767 e!778673)))

(assert (=> b!1374463 (= res!917767 (or (bvslt (size!45557 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603709 () (_ BitVec 32))

(declare-fun lt!603711 () (_ BitVec 32))

(assert (=> b!1374463 (= (bvadd lt!603709 lt!603711) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45557 a!4142)))))

(declare-fun lt!603706 () Unit!45411)

(assert (=> b!1374463 (= lt!603706 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45557 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374463 (= lt!603710 lt!603711)))

(assert (=> b!1374463 (= lt!603711 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45557 a!4142)))))

(assert (=> b!1374463 (= lt!603710 (arrayCountValidKeys!0 lt!603713 (bvadd #b00000000000000000000000000000001 i!1457) (size!45557 a!4142)))))

(declare-fun lt!603712 () Unit!45411)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45411)

(assert (=> b!1374463 (= lt!603712 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374463 (= lt!603707 (bvsub lt!603709 #b00000000000000000000000000000001))))

(assert (=> b!1374463 (= lt!603707 (arrayCountValidKeys!0 lt!603713 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374463 (= lt!603709 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374463 (= lt!603713 (array!93210 (store (arr!45006 a!4142) i!1457 k!2959) (size!45557 a!4142)))))

(declare-fun lt!603705 () Unit!45411)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45411)

(assert (=> b!1374463 (= lt!603705 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!917765 () Bool)

(assert (=> start!116586 (=> (not res!917765) (not e!778674))))

(assert (=> start!116586 (= res!917765 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45557 a!4142))))))

(assert (=> start!116586 e!778674))

(assert (=> start!116586 true))

(declare-fun array_inv!33951 (array!93209) Bool)

(assert (=> start!116586 (array_inv!33951 a!4142)))

(declare-fun b!1374464 () Bool)

(declare-fun res!917768 () Bool)

(assert (=> b!1374464 (=> (not res!917768) (not e!778674))))

(assert (=> b!1374464 (= res!917768 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116586 res!917765) b!1374461))

(assert (= (and b!1374461 res!917766) b!1374464))

(assert (= (and b!1374464 res!917768) b!1374460))

(assert (= (and b!1374460 res!917769) b!1374463))

(assert (= (and b!1374463 (not res!917767)) b!1374462))

(declare-fun m!1257997 () Bool)

(assert (=> b!1374462 m!1257997))

(declare-fun m!1257999 () Bool)

(assert (=> b!1374462 m!1257999))

(declare-fun m!1258001 () Bool)

(assert (=> b!1374463 m!1258001))

(declare-fun m!1258003 () Bool)

(assert (=> b!1374463 m!1258003))

(declare-fun m!1258005 () Bool)

(assert (=> b!1374463 m!1258005))

(declare-fun m!1258007 () Bool)

(assert (=> b!1374463 m!1258007))

(declare-fun m!1258009 () Bool)

(assert (=> b!1374463 m!1258009))

(declare-fun m!1258011 () Bool)

(assert (=> b!1374463 m!1258011))

(declare-fun m!1258013 () Bool)

(assert (=> b!1374463 m!1258013))

(declare-fun m!1258015 () Bool)

(assert (=> b!1374463 m!1258015))

(declare-fun m!1258017 () Bool)

(assert (=> b!1374463 m!1258017))

(declare-fun m!1258019 () Bool)

(assert (=> b!1374461 m!1258019))

(assert (=> b!1374461 m!1258019))

(declare-fun m!1258021 () Bool)

(assert (=> b!1374461 m!1258021))

(declare-fun m!1258023 () Bool)

(assert (=> b!1374464 m!1258023))

(declare-fun m!1258025 () Bool)

(assert (=> start!116586 m!1258025))

(push 1)

(assert (not start!116586))

(assert (not b!1374463))

(assert (not b!1374461))

(assert (not b!1374462))

(assert (not b!1374464))

