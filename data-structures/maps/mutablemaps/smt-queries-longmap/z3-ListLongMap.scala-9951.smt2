; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117610 () Bool)

(assert start!117610)

(declare-fun res!922635 () Bool)

(declare-fun e!782382 () Bool)

(assert (=> start!117610 (=> (not res!922635) (not e!782382))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94044 0))(
  ( (array!94045 (arr!45410 (Array (_ BitVec 32) (_ BitVec 64))) (size!45961 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94044)

(assert (=> start!117610 (= res!922635 (and (bvslt (size!45961 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45961 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117610 e!782382))

(declare-fun array_inv!34355 (array!94044) Bool)

(assert (=> start!117610 (array_inv!34355 a!3931)))

(assert (=> start!117610 true))

(declare-fun lt!607989 () Bool)

(declare-fun b!1380566 () Bool)

(assert (=> b!1380566 (= e!782382 (not (or lt!607989 (bvsle from!3309 to!105))))))

(declare-fun e!782383 () Bool)

(assert (=> b!1380566 e!782383))

(declare-fun c!128408 () Bool)

(assert (=> b!1380566 (= c!128408 lt!607989)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380566 (= lt!607989 (validKeyInArray!0 (select (arr!45410 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45949 0))(
  ( (Unit!45950) )
))
(declare-fun lt!607990 () Unit!45949)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94044 (_ BitVec 32) (_ BitVec 32)) Unit!45949)

(assert (=> b!1380566 (= lt!607990 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380567 () Bool)

(declare-fun call!66347 () (_ BitVec 32))

(declare-fun call!66348 () (_ BitVec 32))

(assert (=> b!1380567 (= e!782383 (= call!66347 call!66348))))

(declare-fun bm!66344 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94044 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66344 (= call!66348 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380568 () Bool)

(assert (=> b!1380568 (= e!782383 (= (bvadd #b00000000000000000000000000000001 call!66347) call!66348))))

(declare-fun bm!66345 () Bool)

(assert (=> bm!66345 (= call!66347 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and start!117610 res!922635) b!1380566))

(assert (= (and b!1380566 c!128408) b!1380568))

(assert (= (and b!1380566 (not c!128408)) b!1380567))

(assert (= (or b!1380568 b!1380567) bm!66344))

(assert (= (or b!1380568 b!1380567) bm!66345))

(declare-fun m!1265841 () Bool)

(assert (=> start!117610 m!1265841))

(declare-fun m!1265843 () Bool)

(assert (=> b!1380566 m!1265843))

(assert (=> b!1380566 m!1265843))

(declare-fun m!1265845 () Bool)

(assert (=> b!1380566 m!1265845))

(declare-fun m!1265847 () Bool)

(assert (=> b!1380566 m!1265847))

(declare-fun m!1265849 () Bool)

(assert (=> bm!66344 m!1265849))

(declare-fun m!1265851 () Bool)

(assert (=> bm!66345 m!1265851))

(check-sat (not bm!66345) (not bm!66344) (not b!1380566) (not start!117610))
(check-sat)
