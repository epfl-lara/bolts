; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116524 () Bool)

(assert start!116524)

(declare-fun b!1374013 () Bool)

(declare-fun res!917318 () Bool)

(declare-fun e!778414 () Bool)

(assert (=> b!1374013 (=> (not res!917318) (not e!778414))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374013 (= res!917318 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917321 () Bool)

(assert (=> start!116524 (=> (not res!917321) (not e!778414))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93147 0))(
  ( (array!93148 (arr!44975 (Array (_ BitVec 32) (_ BitVec 64))) (size!45526 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93147)

(assert (=> start!116524 (= res!917321 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45526 a!4142))))))

(assert (=> start!116524 e!778414))

(assert (=> start!116524 true))

(declare-fun array_inv!33920 (array!93147) Bool)

(assert (=> start!116524 (array_inv!33920 a!4142)))

(declare-fun b!1374014 () Bool)

(declare-fun res!917320 () Bool)

(assert (=> b!1374014 (=> (not res!917320) (not e!778414))))

(assert (=> b!1374014 (= res!917320 (validKeyInArray!0 (select (arr!44975 a!4142) i!1457)))))

(declare-fun b!1374015 () Bool)

(declare-fun e!778412 () Bool)

(assert (=> b!1374015 (= e!778414 (not e!778412))))

(declare-fun res!917322 () Bool)

(assert (=> b!1374015 (=> res!917322 e!778412)))

(assert (=> b!1374015 (= res!917322 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-fun lt!603185 () array!93147)

(declare-fun arrayCountValidKeys!0 (array!93147 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374015 (= (arrayCountValidKeys!0 lt!603185 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374015 (= lt!603185 (array!93148 (store (arr!44975 a!4142) i!1457 k0!2959) (size!45526 a!4142)))))

(declare-datatypes ((Unit!45349 0))(
  ( (Unit!45350) )
))
(declare-fun lt!603187 () Unit!45349)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45349)

(assert (=> b!1374015 (= lt!603187 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374016 () Bool)

(assert (=> b!1374016 (= e!778412 true)))

(declare-fun lt!603186 () (_ BitVec 32))

(assert (=> b!1374016 (= lt!603186 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603188 () (_ BitVec 32))

(assert (=> b!1374016 (= lt!603188 (arrayCountValidKeys!0 lt!603185 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374017 () Bool)

(declare-fun res!917319 () Bool)

(assert (=> b!1374017 (=> (not res!917319) (not e!778414))))

(assert (=> b!1374017 (= res!917319 (bvslt (size!45526 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116524 res!917321) b!1374014))

(assert (= (and b!1374014 res!917320) b!1374013))

(assert (= (and b!1374013 res!917318) b!1374017))

(assert (= (and b!1374017 res!917319) b!1374015))

(assert (= (and b!1374015 (not res!917322)) b!1374016))

(declare-fun m!1257273 () Bool)

(assert (=> b!1374015 m!1257273))

(declare-fun m!1257275 () Bool)

(assert (=> b!1374015 m!1257275))

(declare-fun m!1257277 () Bool)

(assert (=> b!1374015 m!1257277))

(declare-fun m!1257279 () Bool)

(assert (=> b!1374015 m!1257279))

(declare-fun m!1257281 () Bool)

(assert (=> start!116524 m!1257281))

(declare-fun m!1257283 () Bool)

(assert (=> b!1374014 m!1257283))

(assert (=> b!1374014 m!1257283))

(declare-fun m!1257285 () Bool)

(assert (=> b!1374014 m!1257285))

(declare-fun m!1257287 () Bool)

(assert (=> b!1374013 m!1257287))

(declare-fun m!1257289 () Bool)

(assert (=> b!1374016 m!1257289))

(declare-fun m!1257291 () Bool)

(assert (=> b!1374016 m!1257291))

(check-sat (not b!1374015) (not b!1374013) (not b!1374016) (not start!116524) (not b!1374014))
