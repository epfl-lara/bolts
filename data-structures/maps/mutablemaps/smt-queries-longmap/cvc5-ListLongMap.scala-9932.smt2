; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117458 () Bool)

(assert start!117458)

(declare-fun b!1379919 () Bool)

(declare-fun e!781865 () Bool)

(declare-fun e!781864 () Bool)

(assert (=> b!1379919 (= e!781865 (not e!781864))))

(declare-fun res!922296 () Bool)

(assert (=> b!1379919 (=> res!922296 e!781864)))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-fun from!3363 () (_ BitVec 32))

(assert (=> b!1379919 (= res!922296 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(declare-datatypes ((array!93925 0))(
  ( (array!93926 (arr!45352 (Array (_ BitVec 32) (_ BitVec 64))) (size!45903 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93925)

(declare-fun to!159 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379919 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45875 0))(
  ( (Unit!45876) )
))
(declare-fun lt!607765 () Unit!45875)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45875)

(assert (=> b!1379919 (= lt!607765 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379918 () Bool)

(declare-fun res!922299 () Bool)

(assert (=> b!1379918 (=> (not res!922299) (not e!781865))))

(assert (=> b!1379918 (= res!922299 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379920 () Bool)

(assert (=> b!1379920 (= e!781864 (bvsgt to!159 from!3363))))

(assert (=> b!1379920 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-fun lt!607764 () Unit!45875)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45875)

(assert (=> b!1379920 (= lt!607764 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(declare-fun b!1379917 () Bool)

(declare-fun res!922297 () Bool)

(assert (=> b!1379917 (=> (not res!922297) (not e!781865))))

(assert (=> b!1379917 (= res!922297 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun res!922298 () Bool)

(assert (=> start!117458 (=> (not res!922298) (not e!781865))))

(assert (=> start!117458 (= res!922298 (and (bvslt (size!45903 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45903 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117458 e!781865))

(assert (=> start!117458 true))

(declare-fun array_inv!34297 (array!93925) Bool)

(assert (=> start!117458 (array_inv!34297 a!3985)))

(assert (= (and start!117458 res!922298) b!1379917))

(assert (= (and b!1379917 res!922297) b!1379918))

(assert (= (and b!1379918 res!922299) b!1379919))

(assert (= (and b!1379919 (not res!922296)) b!1379920))

(declare-fun m!1265193 () Bool)

(assert (=> b!1379919 m!1265193))

(declare-fun m!1265195 () Bool)

(assert (=> b!1379919 m!1265195))

(declare-fun m!1265197 () Bool)

(assert (=> b!1379920 m!1265197))

(declare-fun m!1265199 () Bool)

(assert (=> b!1379920 m!1265199))

(declare-fun m!1265201 () Bool)

(assert (=> b!1379917 m!1265201))

(declare-fun m!1265203 () Bool)

(assert (=> start!117458 m!1265203))

(push 1)

(assert (not start!117458))

(assert (not b!1379919))

(assert (not b!1379917))

(assert (not b!1379920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

