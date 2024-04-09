; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117574 () Bool)

(assert start!117574)

(declare-fun b!1380404 () Bool)

(declare-fun e!782221 () Bool)

(declare-fun call!66239 () (_ BitVec 32))

(declare-fun call!66240 () (_ BitVec 32))

(assert (=> b!1380404 (= e!782221 (= (bvadd #b00000000000000000000000000000001 call!66239) call!66240))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun lt!607909 () Bool)

(declare-fun b!1380405 () Bool)

(declare-datatypes ((array!94008 0))(
  ( (array!94009 (arr!45392 (Array (_ BitVec 32) (_ BitVec 64))) (size!45943 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94008)

(declare-fun e!782220 () Bool)

(assert (=> b!1380405 (= e!782220 (not (or (not lt!607909) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45943 a!3931)))))))

(assert (=> b!1380405 e!782221))

(declare-fun c!128354 () Bool)

(assert (=> b!1380405 (= c!128354 lt!607909)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380405 (= lt!607909 (validKeyInArray!0 (select (arr!45392 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((Unit!45913 0))(
  ( (Unit!45914) )
))
(declare-fun lt!607908 () Unit!45913)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94008 (_ BitVec 32) (_ BitVec 32)) Unit!45913)

(assert (=> b!1380405 (= lt!607908 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66236 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94008 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66236 (= call!66239 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66237 () Bool)

(assert (=> bm!66237 (= call!66240 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380406 () Bool)

(assert (=> b!1380406 (= e!782221 (= call!66239 call!66240))))

(declare-fun res!922581 () Bool)

(assert (=> start!117574 (=> (not res!922581) (not e!782220))))

(assert (=> start!117574 (= res!922581 (and (bvslt (size!45943 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45943 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117574 e!782220))

(declare-fun array_inv!34337 (array!94008) Bool)

(assert (=> start!117574 (array_inv!34337 a!3931)))

(assert (=> start!117574 true))

(assert (= (and start!117574 res!922581) b!1380405))

(assert (= (and b!1380405 c!128354) b!1380404))

(assert (= (and b!1380405 (not c!128354)) b!1380406))

(assert (= (or b!1380404 b!1380406) bm!66237))

(assert (= (or b!1380404 b!1380406) bm!66236))

(declare-fun m!1265625 () Bool)

(assert (=> b!1380405 m!1265625))

(assert (=> b!1380405 m!1265625))

(declare-fun m!1265627 () Bool)

(assert (=> b!1380405 m!1265627))

(declare-fun m!1265629 () Bool)

(assert (=> b!1380405 m!1265629))

(declare-fun m!1265631 () Bool)

(assert (=> bm!66236 m!1265631))

(declare-fun m!1265633 () Bool)

(assert (=> bm!66237 m!1265633))

(declare-fun m!1265635 () Bool)

(assert (=> start!117574 m!1265635))

(check-sat (not start!117574) (not bm!66237) (not b!1380405) (not bm!66236))
(check-sat)
