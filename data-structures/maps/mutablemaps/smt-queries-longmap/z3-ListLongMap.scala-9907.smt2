; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117232 () Bool)

(assert start!117232)

(declare-fun b!1379004 () Bool)

(declare-fun res!921649 () Bool)

(declare-fun e!781211 () Bool)

(assert (=> b!1379004 (=> (not res!921649) (not e!781211))))

(declare-datatypes ((array!93765 0))(
  ( (array!93766 (arr!45278 (Array (_ BitVec 32) (_ BitVec 64))) (size!45829 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93765)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379004 (= res!921649 (and (bvslt (size!45829 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45829 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379005 () Bool)

(declare-fun e!781210 () Bool)

(assert (=> b!1379005 (= e!781211 e!781210)))

(declare-fun res!921648 () Bool)

(assert (=> b!1379005 (=> (not res!921648) (not e!781210))))

(declare-fun lt!607060 () (_ BitVec 32))

(declare-fun lt!607059 () (_ BitVec 32))

(assert (=> b!1379005 (= res!921648 (and (= lt!607060 (bvsub lt!607059 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607063 () array!93765)

(declare-fun arrayCountValidKeys!0 (array!93765 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379005 (= lt!607060 (arrayCountValidKeys!0 lt!607063 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379005 (= lt!607059 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379005 (= lt!607063 (array!93766 (store (arr!45278 a!4094) i!1451 k0!2953) (size!45829 a!4094)))))

(declare-fun b!1379006 () Bool)

(assert (=> b!1379006 (= e!781210 (not true))))

(assert (=> b!1379006 (= (bvadd (arrayCountValidKeys!0 lt!607063 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607060) (arrayCountValidKeys!0 lt!607063 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45781 0))(
  ( (Unit!45782) )
))
(declare-fun lt!607062 () Unit!45781)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45781)

(assert (=> b!1379006 (= lt!607062 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607063 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379006 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607059) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607061 () Unit!45781)

(assert (=> b!1379006 (= lt!607061 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921651 () Bool)

(assert (=> start!117232 (=> (not res!921651) (not e!781211))))

(assert (=> start!117232 (= res!921651 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45829 a!4094))))))

(assert (=> start!117232 e!781211))

(assert (=> start!117232 true))

(declare-fun array_inv!34223 (array!93765) Bool)

(assert (=> start!117232 (array_inv!34223 a!4094)))

(declare-fun b!1379007 () Bool)

(declare-fun res!921647 () Bool)

(assert (=> b!1379007 (=> (not res!921647) (not e!781211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379007 (= res!921647 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379008 () Bool)

(declare-fun res!921650 () Bool)

(assert (=> b!1379008 (=> (not res!921650) (not e!781211))))

(assert (=> b!1379008 (= res!921650 (validKeyInArray!0 (select (arr!45278 a!4094) i!1451)))))

(assert (= (and start!117232 res!921651) b!1379008))

(assert (= (and b!1379008 res!921650) b!1379007))

(assert (= (and b!1379007 res!921647) b!1379004))

(assert (= (and b!1379004 res!921649) b!1379005))

(assert (= (and b!1379005 res!921648) b!1379006))

(declare-fun m!1263947 () Bool)

(assert (=> b!1379007 m!1263947))

(declare-fun m!1263949 () Bool)

(assert (=> b!1379005 m!1263949))

(declare-fun m!1263951 () Bool)

(assert (=> b!1379005 m!1263951))

(declare-fun m!1263953 () Bool)

(assert (=> b!1379005 m!1263953))

(declare-fun m!1263955 () Bool)

(assert (=> start!117232 m!1263955))

(declare-fun m!1263957 () Bool)

(assert (=> b!1379008 m!1263957))

(assert (=> b!1379008 m!1263957))

(declare-fun m!1263959 () Bool)

(assert (=> b!1379008 m!1263959))

(declare-fun m!1263961 () Bool)

(assert (=> b!1379006 m!1263961))

(declare-fun m!1263963 () Bool)

(assert (=> b!1379006 m!1263963))

(declare-fun m!1263965 () Bool)

(assert (=> b!1379006 m!1263965))

(declare-fun m!1263967 () Bool)

(assert (=> b!1379006 m!1263967))

(declare-fun m!1263969 () Bool)

(assert (=> b!1379006 m!1263969))

(declare-fun m!1263971 () Bool)

(assert (=> b!1379006 m!1263971))

(check-sat (not b!1379005) (not start!117232) (not b!1379006) (not b!1379007) (not b!1379008))
(check-sat)
