; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117584 () Bool)

(assert start!117584)

(declare-fun res!922596 () Bool)

(declare-fun e!782267 () Bool)

(assert (=> start!117584 (=> (not res!922596) (not e!782267))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94018 0))(
  ( (array!94019 (arr!45397 (Array (_ BitVec 32) (_ BitVec 64))) (size!45948 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94018)

(assert (=> start!117584 (= res!922596 (and (bvslt (size!45948 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45948 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117584 e!782267))

(declare-fun array_inv!34342 (array!94018) Bool)

(assert (=> start!117584 (array_inv!34342 a!3931)))

(assert (=> start!117584 true))

(declare-fun lt!607929 () Bool)

(declare-fun b!1380449 () Bool)

(assert (=> b!1380449 (= e!782267 (not (or (not lt!607929) (bvsle from!3309 to!105))))))

(declare-fun e!782265 () Bool)

(assert (=> b!1380449 e!782265))

(declare-fun c!128369 () Bool)

(assert (=> b!1380449 (= c!128369 lt!607929)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380449 (= lt!607929 (validKeyInArray!0 (select (arr!45397 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45923 0))(
  ( (Unit!45924) )
))
(declare-fun lt!607930 () Unit!45923)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94018 (_ BitVec 32) (_ BitVec 32)) Unit!45923)

(assert (=> b!1380449 (= lt!607930 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66266 () Bool)

(declare-fun call!66270 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94018 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66266 (= call!66270 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun call!66269 () (_ BitVec 32))

(declare-fun bm!66267 () Bool)

(assert (=> bm!66267 (= call!66269 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380450 () Bool)

(assert (=> b!1380450 (= e!782265 (= call!66269 call!66270))))

(declare-fun b!1380451 () Bool)

(assert (=> b!1380451 (= e!782265 (= (bvadd #b00000000000000000000000000000001 call!66269) call!66270))))

(assert (= (and start!117584 res!922596) b!1380449))

(assert (= (and b!1380449 c!128369) b!1380451))

(assert (= (and b!1380449 (not c!128369)) b!1380450))

(assert (= (or b!1380451 b!1380450) bm!66266))

(assert (= (or b!1380451 b!1380450) bm!66267))

(declare-fun m!1265685 () Bool)

(assert (=> start!117584 m!1265685))

(declare-fun m!1265687 () Bool)

(assert (=> b!1380449 m!1265687))

(assert (=> b!1380449 m!1265687))

(declare-fun m!1265689 () Bool)

(assert (=> b!1380449 m!1265689))

(declare-fun m!1265691 () Bool)

(assert (=> b!1380449 m!1265691))

(declare-fun m!1265693 () Bool)

(assert (=> bm!66266 m!1265693))

(declare-fun m!1265695 () Bool)

(assert (=> bm!66267 m!1265695))

(push 1)

(assert (not bm!66267))

(assert (not bm!66266))

(assert (not b!1380449))

(assert (not start!117584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

