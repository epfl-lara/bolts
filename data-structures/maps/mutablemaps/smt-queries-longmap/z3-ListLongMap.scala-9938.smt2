; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117496 () Bool)

(assert start!117496)

(declare-fun b!1380065 () Bool)

(declare-fun res!922445 () Bool)

(declare-fun e!781989 () Bool)

(assert (=> b!1380065 (=> (not res!922445) (not e!781989))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(assert (=> b!1380065 (= res!922445 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380067 () Bool)

(declare-fun e!781991 () Bool)

(assert (=> b!1380067 (= e!781991 true)))

(declare-datatypes ((array!93963 0))(
  ( (array!93964 (arr!45371 (Array (_ BitVec 32) (_ BitVec 64))) (size!45922 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93963)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-fun isPivot!0 (array!93963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380067 (isPivot!0 a!3985 from!3363 to!159 pivot!40)))

(declare-datatypes ((Unit!45895 0))(
  ( (Unit!45896) )
))
(declare-fun lt!607816 () Unit!45895)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45895)

(assert (=> b!1380067 (= lt!607816 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!3985 from!3363 to!159 pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)))))

(declare-fun res!922443 () Bool)

(assert (=> start!117496 (=> (not res!922443) (not e!781989))))

(assert (=> start!117496 (= res!922443 (and (bvslt (size!45922 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45922 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117496 e!781989))

(assert (=> start!117496 true))

(declare-fun array_inv!34316 (array!93963) Bool)

(assert (=> start!117496 (array_inv!34316 a!3985)))

(declare-fun b!1380066 () Bool)

(assert (=> b!1380066 (= e!781989 (not e!781991))))

(declare-fun res!922444 () Bool)

(assert (=> b!1380066 (=> res!922444 e!781991)))

(assert (=> b!1380066 (= res!922444 (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363)))))

(assert (=> b!1380066 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-fun lt!607815 () Unit!45895)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45895)

(assert (=> b!1380066 (= lt!607815 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380064 () Bool)

(declare-fun res!922446 () Bool)

(assert (=> b!1380064 (=> (not res!922446) (not e!781989))))

(assert (=> b!1380064 (= res!922446 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117496 res!922443) b!1380064))

(assert (= (and b!1380064 res!922446) b!1380065))

(assert (= (and b!1380065 res!922445) b!1380066))

(assert (= (and b!1380066 (not res!922444)) b!1380067))

(declare-fun m!1265325 () Bool)

(assert (=> b!1380067 m!1265325))

(declare-fun m!1265327 () Bool)

(assert (=> b!1380067 m!1265327))

(declare-fun m!1265329 () Bool)

(assert (=> start!117496 m!1265329))

(declare-fun m!1265331 () Bool)

(assert (=> b!1380066 m!1265331))

(declare-fun m!1265333 () Bool)

(assert (=> b!1380066 m!1265333))

(declare-fun m!1265335 () Bool)

(assert (=> b!1380064 m!1265335))

(check-sat (not b!1380064) (not b!1380066) (not start!117496) (not b!1380067))
