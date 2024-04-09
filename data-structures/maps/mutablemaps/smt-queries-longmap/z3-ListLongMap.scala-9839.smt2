; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116764 () Bool)

(assert start!116764)

(declare-fun b!1375551 () Bool)

(declare-fun res!918685 () Bool)

(declare-fun e!779281 () Bool)

(assert (=> b!1375551 (=> (not res!918685) (not e!779281))))

(declare-datatypes ((array!93351 0))(
  ( (array!93352 (arr!45074 (Array (_ BitVec 32) (_ BitVec 64))) (size!45625 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93351)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375551 (= res!918685 (validKeyInArray!0 (select (arr!45074 a!4032) i!1445)))))

(declare-fun b!1375552 () Bool)

(declare-datatypes ((Unit!45511 0))(
  ( (Unit!45512) )
))
(declare-fun e!779278 () Unit!45511)

(declare-fun lt!604552 () Unit!45511)

(assert (=> b!1375552 (= e!779278 lt!604552)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604553 () Unit!45511)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93351 (_ BitVec 32) (_ BitVec 32)) Unit!45511)

(assert (=> b!1375552 (= lt!604553 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65717 () (_ BitVec 32))

(declare-fun lt!604555 () (_ BitVec 32))

(assert (=> b!1375552 (= call!65717 lt!604555)))

(declare-fun lt!604556 () array!93351)

(assert (=> b!1375552 (= lt!604552 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604556 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65718 () (_ BitVec 32))

(declare-fun lt!604557 () (_ BitVec 32))

(assert (=> b!1375552 (= call!65718 lt!604557)))

(declare-fun bm!65714 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93351 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65714 (= call!65717 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375553 () Bool)

(declare-fun res!918684 () Bool)

(assert (=> b!1375553 (=> (not res!918684) (not e!779281))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375553 (= res!918684 (not (validKeyInArray!0 k0!2947)))))

(declare-fun bm!65715 () Bool)

(assert (=> bm!65715 (= call!65718 (arrayCountValidKeys!0 lt!604556 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375554 () Bool)

(declare-fun lt!604561 () Unit!45511)

(assert (=> b!1375554 (= e!779278 lt!604561)))

(declare-fun lt!604558 () Unit!45511)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93351 (_ BitVec 32) (_ BitVec 32)) Unit!45511)

(assert (=> b!1375554 (= lt!604558 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375554 (= call!65717 (bvadd #b00000000000000000000000000000001 lt!604555))))

(assert (=> b!1375554 (= lt!604561 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604556 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375554 (= call!65718 (bvadd #b00000000000000000000000000000001 lt!604557))))

(declare-fun b!1375555 () Bool)

(declare-fun e!779279 () Bool)

(declare-fun e!779280 () Bool)

(assert (=> b!1375555 (= e!779279 e!779280)))

(declare-fun res!918686 () Bool)

(assert (=> b!1375555 (=> (not res!918686) (not e!779280))))

(assert (=> b!1375555 (= res!918686 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45625 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604554 () Unit!45511)

(assert (=> b!1375555 (= lt!604554 e!779278)))

(declare-fun c!127877 () Bool)

(assert (=> b!1375555 (= c!127877 (validKeyInArray!0 (select (arr!45074 a!4032) to!206)))))

(declare-fun b!1375556 () Bool)

(assert (=> b!1375556 (= e!779280 false)))

(declare-fun lt!604560 () (_ BitVec 32))

(assert (=> b!1375556 (= lt!604560 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604559 () (_ BitVec 32))

(assert (=> b!1375556 (= lt!604559 (arrayCountValidKeys!0 lt!604556 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375557 () Bool)

(declare-fun res!918687 () Bool)

(assert (=> b!1375557 (=> (not res!918687) (not e!779281))))

(assert (=> b!1375557 (= res!918687 (and (bvslt (size!45625 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45625 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375558 () Bool)

(assert (=> b!1375558 (= e!779281 e!779279)))

(declare-fun res!918682 () Bool)

(assert (=> b!1375558 (=> (not res!918682) (not e!779279))))

(assert (=> b!1375558 (= res!918682 (and (= lt!604557 lt!604555) (not (= to!206 (size!45625 a!4032)))))))

(assert (=> b!1375558 (= lt!604555 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375558 (= lt!604557 (arrayCountValidKeys!0 lt!604556 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375558 (= lt!604556 (array!93352 (store (arr!45074 a!4032) i!1445 k0!2947) (size!45625 a!4032)))))

(declare-fun res!918683 () Bool)

(assert (=> start!116764 (=> (not res!918683) (not e!779281))))

(assert (=> start!116764 (= res!918683 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45625 a!4032))))))

(assert (=> start!116764 e!779281))

(assert (=> start!116764 true))

(declare-fun array_inv!34019 (array!93351) Bool)

(assert (=> start!116764 (array_inv!34019 a!4032)))

(assert (= (and start!116764 res!918683) b!1375551))

(assert (= (and b!1375551 res!918685) b!1375553))

(assert (= (and b!1375553 res!918684) b!1375557))

(assert (= (and b!1375557 res!918687) b!1375558))

(assert (= (and b!1375558 res!918682) b!1375555))

(assert (= (and b!1375555 c!127877) b!1375554))

(assert (= (and b!1375555 (not c!127877)) b!1375552))

(assert (= (or b!1375554 b!1375552) bm!65714))

(assert (= (or b!1375554 b!1375552) bm!65715))

(assert (= (and b!1375555 res!918686) b!1375556))

(declare-fun m!1259489 () Bool)

(assert (=> b!1375554 m!1259489))

(declare-fun m!1259491 () Bool)

(assert (=> b!1375554 m!1259491))

(declare-fun m!1259493 () Bool)

(assert (=> b!1375558 m!1259493))

(declare-fun m!1259495 () Bool)

(assert (=> b!1375558 m!1259495))

(declare-fun m!1259497 () Bool)

(assert (=> b!1375558 m!1259497))

(declare-fun m!1259499 () Bool)

(assert (=> b!1375555 m!1259499))

(assert (=> b!1375555 m!1259499))

(declare-fun m!1259501 () Bool)

(assert (=> b!1375555 m!1259501))

(declare-fun m!1259503 () Bool)

(assert (=> bm!65714 m!1259503))

(declare-fun m!1259505 () Bool)

(assert (=> b!1375553 m!1259505))

(assert (=> b!1375556 m!1259503))

(declare-fun m!1259507 () Bool)

(assert (=> b!1375556 m!1259507))

(declare-fun m!1259509 () Bool)

(assert (=> b!1375551 m!1259509))

(assert (=> b!1375551 m!1259509))

(declare-fun m!1259511 () Bool)

(assert (=> b!1375551 m!1259511))

(assert (=> bm!65715 m!1259507))

(declare-fun m!1259513 () Bool)

(assert (=> b!1375552 m!1259513))

(declare-fun m!1259515 () Bool)

(assert (=> b!1375552 m!1259515))

(declare-fun m!1259517 () Bool)

(assert (=> start!116764 m!1259517))

(check-sat (not b!1375556) (not b!1375551) (not b!1375558) (not b!1375555) (not b!1375552) (not b!1375554) (not b!1375553) (not bm!65715) (not start!116764) (not bm!65714))
(check-sat)
