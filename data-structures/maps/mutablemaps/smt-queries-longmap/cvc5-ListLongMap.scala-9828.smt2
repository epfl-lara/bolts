; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116696 () Bool)

(assert start!116696)

(declare-fun b!1375016 () Bool)

(declare-fun res!918194 () Bool)

(declare-fun e!778969 () Bool)

(assert (=> b!1375016 (=> (not res!918194) (not e!778969))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375016 (= res!918194 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1375015 () Bool)

(declare-fun res!918193 () Bool)

(assert (=> b!1375015 (=> (not res!918193) (not e!778969))))

(declare-datatypes ((array!93283 0))(
  ( (array!93284 (arr!45040 (Array (_ BitVec 32) (_ BitVec 64))) (size!45591 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93283)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375015 (= res!918193 (validKeyInArray!0 (select (arr!45040 a!4142) i!1457)))))

(declare-fun b!1375018 () Bool)

(assert (=> b!1375018 (= e!778969 (not (and (bvsge (size!45591 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!604007 () (_ BitVec 32))

(declare-fun lt!604004 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93283 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375018 (= (bvadd lt!604007 lt!604004) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45591 a!4142)))))

(declare-datatypes ((Unit!45467 0))(
  ( (Unit!45468) )
))
(declare-fun lt!604009 () Unit!45467)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45467)

(assert (=> b!1375018 (= lt!604009 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45591 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604008 () (_ BitVec 32))

(assert (=> b!1375018 (= lt!604008 lt!604004)))

(assert (=> b!1375018 (= lt!604004 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45591 a!4142)))))

(declare-fun lt!604006 () array!93283)

(assert (=> b!1375018 (= lt!604008 (arrayCountValidKeys!0 lt!604006 (bvadd #b00000000000000000000000000000001 i!1457) (size!45591 a!4142)))))

(declare-fun lt!604005 () Unit!45467)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45467)

(assert (=> b!1375018 (= lt!604005 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375018 (= (arrayCountValidKeys!0 lt!604006 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!604007 #b00000000000000000000000000000001))))

(assert (=> b!1375018 (= lt!604007 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375018 (= lt!604006 (array!93284 (store (arr!45040 a!4142) i!1457 k!2959) (size!45591 a!4142)))))

(declare-fun lt!604003 () Unit!45467)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45467)

(assert (=> b!1375018 (= lt!604003 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!918195 () Bool)

(assert (=> start!116696 (=> (not res!918195) (not e!778969))))

(assert (=> start!116696 (= res!918195 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45591 a!4142))))))

(assert (=> start!116696 e!778969))

(assert (=> start!116696 true))

(declare-fun array_inv!33985 (array!93283) Bool)

(assert (=> start!116696 (array_inv!33985 a!4142)))

(declare-fun b!1375017 () Bool)

(declare-fun res!918192 () Bool)

(assert (=> b!1375017 (=> (not res!918192) (not e!778969))))

(assert (=> b!1375017 (= res!918192 (bvslt (size!45591 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116696 res!918195) b!1375015))

(assert (= (and b!1375015 res!918193) b!1375016))

(assert (= (and b!1375016 res!918194) b!1375017))

(assert (= (and b!1375017 res!918192) b!1375018))

(declare-fun m!1258753 () Bool)

(assert (=> b!1375016 m!1258753))

(declare-fun m!1258755 () Bool)

(assert (=> b!1375015 m!1258755))

(assert (=> b!1375015 m!1258755))

(declare-fun m!1258757 () Bool)

(assert (=> b!1375015 m!1258757))

(declare-fun m!1258759 () Bool)

(assert (=> b!1375018 m!1258759))

(declare-fun m!1258761 () Bool)

(assert (=> b!1375018 m!1258761))

(declare-fun m!1258763 () Bool)

(assert (=> b!1375018 m!1258763))

(declare-fun m!1258765 () Bool)

(assert (=> b!1375018 m!1258765))

(declare-fun m!1258767 () Bool)

(assert (=> b!1375018 m!1258767))

(declare-fun m!1258769 () Bool)

(assert (=> b!1375018 m!1258769))

(declare-fun m!1258771 () Bool)

(assert (=> b!1375018 m!1258771))

(declare-fun m!1258773 () Bool)

(assert (=> b!1375018 m!1258773))

(declare-fun m!1258775 () Bool)

(assert (=> b!1375018 m!1258775))

(declare-fun m!1258777 () Bool)

(assert (=> start!116696 m!1258777))

(push 1)

(assert (not b!1375016))

(assert (not b!1375018))

(assert (not start!116696))

(assert (not b!1375015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

