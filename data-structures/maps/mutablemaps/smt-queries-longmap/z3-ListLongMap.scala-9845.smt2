; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116800 () Bool)

(assert start!116800)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93387 0))(
  ( (array!93388 (arr!45092 (Array (_ BitVec 32) (_ BitVec 64))) (size!45643 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93387)

(declare-fun call!65825 () (_ BitVec 32))

(declare-fun bm!65822 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93387 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65822 (= call!65825 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376006 () Bool)

(declare-fun e!779548 () Bool)

(declare-fun e!779552 () Bool)

(assert (=> b!1376006 (= e!779548 e!779552)))

(declare-fun res!919033 () Bool)

(assert (=> b!1376006 (=> (not res!919033) (not e!779552))))

(declare-fun lt!605075 () (_ BitVec 32))

(declare-fun lt!605070 () (_ BitVec 32))

(assert (=> b!1376006 (= res!919033 (and (= lt!605070 lt!605075) (not (= to!206 (size!45643 a!4032)))))))

(assert (=> b!1376006 (= lt!605075 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605072 () array!93387)

(assert (=> b!1376006 (= lt!605070 (arrayCountValidKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376006 (= lt!605072 (array!93388 (store (arr!45092 a!4032) i!1445 k0!2947) (size!45643 a!4032)))))

(declare-fun b!1376007 () Bool)

(declare-fun e!779549 () Bool)

(assert (=> b!1376007 (= e!779552 e!779549)))

(declare-fun res!919035 () Bool)

(assert (=> b!1376007 (=> (not res!919035) (not e!779549))))

(assert (=> b!1376007 (= res!919035 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45643 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45547 0))(
  ( (Unit!45548) )
))
(declare-fun lt!605077 () Unit!45547)

(declare-fun e!779551 () Unit!45547)

(assert (=> b!1376007 (= lt!605077 e!779551)))

(declare-fun c!127931 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376007 (= c!127931 (validKeyInArray!0 (select (arr!45092 a!4032) to!206)))))

(declare-fun b!1376008 () Bool)

(declare-fun res!919034 () Bool)

(assert (=> b!1376008 (=> (not res!919034) (not e!779548))))

(assert (=> b!1376008 (= res!919034 (and (bvslt (size!45643 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45643 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376009 () Bool)

(declare-fun res!919029 () Bool)

(assert (=> b!1376009 (=> (not res!919029) (not e!779548))))

(assert (=> b!1376009 (= res!919029 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376010 () Bool)

(declare-fun lt!605071 () Unit!45547)

(assert (=> b!1376010 (= e!779551 lt!605071)))

(declare-fun lt!605073 () Unit!45547)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93387 (_ BitVec 32) (_ BitVec 32)) Unit!45547)

(assert (=> b!1376010 (= lt!605073 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376010 (= call!65825 lt!605075)))

(assert (=> b!1376010 (= lt!605071 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65826 () (_ BitVec 32))

(assert (=> b!1376010 (= call!65826 lt!605070)))

(declare-fun bm!65823 () Bool)

(assert (=> bm!65823 (= call!65826 (arrayCountValidKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!919031 () Bool)

(assert (=> start!116800 (=> (not res!919031) (not e!779548))))

(assert (=> start!116800 (= res!919031 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45643 a!4032))))))

(assert (=> start!116800 e!779548))

(assert (=> start!116800 true))

(declare-fun array_inv!34037 (array!93387) Bool)

(assert (=> start!116800 (array_inv!34037 a!4032)))

(declare-fun b!1376011 () Bool)

(declare-fun res!919030 () Bool)

(assert (=> b!1376011 (=> (not res!919030) (not e!779549))))

(assert (=> b!1376011 (= res!919030 (= (arrayCountValidKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1376012 () Bool)

(declare-fun res!919032 () Bool)

(assert (=> b!1376012 (=> (not res!919032) (not e!779548))))

(assert (=> b!1376012 (= res!919032 (validKeyInArray!0 (select (arr!45092 a!4032) i!1445)))))

(declare-fun b!1376013 () Bool)

(declare-fun lt!605076 () Unit!45547)

(assert (=> b!1376013 (= e!779551 lt!605076)))

(declare-fun lt!605069 () Unit!45547)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93387 (_ BitVec 32) (_ BitVec 32)) Unit!45547)

(assert (=> b!1376013 (= lt!605069 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376013 (= call!65825 (bvadd #b00000000000000000000000000000001 lt!605075))))

(assert (=> b!1376013 (= lt!605076 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376013 (= call!65826 (bvadd #b00000000000000000000000000000001 lt!605070))))

(declare-fun b!1376014 () Bool)

(assert (=> b!1376014 (= e!779549 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1376014 (= (arrayCountValidKeys!0 lt!605072 (bvadd #b00000000000000000000000000000001 i!1445) (size!45643 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45643 a!4032)))))

(declare-fun lt!605074 () Unit!45547)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45547)

(assert (=> b!1376014 (= lt!605074 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116800 res!919031) b!1376012))

(assert (= (and b!1376012 res!919032) b!1376009))

(assert (= (and b!1376009 res!919029) b!1376008))

(assert (= (and b!1376008 res!919034) b!1376006))

(assert (= (and b!1376006 res!919033) b!1376007))

(assert (= (and b!1376007 c!127931) b!1376013))

(assert (= (and b!1376007 (not c!127931)) b!1376010))

(assert (= (or b!1376013 b!1376010) bm!65823))

(assert (= (or b!1376013 b!1376010) bm!65822))

(assert (= (and b!1376007 res!919035) b!1376011))

(assert (= (and b!1376011 res!919030) b!1376014))

(declare-fun m!1260071 () Bool)

(assert (=> b!1376014 m!1260071))

(declare-fun m!1260073 () Bool)

(assert (=> b!1376014 m!1260073))

(declare-fun m!1260075 () Bool)

(assert (=> b!1376014 m!1260075))

(declare-fun m!1260077 () Bool)

(assert (=> start!116800 m!1260077))

(declare-fun m!1260079 () Bool)

(assert (=> b!1376011 m!1260079))

(declare-fun m!1260081 () Bool)

(assert (=> b!1376011 m!1260081))

(declare-fun m!1260083 () Bool)

(assert (=> b!1376009 m!1260083))

(declare-fun m!1260085 () Bool)

(assert (=> b!1376007 m!1260085))

(assert (=> b!1376007 m!1260085))

(declare-fun m!1260087 () Bool)

(assert (=> b!1376007 m!1260087))

(declare-fun m!1260089 () Bool)

(assert (=> b!1376006 m!1260089))

(declare-fun m!1260091 () Bool)

(assert (=> b!1376006 m!1260091))

(declare-fun m!1260093 () Bool)

(assert (=> b!1376006 m!1260093))

(declare-fun m!1260095 () Bool)

(assert (=> b!1376010 m!1260095))

(declare-fun m!1260097 () Bool)

(assert (=> b!1376010 m!1260097))

(declare-fun m!1260099 () Bool)

(assert (=> b!1376013 m!1260099))

(declare-fun m!1260101 () Bool)

(assert (=> b!1376013 m!1260101))

(assert (=> bm!65823 m!1260079))

(declare-fun m!1260103 () Bool)

(assert (=> b!1376012 m!1260103))

(assert (=> b!1376012 m!1260103))

(declare-fun m!1260105 () Bool)

(assert (=> b!1376012 m!1260105))

(assert (=> bm!65822 m!1260081))

(check-sat (not b!1376006) (not b!1376010) (not b!1376013) (not b!1376009) (not start!116800) (not b!1376007) (not bm!65823) (not bm!65822) (not b!1376011) (not b!1376014) (not b!1376012))
(check-sat)
