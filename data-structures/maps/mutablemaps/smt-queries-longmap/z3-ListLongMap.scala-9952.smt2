; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117616 () Bool)

(assert start!117616)

(declare-fun b!1380593 () Bool)

(declare-fun e!782410 () Bool)

(declare-fun call!66366 () (_ BitVec 32))

(declare-fun call!66365 () (_ BitVec 32))

(assert (=> b!1380593 (= e!782410 (= (bvadd #b00000000000000000000000000000001 call!66366) call!66365))))

(declare-fun b!1380594 () Bool)

(assert (=> b!1380594 (= e!782410 (= call!66366 call!66365))))

(declare-fun b!1380595 () Bool)

(declare-fun e!782411 () Bool)

(assert (=> b!1380595 (= e!782411 (not true))))

(assert (=> b!1380595 e!782410))

(declare-fun c!128417 () Bool)

(declare-datatypes ((array!94050 0))(
  ( (array!94051 (arr!45413 (Array (_ BitVec 32) (_ BitVec 64))) (size!45964 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94050)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380595 (= c!128417 (validKeyInArray!0 (select (arr!45413 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((Unit!45955 0))(
  ( (Unit!45956) )
))
(declare-fun lt!608002 () Unit!45955)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94050 (_ BitVec 32) (_ BitVec 32)) Unit!45955)

(assert (=> b!1380595 (= lt!608002 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922644 () Bool)

(assert (=> start!117616 (=> (not res!922644) (not e!782411))))

(assert (=> start!117616 (= res!922644 (and (bvslt (size!45964 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45964 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117616 e!782411))

(declare-fun array_inv!34358 (array!94050) Bool)

(assert (=> start!117616 (array_inv!34358 a!3931)))

(assert (=> start!117616 true))

(declare-fun bm!66362 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94050 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66362 (= call!66366 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66363 () Bool)

(assert (=> bm!66363 (= call!66365 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117616 res!922644) b!1380595))

(assert (= (and b!1380595 c!128417) b!1380593))

(assert (= (and b!1380595 (not c!128417)) b!1380594))

(assert (= (or b!1380593 b!1380594) bm!66363))

(assert (= (or b!1380593 b!1380594) bm!66362))

(declare-fun m!1265877 () Bool)

(assert (=> b!1380595 m!1265877))

(assert (=> b!1380595 m!1265877))

(declare-fun m!1265879 () Bool)

(assert (=> b!1380595 m!1265879))

(declare-fun m!1265881 () Bool)

(assert (=> b!1380595 m!1265881))

(declare-fun m!1265883 () Bool)

(assert (=> start!117616 m!1265883))

(declare-fun m!1265885 () Bool)

(assert (=> bm!66362 m!1265885))

(declare-fun m!1265887 () Bool)

(assert (=> bm!66363 m!1265887))

(check-sat (not b!1380595) (not bm!66363) (not start!117616) (not bm!66362))
