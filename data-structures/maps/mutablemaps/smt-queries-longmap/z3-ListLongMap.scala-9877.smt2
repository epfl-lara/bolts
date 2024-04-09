; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117022 () Bool)

(assert start!117022)

(declare-fun res!920459 () Bool)

(declare-fun e!780464 () Bool)

(assert (=> start!117022 (=> (not res!920459) (not e!780464))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93582 0))(
  ( (array!93583 (arr!45188 (Array (_ BitVec 32) (_ BitVec 64))) (size!45739 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93582)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117022 (= res!920459 (and (bvslt (size!45739 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45739 a!4197))))))

(assert (=> start!117022 e!780464))

(declare-fun array_inv!34133 (array!93582) Bool)

(assert (=> start!117022 (array_inv!34133 a!4197)))

(assert (=> start!117022 true))

(declare-fun b!1377719 () Bool)

(declare-fun res!920458 () Bool)

(assert (=> b!1377719 (=> (not res!920458) (not e!780464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377719 (= res!920458 (validKeyInArray!0 (select (arr!45188 a!4197) to!360)))))

(declare-fun b!1377720 () Bool)

(declare-fun res!920460 () Bool)

(assert (=> b!1377720 (=> (not res!920460) (not e!780464))))

(assert (=> b!1377720 (= res!920460 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377721 () Bool)

(assert (=> b!1377721 (= e!780464 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93582 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377721 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45667 0))(
  ( (Unit!45668) )
))
(declare-fun lt!606133 () Unit!45667)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45667)

(assert (=> b!1377721 (= lt!606133 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117022 res!920459) b!1377719))

(assert (= (and b!1377719 res!920458) b!1377720))

(assert (= (and b!1377720 res!920460) b!1377721))

(declare-fun m!1262171 () Bool)

(assert (=> start!117022 m!1262171))

(declare-fun m!1262173 () Bool)

(assert (=> b!1377719 m!1262173))

(assert (=> b!1377719 m!1262173))

(declare-fun m!1262175 () Bool)

(assert (=> b!1377719 m!1262175))

(declare-fun m!1262177 () Bool)

(assert (=> b!1377721 m!1262177))

(declare-fun m!1262179 () Bool)

(assert (=> b!1377721 m!1262179))

(declare-fun m!1262181 () Bool)

(assert (=> b!1377721 m!1262181))

(declare-fun m!1262183 () Bool)

(assert (=> b!1377721 m!1262183))

(check-sat (not start!117022) (not b!1377721) (not b!1377719))
