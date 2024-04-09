; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117618 () Bool)

(assert start!117618)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun bm!66368 () Bool)

(declare-fun call!66372 () (_ BitVec 32))

(declare-datatypes ((array!94052 0))(
  ( (array!94053 (arr!45414 (Array (_ BitVec 32) (_ BitVec 64))) (size!45965 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94052)

(declare-fun arrayCountValidKeys!0 (array!94052 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66368 (= call!66372 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun call!66371 () (_ BitVec 32))

(declare-fun bm!66369 () Bool)

(assert (=> bm!66369 (= call!66371 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380603 () Bool)

(declare-fun e!782420 () Bool)

(assert (=> b!1380603 (= e!782420 (= call!66372 call!66371))))

(declare-fun b!1380604 () Bool)

(declare-fun e!782418 () Bool)

(assert (=> b!1380604 (= e!782418 (not true))))

(assert (=> b!1380604 e!782420))

(declare-fun c!128420 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380604 (= c!128420 (validKeyInArray!0 (select (arr!45414 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45957 0))(
  ( (Unit!45958) )
))
(declare-fun lt!608005 () Unit!45957)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94052 (_ BitVec 32) (_ BitVec 32)) Unit!45957)

(assert (=> b!1380604 (= lt!608005 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun res!922647 () Bool)

(assert (=> start!117618 (=> (not res!922647) (not e!782418))))

(assert (=> start!117618 (= res!922647 (and (bvslt (size!45965 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45965 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117618 e!782418))

(declare-fun array_inv!34359 (array!94052) Bool)

(assert (=> start!117618 (array_inv!34359 a!3931)))

(assert (=> start!117618 true))

(declare-fun b!1380602 () Bool)

(assert (=> b!1380602 (= e!782420 (= (bvadd #b00000000000000000000000000000001 call!66372) call!66371))))

(assert (= (and start!117618 res!922647) b!1380604))

(assert (= (and b!1380604 c!128420) b!1380602))

(assert (= (and b!1380604 (not c!128420)) b!1380603))

(assert (= (or b!1380602 b!1380603) bm!66369))

(assert (= (or b!1380602 b!1380603) bm!66368))

(declare-fun m!1265889 () Bool)

(assert (=> bm!66368 m!1265889))

(declare-fun m!1265891 () Bool)

(assert (=> bm!66369 m!1265891))

(declare-fun m!1265893 () Bool)

(assert (=> b!1380604 m!1265893))

(assert (=> b!1380604 m!1265893))

(declare-fun m!1265895 () Bool)

(assert (=> b!1380604 m!1265895))

(declare-fun m!1265897 () Bool)

(assert (=> b!1380604 m!1265897))

(declare-fun m!1265899 () Bool)

(assert (=> start!117618 m!1265899))

(push 1)

(assert (not b!1380604))

(assert (not start!117618))

(assert (not bm!66368))

(assert (not bm!66369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

