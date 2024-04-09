; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116638 () Bool)

(assert start!116638)

(declare-fun b!1374721 () Bool)

(declare-fun res!917973 () Bool)

(declare-fun e!778814 () Bool)

(assert (=> b!1374721 (=> (not res!917973) (not e!778814))))

(declare-datatypes ((array!93246 0))(
  ( (array!93247 (arr!45023 (Array (_ BitVec 32) (_ BitVec 64))) (size!45574 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93246)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374721 (= res!917973 (validKeyInArray!0 (select (arr!45023 a!4142) i!1457)))))

(declare-fun b!1374723 () Bool)

(declare-fun res!917972 () Bool)

(assert (=> b!1374723 (=> (not res!917972) (not e!778814))))

(assert (=> b!1374723 (= res!917972 (bvslt (size!45574 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374722 () Bool)

(declare-fun res!917970 () Bool)

(assert (=> b!1374722 (=> (not res!917970) (not e!778814))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374722 (= res!917970 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374724 () Bool)

(assert (=> b!1374724 (= e!778814 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93246 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374724 (= (arrayCountValidKeys!0 (array!93247 (store (arr!45023 a!4142) i!1457 k0!2959) (size!45574 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45433 0))(
  ( (Unit!45434) )
))
(declare-fun lt!603832 () Unit!45433)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93246 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45433)

(assert (=> b!1374724 (= lt!603832 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!917971 () Bool)

(assert (=> start!116638 (=> (not res!917971) (not e!778814))))

(assert (=> start!116638 (= res!917971 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45574 a!4142))))))

(assert (=> start!116638 e!778814))

(assert (=> start!116638 true))

(declare-fun array_inv!33968 (array!93246) Bool)

(assert (=> start!116638 (array_inv!33968 a!4142)))

(assert (= (and start!116638 res!917971) b!1374721))

(assert (= (and b!1374721 res!917973) b!1374722))

(assert (= (and b!1374722 res!917970) b!1374723))

(assert (= (and b!1374723 res!917972) b!1374724))

(declare-fun m!1258331 () Bool)

(assert (=> b!1374721 m!1258331))

(assert (=> b!1374721 m!1258331))

(declare-fun m!1258333 () Bool)

(assert (=> b!1374721 m!1258333))

(declare-fun m!1258335 () Bool)

(assert (=> b!1374722 m!1258335))

(declare-fun m!1258337 () Bool)

(assert (=> b!1374724 m!1258337))

(declare-fun m!1258339 () Bool)

(assert (=> b!1374724 m!1258339))

(declare-fun m!1258341 () Bool)

(assert (=> b!1374724 m!1258341))

(declare-fun m!1258343 () Bool)

(assert (=> b!1374724 m!1258343))

(declare-fun m!1258345 () Bool)

(assert (=> start!116638 m!1258345))

(check-sat (not start!116638) (not b!1374724) (not b!1374722) (not b!1374721))
