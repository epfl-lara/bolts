; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61388 () Bool)

(assert start!61388)

(declare-fun res!452072 () Bool)

(declare-fun e!391194 () Bool)

(assert (=> start!61388 (=> (not res!452072) (not e!391194))))

(declare-datatypes ((array!39647 0))(
  ( (array!39648 (arr!18994 (Array (_ BitVec 32) (_ BitVec 64))) (size!19369 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39647)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61388 (= res!452072 (and (bvslt (size!19369 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19369 a!3626))))))

(assert (=> start!61388 e!391194))

(assert (=> start!61388 true))

(declare-fun array_inv!14768 (array!39647) Bool)

(assert (=> start!61388 (array_inv!14768 a!3626)))

(declare-fun b!686925 () Bool)

(declare-datatypes ((Unit!24207 0))(
  ( (Unit!24208) )
))
(declare-fun e!391199 () Unit!24207)

(declare-fun Unit!24209 () Unit!24207)

(assert (=> b!686925 (= e!391199 Unit!24209)))

(declare-fun lt!315265 () Unit!24207)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39647 (_ BitVec 64) (_ BitVec 32)) Unit!24207)

(assert (=> b!686925 (= lt!315265 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!686925 false))

(declare-fun b!686926 () Bool)

(declare-fun res!452082 () Bool)

(declare-fun e!391193 () Bool)

(assert (=> b!686926 (=> res!452082 e!391193)))

(declare-datatypes ((List!13088 0))(
  ( (Nil!13085) (Cons!13084 (h!14129 (_ BitVec 64)) (t!19354 List!13088)) )
))
(declare-fun lt!315259 () List!13088)

(declare-fun noDuplicate!878 (List!13088) Bool)

(assert (=> b!686926 (= res!452082 (not (noDuplicate!878 lt!315259)))))

(declare-fun b!686927 () Bool)

(declare-fun e!391200 () Bool)

(declare-fun acc!681 () List!13088)

(declare-fun contains!3631 (List!13088 (_ BitVec 64)) Bool)

(assert (=> b!686927 (= e!391200 (contains!3631 acc!681 k0!2843))))

(declare-fun b!686928 () Bool)

(declare-fun res!452076 () Bool)

(assert (=> b!686928 (=> (not res!452076) (not e!391194))))

(declare-fun e!391197 () Bool)

(assert (=> b!686928 (= res!452076 e!391197)))

(declare-fun res!452080 () Bool)

(assert (=> b!686928 (=> res!452080 e!391197)))

(assert (=> b!686928 (= res!452080 e!391200)))

(declare-fun res!452084 () Bool)

(assert (=> b!686928 (=> (not res!452084) (not e!391200))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686928 (= res!452084 (bvsgt from!3004 i!1382))))

(declare-fun b!686929 () Bool)

(declare-fun res!452087 () Bool)

(assert (=> b!686929 (=> (not res!452087) (not e!391194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686929 (= res!452087 (validKeyInArray!0 k0!2843))))

(declare-fun b!686930 () Bool)

(declare-fun e!391201 () Unit!24207)

(declare-fun Unit!24210 () Unit!24207)

(assert (=> b!686930 (= e!391201 Unit!24210)))

(declare-fun b!686931 () Bool)

(declare-fun e!391198 () Bool)

(assert (=> b!686931 (= e!391198 (not (contains!3631 lt!315259 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686932 () Bool)

(assert (=> b!686932 (= e!391194 (not e!391193))))

(declare-fun res!452083 () Bool)

(assert (=> b!686932 (=> res!452083 e!391193)))

(assert (=> b!686932 (= res!452083 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39647 (_ BitVec 32) List!13088) Bool)

(assert (=> b!686932 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315259)))

(declare-fun lt!315261 () Unit!24207)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39647 (_ BitVec 64) (_ BitVec 32) List!13088 List!13088) Unit!24207)

(assert (=> b!686932 (= lt!315261 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315259))))

(declare-fun -!181 (List!13088 (_ BitVec 64)) List!13088)

(assert (=> b!686932 (= (-!181 lt!315259 k0!2843) acc!681)))

(declare-fun $colon$colon!380 (List!13088 (_ BitVec 64)) List!13088)

(assert (=> b!686932 (= lt!315259 ($colon$colon!380 acc!681 k0!2843))))

(declare-fun lt!315263 () Unit!24207)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13088) Unit!24207)

(assert (=> b!686932 (= lt!315263 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!216 (List!13088 List!13088) Bool)

(assert (=> b!686932 (subseq!216 acc!681 acc!681)))

(declare-fun lt!315264 () Unit!24207)

(declare-fun lemmaListSubSeqRefl!0 (List!13088) Unit!24207)

(assert (=> b!686932 (= lt!315264 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686932 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315266 () Unit!24207)

(assert (=> b!686932 (= lt!315266 e!391201)))

(declare-fun c!77795 () Bool)

(assert (=> b!686932 (= c!77795 (validKeyInArray!0 (select (arr!18994 a!3626) from!3004)))))

(declare-fun lt!315262 () Unit!24207)

(assert (=> b!686932 (= lt!315262 e!391199)))

(declare-fun c!77794 () Bool)

(declare-fun arrayContainsKey!0 (array!39647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686932 (= c!77794 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686932 (arrayContainsKey!0 (array!39648 (store (arr!18994 a!3626) i!1382 k0!2843) (size!19369 a!3626)) k0!2843 from!3004)))

(declare-fun b!686933 () Bool)

(assert (=> b!686933 (= e!391193 e!391198)))

(declare-fun res!452079 () Bool)

(assert (=> b!686933 (=> (not res!452079) (not e!391198))))

(assert (=> b!686933 (= res!452079 (not (contains!3631 lt!315259 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686934 () Bool)

(declare-fun lt!315260 () Unit!24207)

(assert (=> b!686934 (= e!391201 lt!315260)))

(declare-fun lt!315267 () Unit!24207)

(assert (=> b!686934 (= lt!315267 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686934 (subseq!216 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39647 List!13088 List!13088 (_ BitVec 32)) Unit!24207)

(assert (=> b!686934 (= lt!315260 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!380 acc!681 (select (arr!18994 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686934 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686935 () Bool)

(declare-fun res!452071 () Bool)

(assert (=> b!686935 (=> (not res!452071) (not e!391194))))

(assert (=> b!686935 (= res!452071 (not (contains!3631 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686936 () Bool)

(declare-fun res!452075 () Bool)

(assert (=> b!686936 (=> (not res!452075) (not e!391194))))

(assert (=> b!686936 (= res!452075 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19369 a!3626))))))

(declare-fun b!686937 () Bool)

(declare-fun res!452086 () Bool)

(assert (=> b!686937 (=> (not res!452086) (not e!391194))))

(assert (=> b!686937 (= res!452086 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686938 () Bool)

(declare-fun e!391196 () Bool)

(assert (=> b!686938 (= e!391196 (not (contains!3631 acc!681 k0!2843)))))

(declare-fun b!686939 () Bool)

(declare-fun Unit!24211 () Unit!24207)

(assert (=> b!686939 (= e!391199 Unit!24211)))

(declare-fun b!686940 () Bool)

(declare-fun res!452078 () Bool)

(assert (=> b!686940 (=> (not res!452078) (not e!391194))))

(assert (=> b!686940 (= res!452078 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13085))))

(declare-fun b!686941 () Bool)

(declare-fun res!452073 () Bool)

(assert (=> b!686941 (=> (not res!452073) (not e!391194))))

(assert (=> b!686941 (= res!452073 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686942 () Bool)

(assert (=> b!686942 (= e!391197 e!391196)))

(declare-fun res!452085 () Bool)

(assert (=> b!686942 (=> (not res!452085) (not e!391196))))

(assert (=> b!686942 (= res!452085 (bvsle from!3004 i!1382))))

(declare-fun b!686943 () Bool)

(declare-fun res!452077 () Bool)

(assert (=> b!686943 (=> (not res!452077) (not e!391194))))

(assert (=> b!686943 (= res!452077 (noDuplicate!878 acc!681))))

(declare-fun b!686944 () Bool)

(declare-fun res!452081 () Bool)

(assert (=> b!686944 (=> (not res!452081) (not e!391194))))

(assert (=> b!686944 (= res!452081 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19369 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686945 () Bool)

(declare-fun res!452074 () Bool)

(assert (=> b!686945 (=> (not res!452074) (not e!391194))))

(assert (=> b!686945 (= res!452074 (not (contains!3631 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61388 res!452072) b!686943))

(assert (= (and b!686943 res!452077) b!686945))

(assert (= (and b!686945 res!452074) b!686935))

(assert (= (and b!686935 res!452071) b!686928))

(assert (= (and b!686928 res!452084) b!686927))

(assert (= (and b!686928 (not res!452080)) b!686942))

(assert (= (and b!686942 res!452085) b!686938))

(assert (= (and b!686928 res!452076) b!686940))

(assert (= (and b!686940 res!452078) b!686937))

(assert (= (and b!686937 res!452086) b!686936))

(assert (= (and b!686936 res!452075) b!686929))

(assert (= (and b!686929 res!452087) b!686941))

(assert (= (and b!686941 res!452073) b!686944))

(assert (= (and b!686944 res!452081) b!686932))

(assert (= (and b!686932 c!77794) b!686925))

(assert (= (and b!686932 (not c!77794)) b!686939))

(assert (= (and b!686932 c!77795) b!686934))

(assert (= (and b!686932 (not c!77795)) b!686930))

(assert (= (and b!686932 (not res!452083)) b!686926))

(assert (= (and b!686926 (not res!452082)) b!686933))

(assert (= (and b!686933 res!452079) b!686931))

(declare-fun m!651041 () Bool)

(assert (=> b!686929 m!651041))

(declare-fun m!651043 () Bool)

(assert (=> b!686931 m!651043))

(declare-fun m!651045 () Bool)

(assert (=> b!686940 m!651045))

(declare-fun m!651047 () Bool)

(assert (=> b!686932 m!651047))

(declare-fun m!651049 () Bool)

(assert (=> b!686932 m!651049))

(declare-fun m!651051 () Bool)

(assert (=> b!686932 m!651051))

(declare-fun m!651053 () Bool)

(assert (=> b!686932 m!651053))

(declare-fun m!651055 () Bool)

(assert (=> b!686932 m!651055))

(declare-fun m!651057 () Bool)

(assert (=> b!686932 m!651057))

(declare-fun m!651059 () Bool)

(assert (=> b!686932 m!651059))

(declare-fun m!651061 () Bool)

(assert (=> b!686932 m!651061))

(declare-fun m!651063 () Bool)

(assert (=> b!686932 m!651063))

(declare-fun m!651065 () Bool)

(assert (=> b!686932 m!651065))

(assert (=> b!686932 m!651053))

(declare-fun m!651067 () Bool)

(assert (=> b!686932 m!651067))

(declare-fun m!651069 () Bool)

(assert (=> b!686932 m!651069))

(declare-fun m!651071 () Bool)

(assert (=> b!686932 m!651071))

(declare-fun m!651073 () Bool)

(assert (=> b!686937 m!651073))

(declare-fun m!651075 () Bool)

(assert (=> b!686941 m!651075))

(declare-fun m!651077 () Bool)

(assert (=> start!61388 m!651077))

(declare-fun m!651079 () Bool)

(assert (=> b!686935 m!651079))

(assert (=> b!686934 m!651049))

(assert (=> b!686934 m!651053))

(declare-fun m!651081 () Bool)

(assert (=> b!686934 m!651081))

(declare-fun m!651083 () Bool)

(assert (=> b!686934 m!651083))

(assert (=> b!686934 m!651053))

(assert (=> b!686934 m!651081))

(assert (=> b!686934 m!651061))

(assert (=> b!686934 m!651071))

(declare-fun m!651085 () Bool)

(assert (=> b!686933 m!651085))

(declare-fun m!651087 () Bool)

(assert (=> b!686943 m!651087))

(declare-fun m!651089 () Bool)

(assert (=> b!686938 m!651089))

(declare-fun m!651091 () Bool)

(assert (=> b!686945 m!651091))

(declare-fun m!651093 () Bool)

(assert (=> b!686926 m!651093))

(declare-fun m!651095 () Bool)

(assert (=> b!686925 m!651095))

(assert (=> b!686927 m!651089))

(check-sat (not b!686926) (not b!686927) (not b!686934) (not b!686945) (not b!686931) (not start!61388) (not b!686932) (not b!686937) (not b!686943) (not b!686941) (not b!686935) (not b!686940) (not b!686933) (not b!686929) (not b!686925) (not b!686938))
(check-sat)
(get-model)

(declare-fun d!94789 () Bool)

(declare-fun lt!315297 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!298 (List!13088) (InoxSet (_ BitVec 64)))

(assert (=> d!94789 (= lt!315297 (select (content!298 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391234 () Bool)

(assert (=> d!94789 (= lt!315297 e!391234)))

(declare-fun res!452144 () Bool)

(assert (=> d!94789 (=> (not res!452144) (not e!391234))))

(get-info :version)

(assert (=> d!94789 (= res!452144 ((_ is Cons!13084) acc!681))))

(assert (=> d!94789 (= (contains!3631 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315297)))

(declare-fun b!687013 () Bool)

(declare-fun e!391233 () Bool)

(assert (=> b!687013 (= e!391234 e!391233)))

(declare-fun res!452143 () Bool)

(assert (=> b!687013 (=> res!452143 e!391233)))

(assert (=> b!687013 (= res!452143 (= (h!14129 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687014 () Bool)

(assert (=> b!687014 (= e!391233 (contains!3631 (t!19354 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94789 res!452144) b!687013))

(assert (= (and b!687013 (not res!452143)) b!687014))

(declare-fun m!651153 () Bool)

(assert (=> d!94789 m!651153))

(declare-fun m!651155 () Bool)

(assert (=> d!94789 m!651155))

(declare-fun m!651157 () Bool)

(assert (=> b!687014 m!651157))

(assert (=> b!686945 d!94789))

(declare-fun d!94791 () Bool)

(declare-fun lt!315298 () Bool)

(assert (=> d!94791 (= lt!315298 (select (content!298 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391236 () Bool)

(assert (=> d!94791 (= lt!315298 e!391236)))

(declare-fun res!452146 () Bool)

(assert (=> d!94791 (=> (not res!452146) (not e!391236))))

(assert (=> d!94791 (= res!452146 ((_ is Cons!13084) acc!681))))

(assert (=> d!94791 (= (contains!3631 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315298)))

(declare-fun b!687015 () Bool)

(declare-fun e!391235 () Bool)

(assert (=> b!687015 (= e!391236 e!391235)))

(declare-fun res!452145 () Bool)

(assert (=> b!687015 (=> res!452145 e!391235)))

(assert (=> b!687015 (= res!452145 (= (h!14129 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687016 () Bool)

(assert (=> b!687016 (= e!391235 (contains!3631 (t!19354 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94791 res!452146) b!687015))

(assert (= (and b!687015 (not res!452145)) b!687016))

(assert (=> d!94791 m!651153))

(declare-fun m!651159 () Bool)

(assert (=> d!94791 m!651159))

(declare-fun m!651161 () Bool)

(assert (=> b!687016 m!651161))

(assert (=> b!686935 d!94791))

(declare-fun d!94793 () Bool)

(assert (=> d!94793 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315301 () Unit!24207)

(declare-fun choose!13 (array!39647 (_ BitVec 64) (_ BitVec 32)) Unit!24207)

(assert (=> d!94793 (= lt!315301 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94793 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94793 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!315301)))

(declare-fun bs!20144 () Bool)

(assert (= bs!20144 d!94793))

(assert (=> bs!20144 m!651075))

(declare-fun m!651163 () Bool)

(assert (=> bs!20144 m!651163))

(assert (=> b!686925 d!94793))

(declare-fun d!94795 () Bool)

(declare-fun res!452151 () Bool)

(declare-fun e!391241 () Bool)

(assert (=> d!94795 (=> res!452151 e!391241)))

(assert (=> d!94795 (= res!452151 ((_ is Nil!13085) lt!315259))))

(assert (=> d!94795 (= (noDuplicate!878 lt!315259) e!391241)))

(declare-fun b!687021 () Bool)

(declare-fun e!391242 () Bool)

(assert (=> b!687021 (= e!391241 e!391242)))

(declare-fun res!452152 () Bool)

(assert (=> b!687021 (=> (not res!452152) (not e!391242))))

(assert (=> b!687021 (= res!452152 (not (contains!3631 (t!19354 lt!315259) (h!14129 lt!315259))))))

(declare-fun b!687022 () Bool)

(assert (=> b!687022 (= e!391242 (noDuplicate!878 (t!19354 lt!315259)))))

(assert (= (and d!94795 (not res!452151)) b!687021))

(assert (= (and b!687021 res!452152) b!687022))

(declare-fun m!651165 () Bool)

(assert (=> b!687021 m!651165))

(declare-fun m!651167 () Bool)

(assert (=> b!687022 m!651167))

(assert (=> b!686926 d!94795))

(declare-fun b!687045 () Bool)

(declare-fun e!391265 () Bool)

(declare-fun call!34127 () Bool)

(assert (=> b!687045 (= e!391265 call!34127)))

(declare-fun c!77804 () Bool)

(declare-fun bm!34124 () Bool)

(assert (=> bm!34124 (= call!34127 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77804 (Cons!13084 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315259) lt!315259)))))

(declare-fun b!687047 () Bool)

(declare-fun e!391263 () Bool)

(declare-fun e!391266 () Bool)

(assert (=> b!687047 (= e!391263 e!391266)))

(declare-fun res!452171 () Bool)

(assert (=> b!687047 (=> (not res!452171) (not e!391266))))

(declare-fun e!391264 () Bool)

(assert (=> b!687047 (= res!452171 (not e!391264))))

(declare-fun res!452173 () Bool)

(assert (=> b!687047 (=> (not res!452173) (not e!391264))))

(assert (=> b!687047 (= res!452173 (validKeyInArray!0 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687046 () Bool)

(assert (=> b!687046 (= e!391265 call!34127)))

(declare-fun d!94799 () Bool)

(declare-fun res!452172 () Bool)

(assert (=> d!94799 (=> res!452172 e!391263)))

(assert (=> d!94799 (= res!452172 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19369 a!3626)))))

(assert (=> d!94799 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315259) e!391263)))

(declare-fun b!687048 () Bool)

(assert (=> b!687048 (= e!391264 (contains!3631 lt!315259 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687049 () Bool)

(assert (=> b!687049 (= e!391266 e!391265)))

(assert (=> b!687049 (= c!77804 (validKeyInArray!0 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94799 (not res!452172)) b!687047))

(assert (= (and b!687047 res!452173) b!687048))

(assert (= (and b!687047 res!452171) b!687049))

(assert (= (and b!687049 c!77804) b!687046))

(assert (= (and b!687049 (not c!77804)) b!687045))

(assert (= (or b!687046 b!687045) bm!34124))

(declare-fun m!651173 () Bool)

(assert (=> bm!34124 m!651173))

(declare-fun m!651175 () Bool)

(assert (=> bm!34124 m!651175))

(assert (=> b!687047 m!651173))

(assert (=> b!687047 m!651173))

(declare-fun m!651177 () Bool)

(assert (=> b!687047 m!651177))

(assert (=> b!687048 m!651173))

(assert (=> b!687048 m!651173))

(declare-fun m!651179 () Bool)

(assert (=> b!687048 m!651179))

(assert (=> b!687049 m!651173))

(assert (=> b!687049 m!651173))

(assert (=> b!687049 m!651177))

(assert (=> b!686932 d!94799))

(declare-fun d!94805 () Bool)

(assert (=> d!94805 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315259)))

(declare-fun lt!315310 () Unit!24207)

(declare-fun choose!66 (array!39647 (_ BitVec 64) (_ BitVec 32) List!13088 List!13088) Unit!24207)

(assert (=> d!94805 (= lt!315310 (choose!66 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315259))))

(assert (=> d!94805 (bvslt (size!19369 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94805 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315259) lt!315310)))

(declare-fun bs!20147 () Bool)

(assert (= bs!20147 d!94805))

(assert (=> bs!20147 m!651059))

(declare-fun m!651185 () Bool)

(assert (=> bs!20147 m!651185))

(assert (=> b!686932 d!94805))

(declare-fun d!94811 () Bool)

(declare-fun res!452188 () Bool)

(declare-fun e!391286 () Bool)

(assert (=> d!94811 (=> res!452188 e!391286)))

(assert (=> d!94811 (= res!452188 ((_ is Nil!13085) acc!681))))

(assert (=> d!94811 (= (subseq!216 acc!681 acc!681) e!391286)))

(declare-fun b!687071 () Bool)

(declare-fun e!391283 () Bool)

(assert (=> b!687071 (= e!391283 (subseq!216 acc!681 (t!19354 acc!681)))))

(declare-fun b!687070 () Bool)

(declare-fun e!391285 () Bool)

(assert (=> b!687070 (= e!391285 (subseq!216 (t!19354 acc!681) (t!19354 acc!681)))))

(declare-fun b!687069 () Bool)

(declare-fun e!391284 () Bool)

(assert (=> b!687069 (= e!391284 e!391283)))

(declare-fun res!452191 () Bool)

(assert (=> b!687069 (=> res!452191 e!391283)))

(assert (=> b!687069 (= res!452191 e!391285)))

(declare-fun res!452190 () Bool)

(assert (=> b!687069 (=> (not res!452190) (not e!391285))))

(assert (=> b!687069 (= res!452190 (= (h!14129 acc!681) (h!14129 acc!681)))))

(declare-fun b!687068 () Bool)

(assert (=> b!687068 (= e!391286 e!391284)))

(declare-fun res!452189 () Bool)

(assert (=> b!687068 (=> (not res!452189) (not e!391284))))

(assert (=> b!687068 (= res!452189 ((_ is Cons!13084) acc!681))))

(assert (= (and d!94811 (not res!452188)) b!687068))

(assert (= (and b!687068 res!452189) b!687069))

(assert (= (and b!687069 res!452190) b!687070))

(assert (= (and b!687069 (not res!452191)) b!687071))

(declare-fun m!651187 () Bool)

(assert (=> b!687071 m!651187))

(declare-fun m!651189 () Bool)

(assert (=> b!687070 m!651189))

(assert (=> b!686932 d!94811))

(declare-fun d!94815 () Bool)

(declare-fun res!452207 () Bool)

(declare-fun e!391303 () Bool)

(assert (=> d!94815 (=> res!452207 e!391303)))

(assert (=> d!94815 (= res!452207 (= (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!94815 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391303)))

(declare-fun b!687089 () Bool)

(declare-fun e!391304 () Bool)

(assert (=> b!687089 (= e!391303 e!391304)))

(declare-fun res!452208 () Bool)

(assert (=> b!687089 (=> (not res!452208) (not e!391304))))

(assert (=> b!687089 (= res!452208 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19369 a!3626)))))

(declare-fun b!687090 () Bool)

(assert (=> b!687090 (= e!391304 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94815 (not res!452207)) b!687089))

(assert (= (and b!687089 res!452208) b!687090))

(assert (=> d!94815 m!651173))

(declare-fun m!651205 () Bool)

(assert (=> b!687090 m!651205))

(assert (=> b!686932 d!94815))

(declare-fun e!391340 () Bool)

(declare-fun lt!315316 () List!13088)

(declare-fun b!687131 () Bool)

(assert (=> b!687131 (= e!391340 (= (content!298 lt!315316) ((_ map and) (content!298 lt!315259) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun b!687132 () Bool)

(declare-fun e!391338 () List!13088)

(declare-fun call!34137 () List!13088)

(assert (=> b!687132 (= e!391338 call!34137)))

(declare-fun bm!34134 () Bool)

(assert (=> bm!34134 (= call!34137 (-!181 (t!19354 lt!315259) k0!2843))))

(declare-fun b!687133 () Bool)

(declare-fun e!391339 () List!13088)

(assert (=> b!687133 (= e!391339 Nil!13085)))

(declare-fun b!687134 () Bool)

(assert (=> b!687134 (= e!391339 e!391338)))

(declare-fun c!77817 () Bool)

(assert (=> b!687134 (= c!77817 (= k0!2843 (h!14129 lt!315259)))))

(declare-fun d!94821 () Bool)

(assert (=> d!94821 e!391340))

(declare-fun res!452233 () Bool)

(assert (=> d!94821 (=> (not res!452233) (not e!391340))))

(declare-fun size!19371 (List!13088) Int)

(assert (=> d!94821 (= res!452233 (<= (size!19371 lt!315316) (size!19371 lt!315259)))))

(assert (=> d!94821 (= lt!315316 e!391339)))

(declare-fun c!77816 () Bool)

(assert (=> d!94821 (= c!77816 ((_ is Cons!13084) lt!315259))))

(assert (=> d!94821 (= (-!181 lt!315259 k0!2843) lt!315316)))

(declare-fun b!687135 () Bool)

(assert (=> b!687135 (= e!391338 (Cons!13084 (h!14129 lt!315259) call!34137))))

(assert (= (and d!94821 c!77816) b!687134))

(assert (= (and d!94821 (not c!77816)) b!687133))

(assert (= (and b!687134 c!77817) b!687132))

(assert (= (and b!687134 (not c!77817)) b!687135))

(assert (= (or b!687132 b!687135) bm!34134))

(assert (= (and d!94821 res!452233) b!687131))

(declare-fun m!651225 () Bool)

(assert (=> b!687131 m!651225))

(declare-fun m!651227 () Bool)

(assert (=> b!687131 m!651227))

(declare-fun m!651229 () Bool)

(assert (=> b!687131 m!651229))

(declare-fun m!651231 () Bool)

(assert (=> bm!34134 m!651231))

(declare-fun m!651233 () Bool)

(assert (=> d!94821 m!651233))

(declare-fun m!651235 () Bool)

(assert (=> d!94821 m!651235))

(assert (=> b!686932 d!94821))

(declare-fun d!94831 () Bool)

(assert (=> d!94831 (= (-!181 ($colon$colon!380 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!315323 () Unit!24207)

(declare-fun choose!16 ((_ BitVec 64) List!13088) Unit!24207)

(assert (=> d!94831 (= lt!315323 (choose!16 k0!2843 acc!681))))

(assert (=> d!94831 (not (contains!3631 acc!681 k0!2843))))

(assert (=> d!94831 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!315323)))

(declare-fun bs!20148 () Bool)

(assert (= bs!20148 d!94831))

(assert (=> bs!20148 m!651065))

(assert (=> bs!20148 m!651065))

(declare-fun m!651237 () Bool)

(assert (=> bs!20148 m!651237))

(declare-fun m!651239 () Bool)

(assert (=> bs!20148 m!651239))

(assert (=> bs!20148 m!651089))

(assert (=> b!686932 d!94831))

(declare-fun d!94833 () Bool)

(declare-fun res!452236 () Bool)

(declare-fun e!391353 () Bool)

(assert (=> d!94833 (=> res!452236 e!391353)))

(assert (=> d!94833 (= res!452236 (= (select (arr!18994 (array!39648 (store (arr!18994 a!3626) i!1382 k0!2843) (size!19369 a!3626))) from!3004) k0!2843))))

(assert (=> d!94833 (= (arrayContainsKey!0 (array!39648 (store (arr!18994 a!3626) i!1382 k0!2843) (size!19369 a!3626)) k0!2843 from!3004) e!391353)))

(declare-fun b!687154 () Bool)

(declare-fun e!391354 () Bool)

(assert (=> b!687154 (= e!391353 e!391354)))

(declare-fun res!452237 () Bool)

(assert (=> b!687154 (=> (not res!452237) (not e!391354))))

(assert (=> b!687154 (= res!452237 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19369 (array!39648 (store (arr!18994 a!3626) i!1382 k0!2843) (size!19369 a!3626)))))))

(declare-fun b!687155 () Bool)

(assert (=> b!687155 (= e!391354 (arrayContainsKey!0 (array!39648 (store (arr!18994 a!3626) i!1382 k0!2843) (size!19369 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94833 (not res!452236)) b!687154))

(assert (= (and b!687154 res!452237) b!687155))

(declare-fun m!651241 () Bool)

(assert (=> d!94833 m!651241))

(declare-fun m!651243 () Bool)

(assert (=> b!687155 m!651243))

(assert (=> b!686932 d!94833))

(declare-fun d!94835 () Bool)

(assert (=> d!94835 (subseq!216 acc!681 acc!681)))

(declare-fun lt!315326 () Unit!24207)

(declare-fun choose!36 (List!13088) Unit!24207)

(assert (=> d!94835 (= lt!315326 (choose!36 acc!681))))

(assert (=> d!94835 (= (lemmaListSubSeqRefl!0 acc!681) lt!315326)))

(declare-fun bs!20149 () Bool)

(assert (= bs!20149 d!94835))

(assert (=> bs!20149 m!651071))

(declare-fun m!651245 () Bool)

(assert (=> bs!20149 m!651245))

(assert (=> b!686932 d!94835))

(declare-fun d!94837 () Bool)

(assert (=> d!94837 (= (validKeyInArray!0 (select (arr!18994 a!3626) from!3004)) (and (not (= (select (arr!18994 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18994 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!686932 d!94837))

(declare-fun d!94841 () Bool)

(assert (=> d!94841 (= ($colon$colon!380 acc!681 k0!2843) (Cons!13084 k0!2843 acc!681))))

(assert (=> b!686932 d!94841))

(declare-fun b!687168 () Bool)

(declare-fun e!391365 () Bool)

(declare-fun call!34144 () Bool)

(assert (=> b!687168 (= e!391365 call!34144)))

(declare-fun bm!34141 () Bool)

(declare-fun c!77830 () Bool)

(assert (=> bm!34141 (= call!34144 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77830 (Cons!13084 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!687170 () Bool)

(declare-fun e!391363 () Bool)

(declare-fun e!391366 () Bool)

(assert (=> b!687170 (= e!391363 e!391366)))

(declare-fun res!452242 () Bool)

(assert (=> b!687170 (=> (not res!452242) (not e!391366))))

(declare-fun e!391364 () Bool)

(assert (=> b!687170 (= res!452242 (not e!391364))))

(declare-fun res!452244 () Bool)

(assert (=> b!687170 (=> (not res!452244) (not e!391364))))

(assert (=> b!687170 (= res!452244 (validKeyInArray!0 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687169 () Bool)

(assert (=> b!687169 (= e!391365 call!34144)))

(declare-fun d!94845 () Bool)

(declare-fun res!452243 () Bool)

(assert (=> d!94845 (=> res!452243 e!391363)))

(assert (=> d!94845 (= res!452243 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19369 a!3626)))))

(assert (=> d!94845 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391363)))

(declare-fun b!687171 () Bool)

(assert (=> b!687171 (= e!391364 (contains!3631 acc!681 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687172 () Bool)

(assert (=> b!687172 (= e!391366 e!391365)))

(assert (=> b!687172 (= c!77830 (validKeyInArray!0 (select (arr!18994 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94845 (not res!452243)) b!687170))

(assert (= (and b!687170 res!452244) b!687171))

(assert (= (and b!687170 res!452242) b!687172))

(assert (= (and b!687172 c!77830) b!687169))

(assert (= (and b!687172 (not c!77830)) b!687168))

(assert (= (or b!687169 b!687168) bm!34141))

(assert (=> bm!34141 m!651173))

(declare-fun m!651271 () Bool)

(assert (=> bm!34141 m!651271))

(assert (=> b!687170 m!651173))

(assert (=> b!687170 m!651173))

(assert (=> b!687170 m!651177))

(assert (=> b!687171 m!651173))

(assert (=> b!687171 m!651173))

(declare-fun m!651273 () Bool)

(assert (=> b!687171 m!651273))

(assert (=> b!687172 m!651173))

(assert (=> b!687172 m!651173))

(assert (=> b!687172 m!651177))

(assert (=> b!686932 d!94845))

(declare-fun d!94847 () Bool)

(declare-fun res!452245 () Bool)

(declare-fun e!391367 () Bool)

(assert (=> d!94847 (=> res!452245 e!391367)))

(assert (=> d!94847 (= res!452245 ((_ is Nil!13085) acc!681))))

(assert (=> d!94847 (= (noDuplicate!878 acc!681) e!391367)))

(declare-fun b!687173 () Bool)

(declare-fun e!391368 () Bool)

(assert (=> b!687173 (= e!391367 e!391368)))

(declare-fun res!452246 () Bool)

(assert (=> b!687173 (=> (not res!452246) (not e!391368))))

(assert (=> b!687173 (= res!452246 (not (contains!3631 (t!19354 acc!681) (h!14129 acc!681))))))

(declare-fun b!687174 () Bool)

(assert (=> b!687174 (= e!391368 (noDuplicate!878 (t!19354 acc!681)))))

(assert (= (and d!94847 (not res!452245)) b!687173))

(assert (= (and b!687173 res!452246) b!687174))

(declare-fun m!651275 () Bool)

(assert (=> b!687173 m!651275))

(declare-fun m!651277 () Bool)

(assert (=> b!687174 m!651277))

(assert (=> b!686943 d!94847))

(declare-fun d!94849 () Bool)

(declare-fun lt!315331 () Bool)

(assert (=> d!94849 (= lt!315331 (select (content!298 lt!315259) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391370 () Bool)

(assert (=> d!94849 (= lt!315331 e!391370)))

(declare-fun res!452248 () Bool)

(assert (=> d!94849 (=> (not res!452248) (not e!391370))))

(assert (=> d!94849 (= res!452248 ((_ is Cons!13084) lt!315259))))

(assert (=> d!94849 (= (contains!3631 lt!315259 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315331)))

(declare-fun b!687175 () Bool)

(declare-fun e!391369 () Bool)

(assert (=> b!687175 (= e!391370 e!391369)))

(declare-fun res!452247 () Bool)

(assert (=> b!687175 (=> res!452247 e!391369)))

(assert (=> b!687175 (= res!452247 (= (h!14129 lt!315259) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687176 () Bool)

(assert (=> b!687176 (= e!391369 (contains!3631 (t!19354 lt!315259) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94849 res!452248) b!687175))

(assert (= (and b!687175 (not res!452247)) b!687176))

(assert (=> d!94849 m!651227))

(declare-fun m!651279 () Bool)

(assert (=> d!94849 m!651279))

(declare-fun m!651281 () Bool)

(assert (=> b!687176 m!651281))

(assert (=> b!686933 d!94849))

(declare-fun d!94851 () Bool)

(assert (=> d!94851 (= ($colon$colon!380 acc!681 (select (arr!18994 a!3626) from!3004)) (Cons!13084 (select (arr!18994 a!3626) from!3004) acc!681))))

(assert (=> b!686934 d!94851))

(assert (=> b!686934 d!94811))

(declare-fun d!94853 () Bool)

(assert (=> d!94853 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315337 () Unit!24207)

(declare-fun choose!80 (array!39647 List!13088 List!13088 (_ BitVec 32)) Unit!24207)

(assert (=> d!94853 (= lt!315337 (choose!80 a!3626 ($colon$colon!380 acc!681 (select (arr!18994 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94853 (bvslt (size!19369 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94853 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!380 acc!681 (select (arr!18994 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315337)))

(declare-fun bs!20151 () Bool)

(assert (= bs!20151 d!94853))

(assert (=> bs!20151 m!651049))

(assert (=> bs!20151 m!651081))

(declare-fun m!651289 () Bool)

(assert (=> bs!20151 m!651289))

(assert (=> b!686934 d!94853))

(assert (=> b!686934 d!94835))

(assert (=> b!686934 d!94845))

(declare-fun d!94859 () Bool)

(assert (=> d!94859 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!686929 d!94859))

(declare-fun b!687191 () Bool)

(declare-fun e!391387 () Bool)

(declare-fun call!34145 () Bool)

(assert (=> b!687191 (= e!391387 call!34145)))

(declare-fun bm!34142 () Bool)

(declare-fun c!77831 () Bool)

(assert (=> bm!34142 (= call!34145 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77831 (Cons!13084 (select (arr!18994 a!3626) #b00000000000000000000000000000000) Nil!13085) Nil!13085)))))

(declare-fun b!687193 () Bool)

(declare-fun e!391383 () Bool)

(declare-fun e!391388 () Bool)

(assert (=> b!687193 (= e!391383 e!391388)))

(declare-fun res!452262 () Bool)

(assert (=> b!687193 (=> (not res!452262) (not e!391388))))

(declare-fun e!391386 () Bool)

(assert (=> b!687193 (= res!452262 (not e!391386))))

(declare-fun res!452265 () Bool)

(assert (=> b!687193 (=> (not res!452265) (not e!391386))))

(assert (=> b!687193 (= res!452265 (validKeyInArray!0 (select (arr!18994 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687192 () Bool)

(assert (=> b!687192 (= e!391387 call!34145)))

(declare-fun d!94863 () Bool)

(declare-fun res!452263 () Bool)

(assert (=> d!94863 (=> res!452263 e!391383)))

(assert (=> d!94863 (= res!452263 (bvsge #b00000000000000000000000000000000 (size!19369 a!3626)))))

(assert (=> d!94863 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13085) e!391383)))

(declare-fun b!687194 () Bool)

(assert (=> b!687194 (= e!391386 (contains!3631 Nil!13085 (select (arr!18994 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687195 () Bool)

(assert (=> b!687195 (= e!391388 e!391387)))

(assert (=> b!687195 (= c!77831 (validKeyInArray!0 (select (arr!18994 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94863 (not res!452263)) b!687193))

(assert (= (and b!687193 res!452265) b!687194))

(assert (= (and b!687193 res!452262) b!687195))

(assert (= (and b!687195 c!77831) b!687192))

(assert (= (and b!687195 (not c!77831)) b!687191))

(assert (= (or b!687192 b!687191) bm!34142))

(declare-fun m!651299 () Bool)

(assert (=> bm!34142 m!651299))

(declare-fun m!651301 () Bool)

(assert (=> bm!34142 m!651301))

(assert (=> b!687193 m!651299))

(assert (=> b!687193 m!651299))

(declare-fun m!651303 () Bool)

(assert (=> b!687193 m!651303))

(assert (=> b!687194 m!651299))

(assert (=> b!687194 m!651299))

(declare-fun m!651305 () Bool)

(assert (=> b!687194 m!651305))

(assert (=> b!687195 m!651299))

(assert (=> b!687195 m!651299))

(assert (=> b!687195 m!651303))

(assert (=> b!686940 d!94863))

(declare-fun d!94867 () Bool)

(declare-fun res!452270 () Bool)

(declare-fun e!391393 () Bool)

(assert (=> d!94867 (=> res!452270 e!391393)))

(assert (=> d!94867 (= res!452270 (= (select (arr!18994 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94867 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!391393)))

(declare-fun b!687200 () Bool)

(declare-fun e!391394 () Bool)

(assert (=> b!687200 (= e!391393 e!391394)))

(declare-fun res!452271 () Bool)

(assert (=> b!687200 (=> (not res!452271) (not e!391394))))

(assert (=> b!687200 (= res!452271 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19369 a!3626)))))

(declare-fun b!687201 () Bool)

(assert (=> b!687201 (= e!391394 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94867 (not res!452270)) b!687200))

(assert (= (and b!687200 res!452271) b!687201))

(assert (=> d!94867 m!651299))

(declare-fun m!651307 () Bool)

(assert (=> b!687201 m!651307))

(assert (=> b!686941 d!94867))

(declare-fun d!94869 () Bool)

(declare-fun lt!315339 () Bool)

(assert (=> d!94869 (= lt!315339 (select (content!298 lt!315259) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!391396 () Bool)

(assert (=> d!94869 (= lt!315339 e!391396)))

(declare-fun res!452273 () Bool)

(assert (=> d!94869 (=> (not res!452273) (not e!391396))))

(assert (=> d!94869 (= res!452273 ((_ is Cons!13084) lt!315259))))

(assert (=> d!94869 (= (contains!3631 lt!315259 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315339)))

(declare-fun b!687202 () Bool)

(declare-fun e!391395 () Bool)

(assert (=> b!687202 (= e!391396 e!391395)))

(declare-fun res!452272 () Bool)

(assert (=> b!687202 (=> res!452272 e!391395)))

(assert (=> b!687202 (= res!452272 (= (h!14129 lt!315259) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687203 () Bool)

(assert (=> b!687203 (= e!391395 (contains!3631 (t!19354 lt!315259) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94869 res!452273) b!687202))

(assert (= (and b!687202 (not res!452272)) b!687203))

(assert (=> d!94869 m!651227))

(declare-fun m!651309 () Bool)

(assert (=> d!94869 m!651309))

(declare-fun m!651311 () Bool)

(assert (=> b!687203 m!651311))

(assert (=> b!686931 d!94869))

(declare-fun d!94875 () Bool)

(assert (=> d!94875 (= (array_inv!14768 a!3626) (bvsge (size!19369 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61388 d!94875))

(declare-fun b!687206 () Bool)

(declare-fun e!391401 () Bool)

(declare-fun call!34146 () Bool)

(assert (=> b!687206 (= e!391401 call!34146)))

(declare-fun bm!34143 () Bool)

(declare-fun c!77832 () Bool)

(assert (=> bm!34143 (= call!34146 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77832 (Cons!13084 (select (arr!18994 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!687208 () Bool)

(declare-fun e!391399 () Bool)

(declare-fun e!391402 () Bool)

(assert (=> b!687208 (= e!391399 e!391402)))

(declare-fun res!452276 () Bool)

(assert (=> b!687208 (=> (not res!452276) (not e!391402))))

(declare-fun e!391400 () Bool)

(assert (=> b!687208 (= res!452276 (not e!391400))))

(declare-fun res!452278 () Bool)

(assert (=> b!687208 (=> (not res!452278) (not e!391400))))

(assert (=> b!687208 (= res!452278 (validKeyInArray!0 (select (arr!18994 a!3626) from!3004)))))

(declare-fun b!687207 () Bool)

(assert (=> b!687207 (= e!391401 call!34146)))

(declare-fun d!94879 () Bool)

(declare-fun res!452277 () Bool)

(assert (=> d!94879 (=> res!452277 e!391399)))

(assert (=> d!94879 (= res!452277 (bvsge from!3004 (size!19369 a!3626)))))

(assert (=> d!94879 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391399)))

(declare-fun b!687209 () Bool)

(assert (=> b!687209 (= e!391400 (contains!3631 acc!681 (select (arr!18994 a!3626) from!3004)))))

(declare-fun b!687210 () Bool)

(assert (=> b!687210 (= e!391402 e!391401)))

(assert (=> b!687210 (= c!77832 (validKeyInArray!0 (select (arr!18994 a!3626) from!3004)))))

(assert (= (and d!94879 (not res!452277)) b!687208))

(assert (= (and b!687208 res!452278) b!687209))

(assert (= (and b!687208 res!452276) b!687210))

(assert (= (and b!687210 c!77832) b!687207))

(assert (= (and b!687210 (not c!77832)) b!687206))

(assert (= (or b!687207 b!687206) bm!34143))

(assert (=> bm!34143 m!651053))

(declare-fun m!651315 () Bool)

(assert (=> bm!34143 m!651315))

(assert (=> b!687208 m!651053))

(assert (=> b!687208 m!651053))

(assert (=> b!687208 m!651067))

(assert (=> b!687209 m!651053))

(assert (=> b!687209 m!651053))

(declare-fun m!651317 () Bool)

(assert (=> b!687209 m!651317))

(assert (=> b!687210 m!651053))

(assert (=> b!687210 m!651053))

(assert (=> b!687210 m!651067))

(assert (=> b!686937 d!94879))

(declare-fun d!94881 () Bool)

(declare-fun lt!315342 () Bool)

(assert (=> d!94881 (= lt!315342 (select (content!298 acc!681) k0!2843))))

(declare-fun e!391408 () Bool)

(assert (=> d!94881 (= lt!315342 e!391408)))

(declare-fun res!452284 () Bool)

(assert (=> d!94881 (=> (not res!452284) (not e!391408))))

(assert (=> d!94881 (= res!452284 ((_ is Cons!13084) acc!681))))

(assert (=> d!94881 (= (contains!3631 acc!681 k0!2843) lt!315342)))

(declare-fun b!687215 () Bool)

(declare-fun e!391407 () Bool)

(assert (=> b!687215 (= e!391408 e!391407)))

(declare-fun res!452283 () Bool)

(assert (=> b!687215 (=> res!452283 e!391407)))

(assert (=> b!687215 (= res!452283 (= (h!14129 acc!681) k0!2843))))

(declare-fun b!687216 () Bool)

(assert (=> b!687216 (= e!391407 (contains!3631 (t!19354 acc!681) k0!2843))))

(assert (= (and d!94881 res!452284) b!687215))

(assert (= (and b!687215 (not res!452283)) b!687216))

(assert (=> d!94881 m!651153))

(declare-fun m!651319 () Bool)

(assert (=> d!94881 m!651319))

(declare-fun m!651321 () Bool)

(assert (=> b!687216 m!651321))

(assert (=> b!686927 d!94881))

(assert (=> b!686938 d!94881))

(check-sat (not b!687195) (not d!94835) (not b!687014) (not b!687170) (not d!94793) (not d!94831) (not b!687209) (not d!94849) (not b!687176) (not b!687210) (not b!687193) (not b!687049) (not d!94881) (not b!687022) (not b!687131) (not b!687194) (not b!687201) (not bm!34141) (not b!687047) (not d!94791) (not b!687048) (not d!94853) (not b!687216) (not b!687208) (not bm!34143) (not b!687016) (not d!94869) (not b!687172) (not d!94821) (not b!687203) (not bm!34124) (not bm!34142) (not b!687155) (not d!94789) (not b!687174) (not b!687090) (not b!687021) (not b!687071) (not b!687173) (not bm!34134) (not b!687070) (not b!687171) (not d!94805))
(check-sat)
