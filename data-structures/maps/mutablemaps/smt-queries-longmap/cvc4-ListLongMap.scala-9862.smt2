; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116904 () Bool)

(assert start!116904)

(declare-fun b!1376980 () Bool)

(declare-fun res!919908 () Bool)

(declare-fun e!780026 () Bool)

(assert (=> b!1376980 (=> (not res!919908) (not e!780026))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93491 0))(
  ( (array!93492 (arr!45144 (Array (_ BitVec 32) (_ BitVec 64))) (size!45695 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93491)

(assert (=> b!1376980 (= res!919908 (and (bvslt (size!45695 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45695 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376981 () Bool)

(declare-fun e!780023 () Bool)

(assert (=> b!1376981 (= e!780026 e!780023)))

(declare-fun res!919907 () Bool)

(assert (=> b!1376981 (=> (not res!919907) (not e!780023))))

(declare-fun lt!605616 () (_ BitVec 32))

(declare-fun lt!605611 () (_ BitVec 32))

(assert (=> b!1376981 (= res!919907 (and (= lt!605611 lt!605616) (not (= to!206 (size!45695 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93491 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376981 (= lt!605616 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605612 () array!93491)

(assert (=> b!1376981 (= lt!605611 (arrayCountValidKeys!0 lt!605612 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376981 (= lt!605612 (array!93492 (store (arr!45144 a!4032) i!1445 k!2947) (size!45695 a!4032)))))

(declare-fun call!65921 () (_ BitVec 32))

(declare-fun bm!65918 () Bool)

(assert (=> bm!65918 (= call!65921 (arrayCountValidKeys!0 lt!605612 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376982 () Bool)

(declare-fun res!919911 () Bool)

(assert (=> b!1376982 (=> (not res!919911) (not e!780026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376982 (= res!919911 (not (validKeyInArray!0 k!2947)))))

(declare-fun call!65922 () (_ BitVec 32))

(declare-fun bm!65919 () Bool)

(assert (=> bm!65919 (= call!65922 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376983 () Bool)

(assert (=> b!1376983 (= e!780023 false)))

(declare-datatypes ((Unit!45603 0))(
  ( (Unit!45604) )
))
(declare-fun lt!605610 () Unit!45603)

(declare-fun e!780025 () Unit!45603)

(assert (=> b!1376983 (= lt!605610 e!780025)))

(declare-fun c!127979 () Bool)

(assert (=> b!1376983 (= c!127979 (validKeyInArray!0 (select (arr!45144 a!4032) to!206)))))

(declare-fun b!1376984 () Bool)

(declare-fun lt!605613 () Unit!45603)

(assert (=> b!1376984 (= e!780025 lt!605613)))

(declare-fun lt!605615 () Unit!45603)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93491 (_ BitVec 32) (_ BitVec 32)) Unit!45603)

(assert (=> b!1376984 (= lt!605615 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376984 (= call!65922 (bvadd #b00000000000000000000000000000001 lt!605616))))

(assert (=> b!1376984 (= lt!605613 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605612 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376984 (= call!65921 (bvadd #b00000000000000000000000000000001 lt!605611))))

(declare-fun b!1376985 () Bool)

(declare-fun res!919909 () Bool)

(assert (=> b!1376985 (=> (not res!919909) (not e!780026))))

(assert (=> b!1376985 (= res!919909 (validKeyInArray!0 (select (arr!45144 a!4032) i!1445)))))

(declare-fun res!919910 () Bool)

(assert (=> start!116904 (=> (not res!919910) (not e!780026))))

(assert (=> start!116904 (= res!919910 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45695 a!4032))))))

(assert (=> start!116904 e!780026))

(assert (=> start!116904 true))

(declare-fun array_inv!34089 (array!93491) Bool)

(assert (=> start!116904 (array_inv!34089 a!4032)))

(declare-fun b!1376986 () Bool)

(declare-fun lt!605614 () Unit!45603)

(assert (=> b!1376986 (= e!780025 lt!605614)))

(declare-fun lt!605617 () Unit!45603)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93491 (_ BitVec 32) (_ BitVec 32)) Unit!45603)

(assert (=> b!1376986 (= lt!605617 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376986 (= call!65922 lt!605616)))

(assert (=> b!1376986 (= lt!605614 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605612 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376986 (= call!65921 lt!605611)))

(assert (= (and start!116904 res!919910) b!1376985))

(assert (= (and b!1376985 res!919909) b!1376982))

(assert (= (and b!1376982 res!919911) b!1376980))

(assert (= (and b!1376980 res!919908) b!1376981))

(assert (= (and b!1376981 res!919907) b!1376983))

(assert (= (and b!1376983 c!127979) b!1376984))

(assert (= (and b!1376983 (not c!127979)) b!1376986))

(assert (= (or b!1376984 b!1376986) bm!65918))

(assert (= (or b!1376984 b!1376986) bm!65919))

(declare-fun m!1261229 () Bool)

(assert (=> bm!65919 m!1261229))

(declare-fun m!1261231 () Bool)

(assert (=> start!116904 m!1261231))

(declare-fun m!1261233 () Bool)

(assert (=> bm!65918 m!1261233))

(declare-fun m!1261235 () Bool)

(assert (=> b!1376984 m!1261235))

(declare-fun m!1261237 () Bool)

(assert (=> b!1376984 m!1261237))

(declare-fun m!1261239 () Bool)

(assert (=> b!1376982 m!1261239))

(declare-fun m!1261241 () Bool)

(assert (=> b!1376981 m!1261241))

(declare-fun m!1261243 () Bool)

(assert (=> b!1376981 m!1261243))

(declare-fun m!1261245 () Bool)

(assert (=> b!1376981 m!1261245))

(declare-fun m!1261247 () Bool)

(assert (=> b!1376983 m!1261247))

(assert (=> b!1376983 m!1261247))

(declare-fun m!1261249 () Bool)

(assert (=> b!1376983 m!1261249))

(declare-fun m!1261251 () Bool)

(assert (=> b!1376985 m!1261251))

(assert (=> b!1376985 m!1261251))

(declare-fun m!1261253 () Bool)

(assert (=> b!1376985 m!1261253))

(declare-fun m!1261255 () Bool)

(assert (=> b!1376986 m!1261255))

(declare-fun m!1261257 () Bool)

(assert (=> b!1376986 m!1261257))

(push 1)

(assert (not b!1376982))

(assert (not b!1376985))

(assert (not start!116904))

