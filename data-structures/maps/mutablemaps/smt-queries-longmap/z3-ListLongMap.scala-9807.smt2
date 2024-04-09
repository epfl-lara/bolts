; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116530 () Bool)

(assert start!116530)

(declare-fun b!1374058 () Bool)

(declare-fun res!917363 () Bool)

(declare-fun e!778440 () Bool)

(assert (=> b!1374058 (=> (not res!917363) (not e!778440))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374058 (= res!917363 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374059 () Bool)

(declare-fun e!778439 () Bool)

(assert (=> b!1374059 (= e!778439 true)))

(declare-fun lt!603224 () (_ BitVec 32))

(declare-datatypes ((array!93153 0))(
  ( (array!93154 (arr!44978 (Array (_ BitVec 32) (_ BitVec 64))) (size!45529 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93153)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93153 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374059 (= lt!603224 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603221 () (_ BitVec 32))

(declare-fun lt!603222 () array!93153)

(assert (=> b!1374059 (= lt!603221 (arrayCountValidKeys!0 lt!603222 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917366 () Bool)

(assert (=> start!116530 (=> (not res!917366) (not e!778440))))

(assert (=> start!116530 (= res!917366 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45529 a!4142))))))

(assert (=> start!116530 e!778440))

(assert (=> start!116530 true))

(declare-fun array_inv!33923 (array!93153) Bool)

(assert (=> start!116530 (array_inv!33923 a!4142)))

(declare-fun b!1374060 () Bool)

(declare-fun res!917365 () Bool)

(assert (=> b!1374060 (=> (not res!917365) (not e!778440))))

(assert (=> b!1374060 (= res!917365 (bvslt (size!45529 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374061 () Bool)

(assert (=> b!1374061 (= e!778440 (not e!778439))))

(declare-fun res!917364 () Bool)

(assert (=> b!1374061 (=> res!917364 e!778439)))

(assert (=> b!1374061 (= res!917364 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374061 (= (arrayCountValidKeys!0 lt!603222 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374061 (= lt!603222 (array!93154 (store (arr!44978 a!4142) i!1457 k0!2959) (size!45529 a!4142)))))

(declare-datatypes ((Unit!45355 0))(
  ( (Unit!45356) )
))
(declare-fun lt!603223 () Unit!45355)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93153 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45355)

(assert (=> b!1374061 (= lt!603223 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374062 () Bool)

(declare-fun res!917367 () Bool)

(assert (=> b!1374062 (=> (not res!917367) (not e!778440))))

(assert (=> b!1374062 (= res!917367 (validKeyInArray!0 (select (arr!44978 a!4142) i!1457)))))

(assert (= (and start!116530 res!917366) b!1374062))

(assert (= (and b!1374062 res!917367) b!1374058))

(assert (= (and b!1374058 res!917363) b!1374060))

(assert (= (and b!1374060 res!917365) b!1374061))

(assert (= (and b!1374061 (not res!917364)) b!1374059))

(declare-fun m!1257333 () Bool)

(assert (=> b!1374061 m!1257333))

(declare-fun m!1257335 () Bool)

(assert (=> b!1374061 m!1257335))

(declare-fun m!1257337 () Bool)

(assert (=> b!1374061 m!1257337))

(declare-fun m!1257339 () Bool)

(assert (=> b!1374061 m!1257339))

(declare-fun m!1257341 () Bool)

(assert (=> b!1374058 m!1257341))

(declare-fun m!1257343 () Bool)

(assert (=> b!1374059 m!1257343))

(declare-fun m!1257345 () Bool)

(assert (=> b!1374059 m!1257345))

(declare-fun m!1257347 () Bool)

(assert (=> b!1374062 m!1257347))

(assert (=> b!1374062 m!1257347))

(declare-fun m!1257349 () Bool)

(assert (=> b!1374062 m!1257349))

(declare-fun m!1257351 () Bool)

(assert (=> start!116530 m!1257351))

(check-sat (not b!1374058) (not b!1374059) (not b!1374062) (not start!116530) (not b!1374061))
