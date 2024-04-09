; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117334 () Bool)

(assert start!117334)

(declare-fun res!922146 () Bool)

(declare-fun e!781585 () Bool)

(assert (=> start!117334 (=> (not res!922146) (not e!781585))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(declare-datatypes ((array!93846 0))(
  ( (array!93847 (arr!45317 (Array (_ BitVec 32) (_ BitVec 64))) (size!45868 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93846)

(assert (=> start!117334 (= res!922146 (and (bvslt (size!45868 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45868 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117334 e!781585))

(declare-fun array_inv!34262 (array!93846) Bool)

(assert (=> start!117334 (array_inv!34262 a!4010)))

(assert (=> start!117334 true))

(declare-fun b!1379598 () Bool)

(declare-fun res!922145 () Bool)

(assert (=> b!1379598 (=> (not res!922145) (not e!781585))))

(declare-fun isPivot!0 (array!93846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379598 (= res!922145 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379599 () Bool)

(assert (=> b!1379599 (= e!781585 (not (bvsge pivot!64 #b00000000000000000000000000000000)))))

(assert (=> b!1379599 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45841 0))(
  ( (Unit!45842) )
))
(declare-fun lt!607651 () Unit!45841)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45841)

(assert (=> b!1379599 (= lt!607651 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117334 res!922146) b!1379598))

(assert (= (and b!1379598 res!922145) b!1379599))

(declare-fun m!1264841 () Bool)

(assert (=> start!117334 m!1264841))

(declare-fun m!1264843 () Bool)

(assert (=> b!1379598 m!1264843))

(declare-fun m!1264845 () Bool)

(assert (=> b!1379599 m!1264845))

(declare-fun m!1264847 () Bool)

(assert (=> b!1379599 m!1264847))

(check-sat (not start!117334) (not b!1379599) (not b!1379598))
(check-sat)
