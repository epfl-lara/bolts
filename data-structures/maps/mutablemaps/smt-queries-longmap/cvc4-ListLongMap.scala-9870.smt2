; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116952 () Bool)

(assert start!116952)

(declare-fun res!920316 () Bool)

(declare-fun e!780304 () Bool)

(assert (=> start!116952 (=> (not res!920316) (not e!780304))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93539 0))(
  ( (array!93540 (arr!45168 (Array (_ BitVec 32) (_ BitVec 64))) (size!45719 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93539)

(assert (=> start!116952 (= res!920316 (and (bvslt (size!45719 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45719 a!4212))))))

(assert (=> start!116952 e!780304))

(declare-fun array_inv!34113 (array!93539) Bool)

(assert (=> start!116952 (array_inv!34113 a!4212)))

(assert (=> start!116952 true))

(declare-fun b!1377479 () Bool)

(declare-fun res!920314 () Bool)

(assert (=> b!1377479 (=> (not res!920314) (not e!780304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377479 (= res!920314 (not (validKeyInArray!0 (select (arr!45168 a!4212) to!375))))))

(declare-fun b!1377480 () Bool)

(declare-fun res!920315 () Bool)

(assert (=> b!1377480 (=> (not res!920315) (not e!780304))))

(assert (=> b!1377480 (= res!920315 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377481 () Bool)

(assert (=> b!1377481 (= e!780304 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93539 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377481 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45639 0))(
  ( (Unit!45640) )
))
(declare-fun lt!606031 () Unit!45639)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45639)

(assert (=> b!1377481 (= lt!606031 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116952 res!920316) b!1377479))

(assert (= (and b!1377479 res!920314) b!1377480))

(assert (= (and b!1377480 res!920315) b!1377481))

(declare-fun m!1261873 () Bool)

(assert (=> start!116952 m!1261873))

(declare-fun m!1261875 () Bool)

(assert (=> b!1377479 m!1261875))

(assert (=> b!1377479 m!1261875))

(declare-fun m!1261877 () Bool)

(assert (=> b!1377479 m!1261877))

(declare-fun m!1261879 () Bool)

(assert (=> b!1377481 m!1261879))

(declare-fun m!1261881 () Bool)

(assert (=> b!1377481 m!1261881))

(declare-fun m!1261883 () Bool)

(assert (=> b!1377481 m!1261883))

(declare-fun m!1261885 () Bool)

(assert (=> b!1377481 m!1261885))

(push 1)

(assert (not start!116952))

(assert (not b!1377481))

(assert (not b!1377479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

