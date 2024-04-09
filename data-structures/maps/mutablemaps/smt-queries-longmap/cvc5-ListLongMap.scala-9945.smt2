; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117572 () Bool)

(assert start!117572)

(declare-fun b!1380395 () Bool)

(declare-fun e!782211 () Bool)

(declare-fun call!66233 () (_ BitVec 32))

(declare-fun call!66234 () (_ BitVec 32))

(assert (=> b!1380395 (= e!782211 (= call!66233 call!66234))))

(declare-fun b!1380396 () Bool)

(assert (=> b!1380396 (= e!782211 (= (bvadd #b00000000000000000000000000000001 call!66233) call!66234))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94006 0))(
  ( (array!94007 (arr!45391 (Array (_ BitVec 32) (_ BitVec 64))) (size!45942 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94006)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun bm!66230 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94006 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66230 (= call!66233 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922578 () Bool)

(declare-fun e!782212 () Bool)

(assert (=> start!117572 (=> (not res!922578) (not e!782212))))

(assert (=> start!117572 (= res!922578 (and (bvslt (size!45942 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45942 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117572 e!782212))

(declare-fun array_inv!34336 (array!94006) Bool)

(assert (=> start!117572 (array_inv!34336 a!3931)))

(assert (=> start!117572 true))

(declare-fun b!1380397 () Bool)

(declare-fun lt!607903 () Bool)

(assert (=> b!1380397 (= e!782212 (not (or (not lt!607903) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45942 a!3931)))))))

(assert (=> b!1380397 e!782211))

(declare-fun c!128351 () Bool)

(assert (=> b!1380397 (= c!128351 lt!607903)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380397 (= lt!607903 (validKeyInArray!0 (select (arr!45391 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45911 0))(
  ( (Unit!45912) )
))
(declare-fun lt!607902 () Unit!45911)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94006 (_ BitVec 32) (_ BitVec 32)) Unit!45911)

(assert (=> b!1380397 (= lt!607902 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66231 () Bool)

(assert (=> bm!66231 (= call!66234 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117572 res!922578) b!1380397))

(assert (= (and b!1380397 c!128351) b!1380396))

(assert (= (and b!1380397 (not c!128351)) b!1380395))

(assert (= (or b!1380396 b!1380395) bm!66231))

(assert (= (or b!1380396 b!1380395) bm!66230))

(declare-fun m!1265613 () Bool)

(assert (=> bm!66230 m!1265613))

(declare-fun m!1265615 () Bool)

(assert (=> start!117572 m!1265615))

(declare-fun m!1265617 () Bool)

(assert (=> b!1380397 m!1265617))

(assert (=> b!1380397 m!1265617))

(declare-fun m!1265619 () Bool)

(assert (=> b!1380397 m!1265619))

(declare-fun m!1265621 () Bool)

(assert (=> b!1380397 m!1265621))

(declare-fun m!1265623 () Bool)

(assert (=> bm!66231 m!1265623))

(push 1)

(assert (not bm!66230))

(assert (not b!1380397))

(assert (not bm!66231))

(assert (not start!117572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

