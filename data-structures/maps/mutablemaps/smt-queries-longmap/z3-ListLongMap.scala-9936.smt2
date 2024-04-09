; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117484 () Bool)

(assert start!117484)

(declare-fun res!922384 () Bool)

(declare-fun e!781949 () Bool)

(assert (=> start!117484 (=> (not res!922384) (not e!781949))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-datatypes ((array!93951 0))(
  ( (array!93952 (arr!45365 (Array (_ BitVec 32) (_ BitVec 64))) (size!45916 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93951)

(assert (=> start!117484 (= res!922384 (and (bvslt (size!45916 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45916 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117484 e!781949))

(assert (=> start!117484 true))

(declare-fun array_inv!34310 (array!93951) Bool)

(assert (=> start!117484 (array_inv!34310 a!3985)))

(declare-fun b!1380005 () Bool)

(declare-fun res!922386 () Bool)

(assert (=> b!1380005 (=> (not res!922386) (not e!781949))))

(declare-fun isPivot!0 (array!93951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380005 (= res!922386 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380006 () Bool)

(declare-fun res!922385 () Bool)

(assert (=> b!1380006 (=> (not res!922385) (not e!781949))))

(assert (=> b!1380006 (= res!922385 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380007 () Bool)

(assert (=> b!1380007 (= e!781949 (not (and (bvsle (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvsge (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363))))))

(assert (=> b!1380007 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45883 0))(
  ( (Unit!45884) )
))
(declare-fun lt!607792 () Unit!45883)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45883)

(assert (=> b!1380007 (= lt!607792 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117484 res!922384) b!1380005))

(assert (= (and b!1380005 res!922386) b!1380006))

(assert (= (and b!1380006 res!922385) b!1380007))

(declare-fun m!1265273 () Bool)

(assert (=> start!117484 m!1265273))

(declare-fun m!1265275 () Bool)

(assert (=> b!1380005 m!1265275))

(declare-fun m!1265277 () Bool)

(assert (=> b!1380007 m!1265277))

(declare-fun m!1265279 () Bool)

(assert (=> b!1380007 m!1265279))

(check-sat (not b!1380005) (not start!117484) (not b!1380007))
(check-sat)
