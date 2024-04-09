; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117328 () Bool)

(assert start!117328)

(declare-fun res!922128 () Bool)

(declare-fun e!781567 () Bool)

(assert (=> start!117328 (=> (not res!922128) (not e!781567))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93840 0))(
  ( (array!93841 (arr!45314 (Array (_ BitVec 32) (_ BitVec 64))) (size!45865 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93840)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117328 (= res!922128 (and (bvslt (size!45865 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45865 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117328 e!781567))

(declare-fun array_inv!34259 (array!93840) Bool)

(assert (=> start!117328 (array_inv!34259 a!4010)))

(assert (=> start!117328 true))

(declare-fun b!1379580 () Bool)

(declare-fun res!922127 () Bool)

(assert (=> b!1379580 (=> (not res!922127) (not e!781567))))

(declare-fun isPivot!0 (array!93840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379580 (= res!922127 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379581 () Bool)

(assert (=> b!1379581 (= e!781567 (not true))))

(assert (=> b!1379581 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45835 0))(
  ( (Unit!45836) )
))
(declare-fun lt!607642 () Unit!45835)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45835)

(assert (=> b!1379581 (= lt!607642 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117328 res!922128) b!1379580))

(assert (= (and b!1379580 res!922127) b!1379581))

(declare-fun m!1264817 () Bool)

(assert (=> start!117328 m!1264817))

(declare-fun m!1264819 () Bool)

(assert (=> b!1379580 m!1264819))

(declare-fun m!1264821 () Bool)

(assert (=> b!1379581 m!1264821))

(declare-fun m!1264823 () Bool)

(assert (=> b!1379581 m!1264823))

(check-sat (not start!117328) (not b!1379581) (not b!1379580))
