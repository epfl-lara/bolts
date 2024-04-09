; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116906 () Bool)

(assert start!116906)

(declare-fun b!1377001 () Bool)

(declare-fun res!919922 () Bool)

(declare-fun e!780038 () Bool)

(assert (=> b!1377001 (=> (not res!919922) (not e!780038))))

(declare-datatypes ((array!93493 0))(
  ( (array!93494 (arr!45145 (Array (_ BitVec 32) (_ BitVec 64))) (size!45696 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93493)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377001 (= res!919922 (validKeyInArray!0 (select (arr!45145 a!4032) i!1445)))))

(declare-fun b!1377002 () Bool)

(declare-fun res!919925 () Bool)

(assert (=> b!1377002 (=> (not res!919925) (not e!780038))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1377002 (= res!919925 (and (bvslt (size!45696 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45696 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377003 () Bool)

(declare-fun res!919924 () Bool)

(assert (=> b!1377003 (=> (not res!919924) (not e!780038))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377003 (= res!919924 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65924 () Bool)

(declare-fun call!65928 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93493 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65924 (= call!65928 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377004 () Bool)

(declare-fun e!780037 () Bool)

(assert (=> b!1377004 (= e!780038 e!780037)))

(declare-fun res!919923 () Bool)

(assert (=> b!1377004 (=> (not res!919923) (not e!780037))))

(declare-fun lt!605640 () (_ BitVec 32))

(declare-fun lt!605635 () (_ BitVec 32))

(assert (=> b!1377004 (= res!919923 (and (= lt!605640 lt!605635) (not (= to!206 (size!45696 a!4032)))))))

(assert (=> b!1377004 (= lt!605635 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605636 () array!93493)

(assert (=> b!1377004 (= lt!605640 (arrayCountValidKeys!0 lt!605636 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377004 (= lt!605636 (array!93494 (store (arr!45145 a!4032) i!1445 k!2947) (size!45696 a!4032)))))

(declare-fun b!1377005 () Bool)

(declare-datatypes ((Unit!45605 0))(
  ( (Unit!45606) )
))
(declare-fun e!780036 () Unit!45605)

(declare-fun lt!605639 () Unit!45605)

(assert (=> b!1377005 (= e!780036 lt!605639)))

(declare-fun lt!605638 () Unit!45605)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93493 (_ BitVec 32) (_ BitVec 32)) Unit!45605)

(assert (=> b!1377005 (= lt!605638 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377005 (= call!65928 lt!605635)))

(assert (=> b!1377005 (= lt!605639 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605636 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65927 () (_ BitVec 32))

(assert (=> b!1377005 (= call!65927 lt!605640)))

(declare-fun bm!65925 () Bool)

(assert (=> bm!65925 (= call!65927 (arrayCountValidKeys!0 lt!605636 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377006 () Bool)

(declare-fun lt!605641 () Unit!45605)

(assert (=> b!1377006 (= e!780036 lt!605641)))

(declare-fun lt!605634 () Unit!45605)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93493 (_ BitVec 32) (_ BitVec 32)) Unit!45605)

(assert (=> b!1377006 (= lt!605634 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377006 (= call!65928 (bvadd #b00000000000000000000000000000001 lt!605635))))

(assert (=> b!1377006 (= lt!605641 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605636 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377006 (= call!65927 (bvadd #b00000000000000000000000000000001 lt!605640))))

(declare-fun res!919926 () Bool)

(assert (=> start!116906 (=> (not res!919926) (not e!780038))))

(assert (=> start!116906 (= res!919926 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45696 a!4032))))))

(assert (=> start!116906 e!780038))

(assert (=> start!116906 true))

(declare-fun array_inv!34090 (array!93493) Bool)

(assert (=> start!116906 (array_inv!34090 a!4032)))

(declare-fun b!1377007 () Bool)

(assert (=> b!1377007 (= e!780037 (or (bvslt (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) (size!45696 a!4032)) (bvsle (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605637 () Unit!45605)

(assert (=> b!1377007 (= lt!605637 e!780036)))

(declare-fun c!127982 () Bool)

(assert (=> b!1377007 (= c!127982 (validKeyInArray!0 (select (arr!45145 a!4032) to!206)))))

(assert (= (and start!116906 res!919926) b!1377001))

(assert (= (and b!1377001 res!919922) b!1377003))

(assert (= (and b!1377003 res!919924) b!1377002))

(assert (= (and b!1377002 res!919925) b!1377004))

(assert (= (and b!1377004 res!919923) b!1377007))

(assert (= (and b!1377007 c!127982) b!1377006))

(assert (= (and b!1377007 (not c!127982)) b!1377005))

(assert (= (or b!1377006 b!1377005) bm!65925))

(assert (= (or b!1377006 b!1377005) bm!65924))

(declare-fun m!1261259 () Bool)

(assert (=> b!1377007 m!1261259))

(assert (=> b!1377007 m!1261259))

(declare-fun m!1261261 () Bool)

(assert (=> b!1377007 m!1261261))

(declare-fun m!1261263 () Bool)

(assert (=> b!1377001 m!1261263))

(assert (=> b!1377001 m!1261263))

(declare-fun m!1261265 () Bool)

(assert (=> b!1377001 m!1261265))

(declare-fun m!1261267 () Bool)

(assert (=> b!1377003 m!1261267))

(declare-fun m!1261269 () Bool)

(assert (=> start!116906 m!1261269))

(declare-fun m!1261271 () Bool)

(assert (=> bm!65925 m!1261271))

(declare-fun m!1261273 () Bool)

(assert (=> b!1377006 m!1261273))

(declare-fun m!1261275 () Bool)

(assert (=> b!1377006 m!1261275))

(declare-fun m!1261277 () Bool)

(assert (=> bm!65924 m!1261277))

(declare-fun m!1261279 () Bool)

(assert (=> b!1377005 m!1261279))

(declare-fun m!1261281 () Bool)

(assert (=> b!1377005 m!1261281))

(declare-fun m!1261283 () Bool)

(assert (=> b!1377004 m!1261283))

(declare-fun m!1261285 () Bool)

(assert (=> b!1377004 m!1261285))

(declare-fun m!1261287 () Bool)

(assert (=> b!1377004 m!1261287))

(push 1)

(assert (not b!1377001))

(assert (not b!1377004))

(assert (not start!116906))

(assert (not b!1377003))

(assert (not b!1377006))

(assert (not b!1377005))

(assert (not bm!65924))

(assert (not bm!65925))

(assert (not b!1377007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

