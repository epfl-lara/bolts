; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117108 () Bool)

(assert start!117108)

(declare-fun b!1378039 () Bool)

(declare-fun res!920683 () Bool)

(declare-fun e!780670 () Bool)

(assert (=> b!1378039 (=> (not res!920683) (not e!780670))))

(declare-datatypes ((array!93641 0))(
  ( (array!93642 (arr!45216 (Array (_ BitVec 32) (_ BitVec 64))) (size!45767 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93641)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378039 (= res!920683 (validKeyInArray!0 (select (arr!45216 a!4094) i!1451)))))

(declare-fun b!1378042 () Bool)

(assert (=> b!1378042 (= e!780670 false)))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606250 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93641 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378042 (= lt!606250 (arrayCountValidKeys!0 (array!93642 (store (arr!45216 a!4094) i!1451 k!2953) (size!45767 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606249 () (_ BitVec 32))

(assert (=> b!1378042 (= lt!606249 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378041 () Bool)

(declare-fun res!920685 () Bool)

(assert (=> b!1378041 (=> (not res!920685) (not e!780670))))

(assert (=> b!1378041 (= res!920685 (and (bvslt (size!45767 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45767 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!920682 () Bool)

(assert (=> start!117108 (=> (not res!920682) (not e!780670))))

(assert (=> start!117108 (= res!920682 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45767 a!4094))))))

(assert (=> start!117108 e!780670))

(assert (=> start!117108 true))

(declare-fun array_inv!34161 (array!93641) Bool)

(assert (=> start!117108 (array_inv!34161 a!4094)))

(declare-fun b!1378040 () Bool)

(declare-fun res!920684 () Bool)

(assert (=> b!1378040 (=> (not res!920684) (not e!780670))))

(assert (=> b!1378040 (= res!920684 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117108 res!920682) b!1378039))

(assert (= (and b!1378039 res!920683) b!1378040))

(assert (= (and b!1378040 res!920684) b!1378041))

(assert (= (and b!1378041 res!920685) b!1378042))

(declare-fun m!1262545 () Bool)

(assert (=> b!1378039 m!1262545))

(assert (=> b!1378039 m!1262545))

(declare-fun m!1262547 () Bool)

(assert (=> b!1378039 m!1262547))

(declare-fun m!1262549 () Bool)

(assert (=> b!1378042 m!1262549))

(declare-fun m!1262551 () Bool)

(assert (=> b!1378042 m!1262551))

(declare-fun m!1262553 () Bool)

(assert (=> b!1378042 m!1262553))

(declare-fun m!1262555 () Bool)

(assert (=> start!117108 m!1262555))

(declare-fun m!1262557 () Bool)

(assert (=> b!1378040 m!1262557))

(push 1)

(assert (not b!1378039))

(assert (not start!117108))

(assert (not b!1378040))

(assert (not b!1378042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

