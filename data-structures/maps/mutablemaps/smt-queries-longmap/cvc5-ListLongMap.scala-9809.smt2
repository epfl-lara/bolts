; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116540 () Bool)

(assert start!116540)

(declare-fun b!1374133 () Bool)

(declare-fun e!778485 () Bool)

(declare-fun e!778486 () Bool)

(assert (=> b!1374133 (= e!778485 (not e!778486))))

(declare-fun res!917442 () Bool)

(assert (=> b!1374133 (=> res!917442 e!778486)))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374133 (= res!917442 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-datatypes ((array!93163 0))(
  ( (array!93164 (arr!44983 (Array (_ BitVec 32) (_ BitVec 64))) (size!45534 (_ BitVec 32))) )
))
(declare-fun lt!603283 () array!93163)

(declare-fun a!4142 () array!93163)

(declare-fun arrayCountValidKeys!0 (array!93163 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374133 (= (arrayCountValidKeys!0 lt!603283 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374133 (= lt!603283 (array!93164 (store (arr!44983 a!4142) i!1457 k!2959) (size!45534 a!4142)))))

(declare-datatypes ((Unit!45365 0))(
  ( (Unit!45366) )
))
(declare-fun lt!603282 () Unit!45365)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45365)

(assert (=> b!1374133 (= lt!603282 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374134 () Bool)

(declare-fun res!917439 () Bool)

(assert (=> b!1374134 (=> (not res!917439) (not e!778485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374134 (= res!917439 (validKeyInArray!0 (select (arr!44983 a!4142) i!1457)))))

(declare-fun b!1374135 () Bool)

(assert (=> b!1374135 (= e!778486 true)))

(declare-fun lt!603284 () (_ BitVec 32))

(assert (=> b!1374135 (= lt!603284 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603281 () (_ BitVec 32))

(assert (=> b!1374135 (= lt!603281 (arrayCountValidKeys!0 lt!603283 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374136 () Bool)

(declare-fun res!917438 () Bool)

(assert (=> b!1374136 (=> (not res!917438) (not e!778485))))

(assert (=> b!1374136 (= res!917438 (bvslt (size!45534 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374137 () Bool)

(declare-fun res!917440 () Bool)

(assert (=> b!1374137 (=> (not res!917440) (not e!778485))))

(assert (=> b!1374137 (= res!917440 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917441 () Bool)

(assert (=> start!116540 (=> (not res!917441) (not e!778485))))

(assert (=> start!116540 (= res!917441 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45534 a!4142))))))

(assert (=> start!116540 e!778485))

(assert (=> start!116540 true))

(declare-fun array_inv!33928 (array!93163) Bool)

(assert (=> start!116540 (array_inv!33928 a!4142)))

(assert (= (and start!116540 res!917441) b!1374134))

(assert (= (and b!1374134 res!917439) b!1374137))

(assert (= (and b!1374137 res!917440) b!1374136))

(assert (= (and b!1374136 res!917438) b!1374133))

(assert (= (and b!1374133 (not res!917442)) b!1374135))

(declare-fun m!1257433 () Bool)

(assert (=> b!1374135 m!1257433))

(declare-fun m!1257435 () Bool)

(assert (=> b!1374135 m!1257435))

(declare-fun m!1257437 () Bool)

(assert (=> b!1374134 m!1257437))

(assert (=> b!1374134 m!1257437))

(declare-fun m!1257439 () Bool)

(assert (=> b!1374134 m!1257439))

(declare-fun m!1257441 () Bool)

(assert (=> b!1374137 m!1257441))

(declare-fun m!1257443 () Bool)

(assert (=> start!116540 m!1257443))

(declare-fun m!1257445 () Bool)

(assert (=> b!1374133 m!1257445))

(declare-fun m!1257447 () Bool)

(assert (=> b!1374133 m!1257447))

(declare-fun m!1257449 () Bool)

(assert (=> b!1374133 m!1257449))

(declare-fun m!1257451 () Bool)

(assert (=> b!1374133 m!1257451))

(push 1)

(assert (not b!1374134))

(assert (not b!1374137))

(assert (not b!1374133))

(assert (not start!116540))

(assert (not b!1374135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

