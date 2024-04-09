; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116652 () Bool)

(assert start!116652)

(declare-fun b!1374806 () Bool)

(declare-fun res!918057 () Bool)

(declare-fun e!778855 () Bool)

(assert (=> b!1374806 (=> (not res!918057) (not e!778855))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374806 (= res!918057 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374807 () Bool)

(declare-fun res!918054 () Bool)

(assert (=> b!1374807 (=> (not res!918054) (not e!778855))))

(declare-datatypes ((array!93260 0))(
  ( (array!93261 (arr!45030 (Array (_ BitVec 32) (_ BitVec 64))) (size!45581 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93260)

(assert (=> b!1374807 (= res!918054 (bvslt (size!45581 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374808 () Bool)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374808 (= e!778855 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1457) i!1457))))))

(declare-fun arrayCountValidKeys!0 (array!93260 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374808 (= (arrayCountValidKeys!0 (array!93261 (store (arr!45030 a!4142) i!1457 k!2959) (size!45581 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45447 0))(
  ( (Unit!45448) )
))
(declare-fun lt!603853 () Unit!45447)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45447)

(assert (=> b!1374808 (= lt!603853 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!918055 () Bool)

(assert (=> start!116652 (=> (not res!918055) (not e!778855))))

(assert (=> start!116652 (= res!918055 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45581 a!4142))))))

(assert (=> start!116652 e!778855))

(assert (=> start!116652 true))

(declare-fun array_inv!33975 (array!93260) Bool)

(assert (=> start!116652 (array_inv!33975 a!4142)))

(declare-fun b!1374805 () Bool)

(declare-fun res!918056 () Bool)

(assert (=> b!1374805 (=> (not res!918056) (not e!778855))))

(assert (=> b!1374805 (= res!918056 (validKeyInArray!0 (select (arr!45030 a!4142) i!1457)))))

(assert (= (and start!116652 res!918055) b!1374805))

(assert (= (and b!1374805 res!918056) b!1374806))

(assert (= (and b!1374806 res!918057) b!1374807))

(assert (= (and b!1374807 res!918054) b!1374808))

(declare-fun m!1258443 () Bool)

(assert (=> b!1374806 m!1258443))

(declare-fun m!1258445 () Bool)

(assert (=> b!1374808 m!1258445))

(declare-fun m!1258447 () Bool)

(assert (=> b!1374808 m!1258447))

(declare-fun m!1258449 () Bool)

(assert (=> b!1374808 m!1258449))

(declare-fun m!1258451 () Bool)

(assert (=> b!1374808 m!1258451))

(declare-fun m!1258453 () Bool)

(assert (=> start!116652 m!1258453))

(declare-fun m!1258455 () Bool)

(assert (=> b!1374805 m!1258455))

(assert (=> b!1374805 m!1258455))

(declare-fun m!1258457 () Bool)

(assert (=> b!1374805 m!1258457))

(push 1)

(assert (not start!116652))

(assert (not b!1374808))

(assert (not b!1374806))

(assert (not b!1374805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

