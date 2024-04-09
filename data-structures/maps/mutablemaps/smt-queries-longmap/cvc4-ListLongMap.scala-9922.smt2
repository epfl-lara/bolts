; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117348 () Bool)

(assert start!117348)

(declare-fun res!922187 () Bool)

(declare-fun e!781628 () Bool)

(assert (=> start!117348 (=> (not res!922187) (not e!781628))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93860 0))(
  ( (array!93861 (arr!45324 (Array (_ BitVec 32) (_ BitVec 64))) (size!45875 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93860)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117348 (= res!922187 (and (bvslt (size!45875 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45875 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117348 e!781628))

(declare-fun array_inv!34269 (array!93860) Bool)

(assert (=> start!117348 (array_inv!34269 a!4010)))

(assert (=> start!117348 true))

(declare-fun b!1379640 () Bool)

(declare-fun res!922188 () Bool)

(assert (=> b!1379640 (=> (not res!922188) (not e!781628))))

(declare-fun isPivot!0 (array!93860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379640 (= res!922188 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379641 () Bool)

(assert (=> b!1379641 (= e!781628 (not true))))

(assert (=> b!1379641 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45855 0))(
  ( (Unit!45856) )
))
(declare-fun lt!607672 () Unit!45855)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45855)

(assert (=> b!1379641 (= lt!607672 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117348 res!922187) b!1379640))

(assert (= (and b!1379640 res!922188) b!1379641))

(declare-fun m!1264897 () Bool)

(assert (=> start!117348 m!1264897))

(declare-fun m!1264899 () Bool)

(assert (=> b!1379640 m!1264899))

(declare-fun m!1264901 () Bool)

(assert (=> b!1379641 m!1264901))

(declare-fun m!1264903 () Bool)

(assert (=> b!1379641 m!1264903))

(push 1)

(assert (not start!117348))

(assert (not b!1379641))

(assert (not b!1379640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

