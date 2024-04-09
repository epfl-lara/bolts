; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116842 () Bool)

(assert start!116842)

(declare-fun b!1376356 () Bool)

(declare-fun res!919355 () Bool)

(declare-fun e!779714 () Bool)

(assert (=> b!1376356 (=> (not res!919355) (not e!779714))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93429 0))(
  ( (array!93430 (arr!45113 (Array (_ BitVec 32) (_ BitVec 64))) (size!45664 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93429)

(assert (=> b!1376356 (= res!919355 (and (bvslt (size!45664 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45664 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376357 () Bool)

(assert (=> b!1376357 (= e!779714 (and (not (= to!206 (size!45664 a!4032))) (bvsge to!206 (size!45664 a!4032))))))

(declare-fun b!1376358 () Bool)

(declare-fun res!919354 () Bool)

(assert (=> b!1376358 (=> (not res!919354) (not e!779714))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376358 (= res!919354 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376359 () Bool)

(declare-fun res!919353 () Bool)

(assert (=> b!1376359 (=> (not res!919353) (not e!779714))))

(assert (=> b!1376359 (= res!919353 (validKeyInArray!0 (select (arr!45113 a!4032) i!1445)))))

(declare-fun res!919356 () Bool)

(assert (=> start!116842 (=> (not res!919356) (not e!779714))))

(assert (=> start!116842 (= res!919356 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45664 a!4032))))))

(assert (=> start!116842 e!779714))

(assert (=> start!116842 true))

(declare-fun array_inv!34058 (array!93429) Bool)

(assert (=> start!116842 (array_inv!34058 a!4032)))

(declare-fun b!1376355 () Bool)

(declare-fun res!919352 () Bool)

(assert (=> b!1376355 (=> (not res!919352) (not e!779714))))

(declare-fun arrayCountValidKeys!0 (array!93429 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376355 (= res!919352 (= (arrayCountValidKeys!0 (array!93430 (store (arr!45113 a!4032) i!1445 k0!2947) (size!45664 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(assert (= (and start!116842 res!919356) b!1376359))

(assert (= (and b!1376359 res!919353) b!1376358))

(assert (= (and b!1376358 res!919354) b!1376356))

(assert (= (and b!1376356 res!919355) b!1376355))

(assert (= (and b!1376355 res!919352) b!1376357))

(declare-fun m!1260475 () Bool)

(assert (=> b!1376358 m!1260475))

(declare-fun m!1260477 () Bool)

(assert (=> b!1376359 m!1260477))

(assert (=> b!1376359 m!1260477))

(declare-fun m!1260479 () Bool)

(assert (=> b!1376359 m!1260479))

(declare-fun m!1260481 () Bool)

(assert (=> start!116842 m!1260481))

(declare-fun m!1260483 () Bool)

(assert (=> b!1376355 m!1260483))

(declare-fun m!1260485 () Bool)

(assert (=> b!1376355 m!1260485))

(declare-fun m!1260487 () Bool)

(assert (=> b!1376355 m!1260487))

(check-sat (not b!1376359) (not start!116842) (not b!1376355) (not b!1376358))
(check-sat)
