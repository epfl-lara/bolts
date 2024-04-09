; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117208 () Bool)

(assert start!117208)

(declare-fun b!1378806 () Bool)

(declare-fun res!921453 () Bool)

(declare-fun e!781106 () Bool)

(assert (=> b!1378806 (=> (not res!921453) (not e!781106))))

(declare-datatypes ((array!93741 0))(
  ( (array!93742 (arr!45266 (Array (_ BitVec 32) (_ BitVec 64))) (size!45817 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93741)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378806 (= res!921453 (validKeyInArray!0 (select (arr!45266 a!4094) i!1451)))))

(declare-fun b!1378807 () Bool)

(declare-fun res!921449 () Bool)

(assert (=> b!1378807 (=> (not res!921449) (not e!781106))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378807 (= res!921449 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378808 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378808 (= e!781106 (and (bvsgt from!3466 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvslt from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(declare-fun b!1378809 () Bool)

(declare-fun res!921451 () Bool)

(assert (=> b!1378809 (=> (not res!921451) (not e!781106))))

(assert (=> b!1378809 (= res!921451 (and (bvslt (size!45817 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45817 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378810 () Bool)

(declare-fun res!921450 () Bool)

(assert (=> b!1378810 (=> (not res!921450) (not e!781106))))

(declare-fun arrayCountValidKeys!0 (array!93741 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378810 (= res!921450 (= (arrayCountValidKeys!0 (array!93742 (store (arr!45266 a!4094) i!1451 k0!2953) (size!45817 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun res!921452 () Bool)

(assert (=> start!117208 (=> (not res!921452) (not e!781106))))

(assert (=> start!117208 (= res!921452 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45817 a!4094))))))

(assert (=> start!117208 e!781106))

(assert (=> start!117208 true))

(declare-fun array_inv!34211 (array!93741) Bool)

(assert (=> start!117208 (array_inv!34211 a!4094)))

(assert (= (and start!117208 res!921452) b!1378806))

(assert (= (and b!1378806 res!921453) b!1378807))

(assert (= (and b!1378807 res!921449) b!1378809))

(assert (= (and b!1378809 res!921451) b!1378810))

(assert (= (and b!1378810 res!921450) b!1378808))

(declare-fun m!1263695 () Bool)

(assert (=> b!1378806 m!1263695))

(assert (=> b!1378806 m!1263695))

(declare-fun m!1263697 () Bool)

(assert (=> b!1378806 m!1263697))

(declare-fun m!1263699 () Bool)

(assert (=> b!1378807 m!1263699))

(declare-fun m!1263701 () Bool)

(assert (=> b!1378810 m!1263701))

(declare-fun m!1263703 () Bool)

(assert (=> b!1378810 m!1263703))

(declare-fun m!1263705 () Bool)

(assert (=> b!1378810 m!1263705))

(declare-fun m!1263707 () Bool)

(assert (=> start!117208 m!1263707))

(check-sat (not start!117208) (not b!1378806) (not b!1378807) (not b!1378810))
(check-sat)
