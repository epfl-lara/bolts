; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116888 () Bool)

(assert start!116888)

(declare-fun b!1376812 () Bool)

(declare-fun res!919787 () Bool)

(declare-fun e!779928 () Bool)

(assert (=> b!1376812 (=> (not res!919787) (not e!779928))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376812 (= res!919787 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!919788 () Bool)

(assert (=> start!116888 (=> (not res!919788) (not e!779928))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93475 0))(
  ( (array!93476 (arr!45136 (Array (_ BitVec 32) (_ BitVec 64))) (size!45687 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93475)

(assert (=> start!116888 (= res!919788 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45687 a!4032))))))

(assert (=> start!116888 e!779928))

(assert (=> start!116888 true))

(declare-fun array_inv!34081 (array!93475) Bool)

(assert (=> start!116888 (array_inv!34081 a!4032)))

(declare-fun call!65874 () (_ BitVec 32))

(declare-fun lt!605422 () array!93475)

(declare-fun bm!65870 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93475 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65870 (= call!65874 (arrayCountValidKeys!0 lt!605422 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376813 () Bool)

(declare-fun res!919789 () Bool)

(assert (=> b!1376813 (=> (not res!919789) (not e!779928))))

(assert (=> b!1376813 (= res!919789 (and (bvslt (size!45687 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45687 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376814 () Bool)

(declare-fun e!779929 () Bool)

(assert (=> b!1376814 (= e!779928 e!779929)))

(declare-fun res!919790 () Bool)

(assert (=> b!1376814 (=> (not res!919790) (not e!779929))))

(declare-fun lt!605421 () (_ BitVec 32))

(declare-fun lt!605423 () (_ BitVec 32))

(assert (=> b!1376814 (= res!919790 (and (= lt!605423 lt!605421) (not (= to!206 (size!45687 a!4032)))))))

(assert (=> b!1376814 (= lt!605421 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376814 (= lt!605423 (arrayCountValidKeys!0 lt!605422 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376814 (= lt!605422 (array!93476 (store (arr!45136 a!4032) i!1445 k!2947) (size!45687 a!4032)))))

(declare-fun b!1376815 () Bool)

(declare-datatypes ((Unit!45587 0))(
  ( (Unit!45588) )
))
(declare-fun e!779927 () Unit!45587)

(declare-fun lt!605425 () Unit!45587)

(assert (=> b!1376815 (= e!779927 lt!605425)))

(declare-fun lt!605420 () Unit!45587)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93475 (_ BitVec 32) (_ BitVec 32)) Unit!45587)

(assert (=> b!1376815 (= lt!605420 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65873 () (_ BitVec 32))

(assert (=> b!1376815 (= call!65873 (bvadd #b00000000000000000000000000000001 lt!605421))))

(assert (=> b!1376815 (= lt!605425 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605422 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376815 (= call!65874 (bvadd #b00000000000000000000000000000001 lt!605423))))

(declare-fun b!1376816 () Bool)

(assert (=> b!1376816 (= e!779929 false)))

(declare-fun lt!605424 () Unit!45587)

(assert (=> b!1376816 (= lt!605424 e!779927)))

(declare-fun c!127955 () Bool)

(assert (=> b!1376816 (= c!127955 (validKeyInArray!0 (select (arr!45136 a!4032) to!206)))))

(declare-fun bm!65871 () Bool)

(assert (=> bm!65871 (= call!65873 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376817 () Bool)

(declare-fun res!919791 () Bool)

(assert (=> b!1376817 (=> (not res!919791) (not e!779928))))

(assert (=> b!1376817 (= res!919791 (validKeyInArray!0 (select (arr!45136 a!4032) i!1445)))))

(declare-fun b!1376818 () Bool)

(declare-fun lt!605419 () Unit!45587)

(assert (=> b!1376818 (= e!779927 lt!605419)))

(declare-fun lt!605418 () Unit!45587)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93475 (_ BitVec 32) (_ BitVec 32)) Unit!45587)

(assert (=> b!1376818 (= lt!605418 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376818 (= call!65873 lt!605421)))

(assert (=> b!1376818 (= lt!605419 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605422 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376818 (= call!65874 lt!605423)))

(assert (= (and start!116888 res!919788) b!1376817))

(assert (= (and b!1376817 res!919791) b!1376812))

(assert (= (and b!1376812 res!919787) b!1376813))

(assert (= (and b!1376813 res!919789) b!1376814))

(assert (= (and b!1376814 res!919790) b!1376816))

(assert (= (and b!1376816 c!127955) b!1376815))

(assert (= (and b!1376816 (not c!127955)) b!1376818))

(assert (= (or b!1376815 b!1376818) bm!65871))

(assert (= (or b!1376815 b!1376818) bm!65870))

(declare-fun m!1260989 () Bool)

(assert (=> start!116888 m!1260989))

(declare-fun m!1260991 () Bool)

(assert (=> bm!65871 m!1260991))

(declare-fun m!1260993 () Bool)

(assert (=> bm!65870 m!1260993))

(declare-fun m!1260995 () Bool)

(assert (=> b!1376817 m!1260995))

(assert (=> b!1376817 m!1260995))

(declare-fun m!1260997 () Bool)

(assert (=> b!1376817 m!1260997))

(declare-fun m!1260999 () Bool)

(assert (=> b!1376818 m!1260999))

(declare-fun m!1261001 () Bool)

(assert (=> b!1376818 m!1261001))

(declare-fun m!1261003 () Bool)

(assert (=> b!1376814 m!1261003))

(declare-fun m!1261005 () Bool)

(assert (=> b!1376814 m!1261005))

(declare-fun m!1261007 () Bool)

(assert (=> b!1376814 m!1261007))

(declare-fun m!1261009 () Bool)

(assert (=> b!1376816 m!1261009))

(assert (=> b!1376816 m!1261009))

(declare-fun m!1261011 () Bool)

(assert (=> b!1376816 m!1261011))

(declare-fun m!1261013 () Bool)

(assert (=> b!1376815 m!1261013))

(declare-fun m!1261015 () Bool)

(assert (=> b!1376815 m!1261015))

(declare-fun m!1261017 () Bool)

(assert (=> b!1376812 m!1261017))

(push 1)

