; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117580 () Bool)

(assert start!117580)

(declare-fun res!922590 () Bool)

(declare-fun e!782248 () Bool)

(assert (=> start!117580 (=> (not res!922590) (not e!782248))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94014 0))(
  ( (array!94015 (arr!45395 (Array (_ BitVec 32) (_ BitVec 64))) (size!45946 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94014)

(assert (=> start!117580 (= res!922590 (and (bvslt (size!45946 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45946 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117580 e!782248))

(declare-fun array_inv!34340 (array!94014) Bool)

(assert (=> start!117580 (array_inv!34340 a!3931)))

(assert (=> start!117580 true))

(declare-fun bm!66254 () Bool)

(declare-fun call!66258 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!94014 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66254 (= call!66258 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380431 () Bool)

(assert (=> b!1380431 (= e!782248 (not true))))

(declare-fun e!782249 () Bool)

(assert (=> b!1380431 e!782249))

(declare-fun c!128363 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380431 (= c!128363 (validKeyInArray!0 (select (arr!45395 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45919 0))(
  ( (Unit!45920) )
))
(declare-fun lt!607921 () Unit!45919)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94014 (_ BitVec 32) (_ BitVec 32)) Unit!45919)

(assert (=> b!1380431 (= lt!607921 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380432 () Bool)

(declare-fun call!66257 () (_ BitVec 32))

(assert (=> b!1380432 (= e!782249 (= call!66258 call!66257))))

(declare-fun b!1380433 () Bool)

(assert (=> b!1380433 (= e!782249 (= (bvadd #b00000000000000000000000000000001 call!66258) call!66257))))

(declare-fun bm!66255 () Bool)

(assert (=> bm!66255 (= call!66257 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117580 res!922590) b!1380431))

(assert (= (and b!1380431 c!128363) b!1380433))

(assert (= (and b!1380431 (not c!128363)) b!1380432))

(assert (= (or b!1380433 b!1380432) bm!66255))

(assert (= (or b!1380433 b!1380432) bm!66254))

(declare-fun m!1265661 () Bool)

(assert (=> start!117580 m!1265661))

(declare-fun m!1265663 () Bool)

(assert (=> bm!66254 m!1265663))

(declare-fun m!1265665 () Bool)

(assert (=> b!1380431 m!1265665))

(assert (=> b!1380431 m!1265665))

(declare-fun m!1265667 () Bool)

(assert (=> b!1380431 m!1265667))

(declare-fun m!1265669 () Bool)

(assert (=> b!1380431 m!1265669))

(declare-fun m!1265671 () Bool)

(assert (=> bm!66255 m!1265671))

(check-sat (not bm!66255) (not start!117580) (not b!1380431) (not bm!66254))
