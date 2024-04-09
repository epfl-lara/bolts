; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117252 () Bool)

(assert start!117252)

(declare-fun b!1379154 () Bool)

(declare-fun res!921798 () Bool)

(declare-fun e!781300 () Bool)

(assert (=> b!1379154 (=> (not res!921798) (not e!781300))))

(declare-datatypes ((array!93785 0))(
  ( (array!93786 (arr!45288 (Array (_ BitVec 32) (_ BitVec 64))) (size!45839 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93785)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379154 (= res!921798 (validKeyInArray!0 (select (arr!45288 a!4094) i!1451)))))

(declare-fun res!921797 () Bool)

(assert (=> start!117252 (=> (not res!921797) (not e!781300))))

(assert (=> start!117252 (= res!921797 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45839 a!4094))))))

(assert (=> start!117252 e!781300))

(assert (=> start!117252 true))

(declare-fun array_inv!34233 (array!93785) Bool)

(assert (=> start!117252 (array_inv!34233 a!4094)))

(declare-fun b!1379155 () Bool)

(declare-fun e!781301 () Bool)

(assert (=> b!1379155 (= e!781300 e!781301)))

(declare-fun res!921800 () Bool)

(assert (=> b!1379155 (=> (not res!921800) (not e!781301))))

(declare-fun lt!607210 () (_ BitVec 32))

(declare-fun lt!607213 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379155 (= res!921800 (and (= lt!607213 (bvsub lt!607210 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607209 () array!93785)

(declare-fun arrayCountValidKeys!0 (array!93785 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379155 (= lt!607213 (arrayCountValidKeys!0 lt!607209 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379155 (= lt!607210 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379155 (= lt!607209 (array!93786 (store (arr!45288 a!4094) i!1451 k!2953) (size!45839 a!4094)))))

(declare-fun b!1379156 () Bool)

(assert (=> b!1379156 (= e!781301 (not (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (size!45839 a!4094)) (bvsge i!1451 (bvsub from!3466 #b00000000000000000000000000000001)))))))

(assert (=> b!1379156 (= (bvadd (arrayCountValidKeys!0 lt!607209 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607213) (arrayCountValidKeys!0 lt!607209 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45801 0))(
  ( (Unit!45802) )
))
(declare-fun lt!607211 () Unit!45801)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45801)

(assert (=> b!1379156 (= lt!607211 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607209 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379156 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607210) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607212 () Unit!45801)

(assert (=> b!1379156 (= lt!607212 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379157 () Bool)

(declare-fun res!921801 () Bool)

(assert (=> b!1379157 (=> (not res!921801) (not e!781300))))

(assert (=> b!1379157 (= res!921801 (and (bvslt (size!45839 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45839 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379158 () Bool)

(declare-fun res!921799 () Bool)

(assert (=> b!1379158 (=> (not res!921799) (not e!781300))))

(assert (=> b!1379158 (= res!921799 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117252 res!921797) b!1379154))

(assert (= (and b!1379154 res!921798) b!1379158))

(assert (= (and b!1379158 res!921799) b!1379157))

(assert (= (and b!1379157 res!921801) b!1379155))

(assert (= (and b!1379155 res!921800) b!1379156))

(declare-fun m!1264207 () Bool)

(assert (=> b!1379154 m!1264207))

(assert (=> b!1379154 m!1264207))

(declare-fun m!1264209 () Bool)

(assert (=> b!1379154 m!1264209))

(declare-fun m!1264211 () Bool)

(assert (=> b!1379158 m!1264211))

(declare-fun m!1264213 () Bool)

(assert (=> start!117252 m!1264213))

(declare-fun m!1264215 () Bool)

(assert (=> b!1379156 m!1264215))

(declare-fun m!1264217 () Bool)

(assert (=> b!1379156 m!1264217))

(declare-fun m!1264219 () Bool)

(assert (=> b!1379156 m!1264219))

(declare-fun m!1264221 () Bool)

(assert (=> b!1379156 m!1264221))

(declare-fun m!1264223 () Bool)

(assert (=> b!1379156 m!1264223))

(declare-fun m!1264225 () Bool)

(assert (=> b!1379156 m!1264225))

(declare-fun m!1264227 () Bool)

(assert (=> b!1379155 m!1264227))

(declare-fun m!1264229 () Bool)

(assert (=> b!1379155 m!1264229))

(declare-fun m!1264231 () Bool)

(assert (=> b!1379155 m!1264231))

(push 1)

(assert (not start!117252))

(assert (not b!1379158))

(assert (not b!1379156))

(assert (not b!1379154))

(assert (not b!1379155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

