; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116780 () Bool)

(assert start!116780)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun bm!65762 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93367 0))(
  ( (array!93368 (arr!45082 (Array (_ BitVec 32) (_ BitVec 64))) (size!45633 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93367)

(declare-fun call!65766 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93367 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65762 (= call!65766 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375743 () Bool)

(declare-fun e!779398 () Bool)

(declare-fun e!779401 () Bool)

(assert (=> b!1375743 (= e!779398 e!779401)))

(declare-fun res!918826 () Bool)

(assert (=> b!1375743 (=> (not res!918826) (not e!779401))))

(assert (=> b!1375743 (= res!918826 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45633 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45527 0))(
  ( (Unit!45528) )
))
(declare-fun lt!604798 () Unit!45527)

(declare-fun e!779400 () Unit!45527)

(assert (=> b!1375743 (= lt!604798 e!779400)))

(declare-fun c!127901 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375743 (= c!127901 (validKeyInArray!0 (select (arr!45082 a!4032) to!206)))))

(declare-fun b!1375744 () Bool)

(declare-fun res!918827 () Bool)

(declare-fun e!779399 () Bool)

(assert (=> b!1375744 (=> (not res!918827) (not e!779399))))

(assert (=> b!1375744 (= res!918827 (and (bvslt (size!45633 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45633 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65763 () Bool)

(declare-fun call!65765 () (_ BitVec 32))

(declare-fun lt!604799 () array!93367)

(assert (=> bm!65763 (= call!65765 (arrayCountValidKeys!0 lt!604799 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375745 () Bool)

(declare-fun lt!604797 () Unit!45527)

(assert (=> b!1375745 (= e!779400 lt!604797)))

(declare-fun lt!604795 () Unit!45527)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93367 (_ BitVec 32) (_ BitVec 32)) Unit!45527)

(assert (=> b!1375745 (= lt!604795 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604801 () (_ BitVec 32))

(assert (=> b!1375745 (= call!65766 (bvadd #b00000000000000000000000000000001 lt!604801))))

(assert (=> b!1375745 (= lt!604797 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604799 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604796 () (_ BitVec 32))

(assert (=> b!1375745 (= call!65765 (bvadd #b00000000000000000000000000000001 lt!604796))))

(declare-fun res!918829 () Bool)

(assert (=> start!116780 (=> (not res!918829) (not e!779399))))

(assert (=> start!116780 (= res!918829 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45633 a!4032))))))

(assert (=> start!116780 e!779399))

(assert (=> start!116780 true))

(declare-fun array_inv!34027 (array!93367) Bool)

(assert (=> start!116780 (array_inv!34027 a!4032)))

(declare-fun b!1375746 () Bool)

(assert (=> b!1375746 (= e!779401 false)))

(declare-fun lt!604792 () (_ BitVec 32))

(assert (=> b!1375746 (= lt!604792 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604793 () (_ BitVec 32))

(assert (=> b!1375746 (= lt!604793 (arrayCountValidKeys!0 lt!604799 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375747 () Bool)

(declare-fun res!918830 () Bool)

(assert (=> b!1375747 (=> (not res!918830) (not e!779399))))

(assert (=> b!1375747 (= res!918830 (validKeyInArray!0 (select (arr!45082 a!4032) i!1445)))))

(declare-fun b!1375748 () Bool)

(declare-fun res!918831 () Bool)

(assert (=> b!1375748 (=> (not res!918831) (not e!779399))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375748 (= res!918831 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375749 () Bool)

(assert (=> b!1375749 (= e!779399 e!779398)))

(declare-fun res!918828 () Bool)

(assert (=> b!1375749 (=> (not res!918828) (not e!779398))))

(assert (=> b!1375749 (= res!918828 (and (= lt!604796 lt!604801) (not (= to!206 (size!45633 a!4032)))))))

(assert (=> b!1375749 (= lt!604801 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375749 (= lt!604796 (arrayCountValidKeys!0 lt!604799 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375749 (= lt!604799 (array!93368 (store (arr!45082 a!4032) i!1445 k!2947) (size!45633 a!4032)))))

(declare-fun b!1375750 () Bool)

(declare-fun lt!604800 () Unit!45527)

(assert (=> b!1375750 (= e!779400 lt!604800)))

(declare-fun lt!604794 () Unit!45527)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93367 (_ BitVec 32) (_ BitVec 32)) Unit!45527)

(assert (=> b!1375750 (= lt!604794 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375750 (= call!65766 lt!604801)))

(assert (=> b!1375750 (= lt!604800 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604799 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375750 (= call!65765 lt!604796)))

(assert (= (and start!116780 res!918829) b!1375747))

(assert (= (and b!1375747 res!918830) b!1375748))

(assert (= (and b!1375748 res!918831) b!1375744))

(assert (= (and b!1375744 res!918827) b!1375749))

(assert (= (and b!1375749 res!918828) b!1375743))

(assert (= (and b!1375743 c!127901) b!1375745))

(assert (= (and b!1375743 (not c!127901)) b!1375750))

(assert (= (or b!1375745 b!1375750) bm!65762))

(assert (= (or b!1375745 b!1375750) bm!65763))

(assert (= (and b!1375743 res!918826) b!1375746))

(declare-fun m!1259729 () Bool)

(assert (=> b!1375743 m!1259729))

(assert (=> b!1375743 m!1259729))

(declare-fun m!1259731 () Bool)

(assert (=> b!1375743 m!1259731))

(declare-fun m!1259733 () Bool)

(assert (=> b!1375750 m!1259733))

(declare-fun m!1259735 () Bool)

(assert (=> b!1375750 m!1259735))

(declare-fun m!1259737 () Bool)

(assert (=> b!1375745 m!1259737))

(declare-fun m!1259739 () Bool)

(assert (=> b!1375745 m!1259739))

(declare-fun m!1259741 () Bool)

(assert (=> b!1375746 m!1259741))

(declare-fun m!1259743 () Bool)

(assert (=> b!1375746 m!1259743))

(declare-fun m!1259745 () Bool)

(assert (=> b!1375747 m!1259745))

(assert (=> b!1375747 m!1259745))

(declare-fun m!1259747 () Bool)

(assert (=> b!1375747 m!1259747))

(declare-fun m!1259749 () Bool)

(assert (=> b!1375748 m!1259749))

(assert (=> bm!65762 m!1259741))

(assert (=> bm!65763 m!1259743))

(declare-fun m!1259751 () Bool)

(assert (=> b!1375749 m!1259751))

(declare-fun m!1259753 () Bool)

(assert (=> b!1375749 m!1259753))

(declare-fun m!1259755 () Bool)

(assert (=> b!1375749 m!1259755))

(declare-fun m!1259757 () Bool)

(assert (=> start!116780 m!1259757))

(push 1)

