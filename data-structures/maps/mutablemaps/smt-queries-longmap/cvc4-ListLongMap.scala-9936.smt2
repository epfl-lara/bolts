; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117486 () Bool)

(assert start!117486)

(declare-fun res!922394 () Bool)

(declare-fun e!781955 () Bool)

(assert (=> start!117486 (=> (not res!922394) (not e!781955))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93953 0))(
  ( (array!93954 (arr!45366 (Array (_ BitVec 32) (_ BitVec 64))) (size!45917 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93953)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117486 (= res!922394 (and (bvslt (size!45917 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45917 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117486 e!781955))

(assert (=> start!117486 true))

(declare-fun array_inv!34311 (array!93953) Bool)

(assert (=> start!117486 (array_inv!34311 a!3985)))

(declare-fun b!1380014 () Bool)

(declare-fun res!922395 () Bool)

(assert (=> b!1380014 (=> (not res!922395) (not e!781955))))

(declare-fun isPivot!0 (array!93953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380014 (= res!922395 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380015 () Bool)

(declare-fun res!922393 () Bool)

(assert (=> b!1380015 (=> (not res!922393) (not e!781955))))

(assert (=> b!1380015 (= res!922393 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380016 () Bool)

(assert (=> b!1380016 (= e!781955 (not (and (bvsle (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvsge (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363))))))

(assert (=> b!1380016 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45885 0))(
  ( (Unit!45886) )
))
(declare-fun lt!607795 () Unit!45885)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45885)

(assert (=> b!1380016 (= lt!607795 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117486 res!922394) b!1380014))

(assert (= (and b!1380014 res!922395) b!1380015))

(assert (= (and b!1380015 res!922393) b!1380016))

(declare-fun m!1265281 () Bool)

(assert (=> start!117486 m!1265281))

(declare-fun m!1265283 () Bool)

(assert (=> b!1380014 m!1265283))

(declare-fun m!1265285 () Bool)

(assert (=> b!1380016 m!1265285))

(declare-fun m!1265287 () Bool)

(assert (=> b!1380016 m!1265287))

(push 1)

(assert (not b!1380014))

(assert (not start!117486))

(assert (not b!1380016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

