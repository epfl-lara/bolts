; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117028 () Bool)

(assert start!117028)

(declare-fun res!920485 () Bool)

(declare-fun e!780482 () Bool)

(assert (=> start!117028 (=> (not res!920485) (not e!780482))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93588 0))(
  ( (array!93589 (arr!45191 (Array (_ BitVec 32) (_ BitVec 64))) (size!45742 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93588)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117028 (= res!920485 (and (bvslt (size!45742 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45742 a!4197))))))

(assert (=> start!117028 e!780482))

(declare-fun array_inv!34136 (array!93588) Bool)

(assert (=> start!117028 (array_inv!34136 a!4197)))

(assert (=> start!117028 true))

(declare-fun b!1377746 () Bool)

(declare-fun res!920486 () Bool)

(assert (=> b!1377746 (=> (not res!920486) (not e!780482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377746 (= res!920486 (validKeyInArray!0 (select (arr!45191 a!4197) to!360)))))

(declare-fun b!1377747 () Bool)

(declare-fun res!920487 () Bool)

(assert (=> b!1377747 (=> (not res!920487) (not e!780482))))

(assert (=> b!1377747 (= res!920487 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377748 () Bool)

(assert (=> b!1377748 (= e!780482 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93588 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377748 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45673 0))(
  ( (Unit!45674) )
))
(declare-fun lt!606142 () Unit!45673)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45673)

(assert (=> b!1377748 (= lt!606142 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117028 res!920485) b!1377746))

(assert (= (and b!1377746 res!920486) b!1377747))

(assert (= (and b!1377747 res!920487) b!1377748))

(declare-fun m!1262213 () Bool)

(assert (=> start!117028 m!1262213))

(declare-fun m!1262215 () Bool)

(assert (=> b!1377746 m!1262215))

(assert (=> b!1377746 m!1262215))

(declare-fun m!1262217 () Bool)

(assert (=> b!1377746 m!1262217))

(declare-fun m!1262219 () Bool)

(assert (=> b!1377748 m!1262219))

(declare-fun m!1262221 () Bool)

(assert (=> b!1377748 m!1262221))

(declare-fun m!1262223 () Bool)

(assert (=> b!1377748 m!1262223))

(declare-fun m!1262225 () Bool)

(assert (=> b!1377748 m!1262225))

(check-sat (not b!1377746) (not b!1377748) (not start!117028))
