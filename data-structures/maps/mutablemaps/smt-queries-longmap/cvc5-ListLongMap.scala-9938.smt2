; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117494 () Bool)

(assert start!117494)

(declare-fun b!1380052 () Bool)

(declare-fun res!922433 () Bool)

(declare-fun e!781981 () Bool)

(assert (=> b!1380052 (=> (not res!922433) (not e!781981))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-datatypes ((array!93961 0))(
  ( (array!93962 (arr!45370 (Array (_ BitVec 32) (_ BitVec 64))) (size!45921 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93961)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380052 (= res!922433 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun res!922434 () Bool)

(assert (=> start!117494 (=> (not res!922434) (not e!781981))))

(declare-fun pivot!40 () (_ BitVec 32))

(assert (=> start!117494 (= res!922434 (and (bvslt (size!45921 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45921 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117494 e!781981))

(assert (=> start!117494 true))

(declare-fun array_inv!34315 (array!93961) Bool)

(assert (=> start!117494 (array_inv!34315 a!3985)))

(declare-fun b!1380055 () Bool)

(declare-fun e!781980 () Bool)

(assert (=> b!1380055 (= e!781980 true)))

(assert (=> b!1380055 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-datatypes ((Unit!45893 0))(
  ( (Unit!45894) )
))
(declare-fun lt!607810 () Unit!45893)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45893)

(assert (=> b!1380055 (= lt!607810 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(declare-fun b!1380053 () Bool)

(declare-fun res!922432 () Bool)

(assert (=> b!1380053 (=> (not res!922432) (not e!781981))))

(assert (=> b!1380053 (= res!922432 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380054 () Bool)

(assert (=> b!1380054 (= e!781981 (not e!781980))))

(declare-fun res!922431 () Bool)

(assert (=> b!1380054 (=> res!922431 e!781980)))

(assert (=> b!1380054 (= res!922431 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(assert (=> b!1380054 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-fun lt!607809 () Unit!45893)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45893)

(assert (=> b!1380054 (= lt!607809 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117494 res!922434) b!1380052))

(assert (= (and b!1380052 res!922433) b!1380053))

(assert (= (and b!1380053 res!922432) b!1380054))

(assert (= (and b!1380054 (not res!922431)) b!1380055))

(declare-fun m!1265313 () Bool)

(assert (=> b!1380052 m!1265313))

(declare-fun m!1265315 () Bool)

(assert (=> start!117494 m!1265315))

(declare-fun m!1265317 () Bool)

(assert (=> b!1380055 m!1265317))

(declare-fun m!1265319 () Bool)

(assert (=> b!1380055 m!1265319))

(declare-fun m!1265321 () Bool)

(assert (=> b!1380054 m!1265321))

(declare-fun m!1265323 () Bool)

(assert (=> b!1380054 m!1265323))

(push 1)

(assert (not b!1380054))

(assert (not start!117494))

(assert (not b!1380055))

(assert (not b!1380052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

