; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116806 () Bool)

(assert start!116806)

(declare-fun call!65843 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93393 0))(
  ( (array!93394 (arr!45095 (Array (_ BitVec 32) (_ BitVec 64))) (size!45646 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93393)

(declare-fun bm!65840 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93393 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65840 (= call!65843 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376087 () Bool)

(declare-datatypes ((Unit!45553 0))(
  ( (Unit!45554) )
))
(declare-fun e!779597 () Unit!45553)

(declare-fun lt!605150 () Unit!45553)

(assert (=> b!1376087 (= e!779597 lt!605150)))

(declare-fun lt!605155 () Unit!45553)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93393 (_ BitVec 32) (_ BitVec 32)) Unit!45553)

(assert (=> b!1376087 (= lt!605155 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605157 () (_ BitVec 32))

(assert (=> b!1376087 (= call!65843 (bvadd #b00000000000000000000000000000001 lt!605157))))

(declare-fun lt!605153 () array!93393)

(assert (=> b!1376087 (= lt!605150 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65844 () (_ BitVec 32))

(declare-fun lt!605154 () (_ BitVec 32))

(assert (=> b!1376087 (= call!65844 (bvadd #b00000000000000000000000000000001 lt!605154))))

(declare-fun b!1376088 () Bool)

(declare-fun e!779595 () Bool)

(assert (=> b!1376088 (= e!779595 (not true))))

(assert (=> b!1376088 (= (arrayCountValidKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) (size!45646 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45646 a!4032)))))

(declare-fun lt!605152 () Unit!45553)

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45553)

(assert (=> b!1376088 (= lt!605152 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65841 () Bool)

(assert (=> bm!65841 (= call!65844 (arrayCountValidKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376089 () Bool)

(declare-fun res!919093 () Bool)

(declare-fun e!779593 () Bool)

(assert (=> b!1376089 (=> (not res!919093) (not e!779593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376089 (= res!919093 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376090 () Bool)

(declare-fun res!919092 () Bool)

(assert (=> b!1376090 (=> (not res!919092) (not e!779593))))

(assert (=> b!1376090 (= res!919092 (validKeyInArray!0 (select (arr!45095 a!4032) i!1445)))))

(declare-fun b!1376091 () Bool)

(declare-fun res!919094 () Bool)

(assert (=> b!1376091 (=> (not res!919094) (not e!779593))))

(assert (=> b!1376091 (= res!919094 (and (bvslt (size!45646 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45646 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376092 () Bool)

(declare-fun e!779594 () Bool)

(assert (=> b!1376092 (= e!779594 e!779595)))

(declare-fun res!919096 () Bool)

(assert (=> b!1376092 (=> (not res!919096) (not e!779595))))

(assert (=> b!1376092 (= res!919096 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45646 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605151 () Unit!45553)

(assert (=> b!1376092 (= lt!605151 e!779597)))

(declare-fun c!127940 () Bool)

(assert (=> b!1376092 (= c!127940 (validKeyInArray!0 (select (arr!45095 a!4032) to!206)))))

(declare-fun b!1376093 () Bool)

(declare-fun lt!605158 () Unit!45553)

(assert (=> b!1376093 (= e!779597 lt!605158)))

(declare-fun lt!605156 () Unit!45553)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93393 (_ BitVec 32) (_ BitVec 32)) Unit!45553)

(assert (=> b!1376093 (= lt!605156 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376093 (= call!65843 lt!605157)))

(assert (=> b!1376093 (= lt!605158 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376093 (= call!65844 lt!605154)))

(declare-fun b!1376094 () Bool)

(declare-fun res!919097 () Bool)

(assert (=> b!1376094 (=> (not res!919097) (not e!779595))))

(assert (=> b!1376094 (= res!919097 (= (arrayCountValidKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1376095 () Bool)

(assert (=> b!1376095 (= e!779593 e!779594)))

(declare-fun res!919098 () Bool)

(assert (=> b!1376095 (=> (not res!919098) (not e!779594))))

(assert (=> b!1376095 (= res!919098 (and (= lt!605154 lt!605157) (not (= to!206 (size!45646 a!4032)))))))

(assert (=> b!1376095 (= lt!605157 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376095 (= lt!605154 (arrayCountValidKeys!0 lt!605153 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376095 (= lt!605153 (array!93394 (store (arr!45095 a!4032) i!1445 k0!2947) (size!45646 a!4032)))))

(declare-fun res!919095 () Bool)

(assert (=> start!116806 (=> (not res!919095) (not e!779593))))

(assert (=> start!116806 (= res!919095 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45646 a!4032))))))

(assert (=> start!116806 e!779593))

(assert (=> start!116806 true))

(declare-fun array_inv!34040 (array!93393) Bool)

(assert (=> start!116806 (array_inv!34040 a!4032)))

(assert (= (and start!116806 res!919095) b!1376090))

(assert (= (and b!1376090 res!919092) b!1376089))

(assert (= (and b!1376089 res!919093) b!1376091))

(assert (= (and b!1376091 res!919094) b!1376095))

(assert (= (and b!1376095 res!919098) b!1376092))

(assert (= (and b!1376092 c!127940) b!1376087))

(assert (= (and b!1376092 (not c!127940)) b!1376093))

(assert (= (or b!1376087 b!1376093) bm!65841))

(assert (= (or b!1376087 b!1376093) bm!65840))

(assert (= (and b!1376092 res!919096) b!1376094))

(assert (= (and b!1376094 res!919097) b!1376088))

(declare-fun m!1260179 () Bool)

(assert (=> bm!65840 m!1260179))

(declare-fun m!1260181 () Bool)

(assert (=> b!1376094 m!1260181))

(assert (=> b!1376094 m!1260179))

(declare-fun m!1260183 () Bool)

(assert (=> b!1376093 m!1260183))

(declare-fun m!1260185 () Bool)

(assert (=> b!1376093 m!1260185))

(declare-fun m!1260187 () Bool)

(assert (=> b!1376095 m!1260187))

(declare-fun m!1260189 () Bool)

(assert (=> b!1376095 m!1260189))

(declare-fun m!1260191 () Bool)

(assert (=> b!1376095 m!1260191))

(declare-fun m!1260193 () Bool)

(assert (=> start!116806 m!1260193))

(declare-fun m!1260195 () Bool)

(assert (=> b!1376090 m!1260195))

(assert (=> b!1376090 m!1260195))

(declare-fun m!1260197 () Bool)

(assert (=> b!1376090 m!1260197))

(declare-fun m!1260199 () Bool)

(assert (=> b!1376089 m!1260199))

(assert (=> bm!65841 m!1260181))

(declare-fun m!1260201 () Bool)

(assert (=> b!1376088 m!1260201))

(declare-fun m!1260203 () Bool)

(assert (=> b!1376088 m!1260203))

(declare-fun m!1260205 () Bool)

(assert (=> b!1376088 m!1260205))

(declare-fun m!1260207 () Bool)

(assert (=> b!1376092 m!1260207))

(assert (=> b!1376092 m!1260207))

(declare-fun m!1260209 () Bool)

(assert (=> b!1376092 m!1260209))

(declare-fun m!1260211 () Bool)

(assert (=> b!1376087 m!1260211))

(declare-fun m!1260213 () Bool)

(assert (=> b!1376087 m!1260213))

(check-sat (not bm!65840) (not b!1376088) (not b!1376093) (not b!1376094) (not b!1376089) (not b!1376090) (not bm!65841) (not b!1376092) (not b!1376087) (not start!116806) (not b!1376095))
(check-sat)
