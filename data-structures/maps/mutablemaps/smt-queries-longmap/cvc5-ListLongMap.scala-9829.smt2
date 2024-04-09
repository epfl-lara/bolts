; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116702 () Bool)

(assert start!116702)

(declare-fun b!1375054 () Bool)

(declare-fun e!778989 () Bool)

(declare-fun e!778990 () Bool)

(assert (=> b!1375054 (= e!778989 (not e!778990))))

(declare-fun res!918233 () Bool)

(assert (=> b!1375054 (=> res!918233 e!778990)))

(declare-datatypes ((array!93289 0))(
  ( (array!93290 (arr!45043 (Array (_ BitVec 32) (_ BitVec 64))) (size!45594 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93289)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375054 (= res!918233 (or (bvslt (size!45594 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604071 () (_ BitVec 32))

(declare-fun lt!604076 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93289 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375054 (= (bvadd lt!604071 lt!604076) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45594 a!4142)))))

(declare-datatypes ((Unit!45473 0))(
  ( (Unit!45474) )
))
(declare-fun lt!604073 () Unit!45473)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45473)

(assert (=> b!1375054 (= lt!604073 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45594 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604077 () (_ BitVec 32))

(assert (=> b!1375054 (= lt!604077 lt!604076)))

(assert (=> b!1375054 (= lt!604076 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45594 a!4142)))))

(declare-fun lt!604072 () array!93289)

(assert (=> b!1375054 (= lt!604077 (arrayCountValidKeys!0 lt!604072 (bvadd #b00000000000000000000000000000001 i!1457) (size!45594 a!4142)))))

(declare-fun lt!604074 () Unit!45473)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93289 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45473)

(assert (=> b!1375054 (= lt!604074 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604070 () (_ BitVec 32))

(assert (=> b!1375054 (= lt!604070 (bvsub lt!604071 #b00000000000000000000000000000001))))

(assert (=> b!1375054 (= lt!604070 (arrayCountValidKeys!0 lt!604072 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375054 (= lt!604071 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375054 (= lt!604072 (array!93290 (store (arr!45043 a!4142) i!1457 k!2959) (size!45594 a!4142)))))

(declare-fun lt!604078 () Unit!45473)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93289 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45473)

(assert (=> b!1375054 (= lt!604078 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1375055 () Bool)

(declare-fun res!918231 () Bool)

(assert (=> b!1375055 (=> (not res!918231) (not e!778989))))

(assert (=> b!1375055 (= res!918231 (bvslt (size!45594 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375056 () Bool)

(assert (=> b!1375056 (= e!778990 true)))

(assert (=> b!1375056 (= (bvadd lt!604070 lt!604077) (arrayCountValidKeys!0 lt!604072 #b00000000000000000000000000000000 (size!45594 a!4142)))))

(declare-fun lt!604075 () Unit!45473)

(assert (=> b!1375056 (= lt!604075 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604072 #b00000000000000000000000000000000 (size!45594 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1375057 () Bool)

(declare-fun res!918232 () Bool)

(assert (=> b!1375057 (=> (not res!918232) (not e!778989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375057 (= res!918232 (validKeyInArray!0 (select (arr!45043 a!4142) i!1457)))))

(declare-fun b!1375053 () Bool)

(declare-fun res!918234 () Bool)

(assert (=> b!1375053 (=> (not res!918234) (not e!778989))))

(assert (=> b!1375053 (= res!918234 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!918230 () Bool)

(assert (=> start!116702 (=> (not res!918230) (not e!778989))))

(assert (=> start!116702 (= res!918230 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45594 a!4142))))))

(assert (=> start!116702 e!778989))

(assert (=> start!116702 true))

(declare-fun array_inv!33988 (array!93289) Bool)

(assert (=> start!116702 (array_inv!33988 a!4142)))

(assert (= (and start!116702 res!918230) b!1375057))

(assert (= (and b!1375057 res!918232) b!1375053))

(assert (= (and b!1375053 res!918234) b!1375055))

(assert (= (and b!1375055 res!918231) b!1375054))

(assert (= (and b!1375054 (not res!918233)) b!1375056))

(declare-fun m!1258831 () Bool)

(assert (=> b!1375057 m!1258831))

(assert (=> b!1375057 m!1258831))

(declare-fun m!1258833 () Bool)

(assert (=> b!1375057 m!1258833))

(declare-fun m!1258835 () Bool)

(assert (=> b!1375056 m!1258835))

(declare-fun m!1258837 () Bool)

(assert (=> b!1375056 m!1258837))

(declare-fun m!1258839 () Bool)

(assert (=> b!1375053 m!1258839))

(declare-fun m!1258841 () Bool)

(assert (=> start!116702 m!1258841))

(declare-fun m!1258843 () Bool)

(assert (=> b!1375054 m!1258843))

(declare-fun m!1258845 () Bool)

(assert (=> b!1375054 m!1258845))

(declare-fun m!1258847 () Bool)

(assert (=> b!1375054 m!1258847))

(declare-fun m!1258849 () Bool)

(assert (=> b!1375054 m!1258849))

(declare-fun m!1258851 () Bool)

(assert (=> b!1375054 m!1258851))

(declare-fun m!1258853 () Bool)

(assert (=> b!1375054 m!1258853))

(declare-fun m!1258855 () Bool)

(assert (=> b!1375054 m!1258855))

(declare-fun m!1258857 () Bool)

(assert (=> b!1375054 m!1258857))

(declare-fun m!1258859 () Bool)

(assert (=> b!1375054 m!1258859))

(push 1)

(assert (not b!1375056))

(assert (not start!116702))

(assert (not b!1375057))

(assert (not b!1375053))

(assert (not b!1375054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

