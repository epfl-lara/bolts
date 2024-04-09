; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61386 () Bool)

(assert start!61386)

(declare-fun b!686862 () Bool)

(declare-fun res!452026 () Bool)

(declare-fun e!391167 () Bool)

(assert (=> b!686862 (=> (not res!452026) (not e!391167))))

(declare-datatypes ((array!39645 0))(
  ( (array!39646 (arr!18993 (Array (_ BitVec 32) (_ BitVec 64))) (size!19368 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39645)

(declare-datatypes ((List!13087 0))(
  ( (Nil!13084) (Cons!13083 (h!14128 (_ BitVec 64)) (t!19353 List!13087)) )
))
(declare-fun arrayNoDuplicates!0 (array!39645 (_ BitVec 32) List!13087) Bool)

(assert (=> b!686862 (= res!452026 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13084))))

(declare-fun b!686863 () Bool)

(declare-fun e!391168 () Bool)

(declare-fun e!391171 () Bool)

(assert (=> b!686863 (= e!391168 e!391171)))

(declare-fun res!452029 () Bool)

(assert (=> b!686863 (=> (not res!452029) (not e!391171))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686863 (= res!452029 (bvsle from!3004 i!1382))))

(declare-fun b!686864 () Bool)

(declare-datatypes ((Unit!24202 0))(
  ( (Unit!24203) )
))
(declare-fun e!391174 () Unit!24202)

(declare-fun lt!315237 () Unit!24202)

(assert (=> b!686864 (= e!391174 lt!315237)))

(declare-fun lt!315232 () Unit!24202)

(declare-fun acc!681 () List!13087)

(declare-fun lemmaListSubSeqRefl!0 (List!13087) Unit!24202)

(assert (=> b!686864 (= lt!315232 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!215 (List!13087 List!13087) Bool)

(assert (=> b!686864 (subseq!215 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39645 List!13087 List!13087 (_ BitVec 32)) Unit!24202)

(declare-fun $colon$colon!379 (List!13087 (_ BitVec 64)) List!13087)

(assert (=> b!686864 (= lt!315237 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!379 acc!681 (select (arr!18993 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686864 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686865 () Bool)

(declare-fun e!391172 () Unit!24202)

(declare-fun Unit!24204 () Unit!24202)

(assert (=> b!686865 (= e!391172 Unit!24204)))

(declare-fun lt!315238 () Unit!24202)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39645 (_ BitVec 64) (_ BitVec 32)) Unit!24202)

(assert (=> b!686865 (= lt!315238 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686865 false))

(declare-fun b!686866 () Bool)

(declare-fun res!452024 () Bool)

(assert (=> b!686866 (=> (not res!452024) (not e!391167))))

(assert (=> b!686866 (= res!452024 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19368 a!3626))))))

(declare-fun b!686867 () Bool)

(declare-fun res!452036 () Bool)

(assert (=> b!686867 (=> (not res!452036) (not e!391167))))

(declare-fun arrayContainsKey!0 (array!39645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686867 (= res!452036 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686868 () Bool)

(declare-fun e!391169 () Bool)

(assert (=> b!686868 (= e!391167 (not e!391169))))

(declare-fun res!452020 () Bool)

(assert (=> b!686868 (=> res!452020 e!391169)))

(assert (=> b!686868 (= res!452020 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!315240 () List!13087)

(assert (=> b!686868 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315240)))

(declare-fun lt!315236 () Unit!24202)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39645 (_ BitVec 64) (_ BitVec 32) List!13087 List!13087) Unit!24202)

(assert (=> b!686868 (= lt!315236 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315240))))

(declare-fun -!180 (List!13087 (_ BitVec 64)) List!13087)

(assert (=> b!686868 (= (-!180 lt!315240 k!2843) acc!681)))

(assert (=> b!686868 (= lt!315240 ($colon$colon!379 acc!681 k!2843))))

(declare-fun lt!315235 () Unit!24202)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13087) Unit!24202)

(assert (=> b!686868 (= lt!315235 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686868 (subseq!215 acc!681 acc!681)))

(declare-fun lt!315239 () Unit!24202)

(assert (=> b!686868 (= lt!315239 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686868 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315234 () Unit!24202)

(assert (=> b!686868 (= lt!315234 e!391174)))

(declare-fun c!77789 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686868 (= c!77789 (validKeyInArray!0 (select (arr!18993 a!3626) from!3004)))))

(declare-fun lt!315233 () Unit!24202)

(assert (=> b!686868 (= lt!315233 e!391172)))

(declare-fun c!77788 () Bool)

(assert (=> b!686868 (= c!77788 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686868 (arrayContainsKey!0 (array!39646 (store (arr!18993 a!3626) i!1382 k!2843) (size!19368 a!3626)) k!2843 from!3004)))

(declare-fun b!686869 () Bool)

(declare-fun res!452034 () Bool)

(assert (=> b!686869 (=> (not res!452034) (not e!391167))))

(declare-fun noDuplicate!877 (List!13087) Bool)

(assert (=> b!686869 (= res!452034 (noDuplicate!877 acc!681))))

(declare-fun b!686870 () Bool)

(declare-fun res!452027 () Bool)

(assert (=> b!686870 (=> (not res!452027) (not e!391167))))

(assert (=> b!686870 (= res!452027 (validKeyInArray!0 k!2843))))

(declare-fun b!686871 () Bool)

(declare-fun Unit!24205 () Unit!24202)

(assert (=> b!686871 (= e!391172 Unit!24205)))

(declare-fun b!686872 () Bool)

(declare-fun res!452035 () Bool)

(assert (=> b!686872 (=> (not res!452035) (not e!391167))))

(assert (=> b!686872 (= res!452035 e!391168)))

(declare-fun res!452033 () Bool)

(assert (=> b!686872 (=> res!452033 e!391168)))

(declare-fun e!391166 () Bool)

(assert (=> b!686872 (= res!452033 e!391166)))

(declare-fun res!452023 () Bool)

(assert (=> b!686872 (=> (not res!452023) (not e!391166))))

(assert (=> b!686872 (= res!452023 (bvsgt from!3004 i!1382))))

(declare-fun b!686873 () Bool)

(declare-fun res!452022 () Bool)

(assert (=> b!686873 (=> (not res!452022) (not e!391167))))

(assert (=> b!686873 (= res!452022 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686874 () Bool)

(declare-fun Unit!24206 () Unit!24202)

(assert (=> b!686874 (= e!391174 Unit!24206)))

(declare-fun res!452030 () Bool)

(assert (=> start!61386 (=> (not res!452030) (not e!391167))))

(assert (=> start!61386 (= res!452030 (and (bvslt (size!19368 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19368 a!3626))))))

(assert (=> start!61386 e!391167))

(assert (=> start!61386 true))

(declare-fun array_inv!14767 (array!39645) Bool)

(assert (=> start!61386 (array_inv!14767 a!3626)))

(declare-fun b!686875 () Bool)

(declare-fun e!391170 () Bool)

(assert (=> b!686875 (= e!391169 e!391170)))

(declare-fun res!452031 () Bool)

(assert (=> b!686875 (=> (not res!452031) (not e!391170))))

(declare-fun contains!3630 (List!13087 (_ BitVec 64)) Bool)

(assert (=> b!686875 (= res!452031 (not (contains!3630 lt!315240 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686876 () Bool)

(assert (=> b!686876 (= e!391170 (not (contains!3630 lt!315240 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686877 () Bool)

(assert (=> b!686877 (= e!391171 (not (contains!3630 acc!681 k!2843)))))

(declare-fun b!686878 () Bool)

(declare-fun res!452032 () Bool)

(assert (=> b!686878 (=> (not res!452032) (not e!391167))))

(assert (=> b!686878 (= res!452032 (not (contains!3630 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686879 () Bool)

(declare-fun res!452021 () Bool)

(assert (=> b!686879 (=> (not res!452021) (not e!391167))))

(assert (=> b!686879 (= res!452021 (not (contains!3630 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686880 () Bool)

(declare-fun res!452025 () Bool)

(assert (=> b!686880 (=> (not res!452025) (not e!391167))))

(assert (=> b!686880 (= res!452025 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19368 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686881 () Bool)

(assert (=> b!686881 (= e!391166 (contains!3630 acc!681 k!2843))))

(declare-fun b!686882 () Bool)

(declare-fun res!452028 () Bool)

(assert (=> b!686882 (=> res!452028 e!391169)))

(assert (=> b!686882 (= res!452028 (not (noDuplicate!877 lt!315240)))))

(assert (= (and start!61386 res!452030) b!686869))

(assert (= (and b!686869 res!452034) b!686878))

(assert (= (and b!686878 res!452032) b!686879))

(assert (= (and b!686879 res!452021) b!686872))

(assert (= (and b!686872 res!452023) b!686881))

(assert (= (and b!686872 (not res!452033)) b!686863))

(assert (= (and b!686863 res!452029) b!686877))

(assert (= (and b!686872 res!452035) b!686862))

(assert (= (and b!686862 res!452026) b!686873))

(assert (= (and b!686873 res!452022) b!686866))

(assert (= (and b!686866 res!452024) b!686870))

(assert (= (and b!686870 res!452027) b!686867))

(assert (= (and b!686867 res!452036) b!686880))

(assert (= (and b!686880 res!452025) b!686868))

(assert (= (and b!686868 c!77788) b!686865))

(assert (= (and b!686868 (not c!77788)) b!686871))

(assert (= (and b!686868 c!77789) b!686864))

(assert (= (and b!686868 (not c!77789)) b!686874))

(assert (= (and b!686868 (not res!452020)) b!686882))

(assert (= (and b!686882 (not res!452028)) b!686875))

(assert (= (and b!686875 res!452031) b!686876))

(declare-fun m!650985 () Bool)

(assert (=> b!686881 m!650985))

(declare-fun m!650987 () Bool)

(assert (=> b!686867 m!650987))

(declare-fun m!650989 () Bool)

(assert (=> b!686878 m!650989))

(declare-fun m!650991 () Bool)

(assert (=> b!686864 m!650991))

(declare-fun m!650993 () Bool)

(assert (=> b!686864 m!650993))

(declare-fun m!650995 () Bool)

(assert (=> b!686864 m!650995))

(declare-fun m!650997 () Bool)

(assert (=> b!686864 m!650997))

(assert (=> b!686864 m!650993))

(assert (=> b!686864 m!650995))

(declare-fun m!650999 () Bool)

(assert (=> b!686864 m!650999))

(declare-fun m!651001 () Bool)

(assert (=> b!686864 m!651001))

(declare-fun m!651003 () Bool)

(assert (=> b!686876 m!651003))

(declare-fun m!651005 () Bool)

(assert (=> b!686862 m!651005))

(declare-fun m!651007 () Bool)

(assert (=> b!686870 m!651007))

(declare-fun m!651009 () Bool)

(assert (=> b!686882 m!651009))

(declare-fun m!651011 () Bool)

(assert (=> b!686879 m!651011))

(declare-fun m!651013 () Bool)

(assert (=> b!686868 m!651013))

(assert (=> b!686868 m!650991))

(assert (=> b!686868 m!650993))

(declare-fun m!651015 () Bool)

(assert (=> b!686868 m!651015))

(declare-fun m!651017 () Bool)

(assert (=> b!686868 m!651017))

(assert (=> b!686868 m!650999))

(declare-fun m!651019 () Bool)

(assert (=> b!686868 m!651019))

(declare-fun m!651021 () Bool)

(assert (=> b!686868 m!651021))

(assert (=> b!686868 m!650993))

(declare-fun m!651023 () Bool)

(assert (=> b!686868 m!651023))

(declare-fun m!651025 () Bool)

(assert (=> b!686868 m!651025))

(declare-fun m!651027 () Bool)

(assert (=> b!686868 m!651027))

(declare-fun m!651029 () Bool)

(assert (=> b!686868 m!651029))

(assert (=> b!686868 m!651001))

(assert (=> b!686877 m!650985))

(declare-fun m!651031 () Bool)

(assert (=> b!686873 m!651031))

(declare-fun m!651033 () Bool)

(assert (=> b!686865 m!651033))

(declare-fun m!651035 () Bool)

(assert (=> start!61386 m!651035))

(declare-fun m!651037 () Bool)

(assert (=> b!686869 m!651037))

(declare-fun m!651039 () Bool)

(assert (=> b!686875 m!651039))

(push 1)

(assert (not start!61386))

(assert (not b!686876))

(assert (not b!686867))

(assert (not b!686873))

(assert (not b!686878))

(assert (not b!686865))

(assert (not b!686881))

(assert (not b!686869))

(assert (not b!686877))

(assert (not b!686864))

(assert (not b!686862))

(assert (not b!686868))

(assert (not b!686879))

(assert (not b!686870))

(assert (not b!686875))

(assert (not b!686882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94813 () Bool)

(declare-fun lt!315313 () Bool)

(declare-fun content!299 (List!13087) (Set (_ BitVec 64)))

(assert (=> d!94813 (= lt!315313 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!299 acc!681)))))

(declare-fun e!391300 () Bool)

(assert (=> d!94813 (= lt!315313 e!391300)))

(declare-fun res!452203 () Bool)

(assert (=> d!94813 (=> (not res!452203) (not e!391300))))

(assert (=> d!94813 (= res!452203 (is-Cons!13083 acc!681))))

(assert (=> d!94813 (= (contains!3630 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315313)))

(declare-fun b!687083 () Bool)

(declare-fun e!391299 () Bool)

(assert (=> b!687083 (= e!391300 e!391299)))

(declare-fun res!452204 () Bool)

(assert (=> b!687083 (=> res!452204 e!391299)))

(assert (=> b!687083 (= res!452204 (= (h!14128 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687084 () Bool)

(assert (=> b!687084 (= e!391299 (contains!3630 (t!19353 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94813 res!452203) b!687083))

(assert (= (and b!687083 (not res!452204)) b!687084))

(declare-fun m!651199 () Bool)

(assert (=> d!94813 m!651199))

(declare-fun m!651201 () Bool)

(assert (=> d!94813 m!651201))

(declare-fun m!651203 () Bool)

(assert (=> b!687084 m!651203))

(assert (=> b!686878 d!94813))

(declare-fun b!687126 () Bool)

(declare-fun e!391335 () Bool)

(declare-fun e!391337 () Bool)

(assert (=> b!687126 (= e!391335 e!391337)))

(declare-fun res!452232 () Bool)

(assert (=> b!687126 (=> (not res!452232) (not e!391337))))

(declare-fun e!391336 () Bool)

(assert (=> b!687126 (= res!452232 (not e!391336))))

(declare-fun res!452231 () Bool)

(assert (=> b!687126 (=> (not res!452231) (not e!391336))))

(assert (=> b!687126 (= res!452231 (validKeyInArray!0 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687127 () Bool)

(declare-fun e!391334 () Bool)

(declare-fun call!34136 () Bool)

(assert (=> b!687127 (= e!391334 call!34136)))

(declare-fun d!94819 () Bool)

(declare-fun res!452230 () Bool)

(assert (=> d!94819 (=> res!452230 e!391335)))

(assert (=> d!94819 (= res!452230 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19368 a!3626)))))

(assert (=> d!94819 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315240) e!391335)))

(declare-fun bm!34133 () Bool)

(declare-fun c!77815 () Bool)

(assert (=> bm!34133 (= call!34136 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77815 (Cons!13083 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315240) lt!315240)))))

(declare-fun b!687128 () Bool)

(assert (=> b!687128 (= e!391336 (contains!3630 lt!315240 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687129 () Bool)

(assert (=> b!687129 (= e!391334 call!34136)))

(declare-fun b!687130 () Bool)

(assert (=> b!687130 (= e!391337 e!391334)))

(assert (=> b!687130 (= c!77815 (validKeyInArray!0 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94819 (not res!452230)) b!687126))

(assert (= (and b!687126 res!452231) b!687128))

(assert (= (and b!687126 res!452232) b!687130))

(assert (= (and b!687130 c!77815) b!687127))

(assert (= (and b!687130 (not c!77815)) b!687129))

(assert (= (or b!687127 b!687129) bm!34133))

(declare-fun m!651217 () Bool)

(assert (=> b!687126 m!651217))

(assert (=> b!687126 m!651217))

(declare-fun m!651219 () Bool)

(assert (=> b!687126 m!651219))

(assert (=> bm!34133 m!651217))

(declare-fun m!651221 () Bool)

(assert (=> bm!34133 m!651221))

(assert (=> b!687128 m!651217))

(assert (=> b!687128 m!651217))

(declare-fun m!651223 () Bool)

(assert (=> b!687128 m!651223))

(assert (=> b!687130 m!651217))

(assert (=> b!687130 m!651217))

(assert (=> b!687130 m!651219))

(assert (=> b!686868 d!94819))

(declare-fun d!94829 () Bool)

(declare-fun e!391362 () Bool)

(assert (=> d!94829 e!391362))

(declare-fun res!452241 () Bool)

(assert (=> d!94829 (=> (not res!452241) (not e!391362))))

(declare-fun lt!315328 () List!13087)

(declare-fun size!19372 (List!13087) Int)

(assert (=> d!94829 (= res!452241 (<= (size!19372 lt!315328) (size!19372 lt!315240)))))

(declare-fun e!391360 () List!13087)

(assert (=> d!94829 (= lt!315328 e!391360)))

(declare-fun c!77829 () Bool)

(assert (=> d!94829 (= c!77829 (is-Cons!13083 lt!315240))))

(assert (=> d!94829 (= (-!180 lt!315240 k!2843) lt!315328)))

(declare-fun b!687163 () Bool)

(assert (=> b!687163 (= e!391360 Nil!13084)))

(declare-fun b!687164 () Bool)

(assert (=> b!687164 (= e!391362 (= (content!299 lt!315328) (set.minus (content!299 lt!315240) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun bm!34140 () Bool)

(declare-fun call!34143 () List!13087)

(assert (=> bm!34140 (= call!34143 (-!180 (t!19353 lt!315240) k!2843))))

(declare-fun b!687165 () Bool)

(declare-fun e!391361 () List!13087)

(assert (=> b!687165 (= e!391361 (Cons!13083 (h!14128 lt!315240) call!34143))))

(declare-fun b!687166 () Bool)

(assert (=> b!687166 (= e!391360 e!391361)))

(declare-fun c!77828 () Bool)

(assert (=> b!687166 (= c!77828 (= k!2843 (h!14128 lt!315240)))))

(declare-fun b!687167 () Bool)

(assert (=> b!687167 (= e!391361 call!34143)))

(assert (= (and d!94829 c!77829) b!687166))

(assert (= (and d!94829 (not c!77829)) b!687163))

(assert (= (and b!687166 c!77828) b!687167))

(assert (= (and b!687166 (not c!77828)) b!687165))

(assert (= (or b!687167 b!687165) bm!34140))

(assert (= (and d!94829 res!452241) b!687164))

(declare-fun m!651259 () Bool)

(assert (=> d!94829 m!651259))

(declare-fun m!651261 () Bool)

(assert (=> d!94829 m!651261))

(declare-fun m!651263 () Bool)

(assert (=> b!687164 m!651263))

(declare-fun m!651265 () Bool)

(assert (=> b!687164 m!651265))

(declare-fun m!651267 () Bool)

(assert (=> b!687164 m!651267))

(declare-fun m!651269 () Bool)

(assert (=> bm!34140 m!651269))

(assert (=> b!686868 d!94829))

(declare-fun b!687187 () Bool)

(declare-fun e!391379 () Bool)

(assert (=> b!687187 (= e!391379 (subseq!215 (t!19353 acc!681) (t!19353 acc!681)))))

(declare-fun b!687188 () Bool)

(declare-fun e!391380 () Bool)

(assert (=> b!687188 (= e!391380 (subseq!215 acc!681 (t!19353 acc!681)))))

(declare-fun b!687185 () Bool)

(declare-fun e!391382 () Bool)

(declare-fun e!391381 () Bool)

(assert (=> b!687185 (= e!391382 e!391381)))

(declare-fun res!452258 () Bool)

(assert (=> b!687185 (=> (not res!452258) (not e!391381))))

(assert (=> b!687185 (= res!452258 (is-Cons!13083 acc!681))))

(declare-fun b!687186 () Bool)

(assert (=> b!687186 (= e!391381 e!391380)))

(declare-fun res!452257 () Bool)

(assert (=> b!687186 (=> res!452257 e!391380)))

(assert (=> b!687186 (= res!452257 e!391379)))

(declare-fun res!452260 () Bool)

(assert (=> b!687186 (=> (not res!452260) (not e!391379))))

(assert (=> b!687186 (= res!452260 (= (h!14128 acc!681) (h!14128 acc!681)))))

(declare-fun d!94843 () Bool)

(declare-fun res!452259 () Bool)

(assert (=> d!94843 (=> res!452259 e!391382)))

(assert (=> d!94843 (= res!452259 (is-Nil!13084 acc!681))))

(assert (=> d!94843 (= (subseq!215 acc!681 acc!681) e!391382)))

(assert (= (and d!94843 (not res!452259)) b!687185))

(assert (= (and b!687185 res!452258) b!687186))

(assert (= (and b!687186 res!452260) b!687187))

(assert (= (and b!687186 (not res!452257)) b!687188))

(declare-fun m!651285 () Bool)

(assert (=> b!687187 m!651285))

(declare-fun m!651287 () Bool)

(assert (=> b!687188 m!651287))

(assert (=> b!686868 d!94843))

(declare-fun d!94857 () Bool)

(declare-fun res!452274 () Bool)

(declare-fun e!391397 () Bool)

(assert (=> d!94857 (=> res!452274 e!391397)))

(assert (=> d!94857 (= res!452274 (= (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94857 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391397)))

(declare-fun b!687204 () Bool)

(declare-fun e!391398 () Bool)

(assert (=> b!687204 (= e!391397 e!391398)))

(declare-fun res!452275 () Bool)

(assert (=> b!687204 (=> (not res!452275) (not e!391398))))

(assert (=> b!687204 (= res!452275 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19368 a!3626)))))

(declare-fun b!687205 () Bool)

(assert (=> b!687205 (= e!391398 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94857 (not res!452274)) b!687204))

(assert (= (and b!687204 res!452275) b!687205))

(assert (=> d!94857 m!651217))

(declare-fun m!651313 () Bool)

(assert (=> b!687205 m!651313))

(assert (=> b!686868 d!94857))

(declare-fun d!94877 () Bool)

(assert (=> d!94877 (= (-!180 ($colon$colon!379 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315346 () Unit!24202)

(declare-fun choose!16 ((_ BitVec 64) List!13087) Unit!24202)

(assert (=> d!94877 (= lt!315346 (choose!16 k!2843 acc!681))))

(assert (=> d!94877 (not (contains!3630 acc!681 k!2843))))

(assert (=> d!94877 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315346)))

(declare-fun bs!20153 () Bool)

(assert (= bs!20153 d!94877))

(assert (=> bs!20153 m!651021))

(assert (=> bs!20153 m!651021))

(declare-fun m!651329 () Bool)

(assert (=> bs!20153 m!651329))

(declare-fun m!651333 () Bool)

(assert (=> bs!20153 m!651333))

(assert (=> bs!20153 m!650985))

(assert (=> b!686868 d!94877))

(declare-fun d!94887 () Bool)

(declare-fun res!452291 () Bool)

(declare-fun e!391415 () Bool)

(assert (=> d!94887 (=> res!452291 e!391415)))

(assert (=> d!94887 (= res!452291 (= (select (arr!18993 (array!39646 (store (arr!18993 a!3626) i!1382 k!2843) (size!19368 a!3626))) from!3004) k!2843))))

(assert (=> d!94887 (= (arrayContainsKey!0 (array!39646 (store (arr!18993 a!3626) i!1382 k!2843) (size!19368 a!3626)) k!2843 from!3004) e!391415)))

(declare-fun b!687223 () Bool)

(declare-fun e!391416 () Bool)

(assert (=> b!687223 (= e!391415 e!391416)))

(declare-fun res!452292 () Bool)

(assert (=> b!687223 (=> (not res!452292) (not e!391416))))

(assert (=> b!687223 (= res!452292 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19368 (array!39646 (store (arr!18993 a!3626) i!1382 k!2843) (size!19368 a!3626)))))))

(declare-fun b!687224 () Bool)

(assert (=> b!687224 (= e!391416 (arrayContainsKey!0 (array!39646 (store (arr!18993 a!3626) i!1382 k!2843) (size!19368 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94887 (not res!452291)) b!687223))

(assert (= (and b!687223 res!452292) b!687224))

(declare-fun m!651341 () Bool)

(assert (=> d!94887 m!651341))

(declare-fun m!651343 () Bool)

(assert (=> b!687224 m!651343))

(assert (=> b!686868 d!94887))

(declare-fun d!94891 () Bool)

(assert (=> d!94891 (subseq!215 acc!681 acc!681)))

(declare-fun lt!315352 () Unit!24202)

(declare-fun choose!36 (List!13087) Unit!24202)

(assert (=> d!94891 (= lt!315352 (choose!36 acc!681))))

(assert (=> d!94891 (= (lemmaListSubSeqRefl!0 acc!681) lt!315352)))

(declare-fun bs!20154 () Bool)

(assert (= bs!20154 d!94891))

(assert (=> bs!20154 m!651001))

(declare-fun m!651361 () Bool)

(assert (=> bs!20154 m!651361))

(assert (=> b!686868 d!94891))

(declare-fun d!94899 () Bool)

(assert (=> d!94899 (= (validKeyInArray!0 (select (arr!18993 a!3626) from!3004)) (and (not (= (select (arr!18993 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18993 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!686868 d!94899))

(declare-fun d!94907 () Bool)

(assert (=> d!94907 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315240)))

(declare-fun lt!315359 () Unit!24202)

(declare-fun choose!66 (array!39645 (_ BitVec 64) (_ BitVec 32) List!13087 List!13087) Unit!24202)

(assert (=> d!94907 (= lt!315359 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315240))))

(assert (=> d!94907 (bvslt (size!19368 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94907 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315240) lt!315359)))

(declare-fun bs!20156 () Bool)

(assert (= bs!20156 d!94907))

(assert (=> bs!20156 m!651013))

(declare-fun m!651373 () Bool)

(assert (=> bs!20156 m!651373))

(assert (=> b!686868 d!94907))

(declare-fun d!94913 () Bool)

(assert (=> d!94913 (= ($colon$colon!379 acc!681 k!2843) (Cons!13083 k!2843 acc!681))))

(assert (=> b!686868 d!94913))

(declare-fun b!687243 () Bool)

(declare-fun e!391434 () Bool)

(declare-fun e!391436 () Bool)

(assert (=> b!687243 (= e!391434 e!391436)))

(declare-fun res!452309 () Bool)

(assert (=> b!687243 (=> (not res!452309) (not e!391436))))

(declare-fun e!391435 () Bool)

(assert (=> b!687243 (= res!452309 (not e!391435))))

(declare-fun res!452308 () Bool)

(assert (=> b!687243 (=> (not res!452308) (not e!391435))))

(assert (=> b!687243 (= res!452308 (validKeyInArray!0 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687244 () Bool)

(declare-fun e!391433 () Bool)

(declare-fun call!34149 () Bool)

(assert (=> b!687244 (= e!391433 call!34149)))

(declare-fun d!94915 () Bool)

(declare-fun res!452307 () Bool)

(assert (=> d!94915 (=> res!452307 e!391434)))

(assert (=> d!94915 (= res!452307 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19368 a!3626)))))

(assert (=> d!94915 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391434)))

(declare-fun c!77835 () Bool)

(declare-fun bm!34146 () Bool)

(assert (=> bm!34146 (= call!34149 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77835 (Cons!13083 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!687245 () Bool)

(assert (=> b!687245 (= e!391435 (contains!3630 acc!681 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687246 () Bool)

(assert (=> b!687246 (= e!391433 call!34149)))

(declare-fun b!687247 () Bool)

(assert (=> b!687247 (= e!391436 e!391433)))

(assert (=> b!687247 (= c!77835 (validKeyInArray!0 (select (arr!18993 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94915 (not res!452307)) b!687243))

(assert (= (and b!687243 res!452308) b!687245))

(assert (= (and b!687243 res!452309) b!687247))

(assert (= (and b!687247 c!77835) b!687244))

(assert (= (and b!687247 (not c!77835)) b!687246))

(assert (= (or b!687244 b!687246) bm!34146))

(assert (=> b!687243 m!651217))

(assert (=> b!687243 m!651217))

(assert (=> b!687243 m!651219))

(assert (=> bm!34146 m!651217))

(declare-fun m!651377 () Bool)

(assert (=> bm!34146 m!651377))

(assert (=> b!687245 m!651217))

(assert (=> b!687245 m!651217))

(declare-fun m!651379 () Bool)

(assert (=> b!687245 m!651379))

(assert (=> b!687247 m!651217))

(assert (=> b!687247 m!651217))

(assert (=> b!687247 m!651219))

(assert (=> b!686868 d!94915))

(declare-fun d!94917 () Bool)

(assert (=> d!94917 (= (array_inv!14767 a!3626) (bvsge (size!19368 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61386 d!94917))

(declare-fun d!94919 () Bool)

(declare-fun lt!315360 () Bool)

(assert (=> d!94919 (= lt!315360 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!299 acc!681)))))

(declare-fun e!391438 () Bool)

(assert (=> d!94919 (= lt!315360 e!391438)))

(declare-fun res!452310 () Bool)

(assert (=> d!94919 (=> (not res!452310) (not e!391438))))

(assert (=> d!94919 (= res!452310 (is-Cons!13083 acc!681))))

(assert (=> d!94919 (= (contains!3630 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315360)))

(declare-fun b!687248 () Bool)

(declare-fun e!391437 () Bool)

(assert (=> b!687248 (= e!391438 e!391437)))

(declare-fun res!452311 () Bool)

(assert (=> b!687248 (=> res!452311 e!391437)))

(assert (=> b!687248 (= res!452311 (= (h!14128 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687249 () Bool)

(assert (=> b!687249 (= e!391437 (contains!3630 (t!19353 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94919 res!452310) b!687248))

(assert (= (and b!687248 (not res!452311)) b!687249))

(assert (=> d!94919 m!651199))

(declare-fun m!651381 () Bool)

(assert (=> d!94919 m!651381))

(declare-fun m!651383 () Bool)

(assert (=> b!687249 m!651383))

(assert (=> b!686879 d!94919))

(declare-fun d!94921 () Bool)

(declare-fun res!452316 () Bool)

(declare-fun e!391443 () Bool)

(assert (=> d!94921 (=> res!452316 e!391443)))

(assert (=> d!94921 (= res!452316 (is-Nil!13084 acc!681))))

(assert (=> d!94921 (= (noDuplicate!877 acc!681) e!391443)))

(declare-fun b!687254 () Bool)

(declare-fun e!391444 () Bool)

(assert (=> b!687254 (= e!391443 e!391444)))

(declare-fun res!452317 () Bool)

(assert (=> b!687254 (=> (not res!452317) (not e!391444))))

(assert (=> b!687254 (= res!452317 (not (contains!3630 (t!19353 acc!681) (h!14128 acc!681))))))

(declare-fun b!687255 () Bool)

(assert (=> b!687255 (= e!391444 (noDuplicate!877 (t!19353 acc!681)))))

(assert (= (and d!94921 (not res!452316)) b!687254))

(assert (= (and b!687254 res!452317) b!687255))

(declare-fun m!651385 () Bool)

(assert (=> b!687254 m!651385))

(declare-fun m!651387 () Bool)

(assert (=> b!687255 m!651387))

(assert (=> b!686869 d!94921))

(declare-fun d!94923 () Bool)

(assert (=> d!94923 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315363 () Unit!24202)

(declare-fun choose!13 (array!39645 (_ BitVec 64) (_ BitVec 32)) Unit!24202)

(assert (=> d!94923 (= lt!315363 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94923 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94923 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!315363)))

(declare-fun bs!20157 () Bool)

(assert (= bs!20157 d!94923))

(assert (=> bs!20157 m!650987))

(declare-fun m!651389 () Bool)

(assert (=> bs!20157 m!651389))

(assert (=> b!686865 d!94923))

(declare-fun d!94925 () Bool)

(declare-fun lt!315364 () Bool)

(assert (=> d!94925 (= lt!315364 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!299 lt!315240)))))

(declare-fun e!391446 () Bool)

(assert (=> d!94925 (= lt!315364 e!391446)))

(declare-fun res!452318 () Bool)

(assert (=> d!94925 (=> (not res!452318) (not e!391446))))

(assert (=> d!94925 (= res!452318 (is-Cons!13083 lt!315240))))

(assert (=> d!94925 (= (contains!3630 lt!315240 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315364)))

(declare-fun b!687256 () Bool)

(declare-fun e!391445 () Bool)

(assert (=> b!687256 (= e!391446 e!391445)))

(declare-fun res!452319 () Bool)

(assert (=> b!687256 (=> res!452319 e!391445)))

(assert (=> b!687256 (= res!452319 (= (h!14128 lt!315240) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687257 () Bool)

(assert (=> b!687257 (= e!391445 (contains!3630 (t!19353 lt!315240) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94925 res!452318) b!687256))

(assert (= (and b!687256 (not res!452319)) b!687257))

(assert (=> d!94925 m!651265))

(declare-fun m!651391 () Bool)

(assert (=> d!94925 m!651391))

(declare-fun m!651393 () Bool)

(assert (=> b!687257 m!651393))

(assert (=> b!686876 d!94925))

(declare-fun d!94927 () Bool)

(declare-fun lt!315365 () Bool)

