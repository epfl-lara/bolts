; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61278 () Bool)

(assert start!61278)

(declare-fun b!685944 () Bool)

(declare-fun e!390683 () Bool)

(declare-datatypes ((List!13075 0))(
  ( (Nil!13072) (Cons!13071 (h!14116 (_ BitVec 64)) (t!19338 List!13075)) )
))
(declare-fun acc!681 () List!13075)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3618 (List!13075 (_ BitVec 64)) Bool)

(assert (=> b!685944 (= e!390683 (contains!3618 acc!681 k!2843))))

(declare-fun b!685945 () Bool)

(declare-fun res!451330 () Bool)

(declare-fun e!390679 () Bool)

(assert (=> b!685945 (=> (not res!451330) (not e!390679))))

(declare-datatypes ((array!39618 0))(
  ( (array!39619 (arr!18981 (Array (_ BitVec 32) (_ BitVec 64))) (size!19354 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39618)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39618 (_ BitVec 32) List!13075) Bool)

(assert (=> b!685945 (= res!451330 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685946 () Bool)

(declare-datatypes ((Unit!24142 0))(
  ( (Unit!24143) )
))
(declare-fun e!390680 () Unit!24142)

(declare-fun Unit!24144 () Unit!24142)

(assert (=> b!685946 (= e!390680 Unit!24144)))

(declare-fun b!685947 () Bool)

(declare-fun res!451323 () Bool)

(assert (=> b!685947 (=> (not res!451323) (not e!390679))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!685947 (= res!451323 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19354 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685948 () Bool)

(declare-fun e!390684 () Unit!24142)

(declare-fun Unit!24145 () Unit!24142)

(assert (=> b!685948 (= e!390684 Unit!24145)))

(declare-fun b!685949 () Bool)

(declare-fun res!451321 () Bool)

(assert (=> b!685949 (=> (not res!451321) (not e!390679))))

(declare-fun e!390682 () Bool)

(assert (=> b!685949 (= res!451321 e!390682)))

(declare-fun res!451326 () Bool)

(assert (=> b!685949 (=> res!451326 e!390682)))

(assert (=> b!685949 (= res!451326 e!390683)))

(declare-fun res!451325 () Bool)

(assert (=> b!685949 (=> (not res!451325) (not e!390683))))

(assert (=> b!685949 (= res!451325 (bvsgt from!3004 i!1382))))

(declare-fun b!685950 () Bool)

(declare-fun e!390681 () Bool)

(assert (=> b!685950 (= e!390682 e!390681)))

(declare-fun res!451319 () Bool)

(assert (=> b!685950 (=> (not res!451319) (not e!390681))))

(assert (=> b!685950 (= res!451319 (bvsle from!3004 i!1382))))

(declare-fun b!685951 () Bool)

(declare-fun res!451328 () Bool)

(assert (=> b!685951 (=> (not res!451328) (not e!390679))))

(declare-fun arrayContainsKey!0 (array!39618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685951 (= res!451328 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685952 () Bool)

(declare-fun res!451322 () Bool)

(assert (=> b!685952 (=> (not res!451322) (not e!390679))))

(assert (=> b!685952 (= res!451322 (not (contains!3618 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685953 () Bool)

(declare-fun Unit!24146 () Unit!24142)

(assert (=> b!685953 (= e!390684 Unit!24146)))

(declare-fun lt!314843 () Unit!24142)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39618 (_ BitVec 64) (_ BitVec 32)) Unit!24142)

(assert (=> b!685953 (= lt!314843 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!685953 false))

(declare-fun b!685954 () Bool)

(declare-fun res!451318 () Bool)

(assert (=> b!685954 (=> (not res!451318) (not e!390679))))

(declare-fun noDuplicate!865 (List!13075) Bool)

(assert (=> b!685954 (= res!451318 (noDuplicate!865 acc!681))))

(declare-fun b!685955 () Bool)

(assert (=> b!685955 (= e!390679 (not true))))

(declare-fun lt!314846 () List!13075)

(assert (=> b!685955 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314846)))

(declare-fun lt!314845 () Unit!24142)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39618 (_ BitVec 64) (_ BitVec 32) List!13075 List!13075) Unit!24142)

(assert (=> b!685955 (= lt!314845 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314846))))

(declare-fun -!168 (List!13075 (_ BitVec 64)) List!13075)

(assert (=> b!685955 (= (-!168 lt!314846 k!2843) acc!681)))

(declare-fun $colon$colon!367 (List!13075 (_ BitVec 64)) List!13075)

(assert (=> b!685955 (= lt!314846 ($colon$colon!367 acc!681 k!2843))))

(declare-fun lt!314840 () Unit!24142)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13075) Unit!24142)

(assert (=> b!685955 (= lt!314840 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!203 (List!13075 List!13075) Bool)

(assert (=> b!685955 (subseq!203 acc!681 acc!681)))

(declare-fun lt!314844 () Unit!24142)

(declare-fun lemmaListSubSeqRefl!0 (List!13075) Unit!24142)

(assert (=> b!685955 (= lt!314844 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685955 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314842 () Unit!24142)

(assert (=> b!685955 (= lt!314842 e!390680)))

(declare-fun c!77680 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685955 (= c!77680 (validKeyInArray!0 (select (arr!18981 a!3626) from!3004)))))

(declare-fun lt!314839 () Unit!24142)

(assert (=> b!685955 (= lt!314839 e!390684)))

(declare-fun c!77681 () Bool)

(assert (=> b!685955 (= c!77681 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685955 (arrayContainsKey!0 (array!39619 (store (arr!18981 a!3626) i!1382 k!2843) (size!19354 a!3626)) k!2843 from!3004)))

(declare-fun res!451327 () Bool)

(assert (=> start!61278 (=> (not res!451327) (not e!390679))))

(assert (=> start!61278 (= res!451327 (and (bvslt (size!19354 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19354 a!3626))))))

(assert (=> start!61278 e!390679))

(assert (=> start!61278 true))

(declare-fun array_inv!14755 (array!39618) Bool)

(assert (=> start!61278 (array_inv!14755 a!3626)))

(declare-fun b!685956 () Bool)

(declare-fun res!451331 () Bool)

(assert (=> b!685956 (=> (not res!451331) (not e!390679))))

(assert (=> b!685956 (= res!451331 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19354 a!3626))))))

(declare-fun b!685957 () Bool)

(declare-fun lt!314847 () Unit!24142)

(assert (=> b!685957 (= e!390680 lt!314847)))

(declare-fun lt!314841 () Unit!24142)

(assert (=> b!685957 (= lt!314841 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685957 (subseq!203 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39618 List!13075 List!13075 (_ BitVec 32)) Unit!24142)

(assert (=> b!685957 (= lt!314847 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!367 acc!681 (select (arr!18981 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685957 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685958 () Bool)

(declare-fun res!451324 () Bool)

(assert (=> b!685958 (=> (not res!451324) (not e!390679))))

(assert (=> b!685958 (= res!451324 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13072))))

(declare-fun b!685959 () Bool)

(assert (=> b!685959 (= e!390681 (not (contains!3618 acc!681 k!2843)))))

(declare-fun b!685960 () Bool)

(declare-fun res!451329 () Bool)

(assert (=> b!685960 (=> (not res!451329) (not e!390679))))

(assert (=> b!685960 (= res!451329 (validKeyInArray!0 k!2843))))

(declare-fun b!685961 () Bool)

(declare-fun res!451320 () Bool)

(assert (=> b!685961 (=> (not res!451320) (not e!390679))))

(assert (=> b!685961 (= res!451320 (not (contains!3618 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61278 res!451327) b!685954))

(assert (= (and b!685954 res!451318) b!685952))

(assert (= (and b!685952 res!451322) b!685961))

(assert (= (and b!685961 res!451320) b!685949))

(assert (= (and b!685949 res!451325) b!685944))

(assert (= (and b!685949 (not res!451326)) b!685950))

(assert (= (and b!685950 res!451319) b!685959))

(assert (= (and b!685949 res!451321) b!685958))

(assert (= (and b!685958 res!451324) b!685945))

(assert (= (and b!685945 res!451330) b!685956))

(assert (= (and b!685956 res!451331) b!685960))

(assert (= (and b!685960 res!451329) b!685951))

(assert (= (and b!685951 res!451328) b!685947))

(assert (= (and b!685947 res!451323) b!685955))

(assert (= (and b!685955 c!77681) b!685953))

(assert (= (and b!685955 (not c!77681)) b!685948))

(assert (= (and b!685955 c!77680) b!685957))

(assert (= (and b!685955 (not c!77680)) b!685946))

(declare-fun m!650133 () Bool)

(assert (=> b!685945 m!650133))

(declare-fun m!650135 () Bool)

(assert (=> b!685957 m!650135))

(declare-fun m!650137 () Bool)

(assert (=> b!685957 m!650137))

(declare-fun m!650139 () Bool)

(assert (=> b!685957 m!650139))

(declare-fun m!650141 () Bool)

(assert (=> b!685957 m!650141))

(assert (=> b!685957 m!650137))

(assert (=> b!685957 m!650139))

(declare-fun m!650143 () Bool)

(assert (=> b!685957 m!650143))

(declare-fun m!650145 () Bool)

(assert (=> b!685957 m!650145))

(assert (=> b!685955 m!650135))

(declare-fun m!650147 () Bool)

(assert (=> b!685955 m!650147))

(declare-fun m!650149 () Bool)

(assert (=> b!685955 m!650149))

(assert (=> b!685955 m!650143))

(declare-fun m!650151 () Bool)

(assert (=> b!685955 m!650151))

(declare-fun m!650153 () Bool)

(assert (=> b!685955 m!650153))

(assert (=> b!685955 m!650137))

(declare-fun m!650155 () Bool)

(assert (=> b!685955 m!650155))

(assert (=> b!685955 m!650137))

(declare-fun m!650157 () Bool)

(assert (=> b!685955 m!650157))

(declare-fun m!650159 () Bool)

(assert (=> b!685955 m!650159))

(declare-fun m!650161 () Bool)

(assert (=> b!685955 m!650161))

(declare-fun m!650163 () Bool)

(assert (=> b!685955 m!650163))

(assert (=> b!685955 m!650145))

(declare-fun m!650165 () Bool)

(assert (=> start!61278 m!650165))

(declare-fun m!650167 () Bool)

(assert (=> b!685944 m!650167))

(declare-fun m!650169 () Bool)

(assert (=> b!685960 m!650169))

(assert (=> b!685959 m!650167))

(declare-fun m!650171 () Bool)

(assert (=> b!685951 m!650171))

(declare-fun m!650173 () Bool)

(assert (=> b!685954 m!650173))

(declare-fun m!650175 () Bool)

(assert (=> b!685958 m!650175))

(declare-fun m!650177 () Bool)

(assert (=> b!685953 m!650177))

(declare-fun m!650179 () Bool)

(assert (=> b!685961 m!650179))

(declare-fun m!650181 () Bool)

(assert (=> b!685952 m!650181))

(push 1)

(assert (not b!685953))

(assert (not b!685958))

(assert (not b!685959))

(assert (not b!685961))

(assert (not start!61278))

(assert (not b!685952))

(assert (not b!685954))

(assert (not b!685944))

(assert (not b!685957))

(assert (not b!685960))

(assert (not b!685951))

(assert (not b!685945))

(assert (not b!685955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

