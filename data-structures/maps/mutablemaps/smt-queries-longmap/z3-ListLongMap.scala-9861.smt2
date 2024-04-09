; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116896 () Bool)

(assert start!116896)

(declare-fun b!1376896 () Bool)

(declare-fun e!779977 () Bool)

(declare-fun e!779978 () Bool)

(assert (=> b!1376896 (= e!779977 e!779978)))

(declare-fun res!919849 () Bool)

(assert (=> b!1376896 (=> (not res!919849) (not e!779978))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605519 () (_ BitVec 32))

(declare-fun lt!605521 () (_ BitVec 32))

(declare-datatypes ((array!93483 0))(
  ( (array!93484 (arr!45140 (Array (_ BitVec 32) (_ BitVec 64))) (size!45691 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93483)

(assert (=> b!1376896 (= res!919849 (and (= lt!605519 lt!605521) (not (= to!206 (size!45691 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93483 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376896 (= lt!605521 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605517 () array!93483)

(assert (=> b!1376896 (= lt!605519 (arrayCountValidKeys!0 lt!605517 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376896 (= lt!605517 (array!93484 (store (arr!45140 a!4032) i!1445 k0!2947) (size!45691 a!4032)))))

(declare-fun b!1376897 () Bool)

(declare-fun res!919848 () Bool)

(assert (=> b!1376897 (=> (not res!919848) (not e!779977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376897 (= res!919848 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376898 () Bool)

(declare-datatypes ((Unit!45595 0))(
  ( (Unit!45596) )
))
(declare-fun e!779976 () Unit!45595)

(declare-fun lt!605514 () Unit!45595)

(assert (=> b!1376898 (= e!779976 lt!605514)))

(declare-fun lt!605520 () Unit!45595)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93483 (_ BitVec 32) (_ BitVec 32)) Unit!45595)

(assert (=> b!1376898 (= lt!605520 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65897 () (_ BitVec 32))

(assert (=> b!1376898 (= call!65897 lt!605521)))

(assert (=> b!1376898 (= lt!605514 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605517 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65898 () (_ BitVec 32))

(assert (=> b!1376898 (= call!65898 lt!605519)))

(declare-fun bm!65894 () Bool)

(assert (=> bm!65894 (= call!65898 (arrayCountValidKeys!0 lt!605517 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376899 () Bool)

(declare-fun lt!605515 () Unit!45595)

(assert (=> b!1376899 (= e!779976 lt!605515)))

(declare-fun lt!605518 () Unit!45595)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93483 (_ BitVec 32) (_ BitVec 32)) Unit!45595)

(assert (=> b!1376899 (= lt!605518 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376899 (= call!65897 (bvadd #b00000000000000000000000000000001 lt!605521))))

(assert (=> b!1376899 (= lt!605515 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605517 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376899 (= call!65898 (bvadd #b00000000000000000000000000000001 lt!605519))))

(declare-fun res!919851 () Bool)

(assert (=> start!116896 (=> (not res!919851) (not e!779977))))

(assert (=> start!116896 (= res!919851 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45691 a!4032))))))

(assert (=> start!116896 e!779977))

(assert (=> start!116896 true))

(declare-fun array_inv!34085 (array!93483) Bool)

(assert (=> start!116896 (array_inv!34085 a!4032)))

(declare-fun b!1376900 () Bool)

(declare-fun res!919850 () Bool)

(assert (=> b!1376900 (=> (not res!919850) (not e!779977))))

(assert (=> b!1376900 (= res!919850 (and (bvslt (size!45691 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45691 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376901 () Bool)

(declare-fun res!919847 () Bool)

(assert (=> b!1376901 (=> (not res!919847) (not e!779977))))

(assert (=> b!1376901 (= res!919847 (validKeyInArray!0 (select (arr!45140 a!4032) i!1445)))))

(declare-fun b!1376902 () Bool)

(assert (=> b!1376902 (= e!779978 false)))

(declare-fun lt!605516 () Unit!45595)

(assert (=> b!1376902 (= lt!605516 e!779976)))

(declare-fun c!127967 () Bool)

(assert (=> b!1376902 (= c!127967 (validKeyInArray!0 (select (arr!45140 a!4032) to!206)))))

(declare-fun bm!65895 () Bool)

(assert (=> bm!65895 (= call!65897 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116896 res!919851) b!1376901))

(assert (= (and b!1376901 res!919847) b!1376897))

(assert (= (and b!1376897 res!919848) b!1376900))

(assert (= (and b!1376900 res!919850) b!1376896))

(assert (= (and b!1376896 res!919849) b!1376902))

(assert (= (and b!1376902 c!127967) b!1376899))

(assert (= (and b!1376902 (not c!127967)) b!1376898))

(assert (= (or b!1376899 b!1376898) bm!65894))

(assert (= (or b!1376899 b!1376898) bm!65895))

(declare-fun m!1261109 () Bool)

(assert (=> start!116896 m!1261109))

(declare-fun m!1261111 () Bool)

(assert (=> b!1376902 m!1261111))

(assert (=> b!1376902 m!1261111))

(declare-fun m!1261113 () Bool)

(assert (=> b!1376902 m!1261113))

(declare-fun m!1261115 () Bool)

(assert (=> b!1376898 m!1261115))

(declare-fun m!1261117 () Bool)

(assert (=> b!1376898 m!1261117))

(declare-fun m!1261119 () Bool)

(assert (=> b!1376899 m!1261119))

(declare-fun m!1261121 () Bool)

(assert (=> b!1376899 m!1261121))

(declare-fun m!1261123 () Bool)

(assert (=> b!1376901 m!1261123))

(assert (=> b!1376901 m!1261123))

(declare-fun m!1261125 () Bool)

(assert (=> b!1376901 m!1261125))

(declare-fun m!1261127 () Bool)

(assert (=> b!1376897 m!1261127))

(declare-fun m!1261129 () Bool)

(assert (=> b!1376896 m!1261129))

(declare-fun m!1261131 () Bool)

(assert (=> b!1376896 m!1261131))

(declare-fun m!1261133 () Bool)

(assert (=> b!1376896 m!1261133))

(declare-fun m!1261135 () Bool)

(assert (=> bm!65895 m!1261135))

(declare-fun m!1261137 () Bool)

(assert (=> bm!65894 m!1261137))

(check-sat (not b!1376902) (not bm!65895) (not b!1376901) (not bm!65894) (not b!1376897) (not start!116896) (not b!1376896) (not b!1376899) (not b!1376898))
