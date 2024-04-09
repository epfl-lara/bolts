; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116694 () Bool)

(assert start!116694)

(declare-fun res!918183 () Bool)

(declare-fun e!778964 () Bool)

(assert (=> start!116694 (=> (not res!918183) (not e!778964))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93281 0))(
  ( (array!93282 (arr!45039 (Array (_ BitVec 32) (_ BitVec 64))) (size!45590 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93281)

(assert (=> start!116694 (= res!918183 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45590 a!4142))))))

(assert (=> start!116694 e!778964))

(assert (=> start!116694 true))

(declare-fun array_inv!33984 (array!93281) Bool)

(assert (=> start!116694 (array_inv!33984 a!4142)))

(declare-fun b!1375005 () Bool)

(declare-fun res!918180 () Bool)

(assert (=> b!1375005 (=> (not res!918180) (not e!778964))))

(assert (=> b!1375005 (= res!918180 (bvslt (size!45590 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375003 () Bool)

(declare-fun res!918182 () Bool)

(assert (=> b!1375003 (=> (not res!918182) (not e!778964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375003 (= res!918182 (validKeyInArray!0 (select (arr!45039 a!4142) i!1457)))))

(declare-fun b!1375004 () Bool)

(declare-fun res!918181 () Bool)

(assert (=> b!1375004 (=> (not res!918181) (not e!778964))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1375004 (= res!918181 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1375006 () Bool)

(assert (=> b!1375006 (= e!778964 (not true))))

(declare-fun lt!603984 () (_ BitVec 32))

(declare-fun lt!603983 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93281 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375006 (= (bvadd lt!603984 lt!603983) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45590 a!4142)))))

(declare-datatypes ((Unit!45465 0))(
  ( (Unit!45466) )
))
(declare-fun lt!603987 () Unit!45465)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45465)

(assert (=> b!1375006 (= lt!603987 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45590 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603985 () (_ BitVec 32))

(assert (=> b!1375006 (= lt!603985 lt!603983)))

(assert (=> b!1375006 (= lt!603983 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45590 a!4142)))))

(declare-fun lt!603988 () array!93281)

(assert (=> b!1375006 (= lt!603985 (arrayCountValidKeys!0 lt!603988 (bvadd #b00000000000000000000000000000001 i!1457) (size!45590 a!4142)))))

(declare-fun lt!603982 () Unit!45465)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45465)

(assert (=> b!1375006 (= lt!603982 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375006 (= (arrayCountValidKeys!0 lt!603988 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603984 #b00000000000000000000000000000001))))

(assert (=> b!1375006 (= lt!603984 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375006 (= lt!603988 (array!93282 (store (arr!45039 a!4142) i!1457 k!2959) (size!45590 a!4142)))))

(declare-fun lt!603986 () Unit!45465)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45465)

(assert (=> b!1375006 (= lt!603986 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116694 res!918183) b!1375003))

(assert (= (and b!1375003 res!918182) b!1375004))

(assert (= (and b!1375004 res!918181) b!1375005))

(assert (= (and b!1375005 res!918180) b!1375006))

(declare-fun m!1258727 () Bool)

(assert (=> start!116694 m!1258727))

(declare-fun m!1258729 () Bool)

(assert (=> b!1375003 m!1258729))

(assert (=> b!1375003 m!1258729))

(declare-fun m!1258731 () Bool)

(assert (=> b!1375003 m!1258731))

(declare-fun m!1258733 () Bool)

(assert (=> b!1375004 m!1258733))

(declare-fun m!1258735 () Bool)

(assert (=> b!1375006 m!1258735))

(declare-fun m!1258737 () Bool)

(assert (=> b!1375006 m!1258737))

(declare-fun m!1258739 () Bool)

(assert (=> b!1375006 m!1258739))

(declare-fun m!1258741 () Bool)

(assert (=> b!1375006 m!1258741))

(declare-fun m!1258743 () Bool)

(assert (=> b!1375006 m!1258743))

(declare-fun m!1258745 () Bool)

(assert (=> b!1375006 m!1258745))

(declare-fun m!1258747 () Bool)

(assert (=> b!1375006 m!1258747))

(declare-fun m!1258749 () Bool)

(assert (=> b!1375006 m!1258749))

(declare-fun m!1258751 () Bool)

(assert (=> b!1375006 m!1258751))

(push 1)

(assert (not b!1375006))

(assert (not start!116694))

(assert (not b!1375003))

(assert (not b!1375004))

