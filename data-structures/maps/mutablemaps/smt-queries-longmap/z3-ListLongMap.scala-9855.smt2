; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116860 () Bool)

(assert start!116860)

(declare-fun res!919527 () Bool)

(declare-fun e!779789 () Bool)

(assert (=> start!116860 (=> (not res!919527) (not e!779789))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93447 0))(
  ( (array!93448 (arr!45122 (Array (_ BitVec 32) (_ BitVec 64))) (size!45673 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93447)

(assert (=> start!116860 (= res!919527 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45673 a!4032))))))

(assert (=> start!116860 e!779789))

(assert (=> start!116860 true))

(declare-fun array_inv!34067 (array!93447) Bool)

(assert (=> start!116860 (array_inv!34067 a!4032)))

(declare-fun b!1376527 () Bool)

(declare-fun res!919524 () Bool)

(assert (=> b!1376527 (=> (not res!919524) (not e!779789))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376527 (= res!919524 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376528 () Bool)

(declare-fun e!779786 () Bool)

(assert (=> b!1376528 (= e!779789 e!779786)))

(declare-fun res!919530 () Bool)

(assert (=> b!1376528 (=> (not res!919530) (not e!779786))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605265 () (_ BitVec 32))

(declare-fun lt!605264 () (_ BitVec 32))

(assert (=> b!1376528 (= res!919530 (and (= lt!605264 lt!605265) (not (= to!206 (size!45673 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93447 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376528 (= lt!605265 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376528 (= lt!605264 (arrayCountValidKeys!0 (array!93448 (store (arr!45122 a!4032) i!1445 k0!2947) (size!45673 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376529 () Bool)

(declare-fun res!919525 () Bool)

(assert (=> b!1376529 (=> (not res!919525) (not e!779789))))

(assert (=> b!1376529 (= res!919525 (and (bvslt (size!45673 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45673 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376530 () Bool)

(declare-fun e!779788 () Bool)

(assert (=> b!1376530 (= e!779786 (not e!779788))))

(declare-fun res!919526 () Bool)

(assert (=> b!1376530 (=> (not res!919526) (not e!779788))))

(assert (=> b!1376530 (= res!919526 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45673 a!4032))))))

(assert (=> b!1376530 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605265))))

(declare-datatypes ((Unit!45565 0))(
  ( (Unit!45566) )
))
(declare-fun lt!605266 () Unit!45565)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93447 (_ BitVec 32) (_ BitVec 32)) Unit!45565)

(assert (=> b!1376530 (= lt!605266 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376531 () Bool)

(declare-fun res!919529 () Bool)

(assert (=> b!1376531 (=> (not res!919529) (not e!779786))))

(assert (=> b!1376531 (= res!919529 (validKeyInArray!0 (select (arr!45122 a!4032) to!206)))))

(declare-fun b!1376532 () Bool)

(declare-fun res!919528 () Bool)

(assert (=> b!1376532 (=> (not res!919528) (not e!779789))))

(assert (=> b!1376532 (= res!919528 (validKeyInArray!0 (select (arr!45122 a!4032) i!1445)))))

(declare-fun b!1376533 () Bool)

(assert (=> b!1376533 (= e!779788 (validKeyInArray!0 (select (store (arr!45122 a!4032) i!1445 k0!2947) to!206)))))

(assert (= (and start!116860 res!919527) b!1376532))

(assert (= (and b!1376532 res!919528) b!1376527))

(assert (= (and b!1376527 res!919524) b!1376529))

(assert (= (and b!1376529 res!919525) b!1376528))

(assert (= (and b!1376528 res!919530) b!1376531))

(assert (= (and b!1376531 res!919529) b!1376530))

(assert (= (and b!1376530 res!919526) b!1376533))

(declare-fun m!1260649 () Bool)

(assert (=> b!1376533 m!1260649))

(declare-fun m!1260651 () Bool)

(assert (=> b!1376533 m!1260651))

(assert (=> b!1376533 m!1260651))

(declare-fun m!1260653 () Bool)

(assert (=> b!1376533 m!1260653))

(declare-fun m!1260655 () Bool)

(assert (=> b!1376527 m!1260655))

(declare-fun m!1260657 () Bool)

(assert (=> start!116860 m!1260657))

(declare-fun m!1260659 () Bool)

(assert (=> b!1376532 m!1260659))

(assert (=> b!1376532 m!1260659))

(declare-fun m!1260661 () Bool)

(assert (=> b!1376532 m!1260661))

(declare-fun m!1260663 () Bool)

(assert (=> b!1376531 m!1260663))

(assert (=> b!1376531 m!1260663))

(declare-fun m!1260665 () Bool)

(assert (=> b!1376531 m!1260665))

(declare-fun m!1260667 () Bool)

(assert (=> b!1376530 m!1260667))

(declare-fun m!1260669 () Bool)

(assert (=> b!1376530 m!1260669))

(declare-fun m!1260671 () Bool)

(assert (=> b!1376528 m!1260671))

(assert (=> b!1376528 m!1260649))

(declare-fun m!1260673 () Bool)

(assert (=> b!1376528 m!1260673))

(check-sat (not b!1376527) (not b!1376531) (not start!116860) (not b!1376533) (not b!1376528) (not b!1376530) (not b!1376532))
(check-sat)
