; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117148 () Bool)

(assert start!117148)

(declare-fun b!1378347 () Bool)

(declare-fun e!780851 () Bool)

(declare-fun e!780850 () Bool)

(assert (=> b!1378347 (= e!780851 e!780850)))

(declare-fun res!920993 () Bool)

(assert (=> b!1378347 (=> (not res!920993) (not e!780850))))

(declare-fun lt!606522 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606520 () (_ BitVec 32))

(assert (=> b!1378347 (= res!920993 (and (= lt!606520 (bvsub lt!606522 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93681 0))(
  ( (array!93682 (arr!45236 (Array (_ BitVec 32) (_ BitVec 64))) (size!45787 (_ BitVec 32))) )
))
(declare-fun lt!606521 () array!93681)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93681 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378347 (= lt!606520 (arrayCountValidKeys!0 lt!606521 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93681)

(assert (=> b!1378347 (= lt!606522 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378347 (= lt!606521 (array!93682 (store (arr!45236 a!4094) i!1451 k0!2953) (size!45787 a!4094)))))

(declare-fun b!1378348 () Bool)

(declare-fun res!920990 () Bool)

(assert (=> b!1378348 (=> (not res!920990) (not e!780851))))

(assert (=> b!1378348 (= res!920990 (and (bvslt (size!45787 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45787 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!920991 () Bool)

(assert (=> start!117148 (=> (not res!920991) (not e!780851))))

(assert (=> start!117148 (= res!920991 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45787 a!4094))))))

(assert (=> start!117148 e!780851))

(assert (=> start!117148 true))

(declare-fun array_inv!34181 (array!93681) Bool)

(assert (=> start!117148 (array_inv!34181 a!4094)))

(declare-fun b!1378349 () Bool)

(declare-fun res!920994 () Bool)

(assert (=> b!1378349 (=> (not res!920994) (not e!780851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378349 (= res!920994 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378350 () Bool)

(assert (=> b!1378350 (= e!780850 (not true))))

(assert (=> b!1378350 (= (bvadd (arrayCountValidKeys!0 lt!606521 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606520) (arrayCountValidKeys!0 lt!606521 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45733 0))(
  ( (Unit!45734) )
))
(declare-fun lt!606519 () Unit!45733)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45733)

(assert (=> b!1378350 (= lt!606519 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606521 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378350 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606522) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606523 () Unit!45733)

(assert (=> b!1378350 (= lt!606523 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378351 () Bool)

(declare-fun res!920992 () Bool)

(assert (=> b!1378351 (=> (not res!920992) (not e!780851))))

(assert (=> b!1378351 (= res!920992 (validKeyInArray!0 (select (arr!45236 a!4094) i!1451)))))

(assert (= (and start!117148 res!920991) b!1378351))

(assert (= (and b!1378351 res!920992) b!1378349))

(assert (= (and b!1378349 res!920994) b!1378348))

(assert (= (and b!1378348 res!920990) b!1378347))

(assert (= (and b!1378347 res!920993) b!1378350))

(declare-fun m!1263035 () Bool)

(assert (=> b!1378347 m!1263035))

(declare-fun m!1263037 () Bool)

(assert (=> b!1378347 m!1263037))

(declare-fun m!1263039 () Bool)

(assert (=> b!1378347 m!1263039))

(declare-fun m!1263041 () Bool)

(assert (=> start!117148 m!1263041))

(declare-fun m!1263043 () Bool)

(assert (=> b!1378351 m!1263043))

(assert (=> b!1378351 m!1263043))

(declare-fun m!1263045 () Bool)

(assert (=> b!1378351 m!1263045))

(declare-fun m!1263047 () Bool)

(assert (=> b!1378350 m!1263047))

(declare-fun m!1263049 () Bool)

(assert (=> b!1378350 m!1263049))

(declare-fun m!1263051 () Bool)

(assert (=> b!1378350 m!1263051))

(declare-fun m!1263053 () Bool)

(assert (=> b!1378350 m!1263053))

(declare-fun m!1263055 () Bool)

(assert (=> b!1378350 m!1263055))

(declare-fun m!1263057 () Bool)

(assert (=> b!1378350 m!1263057))

(declare-fun m!1263059 () Bool)

(assert (=> b!1378349 m!1263059))

(check-sat (not b!1378347) (not b!1378350) (not start!117148) (not b!1378349) (not b!1378351))
(check-sat)
