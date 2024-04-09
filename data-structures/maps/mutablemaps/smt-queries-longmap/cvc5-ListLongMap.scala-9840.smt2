; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116768 () Bool)

(assert start!116768)

(declare-fun b!1375599 () Bool)

(declare-fun e!779308 () Bool)

(declare-fun e!779310 () Bool)

(assert (=> b!1375599 (= e!779308 e!779310)))

(declare-fun res!918718 () Bool)

(assert (=> b!1375599 (=> (not res!918718) (not e!779310))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93355 0))(
  ( (array!93356 (arr!45076 (Array (_ BitVec 32) (_ BitVec 64))) (size!45627 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93355)

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1375599 (= res!918718 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45627 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45515 0))(
  ( (Unit!45516) )
))
(declare-fun lt!604615 () Unit!45515)

(declare-fun e!779312 () Unit!45515)

(assert (=> b!1375599 (= lt!604615 e!779312)))

(declare-fun c!127883 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375599 (= c!127883 (validKeyInArray!0 (select (arr!45076 a!4032) to!206)))))

(declare-fun res!918720 () Bool)

(declare-fun e!779309 () Bool)

(assert (=> start!116768 (=> (not res!918720) (not e!779309))))

(assert (=> start!116768 (= res!918720 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45627 a!4032))))))

(assert (=> start!116768 e!779309))

(assert (=> start!116768 true))

(declare-fun array_inv!34021 (array!93355) Bool)

(assert (=> start!116768 (array_inv!34021 a!4032)))

(declare-fun b!1375600 () Bool)

(assert (=> b!1375600 (= e!779310 false)))

(declare-fun lt!604616 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93355 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375600 (= lt!604616 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604621 () array!93355)

(declare-fun lt!604614 () (_ BitVec 32))

(assert (=> b!1375600 (= lt!604614 (arrayCountValidKeys!0 lt!604621 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375601 () Bool)

(declare-fun res!918723 () Bool)

(assert (=> b!1375601 (=> (not res!918723) (not e!779309))))

(assert (=> b!1375601 (= res!918723 (and (bvslt (size!45627 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45627 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375602 () Bool)

(declare-fun lt!604618 () Unit!45515)

(assert (=> b!1375602 (= e!779312 lt!604618)))

(declare-fun lt!604617 () Unit!45515)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93355 (_ BitVec 32) (_ BitVec 32)) Unit!45515)

(assert (=> b!1375602 (= lt!604617 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65730 () (_ BitVec 32))

(declare-fun lt!604620 () (_ BitVec 32))

(assert (=> b!1375602 (= call!65730 (bvadd #b00000000000000000000000000000001 lt!604620))))

(assert (=> b!1375602 (= lt!604618 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604621 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65729 () (_ BitVec 32))

(declare-fun lt!604619 () (_ BitVec 32))

(assert (=> b!1375602 (= call!65729 (bvadd #b00000000000000000000000000000001 lt!604619))))

(declare-fun b!1375603 () Bool)

(declare-fun res!918719 () Bool)

(assert (=> b!1375603 (=> (not res!918719) (not e!779309))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375603 (= res!918719 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375604 () Bool)

(assert (=> b!1375604 (= e!779309 e!779308)))

(declare-fun res!918721 () Bool)

(assert (=> b!1375604 (=> (not res!918721) (not e!779308))))

(assert (=> b!1375604 (= res!918721 (and (= lt!604619 lt!604620) (not (= to!206 (size!45627 a!4032)))))))

(assert (=> b!1375604 (= lt!604620 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375604 (= lt!604619 (arrayCountValidKeys!0 lt!604621 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375604 (= lt!604621 (array!93356 (store (arr!45076 a!4032) i!1445 k!2947) (size!45627 a!4032)))))

(declare-fun b!1375605 () Bool)

(declare-fun lt!604613 () Unit!45515)

(assert (=> b!1375605 (= e!779312 lt!604613)))

(declare-fun lt!604612 () Unit!45515)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93355 (_ BitVec 32) (_ BitVec 32)) Unit!45515)

(assert (=> b!1375605 (= lt!604612 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375605 (= call!65730 lt!604620)))

(assert (=> b!1375605 (= lt!604613 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604621 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375605 (= call!65729 lt!604619)))

(declare-fun bm!65726 () Bool)

(assert (=> bm!65726 (= call!65730 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375606 () Bool)

(declare-fun res!918722 () Bool)

(assert (=> b!1375606 (=> (not res!918722) (not e!779309))))

(assert (=> b!1375606 (= res!918722 (validKeyInArray!0 (select (arr!45076 a!4032) i!1445)))))

(declare-fun bm!65727 () Bool)

(assert (=> bm!65727 (= call!65729 (arrayCountValidKeys!0 lt!604621 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116768 res!918720) b!1375606))

(assert (= (and b!1375606 res!918722) b!1375603))

(assert (= (and b!1375603 res!918719) b!1375601))

(assert (= (and b!1375601 res!918723) b!1375604))

(assert (= (and b!1375604 res!918721) b!1375599))

(assert (= (and b!1375599 c!127883) b!1375602))

(assert (= (and b!1375599 (not c!127883)) b!1375605))

(assert (= (or b!1375602 b!1375605) bm!65726))

(assert (= (or b!1375602 b!1375605) bm!65727))

(assert (= (and b!1375599 res!918718) b!1375600))

(declare-fun m!1259549 () Bool)

(assert (=> b!1375606 m!1259549))

(assert (=> b!1375606 m!1259549))

(declare-fun m!1259551 () Bool)

(assert (=> b!1375606 m!1259551))

(declare-fun m!1259553 () Bool)

(assert (=> b!1375600 m!1259553))

(declare-fun m!1259555 () Bool)

(assert (=> b!1375600 m!1259555))

(declare-fun m!1259557 () Bool)

(assert (=> b!1375602 m!1259557))

(declare-fun m!1259559 () Bool)

(assert (=> b!1375602 m!1259559))

(assert (=> bm!65726 m!1259553))

(declare-fun m!1259561 () Bool)

(assert (=> b!1375603 m!1259561))

(declare-fun m!1259563 () Bool)

(assert (=> b!1375604 m!1259563))

(declare-fun m!1259565 () Bool)

(assert (=> b!1375604 m!1259565))

(declare-fun m!1259567 () Bool)

(assert (=> b!1375604 m!1259567))

(declare-fun m!1259569 () Bool)

(assert (=> b!1375599 m!1259569))

(assert (=> b!1375599 m!1259569))

(declare-fun m!1259571 () Bool)

(assert (=> b!1375599 m!1259571))

(declare-fun m!1259573 () Bool)

(assert (=> start!116768 m!1259573))

(declare-fun m!1259575 () Bool)

(assert (=> b!1375605 m!1259575))

(declare-fun m!1259577 () Bool)

(assert (=> b!1375605 m!1259577))

(assert (=> bm!65727 m!1259555))

(push 1)

