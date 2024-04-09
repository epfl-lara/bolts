; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117322 () Bool)

(assert start!117322)

(declare-fun res!922109 () Bool)

(declare-fun e!781549 () Bool)

(assert (=> start!117322 (=> (not res!922109) (not e!781549))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93834 0))(
  ( (array!93835 (arr!45311 (Array (_ BitVec 32) (_ BitVec 64))) (size!45862 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93834)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117322 (= res!922109 (and (bvslt (size!45862 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45862 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117322 e!781549))

(declare-fun array_inv!34256 (array!93834) Bool)

(assert (=> start!117322 (array_inv!34256 a!4010)))

(assert (=> start!117322 true))

(declare-fun b!1379562 () Bool)

(declare-fun res!922110 () Bool)

(assert (=> b!1379562 (=> (not res!922110) (not e!781549))))

(declare-fun isPivot!0 (array!93834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379562 (= res!922110 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379563 () Bool)

(assert (=> b!1379563 (= e!781549 (not (bvsle pivot!64 (size!45862 a!4010))))))

(assert (=> b!1379563 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45829 0))(
  ( (Unit!45830) )
))
(declare-fun lt!607633 () Unit!45829)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45829)

(assert (=> b!1379563 (= lt!607633 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117322 res!922109) b!1379562))

(assert (= (and b!1379562 res!922110) b!1379563))

(declare-fun m!1264793 () Bool)

(assert (=> start!117322 m!1264793))

(declare-fun m!1264795 () Bool)

(assert (=> b!1379562 m!1264795))

(declare-fun m!1264797 () Bool)

(assert (=> b!1379563 m!1264797))

(declare-fun m!1264799 () Bool)

(assert (=> b!1379563 m!1264799))

(check-sat (not start!117322) (not b!1379563) (not b!1379562))
(check-sat)
