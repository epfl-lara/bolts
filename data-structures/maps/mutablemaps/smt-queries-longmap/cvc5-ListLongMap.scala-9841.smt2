; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116774 () Bool)

(assert start!116774)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun bm!65744 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93361 0))(
  ( (array!93362 (arr!45079 (Array (_ BitVec 32) (_ BitVec 64))) (size!45630 (_ BitVec 32))) )
))
(declare-fun lt!604710 () array!93361)

(declare-fun call!65748 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93361 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65744 (= call!65748 (arrayCountValidKeys!0 lt!604710 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375671 () Bool)

(declare-datatypes ((Unit!45521 0))(
  ( (Unit!45522) )
))
(declare-fun e!779357 () Unit!45521)

(declare-fun lt!604708 () Unit!45521)

(assert (=> b!1375671 (= e!779357 lt!604708)))

(declare-fun lt!604705 () Unit!45521)

(declare-fun a!4032 () array!93361)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93361 (_ BitVec 32) (_ BitVec 32)) Unit!45521)

(assert (=> b!1375671 (= lt!604705 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65747 () (_ BitVec 32))

(declare-fun lt!604702 () (_ BitVec 32))

(assert (=> b!1375671 (= call!65747 (bvadd #b00000000000000000000000000000001 lt!604702))))

(assert (=> b!1375671 (= lt!604708 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604710 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604707 () (_ BitVec 32))

(assert (=> b!1375671 (= call!65748 (bvadd #b00000000000000000000000000000001 lt!604707))))

(declare-fun b!1375672 () Bool)

(declare-fun e!779354 () Bool)

(declare-fun e!779353 () Bool)

(assert (=> b!1375672 (= e!779354 e!779353)))

(declare-fun res!918776 () Bool)

(assert (=> b!1375672 (=> (not res!918776) (not e!779353))))

(assert (=> b!1375672 (= res!918776 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45630 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604704 () Unit!45521)

(assert (=> b!1375672 (= lt!604704 e!779357)))

(declare-fun c!127892 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375672 (= c!127892 (validKeyInArray!0 (select (arr!45079 a!4032) to!206)))))

(declare-fun bm!65745 () Bool)

(assert (=> bm!65745 (= call!65747 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918774 () Bool)

(declare-fun e!779355 () Bool)

(assert (=> start!116774 (=> (not res!918774) (not e!779355))))

(assert (=> start!116774 (= res!918774 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45630 a!4032))))))

(assert (=> start!116774 e!779355))

(assert (=> start!116774 true))

(declare-fun array_inv!34024 (array!93361) Bool)

(assert (=> start!116774 (array_inv!34024 a!4032)))

(declare-fun b!1375673 () Bool)

(declare-fun lt!604711 () Unit!45521)

(assert (=> b!1375673 (= e!779357 lt!604711)))

(declare-fun lt!604703 () Unit!45521)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93361 (_ BitVec 32) (_ BitVec 32)) Unit!45521)

(assert (=> b!1375673 (= lt!604703 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375673 (= call!65747 lt!604702)))

(assert (=> b!1375673 (= lt!604711 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604710 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375673 (= call!65748 lt!604707)))

(declare-fun b!1375674 () Bool)

(declare-fun res!918772 () Bool)

(assert (=> b!1375674 (=> (not res!918772) (not e!779355))))

(assert (=> b!1375674 (= res!918772 (validKeyInArray!0 (select (arr!45079 a!4032) i!1445)))))

(declare-fun b!1375675 () Bool)

(declare-fun res!918773 () Bool)

(assert (=> b!1375675 (=> (not res!918773) (not e!779355))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375675 (= res!918773 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375676 () Bool)

(declare-fun res!918775 () Bool)

(assert (=> b!1375676 (=> (not res!918775) (not e!779355))))

(assert (=> b!1375676 (= res!918775 (and (bvslt (size!45630 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45630 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375677 () Bool)

(assert (=> b!1375677 (= e!779353 false)))

(declare-fun lt!604709 () (_ BitVec 32))

(assert (=> b!1375677 (= lt!604709 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604706 () (_ BitVec 32))

(assert (=> b!1375677 (= lt!604706 (arrayCountValidKeys!0 lt!604710 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375678 () Bool)

(assert (=> b!1375678 (= e!779355 e!779354)))

(declare-fun res!918777 () Bool)

(assert (=> b!1375678 (=> (not res!918777) (not e!779354))))

(assert (=> b!1375678 (= res!918777 (and (= lt!604707 lt!604702) (not (= to!206 (size!45630 a!4032)))))))

(assert (=> b!1375678 (= lt!604702 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375678 (= lt!604707 (arrayCountValidKeys!0 lt!604710 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375678 (= lt!604710 (array!93362 (store (arr!45079 a!4032) i!1445 k!2947) (size!45630 a!4032)))))

(assert (= (and start!116774 res!918774) b!1375674))

(assert (= (and b!1375674 res!918772) b!1375675))

(assert (= (and b!1375675 res!918773) b!1375676))

(assert (= (and b!1375676 res!918775) b!1375678))

(assert (= (and b!1375678 res!918777) b!1375672))

(assert (= (and b!1375672 c!127892) b!1375671))

(assert (= (and b!1375672 (not c!127892)) b!1375673))

(assert (= (or b!1375671 b!1375673) bm!65744))

(assert (= (or b!1375671 b!1375673) bm!65745))

(assert (= (and b!1375672 res!918776) b!1375677))

(declare-fun m!1259639 () Bool)

(assert (=> b!1375677 m!1259639))

(declare-fun m!1259641 () Bool)

(assert (=> b!1375677 m!1259641))

(declare-fun m!1259643 () Bool)

(assert (=> b!1375672 m!1259643))

(assert (=> b!1375672 m!1259643))

(declare-fun m!1259645 () Bool)

(assert (=> b!1375672 m!1259645))

(declare-fun m!1259647 () Bool)

(assert (=> b!1375674 m!1259647))

(assert (=> b!1375674 m!1259647))

(declare-fun m!1259649 () Bool)

(assert (=> b!1375674 m!1259649))

(declare-fun m!1259651 () Bool)

(assert (=> b!1375671 m!1259651))

(declare-fun m!1259653 () Bool)

(assert (=> b!1375671 m!1259653))

(assert (=> bm!65745 m!1259639))

(declare-fun m!1259655 () Bool)

(assert (=> b!1375675 m!1259655))

(declare-fun m!1259657 () Bool)

(assert (=> start!116774 m!1259657))

(declare-fun m!1259659 () Bool)

(assert (=> b!1375678 m!1259659))

(declare-fun m!1259661 () Bool)

(assert (=> b!1375678 m!1259661))

(declare-fun m!1259663 () Bool)

(assert (=> b!1375678 m!1259663))

(assert (=> bm!65744 m!1259641))

(declare-fun m!1259665 () Bool)

(assert (=> b!1375673 m!1259665))

(declare-fun m!1259667 () Bool)

(assert (=> b!1375673 m!1259667))

(push 1)

