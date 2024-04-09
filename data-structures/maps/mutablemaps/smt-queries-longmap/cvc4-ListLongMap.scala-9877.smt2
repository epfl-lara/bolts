; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117024 () Bool)

(assert start!117024)

(declare-fun res!920468 () Bool)

(declare-fun e!780469 () Bool)

(assert (=> start!117024 (=> (not res!920468) (not e!780469))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93584 0))(
  ( (array!93585 (arr!45189 (Array (_ BitVec 32) (_ BitVec 64))) (size!45740 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93584)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117024 (= res!920468 (and (bvslt (size!45740 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45740 a!4197))))))

(assert (=> start!117024 e!780469))

(declare-fun array_inv!34134 (array!93584) Bool)

(assert (=> start!117024 (array_inv!34134 a!4197)))

(assert (=> start!117024 true))

(declare-fun b!1377728 () Bool)

(declare-fun res!920469 () Bool)

(assert (=> b!1377728 (=> (not res!920469) (not e!780469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377728 (= res!920469 (validKeyInArray!0 (select (arr!45189 a!4197) to!360)))))

(declare-fun b!1377729 () Bool)

(declare-fun res!920467 () Bool)

(assert (=> b!1377729 (=> (not res!920467) (not e!780469))))

(assert (=> b!1377729 (= res!920467 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377730 () Bool)

(assert (=> b!1377730 (= e!780469 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93584 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377730 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45669 0))(
  ( (Unit!45670) )
))
(declare-fun lt!606136 () Unit!45669)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45669)

(assert (=> b!1377730 (= lt!606136 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117024 res!920468) b!1377728))

(assert (= (and b!1377728 res!920469) b!1377729))

(assert (= (and b!1377729 res!920467) b!1377730))

(declare-fun m!1262185 () Bool)

(assert (=> start!117024 m!1262185))

(declare-fun m!1262187 () Bool)

(assert (=> b!1377728 m!1262187))

(assert (=> b!1377728 m!1262187))

(declare-fun m!1262189 () Bool)

(assert (=> b!1377728 m!1262189))

(declare-fun m!1262191 () Bool)

(assert (=> b!1377730 m!1262191))

(declare-fun m!1262193 () Bool)

(assert (=> b!1377730 m!1262193))

(declare-fun m!1262195 () Bool)

(assert (=> b!1377730 m!1262195))

(declare-fun m!1262197 () Bool)

(assert (=> b!1377730 m!1262197))

(push 1)

(assert (not b!1377728))

(assert (not start!117024))

(assert (not b!1377730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

