; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116538 () Bool)

(assert start!116538)

(declare-fun b!1374118 () Bool)

(declare-fun e!778475 () Bool)

(assert (=> b!1374118 (= e!778475 true)))

(declare-fun lt!603270 () (_ BitVec 32))

(declare-datatypes ((array!93161 0))(
  ( (array!93162 (arr!44982 (Array (_ BitVec 32) (_ BitVec 64))) (size!45533 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93161)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93161 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374118 (= lt!603270 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603271 () (_ BitVec 32))

(declare-fun lt!603269 () array!93161)

(assert (=> b!1374118 (= lt!603271 (arrayCountValidKeys!0 lt!603269 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374119 () Bool)

(declare-fun res!917427 () Bool)

(declare-fun e!778476 () Bool)

(assert (=> b!1374119 (=> (not res!917427) (not e!778476))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374119 (= res!917427 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374120 () Bool)

(assert (=> b!1374120 (= e!778476 (not e!778475))))

(declare-fun res!917426 () Bool)

(assert (=> b!1374120 (=> res!917426 e!778475)))

(assert (=> b!1374120 (= res!917426 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374120 (= (arrayCountValidKeys!0 lt!603269 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374120 (= lt!603269 (array!93162 (store (arr!44982 a!4142) i!1457 k!2959) (size!45533 a!4142)))))

(declare-datatypes ((Unit!45363 0))(
  ( (Unit!45364) )
))
(declare-fun lt!603272 () Unit!45363)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93161 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45363)

(assert (=> b!1374120 (= lt!603272 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374121 () Bool)

(declare-fun res!917423 () Bool)

(assert (=> b!1374121 (=> (not res!917423) (not e!778476))))

(assert (=> b!1374121 (= res!917423 (validKeyInArray!0 (select (arr!44982 a!4142) i!1457)))))

(declare-fun b!1374122 () Bool)

(declare-fun res!917425 () Bool)

(assert (=> b!1374122 (=> (not res!917425) (not e!778476))))

(assert (=> b!1374122 (= res!917425 (bvslt (size!45533 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917424 () Bool)

(assert (=> start!116538 (=> (not res!917424) (not e!778476))))

(assert (=> start!116538 (= res!917424 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45533 a!4142))))))

(assert (=> start!116538 e!778476))

(assert (=> start!116538 true))

(declare-fun array_inv!33927 (array!93161) Bool)

(assert (=> start!116538 (array_inv!33927 a!4142)))

(assert (= (and start!116538 res!917424) b!1374121))

(assert (= (and b!1374121 res!917423) b!1374119))

(assert (= (and b!1374119 res!917427) b!1374122))

(assert (= (and b!1374122 res!917425) b!1374120))

(assert (= (and b!1374120 (not res!917426)) b!1374118))

(declare-fun m!1257413 () Bool)

(assert (=> b!1374119 m!1257413))

(declare-fun m!1257415 () Bool)

(assert (=> start!116538 m!1257415))

(declare-fun m!1257417 () Bool)

(assert (=> b!1374121 m!1257417))

(assert (=> b!1374121 m!1257417))

(declare-fun m!1257419 () Bool)

(assert (=> b!1374121 m!1257419))

(declare-fun m!1257421 () Bool)

(assert (=> b!1374120 m!1257421))

(declare-fun m!1257423 () Bool)

(assert (=> b!1374120 m!1257423))

(declare-fun m!1257425 () Bool)

(assert (=> b!1374120 m!1257425))

(declare-fun m!1257427 () Bool)

(assert (=> b!1374120 m!1257427))

(declare-fun m!1257429 () Bool)

(assert (=> b!1374118 m!1257429))

(declare-fun m!1257431 () Bool)

(assert (=> b!1374118 m!1257431))

(push 1)

(assert (not b!1374118))

(assert (not start!116538))

(assert (not b!1374121))

(assert (not b!1374120))

(assert (not b!1374119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

