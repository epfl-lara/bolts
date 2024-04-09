; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116580 () Bool)

(assert start!116580)

(declare-fun b!1374415 () Bool)

(declare-fun e!778648 () Bool)

(assert (=> b!1374415 (= e!778648 true)))

(declare-datatypes ((array!93203 0))(
  ( (array!93204 (arr!45003 (Array (_ BitVec 32) (_ BitVec 64))) (size!45554 (_ BitVec 32))) )
))
(declare-fun lt!603631 () array!93203)

(declare-fun lt!603626 () (_ BitVec 32))

(declare-fun lt!603628 () (_ BitVec 32))

(declare-fun a!4142 () array!93203)

(declare-fun arrayCountValidKeys!0 (array!93203 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374415 (= (bvadd lt!603628 lt!603626) (arrayCountValidKeys!0 lt!603631 #b00000000000000000000000000000000 (size!45554 a!4142)))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((Unit!45405 0))(
  ( (Unit!45406) )
))
(declare-fun lt!603629 () Unit!45405)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45405)

(assert (=> b!1374415 (= lt!603629 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603631 #b00000000000000000000000000000000 (size!45554 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374416 () Bool)

(declare-fun e!778647 () Bool)

(assert (=> b!1374416 (= e!778647 (not e!778648))))

(declare-fun res!917722 () Bool)

(assert (=> b!1374416 (=> res!917722 e!778648)))

(assert (=> b!1374416 (= res!917722 (or (bvslt (size!45554 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603625 () (_ BitVec 32))

(declare-fun lt!603630 () (_ BitVec 32))

(assert (=> b!1374416 (= (bvadd lt!603625 lt!603630) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45554 a!4142)))))

(declare-fun lt!603624 () Unit!45405)

(assert (=> b!1374416 (= lt!603624 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45554 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374416 (= lt!603626 lt!603630)))

(assert (=> b!1374416 (= lt!603630 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45554 a!4142)))))

(assert (=> b!1374416 (= lt!603626 (arrayCountValidKeys!0 lt!603631 (bvadd #b00000000000000000000000000000001 i!1457) (size!45554 a!4142)))))

(declare-fun lt!603632 () Unit!45405)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45405)

(assert (=> b!1374416 (= lt!603632 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374416 (= lt!603628 (bvsub lt!603625 #b00000000000000000000000000000001))))

(assert (=> b!1374416 (= lt!603628 (arrayCountValidKeys!0 lt!603631 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374416 (= lt!603625 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374416 (= lt!603631 (array!93204 (store (arr!45003 a!4142) i!1457 k!2959) (size!45554 a!4142)))))

(declare-fun lt!603627 () Unit!45405)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45405)

(assert (=> b!1374416 (= lt!603627 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374417 () Bool)

(declare-fun res!917723 () Bool)

(assert (=> b!1374417 (=> (not res!917723) (not e!778647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374417 (= res!917723 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917724 () Bool)

(assert (=> start!116580 (=> (not res!917724) (not e!778647))))

(assert (=> start!116580 (= res!917724 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45554 a!4142))))))

(assert (=> start!116580 e!778647))

(assert (=> start!116580 true))

(declare-fun array_inv!33948 (array!93203) Bool)

(assert (=> start!116580 (array_inv!33948 a!4142)))

(declare-fun b!1374418 () Bool)

(declare-fun res!917720 () Bool)

(assert (=> b!1374418 (=> (not res!917720) (not e!778647))))

(assert (=> b!1374418 (= res!917720 (bvslt (size!45554 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374419 () Bool)

(declare-fun res!917721 () Bool)

(assert (=> b!1374419 (=> (not res!917721) (not e!778647))))

(assert (=> b!1374419 (= res!917721 (validKeyInArray!0 (select (arr!45003 a!4142) i!1457)))))

(assert (= (and start!116580 res!917724) b!1374419))

(assert (= (and b!1374419 res!917721) b!1374417))

(assert (= (and b!1374417 res!917723) b!1374418))

(assert (= (and b!1374418 res!917720) b!1374416))

(assert (= (and b!1374416 (not res!917722)) b!1374415))

(declare-fun m!1257907 () Bool)

(assert (=> b!1374416 m!1257907))

(declare-fun m!1257909 () Bool)

(assert (=> b!1374416 m!1257909))

(declare-fun m!1257911 () Bool)

(assert (=> b!1374416 m!1257911))

(declare-fun m!1257913 () Bool)

(assert (=> b!1374416 m!1257913))

(declare-fun m!1257915 () Bool)

(assert (=> b!1374416 m!1257915))

(declare-fun m!1257917 () Bool)

(assert (=> b!1374416 m!1257917))

(declare-fun m!1257919 () Bool)

(assert (=> b!1374416 m!1257919))

(declare-fun m!1257921 () Bool)

(assert (=> b!1374416 m!1257921))

(declare-fun m!1257923 () Bool)

(assert (=> b!1374416 m!1257923))

(declare-fun m!1257925 () Bool)

(assert (=> b!1374415 m!1257925))

(declare-fun m!1257927 () Bool)

(assert (=> b!1374415 m!1257927))

(declare-fun m!1257929 () Bool)

(assert (=> b!1374419 m!1257929))

(assert (=> b!1374419 m!1257929))

(declare-fun m!1257931 () Bool)

(assert (=> b!1374419 m!1257931))

(declare-fun m!1257933 () Bool)

(assert (=> start!116580 m!1257933))

(declare-fun m!1257935 () Bool)

(assert (=> b!1374417 m!1257935))

(push 1)

(assert (not b!1374417))

(assert (not start!116580))

(assert (not b!1374416))

(assert (not b!1374419))

(assert (not b!1374415))

(check-sat)

