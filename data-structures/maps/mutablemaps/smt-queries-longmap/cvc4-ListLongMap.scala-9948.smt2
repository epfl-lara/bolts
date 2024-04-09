; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117594 () Bool)

(assert start!117594)

(declare-fun res!922611 () Bool)

(declare-fun e!782310 () Bool)

(assert (=> start!117594 (=> (not res!922611) (not e!782310))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94028 0))(
  ( (array!94029 (arr!45402 (Array (_ BitVec 32) (_ BitVec 64))) (size!45953 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94028)

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117594 (= res!922611 (and (bvslt (size!45953 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45953 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117594 e!782310))

(declare-fun array_inv!34347 (array!94028) Bool)

(assert (=> start!117594 (array_inv!34347 a!3931)))

(assert (=> start!117594 true))

(declare-fun bm!66296 () Bool)

(declare-fun call!66300 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94028 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66296 (= call!66300 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380494 () Bool)

(declare-fun e!782312 () Bool)

(declare-fun call!66299 () (_ BitVec 32))

(assert (=> b!1380494 (= e!782312 (= call!66299 call!66300))))

(declare-fun b!1380495 () Bool)

(assert (=> b!1380495 (= e!782312 (= (bvadd #b00000000000000000000000000000001 call!66299) call!66300))))

(declare-fun bm!66297 () Bool)

(assert (=> bm!66297 (= call!66299 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380496 () Bool)

(assert (=> b!1380496 (= e!782310 (not true))))

(assert (=> b!1380496 e!782312))

(declare-fun c!128384 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380496 (= c!128384 (validKeyInArray!0 (select (arr!45402 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45933 0))(
  ( (Unit!45934) )
))
(declare-fun lt!607951 () Unit!45933)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94028 (_ BitVec 32) (_ BitVec 32)) Unit!45933)

(assert (=> b!1380496 (= lt!607951 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117594 res!922611) b!1380496))

(assert (= (and b!1380496 c!128384) b!1380495))

(assert (= (and b!1380496 (not c!128384)) b!1380494))

(assert (= (or b!1380495 b!1380494) bm!66296))

(assert (= (or b!1380495 b!1380494) bm!66297))

(declare-fun m!1265745 () Bool)

(assert (=> start!117594 m!1265745))

(declare-fun m!1265747 () Bool)

(assert (=> bm!66296 m!1265747))

(declare-fun m!1265749 () Bool)

(assert (=> bm!66297 m!1265749))

(declare-fun m!1265751 () Bool)

(assert (=> b!1380496 m!1265751))

(assert (=> b!1380496 m!1265751))

(declare-fun m!1265753 () Bool)

(assert (=> b!1380496 m!1265753))

(declare-fun m!1265755 () Bool)

(assert (=> b!1380496 m!1265755))

(push 1)

(assert (not bm!66296))

(assert (not b!1380496))

(assert (not bm!66297))

(assert (not start!117594))

(check-sat)

