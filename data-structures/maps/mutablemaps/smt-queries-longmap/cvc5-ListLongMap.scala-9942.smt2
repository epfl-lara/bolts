; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117518 () Bool)

(assert start!117518)

(declare-fun b!1380126 () Bool)

(declare-fun e!782052 () Bool)

(declare-fun call!66131 () (_ BitVec 32))

(declare-fun call!66132 () (_ BitVec 32))

(assert (=> b!1380126 (= e!782052 (= (bvadd #b00000000000000000000000000000001 call!66131) call!66132))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-fun bm!66128 () Bool)

(declare-datatypes ((array!93985 0))(
  ( (array!93986 (arr!45382 (Array (_ BitVec 32) (_ BitVec 64))) (size!45933 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93985)

(declare-fun arrayCountValidKeys!0 (array!93985 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66128 (= call!66131 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(declare-fun b!1380127 () Bool)

(assert (=> b!1380127 (= e!782052 (= call!66131 call!66132))))

(declare-fun b!1380128 () Bool)

(declare-fun e!782053 () Bool)

(assert (=> b!1380128 (= e!782053 (not (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) from!3339)))))

(assert (=> b!1380128 e!782052))

(declare-fun c!128255 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380128 (= c!128255 (validKeyInArray!0 (select (arr!45382 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45899 0))(
  ( (Unit!45900) )
))
(declare-fun lt!607834 () Unit!45899)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!93985 (_ BitVec 32) (_ BitVec 32)) Unit!45899)

(assert (=> b!1380128 (= lt!607834 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380129 () Bool)

(declare-fun res!922502 () Bool)

(assert (=> b!1380129 (=> (not res!922502) (not e!782053))))

(assert (=> b!1380129 (= res!922502 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45933 a!3961)))))

(declare-fun bm!66129 () Bool)

(assert (=> bm!66129 (= call!66132 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380130 () Bool)

(declare-fun res!922501 () Bool)

(assert (=> b!1380130 (=> (not res!922501) (not e!782053))))

(declare-fun to!135 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380130 (= res!922501 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun res!922503 () Bool)

(assert (=> start!117518 (=> (not res!922503) (not e!782053))))

(assert (=> start!117518 (= res!922503 (and (bvslt (size!45933 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45933 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117518 e!782053))

(declare-fun array_inv!34327 (array!93985) Bool)

(assert (=> start!117518 (array_inv!34327 a!3961)))

(assert (=> start!117518 true))

(assert (= (and start!117518 res!922503) b!1380130))

(assert (= (and b!1380130 res!922501) b!1380129))

(assert (= (and b!1380129 res!922502) b!1380128))

(assert (= (and b!1380128 c!128255) b!1380126))

(assert (= (and b!1380128 (not c!128255)) b!1380127))

(assert (= (or b!1380126 b!1380127) bm!66128))

(assert (= (or b!1380126 b!1380127) bm!66129))

(declare-fun m!1265385 () Bool)

(assert (=> bm!66129 m!1265385))

(declare-fun m!1265387 () Bool)

(assert (=> start!117518 m!1265387))

(declare-fun m!1265389 () Bool)

(assert (=> b!1380128 m!1265389))

(assert (=> b!1380128 m!1265389))

(declare-fun m!1265391 () Bool)

(assert (=> b!1380128 m!1265391))

(declare-fun m!1265393 () Bool)

(assert (=> b!1380128 m!1265393))

(declare-fun m!1265395 () Bool)

(assert (=> b!1380130 m!1265395))

(declare-fun m!1265397 () Bool)

(assert (=> bm!66128 m!1265397))

(push 1)

(assert (not bm!66129))

(assert (not b!1380128))

(assert (not b!1380130))

(assert (not start!117518))

(assert (not bm!66128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

