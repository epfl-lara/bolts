; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116970 () Bool)

(assert start!116970)

(declare-fun res!920397 () Bool)

(declare-fun e!780358 () Bool)

(assert (=> start!116970 (=> (not res!920397) (not e!780358))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93557 0))(
  ( (array!93558 (arr!45177 (Array (_ BitVec 32) (_ BitVec 64))) (size!45728 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93557)

(assert (=> start!116970 (= res!920397 (and (bvslt (size!45728 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45728 a!4212))))))

(assert (=> start!116970 e!780358))

(declare-fun array_inv!34122 (array!93557) Bool)

(assert (=> start!116970 (array_inv!34122 a!4212)))

(assert (=> start!116970 true))

(declare-fun b!1377560 () Bool)

(declare-fun res!920395 () Bool)

(assert (=> b!1377560 (=> (not res!920395) (not e!780358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377560 (= res!920395 (not (validKeyInArray!0 (select (arr!45177 a!4212) to!375))))))

(declare-fun b!1377561 () Bool)

(declare-fun res!920396 () Bool)

(assert (=> b!1377561 (=> (not res!920396) (not e!780358))))

(assert (=> b!1377561 (= res!920396 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377562 () Bool)

(assert (=> b!1377562 (= e!780358 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93557 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377562 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45657 0))(
  ( (Unit!45658) )
))
(declare-fun lt!606058 () Unit!45657)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45657)

(assert (=> b!1377562 (= lt!606058 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116970 res!920397) b!1377560))

(assert (= (and b!1377560 res!920395) b!1377561))

(assert (= (and b!1377561 res!920396) b!1377562))

(declare-fun m!1261999 () Bool)

(assert (=> start!116970 m!1261999))

(declare-fun m!1262001 () Bool)

(assert (=> b!1377560 m!1262001))

(assert (=> b!1377560 m!1262001))

(declare-fun m!1262003 () Bool)

(assert (=> b!1377560 m!1262003))

(declare-fun m!1262005 () Bool)

(assert (=> b!1377562 m!1262005))

(declare-fun m!1262007 () Bool)

(assert (=> b!1377562 m!1262007))

(declare-fun m!1262009 () Bool)

(assert (=> b!1377562 m!1262009))

(declare-fun m!1262011 () Bool)

(assert (=> b!1377562 m!1262011))

(push 1)

(assert (not b!1377560))

(assert (not start!116970))

(assert (not b!1377562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

