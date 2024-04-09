; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116570 () Bool)

(assert start!116570)

(declare-fun b!1374340 () Bool)

(declare-fun e!778603 () Bool)

(assert (=> b!1374340 (= e!778603 true)))

(declare-datatypes ((array!93193 0))(
  ( (array!93194 (arr!44998 (Array (_ BitVec 32) (_ BitVec 64))) (size!45549 (_ BitVec 32))) )
))
(declare-fun lt!603491 () array!93193)

(declare-fun lt!603489 () (_ BitVec 32))

(declare-fun a!4142 () array!93193)

(declare-fun lt!603497 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93193 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374340 (= (bvadd lt!603497 lt!603489) (arrayCountValidKeys!0 lt!603491 #b00000000000000000000000000000000 (size!45549 a!4142)))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((Unit!45395 0))(
  ( (Unit!45396) )
))
(declare-fun lt!603495 () Unit!45395)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45395)

(assert (=> b!1374340 (= lt!603495 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603491 #b00000000000000000000000000000000 (size!45549 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917648 () Bool)

(declare-fun e!778601 () Bool)

(assert (=> start!116570 (=> (not res!917648) (not e!778601))))

(assert (=> start!116570 (= res!917648 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45549 a!4142))))))

(assert (=> start!116570 e!778601))

(assert (=> start!116570 true))

(declare-fun array_inv!33943 (array!93193) Bool)

(assert (=> start!116570 (array_inv!33943 a!4142)))

(declare-fun b!1374341 () Bool)

(declare-fun res!917645 () Bool)

(assert (=> b!1374341 (=> (not res!917645) (not e!778601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374341 (= res!917645 (validKeyInArray!0 (select (arr!44998 a!4142) i!1457)))))

(declare-fun b!1374342 () Bool)

(declare-fun res!917649 () Bool)

(assert (=> b!1374342 (=> (not res!917649) (not e!778601))))

(assert (=> b!1374342 (= res!917649 (bvslt (size!45549 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374343 () Bool)

(assert (=> b!1374343 (= e!778601 (not e!778603))))

(declare-fun res!917646 () Bool)

(assert (=> b!1374343 (=> res!917646 e!778603)))

(assert (=> b!1374343 (= res!917646 (or (bvslt (size!45549 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603490 () (_ BitVec 32))

(declare-fun lt!603493 () (_ BitVec 32))

(assert (=> b!1374343 (= (bvadd lt!603490 lt!603493) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45549 a!4142)))))

(declare-fun lt!603496 () Unit!45395)

(assert (=> b!1374343 (= lt!603496 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45549 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374343 (= lt!603489 lt!603493)))

(assert (=> b!1374343 (= lt!603493 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45549 a!4142)))))

(assert (=> b!1374343 (= lt!603489 (arrayCountValidKeys!0 lt!603491 (bvadd #b00000000000000000000000000000001 i!1457) (size!45549 a!4142)))))

(declare-fun lt!603494 () Unit!45395)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93193 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45395)

(assert (=> b!1374343 (= lt!603494 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374343 (= lt!603497 (bvsub lt!603490 #b00000000000000000000000000000001))))

(assert (=> b!1374343 (= lt!603497 (arrayCountValidKeys!0 lt!603491 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374343 (= lt!603490 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374343 (= lt!603491 (array!93194 (store (arr!44998 a!4142) i!1457 k!2959) (size!45549 a!4142)))))

(declare-fun lt!603492 () Unit!45395)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93193 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45395)

(assert (=> b!1374343 (= lt!603492 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374344 () Bool)

(declare-fun res!917647 () Bool)

(assert (=> b!1374344 (=> (not res!917647) (not e!778601))))

(assert (=> b!1374344 (= res!917647 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116570 res!917648) b!1374341))

(assert (= (and b!1374341 res!917645) b!1374344))

(assert (= (and b!1374344 res!917647) b!1374342))

(assert (= (and b!1374342 res!917649) b!1374343))

(assert (= (and b!1374343 (not res!917646)) b!1374340))

(declare-fun m!1257757 () Bool)

(assert (=> b!1374344 m!1257757))

(declare-fun m!1257759 () Bool)

(assert (=> b!1374341 m!1257759))

(assert (=> b!1374341 m!1257759))

(declare-fun m!1257761 () Bool)

(assert (=> b!1374341 m!1257761))

(declare-fun m!1257763 () Bool)

(assert (=> b!1374340 m!1257763))

(declare-fun m!1257765 () Bool)

(assert (=> b!1374340 m!1257765))

(declare-fun m!1257767 () Bool)

(assert (=> start!116570 m!1257767))

(declare-fun m!1257769 () Bool)

(assert (=> b!1374343 m!1257769))

(declare-fun m!1257771 () Bool)

(assert (=> b!1374343 m!1257771))

(declare-fun m!1257773 () Bool)

(assert (=> b!1374343 m!1257773))

(declare-fun m!1257775 () Bool)

(assert (=> b!1374343 m!1257775))

(declare-fun m!1257777 () Bool)

(assert (=> b!1374343 m!1257777))

(declare-fun m!1257779 () Bool)

(assert (=> b!1374343 m!1257779))

(declare-fun m!1257781 () Bool)

(assert (=> b!1374343 m!1257781))

(declare-fun m!1257783 () Bool)

(assert (=> b!1374343 m!1257783))

(declare-fun m!1257785 () Bool)

(assert (=> b!1374343 m!1257785))

(push 1)

(assert (not start!116570))

(assert (not b!1374341))

(assert (not b!1374340))

(assert (not b!1374343))

(assert (not b!1374344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

