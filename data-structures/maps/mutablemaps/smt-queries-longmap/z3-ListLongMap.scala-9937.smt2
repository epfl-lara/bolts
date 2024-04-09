; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117490 () Bool)

(assert start!117490)

(declare-fun res!922411 () Bool)

(declare-fun e!781967 () Bool)

(assert (=> start!117490 (=> (not res!922411) (not e!781967))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93957 0))(
  ( (array!93958 (arr!45368 (Array (_ BitVec 32) (_ BitVec 64))) (size!45919 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93957)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117490 (= res!922411 (and (bvslt (size!45919 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45919 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117490 e!781967))

(assert (=> start!117490 true))

(declare-fun array_inv!34313 (array!93957) Bool)

(assert (=> start!117490 (array_inv!34313 a!3985)))

(declare-fun b!1380032 () Bool)

(declare-fun res!922413 () Bool)

(assert (=> b!1380032 (=> (not res!922413) (not e!781967))))

(declare-fun isPivot!0 (array!93957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380032 (= res!922413 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380033 () Bool)

(declare-fun res!922412 () Bool)

(assert (=> b!1380033 (=> (not res!922412) (not e!781967))))

(assert (=> b!1380033 (= res!922412 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380034 () Bool)

(assert (=> b!1380034 (= e!781967 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363) (bvslt (bvsub pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)) (bvsub pivot!40 knownPivot!5)))))))

(assert (=> b!1380034 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45889 0))(
  ( (Unit!45890) )
))
(declare-fun lt!607801 () Unit!45889)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45889)

(assert (=> b!1380034 (= lt!607801 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117490 res!922411) b!1380032))

(assert (= (and b!1380032 res!922413) b!1380033))

(assert (= (and b!1380033 res!922412) b!1380034))

(declare-fun m!1265297 () Bool)

(assert (=> start!117490 m!1265297))

(declare-fun m!1265299 () Bool)

(assert (=> b!1380032 m!1265299))

(declare-fun m!1265301 () Bool)

(assert (=> b!1380034 m!1265301))

(declare-fun m!1265303 () Bool)

(assert (=> b!1380034 m!1265303))

(check-sat (not start!117490) (not b!1380034) (not b!1380032))
(check-sat)
