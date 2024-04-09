; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117332 () Bool)

(assert start!117332)

(declare-fun res!922140 () Bool)

(declare-fun e!781579 () Bool)

(assert (=> start!117332 (=> (not res!922140) (not e!781579))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93844 0))(
  ( (array!93845 (arr!45316 (Array (_ BitVec 32) (_ BitVec 64))) (size!45867 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93844)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117332 (= res!922140 (and (bvslt (size!45867 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45867 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117332 e!781579))

(declare-fun array_inv!34261 (array!93844) Bool)

(assert (=> start!117332 (array_inv!34261 a!4010)))

(assert (=> start!117332 true))

(declare-fun b!1379592 () Bool)

(declare-fun res!922139 () Bool)

(assert (=> b!1379592 (=> (not res!922139) (not e!781579))))

(declare-fun isPivot!0 (array!93844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379592 (= res!922139 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379593 () Bool)

(assert (=> b!1379593 (= e!781579 (not (bvsge pivot!64 #b00000000000000000000000000000000)))))

(assert (=> b!1379593 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45839 0))(
  ( (Unit!45840) )
))
(declare-fun lt!607648 () Unit!45839)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45839)

(assert (=> b!1379593 (= lt!607648 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117332 res!922140) b!1379592))

(assert (= (and b!1379592 res!922139) b!1379593))

(declare-fun m!1264833 () Bool)

(assert (=> start!117332 m!1264833))

(declare-fun m!1264835 () Bool)

(assert (=> b!1379592 m!1264835))

(declare-fun m!1264837 () Bool)

(assert (=> b!1379593 m!1264837))

(declare-fun m!1264839 () Bool)

(assert (=> b!1379593 m!1264839))

(push 1)

(assert (not start!117332))

(assert (not b!1379593))

(assert (not b!1379592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

