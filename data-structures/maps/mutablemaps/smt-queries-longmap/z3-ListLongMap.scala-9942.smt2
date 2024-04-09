; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117520 () Bool)

(assert start!117520)

(declare-fun b!1380141 () Bool)

(declare-fun e!782062 () Bool)

(declare-fun call!66137 () (_ BitVec 32))

(declare-fun call!66138 () (_ BitVec 32))

(assert (=> b!1380141 (= e!782062 (= call!66137 call!66138))))

(declare-fun b!1380142 () Bool)

(declare-fun res!922510 () Bool)

(declare-fun e!782063 () Bool)

(assert (=> b!1380142 (=> (not res!922510) (not e!782063))))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93987 0))(
  ( (array!93988 (arr!45383 (Array (_ BitVec 32) (_ BitVec 64))) (size!45934 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93987)

(assert (=> b!1380142 (= res!922510 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45934 a!3961)))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun bm!66135 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93987 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66135 (= call!66138 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380143 () Bool)

(declare-fun res!922512 () Bool)

(assert (=> b!1380143 (=> (not res!922512) (not e!782063))))

(declare-fun to!135 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380143 (= res!922512 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun b!1380144 () Bool)

(assert (=> b!1380144 (= e!782062 (= (bvadd #b00000000000000000000000000000001 call!66137) call!66138))))

(declare-fun b!1380145 () Bool)

(assert (=> b!1380145 (= e!782063 (not (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) from!3339)))))

(assert (=> b!1380145 e!782062))

(declare-fun c!128258 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380145 (= c!128258 (validKeyInArray!0 (select (arr!45383 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45901 0))(
  ( (Unit!45902) )
))
(declare-fun lt!607837 () Unit!45901)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!93987 (_ BitVec 32) (_ BitVec 32)) Unit!45901)

(assert (=> b!1380145 (= lt!607837 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun res!922511 () Bool)

(assert (=> start!117520 (=> (not res!922511) (not e!782063))))

(assert (=> start!117520 (= res!922511 (and (bvslt (size!45934 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45934 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117520 e!782063))

(declare-fun array_inv!34328 (array!93987) Bool)

(assert (=> start!117520 (array_inv!34328 a!3961)))

(assert (=> start!117520 true))

(declare-fun bm!66134 () Bool)

(assert (=> bm!66134 (= call!66137 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(assert (= (and start!117520 res!922511) b!1380143))

(assert (= (and b!1380143 res!922512) b!1380142))

(assert (= (and b!1380142 res!922510) b!1380145))

(assert (= (and b!1380145 c!128258) b!1380144))

(assert (= (and b!1380145 (not c!128258)) b!1380141))

(assert (= (or b!1380144 b!1380141) bm!66134))

(assert (= (or b!1380144 b!1380141) bm!66135))

(declare-fun m!1265399 () Bool)

(assert (=> bm!66134 m!1265399))

(declare-fun m!1265401 () Bool)

(assert (=> bm!66135 m!1265401))

(declare-fun m!1265403 () Bool)

(assert (=> b!1380145 m!1265403))

(assert (=> b!1380145 m!1265403))

(declare-fun m!1265405 () Bool)

(assert (=> b!1380145 m!1265405))

(declare-fun m!1265407 () Bool)

(assert (=> b!1380145 m!1265407))

(declare-fun m!1265409 () Bool)

(assert (=> start!117520 m!1265409))

(declare-fun m!1265411 () Bool)

(assert (=> b!1380143 m!1265411))

(check-sat (not b!1380145) (not b!1380143) (not start!117520) (not bm!66134) (not bm!66135))
(check-sat)
