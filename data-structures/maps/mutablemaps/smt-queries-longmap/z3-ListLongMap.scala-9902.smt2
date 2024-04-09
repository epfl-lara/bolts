; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117202 () Bool)

(assert start!117202)

(declare-fun b!1378765 () Bool)

(declare-fun res!921408 () Bool)

(declare-fun e!781088 () Bool)

(assert (=> b!1378765 (=> (not res!921408) (not e!781088))))

(declare-datatypes ((array!93735 0))(
  ( (array!93736 (arr!45263 (Array (_ BitVec 32) (_ BitVec 64))) (size!45814 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93735)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378765 (= res!921408 (validKeyInArray!0 (select (arr!45263 a!4094) i!1451)))))

(declare-fun b!1378766 () Bool)

(declare-fun res!921410 () Bool)

(assert (=> b!1378766 (=> (not res!921410) (not e!781088))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378766 (= res!921410 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!921409 () Bool)

(assert (=> start!117202 (=> (not res!921409) (not e!781088))))

(assert (=> start!117202 (= res!921409 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45814 a!4094))))))

(assert (=> start!117202 e!781088))

(assert (=> start!117202 true))

(declare-fun array_inv!34208 (array!93735) Bool)

(assert (=> start!117202 (array_inv!34208 a!4094)))

(declare-fun b!1378768 () Bool)

(assert (=> b!1378768 (= e!781088 false)))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606945 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93735 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378768 (= lt!606945 (arrayCountValidKeys!0 (array!93736 (store (arr!45263 a!4094) i!1451 k0!2953) (size!45814 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606946 () (_ BitVec 32))

(assert (=> b!1378768 (= lt!606946 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378767 () Bool)

(declare-fun res!921411 () Bool)

(assert (=> b!1378767 (=> (not res!921411) (not e!781088))))

(assert (=> b!1378767 (= res!921411 (and (bvslt (size!45814 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45814 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117202 res!921409) b!1378765))

(assert (= (and b!1378765 res!921408) b!1378766))

(assert (= (and b!1378766 res!921410) b!1378767))

(assert (= (and b!1378767 res!921411) b!1378768))

(declare-fun m!1263653 () Bool)

(assert (=> b!1378765 m!1263653))

(assert (=> b!1378765 m!1263653))

(declare-fun m!1263655 () Bool)

(assert (=> b!1378765 m!1263655))

(declare-fun m!1263657 () Bool)

(assert (=> b!1378766 m!1263657))

(declare-fun m!1263659 () Bool)

(assert (=> start!117202 m!1263659))

(declare-fun m!1263661 () Bool)

(assert (=> b!1378768 m!1263661))

(declare-fun m!1263663 () Bool)

(assert (=> b!1378768 m!1263663))

(declare-fun m!1263665 () Bool)

(assert (=> b!1378768 m!1263665))

(check-sat (not b!1378766) (not b!1378765) (not start!117202) (not b!1378768))
