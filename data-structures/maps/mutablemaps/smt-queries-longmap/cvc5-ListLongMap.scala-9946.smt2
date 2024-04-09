; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117578 () Bool)

(assert start!117578)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66248 () Bool)

(declare-fun call!66251 () (_ BitVec 32))

(declare-datatypes ((array!94012 0))(
  ( (array!94013 (arr!45394 (Array (_ BitVec 32) (_ BitVec 64))) (size!45945 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94012)

(declare-fun arrayCountValidKeys!0 (array!94012 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66248 (= call!66251 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380422 () Bool)

(declare-fun e!782239 () Bool)

(declare-fun call!66252 () (_ BitVec 32))

(assert (=> b!1380422 (= e!782239 (= (bvadd #b00000000000000000000000000000001 call!66251) call!66252))))

(declare-fun b!1380423 () Bool)

(declare-fun e!782240 () Bool)

(assert (=> b!1380423 (= e!782240 (not true))))

(assert (=> b!1380423 e!782239))

(declare-fun c!128360 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380423 (= c!128360 (validKeyInArray!0 (select (arr!45394 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45917 0))(
  ( (Unit!45918) )
))
(declare-fun lt!607918 () Unit!45917)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94012 (_ BitVec 32) (_ BitVec 32)) Unit!45917)

(assert (=> b!1380423 (= lt!607918 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922587 () Bool)

(assert (=> start!117578 (=> (not res!922587) (not e!782240))))

(assert (=> start!117578 (= res!922587 (and (bvslt (size!45945 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45945 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117578 e!782240))

(declare-fun array_inv!34339 (array!94012) Bool)

(assert (=> start!117578 (array_inv!34339 a!3931)))

(assert (=> start!117578 true))

(declare-fun b!1380424 () Bool)

(assert (=> b!1380424 (= e!782239 (= call!66251 call!66252))))

(declare-fun bm!66249 () Bool)

(assert (=> bm!66249 (= call!66252 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117578 res!922587) b!1380423))

(assert (= (and b!1380423 c!128360) b!1380422))

(assert (= (and b!1380423 (not c!128360)) b!1380424))

(assert (= (or b!1380422 b!1380424) bm!66249))

(assert (= (or b!1380422 b!1380424) bm!66248))

(declare-fun m!1265649 () Bool)

(assert (=> bm!66248 m!1265649))

(declare-fun m!1265651 () Bool)

(assert (=> b!1380423 m!1265651))

(assert (=> b!1380423 m!1265651))

(declare-fun m!1265653 () Bool)

(assert (=> b!1380423 m!1265653))

(declare-fun m!1265655 () Bool)

(assert (=> b!1380423 m!1265655))

(declare-fun m!1265657 () Bool)

(assert (=> start!117578 m!1265657))

(declare-fun m!1265659 () Bool)

(assert (=> bm!66249 m!1265659))

(push 1)

(assert (not bm!66248))

(assert (not bm!66249))

(assert (not start!117578))

(assert (not b!1380423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

