; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117452 () Bool)

(assert start!117452)

(declare-fun res!922269 () Bool)

(declare-fun e!781844 () Bool)

(assert (=> start!117452 (=> (not res!922269) (not e!781844))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93919 0))(
  ( (array!93920 (arr!45349 (Array (_ BitVec 32) (_ BitVec 64))) (size!45900 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93919)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117452 (= res!922269 (and (bvslt (size!45900 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45900 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117452 e!781844))

(assert (=> start!117452 true))

(declare-fun array_inv!34294 (array!93919) Bool)

(assert (=> start!117452 (array_inv!34294 a!3985)))

(declare-fun b!1379888 () Bool)

(declare-fun res!922268 () Bool)

(assert (=> b!1379888 (=> (not res!922268) (not e!781844))))

(declare-fun isPivot!0 (array!93919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379888 (= res!922268 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379889 () Bool)

(declare-fun res!922267 () Bool)

(assert (=> b!1379889 (=> (not res!922267) (not e!781844))))

(assert (=> b!1379889 (= res!922267 (not (= knownPivot!5 pivot!40)))))

(declare-fun b!1379890 () Bool)

(assert (=> b!1379890 (= e!781844 (not true))))

(assert (=> b!1379890 (isPivot!0 a!3985 from!3363 to!159 (bvadd #b00000000000000000000000000000001 knownPivot!5))))

(declare-datatypes ((Unit!45869 0))(
  ( (Unit!45870) )
))
(declare-fun lt!607753 () Unit!45869)

(declare-fun lemmaKnownPivotPlusOneIsPivot!0 (array!93919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45869)

(assert (=> b!1379890 (= lt!607753 (lemmaKnownPivotPlusOneIsPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117452 res!922269) b!1379888))

(assert (= (and b!1379888 res!922268) b!1379889))

(assert (= (and b!1379889 res!922267) b!1379890))

(declare-fun m!1265169 () Bool)

(assert (=> start!117452 m!1265169))

(declare-fun m!1265171 () Bool)

(assert (=> b!1379888 m!1265171))

(declare-fun m!1265173 () Bool)

(assert (=> b!1379890 m!1265173))

(declare-fun m!1265175 () Bool)

(assert (=> b!1379890 m!1265175))

(push 1)

(assert (not start!117452))

(assert (not b!1379890))

(assert (not b!1379888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

