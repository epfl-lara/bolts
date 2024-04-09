; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36364 () Bool)

(assert start!36364)

(declare-fun b!363543 () Bool)

(declare-fun res!202858 () Bool)

(declare-fun e!222597 () Bool)

(assert (=> b!363543 (=> (not res!202858) (not e!222597))))

(declare-datatypes ((array!20606 0))(
  ( (array!20607 (arr!9779 (Array (_ BitVec 32) (_ BitVec 64))) (size!10131 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20606)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363543 (= res!202858 (not (validKeyInArray!0 (select (arr!9779 a!4289) i!1472))))))

(declare-fun b!363544 () Bool)

(declare-fun e!222598 () Bool)

(assert (=> b!363544 (= e!222598 (not true))))

(declare-fun lt!167832 () array!20606)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167831 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20606 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363544 (= (bvadd (arrayCountValidKeys!0 lt!167832 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167831) (arrayCountValidKeys!0 lt!167832 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11253 0))(
  ( (Unit!11254) )
))
(declare-fun lt!167834 () Unit!11253)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11253)

(assert (=> b!363544 (= lt!167834 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167832 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167833 () (_ BitVec 32))

(assert (=> b!363544 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167833) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167830 () Unit!11253)

(assert (=> b!363544 (= lt!167830 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363545 () Bool)

(declare-fun res!202856 () Bool)

(assert (=> b!363545 (=> (not res!202856) (not e!222597))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363545 (= res!202856 (validKeyInArray!0 k0!2974))))

(declare-fun b!363546 () Bool)

(assert (=> b!363546 (= e!222597 e!222598)))

(declare-fun res!202854 () Bool)

(assert (=> b!363546 (=> (not res!202854) (not e!222598))))

(assert (=> b!363546 (= res!202854 (and (= lt!167831 (bvadd #b00000000000000000000000000000001 lt!167833)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363546 (= lt!167831 (arrayCountValidKeys!0 lt!167832 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363546 (= lt!167833 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363546 (= lt!167832 (array!20607 (store (arr!9779 a!4289) i!1472 k0!2974) (size!10131 a!4289)))))

(declare-fun res!202855 () Bool)

(assert (=> start!36364 (=> (not res!202855) (not e!222597))))

(assert (=> start!36364 (= res!202855 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10131 a!4289))))))

(assert (=> start!36364 e!222597))

(assert (=> start!36364 true))

(declare-fun array_inv!7217 (array!20606) Bool)

(assert (=> start!36364 (array_inv!7217 a!4289)))

(declare-fun b!363547 () Bool)

(declare-fun res!202857 () Bool)

(assert (=> b!363547 (=> (not res!202857) (not e!222597))))

(assert (=> b!363547 (= res!202857 (and (bvslt (size!10131 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10131 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36364 res!202855) b!363543))

(assert (= (and b!363543 res!202858) b!363545))

(assert (= (and b!363545 res!202856) b!363547))

(assert (= (and b!363547 res!202857) b!363546))

(assert (= (and b!363546 res!202854) b!363544))

(declare-fun m!360759 () Bool)

(assert (=> b!363544 m!360759))

(declare-fun m!360761 () Bool)

(assert (=> b!363544 m!360761))

(declare-fun m!360763 () Bool)

(assert (=> b!363544 m!360763))

(declare-fun m!360765 () Bool)

(assert (=> b!363544 m!360765))

(declare-fun m!360767 () Bool)

(assert (=> b!363544 m!360767))

(declare-fun m!360769 () Bool)

(assert (=> b!363544 m!360769))

(declare-fun m!360771 () Bool)

(assert (=> b!363546 m!360771))

(declare-fun m!360773 () Bool)

(assert (=> b!363546 m!360773))

(declare-fun m!360775 () Bool)

(assert (=> b!363546 m!360775))

(declare-fun m!360777 () Bool)

(assert (=> b!363545 m!360777))

(declare-fun m!360779 () Bool)

(assert (=> start!36364 m!360779))

(declare-fun m!360781 () Bool)

(assert (=> b!363543 m!360781))

(assert (=> b!363543 m!360781))

(declare-fun m!360783 () Bool)

(assert (=> b!363543 m!360783))

(check-sat (not b!363543) (not b!363546) (not b!363545) (not b!363544) (not start!36364))
(check-sat)
