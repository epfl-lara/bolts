; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116698 () Bool)

(assert start!116698)

(declare-fun b!1375029 () Bool)

(declare-fun res!918205 () Bool)

(declare-fun e!778975 () Bool)

(assert (=> b!1375029 (=> (not res!918205) (not e!778975))))

(declare-datatypes ((array!93285 0))(
  ( (array!93286 (arr!45041 (Array (_ BitVec 32) (_ BitVec 64))) (size!45592 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93285)

(assert (=> b!1375029 (= res!918205 (bvslt (size!45592 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375027 () Bool)

(declare-fun res!918204 () Bool)

(assert (=> b!1375027 (=> (not res!918204) (not e!778975))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375027 (= res!918204 (validKeyInArray!0 (select (arr!45041 a!4142) i!1457)))))

(declare-fun res!918206 () Bool)

(assert (=> start!116698 (=> (not res!918206) (not e!778975))))

(assert (=> start!116698 (= res!918206 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45592 a!4142))))))

(assert (=> start!116698 e!778975))

(assert (=> start!116698 true))

(declare-fun array_inv!33986 (array!93285) Bool)

(assert (=> start!116698 (array_inv!33986 a!4142)))

(declare-fun b!1375028 () Bool)

(declare-fun res!918207 () Bool)

(assert (=> b!1375028 (=> (not res!918207) (not e!778975))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1375028 (= res!918207 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1375030 () Bool)

(assert (=> b!1375030 (= e!778975 (not (and (bvsge (size!45592 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!604024 () (_ BitVec 32))

(declare-fun lt!604025 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93285 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375030 (= (bvadd lt!604024 lt!604025) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45592 a!4142)))))

(declare-datatypes ((Unit!45469 0))(
  ( (Unit!45470) )
))
(declare-fun lt!604028 () Unit!45469)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45469)

(assert (=> b!1375030 (= lt!604028 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45592 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604029 () (_ BitVec 32))

(assert (=> b!1375030 (= lt!604029 lt!604025)))

(assert (=> b!1375030 (= lt!604025 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45592 a!4142)))))

(declare-fun lt!604027 () array!93285)

(assert (=> b!1375030 (= lt!604029 (arrayCountValidKeys!0 lt!604027 (bvadd #b00000000000000000000000000000001 i!1457) (size!45592 a!4142)))))

(declare-fun lt!604026 () Unit!45469)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45469)

(assert (=> b!1375030 (= lt!604026 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375030 (= (arrayCountValidKeys!0 lt!604027 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!604024 #b00000000000000000000000000000001))))

(assert (=> b!1375030 (= lt!604024 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375030 (= lt!604027 (array!93286 (store (arr!45041 a!4142) i!1457 k0!2959) (size!45592 a!4142)))))

(declare-fun lt!604030 () Unit!45469)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45469)

(assert (=> b!1375030 (= lt!604030 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(assert (= (and start!116698 res!918206) b!1375027))

(assert (= (and b!1375027 res!918204) b!1375028))

(assert (= (and b!1375028 res!918207) b!1375029))

(assert (= (and b!1375029 res!918205) b!1375030))

(declare-fun m!1258779 () Bool)

(assert (=> b!1375027 m!1258779))

(assert (=> b!1375027 m!1258779))

(declare-fun m!1258781 () Bool)

(assert (=> b!1375027 m!1258781))

(declare-fun m!1258783 () Bool)

(assert (=> start!116698 m!1258783))

(declare-fun m!1258785 () Bool)

(assert (=> b!1375028 m!1258785))

(declare-fun m!1258787 () Bool)

(assert (=> b!1375030 m!1258787))

(declare-fun m!1258789 () Bool)

(assert (=> b!1375030 m!1258789))

(declare-fun m!1258791 () Bool)

(assert (=> b!1375030 m!1258791))

(declare-fun m!1258793 () Bool)

(assert (=> b!1375030 m!1258793))

(declare-fun m!1258795 () Bool)

(assert (=> b!1375030 m!1258795))

(declare-fun m!1258797 () Bool)

(assert (=> b!1375030 m!1258797))

(declare-fun m!1258799 () Bool)

(assert (=> b!1375030 m!1258799))

(declare-fun m!1258801 () Bool)

(assert (=> b!1375030 m!1258801))

(declare-fun m!1258803 () Bool)

(assert (=> b!1375030 m!1258803))

(check-sat (not b!1375028) (not start!116698) (not b!1375027) (not b!1375030))
(check-sat)
