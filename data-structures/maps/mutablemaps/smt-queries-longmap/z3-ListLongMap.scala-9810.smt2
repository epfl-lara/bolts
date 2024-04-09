; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116548 () Bool)

(assert start!116548)

(declare-fun b!1374193 () Bool)

(declare-fun res!917502 () Bool)

(declare-fun e!778522 () Bool)

(assert (=> b!1374193 (=> (not res!917502) (not e!778522))))

(declare-datatypes ((array!93171 0))(
  ( (array!93172 (arr!44987 (Array (_ BitVec 32) (_ BitVec 64))) (size!45538 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93171)

(assert (=> b!1374193 (= res!917502 (bvslt (size!45538 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374194 () Bool)

(declare-fun res!917501 () Bool)

(assert (=> b!1374194 (=> (not res!917501) (not e!778522))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374194 (= res!917501 (validKeyInArray!0 (select (arr!44987 a!4142) i!1457)))))

(declare-fun b!1374195 () Bool)

(declare-fun res!917500 () Bool)

(assert (=> b!1374195 (=> (not res!917500) (not e!778522))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374195 (= res!917500 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374196 () Bool)

(declare-fun e!778521 () Bool)

(assert (=> b!1374196 (= e!778521 true)))

(declare-fun lt!603330 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93171 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374196 (= lt!603330 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603329 () (_ BitVec 32))

(declare-fun lt!603331 () array!93171)

(assert (=> b!1374196 (= lt!603329 (arrayCountValidKeys!0 lt!603331 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917498 () Bool)

(assert (=> start!116548 (=> (not res!917498) (not e!778522))))

(assert (=> start!116548 (= res!917498 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45538 a!4142))))))

(assert (=> start!116548 e!778522))

(assert (=> start!116548 true))

(declare-fun array_inv!33932 (array!93171) Bool)

(assert (=> start!116548 (array_inv!33932 a!4142)))

(declare-fun b!1374197 () Bool)

(assert (=> b!1374197 (= e!778522 (not e!778521))))

(declare-fun res!917499 () Bool)

(assert (=> b!1374197 (=> res!917499 e!778521)))

(assert (=> b!1374197 (= res!917499 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374197 (= (arrayCountValidKeys!0 lt!603331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374197 (= lt!603331 (array!93172 (store (arr!44987 a!4142) i!1457 k0!2959) (size!45538 a!4142)))))

(declare-datatypes ((Unit!45373 0))(
  ( (Unit!45374) )
))
(declare-fun lt!603332 () Unit!45373)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45373)

(assert (=> b!1374197 (= lt!603332 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(assert (= (and start!116548 res!917498) b!1374194))

(assert (= (and b!1374194 res!917501) b!1374195))

(assert (= (and b!1374195 res!917500) b!1374193))

(assert (= (and b!1374193 res!917502) b!1374197))

(assert (= (and b!1374197 (not res!917499)) b!1374196))

(declare-fun m!1257513 () Bool)

(assert (=> b!1374196 m!1257513))

(declare-fun m!1257515 () Bool)

(assert (=> b!1374196 m!1257515))

(declare-fun m!1257517 () Bool)

(assert (=> b!1374197 m!1257517))

(declare-fun m!1257519 () Bool)

(assert (=> b!1374197 m!1257519))

(declare-fun m!1257521 () Bool)

(assert (=> b!1374197 m!1257521))

(declare-fun m!1257523 () Bool)

(assert (=> b!1374197 m!1257523))

(declare-fun m!1257525 () Bool)

(assert (=> start!116548 m!1257525))

(declare-fun m!1257527 () Bool)

(assert (=> b!1374195 m!1257527))

(declare-fun m!1257529 () Bool)

(assert (=> b!1374194 m!1257529))

(assert (=> b!1374194 m!1257529))

(declare-fun m!1257531 () Bool)

(assert (=> b!1374194 m!1257531))

(check-sat (not b!1374194) (not b!1374197) (not start!116548) (not b!1374196) (not b!1374195))
