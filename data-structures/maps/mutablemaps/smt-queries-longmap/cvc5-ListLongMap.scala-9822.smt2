; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116636 () Bool)

(assert start!116636)

(declare-fun b!1374709 () Bool)

(declare-fun res!917959 () Bool)

(declare-fun e!778808 () Bool)

(assert (=> b!1374709 (=> (not res!917959) (not e!778808))))

(declare-datatypes ((array!93244 0))(
  ( (array!93245 (arr!45022 (Array (_ BitVec 32) (_ BitVec 64))) (size!45573 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93244)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374709 (= res!917959 (validKeyInArray!0 (select (arr!45022 a!4142) i!1457)))))

(declare-fun res!917960 () Bool)

(assert (=> start!116636 (=> (not res!917960) (not e!778808))))

(assert (=> start!116636 (= res!917960 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45573 a!4142))))))

(assert (=> start!116636 e!778808))

(assert (=> start!116636 true))

(declare-fun array_inv!33967 (array!93244) Bool)

(assert (=> start!116636 (array_inv!33967 a!4142)))

(declare-fun b!1374710 () Bool)

(declare-fun res!917958 () Bool)

(assert (=> b!1374710 (=> (not res!917958) (not e!778808))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374710 (= res!917958 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374711 () Bool)

(declare-fun res!917961 () Bool)

(assert (=> b!1374711 (=> (not res!917961) (not e!778808))))

(assert (=> b!1374711 (= res!917961 (bvslt (size!45573 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374712 () Bool)

(assert (=> b!1374712 (= e!778808 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93244 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374712 (= (arrayCountValidKeys!0 (array!93245 (store (arr!45022 a!4142) i!1457 k!2959) (size!45573 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45431 0))(
  ( (Unit!45432) )
))
(declare-fun lt!603829 () Unit!45431)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93244 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45431)

(assert (=> b!1374712 (= lt!603829 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116636 res!917960) b!1374709))

(assert (= (and b!1374709 res!917959) b!1374710))

(assert (= (and b!1374710 res!917958) b!1374711))

(assert (= (and b!1374711 res!917961) b!1374712))

(declare-fun m!1258315 () Bool)

(assert (=> b!1374709 m!1258315))

(assert (=> b!1374709 m!1258315))

(declare-fun m!1258317 () Bool)

(assert (=> b!1374709 m!1258317))

(declare-fun m!1258319 () Bool)

(assert (=> start!116636 m!1258319))

(declare-fun m!1258321 () Bool)

(assert (=> b!1374710 m!1258321))

(declare-fun m!1258323 () Bool)

(assert (=> b!1374712 m!1258323))

(declare-fun m!1258325 () Bool)

(assert (=> b!1374712 m!1258325))

(declare-fun m!1258327 () Bool)

(assert (=> b!1374712 m!1258327))

(declare-fun m!1258329 () Bool)

(assert (=> b!1374712 m!1258329))

(push 1)

(assert (not b!1374712))

(assert (not start!116636))

(assert (not b!1374709))

(assert (not b!1374710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

