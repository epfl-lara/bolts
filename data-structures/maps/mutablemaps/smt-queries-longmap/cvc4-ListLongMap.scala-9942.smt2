; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117522 () Bool)

(assert start!117522)

(declare-fun b!1380156 () Bool)

(declare-fun res!922519 () Bool)

(declare-fun e!782070 () Bool)

(assert (=> b!1380156 (=> (not res!922519) (not e!782070))))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93989 0))(
  ( (array!93990 (arr!45384 (Array (_ BitVec 32) (_ BitVec 64))) (size!45935 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93989)

(assert (=> b!1380156 (= res!922519 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45935 a!3961)))))

(declare-fun b!1380157 () Bool)

(declare-fun e!782072 () Bool)

(declare-fun call!66144 () (_ BitVec 32))

(declare-fun call!66143 () (_ BitVec 32))

(assert (=> b!1380157 (= e!782072 (= call!66144 call!66143))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun bm!66140 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93989 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66140 (= call!66144 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(declare-fun bm!66141 () Bool)

(assert (=> bm!66141 (= call!66143 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380158 () Bool)

(assert (=> b!1380158 (= e!782070 (not (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) from!3339)))))

(assert (=> b!1380158 e!782072))

(declare-fun c!128261 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380158 (= c!128261 (validKeyInArray!0 (select (arr!45384 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45903 0))(
  ( (Unit!45904) )
))
(declare-fun lt!607840 () Unit!45903)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!93989 (_ BitVec 32) (_ BitVec 32)) Unit!45903)

(assert (=> b!1380158 (= lt!607840 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun res!922520 () Bool)

(assert (=> start!117522 (=> (not res!922520) (not e!782070))))

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117522 (= res!922520 (and (bvslt (size!45935 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45935 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117522 e!782070))

(declare-fun array_inv!34329 (array!93989) Bool)

(assert (=> start!117522 (array_inv!34329 a!3961)))

(assert (=> start!117522 true))

(declare-fun b!1380159 () Bool)

(assert (=> b!1380159 (= e!782072 (= (bvadd #b00000000000000000000000000000001 call!66144) call!66143))))

(declare-fun b!1380160 () Bool)

(declare-fun res!922521 () Bool)

(assert (=> b!1380160 (=> (not res!922521) (not e!782070))))

(declare-fun isPivot!0 (array!93989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380160 (= res!922521 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(assert (= (and start!117522 res!922520) b!1380160))

(assert (= (and b!1380160 res!922521) b!1380156))

(assert (= (and b!1380156 res!922519) b!1380158))

(assert (= (and b!1380158 c!128261) b!1380159))

(assert (= (and b!1380158 (not c!128261)) b!1380157))

(assert (= (or b!1380159 b!1380157) bm!66140))

(assert (= (or b!1380159 b!1380157) bm!66141))

(declare-fun m!1265413 () Bool)

(assert (=> b!1380158 m!1265413))

(assert (=> b!1380158 m!1265413))

(declare-fun m!1265415 () Bool)

(assert (=> b!1380158 m!1265415))

(declare-fun m!1265417 () Bool)

(assert (=> b!1380158 m!1265417))

(declare-fun m!1265419 () Bool)

(assert (=> bm!66140 m!1265419))

(declare-fun m!1265421 () Bool)

(assert (=> bm!66141 m!1265421))

(declare-fun m!1265423 () Bool)

(assert (=> b!1380160 m!1265423))

(declare-fun m!1265425 () Bool)

(assert (=> start!117522 m!1265425))

(push 1)

(assert (not bm!66141))

(assert (not bm!66140))

(assert (not b!1380158))

(assert (not start!117522))

(assert (not b!1380160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

