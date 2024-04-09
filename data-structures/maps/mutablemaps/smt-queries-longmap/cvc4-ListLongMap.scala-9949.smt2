; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117600 () Bool)

(assert start!117600)

(declare-fun bm!66314 () Bool)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun call!66317 () (_ BitVec 32))

(declare-datatypes ((array!94034 0))(
  ( (array!94035 (arr!45405 (Array (_ BitVec 32) (_ BitVec 64))) (size!45956 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94034)

(declare-fun arrayCountValidKeys!0 (array!94034 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66314 (= call!66317 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66315 () Bool)

(declare-fun call!66318 () (_ BitVec 32))

(assert (=> bm!66315 (= call!66318 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun lt!607969 () Bool)

(declare-fun e!782339 () Bool)

(declare-fun b!1380521 () Bool)

(assert (=> b!1380521 (= e!782339 (not (or lt!607969 (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45956 a!3931)))))))

(declare-fun e!782337 () Bool)

(assert (=> b!1380521 e!782337))

(declare-fun c!128393 () Bool)

(assert (=> b!1380521 (= c!128393 lt!607969)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380521 (= lt!607969 (validKeyInArray!0 (select (arr!45405 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45939 0))(
  ( (Unit!45940) )
))
(declare-fun lt!607968 () Unit!45939)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94034 (_ BitVec 32) (_ BitVec 32)) Unit!45939)

(assert (=> b!1380521 (= lt!607968 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380522 () Bool)

(assert (=> b!1380522 (= e!782337 (= call!66318 call!66317))))

(declare-fun b!1380523 () Bool)

(assert (=> b!1380523 (= e!782337 (= (bvadd #b00000000000000000000000000000001 call!66318) call!66317))))

(declare-fun res!922620 () Bool)

(assert (=> start!117600 (=> (not res!922620) (not e!782339))))

(assert (=> start!117600 (= res!922620 (and (bvslt (size!45956 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45956 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117600 e!782339))

(declare-fun array_inv!34350 (array!94034) Bool)

(assert (=> start!117600 (array_inv!34350 a!3931)))

(assert (=> start!117600 true))

(assert (= (and start!117600 res!922620) b!1380521))

(assert (= (and b!1380521 c!128393) b!1380523))

(assert (= (and b!1380521 (not c!128393)) b!1380522))

(assert (= (or b!1380523 b!1380522) bm!66314))

(assert (= (or b!1380523 b!1380522) bm!66315))

(declare-fun m!1265781 () Bool)

(assert (=> bm!66314 m!1265781))

(declare-fun m!1265783 () Bool)

(assert (=> bm!66315 m!1265783))

(declare-fun m!1265785 () Bool)

(assert (=> b!1380521 m!1265785))

(assert (=> b!1380521 m!1265785))

(declare-fun m!1265787 () Bool)

(assert (=> b!1380521 m!1265787))

(declare-fun m!1265789 () Bool)

(assert (=> b!1380521 m!1265789))

(declare-fun m!1265791 () Bool)

(assert (=> start!117600 m!1265791))

(push 1)

(assert (not b!1380521))

(assert (not bm!66315))

(assert (not bm!66314))

(assert (not start!117600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

