; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60112 () Bool)

(assert start!60112)

(declare-fun b!669976 () Bool)

(declare-fun res!436923 () Bool)

(declare-fun e!383111 () Bool)

(assert (=> b!669976 (=> (not res!436923) (not e!383111))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39115 0))(
  ( (array!39116 (arr!18746 (Array (_ BitVec 32) (_ BitVec 64))) (size!19110 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39115)

(assert (=> b!669976 (= res!436923 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19110 a!3626))))))

(declare-fun b!669977 () Bool)

(declare-datatypes ((Unit!23525 0))(
  ( (Unit!23526) )
))
(declare-fun e!383109 () Unit!23525)

(declare-fun Unit!23527 () Unit!23525)

(assert (=> b!669977 (= e!383109 Unit!23527)))

(declare-fun b!669978 () Bool)

(declare-fun e!383104 () Bool)

(declare-fun e!383105 () Bool)

(assert (=> b!669978 (= e!383104 e!383105)))

(declare-fun res!436924 () Bool)

(assert (=> b!669978 (=> (not res!436924) (not e!383105))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!669978 (= res!436924 (bvsle from!3004 i!1382))))

(declare-fun b!669979 () Bool)

(declare-fun res!436939 () Bool)

(assert (=> b!669979 (=> (not res!436939) (not e!383111))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669979 (= res!436939 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669980 () Bool)

(declare-fun e!383108 () Bool)

(declare-datatypes ((List!12840 0))(
  ( (Nil!12837) (Cons!12836 (h!13881 (_ BitVec 64)) (t!19076 List!12840)) )
))
(declare-fun lt!311872 () List!12840)

(declare-fun contains!3383 (List!12840 (_ BitVec 64)) Bool)

(assert (=> b!669980 (= e!383108 (not (contains!3383 lt!311872 k!2843)))))

(declare-fun b!669981 () Bool)

(declare-fun res!436937 () Bool)

(assert (=> b!669981 (=> (not res!436937) (not e!383111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669981 (= res!436937 (validKeyInArray!0 k!2843))))

(declare-fun b!669982 () Bool)

(declare-fun res!436935 () Bool)

(declare-fun e!383112 () Bool)

(assert (=> b!669982 (=> res!436935 e!383112)))

(declare-fun e!383110 () Bool)

(assert (=> b!669982 (= res!436935 e!383110)))

(declare-fun res!436936 () Bool)

(assert (=> b!669982 (=> (not res!436936) (not e!383110))))

(assert (=> b!669982 (= res!436936 e!383108)))

(declare-fun res!436943 () Bool)

(assert (=> b!669982 (=> res!436943 e!383108)))

(assert (=> b!669982 (= res!436943 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669983 () Bool)

(declare-fun lt!311878 () Unit!23525)

(assert (=> b!669983 (= e!383109 lt!311878)))

(declare-fun lt!311875 () Unit!23525)

(declare-fun acc!681 () List!12840)

(declare-fun lemmaListSubSeqRefl!0 (List!12840) Unit!23525)

(assert (=> b!669983 (= lt!311875 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!121 (List!12840 List!12840) Bool)

(assert (=> b!669983 (subseq!121 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39115 List!12840 List!12840 (_ BitVec 32)) Unit!23525)

(declare-fun $colon$colon!252 (List!12840 (_ BitVec 64)) List!12840)

(assert (=> b!669983 (= lt!311878 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!252 acc!681 (select (arr!18746 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39115 (_ BitVec 32) List!12840) Bool)

(assert (=> b!669983 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669984 () Bool)

(declare-fun res!436922 () Bool)

(assert (=> b!669984 (=> res!436922 e!383112)))

(assert (=> b!669984 (= res!436922 (contains!3383 lt!311872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669985 () Bool)

(declare-fun res!436929 () Bool)

(assert (=> b!669985 (=> (not res!436929) (not e!383111))))

(declare-fun noDuplicate!630 (List!12840) Bool)

(assert (=> b!669985 (= res!436929 (noDuplicate!630 acc!681))))

(declare-fun b!669986 () Bool)

(declare-fun res!436934 () Bool)

(assert (=> b!669986 (=> (not res!436934) (not e!383111))))

(assert (=> b!669986 (= res!436934 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19110 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669987 () Bool)

(declare-fun res!436940 () Bool)

(assert (=> b!669987 (=> res!436940 e!383112)))

(assert (=> b!669987 (= res!436940 (contains!3383 lt!311872 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669988 () Bool)

(declare-fun res!436927 () Bool)

(assert (=> b!669988 (=> res!436927 e!383112)))

(assert (=> b!669988 (= res!436927 (not (noDuplicate!630 lt!311872)))))

(declare-fun b!669989 () Bool)

(declare-fun e!383103 () Bool)

(assert (=> b!669989 (= e!383103 (contains!3383 lt!311872 k!2843))))

(declare-fun b!669990 () Bool)

(assert (=> b!669990 (= e!383111 (not e!383112))))

(declare-fun res!436931 () Bool)

(assert (=> b!669990 (=> res!436931 e!383112)))

(assert (=> b!669990 (= res!436931 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669990 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311872)))

(declare-fun lt!311877 () Unit!23525)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39115 (_ BitVec 64) (_ BitVec 32) List!12840 List!12840) Unit!23525)

(assert (=> b!669990 (= lt!311877 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311872))))

(declare-fun -!119 (List!12840 (_ BitVec 64)) List!12840)

(assert (=> b!669990 (= (-!119 lt!311872 k!2843) acc!681)))

(assert (=> b!669990 (= lt!311872 ($colon$colon!252 acc!681 k!2843))))

(declare-fun lt!311880 () Unit!23525)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12840) Unit!23525)

(assert (=> b!669990 (= lt!311880 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669990 (subseq!121 acc!681 acc!681)))

(declare-fun lt!311871 () Unit!23525)

(assert (=> b!669990 (= lt!311871 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669990 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311879 () Unit!23525)

(assert (=> b!669990 (= lt!311879 e!383109)))

(declare-fun c!76895 () Bool)

(assert (=> b!669990 (= c!76895 (validKeyInArray!0 (select (arr!18746 a!3626) from!3004)))))

(declare-fun lt!311873 () Unit!23525)

(declare-fun e!383113 () Unit!23525)

(assert (=> b!669990 (= lt!311873 e!383113)))

(declare-fun c!76894 () Bool)

(assert (=> b!669990 (= c!76894 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!311876 () array!39115)

(assert (=> b!669990 (arrayContainsKey!0 lt!311876 k!2843 from!3004)))

(assert (=> b!669990 (= lt!311876 (array!39116 (store (arr!18746 a!3626) i!1382 k!2843) (size!19110 a!3626)))))

(declare-fun b!669991 () Bool)

(assert (=> b!669991 (= e!383112 true)))

(assert (=> b!669991 (arrayNoDuplicates!0 lt!311876 (bvadd #b00000000000000000000000000000001 from!3004) lt!311872)))

(declare-fun lt!311874 () Unit!23525)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39115 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12840) Unit!23525)

(assert (=> b!669991 (= lt!311874 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311872))))

(declare-fun res!436942 () Bool)

(assert (=> start!60112 (=> (not res!436942) (not e!383111))))

(assert (=> start!60112 (= res!436942 (and (bvslt (size!19110 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19110 a!3626))))))

(assert (=> start!60112 e!383111))

(assert (=> start!60112 true))

(declare-fun array_inv!14520 (array!39115) Bool)

(assert (=> start!60112 (array_inv!14520 a!3626)))

(declare-fun b!669992 () Bool)

(declare-fun res!436941 () Bool)

(assert (=> b!669992 (=> (not res!436941) (not e!383111))))

(assert (=> b!669992 (= res!436941 (not (contains!3383 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669993 () Bool)

(assert (=> b!669993 (= e!383110 e!383103)))

(declare-fun res!436938 () Bool)

(assert (=> b!669993 (=> res!436938 e!383103)))

(assert (=> b!669993 (= res!436938 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669994 () Bool)

(declare-fun Unit!23528 () Unit!23525)

(assert (=> b!669994 (= e!383113 Unit!23528)))

(declare-fun lt!311870 () Unit!23525)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39115 (_ BitVec 64) (_ BitVec 32)) Unit!23525)

(assert (=> b!669994 (= lt!311870 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669994 false))

(declare-fun b!669995 () Bool)

(declare-fun res!436932 () Bool)

(assert (=> b!669995 (=> (not res!436932) (not e!383111))))

(assert (=> b!669995 (= res!436932 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12837))))

(declare-fun b!669996 () Bool)

(declare-fun e!383106 () Bool)

(assert (=> b!669996 (= e!383106 (contains!3383 acc!681 k!2843))))

(declare-fun b!669997 () Bool)

(declare-fun res!436928 () Bool)

(assert (=> b!669997 (=> (not res!436928) (not e!383111))))

(assert (=> b!669997 (= res!436928 (not (contains!3383 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669998 () Bool)

(assert (=> b!669998 (= e!383105 (not (contains!3383 acc!681 k!2843)))))

(declare-fun b!669999 () Bool)

(declare-fun Unit!23529 () Unit!23525)

(assert (=> b!669999 (= e!383113 Unit!23529)))

(declare-fun b!670000 () Bool)

(declare-fun res!436926 () Bool)

(assert (=> b!670000 (=> (not res!436926) (not e!383111))))

(assert (=> b!670000 (= res!436926 e!383104)))

(declare-fun res!436933 () Bool)

(assert (=> b!670000 (=> res!436933 e!383104)))

(assert (=> b!670000 (= res!436933 e!383106)))

(declare-fun res!436930 () Bool)

(assert (=> b!670000 (=> (not res!436930) (not e!383106))))

(assert (=> b!670000 (= res!436930 (bvsgt from!3004 i!1382))))

(declare-fun b!670001 () Bool)

(declare-fun res!436925 () Bool)

(assert (=> b!670001 (=> (not res!436925) (not e!383111))))

(assert (=> b!670001 (= res!436925 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60112 res!436942) b!669985))

(assert (= (and b!669985 res!436929) b!669992))

(assert (= (and b!669992 res!436941) b!669997))

(assert (= (and b!669997 res!436928) b!670000))

(assert (= (and b!670000 res!436930) b!669996))

(assert (= (and b!670000 (not res!436933)) b!669978))

(assert (= (and b!669978 res!436924) b!669998))

(assert (= (and b!670000 res!436926) b!669995))

(assert (= (and b!669995 res!436932) b!670001))

(assert (= (and b!670001 res!436925) b!669976))

(assert (= (and b!669976 res!436923) b!669981))

(assert (= (and b!669981 res!436937) b!669979))

(assert (= (and b!669979 res!436939) b!669986))

(assert (= (and b!669986 res!436934) b!669990))

(assert (= (and b!669990 c!76894) b!669994))

(assert (= (and b!669990 (not c!76894)) b!669999))

(assert (= (and b!669990 c!76895) b!669983))

(assert (= (and b!669990 (not c!76895)) b!669977))

(assert (= (and b!669990 (not res!436931)) b!669988))

(assert (= (and b!669988 (not res!436927)) b!669984))

(assert (= (and b!669984 (not res!436922)) b!669987))

(assert (= (and b!669987 (not res!436940)) b!669982))

(assert (= (and b!669982 (not res!436943)) b!669980))

(assert (= (and b!669982 res!436936) b!669993))

(assert (= (and b!669993 (not res!436938)) b!669989))

(assert (= (and b!669982 (not res!436935)) b!669991))

(declare-fun m!639979 () Bool)

(assert (=> start!60112 m!639979))

(declare-fun m!639981 () Bool)

(assert (=> b!669980 m!639981))

(declare-fun m!639983 () Bool)

(assert (=> b!669996 m!639983))

(declare-fun m!639985 () Bool)

(assert (=> b!669995 m!639985))

(declare-fun m!639987 () Bool)

(assert (=> b!669991 m!639987))

(declare-fun m!639989 () Bool)

(assert (=> b!669991 m!639989))

(declare-fun m!639991 () Bool)

(assert (=> b!669979 m!639991))

(assert (=> b!669989 m!639981))

(declare-fun m!639993 () Bool)

(assert (=> b!669981 m!639993))

(declare-fun m!639995 () Bool)

(assert (=> b!669985 m!639995))

(declare-fun m!639997 () Bool)

(assert (=> b!669997 m!639997))

(declare-fun m!639999 () Bool)

(assert (=> b!669992 m!639999))

(declare-fun m!640001 () Bool)

(assert (=> b!669984 m!640001))

(declare-fun m!640003 () Bool)

(assert (=> b!669990 m!640003))

(declare-fun m!640005 () Bool)

(assert (=> b!669990 m!640005))

(declare-fun m!640007 () Bool)

(assert (=> b!669990 m!640007))

(declare-fun m!640009 () Bool)

(assert (=> b!669990 m!640009))

(declare-fun m!640011 () Bool)

(assert (=> b!669990 m!640011))

(declare-fun m!640013 () Bool)

(assert (=> b!669990 m!640013))

(declare-fun m!640015 () Bool)

(assert (=> b!669990 m!640015))

(assert (=> b!669990 m!640007))

(declare-fun m!640017 () Bool)

(assert (=> b!669990 m!640017))

(declare-fun m!640019 () Bool)

(assert (=> b!669990 m!640019))

(declare-fun m!640021 () Bool)

(assert (=> b!669990 m!640021))

(declare-fun m!640023 () Bool)

(assert (=> b!669990 m!640023))

(declare-fun m!640025 () Bool)

(assert (=> b!669990 m!640025))

(declare-fun m!640027 () Bool)

(assert (=> b!669990 m!640027))

(assert (=> b!669998 m!639983))

(declare-fun m!640029 () Bool)

(assert (=> b!669987 m!640029))

(assert (=> b!669983 m!640005))

(assert (=> b!669983 m!640007))

(declare-fun m!640031 () Bool)

(assert (=> b!669983 m!640031))

(declare-fun m!640033 () Bool)

(assert (=> b!669983 m!640033))

(assert (=> b!669983 m!640007))

(assert (=> b!669983 m!640031))

(assert (=> b!669983 m!640023))

(assert (=> b!669983 m!640019))

(declare-fun m!640035 () Bool)

(assert (=> b!669988 m!640035))

(declare-fun m!640037 () Bool)

(assert (=> b!669994 m!640037))

(declare-fun m!640039 () Bool)

(assert (=> b!670001 m!640039))

(push 1)

(assert (not b!670001))

(assert (not b!669984))

(assert (not b!669983))

(assert (not b!669985))

(assert (not start!60112))

(assert (not b!669998))

(assert (not b!669994))

(assert (not b!669980))

(assert (not b!669987))

(assert (not b!669979))

(assert (not b!669997))

(assert (not b!669988))

(assert (not b!669990))

(assert (not b!669995))

(assert (not b!669991))

(assert (not b!669992))

(assert (not b!669996))

(assert (not b!669989))

(assert (not b!669981))

(check-sat)

