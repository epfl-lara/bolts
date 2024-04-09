; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117306 () Bool)

(assert start!117306)

(declare-fun b!1379486 () Bool)

(declare-fun res!922032 () Bool)

(declare-fun e!781493 () Bool)

(assert (=> b!1379486 (=> (not res!922032) (not e!781493))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379486 (= res!922032 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379487 () Bool)

(declare-fun res!922033 () Bool)

(assert (=> b!1379487 (=> (not res!922033) (not e!781493))))

(declare-datatypes ((array!93818 0))(
  ( (array!93819 (arr!45303 (Array (_ BitVec 32) (_ BitVec 64))) (size!45854 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93818)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379487 (= res!922033 (and (bvslt (size!45854 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45854 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379488 () Bool)

(assert (=> b!1379488 (= e!781493 false)))

(declare-fun lt!607609 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93818 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379488 (= lt!607609 (arrayCountValidKeys!0 (array!93819 (store (arr!45303 a!4094) i!1451 k!2953) (size!45854 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607608 () (_ BitVec 32))

(assert (=> b!1379488 (= lt!607608 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!922034 () Bool)

(assert (=> start!117306 (=> (not res!922034) (not e!781493))))

(assert (=> start!117306 (= res!922034 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45854 a!4094))))))

(assert (=> start!117306 e!781493))

(assert (=> start!117306 true))

(declare-fun array_inv!34248 (array!93818) Bool)

(assert (=> start!117306 (array_inv!34248 a!4094)))

(declare-fun b!1379485 () Bool)

(declare-fun res!922035 () Bool)

(assert (=> b!1379485 (=> (not res!922035) (not e!781493))))

(assert (=> b!1379485 (= res!922035 (validKeyInArray!0 (select (arr!45303 a!4094) i!1451)))))

(assert (= (and start!117306 res!922034) b!1379485))

(assert (= (and b!1379485 res!922035) b!1379486))

(assert (= (and b!1379486 res!922032) b!1379487))

(assert (= (and b!1379487 res!922033) b!1379488))

(declare-fun m!1264705 () Bool)

(assert (=> b!1379486 m!1264705))

(declare-fun m!1264707 () Bool)

(assert (=> b!1379488 m!1264707))

(declare-fun m!1264709 () Bool)

(assert (=> b!1379488 m!1264709))

(declare-fun m!1264711 () Bool)

(assert (=> b!1379488 m!1264711))

(declare-fun m!1264713 () Bool)

(assert (=> start!117306 m!1264713))

(declare-fun m!1264715 () Bool)

(assert (=> b!1379485 m!1264715))

(assert (=> b!1379485 m!1264715))

(declare-fun m!1264717 () Bool)

(assert (=> b!1379485 m!1264717))

(push 1)

(assert (not b!1379485))

(assert (not b!1379486))

(assert (not b!1379488))

(assert (not start!117306))

(check-sat)

(pop 1)

(push 1)

