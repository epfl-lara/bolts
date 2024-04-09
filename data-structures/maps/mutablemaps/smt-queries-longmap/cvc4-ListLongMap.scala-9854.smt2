; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116856 () Bool)

(assert start!116856)

(declare-fun b!1376486 () Bool)

(declare-fun e!779765 () Bool)

(assert (=> b!1376486 (= e!779765 (not true))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605248 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93443 0))(
  ( (array!93444 (arr!45120 (Array (_ BitVec 32) (_ BitVec 64))) (size!45671 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93443)

(declare-fun arrayCountValidKeys!0 (array!93443 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376486 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605248))))

(declare-datatypes ((Unit!45561 0))(
  ( (Unit!45562) )
))
(declare-fun lt!605247 () Unit!45561)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93443 (_ BitVec 32) (_ BitVec 32)) Unit!45561)

(assert (=> b!1376486 (= lt!605247 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919486 () Bool)

(declare-fun e!779763 () Bool)

(assert (=> start!116856 (=> (not res!919486) (not e!779763))))

(assert (=> start!116856 (= res!919486 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45671 a!4032))))))

(assert (=> start!116856 e!779763))

(assert (=> start!116856 true))

(declare-fun array_inv!34065 (array!93443) Bool)

(assert (=> start!116856 (array_inv!34065 a!4032)))

(declare-fun b!1376487 () Bool)

(declare-fun res!919485 () Bool)

(assert (=> b!1376487 (=> (not res!919485) (not e!779763))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376487 (= res!919485 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376488 () Bool)

(declare-fun res!919487 () Bool)

(assert (=> b!1376488 (=> (not res!919487) (not e!779763))))

(assert (=> b!1376488 (= res!919487 (and (bvslt (size!45671 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45671 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376489 () Bool)

(assert (=> b!1376489 (= e!779763 e!779765)))

(declare-fun res!919484 () Bool)

(assert (=> b!1376489 (=> (not res!919484) (not e!779765))))

(declare-fun lt!605246 () (_ BitVec 32))

(assert (=> b!1376489 (= res!919484 (and (= lt!605246 lt!605248) (not (= to!206 (size!45671 a!4032)))))))

(assert (=> b!1376489 (= lt!605248 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376489 (= lt!605246 (arrayCountValidKeys!0 (array!93444 (store (arr!45120 a!4032) i!1445 k!2947) (size!45671 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376490 () Bool)

(declare-fun res!919483 () Bool)

(assert (=> b!1376490 (=> (not res!919483) (not e!779765))))

(assert (=> b!1376490 (= res!919483 (validKeyInArray!0 (select (arr!45120 a!4032) to!206)))))

(declare-fun b!1376491 () Bool)

(declare-fun res!919488 () Bool)

(assert (=> b!1376491 (=> (not res!919488) (not e!779763))))

(assert (=> b!1376491 (= res!919488 (validKeyInArray!0 (select (arr!45120 a!4032) i!1445)))))

(assert (= (and start!116856 res!919486) b!1376491))

(assert (= (and b!1376491 res!919488) b!1376487))

(assert (= (and b!1376487 res!919485) b!1376488))

(assert (= (and b!1376488 res!919487) b!1376489))

(assert (= (and b!1376489 res!919484) b!1376490))

(assert (= (and b!1376490 res!919483) b!1376486))

(declare-fun m!1260601 () Bool)

(assert (=> b!1376487 m!1260601))

(declare-fun m!1260603 () Bool)

(assert (=> b!1376491 m!1260603))

(assert (=> b!1376491 m!1260603))

(declare-fun m!1260605 () Bool)

(assert (=> b!1376491 m!1260605))

(declare-fun m!1260607 () Bool)

(assert (=> start!116856 m!1260607))

(declare-fun m!1260609 () Bool)

(assert (=> b!1376486 m!1260609))

(declare-fun m!1260611 () Bool)

(assert (=> b!1376486 m!1260611))

(declare-fun m!1260613 () Bool)

(assert (=> b!1376489 m!1260613))

(declare-fun m!1260615 () Bool)

(assert (=> b!1376489 m!1260615))

(declare-fun m!1260617 () Bool)

(assert (=> b!1376489 m!1260617))

(declare-fun m!1260619 () Bool)

(assert (=> b!1376490 m!1260619))

(assert (=> b!1376490 m!1260619))

(declare-fun m!1260621 () Bool)

(assert (=> b!1376490 m!1260621))

(push 1)

(assert (not b!1376491))

(assert (not b!1376487))

(assert (not b!1376490))

(assert (not start!116856))

(assert (not b!1376486))

(assert (not b!1376489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

