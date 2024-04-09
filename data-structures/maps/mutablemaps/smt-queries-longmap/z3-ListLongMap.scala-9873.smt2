; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116968 () Bool)

(assert start!116968)

(declare-fun res!920386 () Bool)

(declare-fun e!780353 () Bool)

(assert (=> start!116968 (=> (not res!920386) (not e!780353))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93555 0))(
  ( (array!93556 (arr!45176 (Array (_ BitVec 32) (_ BitVec 64))) (size!45727 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93555)

(assert (=> start!116968 (= res!920386 (and (bvslt (size!45727 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45727 a!4212))))))

(assert (=> start!116968 e!780353))

(declare-fun array_inv!34121 (array!93555) Bool)

(assert (=> start!116968 (array_inv!34121 a!4212)))

(assert (=> start!116968 true))

(declare-fun b!1377551 () Bool)

(declare-fun res!920388 () Bool)

(assert (=> b!1377551 (=> (not res!920388) (not e!780353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377551 (= res!920388 (not (validKeyInArray!0 (select (arr!45176 a!4212) to!375))))))

(declare-fun b!1377552 () Bool)

(declare-fun res!920387 () Bool)

(assert (=> b!1377552 (=> (not res!920387) (not e!780353))))

(assert (=> b!1377552 (= res!920387 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377553 () Bool)

(assert (=> b!1377553 (= e!780353 (not true))))

(declare-fun arrayCountValidKeys!0 (array!93555 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377553 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-datatypes ((Unit!45655 0))(
  ( (Unit!45656) )
))
(declare-fun lt!606055 () Unit!45655)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45655)

(assert (=> b!1377553 (= lt!606055 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116968 res!920386) b!1377551))

(assert (= (and b!1377551 res!920388) b!1377552))

(assert (= (and b!1377552 res!920387) b!1377553))

(declare-fun m!1261985 () Bool)

(assert (=> start!116968 m!1261985))

(declare-fun m!1261987 () Bool)

(assert (=> b!1377551 m!1261987))

(assert (=> b!1377551 m!1261987))

(declare-fun m!1261989 () Bool)

(assert (=> b!1377551 m!1261989))

(declare-fun m!1261991 () Bool)

(assert (=> b!1377553 m!1261991))

(declare-fun m!1261993 () Bool)

(assert (=> b!1377553 m!1261993))

(declare-fun m!1261995 () Bool)

(assert (=> b!1377553 m!1261995))

(declare-fun m!1261997 () Bool)

(assert (=> b!1377553 m!1261997))

(check-sat (not b!1377551) (not start!116968) (not b!1377553))
