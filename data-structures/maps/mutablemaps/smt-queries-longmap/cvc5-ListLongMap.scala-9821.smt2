; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116630 () Bool)

(assert start!116630)

(declare-fun b!1374673 () Bool)

(declare-fun res!917924 () Bool)

(declare-fun e!778789 () Bool)

(assert (=> b!1374673 (=> (not res!917924) (not e!778789))))

(declare-datatypes ((array!93238 0))(
  ( (array!93239 (arr!45019 (Array (_ BitVec 32) (_ BitVec 64))) (size!45570 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93238)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374673 (= res!917924 (validKeyInArray!0 (select (arr!45019 a!4142) i!1457)))))

(declare-fun res!917922 () Bool)

(assert (=> start!116630 (=> (not res!917922) (not e!778789))))

(assert (=> start!116630 (= res!917922 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45570 a!4142))))))

(assert (=> start!116630 e!778789))

(assert (=> start!116630 true))

(declare-fun array_inv!33964 (array!93238) Bool)

(assert (=> start!116630 (array_inv!33964 a!4142)))

(declare-fun b!1374676 () Bool)

(assert (=> b!1374676 (= e!778789 (not true))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93238 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374676 (= (arrayCountValidKeys!0 (array!93239 (store (arr!45019 a!4142) i!1457 k!2959) (size!45570 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45425 0))(
  ( (Unit!45426) )
))
(declare-fun lt!603820 () Unit!45425)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93238 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45425)

(assert (=> b!1374676 (= lt!603820 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374675 () Bool)

(declare-fun res!917923 () Bool)

(assert (=> b!1374675 (=> (not res!917923) (not e!778789))))

(assert (=> b!1374675 (= res!917923 (bvslt (size!45570 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374674 () Bool)

(declare-fun res!917925 () Bool)

(assert (=> b!1374674 (=> (not res!917925) (not e!778789))))

(assert (=> b!1374674 (= res!917925 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116630 res!917922) b!1374673))

(assert (= (and b!1374673 res!917924) b!1374674))

(assert (= (and b!1374674 res!917925) b!1374675))

(assert (= (and b!1374675 res!917923) b!1374676))

(declare-fun m!1258267 () Bool)

(assert (=> b!1374673 m!1258267))

(assert (=> b!1374673 m!1258267))

(declare-fun m!1258269 () Bool)

(assert (=> b!1374673 m!1258269))

(declare-fun m!1258271 () Bool)

(assert (=> start!116630 m!1258271))

(declare-fun m!1258273 () Bool)

(assert (=> b!1374676 m!1258273))

(declare-fun m!1258275 () Bool)

(assert (=> b!1374676 m!1258275))

(declare-fun m!1258277 () Bool)

(assert (=> b!1374676 m!1258277))

(declare-fun m!1258279 () Bool)

(assert (=> b!1374676 m!1258279))

(declare-fun m!1258281 () Bool)

(assert (=> b!1374674 m!1258281))

(push 1)

(assert (not b!1374674))

(assert (not start!116630))

(assert (not b!1374673))

(assert (not b!1374676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

