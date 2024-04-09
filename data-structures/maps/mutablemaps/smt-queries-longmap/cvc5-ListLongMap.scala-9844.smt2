; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116792 () Bool)

(assert start!116792)

(declare-fun b!1375898 () Bool)

(declare-datatypes ((Unit!45539 0))(
  ( (Unit!45540) )
))
(declare-fun e!779492 () Unit!45539)

(declare-fun lt!604963 () Unit!45539)

(assert (=> b!1375898 (= e!779492 lt!604963)))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93379 0))(
  ( (array!93380 (arr!45088 (Array (_ BitVec 32) (_ BitVec 64))) (size!45639 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93379)

(declare-fun lt!604961 () Unit!45539)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93379 (_ BitVec 32) (_ BitVec 32)) Unit!45539)

(assert (=> b!1375898 (= lt!604961 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65802 () (_ BitVec 32))

(declare-fun lt!604968 () (_ BitVec 32))

(assert (=> b!1375898 (= call!65802 lt!604968)))

(declare-fun lt!604965 () array!93379)

(assert (=> b!1375898 (= lt!604963 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65801 () (_ BitVec 32))

(declare-fun lt!604964 () (_ BitVec 32))

(assert (=> b!1375898 (= call!65801 lt!604964)))

(declare-fun b!1375900 () Bool)

(declare-fun e!779490 () Bool)

(declare-fun e!779489 () Bool)

(assert (=> b!1375900 (= e!779490 e!779489)))

(declare-fun res!918950 () Bool)

(assert (=> b!1375900 (=> (not res!918950) (not e!779489))))

(assert (=> b!1375900 (= res!918950 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45639 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604962 () Unit!45539)

(assert (=> b!1375900 (= lt!604962 e!779492)))

(declare-fun c!127919 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375900 (= c!127919 (validKeyInArray!0 (select (arr!45088 a!4032) to!206)))))

(declare-fun b!1375901 () Bool)

(declare-fun e!779491 () Bool)

(assert (=> b!1375901 (= e!779491 e!779490)))

(declare-fun res!918945 () Bool)

(assert (=> b!1375901 (=> (not res!918945) (not e!779490))))

(assert (=> b!1375901 (= res!918945 (and (= lt!604964 lt!604968) (not (= to!206 (size!45639 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93379 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375901 (= lt!604968 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375901 (= lt!604964 (arrayCountValidKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375901 (= lt!604965 (array!93380 (store (arr!45088 a!4032) i!1445 k!2947) (size!45639 a!4032)))))

(declare-fun b!1375902 () Bool)

(declare-fun res!918951 () Bool)

(assert (=> b!1375902 (=> (not res!918951) (not e!779489))))

(assert (=> b!1375902 (= res!918951 (= (arrayCountValidKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun bm!65798 () Bool)

(assert (=> bm!65798 (= call!65802 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375903 () Bool)

(declare-fun res!918948 () Bool)

(assert (=> b!1375903 (=> (not res!918948) (not e!779491))))

(assert (=> b!1375903 (= res!918948 (and (bvslt (size!45639 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45639 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!918947 () Bool)

(assert (=> start!116792 (=> (not res!918947) (not e!779491))))

(assert (=> start!116792 (= res!918947 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45639 a!4032))))))

(assert (=> start!116792 e!779491))

(assert (=> start!116792 true))

(declare-fun array_inv!34033 (array!93379) Bool)

(assert (=> start!116792 (array_inv!34033 a!4032)))

(declare-fun b!1375899 () Bool)

(declare-fun lt!604967 () Unit!45539)

(assert (=> b!1375899 (= e!779492 lt!604967)))

(declare-fun lt!604966 () Unit!45539)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93379 (_ BitVec 32) (_ BitVec 32)) Unit!45539)

(assert (=> b!1375899 (= lt!604966 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375899 (= call!65802 (bvadd #b00000000000000000000000000000001 lt!604968))))

(assert (=> b!1375899 (= lt!604967 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375899 (= call!65801 (bvadd #b00000000000000000000000000000001 lt!604964))))

(declare-fun bm!65799 () Bool)

(assert (=> bm!65799 (= call!65801 (arrayCountValidKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375904 () Bool)

(assert (=> b!1375904 (= e!779489 (not true))))

(assert (=> b!1375904 (= (arrayCountValidKeys!0 lt!604965 (bvadd #b00000000000000000000000000000001 i!1445) (size!45639 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45639 a!4032)))))

(declare-fun lt!604969 () Unit!45539)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45539)

(assert (=> b!1375904 (= lt!604969 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375905 () Bool)

(declare-fun res!918949 () Bool)

(assert (=> b!1375905 (=> (not res!918949) (not e!779491))))

(assert (=> b!1375905 (= res!918949 (validKeyInArray!0 (select (arr!45088 a!4032) i!1445)))))

(declare-fun b!1375906 () Bool)

(declare-fun res!918946 () Bool)

(assert (=> b!1375906 (=> (not res!918946) (not e!779491))))

(assert (=> b!1375906 (= res!918946 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116792 res!918947) b!1375905))

(assert (= (and b!1375905 res!918949) b!1375906))

(assert (= (and b!1375906 res!918946) b!1375903))

(assert (= (and b!1375903 res!918948) b!1375901))

(assert (= (and b!1375901 res!918945) b!1375900))

(assert (= (and b!1375900 c!127919) b!1375899))

(assert (= (and b!1375900 (not c!127919)) b!1375898))

(assert (= (or b!1375899 b!1375898) bm!65798))

(assert (= (or b!1375899 b!1375898) bm!65799))

(assert (= (and b!1375900 res!918950) b!1375902))

(assert (= (and b!1375902 res!918951) b!1375904))

(declare-fun m!1259927 () Bool)

(assert (=> start!116792 m!1259927))

(declare-fun m!1259929 () Bool)

(assert (=> b!1375898 m!1259929))

(declare-fun m!1259931 () Bool)

(assert (=> b!1375898 m!1259931))

(declare-fun m!1259933 () Bool)

(assert (=> b!1375901 m!1259933))

(declare-fun m!1259935 () Bool)

(assert (=> b!1375901 m!1259935))

(declare-fun m!1259937 () Bool)

(assert (=> b!1375901 m!1259937))

(declare-fun m!1259939 () Bool)

(assert (=> b!1375905 m!1259939))

(assert (=> b!1375905 m!1259939))

(declare-fun m!1259941 () Bool)

(assert (=> b!1375905 m!1259941))

(declare-fun m!1259943 () Bool)

(assert (=> b!1375902 m!1259943))

(declare-fun m!1259945 () Bool)

(assert (=> b!1375902 m!1259945))

(declare-fun m!1259947 () Bool)

(assert (=> b!1375906 m!1259947))

(declare-fun m!1259949 () Bool)

(assert (=> b!1375899 m!1259949))

(declare-fun m!1259951 () Bool)

(assert (=> b!1375899 m!1259951))

(assert (=> bm!65798 m!1259945))

(declare-fun m!1259953 () Bool)

(assert (=> b!1375904 m!1259953))

(declare-fun m!1259955 () Bool)

(assert (=> b!1375904 m!1259955))

(declare-fun m!1259957 () Bool)

(assert (=> b!1375904 m!1259957))

(assert (=> bm!65799 m!1259943))

(declare-fun m!1259959 () Bool)

(assert (=> b!1375900 m!1259959))

(assert (=> b!1375900 m!1259959))

(declare-fun m!1259961 () Bool)

(assert (=> b!1375900 m!1259961))

(push 1)

