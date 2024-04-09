; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117020 () Bool)

(assert start!117020)

(declare-fun res!920450 () Bool)

(declare-fun e!780457 () Bool)

(assert (=> start!117020 (=> (not res!920450) (not e!780457))))

(declare-fun to!360 () (_ BitVec 32))

(declare-fun from!3564 () (_ BitVec 32))

(declare-datatypes ((array!93580 0))(
  ( (array!93581 (arr!45187 (Array (_ BitVec 32) (_ BitVec 64))) (size!45738 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93580)

(assert (=> start!117020 (= res!920450 (and (bvslt (size!45738 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45738 a!4197))))))

(assert (=> start!117020 e!780457))

(declare-fun array_inv!34132 (array!93580) Bool)

(assert (=> start!117020 (array_inv!34132 a!4197)))

(assert (=> start!117020 true))

(declare-fun b!1377710 () Bool)

(declare-fun res!920451 () Bool)

(assert (=> b!1377710 (=> (not res!920451) (not e!780457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377710 (= res!920451 (validKeyInArray!0 (select (arr!45187 a!4197) to!360)))))

(declare-fun b!1377711 () Bool)

(declare-fun res!920449 () Bool)

(assert (=> b!1377711 (=> (not res!920449) (not e!780457))))

(assert (=> b!1377711 (= res!920449 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377712 () Bool)

(assert (=> b!1377712 (= e!780457 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93580 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377712 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45665 0))(
  ( (Unit!45666) )
))
(declare-fun lt!606130 () Unit!45665)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45665)

(assert (=> b!1377712 (= lt!606130 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117020 res!920450) b!1377710))

(assert (= (and b!1377710 res!920451) b!1377711))

(assert (= (and b!1377711 res!920449) b!1377712))

(declare-fun m!1262157 () Bool)

(assert (=> start!117020 m!1262157))

(declare-fun m!1262159 () Bool)

(assert (=> b!1377710 m!1262159))

(assert (=> b!1377710 m!1262159))

(declare-fun m!1262161 () Bool)

(assert (=> b!1377710 m!1262161))

(declare-fun m!1262163 () Bool)

(assert (=> b!1377712 m!1262163))

(declare-fun m!1262165 () Bool)

(assert (=> b!1377712 m!1262165))

(declare-fun m!1262167 () Bool)

(assert (=> b!1377712 m!1262167))

(declare-fun m!1262169 () Bool)

(assert (=> b!1377712 m!1262169))

(push 1)

(assert (not start!117020))

(assert (not b!1377712))

(assert (not b!1377710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

