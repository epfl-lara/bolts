; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117354 () Bool)

(assert start!117354)

(declare-fun res!922206 () Bool)

(declare-fun e!781646 () Bool)

(assert (=> start!117354 (=> (not res!922206) (not e!781646))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93866 0))(
  ( (array!93867 (arr!45327 (Array (_ BitVec 32) (_ BitVec 64))) (size!45878 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93866)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117354 (= res!922206 (and (bvslt (size!45878 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45878 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117354 e!781646))

(declare-fun array_inv!34272 (array!93866) Bool)

(assert (=> start!117354 (array_inv!34272 a!4010)))

(assert (=> start!117354 true))

(declare-fun b!1379658 () Bool)

(declare-fun res!922205 () Bool)

(assert (=> b!1379658 (=> (not res!922205) (not e!781646))))

(declare-fun isPivot!0 (array!93866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379658 (= res!922205 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379659 () Bool)

(assert (=> b!1379659 (= e!781646 (not true))))

(assert (=> b!1379659 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45861 0))(
  ( (Unit!45862) )
))
(declare-fun lt!607681 () Unit!45861)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45861)

(assert (=> b!1379659 (= lt!607681 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117354 res!922206) b!1379658))

(assert (= (and b!1379658 res!922205) b!1379659))

(declare-fun m!1264921 () Bool)

(assert (=> start!117354 m!1264921))

(declare-fun m!1264923 () Bool)

(assert (=> b!1379658 m!1264923))

(declare-fun m!1264925 () Bool)

(assert (=> b!1379659 m!1264925))

(declare-fun m!1264927 () Bool)

(assert (=> b!1379659 m!1264927))

(push 1)

(assert (not b!1379659))

(assert (not start!117354))

(assert (not b!1379658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

