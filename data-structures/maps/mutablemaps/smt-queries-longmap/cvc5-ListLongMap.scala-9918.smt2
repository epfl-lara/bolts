; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117320 () Bool)

(assert start!117320)

(declare-fun res!922103 () Bool)

(declare-fun e!781543 () Bool)

(assert (=> start!117320 (=> (not res!922103) (not e!781543))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93832 0))(
  ( (array!93833 (arr!45310 (Array (_ BitVec 32) (_ BitVec 64))) (size!45861 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93832)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117320 (= res!922103 (and (bvslt (size!45861 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45861 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117320 e!781543))

(declare-fun array_inv!34255 (array!93832) Bool)

(assert (=> start!117320 (array_inv!34255 a!4010)))

(assert (=> start!117320 true))

(declare-fun b!1379556 () Bool)

(declare-fun res!922104 () Bool)

(assert (=> b!1379556 (=> (not res!922104) (not e!781543))))

(declare-fun isPivot!0 (array!93832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379556 (= res!922104 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379557 () Bool)

(assert (=> b!1379557 (= e!781543 (not (bvsle pivot!64 (size!45861 a!4010))))))

(assert (=> b!1379557 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45827 0))(
  ( (Unit!45828) )
))
(declare-fun lt!607630 () Unit!45827)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45827)

(assert (=> b!1379557 (= lt!607630 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117320 res!922103) b!1379556))

(assert (= (and b!1379556 res!922104) b!1379557))

(declare-fun m!1264785 () Bool)

(assert (=> start!117320 m!1264785))

(declare-fun m!1264787 () Bool)

(assert (=> b!1379556 m!1264787))

(declare-fun m!1264789 () Bool)

(assert (=> b!1379557 m!1264789))

(declare-fun m!1264791 () Bool)

(assert (=> b!1379557 m!1264791))

(push 1)

(assert (not start!117320))

(assert (not b!1379557))

(assert (not b!1379556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

