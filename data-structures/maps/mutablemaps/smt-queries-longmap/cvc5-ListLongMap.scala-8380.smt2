; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101992 () Bool)

(assert start!101992)

(declare-fun b!1227249 () Bool)

(declare-fun res!815981 () Bool)

(declare-fun e!696953 () Bool)

(assert (=> b!1227249 (=> (not res!815981) (not e!696953))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79208 0))(
  ( (array!79209 (arr!38223 (Array (_ BitVec 32) (_ BitVec 64))) (size!38760 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79208)

(assert (=> b!1227249 (= res!815981 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38760 a!3806)) (bvslt from!3184 (size!38760 a!3806))))))

(declare-fun b!1227250 () Bool)

(declare-fun res!815980 () Bool)

(assert (=> b!1227250 (=> (not res!815980) (not e!696953))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227250 (= res!815980 (validKeyInArray!0 k!2913))))

(declare-fun res!815983 () Bool)

(assert (=> start!101992 (=> (not res!815983) (not e!696953))))

(assert (=> start!101992 (= res!815983 (bvslt (size!38760 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101992 e!696953))

(declare-fun array_inv!28999 (array!79208) Bool)

(assert (=> start!101992 (array_inv!28999 a!3806)))

(assert (=> start!101992 true))

(declare-fun b!1227251 () Bool)

(declare-fun res!815985 () Bool)

(declare-fun e!696955 () Bool)

(assert (=> b!1227251 (=> res!815985 e!696955)))

(declare-datatypes ((List!27174 0))(
  ( (Nil!27171) (Cons!27170 (h!28379 (_ BitVec 64)) (t!40644 List!27174)) )
))
(declare-fun contains!7089 (List!27174 (_ BitVec 64)) Bool)

(assert (=> b!1227251 (= res!815985 (contains!7089 Nil!27171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227252 () Bool)

(declare-fun res!815984 () Bool)

(assert (=> b!1227252 (=> (not res!815984) (not e!696953))))

(declare-fun acc!823 () List!27174)

(declare-fun arrayNoDuplicates!0 (array!79208 (_ BitVec 32) List!27174) Bool)

(assert (=> b!1227252 (= res!815984 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227253 () Bool)

(assert (=> b!1227253 (= e!696955 true)))

(declare-datatypes ((Unit!40586 0))(
  ( (Unit!40587) )
))
(declare-fun lt!558845 () Unit!40586)

(declare-fun noDuplicateSubseq!29 (List!27174 List!27174) Unit!40586)

(assert (=> b!1227253 (= lt!558845 (noDuplicateSubseq!29 Nil!27171 acc!823))))

(declare-fun b!1227254 () Bool)

(declare-fun res!815978 () Bool)

(assert (=> b!1227254 (=> res!815978 e!696955)))

(assert (=> b!1227254 (= res!815978 (contains!7089 Nil!27171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227255 () Bool)

(declare-fun res!815989 () Bool)

(assert (=> b!1227255 (=> (not res!815989) (not e!696953))))

(assert (=> b!1227255 (= res!815989 (not (contains!7089 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227256 () Bool)

(declare-fun res!815987 () Bool)

(assert (=> b!1227256 (=> (not res!815987) (not e!696953))))

(declare-fun arrayContainsKey!0 (array!79208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227256 (= res!815987 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227257 () Bool)

(declare-fun res!815990 () Bool)

(assert (=> b!1227257 (=> res!815990 e!696955)))

(declare-fun subseq!476 (List!27174 List!27174) Bool)

(assert (=> b!1227257 (= res!815990 (not (subseq!476 Nil!27171 acc!823)))))

(declare-fun b!1227258 () Bool)

(assert (=> b!1227258 (= e!696953 (not e!696955))))

(declare-fun res!815986 () Bool)

(assert (=> b!1227258 (=> res!815986 e!696955)))

(assert (=> b!1227258 (= res!815986 (bvsgt from!3184 (size!38760 a!3806)))))

(assert (=> b!1227258 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27170 (select (arr!38223 a!3806) from!3184) acc!823))))

(declare-fun b!1227259 () Bool)

(declare-fun res!815988 () Bool)

(assert (=> b!1227259 (=> (not res!815988) (not e!696953))))

(declare-fun noDuplicate!1696 (List!27174) Bool)

(assert (=> b!1227259 (= res!815988 (noDuplicate!1696 acc!823))))

(declare-fun b!1227260 () Bool)

(declare-fun res!815979 () Bool)

(assert (=> b!1227260 (=> (not res!815979) (not e!696953))))

(assert (=> b!1227260 (= res!815979 (not (contains!7089 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227261 () Bool)

(declare-fun res!815982 () Bool)

(assert (=> b!1227261 (=> (not res!815982) (not e!696953))))

(assert (=> b!1227261 (= res!815982 (validKeyInArray!0 (select (arr!38223 a!3806) from!3184)))))

(assert (= (and start!101992 res!815983) b!1227250))

(assert (= (and b!1227250 res!815980) b!1227249))

(assert (= (and b!1227249 res!815981) b!1227259))

(assert (= (and b!1227259 res!815988) b!1227260))

(assert (= (and b!1227260 res!815979) b!1227255))

(assert (= (and b!1227255 res!815989) b!1227256))

(assert (= (and b!1227256 res!815987) b!1227252))

(assert (= (and b!1227252 res!815984) b!1227261))

(assert (= (and b!1227261 res!815982) b!1227258))

(assert (= (and b!1227258 (not res!815986)) b!1227251))

(assert (= (and b!1227251 (not res!815985)) b!1227254))

(assert (= (and b!1227254 (not res!815978)) b!1227257))

(assert (= (and b!1227257 (not res!815990)) b!1227253))

(declare-fun m!1132109 () Bool)

(assert (=> b!1227258 m!1132109))

(declare-fun m!1132111 () Bool)

(assert (=> b!1227258 m!1132111))

(declare-fun m!1132113 () Bool)

(assert (=> b!1227256 m!1132113))

(assert (=> b!1227261 m!1132109))

(assert (=> b!1227261 m!1132109))

(declare-fun m!1132115 () Bool)

(assert (=> b!1227261 m!1132115))

(declare-fun m!1132117 () Bool)

(assert (=> b!1227252 m!1132117))

(declare-fun m!1132119 () Bool)

(assert (=> b!1227257 m!1132119))

(declare-fun m!1132121 () Bool)

(assert (=> b!1227253 m!1132121))

(declare-fun m!1132123 () Bool)

(assert (=> b!1227259 m!1132123))

(declare-fun m!1132125 () Bool)

(assert (=> b!1227255 m!1132125))

(declare-fun m!1132127 () Bool)

(assert (=> start!101992 m!1132127))

(declare-fun m!1132129 () Bool)

(assert (=> b!1227254 m!1132129))

(declare-fun m!1132131 () Bool)

(assert (=> b!1227250 m!1132131))

(declare-fun m!1132133 () Bool)

(assert (=> b!1227260 m!1132133))

(declare-fun m!1132135 () Bool)

(assert (=> b!1227251 m!1132135))

(push 1)

(assert (not b!1227260))

(assert (not b!1227251))

(assert (not b!1227257))

(assert (not b!1227250))

(assert (not b!1227254))

(assert (not b!1227255))

(assert (not b!1227256))

(assert (not b!1227259))

(assert (not b!1227252))

(assert (not b!1227258))

(assert (not b!1227253))

(assert (not b!1227261))

(assert (not start!101992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

