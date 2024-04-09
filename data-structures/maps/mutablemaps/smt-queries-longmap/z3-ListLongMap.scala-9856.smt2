; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116866 () Bool)

(assert start!116866)

(declare-fun b!1376590 () Bool)

(declare-fun res!919592 () Bool)

(declare-fun e!779812 () Bool)

(assert (=> b!1376590 (=> (not res!919592) (not e!779812))))

(declare-datatypes ((array!93453 0))(
  ( (array!93454 (arr!45125 (Array (_ BitVec 32) (_ BitVec 64))) (size!45676 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93453)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376590 (= res!919592 (not (validKeyInArray!0 (select (arr!45125 a!4032) to!206))))))

(declare-fun res!919588 () Bool)

(assert (=> start!116866 (=> (not res!919588) (not e!779812))))

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> start!116866 (= res!919588 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45676 a!4032))))))

(assert (=> start!116866 e!779812))

(assert (=> start!116866 true))

(declare-fun array_inv!34070 (array!93453) Bool)

(assert (=> start!116866 (array_inv!34070 a!4032)))

(declare-fun b!1376591 () Bool)

(declare-fun res!919587 () Bool)

(assert (=> b!1376591 (=> (not res!919587) (not e!779812))))

(assert (=> b!1376591 (= res!919587 (not (= to!206 (size!45676 a!4032))))))

(declare-fun b!1376592 () Bool)

(declare-fun res!919589 () Bool)

(assert (=> b!1376592 (=> (not res!919589) (not e!779812))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376592 (= res!919589 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376593 () Bool)

(declare-fun res!919591 () Bool)

(assert (=> b!1376593 (=> (not res!919591) (not e!779812))))

(assert (=> b!1376593 (= res!919591 (validKeyInArray!0 (select (arr!45125 a!4032) i!1445)))))

(declare-fun b!1376594 () Bool)

(declare-fun res!919590 () Bool)

(assert (=> b!1376594 (=> (not res!919590) (not e!779812))))

(declare-fun arrayCountValidKeys!0 (array!93453 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376594 (= res!919590 (= (arrayCountValidKeys!0 (array!93454 (store (arr!45125 a!4032) i!1445 k0!2947) (size!45676 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376595 () Bool)

(declare-fun res!919593 () Bool)

(assert (=> b!1376595 (=> (not res!919593) (not e!779812))))

(assert (=> b!1376595 (= res!919593 (and (bvslt (size!45676 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45676 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376596 () Bool)

(assert (=> b!1376596 (= e!779812 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45676 a!4032))))))

(assert (= (and start!116866 res!919588) b!1376593))

(assert (= (and b!1376593 res!919591) b!1376592))

(assert (= (and b!1376592 res!919589) b!1376595))

(assert (= (and b!1376595 res!919593) b!1376594))

(assert (= (and b!1376594 res!919590) b!1376591))

(assert (= (and b!1376591 res!919587) b!1376590))

(assert (= (and b!1376590 res!919592) b!1376596))

(declare-fun m!1260719 () Bool)

(assert (=> b!1376590 m!1260719))

(assert (=> b!1376590 m!1260719))

(declare-fun m!1260721 () Bool)

(assert (=> b!1376590 m!1260721))

(declare-fun m!1260723 () Bool)

(assert (=> b!1376593 m!1260723))

(assert (=> b!1376593 m!1260723))

(declare-fun m!1260725 () Bool)

(assert (=> b!1376593 m!1260725))

(declare-fun m!1260727 () Bool)

(assert (=> b!1376594 m!1260727))

(declare-fun m!1260729 () Bool)

(assert (=> b!1376594 m!1260729))

(declare-fun m!1260731 () Bool)

(assert (=> b!1376594 m!1260731))

(declare-fun m!1260733 () Bool)

(assert (=> b!1376592 m!1260733))

(declare-fun m!1260735 () Bool)

(assert (=> start!116866 m!1260735))

(check-sat (not b!1376592) (not start!116866) (not b!1376593) (not b!1376590) (not b!1376594))
(check-sat)
