; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36358 () Bool)

(assert start!36358)

(declare-fun b!363498 () Bool)

(declare-fun res!202809 () Bool)

(declare-fun e!222572 () Bool)

(assert (=> b!363498 (=> (not res!202809) (not e!222572))))

(declare-datatypes ((array!20600 0))(
  ( (array!20601 (arr!9776 (Array (_ BitVec 32) (_ BitVec 64))) (size!10128 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20600)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363498 (= res!202809 (not (validKeyInArray!0 (select (arr!9776 a!4289) i!1472))))))

(declare-fun b!363499 () Bool)

(declare-fun res!202812 () Bool)

(assert (=> b!363499 (=> (not res!202812) (not e!222572))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363499 (= res!202812 (and (bvslt (size!10128 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10128 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363500 () Bool)

(declare-fun e!222571 () Bool)

(assert (=> b!363500 (= e!222572 e!222571)))

(declare-fun res!202811 () Bool)

(assert (=> b!363500 (=> (not res!202811) (not e!222571))))

(declare-fun lt!167789 () (_ BitVec 32))

(declare-fun lt!167785 () (_ BitVec 32))

(assert (=> b!363500 (= res!202811 (and (= lt!167789 (bvadd #b00000000000000000000000000000001 lt!167785)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!167786 () array!20600)

(declare-fun arrayCountValidKeys!0 (array!20600 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363500 (= lt!167789 (arrayCountValidKeys!0 lt!167786 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363500 (= lt!167785 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363500 (= lt!167786 (array!20601 (store (arr!9776 a!4289) i!1472 k0!2974) (size!10128 a!4289)))))

(declare-fun b!363501 () Bool)

(assert (=> b!363501 (= e!222571 (not true))))

(assert (=> b!363501 (= (bvadd (arrayCountValidKeys!0 lt!167786 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167789) (arrayCountValidKeys!0 lt!167786 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11247 0))(
  ( (Unit!11248) )
))
(declare-fun lt!167788 () Unit!11247)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11247)

(assert (=> b!363501 (= lt!167788 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167786 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363501 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167785) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167787 () Unit!11247)

(assert (=> b!363501 (= lt!167787 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202810 () Bool)

(assert (=> start!36358 (=> (not res!202810) (not e!222572))))

(assert (=> start!36358 (= res!202810 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10128 a!4289))))))

(assert (=> start!36358 e!222572))

(assert (=> start!36358 true))

(declare-fun array_inv!7214 (array!20600) Bool)

(assert (=> start!36358 (array_inv!7214 a!4289)))

(declare-fun b!363502 () Bool)

(declare-fun res!202813 () Bool)

(assert (=> b!363502 (=> (not res!202813) (not e!222572))))

(assert (=> b!363502 (= res!202813 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36358 res!202810) b!363498))

(assert (= (and b!363498 res!202809) b!363502))

(assert (= (and b!363502 res!202813) b!363499))

(assert (= (and b!363499 res!202812) b!363500))

(assert (= (and b!363500 res!202811) b!363501))

(declare-fun m!360681 () Bool)

(assert (=> b!363501 m!360681))

(declare-fun m!360683 () Bool)

(assert (=> b!363501 m!360683))

(declare-fun m!360685 () Bool)

(assert (=> b!363501 m!360685))

(declare-fun m!360687 () Bool)

(assert (=> b!363501 m!360687))

(declare-fun m!360689 () Bool)

(assert (=> b!363501 m!360689))

(declare-fun m!360691 () Bool)

(assert (=> b!363501 m!360691))

(declare-fun m!360693 () Bool)

(assert (=> start!36358 m!360693))

(declare-fun m!360695 () Bool)

(assert (=> b!363502 m!360695))

(declare-fun m!360697 () Bool)

(assert (=> b!363500 m!360697))

(declare-fun m!360699 () Bool)

(assert (=> b!363500 m!360699))

(declare-fun m!360701 () Bool)

(assert (=> b!363500 m!360701))

(declare-fun m!360703 () Bool)

(assert (=> b!363498 m!360703))

(assert (=> b!363498 m!360703))

(declare-fun m!360705 () Bool)

(assert (=> b!363498 m!360705))

(check-sat (not b!363501) (not b!363502) (not b!363500) (not start!36358) (not b!363498))
(check-sat)
