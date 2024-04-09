; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117338 () Bool)

(assert start!117338)

(declare-fun res!922158 () Bool)

(declare-fun e!781598 () Bool)

(assert (=> start!117338 (=> (not res!922158) (not e!781598))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93850 0))(
  ( (array!93851 (arr!45319 (Array (_ BitVec 32) (_ BitVec 64))) (size!45870 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93850)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117338 (= res!922158 (and (bvslt (size!45870 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45870 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117338 e!781598))

(declare-fun array_inv!34264 (array!93850) Bool)

(assert (=> start!117338 (array_inv!34264 a!4010)))

(assert (=> start!117338 true))

(declare-fun b!1379610 () Bool)

(declare-fun res!922157 () Bool)

(assert (=> b!1379610 (=> (not res!922157) (not e!781598))))

(declare-fun isPivot!0 (array!93850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379610 (= res!922157 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379611 () Bool)

(assert (=> b!1379611 (= e!781598 (not true))))

(assert (=> b!1379611 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45845 0))(
  ( (Unit!45846) )
))
(declare-fun lt!607657 () Unit!45845)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45845)

(assert (=> b!1379611 (= lt!607657 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117338 res!922158) b!1379610))

(assert (= (and b!1379610 res!922157) b!1379611))

(declare-fun m!1264857 () Bool)

(assert (=> start!117338 m!1264857))

(declare-fun m!1264859 () Bool)

(assert (=> b!1379610 m!1264859))

(declare-fun m!1264861 () Bool)

(assert (=> b!1379611 m!1264861))

(declare-fun m!1264863 () Bool)

(assert (=> b!1379611 m!1264863))

(push 1)

(assert (not start!117338))

(assert (not b!1379611))

(assert (not b!1379610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

