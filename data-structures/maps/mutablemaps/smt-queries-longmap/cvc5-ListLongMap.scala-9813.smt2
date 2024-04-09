; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116564 () Bool)

(assert start!116564)

(declare-fun b!1374305 () Bool)

(declare-fun e!778581 () Bool)

(assert (=> b!1374305 (= e!778581 (not true))))

(declare-fun lt!603427 () (_ BitVec 32))

(declare-fun lt!603422 () (_ BitVec 32))

(declare-datatypes ((array!93187 0))(
  ( (array!93188 (arr!44995 (Array (_ BitVec 32) (_ BitVec 64))) (size!45546 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93187)

(declare-fun arrayCountValidKeys!0 (array!93187 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374305 (= (bvadd lt!603427 lt!603422) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45546 a!4142)))))

(declare-datatypes ((Unit!45389 0))(
  ( (Unit!45390) )
))
(declare-fun lt!603426 () Unit!45389)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45389)

(assert (=> b!1374305 (= lt!603426 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45546 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603424 () (_ BitVec 32))

(assert (=> b!1374305 (= lt!603424 lt!603422)))

(assert (=> b!1374305 (= lt!603422 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45546 a!4142)))))

(declare-fun lt!603428 () array!93187)

(assert (=> b!1374305 (= lt!603424 (arrayCountValidKeys!0 lt!603428 (bvadd #b00000000000000000000000000000001 i!1457) (size!45546 a!4142)))))

(declare-fun lt!603423 () Unit!45389)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45389)

(assert (=> b!1374305 (= lt!603423 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374305 (= (arrayCountValidKeys!0 lt!603428 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603427 #b00000000000000000000000000000001))))

(assert (=> b!1374305 (= lt!603427 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374305 (= lt!603428 (array!93188 (store (arr!44995 a!4142) i!1457 k!2959) (size!45546 a!4142)))))

(declare-fun lt!603425 () Unit!45389)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45389)

(assert (=> b!1374305 (= lt!603425 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374302 () Bool)

(declare-fun res!917609 () Bool)

(assert (=> b!1374302 (=> (not res!917609) (not e!778581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374302 (= res!917609 (validKeyInArray!0 (select (arr!44995 a!4142) i!1457)))))

(declare-fun b!1374304 () Bool)

(declare-fun res!917610 () Bool)

(assert (=> b!1374304 (=> (not res!917610) (not e!778581))))

(assert (=> b!1374304 (= res!917610 (bvslt (size!45546 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374303 () Bool)

(declare-fun res!917608 () Bool)

(assert (=> b!1374303 (=> (not res!917608) (not e!778581))))

(assert (=> b!1374303 (= res!917608 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917607 () Bool)

(assert (=> start!116564 (=> (not res!917607) (not e!778581))))

(assert (=> start!116564 (= res!917607 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45546 a!4142))))))

(assert (=> start!116564 e!778581))

(assert (=> start!116564 true))

(declare-fun array_inv!33940 (array!93187) Bool)

(assert (=> start!116564 (array_inv!33940 a!4142)))

(assert (= (and start!116564 res!917607) b!1374302))

(assert (= (and b!1374302 res!917609) b!1374303))

(assert (= (and b!1374303 res!917608) b!1374304))

(assert (= (and b!1374304 res!917610) b!1374305))

(declare-fun m!1257679 () Bool)

(assert (=> b!1374305 m!1257679))

(declare-fun m!1257681 () Bool)

(assert (=> b!1374305 m!1257681))

(declare-fun m!1257683 () Bool)

(assert (=> b!1374305 m!1257683))

(declare-fun m!1257685 () Bool)

(assert (=> b!1374305 m!1257685))

(declare-fun m!1257687 () Bool)

(assert (=> b!1374305 m!1257687))

(declare-fun m!1257689 () Bool)

(assert (=> b!1374305 m!1257689))

(declare-fun m!1257691 () Bool)

(assert (=> b!1374305 m!1257691))

(declare-fun m!1257693 () Bool)

(assert (=> b!1374305 m!1257693))

(declare-fun m!1257695 () Bool)

(assert (=> b!1374305 m!1257695))

(declare-fun m!1257697 () Bool)

(assert (=> b!1374302 m!1257697))

(assert (=> b!1374302 m!1257697))

(declare-fun m!1257699 () Bool)

(assert (=> b!1374302 m!1257699))

(declare-fun m!1257701 () Bool)

(assert (=> b!1374303 m!1257701))

(declare-fun m!1257703 () Bool)

(assert (=> start!116564 m!1257703))

(push 1)

(assert (not start!116564))

(assert (not b!1374302))

(assert (not b!1374303))

(assert (not b!1374305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

