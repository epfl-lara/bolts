; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117614 () Bool)

(assert start!117614)

(declare-fun b!1380584 () Bool)

(declare-fun e!782400 () Bool)

(declare-fun call!66360 () (_ BitVec 32))

(declare-fun call!66359 () (_ BitVec 32))

(assert (=> b!1380584 (= e!782400 (= (bvadd #b00000000000000000000000000000001 call!66360) call!66359))))

(declare-fun res!922641 () Bool)

(declare-fun e!782401 () Bool)

(assert (=> start!117614 (=> (not res!922641) (not e!782401))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94048 0))(
  ( (array!94049 (arr!45412 (Array (_ BitVec 32) (_ BitVec 64))) (size!45963 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94048)

(assert (=> start!117614 (= res!922641 (and (bvslt (size!45963 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45963 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117614 e!782401))

(declare-fun array_inv!34357 (array!94048) Bool)

(assert (=> start!117614 (array_inv!34357 a!3931)))

(assert (=> start!117614 true))

(declare-fun bm!66356 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94048 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66356 (= call!66359 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380585 () Bool)

(assert (=> b!1380585 (= e!782400 (= call!66360 call!66359))))

(declare-fun b!1380586 () Bool)

(assert (=> b!1380586 (= e!782401 (not true))))

(assert (=> b!1380586 e!782400))

(declare-fun c!128414 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380586 (= c!128414 (validKeyInArray!0 (select (arr!45412 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45953 0))(
  ( (Unit!45954) )
))
(declare-fun lt!607999 () Unit!45953)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94048 (_ BitVec 32) (_ BitVec 32)) Unit!45953)

(assert (=> b!1380586 (= lt!607999 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66357 () Bool)

(assert (=> bm!66357 (= call!66360 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and start!117614 res!922641) b!1380586))

(assert (= (and b!1380586 c!128414) b!1380584))

(assert (= (and b!1380586 (not c!128414)) b!1380585))

(assert (= (or b!1380584 b!1380585) bm!66356))

(assert (= (or b!1380584 b!1380585) bm!66357))

(declare-fun m!1265865 () Bool)

(assert (=> start!117614 m!1265865))

(declare-fun m!1265867 () Bool)

(assert (=> bm!66356 m!1265867))

(declare-fun m!1265869 () Bool)

(assert (=> b!1380586 m!1265869))

(assert (=> b!1380586 m!1265869))

(declare-fun m!1265871 () Bool)

(assert (=> b!1380586 m!1265871))

(declare-fun m!1265873 () Bool)

(assert (=> b!1380586 m!1265873))

(declare-fun m!1265875 () Bool)

(assert (=> bm!66357 m!1265875))

(push 1)

(assert (not start!117614))

(assert (not b!1380586))

(assert (not bm!66356))

(assert (not bm!66357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

