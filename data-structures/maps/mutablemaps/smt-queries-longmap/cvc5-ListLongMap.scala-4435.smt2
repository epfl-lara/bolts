; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61602 () Bool)

(assert start!61602)

(declare-fun b!689185 () Bool)

(declare-datatypes ((Unit!24322 0))(
  ( (Unit!24323) )
))
(declare-fun e!392415 () Unit!24322)

(declare-fun Unit!24324 () Unit!24322)

(assert (=> b!689185 (= e!392415 Unit!24324)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39699 0))(
  ( (array!39700 (arr!19017 (Array (_ BitVec 32) (_ BitVec 64))) (size!19398 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39699)

(declare-fun lt!316089 () Unit!24322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39699 (_ BitVec 64) (_ BitVec 32)) Unit!24322)

(assert (=> b!689185 (= lt!316089 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!689185 false))

(declare-fun b!689186 () Bool)

(declare-fun res!453930 () Bool)

(declare-fun e!392410 () Bool)

(assert (=> b!689186 (=> (not res!453930) (not e!392410))))

(declare-datatypes ((List!13111 0))(
  ( (Nil!13108) (Cons!13107 (h!14152 (_ BitVec 64)) (t!19383 List!13111)) )
))
(declare-fun arrayNoDuplicates!0 (array!39699 (_ BitVec 32) List!13111) Bool)

(assert (=> b!689186 (= res!453930 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13108))))

(declare-fun res!453921 () Bool)

(assert (=> start!61602 (=> (not res!453921) (not e!392410))))

(assert (=> start!61602 (= res!453921 (and (bvslt (size!19398 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19398 a!3626))))))

(assert (=> start!61602 e!392410))

(assert (=> start!61602 true))

(declare-fun array_inv!14791 (array!39699) Bool)

(assert (=> start!61602 (array_inv!14791 a!3626)))

(declare-fun b!689187 () Bool)

(declare-fun res!453929 () Bool)

(declare-fun e!392413 () Bool)

(assert (=> b!689187 (=> res!453929 e!392413)))

(declare-fun lt!316091 () List!13111)

(declare-fun contains!3654 (List!13111 (_ BitVec 64)) Bool)

(assert (=> b!689187 (= res!453929 (contains!3654 lt!316091 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689188 () Bool)

(declare-fun res!453917 () Bool)

(assert (=> b!689188 (=> res!453917 e!392413)))

(assert (=> b!689188 (= res!453917 (contains!3654 lt!316091 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689189 () Bool)

(declare-fun Unit!24325 () Unit!24322)

(assert (=> b!689189 (= e!392415 Unit!24325)))

(declare-fun b!689190 () Bool)

(declare-fun e!392412 () Bool)

(declare-fun e!392419 () Bool)

(assert (=> b!689190 (= e!392412 e!392419)))

(declare-fun res!453912 () Bool)

(assert (=> b!689190 (=> (not res!453912) (not e!392419))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689190 (= res!453912 (bvsle from!3004 i!1382))))

(declare-fun b!689191 () Bool)

(declare-fun res!453927 () Bool)

(assert (=> b!689191 (=> (not res!453927) (not e!392410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689191 (= res!453927 (validKeyInArray!0 k!2843))))

(declare-fun b!689192 () Bool)

(declare-fun e!392411 () Bool)

(declare-fun acc!681 () List!13111)

(assert (=> b!689192 (= e!392411 (contains!3654 acc!681 k!2843))))

(declare-fun b!689193 () Bool)

(declare-fun res!453923 () Bool)

(assert (=> b!689193 (=> res!453923 e!392413)))

(declare-fun e!392417 () Bool)

(assert (=> b!689193 (= res!453923 e!392417)))

(declare-fun res!453916 () Bool)

(assert (=> b!689193 (=> (not res!453916) (not e!392417))))

(declare-fun e!392414 () Bool)

(assert (=> b!689193 (= res!453916 e!392414)))

(declare-fun res!453926 () Bool)

(assert (=> b!689193 (=> res!453926 e!392414)))

(assert (=> b!689193 (= res!453926 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689194 () Bool)

(declare-fun res!453919 () Bool)

(assert (=> b!689194 (=> (not res!453919) (not e!392410))))

(declare-fun noDuplicate!901 (List!13111) Bool)

(assert (=> b!689194 (= res!453919 (noDuplicate!901 acc!681))))

(declare-fun b!689195 () Bool)

(declare-fun e!392418 () Unit!24322)

(declare-fun lt!316088 () Unit!24322)

(assert (=> b!689195 (= e!392418 lt!316088)))

(declare-fun lt!316082 () Unit!24322)

(declare-fun lemmaListSubSeqRefl!0 (List!13111) Unit!24322)

(assert (=> b!689195 (= lt!316082 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!239 (List!13111 List!13111) Bool)

(assert (=> b!689195 (subseq!239 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39699 List!13111 List!13111 (_ BitVec 32)) Unit!24322)

(declare-fun $colon$colon!403 (List!13111 (_ BitVec 64)) List!13111)

(assert (=> b!689195 (= lt!316088 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!403 acc!681 (select (arr!19017 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689195 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689196 () Bool)

(declare-fun res!453915 () Bool)

(assert (=> b!689196 (=> (not res!453915) (not e!392410))))

(assert (=> b!689196 (= res!453915 (not (contains!3654 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689197 () Bool)

(declare-fun res!453913 () Bool)

(assert (=> b!689197 (=> (not res!453913) (not e!392410))))

(assert (=> b!689197 (= res!453913 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19398 a!3626))))))

(declare-fun b!689198 () Bool)

(declare-fun e!392416 () Bool)

(assert (=> b!689198 (= e!392416 (contains!3654 lt!316091 k!2843))))

(declare-fun b!689199 () Bool)

(assert (=> b!689199 (= e!392419 (not (contains!3654 acc!681 k!2843)))))

(declare-fun b!689200 () Bool)

(assert (=> b!689200 (= e!392413 true)))

(declare-fun lt!316090 () array!39699)

(assert (=> b!689200 (arrayNoDuplicates!0 lt!316090 (bvadd #b00000000000000000000000000000001 from!3004) lt!316091)))

(declare-fun lt!316087 () Unit!24322)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39699 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13111) Unit!24322)

(assert (=> b!689200 (= lt!316087 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316091))))

(declare-fun b!689201 () Bool)

(declare-fun res!453911 () Bool)

(assert (=> b!689201 (=> (not res!453911) (not e!392410))))

(declare-fun arrayContainsKey!0 (array!39699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689201 (= res!453911 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689202 () Bool)

(assert (=> b!689202 (= e!392410 (not e!392413))))

(declare-fun res!453920 () Bool)

(assert (=> b!689202 (=> res!453920 e!392413)))

(assert (=> b!689202 (= res!453920 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689202 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316091)))

(declare-fun lt!316083 () Unit!24322)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39699 (_ BitVec 64) (_ BitVec 32) List!13111 List!13111) Unit!24322)

(assert (=> b!689202 (= lt!316083 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316091))))

(declare-fun -!204 (List!13111 (_ BitVec 64)) List!13111)

(assert (=> b!689202 (= (-!204 lt!316091 k!2843) acc!681)))

(assert (=> b!689202 (= lt!316091 ($colon$colon!403 acc!681 k!2843))))

(declare-fun lt!316092 () Unit!24322)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13111) Unit!24322)

(assert (=> b!689202 (= lt!316092 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!689202 (subseq!239 acc!681 acc!681)))

(declare-fun lt!316086 () Unit!24322)

(assert (=> b!689202 (= lt!316086 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689202 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316085 () Unit!24322)

(assert (=> b!689202 (= lt!316085 e!392418)))

(declare-fun c!78005 () Bool)

(assert (=> b!689202 (= c!78005 (validKeyInArray!0 (select (arr!19017 a!3626) from!3004)))))

(declare-fun lt!316084 () Unit!24322)

(assert (=> b!689202 (= lt!316084 e!392415)))

(declare-fun c!78004 () Bool)

(assert (=> b!689202 (= c!78004 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689202 (arrayContainsKey!0 lt!316090 k!2843 from!3004)))

(assert (=> b!689202 (= lt!316090 (array!39700 (store (arr!19017 a!3626) i!1382 k!2843) (size!19398 a!3626)))))

(declare-fun b!689203 () Bool)

(assert (=> b!689203 (= e!392417 e!392416)))

(declare-fun res!453918 () Bool)

(assert (=> b!689203 (=> res!453918 e!392416)))

(assert (=> b!689203 (= res!453918 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689204 () Bool)

(declare-fun res!453931 () Bool)

(assert (=> b!689204 (=> (not res!453931) (not e!392410))))

(assert (=> b!689204 (= res!453931 e!392412)))

(declare-fun res!453922 () Bool)

(assert (=> b!689204 (=> res!453922 e!392412)))

(assert (=> b!689204 (= res!453922 e!392411)))

(declare-fun res!453924 () Bool)

(assert (=> b!689204 (=> (not res!453924) (not e!392411))))

(assert (=> b!689204 (= res!453924 (bvsgt from!3004 i!1382))))

(declare-fun b!689205 () Bool)

(declare-fun res!453925 () Bool)

(assert (=> b!689205 (=> res!453925 e!392413)))

(assert (=> b!689205 (= res!453925 (not (noDuplicate!901 lt!316091)))))

(declare-fun b!689206 () Bool)

(assert (=> b!689206 (= e!392414 (not (contains!3654 lt!316091 k!2843)))))

(declare-fun b!689207 () Bool)

(declare-fun res!453932 () Bool)

(assert (=> b!689207 (=> (not res!453932) (not e!392410))))

(assert (=> b!689207 (= res!453932 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689208 () Bool)

(declare-fun res!453914 () Bool)

(assert (=> b!689208 (=> (not res!453914) (not e!392410))))

(assert (=> b!689208 (= res!453914 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19398 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689209 () Bool)

(declare-fun res!453928 () Bool)

(assert (=> b!689209 (=> (not res!453928) (not e!392410))))

(assert (=> b!689209 (= res!453928 (not (contains!3654 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689210 () Bool)

(declare-fun Unit!24326 () Unit!24322)

(assert (=> b!689210 (= e!392418 Unit!24326)))

(assert (= (and start!61602 res!453921) b!689194))

(assert (= (and b!689194 res!453919) b!689209))

(assert (= (and b!689209 res!453928) b!689196))

(assert (= (and b!689196 res!453915) b!689204))

(assert (= (and b!689204 res!453924) b!689192))

(assert (= (and b!689204 (not res!453922)) b!689190))

(assert (= (and b!689190 res!453912) b!689199))

(assert (= (and b!689204 res!453931) b!689186))

(assert (= (and b!689186 res!453930) b!689207))

(assert (= (and b!689207 res!453932) b!689197))

(assert (= (and b!689197 res!453913) b!689191))

(assert (= (and b!689191 res!453927) b!689201))

(assert (= (and b!689201 res!453911) b!689208))

(assert (= (and b!689208 res!453914) b!689202))

(assert (= (and b!689202 c!78004) b!689185))

(assert (= (and b!689202 (not c!78004)) b!689189))

(assert (= (and b!689202 c!78005) b!689195))

(assert (= (and b!689202 (not c!78005)) b!689210))

(assert (= (and b!689202 (not res!453920)) b!689205))

(assert (= (and b!689205 (not res!453925)) b!689188))

(assert (= (and b!689188 (not res!453917)) b!689187))

(assert (= (and b!689187 (not res!453929)) b!689193))

(assert (= (and b!689193 (not res!453926)) b!689206))

(assert (= (and b!689193 res!453916) b!689203))

(assert (= (and b!689203 (not res!453918)) b!689198))

(assert (= (and b!689193 (not res!453923)) b!689200))

(declare-fun m!652923 () Bool)

(assert (=> b!689200 m!652923))

(declare-fun m!652925 () Bool)

(assert (=> b!689200 m!652925))

(declare-fun m!652927 () Bool)

(assert (=> b!689196 m!652927))

(declare-fun m!652929 () Bool)

(assert (=> b!689187 m!652929))

(declare-fun m!652931 () Bool)

(assert (=> b!689206 m!652931))

(declare-fun m!652933 () Bool)

(assert (=> b!689201 m!652933))

(declare-fun m!652935 () Bool)

(assert (=> b!689188 m!652935))

(declare-fun m!652937 () Bool)

(assert (=> b!689191 m!652937))

(declare-fun m!652939 () Bool)

(assert (=> b!689207 m!652939))

(declare-fun m!652941 () Bool)

(assert (=> b!689205 m!652941))

(declare-fun m!652943 () Bool)

(assert (=> b!689209 m!652943))

(declare-fun m!652945 () Bool)

(assert (=> b!689202 m!652945))

(declare-fun m!652947 () Bool)

(assert (=> b!689202 m!652947))

(declare-fun m!652949 () Bool)

(assert (=> b!689202 m!652949))

(declare-fun m!652951 () Bool)

(assert (=> b!689202 m!652951))

(declare-fun m!652953 () Bool)

(assert (=> b!689202 m!652953))

(declare-fun m!652955 () Bool)

(assert (=> b!689202 m!652955))

(declare-fun m!652957 () Bool)

(assert (=> b!689202 m!652957))

(declare-fun m!652959 () Bool)

(assert (=> b!689202 m!652959))

(declare-fun m!652961 () Bool)

(assert (=> b!689202 m!652961))

(declare-fun m!652963 () Bool)

(assert (=> b!689202 m!652963))

(declare-fun m!652965 () Bool)

(assert (=> b!689202 m!652965))

(declare-fun m!652967 () Bool)

(assert (=> b!689202 m!652967))

(declare-fun m!652969 () Bool)

(assert (=> b!689202 m!652969))

(assert (=> b!689202 m!652963))

(declare-fun m!652971 () Bool)

(assert (=> b!689194 m!652971))

(declare-fun m!652973 () Bool)

(assert (=> b!689186 m!652973))

(declare-fun m!652975 () Bool)

(assert (=> start!61602 m!652975))

(assert (=> b!689198 m!652931))

(declare-fun m!652977 () Bool)

(assert (=> b!689185 m!652977))

(assert (=> b!689195 m!652947))

(assert (=> b!689195 m!652963))

(declare-fun m!652979 () Bool)

(assert (=> b!689195 m!652979))

(declare-fun m!652981 () Bool)

(assert (=> b!689195 m!652981))

(assert (=> b!689195 m!652963))

(assert (=> b!689195 m!652979))

(assert (=> b!689195 m!652957))

(assert (=> b!689195 m!652967))

(declare-fun m!652983 () Bool)

(assert (=> b!689192 m!652983))

(assert (=> b!689199 m!652983))

(push 1)

(assert (not b!689202))

(assert (not start!61602))

(assert (not b!689194))

(assert (not b!689199))

(assert (not b!689192))

(assert (not b!689187))

(assert (not b!689207))

(assert (not b!689188))

(assert (not b!689206))

(assert (not b!689201))

(assert (not b!689186))

(assert (not b!689198))

(assert (not b!689196))

(assert (not b!689209))

(assert (not b!689185))

(assert (not b!689200))

(assert (not b!689205))

(assert (not b!689191))

(assert (not b!689195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

