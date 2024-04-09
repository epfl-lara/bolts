; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117204 () Bool)

(assert start!117204)

(declare-fun b!1378779 () Bool)

(declare-fun res!921420 () Bool)

(declare-fun e!781094 () Bool)

(assert (=> b!1378779 (=> (not res!921420) (not e!781094))))

(declare-datatypes ((array!93737 0))(
  ( (array!93738 (arr!45264 (Array (_ BitVec 32) (_ BitVec 64))) (size!45815 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93737)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378779 (= res!921420 (and (bvslt (size!45815 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45815 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378777 () Bool)

(declare-fun res!921423 () Bool)

(assert (=> b!1378777 (=> (not res!921423) (not e!781094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378777 (= res!921423 (validKeyInArray!0 (select (arr!45264 a!4094) i!1451)))))

(declare-fun b!1378780 () Bool)

(assert (=> b!1378780 (= e!781094 false)))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lt!606952 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93737 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378780 (= lt!606952 (arrayCountValidKeys!0 (array!93738 (store (arr!45264 a!4094) i!1451 k!2953) (size!45815 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606951 () (_ BitVec 32))

(assert (=> b!1378780 (= lt!606951 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378778 () Bool)

(declare-fun res!921421 () Bool)

(assert (=> b!1378778 (=> (not res!921421) (not e!781094))))

(assert (=> b!1378778 (= res!921421 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921422 () Bool)

(assert (=> start!117204 (=> (not res!921422) (not e!781094))))

(assert (=> start!117204 (= res!921422 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45815 a!4094))))))

(assert (=> start!117204 e!781094))

(assert (=> start!117204 true))

(declare-fun array_inv!34209 (array!93737) Bool)

(assert (=> start!117204 (array_inv!34209 a!4094)))

(assert (= (and start!117204 res!921422) b!1378777))

(assert (= (and b!1378777 res!921423) b!1378778))

(assert (= (and b!1378778 res!921421) b!1378779))

(assert (= (and b!1378779 res!921420) b!1378780))

(declare-fun m!1263667 () Bool)

(assert (=> b!1378777 m!1263667))

(assert (=> b!1378777 m!1263667))

(declare-fun m!1263669 () Bool)

(assert (=> b!1378777 m!1263669))

(declare-fun m!1263671 () Bool)

(assert (=> b!1378780 m!1263671))

(declare-fun m!1263673 () Bool)

(assert (=> b!1378780 m!1263673))

(declare-fun m!1263675 () Bool)

(assert (=> b!1378780 m!1263675))

(declare-fun m!1263677 () Bool)

(assert (=> b!1378778 m!1263677))

(declare-fun m!1263679 () Bool)

(assert (=> start!117204 m!1263679))

(push 1)

(assert (not b!1378778))

(assert (not b!1378777))

(assert (not start!117204))

(assert (not b!1378780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

