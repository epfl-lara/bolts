; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116628 () Bool)

(assert start!116628)

(declare-fun b!1374662 () Bool)

(declare-fun res!917913 () Bool)

(declare-fun e!778784 () Bool)

(assert (=> b!1374662 (=> (not res!917913) (not e!778784))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374662 (= res!917913 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917911 () Bool)

(assert (=> start!116628 (=> (not res!917911) (not e!778784))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93236 0))(
  ( (array!93237 (arr!45018 (Array (_ BitVec 32) (_ BitVec 64))) (size!45569 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93236)

(assert (=> start!116628 (= res!917911 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45569 a!4142))))))

(assert (=> start!116628 e!778784))

(assert (=> start!116628 true))

(declare-fun array_inv!33963 (array!93236) Bool)

(assert (=> start!116628 (array_inv!33963 a!4142)))

(declare-fun b!1374663 () Bool)

(declare-fun res!917910 () Bool)

(assert (=> b!1374663 (=> (not res!917910) (not e!778784))))

(assert (=> b!1374663 (= res!917910 (bvslt (size!45569 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374661 () Bool)

(declare-fun res!917912 () Bool)

(assert (=> b!1374661 (=> (not res!917912) (not e!778784))))

(assert (=> b!1374661 (= res!917912 (validKeyInArray!0 (select (arr!45018 a!4142) i!1457)))))

(declare-fun b!1374664 () Bool)

(assert (=> b!1374664 (= e!778784 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93236 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374664 (= (arrayCountValidKeys!0 (array!93237 (store (arr!45018 a!4142) i!1457 k!2959) (size!45569 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45423 0))(
  ( (Unit!45424) )
))
(declare-fun lt!603817 () Unit!45423)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93236 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45423)

(assert (=> b!1374664 (= lt!603817 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116628 res!917911) b!1374661))

(assert (= (and b!1374661 res!917912) b!1374662))

(assert (= (and b!1374662 res!917913) b!1374663))

(assert (= (and b!1374663 res!917910) b!1374664))

(declare-fun m!1258251 () Bool)

(assert (=> b!1374662 m!1258251))

(declare-fun m!1258253 () Bool)

(assert (=> start!116628 m!1258253))

(declare-fun m!1258255 () Bool)

(assert (=> b!1374661 m!1258255))

(assert (=> b!1374661 m!1258255))

(declare-fun m!1258257 () Bool)

(assert (=> b!1374661 m!1258257))

(declare-fun m!1258259 () Bool)

(assert (=> b!1374664 m!1258259))

(declare-fun m!1258261 () Bool)

(assert (=> b!1374664 m!1258261))

(declare-fun m!1258263 () Bool)

(assert (=> b!1374664 m!1258263))

(declare-fun m!1258265 () Bool)

(assert (=> b!1374664 m!1258265))

(push 1)

(assert (not b!1374662))

(assert (not b!1374661))

(assert (not start!116628))

(assert (not b!1374664))

(check-sat)

