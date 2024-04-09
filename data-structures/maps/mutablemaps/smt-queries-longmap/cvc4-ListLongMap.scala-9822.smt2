; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116640 () Bool)

(assert start!116640)

(declare-fun b!1374734 () Bool)

(declare-fun res!917984 () Bool)

(declare-fun e!778819 () Bool)

(assert (=> b!1374734 (=> (not res!917984) (not e!778819))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374734 (= res!917984 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374733 () Bool)

(declare-fun res!917985 () Bool)

(assert (=> b!1374733 (=> (not res!917985) (not e!778819))))

(declare-datatypes ((array!93248 0))(
  ( (array!93249 (arr!45024 (Array (_ BitVec 32) (_ BitVec 64))) (size!45575 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93248)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374733 (= res!917985 (validKeyInArray!0 (select (arr!45024 a!4142) i!1457)))))

(declare-fun res!917982 () Bool)

(assert (=> start!116640 (=> (not res!917982) (not e!778819))))

(assert (=> start!116640 (= res!917982 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45575 a!4142))))))

(assert (=> start!116640 e!778819))

(assert (=> start!116640 true))

(declare-fun array_inv!33969 (array!93248) Bool)

(assert (=> start!116640 (array_inv!33969 a!4142)))

(declare-fun b!1374736 () Bool)

(assert (=> b!1374736 (= e!778819 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93248 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374736 (= (arrayCountValidKeys!0 (array!93249 (store (arr!45024 a!4142) i!1457 k!2959) (size!45575 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45435 0))(
  ( (Unit!45436) )
))
(declare-fun lt!603835 () Unit!45435)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93248 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45435)

(assert (=> b!1374736 (= lt!603835 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374735 () Bool)

(declare-fun res!917983 () Bool)

(assert (=> b!1374735 (=> (not res!917983) (not e!778819))))

(assert (=> b!1374735 (= res!917983 (bvslt (size!45575 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116640 res!917982) b!1374733))

(assert (= (and b!1374733 res!917985) b!1374734))

(assert (= (and b!1374734 res!917984) b!1374735))

(assert (= (and b!1374735 res!917983) b!1374736))

(declare-fun m!1258347 () Bool)

(assert (=> b!1374734 m!1258347))

(declare-fun m!1258349 () Bool)

(assert (=> b!1374733 m!1258349))

(assert (=> b!1374733 m!1258349))

(declare-fun m!1258351 () Bool)

(assert (=> b!1374733 m!1258351))

(declare-fun m!1258353 () Bool)

(assert (=> start!116640 m!1258353))

(declare-fun m!1258355 () Bool)

(assert (=> b!1374736 m!1258355))

(declare-fun m!1258357 () Bool)

(assert (=> b!1374736 m!1258357))

(declare-fun m!1258359 () Bool)

(assert (=> b!1374736 m!1258359))

(declare-fun m!1258361 () Bool)

(assert (=> b!1374736 m!1258361))

(push 1)

(assert (not b!1374736))

(assert (not start!116640))

(assert (not b!1374733))

(assert (not b!1374734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

