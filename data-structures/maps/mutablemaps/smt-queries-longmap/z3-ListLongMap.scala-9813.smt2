; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116566 () Bool)

(assert start!116566)

(declare-fun b!1374316 () Bool)

(declare-fun res!917622 () Bool)

(declare-fun e!778588 () Bool)

(assert (=> b!1374316 (=> (not res!917622) (not e!778588))))

(declare-datatypes ((array!93189 0))(
  ( (array!93190 (arr!44996 (Array (_ BitVec 32) (_ BitVec 64))) (size!45547 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93189)

(assert (=> b!1374316 (= res!917622 (bvslt (size!45547 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374317 () Bool)

(assert (=> b!1374317 (= e!778588 (not true))))

(declare-fun lt!603444 () (_ BitVec 32))

(declare-fun lt!603443 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93189 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374317 (= (bvadd lt!603444 lt!603443) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45547 a!4142)))))

(declare-datatypes ((Unit!45391 0))(
  ( (Unit!45392) )
))
(declare-fun lt!603448 () Unit!45391)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45391)

(assert (=> b!1374317 (= lt!603448 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45547 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603449 () (_ BitVec 32))

(assert (=> b!1374317 (= lt!603449 lt!603443)))

(assert (=> b!1374317 (= lt!603443 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45547 a!4142)))))

(declare-fun lt!603445 () array!93189)

(assert (=> b!1374317 (= lt!603449 (arrayCountValidKeys!0 lt!603445 (bvadd #b00000000000000000000000000000001 i!1457) (size!45547 a!4142)))))

(declare-fun lt!603447 () Unit!45391)

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93189 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45391)

(assert (=> b!1374317 (= lt!603447 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374317 (= (arrayCountValidKeys!0 lt!603445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603444 #b00000000000000000000000000000001))))

(assert (=> b!1374317 (= lt!603444 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374317 (= lt!603445 (array!93190 (store (arr!44996 a!4142) i!1457 k0!2959) (size!45547 a!4142)))))

(declare-fun lt!603446 () Unit!45391)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93189 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45391)

(assert (=> b!1374317 (= lt!603446 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374315 () Bool)

(declare-fun res!917621 () Bool)

(assert (=> b!1374315 (=> (not res!917621) (not e!778588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374315 (= res!917621 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917620 () Bool)

(assert (=> start!116566 (=> (not res!917620) (not e!778588))))

(assert (=> start!116566 (= res!917620 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45547 a!4142))))))

(assert (=> start!116566 e!778588))

(assert (=> start!116566 true))

(declare-fun array_inv!33941 (array!93189) Bool)

(assert (=> start!116566 (array_inv!33941 a!4142)))

(declare-fun b!1374314 () Bool)

(declare-fun res!917619 () Bool)

(assert (=> b!1374314 (=> (not res!917619) (not e!778588))))

(assert (=> b!1374314 (= res!917619 (validKeyInArray!0 (select (arr!44996 a!4142) i!1457)))))

(assert (= (and start!116566 res!917620) b!1374314))

(assert (= (and b!1374314 res!917619) b!1374315))

(assert (= (and b!1374315 res!917621) b!1374316))

(assert (= (and b!1374316 res!917622) b!1374317))

(declare-fun m!1257705 () Bool)

(assert (=> b!1374317 m!1257705))

(declare-fun m!1257707 () Bool)

(assert (=> b!1374317 m!1257707))

(declare-fun m!1257709 () Bool)

(assert (=> b!1374317 m!1257709))

(declare-fun m!1257711 () Bool)

(assert (=> b!1374317 m!1257711))

(declare-fun m!1257713 () Bool)

(assert (=> b!1374317 m!1257713))

(declare-fun m!1257715 () Bool)

(assert (=> b!1374317 m!1257715))

(declare-fun m!1257717 () Bool)

(assert (=> b!1374317 m!1257717))

(declare-fun m!1257719 () Bool)

(assert (=> b!1374317 m!1257719))

(declare-fun m!1257721 () Bool)

(assert (=> b!1374317 m!1257721))

(declare-fun m!1257723 () Bool)

(assert (=> b!1374315 m!1257723))

(declare-fun m!1257725 () Bool)

(assert (=> start!116566 m!1257725))

(declare-fun m!1257727 () Bool)

(assert (=> b!1374314 m!1257727))

(assert (=> b!1374314 m!1257727))

(declare-fun m!1257729 () Bool)

(assert (=> b!1374314 m!1257729))

(check-sat (not b!1374317) (not start!116566) (not b!1374314) (not b!1374315))
