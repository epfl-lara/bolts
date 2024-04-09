; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117608 () Bool)

(assert start!117608)

(declare-fun b!1380557 () Bool)

(declare-fun e!782375 () Bool)

(declare-fun call!66341 () (_ BitVec 32))

(declare-fun call!66342 () (_ BitVec 32))

(assert (=> b!1380557 (= e!782375 (= call!66341 call!66342))))

(declare-fun res!922632 () Bool)

(declare-fun e!782373 () Bool)

(assert (=> start!117608 (=> (not res!922632) (not e!782373))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94042 0))(
  ( (array!94043 (arr!45409 (Array (_ BitVec 32) (_ BitVec 64))) (size!45960 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94042)

(assert (=> start!117608 (= res!922632 (and (bvslt (size!45960 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45960 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117608 e!782373))

(declare-fun array_inv!34354 (array!94042) Bool)

(assert (=> start!117608 (array_inv!34354 a!3931)))

(assert (=> start!117608 true))

(declare-fun bm!66338 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94042 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66338 (= call!66341 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380558 () Bool)

(assert (=> b!1380558 (= e!782375 (= (bvadd #b00000000000000000000000000000001 call!66341) call!66342))))

(declare-fun bm!66339 () Bool)

(assert (=> bm!66339 (= call!66342 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun lt!607984 () Bool)

(declare-fun b!1380559 () Bool)

(assert (=> b!1380559 (= e!782373 (not (or lt!607984 (bvsle from!3309 to!105))))))

(assert (=> b!1380559 e!782375))

(declare-fun c!128405 () Bool)

(assert (=> b!1380559 (= c!128405 lt!607984)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380559 (= lt!607984 (validKeyInArray!0 (select (arr!45409 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45947 0))(
  ( (Unit!45948) )
))
(declare-fun lt!607983 () Unit!45947)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94042 (_ BitVec 32) (_ BitVec 32)) Unit!45947)

(assert (=> b!1380559 (= lt!607983 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117608 res!922632) b!1380559))

(assert (= (and b!1380559 c!128405) b!1380558))

(assert (= (and b!1380559 (not c!128405)) b!1380557))

(assert (= (or b!1380558 b!1380557) bm!66339))

(assert (= (or b!1380558 b!1380557) bm!66338))

(declare-fun m!1265829 () Bool)

(assert (=> start!117608 m!1265829))

(declare-fun m!1265831 () Bool)

(assert (=> bm!66338 m!1265831))

(declare-fun m!1265833 () Bool)

(assert (=> bm!66339 m!1265833))

(declare-fun m!1265835 () Bool)

(assert (=> b!1380559 m!1265835))

(assert (=> b!1380559 m!1265835))

(declare-fun m!1265837 () Bool)

(assert (=> b!1380559 m!1265837))

(declare-fun m!1265839 () Bool)

(assert (=> b!1380559 m!1265839))

(push 1)

(assert (not bm!66339))

(assert (not bm!66338))

(assert (not start!117608))

(assert (not b!1380559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

