; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117326 () Bool)

(assert start!117326)

(declare-fun res!922121 () Bool)

(declare-fun e!781562 () Bool)

(assert (=> start!117326 (=> (not res!922121) (not e!781562))))

(declare-datatypes ((array!93838 0))(
  ( (array!93839 (arr!45313 (Array (_ BitVec 32) (_ BitVec 64))) (size!45864 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93838)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(declare-fun from!3388 () (_ BitVec 32))

(assert (=> start!117326 (= res!922121 (and (bvslt (size!45864 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45864 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117326 e!781562))

(declare-fun array_inv!34258 (array!93838) Bool)

(assert (=> start!117326 (array_inv!34258 a!4010)))

(assert (=> start!117326 true))

(declare-fun b!1379574 () Bool)

(declare-fun res!922122 () Bool)

(assert (=> b!1379574 (=> (not res!922122) (not e!781562))))

(declare-fun isPivot!0 (array!93838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379574 (= res!922122 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379575 () Bool)

(assert (=> b!1379575 (= e!781562 (not true))))

(assert (=> b!1379575 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45833 0))(
  ( (Unit!45834) )
))
(declare-fun lt!607639 () Unit!45833)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45833)

(assert (=> b!1379575 (= lt!607639 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117326 res!922121) b!1379574))

(assert (= (and b!1379574 res!922122) b!1379575))

(declare-fun m!1264809 () Bool)

(assert (=> start!117326 m!1264809))

(declare-fun m!1264811 () Bool)

(assert (=> b!1379574 m!1264811))

(declare-fun m!1264813 () Bool)

(assert (=> b!1379575 m!1264813))

(declare-fun m!1264815 () Bool)

(assert (=> b!1379575 m!1264815))

(push 1)

(assert (not start!117326))

(assert (not b!1379575))

(assert (not b!1379574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

