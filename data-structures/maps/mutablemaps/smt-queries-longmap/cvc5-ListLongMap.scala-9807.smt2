; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116528 () Bool)

(assert start!116528)

(declare-fun b!1374043 () Bool)

(declare-fun e!778430 () Bool)

(declare-fun e!778431 () Bool)

(assert (=> b!1374043 (= e!778430 (not e!778431))))

(declare-fun res!917351 () Bool)

(assert (=> b!1374043 (=> res!917351 e!778431)))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374043 (= res!917351 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-datatypes ((array!93151 0))(
  ( (array!93152 (arr!44977 (Array (_ BitVec 32) (_ BitVec 64))) (size!45528 (_ BitVec 32))) )
))
(declare-fun lt!603210 () array!93151)

(declare-fun a!4142 () array!93151)

(declare-fun arrayCountValidKeys!0 (array!93151 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374043 (= (arrayCountValidKeys!0 lt!603210 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374043 (= lt!603210 (array!93152 (store (arr!44977 a!4142) i!1457 k!2959) (size!45528 a!4142)))))

(declare-datatypes ((Unit!45353 0))(
  ( (Unit!45354) )
))
(declare-fun lt!603209 () Unit!45353)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93151 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45353)

(assert (=> b!1374043 (= lt!603209 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!917352 () Bool)

(assert (=> start!116528 (=> (not res!917352) (not e!778430))))

(assert (=> start!116528 (= res!917352 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45528 a!4142))))))

(assert (=> start!116528 e!778430))

(assert (=> start!116528 true))

(declare-fun array_inv!33922 (array!93151) Bool)

(assert (=> start!116528 (array_inv!33922 a!4142)))

(declare-fun b!1374044 () Bool)

(declare-fun res!917350 () Bool)

(assert (=> b!1374044 (=> (not res!917350) (not e!778430))))

(assert (=> b!1374044 (= res!917350 (bvslt (size!45528 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374045 () Bool)

(declare-fun res!917349 () Bool)

(assert (=> b!1374045 (=> (not res!917349) (not e!778430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374045 (= res!917349 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374046 () Bool)

(assert (=> b!1374046 (= e!778431 true)))

(declare-fun lt!603212 () (_ BitVec 32))

(assert (=> b!1374046 (= lt!603212 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603211 () (_ BitVec 32))

(assert (=> b!1374046 (= lt!603211 (arrayCountValidKeys!0 lt!603210 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374047 () Bool)

(declare-fun res!917348 () Bool)

(assert (=> b!1374047 (=> (not res!917348) (not e!778430))))

(assert (=> b!1374047 (= res!917348 (validKeyInArray!0 (select (arr!44977 a!4142) i!1457)))))

(assert (= (and start!116528 res!917352) b!1374047))

(assert (= (and b!1374047 res!917348) b!1374045))

(assert (= (and b!1374045 res!917349) b!1374044))

(assert (= (and b!1374044 res!917350) b!1374043))

(assert (= (and b!1374043 (not res!917351)) b!1374046))

(declare-fun m!1257313 () Bool)

(assert (=> b!1374046 m!1257313))

(declare-fun m!1257315 () Bool)

(assert (=> b!1374046 m!1257315))

(declare-fun m!1257317 () Bool)

(assert (=> b!1374047 m!1257317))

(assert (=> b!1374047 m!1257317))

(declare-fun m!1257319 () Bool)

(assert (=> b!1374047 m!1257319))

(declare-fun m!1257321 () Bool)

(assert (=> b!1374045 m!1257321))

(declare-fun m!1257323 () Bool)

(assert (=> b!1374043 m!1257323))

(declare-fun m!1257325 () Bool)

(assert (=> b!1374043 m!1257325))

(declare-fun m!1257327 () Bool)

(assert (=> b!1374043 m!1257327))

(declare-fun m!1257329 () Bool)

(assert (=> b!1374043 m!1257329))

(declare-fun m!1257331 () Bool)

(assert (=> start!116528 m!1257331))

(push 1)

(assert (not b!1374043))

(assert (not start!116528))

(assert (not b!1374047))

(assert (not b!1374045))

(assert (not b!1374046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

