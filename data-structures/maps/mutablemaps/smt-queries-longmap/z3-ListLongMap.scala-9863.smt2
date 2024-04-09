; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116908 () Bool)

(assert start!116908)

(declare-fun b!1377022 () Bool)

(declare-fun res!919939 () Bool)

(declare-fun e!780048 () Bool)

(assert (=> b!1377022 (=> (not res!919939) (not e!780048))))

(declare-datatypes ((array!93495 0))(
  ( (array!93496 (arr!45146 (Array (_ BitVec 32) (_ BitVec 64))) (size!45697 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93495)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377022 (= res!919939 (validKeyInArray!0 (select (arr!45146 a!4032) i!1445)))))

(declare-fun bm!65930 () Bool)

(declare-fun call!65934 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93495 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65930 (= call!65934 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377023 () Bool)

(declare-fun e!780050 () Bool)

(assert (=> b!1377023 (= e!780048 e!780050)))

(declare-fun res!919937 () Bool)

(assert (=> b!1377023 (=> (not res!919937) (not e!780050))))

(declare-fun lt!605664 () (_ BitVec 32))

(declare-fun lt!605660 () (_ BitVec 32))

(assert (=> b!1377023 (= res!919937 (and (= lt!605664 lt!605660) (not (= to!206 (size!45697 a!4032)))))))

(assert (=> b!1377023 (= lt!605660 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605659 () array!93495)

(assert (=> b!1377023 (= lt!605664 (arrayCountValidKeys!0 lt!605659 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1377023 (= lt!605659 (array!93496 (store (arr!45146 a!4032) i!1445 k0!2947) (size!45697 a!4032)))))

(declare-fun res!919938 () Bool)

(assert (=> start!116908 (=> (not res!919938) (not e!780048))))

(assert (=> start!116908 (= res!919938 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45697 a!4032))))))

(assert (=> start!116908 e!780048))

(assert (=> start!116908 true))

(declare-fun array_inv!34091 (array!93495) Bool)

(assert (=> start!116908 (array_inv!34091 a!4032)))

(declare-fun b!1377024 () Bool)

(declare-datatypes ((Unit!45607 0))(
  ( (Unit!45608) )
))
(declare-fun e!780047 () Unit!45607)

(declare-fun lt!605665 () Unit!45607)

(assert (=> b!1377024 (= e!780047 lt!605665)))

(declare-fun lt!605658 () Unit!45607)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93495 (_ BitVec 32) (_ BitVec 32)) Unit!45607)

(assert (=> b!1377024 (= lt!605658 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377024 (= call!65934 lt!605660)))

(assert (=> b!1377024 (= lt!605665 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605659 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65933 () (_ BitVec 32))

(assert (=> b!1377024 (= call!65933 lt!605664)))

(declare-fun b!1377025 () Bool)

(declare-fun res!919940 () Bool)

(assert (=> b!1377025 (=> (not res!919940) (not e!780048))))

(assert (=> b!1377025 (= res!919940 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1377026 () Bool)

(declare-fun lt!605662 () Unit!45607)

(assert (=> b!1377026 (= e!780047 lt!605662)))

(declare-fun lt!605663 () Unit!45607)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93495 (_ BitVec 32) (_ BitVec 32)) Unit!45607)

(assert (=> b!1377026 (= lt!605663 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377026 (= call!65934 (bvadd #b00000000000000000000000000000001 lt!605660))))

(assert (=> b!1377026 (= lt!605662 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605659 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377026 (= call!65933 (bvadd #b00000000000000000000000000000001 lt!605664))))

(declare-fun b!1377027 () Bool)

(declare-fun res!919941 () Bool)

(assert (=> b!1377027 (=> (not res!919941) (not e!780048))))

(assert (=> b!1377027 (= res!919941 (and (bvslt (size!45697 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45697 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377028 () Bool)

(assert (=> b!1377028 (= e!780050 (or (bvslt (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) (size!45697 a!4032)) (bvsle (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605661 () Unit!45607)

(assert (=> b!1377028 (= lt!605661 e!780047)))

(declare-fun c!127985 () Bool)

(assert (=> b!1377028 (= c!127985 (validKeyInArray!0 (select (arr!45146 a!4032) to!206)))))

(declare-fun bm!65931 () Bool)

(assert (=> bm!65931 (= call!65933 (arrayCountValidKeys!0 lt!605659 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116908 res!919938) b!1377022))

(assert (= (and b!1377022 res!919939) b!1377025))

(assert (= (and b!1377025 res!919940) b!1377027))

(assert (= (and b!1377027 res!919941) b!1377023))

(assert (= (and b!1377023 res!919937) b!1377028))

(assert (= (and b!1377028 c!127985) b!1377026))

(assert (= (and b!1377028 (not c!127985)) b!1377024))

(assert (= (or b!1377026 b!1377024) bm!65930))

(assert (= (or b!1377026 b!1377024) bm!65931))

(declare-fun m!1261289 () Bool)

(assert (=> b!1377025 m!1261289))

(declare-fun m!1261291 () Bool)

(assert (=> b!1377028 m!1261291))

(assert (=> b!1377028 m!1261291))

(declare-fun m!1261293 () Bool)

(assert (=> b!1377028 m!1261293))

(declare-fun m!1261295 () Bool)

(assert (=> b!1377024 m!1261295))

(declare-fun m!1261297 () Bool)

(assert (=> b!1377024 m!1261297))

(declare-fun m!1261299 () Bool)

(assert (=> b!1377022 m!1261299))

(assert (=> b!1377022 m!1261299))

(declare-fun m!1261301 () Bool)

(assert (=> b!1377022 m!1261301))

(declare-fun m!1261303 () Bool)

(assert (=> b!1377026 m!1261303))

(declare-fun m!1261305 () Bool)

(assert (=> b!1377026 m!1261305))

(declare-fun m!1261307 () Bool)

(assert (=> bm!65930 m!1261307))

(declare-fun m!1261309 () Bool)

(assert (=> start!116908 m!1261309))

(declare-fun m!1261311 () Bool)

(assert (=> b!1377023 m!1261311))

(declare-fun m!1261313 () Bool)

(assert (=> b!1377023 m!1261313))

(declare-fun m!1261315 () Bool)

(assert (=> b!1377023 m!1261315))

(declare-fun m!1261317 () Bool)

(assert (=> bm!65931 m!1261317))

(check-sat (not b!1377026) (not b!1377024) (not b!1377028) (not start!116908) (not bm!65931) (not b!1377022) (not b!1377023) (not bm!65930) (not b!1377025))
(check-sat)
