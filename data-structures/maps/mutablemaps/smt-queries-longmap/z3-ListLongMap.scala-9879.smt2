; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117034 () Bool)

(assert start!117034)

(declare-fun res!920514 () Bool)

(declare-fun e!780500 () Bool)

(assert (=> start!117034 (=> (not res!920514) (not e!780500))))

(declare-datatypes ((array!93594 0))(
  ( (array!93595 (arr!45194 (Array (_ BitVec 32) (_ BitVec 64))) (size!45745 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93594)

(declare-fun from!3564 () (_ BitVec 32))

(declare-fun to!360 () (_ BitVec 32))

(assert (=> start!117034 (= res!920514 (and (bvslt (size!45745 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45745 a!4197))))))

(assert (=> start!117034 e!780500))

(declare-fun array_inv!34139 (array!93594) Bool)

(assert (=> start!117034 (array_inv!34139 a!4197)))

(assert (=> start!117034 true))

(declare-fun b!1377773 () Bool)

(declare-fun res!920512 () Bool)

(assert (=> b!1377773 (=> (not res!920512) (not e!780500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377773 (= res!920512 (validKeyInArray!0 (select (arr!45194 a!4197) to!360)))))

(declare-fun b!1377774 () Bool)

(declare-fun res!920513 () Bool)

(assert (=> b!1377774 (=> (not res!920513) (not e!780500))))

(assert (=> b!1377774 (= res!920513 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377775 () Bool)

(assert (=> b!1377775 (= e!780500 (not (bvsle to!360 (size!45745 a!4197))))))

(declare-fun arrayCountValidKeys!0 (array!93594 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377775 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-datatypes ((Unit!45679 0))(
  ( (Unit!45680) )
))
(declare-fun lt!606151 () Unit!45679)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45679)

(assert (=> b!1377775 (= lt!606151 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117034 res!920514) b!1377773))

(assert (= (and b!1377773 res!920512) b!1377774))

(assert (= (and b!1377774 res!920513) b!1377775))

(declare-fun m!1262255 () Bool)

(assert (=> start!117034 m!1262255))

(declare-fun m!1262257 () Bool)

(assert (=> b!1377773 m!1262257))

(assert (=> b!1377773 m!1262257))

(declare-fun m!1262259 () Bool)

(assert (=> b!1377773 m!1262259))

(declare-fun m!1262261 () Bool)

(assert (=> b!1377775 m!1262261))

(declare-fun m!1262263 () Bool)

(assert (=> b!1377775 m!1262263))

(declare-fun m!1262265 () Bool)

(assert (=> b!1377775 m!1262265))

(declare-fun m!1262267 () Bool)

(assert (=> b!1377775 m!1262267))

(check-sat (not b!1377773) (not start!117034) (not b!1377775))
(check-sat)
