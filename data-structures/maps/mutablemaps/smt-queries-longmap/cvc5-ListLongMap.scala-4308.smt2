; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59892 () Bool)

(assert start!59892)

(declare-fun res!430349 () Bool)

(declare-fun e!380163 () Bool)

(assert (=> start!59892 (=> (not res!430349) (not e!380163))))

(declare-datatypes ((array!38895 0))(
  ( (array!38896 (arr!18636 (Array (_ BitVec 32) (_ BitVec 64))) (size!19000 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38895)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59892 (= res!430349 (and (bvslt (size!19000 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19000 a!3626))))))

(assert (=> start!59892 e!380163))

(assert (=> start!59892 true))

(declare-fun array_inv!14410 (array!38895) Bool)

(assert (=> start!59892 (array_inv!14410 a!3626)))

(declare-fun b!662153 () Bool)

(declare-fun e!380165 () Bool)

(assert (=> b!662153 (= e!380163 (not e!380165))))

(declare-fun res!430341 () Bool)

(assert (=> b!662153 (=> res!430341 e!380165)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662153 (= res!430341 (not (validKeyInArray!0 (select (arr!18636 a!3626) from!3004))))))

(declare-datatypes ((Unit!22990 0))(
  ( (Unit!22991) )
))
(declare-fun lt!308933 () Unit!22990)

(declare-fun e!380164 () Unit!22990)

(assert (=> b!662153 (= lt!308933 e!380164)))

(declare-fun c!76277 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662153 (= c!76277 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662153 (arrayContainsKey!0 (array!38896 (store (arr!18636 a!3626) i!1382 k!2843) (size!19000 a!3626)) k!2843 from!3004)))

(declare-fun b!662154 () Bool)

(declare-fun e!380161 () Bool)

(assert (=> b!662154 (= e!380161 true)))

(declare-datatypes ((List!12730 0))(
  ( (Nil!12727) (Cons!12726 (h!13771 (_ BitVec 64)) (t!18966 List!12730)) )
))
(declare-fun lt!308935 () List!12730)

(declare-fun lt!308936 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38895 (_ BitVec 32) List!12730) Bool)

(assert (=> b!662154 (= lt!308936 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308935))))

(declare-fun lt!308937 () Unit!22990)

(declare-fun acc!681 () List!12730)

(declare-fun noDuplicateSubseq!11 (List!12730 List!12730) Unit!22990)

(assert (=> b!662154 (= lt!308937 (noDuplicateSubseq!11 acc!681 lt!308935))))

(declare-fun b!662155 () Bool)

(declare-fun res!430344 () Bool)

(assert (=> b!662155 (=> res!430344 e!380161)))

(declare-fun contains!3273 (List!12730 (_ BitVec 64)) Bool)

(assert (=> b!662155 (= res!430344 (contains!3273 lt!308935 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662156 () Bool)

(declare-fun Unit!22992 () Unit!22990)

(assert (=> b!662156 (= e!380164 Unit!22992)))

(declare-fun lt!308932 () Unit!22990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38895 (_ BitVec 64) (_ BitVec 32)) Unit!22990)

(assert (=> b!662156 (= lt!308932 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662156 false))

(declare-fun b!662157 () Bool)

(declare-fun res!430346 () Bool)

(assert (=> b!662157 (=> (not res!430346) (not e!380163))))

(assert (=> b!662157 (= res!430346 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662158 () Bool)

(declare-fun res!430347 () Bool)

(assert (=> b!662158 (=> res!430347 e!380161)))

(declare-fun noDuplicate!520 (List!12730) Bool)

(assert (=> b!662158 (= res!430347 (not (noDuplicate!520 lt!308935)))))

(declare-fun b!662159 () Bool)

(declare-fun e!380167 () Bool)

(assert (=> b!662159 (= e!380167 (contains!3273 acc!681 k!2843))))

(declare-fun b!662160 () Bool)

(declare-fun e!380166 () Bool)

(assert (=> b!662160 (= e!380166 (not (contains!3273 acc!681 k!2843)))))

(declare-fun b!662161 () Bool)

(declare-fun res!430339 () Bool)

(assert (=> b!662161 (=> (not res!430339) (not e!380163))))

(declare-fun e!380160 () Bool)

(assert (=> b!662161 (= res!430339 e!380160)))

(declare-fun res!430337 () Bool)

(assert (=> b!662161 (=> res!430337 e!380160)))

(assert (=> b!662161 (= res!430337 e!380167)))

(declare-fun res!430334 () Bool)

(assert (=> b!662161 (=> (not res!430334) (not e!380167))))

(assert (=> b!662161 (= res!430334 (bvsgt from!3004 i!1382))))

(declare-fun b!662162 () Bool)

(declare-fun res!430333 () Bool)

(assert (=> b!662162 (=> (not res!430333) (not e!380163))))

(assert (=> b!662162 (= res!430333 (noDuplicate!520 acc!681))))

(declare-fun b!662163 () Bool)

(assert (=> b!662163 (= e!380165 e!380161)))

(declare-fun res!430352 () Bool)

(assert (=> b!662163 (=> res!430352 e!380161)))

(assert (=> b!662163 (= res!430352 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!142 (List!12730 (_ BitVec 64)) List!12730)

(assert (=> b!662163 (= lt!308935 ($colon$colon!142 acc!681 (select (arr!18636 a!3626) from!3004)))))

(declare-fun subseq!11 (List!12730 List!12730) Bool)

(assert (=> b!662163 (subseq!11 acc!681 acc!681)))

(declare-fun lt!308934 () Unit!22990)

(declare-fun lemmaListSubSeqRefl!0 (List!12730) Unit!22990)

(assert (=> b!662163 (= lt!308934 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662164 () Bool)

(declare-fun res!430342 () Bool)

(assert (=> b!662164 (=> (not res!430342) (not e!380163))))

(assert (=> b!662164 (= res!430342 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19000 a!3626))))))

(declare-fun b!662165 () Bool)

(declare-fun res!430350 () Bool)

(assert (=> b!662165 (=> (not res!430350) (not e!380163))))

(assert (=> b!662165 (= res!430350 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662166 () Bool)

(declare-fun res!430351 () Bool)

(assert (=> b!662166 (=> res!430351 e!380161)))

(assert (=> b!662166 (= res!430351 (not (subseq!11 acc!681 lt!308935)))))

(declare-fun b!662167 () Bool)

(declare-fun res!430345 () Bool)

(assert (=> b!662167 (=> (not res!430345) (not e!380163))))

(assert (=> b!662167 (= res!430345 (not (contains!3273 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662168 () Bool)

(assert (=> b!662168 (= e!380160 e!380166)))

(declare-fun res!430335 () Bool)

(assert (=> b!662168 (=> (not res!430335) (not e!380166))))

(assert (=> b!662168 (= res!430335 (bvsle from!3004 i!1382))))

(declare-fun b!662169 () Bool)

(declare-fun res!430338 () Bool)

(assert (=> b!662169 (=> (not res!430338) (not e!380163))))

(assert (=> b!662169 (= res!430338 (not (contains!3273 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662170 () Bool)

(declare-fun res!430343 () Bool)

(assert (=> b!662170 (=> (not res!430343) (not e!380163))))

(assert (=> b!662170 (= res!430343 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12727))))

(declare-fun b!662171 () Bool)

(declare-fun res!430340 () Bool)

(assert (=> b!662171 (=> (not res!430340) (not e!380163))))

(assert (=> b!662171 (= res!430340 (validKeyInArray!0 k!2843))))

(declare-fun b!662172 () Bool)

(declare-fun res!430348 () Bool)

(assert (=> b!662172 (=> res!430348 e!380161)))

(assert (=> b!662172 (= res!430348 (contains!3273 lt!308935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662173 () Bool)

(declare-fun res!430336 () Bool)

(assert (=> b!662173 (=> (not res!430336) (not e!380163))))

(assert (=> b!662173 (= res!430336 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19000 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662174 () Bool)

(declare-fun Unit!22993 () Unit!22990)

(assert (=> b!662174 (= e!380164 Unit!22993)))

(assert (= (and start!59892 res!430349) b!662162))

(assert (= (and b!662162 res!430333) b!662169))

(assert (= (and b!662169 res!430338) b!662167))

(assert (= (and b!662167 res!430345) b!662161))

(assert (= (and b!662161 res!430334) b!662159))

(assert (= (and b!662161 (not res!430337)) b!662168))

(assert (= (and b!662168 res!430335) b!662160))

(assert (= (and b!662161 res!430339) b!662170))

(assert (= (and b!662170 res!430343) b!662157))

(assert (= (and b!662157 res!430346) b!662164))

(assert (= (and b!662164 res!430342) b!662171))

(assert (= (and b!662171 res!430340) b!662165))

(assert (= (and b!662165 res!430350) b!662173))

(assert (= (and b!662173 res!430336) b!662153))

(assert (= (and b!662153 c!76277) b!662156))

(assert (= (and b!662153 (not c!76277)) b!662174))

(assert (= (and b!662153 (not res!430341)) b!662163))

(assert (= (and b!662163 (not res!430352)) b!662158))

(assert (= (and b!662158 (not res!430347)) b!662172))

(assert (= (and b!662172 (not res!430348)) b!662155))

(assert (= (and b!662155 (not res!430344)) b!662166))

(assert (= (and b!662166 (not res!430351)) b!662154))

(declare-fun m!634083 () Bool)

(assert (=> b!662159 m!634083))

(declare-fun m!634085 () Bool)

(assert (=> b!662163 m!634085))

(assert (=> b!662163 m!634085))

(declare-fun m!634087 () Bool)

(assert (=> b!662163 m!634087))

(declare-fun m!634089 () Bool)

(assert (=> b!662163 m!634089))

(declare-fun m!634091 () Bool)

(assert (=> b!662163 m!634091))

(assert (=> b!662160 m!634083))

(declare-fun m!634093 () Bool)

(assert (=> b!662158 m!634093))

(declare-fun m!634095 () Bool)

(assert (=> b!662157 m!634095))

(declare-fun m!634097 () Bool)

(assert (=> b!662171 m!634097))

(declare-fun m!634099 () Bool)

(assert (=> b!662170 m!634099))

(declare-fun m!634101 () Bool)

(assert (=> b!662155 m!634101))

(declare-fun m!634103 () Bool)

(assert (=> b!662165 m!634103))

(declare-fun m!634105 () Bool)

(assert (=> b!662166 m!634105))

(declare-fun m!634107 () Bool)

(assert (=> b!662169 m!634107))

(declare-fun m!634109 () Bool)

(assert (=> start!59892 m!634109))

(declare-fun m!634111 () Bool)

(assert (=> b!662162 m!634111))

(declare-fun m!634113 () Bool)

(assert (=> b!662154 m!634113))

(declare-fun m!634115 () Bool)

(assert (=> b!662154 m!634115))

(assert (=> b!662153 m!634085))

(declare-fun m!634117 () Bool)

(assert (=> b!662153 m!634117))

(declare-fun m!634119 () Bool)

(assert (=> b!662153 m!634119))

(assert (=> b!662153 m!634085))

(declare-fun m!634121 () Bool)

(assert (=> b!662153 m!634121))

(declare-fun m!634123 () Bool)

(assert (=> b!662153 m!634123))

(declare-fun m!634125 () Bool)

(assert (=> b!662156 m!634125))

(declare-fun m!634127 () Bool)

(assert (=> b!662167 m!634127))

(declare-fun m!634129 () Bool)

(assert (=> b!662172 m!634129))

(push 1)

