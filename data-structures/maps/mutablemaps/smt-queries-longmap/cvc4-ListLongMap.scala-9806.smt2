; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116526 () Bool)

(assert start!116526)

(declare-fun res!917333 () Bool)

(declare-fun e!778422 () Bool)

(assert (=> start!116526 (=> (not res!917333) (not e!778422))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93149 0))(
  ( (array!93150 (arr!44976 (Array (_ BitVec 32) (_ BitVec 64))) (size!45527 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93149)

(assert (=> start!116526 (= res!917333 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45527 a!4142))))))

(assert (=> start!116526 e!778422))

(assert (=> start!116526 true))

(declare-fun array_inv!33921 (array!93149) Bool)

(assert (=> start!116526 (array_inv!33921 a!4142)))

(declare-fun b!1374028 () Bool)

(declare-fun res!917337 () Bool)

(assert (=> b!1374028 (=> (not res!917337) (not e!778422))))

(assert (=> b!1374028 (= res!917337 (bvslt (size!45527 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374029 () Bool)

(declare-fun e!778423 () Bool)

(assert (=> b!1374029 (= e!778422 (not e!778423))))

(declare-fun res!917336 () Bool)

(assert (=> b!1374029 (=> res!917336 e!778423)))

(assert (=> b!1374029 (= res!917336 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-fun lt!603197 () array!93149)

(declare-fun arrayCountValidKeys!0 (array!93149 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374029 (= (arrayCountValidKeys!0 lt!603197 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374029 (= lt!603197 (array!93150 (store (arr!44976 a!4142) i!1457 k!2959) (size!45527 a!4142)))))

(declare-datatypes ((Unit!45351 0))(
  ( (Unit!45352) )
))
(declare-fun lt!603199 () Unit!45351)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93149 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45351)

(assert (=> b!1374029 (= lt!603199 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374030 () Bool)

(assert (=> b!1374030 (= e!778423 true)))

(declare-fun lt!603200 () (_ BitVec 32))

(assert (=> b!1374030 (= lt!603200 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603198 () (_ BitVec 32))

(assert (=> b!1374030 (= lt!603198 (arrayCountValidKeys!0 lt!603197 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374031 () Bool)

(declare-fun res!917334 () Bool)

(assert (=> b!1374031 (=> (not res!917334) (not e!778422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374031 (= res!917334 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374032 () Bool)

(declare-fun res!917335 () Bool)

(assert (=> b!1374032 (=> (not res!917335) (not e!778422))))

(assert (=> b!1374032 (= res!917335 (validKeyInArray!0 (select (arr!44976 a!4142) i!1457)))))

(assert (= (and start!116526 res!917333) b!1374032))

(assert (= (and b!1374032 res!917335) b!1374031))

(assert (= (and b!1374031 res!917334) b!1374028))

(assert (= (and b!1374028 res!917337) b!1374029))

(assert (= (and b!1374029 (not res!917336)) b!1374030))

(declare-fun m!1257293 () Bool)

(assert (=> start!116526 m!1257293))

(declare-fun m!1257295 () Bool)

(assert (=> b!1374030 m!1257295))

(declare-fun m!1257297 () Bool)

(assert (=> b!1374030 m!1257297))

(declare-fun m!1257299 () Bool)

(assert (=> b!1374029 m!1257299))

(declare-fun m!1257301 () Bool)

(assert (=> b!1374029 m!1257301))

(declare-fun m!1257303 () Bool)

(assert (=> b!1374029 m!1257303))

(declare-fun m!1257305 () Bool)

(assert (=> b!1374029 m!1257305))

(declare-fun m!1257307 () Bool)

(assert (=> b!1374031 m!1257307))

(declare-fun m!1257309 () Bool)

(assert (=> b!1374032 m!1257309))

(assert (=> b!1374032 m!1257309))

(declare-fun m!1257311 () Bool)

(assert (=> b!1374032 m!1257311))

(push 1)

(assert (not b!1374030))

(assert (not b!1374031))

(assert (not b!1374032))

(assert (not start!116526))

(assert (not b!1374029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

