; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117602 () Bool)

(assert start!117602)

(declare-fun b!1380530 () Bool)

(declare-fun e!782348 () Bool)

(declare-fun call!66324 () (_ BitVec 32))

(declare-fun call!66323 () (_ BitVec 32))

(assert (=> b!1380530 (= e!782348 (= (bvadd #b00000000000000000000000000000001 call!66324) call!66323))))

(declare-fun res!922623 () Bool)

(declare-fun e!782346 () Bool)

(assert (=> start!117602 (=> (not res!922623) (not e!782346))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94036 0))(
  ( (array!94037 (arr!45406 (Array (_ BitVec 32) (_ BitVec 64))) (size!45957 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94036)

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117602 (= res!922623 (and (bvslt (size!45957 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45957 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117602 e!782346))

(declare-fun array_inv!34351 (array!94036) Bool)

(assert (=> start!117602 (array_inv!34351 a!3931)))

(assert (=> start!117602 true))

(declare-fun bm!66320 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94036 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66320 (= call!66323 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380531 () Bool)

(assert (=> b!1380531 (= e!782346 (not true))))

(assert (=> b!1380531 e!782348))

(declare-fun c!128396 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380531 (= c!128396 (validKeyInArray!0 (select (arr!45406 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45941 0))(
  ( (Unit!45942) )
))
(declare-fun lt!607972 () Unit!45941)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94036 (_ BitVec 32) (_ BitVec 32)) Unit!45941)

(assert (=> b!1380531 (= lt!607972 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66321 () Bool)

(assert (=> bm!66321 (= call!66324 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380532 () Bool)

(assert (=> b!1380532 (= e!782348 (= call!66324 call!66323))))

(assert (= (and start!117602 res!922623) b!1380531))

(assert (= (and b!1380531 c!128396) b!1380530))

(assert (= (and b!1380531 (not c!128396)) b!1380532))

(assert (= (or b!1380530 b!1380532) bm!66320))

(assert (= (or b!1380530 b!1380532) bm!66321))

(declare-fun m!1265793 () Bool)

(assert (=> start!117602 m!1265793))

(declare-fun m!1265795 () Bool)

(assert (=> bm!66320 m!1265795))

(declare-fun m!1265797 () Bool)

(assert (=> b!1380531 m!1265797))

(assert (=> b!1380531 m!1265797))

(declare-fun m!1265799 () Bool)

(assert (=> b!1380531 m!1265799))

(declare-fun m!1265801 () Bool)

(assert (=> b!1380531 m!1265801))

(declare-fun m!1265803 () Bool)

(assert (=> bm!66321 m!1265803))

(push 1)

(assert (not bm!66321))

(assert (not start!117602))

(assert (not b!1380531))

(assert (not bm!66320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

