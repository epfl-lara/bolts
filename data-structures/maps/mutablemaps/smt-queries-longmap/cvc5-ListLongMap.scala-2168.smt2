; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36350 () Bool)

(assert start!36350)

(declare-fun b!363431 () Bool)

(declare-fun e!222536 () Bool)

(assert (=> b!363431 (= e!222536 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167746 () (_ BitVec 32))

(declare-datatypes ((array!20592 0))(
  ( (array!20593 (arr!9772 (Array (_ BitVec 32) (_ BitVec 64))) (size!10124 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20592)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20592 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363431 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167746) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11239 0))(
  ( (Unit!11240) )
))
(declare-fun lt!167747 () Unit!11239)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11239)

(assert (=> b!363431 (= lt!167747 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363432 () Bool)

(declare-fun res!202746 () Bool)

(declare-fun e!222535 () Bool)

(assert (=> b!363432 (=> (not res!202746) (not e!222535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363432 (= res!202746 (not (validKeyInArray!0 (select (arr!9772 a!4289) i!1472))))))

(declare-fun b!363433 () Bool)

(declare-fun res!202744 () Bool)

(assert (=> b!363433 (=> (not res!202744) (not e!222536))))

(assert (=> b!363433 (= res!202744 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun b!363434 () Bool)

(declare-fun res!202742 () Bool)

(assert (=> b!363434 (=> (not res!202742) (not e!222535))))

(assert (=> b!363434 (= res!202742 (and (bvslt (size!10124 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10124 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363435 () Bool)

(declare-fun res!202747 () Bool)

(assert (=> b!363435 (=> (not res!202747) (not e!222535))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363435 (= res!202747 (validKeyInArray!0 k!2974))))

(declare-fun res!202743 () Bool)

(assert (=> start!36350 (=> (not res!202743) (not e!222535))))

(assert (=> start!36350 (= res!202743 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10124 a!4289))))))

(assert (=> start!36350 e!222535))

(assert (=> start!36350 true))

(declare-fun array_inv!7210 (array!20592) Bool)

(assert (=> start!36350 (array_inv!7210 a!4289)))

(declare-fun b!363436 () Bool)

(assert (=> b!363436 (= e!222535 e!222536)))

(declare-fun res!202745 () Bool)

(assert (=> b!363436 (=> (not res!202745) (not e!222536))))

(assert (=> b!363436 (= res!202745 (= (arrayCountValidKeys!0 (array!20593 (store (arr!9772 a!4289) i!1472 k!2974) (size!10124 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!167746)))))

(assert (=> b!363436 (= lt!167746 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36350 res!202743) b!363432))

(assert (= (and b!363432 res!202746) b!363435))

(assert (= (and b!363435 res!202747) b!363434))

(assert (= (and b!363434 res!202742) b!363436))

(assert (= (and b!363436 res!202745) b!363433))

(assert (= (and b!363433 res!202744) b!363431))

(declare-fun m!360595 () Bool)

(assert (=> b!363432 m!360595))

(assert (=> b!363432 m!360595))

(declare-fun m!360597 () Bool)

(assert (=> b!363432 m!360597))

(declare-fun m!360599 () Bool)

(assert (=> b!363431 m!360599))

(declare-fun m!360601 () Bool)

(assert (=> b!363431 m!360601))

(declare-fun m!360603 () Bool)

(assert (=> b!363431 m!360603))

(declare-fun m!360605 () Bool)

(assert (=> b!363435 m!360605))

(declare-fun m!360607 () Bool)

(assert (=> start!36350 m!360607))

(declare-fun m!360609 () Bool)

(assert (=> b!363436 m!360609))

(declare-fun m!360611 () Bool)

(assert (=> b!363436 m!360611))

(declare-fun m!360613 () Bool)

(assert (=> b!363436 m!360613))

(push 1)

(assert (not b!363436))

(assert (not b!363435))

(assert (not start!36350))

(assert (not b!363431))

(assert (not b!363432))

(check-sat)

