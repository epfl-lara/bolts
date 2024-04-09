; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59982 () Bool)

(assert start!59982)

(declare-fun b!665084 () Bool)

(declare-fun res!432815 () Bool)

(declare-fun e!381202 () Bool)

(assert (=> b!665084 (=> res!432815 e!381202)))

(declare-fun lt!309905 () Bool)

(assert (=> b!665084 (= res!432815 lt!309905)))

(declare-fun b!665085 () Bool)

(declare-datatypes ((Unit!23200 0))(
  ( (Unit!23201) )
))
(declare-fun e!381198 () Unit!23200)

(declare-fun Unit!23202 () Unit!23200)

(assert (=> b!665085 (= e!381198 Unit!23202)))

(declare-fun lt!309906 () Unit!23200)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38985 0))(
  ( (array!38986 (arr!18681 (Array (_ BitVec 32) (_ BitVec 64))) (size!19045 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38985)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38985 (_ BitVec 64) (_ BitVec 32)) Unit!23200)

(assert (=> b!665085 (= lt!309906 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665085 false))

(declare-fun b!665086 () Bool)

(declare-fun e!381200 () Bool)

(declare-datatypes ((List!12775 0))(
  ( (Nil!12772) (Cons!12771 (h!13816 (_ BitVec 64)) (t!19011 List!12775)) )
))
(declare-fun acc!681 () List!12775)

(declare-fun contains!3318 (List!12775 (_ BitVec 64)) Bool)

(assert (=> b!665086 (= e!381200 (contains!3318 acc!681 k!2843))))

(declare-fun b!665087 () Bool)

(declare-fun e!381197 () Bool)

(declare-fun e!381201 () Bool)

(assert (=> b!665087 (= e!381197 e!381201)))

(declare-fun res!432830 () Bool)

(assert (=> b!665087 (=> (not res!432830) (not e!381201))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665087 (= res!432830 (bvsle from!3004 i!1382))))

(declare-fun b!665088 () Bool)

(declare-fun res!432829 () Bool)

(declare-fun e!381196 () Bool)

(assert (=> b!665088 (=> (not res!432829) (not e!381196))))

(assert (=> b!665088 (= res!432829 (not (contains!3318 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665089 () Bool)

(declare-fun res!432818 () Bool)

(assert (=> b!665089 (=> res!432818 e!381202)))

(assert (=> b!665089 (= res!432818 (contains!3318 acc!681 k!2843))))

(declare-fun b!665090 () Bool)

(declare-fun res!432813 () Bool)

(assert (=> b!665090 (=> (not res!432813) (not e!381196))))

(declare-fun noDuplicate!565 (List!12775) Bool)

(assert (=> b!665090 (= res!432813 (noDuplicate!565 acc!681))))

(declare-fun b!665091 () Bool)

(declare-fun Unit!23203 () Unit!23200)

(assert (=> b!665091 (= e!381198 Unit!23203)))

(declare-fun b!665092 () Bool)

(assert (=> b!665092 (= e!381202 true)))

(declare-fun lt!309909 () Bool)

(declare-fun lt!309908 () List!12775)

(assert (=> b!665092 (= lt!309909 (contains!3318 lt!309908 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665093 () Bool)

(declare-fun res!432821 () Bool)

(assert (=> b!665093 (=> (not res!432821) (not e!381196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665093 (= res!432821 (validKeyInArray!0 k!2843))))

(declare-fun b!665094 () Bool)

(declare-fun res!432827 () Bool)

(assert (=> b!665094 (=> res!432827 e!381202)))

(assert (=> b!665094 (= res!432827 (contains!3318 lt!309908 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665095 () Bool)

(declare-fun res!432823 () Bool)

(assert (=> b!665095 (=> (not res!432823) (not e!381196))))

(assert (=> b!665095 (= res!432823 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19045 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665096 () Bool)

(declare-fun res!432816 () Bool)

(assert (=> b!665096 (=> (not res!432816) (not e!381196))))

(assert (=> b!665096 (= res!432816 (not (contains!3318 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665098 () Bool)

(declare-fun e!381199 () Unit!23200)

(declare-fun Unit!23204 () Unit!23200)

(assert (=> b!665098 (= e!381199 Unit!23204)))

(declare-fun res!432828 () Bool)

(assert (=> start!59982 (=> (not res!432828) (not e!381196))))

(assert (=> start!59982 (= res!432828 (and (bvslt (size!19045 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19045 a!3626))))))

(assert (=> start!59982 e!381196))

(assert (=> start!59982 true))

(declare-fun array_inv!14455 (array!38985) Bool)

(assert (=> start!59982 (array_inv!14455 a!3626)))

(declare-fun b!665097 () Bool)

(declare-fun res!432820 () Bool)

(assert (=> b!665097 (=> (not res!432820) (not e!381196))))

(declare-fun arrayContainsKey!0 (array!38985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665097 (= res!432820 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665099 () Bool)

(assert (=> b!665099 (= e!381201 (not (contains!3318 acc!681 k!2843)))))

(declare-fun b!665100 () Bool)

(declare-fun res!432824 () Bool)

(assert (=> b!665100 (=> (not res!432824) (not e!381196))))

(assert (=> b!665100 (= res!432824 e!381197)))

(declare-fun res!432817 () Bool)

(assert (=> b!665100 (=> res!432817 e!381197)))

(assert (=> b!665100 (= res!432817 e!381200)))

(declare-fun res!432810 () Bool)

(assert (=> b!665100 (=> (not res!432810) (not e!381200))))

(assert (=> b!665100 (= res!432810 (bvsgt from!3004 i!1382))))

(declare-fun b!665101 () Bool)

(declare-fun res!432812 () Bool)

(assert (=> b!665101 (=> (not res!432812) (not e!381196))))

(declare-fun arrayNoDuplicates!0 (array!38985 (_ BitVec 32) List!12775) Bool)

(assert (=> b!665101 (= res!432812 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665102 () Bool)

(declare-fun res!432825 () Bool)

(assert (=> b!665102 (=> res!432825 e!381202)))

(assert (=> b!665102 (= res!432825 (not (contains!3318 lt!309908 k!2843)))))

(declare-fun b!665103 () Bool)

(declare-fun res!432811 () Bool)

(assert (=> b!665103 (=> res!432811 e!381202)))

(assert (=> b!665103 (= res!432811 (not (noDuplicate!565 lt!309908)))))

(declare-fun b!665104 () Bool)

(assert (=> b!665104 (= e!381196 (not e!381202))))

(declare-fun res!432814 () Bool)

(assert (=> b!665104 (=> res!432814 e!381202)))

(assert (=> b!665104 (= res!432814 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!54 (List!12775 (_ BitVec 64)) List!12775)

(assert (=> b!665104 (= (-!54 lt!309908 k!2843) acc!681)))

(declare-fun $colon$colon!187 (List!12775 (_ BitVec 64)) List!12775)

(assert (=> b!665104 (= lt!309908 ($colon$colon!187 acc!681 k!2843))))

(declare-fun lt!309912 () Unit!23200)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12775) Unit!23200)

(assert (=> b!665104 (= lt!309912 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!56 (List!12775 List!12775) Bool)

(assert (=> b!665104 (subseq!56 acc!681 acc!681)))

(declare-fun lt!309904 () Unit!23200)

(declare-fun lemmaListSubSeqRefl!0 (List!12775) Unit!23200)

(assert (=> b!665104 (= lt!309904 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665104 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309910 () Unit!23200)

(assert (=> b!665104 (= lt!309910 e!381199)))

(declare-fun c!76505 () Bool)

(assert (=> b!665104 (= c!76505 (validKeyInArray!0 (select (arr!18681 a!3626) from!3004)))))

(declare-fun lt!309911 () Unit!23200)

(assert (=> b!665104 (= lt!309911 e!381198)))

(declare-fun c!76504 () Bool)

(assert (=> b!665104 (= c!76504 lt!309905)))

(assert (=> b!665104 (= lt!309905 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665104 (arrayContainsKey!0 (array!38986 (store (arr!18681 a!3626) i!1382 k!2843) (size!19045 a!3626)) k!2843 from!3004)))

(declare-fun b!665105 () Bool)

(declare-fun res!432826 () Bool)

(assert (=> b!665105 (=> (not res!432826) (not e!381196))))

(assert (=> b!665105 (= res!432826 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19045 a!3626))))))

(declare-fun b!665106 () Bool)

(declare-fun res!432819 () Bool)

(assert (=> b!665106 (=> (not res!432819) (not e!381196))))

(assert (=> b!665106 (= res!432819 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12772))))

(declare-fun b!665107 () Bool)

(declare-fun res!432822 () Bool)

(assert (=> b!665107 (=> res!432822 e!381202)))

(assert (=> b!665107 (= res!432822 (not (subseq!56 acc!681 lt!309908)))))

(declare-fun b!665108 () Bool)

(declare-fun lt!309907 () Unit!23200)

(assert (=> b!665108 (= e!381199 lt!309907)))

(declare-fun lt!309903 () Unit!23200)

(assert (=> b!665108 (= lt!309903 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665108 (subseq!56 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38985 List!12775 List!12775 (_ BitVec 32)) Unit!23200)

(assert (=> b!665108 (= lt!309907 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!187 acc!681 (select (arr!18681 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665108 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!59982 res!432828) b!665090))

(assert (= (and b!665090 res!432813) b!665096))

(assert (= (and b!665096 res!432816) b!665088))

(assert (= (and b!665088 res!432829) b!665100))

(assert (= (and b!665100 res!432810) b!665086))

(assert (= (and b!665100 (not res!432817)) b!665087))

(assert (= (and b!665087 res!432830) b!665099))

(assert (= (and b!665100 res!432824) b!665106))

(assert (= (and b!665106 res!432819) b!665101))

(assert (= (and b!665101 res!432812) b!665105))

(assert (= (and b!665105 res!432826) b!665093))

(assert (= (and b!665093 res!432821) b!665097))

(assert (= (and b!665097 res!432820) b!665095))

(assert (= (and b!665095 res!432823) b!665104))

(assert (= (and b!665104 c!76504) b!665085))

(assert (= (and b!665104 (not c!76504)) b!665091))

(assert (= (and b!665104 c!76505) b!665108))

(assert (= (and b!665104 (not c!76505)) b!665098))

(assert (= (and b!665104 (not res!432814)) b!665103))

(assert (= (and b!665103 (not res!432811)) b!665084))

(assert (= (and b!665084 (not res!432815)) b!665089))

(assert (= (and b!665089 (not res!432818)) b!665107))

(assert (= (and b!665107 (not res!432822)) b!665102))

(assert (= (and b!665102 (not res!432825)) b!665094))

(assert (= (and b!665094 (not res!432827)) b!665092))

(declare-fun m!636243 () Bool)

(assert (=> b!665097 m!636243))

(declare-fun m!636245 () Bool)

(assert (=> b!665104 m!636245))

(declare-fun m!636247 () Bool)

(assert (=> b!665104 m!636247))

(declare-fun m!636249 () Bool)

(assert (=> b!665104 m!636249))

(declare-fun m!636251 () Bool)

(assert (=> b!665104 m!636251))

(declare-fun m!636253 () Bool)

(assert (=> b!665104 m!636253))

(declare-fun m!636255 () Bool)

(assert (=> b!665104 m!636255))

(declare-fun m!636257 () Bool)

(assert (=> b!665104 m!636257))

(assert (=> b!665104 m!636247))

(declare-fun m!636259 () Bool)

(assert (=> b!665104 m!636259))

(declare-fun m!636261 () Bool)

(assert (=> b!665104 m!636261))

(declare-fun m!636263 () Bool)

(assert (=> b!665104 m!636263))

(declare-fun m!636265 () Bool)

(assert (=> b!665104 m!636265))

(declare-fun m!636267 () Bool)

(assert (=> b!665107 m!636267))

(declare-fun m!636269 () Bool)

(assert (=> b!665102 m!636269))

(declare-fun m!636271 () Bool)

(assert (=> b!665085 m!636271))

(declare-fun m!636273 () Bool)

(assert (=> b!665096 m!636273))

(assert (=> b!665108 m!636245))

(assert (=> b!665108 m!636247))

(declare-fun m!636275 () Bool)

(assert (=> b!665108 m!636275))

(declare-fun m!636277 () Bool)

(assert (=> b!665108 m!636277))

(assert (=> b!665108 m!636247))

(assert (=> b!665108 m!636275))

(assert (=> b!665108 m!636253))

(assert (=> b!665108 m!636263))

(declare-fun m!636279 () Bool)

(assert (=> start!59982 m!636279))

(declare-fun m!636281 () Bool)

(assert (=> b!665101 m!636281))

(declare-fun m!636283 () Bool)

(assert (=> b!665094 m!636283))

(declare-fun m!636285 () Bool)

(assert (=> b!665093 m!636285))

(declare-fun m!636287 () Bool)

(assert (=> b!665088 m!636287))

(declare-fun m!636289 () Bool)

(assert (=> b!665099 m!636289))

(declare-fun m!636291 () Bool)

(assert (=> b!665090 m!636291))

(declare-fun m!636293 () Bool)

(assert (=> b!665106 m!636293))

(assert (=> b!665086 m!636289))

(declare-fun m!636295 () Bool)

(assert (=> b!665103 m!636295))

(assert (=> b!665089 m!636289))

(declare-fun m!636297 () Bool)

(assert (=> b!665092 m!636297))

(push 1)

(assert (not b!665088))

(assert (not b!665093))

(assert (not b!665086))

(assert (not b!665102))

(assert (not b!665090))

(assert (not b!665108))

(assert (not b!665103))

(assert (not b!665107))

(assert (not b!665101))

(assert (not b!665097))

(assert (not b!665106))

(assert (not b!665085))

(assert (not b!665104))

(assert (not start!59982))

(assert (not b!665096))

(assert (not b!665089))

(assert (not b!665094))

(assert (not b!665092))

(assert (not b!665099))

(check-sat)

