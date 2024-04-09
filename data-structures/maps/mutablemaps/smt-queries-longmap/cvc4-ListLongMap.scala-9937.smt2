; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117492 () Bool)

(assert start!117492)

(declare-fun res!922422 () Bool)

(declare-fun e!781973 () Bool)

(assert (=> start!117492 (=> (not res!922422) (not e!781973))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93959 0))(
  ( (array!93960 (arr!45369 (Array (_ BitVec 32) (_ BitVec 64))) (size!45920 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93959)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117492 (= res!922422 (and (bvslt (size!45920 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45920 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117492 e!781973))

(assert (=> start!117492 true))

(declare-fun array_inv!34314 (array!93959) Bool)

(assert (=> start!117492 (array_inv!34314 a!3985)))

(declare-fun b!1380041 () Bool)

(declare-fun res!922421 () Bool)

(assert (=> b!1380041 (=> (not res!922421) (not e!781973))))

(declare-fun isPivot!0 (array!93959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380041 (= res!922421 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380042 () Bool)

(declare-fun res!922420 () Bool)

(assert (=> b!1380042 (=> (not res!922420) (not e!781973))))

(assert (=> b!1380042 (= res!922420 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1380043 () Bool)

(assert (=> b!1380043 (= e!781973 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 knownPivot!5) pivot!40) (bvslt (bvadd #b00000000000000000000000000000001 knownPivot!5) from!3363) (bvslt (bvsub pivot!40 (bvadd #b00000000000000000000000000000001 knownPivot!5)) (bvsub pivot!40 knownPivot!5)))))))

(assert (=> b!1380043 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45891 0))(
  ( (Unit!45892) )
))
(declare-fun lt!607804 () Unit!45891)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45891)

(assert (=> b!1380043 (= lt!607804 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117492 res!922422) b!1380041))

(assert (= (and b!1380041 res!922421) b!1380042))

(assert (= (and b!1380042 res!922420) b!1380043))

(declare-fun m!1265305 () Bool)

(assert (=> start!117492 m!1265305))

(declare-fun m!1265307 () Bool)

(assert (=> b!1380041 m!1265307))

(declare-fun m!1265309 () Bool)

(assert (=> b!1380043 m!1265309))

(declare-fun m!1265311 () Bool)

(assert (=> b!1380043 m!1265311))

(push 1)

(assert (not b!1380041))

(assert (not start!117492))

(assert (not b!1380043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

