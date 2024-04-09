; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117606 () Bool)

(assert start!117606)

(declare-fun b!1380548 () Bool)

(declare-fun e!782364 () Bool)

(assert (=> b!1380548 (= e!782364 (not true))))

(declare-fun e!782366 () Bool)

(assert (=> b!1380548 e!782366))

(declare-fun c!128402 () Bool)

(declare-datatypes ((array!94040 0))(
  ( (array!94041 (arr!45408 (Array (_ BitVec 32) (_ BitVec 64))) (size!45959 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94040)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380548 (= c!128402 (validKeyInArray!0 (select (arr!45408 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((Unit!45945 0))(
  ( (Unit!45946) )
))
(declare-fun lt!607978 () Unit!45945)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94040 (_ BitVec 32) (_ BitVec 32)) Unit!45945)

(assert (=> b!1380548 (= lt!607978 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922629 () Bool)

(assert (=> start!117606 (=> (not res!922629) (not e!782364))))

(assert (=> start!117606 (= res!922629 (and (bvslt (size!45959 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45959 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117606 e!782364))

(declare-fun array_inv!34353 (array!94040) Bool)

(assert (=> start!117606 (array_inv!34353 a!3931)))

(assert (=> start!117606 true))

(declare-fun bm!66332 () Bool)

(declare-fun call!66335 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94040 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66332 (= call!66335 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380549 () Bool)

(declare-fun call!66336 () (_ BitVec 32))

(assert (=> b!1380549 (= e!782366 (= (bvadd #b00000000000000000000000000000001 call!66335) call!66336))))

(declare-fun bm!66333 () Bool)

(assert (=> bm!66333 (= call!66336 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380550 () Bool)

(assert (=> b!1380550 (= e!782366 (= call!66335 call!66336))))

(assert (= (and start!117606 res!922629) b!1380548))

(assert (= (and b!1380548 c!128402) b!1380549))

(assert (= (and b!1380548 (not c!128402)) b!1380550))

(assert (= (or b!1380549 b!1380550) bm!66333))

(assert (= (or b!1380549 b!1380550) bm!66332))

(declare-fun m!1265817 () Bool)

(assert (=> b!1380548 m!1265817))

(assert (=> b!1380548 m!1265817))

(declare-fun m!1265819 () Bool)

(assert (=> b!1380548 m!1265819))

(declare-fun m!1265821 () Bool)

(assert (=> b!1380548 m!1265821))

(declare-fun m!1265823 () Bool)

(assert (=> start!117606 m!1265823))

(declare-fun m!1265825 () Bool)

(assert (=> bm!66332 m!1265825))

(declare-fun m!1265827 () Bool)

(assert (=> bm!66333 m!1265827))

(push 1)

(assert (not bm!66333))

(assert (not start!117606))

(assert (not bm!66332))

(assert (not b!1380548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

