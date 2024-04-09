; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60120 () Bool)

(assert start!60120)

(declare-fun b!670288 () Bool)

(declare-fun res!437206 () Bool)

(declare-fun e!383236 () Bool)

(assert (=> b!670288 (=> (not res!437206) (not e!383236))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39123 0))(
  ( (array!39124 (arr!18750 (Array (_ BitVec 32) (_ BitVec 64))) (size!19114 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39123)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!670288 (= res!437206 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19114 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670289 () Bool)

(declare-fun e!383235 () Bool)

(declare-datatypes ((List!12844 0))(
  ( (Nil!12841) (Cons!12840 (h!13885 (_ BitVec 64)) (t!19080 List!12844)) )
))
(declare-fun lt!312008 () List!12844)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3387 (List!12844 (_ BitVec 64)) Bool)

(assert (=> b!670289 (= e!383235 (not (contains!3387 lt!312008 k!2843)))))

(declare-fun b!670290 () Bool)

(declare-fun e!383238 () Bool)

(declare-fun e!383245 () Bool)

(assert (=> b!670290 (= e!383238 e!383245)))

(declare-fun res!437203 () Bool)

(assert (=> b!670290 (=> (not res!437203) (not e!383245))))

(assert (=> b!670290 (= res!437203 (bvsle from!3004 i!1382))))

(declare-fun b!670291 () Bool)

(declare-fun res!437187 () Bool)

(declare-fun e!383244 () Bool)

(assert (=> b!670291 (=> res!437187 e!383244)))

(declare-fun e!383242 () Bool)

(assert (=> b!670291 (= res!437187 e!383242)))

(declare-fun res!437186 () Bool)

(assert (=> b!670291 (=> (not res!437186) (not e!383242))))

(assert (=> b!670291 (= res!437186 e!383235)))

(declare-fun res!437197 () Bool)

(assert (=> b!670291 (=> res!437197 e!383235)))

(assert (=> b!670291 (= res!437197 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670292 () Bool)

(declare-fun res!437192 () Bool)

(assert (=> b!670292 (=> (not res!437192) (not e!383236))))

(declare-fun arrayContainsKey!0 (array!39123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670292 (= res!437192 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670293 () Bool)

(declare-fun res!437196 () Bool)

(assert (=> b!670293 (=> res!437196 e!383244)))

(declare-fun noDuplicate!634 (List!12844) Bool)

(assert (=> b!670293 (= res!437196 (not (noDuplicate!634 lt!312008)))))

(declare-fun b!670294 () Bool)

(declare-fun res!437188 () Bool)

(assert (=> b!670294 (=> (not res!437188) (not e!383236))))

(assert (=> b!670294 (= res!437188 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19114 a!3626))))))

(declare-fun b!670295 () Bool)

(declare-fun e!383241 () Bool)

(declare-fun acc!681 () List!12844)

(assert (=> b!670295 (= e!383241 (contains!3387 acc!681 k!2843))))

(declare-fun b!670296 () Bool)

(declare-fun e!383240 () Bool)

(assert (=> b!670296 (= e!383242 e!383240)))

(declare-fun res!437207 () Bool)

(assert (=> b!670296 (=> res!437207 e!383240)))

(assert (=> b!670296 (= res!437207 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670297 () Bool)

(assert (=> b!670297 (= e!383240 (contains!3387 lt!312008 k!2843))))

(declare-fun b!670298 () Bool)

(declare-fun res!437201 () Bool)

(assert (=> b!670298 (=> res!437201 e!383244)))

(assert (=> b!670298 (= res!437201 (contains!3387 lt!312008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670299 () Bool)

(declare-fun res!437202 () Bool)

(assert (=> b!670299 (=> (not res!437202) (not e!383236))))

(assert (=> b!670299 (= res!437202 e!383238)))

(declare-fun res!437195 () Bool)

(assert (=> b!670299 (=> res!437195 e!383238)))

(assert (=> b!670299 (= res!437195 e!383241)))

(declare-fun res!437199 () Bool)

(assert (=> b!670299 (=> (not res!437199) (not e!383241))))

(assert (=> b!670299 (= res!437199 (bvsgt from!3004 i!1382))))

(declare-fun b!670300 () Bool)

(declare-fun res!437204 () Bool)

(assert (=> b!670300 (=> res!437204 e!383244)))

(assert (=> b!670300 (= res!437204 (contains!3387 lt!312008 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670301 () Bool)

(declare-datatypes ((Unit!23545 0))(
  ( (Unit!23546) )
))
(declare-fun e!383243 () Unit!23545)

(declare-fun Unit!23547 () Unit!23545)

(assert (=> b!670301 (= e!383243 Unit!23547)))

(declare-fun b!670302 () Bool)

(assert (=> b!670302 (= e!383236 (not e!383244))))

(declare-fun res!437193 () Bool)

(assert (=> b!670302 (=> res!437193 e!383244)))

(assert (=> b!670302 (= res!437193 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39123 (_ BitVec 32) List!12844) Bool)

(assert (=> b!670302 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312008)))

(declare-fun lt!312010 () Unit!23545)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39123 (_ BitVec 64) (_ BitVec 32) List!12844 List!12844) Unit!23545)

(assert (=> b!670302 (= lt!312010 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!312008))))

(declare-fun -!123 (List!12844 (_ BitVec 64)) List!12844)

(assert (=> b!670302 (= (-!123 lt!312008 k!2843) acc!681)))

(declare-fun $colon$colon!256 (List!12844 (_ BitVec 64)) List!12844)

(assert (=> b!670302 (= lt!312008 ($colon$colon!256 acc!681 k!2843))))

(declare-fun lt!312007 () Unit!23545)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12844) Unit!23545)

(assert (=> b!670302 (= lt!312007 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!125 (List!12844 List!12844) Bool)

(assert (=> b!670302 (subseq!125 acc!681 acc!681)))

(declare-fun lt!312011 () Unit!23545)

(declare-fun lemmaListSubSeqRefl!0 (List!12844) Unit!23545)

(assert (=> b!670302 (= lt!312011 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670302 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!312005 () Unit!23545)

(declare-fun e!383237 () Unit!23545)

(assert (=> b!670302 (= lt!312005 e!383237)))

(declare-fun c!76918 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670302 (= c!76918 (validKeyInArray!0 (select (arr!18750 a!3626) from!3004)))))

(declare-fun lt!312003 () Unit!23545)

(assert (=> b!670302 (= lt!312003 e!383243)))

(declare-fun c!76919 () Bool)

(assert (=> b!670302 (= c!76919 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!312012 () array!39123)

(assert (=> b!670302 (arrayContainsKey!0 lt!312012 k!2843 from!3004)))

(assert (=> b!670302 (= lt!312012 (array!39124 (store (arr!18750 a!3626) i!1382 k!2843) (size!19114 a!3626)))))

(declare-fun b!670303 () Bool)

(declare-fun res!437198 () Bool)

(assert (=> b!670303 (=> (not res!437198) (not e!383236))))

(assert (=> b!670303 (= res!437198 (validKeyInArray!0 k!2843))))

(declare-fun b!670304 () Bool)

(declare-fun res!437190 () Bool)

(assert (=> b!670304 (=> (not res!437190) (not e!383236))))

(assert (=> b!670304 (= res!437190 (noDuplicate!634 acc!681))))

(declare-fun b!670305 () Bool)

(declare-fun res!437200 () Bool)

(assert (=> b!670305 (=> (not res!437200) (not e!383236))))

(assert (=> b!670305 (= res!437200 (not (contains!3387 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670306 () Bool)

(declare-fun res!437194 () Bool)

(assert (=> b!670306 (=> (not res!437194) (not e!383236))))

(assert (=> b!670306 (= res!437194 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12841))))

(declare-fun b!670307 () Bool)

(declare-fun lt!312004 () Unit!23545)

(assert (=> b!670307 (= e!383237 lt!312004)))

(declare-fun lt!312009 () Unit!23545)

(assert (=> b!670307 (= lt!312009 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670307 (subseq!125 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39123 List!12844 List!12844 (_ BitVec 32)) Unit!23545)

(assert (=> b!670307 (= lt!312004 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!256 acc!681 (select (arr!18750 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670307 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!670308 () Bool)

(assert (=> b!670308 (= e!383244 true)))

(assert (=> b!670308 (arrayNoDuplicates!0 lt!312012 (bvadd #b00000000000000000000000000000001 from!3004) lt!312008)))

(declare-fun lt!312002 () Unit!23545)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39123 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12844) Unit!23545)

(assert (=> b!670308 (= lt!312002 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312008))))

(declare-fun b!670309 () Bool)

(assert (=> b!670309 (= e!383245 (not (contains!3387 acc!681 k!2843)))))

(declare-fun b!670310 () Bool)

(declare-fun Unit!23548 () Unit!23545)

(assert (=> b!670310 (= e!383243 Unit!23548)))

(declare-fun lt!312006 () Unit!23545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39123 (_ BitVec 64) (_ BitVec 32)) Unit!23545)

(assert (=> b!670310 (= lt!312006 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!670310 false))

(declare-fun b!670311 () Bool)

(declare-fun res!437205 () Bool)

(assert (=> b!670311 (=> (not res!437205) (not e!383236))))

(assert (=> b!670311 (= res!437205 (not (contains!3387 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670312 () Bool)

(declare-fun Unit!23549 () Unit!23545)

(assert (=> b!670312 (= e!383237 Unit!23549)))

(declare-fun res!437191 () Bool)

(assert (=> start!60120 (=> (not res!437191) (not e!383236))))

(assert (=> start!60120 (= res!437191 (and (bvslt (size!19114 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19114 a!3626))))))

(assert (=> start!60120 e!383236))

(assert (=> start!60120 true))

(declare-fun array_inv!14524 (array!39123) Bool)

(assert (=> start!60120 (array_inv!14524 a!3626)))

(declare-fun b!670313 () Bool)

(declare-fun res!437189 () Bool)

(assert (=> b!670313 (=> (not res!437189) (not e!383236))))

(assert (=> b!670313 (= res!437189 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60120 res!437191) b!670304))

(assert (= (and b!670304 res!437190) b!670311))

(assert (= (and b!670311 res!437205) b!670305))

(assert (= (and b!670305 res!437200) b!670299))

(assert (= (and b!670299 res!437199) b!670295))

(assert (= (and b!670299 (not res!437195)) b!670290))

(assert (= (and b!670290 res!437203) b!670309))

(assert (= (and b!670299 res!437202) b!670306))

(assert (= (and b!670306 res!437194) b!670313))

(assert (= (and b!670313 res!437189) b!670294))

(assert (= (and b!670294 res!437188) b!670303))

(assert (= (and b!670303 res!437198) b!670292))

(assert (= (and b!670292 res!437192) b!670288))

(assert (= (and b!670288 res!437206) b!670302))

(assert (= (and b!670302 c!76919) b!670310))

(assert (= (and b!670302 (not c!76919)) b!670301))

(assert (= (and b!670302 c!76918) b!670307))

(assert (= (and b!670302 (not c!76918)) b!670312))

(assert (= (and b!670302 (not res!437193)) b!670293))

(assert (= (and b!670293 (not res!437196)) b!670298))

(assert (= (and b!670298 (not res!437201)) b!670300))

(assert (= (and b!670300 (not res!437204)) b!670291))

(assert (= (and b!670291 (not res!437197)) b!670289))

(assert (= (and b!670291 res!437186) b!670296))

(assert (= (and b!670296 (not res!437207)) b!670297))

(assert (= (and b!670291 (not res!437187)) b!670308))

(declare-fun m!640227 () Bool)

(assert (=> b!670310 m!640227))

(declare-fun m!640229 () Bool)

(assert (=> b!670309 m!640229))

(declare-fun m!640231 () Bool)

(assert (=> b!670297 m!640231))

(declare-fun m!640233 () Bool)

(assert (=> b!670292 m!640233))

(assert (=> b!670295 m!640229))

(declare-fun m!640235 () Bool)

(assert (=> b!670298 m!640235))

(declare-fun m!640237 () Bool)

(assert (=> b!670313 m!640237))

(declare-fun m!640239 () Bool)

(assert (=> b!670304 m!640239))

(declare-fun m!640241 () Bool)

(assert (=> b!670303 m!640241))

(assert (=> b!670289 m!640231))

(declare-fun m!640243 () Bool)

(assert (=> b!670302 m!640243))

(declare-fun m!640245 () Bool)

(assert (=> b!670302 m!640245))

(declare-fun m!640247 () Bool)

(assert (=> b!670302 m!640247))

(declare-fun m!640249 () Bool)

(assert (=> b!670302 m!640249))

(declare-fun m!640251 () Bool)

(assert (=> b!670302 m!640251))

(declare-fun m!640253 () Bool)

(assert (=> b!670302 m!640253))

(declare-fun m!640255 () Bool)

(assert (=> b!670302 m!640255))

(declare-fun m!640257 () Bool)

(assert (=> b!670302 m!640257))

(declare-fun m!640259 () Bool)

(assert (=> b!670302 m!640259))

(declare-fun m!640261 () Bool)

(assert (=> b!670302 m!640261))

(declare-fun m!640263 () Bool)

(assert (=> b!670302 m!640263))

(declare-fun m!640265 () Bool)

(assert (=> b!670302 m!640265))

(assert (=> b!670302 m!640245))

(declare-fun m!640267 () Bool)

(assert (=> b!670302 m!640267))

(declare-fun m!640269 () Bool)

(assert (=> b!670311 m!640269))

(declare-fun m!640271 () Bool)

(assert (=> b!670300 m!640271))

(declare-fun m!640273 () Bool)

(assert (=> b!670306 m!640273))

(declare-fun m!640275 () Bool)

(assert (=> b!670308 m!640275))

(declare-fun m!640277 () Bool)

(assert (=> b!670308 m!640277))

(declare-fun m!640279 () Bool)

(assert (=> b!670305 m!640279))

(declare-fun m!640281 () Bool)

(assert (=> b!670293 m!640281))

(assert (=> b!670307 m!640261))

(assert (=> b!670307 m!640245))

(declare-fun m!640283 () Bool)

(assert (=> b!670307 m!640283))

(declare-fun m!640285 () Bool)

(assert (=> b!670307 m!640285))

(assert (=> b!670307 m!640245))

(assert (=> b!670307 m!640283))

(assert (=> b!670307 m!640253))

(assert (=> b!670307 m!640259))

(declare-fun m!640287 () Bool)

(assert (=> start!60120 m!640287))

(push 1)

(assert (not b!670303))

(assert (not b!670292))

(assert (not b!670304))

(assert (not b!670298))

(assert (not b!670311))

(assert (not b!670302))

(assert (not b!670307))

(assert (not b!670305))

(assert (not b!670306))

(assert (not start!60120))

(assert (not b!670310))

(assert (not b!670308))

(assert (not b!670289))

(assert (not b!670297))

(assert (not b!670295))

(assert (not b!670300))

(assert (not b!670293))

(assert (not b!670313))

(assert (not b!670309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

