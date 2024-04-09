; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116578 () Bool)

(assert start!116578)

(declare-fun b!1374400 () Bool)

(declare-fun res!917705 () Bool)

(declare-fun e!778638 () Bool)

(assert (=> b!1374400 (=> (not res!917705) (not e!778638))))

(declare-datatypes ((array!93201 0))(
  ( (array!93202 (arr!45002 (Array (_ BitVec 32) (_ BitVec 64))) (size!45553 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93201)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374400 (= res!917705 (validKeyInArray!0 (select (arr!45002 a!4142) i!1457)))))

(declare-fun b!1374401 () Bool)

(declare-fun res!917709 () Bool)

(assert (=> b!1374401 (=> (not res!917709) (not e!778638))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374401 (= res!917709 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917707 () Bool)

(assert (=> start!116578 (=> (not res!917707) (not e!778638))))

(assert (=> start!116578 (= res!917707 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45553 a!4142))))))

(assert (=> start!116578 e!778638))

(assert (=> start!116578 true))

(declare-fun array_inv!33947 (array!93201) Bool)

(assert (=> start!116578 (array_inv!33947 a!4142)))

(declare-fun b!1374402 () Bool)

(declare-fun e!778637 () Bool)

(assert (=> b!1374402 (= e!778638 (not e!778637))))

(declare-fun res!917708 () Bool)

(assert (=> b!1374402 (=> res!917708 e!778637)))

(assert (=> b!1374402 (= res!917708 (or (bvslt (size!45553 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603600 () (_ BitVec 32))

(declare-fun lt!603605 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93201 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374402 (= (bvadd lt!603600 lt!603605) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45553 a!4142)))))

(declare-datatypes ((Unit!45403 0))(
  ( (Unit!45404) )
))
(declare-fun lt!603602 () Unit!45403)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45403)

(assert (=> b!1374402 (= lt!603602 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45553 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603601 () (_ BitVec 32))

(assert (=> b!1374402 (= lt!603601 lt!603605)))

(assert (=> b!1374402 (= lt!603605 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45553 a!4142)))))

(declare-fun lt!603599 () array!93201)

(assert (=> b!1374402 (= lt!603601 (arrayCountValidKeys!0 lt!603599 (bvadd #b00000000000000000000000000000001 i!1457) (size!45553 a!4142)))))

(declare-fun lt!603603 () Unit!45403)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93201 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45403)

(assert (=> b!1374402 (= lt!603603 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603597 () (_ BitVec 32))

(assert (=> b!1374402 (= lt!603597 (bvsub lt!603600 #b00000000000000000000000000000001))))

(assert (=> b!1374402 (= lt!603597 (arrayCountValidKeys!0 lt!603599 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374402 (= lt!603600 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374402 (= lt!603599 (array!93202 (store (arr!45002 a!4142) i!1457 k0!2959) (size!45553 a!4142)))))

(declare-fun lt!603598 () Unit!45403)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93201 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45403)

(assert (=> b!1374402 (= lt!603598 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374403 () Bool)

(assert (=> b!1374403 (= e!778637 true)))

(assert (=> b!1374403 (= (bvadd lt!603597 lt!603601) (arrayCountValidKeys!0 lt!603599 #b00000000000000000000000000000000 (size!45553 a!4142)))))

(declare-fun lt!603604 () Unit!45403)

(assert (=> b!1374403 (= lt!603604 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603599 #b00000000000000000000000000000000 (size!45553 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374404 () Bool)

(declare-fun res!917706 () Bool)

(assert (=> b!1374404 (=> (not res!917706) (not e!778638))))

(assert (=> b!1374404 (= res!917706 (bvslt (size!45553 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116578 res!917707) b!1374400))

(assert (= (and b!1374400 res!917705) b!1374401))

(assert (= (and b!1374401 res!917709) b!1374404))

(assert (= (and b!1374404 res!917706) b!1374402))

(assert (= (and b!1374402 (not res!917708)) b!1374403))

(declare-fun m!1257877 () Bool)

(assert (=> b!1374401 m!1257877))

(declare-fun m!1257879 () Bool)

(assert (=> b!1374400 m!1257879))

(assert (=> b!1374400 m!1257879))

(declare-fun m!1257881 () Bool)

(assert (=> b!1374400 m!1257881))

(declare-fun m!1257883 () Bool)

(assert (=> start!116578 m!1257883))

(declare-fun m!1257885 () Bool)

(assert (=> b!1374403 m!1257885))

(declare-fun m!1257887 () Bool)

(assert (=> b!1374403 m!1257887))

(declare-fun m!1257889 () Bool)

(assert (=> b!1374402 m!1257889))

(declare-fun m!1257891 () Bool)

(assert (=> b!1374402 m!1257891))

(declare-fun m!1257893 () Bool)

(assert (=> b!1374402 m!1257893))

(declare-fun m!1257895 () Bool)

(assert (=> b!1374402 m!1257895))

(declare-fun m!1257897 () Bool)

(assert (=> b!1374402 m!1257897))

(declare-fun m!1257899 () Bool)

(assert (=> b!1374402 m!1257899))

(declare-fun m!1257901 () Bool)

(assert (=> b!1374402 m!1257901))

(declare-fun m!1257903 () Bool)

(assert (=> b!1374402 m!1257903))

(declare-fun m!1257905 () Bool)

(assert (=> b!1374402 m!1257905))

(check-sat (not b!1374403) (not start!116578) (not b!1374400) (not b!1374402) (not b!1374401))
