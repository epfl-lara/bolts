; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116808 () Bool)

(assert start!116808)

(declare-fun b!1376114 () Bool)

(declare-fun res!919114 () Bool)

(declare-fun e!779611 () Bool)

(assert (=> b!1376114 (=> (not res!919114) (not e!779611))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93395 0))(
  ( (array!93396 (arr!45096 (Array (_ BitVec 32) (_ BitVec 64))) (size!45647 (_ BitVec 32))) )
))
(declare-fun lt!605179 () array!93395)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun a!4032 () array!93395)

(declare-fun arrayCountValidKeys!0 (array!93395 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376114 (= res!919114 (= (arrayCountValidKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun call!65849 () (_ BitVec 32))

(declare-fun bm!65846 () Bool)

(assert (=> bm!65846 (= call!65849 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376116 () Bool)

(declare-fun res!919115 () Bool)

(declare-fun e!779610 () Bool)

(assert (=> b!1376116 (=> (not res!919115) (not e!779610))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376116 (= res!919115 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376117 () Bool)

(declare-datatypes ((Unit!45555 0))(
  ( (Unit!45556) )
))
(declare-fun e!779608 () Unit!45555)

(declare-fun lt!605180 () Unit!45555)

(assert (=> b!1376117 (= e!779608 lt!605180)))

(declare-fun lt!605178 () Unit!45555)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93395 (_ BitVec 32) (_ BitVec 32)) Unit!45555)

(assert (=> b!1376117 (= lt!605178 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605184 () (_ BitVec 32))

(assert (=> b!1376117 (= call!65849 lt!605184)))

(assert (=> b!1376117 (= lt!605180 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65850 () (_ BitVec 32))

(declare-fun lt!605183 () (_ BitVec 32))

(assert (=> b!1376117 (= call!65850 lt!605183)))

(declare-fun b!1376118 () Bool)

(declare-fun res!919116 () Bool)

(assert (=> b!1376118 (=> (not res!919116) (not e!779610))))

(assert (=> b!1376118 (= res!919116 (and (bvslt (size!45647 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45647 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376119 () Bool)

(declare-fun e!779609 () Bool)

(assert (=> b!1376119 (= e!779610 e!779609)))

(declare-fun res!919119 () Bool)

(assert (=> b!1376119 (=> (not res!919119) (not e!779609))))

(assert (=> b!1376119 (= res!919119 (and (= lt!605183 lt!605184) (not (= to!206 (size!45647 a!4032)))))))

(assert (=> b!1376119 (= lt!605184 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376119 (= lt!605183 (arrayCountValidKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376119 (= lt!605179 (array!93396 (store (arr!45096 a!4032) i!1445 k!2947) (size!45647 a!4032)))))

(declare-fun b!1376120 () Bool)

(assert (=> b!1376120 (= e!779609 e!779611)))

(declare-fun res!919117 () Bool)

(assert (=> b!1376120 (=> (not res!919117) (not e!779611))))

(assert (=> b!1376120 (= res!919117 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45647 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605182 () Unit!45555)

(assert (=> b!1376120 (= lt!605182 e!779608)))

(declare-fun c!127943 () Bool)

(assert (=> b!1376120 (= c!127943 (validKeyInArray!0 (select (arr!45096 a!4032) to!206)))))

(declare-fun bm!65847 () Bool)

(assert (=> bm!65847 (= call!65850 (arrayCountValidKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376121 () Bool)

(declare-fun res!919113 () Bool)

(assert (=> b!1376121 (=> (not res!919113) (not e!779610))))

(assert (=> b!1376121 (= res!919113 (validKeyInArray!0 (select (arr!45096 a!4032) i!1445)))))

(declare-fun b!1376122 () Bool)

(declare-fun lt!605185 () Unit!45555)

(assert (=> b!1376122 (= e!779608 lt!605185)))

(declare-fun lt!605181 () Unit!45555)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93395 (_ BitVec 32) (_ BitVec 32)) Unit!45555)

(assert (=> b!1376122 (= lt!605181 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376122 (= call!65849 (bvadd #b00000000000000000000000000000001 lt!605184))))

(assert (=> b!1376122 (= lt!605185 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376122 (= call!65850 (bvadd #b00000000000000000000000000000001 lt!605183))))

(declare-fun b!1376115 () Bool)

(assert (=> b!1376115 (= e!779611 (not true))))

(assert (=> b!1376115 (= (arrayCountValidKeys!0 lt!605179 (bvadd #b00000000000000000000000000000001 i!1445) (size!45647 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45647 a!4032)))))

(declare-fun lt!605177 () Unit!45555)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45555)

(assert (=> b!1376115 (= lt!605177 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!919118 () Bool)

(assert (=> start!116808 (=> (not res!919118) (not e!779610))))

(assert (=> start!116808 (= res!919118 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45647 a!4032))))))

(assert (=> start!116808 e!779610))

(assert (=> start!116808 true))

(declare-fun array_inv!34041 (array!93395) Bool)

(assert (=> start!116808 (array_inv!34041 a!4032)))

(assert (= (and start!116808 res!919118) b!1376121))

(assert (= (and b!1376121 res!919113) b!1376116))

(assert (= (and b!1376116 res!919115) b!1376118))

(assert (= (and b!1376118 res!919116) b!1376119))

(assert (= (and b!1376119 res!919119) b!1376120))

(assert (= (and b!1376120 c!127943) b!1376122))

(assert (= (and b!1376120 (not c!127943)) b!1376117))

(assert (= (or b!1376122 b!1376117) bm!65846))

(assert (= (or b!1376122 b!1376117) bm!65847))

(assert (= (and b!1376120 res!919117) b!1376114))

(assert (= (and b!1376114 res!919114) b!1376115))

(declare-fun m!1260215 () Bool)

(assert (=> b!1376119 m!1260215))

(declare-fun m!1260217 () Bool)

(assert (=> b!1376119 m!1260217))

(declare-fun m!1260219 () Bool)

(assert (=> b!1376119 m!1260219))

(declare-fun m!1260221 () Bool)

(assert (=> b!1376116 m!1260221))

(declare-fun m!1260223 () Bool)

(assert (=> b!1376121 m!1260223))

(assert (=> b!1376121 m!1260223))

(declare-fun m!1260225 () Bool)

(assert (=> b!1376121 m!1260225))

(declare-fun m!1260227 () Bool)

(assert (=> b!1376120 m!1260227))

(assert (=> b!1376120 m!1260227))

(declare-fun m!1260229 () Bool)

(assert (=> b!1376120 m!1260229))

(declare-fun m!1260231 () Bool)

(assert (=> b!1376122 m!1260231))

(declare-fun m!1260233 () Bool)

(assert (=> b!1376122 m!1260233))

(declare-fun m!1260235 () Bool)

(assert (=> b!1376114 m!1260235))

(declare-fun m!1260237 () Bool)

(assert (=> b!1376114 m!1260237))

(assert (=> bm!65847 m!1260235))

(declare-fun m!1260239 () Bool)

(assert (=> start!116808 m!1260239))

(declare-fun m!1260241 () Bool)

(assert (=> b!1376115 m!1260241))

(declare-fun m!1260243 () Bool)

(assert (=> b!1376115 m!1260243))

(declare-fun m!1260245 () Bool)

(assert (=> b!1376115 m!1260245))

(assert (=> bm!65846 m!1260237))

(declare-fun m!1260247 () Bool)

(assert (=> b!1376117 m!1260247))

(declare-fun m!1260249 () Bool)

(assert (=> b!1376117 m!1260249))

(push 1)

(assert (not b!1376120))

(assert (not b!1376121))

