; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117352 () Bool)

(assert start!117352)

(declare-fun res!922199 () Bool)

(declare-fun e!781640 () Bool)

(assert (=> start!117352 (=> (not res!922199) (not e!781640))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93864 0))(
  ( (array!93865 (arr!45326 (Array (_ BitVec 32) (_ BitVec 64))) (size!45877 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93864)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117352 (= res!922199 (and (bvslt (size!45877 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45877 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117352 e!781640))

(declare-fun array_inv!34271 (array!93864) Bool)

(assert (=> start!117352 (array_inv!34271 a!4010)))

(assert (=> start!117352 true))

(declare-fun b!1379652 () Bool)

(declare-fun res!922200 () Bool)

(assert (=> b!1379652 (=> (not res!922200) (not e!781640))))

(declare-fun isPivot!0 (array!93864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379652 (= res!922200 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379653 () Bool)

(assert (=> b!1379653 (= e!781640 (not true))))

(assert (=> b!1379653 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45859 0))(
  ( (Unit!45860) )
))
(declare-fun lt!607678 () Unit!45859)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45859)

(assert (=> b!1379653 (= lt!607678 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117352 res!922199) b!1379652))

(assert (= (and b!1379652 res!922200) b!1379653))

(declare-fun m!1264913 () Bool)

(assert (=> start!117352 m!1264913))

(declare-fun m!1264915 () Bool)

(assert (=> b!1379652 m!1264915))

(declare-fun m!1264917 () Bool)

(assert (=> b!1379653 m!1264917))

(declare-fun m!1264919 () Bool)

(assert (=> b!1379653 m!1264919))

(check-sat (not b!1379653) (not start!117352) (not b!1379652))
