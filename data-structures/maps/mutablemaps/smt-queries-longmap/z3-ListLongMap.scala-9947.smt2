; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117586 () Bool)

(assert start!117586)

(declare-fun b!1380458 () Bool)

(declare-fun e!782276 () Bool)

(declare-fun call!66276 () (_ BitVec 32))

(declare-fun call!66275 () (_ BitVec 32))

(assert (=> b!1380458 (= e!782276 (= call!66276 call!66275))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66272 () Bool)

(declare-datatypes ((array!94020 0))(
  ( (array!94021 (arr!45398 (Array (_ BitVec 32) (_ BitVec 64))) (size!45949 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94020)

(declare-fun arrayCountValidKeys!0 (array!94020 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66272 (= call!66275 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun lt!607936 () Bool)

(declare-fun e!782274 () Bool)

(declare-fun b!1380459 () Bool)

(assert (=> b!1380459 (= e!782274 (not (or (not lt!607936) (bvsle from!3309 to!105))))))

(assert (=> b!1380459 e!782276))

(declare-fun c!128372 () Bool)

(assert (=> b!1380459 (= c!128372 lt!607936)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380459 (= lt!607936 (validKeyInArray!0 (select (arr!45398 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45925 0))(
  ( (Unit!45926) )
))
(declare-fun lt!607935 () Unit!45925)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94020 (_ BitVec 32) (_ BitVec 32)) Unit!45925)

(assert (=> b!1380459 (= lt!607935 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922599 () Bool)

(assert (=> start!117586 (=> (not res!922599) (not e!782274))))

(assert (=> start!117586 (= res!922599 (and (bvslt (size!45949 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45949 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117586 e!782274))

(declare-fun array_inv!34343 (array!94020) Bool)

(assert (=> start!117586 (array_inv!34343 a!3931)))

(assert (=> start!117586 true))

(declare-fun bm!66273 () Bool)

(assert (=> bm!66273 (= call!66276 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380460 () Bool)

(assert (=> b!1380460 (= e!782276 (= (bvadd #b00000000000000000000000000000001 call!66276) call!66275))))

(assert (= (and start!117586 res!922599) b!1380459))

(assert (= (and b!1380459 c!128372) b!1380460))

(assert (= (and b!1380459 (not c!128372)) b!1380458))

(assert (= (or b!1380460 b!1380458) bm!66272))

(assert (= (or b!1380460 b!1380458) bm!66273))

(declare-fun m!1265697 () Bool)

(assert (=> bm!66272 m!1265697))

(declare-fun m!1265699 () Bool)

(assert (=> b!1380459 m!1265699))

(assert (=> b!1380459 m!1265699))

(declare-fun m!1265701 () Bool)

(assert (=> b!1380459 m!1265701))

(declare-fun m!1265703 () Bool)

(assert (=> b!1380459 m!1265703))

(declare-fun m!1265705 () Bool)

(assert (=> start!117586 m!1265705))

(declare-fun m!1265707 () Bool)

(assert (=> bm!66273 m!1265707))

(check-sat (not bm!66273) (not b!1380459) (not bm!66272) (not start!117586))
(check-sat)
