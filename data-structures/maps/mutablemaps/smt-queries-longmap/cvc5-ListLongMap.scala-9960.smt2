; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117662 () Bool)

(assert start!117662)

(declare-fun res!922722 () Bool)

(declare-fun e!782526 () Bool)

(assert (=> start!117662 (=> (not res!922722) (not e!782526))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94096 0))(
  ( (array!94097 (arr!45436 (Array (_ BitVec 32) (_ BitVec 64))) (size!45987 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94096)

(assert (=> start!117662 (= res!922722 (and (bvslt (size!45987 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45987 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117662 e!782526))

(declare-fun array_inv!34381 (array!94096) Bool)

(assert (=> start!117662 (array_inv!34381 a!3931)))

(assert (=> start!117662 true))

(declare-fun b!1380683 () Bool)

(assert (=> b!1380683 (= e!782526 (not (bvsge (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!782528 () Bool)

(assert (=> b!1380683 e!782528))

(declare-fun c!128423 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380683 (= c!128423 (validKeyInArray!0 (select (arr!45436 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45959 0))(
  ( (Unit!45960) )
))
(declare-fun lt!608008 () Unit!45959)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94096 (_ BitVec 32) (_ BitVec 32)) Unit!45959)

(assert (=> b!1380683 (= lt!608008 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380684 () Bool)

(declare-fun call!66377 () (_ BitVec 32))

(declare-fun call!66378 () (_ BitVec 32))

(assert (=> b!1380684 (= e!782528 (= call!66377 call!66378))))

(declare-fun bm!66374 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94096 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66374 (= call!66378 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380685 () Bool)

(assert (=> b!1380685 (= e!782528 (= (bvadd #b00000000000000000000000000000001 call!66377) call!66378))))

(declare-fun bm!66375 () Bool)

(assert (=> bm!66375 (= call!66377 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and start!117662 res!922722) b!1380683))

(assert (= (and b!1380683 c!128423) b!1380685))

(assert (= (and b!1380683 (not c!128423)) b!1380684))

(assert (= (or b!1380685 b!1380684) bm!66374))

(assert (= (or b!1380685 b!1380684) bm!66375))

(declare-fun m!1265991 () Bool)

(assert (=> start!117662 m!1265991))

(declare-fun m!1265993 () Bool)

(assert (=> b!1380683 m!1265993))

(assert (=> b!1380683 m!1265993))

(declare-fun m!1265995 () Bool)

(assert (=> b!1380683 m!1265995))

(declare-fun m!1265997 () Bool)

(assert (=> b!1380683 m!1265997))

(declare-fun m!1265999 () Bool)

(assert (=> bm!66374 m!1265999))

(declare-fun m!1266001 () Bool)

(assert (=> bm!66375 m!1266001))

(push 1)

(assert (not b!1380683))

(assert (not bm!66375))

(assert (not bm!66374))

(assert (not start!117662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

