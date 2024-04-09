; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117182 () Bool)

(assert start!117182)

(declare-fun b!1378638 () Bool)

(declare-fun res!921281 () Bool)

(declare-fun e!781027 () Bool)

(assert (=> b!1378638 (=> (not res!921281) (not e!781027))))

(declare-datatypes ((array!93715 0))(
  ( (array!93716 (arr!45253 (Array (_ BitVec 32) (_ BitVec 64))) (size!45804 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93715)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378638 (= res!921281 (and (bvslt (size!45804 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45804 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378637 () Bool)

(declare-fun res!921282 () Bool)

(assert (=> b!1378637 (=> (not res!921282) (not e!781027))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378637 (= res!921282 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921280 () Bool)

(assert (=> start!117182 (=> (not res!921280) (not e!781027))))

(assert (=> start!117182 (= res!921280 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45804 a!4094))))))

(assert (=> start!117182 e!781027))

(assert (=> start!117182 true))

(declare-fun array_inv!34198 (array!93715) Bool)

(assert (=> start!117182 (array_inv!34198 a!4094)))

(declare-fun b!1378639 () Bool)

(assert (=> b!1378639 (= e!781027 false)))

(declare-fun lt!606903 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93715 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378639 (= lt!606903 (arrayCountValidKeys!0 (array!93716 (store (arr!45253 a!4094) i!1451 k!2953) (size!45804 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606904 () (_ BitVec 32))

(assert (=> b!1378639 (= lt!606904 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378636 () Bool)

(declare-fun res!921279 () Bool)

(assert (=> b!1378636 (=> (not res!921279) (not e!781027))))

(assert (=> b!1378636 (= res!921279 (validKeyInArray!0 (select (arr!45253 a!4094) i!1451)))))

(assert (= (and start!117182 res!921280) b!1378636))

(assert (= (and b!1378636 res!921279) b!1378637))

(assert (= (and b!1378637 res!921282) b!1378638))

(assert (= (and b!1378638 res!921281) b!1378639))

(declare-fun m!1263513 () Bool)

(assert (=> b!1378637 m!1263513))

(declare-fun m!1263515 () Bool)

(assert (=> start!117182 m!1263515))

(declare-fun m!1263517 () Bool)

(assert (=> b!1378639 m!1263517))

(declare-fun m!1263519 () Bool)

(assert (=> b!1378639 m!1263519))

(declare-fun m!1263521 () Bool)

(assert (=> b!1378639 m!1263521))

(declare-fun m!1263523 () Bool)

(assert (=> b!1378636 m!1263523))

(assert (=> b!1378636 m!1263523))

(declare-fun m!1263525 () Bool)

(assert (=> b!1378636 m!1263525))

(push 1)

(assert (not b!1378637))

(assert (not b!1378636))

(assert (not start!117182))

(assert (not b!1378639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

