; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116884 () Bool)

(assert start!116884)

(declare-fun call!65861 () (_ BitVec 32))

(declare-fun bm!65858 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93471 0))(
  ( (array!93472 (arr!45134 (Array (_ BitVec 32) (_ BitVec 64))) (size!45685 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93471)

(declare-fun arrayCountValidKeys!0 (array!93471 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65858 (= call!65861 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!919761 () Bool)

(declare-fun e!779906 () Bool)

(assert (=> start!116884 (=> (not res!919761) (not e!779906))))

(assert (=> start!116884 (= res!919761 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45685 a!4032))))))

(assert (=> start!116884 e!779906))

(assert (=> start!116884 true))

(declare-fun array_inv!34079 (array!93471) Bool)

(assert (=> start!116884 (array_inv!34079 a!4032)))

(declare-fun lt!605372 () array!93471)

(declare-fun bm!65859 () Bool)

(declare-fun call!65862 () (_ BitVec 32))

(assert (=> bm!65859 (= call!65862 (arrayCountValidKeys!0 lt!605372 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376770 () Bool)

(declare-fun res!919760 () Bool)

(assert (=> b!1376770 (=> (not res!919760) (not e!779906))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376770 (= res!919760 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376771 () Bool)

(declare-fun res!919759 () Bool)

(assert (=> b!1376771 (=> (not res!919759) (not e!779906))))

(assert (=> b!1376771 (= res!919759 (validKeyInArray!0 (select (arr!45134 a!4032) i!1445)))))

(declare-fun b!1376772 () Bool)

(declare-datatypes ((Unit!45583 0))(
  ( (Unit!45584) )
))
(declare-fun e!779903 () Unit!45583)

(declare-fun lt!605377 () Unit!45583)

(assert (=> b!1376772 (= e!779903 lt!605377)))

(declare-fun lt!605373 () Unit!45583)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93471 (_ BitVec 32) (_ BitVec 32)) Unit!45583)

(assert (=> b!1376772 (= lt!605373 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605375 () (_ BitVec 32))

(assert (=> b!1376772 (= call!65861 lt!605375)))

(assert (=> b!1376772 (= lt!605377 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605372 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605374 () (_ BitVec 32))

(assert (=> b!1376772 (= call!65862 lt!605374)))

(declare-fun b!1376773 () Bool)

(declare-fun e!779904 () Bool)

(assert (=> b!1376773 (= e!779906 e!779904)))

(declare-fun res!919758 () Bool)

(assert (=> b!1376773 (=> (not res!919758) (not e!779904))))

(assert (=> b!1376773 (= res!919758 (and (= lt!605374 lt!605375) (not (= to!206 (size!45685 a!4032)))))))

(assert (=> b!1376773 (= lt!605375 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376773 (= lt!605374 (arrayCountValidKeys!0 lt!605372 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376773 (= lt!605372 (array!93472 (store (arr!45134 a!4032) i!1445 k0!2947) (size!45685 a!4032)))))

(declare-fun b!1376774 () Bool)

(assert (=> b!1376774 (= e!779904 false)))

(declare-fun lt!605376 () Unit!45583)

(assert (=> b!1376774 (= lt!605376 e!779903)))

(declare-fun c!127949 () Bool)

(assert (=> b!1376774 (= c!127949 (validKeyInArray!0 (select (arr!45134 a!4032) to!206)))))

(declare-fun b!1376775 () Bool)

(declare-fun lt!605370 () Unit!45583)

(assert (=> b!1376775 (= e!779903 lt!605370)))

(declare-fun lt!605371 () Unit!45583)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93471 (_ BitVec 32) (_ BitVec 32)) Unit!45583)

(assert (=> b!1376775 (= lt!605371 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376775 (= call!65861 (bvadd #b00000000000000000000000000000001 lt!605375))))

(assert (=> b!1376775 (= lt!605370 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605372 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376775 (= call!65862 (bvadd #b00000000000000000000000000000001 lt!605374))))

(declare-fun b!1376776 () Bool)

(declare-fun res!919757 () Bool)

(assert (=> b!1376776 (=> (not res!919757) (not e!779906))))

(assert (=> b!1376776 (= res!919757 (and (bvslt (size!45685 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45685 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116884 res!919761) b!1376771))

(assert (= (and b!1376771 res!919759) b!1376770))

(assert (= (and b!1376770 res!919760) b!1376776))

(assert (= (and b!1376776 res!919757) b!1376773))

(assert (= (and b!1376773 res!919758) b!1376774))

(assert (= (and b!1376774 c!127949) b!1376775))

(assert (= (and b!1376774 (not c!127949)) b!1376772))

(assert (= (or b!1376775 b!1376772) bm!65859))

(assert (= (or b!1376775 b!1376772) bm!65858))

(declare-fun m!1260929 () Bool)

(assert (=> b!1376772 m!1260929))

(declare-fun m!1260931 () Bool)

(assert (=> b!1376772 m!1260931))

(declare-fun m!1260933 () Bool)

(assert (=> b!1376770 m!1260933))

(declare-fun m!1260935 () Bool)

(assert (=> start!116884 m!1260935))

(declare-fun m!1260937 () Bool)

(assert (=> b!1376774 m!1260937))

(assert (=> b!1376774 m!1260937))

(declare-fun m!1260939 () Bool)

(assert (=> b!1376774 m!1260939))

(declare-fun m!1260941 () Bool)

(assert (=> b!1376771 m!1260941))

(assert (=> b!1376771 m!1260941))

(declare-fun m!1260943 () Bool)

(assert (=> b!1376771 m!1260943))

(declare-fun m!1260945 () Bool)

(assert (=> b!1376773 m!1260945))

(declare-fun m!1260947 () Bool)

(assert (=> b!1376773 m!1260947))

(declare-fun m!1260949 () Bool)

(assert (=> b!1376773 m!1260949))

(declare-fun m!1260951 () Bool)

(assert (=> bm!65859 m!1260951))

(declare-fun m!1260953 () Bool)

(assert (=> bm!65858 m!1260953))

(declare-fun m!1260955 () Bool)

(assert (=> b!1376775 m!1260955))

(declare-fun m!1260957 () Bool)

(assert (=> b!1376775 m!1260957))

(check-sat (not b!1376770) (not b!1376774) (not b!1376772) (not bm!65859) (not b!1376773) (not start!116884) (not b!1376775) (not b!1376771) (not bm!65858))
(check-sat)
