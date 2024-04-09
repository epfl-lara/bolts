; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117592 () Bool)

(assert start!117592)

(declare-fun b!1380485 () Bool)

(declare-fun e!782302 () Bool)

(declare-fun call!66294 () (_ BitVec 32))

(declare-fun call!66293 () (_ BitVec 32))

(assert (=> b!1380485 (= e!782302 (= call!66294 call!66293))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66290 () Bool)

(declare-datatypes ((array!94026 0))(
  ( (array!94027 (arr!45401 (Array (_ BitVec 32) (_ BitVec 64))) (size!45952 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94026)

(declare-fun arrayCountValidKeys!0 (array!94026 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66290 (= call!66294 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922608 () Bool)

(declare-fun e!782303 () Bool)

(assert (=> start!117592 (=> (not res!922608) (not e!782303))))

(assert (=> start!117592 (= res!922608 (and (bvslt (size!45952 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45952 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117592 e!782303))

(declare-fun array_inv!34346 (array!94026) Bool)

(assert (=> start!117592 (array_inv!34346 a!3931)))

(assert (=> start!117592 true))

(declare-fun b!1380486 () Bool)

(assert (=> b!1380486 (= e!782302 (= (bvadd #b00000000000000000000000000000001 call!66294) call!66293))))

(declare-fun b!1380487 () Bool)

(assert (=> b!1380487 (= e!782303 (not true))))

(assert (=> b!1380487 e!782302))

(declare-fun c!128381 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380487 (= c!128381 (validKeyInArray!0 (select (arr!45401 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45931 0))(
  ( (Unit!45932) )
))
(declare-fun lt!607948 () Unit!45931)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94026 (_ BitVec 32) (_ BitVec 32)) Unit!45931)

(assert (=> b!1380487 (= lt!607948 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66291 () Bool)

(assert (=> bm!66291 (= call!66293 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117592 res!922608) b!1380487))

(assert (= (and b!1380487 c!128381) b!1380486))

(assert (= (and b!1380487 (not c!128381)) b!1380485))

(assert (= (or b!1380486 b!1380485) bm!66291))

(assert (= (or b!1380486 b!1380485) bm!66290))

(declare-fun m!1265733 () Bool)

(assert (=> bm!66290 m!1265733))

(declare-fun m!1265735 () Bool)

(assert (=> start!117592 m!1265735))

(declare-fun m!1265737 () Bool)

(assert (=> b!1380487 m!1265737))

(assert (=> b!1380487 m!1265737))

(declare-fun m!1265739 () Bool)

(assert (=> b!1380487 m!1265739))

(declare-fun m!1265741 () Bool)

(assert (=> b!1380487 m!1265741))

(declare-fun m!1265743 () Bool)

(assert (=> bm!66291 m!1265743))

(check-sat (not bm!66290) (not bm!66291) (not b!1380487) (not start!117592))
