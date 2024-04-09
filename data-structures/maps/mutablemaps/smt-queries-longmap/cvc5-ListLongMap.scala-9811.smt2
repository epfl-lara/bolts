; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116552 () Bool)

(assert start!116552)

(declare-fun b!1374223 () Bool)

(declare-fun e!778539 () Bool)

(assert (=> b!1374223 (= e!778539 true)))

(declare-fun lt!603355 () (_ BitVec 32))

(declare-datatypes ((array!93175 0))(
  ( (array!93176 (arr!44989 (Array (_ BitVec 32) (_ BitVec 64))) (size!45540 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93175)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93175 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374223 (= lt!603355 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603353 () (_ BitVec 32))

(declare-fun lt!603356 () array!93175)

(assert (=> b!1374223 (= lt!603353 (arrayCountValidKeys!0 lt!603356 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374224 () Bool)

(declare-fun res!917529 () Bool)

(declare-fun e!778540 () Bool)

(assert (=> b!1374224 (=> (not res!917529) (not e!778540))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374224 (= res!917529 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374225 () Bool)

(declare-fun res!917531 () Bool)

(assert (=> b!1374225 (=> (not res!917531) (not e!778540))))

(assert (=> b!1374225 (= res!917531 (validKeyInArray!0 (select (arr!44989 a!4142) i!1457)))))

(declare-fun b!1374226 () Bool)

(assert (=> b!1374226 (= e!778540 (not e!778539))))

(declare-fun res!917528 () Bool)

(assert (=> b!1374226 (=> res!917528 e!778539)))

(assert (=> b!1374226 (= res!917528 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374226 (= (arrayCountValidKeys!0 lt!603356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374226 (= lt!603356 (array!93176 (store (arr!44989 a!4142) i!1457 k!2959) (size!45540 a!4142)))))

(declare-datatypes ((Unit!45377 0))(
  ( (Unit!45378) )
))
(declare-fun lt!603354 () Unit!45377)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93175 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45377)

(assert (=> b!1374226 (= lt!603354 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!917530 () Bool)

(assert (=> start!116552 (=> (not res!917530) (not e!778540))))

(assert (=> start!116552 (= res!917530 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45540 a!4142))))))

(assert (=> start!116552 e!778540))

(assert (=> start!116552 true))

(declare-fun array_inv!33934 (array!93175) Bool)

(assert (=> start!116552 (array_inv!33934 a!4142)))

(declare-fun b!1374227 () Bool)

(declare-fun res!917532 () Bool)

(assert (=> b!1374227 (=> (not res!917532) (not e!778540))))

(assert (=> b!1374227 (= res!917532 (bvslt (size!45540 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116552 res!917530) b!1374225))

(assert (= (and b!1374225 res!917531) b!1374224))

(assert (= (and b!1374224 res!917529) b!1374227))

(assert (= (and b!1374227 res!917532) b!1374226))

(assert (= (and b!1374226 (not res!917528)) b!1374223))

(declare-fun m!1257553 () Bool)

(assert (=> b!1374225 m!1257553))

(assert (=> b!1374225 m!1257553))

(declare-fun m!1257555 () Bool)

(assert (=> b!1374225 m!1257555))

(declare-fun m!1257557 () Bool)

(assert (=> b!1374224 m!1257557))

(declare-fun m!1257559 () Bool)

(assert (=> b!1374226 m!1257559))

(declare-fun m!1257561 () Bool)

(assert (=> b!1374226 m!1257561))

(declare-fun m!1257563 () Bool)

(assert (=> b!1374226 m!1257563))

(declare-fun m!1257565 () Bool)

(assert (=> b!1374226 m!1257565))

(declare-fun m!1257567 () Bool)

(assert (=> b!1374223 m!1257567))

(declare-fun m!1257569 () Bool)

(assert (=> b!1374223 m!1257569))

(declare-fun m!1257571 () Bool)

(assert (=> start!116552 m!1257571))

(push 1)

(assert (not b!1374224))

(assert (not b!1374226))

(assert (not b!1374225))

(assert (not b!1374223))

(assert (not start!116552))

(check-sat)

(pop 1)

