; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116560 () Bool)

(assert start!116560)

(declare-fun b!1374278 () Bool)

(declare-fun res!917583 () Bool)

(declare-fun e!778569 () Bool)

(assert (=> b!1374278 (=> (not res!917583) (not e!778569))))

(declare-datatypes ((array!93183 0))(
  ( (array!93184 (arr!44993 (Array (_ BitVec 32) (_ BitVec 64))) (size!45544 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93183)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374278 (= res!917583 (validKeyInArray!0 (select (arr!44993 a!4142) i!1457)))))

(declare-fun b!1374280 () Bool)

(declare-fun res!917584 () Bool)

(assert (=> b!1374280 (=> (not res!917584) (not e!778569))))

(assert (=> b!1374280 (= res!917584 (bvslt (size!45544 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374279 () Bool)

(declare-fun res!917585 () Bool)

(assert (=> b!1374279 (=> (not res!917585) (not e!778569))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374279 (= res!917585 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917586 () Bool)

(assert (=> start!116560 (=> (not res!917586) (not e!778569))))

(assert (=> start!116560 (= res!917586 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45544 a!4142))))))

(assert (=> start!116560 e!778569))

(assert (=> start!116560 true))

(declare-fun array_inv!33938 (array!93183) Bool)

(assert (=> start!116560 (array_inv!33938 a!4142)))

(declare-fun b!1374281 () Bool)

(assert (=> b!1374281 (= e!778569 (not true))))

(declare-fun lt!603396 () array!93183)

(declare-fun arrayCountValidKeys!0 (array!93183 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374281 (= (arrayCountValidKeys!0 lt!603396 (bvadd #b00000000000000000000000000000001 i!1457) (size!45544 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45544 a!4142)))))

(declare-datatypes ((Unit!45385 0))(
  ( (Unit!45386) )
))
(declare-fun lt!603397 () Unit!45385)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93183 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45385)

(assert (=> b!1374281 (= lt!603397 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374281 (= (arrayCountValidKeys!0 lt!603396 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374281 (= lt!603396 (array!93184 (store (arr!44993 a!4142) i!1457 k0!2959) (size!45544 a!4142)))))

(declare-fun lt!603398 () Unit!45385)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93183 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45385)

(assert (=> b!1374281 (= lt!603398 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(assert (= (and start!116560 res!917586) b!1374278))

(assert (= (and b!1374278 res!917583) b!1374279))

(assert (= (and b!1374279 res!917585) b!1374280))

(assert (= (and b!1374280 res!917584) b!1374281))

(declare-fun m!1257635 () Bool)

(assert (=> b!1374278 m!1257635))

(assert (=> b!1374278 m!1257635))

(declare-fun m!1257637 () Bool)

(assert (=> b!1374278 m!1257637))

(declare-fun m!1257639 () Bool)

(assert (=> b!1374279 m!1257639))

(declare-fun m!1257641 () Bool)

(assert (=> start!116560 m!1257641))

(declare-fun m!1257643 () Bool)

(assert (=> b!1374281 m!1257643))

(declare-fun m!1257645 () Bool)

(assert (=> b!1374281 m!1257645))

(declare-fun m!1257647 () Bool)

(assert (=> b!1374281 m!1257647))

(declare-fun m!1257649 () Bool)

(assert (=> b!1374281 m!1257649))

(declare-fun m!1257651 () Bool)

(assert (=> b!1374281 m!1257651))

(declare-fun m!1257653 () Bool)

(assert (=> b!1374281 m!1257653))

(declare-fun m!1257655 () Bool)

(assert (=> b!1374281 m!1257655))

(check-sat (not b!1374281) (not b!1374278) (not b!1374279) (not start!116560))
