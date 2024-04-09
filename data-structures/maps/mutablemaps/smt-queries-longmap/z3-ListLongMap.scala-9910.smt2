; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117250 () Bool)

(assert start!117250)

(declare-fun b!1379139 () Bool)

(declare-datatypes ((array!93783 0))(
  ( (array!93784 (arr!45287 (Array (_ BitVec 32) (_ BitVec 64))) (size!45838 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93783)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun e!781291 () Bool)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379139 (= e!781291 (not (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (size!45838 a!4094)) (bvsge i!1451 (bvsub from!3466 #b00000000000000000000000000000001)))))))

(declare-fun lt!607197 () (_ BitVec 32))

(declare-fun lt!607196 () array!93783)

(declare-fun arrayCountValidKeys!0 (array!93783 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379139 (= (bvadd (arrayCountValidKeys!0 lt!607196 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607197) (arrayCountValidKeys!0 lt!607196 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45799 0))(
  ( (Unit!45800) )
))
(declare-fun lt!607198 () Unit!45799)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45799)

(assert (=> b!1379139 (= lt!607198 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607196 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607195 () (_ BitVec 32))

(assert (=> b!1379139 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607195) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607194 () Unit!45799)

(assert (=> b!1379139 (= lt!607194 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379141 () Bool)

(declare-fun e!781292 () Bool)

(assert (=> b!1379141 (= e!781292 e!781291)))

(declare-fun res!921782 () Bool)

(assert (=> b!1379141 (=> (not res!921782) (not e!781291))))

(assert (=> b!1379141 (= res!921782 (and (= lt!607197 (bvsub lt!607195 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379141 (= lt!607197 (arrayCountValidKeys!0 lt!607196 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379141 (= lt!607195 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379141 (= lt!607196 (array!93784 (store (arr!45287 a!4094) i!1451 k0!2953) (size!45838 a!4094)))))

(declare-fun b!1379142 () Bool)

(declare-fun res!921785 () Bool)

(assert (=> b!1379142 (=> (not res!921785) (not e!781292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379142 (= res!921785 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379143 () Bool)

(declare-fun res!921783 () Bool)

(assert (=> b!1379143 (=> (not res!921783) (not e!781292))))

(assert (=> b!1379143 (= res!921783 (validKeyInArray!0 (select (arr!45287 a!4094) i!1451)))))

(declare-fun b!1379140 () Bool)

(declare-fun res!921784 () Bool)

(assert (=> b!1379140 (=> (not res!921784) (not e!781292))))

(assert (=> b!1379140 (= res!921784 (and (bvslt (size!45838 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45838 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921786 () Bool)

(assert (=> start!117250 (=> (not res!921786) (not e!781292))))

(assert (=> start!117250 (= res!921786 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45838 a!4094))))))

(assert (=> start!117250 e!781292))

(assert (=> start!117250 true))

(declare-fun array_inv!34232 (array!93783) Bool)

(assert (=> start!117250 (array_inv!34232 a!4094)))

(assert (= (and start!117250 res!921786) b!1379143))

(assert (= (and b!1379143 res!921783) b!1379142))

(assert (= (and b!1379142 res!921785) b!1379140))

(assert (= (and b!1379140 res!921784) b!1379141))

(assert (= (and b!1379141 res!921782) b!1379139))

(declare-fun m!1264181 () Bool)

(assert (=> b!1379143 m!1264181))

(assert (=> b!1379143 m!1264181))

(declare-fun m!1264183 () Bool)

(assert (=> b!1379143 m!1264183))

(declare-fun m!1264185 () Bool)

(assert (=> b!1379141 m!1264185))

(declare-fun m!1264187 () Bool)

(assert (=> b!1379141 m!1264187))

(declare-fun m!1264189 () Bool)

(assert (=> b!1379141 m!1264189))

(declare-fun m!1264191 () Bool)

(assert (=> start!117250 m!1264191))

(declare-fun m!1264193 () Bool)

(assert (=> b!1379142 m!1264193))

(declare-fun m!1264195 () Bool)

(assert (=> b!1379139 m!1264195))

(declare-fun m!1264197 () Bool)

(assert (=> b!1379139 m!1264197))

(declare-fun m!1264199 () Bool)

(assert (=> b!1379139 m!1264199))

(declare-fun m!1264201 () Bool)

(assert (=> b!1379139 m!1264201))

(declare-fun m!1264203 () Bool)

(assert (=> b!1379139 m!1264203))

(declare-fun m!1264205 () Bool)

(assert (=> b!1379139 m!1264205))

(check-sat (not b!1379141) (not b!1379139) (not b!1379142) (not b!1379143) (not start!117250))
(check-sat)
