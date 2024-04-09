; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117040 () Bool)

(assert start!117040)

(declare-fun res!920541 () Bool)

(declare-fun e!780517 () Bool)

(assert (=> start!117040 (=> (not res!920541) (not e!780517))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93600 0))(
  ( (array!93601 (arr!45197 (Array (_ BitVec 32) (_ BitVec 64))) (size!45748 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93600)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117040 (= res!920541 (and (bvslt (size!45748 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45748 a!4197))))))

(assert (=> start!117040 e!780517))

(declare-fun array_inv!34142 (array!93600) Bool)

(assert (=> start!117040 (array_inv!34142 a!4197)))

(assert (=> start!117040 true))

(declare-fun b!1377800 () Bool)

(declare-fun res!920540 () Bool)

(assert (=> b!1377800 (=> (not res!920540) (not e!780517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377800 (= res!920540 (validKeyInArray!0 (select (arr!45197 a!4197) to!360)))))

(declare-fun b!1377801 () Bool)

(declare-fun res!920539 () Bool)

(assert (=> b!1377801 (=> (not res!920539) (not e!780517))))

(assert (=> b!1377801 (= res!920539 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377802 () Bool)

(assert (=> b!1377802 (= e!780517 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93600 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377802 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45685 0))(
  ( (Unit!45686) )
))
(declare-fun lt!606160 () Unit!45685)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45685)

(assert (=> b!1377802 (= lt!606160 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117040 res!920541) b!1377800))

(assert (= (and b!1377800 res!920540) b!1377801))

(assert (= (and b!1377801 res!920539) b!1377802))

(declare-fun m!1262297 () Bool)

(assert (=> start!117040 m!1262297))

(declare-fun m!1262299 () Bool)

(assert (=> b!1377800 m!1262299))

(assert (=> b!1377800 m!1262299))

(declare-fun m!1262301 () Bool)

(assert (=> b!1377800 m!1262301))

(declare-fun m!1262303 () Bool)

(assert (=> b!1377802 m!1262303))

(declare-fun m!1262305 () Bool)

(assert (=> b!1377802 m!1262305))

(declare-fun m!1262307 () Bool)

(assert (=> b!1377802 m!1262307))

(declare-fun m!1262309 () Bool)

(assert (=> b!1377802 m!1262309))

(check-sat (not b!1377802) (not start!117040) (not b!1377800))
