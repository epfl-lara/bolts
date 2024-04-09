; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116782 () Bool)

(assert start!116782)

(declare-fun b!1375767 () Bool)

(declare-fun res!918849 () Bool)

(declare-fun e!779415 () Bool)

(assert (=> b!1375767 (=> (not res!918849) (not e!779415))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93369 0))(
  ( (array!93370 (arr!45083 (Array (_ BitVec 32) (_ BitVec 64))) (size!45634 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93369)

(assert (=> b!1375767 (= res!918849 (and (bvslt (size!45634 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45634 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375768 () Bool)

(declare-fun e!779414 () Bool)

(assert (=> b!1375768 (= e!779414 false)))

(declare-fun lt!604825 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93369 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375768 (= lt!604825 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604830 () (_ BitVec 32))

(declare-fun lt!604827 () array!93369)

(assert (=> b!1375768 (= lt!604830 (arrayCountValidKeys!0 lt!604827 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375769 () Bool)

(declare-fun res!918845 () Bool)

(assert (=> b!1375769 (=> (not res!918845) (not e!779415))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375769 (= res!918845 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375770 () Bool)

(declare-datatypes ((Unit!45529 0))(
  ( (Unit!45530) )
))
(declare-fun e!779413 () Unit!45529)

(declare-fun lt!604826 () Unit!45529)

(assert (=> b!1375770 (= e!779413 lt!604826)))

(declare-fun lt!604829 () Unit!45529)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93369 (_ BitVec 32) (_ BitVec 32)) Unit!45529)

(assert (=> b!1375770 (= lt!604829 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65771 () (_ BitVec 32))

(declare-fun lt!604823 () (_ BitVec 32))

(assert (=> b!1375770 (= call!65771 (bvadd #b00000000000000000000000000000001 lt!604823))))

(assert (=> b!1375770 (= lt!604826 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65772 () (_ BitVec 32))

(declare-fun lt!604828 () (_ BitVec 32))

(assert (=> b!1375770 (= call!65772 (bvadd #b00000000000000000000000000000001 lt!604828))))

(declare-fun b!1375771 () Bool)

(declare-fun e!779417 () Bool)

(assert (=> b!1375771 (= e!779417 e!779414)))

(declare-fun res!918846 () Bool)

(assert (=> b!1375771 (=> (not res!918846) (not e!779414))))

(assert (=> b!1375771 (= res!918846 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45634 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604824 () Unit!45529)

(assert (=> b!1375771 (= lt!604824 e!779413)))

(declare-fun c!127904 () Bool)

(assert (=> b!1375771 (= c!127904 (validKeyInArray!0 (select (arr!45083 a!4032) to!206)))))

(declare-fun b!1375772 () Bool)

(assert (=> b!1375772 (= e!779415 e!779417)))

(declare-fun res!918848 () Bool)

(assert (=> b!1375772 (=> (not res!918848) (not e!779417))))

(assert (=> b!1375772 (= res!918848 (and (= lt!604828 lt!604823) (not (= to!206 (size!45634 a!4032)))))))

(assert (=> b!1375772 (= lt!604823 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375772 (= lt!604828 (arrayCountValidKeys!0 lt!604827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375772 (= lt!604827 (array!93370 (store (arr!45083 a!4032) i!1445 k0!2947) (size!45634 a!4032)))))

(declare-fun res!918847 () Bool)

(assert (=> start!116782 (=> (not res!918847) (not e!779415))))

(assert (=> start!116782 (= res!918847 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45634 a!4032))))))

(assert (=> start!116782 e!779415))

(assert (=> start!116782 true))

(declare-fun array_inv!34028 (array!93369) Bool)

(assert (=> start!116782 (array_inv!34028 a!4032)))

(declare-fun bm!65768 () Bool)

(assert (=> bm!65768 (= call!65772 (arrayCountValidKeys!0 lt!604827 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375773 () Bool)

(declare-fun res!918844 () Bool)

(assert (=> b!1375773 (=> (not res!918844) (not e!779415))))

(assert (=> b!1375773 (= res!918844 (validKeyInArray!0 (select (arr!45083 a!4032) i!1445)))))

(declare-fun bm!65769 () Bool)

(assert (=> bm!65769 (= call!65771 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375774 () Bool)

(declare-fun lt!604831 () Unit!45529)

(assert (=> b!1375774 (= e!779413 lt!604831)))

(declare-fun lt!604822 () Unit!45529)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93369 (_ BitVec 32) (_ BitVec 32)) Unit!45529)

(assert (=> b!1375774 (= lt!604822 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375774 (= call!65771 lt!604823)))

(assert (=> b!1375774 (= lt!604831 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375774 (= call!65772 lt!604828)))

(assert (= (and start!116782 res!918847) b!1375773))

(assert (= (and b!1375773 res!918844) b!1375769))

(assert (= (and b!1375769 res!918845) b!1375767))

(assert (= (and b!1375767 res!918849) b!1375772))

(assert (= (and b!1375772 res!918848) b!1375771))

(assert (= (and b!1375771 c!127904) b!1375770))

(assert (= (and b!1375771 (not c!127904)) b!1375774))

(assert (= (or b!1375770 b!1375774) bm!65769))

(assert (= (or b!1375770 b!1375774) bm!65768))

(assert (= (and b!1375771 res!918846) b!1375768))

(declare-fun m!1259759 () Bool)

(assert (=> b!1375771 m!1259759))

(assert (=> b!1375771 m!1259759))

(declare-fun m!1259761 () Bool)

(assert (=> b!1375771 m!1259761))

(declare-fun m!1259763 () Bool)

(assert (=> start!116782 m!1259763))

(declare-fun m!1259765 () Bool)

(assert (=> b!1375768 m!1259765))

(declare-fun m!1259767 () Bool)

(assert (=> b!1375768 m!1259767))

(declare-fun m!1259769 () Bool)

(assert (=> b!1375770 m!1259769))

(declare-fun m!1259771 () Bool)

(assert (=> b!1375770 m!1259771))

(declare-fun m!1259773 () Bool)

(assert (=> b!1375774 m!1259773))

(declare-fun m!1259775 () Bool)

(assert (=> b!1375774 m!1259775))

(assert (=> bm!65769 m!1259765))

(assert (=> bm!65768 m!1259767))

(declare-fun m!1259777 () Bool)

(assert (=> b!1375773 m!1259777))

(assert (=> b!1375773 m!1259777))

(declare-fun m!1259779 () Bool)

(assert (=> b!1375773 m!1259779))

(declare-fun m!1259781 () Bool)

(assert (=> b!1375769 m!1259781))

(declare-fun m!1259783 () Bool)

(assert (=> b!1375772 m!1259783))

(declare-fun m!1259785 () Bool)

(assert (=> b!1375772 m!1259785))

(declare-fun m!1259787 () Bool)

(assert (=> b!1375772 m!1259787))

(check-sat (not bm!65769) (not b!1375772) (not b!1375773) (not b!1375769) (not b!1375768) (not start!116782) (not b!1375774) (not b!1375770) (not bm!65768) (not b!1375771))
(check-sat)
