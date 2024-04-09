; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117330 () Bool)

(assert start!117330)

(declare-fun res!922133 () Bool)

(declare-fun e!781573 () Bool)

(assert (=> start!117330 (=> (not res!922133) (not e!781573))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93842 0))(
  ( (array!93843 (arr!45315 (Array (_ BitVec 32) (_ BitVec 64))) (size!45866 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93842)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117330 (= res!922133 (and (bvslt (size!45866 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45866 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117330 e!781573))

(declare-fun array_inv!34260 (array!93842) Bool)

(assert (=> start!117330 (array_inv!34260 a!4010)))

(assert (=> start!117330 true))

(declare-fun b!1379586 () Bool)

(declare-fun res!922134 () Bool)

(assert (=> b!1379586 (=> (not res!922134) (not e!781573))))

(declare-fun isPivot!0 (array!93842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379586 (= res!922134 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379587 () Bool)

(assert (=> b!1379587 (= e!781573 (not true))))

(assert (=> b!1379587 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45837 0))(
  ( (Unit!45838) )
))
(declare-fun lt!607645 () Unit!45837)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45837)

(assert (=> b!1379587 (= lt!607645 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117330 res!922133) b!1379586))

(assert (= (and b!1379586 res!922134) b!1379587))

(declare-fun m!1264825 () Bool)

(assert (=> start!117330 m!1264825))

(declare-fun m!1264827 () Bool)

(assert (=> b!1379586 m!1264827))

(declare-fun m!1264829 () Bool)

(assert (=> b!1379587 m!1264829))

(declare-fun m!1264831 () Bool)

(assert (=> b!1379587 m!1264831))

(push 1)

(assert (not b!1379586))

(assert (not start!117330))

(assert (not b!1379587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

