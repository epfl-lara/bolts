; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117226 () Bool)

(assert start!117226)

(declare-fun b!1378959 () Bool)

(declare-fun res!921606 () Bool)

(declare-fun e!781184 () Bool)

(assert (=> b!1378959 (=> (not res!921606) (not e!781184))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378959 (= res!921606 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378960 () Bool)

(declare-fun res!921603 () Bool)

(assert (=> b!1378960 (=> (not res!921603) (not e!781184))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93759 0))(
  ( (array!93760 (arr!45275 (Array (_ BitVec 32) (_ BitVec 64))) (size!45826 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93759)

(assert (=> b!1378960 (= res!921603 (and (bvslt (size!45826 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45826 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921604 () Bool)

(assert (=> start!117226 (=> (not res!921604) (not e!781184))))

(assert (=> start!117226 (= res!921604 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45826 a!4094))))))

(assert (=> start!117226 e!781184))

(assert (=> start!117226 true))

(declare-fun array_inv!34220 (array!93759) Bool)

(assert (=> start!117226 (array_inv!34220 a!4094)))

(declare-fun b!1378961 () Bool)

(declare-fun e!781183 () Bool)

(assert (=> b!1378961 (= e!781184 e!781183)))

(declare-fun res!921602 () Bool)

(assert (=> b!1378961 (=> (not res!921602) (not e!781183))))

(declare-fun lt!607016 () (_ BitVec 32))

(declare-fun lt!607018 () (_ BitVec 32))

(assert (=> b!1378961 (= res!921602 (and (= lt!607018 (bvsub lt!607016 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607015 () array!93759)

(declare-fun arrayCountValidKeys!0 (array!93759 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378961 (= lt!607018 (arrayCountValidKeys!0 lt!607015 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378961 (= lt!607016 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378961 (= lt!607015 (array!93760 (store (arr!45275 a!4094) i!1451 k0!2953) (size!45826 a!4094)))))

(declare-fun b!1378962 () Bool)

(declare-fun res!921605 () Bool)

(assert (=> b!1378962 (=> (not res!921605) (not e!781184))))

(assert (=> b!1378962 (= res!921605 (validKeyInArray!0 (select (arr!45275 a!4094) i!1451)))))

(declare-fun b!1378963 () Bool)

(assert (=> b!1378963 (= e!781183 (not true))))

(assert (=> b!1378963 (= (bvadd (arrayCountValidKeys!0 lt!607015 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607018) (arrayCountValidKeys!0 lt!607015 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45775 0))(
  ( (Unit!45776) )
))
(declare-fun lt!607014 () Unit!45775)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45775)

(assert (=> b!1378963 (= lt!607014 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607015 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378963 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607016) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607017 () Unit!45775)

(assert (=> b!1378963 (= lt!607017 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117226 res!921604) b!1378962))

(assert (= (and b!1378962 res!921605) b!1378959))

(assert (= (and b!1378959 res!921606) b!1378960))

(assert (= (and b!1378960 res!921603) b!1378961))

(assert (= (and b!1378961 res!921602) b!1378963))

(declare-fun m!1263869 () Bool)

(assert (=> b!1378961 m!1263869))

(declare-fun m!1263871 () Bool)

(assert (=> b!1378961 m!1263871))

(declare-fun m!1263873 () Bool)

(assert (=> b!1378961 m!1263873))

(declare-fun m!1263875 () Bool)

(assert (=> b!1378959 m!1263875))

(declare-fun m!1263877 () Bool)

(assert (=> start!117226 m!1263877))

(declare-fun m!1263879 () Bool)

(assert (=> b!1378963 m!1263879))

(declare-fun m!1263881 () Bool)

(assert (=> b!1378963 m!1263881))

(declare-fun m!1263883 () Bool)

(assert (=> b!1378963 m!1263883))

(declare-fun m!1263885 () Bool)

(assert (=> b!1378963 m!1263885))

(declare-fun m!1263887 () Bool)

(assert (=> b!1378963 m!1263887))

(declare-fun m!1263889 () Bool)

(assert (=> b!1378963 m!1263889))

(declare-fun m!1263891 () Bool)

(assert (=> b!1378962 m!1263891))

(assert (=> b!1378962 m!1263891))

(declare-fun m!1263893 () Bool)

(assert (=> b!1378962 m!1263893))

(check-sat (not b!1378963) (not start!117226) (not b!1378961) (not b!1378962) (not b!1378959))
(check-sat)
