; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117588 () Bool)

(assert start!117588)

(declare-fun res!922602 () Bool)

(declare-fun e!782284 () Bool)

(assert (=> start!117588 (=> (not res!922602) (not e!782284))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94022 0))(
  ( (array!94023 (arr!45399 (Array (_ BitVec 32) (_ BitVec 64))) (size!45950 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94022)

(assert (=> start!117588 (= res!922602 (and (bvslt (size!45950 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45950 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117588 e!782284))

(declare-fun array_inv!34344 (array!94022) Bool)

(assert (=> start!117588 (array_inv!34344 a!3931)))

(assert (=> start!117588 true))

(declare-fun call!66281 () (_ BitVec 32))

(declare-fun bm!66278 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94022 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66278 (= call!66281 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66279 () Bool)

(declare-fun call!66282 () (_ BitVec 32))

(assert (=> bm!66279 (= call!66282 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380467 () Bool)

(declare-fun e!782283 () Bool)

(assert (=> b!1380467 (= e!782283 (= call!66281 call!66282))))

(declare-fun b!1380468 () Bool)

(declare-fun lt!607941 () Bool)

(assert (=> b!1380468 (= e!782284 (not (or (not lt!607941) (bvsle from!3309 to!105))))))

(assert (=> b!1380468 e!782283))

(declare-fun c!128375 () Bool)

(assert (=> b!1380468 (= c!128375 lt!607941)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380468 (= lt!607941 (validKeyInArray!0 (select (arr!45399 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45927 0))(
  ( (Unit!45928) )
))
(declare-fun lt!607942 () Unit!45927)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94022 (_ BitVec 32) (_ BitVec 32)) Unit!45927)

(assert (=> b!1380468 (= lt!607942 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380469 () Bool)

(assert (=> b!1380469 (= e!782283 (= (bvadd #b00000000000000000000000000000001 call!66281) call!66282))))

(assert (= (and start!117588 res!922602) b!1380468))

(assert (= (and b!1380468 c!128375) b!1380469))

(assert (= (and b!1380468 (not c!128375)) b!1380467))

(assert (= (or b!1380469 b!1380467) bm!66279))

(assert (= (or b!1380469 b!1380467) bm!66278))

(declare-fun m!1265709 () Bool)

(assert (=> start!117588 m!1265709))

(declare-fun m!1265711 () Bool)

(assert (=> bm!66278 m!1265711))

(declare-fun m!1265713 () Bool)

(assert (=> bm!66279 m!1265713))

(declare-fun m!1265715 () Bool)

(assert (=> b!1380468 m!1265715))

(assert (=> b!1380468 m!1265715))

(declare-fun m!1265717 () Bool)

(assert (=> b!1380468 m!1265717))

(declare-fun m!1265719 () Bool)

(assert (=> b!1380468 m!1265719))

(push 1)

(assert (not start!117588))

(assert (not b!1380468))

(assert (not bm!66279))

(assert (not bm!66278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

