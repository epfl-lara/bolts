; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116964 () Bool)

(assert start!116964)

(declare-fun res!920368 () Bool)

(declare-fun e!780340 () Bool)

(assert (=> start!116964 (=> (not res!920368) (not e!780340))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93551 0))(
  ( (array!93552 (arr!45174 (Array (_ BitVec 32) (_ BitVec 64))) (size!45725 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93551)

(assert (=> start!116964 (= res!920368 (and (bvslt (size!45725 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45725 a!4212))))))

(assert (=> start!116964 e!780340))

(declare-fun array_inv!34119 (array!93551) Bool)

(assert (=> start!116964 (array_inv!34119 a!4212)))

(assert (=> start!116964 true))

(declare-fun b!1377533 () Bool)

(declare-fun res!920369 () Bool)

(assert (=> b!1377533 (=> (not res!920369) (not e!780340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377533 (= res!920369 (not (validKeyInArray!0 (select (arr!45174 a!4212) to!375))))))

(declare-fun b!1377534 () Bool)

(declare-fun res!920370 () Bool)

(assert (=> b!1377534 (=> (not res!920370) (not e!780340))))

(assert (=> b!1377534 (= res!920370 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377535 () Bool)

(assert (=> b!1377535 (= e!780340 (not (bvsle to!375 (size!45725 a!4212))))))

(declare-fun arrayCountValidKeys!0 (array!93551 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377535 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45651 0))(
  ( (Unit!45652) )
))
(declare-fun lt!606049 () Unit!45651)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45651)

(assert (=> b!1377535 (= lt!606049 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116964 res!920368) b!1377533))

(assert (= (and b!1377533 res!920369) b!1377534))

(assert (= (and b!1377534 res!920370) b!1377535))

(declare-fun m!1261957 () Bool)

(assert (=> start!116964 m!1261957))

(declare-fun m!1261959 () Bool)

(assert (=> b!1377533 m!1261959))

(assert (=> b!1377533 m!1261959))

(declare-fun m!1261961 () Bool)

(assert (=> b!1377533 m!1261961))

(declare-fun m!1261963 () Bool)

(assert (=> b!1377535 m!1261963))

(declare-fun m!1261965 () Bool)

(assert (=> b!1377535 m!1261965))

(declare-fun m!1261967 () Bool)

(assert (=> b!1377535 m!1261967))

(declare-fun m!1261969 () Bool)

(assert (=> b!1377535 m!1261969))

(push 1)

(assert (not b!1377533))

(assert (not start!116964))

(assert (not b!1377535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

