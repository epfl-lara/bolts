; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116556 () Bool)

(assert start!116556)

(declare-fun res!917559 () Bool)

(declare-fun e!778556 () Bool)

(assert (=> start!116556 (=> (not res!917559) (not e!778556))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93179 0))(
  ( (array!93180 (arr!44991 (Array (_ BitVec 32) (_ BitVec 64))) (size!45542 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93179)

(assert (=> start!116556 (= res!917559 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45542 a!4142))))))

(assert (=> start!116556 e!778556))

(assert (=> start!116556 true))

(declare-fun array_inv!33936 (array!93179) Bool)

(assert (=> start!116556 (array_inv!33936 a!4142)))

(declare-fun b!1374253 () Bool)

(declare-fun e!778558 () Bool)

(assert (=> b!1374253 (= e!778556 (not e!778558))))

(declare-fun res!917562 () Bool)

(assert (=> b!1374253 (=> res!917562 e!778558)))

(assert (=> b!1374253 (= res!917562 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-fun lt!603377 () array!93179)

(declare-fun arrayCountValidKeys!0 (array!93179 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374253 (= (arrayCountValidKeys!0 lt!603377 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374253 (= lt!603377 (array!93180 (store (arr!44991 a!4142) i!1457 k!2959) (size!45542 a!4142)))))

(declare-datatypes ((Unit!45381 0))(
  ( (Unit!45382) )
))
(declare-fun lt!603379 () Unit!45381)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45381)

(assert (=> b!1374253 (= lt!603379 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374254 () Bool)

(declare-fun res!917558 () Bool)

(assert (=> b!1374254 (=> (not res!917558) (not e!778556))))

(assert (=> b!1374254 (= res!917558 (bvslt (size!45542 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374255 () Bool)

(assert (=> b!1374255 (= e!778558 true)))

(declare-fun lt!603378 () (_ BitVec 32))

(assert (=> b!1374255 (= lt!603378 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603380 () (_ BitVec 32))

(assert (=> b!1374255 (= lt!603380 (arrayCountValidKeys!0 lt!603377 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374256 () Bool)

(declare-fun res!917561 () Bool)

(assert (=> b!1374256 (=> (not res!917561) (not e!778556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374256 (= res!917561 (validKeyInArray!0 (select (arr!44991 a!4142) i!1457)))))

(declare-fun b!1374257 () Bool)

(declare-fun res!917560 () Bool)

(assert (=> b!1374257 (=> (not res!917560) (not e!778556))))

(assert (=> b!1374257 (= res!917560 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116556 res!917559) b!1374256))

(assert (= (and b!1374256 res!917561) b!1374257))

(assert (= (and b!1374257 res!917560) b!1374254))

(assert (= (and b!1374254 res!917558) b!1374253))

(assert (= (and b!1374253 (not res!917562)) b!1374255))

(declare-fun m!1257593 () Bool)

(assert (=> b!1374256 m!1257593))

(assert (=> b!1374256 m!1257593))

(declare-fun m!1257595 () Bool)

(assert (=> b!1374256 m!1257595))

(declare-fun m!1257597 () Bool)

(assert (=> start!116556 m!1257597))

(declare-fun m!1257599 () Bool)

(assert (=> b!1374255 m!1257599))

(declare-fun m!1257601 () Bool)

(assert (=> b!1374255 m!1257601))

(declare-fun m!1257603 () Bool)

(assert (=> b!1374253 m!1257603))

(declare-fun m!1257605 () Bool)

(assert (=> b!1374253 m!1257605))

(declare-fun m!1257607 () Bool)

(assert (=> b!1374253 m!1257607))

(declare-fun m!1257609 () Bool)

(assert (=> b!1374253 m!1257609))

(declare-fun m!1257611 () Bool)

(assert (=> b!1374257 m!1257611))

(push 1)

(assert (not b!1374256))

(assert (not b!1374255))

(assert (not b!1374253))

(assert (not start!116556))

(assert (not b!1374257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

