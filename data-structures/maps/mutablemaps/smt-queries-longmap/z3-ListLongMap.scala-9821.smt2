; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116632 () Bool)

(assert start!116632)

(declare-fun b!1374686 () Bool)

(declare-fun res!917937 () Bool)

(declare-fun e!778796 () Bool)

(assert (=> b!1374686 (=> (not res!917937) (not e!778796))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374686 (= res!917937 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374688 () Bool)

(assert (=> b!1374688 (= e!778796 (not true))))

(declare-datatypes ((array!93240 0))(
  ( (array!93241 (arr!45020 (Array (_ BitVec 32) (_ BitVec 64))) (size!45571 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93240)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93240 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374688 (= (arrayCountValidKeys!0 (array!93241 (store (arr!45020 a!4142) i!1457 k0!2959) (size!45571 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45427 0))(
  ( (Unit!45428) )
))
(declare-fun lt!603823 () Unit!45427)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93240 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45427)

(assert (=> b!1374688 (= lt!603823 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374687 () Bool)

(declare-fun res!917935 () Bool)

(assert (=> b!1374687 (=> (not res!917935) (not e!778796))))

(assert (=> b!1374687 (= res!917935 (bvslt (size!45571 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917936 () Bool)

(assert (=> start!116632 (=> (not res!917936) (not e!778796))))

(assert (=> start!116632 (= res!917936 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45571 a!4142))))))

(assert (=> start!116632 e!778796))

(assert (=> start!116632 true))

(declare-fun array_inv!33965 (array!93240) Bool)

(assert (=> start!116632 (array_inv!33965 a!4142)))

(declare-fun b!1374685 () Bool)

(declare-fun res!917934 () Bool)

(assert (=> b!1374685 (=> (not res!917934) (not e!778796))))

(assert (=> b!1374685 (= res!917934 (validKeyInArray!0 (select (arr!45020 a!4142) i!1457)))))

(assert (= (and start!116632 res!917936) b!1374685))

(assert (= (and b!1374685 res!917934) b!1374686))

(assert (= (and b!1374686 res!917937) b!1374687))

(assert (= (and b!1374687 res!917935) b!1374688))

(declare-fun m!1258283 () Bool)

(assert (=> b!1374686 m!1258283))

(declare-fun m!1258285 () Bool)

(assert (=> b!1374688 m!1258285))

(declare-fun m!1258287 () Bool)

(assert (=> b!1374688 m!1258287))

(declare-fun m!1258289 () Bool)

(assert (=> b!1374688 m!1258289))

(declare-fun m!1258291 () Bool)

(assert (=> b!1374688 m!1258291))

(declare-fun m!1258293 () Bool)

(assert (=> start!116632 m!1258293))

(declare-fun m!1258295 () Bool)

(assert (=> b!1374685 m!1258295))

(assert (=> b!1374685 m!1258295))

(declare-fun m!1258297 () Bool)

(assert (=> b!1374685 m!1258297))

(check-sat (not start!116632) (not b!1374686) (not b!1374685) (not b!1374688))
