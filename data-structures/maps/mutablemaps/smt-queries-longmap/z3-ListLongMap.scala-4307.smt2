; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59888 () Bool)

(assert start!59888)

(declare-fun b!662021 () Bool)

(declare-fun e!380112 () Bool)

(assert (=> b!662021 (= e!380112 true)))

(declare-datatypes ((array!38891 0))(
  ( (array!38892 (arr!18634 (Array (_ BitVec 32) (_ BitVec 64))) (size!18998 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38891)

(declare-datatypes ((List!12728 0))(
  ( (Nil!12725) (Cons!12724 (h!13769 (_ BitVec 64)) (t!18964 List!12728)) )
))
(declare-fun lt!308898 () List!12728)

(declare-fun lt!308899 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38891 (_ BitVec 32) List!12728) Bool)

(assert (=> b!662021 (= lt!308899 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308898))))

(declare-datatypes ((Unit!22982 0))(
  ( (Unit!22983) )
))
(declare-fun lt!308897 () Unit!22982)

(declare-fun acc!681 () List!12728)

(declare-fun noDuplicateSubseq!9 (List!12728 List!12728) Unit!22982)

(assert (=> b!662021 (= lt!308897 (noDuplicateSubseq!9 acc!681 lt!308898))))

(declare-fun b!662022 () Bool)

(declare-fun e!380118 () Bool)

(assert (=> b!662022 (= e!380118 e!380112)))

(declare-fun res!430213 () Bool)

(assert (=> b!662022 (=> res!430213 e!380112)))

(assert (=> b!662022 (= res!430213 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!140 (List!12728 (_ BitVec 64)) List!12728)

(assert (=> b!662022 (= lt!308898 ($colon$colon!140 acc!681 (select (arr!18634 a!3626) from!3004)))))

(declare-fun subseq!9 (List!12728 List!12728) Bool)

(assert (=> b!662022 (subseq!9 acc!681 acc!681)))

(declare-fun lt!308901 () Unit!22982)

(declare-fun lemmaListSubSeqRefl!0 (List!12728) Unit!22982)

(assert (=> b!662022 (= lt!308901 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662023 () Bool)

(declare-fun e!380119 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3271 (List!12728 (_ BitVec 64)) Bool)

(assert (=> b!662023 (= e!380119 (not (contains!3271 acc!681 k0!2843)))))

(declare-fun b!662024 () Bool)

(declare-fun res!430214 () Bool)

(declare-fun e!380116 () Bool)

(assert (=> b!662024 (=> (not res!430214) (not e!380116))))

(assert (=> b!662024 (= res!430214 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662025 () Bool)

(declare-fun res!430226 () Bool)

(assert (=> b!662025 (=> (not res!430226) (not e!380116))))

(declare-fun noDuplicate!518 (List!12728) Bool)

(assert (=> b!662025 (= res!430226 (noDuplicate!518 acc!681))))

(declare-fun b!662026 () Bool)

(declare-fun res!430224 () Bool)

(assert (=> b!662026 (=> (not res!430224) (not e!380116))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662026 (= res!430224 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18998 a!3626))))))

(declare-fun b!662027 () Bool)

(declare-fun e!380117 () Unit!22982)

(declare-fun Unit!22984 () Unit!22982)

(assert (=> b!662027 (= e!380117 Unit!22984)))

(declare-fun b!662028 () Bool)

(declare-fun res!430216 () Bool)

(assert (=> b!662028 (=> (not res!430216) (not e!380116))))

(assert (=> b!662028 (= res!430216 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12725))))

(declare-fun b!662029 () Bool)

(declare-fun e!380114 () Bool)

(assert (=> b!662029 (= e!380114 (contains!3271 acc!681 k0!2843))))

(declare-fun b!662030 () Bool)

(declare-fun res!430232 () Bool)

(assert (=> b!662030 (=> (not res!430232) (not e!380116))))

(assert (=> b!662030 (= res!430232 (not (contains!3271 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662031 () Bool)

(declare-fun Unit!22985 () Unit!22982)

(assert (=> b!662031 (= e!380117 Unit!22985)))

(declare-fun lt!308896 () Unit!22982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38891 (_ BitVec 64) (_ BitVec 32)) Unit!22982)

(assert (=> b!662031 (= lt!308896 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!662031 false))

(declare-fun b!662032 () Bool)

(assert (=> b!662032 (= e!380116 (not e!380118))))

(declare-fun res!430229 () Bool)

(assert (=> b!662032 (=> res!430229 e!380118)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662032 (= res!430229 (not (validKeyInArray!0 (select (arr!18634 a!3626) from!3004))))))

(declare-fun lt!308900 () Unit!22982)

(assert (=> b!662032 (= lt!308900 e!380117)))

(declare-fun c!76271 () Bool)

(declare-fun arrayContainsKey!0 (array!38891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662032 (= c!76271 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662032 (arrayContainsKey!0 (array!38892 (store (arr!18634 a!3626) i!1382 k0!2843) (size!18998 a!3626)) k0!2843 from!3004)))

(declare-fun b!662033 () Bool)

(declare-fun res!430221 () Bool)

(assert (=> b!662033 (=> (not res!430221) (not e!380116))))

(assert (=> b!662033 (= res!430221 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18998 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662034 () Bool)

(declare-fun res!430225 () Bool)

(assert (=> b!662034 (=> res!430225 e!380112)))

(assert (=> b!662034 (= res!430225 (contains!3271 lt!308898 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662035 () Bool)

(declare-fun res!430220 () Bool)

(assert (=> b!662035 (=> (not res!430220) (not e!380116))))

(assert (=> b!662035 (= res!430220 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662037 () Bool)

(declare-fun res!430215 () Bool)

(assert (=> b!662037 (=> res!430215 e!380112)))

(assert (=> b!662037 (= res!430215 (not (subseq!9 acc!681 lt!308898)))))

(declare-fun b!662038 () Bool)

(declare-fun res!430218 () Bool)

(assert (=> b!662038 (=> res!430218 e!380112)))

(assert (=> b!662038 (= res!430218 (contains!3271 lt!308898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662039 () Bool)

(declare-fun res!430219 () Bool)

(assert (=> b!662039 (=> (not res!430219) (not e!380116))))

(declare-fun e!380115 () Bool)

(assert (=> b!662039 (= res!430219 e!380115)))

(declare-fun res!430228 () Bool)

(assert (=> b!662039 (=> res!430228 e!380115)))

(assert (=> b!662039 (= res!430228 e!380114)))

(declare-fun res!430222 () Bool)

(assert (=> b!662039 (=> (not res!430222) (not e!380114))))

(assert (=> b!662039 (= res!430222 (bvsgt from!3004 i!1382))))

(declare-fun b!662040 () Bool)

(declare-fun res!430231 () Bool)

(assert (=> b!662040 (=> res!430231 e!380112)))

(assert (=> b!662040 (= res!430231 (not (noDuplicate!518 lt!308898)))))

(declare-fun res!430230 () Bool)

(assert (=> start!59888 (=> (not res!430230) (not e!380116))))

(assert (=> start!59888 (= res!430230 (and (bvslt (size!18998 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18998 a!3626))))))

(assert (=> start!59888 e!380116))

(assert (=> start!59888 true))

(declare-fun array_inv!14408 (array!38891) Bool)

(assert (=> start!59888 (array_inv!14408 a!3626)))

(declare-fun b!662036 () Bool)

(declare-fun res!430217 () Bool)

(assert (=> b!662036 (=> (not res!430217) (not e!380116))))

(assert (=> b!662036 (= res!430217 (validKeyInArray!0 k0!2843))))

(declare-fun b!662041 () Bool)

(assert (=> b!662041 (= e!380115 e!380119)))

(declare-fun res!430227 () Bool)

(assert (=> b!662041 (=> (not res!430227) (not e!380119))))

(assert (=> b!662041 (= res!430227 (bvsle from!3004 i!1382))))

(declare-fun b!662042 () Bool)

(declare-fun res!430223 () Bool)

(assert (=> b!662042 (=> (not res!430223) (not e!380116))))

(assert (=> b!662042 (= res!430223 (not (contains!3271 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59888 res!430230) b!662025))

(assert (= (and b!662025 res!430226) b!662030))

(assert (= (and b!662030 res!430232) b!662042))

(assert (= (and b!662042 res!430223) b!662039))

(assert (= (and b!662039 res!430222) b!662029))

(assert (= (and b!662039 (not res!430228)) b!662041))

(assert (= (and b!662041 res!430227) b!662023))

(assert (= (and b!662039 res!430219) b!662028))

(assert (= (and b!662028 res!430216) b!662024))

(assert (= (and b!662024 res!430214) b!662026))

(assert (= (and b!662026 res!430224) b!662036))

(assert (= (and b!662036 res!430217) b!662035))

(assert (= (and b!662035 res!430220) b!662033))

(assert (= (and b!662033 res!430221) b!662032))

(assert (= (and b!662032 c!76271) b!662031))

(assert (= (and b!662032 (not c!76271)) b!662027))

(assert (= (and b!662032 (not res!430229)) b!662022))

(assert (= (and b!662022 (not res!430213)) b!662040))

(assert (= (and b!662040 (not res!430231)) b!662038))

(assert (= (and b!662038 (not res!430218)) b!662034))

(assert (= (and b!662034 (not res!430225)) b!662037))

(assert (= (and b!662037 (not res!430215)) b!662021))

(declare-fun m!633987 () Bool)

(assert (=> b!662037 m!633987))

(declare-fun m!633989 () Bool)

(assert (=> b!662032 m!633989))

(declare-fun m!633991 () Bool)

(assert (=> b!662032 m!633991))

(declare-fun m!633993 () Bool)

(assert (=> b!662032 m!633993))

(assert (=> b!662032 m!633989))

(declare-fun m!633995 () Bool)

(assert (=> b!662032 m!633995))

(declare-fun m!633997 () Bool)

(assert (=> b!662032 m!633997))

(declare-fun m!633999 () Bool)

(assert (=> b!662042 m!633999))

(declare-fun m!634001 () Bool)

(assert (=> b!662031 m!634001))

(declare-fun m!634003 () Bool)

(assert (=> b!662023 m!634003))

(declare-fun m!634005 () Bool)

(assert (=> b!662025 m!634005))

(assert (=> b!662022 m!633989))

(assert (=> b!662022 m!633989))

(declare-fun m!634007 () Bool)

(assert (=> b!662022 m!634007))

(declare-fun m!634009 () Bool)

(assert (=> b!662022 m!634009))

(declare-fun m!634011 () Bool)

(assert (=> b!662022 m!634011))

(declare-fun m!634013 () Bool)

(assert (=> b!662035 m!634013))

(declare-fun m!634015 () Bool)

(assert (=> b!662024 m!634015))

(declare-fun m!634017 () Bool)

(assert (=> b!662028 m!634017))

(declare-fun m!634019 () Bool)

(assert (=> b!662030 m!634019))

(declare-fun m!634021 () Bool)

(assert (=> start!59888 m!634021))

(declare-fun m!634023 () Bool)

(assert (=> b!662038 m!634023))

(declare-fun m!634025 () Bool)

(assert (=> b!662040 m!634025))

(assert (=> b!662029 m!634003))

(declare-fun m!634027 () Bool)

(assert (=> b!662034 m!634027))

(declare-fun m!634029 () Bool)

(assert (=> b!662036 m!634029))

(declare-fun m!634031 () Bool)

(assert (=> b!662021 m!634031))

(declare-fun m!634033 () Bool)

(assert (=> b!662021 m!634033))

(check-sat (not b!662038) (not b!662021) (not b!662024) (not b!662037) (not b!662034) (not b!662040) (not b!662030) (not start!59888) (not b!662031) (not b!662025) (not b!662023) (not b!662028) (not b!662042) (not b!662032) (not b!662022) (not b!662035) (not b!662029) (not b!662036))
(check-sat)
