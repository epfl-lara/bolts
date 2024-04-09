; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117036 () Bool)

(assert start!117036)

(declare-fun res!920521 () Bool)

(declare-fun e!780506 () Bool)

(assert (=> start!117036 (=> (not res!920521) (not e!780506))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93596 0))(
  ( (array!93597 (arr!45195 (Array (_ BitVec 32) (_ BitVec 64))) (size!45746 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93596)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117036 (= res!920521 (and (bvslt (size!45746 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45746 a!4197))))))

(assert (=> start!117036 e!780506))

(declare-fun array_inv!34140 (array!93596) Bool)

(assert (=> start!117036 (array_inv!34140 a!4197)))

(assert (=> start!117036 true))

(declare-fun b!1377782 () Bool)

(declare-fun res!920522 () Bool)

(assert (=> b!1377782 (=> (not res!920522) (not e!780506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377782 (= res!920522 (validKeyInArray!0 (select (arr!45195 a!4197) to!360)))))

(declare-fun b!1377783 () Bool)

(declare-fun res!920523 () Bool)

(assert (=> b!1377783 (=> (not res!920523) (not e!780506))))

(assert (=> b!1377783 (= res!920523 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377784 () Bool)

(assert (=> b!1377784 (= e!780506 (not (bvsle to!360 (size!45746 a!4197))))))

(declare-fun arrayCountValidKeys!0 (array!93596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377784 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45681 0))(
  ( (Unit!45682) )
))
(declare-fun lt!606154 () Unit!45681)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45681)

(assert (=> b!1377784 (= lt!606154 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117036 res!920521) b!1377782))

(assert (= (and b!1377782 res!920522) b!1377783))

(assert (= (and b!1377783 res!920523) b!1377784))

(declare-fun m!1262269 () Bool)

(assert (=> start!117036 m!1262269))

(declare-fun m!1262271 () Bool)

(assert (=> b!1377782 m!1262271))

(assert (=> b!1377782 m!1262271))

(declare-fun m!1262273 () Bool)

(assert (=> b!1377782 m!1262273))

(declare-fun m!1262275 () Bool)

(assert (=> b!1377784 m!1262275))

(declare-fun m!1262277 () Bool)

(assert (=> b!1377784 m!1262277))

(declare-fun m!1262279 () Bool)

(assert (=> b!1377784 m!1262279))

(declare-fun m!1262281 () Bool)

(assert (=> b!1377784 m!1262281))

(push 1)

(assert (not start!117036))

(assert (not b!1377784))

(assert (not b!1377782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

