; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116778 () Bool)

(assert start!116778)

(declare-fun b!1375719 () Bool)

(declare-fun e!779384 () Bool)

(assert (=> b!1375719 (= e!779384 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604766 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93365 0))(
  ( (array!93366 (arr!45081 (Array (_ BitVec 32) (_ BitVec 64))) (size!45632 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93365)

(declare-fun arrayCountValidKeys!0 (array!93365 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375719 (= lt!604766 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604765 () array!93365)

(declare-fun lt!604769 () (_ BitVec 32))

(assert (=> b!1375719 (= lt!604769 (arrayCountValidKeys!0 lt!604765 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918808 () Bool)

(declare-fun e!779385 () Bool)

(assert (=> start!116778 (=> (not res!918808) (not e!779385))))

(assert (=> start!116778 (= res!918808 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45632 a!4032))))))

(assert (=> start!116778 e!779385))

(assert (=> start!116778 true))

(declare-fun array_inv!34026 (array!93365) Bool)

(assert (=> start!116778 (array_inv!34026 a!4032)))

(declare-fun b!1375720 () Bool)

(declare-fun res!918810 () Bool)

(assert (=> b!1375720 (=> (not res!918810) (not e!779385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375720 (= res!918810 (validKeyInArray!0 (select (arr!45081 a!4032) i!1445)))))

(declare-fun b!1375721 () Bool)

(declare-fun e!779383 () Bool)

(assert (=> b!1375721 (= e!779383 e!779384)))

(declare-fun res!918811 () Bool)

(assert (=> b!1375721 (=> (not res!918811) (not e!779384))))

(assert (=> b!1375721 (= res!918811 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45632 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45525 0))(
  ( (Unit!45526) )
))
(declare-fun lt!604770 () Unit!45525)

(declare-fun e!779387 () Unit!45525)

(assert (=> b!1375721 (= lt!604770 e!779387)))

(declare-fun c!127898 () Bool)

(assert (=> b!1375721 (= c!127898 (validKeyInArray!0 (select (arr!45081 a!4032) to!206)))))

(declare-fun b!1375722 () Bool)

(declare-fun lt!604767 () Unit!45525)

(assert (=> b!1375722 (= e!779387 lt!604767)))

(declare-fun lt!604771 () Unit!45525)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93365 (_ BitVec 32) (_ BitVec 32)) Unit!45525)

(assert (=> b!1375722 (= lt!604771 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65760 () (_ BitVec 32))

(declare-fun lt!604763 () (_ BitVec 32))

(assert (=> b!1375722 (= call!65760 lt!604763)))

(assert (=> b!1375722 (= lt!604767 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604765 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65759 () (_ BitVec 32))

(declare-fun lt!604762 () (_ BitVec 32))

(assert (=> b!1375722 (= call!65759 lt!604762)))

(declare-fun b!1375723 () Bool)

(declare-fun lt!604768 () Unit!45525)

(assert (=> b!1375723 (= e!779387 lt!604768)))

(declare-fun lt!604764 () Unit!45525)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93365 (_ BitVec 32) (_ BitVec 32)) Unit!45525)

(assert (=> b!1375723 (= lt!604764 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375723 (= call!65760 (bvadd #b00000000000000000000000000000001 lt!604763))))

(assert (=> b!1375723 (= lt!604768 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604765 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375723 (= call!65759 (bvadd #b00000000000000000000000000000001 lt!604762))))

(declare-fun bm!65756 () Bool)

(assert (=> bm!65756 (= call!65759 (arrayCountValidKeys!0 lt!604765 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375724 () Bool)

(declare-fun res!918812 () Bool)

(assert (=> b!1375724 (=> (not res!918812) (not e!779385))))

(assert (=> b!1375724 (= res!918812 (and (bvslt (size!45632 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45632 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375725 () Bool)

(declare-fun res!918813 () Bool)

(assert (=> b!1375725 (=> (not res!918813) (not e!779385))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375725 (= res!918813 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65757 () Bool)

(assert (=> bm!65757 (= call!65760 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375726 () Bool)

(assert (=> b!1375726 (= e!779385 e!779383)))

(declare-fun res!918809 () Bool)

(assert (=> b!1375726 (=> (not res!918809) (not e!779383))))

(assert (=> b!1375726 (= res!918809 (and (= lt!604762 lt!604763) (not (= to!206 (size!45632 a!4032)))))))

(assert (=> b!1375726 (= lt!604763 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375726 (= lt!604762 (arrayCountValidKeys!0 lt!604765 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375726 (= lt!604765 (array!93366 (store (arr!45081 a!4032) i!1445 k!2947) (size!45632 a!4032)))))

(assert (= (and start!116778 res!918808) b!1375720))

(assert (= (and b!1375720 res!918810) b!1375725))

(assert (= (and b!1375725 res!918813) b!1375724))

(assert (= (and b!1375724 res!918812) b!1375726))

(assert (= (and b!1375726 res!918809) b!1375721))

(assert (= (and b!1375721 c!127898) b!1375723))

(assert (= (and b!1375721 (not c!127898)) b!1375722))

(assert (= (or b!1375723 b!1375722) bm!65756))

(assert (= (or b!1375723 b!1375722) bm!65757))

(assert (= (and b!1375721 res!918811) b!1375719))

(declare-fun m!1259699 () Bool)

(assert (=> b!1375720 m!1259699))

(assert (=> b!1375720 m!1259699))

(declare-fun m!1259701 () Bool)

(assert (=> b!1375720 m!1259701))

(declare-fun m!1259703 () Bool)

(assert (=> b!1375725 m!1259703))

(declare-fun m!1259705 () Bool)

(assert (=> b!1375723 m!1259705))

(declare-fun m!1259707 () Bool)

(assert (=> b!1375723 m!1259707))

(declare-fun m!1259709 () Bool)

(assert (=> bm!65757 m!1259709))

(declare-fun m!1259711 () Bool)

(assert (=> b!1375721 m!1259711))

(assert (=> b!1375721 m!1259711))

(declare-fun m!1259713 () Bool)

(assert (=> b!1375721 m!1259713))

(declare-fun m!1259715 () Bool)

(assert (=> start!116778 m!1259715))

(declare-fun m!1259717 () Bool)

(assert (=> b!1375726 m!1259717))

(declare-fun m!1259719 () Bool)

(assert (=> b!1375726 m!1259719))

(declare-fun m!1259721 () Bool)

(assert (=> b!1375726 m!1259721))

(assert (=> b!1375719 m!1259709))

(declare-fun m!1259723 () Bool)

(assert (=> b!1375719 m!1259723))

(declare-fun m!1259725 () Bool)

(assert (=> b!1375722 m!1259725))

(declare-fun m!1259727 () Bool)

(assert (=> b!1375722 m!1259727))

(assert (=> bm!65756 m!1259723))

(push 1)

(assert (not b!1375721))

(assert (not b!1375725))

(assert (not bm!65757))

(assert (not b!1375720))

(assert (not bm!65756))

