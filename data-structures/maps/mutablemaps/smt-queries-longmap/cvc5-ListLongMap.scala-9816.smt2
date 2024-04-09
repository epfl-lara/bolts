; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116582 () Bool)

(assert start!116582)

(declare-fun b!1374430 () Bool)

(declare-fun e!778657 () Bool)

(assert (=> b!1374430 (= e!778657 true)))

(declare-fun lt!603657 () (_ BitVec 32))

(declare-datatypes ((array!93205 0))(
  ( (array!93206 (arr!45004 (Array (_ BitVec 32) (_ BitVec 64))) (size!45555 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93205)

(declare-fun lt!603659 () array!93205)

(declare-fun lt!603656 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93205 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374430 (= (bvadd lt!603656 lt!603657) (arrayCountValidKeys!0 lt!603659 #b00000000000000000000000000000000 (size!45555 a!4142)))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((Unit!45407 0))(
  ( (Unit!45408) )
))
(declare-fun lt!603653 () Unit!45407)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45407)

(assert (=> b!1374430 (= lt!603653 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!603659 #b00000000000000000000000000000000 (size!45555 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374431 () Bool)

(declare-fun res!917738 () Bool)

(declare-fun e!778656 () Bool)

(assert (=> b!1374431 (=> (not res!917738) (not e!778656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374431 (= res!917738 (validKeyInArray!0 (select (arr!45004 a!4142) i!1457)))))

(declare-fun res!917736 () Bool)

(assert (=> start!116582 (=> (not res!917736) (not e!778656))))

(assert (=> start!116582 (= res!917736 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45555 a!4142))))))

(assert (=> start!116582 e!778656))

(assert (=> start!116582 true))

(declare-fun array_inv!33949 (array!93205) Bool)

(assert (=> start!116582 (array_inv!33949 a!4142)))

(declare-fun b!1374432 () Bool)

(assert (=> b!1374432 (= e!778656 (not e!778657))))

(declare-fun res!917737 () Bool)

(assert (=> b!1374432 (=> res!917737 e!778657)))

(assert (=> b!1374432 (= res!917737 (or (bvslt (size!45555 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!603652 () (_ BitVec 32))

(declare-fun lt!603651 () (_ BitVec 32))

(assert (=> b!1374432 (= (bvadd lt!603652 lt!603651) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45555 a!4142)))))

(declare-fun lt!603658 () Unit!45407)

(assert (=> b!1374432 (= lt!603658 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45555 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374432 (= lt!603657 lt!603651)))

(assert (=> b!1374432 (= lt!603651 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45555 a!4142)))))

(assert (=> b!1374432 (= lt!603657 (arrayCountValidKeys!0 lt!603659 (bvadd #b00000000000000000000000000000001 i!1457) (size!45555 a!4142)))))

(declare-fun lt!603654 () Unit!45407)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93205 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45407)

(assert (=> b!1374432 (= lt!603654 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374432 (= lt!603656 (bvsub lt!603652 #b00000000000000000000000000000001))))

(assert (=> b!1374432 (= lt!603656 (arrayCountValidKeys!0 lt!603659 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374432 (= lt!603652 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374432 (= lt!603659 (array!93206 (store (arr!45004 a!4142) i!1457 k!2959) (size!45555 a!4142)))))

(declare-fun lt!603655 () Unit!45407)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93205 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45407)

(assert (=> b!1374432 (= lt!603655 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374433 () Bool)

(declare-fun res!917735 () Bool)

(assert (=> b!1374433 (=> (not res!917735) (not e!778656))))

(assert (=> b!1374433 (= res!917735 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374434 () Bool)

(declare-fun res!917739 () Bool)

(assert (=> b!1374434 (=> (not res!917739) (not e!778656))))

(assert (=> b!1374434 (= res!917739 (bvslt (size!45555 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116582 res!917736) b!1374431))

(assert (= (and b!1374431 res!917738) b!1374433))

(assert (= (and b!1374433 res!917735) b!1374434))

(assert (= (and b!1374434 res!917739) b!1374432))

(assert (= (and b!1374432 (not res!917737)) b!1374430))

(declare-fun m!1257937 () Bool)

(assert (=> b!1374430 m!1257937))

(declare-fun m!1257939 () Bool)

(assert (=> b!1374430 m!1257939))

(declare-fun m!1257941 () Bool)

(assert (=> b!1374433 m!1257941))

(declare-fun m!1257943 () Bool)

(assert (=> b!1374432 m!1257943))

(declare-fun m!1257945 () Bool)

(assert (=> b!1374432 m!1257945))

(declare-fun m!1257947 () Bool)

(assert (=> b!1374432 m!1257947))

(declare-fun m!1257949 () Bool)

(assert (=> b!1374432 m!1257949))

(declare-fun m!1257951 () Bool)

(assert (=> b!1374432 m!1257951))

(declare-fun m!1257953 () Bool)

(assert (=> b!1374432 m!1257953))

(declare-fun m!1257955 () Bool)

(assert (=> b!1374432 m!1257955))

(declare-fun m!1257957 () Bool)

(assert (=> b!1374432 m!1257957))

(declare-fun m!1257959 () Bool)

(assert (=> b!1374432 m!1257959))

(declare-fun m!1257961 () Bool)

(assert (=> start!116582 m!1257961))

(declare-fun m!1257963 () Bool)

(assert (=> b!1374431 m!1257963))

(assert (=> b!1374431 m!1257963))

(declare-fun m!1257965 () Bool)

(assert (=> b!1374431 m!1257965))

(push 1)

(assert (not b!1374430))

(assert (not b!1374431))

(assert (not b!1374433))

(assert (not start!116582))

(assert (not b!1374432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

