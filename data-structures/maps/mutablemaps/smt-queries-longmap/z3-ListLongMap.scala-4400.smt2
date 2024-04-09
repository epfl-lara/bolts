; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60518 () Bool)

(assert start!60518)

(declare-fun b!679867 () Bool)

(declare-fun res!446340 () Bool)

(declare-fun e!387271 () Bool)

(assert (=> b!679867 (=> (not res!446340) (not e!387271))))

(declare-datatypes ((List!13007 0))(
  ( (Nil!13004) (Cons!13003 (h!14048 (_ BitVec 64)) (t!19243 List!13007)) )
))
(declare-fun acc!681 () List!13007)

(declare-fun contains!3550 (List!13007 (_ BitVec 64)) Bool)

(assert (=> b!679867 (= res!446340 (not (contains!3550 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679868 () Bool)

(declare-fun res!446351 () Bool)

(assert (=> b!679868 (=> (not res!446351) (not e!387271))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679868 (= res!446351 (validKeyInArray!0 k0!2843))))

(declare-fun b!679869 () Bool)

(declare-fun e!387274 () Bool)

(assert (=> b!679869 (= e!387274 (contains!3550 acc!681 k0!2843))))

(declare-fun b!679870 () Bool)

(declare-datatypes ((Unit!23822 0))(
  ( (Unit!23823) )
))
(declare-fun e!387275 () Unit!23822)

(declare-fun Unit!23824 () Unit!23822)

(assert (=> b!679870 (= e!387275 Unit!23824)))

(declare-fun b!679871 () Bool)

(declare-fun e!387277 () Bool)

(assert (=> b!679871 (= e!387277 (not (contains!3550 acc!681 k0!2843)))))

(declare-fun b!679872 () Bool)

(declare-fun res!446338 () Bool)

(assert (=> b!679872 (=> (not res!446338) (not e!387271))))

(declare-fun noDuplicate!797 (List!13007) Bool)

(assert (=> b!679872 (= res!446338 (noDuplicate!797 acc!681))))

(declare-fun b!679873 () Bool)

(declare-fun res!446341 () Bool)

(assert (=> b!679873 (=> (not res!446341) (not e!387271))))

(declare-datatypes ((array!39455 0))(
  ( (array!39456 (arr!18913 (Array (_ BitVec 32) (_ BitVec 64))) (size!19277 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39455)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39455 (_ BitVec 32) List!13007) Bool)

(assert (=> b!679873 (= res!446341 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679874 () Bool)

(declare-fun res!446344 () Bool)

(assert (=> b!679874 (=> (not res!446344) (not e!387271))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679874 (= res!446344 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19277 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679875 () Bool)

(declare-fun res!446346 () Bool)

(assert (=> b!679875 (=> (not res!446346) (not e!387271))))

(declare-fun e!387273 () Bool)

(assert (=> b!679875 (= res!446346 e!387273)))

(declare-fun res!446343 () Bool)

(assert (=> b!679875 (=> res!446343 e!387273)))

(assert (=> b!679875 (= res!446343 e!387274)))

(declare-fun res!446342 () Bool)

(assert (=> b!679875 (=> (not res!446342) (not e!387274))))

(assert (=> b!679875 (= res!446342 (bvsgt from!3004 i!1382))))

(declare-fun b!679876 () Bool)

(declare-fun res!446345 () Bool)

(assert (=> b!679876 (=> (not res!446345) (not e!387271))))

(assert (=> b!679876 (= res!446345 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19277 a!3626))))))

(declare-fun b!679877 () Bool)

(declare-fun Unit!23825 () Unit!23822)

(assert (=> b!679877 (= e!387275 Unit!23825)))

(declare-fun lt!312961 () Unit!23822)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39455 (_ BitVec 64) (_ BitVec 32)) Unit!23822)

(assert (=> b!679877 (= lt!312961 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!679877 false))

(declare-fun b!679878 () Bool)

(declare-fun res!446349 () Bool)

(assert (=> b!679878 (=> (not res!446349) (not e!387271))))

(assert (=> b!679878 (= res!446349 (not (contains!3550 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679879 () Bool)

(declare-fun res!446337 () Bool)

(assert (=> b!679879 (=> (not res!446337) (not e!387271))))

(assert (=> b!679879 (= res!446337 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13004))))

(declare-fun b!679880 () Bool)

(declare-fun e!387276 () Bool)

(assert (=> b!679880 (= e!387276 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!135 (List!13007 List!13007) Bool)

(assert (=> b!679880 (subseq!135 acc!681 acc!681)))

(declare-fun lt!312963 () Unit!23822)

(declare-fun lemmaListSubSeqRefl!0 (List!13007) Unit!23822)

(assert (=> b!679880 (= lt!312963 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679881 () Bool)

(assert (=> b!679881 (= e!387271 (not e!387276))))

(declare-fun res!446348 () Bool)

(assert (=> b!679881 (=> res!446348 e!387276)))

(assert (=> b!679881 (= res!446348 (not (validKeyInArray!0 (select (arr!18913 a!3626) from!3004))))))

(declare-fun lt!312962 () Unit!23822)

(assert (=> b!679881 (= lt!312962 e!387275)))

(declare-fun c!77132 () Bool)

(declare-fun arrayContainsKey!0 (array!39455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679881 (= c!77132 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679881 (arrayContainsKey!0 (array!39456 (store (arr!18913 a!3626) i!1382 k0!2843) (size!19277 a!3626)) k0!2843 from!3004)))

(declare-fun b!679883 () Bool)

(assert (=> b!679883 (= e!387273 e!387277)))

(declare-fun res!446350 () Bool)

(assert (=> b!679883 (=> (not res!446350) (not e!387277))))

(assert (=> b!679883 (= res!446350 (bvsle from!3004 i!1382))))

(declare-fun res!446339 () Bool)

(assert (=> start!60518 (=> (not res!446339) (not e!387271))))

(assert (=> start!60518 (= res!446339 (and (bvslt (size!19277 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19277 a!3626))))))

(assert (=> start!60518 e!387271))

(assert (=> start!60518 true))

(declare-fun array_inv!14687 (array!39455) Bool)

(assert (=> start!60518 (array_inv!14687 a!3626)))

(declare-fun b!679882 () Bool)

(declare-fun res!446347 () Bool)

(assert (=> b!679882 (=> (not res!446347) (not e!387271))))

(assert (=> b!679882 (= res!446347 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60518 res!446339) b!679872))

(assert (= (and b!679872 res!446338) b!679867))

(assert (= (and b!679867 res!446340) b!679878))

(assert (= (and b!679878 res!446349) b!679875))

(assert (= (and b!679875 res!446342) b!679869))

(assert (= (and b!679875 (not res!446343)) b!679883))

(assert (= (and b!679883 res!446350) b!679871))

(assert (= (and b!679875 res!446346) b!679879))

(assert (= (and b!679879 res!446337) b!679873))

(assert (= (and b!679873 res!446341) b!679876))

(assert (= (and b!679876 res!446345) b!679868))

(assert (= (and b!679868 res!446351) b!679882))

(assert (= (and b!679882 res!446347) b!679874))

(assert (= (and b!679874 res!446344) b!679881))

(assert (= (and b!679881 c!77132) b!679877))

(assert (= (and b!679881 (not c!77132)) b!679870))

(assert (= (and b!679881 (not res!446348)) b!679880))

(declare-fun m!645109 () Bool)

(assert (=> b!679869 m!645109))

(declare-fun m!645111 () Bool)

(assert (=> b!679878 m!645111))

(assert (=> b!679871 m!645109))

(declare-fun m!645113 () Bool)

(assert (=> b!679867 m!645113))

(declare-fun m!645115 () Bool)

(assert (=> b!679872 m!645115))

(declare-fun m!645117 () Bool)

(assert (=> b!679877 m!645117))

(declare-fun m!645119 () Bool)

(assert (=> b!679873 m!645119))

(declare-fun m!645121 () Bool)

(assert (=> b!679868 m!645121))

(declare-fun m!645123 () Bool)

(assert (=> b!679881 m!645123))

(declare-fun m!645125 () Bool)

(assert (=> b!679881 m!645125))

(declare-fun m!645127 () Bool)

(assert (=> b!679881 m!645127))

(assert (=> b!679881 m!645123))

(declare-fun m!645129 () Bool)

(assert (=> b!679881 m!645129))

(declare-fun m!645131 () Bool)

(assert (=> b!679881 m!645131))

(declare-fun m!645133 () Bool)

(assert (=> start!60518 m!645133))

(declare-fun m!645135 () Bool)

(assert (=> b!679879 m!645135))

(declare-fun m!645137 () Bool)

(assert (=> b!679882 m!645137))

(declare-fun m!645139 () Bool)

(assert (=> b!679880 m!645139))

(declare-fun m!645141 () Bool)

(assert (=> b!679880 m!645141))

(check-sat (not b!679880) (not b!679869) (not b!679871) (not b!679879) (not b!679882) (not b!679873) (not b!679872) (not b!679881) (not b!679867) (not b!679877) (not start!60518) (not b!679878) (not b!679868))
(check-sat)
