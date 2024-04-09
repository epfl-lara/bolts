; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36352 () Bool)

(assert start!36352)

(declare-fun b!363449 () Bool)

(declare-fun res!202763 () Bool)

(declare-fun e!222544 () Bool)

(assert (=> b!363449 (=> (not res!202763) (not e!222544))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363449 (= res!202763 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun res!202761 () Bool)

(declare-fun e!222543 () Bool)

(assert (=> start!36352 (=> (not res!202761) (not e!222543))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20594 0))(
  ( (array!20595 (arr!9773 (Array (_ BitVec 32) (_ BitVec 64))) (size!10125 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20594)

(assert (=> start!36352 (= res!202761 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10125 a!4289))))))

(assert (=> start!36352 e!222543))

(assert (=> start!36352 true))

(declare-fun array_inv!7211 (array!20594) Bool)

(assert (=> start!36352 (array_inv!7211 a!4289)))

(declare-fun b!363450 () Bool)

(declare-fun res!202765 () Bool)

(assert (=> b!363450 (=> (not res!202765) (not e!222543))))

(assert (=> b!363450 (= res!202765 (and (bvslt (size!10125 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10125 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363451 () Bool)

(declare-fun res!202762 () Bool)

(assert (=> b!363451 (=> (not res!202762) (not e!222543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363451 (= res!202762 (not (validKeyInArray!0 (select (arr!9773 a!4289) i!1472))))))

(declare-fun b!363452 () Bool)

(assert (=> b!363452 (= e!222543 e!222544)))

(declare-fun res!202760 () Bool)

(assert (=> b!363452 (=> (not res!202760) (not e!222544))))

(declare-fun lt!167752 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20594 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363452 (= res!202760 (= (arrayCountValidKeys!0 (array!20595 (store (arr!9773 a!4289) i!1472 k0!2974) (size!10125 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!167752)))))

(assert (=> b!363452 (= lt!167752 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!363453 () Bool)

(assert (=> b!363453 (= e!222544 (not true))))

(assert (=> b!363453 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167752) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11241 0))(
  ( (Unit!11242) )
))
(declare-fun lt!167753 () Unit!11241)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11241)

(assert (=> b!363453 (= lt!167753 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363454 () Bool)

(declare-fun res!202764 () Bool)

(assert (=> b!363454 (=> (not res!202764) (not e!222543))))

(assert (=> b!363454 (= res!202764 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36352 res!202761) b!363451))

(assert (= (and b!363451 res!202762) b!363454))

(assert (= (and b!363454 res!202764) b!363450))

(assert (= (and b!363450 res!202765) b!363452))

(assert (= (and b!363452 res!202760) b!363449))

(assert (= (and b!363449 res!202763) b!363453))

(declare-fun m!360615 () Bool)

(assert (=> b!363451 m!360615))

(assert (=> b!363451 m!360615))

(declare-fun m!360617 () Bool)

(assert (=> b!363451 m!360617))

(declare-fun m!360619 () Bool)

(assert (=> b!363454 m!360619))

(declare-fun m!360621 () Bool)

(assert (=> start!36352 m!360621))

(declare-fun m!360623 () Bool)

(assert (=> b!363452 m!360623))

(declare-fun m!360625 () Bool)

(assert (=> b!363452 m!360625))

(declare-fun m!360627 () Bool)

(assert (=> b!363452 m!360627))

(declare-fun m!360629 () Bool)

(assert (=> b!363453 m!360629))

(declare-fun m!360631 () Bool)

(assert (=> b!363453 m!360631))

(declare-fun m!360633 () Bool)

(assert (=> b!363453 m!360633))

(check-sat (not b!363453) (not b!363452) (not b!363451) (not b!363454) (not start!36352))
(check-sat)
