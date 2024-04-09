; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117454 () Bool)

(assert start!117454)

(declare-fun res!922277 () Bool)

(declare-fun e!781849 () Bool)

(assert (=> start!117454 (=> (not res!922277) (not e!781849))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-datatypes ((array!93921 0))(
  ( (array!93922 (arr!45350 (Array (_ BitVec 32) (_ BitVec 64))) (size!45901 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93921)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(assert (=> start!117454 (= res!922277 (and (bvslt (size!45901 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45901 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117454 e!781849))

(assert (=> start!117454 true))

(declare-fun array_inv!34295 (array!93921) Bool)

(assert (=> start!117454 (array_inv!34295 a!3985)))

(declare-fun b!1379897 () Bool)

(declare-fun res!922278 () Bool)

(assert (=> b!1379897 (=> (not res!922278) (not e!781849))))

(declare-fun isPivot!0 (array!93921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379897 (= res!922278 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379898 () Bool)

(declare-fun res!922276 () Bool)

(assert (=> b!1379898 (=> (not res!922276) (not e!781849))))

(assert (=> b!1379898 (= res!922276 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379899 () Bool)

(assert (=> b!1379899 (= e!781849 (not true))))

(assert (=> b!1379899 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45871 0))(
  ( (Unit!45872) )
))
(declare-fun lt!607756 () Unit!45871)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45871)

(assert (=> b!1379899 (= lt!607756 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117454 res!922277) b!1379897))

(assert (= (and b!1379897 res!922278) b!1379898))

(assert (= (and b!1379898 res!922276) b!1379899))

(declare-fun m!1265177 () Bool)

(assert (=> start!117454 m!1265177))

(declare-fun m!1265179 () Bool)

(assert (=> b!1379897 m!1265179))

(declare-fun m!1265181 () Bool)

(assert (=> b!1379899 m!1265181))

(declare-fun m!1265183 () Bool)

(assert (=> b!1379899 m!1265183))

(check-sat (not b!1379897) (not start!117454) (not b!1379899))
