; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60664 () Bool)

(assert start!60664)

(declare-fun b!680962 () Bool)

(declare-fun e!387933 () Bool)

(declare-fun e!387930 () Bool)

(assert (=> b!680962 (= e!387933 e!387930)))

(declare-fun res!447312 () Bool)

(assert (=> b!680962 (=> (not res!447312) (not e!387930))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680962 (= res!447312 (bvsle from!3004 i!1382))))

(declare-fun b!680963 () Bool)

(declare-fun res!447306 () Bool)

(declare-fun e!387932 () Bool)

(assert (=> b!680963 (=> (not res!447306) (not e!387932))))

(declare-datatypes ((List!13020 0))(
  ( (Nil!13017) (Cons!13016 (h!14061 (_ BitVec 64)) (t!19262 List!13020)) )
))
(declare-fun acc!681 () List!13020)

(declare-fun contains!3563 (List!13020 (_ BitVec 64)) Bool)

(assert (=> b!680963 (= res!447306 (not (contains!3563 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!447323 () Bool)

(assert (=> start!60664 (=> (not res!447323) (not e!387932))))

(declare-datatypes ((array!39487 0))(
  ( (array!39488 (arr!18926 (Array (_ BitVec 32) (_ BitVec 64))) (size!19290 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39487)

(assert (=> start!60664 (= res!447323 (and (bvslt (size!19290 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19290 a!3626))))))

(assert (=> start!60664 e!387932))

(assert (=> start!60664 true))

(declare-fun array_inv!14700 (array!39487) Bool)

(assert (=> start!60664 (array_inv!14700 a!3626)))

(declare-fun b!680964 () Bool)

(declare-fun res!447313 () Bool)

(declare-fun e!387927 () Bool)

(assert (=> b!680964 (=> res!447313 e!387927)))

(declare-fun lt!313176 () List!13020)

(declare-fun noDuplicate!810 (List!13020) Bool)

(assert (=> b!680964 (= res!447313 (not (noDuplicate!810 lt!313176)))))

(declare-fun b!680965 () Bool)

(assert (=> b!680965 (= e!387927 true)))

(declare-fun lt!313178 () Bool)

(assert (=> b!680965 (= lt!313178 (contains!3563 lt!313176 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680966 () Bool)

(declare-fun res!447320 () Bool)

(assert (=> b!680966 (=> (not res!447320) (not e!387932))))

(assert (=> b!680966 (= res!447320 (noDuplicate!810 acc!681))))

(declare-fun b!680967 () Bool)

(declare-fun res!447307 () Bool)

(assert (=> b!680967 (=> (not res!447307) (not e!387932))))

(declare-fun arrayNoDuplicates!0 (array!39487 (_ BitVec 32) List!13020) Bool)

(assert (=> b!680967 (= res!447307 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680968 () Bool)

(declare-fun res!447309 () Bool)

(assert (=> b!680968 (=> (not res!447309) (not e!387932))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680968 (= res!447309 (validKeyInArray!0 k!2843))))

(declare-fun b!680969 () Bool)

(declare-fun res!447319 () Bool)

(assert (=> b!680969 (=> (not res!447319) (not e!387932))))

(assert (=> b!680969 (= res!447319 (not (contains!3563 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680970 () Bool)

(assert (=> b!680970 (= e!387930 (not (contains!3563 acc!681 k!2843)))))

(declare-fun b!680971 () Bool)

(declare-fun res!447310 () Bool)

(assert (=> b!680971 (=> (not res!447310) (not e!387932))))

(assert (=> b!680971 (= res!447310 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19290 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680972 () Bool)

(declare-datatypes ((Unit!23874 0))(
  ( (Unit!23875) )
))
(declare-fun e!387928 () Unit!23874)

(declare-fun Unit!23876 () Unit!23874)

(assert (=> b!680972 (= e!387928 Unit!23876)))

(declare-fun lt!313177 () Unit!23874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39487 (_ BitVec 64) (_ BitVec 32)) Unit!23874)

(assert (=> b!680972 (= lt!313177 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680972 false))

(declare-fun b!680973 () Bool)

(declare-fun res!447314 () Bool)

(assert (=> b!680973 (=> (not res!447314) (not e!387932))))

(assert (=> b!680973 (= res!447314 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13017))))

(declare-fun b!680974 () Bool)

(declare-fun res!447311 () Bool)

(assert (=> b!680974 (=> res!447311 e!387927)))

(assert (=> b!680974 (= res!447311 (contains!3563 lt!313176 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680975 () Bool)

(declare-fun res!447308 () Bool)

(assert (=> b!680975 (=> (not res!447308) (not e!387932))))

(declare-fun arrayContainsKey!0 (array!39487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680975 (= res!447308 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680976 () Bool)

(declare-fun res!447317 () Bool)

(assert (=> b!680976 (=> (not res!447317) (not e!387932))))

(assert (=> b!680976 (= res!447317 e!387933)))

(declare-fun res!447321 () Bool)

(assert (=> b!680976 (=> res!447321 e!387933)))

(declare-fun e!387929 () Bool)

(assert (=> b!680976 (= res!447321 e!387929)))

(declare-fun res!447318 () Bool)

(assert (=> b!680976 (=> (not res!447318) (not e!387929))))

(assert (=> b!680976 (= res!447318 (bvsgt from!3004 i!1382))))

(declare-fun b!680977 () Bool)

(declare-fun Unit!23877 () Unit!23874)

(assert (=> b!680977 (= e!387928 Unit!23877)))

(declare-fun b!680978 () Bool)

(declare-fun res!447315 () Bool)

(assert (=> b!680978 (=> (not res!447315) (not e!387932))))

(assert (=> b!680978 (= res!447315 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19290 a!3626))))))

(declare-fun b!680979 () Bool)

(declare-fun e!387931 () Bool)

(assert (=> b!680979 (= e!387932 (not e!387931))))

(declare-fun res!447316 () Bool)

(assert (=> b!680979 (=> res!447316 e!387931)))

(assert (=> b!680979 (= res!447316 (not (validKeyInArray!0 (select (arr!18926 a!3626) from!3004))))))

(declare-fun lt!313175 () Unit!23874)

(assert (=> b!680979 (= lt!313175 e!387928)))

(declare-fun c!77195 () Bool)

(assert (=> b!680979 (= c!77195 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680979 (arrayContainsKey!0 (array!39488 (store (arr!18926 a!3626) i!1382 k!2843) (size!19290 a!3626)) k!2843 from!3004)))

(declare-fun b!680980 () Bool)

(assert (=> b!680980 (= e!387931 e!387927)))

(declare-fun res!447322 () Bool)

(assert (=> b!680980 (=> res!447322 e!387927)))

(assert (=> b!680980 (= res!447322 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!312 (List!13020 (_ BitVec 64)) List!13020)

(assert (=> b!680980 (= lt!313176 ($colon$colon!312 acc!681 (select (arr!18926 a!3626) from!3004)))))

(declare-fun subseq!148 (List!13020 List!13020) Bool)

(assert (=> b!680980 (subseq!148 acc!681 acc!681)))

(declare-fun lt!313179 () Unit!23874)

(declare-fun lemmaListSubSeqRefl!0 (List!13020) Unit!23874)

(assert (=> b!680980 (= lt!313179 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680981 () Bool)

(assert (=> b!680981 (= e!387929 (contains!3563 acc!681 k!2843))))

(assert (= (and start!60664 res!447323) b!680966))

(assert (= (and b!680966 res!447320) b!680963))

(assert (= (and b!680963 res!447306) b!680969))

(assert (= (and b!680969 res!447319) b!680976))

(assert (= (and b!680976 res!447318) b!680981))

(assert (= (and b!680976 (not res!447321)) b!680962))

(assert (= (and b!680962 res!447312) b!680970))

(assert (= (and b!680976 res!447317) b!680973))

(assert (= (and b!680973 res!447314) b!680967))

(assert (= (and b!680967 res!447307) b!680978))

(assert (= (and b!680978 res!447315) b!680968))

(assert (= (and b!680968 res!447309) b!680975))

(assert (= (and b!680975 res!447308) b!680971))

(assert (= (and b!680971 res!447310) b!680979))

(assert (= (and b!680979 c!77195) b!680972))

(assert (= (and b!680979 (not c!77195)) b!680977))

(assert (= (and b!680979 (not res!447316)) b!680980))

(assert (= (and b!680980 (not res!447322)) b!680964))

(assert (= (and b!680964 (not res!447313)) b!680974))

(assert (= (and b!680974 (not res!447311)) b!680965))

(declare-fun m!645945 () Bool)

(assert (=> b!680965 m!645945))

(declare-fun m!645947 () Bool)

(assert (=> b!680975 m!645947))

(declare-fun m!645949 () Bool)

(assert (=> b!680966 m!645949))

(declare-fun m!645951 () Bool)

(assert (=> b!680981 m!645951))

(declare-fun m!645953 () Bool)

(assert (=> b!680972 m!645953))

(declare-fun m!645955 () Bool)

(assert (=> b!680969 m!645955))

(declare-fun m!645957 () Bool)

(assert (=> b!680973 m!645957))

(declare-fun m!645959 () Bool)

(assert (=> b!680967 m!645959))

(declare-fun m!645961 () Bool)

(assert (=> b!680963 m!645961))

(declare-fun m!645963 () Bool)

(assert (=> start!60664 m!645963))

(assert (=> b!680970 m!645951))

(declare-fun m!645965 () Bool)

(assert (=> b!680980 m!645965))

(assert (=> b!680980 m!645965))

(declare-fun m!645967 () Bool)

(assert (=> b!680980 m!645967))

(declare-fun m!645969 () Bool)

(assert (=> b!680980 m!645969))

(declare-fun m!645971 () Bool)

(assert (=> b!680980 m!645971))

(declare-fun m!645973 () Bool)

(assert (=> b!680968 m!645973))

(declare-fun m!645975 () Bool)

(assert (=> b!680974 m!645975))

(declare-fun m!645977 () Bool)

(assert (=> b!680964 m!645977))

(assert (=> b!680979 m!645965))

(declare-fun m!645979 () Bool)

(assert (=> b!680979 m!645979))

(declare-fun m!645981 () Bool)

(assert (=> b!680979 m!645981))

(assert (=> b!680979 m!645965))

(declare-fun m!645983 () Bool)

(assert (=> b!680979 m!645983))

(declare-fun m!645985 () Bool)

(assert (=> b!680979 m!645985))

(push 1)

