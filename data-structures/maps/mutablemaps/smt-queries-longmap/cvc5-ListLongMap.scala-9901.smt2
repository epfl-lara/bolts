; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117194 () Bool)

(assert start!117194)

(declare-fun b!1378719 () Bool)

(declare-fun res!921361 () Bool)

(declare-fun e!781063 () Bool)

(assert (=> b!1378719 (=> (not res!921361) (not e!781063))))

(declare-datatypes ((array!93727 0))(
  ( (array!93728 (arr!45259 (Array (_ BitVec 32) (_ BitVec 64))) (size!45810 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93727)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378719 (= res!921361 (and (bvslt (size!45810 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45810 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378720 () Bool)

(assert (=> b!1378720 (= e!781063 false)))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lt!606921 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93727 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378720 (= lt!606921 (arrayCountValidKeys!0 (array!93728 (store (arr!45259 a!4094) i!1451 k!2953) (size!45810 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606922 () (_ BitVec 32))

(assert (=> b!1378720 (= lt!606922 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!921362 () Bool)

(assert (=> start!117194 (=> (not res!921362) (not e!781063))))

(assert (=> start!117194 (= res!921362 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45810 a!4094))))))

(assert (=> start!117194 e!781063))

(assert (=> start!117194 true))

(declare-fun array_inv!34204 (array!93727) Bool)

(assert (=> start!117194 (array_inv!34204 a!4094)))

(declare-fun b!1378717 () Bool)

(declare-fun res!921363 () Bool)

(assert (=> b!1378717 (=> (not res!921363) (not e!781063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378717 (= res!921363 (validKeyInArray!0 (select (arr!45259 a!4094) i!1451)))))

(declare-fun b!1378718 () Bool)

(declare-fun res!921360 () Bool)

(assert (=> b!1378718 (=> (not res!921360) (not e!781063))))

(assert (=> b!1378718 (= res!921360 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117194 res!921362) b!1378717))

(assert (= (and b!1378717 res!921363) b!1378718))

(assert (= (and b!1378718 res!921360) b!1378719))

(assert (= (and b!1378719 res!921361) b!1378720))

(declare-fun m!1263597 () Bool)

(assert (=> b!1378720 m!1263597))

(declare-fun m!1263599 () Bool)

(assert (=> b!1378720 m!1263599))

(declare-fun m!1263601 () Bool)

(assert (=> b!1378720 m!1263601))

(declare-fun m!1263603 () Bool)

(assert (=> start!117194 m!1263603))

(declare-fun m!1263605 () Bool)

(assert (=> b!1378717 m!1263605))

(assert (=> b!1378717 m!1263605))

(declare-fun m!1263607 () Bool)

(assert (=> b!1378717 m!1263607))

(declare-fun m!1263609 () Bool)

(assert (=> b!1378718 m!1263609))

(push 1)

(assert (not b!1378718))

(assert (not b!1378717))

(assert (not start!117194))

(assert (not b!1378720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

