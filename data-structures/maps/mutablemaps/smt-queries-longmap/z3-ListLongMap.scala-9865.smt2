; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116920 () Bool)

(assert start!116920)

(declare-fun b!1377167 () Bool)

(declare-fun e!780133 () Bool)

(declare-fun e!780136 () Bool)

(assert (=> b!1377167 (= e!780133 e!780136)))

(declare-fun res!920047 () Bool)

(assert (=> b!1377167 (=> (not res!920047) (not e!780136))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93507 0))(
  ( (array!93508 (arr!45152 (Array (_ BitVec 32) (_ BitVec 64))) (size!45703 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93507)

(assert (=> b!1377167 (= res!920047 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45703 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45619 0))(
  ( (Unit!45620) )
))
(declare-fun lt!605809 () Unit!45619)

(declare-fun e!780135 () Unit!45619)

(assert (=> b!1377167 (= lt!605809 e!780135)))

(declare-fun c!128003 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377167 (= c!128003 (validKeyInArray!0 (select (arr!45152 a!4032) to!206)))))

(declare-fun b!1377168 () Bool)

(declare-fun res!920046 () Bool)

(declare-fun e!780134 () Bool)

(assert (=> b!1377168 (=> (not res!920046) (not e!780134))))

(assert (=> b!1377168 (= res!920046 (validKeyInArray!0 (select (arr!45152 a!4032) i!1445)))))

(declare-fun res!920048 () Bool)

(assert (=> start!116920 (=> (not res!920048) (not e!780134))))

(assert (=> start!116920 (= res!920048 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45703 a!4032))))))

(assert (=> start!116920 e!780134))

(assert (=> start!116920 true))

(declare-fun array_inv!34097 (array!93507) Bool)

(assert (=> start!116920 (array_inv!34097 a!4032)))

(declare-fun b!1377169 () Bool)

(declare-fun lt!605802 () Unit!45619)

(assert (=> b!1377169 (= e!780135 lt!605802)))

(declare-fun lt!605803 () Unit!45619)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93507 (_ BitVec 32) (_ BitVec 32)) Unit!45619)

(assert (=> b!1377169 (= lt!605803 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65970 () (_ BitVec 32))

(declare-fun lt!605804 () (_ BitVec 32))

(assert (=> b!1377169 (= call!65970 lt!605804)))

(declare-fun lt!605805 () array!93507)

(assert (=> b!1377169 (= lt!605802 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605805 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65969 () (_ BitVec 32))

(declare-fun lt!605808 () (_ BitVec 32))

(assert (=> b!1377169 (= call!65969 lt!605808)))

(declare-fun b!1377170 () Bool)

(declare-fun res!920050 () Bool)

(assert (=> b!1377170 (=> (not res!920050) (not e!780134))))

(assert (=> b!1377170 (= res!920050 (and (bvslt (size!45703 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45703 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377171 () Bool)

(declare-fun lt!605806 () Unit!45619)

(assert (=> b!1377171 (= e!780135 lt!605806)))

(declare-fun lt!605807 () Unit!45619)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93507 (_ BitVec 32) (_ BitVec 32)) Unit!45619)

(assert (=> b!1377171 (= lt!605807 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377171 (= call!65970 (bvadd #b00000000000000000000000000000001 lt!605804))))

(assert (=> b!1377171 (= lt!605806 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605805 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377171 (= call!65969 (bvadd #b00000000000000000000000000000001 lt!605808))))

(declare-fun b!1377172 () Bool)

(assert (=> b!1377172 (= e!780136 (bvsge (bvsub (size!45703 a!4032) to!206) (bvsub (bvadd #b00000000000000000000000000000001 (size!45703 a!4032)) to!206)))))

(declare-fun b!1377173 () Bool)

(assert (=> b!1377173 (= e!780134 e!780133)))

(declare-fun res!920052 () Bool)

(assert (=> b!1377173 (=> (not res!920052) (not e!780133))))

(assert (=> b!1377173 (= res!920052 (and (= lt!605808 lt!605804) (not (= to!206 (size!45703 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93507 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377173 (= lt!605804 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377173 (= lt!605808 (arrayCountValidKeys!0 lt!605805 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1377173 (= lt!605805 (array!93508 (store (arr!45152 a!4032) i!1445 k0!2947) (size!45703 a!4032)))))

(declare-fun b!1377174 () Bool)

(declare-fun res!920049 () Bool)

(assert (=> b!1377174 (=> (not res!920049) (not e!780136))))

(assert (=> b!1377174 (= res!920049 (= (arrayCountValidKeys!0 lt!605805 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1377175 () Bool)

(declare-fun res!920051 () Bool)

(assert (=> b!1377175 (=> (not res!920051) (not e!780134))))

(assert (=> b!1377175 (= res!920051 (not (validKeyInArray!0 k0!2947)))))

(declare-fun bm!65966 () Bool)

(assert (=> bm!65966 (= call!65969 (arrayCountValidKeys!0 lt!605805 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65967 () Bool)

(assert (=> bm!65967 (= call!65970 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116920 res!920048) b!1377168))

(assert (= (and b!1377168 res!920046) b!1377175))

(assert (= (and b!1377175 res!920051) b!1377170))

(assert (= (and b!1377170 res!920050) b!1377173))

(assert (= (and b!1377173 res!920052) b!1377167))

(assert (= (and b!1377167 c!128003) b!1377171))

(assert (= (and b!1377167 (not c!128003)) b!1377169))

(assert (= (or b!1377171 b!1377169) bm!65967))

(assert (= (or b!1377171 b!1377169) bm!65966))

(assert (= (and b!1377167 res!920047) b!1377174))

(assert (= (and b!1377174 res!920049) b!1377172))

(declare-fun m!1261469 () Bool)

(assert (=> b!1377168 m!1261469))

(assert (=> b!1377168 m!1261469))

(declare-fun m!1261471 () Bool)

(assert (=> b!1377168 m!1261471))

(declare-fun m!1261473 () Bool)

(assert (=> bm!65966 m!1261473))

(assert (=> b!1377174 m!1261473))

(declare-fun m!1261475 () Bool)

(assert (=> b!1377174 m!1261475))

(declare-fun m!1261477 () Bool)

(assert (=> b!1377169 m!1261477))

(declare-fun m!1261479 () Bool)

(assert (=> b!1377169 m!1261479))

(declare-fun m!1261481 () Bool)

(assert (=> b!1377173 m!1261481))

(declare-fun m!1261483 () Bool)

(assert (=> b!1377173 m!1261483))

(declare-fun m!1261485 () Bool)

(assert (=> b!1377173 m!1261485))

(declare-fun m!1261487 () Bool)

(assert (=> start!116920 m!1261487))

(declare-fun m!1261489 () Bool)

(assert (=> b!1377171 m!1261489))

(declare-fun m!1261491 () Bool)

(assert (=> b!1377171 m!1261491))

(declare-fun m!1261493 () Bool)

(assert (=> b!1377175 m!1261493))

(assert (=> bm!65967 m!1261475))

(declare-fun m!1261495 () Bool)

(assert (=> b!1377167 m!1261495))

(assert (=> b!1377167 m!1261495))

(declare-fun m!1261497 () Bool)

(assert (=> b!1377167 m!1261497))

(check-sat (not bm!65967) (not b!1377167) (not b!1377169) (not start!116920) (not b!1377171) (not b!1377168) (not bm!65966) (not b!1377174) (not b!1377175) (not b!1377173))
(check-sat)
