; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116796 () Bool)

(assert start!116796)

(declare-fun b!1375952 () Bool)

(declare-datatypes ((Unit!45543 0))(
  ( (Unit!45544) )
))
(declare-fun e!779520 () Unit!45543)

(declare-fun lt!605021 () Unit!45543)

(assert (=> b!1375952 (= e!779520 lt!605021)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93383 0))(
  ( (array!93384 (arr!45090 (Array (_ BitVec 32) (_ BitVec 64))) (size!45641 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93383)

(declare-fun lt!605016 () Unit!45543)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93383 (_ BitVec 32) (_ BitVec 32)) Unit!45543)

(assert (=> b!1375952 (= lt!605016 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65813 () (_ BitVec 32))

(declare-fun lt!605023 () (_ BitVec 32))

(assert (=> b!1375952 (= call!65813 (bvadd #b00000000000000000000000000000001 lt!605023))))

(declare-fun lt!605015 () array!93383)

(assert (=> b!1375952 (= lt!605021 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65814 () (_ BitVec 32))

(declare-fun lt!605019 () (_ BitVec 32))

(assert (=> b!1375952 (= call!65814 (bvadd #b00000000000000000000000000000001 lt!605019))))

(declare-fun b!1375953 () Bool)

(declare-fun e!779521 () Bool)

(declare-fun e!779518 () Bool)

(assert (=> b!1375953 (= e!779521 e!779518)))

(declare-fun res!918992 () Bool)

(assert (=> b!1375953 (=> (not res!918992) (not e!779518))))

(assert (=> b!1375953 (= res!918992 (and (= lt!605019 lt!605023) (not (= to!206 (size!45641 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93383 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375953 (= lt!605023 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375953 (= lt!605019 (arrayCountValidKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375953 (= lt!605015 (array!93384 (store (arr!45090 a!4032) i!1445 k!2947) (size!45641 a!4032)))))

(declare-fun bm!65810 () Bool)

(assert (=> bm!65810 (= call!65814 (arrayCountValidKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375954 () Bool)

(declare-fun res!918987 () Bool)

(assert (=> b!1375954 (=> (not res!918987) (not e!779521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375954 (= res!918987 (validKeyInArray!0 (select (arr!45090 a!4032) i!1445)))))

(declare-fun b!1375955 () Bool)

(declare-fun res!918991 () Bool)

(declare-fun e!779519 () Bool)

(assert (=> b!1375955 (=> (not res!918991) (not e!779519))))

(assert (=> b!1375955 (= res!918991 (= (arrayCountValidKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1375956 () Bool)

(assert (=> b!1375956 (= e!779519 (not true))))

(assert (=> b!1375956 (= (arrayCountValidKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) (size!45641 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45641 a!4032)))))

(declare-fun lt!605022 () Unit!45543)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93383 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45543)

(assert (=> b!1375956 (= lt!605022 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918989 () Bool)

(assert (=> start!116796 (=> (not res!918989) (not e!779521))))

(assert (=> start!116796 (= res!918989 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45641 a!4032))))))

(assert (=> start!116796 e!779521))

(assert (=> start!116796 true))

(declare-fun array_inv!34035 (array!93383) Bool)

(assert (=> start!116796 (array_inv!34035 a!4032)))

(declare-fun b!1375957 () Bool)

(declare-fun res!918988 () Bool)

(assert (=> b!1375957 (=> (not res!918988) (not e!779521))))

(assert (=> b!1375957 (= res!918988 (and (bvslt (size!45641 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45641 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375958 () Bool)

(declare-fun res!918990 () Bool)

(assert (=> b!1375958 (=> (not res!918990) (not e!779521))))

(assert (=> b!1375958 (= res!918990 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65811 () Bool)

(assert (=> bm!65811 (= call!65813 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375959 () Bool)

(declare-fun lt!605018 () Unit!45543)

(assert (=> b!1375959 (= e!779520 lt!605018)))

(declare-fun lt!605017 () Unit!45543)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93383 (_ BitVec 32) (_ BitVec 32)) Unit!45543)

(assert (=> b!1375959 (= lt!605017 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375959 (= call!65813 lt!605023)))

(assert (=> b!1375959 (= lt!605018 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605015 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375959 (= call!65814 lt!605019)))

(declare-fun b!1375960 () Bool)

(assert (=> b!1375960 (= e!779518 e!779519)))

(declare-fun res!918993 () Bool)

(assert (=> b!1375960 (=> (not res!918993) (not e!779519))))

(assert (=> b!1375960 (= res!918993 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45641 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605020 () Unit!45543)

(assert (=> b!1375960 (= lt!605020 e!779520)))

(declare-fun c!127925 () Bool)

(assert (=> b!1375960 (= c!127925 (validKeyInArray!0 (select (arr!45090 a!4032) to!206)))))

(assert (= (and start!116796 res!918989) b!1375954))

(assert (= (and b!1375954 res!918987) b!1375958))

(assert (= (and b!1375958 res!918990) b!1375957))

(assert (= (and b!1375957 res!918988) b!1375953))

(assert (= (and b!1375953 res!918992) b!1375960))

(assert (= (and b!1375960 c!127925) b!1375952))

(assert (= (and b!1375960 (not c!127925)) b!1375959))

(assert (= (or b!1375952 b!1375959) bm!65810))

(assert (= (or b!1375952 b!1375959) bm!65811))

(assert (= (and b!1375960 res!918993) b!1375955))

(assert (= (and b!1375955 res!918991) b!1375956))

(declare-fun m!1259999 () Bool)

(assert (=> bm!65810 m!1259999))

(declare-fun m!1260001 () Bool)

(assert (=> b!1375960 m!1260001))

(assert (=> b!1375960 m!1260001))

(declare-fun m!1260003 () Bool)

(assert (=> b!1375960 m!1260003))

(declare-fun m!1260005 () Bool)

(assert (=> b!1375952 m!1260005))

(declare-fun m!1260007 () Bool)

(assert (=> b!1375952 m!1260007))

(declare-fun m!1260009 () Bool)

(assert (=> bm!65811 m!1260009))

(declare-fun m!1260011 () Bool)

(assert (=> b!1375956 m!1260011))

(declare-fun m!1260013 () Bool)

(assert (=> b!1375956 m!1260013))

(declare-fun m!1260015 () Bool)

(assert (=> b!1375956 m!1260015))

(declare-fun m!1260017 () Bool)

(assert (=> b!1375959 m!1260017))

(declare-fun m!1260019 () Bool)

(assert (=> b!1375959 m!1260019))

(declare-fun m!1260021 () Bool)

(assert (=> b!1375958 m!1260021))

(declare-fun m!1260023 () Bool)

(assert (=> start!116796 m!1260023))

(declare-fun m!1260025 () Bool)

(assert (=> b!1375953 m!1260025))

(declare-fun m!1260027 () Bool)

(assert (=> b!1375953 m!1260027))

(declare-fun m!1260029 () Bool)

(assert (=> b!1375953 m!1260029))

(assert (=> b!1375955 m!1259999))

(assert (=> b!1375955 m!1260009))

(declare-fun m!1260031 () Bool)

(assert (=> b!1375954 m!1260031))

(assert (=> b!1375954 m!1260031))

(declare-fun m!1260033 () Bool)

(assert (=> b!1375954 m!1260033))

(push 1)

(assert (not b!1375952))

(assert (not b!1375959))

