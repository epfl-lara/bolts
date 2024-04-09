; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116772 () Bool)

(assert start!116772)

(declare-fun b!1375647 () Bool)

(declare-datatypes ((Unit!45519 0))(
  ( (Unit!45520) )
))
(declare-fun e!779338 () Unit!45519)

(declare-fun lt!604680 () Unit!45519)

(assert (=> b!1375647 (= e!779338 lt!604680)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604677 () Unit!45519)

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93359 0))(
  ( (array!93360 (arr!45078 (Array (_ BitVec 32) (_ BitVec 64))) (size!45629 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93359)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93359 (_ BitVec 32) (_ BitVec 32)) Unit!45519)

(assert (=> b!1375647 (= lt!604677 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65741 () (_ BitVec 32))

(declare-fun lt!604678 () (_ BitVec 32))

(assert (=> b!1375647 (= call!65741 (bvadd #b00000000000000000000000000000001 lt!604678))))

(declare-fun lt!604681 () array!93359)

(assert (=> b!1375647 (= lt!604680 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604681 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65742 () (_ BitVec 32))

(declare-fun lt!604672 () (_ BitVec 32))

(assert (=> b!1375647 (= call!65742 (bvadd #b00000000000000000000000000000001 lt!604672))))

(declare-fun b!1375648 () Bool)

(declare-fun res!918754 () Bool)

(declare-fun e!779342 () Bool)

(assert (=> b!1375648 (=> (not res!918754) (not e!779342))))

(assert (=> b!1375648 (= res!918754 (and (bvslt (size!45629 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45629 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375649 () Bool)

(declare-fun res!918755 () Bool)

(assert (=> b!1375649 (=> (not res!918755) (not e!779342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375649 (= res!918755 (validKeyInArray!0 (select (arr!45078 a!4032) i!1445)))))

(declare-fun bm!65738 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93359 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65738 (= call!65741 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375650 () Bool)

(declare-fun res!918759 () Bool)

(assert (=> b!1375650 (=> (not res!918759) (not e!779342))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375650 (= res!918759 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!918756 () Bool)

(assert (=> start!116772 (=> (not res!918756) (not e!779342))))

(assert (=> start!116772 (= res!918756 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45629 a!4032))))))

(assert (=> start!116772 e!779342))

(assert (=> start!116772 true))

(declare-fun array_inv!34023 (array!93359) Bool)

(assert (=> start!116772 (array_inv!34023 a!4032)))

(declare-fun b!1375651 () Bool)

(declare-fun e!779339 () Bool)

(assert (=> b!1375651 (= e!779339 false)))

(declare-fun lt!604673 () (_ BitVec 32))

(assert (=> b!1375651 (= lt!604673 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604676 () (_ BitVec 32))

(assert (=> b!1375651 (= lt!604676 (arrayCountValidKeys!0 lt!604681 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375652 () Bool)

(declare-fun e!779340 () Bool)

(assert (=> b!1375652 (= e!779340 e!779339)))

(declare-fun res!918758 () Bool)

(assert (=> b!1375652 (=> (not res!918758) (not e!779339))))

(assert (=> b!1375652 (= res!918758 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45629 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604679 () Unit!45519)

(assert (=> b!1375652 (= lt!604679 e!779338)))

(declare-fun c!127889 () Bool)

(assert (=> b!1375652 (= c!127889 (validKeyInArray!0 (select (arr!45078 a!4032) to!206)))))

(declare-fun b!1375653 () Bool)

(assert (=> b!1375653 (= e!779342 e!779340)))

(declare-fun res!918757 () Bool)

(assert (=> b!1375653 (=> (not res!918757) (not e!779340))))

(assert (=> b!1375653 (= res!918757 (and (= lt!604672 lt!604678) (not (= to!206 (size!45629 a!4032)))))))

(assert (=> b!1375653 (= lt!604678 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375653 (= lt!604672 (arrayCountValidKeys!0 lt!604681 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375653 (= lt!604681 (array!93360 (store (arr!45078 a!4032) i!1445 k!2947) (size!45629 a!4032)))))

(declare-fun bm!65739 () Bool)

(assert (=> bm!65739 (= call!65742 (arrayCountValidKeys!0 lt!604681 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375654 () Bool)

(declare-fun lt!604674 () Unit!45519)

(assert (=> b!1375654 (= e!779338 lt!604674)))

(declare-fun lt!604675 () Unit!45519)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93359 (_ BitVec 32) (_ BitVec 32)) Unit!45519)

(assert (=> b!1375654 (= lt!604675 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375654 (= call!65741 lt!604678)))

(assert (=> b!1375654 (= lt!604674 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604681 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375654 (= call!65742 lt!604672)))

(assert (= (and start!116772 res!918756) b!1375649))

(assert (= (and b!1375649 res!918755) b!1375650))

(assert (= (and b!1375650 res!918759) b!1375648))

(assert (= (and b!1375648 res!918754) b!1375653))

(assert (= (and b!1375653 res!918757) b!1375652))

(assert (= (and b!1375652 c!127889) b!1375647))

(assert (= (and b!1375652 (not c!127889)) b!1375654))

(assert (= (or b!1375647 b!1375654) bm!65739))

(assert (= (or b!1375647 b!1375654) bm!65738))

(assert (= (and b!1375652 res!918758) b!1375651))

(declare-fun m!1259609 () Bool)

(assert (=> bm!65739 m!1259609))

(declare-fun m!1259611 () Bool)

(assert (=> b!1375654 m!1259611))

(declare-fun m!1259613 () Bool)

(assert (=> b!1375654 m!1259613))

(declare-fun m!1259615 () Bool)

(assert (=> b!1375650 m!1259615))

(declare-fun m!1259617 () Bool)

(assert (=> start!116772 m!1259617))

(declare-fun m!1259619 () Bool)

(assert (=> b!1375649 m!1259619))

(assert (=> b!1375649 m!1259619))

(declare-fun m!1259621 () Bool)

(assert (=> b!1375649 m!1259621))

(declare-fun m!1259623 () Bool)

(assert (=> bm!65738 m!1259623))

(declare-fun m!1259625 () Bool)

(assert (=> b!1375652 m!1259625))

(assert (=> b!1375652 m!1259625))

(declare-fun m!1259627 () Bool)

(assert (=> b!1375652 m!1259627))

(declare-fun m!1259629 () Bool)

(assert (=> b!1375647 m!1259629))

(declare-fun m!1259631 () Bool)

(assert (=> b!1375647 m!1259631))

(declare-fun m!1259633 () Bool)

(assert (=> b!1375653 m!1259633))

(declare-fun m!1259635 () Bool)

(assert (=> b!1375653 m!1259635))

(declare-fun m!1259637 () Bool)

(assert (=> b!1375653 m!1259637))

(assert (=> b!1375651 m!1259623))

(assert (=> b!1375651 m!1259609))

(push 1)

(assert (not start!116772))

(assert (not b!1375651))

(assert (not b!1375647))

(assert (not b!1375653))

