; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116898 () Bool)

(assert start!116898)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun call!65903 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun bm!65900 () Bool)

(declare-datatypes ((array!93485 0))(
  ( (array!93486 (arr!45141 (Array (_ BitVec 32) (_ BitVec 64))) (size!45692 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93485)

(declare-fun arrayCountValidKeys!0 (array!93485 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65900 (= call!65903 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376917 () Bool)

(declare-fun e!779988 () Bool)

(declare-fun e!779990 () Bool)

(assert (=> b!1376917 (= e!779988 e!779990)))

(declare-fun res!919865 () Bool)

(assert (=> b!1376917 (=> (not res!919865) (not e!779990))))

(declare-fun lt!605542 () (_ BitVec 32))

(declare-fun lt!605543 () (_ BitVec 32))

(assert (=> b!1376917 (= res!919865 (and (= lt!605543 lt!605542) (not (= to!206 (size!45692 a!4032)))))))

(assert (=> b!1376917 (= lt!605542 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605538 () array!93485)

(assert (=> b!1376917 (= lt!605543 (arrayCountValidKeys!0 lt!605538 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376917 (= lt!605538 (array!93486 (store (arr!45141 a!4032) i!1445 k!2947) (size!45692 a!4032)))))

(declare-fun b!1376918 () Bool)

(declare-fun res!919863 () Bool)

(assert (=> b!1376918 (=> (not res!919863) (not e!779988))))

(assert (=> b!1376918 (= res!919863 (and (bvslt (size!45692 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45692 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65901 () Bool)

(declare-fun call!65904 () (_ BitVec 32))

(assert (=> bm!65901 (= call!65904 (arrayCountValidKeys!0 lt!605538 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376919 () Bool)

(declare-fun res!919864 () Bool)

(assert (=> b!1376919 (=> (not res!919864) (not e!779988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376919 (= res!919864 (validKeyInArray!0 (select (arr!45141 a!4032) i!1445)))))

(declare-fun b!1376920 () Bool)

(assert (=> b!1376920 (= e!779990 false)))

(declare-datatypes ((Unit!45597 0))(
  ( (Unit!45598) )
))
(declare-fun lt!605540 () Unit!45597)

(declare-fun e!779987 () Unit!45597)

(assert (=> b!1376920 (= lt!605540 e!779987)))

(declare-fun c!127970 () Bool)

(assert (=> b!1376920 (= c!127970 (validKeyInArray!0 (select (arr!45141 a!4032) to!206)))))

(declare-fun b!1376921 () Bool)

(declare-fun lt!605541 () Unit!45597)

(assert (=> b!1376921 (= e!779987 lt!605541)))

(declare-fun lt!605544 () Unit!45597)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93485 (_ BitVec 32) (_ BitVec 32)) Unit!45597)

(assert (=> b!1376921 (= lt!605544 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376921 (= call!65903 (bvadd #b00000000000000000000000000000001 lt!605542))))

(assert (=> b!1376921 (= lt!605541 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605538 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376921 (= call!65904 (bvadd #b00000000000000000000000000000001 lt!605543))))

(declare-fun res!919862 () Bool)

(assert (=> start!116898 (=> (not res!919862) (not e!779988))))

(assert (=> start!116898 (= res!919862 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45692 a!4032))))))

(assert (=> start!116898 e!779988))

(assert (=> start!116898 true))

(declare-fun array_inv!34086 (array!93485) Bool)

(assert (=> start!116898 (array_inv!34086 a!4032)))

(declare-fun b!1376922 () Bool)

(declare-fun res!919866 () Bool)

(assert (=> b!1376922 (=> (not res!919866) (not e!779988))))

(assert (=> b!1376922 (= res!919866 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376923 () Bool)

(declare-fun lt!605545 () Unit!45597)

(assert (=> b!1376923 (= e!779987 lt!605545)))

(declare-fun lt!605539 () Unit!45597)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93485 (_ BitVec 32) (_ BitVec 32)) Unit!45597)

(assert (=> b!1376923 (= lt!605539 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376923 (= call!65903 lt!605542)))

(assert (=> b!1376923 (= lt!605545 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605538 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376923 (= call!65904 lt!605543)))

(assert (= (and start!116898 res!919862) b!1376919))

(assert (= (and b!1376919 res!919864) b!1376922))

(assert (= (and b!1376922 res!919866) b!1376918))

(assert (= (and b!1376918 res!919863) b!1376917))

(assert (= (and b!1376917 res!919865) b!1376920))

(assert (= (and b!1376920 c!127970) b!1376921))

(assert (= (and b!1376920 (not c!127970)) b!1376923))

(assert (= (or b!1376921 b!1376923) bm!65900))

(assert (= (or b!1376921 b!1376923) bm!65901))

(declare-fun m!1261139 () Bool)

(assert (=> bm!65901 m!1261139))

(declare-fun m!1261141 () Bool)

(assert (=> b!1376923 m!1261141))

(declare-fun m!1261143 () Bool)

(assert (=> b!1376923 m!1261143))

(declare-fun m!1261145 () Bool)

(assert (=> b!1376920 m!1261145))

(assert (=> b!1376920 m!1261145))

(declare-fun m!1261147 () Bool)

(assert (=> b!1376920 m!1261147))

(declare-fun m!1261149 () Bool)

(assert (=> b!1376922 m!1261149))

(declare-fun m!1261151 () Bool)

(assert (=> b!1376921 m!1261151))

(declare-fun m!1261153 () Bool)

(assert (=> b!1376921 m!1261153))

(declare-fun m!1261155 () Bool)

(assert (=> b!1376919 m!1261155))

(assert (=> b!1376919 m!1261155))

(declare-fun m!1261157 () Bool)

(assert (=> b!1376919 m!1261157))

(declare-fun m!1261159 () Bool)

(assert (=> start!116898 m!1261159))

(declare-fun m!1261161 () Bool)

(assert (=> bm!65900 m!1261161))

(declare-fun m!1261163 () Bool)

(assert (=> b!1376917 m!1261163))

(declare-fun m!1261165 () Bool)

(assert (=> b!1376917 m!1261165))

(declare-fun m!1261167 () Bool)

(assert (=> b!1376917 m!1261167))

(push 1)

(assert (not b!1376921))

(assert (not b!1376923))

(assert (not b!1376917))

(assert (not start!116898))

(assert (not b!1376919))

(assert (not bm!65901))

(assert (not b!1376920))

(assert (not bm!65900))

(assert (not b!1376922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

