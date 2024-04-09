; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117596 () Bool)

(assert start!117596)

(declare-fun b!1380503 () Bool)

(declare-fun e!782321 () Bool)

(declare-fun call!66305 () (_ BitVec 32))

(declare-fun call!66306 () (_ BitVec 32))

(assert (=> b!1380503 (= e!782321 (= call!66305 call!66306))))

(declare-fun res!922614 () Bool)

(declare-fun e!782319 () Bool)

(assert (=> start!117596 (=> (not res!922614) (not e!782319))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94030 0))(
  ( (array!94031 (arr!45403 (Array (_ BitVec 32) (_ BitVec 64))) (size!45954 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94030)

(assert (=> start!117596 (= res!922614 (and (bvslt (size!45954 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45954 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117596 e!782319))

(declare-fun array_inv!34348 (array!94030) Bool)

(assert (=> start!117596 (array_inv!34348 a!3931)))

(assert (=> start!117596 true))

(declare-fun b!1380504 () Bool)

(declare-fun lt!607956 () Bool)

(assert (=> b!1380504 (= e!782319 (not (or lt!607956 (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45954 a!3931)))))))

(assert (=> b!1380504 e!782321))

(declare-fun c!128387 () Bool)

(assert (=> b!1380504 (= c!128387 lt!607956)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380504 (= lt!607956 (validKeyInArray!0 (select (arr!45403 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45935 0))(
  ( (Unit!45936) )
))
(declare-fun lt!607957 () Unit!45935)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94030 (_ BitVec 32) (_ BitVec 32)) Unit!45935)

(assert (=> b!1380504 (= lt!607957 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380505 () Bool)

(assert (=> b!1380505 (= e!782321 (= (bvadd #b00000000000000000000000000000001 call!66305) call!66306))))

(declare-fun bm!66302 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94030 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66302 (= call!66305 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66303 () Bool)

(assert (=> bm!66303 (= call!66306 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117596 res!922614) b!1380504))

(assert (= (and b!1380504 c!128387) b!1380505))

(assert (= (and b!1380504 (not c!128387)) b!1380503))

(assert (= (or b!1380505 b!1380503) bm!66303))

(assert (= (or b!1380505 b!1380503) bm!66302))

(declare-fun m!1265757 () Bool)

(assert (=> start!117596 m!1265757))

(declare-fun m!1265759 () Bool)

(assert (=> b!1380504 m!1265759))

(assert (=> b!1380504 m!1265759))

(declare-fun m!1265761 () Bool)

(assert (=> b!1380504 m!1265761))

(declare-fun m!1265763 () Bool)

(assert (=> b!1380504 m!1265763))

(declare-fun m!1265765 () Bool)

(assert (=> bm!66302 m!1265765))

(declare-fun m!1265767 () Bool)

(assert (=> bm!66303 m!1265767))

(push 1)

(assert (not start!117596))

(assert (not bm!66303))

(assert (not bm!66302))

(assert (not b!1380504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

