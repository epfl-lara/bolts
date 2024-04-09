; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116966 () Bool)

(assert start!116966)

(declare-fun res!920378 () Bool)

(declare-fun e!780346 () Bool)

(assert (=> start!116966 (=> (not res!920378) (not e!780346))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93553 0))(
  ( (array!93554 (arr!45175 (Array (_ BitVec 32) (_ BitVec 64))) (size!45726 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93553)

(assert (=> start!116966 (= res!920378 (and (bvslt (size!45726 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45726 a!4212))))))

(assert (=> start!116966 e!780346))

(declare-fun array_inv!34120 (array!93553) Bool)

(assert (=> start!116966 (array_inv!34120 a!4212)))

(assert (=> start!116966 true))

(declare-fun b!1377542 () Bool)

(declare-fun res!920379 () Bool)

(assert (=> b!1377542 (=> (not res!920379) (not e!780346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377542 (= res!920379 (not (validKeyInArray!0 (select (arr!45175 a!4212) to!375))))))

(declare-fun b!1377543 () Bool)

(declare-fun res!920377 () Bool)

(assert (=> b!1377543 (=> (not res!920377) (not e!780346))))

(assert (=> b!1377543 (= res!920377 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377544 () Bool)

(assert (=> b!1377544 (= e!780346 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93553 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377544 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45653 0))(
  ( (Unit!45654) )
))
(declare-fun lt!606052 () Unit!45653)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93553 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45653)

(assert (=> b!1377544 (= lt!606052 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116966 res!920378) b!1377542))

(assert (= (and b!1377542 res!920379) b!1377543))

(assert (= (and b!1377543 res!920377) b!1377544))

(declare-fun m!1261971 () Bool)

(assert (=> start!116966 m!1261971))

(declare-fun m!1261973 () Bool)

(assert (=> b!1377542 m!1261973))

(assert (=> b!1377542 m!1261973))

(declare-fun m!1261975 () Bool)

(assert (=> b!1377542 m!1261975))

(declare-fun m!1261977 () Bool)

(assert (=> b!1377544 m!1261977))

(declare-fun m!1261979 () Bool)

(assert (=> b!1377544 m!1261979))

(declare-fun m!1261981 () Bool)

(assert (=> b!1377544 m!1261981))

(declare-fun m!1261983 () Bool)

(assert (=> b!1377544 m!1261983))

(push 1)

(assert (not start!116966))

(assert (not b!1377544))

(assert (not b!1377542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

