; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117456 () Bool)

(assert start!117456)

(declare-fun res!922285 () Bool)

(declare-fun e!781856 () Bool)

(assert (=> start!117456 (=> (not res!922285) (not e!781856))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93923 0))(
  ( (array!93924 (arr!45351 (Array (_ BitVec 32) (_ BitVec 64))) (size!45902 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93923)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117456 (= res!922285 (and (bvslt (size!45902 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45902 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117456 e!781856))

(assert (=> start!117456 true))

(declare-fun array_inv!34296 (array!93923) Bool)

(assert (=> start!117456 (array_inv!34296 a!3985)))

(declare-fun b!1379906 () Bool)

(declare-fun res!922286 () Bool)

(assert (=> b!1379906 (=> (not res!922286) (not e!781856))))

(declare-fun isPivot!0 (array!93923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379906 (= res!922286 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379907 () Bool)

(declare-fun res!922287 () Bool)

(assert (=> b!1379907 (=> (not res!922287) (not e!781856))))

(assert (=> b!1379907 (= res!922287 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379908 () Bool)

(assert (=> b!1379908 (= e!781856 (not true))))

(assert (=> b!1379908 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45873 0))(
  ( (Unit!45874) )
))
(declare-fun lt!607759 () Unit!45873)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45873)

(assert (=> b!1379908 (= lt!607759 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117456 res!922285) b!1379906))

(assert (= (and b!1379906 res!922286) b!1379907))

(assert (= (and b!1379907 res!922287) b!1379908))

(declare-fun m!1265185 () Bool)

(assert (=> start!117456 m!1265185))

(declare-fun m!1265187 () Bool)

(assert (=> b!1379906 m!1265187))

(declare-fun m!1265189 () Bool)

(assert (=> b!1379908 m!1265189))

(declare-fun m!1265191 () Bool)

(assert (=> b!1379908 m!1265191))

(push 1)

(assert (not start!117456))

(assert (not b!1379908))

(assert (not b!1379906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

