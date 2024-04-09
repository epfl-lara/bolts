; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117598 () Bool)

(assert start!117598)

(declare-fun bm!66308 () Bool)

(declare-fun call!66311 () (_ BitVec 32))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94032 0))(
  ( (array!94033 (arr!45404 (Array (_ BitVec 32) (_ BitVec 64))) (size!45955 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94032)

(declare-fun arrayCountValidKeys!0 (array!94032 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66308 (= call!66311 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380512 () Bool)

(declare-fun e!782330 () Bool)

(declare-fun call!66312 () (_ BitVec 32))

(assert (=> b!1380512 (= e!782330 (= call!66312 call!66311))))

(declare-fun b!1380513 () Bool)

(assert (=> b!1380513 (= e!782330 (= (bvadd #b00000000000000000000000000000001 call!66312) call!66311))))

(declare-fun bm!66309 () Bool)

(assert (=> bm!66309 (= call!66312 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922617 () Bool)

(declare-fun e!782329 () Bool)

(assert (=> start!117598 (=> (not res!922617) (not e!782329))))

(assert (=> start!117598 (= res!922617 (and (bvslt (size!45955 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45955 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117598 e!782329))

(declare-fun array_inv!34349 (array!94032) Bool)

(assert (=> start!117598 (array_inv!34349 a!3931)))

(assert (=> start!117598 true))

(declare-fun lt!607963 () Bool)

(declare-fun b!1380514 () Bool)

(assert (=> b!1380514 (= e!782329 (not (or lt!607963 (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45955 a!3931)))))))

(assert (=> b!1380514 e!782330))

(declare-fun c!128390 () Bool)

(assert (=> b!1380514 (= c!128390 lt!607963)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380514 (= lt!607963 (validKeyInArray!0 (select (arr!45404 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45937 0))(
  ( (Unit!45938) )
))
(declare-fun lt!607962 () Unit!45937)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94032 (_ BitVec 32) (_ BitVec 32)) Unit!45937)

(assert (=> b!1380514 (= lt!607962 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (= (and start!117598 res!922617) b!1380514))

(assert (= (and b!1380514 c!128390) b!1380513))

(assert (= (and b!1380514 (not c!128390)) b!1380512))

(assert (= (or b!1380513 b!1380512) bm!66308))

(assert (= (or b!1380513 b!1380512) bm!66309))

(declare-fun m!1265769 () Bool)

(assert (=> bm!66308 m!1265769))

(declare-fun m!1265771 () Bool)

(assert (=> bm!66309 m!1265771))

(declare-fun m!1265773 () Bool)

(assert (=> start!117598 m!1265773))

(declare-fun m!1265775 () Bool)

(assert (=> b!1380514 m!1265775))

(assert (=> b!1380514 m!1265775))

(declare-fun m!1265777 () Bool)

(assert (=> b!1380514 m!1265777))

(declare-fun m!1265779 () Bool)

(assert (=> b!1380514 m!1265779))

(check-sat (not bm!66308) (not start!117598) (not b!1380514) (not bm!66309))
(check-sat)
