; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101994 () Bool)

(assert start!101994)

(declare-fun b!1227288 () Bool)

(declare-fun e!696963 () Bool)

(assert (=> b!1227288 (= e!696963 true)))

(declare-datatypes ((Unit!40588 0))(
  ( (Unit!40589) )
))
(declare-fun lt!558848 () Unit!40588)

(declare-datatypes ((List!27175 0))(
  ( (Nil!27172) (Cons!27171 (h!28380 (_ BitVec 64)) (t!40645 List!27175)) )
))
(declare-fun acc!823 () List!27175)

(declare-fun noDuplicateSubseq!30 (List!27175 List!27175) Unit!40588)

(assert (=> b!1227288 (= lt!558848 (noDuplicateSubseq!30 Nil!27172 acc!823))))

(declare-fun b!1227289 () Bool)

(declare-fun res!816021 () Bool)

(declare-fun e!696964 () Bool)

(assert (=> b!1227289 (=> (not res!816021) (not e!696964))))

(declare-fun contains!7090 (List!27175 (_ BitVec 64)) Bool)

(assert (=> b!1227289 (= res!816021 (not (contains!7090 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227290 () Bool)

(declare-fun res!816028 () Bool)

(assert (=> b!1227290 (=> (not res!816028) (not e!696964))))

(declare-datatypes ((array!79210 0))(
  ( (array!79211 (arr!38224 (Array (_ BitVec 32) (_ BitVec 64))) (size!38761 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79210)

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227290 (= res!816028 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227291 () Bool)

(declare-fun res!816019 () Bool)

(assert (=> b!1227291 (=> (not res!816019) (not e!696964))))

(assert (=> b!1227291 (= res!816019 (not (contains!7090 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227292 () Bool)

(declare-fun res!816025 () Bool)

(assert (=> b!1227292 (=> (not res!816025) (not e!696964))))

(declare-fun arrayNoDuplicates!0 (array!79210 (_ BitVec 32) List!27175) Bool)

(assert (=> b!1227292 (= res!816025 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227293 () Bool)

(declare-fun res!816023 () Bool)

(assert (=> b!1227293 (=> res!816023 e!696963)))

(declare-fun subseq!477 (List!27175 List!27175) Bool)

(assert (=> b!1227293 (= res!816023 (not (subseq!477 Nil!27172 acc!823)))))

(declare-fun b!1227294 () Bool)

(declare-fun res!816020 () Bool)

(assert (=> b!1227294 (=> (not res!816020) (not e!696964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227294 (= res!816020 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227295 () Bool)

(declare-fun res!816017 () Bool)

(assert (=> b!1227295 (=> (not res!816017) (not e!696964))))

(assert (=> b!1227295 (= res!816017 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38761 a!3806)) (bvslt from!3184 (size!38761 a!3806))))))

(declare-fun b!1227296 () Bool)

(assert (=> b!1227296 (= e!696964 (not e!696963))))

(declare-fun res!816026 () Bool)

(assert (=> b!1227296 (=> res!816026 e!696963)))

(assert (=> b!1227296 (= res!816026 (bvsgt from!3184 (size!38761 a!3806)))))

(assert (=> b!1227296 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27171 (select (arr!38224 a!3806) from!3184) acc!823))))

(declare-fun b!1227297 () Bool)

(declare-fun res!816027 () Bool)

(assert (=> b!1227297 (=> (not res!816027) (not e!696964))))

(declare-fun noDuplicate!1697 (List!27175) Bool)

(assert (=> b!1227297 (= res!816027 (noDuplicate!1697 acc!823))))

(declare-fun b!1227298 () Bool)

(declare-fun res!816018 () Bool)

(assert (=> b!1227298 (=> (not res!816018) (not e!696964))))

(assert (=> b!1227298 (= res!816018 (validKeyInArray!0 (select (arr!38224 a!3806) from!3184)))))

(declare-fun b!1227299 () Bool)

(declare-fun res!816022 () Bool)

(assert (=> b!1227299 (=> res!816022 e!696963)))

(assert (=> b!1227299 (= res!816022 (contains!7090 Nil!27172 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!816024 () Bool)

(assert (=> start!101994 (=> (not res!816024) (not e!696964))))

(assert (=> start!101994 (= res!816024 (bvslt (size!38761 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101994 e!696964))

(declare-fun array_inv!29000 (array!79210) Bool)

(assert (=> start!101994 (array_inv!29000 a!3806)))

(assert (=> start!101994 true))

(declare-fun b!1227300 () Bool)

(declare-fun res!816029 () Bool)

(assert (=> b!1227300 (=> res!816029 e!696963)))

(assert (=> b!1227300 (= res!816029 (contains!7090 Nil!27172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!101994 res!816024) b!1227294))

(assert (= (and b!1227294 res!816020) b!1227295))

(assert (= (and b!1227295 res!816017) b!1227297))

(assert (= (and b!1227297 res!816027) b!1227291))

(assert (= (and b!1227291 res!816019) b!1227289))

(assert (= (and b!1227289 res!816021) b!1227290))

(assert (= (and b!1227290 res!816028) b!1227292))

(assert (= (and b!1227292 res!816025) b!1227298))

(assert (= (and b!1227298 res!816018) b!1227296))

(assert (= (and b!1227296 (not res!816026)) b!1227300))

(assert (= (and b!1227300 (not res!816029)) b!1227299))

(assert (= (and b!1227299 (not res!816022)) b!1227293))

(assert (= (and b!1227293 (not res!816023)) b!1227288))

(declare-fun m!1132137 () Bool)

(assert (=> b!1227288 m!1132137))

(declare-fun m!1132139 () Bool)

(assert (=> b!1227291 m!1132139))

(declare-fun m!1132141 () Bool)

(assert (=> b!1227298 m!1132141))

(assert (=> b!1227298 m!1132141))

(declare-fun m!1132143 () Bool)

(assert (=> b!1227298 m!1132143))

(declare-fun m!1132145 () Bool)

(assert (=> b!1227300 m!1132145))

(assert (=> b!1227296 m!1132141))

(declare-fun m!1132147 () Bool)

(assert (=> b!1227296 m!1132147))

(declare-fun m!1132149 () Bool)

(assert (=> b!1227299 m!1132149))

(declare-fun m!1132151 () Bool)

(assert (=> b!1227294 m!1132151))

(declare-fun m!1132153 () Bool)

(assert (=> b!1227292 m!1132153))

(declare-fun m!1132155 () Bool)

(assert (=> b!1227289 m!1132155))

(declare-fun m!1132157 () Bool)

(assert (=> b!1227293 m!1132157))

(declare-fun m!1132159 () Bool)

(assert (=> start!101994 m!1132159))

(declare-fun m!1132161 () Bool)

(assert (=> b!1227297 m!1132161))

(declare-fun m!1132163 () Bool)

(assert (=> b!1227290 m!1132163))

(check-sat (not b!1227299) (not b!1227300) (not b!1227292) (not b!1227297) (not b!1227291) (not start!101994) (not b!1227290) (not b!1227298) (not b!1227296) (not b!1227288) (not b!1227293) (not b!1227294) (not b!1227289))
(check-sat)
