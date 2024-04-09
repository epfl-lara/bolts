; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117312 () Bool)

(assert start!117312)

(declare-fun b!1379537 () Bool)

(declare-fun res!922087 () Bool)

(declare-fun e!781518 () Bool)

(assert (=> b!1379537 (=> (not res!922087) (not e!781518))))

(declare-datatypes ((array!93824 0))(
  ( (array!93825 (arr!45306 (Array (_ BitVec 32) (_ BitVec 64))) (size!45857 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93824)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379537 (= res!922087 (validKeyInArray!0 (select (arr!45306 a!4094) i!1451)))))

(declare-fun b!1379539 () Bool)

(declare-fun e!781520 () Bool)

(declare-fun lt!607618 () array!93824)

(declare-fun arrayCountValidKeys!0 (array!93824 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379539 (= e!781520 (not (= (arrayCountValidKeys!0 lt!607618 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))))

(declare-fun b!1379540 () Bool)

(assert (=> b!1379540 (= e!781518 e!781520)))

(declare-fun res!922088 () Bool)

(assert (=> b!1379540 (=> (not res!922088) (not e!781520))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379540 (= res!922088 (= (arrayCountValidKeys!0 lt!607618 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379540 (= lt!607618 (array!93825 (store (arr!45306 a!4094) i!1451 k!2953) (size!45857 a!4094)))))

(declare-fun b!1379541 () Bool)

(declare-fun res!922086 () Bool)

(assert (=> b!1379541 (=> (not res!922086) (not e!781518))))

(assert (=> b!1379541 (= res!922086 (and (bvslt (size!45857 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45857 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379542 () Bool)

(declare-fun res!922085 () Bool)

(assert (=> b!1379542 (=> (not res!922085) (not e!781518))))

(assert (=> b!1379542 (= res!922085 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379538 () Bool)

(declare-fun res!922084 () Bool)

(assert (=> b!1379538 (=> (not res!922084) (not e!781520))))

(assert (=> b!1379538 (= res!922084 (bvsle from!3466 #b00000000000000000000000000000000))))

(declare-fun res!922089 () Bool)

(assert (=> start!117312 (=> (not res!922089) (not e!781518))))

(assert (=> start!117312 (= res!922089 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45857 a!4094))))))

(assert (=> start!117312 e!781518))

(assert (=> start!117312 true))

(declare-fun array_inv!34251 (array!93824) Bool)

(assert (=> start!117312 (array_inv!34251 a!4094)))

(assert (= (and start!117312 res!922089) b!1379537))

(assert (= (and b!1379537 res!922087) b!1379542))

(assert (= (and b!1379542 res!922085) b!1379541))

(assert (= (and b!1379541 res!922086) b!1379540))

(assert (= (and b!1379540 res!922088) b!1379538))

(assert (= (and b!1379538 res!922084) b!1379539))

(declare-fun m!1264755 () Bool)

(assert (=> b!1379540 m!1264755))

(declare-fun m!1264757 () Bool)

(assert (=> b!1379540 m!1264757))

(declare-fun m!1264759 () Bool)

(assert (=> b!1379540 m!1264759))

(declare-fun m!1264761 () Bool)

(assert (=> b!1379537 m!1264761))

(assert (=> b!1379537 m!1264761))

(declare-fun m!1264763 () Bool)

(assert (=> b!1379537 m!1264763))

(declare-fun m!1264765 () Bool)

(assert (=> start!117312 m!1264765))

(declare-fun m!1264767 () Bool)

(assert (=> b!1379542 m!1264767))

(declare-fun m!1264769 () Bool)

(assert (=> b!1379539 m!1264769))

(declare-fun m!1264771 () Bool)

(assert (=> b!1379539 m!1264771))

(push 1)

(assert (not b!1379540))

(assert (not b!1379537))

(assert (not start!117312))

(assert (not b!1379539))

(assert (not b!1379542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

