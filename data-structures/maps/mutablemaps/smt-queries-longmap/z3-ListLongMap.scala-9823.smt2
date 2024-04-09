; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116644 () Bool)

(assert start!116644)

(declare-fun b!1374759 () Bool)

(declare-fun res!918006 () Bool)

(declare-fun e!778831 () Bool)

(assert (=> b!1374759 (=> (not res!918006) (not e!778831))))

(declare-datatypes ((array!93252 0))(
  ( (array!93253 (arr!45026 (Array (_ BitVec 32) (_ BitVec 64))) (size!45577 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93252)

(assert (=> b!1374759 (= res!918006 (bvslt (size!45577 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374757 () Bool)

(declare-fun res!918009 () Bool)

(assert (=> b!1374757 (=> (not res!918009) (not e!778831))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374757 (= res!918009 (validKeyInArray!0 (select (arr!45026 a!4142) i!1457)))))

(declare-fun b!1374758 () Bool)

(declare-fun res!918008 () Bool)

(assert (=> b!1374758 (=> (not res!918008) (not e!778831))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374758 (= res!918008 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!918007 () Bool)

(assert (=> start!116644 (=> (not res!918007) (not e!778831))))

(assert (=> start!116644 (= res!918007 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45577 a!4142))))))

(assert (=> start!116644 e!778831))

(assert (=> start!116644 true))

(declare-fun array_inv!33971 (array!93252) Bool)

(assert (=> start!116644 (array_inv!33971 a!4142)))

(declare-fun b!1374760 () Bool)

(assert (=> b!1374760 (= e!778831 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93252 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374760 (= (arrayCountValidKeys!0 (array!93253 (store (arr!45026 a!4142) i!1457 k0!2959) (size!45577 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45439 0))(
  ( (Unit!45440) )
))
(declare-fun lt!603841 () Unit!45439)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93252 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45439)

(assert (=> b!1374760 (= lt!603841 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(assert (= (and start!116644 res!918007) b!1374757))

(assert (= (and b!1374757 res!918009) b!1374758))

(assert (= (and b!1374758 res!918008) b!1374759))

(assert (= (and b!1374759 res!918006) b!1374760))

(declare-fun m!1258379 () Bool)

(assert (=> b!1374757 m!1258379))

(assert (=> b!1374757 m!1258379))

(declare-fun m!1258381 () Bool)

(assert (=> b!1374757 m!1258381))

(declare-fun m!1258383 () Bool)

(assert (=> b!1374758 m!1258383))

(declare-fun m!1258385 () Bool)

(assert (=> start!116644 m!1258385))

(declare-fun m!1258387 () Bool)

(assert (=> b!1374760 m!1258387))

(declare-fun m!1258389 () Bool)

(assert (=> b!1374760 m!1258389))

(declare-fun m!1258391 () Bool)

(assert (=> b!1374760 m!1258391))

(declare-fun m!1258393 () Bool)

(assert (=> b!1374760 m!1258393))

(check-sat (not b!1374757) (not b!1374760) (not b!1374758) (not start!116644))
