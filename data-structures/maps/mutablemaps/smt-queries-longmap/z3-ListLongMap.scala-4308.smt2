; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59894 () Bool)

(assert start!59894)

(declare-fun b!662219 () Bool)

(declare-fun res!430398 () Bool)

(declare-fun e!380189 () Bool)

(assert (=> b!662219 (=> (not res!430398) (not e!380189))))

(declare-datatypes ((array!38897 0))(
  ( (array!38898 (arr!18637 (Array (_ BitVec 32) (_ BitVec 64))) (size!19001 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38897)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662219 (= res!430398 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662220 () Bool)

(declare-fun res!430397 () Bool)

(declare-fun e!380185 () Bool)

(assert (=> b!662220 (=> res!430397 e!380185)))

(declare-datatypes ((List!12731 0))(
  ( (Nil!12728) (Cons!12727 (h!13772 (_ BitVec 64)) (t!18967 List!12731)) )
))
(declare-fun lt!308953 () List!12731)

(declare-fun contains!3274 (List!12731 (_ BitVec 64)) Bool)

(assert (=> b!662220 (= res!430397 (contains!3274 lt!308953 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662221 () Bool)

(declare-fun res!430401 () Bool)

(assert (=> b!662221 (=> (not res!430401) (not e!380189))))

(declare-fun acc!681 () List!12731)

(assert (=> b!662221 (= res!430401 (not (contains!3274 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662222 () Bool)

(declare-fun res!430405 () Bool)

(assert (=> b!662222 (=> (not res!430405) (not e!380189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662222 (= res!430405 (validKeyInArray!0 k0!2843))))

(declare-fun res!430410 () Bool)

(assert (=> start!59894 (=> (not res!430410) (not e!380189))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59894 (= res!430410 (and (bvslt (size!19001 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19001 a!3626))))))

(assert (=> start!59894 e!380189))

(assert (=> start!59894 true))

(declare-fun array_inv!14411 (array!38897) Bool)

(assert (=> start!59894 (array_inv!14411 a!3626)))

(declare-fun b!662223 () Bool)

(declare-fun res!430408 () Bool)

(assert (=> b!662223 (=> res!430408 e!380185)))

(declare-fun subseq!12 (List!12731 List!12731) Bool)

(assert (=> b!662223 (= res!430408 (not (subseq!12 acc!681 lt!308953)))))

(declare-fun b!662224 () Bool)

(declare-fun res!430409 () Bool)

(assert (=> b!662224 (=> (not res!430409) (not e!380189))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662224 (= res!430409 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19001 a!3626))))))

(declare-fun b!662225 () Bool)

(declare-fun res!430395 () Bool)

(assert (=> b!662225 (=> (not res!430395) (not e!380189))))

(declare-fun e!380191 () Bool)

(assert (=> b!662225 (= res!430395 e!380191)))

(declare-fun res!430411 () Bool)

(assert (=> b!662225 (=> res!430411 e!380191)))

(declare-fun e!380184 () Bool)

(assert (=> b!662225 (= res!430411 e!380184)))

(declare-fun res!430394 () Bool)

(assert (=> b!662225 (=> (not res!430394) (not e!380184))))

(assert (=> b!662225 (= res!430394 (bvsgt from!3004 i!1382))))

(declare-fun b!662226 () Bool)

(declare-datatypes ((Unit!22994 0))(
  ( (Unit!22995) )
))
(declare-fun e!380186 () Unit!22994)

(declare-fun Unit!22996 () Unit!22994)

(assert (=> b!662226 (= e!380186 Unit!22996)))

(declare-fun lt!308952 () Unit!22994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38897 (_ BitVec 64) (_ BitVec 32)) Unit!22994)

(assert (=> b!662226 (= lt!308952 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!662226 false))

(declare-fun b!662227 () Bool)

(assert (=> b!662227 (= e!380185 true)))

(declare-fun lt!308950 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38897 (_ BitVec 32) List!12731) Bool)

(assert (=> b!662227 (= lt!308950 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308953))))

(declare-fun lt!308955 () Unit!22994)

(declare-fun noDuplicateSubseq!12 (List!12731 List!12731) Unit!22994)

(assert (=> b!662227 (= lt!308955 (noDuplicateSubseq!12 acc!681 lt!308953))))

(declare-fun b!662228 () Bool)

(declare-fun res!430407 () Bool)

(assert (=> b!662228 (=> res!430407 e!380185)))

(declare-fun noDuplicate!521 (List!12731) Bool)

(assert (=> b!662228 (= res!430407 (not (noDuplicate!521 lt!308953)))))

(declare-fun b!662229 () Bool)

(declare-fun res!430402 () Bool)

(assert (=> b!662229 (=> (not res!430402) (not e!380189))))

(assert (=> b!662229 (= res!430402 (not (contains!3274 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662230 () Bool)

(declare-fun res!430393 () Bool)

(assert (=> b!662230 (=> (not res!430393) (not e!380189))))

(assert (=> b!662230 (= res!430393 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662231 () Bool)

(declare-fun e!380188 () Bool)

(assert (=> b!662231 (= e!380188 (not (contains!3274 acc!681 k0!2843)))))

(declare-fun b!662232 () Bool)

(declare-fun res!430396 () Bool)

(assert (=> b!662232 (=> (not res!430396) (not e!380189))))

(assert (=> b!662232 (= res!430396 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19001 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662233 () Bool)

(declare-fun res!430403 () Bool)

(assert (=> b!662233 (=> (not res!430403) (not e!380189))))

(assert (=> b!662233 (= res!430403 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12728))))

(declare-fun b!662234 () Bool)

(assert (=> b!662234 (= e!380184 (contains!3274 acc!681 k0!2843))))

(declare-fun b!662235 () Bool)

(declare-fun e!380187 () Bool)

(assert (=> b!662235 (= e!380187 e!380185)))

(declare-fun res!430399 () Bool)

(assert (=> b!662235 (=> res!430399 e!380185)))

(assert (=> b!662235 (= res!430399 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!143 (List!12731 (_ BitVec 64)) List!12731)

(assert (=> b!662235 (= lt!308953 ($colon$colon!143 acc!681 (select (arr!18637 a!3626) from!3004)))))

(assert (=> b!662235 (subseq!12 acc!681 acc!681)))

(declare-fun lt!308951 () Unit!22994)

(declare-fun lemmaListSubSeqRefl!0 (List!12731) Unit!22994)

(assert (=> b!662235 (= lt!308951 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662236 () Bool)

(declare-fun Unit!22997 () Unit!22994)

(assert (=> b!662236 (= e!380186 Unit!22997)))

(declare-fun b!662237 () Bool)

(declare-fun res!430404 () Bool)

(assert (=> b!662237 (=> (not res!430404) (not e!380189))))

(assert (=> b!662237 (= res!430404 (noDuplicate!521 acc!681))))

(declare-fun b!662238 () Bool)

(declare-fun res!430406 () Bool)

(assert (=> b!662238 (=> res!430406 e!380185)))

(assert (=> b!662238 (= res!430406 (contains!3274 lt!308953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662239 () Bool)

(assert (=> b!662239 (= e!380191 e!380188)))

(declare-fun res!430400 () Bool)

(assert (=> b!662239 (=> (not res!430400) (not e!380188))))

(assert (=> b!662239 (= res!430400 (bvsle from!3004 i!1382))))

(declare-fun b!662240 () Bool)

(assert (=> b!662240 (= e!380189 (not e!380187))))

(declare-fun res!430412 () Bool)

(assert (=> b!662240 (=> res!430412 e!380187)))

(assert (=> b!662240 (= res!430412 (not (validKeyInArray!0 (select (arr!18637 a!3626) from!3004))))))

(declare-fun lt!308954 () Unit!22994)

(assert (=> b!662240 (= lt!308954 e!380186)))

(declare-fun c!76280 () Bool)

(assert (=> b!662240 (= c!76280 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662240 (arrayContainsKey!0 (array!38898 (store (arr!18637 a!3626) i!1382 k0!2843) (size!19001 a!3626)) k0!2843 from!3004)))

(assert (= (and start!59894 res!430410) b!662237))

(assert (= (and b!662237 res!430404) b!662221))

(assert (= (and b!662221 res!430401) b!662229))

(assert (= (and b!662229 res!430402) b!662225))

(assert (= (and b!662225 res!430394) b!662234))

(assert (= (and b!662225 (not res!430411)) b!662239))

(assert (= (and b!662239 res!430400) b!662231))

(assert (= (and b!662225 res!430395) b!662233))

(assert (= (and b!662233 res!430403) b!662230))

(assert (= (and b!662230 res!430393) b!662224))

(assert (= (and b!662224 res!430409) b!662222))

(assert (= (and b!662222 res!430405) b!662219))

(assert (= (and b!662219 res!430398) b!662232))

(assert (= (and b!662232 res!430396) b!662240))

(assert (= (and b!662240 c!76280) b!662226))

(assert (= (and b!662240 (not c!76280)) b!662236))

(assert (= (and b!662240 (not res!430412)) b!662235))

(assert (= (and b!662235 (not res!430399)) b!662228))

(assert (= (and b!662228 (not res!430407)) b!662238))

(assert (= (and b!662238 (not res!430406)) b!662220))

(assert (= (and b!662220 (not res!430397)) b!662223))

(assert (= (and b!662223 (not res!430408)) b!662227))

(declare-fun m!634131 () Bool)

(assert (=> b!662230 m!634131))

(declare-fun m!634133 () Bool)

(assert (=> b!662219 m!634133))

(declare-fun m!634135 () Bool)

(assert (=> b!662234 m!634135))

(declare-fun m!634137 () Bool)

(assert (=> b!662240 m!634137))

(declare-fun m!634139 () Bool)

(assert (=> b!662240 m!634139))

(declare-fun m!634141 () Bool)

(assert (=> b!662240 m!634141))

(assert (=> b!662240 m!634137))

(declare-fun m!634143 () Bool)

(assert (=> b!662240 m!634143))

(declare-fun m!634145 () Bool)

(assert (=> b!662240 m!634145))

(declare-fun m!634147 () Bool)

(assert (=> b!662238 m!634147))

(declare-fun m!634149 () Bool)

(assert (=> b!662222 m!634149))

(declare-fun m!634151 () Bool)

(assert (=> b!662233 m!634151))

(declare-fun m!634153 () Bool)

(assert (=> b!662226 m!634153))

(declare-fun m!634155 () Bool)

(assert (=> start!59894 m!634155))

(assert (=> b!662231 m!634135))

(declare-fun m!634157 () Bool)

(assert (=> b!662223 m!634157))

(declare-fun m!634159 () Bool)

(assert (=> b!662229 m!634159))

(declare-fun m!634161 () Bool)

(assert (=> b!662227 m!634161))

(declare-fun m!634163 () Bool)

(assert (=> b!662227 m!634163))

(assert (=> b!662235 m!634137))

(assert (=> b!662235 m!634137))

(declare-fun m!634165 () Bool)

(assert (=> b!662235 m!634165))

(declare-fun m!634167 () Bool)

(assert (=> b!662235 m!634167))

(declare-fun m!634169 () Bool)

(assert (=> b!662235 m!634169))

(declare-fun m!634171 () Bool)

(assert (=> b!662228 m!634171))

(declare-fun m!634173 () Bool)

(assert (=> b!662220 m!634173))

(declare-fun m!634175 () Bool)

(assert (=> b!662237 m!634175))

(declare-fun m!634177 () Bool)

(assert (=> b!662221 m!634177))

(check-sat (not b!662220) (not b!662227) (not b!662240) (not b!662223) (not b!662228) (not b!662219) (not b!662233) (not b!662226) (not b!662238) (not b!662229) (not b!662222) (not b!662234) (not b!662230) (not b!662231) (not b!662221) (not b!662235) (not start!59894) (not b!662237))
(check-sat)
