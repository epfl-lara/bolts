; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116794 () Bool)

(assert start!116794)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93381 0))(
  ( (array!93382 (arr!45089 (Array (_ BitVec 32) (_ BitVec 64))) (size!45640 (_ BitVec 32))) )
))
(declare-fun lt!604994 () array!93381)

(declare-fun call!65807 () (_ BitVec 32))

(declare-fun bm!65804 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93381 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65804 (= call!65807 (arrayCountValidKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun call!65808 () (_ BitVec 32))

(declare-fun bm!65805 () Bool)

(declare-fun a!4032 () array!93381)

(assert (=> bm!65805 (= call!65808 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375925 () Bool)

(declare-fun res!918968 () Bool)

(declare-fun e!779507 () Bool)

(assert (=> b!1375925 (=> (not res!918968) (not e!779507))))

(assert (=> b!1375925 (= res!918968 (and (bvslt (size!45640 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45640 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375926 () Bool)

(declare-datatypes ((Unit!45541 0))(
  ( (Unit!45542) )
))
(declare-fun e!779505 () Unit!45541)

(declare-fun lt!604989 () Unit!45541)

(assert (=> b!1375926 (= e!779505 lt!604989)))

(declare-fun lt!604993 () Unit!45541)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93381 (_ BitVec 32) (_ BitVec 32)) Unit!45541)

(assert (=> b!1375926 (= lt!604993 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604991 () (_ BitVec 32))

(assert (=> b!1375926 (= call!65808 (bvadd #b00000000000000000000000000000001 lt!604991))))

(assert (=> b!1375926 (= lt!604989 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604996 () (_ BitVec 32))

(assert (=> b!1375926 (= call!65807 (bvadd #b00000000000000000000000000000001 lt!604996))))

(declare-fun b!1375927 () Bool)

(declare-fun e!779503 () Bool)

(assert (=> b!1375927 (= e!779503 (not true))))

(assert (=> b!1375927 (= (arrayCountValidKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) (size!45640 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45640 a!4032)))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lt!604992 () Unit!45541)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45541)

(assert (=> b!1375927 (= lt!604992 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375928 () Bool)

(declare-fun e!779506 () Bool)

(assert (=> b!1375928 (= e!779507 e!779506)))

(declare-fun res!918966 () Bool)

(assert (=> b!1375928 (=> (not res!918966) (not e!779506))))

(assert (=> b!1375928 (= res!918966 (and (= lt!604996 lt!604991) (not (= to!206 (size!45640 a!4032)))))))

(assert (=> b!1375928 (= lt!604991 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375928 (= lt!604996 (arrayCountValidKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375928 (= lt!604994 (array!93382 (store (arr!45089 a!4032) i!1445 k0!2947) (size!45640 a!4032)))))

(declare-fun res!918969 () Bool)

(assert (=> start!116794 (=> (not res!918969) (not e!779507))))

(assert (=> start!116794 (= res!918969 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45640 a!4032))))))

(assert (=> start!116794 e!779507))

(assert (=> start!116794 true))

(declare-fun array_inv!34034 (array!93381) Bool)

(assert (=> start!116794 (array_inv!34034 a!4032)))

(declare-fun b!1375929 () Bool)

(declare-fun res!918967 () Bool)

(assert (=> b!1375929 (=> (not res!918967) (not e!779503))))

(assert (=> b!1375929 (= res!918967 (= (arrayCountValidKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1375930 () Bool)

(declare-fun lt!604990 () Unit!45541)

(assert (=> b!1375930 (= e!779505 lt!604990)))

(declare-fun lt!604995 () Unit!45541)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93381 (_ BitVec 32) (_ BitVec 32)) Unit!45541)

(assert (=> b!1375930 (= lt!604995 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375930 (= call!65808 lt!604991)))

(assert (=> b!1375930 (= lt!604990 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604994 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375930 (= call!65807 lt!604996)))

(declare-fun b!1375931 () Bool)

(assert (=> b!1375931 (= e!779506 e!779503)))

(declare-fun res!918970 () Bool)

(assert (=> b!1375931 (=> (not res!918970) (not e!779503))))

(assert (=> b!1375931 (= res!918970 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45640 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604988 () Unit!45541)

(assert (=> b!1375931 (= lt!604988 e!779505)))

(declare-fun c!127922 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375931 (= c!127922 (validKeyInArray!0 (select (arr!45089 a!4032) to!206)))))

(declare-fun b!1375932 () Bool)

(declare-fun res!918972 () Bool)

(assert (=> b!1375932 (=> (not res!918972) (not e!779507))))

(assert (=> b!1375932 (= res!918972 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375933 () Bool)

(declare-fun res!918971 () Bool)

(assert (=> b!1375933 (=> (not res!918971) (not e!779507))))

(assert (=> b!1375933 (= res!918971 (validKeyInArray!0 (select (arr!45089 a!4032) i!1445)))))

(assert (= (and start!116794 res!918969) b!1375933))

(assert (= (and b!1375933 res!918971) b!1375932))

(assert (= (and b!1375932 res!918972) b!1375925))

(assert (= (and b!1375925 res!918968) b!1375928))

(assert (= (and b!1375928 res!918966) b!1375931))

(assert (= (and b!1375931 c!127922) b!1375926))

(assert (= (and b!1375931 (not c!127922)) b!1375930))

(assert (= (or b!1375926 b!1375930) bm!65804))

(assert (= (or b!1375926 b!1375930) bm!65805))

(assert (= (and b!1375931 res!918970) b!1375929))

(assert (= (and b!1375929 res!918967) b!1375927))

(declare-fun m!1259963 () Bool)

(assert (=> start!116794 m!1259963))

(declare-fun m!1259965 () Bool)

(assert (=> b!1375930 m!1259965))

(declare-fun m!1259967 () Bool)

(assert (=> b!1375930 m!1259967))

(declare-fun m!1259969 () Bool)

(assert (=> b!1375929 m!1259969))

(declare-fun m!1259971 () Bool)

(assert (=> b!1375929 m!1259971))

(declare-fun m!1259973 () Bool)

(assert (=> b!1375931 m!1259973))

(assert (=> b!1375931 m!1259973))

(declare-fun m!1259975 () Bool)

(assert (=> b!1375931 m!1259975))

(declare-fun m!1259977 () Bool)

(assert (=> b!1375927 m!1259977))

(declare-fun m!1259979 () Bool)

(assert (=> b!1375927 m!1259979))

(declare-fun m!1259981 () Bool)

(assert (=> b!1375927 m!1259981))

(declare-fun m!1259983 () Bool)

(assert (=> b!1375928 m!1259983))

(declare-fun m!1259985 () Bool)

(assert (=> b!1375928 m!1259985))

(declare-fun m!1259987 () Bool)

(assert (=> b!1375928 m!1259987))

(declare-fun m!1259989 () Bool)

(assert (=> b!1375933 m!1259989))

(assert (=> b!1375933 m!1259989))

(declare-fun m!1259991 () Bool)

(assert (=> b!1375933 m!1259991))

(declare-fun m!1259993 () Bool)

(assert (=> b!1375926 m!1259993))

(declare-fun m!1259995 () Bool)

(assert (=> b!1375926 m!1259995))

(assert (=> bm!65804 m!1259969))

(assert (=> bm!65805 m!1259971))

(declare-fun m!1259997 () Bool)

(assert (=> b!1375932 m!1259997))

(check-sat (not b!1375932) (not b!1375926) (not b!1375927) (not b!1375931) (not b!1375930) (not bm!65804) (not bm!65805) (not b!1375933) (not start!116794) (not b!1375929) (not b!1375928))
(check-sat)
