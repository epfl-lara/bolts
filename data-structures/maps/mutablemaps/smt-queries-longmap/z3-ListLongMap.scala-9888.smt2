; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117118 () Bool)

(assert start!117118)

(declare-fun b!1378122 () Bool)

(declare-fun res!920768 () Bool)

(declare-fun e!780715 () Bool)

(assert (=> b!1378122 (=> (not res!920768) (not e!780715))))

(declare-datatypes ((array!93651 0))(
  ( (array!93652 (arr!45221 (Array (_ BitVec 32) (_ BitVec 64))) (size!45772 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93651)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378122 (= res!920768 (validKeyInArray!0 (select (arr!45221 a!4094) i!1451)))))

(declare-fun b!1378123 () Bool)

(declare-fun e!780714 () Bool)

(assert (=> b!1378123 (= e!780714 (not true))))

(declare-fun lt!606295 () array!93651)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606298 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93651 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378123 (= (bvadd (arrayCountValidKeys!0 lt!606295 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606298) (arrayCountValidKeys!0 lt!606295 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45703 0))(
  ( (Unit!45704) )
))
(declare-fun lt!606296 () Unit!45703)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45703)

(assert (=> b!1378123 (= lt!606296 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606295 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606297 () (_ BitVec 32))

(assert (=> b!1378123 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606297) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606294 () Unit!45703)

(assert (=> b!1378123 (= lt!606294 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378124 () Bool)

(declare-fun res!920766 () Bool)

(assert (=> b!1378124 (=> (not res!920766) (not e!780715))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378124 (= res!920766 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378125 () Bool)

(assert (=> b!1378125 (= e!780715 e!780714)))

(declare-fun res!920769 () Bool)

(assert (=> b!1378125 (=> (not res!920769) (not e!780714))))

(assert (=> b!1378125 (= res!920769 (and (= lt!606298 (bvsub lt!606297 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378125 (= lt!606298 (arrayCountValidKeys!0 lt!606295 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378125 (= lt!606297 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378125 (= lt!606295 (array!93652 (store (arr!45221 a!4094) i!1451 k0!2953) (size!45772 a!4094)))))

(declare-fun res!920765 () Bool)

(assert (=> start!117118 (=> (not res!920765) (not e!780715))))

(assert (=> start!117118 (= res!920765 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45772 a!4094))))))

(assert (=> start!117118 e!780715))

(assert (=> start!117118 true))

(declare-fun array_inv!34166 (array!93651) Bool)

(assert (=> start!117118 (array_inv!34166 a!4094)))

(declare-fun b!1378126 () Bool)

(declare-fun res!920767 () Bool)

(assert (=> b!1378126 (=> (not res!920767) (not e!780715))))

(assert (=> b!1378126 (= res!920767 (and (bvslt (size!45772 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45772 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117118 res!920765) b!1378122))

(assert (= (and b!1378122 res!920768) b!1378124))

(assert (= (and b!1378124 res!920766) b!1378126))

(assert (= (and b!1378126 res!920767) b!1378125))

(assert (= (and b!1378125 res!920769) b!1378123))

(declare-fun m!1262645 () Bool)

(assert (=> b!1378125 m!1262645))

(declare-fun m!1262647 () Bool)

(assert (=> b!1378125 m!1262647))

(declare-fun m!1262649 () Bool)

(assert (=> b!1378125 m!1262649))

(declare-fun m!1262651 () Bool)

(assert (=> start!117118 m!1262651))

(declare-fun m!1262653 () Bool)

(assert (=> b!1378124 m!1262653))

(declare-fun m!1262655 () Bool)

(assert (=> b!1378122 m!1262655))

(assert (=> b!1378122 m!1262655))

(declare-fun m!1262657 () Bool)

(assert (=> b!1378122 m!1262657))

(declare-fun m!1262659 () Bool)

(assert (=> b!1378123 m!1262659))

(declare-fun m!1262661 () Bool)

(assert (=> b!1378123 m!1262661))

(declare-fun m!1262663 () Bool)

(assert (=> b!1378123 m!1262663))

(declare-fun m!1262665 () Bool)

(assert (=> b!1378123 m!1262665))

(declare-fun m!1262667 () Bool)

(assert (=> b!1378123 m!1262667))

(declare-fun m!1262669 () Bool)

(assert (=> b!1378123 m!1262669))

(check-sat (not start!117118) (not b!1378122) (not b!1378123) (not b!1378124) (not b!1378125))
(check-sat)
