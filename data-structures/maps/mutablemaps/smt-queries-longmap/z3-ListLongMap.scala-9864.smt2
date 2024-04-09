; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116914 () Bool)

(assert start!116914)

(declare-fun b!1377090 () Bool)

(declare-datatypes ((Unit!45613 0))(
  ( (Unit!45614) )
))
(declare-fun e!780088 () Unit!45613)

(declare-fun lt!605732 () Unit!45613)

(assert (=> b!1377090 (= e!780088 lt!605732)))

(declare-fun lt!605730 () Unit!45613)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93501 0))(
  ( (array!93502 (arr!45149 (Array (_ BitVec 32) (_ BitVec 64))) (size!45700 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93501)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93501 (_ BitVec 32) (_ BitVec 32)) Unit!45613)

(assert (=> b!1377090 (= lt!605730 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65952 () (_ BitVec 32))

(declare-fun lt!605733 () (_ BitVec 32))

(assert (=> b!1377090 (= call!65952 (bvadd #b00000000000000000000000000000001 lt!605733))))

(declare-fun lt!605731 () array!93501)

(assert (=> b!1377090 (= lt!605732 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605731 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65951 () (_ BitVec 32))

(declare-fun lt!605737 () (_ BitVec 32))

(assert (=> b!1377090 (= call!65951 (bvadd #b00000000000000000000000000000001 lt!605737))))

(declare-fun b!1377091 () Bool)

(declare-fun lt!605734 () Unit!45613)

(assert (=> b!1377091 (= e!780088 lt!605734)))

(declare-fun lt!605736 () Unit!45613)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93501 (_ BitVec 32) (_ BitVec 32)) Unit!45613)

(assert (=> b!1377091 (= lt!605736 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377091 (= call!65952 lt!605733)))

(assert (=> b!1377091 (= lt!605734 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605731 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377091 (= call!65951 lt!605737)))

(declare-fun bm!65948 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93501 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65948 (= call!65952 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377092 () Bool)

(declare-fun e!780091 () Bool)

(declare-fun e!780089 () Bool)

(assert (=> b!1377092 (= e!780091 e!780089)))

(declare-fun res!919991 () Bool)

(assert (=> b!1377092 (=> (not res!919991) (not e!780089))))

(assert (=> b!1377092 (= res!919991 (and (= lt!605737 lt!605733) (not (= to!206 (size!45700 a!4032)))))))

(assert (=> b!1377092 (= lt!605733 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377092 (= lt!605737 (arrayCountValidKeys!0 lt!605731 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1377092 (= lt!605731 (array!93502 (store (arr!45149 a!4032) i!1445 k0!2947) (size!45700 a!4032)))))

(declare-fun bm!65949 () Bool)

(assert (=> bm!65949 (= call!65951 (arrayCountValidKeys!0 lt!605731 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377093 () Bool)

(declare-fun res!919988 () Bool)

(assert (=> b!1377093 (=> (not res!919988) (not e!780091))))

(assert (=> b!1377093 (= res!919988 (and (bvslt (size!45700 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45700 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377094 () Bool)

(declare-fun res!919989 () Bool)

(assert (=> b!1377094 (=> (not res!919989) (not e!780091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377094 (= res!919989 (validKeyInArray!0 (select (arr!45149 a!4032) i!1445)))))

(declare-fun res!919992 () Bool)

(assert (=> start!116914 (=> (not res!919992) (not e!780091))))

(assert (=> start!116914 (= res!919992 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45700 a!4032))))))

(assert (=> start!116914 e!780091))

(assert (=> start!116914 true))

(declare-fun array_inv!34094 (array!93501) Bool)

(assert (=> start!116914 (array_inv!34094 a!4032)))

(declare-fun b!1377095 () Bool)

(declare-fun e!780090 () Bool)

(assert (=> b!1377095 (= e!780090 (not (= (arrayCountValidKeys!0 lt!605731 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))))

(declare-fun b!1377096 () Bool)

(assert (=> b!1377096 (= e!780089 e!780090)))

(declare-fun res!919987 () Bool)

(assert (=> b!1377096 (=> (not res!919987) (not e!780090))))

(assert (=> b!1377096 (= res!919987 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45700 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605735 () Unit!45613)

(assert (=> b!1377096 (= lt!605735 e!780088)))

(declare-fun c!127994 () Bool)

(assert (=> b!1377096 (= c!127994 (validKeyInArray!0 (select (arr!45149 a!4032) to!206)))))

(declare-fun b!1377097 () Bool)

(declare-fun res!919990 () Bool)

(assert (=> b!1377097 (=> (not res!919990) (not e!780091))))

(assert (=> b!1377097 (= res!919990 (not (validKeyInArray!0 k0!2947)))))

(assert (= (and start!116914 res!919992) b!1377094))

(assert (= (and b!1377094 res!919989) b!1377097))

(assert (= (and b!1377097 res!919990) b!1377093))

(assert (= (and b!1377093 res!919988) b!1377092))

(assert (= (and b!1377092 res!919991) b!1377096))

(assert (= (and b!1377096 c!127994) b!1377090))

(assert (= (and b!1377096 (not c!127994)) b!1377091))

(assert (= (or b!1377090 b!1377091) bm!65949))

(assert (= (or b!1377090 b!1377091) bm!65948))

(assert (= (and b!1377096 res!919987) b!1377095))

(declare-fun m!1261379 () Bool)

(assert (=> b!1377095 m!1261379))

(declare-fun m!1261381 () Bool)

(assert (=> b!1377095 m!1261381))

(declare-fun m!1261383 () Bool)

(assert (=> b!1377096 m!1261383))

(assert (=> b!1377096 m!1261383))

(declare-fun m!1261385 () Bool)

(assert (=> b!1377096 m!1261385))

(assert (=> bm!65948 m!1261381))

(declare-fun m!1261387 () Bool)

(assert (=> b!1377090 m!1261387))

(declare-fun m!1261389 () Bool)

(assert (=> b!1377090 m!1261389))

(declare-fun m!1261391 () Bool)

(assert (=> b!1377092 m!1261391))

(declare-fun m!1261393 () Bool)

(assert (=> b!1377092 m!1261393))

(declare-fun m!1261395 () Bool)

(assert (=> b!1377092 m!1261395))

(declare-fun m!1261397 () Bool)

(assert (=> b!1377097 m!1261397))

(declare-fun m!1261399 () Bool)

(assert (=> b!1377091 m!1261399))

(declare-fun m!1261401 () Bool)

(assert (=> b!1377091 m!1261401))

(declare-fun m!1261403 () Bool)

(assert (=> start!116914 m!1261403))

(declare-fun m!1261405 () Bool)

(assert (=> b!1377094 m!1261405))

(assert (=> b!1377094 m!1261405))

(declare-fun m!1261407 () Bool)

(assert (=> b!1377094 m!1261407))

(assert (=> bm!65949 m!1261379))

(check-sat (not b!1377096) (not b!1377090) (not start!116914) (not b!1377092) (not bm!65949) (not b!1377097) (not bm!65948) (not b!1377095) (not b!1377091) (not b!1377094))
(check-sat)
