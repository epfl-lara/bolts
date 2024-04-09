; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116490 () Bool)

(assert start!116490)

(declare-fun b!1373805 () Bool)

(declare-fun res!917111 () Bool)

(declare-fun e!778305 () Bool)

(assert (=> b!1373805 (=> (not res!917111) (not e!778305))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373805 (= res!917111 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917109 () Bool)

(assert (=> start!116490 (=> (not res!917109) (not e!778305))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93113 0))(
  ( (array!93114 (arr!44958 (Array (_ BitVec 32) (_ BitVec 64))) (size!45509 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93113)

(assert (=> start!116490 (= res!917109 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45509 a!4142))))))

(assert (=> start!116490 e!778305))

(assert (=> start!116490 true))

(declare-fun array_inv!33903 (array!93113) Bool)

(assert (=> start!116490 (array_inv!33903 a!4142)))

(declare-fun b!1373804 () Bool)

(declare-fun res!917110 () Bool)

(assert (=> b!1373804 (=> (not res!917110) (not e!778305))))

(assert (=> b!1373804 (= res!917110 (validKeyInArray!0 (select (arr!44958 a!4142) i!1457)))))

(declare-fun b!1373806 () Bool)

(declare-fun res!917112 () Bool)

(assert (=> b!1373806 (=> (not res!917112) (not e!778305))))

(assert (=> b!1373806 (= res!917112 (and (bvslt (size!45509 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45509 a!4142))))))

(declare-fun b!1373807 () Bool)

(assert (=> b!1373807 (= e!778305 false)))

(declare-fun lt!603073 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93113 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373807 (= lt!603073 (arrayCountValidKeys!0 (array!93114 (store (arr!44958 a!4142) i!1457 k!2959) (size!45509 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603074 () (_ BitVec 32))

(assert (=> b!1373807 (= lt!603074 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116490 res!917109) b!1373804))

(assert (= (and b!1373804 res!917110) b!1373805))

(assert (= (and b!1373805 res!917111) b!1373806))

(assert (= (and b!1373806 res!917112) b!1373807))

(declare-fun m!1257029 () Bool)

(assert (=> b!1373805 m!1257029))

(declare-fun m!1257031 () Bool)

(assert (=> start!116490 m!1257031))

(declare-fun m!1257033 () Bool)

(assert (=> b!1373804 m!1257033))

(assert (=> b!1373804 m!1257033))

(declare-fun m!1257035 () Bool)

(assert (=> b!1373804 m!1257035))

(declare-fun m!1257037 () Bool)

(assert (=> b!1373807 m!1257037))

(declare-fun m!1257039 () Bool)

(assert (=> b!1373807 m!1257039))

(declare-fun m!1257041 () Bool)

(assert (=> b!1373807 m!1257041))

(push 1)

(assert (not start!116490))

(assert (not b!1373807))

(assert (not b!1373805))

(assert (not b!1373804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

