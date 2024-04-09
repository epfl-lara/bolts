; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117462 () Bool)

(assert start!117462)

(declare-fun b!1379943 () Bool)

(declare-fun e!781882 () Bool)

(declare-fun e!781883 () Bool)

(assert (=> b!1379943 (= e!781882 (not e!781883))))

(declare-fun res!922321 () Bool)

(assert (=> b!1379943 (=> res!922321 e!781883)))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-fun from!3363 () (_ BitVec 32))

(assert (=> b!1379943 (= res!922321 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(declare-datatypes ((array!93929 0))(
  ( (array!93930 (arr!45354 (Array (_ BitVec 32) (_ BitVec 64))) (size!45905 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93929)

(declare-fun to!159 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379943 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45879 0))(
  ( (Unit!45880) )
))
(declare-fun lt!607776 () Unit!45879)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45879)

(assert (=> b!1379943 (= lt!607776 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379942 () Bool)

(declare-fun res!922323 () Bool)

(assert (=> b!1379942 (=> (not res!922323) (not e!781882))))

(assert (=> b!1379942 (= res!922323 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379941 () Bool)

(declare-fun res!922320 () Bool)

(assert (=> b!1379941 (=> (not res!922320) (not e!781882))))

(assert (=> b!1379941 (= res!922320 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun res!922322 () Bool)

(assert (=> start!117462 (=> (not res!922322) (not e!781882))))

(assert (=> start!117462 (= res!922322 (and (bvslt (size!45905 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45905 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117462 e!781882))

(assert (=> start!117462 true))

(declare-fun array_inv!34299 (array!93929) Bool)

(assert (=> start!117462 (array_inv!34299 a!3985)))

(declare-fun b!1379944 () Bool)

(assert (=> b!1379944 (= e!781883 (bvsgt to!159 from!3363))))

(assert (=> b!1379944 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-fun lt!607777 () Unit!45879)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45879)

(assert (=> b!1379944 (= lt!607777 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(assert (= (and start!117462 res!922322) b!1379941))

(assert (= (and b!1379941 res!922320) b!1379942))

(assert (= (and b!1379942 res!922323) b!1379943))

(assert (= (and b!1379943 (not res!922321)) b!1379944))

(declare-fun m!1265217 () Bool)

(assert (=> b!1379943 m!1265217))

(declare-fun m!1265219 () Bool)

(assert (=> b!1379943 m!1265219))

(declare-fun m!1265221 () Bool)

(assert (=> b!1379941 m!1265221))

(declare-fun m!1265223 () Bool)

(assert (=> start!117462 m!1265223))

(declare-fun m!1265225 () Bool)

(assert (=> b!1379944 m!1265225))

(declare-fun m!1265227 () Bool)

(assert (=> b!1379944 m!1265227))

(push 1)

(assert (not b!1379944))

(assert (not b!1379941))

(assert (not b!1379943))

(assert (not start!117462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

