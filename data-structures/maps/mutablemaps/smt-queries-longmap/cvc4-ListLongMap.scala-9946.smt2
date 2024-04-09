; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117582 () Bool)

(assert start!117582)

(declare-fun b!1380440 () Bool)

(declare-fun e!782256 () Bool)

(declare-fun call!66263 () (_ BitVec 32))

(declare-fun call!66264 () (_ BitVec 32))

(assert (=> b!1380440 (= e!782256 (= call!66263 call!66264))))

(declare-fun b!1380441 () Bool)

(declare-fun e!782258 () Bool)

(assert (=> b!1380441 (= e!782258 (not true))))

(assert (=> b!1380441 e!782256))

(declare-fun c!128366 () Bool)

(declare-datatypes ((array!94016 0))(
  ( (array!94017 (arr!45396 (Array (_ BitVec 32) (_ BitVec 64))) (size!45947 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94016)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380441 (= c!128366 (validKeyInArray!0 (select (arr!45396 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((Unit!45921 0))(
  ( (Unit!45922) )
))
(declare-fun lt!607924 () Unit!45921)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94016 (_ BitVec 32) (_ BitVec 32)) Unit!45921)

(assert (=> b!1380441 (= lt!607924 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380442 () Bool)

(assert (=> b!1380442 (= e!782256 (= (bvadd #b00000000000000000000000000000001 call!66263) call!66264))))

(declare-fun bm!66260 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94016 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66260 (= call!66263 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66261 () Bool)

(assert (=> bm!66261 (= call!66264 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922593 () Bool)

(assert (=> start!117582 (=> (not res!922593) (not e!782258))))

(assert (=> start!117582 (= res!922593 (and (bvslt (size!45947 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45947 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117582 e!782258))

(declare-fun array_inv!34341 (array!94016) Bool)

(assert (=> start!117582 (array_inv!34341 a!3931)))

(assert (=> start!117582 true))

(assert (= (and start!117582 res!922593) b!1380441))

(assert (= (and b!1380441 c!128366) b!1380442))

(assert (= (and b!1380441 (not c!128366)) b!1380440))

(assert (= (or b!1380442 b!1380440) bm!66261))

(assert (= (or b!1380442 b!1380440) bm!66260))

(declare-fun m!1265673 () Bool)

(assert (=> b!1380441 m!1265673))

(assert (=> b!1380441 m!1265673))

(declare-fun m!1265675 () Bool)

(assert (=> b!1380441 m!1265675))

(declare-fun m!1265677 () Bool)

(assert (=> b!1380441 m!1265677))

(declare-fun m!1265679 () Bool)

(assert (=> bm!66260 m!1265679))

(declare-fun m!1265681 () Bool)

(assert (=> bm!66261 m!1265681))

(declare-fun m!1265683 () Bool)

(assert (=> start!117582 m!1265683))

(push 1)

(assert (not bm!66260))

(assert (not start!117582))

(assert (not b!1380441))

(assert (not bm!66261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

