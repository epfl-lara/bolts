; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116710 () Bool)

(assert start!116710)

(declare-fun b!1375113 () Bool)

(declare-fun res!918292 () Bool)

(declare-fun e!779025 () Bool)

(assert (=> b!1375113 (=> (not res!918292) (not e!779025))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375113 (= res!918292 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1375114 () Bool)

(declare-fun res!918290 () Bool)

(assert (=> b!1375114 (=> (not res!918290) (not e!779025))))

(declare-datatypes ((array!93297 0))(
  ( (array!93298 (arr!45047 (Array (_ BitVec 32) (_ BitVec 64))) (size!45598 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93297)

(assert (=> b!1375114 (= res!918290 (bvslt (size!45598 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375116 () Bool)

(declare-fun res!918294 () Bool)

(assert (=> b!1375116 (=> (not res!918294) (not e!779025))))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375116 (= res!918294 (validKeyInArray!0 (select (arr!45047 a!4142) i!1457)))))

(declare-fun b!1375117 () Bool)

(declare-fun e!779027 () Bool)

(assert (=> b!1375117 (= e!779025 (not e!779027))))

(declare-fun res!918291 () Bool)

(assert (=> b!1375117 (=> res!918291 e!779027)))

(assert (=> b!1375117 (= res!918291 (or (bvslt (size!45598 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604188 () (_ BitVec 32))

(declare-fun lt!604191 () (_ BitVec 32))

(declare-fun lt!604193 () (_ BitVec 32))

(assert (=> b!1375117 (= (bvadd lt!604188 lt!604191) lt!604193)))

(declare-fun arrayCountValidKeys!0 (array!93297 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375117 (= lt!604193 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45598 a!4142)))))

(declare-datatypes ((Unit!45481 0))(
  ( (Unit!45482) )
))
(declare-fun lt!604192 () Unit!45481)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45481)

(assert (=> b!1375117 (= lt!604192 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45598 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604189 () (_ BitVec 32))

(assert (=> b!1375117 (= lt!604189 lt!604191)))

(assert (=> b!1375117 (= lt!604191 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45598 a!4142)))))

(declare-fun lt!604196 () array!93297)

(assert (=> b!1375117 (= lt!604189 (arrayCountValidKeys!0 lt!604196 (bvadd #b00000000000000000000000000000001 i!1457) (size!45598 a!4142)))))

(declare-fun lt!604198 () Unit!45481)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45481)

(assert (=> b!1375117 (= lt!604198 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604195 () (_ BitVec 32))

(assert (=> b!1375117 (= lt!604195 (bvsub lt!604188 #b00000000000000000000000000000001))))

(assert (=> b!1375117 (= lt!604195 (arrayCountValidKeys!0 lt!604196 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375117 (= lt!604188 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375117 (= lt!604196 (array!93298 (store (arr!45047 a!4142) i!1457 k0!2959) (size!45598 a!4142)))))

(declare-fun lt!604197 () Unit!45481)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45481)

(assert (=> b!1375117 (= lt!604197 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1375115 () Bool)

(declare-fun lt!604194 () (_ BitVec 32))

(assert (=> b!1375115 (= e!779027 (= lt!604194 (bvsub lt!604193 #b00000000000000000000000000000001)))))

(assert (=> b!1375115 (= (bvadd lt!604195 lt!604189) lt!604194)))

(assert (=> b!1375115 (= lt!604194 (arrayCountValidKeys!0 lt!604196 #b00000000000000000000000000000000 (size!45598 a!4142)))))

(declare-fun lt!604190 () Unit!45481)

(assert (=> b!1375115 (= lt!604190 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604196 #b00000000000000000000000000000000 (size!45598 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!918293 () Bool)

(assert (=> start!116710 (=> (not res!918293) (not e!779025))))

(assert (=> start!116710 (= res!918293 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45598 a!4142))))))

(assert (=> start!116710 e!779025))

(assert (=> start!116710 true))

(declare-fun array_inv!33992 (array!93297) Bool)

(assert (=> start!116710 (array_inv!33992 a!4142)))

(assert (= (and start!116710 res!918293) b!1375116))

(assert (= (and b!1375116 res!918294) b!1375113))

(assert (= (and b!1375113 res!918292) b!1375114))

(assert (= (and b!1375114 res!918290) b!1375117))

(assert (= (and b!1375117 (not res!918291)) b!1375115))

(declare-fun m!1258951 () Bool)

(assert (=> start!116710 m!1258951))

(declare-fun m!1258953 () Bool)

(assert (=> b!1375113 m!1258953))

(declare-fun m!1258955 () Bool)

(assert (=> b!1375116 m!1258955))

(assert (=> b!1375116 m!1258955))

(declare-fun m!1258957 () Bool)

(assert (=> b!1375116 m!1258957))

(declare-fun m!1258959 () Bool)

(assert (=> b!1375115 m!1258959))

(declare-fun m!1258961 () Bool)

(assert (=> b!1375115 m!1258961))

(declare-fun m!1258963 () Bool)

(assert (=> b!1375117 m!1258963))

(declare-fun m!1258965 () Bool)

(assert (=> b!1375117 m!1258965))

(declare-fun m!1258967 () Bool)

(assert (=> b!1375117 m!1258967))

(declare-fun m!1258969 () Bool)

(assert (=> b!1375117 m!1258969))

(declare-fun m!1258971 () Bool)

(assert (=> b!1375117 m!1258971))

(declare-fun m!1258973 () Bool)

(assert (=> b!1375117 m!1258973))

(declare-fun m!1258975 () Bool)

(assert (=> b!1375117 m!1258975))

(declare-fun m!1258977 () Bool)

(assert (=> b!1375117 m!1258977))

(declare-fun m!1258979 () Bool)

(assert (=> b!1375117 m!1258979))

(check-sat (not b!1375116) (not start!116710) (not b!1375115) (not b!1375113) (not b!1375117))
