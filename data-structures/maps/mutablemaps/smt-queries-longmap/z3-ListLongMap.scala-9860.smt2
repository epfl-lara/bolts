; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116890 () Bool)

(assert start!116890)

(declare-fun b!1376833 () Bool)

(declare-fun e!779941 () Bool)

(declare-fun e!779942 () Bool)

(assert (=> b!1376833 (= e!779941 e!779942)))

(declare-fun res!919806 () Bool)

(assert (=> b!1376833 (=> (not res!919806) (not e!779942))))

(declare-fun lt!605442 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93477 0))(
  ( (array!93478 (arr!45137 (Array (_ BitVec 32) (_ BitVec 64))) (size!45688 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93477)

(declare-fun lt!605445 () (_ BitVec 32))

(assert (=> b!1376833 (= res!919806 (and (= lt!605442 lt!605445) (not (= to!206 (size!45688 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93477 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376833 (= lt!605445 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605446 () array!93477)

(assert (=> b!1376833 (= lt!605442 (arrayCountValidKeys!0 lt!605446 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376833 (= lt!605446 (array!93478 (store (arr!45137 a!4032) i!1445 k0!2947) (size!45688 a!4032)))))

(declare-fun b!1376834 () Bool)

(declare-fun res!919804 () Bool)

(assert (=> b!1376834 (=> (not res!919804) (not e!779941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376834 (= res!919804 (not (validKeyInArray!0 k0!2947)))))

(declare-fun bm!65876 () Bool)

(declare-fun call!65879 () (_ BitVec 32))

(assert (=> bm!65876 (= call!65879 (arrayCountValidKeys!0 lt!605446 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun call!65880 () (_ BitVec 32))

(declare-fun bm!65877 () Bool)

(assert (=> bm!65877 (= call!65880 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376835 () Bool)

(declare-fun res!919802 () Bool)

(assert (=> b!1376835 (=> (not res!919802) (not e!779941))))

(assert (=> b!1376835 (= res!919802 (and (bvslt (size!45688 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45688 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376837 () Bool)

(declare-fun res!919803 () Bool)

(assert (=> b!1376837 (=> (not res!919803) (not e!779941))))

(assert (=> b!1376837 (= res!919803 (validKeyInArray!0 (select (arr!45137 a!4032) i!1445)))))

(declare-fun b!1376838 () Bool)

(assert (=> b!1376838 (= e!779942 false)))

(declare-datatypes ((Unit!45589 0))(
  ( (Unit!45590) )
))
(declare-fun lt!605447 () Unit!45589)

(declare-fun e!779939 () Unit!45589)

(assert (=> b!1376838 (= lt!605447 e!779939)))

(declare-fun c!127958 () Bool)

(assert (=> b!1376838 (= c!127958 (validKeyInArray!0 (select (arr!45137 a!4032) to!206)))))

(declare-fun b!1376839 () Bool)

(declare-fun lt!605443 () Unit!45589)

(assert (=> b!1376839 (= e!779939 lt!605443)))

(declare-fun lt!605449 () Unit!45589)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93477 (_ BitVec 32) (_ BitVec 32)) Unit!45589)

(assert (=> b!1376839 (= lt!605449 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376839 (= call!65880 lt!605445)))

(assert (=> b!1376839 (= lt!605443 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605446 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376839 (= call!65879 lt!605442)))

(declare-fun res!919805 () Bool)

(assert (=> start!116890 (=> (not res!919805) (not e!779941))))

(assert (=> start!116890 (= res!919805 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45688 a!4032))))))

(assert (=> start!116890 e!779941))

(assert (=> start!116890 true))

(declare-fun array_inv!34082 (array!93477) Bool)

(assert (=> start!116890 (array_inv!34082 a!4032)))

(declare-fun b!1376836 () Bool)

(declare-fun lt!605448 () Unit!45589)

(assert (=> b!1376836 (= e!779939 lt!605448)))

(declare-fun lt!605444 () Unit!45589)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93477 (_ BitVec 32) (_ BitVec 32)) Unit!45589)

(assert (=> b!1376836 (= lt!605444 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376836 (= call!65880 (bvadd #b00000000000000000000000000000001 lt!605445))))

(assert (=> b!1376836 (= lt!605448 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605446 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376836 (= call!65879 (bvadd #b00000000000000000000000000000001 lt!605442))))

(assert (= (and start!116890 res!919805) b!1376837))

(assert (= (and b!1376837 res!919803) b!1376834))

(assert (= (and b!1376834 res!919804) b!1376835))

(assert (= (and b!1376835 res!919802) b!1376833))

(assert (= (and b!1376833 res!919806) b!1376838))

(assert (= (and b!1376838 c!127958) b!1376836))

(assert (= (and b!1376838 (not c!127958)) b!1376839))

(assert (= (or b!1376836 b!1376839) bm!65876))

(assert (= (or b!1376836 b!1376839) bm!65877))

(declare-fun m!1261019 () Bool)

(assert (=> b!1376836 m!1261019))

(declare-fun m!1261021 () Bool)

(assert (=> b!1376836 m!1261021))

(declare-fun m!1261023 () Bool)

(assert (=> b!1376834 m!1261023))

(declare-fun m!1261025 () Bool)

(assert (=> b!1376837 m!1261025))

(assert (=> b!1376837 m!1261025))

(declare-fun m!1261027 () Bool)

(assert (=> b!1376837 m!1261027))

(declare-fun m!1261029 () Bool)

(assert (=> start!116890 m!1261029))

(declare-fun m!1261031 () Bool)

(assert (=> b!1376839 m!1261031))

(declare-fun m!1261033 () Bool)

(assert (=> b!1376839 m!1261033))

(declare-fun m!1261035 () Bool)

(assert (=> bm!65877 m!1261035))

(declare-fun m!1261037 () Bool)

(assert (=> bm!65876 m!1261037))

(declare-fun m!1261039 () Bool)

(assert (=> b!1376833 m!1261039))

(declare-fun m!1261041 () Bool)

(assert (=> b!1376833 m!1261041))

(declare-fun m!1261043 () Bool)

(assert (=> b!1376833 m!1261043))

(declare-fun m!1261045 () Bool)

(assert (=> b!1376838 m!1261045))

(assert (=> b!1376838 m!1261045))

(declare-fun m!1261047 () Bool)

(assert (=> b!1376838 m!1261047))

(check-sat (not b!1376834) (not b!1376839) (not b!1376833) (not b!1376836) (not b!1376837) (not b!1376838) (not bm!65876) (not start!116890) (not bm!65877))
(check-sat)
