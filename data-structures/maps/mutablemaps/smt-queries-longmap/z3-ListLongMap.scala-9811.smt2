; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116554 () Bool)

(assert start!116554)

(declare-fun b!1374238 () Bool)

(declare-fun e!778547 () Bool)

(assert (=> b!1374238 (= e!778547 true)))

(declare-fun lt!603368 () (_ BitVec 32))

(declare-datatypes ((array!93177 0))(
  ( (array!93178 (arr!44990 (Array (_ BitVec 32) (_ BitVec 64))) (size!45541 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93177)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93177 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374238 (= lt!603368 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603365 () (_ BitVec 32))

(declare-fun lt!603367 () array!93177)

(assert (=> b!1374238 (= lt!603365 (arrayCountValidKeys!0 lt!603367 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374239 () Bool)

(declare-fun e!778548 () Bool)

(assert (=> b!1374239 (= e!778548 (not e!778547))))

(declare-fun res!917543 () Bool)

(assert (=> b!1374239 (=> res!917543 e!778547)))

(assert (=> b!1374239 (= res!917543 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374239 (= (arrayCountValidKeys!0 lt!603367 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374239 (= lt!603367 (array!93178 (store (arr!44990 a!4142) i!1457 k0!2959) (size!45541 a!4142)))))

(declare-datatypes ((Unit!45379 0))(
  ( (Unit!45380) )
))
(declare-fun lt!603366 () Unit!45379)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93177 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45379)

(assert (=> b!1374239 (= lt!603366 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374240 () Bool)

(declare-fun res!917547 () Bool)

(assert (=> b!1374240 (=> (not res!917547) (not e!778548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374240 (= res!917547 (validKeyInArray!0 (select (arr!44990 a!4142) i!1457)))))

(declare-fun b!1374241 () Bool)

(declare-fun res!917546 () Bool)

(assert (=> b!1374241 (=> (not res!917546) (not e!778548))))

(assert (=> b!1374241 (= res!917546 (bvslt (size!45541 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374242 () Bool)

(declare-fun res!917545 () Bool)

(assert (=> b!1374242 (=> (not res!917545) (not e!778548))))

(assert (=> b!1374242 (= res!917545 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917544 () Bool)

(assert (=> start!116554 (=> (not res!917544) (not e!778548))))

(assert (=> start!116554 (= res!917544 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45541 a!4142))))))

(assert (=> start!116554 e!778548))

(assert (=> start!116554 true))

(declare-fun array_inv!33935 (array!93177) Bool)

(assert (=> start!116554 (array_inv!33935 a!4142)))

(assert (= (and start!116554 res!917544) b!1374240))

(assert (= (and b!1374240 res!917547) b!1374242))

(assert (= (and b!1374242 res!917545) b!1374241))

(assert (= (and b!1374241 res!917546) b!1374239))

(assert (= (and b!1374239 (not res!917543)) b!1374238))

(declare-fun m!1257573 () Bool)

(assert (=> b!1374238 m!1257573))

(declare-fun m!1257575 () Bool)

(assert (=> b!1374238 m!1257575))

(declare-fun m!1257577 () Bool)

(assert (=> b!1374242 m!1257577))

(declare-fun m!1257579 () Bool)

(assert (=> start!116554 m!1257579))

(declare-fun m!1257581 () Bool)

(assert (=> b!1374239 m!1257581))

(declare-fun m!1257583 () Bool)

(assert (=> b!1374239 m!1257583))

(declare-fun m!1257585 () Bool)

(assert (=> b!1374239 m!1257585))

(declare-fun m!1257587 () Bool)

(assert (=> b!1374239 m!1257587))

(declare-fun m!1257589 () Bool)

(assert (=> b!1374240 m!1257589))

(assert (=> b!1374240 m!1257589))

(declare-fun m!1257591 () Bool)

(assert (=> b!1374240 m!1257591))

(check-sat (not b!1374239) (not b!1374238) (not start!116554) (not b!1374242) (not b!1374240))
