; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117340 () Bool)

(assert start!117340)

(declare-fun res!922163 () Bool)

(declare-fun e!781604 () Bool)

(assert (=> start!117340 (=> (not res!922163) (not e!781604))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93852 0))(
  ( (array!93853 (arr!45320 (Array (_ BitVec 32) (_ BitVec 64))) (size!45871 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93852)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117340 (= res!922163 (and (bvslt (size!45871 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45871 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117340 e!781604))

(declare-fun array_inv!34265 (array!93852) Bool)

(assert (=> start!117340 (array_inv!34265 a!4010)))

(assert (=> start!117340 true))

(declare-fun b!1379616 () Bool)

(declare-fun res!922164 () Bool)

(assert (=> b!1379616 (=> (not res!922164) (not e!781604))))

(declare-fun isPivot!0 (array!93852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379616 (= res!922164 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379617 () Bool)

(assert (=> b!1379617 (= e!781604 (not true))))

(assert (=> b!1379617 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45847 0))(
  ( (Unit!45848) )
))
(declare-fun lt!607660 () Unit!45847)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45847)

(assert (=> b!1379617 (= lt!607660 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117340 res!922163) b!1379616))

(assert (= (and b!1379616 res!922164) b!1379617))

(declare-fun m!1264865 () Bool)

(assert (=> start!117340 m!1264865))

(declare-fun m!1264867 () Bool)

(assert (=> b!1379616 m!1264867))

(declare-fun m!1264869 () Bool)

(assert (=> b!1379617 m!1264869))

(declare-fun m!1264871 () Bool)

(assert (=> b!1379617 m!1264871))

(check-sat (not start!117340) (not b!1379617) (not b!1379616))
