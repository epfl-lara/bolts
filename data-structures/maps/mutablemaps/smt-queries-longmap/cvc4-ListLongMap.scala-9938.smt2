; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117498 () Bool)

(assert start!117498)

(declare-fun b!1380079 () Bool)

(declare-fun e!781998 () Bool)

(assert (=> b!1380079 (= e!781998 true)))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93965 0))(
  ( (array!93966 (arr!45372 (Array (_ BitVec 32) (_ BitVec 64))) (size!45923 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93965)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380079 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-datatypes ((Unit!45897 0))(
  ( (Unit!45898) )
))
(declare-fun lt!607821 () Unit!45897)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45897)

(assert (=> b!1380079 (= lt!607821 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(declare-fun b!1380077 () Bool)

(declare-fun res!922457 () Bool)

(declare-fun e!782000 () Bool)

(assert (=> b!1380077 (=> (not res!922457) (not e!782000))))

(assert (=> b!1380077 (= res!922457 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380078 () Bool)

(assert (=> b!1380078 (= e!782000 (not e!781998))))

(declare-fun res!922458 () Bool)

(assert (=> b!1380078 (=> res!922458 e!781998)))

(assert (=> b!1380078 (= res!922458 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(assert (=> b!1380078 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-fun lt!607822 () Unit!45897)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45897)

(assert (=> b!1380078 (= lt!607822 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380076 () Bool)

(declare-fun res!922456 () Bool)

(assert (=> b!1380076 (=> (not res!922456) (not e!782000))))

(assert (=> b!1380076 (= res!922456 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun res!922455 () Bool)

(assert (=> start!117498 (=> (not res!922455) (not e!782000))))

(assert (=> start!117498 (= res!922455 (and (bvslt (size!45923 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45923 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117498 e!782000))

(assert (=> start!117498 true))

(declare-fun array_inv!34317 (array!93965) Bool)

(assert (=> start!117498 (array_inv!34317 a!3985)))

(assert (= (and start!117498 res!922455) b!1380076))

(assert (= (and b!1380076 res!922456) b!1380077))

(assert (= (and b!1380077 res!922457) b!1380078))

(assert (= (and b!1380078 (not res!922458)) b!1380079))

(declare-fun m!1265337 () Bool)

(assert (=> b!1380079 m!1265337))

(declare-fun m!1265339 () Bool)

(assert (=> b!1380079 m!1265339))

(declare-fun m!1265341 () Bool)

(assert (=> b!1380078 m!1265341))

(declare-fun m!1265343 () Bool)

(assert (=> b!1380078 m!1265343))

(declare-fun m!1265345 () Bool)

(assert (=> b!1380076 m!1265345))

(declare-fun m!1265347 () Bool)

(assert (=> start!117498 m!1265347))

(push 1)

(assert (not b!1380076))

(assert (not b!1380078))

(assert (not start!117498))

(assert (not b!1380079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

