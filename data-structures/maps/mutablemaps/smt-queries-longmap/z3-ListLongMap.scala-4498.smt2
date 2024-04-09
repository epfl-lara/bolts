; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62474 () Bool)

(assert start!62474)

(declare-fun b!702016 () Bool)

(declare-fun res!466010 () Bool)

(declare-fun e!397371 () Bool)

(assert (=> b!702016 (=> (not res!466010) (not e!397371))))

(declare-datatypes ((List!13301 0))(
  ( (Nil!13298) (Cons!13297 (h!14342 (_ BitVec 64)) (t!19591 List!13301)) )
))
(declare-fun lt!317621 () List!13301)

(declare-fun contains!3844 (List!13301 (_ BitVec 64)) Bool)

(assert (=> b!702016 (= res!466010 (not (contains!3844 lt!317621 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702017 () Bool)

(declare-fun res!466009 () Bool)

(declare-fun e!397370 () Bool)

(assert (=> b!702017 (=> (not res!466009) (not e!397370))))

(declare-fun acc!652 () List!13301)

(assert (=> b!702017 (= res!466009 (not (contains!3844 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702018 () Bool)

(declare-fun res!466026 () Bool)

(assert (=> b!702018 (=> (not res!466026) (not e!397370))))

(declare-fun newAcc!49 () List!13301)

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!702018 (= res!466026 (contains!3844 newAcc!49 k0!2824))))

(declare-fun b!702019 () Bool)

(declare-fun res!466022 () Bool)

(assert (=> b!702019 (=> (not res!466022) (not e!397370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702019 (= res!466022 (validKeyInArray!0 k0!2824))))

(declare-fun b!702020 () Bool)

(declare-fun res!466020 () Bool)

(assert (=> b!702020 (=> (not res!466020) (not e!397370))))

(declare-datatypes ((array!40109 0))(
  ( (array!40110 (arr!19207 (Array (_ BitVec 32) (_ BitVec 64))) (size!19590 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40109)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!702020 (= res!466020 (validKeyInArray!0 (select (arr!19207 a!3591) from!2969)))))

(declare-fun b!702021 () Bool)

(declare-fun res!466025 () Bool)

(assert (=> b!702021 (=> (not res!466025) (not e!397370))))

(declare-fun noDuplicate!1091 (List!13301) Bool)

(assert (=> b!702021 (= res!466025 (noDuplicate!1091 acc!652))))

(declare-fun b!702023 () Bool)

(declare-fun res!466012 () Bool)

(assert (=> b!702023 (=> (not res!466012) (not e!397370))))

(assert (=> b!702023 (= res!466012 (not (contains!3844 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702024 () Bool)

(declare-fun res!466016 () Bool)

(assert (=> b!702024 (=> (not res!466016) (not e!397371))))

(assert (=> b!702024 (= res!466016 (noDuplicate!1091 lt!317621))))

(declare-fun b!702025 () Bool)

(declare-fun res!466014 () Bool)

(assert (=> b!702025 (=> (not res!466014) (not e!397370))))

(assert (=> b!702025 (= res!466014 (not (contains!3844 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702026 () Bool)

(assert (=> b!702026 (= e!397370 e!397371)))

(declare-fun res!466006 () Bool)

(assert (=> b!702026 (=> (not res!466006) (not e!397371))))

(assert (=> b!702026 (= res!466006 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!485 (List!13301 (_ BitVec 64)) List!13301)

(assert (=> b!702026 (= lt!317621 ($colon$colon!485 newAcc!49 (select (arr!19207 a!3591) from!2969)))))

(declare-fun lt!317620 () List!13301)

(assert (=> b!702026 (= lt!317620 ($colon$colon!485 acc!652 (select (arr!19207 a!3591) from!2969)))))

(declare-fun b!702027 () Bool)

(declare-fun res!466002 () Bool)

(assert (=> b!702027 (=> (not res!466002) (not e!397371))))

(assert (=> b!702027 (= res!466002 (not (contains!3844 lt!317621 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702028 () Bool)

(declare-fun res!466008 () Bool)

(assert (=> b!702028 (=> (not res!466008) (not e!397370))))

(assert (=> b!702028 (= res!466008 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19590 a!3591)))))

(declare-fun b!702029 () Bool)

(declare-fun res!466021 () Bool)

(assert (=> b!702029 (=> (not res!466021) (not e!397371))))

(assert (=> b!702029 (= res!466021 (not (contains!3844 lt!317620 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702030 () Bool)

(declare-fun res!466005 () Bool)

(assert (=> b!702030 (=> (not res!466005) (not e!397371))))

(declare-fun subseq!288 (List!13301 List!13301) Bool)

(assert (=> b!702030 (= res!466005 (subseq!288 lt!317620 lt!317621))))

(declare-fun b!702031 () Bool)

(declare-fun res!466028 () Bool)

(assert (=> b!702031 (=> (not res!466028) (not e!397370))))

(assert (=> b!702031 (= res!466028 (not (contains!3844 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702032 () Bool)

(declare-fun res!466003 () Bool)

(assert (=> b!702032 (=> (not res!466003) (not e!397371))))

(assert (=> b!702032 (= res!466003 (noDuplicate!1091 lt!317620))))

(declare-fun b!702033 () Bool)

(declare-fun res!466023 () Bool)

(assert (=> b!702033 (=> (not res!466023) (not e!397371))))

(assert (=> b!702033 (= res!466023 (contains!3844 lt!317621 k0!2824))))

(declare-fun b!702034 () Bool)

(declare-fun res!466004 () Bool)

(assert (=> b!702034 (=> (not res!466004) (not e!397370))))

(declare-fun -!253 (List!13301 (_ BitVec 64)) List!13301)

(assert (=> b!702034 (= res!466004 (= (-!253 newAcc!49 k0!2824) acc!652))))

(declare-fun b!702035 () Bool)

(assert (=> b!702035 (= e!397371 (not (bvsle from!2969 (size!19590 a!3591))))))

(declare-fun arrayNoDuplicates!0 (array!40109 (_ BitVec 32) List!13301) Bool)

(assert (=> b!702035 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317621)))

(declare-datatypes ((Unit!24564 0))(
  ( (Unit!24565) )
))
(declare-fun lt!317622 () Unit!24564)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40109 (_ BitVec 64) (_ BitVec 32) List!13301 List!13301) Unit!24564)

(assert (=> b!702035 (= lt!317622 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317620 lt!317621))))

(declare-fun b!702036 () Bool)

(declare-fun res!466027 () Bool)

(assert (=> b!702036 (=> (not res!466027) (not e!397370))))

(assert (=> b!702036 (= res!466027 (subseq!288 acc!652 newAcc!49))))

(declare-fun b!702037 () Bool)

(declare-fun res!466024 () Bool)

(assert (=> b!702037 (=> (not res!466024) (not e!397371))))

(assert (=> b!702037 (= res!466024 (= (-!253 lt!317621 k0!2824) lt!317620))))

(declare-fun res!466017 () Bool)

(assert (=> start!62474 (=> (not res!466017) (not e!397370))))

(assert (=> start!62474 (= res!466017 (and (bvslt (size!19590 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19590 a!3591))))))

(assert (=> start!62474 e!397370))

(assert (=> start!62474 true))

(declare-fun array_inv!14981 (array!40109) Bool)

(assert (=> start!62474 (array_inv!14981 a!3591)))

(declare-fun b!702022 () Bool)

(declare-fun res!466015 () Bool)

(assert (=> b!702022 (=> (not res!466015) (not e!397370))))

(assert (=> b!702022 (= res!466015 (noDuplicate!1091 newAcc!49))))

(declare-fun b!702038 () Bool)

(declare-fun res!466011 () Bool)

(assert (=> b!702038 (=> (not res!466011) (not e!397370))))

(declare-fun arrayContainsKey!0 (array!40109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702038 (= res!466011 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!702039 () Bool)

(declare-fun res!466007 () Bool)

(assert (=> b!702039 (=> (not res!466007) (not e!397371))))

(assert (=> b!702039 (= res!466007 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317620))))

(declare-fun b!702040 () Bool)

(declare-fun res!466001 () Bool)

(assert (=> b!702040 (=> (not res!466001) (not e!397371))))

(assert (=> b!702040 (= res!466001 (not (contains!3844 lt!317620 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702041 () Bool)

(declare-fun res!466013 () Bool)

(assert (=> b!702041 (=> (not res!466013) (not e!397370))))

(assert (=> b!702041 (= res!466013 (not (contains!3844 acc!652 k0!2824)))))

(declare-fun b!702042 () Bool)

(declare-fun res!466019 () Bool)

(assert (=> b!702042 (=> (not res!466019) (not e!397371))))

(assert (=> b!702042 (= res!466019 (not (contains!3844 lt!317620 k0!2824)))))

(declare-fun b!702043 () Bool)

(declare-fun res!466000 () Bool)

(assert (=> b!702043 (=> (not res!466000) (not e!397371))))

(assert (=> b!702043 (= res!466000 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702044 () Bool)

(declare-fun res!466018 () Bool)

(assert (=> b!702044 (=> (not res!466018) (not e!397370))))

(assert (=> b!702044 (= res!466018 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!62474 res!466017) b!702021))

(assert (= (and b!702021 res!466025) b!702022))

(assert (= (and b!702022 res!466015) b!702017))

(assert (= (and b!702017 res!466009) b!702025))

(assert (= (and b!702025 res!466014) b!702038))

(assert (= (and b!702038 res!466011) b!702041))

(assert (= (and b!702041 res!466013) b!702019))

(assert (= (and b!702019 res!466022) b!702044))

(assert (= (and b!702044 res!466018) b!702036))

(assert (= (and b!702036 res!466027) b!702018))

(assert (= (and b!702018 res!466026) b!702034))

(assert (= (and b!702034 res!466004) b!702031))

(assert (= (and b!702031 res!466028) b!702023))

(assert (= (and b!702023 res!466012) b!702028))

(assert (= (and b!702028 res!466008) b!702020))

(assert (= (and b!702020 res!466020) b!702026))

(assert (= (and b!702026 res!466006) b!702032))

(assert (= (and b!702032 res!466003) b!702024))

(assert (= (and b!702024 res!466016) b!702029))

(assert (= (and b!702029 res!466021) b!702040))

(assert (= (and b!702040 res!466001) b!702043))

(assert (= (and b!702043 res!466000) b!702042))

(assert (= (and b!702042 res!466019) b!702039))

(assert (= (and b!702039 res!466007) b!702030))

(assert (= (and b!702030 res!466005) b!702033))

(assert (= (and b!702033 res!466023) b!702037))

(assert (= (and b!702037 res!466024) b!702016))

(assert (= (and b!702016 res!466010) b!702027))

(assert (= (and b!702027 res!466002) b!702035))

(declare-fun m!661255 () Bool)

(assert (=> b!702040 m!661255))

(declare-fun m!661257 () Bool)

(assert (=> b!702033 m!661257))

(declare-fun m!661259 () Bool)

(assert (=> b!702037 m!661259))

(declare-fun m!661261 () Bool)

(assert (=> b!702032 m!661261))

(declare-fun m!661263 () Bool)

(assert (=> b!702041 m!661263))

(declare-fun m!661265 () Bool)

(assert (=> start!62474 m!661265))

(declare-fun m!661267 () Bool)

(assert (=> b!702016 m!661267))

(declare-fun m!661269 () Bool)

(assert (=> b!702042 m!661269))

(declare-fun m!661271 () Bool)

(assert (=> b!702035 m!661271))

(declare-fun m!661273 () Bool)

(assert (=> b!702035 m!661273))

(declare-fun m!661275 () Bool)

(assert (=> b!702018 m!661275))

(declare-fun m!661277 () Bool)

(assert (=> b!702027 m!661277))

(declare-fun m!661279 () Bool)

(assert (=> b!702039 m!661279))

(declare-fun m!661281 () Bool)

(assert (=> b!702019 m!661281))

(declare-fun m!661283 () Bool)

(assert (=> b!702025 m!661283))

(declare-fun m!661285 () Bool)

(assert (=> b!702038 m!661285))

(declare-fun m!661287 () Bool)

(assert (=> b!702022 m!661287))

(declare-fun m!661289 () Bool)

(assert (=> b!702030 m!661289))

(declare-fun m!661291 () Bool)

(assert (=> b!702029 m!661291))

(declare-fun m!661293 () Bool)

(assert (=> b!702043 m!661293))

(declare-fun m!661295 () Bool)

(assert (=> b!702044 m!661295))

(declare-fun m!661297 () Bool)

(assert (=> b!702034 m!661297))

(declare-fun m!661299 () Bool)

(assert (=> b!702017 m!661299))

(declare-fun m!661301 () Bool)

(assert (=> b!702021 m!661301))

(declare-fun m!661303 () Bool)

(assert (=> b!702023 m!661303))

(declare-fun m!661305 () Bool)

(assert (=> b!702024 m!661305))

(declare-fun m!661307 () Bool)

(assert (=> b!702020 m!661307))

(assert (=> b!702020 m!661307))

(declare-fun m!661309 () Bool)

(assert (=> b!702020 m!661309))

(declare-fun m!661311 () Bool)

(assert (=> b!702031 m!661311))

(assert (=> b!702026 m!661307))

(assert (=> b!702026 m!661307))

(declare-fun m!661313 () Bool)

(assert (=> b!702026 m!661313))

(assert (=> b!702026 m!661307))

(declare-fun m!661315 () Bool)

(assert (=> b!702026 m!661315))

(declare-fun m!661317 () Bool)

(assert (=> b!702036 m!661317))

(check-sat (not b!702044) (not b!702033) (not b!702024) (not start!62474) (not b!702019) (not b!702029) (not b!702032) (not b!702043) (not b!702030) (not b!702035) (not b!702042) (not b!702026) (not b!702018) (not b!702021) (not b!702040) (not b!702034) (not b!702038) (not b!702031) (not b!702027) (not b!702039) (not b!702016) (not b!702036) (not b!702025) (not b!702037) (not b!702041) (not b!702023) (not b!702022) (not b!702020) (not b!702017))
(check-sat)
