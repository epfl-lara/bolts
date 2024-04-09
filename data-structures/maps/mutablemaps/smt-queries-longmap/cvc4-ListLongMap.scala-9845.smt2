; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116802 () Bool)

(assert start!116802)

(declare-fun b!1376033 () Bool)

(declare-fun res!919053 () Bool)

(declare-fun e!779567 () Bool)

(assert (=> b!1376033 (=> (not res!919053) (not e!779567))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93389 0))(
  ( (array!93390 (arr!45093 (Array (_ BitVec 32) (_ BitVec 64))) (size!45644 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93389)

(declare-fun lt!605096 () array!93389)

(declare-fun arrayCountValidKeys!0 (array!93389 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376033 (= res!919053 (= (arrayCountValidKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun bm!65828 () Bool)

(declare-fun call!65831 () (_ BitVec 32))

(assert (=> bm!65828 (= call!65831 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun call!65832 () (_ BitVec 32))

(declare-fun bm!65829 () Bool)

(assert (=> bm!65829 (= call!65832 (arrayCountValidKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376034 () Bool)

(declare-fun res!919050 () Bool)

(declare-fun e!779566 () Bool)

(assert (=> b!1376034 (=> (not res!919050) (not e!779566))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376034 (= res!919050 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376035 () Bool)

(declare-datatypes ((Unit!45549 0))(
  ( (Unit!45550) )
))
(declare-fun e!779564 () Unit!45549)

(declare-fun lt!605100 () Unit!45549)

(assert (=> b!1376035 (= e!779564 lt!605100)))

(declare-fun lt!605097 () Unit!45549)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93389 (_ BitVec 32) (_ BitVec 32)) Unit!45549)

(assert (=> b!1376035 (= lt!605097 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605101 () (_ BitVec 32))

(assert (=> b!1376035 (= call!65831 lt!605101)))

(assert (=> b!1376035 (= lt!605100 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605099 () (_ BitVec 32))

(assert (=> b!1376035 (= call!65832 lt!605099)))

(declare-fun res!919054 () Bool)

(assert (=> start!116802 (=> (not res!919054) (not e!779566))))

(assert (=> start!116802 (= res!919054 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45644 a!4032))))))

(assert (=> start!116802 e!779566))

(assert (=> start!116802 true))

(declare-fun array_inv!34038 (array!93389) Bool)

(assert (=> start!116802 (array_inv!34038 a!4032)))

(declare-fun b!1376036 () Bool)

(declare-fun e!779565 () Bool)

(assert (=> b!1376036 (= e!779566 e!779565)))

(declare-fun res!919055 () Bool)

(assert (=> b!1376036 (=> (not res!919055) (not e!779565))))

(assert (=> b!1376036 (= res!919055 (and (= lt!605099 lt!605101) (not (= to!206 (size!45644 a!4032)))))))

(assert (=> b!1376036 (= lt!605101 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376036 (= lt!605099 (arrayCountValidKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376036 (= lt!605096 (array!93390 (store (arr!45093 a!4032) i!1445 k!2947) (size!45644 a!4032)))))

(declare-fun b!1376037 () Bool)

(declare-fun res!919052 () Bool)

(assert (=> b!1376037 (=> (not res!919052) (not e!779566))))

(assert (=> b!1376037 (= res!919052 (and (bvslt (size!45644 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45644 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376038 () Bool)

(declare-fun res!919051 () Bool)

(assert (=> b!1376038 (=> (not res!919051) (not e!779566))))

(assert (=> b!1376038 (= res!919051 (validKeyInArray!0 (select (arr!45093 a!4032) i!1445)))))

(declare-fun b!1376039 () Bool)

(assert (=> b!1376039 (= e!779565 e!779567)))

(declare-fun res!919056 () Bool)

(assert (=> b!1376039 (=> (not res!919056) (not e!779567))))

(assert (=> b!1376039 (= res!919056 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45644 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605103 () Unit!45549)

(assert (=> b!1376039 (= lt!605103 e!779564)))

(declare-fun c!127934 () Bool)

(assert (=> b!1376039 (= c!127934 (validKeyInArray!0 (select (arr!45093 a!4032) to!206)))))

(declare-fun b!1376040 () Bool)

(assert (=> b!1376040 (= e!779567 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1376040 (= (arrayCountValidKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) (size!45644 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45644 a!4032)))))

(declare-fun lt!605102 () Unit!45549)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45549)

(assert (=> b!1376040 (= lt!605102 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376041 () Bool)

(declare-fun lt!605104 () Unit!45549)

(assert (=> b!1376041 (= e!779564 lt!605104)))

(declare-fun lt!605098 () Unit!45549)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93389 (_ BitVec 32) (_ BitVec 32)) Unit!45549)

(assert (=> b!1376041 (= lt!605098 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376041 (= call!65831 (bvadd #b00000000000000000000000000000001 lt!605101))))

(assert (=> b!1376041 (= lt!605104 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605096 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376041 (= call!65832 (bvadd #b00000000000000000000000000000001 lt!605099))))

(assert (= (and start!116802 res!919054) b!1376038))

(assert (= (and b!1376038 res!919051) b!1376034))

(assert (= (and b!1376034 res!919050) b!1376037))

(assert (= (and b!1376037 res!919052) b!1376036))

(assert (= (and b!1376036 res!919055) b!1376039))

(assert (= (and b!1376039 c!127934) b!1376041))

(assert (= (and b!1376039 (not c!127934)) b!1376035))

(assert (= (or b!1376041 b!1376035) bm!65828))

(assert (= (or b!1376041 b!1376035) bm!65829))

(assert (= (and b!1376039 res!919056) b!1376033))

(assert (= (and b!1376033 res!919053) b!1376040))

(declare-fun m!1260107 () Bool)

(assert (=> b!1376033 m!1260107))

(declare-fun m!1260109 () Bool)

(assert (=> b!1376033 m!1260109))

(declare-fun m!1260111 () Bool)

(assert (=> b!1376040 m!1260111))

(declare-fun m!1260113 () Bool)

(assert (=> b!1376040 m!1260113))

(declare-fun m!1260115 () Bool)

(assert (=> b!1376040 m!1260115))

(assert (=> bm!65828 m!1260109))

(assert (=> bm!65829 m!1260107))

(declare-fun m!1260117 () Bool)

(assert (=> b!1376034 m!1260117))

(declare-fun m!1260119 () Bool)

(assert (=> b!1376035 m!1260119))

(declare-fun m!1260121 () Bool)

(assert (=> b!1376035 m!1260121))

(declare-fun m!1260123 () Bool)

(assert (=> b!1376039 m!1260123))

(assert (=> b!1376039 m!1260123))

(declare-fun m!1260125 () Bool)

(assert (=> b!1376039 m!1260125))

(declare-fun m!1260127 () Bool)

(assert (=> b!1376038 m!1260127))

(assert (=> b!1376038 m!1260127))

(declare-fun m!1260129 () Bool)

(assert (=> b!1376038 m!1260129))

(declare-fun m!1260131 () Bool)

(assert (=> start!116802 m!1260131))

(declare-fun m!1260133 () Bool)

(assert (=> b!1376041 m!1260133))

(declare-fun m!1260135 () Bool)

(assert (=> b!1376041 m!1260135))

(declare-fun m!1260137 () Bool)

(assert (=> b!1376036 m!1260137))

(declare-fun m!1260139 () Bool)

(assert (=> b!1376036 m!1260139))

(declare-fun m!1260141 () Bool)

(assert (=> b!1376036 m!1260141))

(push 1)

(assert (not b!1376035))

(assert (not start!116802))

