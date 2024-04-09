; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116534 () Bool)

(assert start!116534)

(declare-fun b!1374088 () Bool)

(declare-fun res!917394 () Bool)

(declare-fun e!778459 () Bool)

(assert (=> b!1374088 (=> (not res!917394) (not e!778459))))

(declare-datatypes ((array!93157 0))(
  ( (array!93158 (arr!44980 (Array (_ BitVec 32) (_ BitVec 64))) (size!45531 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93157)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374088 (= res!917394 (validKeyInArray!0 (select (arr!44980 a!4142) i!1457)))))

(declare-fun b!1374089 () Bool)

(declare-fun res!917395 () Bool)

(assert (=> b!1374089 (=> (not res!917395) (not e!778459))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374089 (= res!917395 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374090 () Bool)

(declare-fun e!778458 () Bool)

(assert (=> b!1374090 (= e!778459 (not e!778458))))

(declare-fun res!917396 () Bool)

(assert (=> b!1374090 (=> res!917396 e!778458)))

(assert (=> b!1374090 (= res!917396 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-fun lt!603246 () array!93157)

(declare-fun arrayCountValidKeys!0 (array!93157 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374090 (= (arrayCountValidKeys!0 lt!603246 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374090 (= lt!603246 (array!93158 (store (arr!44980 a!4142) i!1457 k!2959) (size!45531 a!4142)))))

(declare-datatypes ((Unit!45359 0))(
  ( (Unit!45360) )
))
(declare-fun lt!603245 () Unit!45359)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45359)

(assert (=> b!1374090 (= lt!603245 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374091 () Bool)

(declare-fun res!917393 () Bool)

(assert (=> b!1374091 (=> (not res!917393) (not e!778459))))

(assert (=> b!1374091 (= res!917393 (bvslt (size!45531 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917397 () Bool)

(assert (=> start!116534 (=> (not res!917397) (not e!778459))))

(assert (=> start!116534 (= res!917397 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45531 a!4142))))))

(assert (=> start!116534 e!778459))

(assert (=> start!116534 true))

(declare-fun array_inv!33925 (array!93157) Bool)

(assert (=> start!116534 (array_inv!33925 a!4142)))

(declare-fun b!1374092 () Bool)

(assert (=> b!1374092 (= e!778458 true)))

(declare-fun lt!603247 () (_ BitVec 32))

(assert (=> b!1374092 (= lt!603247 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603248 () (_ BitVec 32))

(assert (=> b!1374092 (= lt!603248 (arrayCountValidKeys!0 lt!603246 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116534 res!917397) b!1374088))

(assert (= (and b!1374088 res!917394) b!1374089))

(assert (= (and b!1374089 res!917395) b!1374091))

(assert (= (and b!1374091 res!917393) b!1374090))

(assert (= (and b!1374090 (not res!917396)) b!1374092))

(declare-fun m!1257373 () Bool)

(assert (=> start!116534 m!1257373))

(declare-fun m!1257375 () Bool)

(assert (=> b!1374090 m!1257375))

(declare-fun m!1257377 () Bool)

(assert (=> b!1374090 m!1257377))

(declare-fun m!1257379 () Bool)

(assert (=> b!1374090 m!1257379))

(declare-fun m!1257381 () Bool)

(assert (=> b!1374090 m!1257381))

(declare-fun m!1257383 () Bool)

(assert (=> b!1374089 m!1257383))

(declare-fun m!1257385 () Bool)

(assert (=> b!1374088 m!1257385))

(assert (=> b!1374088 m!1257385))

(declare-fun m!1257387 () Bool)

(assert (=> b!1374088 m!1257387))

(declare-fun m!1257389 () Bool)

(assert (=> b!1374092 m!1257389))

(declare-fun m!1257391 () Bool)

(assert (=> b!1374092 m!1257391))

(push 1)

(assert (not start!116534))

(assert (not b!1374089))

(assert (not b!1374088))

(assert (not b!1374092))

(assert (not b!1374090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

