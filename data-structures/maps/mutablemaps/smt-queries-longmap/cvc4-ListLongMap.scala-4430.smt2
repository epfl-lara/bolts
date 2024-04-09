; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61576 () Bool)

(assert start!61576)

(declare-fun b!688199 () Bool)

(declare-fun e!391986 () Bool)

(declare-fun e!391983 () Bool)

(assert (=> b!688199 (= e!391986 (not e!391983))))

(declare-fun res!453081 () Bool)

(assert (=> b!688199 (=> res!453081 e!391983)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!688199 (= res!453081 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39673 0))(
  ( (array!39674 (arr!19004 (Array (_ BitVec 32) (_ BitVec 64))) (size!19385 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39673)

(declare-datatypes ((List!13098 0))(
  ( (Nil!13095) (Cons!13094 (h!14139 (_ BitVec 64)) (t!19370 List!13098)) )
))
(declare-fun lt!315707 () List!13098)

(declare-fun arrayNoDuplicates!0 (array!39673 (_ BitVec 32) List!13098) Bool)

(assert (=> b!688199 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315707)))

(declare-fun acc!681 () List!13098)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((Unit!24257 0))(
  ( (Unit!24258) )
))
(declare-fun lt!315705 () Unit!24257)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39673 (_ BitVec 64) (_ BitVec 32) List!13098 List!13098) Unit!24257)

(assert (=> b!688199 (= lt!315705 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315707))))

(declare-fun -!191 (List!13098 (_ BitVec 64)) List!13098)

(assert (=> b!688199 (= (-!191 lt!315707 k!2843) acc!681)))

(declare-fun $colon$colon!390 (List!13098 (_ BitVec 64)) List!13098)

(assert (=> b!688199 (= lt!315707 ($colon$colon!390 acc!681 k!2843))))

(declare-fun lt!315699 () Unit!24257)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13098) Unit!24257)

(assert (=> b!688199 (= lt!315699 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!226 (List!13098 List!13098) Bool)

(assert (=> b!688199 (subseq!226 acc!681 acc!681)))

(declare-fun lt!315700 () Unit!24257)

(declare-fun lemmaListSubSeqRefl!0 (List!13098) Unit!24257)

(assert (=> b!688199 (= lt!315700 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688199 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315702 () Unit!24257)

(declare-fun e!391990 () Unit!24257)

(assert (=> b!688199 (= lt!315702 e!391990)))

(declare-fun c!77926 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688199 (= c!77926 (validKeyInArray!0 (select (arr!19004 a!3626) from!3004)))))

(declare-fun lt!315708 () Unit!24257)

(declare-fun e!391982 () Unit!24257)

(assert (=> b!688199 (= lt!315708 e!391982)))

(declare-fun c!77927 () Bool)

(declare-fun arrayContainsKey!0 (array!39673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688199 (= c!77927 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688199 (arrayContainsKey!0 (array!39674 (store (arr!19004 a!3626) i!1382 k!2843) (size!19385 a!3626)) k!2843 from!3004)))

(declare-fun b!688200 () Bool)

(declare-fun e!391987 () Bool)

(declare-fun contains!3641 (List!13098 (_ BitVec 64)) Bool)

(assert (=> b!688200 (= e!391987 (contains!3641 lt!315707 k!2843))))

(declare-fun b!688201 () Bool)

(declare-fun res!453082 () Bool)

(assert (=> b!688201 (=> (not res!453082) (not e!391986))))

(assert (=> b!688201 (= res!453082 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688202 () Bool)

(declare-fun e!391984 () Bool)

(assert (=> b!688202 (= e!391984 (contains!3641 acc!681 k!2843))))

(declare-fun b!688203 () Bool)

(declare-fun res!453086 () Bool)

(assert (=> b!688203 (=> (not res!453086) (not e!391986))))

(assert (=> b!688203 (= res!453086 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13095))))

(declare-fun b!688204 () Bool)

(declare-fun res!453099 () Bool)

(assert (=> b!688204 (=> res!453099 e!391983)))

(declare-fun noDuplicate!888 (List!13098) Bool)

(assert (=> b!688204 (= res!453099 (not (noDuplicate!888 lt!315707)))))

(declare-fun b!688205 () Bool)

(declare-fun Unit!24259 () Unit!24257)

(assert (=> b!688205 (= e!391982 Unit!24259)))

(declare-fun lt!315701 () Unit!24257)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39673 (_ BitVec 64) (_ BitVec 32)) Unit!24257)

(assert (=> b!688205 (= lt!315701 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688205 false))

(declare-fun b!688207 () Bool)

(declare-fun res!453093 () Bool)

(assert (=> b!688207 (=> (not res!453093) (not e!391986))))

(assert (=> b!688207 (= res!453093 (noDuplicate!888 acc!681))))

(declare-fun b!688208 () Bool)

(declare-fun e!391981 () Bool)

(assert (=> b!688208 (= e!391981 (not (contains!3641 acc!681 k!2843)))))

(declare-fun b!688209 () Bool)

(declare-fun e!391985 () Bool)

(assert (=> b!688209 (= e!391985 (not (contains!3641 lt!315707 k!2843)))))

(declare-fun b!688210 () Bool)

(declare-fun res!453096 () Bool)

(assert (=> b!688210 (=> (not res!453096) (not e!391986))))

(assert (=> b!688210 (= res!453096 (not (contains!3641 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688211 () Bool)

(declare-fun res!453100 () Bool)

(assert (=> b!688211 (=> (not res!453100) (not e!391986))))

(assert (=> b!688211 (= res!453100 (not (contains!3641 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688212 () Bool)

(declare-fun e!391989 () Bool)

(assert (=> b!688212 (= e!391989 e!391985)))

(declare-fun res!453085 () Bool)

(assert (=> b!688212 (=> (not res!453085) (not e!391985))))

(assert (=> b!688212 (= res!453085 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688213 () Bool)

(declare-fun res!453091 () Bool)

(assert (=> b!688213 (=> (not res!453091) (not e!391986))))

(assert (=> b!688213 (= res!453091 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19385 a!3626))))))

(declare-fun b!688214 () Bool)

(declare-fun res!453098 () Bool)

(assert (=> b!688214 (=> (not res!453098) (not e!391986))))

(assert (=> b!688214 (= res!453098 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688215 () Bool)

(declare-fun res!453083 () Bool)

(assert (=> b!688215 (=> (not res!453083) (not e!391986))))

(assert (=> b!688215 (= res!453083 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19385 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688216 () Bool)

(declare-fun Unit!24260 () Unit!24257)

(assert (=> b!688216 (= e!391990 Unit!24260)))

(declare-fun b!688217 () Bool)

(declare-fun res!453088 () Bool)

(assert (=> b!688217 (=> (not res!453088) (not e!391986))))

(declare-fun e!391988 () Bool)

(assert (=> b!688217 (= res!453088 e!391988)))

(declare-fun res!453089 () Bool)

(assert (=> b!688217 (=> res!453089 e!391988)))

(assert (=> b!688217 (= res!453089 e!391984)))

(declare-fun res!453095 () Bool)

(assert (=> b!688217 (=> (not res!453095) (not e!391984))))

(assert (=> b!688217 (= res!453095 (bvsgt from!3004 i!1382))))

(declare-fun b!688218 () Bool)

(declare-fun res!453097 () Bool)

(assert (=> b!688218 (=> res!453097 e!391983)))

(assert (=> b!688218 (= res!453097 (contains!3641 lt!315707 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688219 () Bool)

(declare-fun res!453101 () Bool)

(assert (=> b!688219 (=> (not res!453101) (not e!391986))))

(assert (=> b!688219 (= res!453101 (validKeyInArray!0 k!2843))))

(declare-fun b!688206 () Bool)

(declare-fun Unit!24261 () Unit!24257)

(assert (=> b!688206 (= e!391982 Unit!24261)))

(declare-fun res!453094 () Bool)

(assert (=> start!61576 (=> (not res!453094) (not e!391986))))

(assert (=> start!61576 (= res!453094 (and (bvslt (size!19385 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19385 a!3626))))))

(assert (=> start!61576 e!391986))

(assert (=> start!61576 true))

(declare-fun array_inv!14778 (array!39673) Bool)

(assert (=> start!61576 (array_inv!14778 a!3626)))

(declare-fun b!688220 () Bool)

(assert (=> b!688220 (= e!391988 e!391981)))

(declare-fun res!453084 () Bool)

(assert (=> b!688220 (=> (not res!453084) (not e!391981))))

(assert (=> b!688220 (= res!453084 (bvsle from!3004 i!1382))))

(declare-fun b!688221 () Bool)

(assert (=> b!688221 (= e!391983 true)))

(declare-fun lt!315706 () Bool)

(assert (=> b!688221 (= lt!315706 e!391989)))

(declare-fun res!453092 () Bool)

(assert (=> b!688221 (=> res!453092 e!391989)))

(assert (=> b!688221 (= res!453092 e!391987)))

(declare-fun res!453087 () Bool)

(assert (=> b!688221 (=> (not res!453087) (not e!391987))))

(assert (=> b!688221 (= res!453087 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688222 () Bool)

(declare-fun res!453090 () Bool)

(assert (=> b!688222 (=> res!453090 e!391983)))

(assert (=> b!688222 (= res!453090 (contains!3641 lt!315707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688223 () Bool)

(declare-fun lt!315703 () Unit!24257)

(assert (=> b!688223 (= e!391990 lt!315703)))

(declare-fun lt!315704 () Unit!24257)

(assert (=> b!688223 (= lt!315704 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688223 (subseq!226 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39673 List!13098 List!13098 (_ BitVec 32)) Unit!24257)

(assert (=> b!688223 (= lt!315703 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!390 acc!681 (select (arr!19004 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688223 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!61576 res!453094) b!688207))

(assert (= (and b!688207 res!453093) b!688210))

(assert (= (and b!688210 res!453096) b!688211))

(assert (= (and b!688211 res!453100) b!688217))

(assert (= (and b!688217 res!453095) b!688202))

(assert (= (and b!688217 (not res!453089)) b!688220))

(assert (= (and b!688220 res!453084) b!688208))

(assert (= (and b!688217 res!453088) b!688203))

(assert (= (and b!688203 res!453086) b!688214))

(assert (= (and b!688214 res!453098) b!688213))

(assert (= (and b!688213 res!453091) b!688219))

(assert (= (and b!688219 res!453101) b!688201))

(assert (= (and b!688201 res!453082) b!688215))

(assert (= (and b!688215 res!453083) b!688199))

(assert (= (and b!688199 c!77927) b!688205))

(assert (= (and b!688199 (not c!77927)) b!688206))

(assert (= (and b!688199 c!77926) b!688223))

(assert (= (and b!688199 (not c!77926)) b!688216))

(assert (= (and b!688199 (not res!453081)) b!688204))

(assert (= (and b!688204 (not res!453099)) b!688222))

(assert (= (and b!688222 (not res!453090)) b!688218))

(assert (= (and b!688218 (not res!453097)) b!688221))

(assert (= (and b!688221 res!453087) b!688200))

(assert (= (and b!688221 (not res!453092)) b!688212))

(assert (= (and b!688212 res!453085) b!688209))

(declare-fun m!652169 () Bool)

(assert (=> b!688199 m!652169))

(declare-fun m!652171 () Bool)

(assert (=> b!688199 m!652171))

(declare-fun m!652173 () Bool)

(assert (=> b!688199 m!652173))

(declare-fun m!652175 () Bool)

(assert (=> b!688199 m!652175))

(declare-fun m!652177 () Bool)

(assert (=> b!688199 m!652177))

(declare-fun m!652179 () Bool)

(assert (=> b!688199 m!652179))

(assert (=> b!688199 m!652171))

(declare-fun m!652181 () Bool)

(assert (=> b!688199 m!652181))

(declare-fun m!652183 () Bool)

(assert (=> b!688199 m!652183))

(declare-fun m!652185 () Bool)

(assert (=> b!688199 m!652185))

(declare-fun m!652187 () Bool)

(assert (=> b!688199 m!652187))

(declare-fun m!652189 () Bool)

(assert (=> b!688199 m!652189))

(declare-fun m!652191 () Bool)

(assert (=> b!688199 m!652191))

(declare-fun m!652193 () Bool)

(assert (=> b!688199 m!652193))

(declare-fun m!652195 () Bool)

(assert (=> b!688208 m!652195))

(declare-fun m!652197 () Bool)

(assert (=> b!688211 m!652197))

(declare-fun m!652199 () Bool)

(assert (=> b!688219 m!652199))

(declare-fun m!652201 () Bool)

(assert (=> b!688200 m!652201))

(declare-fun m!652203 () Bool)

(assert (=> b!688222 m!652203))

(declare-fun m!652205 () Bool)

(assert (=> b!688201 m!652205))

(declare-fun m!652207 () Bool)

(assert (=> b!688218 m!652207))

(assert (=> b!688202 m!652195))

(declare-fun m!652209 () Bool)

(assert (=> b!688214 m!652209))

(declare-fun m!652211 () Bool)

(assert (=> b!688203 m!652211))

(declare-fun m!652213 () Bool)

(assert (=> start!61576 m!652213))

(declare-fun m!652215 () Bool)

(assert (=> b!688210 m!652215))

(assert (=> b!688223 m!652169))

(assert (=> b!688223 m!652171))

(declare-fun m!652217 () Bool)

(assert (=> b!688223 m!652217))

(declare-fun m!652219 () Bool)

(assert (=> b!688223 m!652219))

(assert (=> b!688223 m!652171))

(assert (=> b!688223 m!652217))

(assert (=> b!688223 m!652177))

(assert (=> b!688223 m!652193))

(declare-fun m!652221 () Bool)

(assert (=> b!688204 m!652221))

(declare-fun m!652223 () Bool)

(assert (=> b!688205 m!652223))

(assert (=> b!688209 m!652201))

(declare-fun m!652225 () Bool)

(assert (=> b!688207 m!652225))

(push 1)

(assert (not b!688223))

(assert (not b!688218))

(assert (not b!688207))

(assert (not b!688214))

(assert (not b!688222))

(assert (not b!688210))

(assert (not b!688199))

(assert (not b!688219))

(assert (not b!688200))

(assert (not b!688203))

(assert (not b!688202))

(assert (not b!688208))

(assert (not b!688209))

(assert (not b!688201))

(assert (not b!688204))

(assert (not b!688211))

(assert (not b!688205))

