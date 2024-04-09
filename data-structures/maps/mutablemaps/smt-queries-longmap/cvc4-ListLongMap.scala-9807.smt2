; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116532 () Bool)

(assert start!116532)

(declare-fun b!1374073 () Bool)

(declare-fun e!778450 () Bool)

(declare-fun e!778448 () Bool)

(assert (=> b!1374073 (= e!778450 (not e!778448))))

(declare-fun res!917379 () Bool)

(assert (=> b!1374073 (=> res!917379 e!778448)))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374073 (= res!917379 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-datatypes ((array!93155 0))(
  ( (array!93156 (arr!44979 (Array (_ BitVec 32) (_ BitVec 64))) (size!45530 (_ BitVec 32))) )
))
(declare-fun lt!603235 () array!93155)

(declare-fun a!4142 () array!93155)

(declare-fun arrayCountValidKeys!0 (array!93155 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374073 (= (arrayCountValidKeys!0 lt!603235 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374073 (= lt!603235 (array!93156 (store (arr!44979 a!4142) i!1457 k!2959) (size!45530 a!4142)))))

(declare-datatypes ((Unit!45357 0))(
  ( (Unit!45358) )
))
(declare-fun lt!603236 () Unit!45357)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45357)

(assert (=> b!1374073 (= lt!603236 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!917378 () Bool)

(assert (=> start!116532 (=> (not res!917378) (not e!778450))))

(assert (=> start!116532 (= res!917378 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45530 a!4142))))))

(assert (=> start!116532 e!778450))

(assert (=> start!116532 true))

(declare-fun array_inv!33924 (array!93155) Bool)

(assert (=> start!116532 (array_inv!33924 a!4142)))

(declare-fun b!1374074 () Bool)

(declare-fun res!917381 () Bool)

(assert (=> b!1374074 (=> (not res!917381) (not e!778450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374074 (= res!917381 (validKeyInArray!0 (select (arr!44979 a!4142) i!1457)))))

(declare-fun b!1374075 () Bool)

(declare-fun res!917380 () Bool)

(assert (=> b!1374075 (=> (not res!917380) (not e!778450))))

(assert (=> b!1374075 (= res!917380 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374076 () Bool)

(declare-fun res!917382 () Bool)

(assert (=> b!1374076 (=> (not res!917382) (not e!778450))))

(assert (=> b!1374076 (= res!917382 (bvslt (size!45530 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374077 () Bool)

(assert (=> b!1374077 (= e!778448 true)))

(declare-fun lt!603233 () (_ BitVec 32))

(assert (=> b!1374077 (= lt!603233 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603234 () (_ BitVec 32))

(assert (=> b!1374077 (= lt!603234 (arrayCountValidKeys!0 lt!603235 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116532 res!917378) b!1374074))

(assert (= (and b!1374074 res!917381) b!1374075))

(assert (= (and b!1374075 res!917380) b!1374076))

(assert (= (and b!1374076 res!917382) b!1374073))

(assert (= (and b!1374073 (not res!917379)) b!1374077))

(declare-fun m!1257353 () Bool)

(assert (=> b!1374074 m!1257353))

(assert (=> b!1374074 m!1257353))

(declare-fun m!1257355 () Bool)

(assert (=> b!1374074 m!1257355))

(declare-fun m!1257357 () Bool)

(assert (=> b!1374073 m!1257357))

(declare-fun m!1257359 () Bool)

(assert (=> b!1374073 m!1257359))

(declare-fun m!1257361 () Bool)

(assert (=> b!1374073 m!1257361))

(declare-fun m!1257363 () Bool)

(assert (=> b!1374073 m!1257363))

(declare-fun m!1257365 () Bool)

(assert (=> b!1374075 m!1257365))

(declare-fun m!1257367 () Bool)

(assert (=> b!1374077 m!1257367))

(declare-fun m!1257369 () Bool)

(assert (=> b!1374077 m!1257369))

(declare-fun m!1257371 () Bool)

(assert (=> start!116532 m!1257371))

(push 1)

(assert (not b!1374073))

(assert (not start!116532))

(assert (not b!1374077))

(assert (not b!1374075))

(assert (not b!1374074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

