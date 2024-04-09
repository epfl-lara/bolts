; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116650 () Bool)

(assert start!116650)

(declare-fun b!1374795 () Bool)

(declare-fun res!918043 () Bool)

(declare-fun e!778850 () Bool)

(assert (=> b!1374795 (=> (not res!918043) (not e!778850))))

(declare-datatypes ((array!93258 0))(
  ( (array!93259 (arr!45029 (Array (_ BitVec 32) (_ BitVec 64))) (size!45580 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93258)

(assert (=> b!1374795 (= res!918043 (bvslt (size!45580 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374793 () Bool)

(declare-fun res!918045 () Bool)

(assert (=> b!1374793 (=> (not res!918045) (not e!778850))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374793 (= res!918045 (validKeyInArray!0 (select (arr!45029 a!4142) i!1457)))))

(declare-fun b!1374796 () Bool)

(assert (=> b!1374796 (= e!778850 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1457) i!1457))))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93258 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374796 (= (arrayCountValidKeys!0 (array!93259 (store (arr!45029 a!4142) i!1457 k0!2959) (size!45580 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45445 0))(
  ( (Unit!45446) )
))
(declare-fun lt!603850 () Unit!45445)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45445)

(assert (=> b!1374796 (= lt!603850 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!918042 () Bool)

(assert (=> start!116650 (=> (not res!918042) (not e!778850))))

(assert (=> start!116650 (= res!918042 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45580 a!4142))))))

(assert (=> start!116650 e!778850))

(assert (=> start!116650 true))

(declare-fun array_inv!33974 (array!93258) Bool)

(assert (=> start!116650 (array_inv!33974 a!4142)))

(declare-fun b!1374794 () Bool)

(declare-fun res!918044 () Bool)

(assert (=> b!1374794 (=> (not res!918044) (not e!778850))))

(assert (=> b!1374794 (= res!918044 (not (validKeyInArray!0 k0!2959)))))

(assert (= (and start!116650 res!918042) b!1374793))

(assert (= (and b!1374793 res!918045) b!1374794))

(assert (= (and b!1374794 res!918044) b!1374795))

(assert (= (and b!1374795 res!918043) b!1374796))

(declare-fun m!1258427 () Bool)

(assert (=> b!1374793 m!1258427))

(assert (=> b!1374793 m!1258427))

(declare-fun m!1258429 () Bool)

(assert (=> b!1374793 m!1258429))

(declare-fun m!1258431 () Bool)

(assert (=> b!1374796 m!1258431))

(declare-fun m!1258433 () Bool)

(assert (=> b!1374796 m!1258433))

(declare-fun m!1258435 () Bool)

(assert (=> b!1374796 m!1258435))

(declare-fun m!1258437 () Bool)

(assert (=> b!1374796 m!1258437))

(declare-fun m!1258439 () Bool)

(assert (=> start!116650 m!1258439))

(declare-fun m!1258441 () Bool)

(assert (=> b!1374794 m!1258441))

(check-sat (not start!116650) (not b!1374793) (not b!1374794) (not b!1374796))
(check-sat)
