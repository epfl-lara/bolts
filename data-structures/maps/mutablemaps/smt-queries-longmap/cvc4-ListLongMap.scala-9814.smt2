; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116574 () Bool)

(assert start!116574)

(declare-fun res!917675 () Bool)

(declare-fun e!778619 () Bool)

(assert (=> start!116574 (=> (not res!917675) (not e!778619))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93197 0))(
  ( (array!93198 (arr!45000 (Array (_ BitVec 32) (_ BitVec 64))) (size!45551 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93197)

(assert (=> start!116574 (= res!917675 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45551 a!4142))))))

(assert (=> start!116574 e!778619))

(assert (=> start!116574 true))

(declare-fun array_inv!33945 (array!93197) Bool)

(assert (=> start!116574 (array_inv!33945 a!4142)))

(declare-fun b!1374370 () Bool)

(declare-fun res!917679 () Bool)

(assert (=> b!1374370 (=> (not res!917679) (not e!778619))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374370 (= res!917679 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374371 () Bool)

(declare-fun res!917678 () Bool)

(assert (=> b!1374371 (=> (not res!917678) (not e!778619))))

(assert (=> b!1374371 (= res!917678 (validKeyInArray!0 (select (arr!45000 a!4142) i!1457)))))

(declare-fun b!1374372 () Bool)

(declare-fun e!778621 () Bool)

(assert (=> b!1374372 (= e!778619 (not e!778621))))

(declare-fun res!917676 () Bool)

(assert (=> b!1374372 (=> res!917676 e!778621)))

(assert (=> b!1374372 (= res!917676 (or (bvslt (size!45551 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603550 () (_ BitVec 32))

(declare-fun lt!603543 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93197 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374372 (= (bvadd lt!603550 lt!603543) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45551 a!4142)))))

(declare-datatypes ((Unit!45399 0))(
  ( (Unit!45400) )
))
(declare-fun lt!603548 () Unit!45399)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45399)

(assert (=> b!1374372 (= lt!603548 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45551 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603549 () (_ BitVec 32))

(assert (=> b!1374372 (= lt!603549 lt!603543)))

(assert (=> b!1374372 (= lt!603543 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45551 a!4142)))))

(declare-fun lt!603545 () array!93197)

(assert (=> b!1374372 (= lt!603549 (arrayCountValidKeys!0 lt!603545 (bvadd #b00000000000000000000000000000001 i!1457) (size!45551 a!4142)))))

(declare-fun lt!603547 () Unit!45399)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93197 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45399)

(assert (=> b!1374372 (= lt!603547 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603551 () (_ BitVec 32))

(assert (=> b!1374372 (= lt!603551 (bvsub lt!603550 #b00000000000000000000000000000001))))

(assert (=> b!1374372 (= lt!603551 (arrayCountValidKeys!0 lt!603545 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374372 (= lt!603550 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374372 (= lt!603545 (array!93198 (store (arr!45000 a!4142) i!1457 k!2959) (size!45551 a!4142)))))

(declare-fun lt!603546 () Unit!45399)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93197 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45399)

(assert (=> b!1374372 (= lt!603546 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374373 () Bool)

(declare-fun res!917677 () Bool)

(assert (=> b!1374373 (=> (not res!917677) (not e!778619))))

(assert (=> b!1374373 (= res!917677 (bvslt (size!45551 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374374 () Bool)

(assert (=> b!1374374 (= e!778621 true)))

(assert (=> b!1374374 (= (bvadd lt!603551 lt!603549) (arrayCountValidKeys!0 lt!603545 #b00000000000000000000000000000000 (size!45551 a!4142)))))

(declare-fun lt!603544 () Unit!45399)

(assert (=> b!1374374 (= lt!603544 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603545 #b00000000000000000000000000000000 (size!45551 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116574 res!917675) b!1374371))

(assert (= (and b!1374371 res!917678) b!1374370))

(assert (= (and b!1374370 res!917679) b!1374373))

(assert (= (and b!1374373 res!917677) b!1374372))

(assert (= (and b!1374372 (not res!917676)) b!1374374))

(declare-fun m!1257817 () Bool)

(assert (=> b!1374372 m!1257817))

(declare-fun m!1257819 () Bool)

(assert (=> b!1374372 m!1257819))

(declare-fun m!1257821 () Bool)

(assert (=> b!1374372 m!1257821))

(declare-fun m!1257823 () Bool)

(assert (=> b!1374372 m!1257823))

(declare-fun m!1257825 () Bool)

(assert (=> b!1374372 m!1257825))

(declare-fun m!1257827 () Bool)

(assert (=> b!1374372 m!1257827))

(declare-fun m!1257829 () Bool)

(assert (=> b!1374372 m!1257829))

(declare-fun m!1257831 () Bool)

(assert (=> b!1374372 m!1257831))

(declare-fun m!1257833 () Bool)

(assert (=> b!1374372 m!1257833))

(declare-fun m!1257835 () Bool)

(assert (=> start!116574 m!1257835))

(declare-fun m!1257837 () Bool)

(assert (=> b!1374374 m!1257837))

(declare-fun m!1257839 () Bool)

(assert (=> b!1374374 m!1257839))

(declare-fun m!1257841 () Bool)

(assert (=> b!1374371 m!1257841))

(assert (=> b!1374371 m!1257841))

(declare-fun m!1257843 () Bool)

(assert (=> b!1374371 m!1257843))

(declare-fun m!1257845 () Bool)

(assert (=> b!1374370 m!1257845))

(push 1)

(assert (not start!116574))

(assert (not b!1374371))

(assert (not b!1374372))

(assert (not b!1374374))

(assert (not b!1374370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

