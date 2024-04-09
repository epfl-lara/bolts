; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117604 () Bool)

(assert start!117604)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun call!66330 () (_ BitVec 32))

(declare-fun bm!66326 () Bool)

(declare-datatypes ((array!94038 0))(
  ( (array!94039 (arr!45407 (Array (_ BitVec 32) (_ BitVec 64))) (size!45958 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94038)

(declare-fun arrayCountValidKeys!0 (array!94038 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66326 (= call!66330 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922626 () Bool)

(declare-fun e!782356 () Bool)

(assert (=> start!117604 (=> (not res!922626) (not e!782356))))

(assert (=> start!117604 (= res!922626 (and (bvslt (size!45958 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45958 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117604 e!782356))

(declare-fun array_inv!34352 (array!94038) Bool)

(assert (=> start!117604 (array_inv!34352 a!3931)))

(assert (=> start!117604 true))

(declare-fun b!1380539 () Bool)

(declare-fun e!782355 () Bool)

(declare-fun call!66329 () (_ BitVec 32))

(assert (=> b!1380539 (= e!782355 (= (bvadd #b00000000000000000000000000000001 call!66330) call!66329))))

(declare-fun b!1380540 () Bool)

(assert (=> b!1380540 (= e!782355 (= call!66330 call!66329))))

(declare-fun b!1380541 () Bool)

(assert (=> b!1380541 (= e!782356 (not true))))

(assert (=> b!1380541 e!782355))

(declare-fun c!128399 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380541 (= c!128399 (validKeyInArray!0 (select (arr!45407 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45943 0))(
  ( (Unit!45944) )
))
(declare-fun lt!607975 () Unit!45943)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94038 (_ BitVec 32) (_ BitVec 32)) Unit!45943)

(assert (=> b!1380541 (= lt!607975 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66327 () Bool)

(assert (=> bm!66327 (= call!66329 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117604 res!922626) b!1380541))

(assert (= (and b!1380541 c!128399) b!1380539))

(assert (= (and b!1380541 (not c!128399)) b!1380540))

(assert (= (or b!1380539 b!1380540) bm!66327))

(assert (= (or b!1380539 b!1380540) bm!66326))

(declare-fun m!1265805 () Bool)

(assert (=> bm!66326 m!1265805))

(declare-fun m!1265807 () Bool)

(assert (=> start!117604 m!1265807))

(declare-fun m!1265809 () Bool)

(assert (=> b!1380541 m!1265809))

(assert (=> b!1380541 m!1265809))

(declare-fun m!1265811 () Bool)

(assert (=> b!1380541 m!1265811))

(declare-fun m!1265813 () Bool)

(assert (=> b!1380541 m!1265813))

(declare-fun m!1265815 () Bool)

(assert (=> bm!66327 m!1265815))

(check-sat (not bm!66327) (not b!1380541) (not start!117604) (not bm!66326))
