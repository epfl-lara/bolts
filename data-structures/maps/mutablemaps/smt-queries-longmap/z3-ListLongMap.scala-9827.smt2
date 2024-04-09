; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116692 () Bool)

(assert start!116692)

(declare-fun b!1374992 () Bool)

(declare-fun res!918168 () Bool)

(declare-fun e!778958 () Bool)

(assert (=> b!1374992 (=> (not res!918168) (not e!778958))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374992 (= res!918168 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374991 () Bool)

(declare-fun res!918170 () Bool)

(assert (=> b!1374991 (=> (not res!918170) (not e!778958))))

(declare-datatypes ((array!93279 0))(
  ( (array!93280 (arr!45038 (Array (_ BitVec 32) (_ BitVec 64))) (size!45589 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93279)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374991 (= res!918170 (validKeyInArray!0 (select (arr!45038 a!4142) i!1457)))))

(declare-fun b!1374994 () Bool)

(assert (=> b!1374994 (= e!778958 (not true))))

(declare-fun lt!603962 () (_ BitVec 32))

(declare-fun lt!603964 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93279 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374994 (= (bvadd lt!603962 lt!603964) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45589 a!4142)))))

(declare-datatypes ((Unit!45463 0))(
  ( (Unit!45464) )
))
(declare-fun lt!603961 () Unit!45463)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45463)

(assert (=> b!1374994 (= lt!603961 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45589 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603965 () (_ BitVec 32))

(assert (=> b!1374994 (= lt!603965 lt!603964)))

(assert (=> b!1374994 (= lt!603964 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45589 a!4142)))))

(declare-fun lt!603967 () array!93279)

(assert (=> b!1374994 (= lt!603965 (arrayCountValidKeys!0 lt!603967 (bvadd #b00000000000000000000000000000001 i!1457) (size!45589 a!4142)))))

(declare-fun lt!603963 () Unit!45463)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93279 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45463)

(assert (=> b!1374994 (= lt!603963 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374994 (= (arrayCountValidKeys!0 lt!603967 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603962 #b00000000000000000000000000000001))))

(assert (=> b!1374994 (= lt!603962 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374994 (= lt!603967 (array!93280 (store (arr!45038 a!4142) i!1457 k0!2959) (size!45589 a!4142)))))

(declare-fun lt!603966 () Unit!45463)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93279 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45463)

(assert (=> b!1374994 (= lt!603966 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!918171 () Bool)

(assert (=> start!116692 (=> (not res!918171) (not e!778958))))

(assert (=> start!116692 (= res!918171 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45589 a!4142))))))

(assert (=> start!116692 e!778958))

(assert (=> start!116692 true))

(declare-fun array_inv!33983 (array!93279) Bool)

(assert (=> start!116692 (array_inv!33983 a!4142)))

(declare-fun b!1374993 () Bool)

(declare-fun res!918169 () Bool)

(assert (=> b!1374993 (=> (not res!918169) (not e!778958))))

(assert (=> b!1374993 (= res!918169 (bvslt (size!45589 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116692 res!918171) b!1374991))

(assert (= (and b!1374991 res!918170) b!1374992))

(assert (= (and b!1374992 res!918168) b!1374993))

(assert (= (and b!1374993 res!918169) b!1374994))

(declare-fun m!1258701 () Bool)

(assert (=> b!1374992 m!1258701))

(declare-fun m!1258703 () Bool)

(assert (=> b!1374991 m!1258703))

(assert (=> b!1374991 m!1258703))

(declare-fun m!1258705 () Bool)

(assert (=> b!1374991 m!1258705))

(declare-fun m!1258707 () Bool)

(assert (=> b!1374994 m!1258707))

(declare-fun m!1258709 () Bool)

(assert (=> b!1374994 m!1258709))

(declare-fun m!1258711 () Bool)

(assert (=> b!1374994 m!1258711))

(declare-fun m!1258713 () Bool)

(assert (=> b!1374994 m!1258713))

(declare-fun m!1258715 () Bool)

(assert (=> b!1374994 m!1258715))

(declare-fun m!1258717 () Bool)

(assert (=> b!1374994 m!1258717))

(declare-fun m!1258719 () Bool)

(assert (=> b!1374994 m!1258719))

(declare-fun m!1258721 () Bool)

(assert (=> b!1374994 m!1258721))

(declare-fun m!1258723 () Bool)

(assert (=> b!1374994 m!1258723))

(declare-fun m!1258725 () Bool)

(assert (=> start!116692 m!1258725))

(check-sat (not b!1374994) (not start!116692) (not b!1374991) (not b!1374992))
