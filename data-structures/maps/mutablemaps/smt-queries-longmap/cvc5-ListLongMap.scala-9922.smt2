; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117344 () Bool)

(assert start!117344)

(declare-fun res!922176 () Bool)

(declare-fun e!781615 () Bool)

(assert (=> start!117344 (=> (not res!922176) (not e!781615))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93856 0))(
  ( (array!93857 (arr!45322 (Array (_ BitVec 32) (_ BitVec 64))) (size!45873 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93856)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117344 (= res!922176 (and (bvslt (size!45873 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45873 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117344 e!781615))

(declare-fun array_inv!34267 (array!93856) Bool)

(assert (=> start!117344 (array_inv!34267 a!4010)))

(assert (=> start!117344 true))

(declare-fun b!1379628 () Bool)

(declare-fun res!922175 () Bool)

(assert (=> b!1379628 (=> (not res!922175) (not e!781615))))

(declare-fun isPivot!0 (array!93856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379628 (= res!922175 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379629 () Bool)

(assert (=> b!1379629 (= e!781615 (not true))))

(assert (=> b!1379629 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45851 0))(
  ( (Unit!45852) )
))
(declare-fun lt!607666 () Unit!45851)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45851)

(assert (=> b!1379629 (= lt!607666 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117344 res!922176) b!1379628))

(assert (= (and b!1379628 res!922175) b!1379629))

(declare-fun m!1264881 () Bool)

(assert (=> start!117344 m!1264881))

(declare-fun m!1264883 () Bool)

(assert (=> b!1379628 m!1264883))

(declare-fun m!1264885 () Bool)

(assert (=> b!1379629 m!1264885))

(declare-fun m!1264887 () Bool)

(assert (=> b!1379629 m!1264887))

(push 1)

(assert (not b!1379628))

(assert (not start!117344))

(assert (not b!1379629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

