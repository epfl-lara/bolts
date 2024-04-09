; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116934 () Bool)

(assert start!116934)

(declare-fun res!920199 () Bool)

(declare-fun e!780241 () Bool)

(assert (=> start!116934 (=> (not res!920199) (not e!780241))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93521 0))(
  ( (array!93522 (arr!45159 (Array (_ BitVec 32) (_ BitVec 64))) (size!45710 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93521)

(assert (=> start!116934 (= res!920199 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45710 a!4032))))))

(assert (=> start!116934 e!780241))

(assert (=> start!116934 true))

(declare-fun array_inv!34104 (array!93521) Bool)

(assert (=> start!116934 (array_inv!34104 a!4032)))

(declare-fun b!1377356 () Bool)

(declare-fun res!920197 () Bool)

(declare-fun e!780238 () Bool)

(assert (=> b!1377356 (=> (not res!920197) (not e!780238))))

(declare-fun lt!605988 () array!93521)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93521 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377356 (= res!920197 (= (arrayCountValidKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1377357 () Bool)

(declare-fun res!920193 () Bool)

(assert (=> b!1377357 (=> (not res!920193) (not e!780241))))

(assert (=> b!1377357 (= res!920193 (and (bvslt (size!45710 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45710 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377358 () Bool)

(declare-fun res!920195 () Bool)

(assert (=> b!1377358 (=> (not res!920195) (not e!780241))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377358 (= res!920195 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!66008 () Bool)

(declare-fun call!66011 () (_ BitVec 32))

(assert (=> bm!66008 (= call!66011 (arrayCountValidKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377359 () Bool)

(declare-fun e!780239 () Bool)

(assert (=> b!1377359 (= e!780239 e!780238)))

(declare-fun res!920196 () Bool)

(assert (=> b!1377359 (=> (not res!920196) (not e!780238))))

(assert (=> b!1377359 (= res!920196 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45710 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45633 0))(
  ( (Unit!45634) )
))
(declare-fun lt!605991 () Unit!45633)

(declare-fun e!780240 () Unit!45633)

(assert (=> b!1377359 (= lt!605991 e!780240)))

(declare-fun c!128024 () Bool)

(assert (=> b!1377359 (= c!128024 (validKeyInArray!0 (select (arr!45159 a!4032) to!206)))))

(declare-fun call!66012 () (_ BitVec 32))

(declare-fun bm!66009 () Bool)

(assert (=> bm!66009 (= call!66012 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377360 () Bool)

(assert (=> b!1377360 (= e!780241 e!780239)))

(declare-fun res!920194 () Bool)

(assert (=> b!1377360 (=> (not res!920194) (not e!780239))))

(declare-fun lt!605987 () (_ BitVec 32))

(declare-fun lt!605990 () (_ BitVec 32))

(assert (=> b!1377360 (= res!920194 (and (= lt!605990 lt!605987) (not (= to!206 (size!45710 a!4032)))))))

(assert (=> b!1377360 (= lt!605987 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377360 (= lt!605990 (arrayCountValidKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377360 (= lt!605988 (array!93522 (store (arr!45159 a!4032) i!1445 k!2947) (size!45710 a!4032)))))

(declare-fun b!1377361 () Bool)

(declare-fun lt!605992 () Unit!45633)

(assert (=> b!1377361 (= e!780240 lt!605992)))

(declare-fun lt!605993 () Unit!45633)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93521 (_ BitVec 32) (_ BitVec 32)) Unit!45633)

(assert (=> b!1377361 (= lt!605993 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377361 (= call!66012 lt!605987)))

(assert (=> b!1377361 (= lt!605992 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377361 (= call!66011 lt!605990)))

(declare-fun b!1377362 () Bool)

(assert (=> b!1377362 (= e!780238 (not true))))

(assert (=> b!1377362 (= (arrayCountValidKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) (size!45710 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45710 a!4032)))))

(declare-fun lt!605995 () Unit!45633)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93521 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45633)

(assert (=> b!1377362 (= lt!605995 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377363 () Bool)

(declare-fun res!920198 () Bool)

(assert (=> b!1377363 (=> (not res!920198) (not e!780241))))

(assert (=> b!1377363 (= res!920198 (validKeyInArray!0 (select (arr!45159 a!4032) i!1445)))))

(declare-fun b!1377364 () Bool)

(declare-fun lt!605989 () Unit!45633)

(assert (=> b!1377364 (= e!780240 lt!605989)))

(declare-fun lt!605994 () Unit!45633)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93521 (_ BitVec 32) (_ BitVec 32)) Unit!45633)

(assert (=> b!1377364 (= lt!605994 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377364 (= call!66012 (bvadd #b00000000000000000000000000000001 lt!605987))))

(assert (=> b!1377364 (= lt!605989 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605988 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377364 (= call!66011 (bvadd #b00000000000000000000000000000001 lt!605990))))

(assert (= (and start!116934 res!920199) b!1377363))

(assert (= (and b!1377363 res!920198) b!1377358))

(assert (= (and b!1377358 res!920195) b!1377357))

(assert (= (and b!1377357 res!920193) b!1377360))

(assert (= (and b!1377360 res!920194) b!1377359))

(assert (= (and b!1377359 c!128024) b!1377364))

(assert (= (and b!1377359 (not c!128024)) b!1377361))

(assert (= (or b!1377364 b!1377361) bm!66008))

(assert (= (or b!1377364 b!1377361) bm!66009))

(assert (= (and b!1377359 res!920196) b!1377356))

(assert (= (and b!1377356 res!920197) b!1377362))

(declare-fun m!1261713 () Bool)

(assert (=> b!1377361 m!1261713))

(declare-fun m!1261715 () Bool)

(assert (=> b!1377361 m!1261715))

(declare-fun m!1261717 () Bool)

(assert (=> start!116934 m!1261717))

(declare-fun m!1261719 () Bool)

(assert (=> b!1377358 m!1261719))

(declare-fun m!1261721 () Bool)

(assert (=> b!1377356 m!1261721))

(declare-fun m!1261723 () Bool)

(assert (=> b!1377356 m!1261723))

(declare-fun m!1261725 () Bool)

(assert (=> b!1377360 m!1261725))

(declare-fun m!1261727 () Bool)

(assert (=> b!1377360 m!1261727))

(declare-fun m!1261729 () Bool)

(assert (=> b!1377360 m!1261729))

(declare-fun m!1261731 () Bool)

(assert (=> b!1377364 m!1261731))

(declare-fun m!1261733 () Bool)

(assert (=> b!1377364 m!1261733))

(declare-fun m!1261735 () Bool)

(assert (=> b!1377359 m!1261735))

(assert (=> b!1377359 m!1261735))

(declare-fun m!1261737 () Bool)

(assert (=> b!1377359 m!1261737))

(declare-fun m!1261739 () Bool)

(assert (=> b!1377362 m!1261739))

(declare-fun m!1261741 () Bool)

(assert (=> b!1377362 m!1261741))

(declare-fun m!1261743 () Bool)

(assert (=> b!1377362 m!1261743))

(assert (=> bm!66009 m!1261723))

(assert (=> bm!66008 m!1261721))

(declare-fun m!1261745 () Bool)

(assert (=> b!1377363 m!1261745))

(assert (=> b!1377363 m!1261745))

(declare-fun m!1261747 () Bool)

(assert (=> b!1377363 m!1261747))

(push 1)

(assert (not b!1377359))

(assert (not b!1377361))

