; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116558 () Bool)

(assert start!116558)

(declare-fun b!1374269 () Bool)

(declare-fun e!778563 () Bool)

(assert (=> b!1374269 (= e!778563 (not true))))

(declare-datatypes ((array!93181 0))(
  ( (array!93182 (arr!44992 (Array (_ BitVec 32) (_ BitVec 64))) (size!45543 (_ BitVec 32))) )
))
(declare-fun lt!603389 () array!93181)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun a!4142 () array!93181)

(declare-fun arrayCountValidKeys!0 (array!93181 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374269 (= (arrayCountValidKeys!0 lt!603389 (bvadd #b00000000000000000000000000000001 i!1457) (size!45543 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45543 a!4142)))))

(declare-datatypes ((Unit!45383 0))(
  ( (Unit!45384) )
))
(declare-fun lt!603388 () Unit!45383)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45383)

(assert (=> b!1374269 (= lt!603388 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374269 (= (arrayCountValidKeys!0 lt!603389 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374269 (= lt!603389 (array!93182 (store (arr!44992 a!4142) i!1457 k!2959) (size!45543 a!4142)))))

(declare-fun lt!603387 () Unit!45383)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45383)

(assert (=> b!1374269 (= lt!603387 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374268 () Bool)

(declare-fun res!917571 () Bool)

(assert (=> b!1374268 (=> (not res!917571) (not e!778563))))

(assert (=> b!1374268 (= res!917571 (bvslt (size!45543 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374267 () Bool)

(declare-fun res!917572 () Bool)

(assert (=> b!1374267 (=> (not res!917572) (not e!778563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374267 (= res!917572 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374266 () Bool)

(declare-fun res!917573 () Bool)

(assert (=> b!1374266 (=> (not res!917573) (not e!778563))))

(assert (=> b!1374266 (= res!917573 (validKeyInArray!0 (select (arr!44992 a!4142) i!1457)))))

(declare-fun res!917574 () Bool)

(assert (=> start!116558 (=> (not res!917574) (not e!778563))))

(assert (=> start!116558 (= res!917574 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45543 a!4142))))))

(assert (=> start!116558 e!778563))

(assert (=> start!116558 true))

(declare-fun array_inv!33937 (array!93181) Bool)

(assert (=> start!116558 (array_inv!33937 a!4142)))

(assert (= (and start!116558 res!917574) b!1374266))

(assert (= (and b!1374266 res!917573) b!1374267))

(assert (= (and b!1374267 res!917572) b!1374268))

(assert (= (and b!1374268 res!917571) b!1374269))

(declare-fun m!1257613 () Bool)

(assert (=> b!1374269 m!1257613))

(declare-fun m!1257615 () Bool)

(assert (=> b!1374269 m!1257615))

(declare-fun m!1257617 () Bool)

(assert (=> b!1374269 m!1257617))

(declare-fun m!1257619 () Bool)

(assert (=> b!1374269 m!1257619))

(declare-fun m!1257621 () Bool)

(assert (=> b!1374269 m!1257621))

(declare-fun m!1257623 () Bool)

(assert (=> b!1374269 m!1257623))

(declare-fun m!1257625 () Bool)

(assert (=> b!1374269 m!1257625))

(declare-fun m!1257627 () Bool)

(assert (=> b!1374267 m!1257627))

(declare-fun m!1257629 () Bool)

(assert (=> b!1374266 m!1257629))

(assert (=> b!1374266 m!1257629))

(declare-fun m!1257631 () Bool)

(assert (=> b!1374266 m!1257631))

(declare-fun m!1257633 () Bool)

(assert (=> start!116558 m!1257633))

(push 1)

(assert (not b!1374269))

(assert (not b!1374266))

(assert (not b!1374267))

(assert (not start!116558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

