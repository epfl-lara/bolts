; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116642 () Bool)

(assert start!116642)

(declare-fun res!917996 () Bool)

(declare-fun e!778826 () Bool)

(assert (=> start!116642 (=> (not res!917996) (not e!778826))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93250 0))(
  ( (array!93251 (arr!45025 (Array (_ BitVec 32) (_ BitVec 64))) (size!45576 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93250)

(assert (=> start!116642 (= res!917996 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45576 a!4142))))))

(assert (=> start!116642 e!778826))

(assert (=> start!116642 true))

(declare-fun array_inv!33970 (array!93250) Bool)

(assert (=> start!116642 (array_inv!33970 a!4142)))

(declare-fun b!1374746 () Bool)

(declare-fun res!917995 () Bool)

(assert (=> b!1374746 (=> (not res!917995) (not e!778826))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374746 (= res!917995 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374747 () Bool)

(declare-fun res!917994 () Bool)

(assert (=> b!1374747 (=> (not res!917994) (not e!778826))))

(assert (=> b!1374747 (= res!917994 (bvslt (size!45576 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374745 () Bool)

(declare-fun res!917997 () Bool)

(assert (=> b!1374745 (=> (not res!917997) (not e!778826))))

(assert (=> b!1374745 (= res!917997 (validKeyInArray!0 (select (arr!45025 a!4142) i!1457)))))

(declare-fun b!1374748 () Bool)

(assert (=> b!1374748 (= e!778826 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93250 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374748 (= (arrayCountValidKeys!0 (array!93251 (store (arr!45025 a!4142) i!1457 k!2959) (size!45576 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45437 0))(
  ( (Unit!45438) )
))
(declare-fun lt!603838 () Unit!45437)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93250 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45437)

(assert (=> b!1374748 (= lt!603838 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116642 res!917996) b!1374745))

(assert (= (and b!1374745 res!917997) b!1374746))

(assert (= (and b!1374746 res!917995) b!1374747))

(assert (= (and b!1374747 res!917994) b!1374748))

(declare-fun m!1258363 () Bool)

(assert (=> start!116642 m!1258363))

(declare-fun m!1258365 () Bool)

(assert (=> b!1374746 m!1258365))

(declare-fun m!1258367 () Bool)

(assert (=> b!1374745 m!1258367))

(assert (=> b!1374745 m!1258367))

(declare-fun m!1258369 () Bool)

(assert (=> b!1374745 m!1258369))

(declare-fun m!1258371 () Bool)

(assert (=> b!1374748 m!1258371))

(declare-fun m!1258373 () Bool)

(assert (=> b!1374748 m!1258373))

(declare-fun m!1258375 () Bool)

(assert (=> b!1374748 m!1258375))

(declare-fun m!1258377 () Bool)

(assert (=> b!1374748 m!1258377))

(push 1)

(assert (not b!1374745))

(assert (not b!1374748))

(assert (not start!116642))

(assert (not b!1374746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

