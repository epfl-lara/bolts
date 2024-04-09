; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117666 () Bool)

(assert start!117666)

(declare-fun res!922728 () Bool)

(declare-fun e!782546 () Bool)

(assert (=> start!117666 (=> (not res!922728) (not e!782546))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94100 0))(
  ( (array!94101 (arr!45438 (Array (_ BitVec 32) (_ BitVec 64))) (size!45989 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94100)

(assert (=> start!117666 (= res!922728 (and (bvslt (size!45989 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45989 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117666 e!782546))

(declare-fun array_inv!34383 (array!94100) Bool)

(assert (=> start!117666 (array_inv!34383 a!3931)))

(assert (=> start!117666 true))

(declare-fun b!1380701 () Bool)

(assert (=> b!1380701 (= e!782546 (not (bvsge (bvsub to!105 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!782545 () Bool)

(assert (=> b!1380701 e!782545))

(declare-fun c!128429 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380701 (= c!128429 (validKeyInArray!0 (select (arr!45438 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45963 0))(
  ( (Unit!45964) )
))
(declare-fun lt!608014 () Unit!45963)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94100 (_ BitVec 32) (_ BitVec 32)) Unit!45963)

(assert (=> b!1380701 (= lt!608014 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66386 () Bool)

(declare-fun call!66389 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94100 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66386 (= call!66389 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380702 () Bool)

(declare-fun call!66390 () (_ BitVec 32))

(assert (=> b!1380702 (= e!782545 (= call!66390 call!66389))))

(declare-fun bm!66387 () Bool)

(assert (=> bm!66387 (= call!66390 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380703 () Bool)

(assert (=> b!1380703 (= e!782545 (= (bvadd #b00000000000000000000000000000001 call!66390) call!66389))))

(assert (= (and start!117666 res!922728) b!1380701))

(assert (= (and b!1380701 c!128429) b!1380703))

(assert (= (and b!1380701 (not c!128429)) b!1380702))

(assert (= (or b!1380703 b!1380702) bm!66386))

(assert (= (or b!1380703 b!1380702) bm!66387))

(declare-fun m!1266015 () Bool)

(assert (=> start!117666 m!1266015))

(declare-fun m!1266017 () Bool)

(assert (=> b!1380701 m!1266017))

(assert (=> b!1380701 m!1266017))

(declare-fun m!1266019 () Bool)

(assert (=> b!1380701 m!1266019))

(declare-fun m!1266021 () Bool)

(assert (=> b!1380701 m!1266021))

(declare-fun m!1266023 () Bool)

(assert (=> bm!66386 m!1266023))

(declare-fun m!1266025 () Bool)

(assert (=> bm!66387 m!1266025))

(push 1)

(assert (not start!117666))

(assert (not bm!66386))

(assert (not b!1380701))

(assert (not bm!66387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

