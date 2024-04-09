; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116928 () Bool)

(assert start!116928)

(declare-fun b!1377275 () Bool)

(declare-fun e!780195 () Bool)

(assert (=> b!1377275 (= e!780195 (not true))))

(declare-datatypes ((array!93515 0))(
  ( (array!93516 (arr!45156 (Array (_ BitVec 32) (_ BitVec 64))) (size!45707 (_ BitVec 32))) )
))
(declare-fun lt!605913 () array!93515)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun a!4032 () array!93515)

(declare-fun arrayCountValidKeys!0 (array!93515 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377275 (= (arrayCountValidKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) (size!45707 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45707 a!4032)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun k!2947 () (_ BitVec 64))

(declare-datatypes ((Unit!45627 0))(
  ( (Unit!45628) )
))
(declare-fun lt!605912 () Unit!45627)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45627)

(assert (=> b!1377275 (= lt!605912 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377276 () Bool)

(declare-fun e!780196 () Bool)

(assert (=> b!1377276 (= e!780196 e!780195)))

(declare-fun res!920134 () Bool)

(assert (=> b!1377276 (=> (not res!920134) (not e!780195))))

(assert (=> b!1377276 (= res!920134 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45707 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605907 () Unit!45627)

(declare-fun e!780194 () Unit!45627)

(assert (=> b!1377276 (= lt!605907 e!780194)))

(declare-fun c!128015 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377276 (= c!128015 (validKeyInArray!0 (select (arr!45156 a!4032) to!206)))))

(declare-fun b!1377277 () Bool)

(declare-fun e!780193 () Bool)

(assert (=> b!1377277 (= e!780193 e!780196)))

(declare-fun res!920135 () Bool)

(assert (=> b!1377277 (=> (not res!920135) (not e!780196))))

(declare-fun lt!605910 () (_ BitVec 32))

(declare-fun lt!605908 () (_ BitVec 32))

(assert (=> b!1377277 (= res!920135 (and (= lt!605910 lt!605908) (not (= to!206 (size!45707 a!4032)))))))

(assert (=> b!1377277 (= lt!605908 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377277 (= lt!605910 (arrayCountValidKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377277 (= lt!605913 (array!93516 (store (arr!45156 a!4032) i!1445 k!2947) (size!45707 a!4032)))))

(declare-fun b!1377278 () Bool)

(declare-fun res!920136 () Bool)

(assert (=> b!1377278 (=> (not res!920136) (not e!780195))))

(assert (=> b!1377278 (= res!920136 (= (arrayCountValidKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1377279 () Bool)

(declare-fun res!920133 () Bool)

(assert (=> b!1377279 (=> (not res!920133) (not e!780193))))

(assert (=> b!1377279 (= res!920133 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377280 () Bool)

(declare-fun lt!605909 () Unit!45627)

(assert (=> b!1377280 (= e!780194 lt!605909)))

(declare-fun lt!605914 () Unit!45627)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93515 (_ BitVec 32) (_ BitVec 32)) Unit!45627)

(assert (=> b!1377280 (= lt!605914 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65994 () (_ BitVec 32))

(assert (=> b!1377280 (= call!65994 lt!605908)))

(assert (=> b!1377280 (= lt!605909 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65993 () (_ BitVec 32))

(assert (=> b!1377280 (= call!65993 lt!605910)))

(declare-fun b!1377281 () Bool)

(declare-fun res!920131 () Bool)

(assert (=> b!1377281 (=> (not res!920131) (not e!780193))))

(assert (=> b!1377281 (= res!920131 (and (bvslt (size!45707 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45707 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377282 () Bool)

(declare-fun res!920130 () Bool)

(assert (=> b!1377282 (=> (not res!920130) (not e!780193))))

(assert (=> b!1377282 (= res!920130 (validKeyInArray!0 (select (arr!45156 a!4032) i!1445)))))

(declare-fun b!1377283 () Bool)

(declare-fun lt!605906 () Unit!45627)

(assert (=> b!1377283 (= e!780194 lt!605906)))

(declare-fun lt!605911 () Unit!45627)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93515 (_ BitVec 32) (_ BitVec 32)) Unit!45627)

(assert (=> b!1377283 (= lt!605911 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377283 (= call!65994 (bvadd #b00000000000000000000000000000001 lt!605908))))

(assert (=> b!1377283 (= lt!605906 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377283 (= call!65993 (bvadd #b00000000000000000000000000000001 lt!605910))))

(declare-fun bm!65991 () Bool)

(assert (=> bm!65991 (= call!65994 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!920132 () Bool)

(assert (=> start!116928 (=> (not res!920132) (not e!780193))))

(assert (=> start!116928 (= res!920132 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45707 a!4032))))))

(assert (=> start!116928 e!780193))

(assert (=> start!116928 true))

(declare-fun array_inv!34101 (array!93515) Bool)

(assert (=> start!116928 (array_inv!34101 a!4032)))

(declare-fun bm!65990 () Bool)

(assert (=> bm!65990 (= call!65993 (arrayCountValidKeys!0 lt!605913 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116928 res!920132) b!1377282))

(assert (= (and b!1377282 res!920130) b!1377279))

(assert (= (and b!1377279 res!920133) b!1377281))

(assert (= (and b!1377281 res!920131) b!1377277))

(assert (= (and b!1377277 res!920135) b!1377276))

(assert (= (and b!1377276 c!128015) b!1377283))

(assert (= (and b!1377276 (not c!128015)) b!1377280))

(assert (= (or b!1377283 b!1377280) bm!65990))

(assert (= (or b!1377283 b!1377280) bm!65991))

(assert (= (and b!1377276 res!920134) b!1377278))

(assert (= (and b!1377278 res!920136) b!1377275))

(declare-fun m!1261605 () Bool)

(assert (=> bm!65991 m!1261605))

(declare-fun m!1261607 () Bool)

(assert (=> b!1377280 m!1261607))

(declare-fun m!1261609 () Bool)

(assert (=> b!1377280 m!1261609))

(declare-fun m!1261611 () Bool)

(assert (=> b!1377277 m!1261611))

(declare-fun m!1261613 () Bool)

(assert (=> b!1377277 m!1261613))

(declare-fun m!1261615 () Bool)

(assert (=> b!1377277 m!1261615))

(declare-fun m!1261617 () Bool)

(assert (=> bm!65990 m!1261617))

(declare-fun m!1261619 () Bool)

(assert (=> b!1377275 m!1261619))

(declare-fun m!1261621 () Bool)

(assert (=> b!1377275 m!1261621))

(declare-fun m!1261623 () Bool)

(assert (=> b!1377275 m!1261623))

(declare-fun m!1261625 () Bool)

(assert (=> b!1377283 m!1261625))

(declare-fun m!1261627 () Bool)

(assert (=> b!1377283 m!1261627))

(declare-fun m!1261629 () Bool)

(assert (=> start!116928 m!1261629))

(declare-fun m!1261631 () Bool)

(assert (=> b!1377279 m!1261631))

(declare-fun m!1261633 () Bool)

(assert (=> b!1377282 m!1261633))

(assert (=> b!1377282 m!1261633))

(declare-fun m!1261635 () Bool)

(assert (=> b!1377282 m!1261635))

(declare-fun m!1261637 () Bool)

(assert (=> b!1377276 m!1261637))

(assert (=> b!1377276 m!1261637))

(declare-fun m!1261639 () Bool)

(assert (=> b!1377276 m!1261639))

(assert (=> b!1377278 m!1261617))

(assert (=> b!1377278 m!1261605))

(push 1)

(assert (not b!1377277))

(assert (not b!1377279))

