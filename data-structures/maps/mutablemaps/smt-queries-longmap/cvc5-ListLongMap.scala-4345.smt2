; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60114 () Bool)

(assert start!60114)

(declare-fun b!670054 () Bool)

(declare-fun res!436990 () Bool)

(declare-fun e!383136 () Bool)

(assert (=> b!670054 (=> (not res!436990) (not e!383136))))

(declare-datatypes ((array!39117 0))(
  ( (array!39118 (arr!18747 (Array (_ BitVec 32) (_ BitVec 64))) (size!19111 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39117)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670054 (= res!436990 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670055 () Bool)

(declare-datatypes ((Unit!23530 0))(
  ( (Unit!23531) )
))
(declare-fun e!383137 () Unit!23530)

(declare-fun Unit!23532 () Unit!23530)

(assert (=> b!670055 (= e!383137 Unit!23532)))

(declare-fun b!670056 () Bool)

(declare-fun e!383138 () Bool)

(assert (=> b!670056 (= e!383138 true)))

(declare-fun lt!311910 () array!39117)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12841 0))(
  ( (Nil!12838) (Cons!12837 (h!13882 (_ BitVec 64)) (t!19077 List!12841)) )
))
(declare-fun lt!311906 () List!12841)

(declare-fun arrayNoDuplicates!0 (array!39117 (_ BitVec 32) List!12841) Bool)

(assert (=> b!670056 (arrayNoDuplicates!0 lt!311910 (bvadd #b00000000000000000000000000000001 from!3004) lt!311906)))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun lt!311904 () Unit!23530)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39117 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12841) Unit!23530)

(assert (=> b!670056 (= lt!311904 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311906))))

(declare-fun b!670057 () Bool)

(declare-fun res!437007 () Bool)

(assert (=> b!670057 (=> (not res!437007) (not e!383136))))

(assert (=> b!670057 (= res!437007 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12838))))

(declare-fun b!670058 () Bool)

(declare-fun e!383144 () Bool)

(declare-fun e!383140 () Bool)

(assert (=> b!670058 (= e!383144 e!383140)))

(declare-fun res!437003 () Bool)

(assert (=> b!670058 (=> (not res!437003) (not e!383140))))

(assert (=> b!670058 (= res!437003 (bvsle from!3004 i!1382))))

(declare-fun b!670059 () Bool)

(declare-fun e!383141 () Bool)

(declare-fun e!383146 () Bool)

(assert (=> b!670059 (= e!383141 e!383146)))

(declare-fun res!437000 () Bool)

(assert (=> b!670059 (=> res!437000 e!383146)))

(assert (=> b!670059 (= res!437000 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670060 () Bool)

(declare-fun res!436991 () Bool)

(assert (=> b!670060 (=> res!436991 e!383138)))

(declare-fun contains!3384 (List!12841 (_ BitVec 64)) Bool)

(assert (=> b!670060 (= res!436991 (contains!3384 lt!311906 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670061 () Bool)

(declare-fun res!436999 () Bool)

(assert (=> b!670061 (=> (not res!436999) (not e!383136))))

(assert (=> b!670061 (= res!436999 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19111 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670062 () Bool)

(declare-fun res!436996 () Bool)

(assert (=> b!670062 (=> (not res!436996) (not e!383136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670062 (= res!436996 (validKeyInArray!0 k!2843))))

(declare-fun b!670063 () Bool)

(declare-fun res!437001 () Bool)

(assert (=> b!670063 (=> res!437001 e!383138)))

(declare-fun noDuplicate!631 (List!12841) Bool)

(assert (=> b!670063 (= res!437001 (not (noDuplicate!631 lt!311906)))))

(declare-fun b!670064 () Bool)

(assert (=> b!670064 (= e!383146 (contains!3384 lt!311906 k!2843))))

(declare-fun b!670065 () Bool)

(declare-fun res!436998 () Bool)

(assert (=> b!670065 (=> (not res!436998) (not e!383136))))

(declare-fun acc!681 () List!12841)

(assert (=> b!670065 (= res!436998 (noDuplicate!631 acc!681))))

(declare-fun b!670066 () Bool)

(declare-fun res!436994 () Bool)

(assert (=> b!670066 (=> (not res!436994) (not e!383136))))

(assert (=> b!670066 (= res!436994 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670067 () Bool)

(declare-fun res!436989 () Bool)

(assert (=> b!670067 (=> (not res!436989) (not e!383136))))

(assert (=> b!670067 (= res!436989 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19111 a!3626))))))

(declare-fun b!670068 () Bool)

(assert (=> b!670068 (= e!383140 (not (contains!3384 acc!681 k!2843)))))

(declare-fun b!670069 () Bool)

(declare-fun res!436993 () Bool)

(assert (=> b!670069 (=> (not res!436993) (not e!383136))))

(assert (=> b!670069 (= res!436993 (not (contains!3384 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!437005 () Bool)

(assert (=> start!60114 (=> (not res!437005) (not e!383136))))

(assert (=> start!60114 (= res!437005 (and (bvslt (size!19111 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19111 a!3626))))))

(assert (=> start!60114 e!383136))

(assert (=> start!60114 true))

(declare-fun array_inv!14521 (array!39117) Bool)

(assert (=> start!60114 (array_inv!14521 a!3626)))

(declare-fun b!670070 () Bool)

(declare-fun res!436992 () Bool)

(assert (=> b!670070 (=> res!436992 e!383138)))

(assert (=> b!670070 (= res!436992 (contains!3384 lt!311906 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670071 () Bool)

(declare-fun e!383139 () Unit!23530)

(declare-fun lt!311913 () Unit!23530)

(assert (=> b!670071 (= e!383139 lt!311913)))

(declare-fun lt!311909 () Unit!23530)

(declare-fun lemmaListSubSeqRefl!0 (List!12841) Unit!23530)

(assert (=> b!670071 (= lt!311909 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!122 (List!12841 List!12841) Bool)

(assert (=> b!670071 (subseq!122 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39117 List!12841 List!12841 (_ BitVec 32)) Unit!23530)

(declare-fun $colon$colon!253 (List!12841 (_ BitVec 64)) List!12841)

(assert (=> b!670071 (= lt!311913 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!253 acc!681 (select (arr!18747 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670071 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!670072 () Bool)

(declare-fun Unit!23533 () Unit!23530)

(assert (=> b!670072 (= e!383137 Unit!23533)))

(declare-fun lt!311903 () Unit!23530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39117 (_ BitVec 64) (_ BitVec 32)) Unit!23530)

(assert (=> b!670072 (= lt!311903 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!670072 false))

(declare-fun b!670073 () Bool)

(declare-fun res!437002 () Bool)

(assert (=> b!670073 (=> (not res!437002) (not e!383136))))

(assert (=> b!670073 (= res!437002 (not (contains!3384 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670074 () Bool)

(declare-fun res!436995 () Bool)

(assert (=> b!670074 (=> (not res!436995) (not e!383136))))

(assert (=> b!670074 (= res!436995 e!383144)))

(declare-fun res!437009 () Bool)

(assert (=> b!670074 (=> res!437009 e!383144)))

(declare-fun e!383142 () Bool)

(assert (=> b!670074 (= res!437009 e!383142)))

(declare-fun res!436997 () Bool)

(assert (=> b!670074 (=> (not res!436997) (not e!383142))))

(assert (=> b!670074 (= res!436997 (bvsgt from!3004 i!1382))))

(declare-fun b!670075 () Bool)

(declare-fun res!437006 () Bool)

(assert (=> b!670075 (=> res!437006 e!383138)))

(assert (=> b!670075 (= res!437006 e!383141)))

(declare-fun res!436988 () Bool)

(assert (=> b!670075 (=> (not res!436988) (not e!383141))))

(declare-fun e!383143 () Bool)

(assert (=> b!670075 (= res!436988 e!383143)))

(declare-fun res!437004 () Bool)

(assert (=> b!670075 (=> res!437004 e!383143)))

(assert (=> b!670075 (= res!437004 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670076 () Bool)

(assert (=> b!670076 (= e!383143 (not (contains!3384 lt!311906 k!2843)))))

(declare-fun b!670077 () Bool)

(assert (=> b!670077 (= e!383142 (contains!3384 acc!681 k!2843))))

(declare-fun b!670078 () Bool)

(assert (=> b!670078 (= e!383136 (not e!383138))))

(declare-fun res!437008 () Bool)

(assert (=> b!670078 (=> res!437008 e!383138)))

(assert (=> b!670078 (= res!437008 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!670078 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311906)))

(declare-fun lt!311908 () Unit!23530)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39117 (_ BitVec 64) (_ BitVec 32) List!12841 List!12841) Unit!23530)

(assert (=> b!670078 (= lt!311908 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311906))))

(declare-fun -!120 (List!12841 (_ BitVec 64)) List!12841)

(assert (=> b!670078 (= (-!120 lt!311906 k!2843) acc!681)))

(assert (=> b!670078 (= lt!311906 ($colon$colon!253 acc!681 k!2843))))

(declare-fun lt!311907 () Unit!23530)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12841) Unit!23530)

(assert (=> b!670078 (= lt!311907 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!670078 (subseq!122 acc!681 acc!681)))

(declare-fun lt!311905 () Unit!23530)

(assert (=> b!670078 (= lt!311905 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670078 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311911 () Unit!23530)

(assert (=> b!670078 (= lt!311911 e!383139)))

(declare-fun c!76900 () Bool)

(assert (=> b!670078 (= c!76900 (validKeyInArray!0 (select (arr!18747 a!3626) from!3004)))))

(declare-fun lt!311912 () Unit!23530)

(assert (=> b!670078 (= lt!311912 e!383137)))

(declare-fun c!76901 () Bool)

(assert (=> b!670078 (= c!76901 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670078 (arrayContainsKey!0 lt!311910 k!2843 from!3004)))

(assert (=> b!670078 (= lt!311910 (array!39118 (store (arr!18747 a!3626) i!1382 k!2843) (size!19111 a!3626)))))

(declare-fun b!670079 () Bool)

(declare-fun Unit!23534 () Unit!23530)

(assert (=> b!670079 (= e!383139 Unit!23534)))

(assert (= (and start!60114 res!437005) b!670065))

(assert (= (and b!670065 res!436998) b!670073))

(assert (= (and b!670073 res!437002) b!670069))

(assert (= (and b!670069 res!436993) b!670074))

(assert (= (and b!670074 res!436997) b!670077))

(assert (= (and b!670074 (not res!437009)) b!670058))

(assert (= (and b!670058 res!437003) b!670068))

(assert (= (and b!670074 res!436995) b!670057))

(assert (= (and b!670057 res!437007) b!670066))

(assert (= (and b!670066 res!436994) b!670067))

(assert (= (and b!670067 res!436989) b!670062))

(assert (= (and b!670062 res!436996) b!670054))

(assert (= (and b!670054 res!436990) b!670061))

(assert (= (and b!670061 res!436999) b!670078))

(assert (= (and b!670078 c!76901) b!670072))

(assert (= (and b!670078 (not c!76901)) b!670055))

(assert (= (and b!670078 c!76900) b!670071))

(assert (= (and b!670078 (not c!76900)) b!670079))

(assert (= (and b!670078 (not res!437008)) b!670063))

(assert (= (and b!670063 (not res!437001)) b!670070))

(assert (= (and b!670070 (not res!436992)) b!670060))

(assert (= (and b!670060 (not res!436991)) b!670075))

(assert (= (and b!670075 (not res!437004)) b!670076))

(assert (= (and b!670075 res!436988) b!670059))

(assert (= (and b!670059 (not res!437000)) b!670064))

(assert (= (and b!670075 (not res!437006)) b!670056))

(declare-fun m!640041 () Bool)

(assert (=> b!670064 m!640041))

(declare-fun m!640043 () Bool)

(assert (=> b!670068 m!640043))

(declare-fun m!640045 () Bool)

(assert (=> b!670057 m!640045))

(declare-fun m!640047 () Bool)

(assert (=> b!670062 m!640047))

(assert (=> b!670076 m!640041))

(declare-fun m!640049 () Bool)

(assert (=> b!670056 m!640049))

(declare-fun m!640051 () Bool)

(assert (=> b!670056 m!640051))

(declare-fun m!640053 () Bool)

(assert (=> b!670072 m!640053))

(declare-fun m!640055 () Bool)

(assert (=> b!670073 m!640055))

(declare-fun m!640057 () Bool)

(assert (=> b!670078 m!640057))

(declare-fun m!640059 () Bool)

(assert (=> b!670078 m!640059))

(declare-fun m!640061 () Bool)

(assert (=> b!670078 m!640061))

(declare-fun m!640063 () Bool)

(assert (=> b!670078 m!640063))

(declare-fun m!640065 () Bool)

(assert (=> b!670078 m!640065))

(declare-fun m!640067 () Bool)

(assert (=> b!670078 m!640067))

(declare-fun m!640069 () Bool)

(assert (=> b!670078 m!640069))

(declare-fun m!640071 () Bool)

(assert (=> b!670078 m!640071))

(assert (=> b!670078 m!640063))

(declare-fun m!640073 () Bool)

(assert (=> b!670078 m!640073))

(declare-fun m!640075 () Bool)

(assert (=> b!670078 m!640075))

(declare-fun m!640077 () Bool)

(assert (=> b!670078 m!640077))

(declare-fun m!640079 () Bool)

(assert (=> b!670078 m!640079))

(declare-fun m!640081 () Bool)

(assert (=> b!670078 m!640081))

(declare-fun m!640083 () Bool)

(assert (=> b!670054 m!640083))

(declare-fun m!640085 () Bool)

(assert (=> start!60114 m!640085))

(declare-fun m!640087 () Bool)

(assert (=> b!670063 m!640087))

(assert (=> b!670077 m!640043))

(declare-fun m!640089 () Bool)

(assert (=> b!670069 m!640089))

(declare-fun m!640091 () Bool)

(assert (=> b!670065 m!640091))

(declare-fun m!640093 () Bool)

(assert (=> b!670060 m!640093))

(declare-fun m!640095 () Bool)

(assert (=> b!670066 m!640095))

(declare-fun m!640097 () Bool)

(assert (=> b!670070 m!640097))

(assert (=> b!670071 m!640061))

(assert (=> b!670071 m!640063))

(declare-fun m!640099 () Bool)

(assert (=> b!670071 m!640099))

(declare-fun m!640101 () Bool)

(assert (=> b!670071 m!640101))

(assert (=> b!670071 m!640063))

(assert (=> b!670071 m!640099))

(assert (=> b!670071 m!640069))

(assert (=> b!670071 m!640077))

(push 1)

(assert (not b!670076))

(assert (not start!60114))

(assert (not b!670069))

(assert (not b!670060))

(assert (not b!670078))

(assert (not b!670070))

(assert (not b!670065))

(assert (not b!670062))

(assert (not b!670073))

(assert (not b!670072))

(assert (not b!670068))

(assert (not b!670063))

(assert (not b!670057))

(assert (not b!670077))

(assert (not b!670066))

(assert (not b!670071))

(assert (not b!670056))

(assert (not b!670064))

(assert (not b!670054))

