; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117198 () Bool)

(assert start!117198)

(declare-fun b!1378741 () Bool)

(declare-fun res!921387 () Bool)

(declare-fun e!781076 () Bool)

(assert (=> b!1378741 (=> (not res!921387) (not e!781076))))

(declare-datatypes ((array!93731 0))(
  ( (array!93732 (arr!45261 (Array (_ BitVec 32) (_ BitVec 64))) (size!45812 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93731)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378741 (= res!921387 (validKeyInArray!0 (select (arr!45261 a!4094) i!1451)))))

(declare-fun res!921385 () Bool)

(assert (=> start!117198 (=> (not res!921385) (not e!781076))))

(assert (=> start!117198 (= res!921385 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45812 a!4094))))))

(assert (=> start!117198 e!781076))

(assert (=> start!117198 true))

(declare-fun array_inv!34206 (array!93731) Bool)

(assert (=> start!117198 (array_inv!34206 a!4094)))

(declare-fun b!1378744 () Bool)

(assert (=> b!1378744 (= e!781076 false)))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun lt!606933 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93731 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378744 (= lt!606933 (arrayCountValidKeys!0 (array!93732 (store (arr!45261 a!4094) i!1451 k!2953) (size!45812 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606934 () (_ BitVec 32))

(assert (=> b!1378744 (= lt!606934 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378742 () Bool)

(declare-fun res!921386 () Bool)

(assert (=> b!1378742 (=> (not res!921386) (not e!781076))))

(assert (=> b!1378742 (= res!921386 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378743 () Bool)

(declare-fun res!921384 () Bool)

(assert (=> b!1378743 (=> (not res!921384) (not e!781076))))

(assert (=> b!1378743 (= res!921384 (and (bvslt (size!45812 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45812 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117198 res!921385) b!1378741))

(assert (= (and b!1378741 res!921387) b!1378742))

(assert (= (and b!1378742 res!921386) b!1378743))

(assert (= (and b!1378743 res!921384) b!1378744))

(declare-fun m!1263625 () Bool)

(assert (=> b!1378741 m!1263625))

(assert (=> b!1378741 m!1263625))

(declare-fun m!1263627 () Bool)

(assert (=> b!1378741 m!1263627))

(declare-fun m!1263629 () Bool)

(assert (=> start!117198 m!1263629))

(declare-fun m!1263631 () Bool)

(assert (=> b!1378744 m!1263631))

(declare-fun m!1263633 () Bool)

(assert (=> b!1378744 m!1263633))

(declare-fun m!1263635 () Bool)

(assert (=> b!1378744 m!1263635))

(declare-fun m!1263637 () Bool)

(assert (=> b!1378742 m!1263637))

(push 1)

(assert (not start!117198))

(assert (not b!1378744))

(assert (not b!1378742))

(assert (not b!1378741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

