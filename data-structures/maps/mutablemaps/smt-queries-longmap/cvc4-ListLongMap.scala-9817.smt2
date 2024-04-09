; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116592 () Bool)

(assert start!116592)

(declare-fun res!917810 () Bool)

(declare-fun e!778700 () Bool)

(assert (=> start!116592 (=> (not res!917810) (not e!778700))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93215 0))(
  ( (array!93216 (arr!45009 (Array (_ BitVec 32) (_ BitVec 64))) (size!45560 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93215)

(assert (=> start!116592 (= res!917810 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45560 a!4142))))))

(assert (=> start!116592 e!778700))

(assert (=> start!116592 true))

(declare-fun array_inv!33954 (array!93215) Bool)

(assert (=> start!116592 (array_inv!33954 a!4142)))

(declare-fun b!1374505 () Bool)

(declare-fun e!778701 () Bool)

(assert (=> b!1374505 (= e!778700 (not e!778701))))

(declare-fun res!917814 () Bool)

(assert (=> b!1374505 (=> res!917814 e!778701)))

(assert (=> b!1374505 (= res!917814 (or (bvslt (size!45560 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603794 () (_ BitVec 32))

(declare-fun lt!603788 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93215 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374505 (= (bvadd lt!603794 lt!603788) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45560 a!4142)))))

(declare-datatypes ((Unit!45417 0))(
  ( (Unit!45418) )
))
(declare-fun lt!603791 () Unit!45417)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45417)

(assert (=> b!1374505 (= lt!603791 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45560 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603792 () (_ BitVec 32))

(assert (=> b!1374505 (= lt!603792 lt!603788)))

(assert (=> b!1374505 (= lt!603788 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45560 a!4142)))))

(declare-fun lt!603786 () array!93215)

(assert (=> b!1374505 (= lt!603792 (arrayCountValidKeys!0 lt!603786 (bvadd #b00000000000000000000000000000001 i!1457) (size!45560 a!4142)))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lt!603787 () Unit!45417)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45417)

(assert (=> b!1374505 (= lt!603787 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603793 () (_ BitVec 32))

(assert (=> b!1374505 (= lt!603793 (bvsub lt!603794 #b00000000000000000000000000000001))))

(assert (=> b!1374505 (= lt!603793 (arrayCountValidKeys!0 lt!603786 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374505 (= lt!603794 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374505 (= lt!603786 (array!93216 (store (arr!45009 a!4142) i!1457 k!2959) (size!45560 a!4142)))))

(declare-fun lt!603789 () Unit!45417)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45417)

(assert (=> b!1374505 (= lt!603789 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374506 () Bool)

(assert (=> b!1374506 (= e!778701 true)))

(assert (=> b!1374506 (= (bvadd lt!603793 lt!603792) (arrayCountValidKeys!0 lt!603786 #b00000000000000000000000000000000 (size!45560 a!4142)))))

(declare-fun lt!603790 () Unit!45417)

(assert (=> b!1374506 (= lt!603790 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603786 #b00000000000000000000000000000000 (size!45560 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374507 () Bool)

(declare-fun res!917812 () Bool)

(assert (=> b!1374507 (=> (not res!917812) (not e!778700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374507 (= res!917812 (validKeyInArray!0 (select (arr!45009 a!4142) i!1457)))))

(declare-fun b!1374508 () Bool)

(declare-fun res!917811 () Bool)

(assert (=> b!1374508 (=> (not res!917811) (not e!778700))))

(assert (=> b!1374508 (= res!917811 (bvslt (size!45560 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374509 () Bool)

(declare-fun res!917813 () Bool)

(assert (=> b!1374509 (=> (not res!917813) (not e!778700))))

(assert (=> b!1374509 (= res!917813 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116592 res!917810) b!1374507))

(assert (= (and b!1374507 res!917812) b!1374509))

(assert (= (and b!1374509 res!917813) b!1374508))

(assert (= (and b!1374508 res!917811) b!1374505))

(assert (= (and b!1374505 (not res!917814)) b!1374506))

(declare-fun m!1258087 () Bool)

(assert (=> b!1374507 m!1258087))

(assert (=> b!1374507 m!1258087))

(declare-fun m!1258089 () Bool)

(assert (=> b!1374507 m!1258089))

(declare-fun m!1258091 () Bool)

(assert (=> b!1374505 m!1258091))

(declare-fun m!1258093 () Bool)

(assert (=> b!1374505 m!1258093))

(declare-fun m!1258095 () Bool)

(assert (=> b!1374505 m!1258095))

(declare-fun m!1258097 () Bool)

(assert (=> b!1374505 m!1258097))

(declare-fun m!1258099 () Bool)

(assert (=> b!1374505 m!1258099))

(declare-fun m!1258101 () Bool)

(assert (=> b!1374505 m!1258101))

(declare-fun m!1258103 () Bool)

(assert (=> b!1374505 m!1258103))

(declare-fun m!1258105 () Bool)

(assert (=> b!1374505 m!1258105))

(declare-fun m!1258107 () Bool)

(assert (=> b!1374505 m!1258107))

(declare-fun m!1258109 () Bool)

(assert (=> b!1374509 m!1258109))

(declare-fun m!1258111 () Bool)

(assert (=> start!116592 m!1258111))

(declare-fun m!1258113 () Bool)

(assert (=> b!1374506 m!1258113))

(declare-fun m!1258115 () Bool)

(assert (=> b!1374506 m!1258115))

(push 1)

(assert (not b!1374506))

(assert (not b!1374509))

(assert (not start!116592))

(assert (not b!1374505))

