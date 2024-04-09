; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116542 () Bool)

(assert start!116542)

(declare-fun b!1374148 () Bool)

(declare-fun e!778494 () Bool)

(assert (=> b!1374148 (= e!778494 true)))

(declare-fun lt!603296 () (_ BitVec 32))

(declare-datatypes ((array!93165 0))(
  ( (array!93166 (arr!44984 (Array (_ BitVec 32) (_ BitVec 64))) (size!45535 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93165)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93165 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374148 (= lt!603296 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603294 () (_ BitVec 32))

(declare-fun lt!603293 () array!93165)

(assert (=> b!1374148 (= lt!603294 (arrayCountValidKeys!0 lt!603293 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374149 () Bool)

(declare-fun res!917454 () Bool)

(declare-fun e!778493 () Bool)

(assert (=> b!1374149 (=> (not res!917454) (not e!778493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374149 (= res!917454 (validKeyInArray!0 (select (arr!44984 a!4142) i!1457)))))

(declare-fun b!1374150 () Bool)

(declare-fun res!917455 () Bool)

(assert (=> b!1374150 (=> (not res!917455) (not e!778493))))

(assert (=> b!1374150 (= res!917455 (bvslt (size!45535 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917453 () Bool)

(assert (=> start!116542 (=> (not res!917453) (not e!778493))))

(assert (=> start!116542 (= res!917453 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45535 a!4142))))))

(assert (=> start!116542 e!778493))

(assert (=> start!116542 true))

(declare-fun array_inv!33929 (array!93165) Bool)

(assert (=> start!116542 (array_inv!33929 a!4142)))

(declare-fun b!1374151 () Bool)

(assert (=> b!1374151 (= e!778493 (not e!778494))))

(declare-fun res!917456 () Bool)

(assert (=> b!1374151 (=> res!917456 e!778494)))

(assert (=> b!1374151 (= res!917456 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374151 (= (arrayCountValidKeys!0 lt!603293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374151 (= lt!603293 (array!93166 (store (arr!44984 a!4142) i!1457 k0!2959) (size!45535 a!4142)))))

(declare-datatypes ((Unit!45367 0))(
  ( (Unit!45368) )
))
(declare-fun lt!603295 () Unit!45367)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93165 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45367)

(assert (=> b!1374151 (= lt!603295 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374152 () Bool)

(declare-fun res!917457 () Bool)

(assert (=> b!1374152 (=> (not res!917457) (not e!778493))))

(assert (=> b!1374152 (= res!917457 (not (validKeyInArray!0 k0!2959)))))

(assert (= (and start!116542 res!917453) b!1374149))

(assert (= (and b!1374149 res!917454) b!1374152))

(assert (= (and b!1374152 res!917457) b!1374150))

(assert (= (and b!1374150 res!917455) b!1374151))

(assert (= (and b!1374151 (not res!917456)) b!1374148))

(declare-fun m!1257453 () Bool)

(assert (=> b!1374149 m!1257453))

(assert (=> b!1374149 m!1257453))

(declare-fun m!1257455 () Bool)

(assert (=> b!1374149 m!1257455))

(declare-fun m!1257457 () Bool)

(assert (=> b!1374152 m!1257457))

(declare-fun m!1257459 () Bool)

(assert (=> b!1374148 m!1257459))

(declare-fun m!1257461 () Bool)

(assert (=> b!1374148 m!1257461))

(declare-fun m!1257463 () Bool)

(assert (=> start!116542 m!1257463))

(declare-fun m!1257465 () Bool)

(assert (=> b!1374151 m!1257465))

(declare-fun m!1257467 () Bool)

(assert (=> b!1374151 m!1257467))

(declare-fun m!1257469 () Bool)

(assert (=> b!1374151 m!1257469))

(declare-fun m!1257471 () Bool)

(assert (=> b!1374151 m!1257471))

(check-sat (not b!1374151) (not start!116542) (not b!1374148) (not b!1374152) (not b!1374149))
