; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102000 () Bool)

(assert start!102000)

(declare-fun b!1227405 () Bool)

(declare-fun res!816146 () Bool)

(declare-fun e!696990 () Bool)

(assert (=> b!1227405 (=> (not res!816146) (not e!696990))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79216 0))(
  ( (array!79217 (arr!38227 (Array (_ BitVec 32) (_ BitVec 64))) (size!38764 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79216)

(declare-fun arrayContainsKey!0 (array!79216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227405 (= res!816146 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227406 () Bool)

(declare-fun e!696991 () Bool)

(assert (=> b!1227406 (= e!696990 (not e!696991))))

(declare-fun res!816135 () Bool)

(assert (=> b!1227406 (=> res!816135 e!696991)))

(assert (=> b!1227406 (= res!816135 (bvsgt from!3184 (size!38764 a!3806)))))

(declare-datatypes ((List!27178 0))(
  ( (Nil!27175) (Cons!27174 (h!28383 (_ BitVec 64)) (t!40648 List!27178)) )
))
(declare-fun acc!823 () List!27178)

(declare-fun arrayNoDuplicates!0 (array!79216 (_ BitVec 32) List!27178) Bool)

(assert (=> b!1227406 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27174 (select (arr!38227 a!3806) from!3184) acc!823))))

(declare-fun b!1227407 () Bool)

(declare-fun res!816140 () Bool)

(assert (=> b!1227407 (=> (not res!816140) (not e!696990))))

(assert (=> b!1227407 (= res!816140 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227408 () Bool)

(declare-fun res!816144 () Bool)

(assert (=> b!1227408 (=> (not res!816144) (not e!696990))))

(declare-fun contains!7093 (List!27178 (_ BitVec 64)) Bool)

(assert (=> b!1227408 (= res!816144 (not (contains!7093 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227409 () Bool)

(declare-fun res!816139 () Bool)

(assert (=> b!1227409 (=> (not res!816139) (not e!696990))))

(assert (=> b!1227409 (= res!816139 (not (contains!7093 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227410 () Bool)

(declare-fun res!816138 () Bool)

(assert (=> b!1227410 (=> res!816138 e!696991)))

(assert (=> b!1227410 (= res!816138 (contains!7093 Nil!27175 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227411 () Bool)

(declare-fun res!816141 () Bool)

(assert (=> b!1227411 (=> (not res!816141) (not e!696990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227411 (= res!816141 (validKeyInArray!0 k0!2913))))

(declare-fun res!816137 () Bool)

(assert (=> start!102000 (=> (not res!816137) (not e!696990))))

(assert (=> start!102000 (= res!816137 (bvslt (size!38764 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102000 e!696990))

(declare-fun array_inv!29003 (array!79216) Bool)

(assert (=> start!102000 (array_inv!29003 a!3806)))

(assert (=> start!102000 true))

(declare-fun b!1227412 () Bool)

(declare-fun res!816136 () Bool)

(assert (=> b!1227412 (=> (not res!816136) (not e!696990))))

(assert (=> b!1227412 (= res!816136 (validKeyInArray!0 (select (arr!38227 a!3806) from!3184)))))

(declare-fun b!1227413 () Bool)

(declare-fun res!816142 () Bool)

(assert (=> b!1227413 (=> (not res!816142) (not e!696990))))

(assert (=> b!1227413 (= res!816142 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38764 a!3806)) (bvslt from!3184 (size!38764 a!3806))))))

(declare-fun b!1227414 () Bool)

(declare-fun res!816145 () Bool)

(assert (=> b!1227414 (=> res!816145 e!696991)))

(declare-fun subseq!480 (List!27178 List!27178) Bool)

(assert (=> b!1227414 (= res!816145 (not (subseq!480 Nil!27175 acc!823)))))

(declare-fun b!1227415 () Bool)

(declare-fun res!816143 () Bool)

(assert (=> b!1227415 (=> (not res!816143) (not e!696990))))

(declare-fun noDuplicate!1700 (List!27178) Bool)

(assert (=> b!1227415 (= res!816143 (noDuplicate!1700 acc!823))))

(declare-fun b!1227416 () Bool)

(declare-fun res!816134 () Bool)

(assert (=> b!1227416 (=> res!816134 e!696991)))

(assert (=> b!1227416 (= res!816134 (contains!7093 Nil!27175 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227417 () Bool)

(assert (=> b!1227417 (= e!696991 true)))

(declare-datatypes ((Unit!40594 0))(
  ( (Unit!40595) )
))
(declare-fun lt!558857 () Unit!40594)

(declare-fun noDuplicateSubseq!33 (List!27178 List!27178) Unit!40594)

(assert (=> b!1227417 (= lt!558857 (noDuplicateSubseq!33 Nil!27175 acc!823))))

(assert (= (and start!102000 res!816137) b!1227411))

(assert (= (and b!1227411 res!816141) b!1227413))

(assert (= (and b!1227413 res!816142) b!1227415))

(assert (= (and b!1227415 res!816143) b!1227408))

(assert (= (and b!1227408 res!816144) b!1227409))

(assert (= (and b!1227409 res!816139) b!1227405))

(assert (= (and b!1227405 res!816146) b!1227407))

(assert (= (and b!1227407 res!816140) b!1227412))

(assert (= (and b!1227412 res!816136) b!1227406))

(assert (= (and b!1227406 (not res!816135)) b!1227416))

(assert (= (and b!1227416 (not res!816134)) b!1227410))

(assert (= (and b!1227410 (not res!816138)) b!1227414))

(assert (= (and b!1227414 (not res!816145)) b!1227417))

(declare-fun m!1132221 () Bool)

(assert (=> b!1227415 m!1132221))

(declare-fun m!1132223 () Bool)

(assert (=> b!1227411 m!1132223))

(declare-fun m!1132225 () Bool)

(assert (=> b!1227406 m!1132225))

(declare-fun m!1132227 () Bool)

(assert (=> b!1227406 m!1132227))

(declare-fun m!1132229 () Bool)

(assert (=> start!102000 m!1132229))

(declare-fun m!1132231 () Bool)

(assert (=> b!1227417 m!1132231))

(declare-fun m!1132233 () Bool)

(assert (=> b!1227416 m!1132233))

(assert (=> b!1227412 m!1132225))

(assert (=> b!1227412 m!1132225))

(declare-fun m!1132235 () Bool)

(assert (=> b!1227412 m!1132235))

(declare-fun m!1132237 () Bool)

(assert (=> b!1227405 m!1132237))

(declare-fun m!1132239 () Bool)

(assert (=> b!1227410 m!1132239))

(declare-fun m!1132241 () Bool)

(assert (=> b!1227407 m!1132241))

(declare-fun m!1132243 () Bool)

(assert (=> b!1227414 m!1132243))

(declare-fun m!1132245 () Bool)

(assert (=> b!1227408 m!1132245))

(declare-fun m!1132247 () Bool)

(assert (=> b!1227409 m!1132247))

(check-sat (not b!1227410) (not start!102000) (not b!1227406) (not b!1227408) (not b!1227405) (not b!1227414) (not b!1227409) (not b!1227407) (not b!1227417) (not b!1227415) (not b!1227412) (not b!1227416) (not b!1227411))
(check-sat)
