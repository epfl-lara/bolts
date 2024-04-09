; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117590 () Bool)

(assert start!117590)

(declare-fun b!1380476 () Bool)

(declare-fun e!782294 () Bool)

(assert (=> b!1380476 (= e!782294 (not true))))

(declare-fun e!782293 () Bool)

(assert (=> b!1380476 e!782293))

(declare-fun c!128378 () Bool)

(declare-datatypes ((array!94024 0))(
  ( (array!94025 (arr!45400 (Array (_ BitVec 32) (_ BitVec 64))) (size!45951 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94024)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380476 (= c!128378 (validKeyInArray!0 (select (arr!45400 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((Unit!45929 0))(
  ( (Unit!45930) )
))
(declare-fun lt!607945 () Unit!45929)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94024 (_ BitVec 32) (_ BitVec 32)) Unit!45929)

(assert (=> b!1380476 (= lt!607945 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66284 () Bool)

(declare-fun call!66287 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94024 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66284 (= call!66287 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380477 () Bool)

(declare-fun call!66288 () (_ BitVec 32))

(assert (=> b!1380477 (= e!782293 (= (bvadd #b00000000000000000000000000000001 call!66287) call!66288))))

(declare-fun b!1380478 () Bool)

(assert (=> b!1380478 (= e!782293 (= call!66287 call!66288))))

(declare-fun bm!66285 () Bool)

(assert (=> bm!66285 (= call!66288 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922605 () Bool)

(assert (=> start!117590 (=> (not res!922605) (not e!782294))))

(assert (=> start!117590 (= res!922605 (and (bvslt (size!45951 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45951 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117590 e!782294))

(declare-fun array_inv!34345 (array!94024) Bool)

(assert (=> start!117590 (array_inv!34345 a!3931)))

(assert (=> start!117590 true))

(assert (= (and start!117590 res!922605) b!1380476))

(assert (= (and b!1380476 c!128378) b!1380477))

(assert (= (and b!1380476 (not c!128378)) b!1380478))

(assert (= (or b!1380477 b!1380478) bm!66285))

(assert (= (or b!1380477 b!1380478) bm!66284))

(declare-fun m!1265721 () Bool)

(assert (=> b!1380476 m!1265721))

(assert (=> b!1380476 m!1265721))

(declare-fun m!1265723 () Bool)

(assert (=> b!1380476 m!1265723))

(declare-fun m!1265725 () Bool)

(assert (=> b!1380476 m!1265725))

(declare-fun m!1265727 () Bool)

(assert (=> bm!66284 m!1265727))

(declare-fun m!1265729 () Bool)

(assert (=> bm!66285 m!1265729))

(declare-fun m!1265731 () Bool)

(assert (=> start!117590 m!1265731))

(push 1)

(assert (not start!117590))

(assert (not bm!66284))

(assert (not b!1380476))

(assert (not bm!66285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

