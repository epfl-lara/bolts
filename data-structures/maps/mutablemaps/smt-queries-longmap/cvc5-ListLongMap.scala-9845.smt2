; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116798 () Bool)

(assert start!116798)

(declare-fun b!1375979 () Bool)

(declare-datatypes ((Unit!45545 0))(
  ( (Unit!45546) )
))
(declare-fun e!779536 () Unit!45545)

(declare-fun lt!605046 () Unit!45545)

(assert (=> b!1375979 (= e!779536 lt!605046)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93385 0))(
  ( (array!93386 (arr!45091 (Array (_ BitVec 32) (_ BitVec 64))) (size!45642 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93385)

(declare-fun lt!605048 () Unit!45545)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93385 (_ BitVec 32) (_ BitVec 32)) Unit!45545)

(assert (=> b!1375979 (= lt!605048 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65820 () (_ BitVec 32))

(declare-fun lt!605049 () (_ BitVec 32))

(assert (=> b!1375979 (= call!65820 (bvadd #b00000000000000000000000000000001 lt!605049))))

(declare-fun lt!605043 () array!93385)

(assert (=> b!1375979 (= lt!605046 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65819 () (_ BitVec 32))

(declare-fun lt!605047 () (_ BitVec 32))

(assert (=> b!1375979 (= call!65819 (bvadd #b00000000000000000000000000000001 lt!605047))))

(declare-fun b!1375980 () Bool)

(declare-fun res!919014 () Bool)

(declare-fun e!779535 () Bool)

(assert (=> b!1375980 (=> (not res!919014) (not e!779535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375980 (= res!919014 (validKeyInArray!0 (select (arr!45091 a!4032) i!1445)))))

(declare-fun b!1375981 () Bool)

(declare-fun lt!605042 () Unit!45545)

(assert (=> b!1375981 (= e!779536 lt!605042)))

(declare-fun lt!605045 () Unit!45545)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93385 (_ BitVec 32) (_ BitVec 32)) Unit!45545)

(assert (=> b!1375981 (= lt!605045 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375981 (= call!65820 lt!605049)))

(assert (=> b!1375981 (= lt!605042 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375981 (= call!65819 lt!605047)))

(declare-fun b!1375982 () Bool)

(declare-fun e!779533 () Bool)

(assert (=> b!1375982 (= e!779535 e!779533)))

(declare-fun res!919013 () Bool)

(assert (=> b!1375982 (=> (not res!919013) (not e!779533))))

(assert (=> b!1375982 (= res!919013 (and (= lt!605047 lt!605049) (not (= to!206 (size!45642 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93385 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375982 (= lt!605049 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375982 (= lt!605047 (arrayCountValidKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375982 (= lt!605043 (array!93386 (store (arr!45091 a!4032) i!1445 k!2947) (size!45642 a!4032)))))

(declare-fun b!1375983 () Bool)

(declare-fun res!919012 () Bool)

(assert (=> b!1375983 (=> (not res!919012) (not e!779535))))

(assert (=> b!1375983 (= res!919012 (and (bvslt (size!45642 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45642 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919008 () Bool)

(assert (=> start!116798 (=> (not res!919008) (not e!779535))))

(assert (=> start!116798 (= res!919008 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45642 a!4032))))))

(assert (=> start!116798 e!779535))

(assert (=> start!116798 true))

(declare-fun array_inv!34036 (array!93385) Bool)

(assert (=> start!116798 (array_inv!34036 a!4032)))

(declare-fun b!1375984 () Bool)

(declare-fun e!779534 () Bool)

(assert (=> b!1375984 (= e!779534 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1375984 (= (arrayCountValidKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) (size!45642 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45642 a!4032)))))

(declare-fun lt!605044 () Unit!45545)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45545)

(assert (=> b!1375984 (= lt!605044 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65816 () Bool)

(assert (=> bm!65816 (= call!65819 (arrayCountValidKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65817 () Bool)

(assert (=> bm!65817 (= call!65820 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375985 () Bool)

(declare-fun res!919010 () Bool)

(assert (=> b!1375985 (=> (not res!919010) (not e!779534))))

(assert (=> b!1375985 (= res!919010 (= (arrayCountValidKeys!0 lt!605043 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1375986 () Bool)

(declare-fun res!919009 () Bool)

(assert (=> b!1375986 (=> (not res!919009) (not e!779535))))

(assert (=> b!1375986 (= res!919009 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375987 () Bool)

(assert (=> b!1375987 (= e!779533 e!779534)))

(declare-fun res!919011 () Bool)

(assert (=> b!1375987 (=> (not res!919011) (not e!779534))))

(assert (=> b!1375987 (= res!919011 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45642 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605050 () Unit!45545)

(assert (=> b!1375987 (= lt!605050 e!779536)))

(declare-fun c!127928 () Bool)

(assert (=> b!1375987 (= c!127928 (validKeyInArray!0 (select (arr!45091 a!4032) to!206)))))

(assert (= (and start!116798 res!919008) b!1375980))

(assert (= (and b!1375980 res!919014) b!1375986))

(assert (= (and b!1375986 res!919009) b!1375983))

(assert (= (and b!1375983 res!919012) b!1375982))

(assert (= (and b!1375982 res!919013) b!1375987))

(assert (= (and b!1375987 c!127928) b!1375979))

(assert (= (and b!1375987 (not c!127928)) b!1375981))

(assert (= (or b!1375979 b!1375981) bm!65816))

(assert (= (or b!1375979 b!1375981) bm!65817))

(assert (= (and b!1375987 res!919011) b!1375985))

(assert (= (and b!1375985 res!919010) b!1375984))

(declare-fun m!1260035 () Bool)

(assert (=> b!1375980 m!1260035))

(assert (=> b!1375980 m!1260035))

(declare-fun m!1260037 () Bool)

(assert (=> b!1375980 m!1260037))

(declare-fun m!1260039 () Bool)

(assert (=> start!116798 m!1260039))

(declare-fun m!1260041 () Bool)

(assert (=> b!1375981 m!1260041))

(declare-fun m!1260043 () Bool)

(assert (=> b!1375981 m!1260043))

(declare-fun m!1260045 () Bool)

(assert (=> b!1375982 m!1260045))

(declare-fun m!1260047 () Bool)

(assert (=> b!1375982 m!1260047))

(declare-fun m!1260049 () Bool)

(assert (=> b!1375982 m!1260049))

(declare-fun m!1260051 () Bool)

(assert (=> b!1375986 m!1260051))

(declare-fun m!1260053 () Bool)

(assert (=> bm!65816 m!1260053))

(declare-fun m!1260055 () Bool)

(assert (=> bm!65817 m!1260055))

(declare-fun m!1260057 () Bool)

(assert (=> b!1375979 m!1260057))

(declare-fun m!1260059 () Bool)

(assert (=> b!1375979 m!1260059))

(assert (=> b!1375985 m!1260053))

(assert (=> b!1375985 m!1260055))

(declare-fun m!1260061 () Bool)

(assert (=> b!1375987 m!1260061))

(assert (=> b!1375987 m!1260061))

(declare-fun m!1260063 () Bool)

(assert (=> b!1375987 m!1260063))

(declare-fun m!1260065 () Bool)

(assert (=> b!1375984 m!1260065))

(declare-fun m!1260067 () Bool)

(assert (=> b!1375984 m!1260067))

(declare-fun m!1260069 () Bool)

(assert (=> b!1375984 m!1260069))

(push 1)

