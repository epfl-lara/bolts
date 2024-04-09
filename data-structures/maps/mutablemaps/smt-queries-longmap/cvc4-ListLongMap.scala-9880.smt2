; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117042 () Bool)

(assert start!117042)

(declare-fun res!920550 () Bool)

(declare-fun e!780523 () Bool)

(assert (=> start!117042 (=> (not res!920550) (not e!780523))))

(declare-datatypes ((array!93602 0))(
  ( (array!93603 (arr!45198 (Array (_ BitVec 32) (_ BitVec 64))) (size!45749 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93602)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117042 (= res!920550 (and (bvslt (size!45749 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45749 a!4197))))))

(assert (=> start!117042 e!780523))

(declare-fun array_inv!34143 (array!93602) Bool)

(assert (=> start!117042 (array_inv!34143 a!4197)))

(assert (=> start!117042 true))

(declare-fun b!1377809 () Bool)

(declare-fun res!920549 () Bool)

(assert (=> b!1377809 (=> (not res!920549) (not e!780523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377809 (= res!920549 (validKeyInArray!0 (select (arr!45198 a!4197) to!360)))))

(declare-fun b!1377810 () Bool)

(declare-fun res!920548 () Bool)

(assert (=> b!1377810 (=> (not res!920548) (not e!780523))))

(assert (=> b!1377810 (= res!920548 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377811 () Bool)

(assert (=> b!1377811 (= e!780523 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93602 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377811 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45687 0))(
  ( (Unit!45688) )
))
(declare-fun lt!606163 () Unit!45687)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45687)

(assert (=> b!1377811 (= lt!606163 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117042 res!920550) b!1377809))

(assert (= (and b!1377809 res!920549) b!1377810))

(assert (= (and b!1377810 res!920548) b!1377811))

(declare-fun m!1262311 () Bool)

(assert (=> start!117042 m!1262311))

(declare-fun m!1262313 () Bool)

(assert (=> b!1377809 m!1262313))

(assert (=> b!1377809 m!1262313))

(declare-fun m!1262315 () Bool)

(assert (=> b!1377809 m!1262315))

(declare-fun m!1262317 () Bool)

(assert (=> b!1377811 m!1262317))

(declare-fun m!1262319 () Bool)

(assert (=> b!1377811 m!1262319))

(declare-fun m!1262321 () Bool)

(assert (=> b!1377811 m!1262321))

(declare-fun m!1262323 () Bool)

(assert (=> b!1377811 m!1262323))

(push 1)

(assert (not start!117042))

(assert (not b!1377811))

(assert (not b!1377809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

