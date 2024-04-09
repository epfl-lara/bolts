; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117576 () Bool)

(assert start!117576)

(declare-fun call!66245 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66242 () Bool)

(declare-datatypes ((array!94010 0))(
  ( (array!94011 (arr!45393 (Array (_ BitVec 32) (_ BitVec 64))) (size!45944 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94010)

(declare-fun arrayCountValidKeys!0 (array!94010 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66242 (= call!66245 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun call!66246 () (_ BitVec 32))

(declare-fun bm!66243 () Bool)

(assert (=> bm!66243 (= call!66246 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380413 () Bool)

(declare-fun e!782231 () Bool)

(assert (=> b!1380413 (= e!782231 (= (bvadd #b00000000000000000000000000000001 call!66246) call!66245))))

(declare-fun b!1380414 () Bool)

(assert (=> b!1380414 (= e!782231 (= call!66246 call!66245))))

(declare-fun lt!607914 () Bool)

(declare-fun b!1380415 () Bool)

(declare-fun e!782229 () Bool)

(assert (=> b!1380415 (= e!782229 (not (or (not lt!607914) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45944 a!3931)))))))

(assert (=> b!1380415 e!782231))

(declare-fun c!128357 () Bool)

(assert (=> b!1380415 (= c!128357 lt!607914)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380415 (= lt!607914 (validKeyInArray!0 (select (arr!45393 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45915 0))(
  ( (Unit!45916) )
))
(declare-fun lt!607915 () Unit!45915)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94010 (_ BitVec 32) (_ BitVec 32)) Unit!45915)

(assert (=> b!1380415 (= lt!607915 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922584 () Bool)

(assert (=> start!117576 (=> (not res!922584) (not e!782229))))

(assert (=> start!117576 (= res!922584 (and (bvslt (size!45944 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45944 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117576 e!782229))

(declare-fun array_inv!34338 (array!94010) Bool)

(assert (=> start!117576 (array_inv!34338 a!3931)))

(assert (=> start!117576 true))

(assert (= (and start!117576 res!922584) b!1380415))

(assert (= (and b!1380415 c!128357) b!1380413))

(assert (= (and b!1380415 (not c!128357)) b!1380414))

(assert (= (or b!1380413 b!1380414) bm!66242))

(assert (= (or b!1380413 b!1380414) bm!66243))

(declare-fun m!1265637 () Bool)

(assert (=> bm!66242 m!1265637))

(declare-fun m!1265639 () Bool)

(assert (=> bm!66243 m!1265639))

(declare-fun m!1265641 () Bool)

(assert (=> b!1380415 m!1265641))

(assert (=> b!1380415 m!1265641))

(declare-fun m!1265643 () Bool)

(assert (=> b!1380415 m!1265643))

(declare-fun m!1265645 () Bool)

(assert (=> b!1380415 m!1265645))

(declare-fun m!1265647 () Bool)

(assert (=> start!117576 m!1265647))

(push 1)

(assert (not bm!66243))

(assert (not bm!66242))

(assert (not start!117576))

(assert (not b!1380415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

