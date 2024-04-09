; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116848 () Bool)

(assert start!116848)

(declare-fun b!1376410 () Bool)

(declare-fun res!919412 () Bool)

(declare-fun e!779731 () Bool)

(assert (=> b!1376410 (=> (not res!919412) (not e!779731))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93435 0))(
  ( (array!93436 (arr!45116 (Array (_ BitVec 32) (_ BitVec 64))) (size!45667 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93435)

(declare-fun arrayCountValidKeys!0 (array!93435 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376410 (= res!919412 (= (arrayCountValidKeys!0 (array!93436 (store (arr!45116 a!4032) i!1445 k0!2947) (size!45667 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376411 () Bool)

(declare-fun res!919413 () Bool)

(assert (=> b!1376411 (=> (not res!919413) (not e!779731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376411 (= res!919413 (validKeyInArray!0 (select (arr!45116 a!4032) to!206)))))

(declare-fun b!1376412 () Bool)

(declare-fun res!919407 () Bool)

(assert (=> b!1376412 (=> (not res!919407) (not e!779731))))

(assert (=> b!1376412 (= res!919407 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376413 () Bool)

(declare-fun res!919410 () Bool)

(assert (=> b!1376413 (=> (not res!919410) (not e!779731))))

(assert (=> b!1376413 (= res!919410 (not (= to!206 (size!45667 a!4032))))))

(declare-fun res!919411 () Bool)

(assert (=> start!116848 (=> (not res!919411) (not e!779731))))

(assert (=> start!116848 (= res!919411 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45667 a!4032))))))

(assert (=> start!116848 e!779731))

(assert (=> start!116848 true))

(declare-fun array_inv!34061 (array!93435) Bool)

(assert (=> start!116848 (array_inv!34061 a!4032)))

(declare-fun b!1376414 () Bool)

(assert (=> b!1376414 (= e!779731 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45667 a!4032))))))

(declare-fun b!1376415 () Bool)

(declare-fun res!919408 () Bool)

(assert (=> b!1376415 (=> (not res!919408) (not e!779731))))

(assert (=> b!1376415 (= res!919408 (validKeyInArray!0 (select (arr!45116 a!4032) i!1445)))))

(declare-fun b!1376416 () Bool)

(declare-fun res!919409 () Bool)

(assert (=> b!1376416 (=> (not res!919409) (not e!779731))))

(assert (=> b!1376416 (= res!919409 (and (bvslt (size!45667 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45667 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116848 res!919411) b!1376415))

(assert (= (and b!1376415 res!919408) b!1376412))

(assert (= (and b!1376412 res!919407) b!1376416))

(assert (= (and b!1376416 res!919409) b!1376410))

(assert (= (and b!1376410 res!919412) b!1376413))

(assert (= (and b!1376413 res!919410) b!1376411))

(assert (= (and b!1376411 res!919413) b!1376414))

(declare-fun m!1260521 () Bool)

(assert (=> b!1376411 m!1260521))

(assert (=> b!1376411 m!1260521))

(declare-fun m!1260523 () Bool)

(assert (=> b!1376411 m!1260523))

(declare-fun m!1260525 () Bool)

(assert (=> b!1376412 m!1260525))

(declare-fun m!1260527 () Bool)

(assert (=> start!116848 m!1260527))

(declare-fun m!1260529 () Bool)

(assert (=> b!1376415 m!1260529))

(assert (=> b!1376415 m!1260529))

(declare-fun m!1260531 () Bool)

(assert (=> b!1376415 m!1260531))

(declare-fun m!1260533 () Bool)

(assert (=> b!1376410 m!1260533))

(declare-fun m!1260535 () Bool)

(assert (=> b!1376410 m!1260535))

(declare-fun m!1260537 () Bool)

(assert (=> b!1376410 m!1260537))

(check-sat (not b!1376411) (not start!116848) (not b!1376415) (not b!1376412) (not b!1376410))
(check-sat)
