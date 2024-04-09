; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116956 () Bool)

(assert start!116956)

(declare-fun res!920332 () Bool)

(declare-fun e!780316 () Bool)

(assert (=> start!116956 (=> (not res!920332) (not e!780316))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93543 0))(
  ( (array!93544 (arr!45170 (Array (_ BitVec 32) (_ BitVec 64))) (size!45721 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93543)

(assert (=> start!116956 (= res!920332 (and (bvslt (size!45721 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45721 a!4212))))))

(assert (=> start!116956 e!780316))

(declare-fun array_inv!34115 (array!93543) Bool)

(assert (=> start!116956 (array_inv!34115 a!4212)))

(assert (=> start!116956 true))

(declare-fun b!1377497 () Bool)

(declare-fun res!920334 () Bool)

(assert (=> b!1377497 (=> (not res!920334) (not e!780316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377497 (= res!920334 (not (validKeyInArray!0 (select (arr!45170 a!4212) to!375))))))

(declare-fun b!1377498 () Bool)

(declare-fun res!920333 () Bool)

(assert (=> b!1377498 (=> (not res!920333) (not e!780316))))

(assert (=> b!1377498 (= res!920333 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377499 () Bool)

(assert (=> b!1377499 (= e!780316 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93543 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377499 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45643 0))(
  ( (Unit!45644) )
))
(declare-fun lt!606037 () Unit!45643)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45643)

(assert (=> b!1377499 (= lt!606037 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116956 res!920332) b!1377497))

(assert (= (and b!1377497 res!920334) b!1377498))

(assert (= (and b!1377498 res!920333) b!1377499))

(declare-fun m!1261901 () Bool)

(assert (=> start!116956 m!1261901))

(declare-fun m!1261903 () Bool)

(assert (=> b!1377497 m!1261903))

(assert (=> b!1377497 m!1261903))

(declare-fun m!1261905 () Bool)

(assert (=> b!1377497 m!1261905))

(declare-fun m!1261907 () Bool)

(assert (=> b!1377499 m!1261907))

(declare-fun m!1261909 () Bool)

(assert (=> b!1377499 m!1261909))

(declare-fun m!1261911 () Bool)

(assert (=> b!1377499 m!1261911))

(declare-fun m!1261913 () Bool)

(assert (=> b!1377499 m!1261913))

(check-sat (not start!116956) (not b!1377499) (not b!1377497))
