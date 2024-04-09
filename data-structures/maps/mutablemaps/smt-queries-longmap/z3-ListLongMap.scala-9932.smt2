; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117460 () Bool)

(assert start!117460)

(declare-fun b!1379932 () Bool)

(declare-fun e!781872 () Bool)

(declare-fun to!159 () (_ BitVec 32))

(declare-fun from!3363 () (_ BitVec 32))

(assert (=> b!1379932 (= e!781872 (bvsgt to!159 from!3363))))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93927 0))(
  ( (array!93928 (arr!45353 (Array (_ BitVec 32) (_ BitVec 64))) (size!45904 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93927)

(declare-fun isPivot!0 (array!93927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379932 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-datatypes ((Unit!45877 0))(
  ( (Unit!45878) )
))
(declare-fun lt!607771 () Unit!45877)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45877)

(assert (=> b!1379932 (= lt!607771 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(declare-fun res!922311 () Bool)

(declare-fun e!781874 () Bool)

(assert (=> start!117460 (=> (not res!922311) (not e!781874))))

(assert (=> start!117460 (= res!922311 (and (bvslt (size!45904 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45904 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117460 e!781874))

(assert (=> start!117460 true))

(declare-fun array_inv!34298 (array!93927) Bool)

(assert (=> start!117460 (array_inv!34298 a!3985)))

(declare-fun b!1379930 () Bool)

(declare-fun res!922308 () Bool)

(assert (=> b!1379930 (=> (not res!922308) (not e!781874))))

(assert (=> b!1379930 (= res!922308 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379929 () Bool)

(declare-fun res!922309 () Bool)

(assert (=> b!1379929 (=> (not res!922309) (not e!781874))))

(assert (=> b!1379929 (= res!922309 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379931 () Bool)

(assert (=> b!1379931 (= e!781874 (not e!781872))))

(declare-fun res!922310 () Bool)

(assert (=> b!1379931 (=> res!922310 e!781872)))

(assert (=> b!1379931 (= res!922310 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(assert (=> b!1379931 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-fun lt!607770 () Unit!45877)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45877)

(assert (=> b!1379931 (= lt!607770 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117460 res!922311) b!1379929))

(assert (= (and b!1379929 res!922309) b!1379930))

(assert (= (and b!1379930 res!922308) b!1379931))

(assert (= (and b!1379931 (not res!922310)) b!1379932))

(declare-fun m!1265205 () Bool)

(assert (=> b!1379932 m!1265205))

(declare-fun m!1265207 () Bool)

(assert (=> b!1379932 m!1265207))

(declare-fun m!1265209 () Bool)

(assert (=> start!117460 m!1265209))

(declare-fun m!1265211 () Bool)

(assert (=> b!1379929 m!1265211))

(declare-fun m!1265213 () Bool)

(assert (=> b!1379931 m!1265213))

(declare-fun m!1265215 () Bool)

(assert (=> b!1379931 m!1265215))

(check-sat (not b!1379929) (not b!1379931) (not start!117460) (not b!1379932))
(check-sat)
