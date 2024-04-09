; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102192 () Bool)

(assert start!102192)

(declare-fun b!1229525 () Bool)

(declare-fun res!818118 () Bool)

(declare-fun e!697882 () Bool)

(assert (=> b!1229525 (=> res!818118 e!697882)))

(declare-datatypes ((List!27220 0))(
  ( (Nil!27217) (Cons!27216 (h!28425 (_ BitVec 64)) (t!40690 List!27220)) )
))
(declare-fun lt!559154 () List!27220)

(declare-fun contains!7135 (List!27220 (_ BitVec 64)) Bool)

(assert (=> b!1229525 (= res!818118 (contains!7135 lt!559154 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229526 () Bool)

(declare-fun res!818117 () Bool)

(declare-fun e!697880 () Bool)

(assert (=> b!1229526 (=> (not res!818117) (not e!697880))))

(declare-datatypes ((array!79306 0))(
  ( (array!79307 (arr!38269 (Array (_ BitVec 32) (_ BitVec 64))) (size!38806 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79306)

(declare-fun acc!823 () List!27220)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79306 (_ BitVec 32) List!27220) Bool)

(assert (=> b!1229526 (= res!818117 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229527 () Bool)

(declare-fun res!818124 () Bool)

(assert (=> b!1229527 (=> (not res!818124) (not e!697880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229527 (= res!818124 (validKeyInArray!0 (select (arr!38269 a!3806) from!3184)))))

(declare-fun b!1229528 () Bool)

(declare-fun res!818120 () Bool)

(assert (=> b!1229528 (=> (not res!818120) (not e!697880))))

(declare-fun noDuplicate!1742 (List!27220) Bool)

(assert (=> b!1229528 (= res!818120 (noDuplicate!1742 acc!823))))

(declare-fun b!1229529 () Bool)

(declare-fun res!818129 () Bool)

(assert (=> b!1229529 (=> res!818129 e!697882)))

(assert (=> b!1229529 (= res!818129 (contains!7135 lt!559154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!818127 () Bool)

(assert (=> start!102192 (=> (not res!818127) (not e!697880))))

(assert (=> start!102192 (= res!818127 (bvslt (size!38806 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102192 e!697880))

(declare-fun array_inv!29045 (array!79306) Bool)

(assert (=> start!102192 (array_inv!29045 a!3806)))

(assert (=> start!102192 true))

(declare-fun b!1229530 () Bool)

(declare-fun res!818126 () Bool)

(assert (=> b!1229530 (=> (not res!818126) (not e!697880))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229530 (= res!818126 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229531 () Bool)

(declare-fun res!818122 () Bool)

(assert (=> b!1229531 (=> res!818122 e!697882)))

(assert (=> b!1229531 (= res!818122 (not (noDuplicate!1742 lt!559154)))))

(declare-fun b!1229532 () Bool)

(assert (=> b!1229532 (= e!697880 (not e!697882))))

(declare-fun res!818121 () Bool)

(assert (=> b!1229532 (=> res!818121 e!697882)))

(assert (=> b!1229532 (= res!818121 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229532 (= lt!559154 (Cons!27216 (select (arr!38269 a!3806) from!3184) Nil!27217))))

(declare-fun e!697881 () Bool)

(assert (=> b!1229532 e!697881))

(declare-fun res!818119 () Bool)

(assert (=> b!1229532 (=> (not res!818119) (not e!697881))))

(assert (=> b!1229532 (= res!818119 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27217))))

(declare-datatypes ((Unit!40678 0))(
  ( (Unit!40679) )
))
(declare-fun lt!559153 () Unit!40678)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79306 List!27220 List!27220 (_ BitVec 32)) Unit!40678)

(assert (=> b!1229532 (= lt!559153 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27217 from!3184))))

(assert (=> b!1229532 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27216 (select (arr!38269 a!3806) from!3184) acc!823))))

(declare-fun b!1229533 () Bool)

(declare-fun res!818116 () Bool)

(assert (=> b!1229533 (=> (not res!818116) (not e!697880))))

(assert (=> b!1229533 (= res!818116 (not (contains!7135 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229534 () Bool)

(declare-fun res!818125 () Bool)

(assert (=> b!1229534 (=> (not res!818125) (not e!697880))))

(assert (=> b!1229534 (= res!818125 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38806 a!3806)) (bvslt from!3184 (size!38806 a!3806))))))

(declare-fun b!1229535 () Bool)

(assert (=> b!1229535 (= e!697881 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27216 (select (arr!38269 a!3806) from!3184) Nil!27217)))))

(declare-fun b!1229536 () Bool)

(declare-fun res!818128 () Bool)

(assert (=> b!1229536 (=> (not res!818128) (not e!697880))))

(assert (=> b!1229536 (= res!818128 (not (contains!7135 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229537 () Bool)

(declare-fun res!818123 () Bool)

(assert (=> b!1229537 (=> (not res!818123) (not e!697880))))

(assert (=> b!1229537 (= res!818123 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229538 () Bool)

(assert (=> b!1229538 (= e!697882 true)))

(declare-fun lt!559152 () Bool)

(assert (=> b!1229538 (= lt!559152 (contains!7135 lt!559154 (select (arr!38269 a!3806) from!3184)))))

(assert (= (and start!102192 res!818127) b!1229537))

(assert (= (and b!1229537 res!818123) b!1229534))

(assert (= (and b!1229534 res!818125) b!1229528))

(assert (= (and b!1229528 res!818120) b!1229533))

(assert (= (and b!1229533 res!818116) b!1229536))

(assert (= (and b!1229536 res!818128) b!1229530))

(assert (= (and b!1229530 res!818126) b!1229526))

(assert (= (and b!1229526 res!818117) b!1229527))

(assert (= (and b!1229527 res!818124) b!1229532))

(assert (= (and b!1229532 res!818119) b!1229535))

(assert (= (and b!1229532 (not res!818121)) b!1229531))

(assert (= (and b!1229531 (not res!818122)) b!1229529))

(assert (= (and b!1229529 (not res!818129)) b!1229525))

(assert (= (and b!1229525 (not res!818118)) b!1229538))

(declare-fun m!1134129 () Bool)

(assert (=> b!1229530 m!1134129))

(declare-fun m!1134131 () Bool)

(assert (=> b!1229526 m!1134131))

(declare-fun m!1134133 () Bool)

(assert (=> b!1229525 m!1134133))

(declare-fun m!1134135 () Bool)

(assert (=> b!1229536 m!1134135))

(declare-fun m!1134137 () Bool)

(assert (=> b!1229531 m!1134137))

(declare-fun m!1134139 () Bool)

(assert (=> b!1229535 m!1134139))

(declare-fun m!1134141 () Bool)

(assert (=> b!1229535 m!1134141))

(declare-fun m!1134143 () Bool)

(assert (=> b!1229529 m!1134143))

(assert (=> b!1229532 m!1134139))

(declare-fun m!1134145 () Bool)

(assert (=> b!1229532 m!1134145))

(declare-fun m!1134147 () Bool)

(assert (=> b!1229532 m!1134147))

(declare-fun m!1134149 () Bool)

(assert (=> b!1229532 m!1134149))

(assert (=> b!1229527 m!1134139))

(assert (=> b!1229527 m!1134139))

(declare-fun m!1134151 () Bool)

(assert (=> b!1229527 m!1134151))

(assert (=> b!1229538 m!1134139))

(assert (=> b!1229538 m!1134139))

(declare-fun m!1134153 () Bool)

(assert (=> b!1229538 m!1134153))

(declare-fun m!1134155 () Bool)

(assert (=> b!1229528 m!1134155))

(declare-fun m!1134157 () Bool)

(assert (=> start!102192 m!1134157))

(declare-fun m!1134159 () Bool)

(assert (=> b!1229533 m!1134159))

(declare-fun m!1134161 () Bool)

(assert (=> b!1229537 m!1134161))

(check-sat (not b!1229527) (not b!1229528) (not b!1229530) (not b!1229533) (not start!102192) (not b!1229536) (not b!1229537) (not b!1229532) (not b!1229531) (not b!1229535) (not b!1229525) (not b!1229529) (not b!1229526) (not b!1229538))
(check-sat)
