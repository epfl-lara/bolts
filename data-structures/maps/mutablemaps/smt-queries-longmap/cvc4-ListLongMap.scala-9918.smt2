; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117324 () Bool)

(assert start!117324)

(declare-fun res!922116 () Bool)

(declare-fun e!781555 () Bool)

(assert (=> start!117324 (=> (not res!922116) (not e!781555))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93836 0))(
  ( (array!93837 (arr!45312 (Array (_ BitVec 32) (_ BitVec 64))) (size!45863 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93836)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117324 (= res!922116 (and (bvslt (size!45863 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45863 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117324 e!781555))

(declare-fun array_inv!34257 (array!93836) Bool)

(assert (=> start!117324 (array_inv!34257 a!4010)))

(assert (=> start!117324 true))

(declare-fun b!1379568 () Bool)

(declare-fun res!922115 () Bool)

(assert (=> b!1379568 (=> (not res!922115) (not e!781555))))

(declare-fun isPivot!0 (array!93836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379568 (= res!922115 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379569 () Bool)

(assert (=> b!1379569 (= e!781555 (not (bvsle pivot!64 (size!45863 a!4010))))))

(assert (=> b!1379569 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45831 0))(
  ( (Unit!45832) )
))
(declare-fun lt!607636 () Unit!45831)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45831)

(assert (=> b!1379569 (= lt!607636 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117324 res!922116) b!1379568))

(assert (= (and b!1379568 res!922115) b!1379569))

(declare-fun m!1264801 () Bool)

(assert (=> start!117324 m!1264801))

(declare-fun m!1264803 () Bool)

(assert (=> b!1379568 m!1264803))

(declare-fun m!1264805 () Bool)

(assert (=> b!1379569 m!1264805))

(declare-fun m!1264807 () Bool)

(assert (=> b!1379569 m!1264807))

(push 1)

(assert (not start!117324))

(assert (not b!1379569))

(assert (not b!1379568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

