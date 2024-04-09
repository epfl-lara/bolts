; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116536 () Bool)

(assert start!116536)

(declare-fun res!917409 () Bool)

(declare-fun e!778466 () Bool)

(assert (=> start!116536 (=> (not res!917409) (not e!778466))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93159 0))(
  ( (array!93160 (arr!44981 (Array (_ BitVec 32) (_ BitVec 64))) (size!45532 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93159)

(assert (=> start!116536 (= res!917409 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45532 a!4142))))))

(assert (=> start!116536 e!778466))

(assert (=> start!116536 true))

(declare-fun array_inv!33926 (array!93159) Bool)

(assert (=> start!116536 (array_inv!33926 a!4142)))

(declare-fun b!1374103 () Bool)

(declare-fun res!917411 () Bool)

(assert (=> b!1374103 (=> (not res!917411) (not e!778466))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374103 (= res!917411 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374104 () Bool)

(declare-fun res!917410 () Bool)

(assert (=> b!1374104 (=> (not res!917410) (not e!778466))))

(assert (=> b!1374104 (= res!917410 (validKeyInArray!0 (select (arr!44981 a!4142) i!1457)))))

(declare-fun b!1374105 () Bool)

(declare-fun e!778467 () Bool)

(assert (=> b!1374105 (= e!778467 true)))

(declare-fun lt!603258 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93159 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374105 (= lt!603258 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603260 () (_ BitVec 32))

(declare-fun lt!603257 () array!93159)

(assert (=> b!1374105 (= lt!603260 (arrayCountValidKeys!0 lt!603257 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374106 () Bool)

(declare-fun res!917408 () Bool)

(assert (=> b!1374106 (=> (not res!917408) (not e!778466))))

(assert (=> b!1374106 (= res!917408 (bvslt (size!45532 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374107 () Bool)

(assert (=> b!1374107 (= e!778466 (not e!778467))))

(declare-fun res!917412 () Bool)

(assert (=> b!1374107 (=> res!917412 e!778467)))

(assert (=> b!1374107 (= res!917412 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374107 (= (arrayCountValidKeys!0 lt!603257 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374107 (= lt!603257 (array!93160 (store (arr!44981 a!4142) i!1457 k0!2959) (size!45532 a!4142)))))

(declare-datatypes ((Unit!45361 0))(
  ( (Unit!45362) )
))
(declare-fun lt!603259 () Unit!45361)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93159 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45361)

(assert (=> b!1374107 (= lt!603259 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(assert (= (and start!116536 res!917409) b!1374104))

(assert (= (and b!1374104 res!917410) b!1374103))

(assert (= (and b!1374103 res!917411) b!1374106))

(assert (= (and b!1374106 res!917408) b!1374107))

(assert (= (and b!1374107 (not res!917412)) b!1374105))

(declare-fun m!1257393 () Bool)

(assert (=> b!1374104 m!1257393))

(assert (=> b!1374104 m!1257393))

(declare-fun m!1257395 () Bool)

(assert (=> b!1374104 m!1257395))

(declare-fun m!1257397 () Bool)

(assert (=> start!116536 m!1257397))

(declare-fun m!1257399 () Bool)

(assert (=> b!1374105 m!1257399))

(declare-fun m!1257401 () Bool)

(assert (=> b!1374105 m!1257401))

(declare-fun m!1257403 () Bool)

(assert (=> b!1374107 m!1257403))

(declare-fun m!1257405 () Bool)

(assert (=> b!1374107 m!1257405))

(declare-fun m!1257407 () Bool)

(assert (=> b!1374107 m!1257407))

(declare-fun m!1257409 () Bool)

(assert (=> b!1374107 m!1257409))

(declare-fun m!1257411 () Bool)

(assert (=> b!1374103 m!1257411))

(check-sat (not start!116536) (not b!1374105) (not b!1374104) (not b!1374103) (not b!1374107))
