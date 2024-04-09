; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60086 () Bool)

(assert start!60086)

(declare-fun b!668984 () Bool)

(declare-fun e!382682 () Bool)

(declare-fun e!382678 () Bool)

(assert (=> b!668984 (= e!382682 e!382678)))

(declare-fun res!436099 () Bool)

(assert (=> b!668984 (=> (not res!436099) (not e!382678))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668984 (= res!436099 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668985 () Bool)

(declare-fun res!436104 () Bool)

(declare-fun e!382676 () Bool)

(assert (=> b!668985 (=> res!436104 e!382676)))

(declare-datatypes ((List!12827 0))(
  ( (Nil!12824) (Cons!12823 (h!13868 (_ BitVec 64)) (t!19063 List!12827)) )
))
(declare-fun lt!311471 () List!12827)

(declare-fun contains!3370 (List!12827 (_ BitVec 64)) Bool)

(assert (=> b!668985 (= res!436104 (contains!3370 lt!311471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668986 () Bool)

(declare-fun res!436092 () Bool)

(declare-fun e!382677 () Bool)

(assert (=> b!668986 (=> (not res!436092) (not e!382677))))

(declare-datatypes ((array!39089 0))(
  ( (array!39090 (arr!18733 (Array (_ BitVec 32) (_ BitVec 64))) (size!19097 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39089)

(declare-fun arrayNoDuplicates!0 (array!39089 (_ BitVec 32) List!12827) Bool)

(assert (=> b!668986 (= res!436092 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12824))))

(declare-fun b!668987 () Bool)

(assert (=> b!668987 (= e!382677 (not e!382676))))

(declare-fun res!436087 () Bool)

(assert (=> b!668987 (=> res!436087 e!382676)))

(assert (=> b!668987 (= res!436087 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668987 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311471)))

(declare-datatypes ((Unit!23460 0))(
  ( (Unit!23461) )
))
(declare-fun lt!311468 () Unit!23460)

(declare-fun acc!681 () List!12827)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39089 (_ BitVec 64) (_ BitVec 32) List!12827 List!12827) Unit!23460)

(assert (=> b!668987 (= lt!311468 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311471))))

(declare-fun -!106 (List!12827 (_ BitVec 64)) List!12827)

(assert (=> b!668987 (= (-!106 lt!311471 k0!2843) acc!681)))

(declare-fun $colon$colon!239 (List!12827 (_ BitVec 64)) List!12827)

(assert (=> b!668987 (= lt!311471 ($colon$colon!239 acc!681 k0!2843))))

(declare-fun lt!311467 () Unit!23460)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12827) Unit!23460)

(assert (=> b!668987 (= lt!311467 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!108 (List!12827 List!12827) Bool)

(assert (=> b!668987 (subseq!108 acc!681 acc!681)))

(declare-fun lt!311469 () Unit!23460)

(declare-fun lemmaListSubSeqRefl!0 (List!12827) Unit!23460)

(assert (=> b!668987 (= lt!311469 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668987 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311472 () Unit!23460)

(declare-fun e!382679 () Unit!23460)

(assert (=> b!668987 (= lt!311472 e!382679)))

(declare-fun c!76816 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668987 (= c!76816 (validKeyInArray!0 (select (arr!18733 a!3626) from!3004)))))

(declare-fun lt!311463 () Unit!23460)

(declare-fun e!382681 () Unit!23460)

(assert (=> b!668987 (= lt!311463 e!382681)))

(declare-fun c!76817 () Bool)

(declare-fun arrayContainsKey!0 (array!39089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668987 (= c!76817 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668987 (arrayContainsKey!0 (array!39090 (store (arr!18733 a!3626) i!1382 k0!2843) (size!19097 a!3626)) k0!2843 from!3004)))

(declare-fun res!436098 () Bool)

(assert (=> start!60086 (=> (not res!436098) (not e!382677))))

(assert (=> start!60086 (= res!436098 (and (bvslt (size!19097 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19097 a!3626))))))

(assert (=> start!60086 e!382677))

(assert (=> start!60086 true))

(declare-fun array_inv!14507 (array!39089) Bool)

(assert (=> start!60086 (array_inv!14507 a!3626)))

(declare-fun b!668988 () Bool)

(declare-fun res!436088 () Bool)

(assert (=> b!668988 (=> (not res!436088) (not e!382677))))

(assert (=> b!668988 (= res!436088 (not (contains!3370 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668989 () Bool)

(declare-fun res!436094 () Bool)

(assert (=> b!668989 (=> (not res!436094) (not e!382677))))

(assert (=> b!668989 (= res!436094 (validKeyInArray!0 k0!2843))))

(declare-fun b!668990 () Bool)

(declare-fun Unit!23462 () Unit!23460)

(assert (=> b!668990 (= e!382681 Unit!23462)))

(declare-fun b!668991 () Bool)

(assert (=> b!668991 (= e!382676 true)))

(declare-fun lt!311464 () Bool)

(assert (=> b!668991 (= lt!311464 e!382682)))

(declare-fun res!436089 () Bool)

(assert (=> b!668991 (=> res!436089 e!382682)))

(declare-fun e!382675 () Bool)

(assert (=> b!668991 (= res!436089 e!382675)))

(declare-fun res!436096 () Bool)

(assert (=> b!668991 (=> (not res!436096) (not e!382675))))

(assert (=> b!668991 (= res!436096 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668992 () Bool)

(declare-fun res!436103 () Bool)

(assert (=> b!668992 (=> (not res!436103) (not e!382677))))

(assert (=> b!668992 (= res!436103 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668993 () Bool)

(declare-fun Unit!23463 () Unit!23460)

(assert (=> b!668993 (= e!382679 Unit!23463)))

(declare-fun b!668994 () Bool)

(declare-fun lt!311465 () Unit!23460)

(assert (=> b!668994 (= e!382679 lt!311465)))

(declare-fun lt!311466 () Unit!23460)

(assert (=> b!668994 (= lt!311466 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668994 (subseq!108 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39089 List!12827 List!12827 (_ BitVec 32)) Unit!23460)

(assert (=> b!668994 (= lt!311465 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!239 acc!681 (select (arr!18733 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668994 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668995 () Bool)

(declare-fun res!436091 () Bool)

(assert (=> b!668995 (=> (not res!436091) (not e!382677))))

(assert (=> b!668995 (= res!436091 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19097 a!3626))))))

(declare-fun b!668996 () Bool)

(declare-fun res!436100 () Bool)

(assert (=> b!668996 (=> (not res!436100) (not e!382677))))

(assert (=> b!668996 (= res!436100 (not (contains!3370 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668997 () Bool)

(declare-fun e!382683 () Bool)

(assert (=> b!668997 (= e!382683 (not (contains!3370 acc!681 k0!2843)))))

(declare-fun b!668998 () Bool)

(declare-fun Unit!23464 () Unit!23460)

(assert (=> b!668998 (= e!382681 Unit!23464)))

(declare-fun lt!311470 () Unit!23460)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39089 (_ BitVec 64) (_ BitVec 32)) Unit!23460)

(assert (=> b!668998 (= lt!311470 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!668998 false))

(declare-fun b!668999 () Bool)

(assert (=> b!668999 (= e!382675 (contains!3370 lt!311471 k0!2843))))

(declare-fun b!669000 () Bool)

(declare-fun res!436102 () Bool)

(assert (=> b!669000 (=> (not res!436102) (not e!382677))))

(declare-fun e!382674 () Bool)

(assert (=> b!669000 (= res!436102 e!382674)))

(declare-fun res!436086 () Bool)

(assert (=> b!669000 (=> res!436086 e!382674)))

(declare-fun e!382680 () Bool)

(assert (=> b!669000 (= res!436086 e!382680)))

(declare-fun res!436097 () Bool)

(assert (=> b!669000 (=> (not res!436097) (not e!382680))))

(assert (=> b!669000 (= res!436097 (bvsgt from!3004 i!1382))))

(declare-fun b!669001 () Bool)

(declare-fun res!436105 () Bool)

(assert (=> b!669001 (=> (not res!436105) (not e!382677))))

(assert (=> b!669001 (= res!436105 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19097 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669002 () Bool)

(assert (=> b!669002 (= e!382674 e!382683)))

(declare-fun res!436095 () Bool)

(assert (=> b!669002 (=> (not res!436095) (not e!382683))))

(assert (=> b!669002 (= res!436095 (bvsle from!3004 i!1382))))

(declare-fun b!669003 () Bool)

(declare-fun res!436101 () Bool)

(assert (=> b!669003 (=> res!436101 e!382676)))

(declare-fun noDuplicate!617 (List!12827) Bool)

(assert (=> b!669003 (= res!436101 (not (noDuplicate!617 lt!311471)))))

(declare-fun b!669004 () Bool)

(declare-fun res!436090 () Bool)

(assert (=> b!669004 (=> (not res!436090) (not e!382677))))

(assert (=> b!669004 (= res!436090 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669005 () Bool)

(declare-fun res!436106 () Bool)

(assert (=> b!669005 (=> (not res!436106) (not e!382677))))

(assert (=> b!669005 (= res!436106 (noDuplicate!617 acc!681))))

(declare-fun b!669006 () Bool)

(declare-fun res!436093 () Bool)

(assert (=> b!669006 (=> res!436093 e!382676)))

(assert (=> b!669006 (= res!436093 (contains!3370 lt!311471 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669007 () Bool)

(assert (=> b!669007 (= e!382680 (contains!3370 acc!681 k0!2843))))

(declare-fun b!669008 () Bool)

(assert (=> b!669008 (= e!382678 (not (contains!3370 lt!311471 k0!2843)))))

(assert (= (and start!60086 res!436098) b!669005))

(assert (= (and b!669005 res!436106) b!668996))

(assert (= (and b!668996 res!436100) b!668988))

(assert (= (and b!668988 res!436088) b!669000))

(assert (= (and b!669000 res!436097) b!669007))

(assert (= (and b!669000 (not res!436086)) b!669002))

(assert (= (and b!669002 res!436095) b!668997))

(assert (= (and b!669000 res!436102) b!668986))

(assert (= (and b!668986 res!436092) b!668992))

(assert (= (and b!668992 res!436103) b!668995))

(assert (= (and b!668995 res!436091) b!668989))

(assert (= (and b!668989 res!436094) b!669004))

(assert (= (and b!669004 res!436090) b!669001))

(assert (= (and b!669001 res!436105) b!668987))

(assert (= (and b!668987 c!76817) b!668998))

(assert (= (and b!668987 (not c!76817)) b!668990))

(assert (= (and b!668987 c!76816) b!668994))

(assert (= (and b!668987 (not c!76816)) b!668993))

(assert (= (and b!668987 (not res!436087)) b!669003))

(assert (= (and b!669003 (not res!436101)) b!668985))

(assert (= (and b!668985 (not res!436104)) b!669006))

(assert (= (and b!669006 (not res!436093)) b!668991))

(assert (= (and b!668991 res!436096) b!668999))

(assert (= (and b!668991 (not res!436089)) b!668984))

(assert (= (and b!668984 res!436099) b!669008))

(declare-fun m!639205 () Bool)

(assert (=> b!668987 m!639205))

(declare-fun m!639207 () Bool)

(assert (=> b!668987 m!639207))

(declare-fun m!639209 () Bool)

(assert (=> b!668987 m!639209))

(declare-fun m!639211 () Bool)

(assert (=> b!668987 m!639211))

(declare-fun m!639213 () Bool)

(assert (=> b!668987 m!639213))

(declare-fun m!639215 () Bool)

(assert (=> b!668987 m!639215))

(declare-fun m!639217 () Bool)

(assert (=> b!668987 m!639217))

(declare-fun m!639219 () Bool)

(assert (=> b!668987 m!639219))

(declare-fun m!639221 () Bool)

(assert (=> b!668987 m!639221))

(declare-fun m!639223 () Bool)

(assert (=> b!668987 m!639223))

(assert (=> b!668987 m!639221))

(declare-fun m!639225 () Bool)

(assert (=> b!668987 m!639225))

(declare-fun m!639227 () Bool)

(assert (=> b!668987 m!639227))

(declare-fun m!639229 () Bool)

(assert (=> b!668987 m!639229))

(declare-fun m!639231 () Bool)

(assert (=> b!668999 m!639231))

(declare-fun m!639233 () Bool)

(assert (=> b!669005 m!639233))

(declare-fun m!639235 () Bool)

(assert (=> b!668996 m!639235))

(declare-fun m!639237 () Bool)

(assert (=> b!668985 m!639237))

(declare-fun m!639239 () Bool)

(assert (=> start!60086 m!639239))

(declare-fun m!639241 () Bool)

(assert (=> b!669004 m!639241))

(declare-fun m!639243 () Bool)

(assert (=> b!668989 m!639243))

(declare-fun m!639245 () Bool)

(assert (=> b!668998 m!639245))

(assert (=> b!668994 m!639205))

(assert (=> b!668994 m!639221))

(declare-fun m!639247 () Bool)

(assert (=> b!668994 m!639247))

(declare-fun m!639249 () Bool)

(assert (=> b!668994 m!639249))

(assert (=> b!668994 m!639221))

(assert (=> b!668994 m!639247))

(assert (=> b!668994 m!639213))

(assert (=> b!668994 m!639229))

(declare-fun m!639251 () Bool)

(assert (=> b!669006 m!639251))

(assert (=> b!669008 m!639231))

(declare-fun m!639253 () Bool)

(assert (=> b!668992 m!639253))

(declare-fun m!639255 () Bool)

(assert (=> b!668986 m!639255))

(declare-fun m!639257 () Bool)

(assert (=> b!669003 m!639257))

(declare-fun m!639259 () Bool)

(assert (=> b!669007 m!639259))

(declare-fun m!639261 () Bool)

(assert (=> b!668988 m!639261))

(assert (=> b!668997 m!639259))

(check-sat (not b!668999) (not b!669007) (not start!60086) (not b!668998) (not b!668986) (not b!668987) (not b!668997) (not b!669003) (not b!669008) (not b!669006) (not b!668996) (not b!669004) (not b!668994) (not b!668992) (not b!669005) (not b!668988) (not b!668985) (not b!668989))
