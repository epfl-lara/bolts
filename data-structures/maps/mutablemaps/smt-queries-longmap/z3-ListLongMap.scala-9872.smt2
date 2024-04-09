; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116962 () Bool)

(assert start!116962)

(declare-fun res!920359 () Bool)

(declare-fun e!780335 () Bool)

(assert (=> start!116962 (=> (not res!920359) (not e!780335))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93549 0))(
  ( (array!93550 (arr!45173 (Array (_ BitVec 32) (_ BitVec 64))) (size!45724 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93549)

(assert (=> start!116962 (= res!920359 (and (bvslt (size!45724 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45724 a!4212))))))

(assert (=> start!116962 e!780335))

(declare-fun array_inv!34118 (array!93549) Bool)

(assert (=> start!116962 (array_inv!34118 a!4212)))

(assert (=> start!116962 true))

(declare-fun b!1377524 () Bool)

(declare-fun res!920361 () Bool)

(assert (=> b!1377524 (=> (not res!920361) (not e!780335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377524 (= res!920361 (not (validKeyInArray!0 (select (arr!45173 a!4212) to!375))))))

(declare-fun b!1377525 () Bool)

(declare-fun res!920360 () Bool)

(assert (=> b!1377525 (=> (not res!920360) (not e!780335))))

(assert (=> b!1377525 (= res!920360 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377526 () Bool)

(assert (=> b!1377526 (= e!780335 (not (bvsle to!375 (size!45724 a!4212))))))

(declare-fun arrayCountValidKeys!0 (array!93549 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377526 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45649 0))(
  ( (Unit!45650) )
))
(declare-fun lt!606046 () Unit!45649)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45649)

(assert (=> b!1377526 (= lt!606046 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116962 res!920359) b!1377524))

(assert (= (and b!1377524 res!920361) b!1377525))

(assert (= (and b!1377525 res!920360) b!1377526))

(declare-fun m!1261943 () Bool)

(assert (=> start!116962 m!1261943))

(declare-fun m!1261945 () Bool)

(assert (=> b!1377524 m!1261945))

(assert (=> b!1377524 m!1261945))

(declare-fun m!1261947 () Bool)

(assert (=> b!1377524 m!1261947))

(declare-fun m!1261949 () Bool)

(assert (=> b!1377526 m!1261949))

(declare-fun m!1261951 () Bool)

(assert (=> b!1377526 m!1261951))

(declare-fun m!1261953 () Bool)

(assert (=> b!1377526 m!1261953))

(declare-fun m!1261955 () Bool)

(assert (=> b!1377526 m!1261955))

(check-sat (not start!116962) (not b!1377526) (not b!1377524))
(check-sat)
