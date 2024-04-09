; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117342 () Bool)

(assert start!117342)

(declare-fun res!922170 () Bool)

(declare-fun e!781610 () Bool)

(assert (=> start!117342 (=> (not res!922170) (not e!781610))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93854 0))(
  ( (array!93855 (arr!45321 (Array (_ BitVec 32) (_ BitVec 64))) (size!45872 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93854)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117342 (= res!922170 (and (bvslt (size!45872 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45872 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117342 e!781610))

(declare-fun array_inv!34266 (array!93854) Bool)

(assert (=> start!117342 (array_inv!34266 a!4010)))

(assert (=> start!117342 true))

(declare-fun b!1379622 () Bool)

(declare-fun res!922169 () Bool)

(assert (=> b!1379622 (=> (not res!922169) (not e!781610))))

(declare-fun isPivot!0 (array!93854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379622 (= res!922169 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379623 () Bool)

(assert (=> b!1379623 (= e!781610 (not true))))

(assert (=> b!1379623 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45849 0))(
  ( (Unit!45850) )
))
(declare-fun lt!607663 () Unit!45849)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45849)

(assert (=> b!1379623 (= lt!607663 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117342 res!922170) b!1379622))

(assert (= (and b!1379622 res!922169) b!1379623))

(declare-fun m!1264873 () Bool)

(assert (=> start!117342 m!1264873))

(declare-fun m!1264875 () Bool)

(assert (=> b!1379622 m!1264875))

(declare-fun m!1264877 () Bool)

(assert (=> b!1379623 m!1264877))

(declare-fun m!1264879 () Bool)

(assert (=> b!1379623 m!1264879))

(push 1)

(assert (not start!117342))

(assert (not b!1379623))

(assert (not b!1379622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

