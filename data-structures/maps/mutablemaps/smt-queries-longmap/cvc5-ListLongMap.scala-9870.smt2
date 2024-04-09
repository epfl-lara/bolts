; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116948 () Bool)

(assert start!116948)

(declare-fun res!920298 () Bool)

(declare-fun e!780293 () Bool)

(assert (=> start!116948 (=> (not res!920298) (not e!780293))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93535 0))(
  ( (array!93536 (arr!45166 (Array (_ BitVec 32) (_ BitVec 64))) (size!45717 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93535)

(assert (=> start!116948 (= res!920298 (and (bvslt (size!45717 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45717 a!4212))))))

(assert (=> start!116948 e!780293))

(declare-fun array_inv!34111 (array!93535) Bool)

(assert (=> start!116948 (array_inv!34111 a!4212)))

(assert (=> start!116948 true))

(declare-fun b!1377461 () Bool)

(declare-fun res!920296 () Bool)

(assert (=> b!1377461 (=> (not res!920296) (not e!780293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377461 (= res!920296 (not (validKeyInArray!0 (select (arr!45166 a!4212) to!375))))))

(declare-fun b!1377462 () Bool)

(declare-fun res!920297 () Bool)

(assert (=> b!1377462 (=> (not res!920297) (not e!780293))))

(assert (=> b!1377462 (= res!920297 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377463 () Bool)

(assert (=> b!1377463 (= e!780293 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93535 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377463 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45635 0))(
  ( (Unit!45636) )
))
(declare-fun lt!606025 () Unit!45635)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45635)

(assert (=> b!1377463 (= lt!606025 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116948 res!920298) b!1377461))

(assert (= (and b!1377461 res!920296) b!1377462))

(assert (= (and b!1377462 res!920297) b!1377463))

(declare-fun m!1261845 () Bool)

(assert (=> start!116948 m!1261845))

(declare-fun m!1261847 () Bool)

(assert (=> b!1377461 m!1261847))

(assert (=> b!1377461 m!1261847))

(declare-fun m!1261849 () Bool)

(assert (=> b!1377461 m!1261849))

(declare-fun m!1261851 () Bool)

(assert (=> b!1377463 m!1261851))

(declare-fun m!1261853 () Bool)

(assert (=> b!1377463 m!1261853))

(declare-fun m!1261855 () Bool)

(assert (=> b!1377463 m!1261855))

(declare-fun m!1261857 () Bool)

(assert (=> b!1377463 m!1261857))

(push 1)

(assert (not b!1377461))

(assert (not b!1377463))

(assert (not start!116948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

