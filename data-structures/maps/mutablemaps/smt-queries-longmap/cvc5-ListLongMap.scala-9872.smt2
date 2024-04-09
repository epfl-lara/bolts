; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116960 () Bool)

(assert start!116960)

(declare-fun res!920350 () Bool)

(declare-fun e!780329 () Bool)

(assert (=> start!116960 (=> (not res!920350) (not e!780329))))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93547 0))(
  ( (array!93548 (arr!45172 (Array (_ BitVec 32) (_ BitVec 64))) (size!45723 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93547)

(declare-fun to!375 () (_ BitVec 32))

(assert (=> start!116960 (= res!920350 (and (bvslt (size!45723 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45723 a!4212))))))

(assert (=> start!116960 e!780329))

(declare-fun array_inv!34117 (array!93547) Bool)

(assert (=> start!116960 (array_inv!34117 a!4212)))

(assert (=> start!116960 true))

(declare-fun b!1377515 () Bool)

(declare-fun res!920352 () Bool)

(assert (=> b!1377515 (=> (not res!920352) (not e!780329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377515 (= res!920352 (not (validKeyInArray!0 (select (arr!45172 a!4212) to!375))))))

(declare-fun b!1377516 () Bool)

(declare-fun res!920351 () Bool)

(assert (=> b!1377516 (=> (not res!920351) (not e!780329))))

(assert (=> b!1377516 (= res!920351 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377517 () Bool)

(assert (=> b!1377517 (= e!780329 (not (bvsle to!375 (size!45723 a!4212))))))

(declare-fun arrayCountValidKeys!0 (array!93547 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377517 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45647 0))(
  ( (Unit!45648) )
))
(declare-fun lt!606043 () Unit!45647)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45647)

(assert (=> b!1377517 (= lt!606043 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116960 res!920350) b!1377515))

(assert (= (and b!1377515 res!920352) b!1377516))

(assert (= (and b!1377516 res!920351) b!1377517))

(declare-fun m!1261929 () Bool)

(assert (=> start!116960 m!1261929))

(declare-fun m!1261931 () Bool)

(assert (=> b!1377515 m!1261931))

(assert (=> b!1377515 m!1261931))

(declare-fun m!1261933 () Bool)

(assert (=> b!1377515 m!1261933))

(declare-fun m!1261935 () Bool)

(assert (=> b!1377517 m!1261935))

(declare-fun m!1261937 () Bool)

(assert (=> b!1377517 m!1261937))

(declare-fun m!1261939 () Bool)

(assert (=> b!1377517 m!1261939))

(declare-fun m!1261941 () Bool)

(assert (=> b!1377517 m!1261941))

(push 1)

(assert (not b!1377515))

(assert (not start!116960))

(assert (not b!1377517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

