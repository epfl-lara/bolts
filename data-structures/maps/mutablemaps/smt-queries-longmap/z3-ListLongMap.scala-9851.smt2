; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116836 () Bool)

(assert start!116836)

(declare-fun b!1376310 () Bool)

(declare-fun res!919308 () Bool)

(declare-fun e!779695 () Bool)

(assert (=> b!1376310 (=> (not res!919308) (not e!779695))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93423 0))(
  ( (array!93424 (arr!45110 (Array (_ BitVec 32) (_ BitVec 64))) (size!45661 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93423)

(assert (=> b!1376310 (= res!919308 (and (bvslt (size!45661 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45661 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376311 () Bool)

(declare-fun res!919307 () Bool)

(assert (=> b!1376311 (=> (not res!919307) (not e!779695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376311 (= res!919307 (validKeyInArray!0 (select (arr!45110 a!4032) i!1445)))))

(declare-fun b!1376312 () Bool)

(declare-fun res!919309 () Bool)

(assert (=> b!1376312 (=> (not res!919309) (not e!779695))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93423 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376312 (= res!919309 (= (arrayCountValidKeys!0 (array!93424 (store (arr!45110 a!4032) i!1445 k0!2947) (size!45661 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919310 () Bool)

(assert (=> start!116836 (=> (not res!919310) (not e!779695))))

(assert (=> start!116836 (= res!919310 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45661 a!4032))))))

(assert (=> start!116836 e!779695))

(assert (=> start!116836 true))

(declare-fun array_inv!34055 (array!93423) Bool)

(assert (=> start!116836 (array_inv!34055 a!4032)))

(declare-fun b!1376313 () Bool)

(assert (=> b!1376313 (= e!779695 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!45661 a!4032)) to!206) #b00000000000000000000000000000000))))

(declare-fun b!1376314 () Bool)

(declare-fun res!919311 () Bool)

(assert (=> b!1376314 (=> (not res!919311) (not e!779695))))

(assert (=> b!1376314 (= res!919311 (not (validKeyInArray!0 k0!2947)))))

(assert (= (and start!116836 res!919310) b!1376311))

(assert (= (and b!1376311 res!919307) b!1376314))

(assert (= (and b!1376314 res!919311) b!1376310))

(assert (= (and b!1376310 res!919308) b!1376312))

(assert (= (and b!1376312 res!919309) b!1376313))

(declare-fun m!1260433 () Bool)

(assert (=> b!1376311 m!1260433))

(assert (=> b!1376311 m!1260433))

(declare-fun m!1260435 () Bool)

(assert (=> b!1376311 m!1260435))

(declare-fun m!1260437 () Bool)

(assert (=> b!1376312 m!1260437))

(declare-fun m!1260439 () Bool)

(assert (=> b!1376312 m!1260439))

(declare-fun m!1260441 () Bool)

(assert (=> b!1376312 m!1260441))

(declare-fun m!1260443 () Bool)

(assert (=> start!116836 m!1260443))

(declare-fun m!1260445 () Bool)

(assert (=> b!1376314 m!1260445))

(check-sat (not b!1376314) (not start!116836) (not b!1376311) (not b!1376312))
(check-sat)
