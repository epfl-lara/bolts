; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116568 () Bool)

(assert start!116568)

(declare-fun b!1374328 () Bool)

(declare-fun res!917632 () Bool)

(declare-fun e!778594 () Bool)

(assert (=> b!1374328 (=> (not res!917632) (not e!778594))))

(declare-datatypes ((array!93191 0))(
  ( (array!93192 (arr!44997 (Array (_ BitVec 32) (_ BitVec 64))) (size!45548 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93191)

(assert (=> b!1374328 (= res!917632 (bvslt (size!45548 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374327 () Bool)

(declare-fun res!917631 () Bool)

(assert (=> b!1374327 (=> (not res!917631) (not e!778594))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374327 (= res!917631 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374326 () Bool)

(declare-fun res!917634 () Bool)

(assert (=> b!1374326 (=> (not res!917634) (not e!778594))))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374326 (= res!917634 (validKeyInArray!0 (select (arr!44997 a!4142) i!1457)))))

(declare-fun res!917633 () Bool)

(assert (=> start!116568 (=> (not res!917633) (not e!778594))))

(assert (=> start!116568 (= res!917633 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45548 a!4142))))))

(assert (=> start!116568 e!778594))

(assert (=> start!116568 true))

(declare-fun array_inv!33942 (array!93191) Bool)

(assert (=> start!116568 (array_inv!33942 a!4142)))

(declare-fun b!1374329 () Bool)

(assert (=> b!1374329 (= e!778594 (not true))))

(declare-fun lt!603467 () (_ BitVec 32))

(declare-fun lt!603469 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93191 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374329 (= (bvadd lt!603467 lt!603469) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45548 a!4142)))))

(declare-datatypes ((Unit!45393 0))(
  ( (Unit!45394) )
))
(declare-fun lt!603465 () Unit!45393)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45393)

(assert (=> b!1374329 (= lt!603465 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45548 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603464 () (_ BitVec 32))

(assert (=> b!1374329 (= lt!603464 lt!603469)))

(assert (=> b!1374329 (= lt!603469 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45548 a!4142)))))

(declare-fun lt!603470 () array!93191)

(assert (=> b!1374329 (= lt!603464 (arrayCountValidKeys!0 lt!603470 (bvadd #b00000000000000000000000000000001 i!1457) (size!45548 a!4142)))))

(declare-fun lt!603468 () Unit!45393)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93191 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45393)

(assert (=> b!1374329 (= lt!603468 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374329 (= (arrayCountValidKeys!0 lt!603470 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603467 #b00000000000000000000000000000001))))

(assert (=> b!1374329 (= lt!603467 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374329 (= lt!603470 (array!93192 (store (arr!44997 a!4142) i!1457 k!2959) (size!45548 a!4142)))))

(declare-fun lt!603466 () Unit!45393)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93191 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45393)

(assert (=> b!1374329 (= lt!603466 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116568 res!917633) b!1374326))

(assert (= (and b!1374326 res!917634) b!1374327))

(assert (= (and b!1374327 res!917631) b!1374328))

(assert (= (and b!1374328 res!917632) b!1374329))

(declare-fun m!1257731 () Bool)

(assert (=> b!1374327 m!1257731))

(declare-fun m!1257733 () Bool)

(assert (=> b!1374326 m!1257733))

(assert (=> b!1374326 m!1257733))

(declare-fun m!1257735 () Bool)

(assert (=> b!1374326 m!1257735))

(declare-fun m!1257737 () Bool)

(assert (=> start!116568 m!1257737))

(declare-fun m!1257739 () Bool)

(assert (=> b!1374329 m!1257739))

(declare-fun m!1257741 () Bool)

(assert (=> b!1374329 m!1257741))

(declare-fun m!1257743 () Bool)

(assert (=> b!1374329 m!1257743))

(declare-fun m!1257745 () Bool)

(assert (=> b!1374329 m!1257745))

(declare-fun m!1257747 () Bool)

(assert (=> b!1374329 m!1257747))

(declare-fun m!1257749 () Bool)

(assert (=> b!1374329 m!1257749))

(declare-fun m!1257751 () Bool)

(assert (=> b!1374329 m!1257751))

(declare-fun m!1257753 () Bool)

(assert (=> b!1374329 m!1257753))

(declare-fun m!1257755 () Bool)

(assert (=> b!1374329 m!1257755))

(push 1)

(assert (not b!1374329))

(assert (not start!116568))

(assert (not b!1374326))

(assert (not b!1374327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

