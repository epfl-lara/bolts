; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116900 () Bool)

(assert start!116900)

(declare-fun bm!65906 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93487 0))(
  ( (array!93488 (arr!45142 (Array (_ BitVec 32) (_ BitVec 64))) (size!45693 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93487)

(declare-fun call!65910 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93487 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65906 (= call!65910 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!605563 () array!93487)

(declare-fun bm!65907 () Bool)

(declare-fun call!65909 () (_ BitVec 32))

(assert (=> bm!65907 (= call!65909 (arrayCountValidKeys!0 lt!605563 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376938 () Bool)

(declare-fun res!919878 () Bool)

(declare-fun e!780000 () Bool)

(assert (=> b!1376938 (=> (not res!919878) (not e!780000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376938 (= res!919878 (validKeyInArray!0 (select (arr!45142 a!4032) i!1445)))))

(declare-fun b!1376939 () Bool)

(declare-fun e!779999 () Bool)

(assert (=> b!1376939 (= e!779999 false)))

(declare-datatypes ((Unit!45599 0))(
  ( (Unit!45600) )
))
(declare-fun lt!605566 () Unit!45599)

(declare-fun e!780001 () Unit!45599)

(assert (=> b!1376939 (= lt!605566 e!780001)))

(declare-fun c!127973 () Bool)

(assert (=> b!1376939 (= c!127973 (validKeyInArray!0 (select (arr!45142 a!4032) to!206)))))

(declare-fun b!1376940 () Bool)

(declare-fun res!919881 () Bool)

(assert (=> b!1376940 (=> (not res!919881) (not e!780000))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376940 (= res!919881 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376941 () Bool)

(declare-fun lt!605562 () Unit!45599)

(assert (=> b!1376941 (= e!780001 lt!605562)))

(declare-fun lt!605565 () Unit!45599)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93487 (_ BitVec 32) (_ BitVec 32)) Unit!45599)

(assert (=> b!1376941 (= lt!605565 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605564 () (_ BitVec 32))

(assert (=> b!1376941 (= call!65910 lt!605564)))

(assert (=> b!1376941 (= lt!605562 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605563 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605568 () (_ BitVec 32))

(assert (=> b!1376941 (= call!65909 lt!605568)))

(declare-fun res!919877 () Bool)

(assert (=> start!116900 (=> (not res!919877) (not e!780000))))

(assert (=> start!116900 (= res!919877 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45693 a!4032))))))

(assert (=> start!116900 e!780000))

(assert (=> start!116900 true))

(declare-fun array_inv!34087 (array!93487) Bool)

(assert (=> start!116900 (array_inv!34087 a!4032)))

(declare-fun b!1376942 () Bool)

(declare-fun lt!605569 () Unit!45599)

(assert (=> b!1376942 (= e!780001 lt!605569)))

(declare-fun lt!605567 () Unit!45599)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93487 (_ BitVec 32) (_ BitVec 32)) Unit!45599)

(assert (=> b!1376942 (= lt!605567 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376942 (= call!65910 (bvadd #b00000000000000000000000000000001 lt!605564))))

(assert (=> b!1376942 (= lt!605569 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605563 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376942 (= call!65909 (bvadd #b00000000000000000000000000000001 lt!605568))))

(declare-fun b!1376943 () Bool)

(assert (=> b!1376943 (= e!780000 e!779999)))

(declare-fun res!919880 () Bool)

(assert (=> b!1376943 (=> (not res!919880) (not e!779999))))

(assert (=> b!1376943 (= res!919880 (and (= lt!605568 lt!605564) (not (= to!206 (size!45693 a!4032)))))))

(assert (=> b!1376943 (= lt!605564 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376943 (= lt!605568 (arrayCountValidKeys!0 lt!605563 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376943 (= lt!605563 (array!93488 (store (arr!45142 a!4032) i!1445 k!2947) (size!45693 a!4032)))))

(declare-fun b!1376944 () Bool)

(declare-fun res!919879 () Bool)

(assert (=> b!1376944 (=> (not res!919879) (not e!780000))))

(assert (=> b!1376944 (= res!919879 (and (bvslt (size!45693 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45693 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116900 res!919877) b!1376938))

(assert (= (and b!1376938 res!919878) b!1376940))

(assert (= (and b!1376940 res!919881) b!1376944))

(assert (= (and b!1376944 res!919879) b!1376943))

(assert (= (and b!1376943 res!919880) b!1376939))

(assert (= (and b!1376939 c!127973) b!1376942))

(assert (= (and b!1376939 (not c!127973)) b!1376941))

(assert (= (or b!1376942 b!1376941) bm!65906))

(assert (= (or b!1376942 b!1376941) bm!65907))

(declare-fun m!1261169 () Bool)

(assert (=> b!1376943 m!1261169))

(declare-fun m!1261171 () Bool)

(assert (=> b!1376943 m!1261171))

(declare-fun m!1261173 () Bool)

(assert (=> b!1376943 m!1261173))

(declare-fun m!1261175 () Bool)

(assert (=> b!1376941 m!1261175))

(declare-fun m!1261177 () Bool)

(assert (=> b!1376941 m!1261177))

(declare-fun m!1261179 () Bool)

(assert (=> bm!65906 m!1261179))

(declare-fun m!1261181 () Bool)

(assert (=> b!1376940 m!1261181))

(declare-fun m!1261183 () Bool)

(assert (=> b!1376938 m!1261183))

(assert (=> b!1376938 m!1261183))

(declare-fun m!1261185 () Bool)

(assert (=> b!1376938 m!1261185))

(declare-fun m!1261187 () Bool)

(assert (=> bm!65907 m!1261187))

(declare-fun m!1261189 () Bool)

(assert (=> b!1376942 m!1261189))

(declare-fun m!1261191 () Bool)

(assert (=> b!1376942 m!1261191))

(declare-fun m!1261193 () Bool)

(assert (=> b!1376939 m!1261193))

(assert (=> b!1376939 m!1261193))

(declare-fun m!1261195 () Bool)

(assert (=> b!1376939 m!1261195))

(declare-fun m!1261197 () Bool)

(assert (=> start!116900 m!1261197))

(push 1)

