; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116954 () Bool)

(assert start!116954)

(declare-fun res!920323 () Bool)

(declare-fun e!780310 () Bool)

(assert (=> start!116954 (=> (not res!920323) (not e!780310))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93541 0))(
  ( (array!93542 (arr!45169 (Array (_ BitVec 32) (_ BitVec 64))) (size!45720 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93541)

(assert (=> start!116954 (= res!920323 (and (bvslt (size!45720 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45720 a!4212))))))

(assert (=> start!116954 e!780310))

(declare-fun array_inv!34114 (array!93541) Bool)

(assert (=> start!116954 (array_inv!34114 a!4212)))

(assert (=> start!116954 true))

(declare-fun b!1377488 () Bool)

(declare-fun res!920325 () Bool)

(assert (=> b!1377488 (=> (not res!920325) (not e!780310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377488 (= res!920325 (not (validKeyInArray!0 (select (arr!45169 a!4212) to!375))))))

(declare-fun b!1377489 () Bool)

(declare-fun res!920324 () Bool)

(assert (=> b!1377489 (=> (not res!920324) (not e!780310))))

(assert (=> b!1377489 (= res!920324 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377490 () Bool)

(assert (=> b!1377490 (= e!780310 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93541 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377490 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45641 0))(
  ( (Unit!45642) )
))
(declare-fun lt!606034 () Unit!45641)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45641)

(assert (=> b!1377490 (= lt!606034 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116954 res!920323) b!1377488))

(assert (= (and b!1377488 res!920325) b!1377489))

(assert (= (and b!1377489 res!920324) b!1377490))

(declare-fun m!1261887 () Bool)

(assert (=> start!116954 m!1261887))

(declare-fun m!1261889 () Bool)

(assert (=> b!1377488 m!1261889))

(assert (=> b!1377488 m!1261889))

(declare-fun m!1261891 () Bool)

(assert (=> b!1377488 m!1261891))

(declare-fun m!1261893 () Bool)

(assert (=> b!1377490 m!1261893))

(declare-fun m!1261895 () Bool)

(assert (=> b!1377490 m!1261895))

(declare-fun m!1261897 () Bool)

(assert (=> b!1377490 m!1261897))

(declare-fun m!1261899 () Bool)

(assert (=> b!1377490 m!1261899))

(push 1)

(assert (not b!1377488))

(assert (not start!116954))

(assert (not b!1377490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

