; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117664 () Bool)

(assert start!117664)

(declare-fun b!1380692 () Bool)

(declare-fun e!782537 () Bool)

(declare-fun call!66384 () (_ BitVec 32))

(declare-fun call!66383 () (_ BitVec 32))

(assert (=> b!1380692 (= e!782537 (= (bvadd #b00000000000000000000000000000001 call!66384) call!66383))))

(declare-fun b!1380693 () Bool)

(assert (=> b!1380693 (= e!782537 (= call!66384 call!66383))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66380 () Bool)

(declare-datatypes ((array!94098 0))(
  ( (array!94099 (arr!45437 (Array (_ BitVec 32) (_ BitVec 64))) (size!45988 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94098)

(declare-fun arrayCountValidKeys!0 (array!94098 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66380 (= call!66383 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380694 () Bool)

(declare-fun e!782535 () Bool)

(assert (=> b!1380694 (= e!782535 (not (bvsge (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1380694 e!782537))

(declare-fun c!128426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380694 (= c!128426 (validKeyInArray!0 (select (arr!45437 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45961 0))(
  ( (Unit!45962) )
))
(declare-fun lt!608011 () Unit!45961)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94098 (_ BitVec 32) (_ BitVec 32)) Unit!45961)

(assert (=> b!1380694 (= lt!608011 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66381 () Bool)

(assert (=> bm!66381 (= call!66384 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922725 () Bool)

(assert (=> start!117664 (=> (not res!922725) (not e!782535))))

(assert (=> start!117664 (= res!922725 (and (bvslt (size!45988 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45988 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117664 e!782535))

(declare-fun array_inv!34382 (array!94098) Bool)

(assert (=> start!117664 (array_inv!34382 a!3931)))

(assert (=> start!117664 true))

(assert (= (and start!117664 res!922725) b!1380694))

(assert (= (and b!1380694 c!128426) b!1380692))

(assert (= (and b!1380694 (not c!128426)) b!1380693))

(assert (= (or b!1380692 b!1380693) bm!66380))

(assert (= (or b!1380692 b!1380693) bm!66381))

(declare-fun m!1266003 () Bool)

(assert (=> bm!66380 m!1266003))

(declare-fun m!1266005 () Bool)

(assert (=> b!1380694 m!1266005))

(assert (=> b!1380694 m!1266005))

(declare-fun m!1266007 () Bool)

(assert (=> b!1380694 m!1266007))

(declare-fun m!1266009 () Bool)

(assert (=> b!1380694 m!1266009))

(declare-fun m!1266011 () Bool)

(assert (=> bm!66381 m!1266011))

(declare-fun m!1266013 () Bool)

(assert (=> start!117664 m!1266013))

(check-sat (not b!1380694) (not bm!66381) (not bm!66380) (not start!117664))
(check-sat)
