; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117336 () Bool)

(assert start!117336)

(declare-fun res!922152 () Bool)

(declare-fun e!781591 () Bool)

(assert (=> start!117336 (=> (not res!922152) (not e!781591))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93848 0))(
  ( (array!93849 (arr!45318 (Array (_ BitVec 32) (_ BitVec 64))) (size!45869 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93848)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117336 (= res!922152 (and (bvslt (size!45869 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45869 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117336 e!781591))

(declare-fun array_inv!34263 (array!93848) Bool)

(assert (=> start!117336 (array_inv!34263 a!4010)))

(assert (=> start!117336 true))

(declare-fun b!1379604 () Bool)

(declare-fun res!922151 () Bool)

(assert (=> b!1379604 (=> (not res!922151) (not e!781591))))

(declare-fun isPivot!0 (array!93848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379604 (= res!922151 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379605 () Bool)

(assert (=> b!1379605 (= e!781591 (not (bvsge pivot!64 #b00000000000000000000000000000000)))))

(assert (=> b!1379605 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45843 0))(
  ( (Unit!45844) )
))
(declare-fun lt!607654 () Unit!45843)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45843)

(assert (=> b!1379605 (= lt!607654 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117336 res!922152) b!1379604))

(assert (= (and b!1379604 res!922151) b!1379605))

(declare-fun m!1264849 () Bool)

(assert (=> start!117336 m!1264849))

(declare-fun m!1264851 () Bool)

(assert (=> b!1379604 m!1264851))

(declare-fun m!1264853 () Bool)

(assert (=> b!1379605 m!1264853))

(declare-fun m!1264855 () Bool)

(assert (=> b!1379605 m!1264855))

(push 1)

(assert (not start!117336))

(assert (not b!1379605))

(assert (not b!1379604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

