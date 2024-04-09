; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117032 () Bool)

(assert start!117032)

(declare-fun res!920503 () Bool)

(declare-fun e!780493 () Bool)

(assert (=> start!117032 (=> (not res!920503) (not e!780493))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93592 0))(
  ( (array!93593 (arr!45193 (Array (_ BitVec 32) (_ BitVec 64))) (size!45744 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93592)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117032 (= res!920503 (and (bvslt (size!45744 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45744 a!4197))))))

(assert (=> start!117032 e!780493))

(declare-fun array_inv!34138 (array!93592) Bool)

(assert (=> start!117032 (array_inv!34138 a!4197)))

(assert (=> start!117032 true))

(declare-fun b!1377764 () Bool)

(declare-fun res!920505 () Bool)

(assert (=> b!1377764 (=> (not res!920505) (not e!780493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377764 (= res!920505 (validKeyInArray!0 (select (arr!45193 a!4197) to!360)))))

(declare-fun b!1377765 () Bool)

(declare-fun res!920504 () Bool)

(assert (=> b!1377765 (=> (not res!920504) (not e!780493))))

(assert (=> b!1377765 (= res!920504 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377766 () Bool)

(assert (=> b!1377766 (= e!780493 (not (bvsle to!360 (size!45744 a!4197))))))

(declare-fun arrayCountValidKeys!0 (array!93592 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377766 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45677 0))(
  ( (Unit!45678) )
))
(declare-fun lt!606148 () Unit!45677)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45677)

(assert (=> b!1377766 (= lt!606148 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117032 res!920503) b!1377764))

(assert (= (and b!1377764 res!920505) b!1377765))

(assert (= (and b!1377765 res!920504) b!1377766))

(declare-fun m!1262241 () Bool)

(assert (=> start!117032 m!1262241))

(declare-fun m!1262243 () Bool)

(assert (=> b!1377764 m!1262243))

(assert (=> b!1377764 m!1262243))

(declare-fun m!1262245 () Bool)

(assert (=> b!1377764 m!1262245))

(declare-fun m!1262247 () Bool)

(assert (=> b!1377766 m!1262247))

(declare-fun m!1262249 () Bool)

(assert (=> b!1377766 m!1262249))

(declare-fun m!1262251 () Bool)

(assert (=> b!1377766 m!1262251))

(declare-fun m!1262253 () Bool)

(assert (=> b!1377766 m!1262253))

(push 1)

(assert (not start!117032))

(assert (not b!1377766))

(assert (not b!1377764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

