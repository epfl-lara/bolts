; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117488 () Bool)

(assert start!117488)

(declare-fun res!922402 () Bool)

(declare-fun e!781960 () Bool)

(assert (=> start!117488 (=> (not res!922402) (not e!781960))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93955 0))(
  ( (array!93956 (arr!45367 (Array (_ BitVec 32) (_ BitVec 64))) (size!45918 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93955)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117488 (= res!922402 (and (bvslt (size!45918 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45918 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117488 e!781960))

(assert (=> start!117488 true))

(declare-fun array_inv!34312 (array!93955) Bool)

(assert (=> start!117488 (array_inv!34312 a!3985)))

(declare-fun b!1380023 () Bool)

(declare-fun res!922403 () Bool)

(assert (=> b!1380023 (=> (not res!922403) (not e!781960))))

(declare-fun isPivot!0 (array!93955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380023 (= res!922403 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380024 () Bool)

(declare-fun res!922404 () Bool)

(assert (=> b!1380024 (=> (not res!922404) (not e!781960))))

(assert (=> b!1380024 (= res!922404 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380025 () Bool)

(assert (=> b!1380025 (= e!781960 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363) (bvslt (bvsub pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)) (bvsub pivot!40 knownPivot!5)))))))

(assert (=> b!1380025 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45887 0))(
  ( (Unit!45888) )
))
(declare-fun lt!607798 () Unit!45887)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45887)

(assert (=> b!1380025 (= lt!607798 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117488 res!922402) b!1380023))

(assert (= (and b!1380023 res!922403) b!1380024))

(assert (= (and b!1380024 res!922404) b!1380025))

(declare-fun m!1265289 () Bool)

(assert (=> start!117488 m!1265289))

(declare-fun m!1265291 () Bool)

(assert (=> b!1380023 m!1265291))

(declare-fun m!1265293 () Bool)

(assert (=> b!1380025 m!1265293))

(declare-fun m!1265295 () Bool)

(assert (=> b!1380025 m!1265295))

(push 1)

(assert (not start!117488))

(assert (not b!1380025))

(assert (not b!1380023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

