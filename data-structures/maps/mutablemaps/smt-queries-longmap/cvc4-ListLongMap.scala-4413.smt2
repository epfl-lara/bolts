; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60910 () Bool)

(assert start!60910)

(declare-fun b!683114 () Bool)

(declare-fun res!449092 () Bool)

(declare-fun e!389104 () Bool)

(assert (=> b!683114 (=> (not res!449092) (not e!389104))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39550 0))(
  ( (array!39551 (arr!18953 (Array (_ BitVec 32) (_ BitVec 64))) (size!19317 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39550)

(assert (=> b!683114 (= res!449092 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19317 a!3626))))))

(declare-fun b!683116 () Bool)

(declare-fun res!449098 () Bool)

(assert (=> b!683116 (=> (not res!449098) (not e!389104))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13047 0))(
  ( (Nil!13044) (Cons!13043 (h!14088 (_ BitVec 64)) (t!19298 List!13047)) )
))
(declare-fun acc!681 () List!13047)

(declare-fun arrayNoDuplicates!0 (array!39550 (_ BitVec 32) List!13047) Bool)

(assert (=> b!683116 (= res!449098 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683117 () Bool)

(declare-datatypes ((Unit!24002 0))(
  ( (Unit!24003) )
))
(declare-fun e!389107 () Unit!24002)

(declare-fun Unit!24004 () Unit!24002)

(assert (=> b!683117 (= e!389107 Unit!24004)))

(declare-fun b!683118 () Bool)

(declare-fun e!389105 () Bool)

(assert (=> b!683118 (= e!389104 (not e!389105))))

(declare-fun res!449101 () Bool)

(assert (=> b!683118 (=> res!449101 e!389105)))

(assert (=> b!683118 (= res!449101 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!313809 () List!13047)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun -!140 (List!13047 (_ BitVec 64)) List!13047)

(assert (=> b!683118 (= (-!140 lt!313809 k!2843) acc!681)))

(declare-fun $colon$colon!339 (List!13047 (_ BitVec 64)) List!13047)

(assert (=> b!683118 (= lt!313809 ($colon$colon!339 acc!681 k!2843))))

(declare-fun lt!313808 () Unit!24002)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13047) Unit!24002)

(assert (=> b!683118 (= lt!313808 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!175 (List!13047 List!13047) Bool)

(assert (=> b!683118 (subseq!175 acc!681 acc!681)))

(declare-fun lt!313806 () Unit!24002)

(declare-fun lemmaListSubSeqRefl!0 (List!13047) Unit!24002)

(assert (=> b!683118 (= lt!313806 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683118 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313810 () Unit!24002)

(declare-fun e!389102 () Unit!24002)

(assert (=> b!683118 (= lt!313810 e!389102)))

(declare-fun c!77380 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683118 (= c!77380 (validKeyInArray!0 (select (arr!18953 a!3626) from!3004)))))

(declare-fun lt!313807 () Unit!24002)

(assert (=> b!683118 (= lt!313807 e!389107)))

(declare-fun c!77381 () Bool)

(declare-fun arrayContainsKey!0 (array!39550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683118 (= c!77381 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683118 (arrayContainsKey!0 (array!39551 (store (arr!18953 a!3626) i!1382 k!2843) (size!19317 a!3626)) k!2843 from!3004)))

(declare-fun b!683119 () Bool)

(declare-fun noDuplicate!837 (List!13047) Bool)

(assert (=> b!683119 (= e!389105 (noDuplicate!837 lt!313809))))

(declare-fun b!683120 () Bool)

(declare-fun e!389106 () Bool)

(declare-fun contains!3590 (List!13047 (_ BitVec 64)) Bool)

(assert (=> b!683120 (= e!389106 (contains!3590 acc!681 k!2843))))

(declare-fun b!683121 () Bool)

(declare-fun res!449088 () Bool)

(assert (=> b!683121 (=> (not res!449088) (not e!389104))))

(assert (=> b!683121 (= res!449088 (validKeyInArray!0 k!2843))))

(declare-fun b!683122 () Bool)

(declare-fun res!449102 () Bool)

(assert (=> b!683122 (=> (not res!449102) (not e!389104))))

(assert (=> b!683122 (= res!449102 (not (contains!3590 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683123 () Bool)

(declare-fun res!449097 () Bool)

(assert (=> b!683123 (=> (not res!449097) (not e!389104))))

(assert (=> b!683123 (= res!449097 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683124 () Bool)

(declare-fun Unit!24005 () Unit!24002)

(assert (=> b!683124 (= e!389102 Unit!24005)))

(declare-fun b!683125 () Bool)

(declare-fun res!449095 () Bool)

(assert (=> b!683125 (=> (not res!449095) (not e!389104))))

(assert (=> b!683125 (= res!449095 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19317 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683126 () Bool)

(declare-fun res!449090 () Bool)

(assert (=> b!683126 (=> (not res!449090) (not e!389104))))

(assert (=> b!683126 (= res!449090 (not (contains!3590 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683127 () Bool)

(declare-fun res!449096 () Bool)

(assert (=> b!683127 (=> (not res!449096) (not e!389104))))

(assert (=> b!683127 (= res!449096 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13044))))

(declare-fun b!683128 () Bool)

(declare-fun Unit!24006 () Unit!24002)

(assert (=> b!683128 (= e!389107 Unit!24006)))

(declare-fun lt!313811 () Unit!24002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39550 (_ BitVec 64) (_ BitVec 32)) Unit!24002)

(assert (=> b!683128 (= lt!313811 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683128 false))

(declare-fun res!449094 () Bool)

(assert (=> start!60910 (=> (not res!449094) (not e!389104))))

(assert (=> start!60910 (= res!449094 (and (bvslt (size!19317 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19317 a!3626))))))

(assert (=> start!60910 e!389104))

(assert (=> start!60910 true))

(declare-fun array_inv!14727 (array!39550) Bool)

(assert (=> start!60910 (array_inv!14727 a!3626)))

(declare-fun b!683115 () Bool)

(declare-fun res!449093 () Bool)

(assert (=> b!683115 (=> (not res!449093) (not e!389104))))

(declare-fun e!389100 () Bool)

(assert (=> b!683115 (= res!449093 e!389100)))

(declare-fun res!449091 () Bool)

(assert (=> b!683115 (=> res!449091 e!389100)))

(assert (=> b!683115 (= res!449091 e!389106)))

(declare-fun res!449100 () Bool)

(assert (=> b!683115 (=> (not res!449100) (not e!389106))))

(assert (=> b!683115 (= res!449100 (bvsgt from!3004 i!1382))))

(declare-fun b!683129 () Bool)

(declare-fun e!389101 () Bool)

(assert (=> b!683129 (= e!389100 e!389101)))

(declare-fun res!449099 () Bool)

(assert (=> b!683129 (=> (not res!449099) (not e!389101))))

(assert (=> b!683129 (= res!449099 (bvsle from!3004 i!1382))))

(declare-fun b!683130 () Bool)

(declare-fun lt!313805 () Unit!24002)

(assert (=> b!683130 (= e!389102 lt!313805)))

(declare-fun lt!313812 () Unit!24002)

(assert (=> b!683130 (= lt!313812 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683130 (subseq!175 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39550 List!13047 List!13047 (_ BitVec 32)) Unit!24002)

(assert (=> b!683130 (= lt!313805 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!339 acc!681 (select (arr!18953 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683130 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683131 () Bool)

(declare-fun res!449089 () Bool)

(assert (=> b!683131 (=> (not res!449089) (not e!389104))))

(assert (=> b!683131 (= res!449089 (noDuplicate!837 acc!681))))

(declare-fun b!683132 () Bool)

(assert (=> b!683132 (= e!389101 (not (contains!3590 acc!681 k!2843)))))

(assert (= (and start!60910 res!449094) b!683131))

(assert (= (and b!683131 res!449089) b!683122))

(assert (= (and b!683122 res!449102) b!683126))

(assert (= (and b!683126 res!449090) b!683115))

(assert (= (and b!683115 res!449100) b!683120))

(assert (= (and b!683115 (not res!449091)) b!683129))

(assert (= (and b!683129 res!449099) b!683132))

(assert (= (and b!683115 res!449093) b!683127))

(assert (= (and b!683127 res!449096) b!683116))

(assert (= (and b!683116 res!449098) b!683114))

(assert (= (and b!683114 res!449092) b!683121))

(assert (= (and b!683121 res!449088) b!683123))

(assert (= (and b!683123 res!449097) b!683125))

(assert (= (and b!683125 res!449095) b!683118))

(assert (= (and b!683118 c!77381) b!683128))

(assert (= (and b!683118 (not c!77381)) b!683117))

(assert (= (and b!683118 c!77380) b!683130))

(assert (= (and b!683118 (not c!77380)) b!683124))

(assert (= (and b!683118 (not res!449101)) b!683119))

(declare-fun m!647739 () Bool)

(assert (=> b!683131 m!647739))

(declare-fun m!647741 () Bool)

(assert (=> b!683122 m!647741))

(declare-fun m!647743 () Bool)

(assert (=> b!683119 m!647743))

(declare-fun m!647745 () Bool)

(assert (=> b!683127 m!647745))

(declare-fun m!647747 () Bool)

(assert (=> b!683121 m!647747))

(declare-fun m!647749 () Bool)

(assert (=> b!683116 m!647749))

(declare-fun m!647751 () Bool)

(assert (=> b!683130 m!647751))

(declare-fun m!647753 () Bool)

(assert (=> b!683130 m!647753))

(declare-fun m!647755 () Bool)

(assert (=> b!683130 m!647755))

(declare-fun m!647757 () Bool)

(assert (=> b!683130 m!647757))

(assert (=> b!683130 m!647753))

(assert (=> b!683130 m!647755))

(declare-fun m!647759 () Bool)

(assert (=> b!683130 m!647759))

(declare-fun m!647761 () Bool)

(assert (=> b!683130 m!647761))

(declare-fun m!647763 () Bool)

(assert (=> start!60910 m!647763))

(declare-fun m!647765 () Bool)

(assert (=> b!683128 m!647765))

(declare-fun m!647767 () Bool)

(assert (=> b!683132 m!647767))

(assert (=> b!683120 m!647767))

(declare-fun m!647769 () Bool)

(assert (=> b!683126 m!647769))

(assert (=> b!683118 m!647751))

(assert (=> b!683118 m!647753))

(declare-fun m!647771 () Bool)

(assert (=> b!683118 m!647771))

(declare-fun m!647773 () Bool)

(assert (=> b!683118 m!647773))

(assert (=> b!683118 m!647759))

(declare-fun m!647775 () Bool)

(assert (=> b!683118 m!647775))

(declare-fun m!647777 () Bool)

(assert (=> b!683118 m!647777))

(declare-fun m!647779 () Bool)

(assert (=> b!683118 m!647779))

(assert (=> b!683118 m!647753))

(declare-fun m!647781 () Bool)

(assert (=> b!683118 m!647781))

(declare-fun m!647783 () Bool)

(assert (=> b!683118 m!647783))

(assert (=> b!683118 m!647761))

(declare-fun m!647785 () Bool)

(assert (=> b!683123 m!647785))

(push 1)

(assert (not b!683116))

(assert (not b!683123))

(assert (not b!683120))

(assert (not start!60910))

(assert (not b!683132))

(assert (not b!683119))

(assert (not b!683131))

(assert (not b!683118))

(assert (not b!683122))

(assert (not b!683128))

(assert (not b!683121))

(assert (not b!683130))

(assert (not b!683126))

(assert (not b!683127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94065 () Bool)

(declare-fun res!449138 () Bool)

(declare-fun e!389146 () Bool)

(assert (=> d!94065 (=> res!449138 e!389146)))

(assert (=> d!94065 (= res!449138 (= (select (arr!18953 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94065 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!389146)))

(declare-fun b!683174 () Bool)

(declare-fun e!389147 () Bool)

(assert (=> b!683174 (= e!389146 e!389147)))

(declare-fun res!449139 () Bool)

(assert (=> b!683174 (=> (not res!449139) (not e!389147))))

(assert (=> b!683174 (= res!449139 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19317 a!3626)))))

(declare-fun b!683175 () Bool)

(assert (=> b!683175 (= e!389147 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94065 (not res!449138)) b!683174))

(assert (= (and b!683174 res!449139) b!683175))

(declare-fun m!647815 () Bool)

(assert (=> d!94065 m!647815))

(declare-fun m!647817 () Bool)

(assert (=> b!683175 m!647817))

(assert (=> b!683123 d!94065))

(declare-fun d!94069 () Bool)

(assert (=> d!94069 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!683121 d!94069))

(declare-fun d!94073 () Bool)

(declare-fun lt!313826 () Bool)

(declare-fun content!285 (List!13047) (Set (_ BitVec 64)))

(assert (=> d!94073 (= lt!313826 (member k!2843 (content!285 acc!681)))))

(declare-fun e!389162 () Bool)

(assert (=> d!94073 (= lt!313826 e!389162)))

(declare-fun res!449155 () Bool)

(assert (=> d!94073 (=> (not res!449155) (not e!389162))))

(assert (=> d!94073 (= res!449155 (is-Cons!13043 acc!681))))

(assert (=> d!94073 (= (contains!3590 acc!681 k!2843) lt!313826)))

(declare-fun b!683190 () Bool)

(declare-fun e!389163 () Bool)

(assert (=> b!683190 (= e!389162 e!389163)))

(declare-fun res!449154 () Bool)

(assert (=> b!683190 (=> res!449154 e!389163)))

(assert (=> b!683190 (= res!449154 (= (h!14088 acc!681) k!2843))))

(declare-fun b!683191 () Bool)

(assert (=> b!683191 (= e!389163 (contains!3590 (t!19298 acc!681) k!2843))))

(assert (= (and d!94073 res!449155) b!683190))

(assert (= (and b!683190 (not res!449154)) b!683191))

(declare-fun m!647825 () Bool)

(assert (=> d!94073 m!647825))

(declare-fun m!647827 () Bool)

(assert (=> d!94073 m!647827))

(declare-fun m!647829 () Bool)

(assert (=> b!683191 m!647829))

(assert (=> b!683120 d!94073))

(declare-fun d!94081 () Bool)

(declare-fun res!449168 () Bool)

(declare-fun e!389176 () Bool)

(assert (=> d!94081 (=> res!449168 e!389176)))

(assert (=> d!94081 (= res!449168 (is-Nil!13044 acc!681))))

(assert (=> d!94081 (= (noDuplicate!837 acc!681) e!389176)))

(declare-fun b!683204 () Bool)

(declare-fun e!389177 () Bool)

(assert (=> b!683204 (= e!389176 e!389177)))

(declare-fun res!449169 () Bool)

(assert (=> b!683204 (=> (not res!449169) (not e!389177))))

(assert (=> b!683204 (= res!449169 (not (contains!3590 (t!19298 acc!681) (h!14088 acc!681))))))

(declare-fun b!683205 () Bool)

(assert (=> b!683205 (= e!389177 (noDuplicate!837 (t!19298 acc!681)))))

(assert (= (and d!94081 (not res!449168)) b!683204))

(assert (= (and b!683204 res!449169) b!683205))

(declare-fun m!647835 () Bool)

(assert (=> b!683204 m!647835))

(declare-fun m!647837 () Bool)

(assert (=> b!683205 m!647837))

(assert (=> b!683131 d!94081))

(declare-fun d!94085 () Bool)

(declare-fun lt!313829 () Bool)

(assert (=> d!94085 (= lt!313829 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!285 acc!681)))))

(declare-fun e!389178 () Bool)

(assert (=> d!94085 (= lt!313829 e!389178)))

(declare-fun res!449171 () Bool)

(assert (=> d!94085 (=> (not res!449171) (not e!389178))))

(assert (=> d!94085 (= res!449171 (is-Cons!13043 acc!681))))

(assert (=> d!94085 (= (contains!3590 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313829)))

(declare-fun b!683206 () Bool)

(declare-fun e!389179 () Bool)

(assert (=> b!683206 (= e!389178 e!389179)))

(declare-fun res!449170 () Bool)

(assert (=> b!683206 (=> res!449170 e!389179)))

(assert (=> b!683206 (= res!449170 (= (h!14088 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!683207 () Bool)

(assert (=> b!683207 (= e!389179 (contains!3590 (t!19298 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94085 res!449171) b!683206))

(assert (= (and b!683206 (not res!449170)) b!683207))

(assert (=> d!94085 m!647825))

(declare-fun m!647839 () Bool)

(assert (=> d!94085 m!647839))

(declare-fun m!647841 () Bool)

(assert (=> b!683207 m!647841))

(assert (=> b!683122 d!94085))

(assert (=> b!683132 d!94073))

(declare-fun b!683237 () Bool)

(declare-fun e!389208 () Bool)

(assert (=> b!683237 (= e!389208 (subseq!175 (t!19298 acc!681) (t!19298 acc!681)))))

(declare-fun d!94087 () Bool)

(declare-fun res!449199 () Bool)

(declare-fun e!389207 () Bool)

(assert (=> d!94087 (=> res!449199 e!389207)))

(assert (=> d!94087 (= res!449199 (is-Nil!13044 acc!681))))

(assert (=> d!94087 (= (subseq!175 acc!681 acc!681) e!389207)))

(declare-fun b!683238 () Bool)

(declare-fun e!389209 () Bool)

(assert (=> b!683238 (= e!389209 (subseq!175 acc!681 (t!19298 acc!681)))))

(declare-fun b!683236 () Bool)

(declare-fun e!389206 () Bool)

(assert (=> b!683236 (= e!389206 e!389209)))

(declare-fun res!449200 () Bool)

(assert (=> b!683236 (=> res!449200 e!389209)))

(assert (=> b!683236 (= res!449200 e!389208)))

(declare-fun res!449197 () Bool)

(assert (=> b!683236 (=> (not res!449197) (not e!389208))))

(assert (=> b!683236 (= res!449197 (= (h!14088 acc!681) (h!14088 acc!681)))))

(declare-fun b!683235 () Bool)

(assert (=> b!683235 (= e!389207 e!389206)))

(declare-fun res!449198 () Bool)

(assert (=> b!683235 (=> (not res!449198) (not e!389206))))

(assert (=> b!683235 (= res!449198 (is-Cons!13043 acc!681))))

(assert (= (and d!94087 (not res!449199)) b!683235))

(assert (= (and b!683235 res!449198) b!683236))

(assert (= (and b!683236 res!449197) b!683237))

(assert (= (and b!683236 (not res!449200)) b!683238))

(declare-fun m!647875 () Bool)

(assert (=> b!683237 m!647875))

(declare-fun m!647877 () Bool)

(assert (=> b!683238 m!647877))

(assert (=> b!683118 d!94087))

(declare-fun d!94105 () Bool)

(declare-fun res!449201 () Bool)

(declare-fun e!389210 () Bool)

(assert (=> d!94105 (=> res!449201 e!389210)))

(assert (=> d!94105 (= res!449201 (= (select (arr!18953 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94105 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389210)))

(declare-fun b!683239 () Bool)

(declare-fun e!389211 () Bool)

(assert (=> b!683239 (= e!389210 e!389211)))

(declare-fun res!449202 () Bool)

(assert (=> b!683239 (=> (not res!449202) (not e!389211))))

(assert (=> b!683239 (= res!449202 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19317 a!3626)))))

(declare-fun b!683240 () Bool)

(assert (=> b!683240 (= e!389211 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94105 (not res!449201)) b!683239))

(assert (= (and b!683239 res!449202) b!683240))

(declare-fun m!647879 () Bool)

(assert (=> d!94105 m!647879))

(declare-fun m!647881 () Bool)

(assert (=> b!683240 m!647881))

(assert (=> b!683118 d!94105))

(declare-fun d!94107 () Bool)

(declare-fun res!449203 () Bool)

(declare-fun e!389212 () Bool)

(assert (=> d!94107 (=> res!449203 e!389212)))

(assert (=> d!94107 (= res!449203 (= (select (arr!18953 (array!39551 (store (arr!18953 a!3626) i!1382 k!2843) (size!19317 a!3626))) from!3004) k!2843))))

(assert (=> d!94107 (= (arrayContainsKey!0 (array!39551 (store (arr!18953 a!3626) i!1382 k!2843) (size!19317 a!3626)) k!2843 from!3004) e!389212)))

(declare-fun b!683241 () Bool)

(declare-fun e!389213 () Bool)

(assert (=> b!683241 (= e!389212 e!389213)))

(declare-fun res!449204 () Bool)

(assert (=> b!683241 (=> (not res!449204) (not e!389213))))

(assert (=> b!683241 (= res!449204 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19317 (array!39551 (store (arr!18953 a!3626) i!1382 k!2843) (size!19317 a!3626)))))))

(declare-fun b!683242 () Bool)

(assert (=> b!683242 (= e!389213 (arrayContainsKey!0 (array!39551 (store (arr!18953 a!3626) i!1382 k!2843) (size!19317 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94107 (not res!449203)) b!683241))

(assert (= (and b!683241 res!449204) b!683242))

(declare-fun m!647883 () Bool)

(assert (=> d!94107 m!647883))

(declare-fun m!647885 () Bool)

(assert (=> b!683242 m!647885))

(assert (=> b!683118 d!94107))

(declare-fun d!94109 () Bool)

(assert (=> d!94109 (subseq!175 acc!681 acc!681)))

(declare-fun lt!313841 () Unit!24002)

(declare-fun choose!36 (List!13047) Unit!24002)

(assert (=> d!94109 (= lt!313841 (choose!36 acc!681))))

(assert (=> d!94109 (= (lemmaListSubSeqRefl!0 acc!681) lt!313841)))

(declare-fun bs!20043 () Bool)

(assert (= bs!20043 d!94109))

(assert (=> bs!20043 m!647761))

(declare-fun m!647887 () Bool)

(assert (=> bs!20043 m!647887))

(assert (=> b!683118 d!94109))

(declare-fun d!94111 () Bool)

(assert (=> d!94111 (= (validKeyInArray!0 (select (arr!18953 a!3626) from!3004)) (and (not (= (select (arr!18953 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18953 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!683118 d!94111))

(declare-fun d!94113 () Bool)

(assert (=> d!94113 (= (-!140 ($colon$colon!339 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313846 () Unit!24002)

(declare-fun choose!16 ((_ BitVec 64) List!13047) Unit!24002)

(assert (=> d!94113 (= lt!313846 (choose!16 k!2843 acc!681))))

(assert (=> d!94113 (not (contains!3590 acc!681 k!2843))))

(assert (=> d!94113 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!313846)))

(declare-fun bs!20044 () Bool)

(assert (= bs!20044 d!94113))

(assert (=> bs!20044 m!647777))

(assert (=> bs!20044 m!647777))

(declare-fun m!647889 () Bool)

(assert (=> bs!20044 m!647889))

(declare-fun m!647891 () Bool)

(assert (=> bs!20044 m!647891))

(assert (=> bs!20044 m!647767))

(assert (=> b!683118 d!94113))

(declare-fun b!683300 () Bool)

(declare-fun e!389256 () List!13047)

(declare-fun e!389257 () List!13047)

(assert (=> b!683300 (= e!389256 e!389257)))

(declare-fun c!77405 () Bool)

(assert (=> b!683300 (= c!77405 (= k!2843 (h!14088 lt!313809)))))

(declare-fun b!683301 () Bool)

(declare-fun call!34017 () List!13047)

(assert (=> b!683301 (= e!389257 (Cons!13043 (h!14088 lt!313809) call!34017))))

(declare-fun e!389258 () Bool)

(declare-fun lt!313855 () List!13047)

(declare-fun b!683302 () Bool)

(assert (=> b!683302 (= e!389258 (= (content!285 lt!313855) (setminus (content!285 lt!313809) (insert k!2843 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!683303 () Bool)

(assert (=> b!683303 (= e!389257 call!34017)))

(declare-fun d!94115 () Bool)

