; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116646 () Bool)

(assert start!116646)

(declare-fun b!1374772 () Bool)

(declare-fun e!778838 () Bool)

(assert (=> b!1374772 (= e!778838 (not true))))

(declare-datatypes ((array!93254 0))(
  ( (array!93255 (arr!45027 (Array (_ BitVec 32) (_ BitVec 64))) (size!45578 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93254)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93254 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374772 (= (arrayCountValidKeys!0 (array!93255 (store (arr!45027 a!4142) i!1457 k!2959) (size!45578 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45441 0))(
  ( (Unit!45442) )
))
(declare-fun lt!603844 () Unit!45441)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93254 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45441)

(assert (=> b!1374772 (= lt!603844 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!918018 () Bool)

(assert (=> start!116646 (=> (not res!918018) (not e!778838))))

(assert (=> start!116646 (= res!918018 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45578 a!4142))))))

(assert (=> start!116646 e!778838))

(assert (=> start!116646 true))

(declare-fun array_inv!33972 (array!93254) Bool)

(assert (=> start!116646 (array_inv!33972 a!4142)))

(declare-fun b!1374769 () Bool)

(declare-fun res!918020 () Bool)

(assert (=> b!1374769 (=> (not res!918020) (not e!778838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374769 (= res!918020 (validKeyInArray!0 (select (arr!45027 a!4142) i!1457)))))

(declare-fun b!1374771 () Bool)

(declare-fun res!918021 () Bool)

(assert (=> b!1374771 (=> (not res!918021) (not e!778838))))

(assert (=> b!1374771 (= res!918021 (bvslt (size!45578 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374770 () Bool)

(declare-fun res!918019 () Bool)

(assert (=> b!1374770 (=> (not res!918019) (not e!778838))))

(assert (=> b!1374770 (= res!918019 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116646 res!918018) b!1374769))

(assert (= (and b!1374769 res!918020) b!1374770))

(assert (= (and b!1374770 res!918019) b!1374771))

(assert (= (and b!1374771 res!918021) b!1374772))

(declare-fun m!1258395 () Bool)

(assert (=> b!1374772 m!1258395))

(declare-fun m!1258397 () Bool)

(assert (=> b!1374772 m!1258397))

(declare-fun m!1258399 () Bool)

(assert (=> b!1374772 m!1258399))

(declare-fun m!1258401 () Bool)

(assert (=> b!1374772 m!1258401))

(declare-fun m!1258403 () Bool)

(assert (=> start!116646 m!1258403))

(declare-fun m!1258405 () Bool)

(assert (=> b!1374769 m!1258405))

(assert (=> b!1374769 m!1258405))

(declare-fun m!1258407 () Bool)

(assert (=> b!1374769 m!1258407))

(declare-fun m!1258409 () Bool)

(assert (=> b!1374770 m!1258409))

(push 1)

(assert (not b!1374770))

(assert (not b!1374769))

(assert (not b!1374772))

(assert (not start!116646))

(check-sat)

(pop 1)

