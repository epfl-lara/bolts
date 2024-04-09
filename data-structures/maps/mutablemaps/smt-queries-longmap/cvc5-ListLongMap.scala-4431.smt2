; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61578 () Bool)

(assert start!61578)

(declare-fun b!688274 () Bool)

(declare-fun res!453160 () Bool)

(declare-fun e!392014 () Bool)

(assert (=> b!688274 (=> (not res!453160) (not e!392014))))

(declare-datatypes ((array!39675 0))(
  ( (array!39676 (arr!19005 (Array (_ BitVec 32) (_ BitVec 64))) (size!19386 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39675)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688274 (= res!453160 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688275 () Bool)

(declare-datatypes ((Unit!24262 0))(
  ( (Unit!24263) )
))
(declare-fun e!392016 () Unit!24262)

(declare-fun Unit!24264 () Unit!24262)

(assert (=> b!688275 (= e!392016 Unit!24264)))

(declare-fun b!688276 () Bool)

(declare-fun res!453151 () Bool)

(assert (=> b!688276 (=> (not res!453151) (not e!392014))))

(declare-datatypes ((List!13099 0))(
  ( (Nil!13096) (Cons!13095 (h!14140 (_ BitVec 64)) (t!19371 List!13099)) )
))
(declare-fun acc!681 () List!13099)

(declare-fun noDuplicate!889 (List!13099) Bool)

(assert (=> b!688276 (= res!453151 (noDuplicate!889 acc!681))))

(declare-fun b!688277 () Bool)

(declare-fun res!453157 () Bool)

(assert (=> b!688277 (=> (not res!453157) (not e!392014))))

(declare-fun contains!3642 (List!13099 (_ BitVec 64)) Bool)

(assert (=> b!688277 (= res!453157 (not (contains!3642 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688278 () Bool)

(declare-fun res!453149 () Bool)

(declare-fun e!392018 () Bool)

(assert (=> b!688278 (=> res!453149 e!392018)))

(declare-fun lt!315734 () List!13099)

(assert (=> b!688278 (= res!453149 (contains!3642 lt!315734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688279 () Bool)

(assert (=> b!688279 (= e!392018 true)))

(declare-fun lt!315738 () Bool)

(declare-fun e!392020 () Bool)

(assert (=> b!688279 (= lt!315738 e!392020)))

(declare-fun res!453145 () Bool)

(assert (=> b!688279 (=> res!453145 e!392020)))

(declare-fun e!392022 () Bool)

(assert (=> b!688279 (= res!453145 e!392022)))

(declare-fun res!453155 () Bool)

(assert (=> b!688279 (=> (not res!453155) (not e!392022))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688279 (= res!453155 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688280 () Bool)

(assert (=> b!688280 (= e!392014 (not e!392018))))

(declare-fun res!453158 () Bool)

(assert (=> b!688280 (=> res!453158 e!392018)))

(assert (=> b!688280 (= res!453158 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39675 (_ BitVec 32) List!13099) Bool)

(assert (=> b!688280 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315734)))

(declare-fun lt!315730 () Unit!24262)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39675 (_ BitVec 64) (_ BitVec 32) List!13099 List!13099) Unit!24262)

(assert (=> b!688280 (= lt!315730 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315734))))

(declare-fun -!192 (List!13099 (_ BitVec 64)) List!13099)

(assert (=> b!688280 (= (-!192 lt!315734 k!2843) acc!681)))

(declare-fun $colon$colon!391 (List!13099 (_ BitVec 64)) List!13099)

(assert (=> b!688280 (= lt!315734 ($colon$colon!391 acc!681 k!2843))))

(declare-fun lt!315729 () Unit!24262)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13099) Unit!24262)

(assert (=> b!688280 (= lt!315729 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!227 (List!13099 List!13099) Bool)

(assert (=> b!688280 (subseq!227 acc!681 acc!681)))

(declare-fun lt!315732 () Unit!24262)

(declare-fun lemmaListSubSeqRefl!0 (List!13099) Unit!24262)

(assert (=> b!688280 (= lt!315732 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688280 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315736 () Unit!24262)

(declare-fun e!392017 () Unit!24262)

(assert (=> b!688280 (= lt!315736 e!392017)))

(declare-fun c!77933 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688280 (= c!77933 (validKeyInArray!0 (select (arr!19005 a!3626) from!3004)))))

(declare-fun lt!315737 () Unit!24262)

(assert (=> b!688280 (= lt!315737 e!392016)))

(declare-fun c!77932 () Bool)

(assert (=> b!688280 (= c!77932 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688280 (arrayContainsKey!0 (array!39676 (store (arr!19005 a!3626) i!1382 k!2843) (size!19386 a!3626)) k!2843 from!3004)))

(declare-fun b!688281 () Bool)

(declare-fun e!392019 () Bool)

(declare-fun e!392013 () Bool)

(assert (=> b!688281 (= e!392019 e!392013)))

(declare-fun res!453159 () Bool)

(assert (=> b!688281 (=> (not res!453159) (not e!392013))))

(assert (=> b!688281 (= res!453159 (bvsle from!3004 i!1382))))

(declare-fun b!688282 () Bool)

(assert (=> b!688282 (= e!392022 (contains!3642 lt!315734 k!2843))))

(declare-fun res!453148 () Bool)

(assert (=> start!61578 (=> (not res!453148) (not e!392014))))

(assert (=> start!61578 (= res!453148 (and (bvslt (size!19386 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19386 a!3626))))))

(assert (=> start!61578 e!392014))

(assert (=> start!61578 true))

(declare-fun array_inv!14779 (array!39675) Bool)

(assert (=> start!61578 (array_inv!14779 a!3626)))

(declare-fun b!688283 () Bool)

(declare-fun res!453163 () Bool)

(assert (=> b!688283 (=> (not res!453163) (not e!392014))))

(assert (=> b!688283 (= res!453163 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688284 () Bool)

(declare-fun Unit!24265 () Unit!24262)

(assert (=> b!688284 (= e!392017 Unit!24265)))

(declare-fun b!688285 () Bool)

(declare-fun res!453153 () Bool)

(assert (=> b!688285 (=> (not res!453153) (not e!392014))))

(assert (=> b!688285 (= res!453153 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19386 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688286 () Bool)

(declare-fun res!453150 () Bool)

(assert (=> b!688286 (=> (not res!453150) (not e!392014))))

(assert (=> b!688286 (= res!453150 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13096))))

(declare-fun b!688287 () Bool)

(declare-fun e!392015 () Bool)

(assert (=> b!688287 (= e!392015 (not (contains!3642 lt!315734 k!2843)))))

(declare-fun b!688288 () Bool)

(declare-fun res!453147 () Bool)

(assert (=> b!688288 (=> (not res!453147) (not e!392014))))

(assert (=> b!688288 (= res!453147 e!392019)))

(declare-fun res!453152 () Bool)

(assert (=> b!688288 (=> res!453152 e!392019)))

(declare-fun e!392023 () Bool)

(assert (=> b!688288 (= res!453152 e!392023)))

(declare-fun res!453164 () Bool)

(assert (=> b!688288 (=> (not res!453164) (not e!392023))))

(assert (=> b!688288 (= res!453164 (bvsgt from!3004 i!1382))))

(declare-fun b!688289 () Bool)

(assert (=> b!688289 (= e!392023 (contains!3642 acc!681 k!2843))))

(declare-fun b!688290 () Bool)

(declare-fun res!453144 () Bool)

(assert (=> b!688290 (=> res!453144 e!392018)))

(assert (=> b!688290 (= res!453144 (not (noDuplicate!889 lt!315734)))))

(declare-fun b!688291 () Bool)

(declare-fun res!453154 () Bool)

(assert (=> b!688291 (=> (not res!453154) (not e!392014))))

(assert (=> b!688291 (= res!453154 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19386 a!3626))))))

(declare-fun b!688292 () Bool)

(declare-fun res!453156 () Bool)

(assert (=> b!688292 (=> (not res!453156) (not e!392014))))

(assert (=> b!688292 (= res!453156 (not (contains!3642 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688293 () Bool)

(declare-fun res!453162 () Bool)

(assert (=> b!688293 (=> res!453162 e!392018)))

(assert (=> b!688293 (= res!453162 (contains!3642 lt!315734 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688294 () Bool)

(assert (=> b!688294 (= e!392020 e!392015)))

(declare-fun res!453161 () Bool)

(assert (=> b!688294 (=> (not res!453161) (not e!392015))))

(assert (=> b!688294 (= res!453161 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688295 () Bool)

(assert (=> b!688295 (= e!392013 (not (contains!3642 acc!681 k!2843)))))

(declare-fun b!688296 () Bool)

(declare-fun lt!315731 () Unit!24262)

(assert (=> b!688296 (= e!392017 lt!315731)))

(declare-fun lt!315735 () Unit!24262)

(assert (=> b!688296 (= lt!315735 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688296 (subseq!227 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39675 List!13099 List!13099 (_ BitVec 32)) Unit!24262)

(assert (=> b!688296 (= lt!315731 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!391 acc!681 (select (arr!19005 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688296 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688297 () Bool)

(declare-fun res!453146 () Bool)

(assert (=> b!688297 (=> (not res!453146) (not e!392014))))

(assert (=> b!688297 (= res!453146 (validKeyInArray!0 k!2843))))

(declare-fun b!688298 () Bool)

(declare-fun Unit!24266 () Unit!24262)

(assert (=> b!688298 (= e!392016 Unit!24266)))

(declare-fun lt!315733 () Unit!24262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39675 (_ BitVec 64) (_ BitVec 32)) Unit!24262)

(assert (=> b!688298 (= lt!315733 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688298 false))

(assert (= (and start!61578 res!453148) b!688276))

(assert (= (and b!688276 res!453151) b!688277))

(assert (= (and b!688277 res!453157) b!688292))

(assert (= (and b!688292 res!453156) b!688288))

(assert (= (and b!688288 res!453164) b!688289))

(assert (= (and b!688288 (not res!453152)) b!688281))

(assert (= (and b!688281 res!453159) b!688295))

(assert (= (and b!688288 res!453147) b!688286))

(assert (= (and b!688286 res!453150) b!688283))

(assert (= (and b!688283 res!453163) b!688291))

(assert (= (and b!688291 res!453154) b!688297))

(assert (= (and b!688297 res!453146) b!688274))

(assert (= (and b!688274 res!453160) b!688285))

(assert (= (and b!688285 res!453153) b!688280))

(assert (= (and b!688280 c!77932) b!688298))

(assert (= (and b!688280 (not c!77932)) b!688275))

(assert (= (and b!688280 c!77933) b!688296))

(assert (= (and b!688280 (not c!77933)) b!688284))

(assert (= (and b!688280 (not res!453158)) b!688290))

(assert (= (and b!688290 (not res!453144)) b!688278))

(assert (= (and b!688278 (not res!453149)) b!688293))

(assert (= (and b!688293 (not res!453162)) b!688279))

(assert (= (and b!688279 res!453155) b!688282))

(assert (= (and b!688279 (not res!453145)) b!688294))

(assert (= (and b!688294 res!453161) b!688287))

(declare-fun m!652227 () Bool)

(assert (=> b!688283 m!652227))

(declare-fun m!652229 () Bool)

(assert (=> b!688276 m!652229))

(declare-fun m!652231 () Bool)

(assert (=> b!688298 m!652231))

(declare-fun m!652233 () Bool)

(assert (=> b!688287 m!652233))

(declare-fun m!652235 () Bool)

(assert (=> start!61578 m!652235))

(declare-fun m!652237 () Bool)

(assert (=> b!688277 m!652237))

(declare-fun m!652239 () Bool)

(assert (=> b!688292 m!652239))

(declare-fun m!652241 () Bool)

(assert (=> b!688296 m!652241))

(declare-fun m!652243 () Bool)

(assert (=> b!688296 m!652243))

(declare-fun m!652245 () Bool)

(assert (=> b!688296 m!652245))

(declare-fun m!652247 () Bool)

(assert (=> b!688296 m!652247))

(assert (=> b!688296 m!652243))

(assert (=> b!688296 m!652245))

(declare-fun m!652249 () Bool)

(assert (=> b!688296 m!652249))

(declare-fun m!652251 () Bool)

(assert (=> b!688296 m!652251))

(declare-fun m!652253 () Bool)

(assert (=> b!688293 m!652253))

(assert (=> b!688282 m!652233))

(declare-fun m!652255 () Bool)

(assert (=> b!688295 m!652255))

(declare-fun m!652257 () Bool)

(assert (=> b!688297 m!652257))

(declare-fun m!652259 () Bool)

(assert (=> b!688278 m!652259))

(assert (=> b!688280 m!652241))

(assert (=> b!688280 m!652243))

(declare-fun m!652261 () Bool)

(assert (=> b!688280 m!652261))

(declare-fun m!652263 () Bool)

(assert (=> b!688280 m!652263))

(declare-fun m!652265 () Bool)

(assert (=> b!688280 m!652265))

(declare-fun m!652267 () Bool)

(assert (=> b!688280 m!652267))

(assert (=> b!688280 m!652249))

(declare-fun m!652269 () Bool)

(assert (=> b!688280 m!652269))

(declare-fun m!652271 () Bool)

(assert (=> b!688280 m!652271))

(declare-fun m!652273 () Bool)

(assert (=> b!688280 m!652273))

(assert (=> b!688280 m!652243))

(declare-fun m!652275 () Bool)

(assert (=> b!688280 m!652275))

(declare-fun m!652277 () Bool)

(assert (=> b!688280 m!652277))

(assert (=> b!688280 m!652251))

(declare-fun m!652279 () Bool)

(assert (=> b!688274 m!652279))

(assert (=> b!688289 m!652255))

(declare-fun m!652281 () Bool)

(assert (=> b!688286 m!652281))

(declare-fun m!652283 () Bool)

(assert (=> b!688290 m!652283))

(push 1)

(assert (not b!688287))

(assert (not b!688283))

(assert (not b!688289))

(assert (not b!688278))

(assert (not b!688298))

(assert (not b!688290))

(assert (not b!688274))

(assert (not b!688282))

(assert (not start!61578))

(assert (not b!688293))

(assert (not b!688297))

(assert (not b!688286))

(assert (not b!688276))

(assert (not b!688295))

(assert (not b!688277))

(assert (not b!688296))

(assert (not b!688292))

(assert (not b!688280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

