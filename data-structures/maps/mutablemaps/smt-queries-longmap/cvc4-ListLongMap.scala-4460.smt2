; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62074 () Bool)

(assert start!62074)

(declare-fun b!694890 () Bool)

(declare-fun e!395196 () Bool)

(declare-fun e!395191 () Bool)

(assert (=> b!694890 (= e!395196 e!395191)))

(declare-fun res!459063 () Bool)

(assert (=> b!694890 (=> (not res!459063) (not e!395191))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!694890 (= res!459063 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39871 0))(
  ( (array!39872 (arr!19094 (Array (_ BitVec 32) (_ BitVec 64))) (size!19477 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39871)

(declare-datatypes ((List!13188 0))(
  ( (Nil!13185) (Cons!13184 (h!14229 (_ BitVec 64)) (t!19475 List!13188)) )
))
(declare-fun lt!316946 () List!13188)

(declare-fun acc!681 () List!13188)

(declare-fun $colon$colon!441 (List!13188 (_ BitVec 64)) List!13188)

(assert (=> b!694890 (= lt!316946 ($colon$colon!441 acc!681 (select (arr!19094 a!3626) from!3004)))))

(declare-fun b!694891 () Bool)

(declare-fun res!459065 () Bool)

(declare-fun e!395197 () Bool)

(assert (=> b!694891 (=> (not res!459065) (not e!395197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694891 (= res!459065 (validKeyInArray!0 (select (arr!19094 a!3626) from!3004)))))

(declare-fun b!694892 () Bool)

(declare-fun res!459073 () Bool)

(assert (=> b!694892 (=> (not res!459073) (not e!395197))))

(declare-fun noDuplicate!978 (List!13188) Bool)

(assert (=> b!694892 (= res!459073 (noDuplicate!978 acc!681))))

(declare-fun b!694893 () Bool)

(declare-fun e!395189 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3731 (List!13188 (_ BitVec 64)) Bool)

(assert (=> b!694893 (= e!395189 (not (contains!3731 acc!681 k!2843)))))

(declare-fun b!694894 () Bool)

(declare-fun e!395195 () Bool)

(assert (=> b!694894 (= e!395195 e!395189)))

(declare-fun res!459079 () Bool)

(assert (=> b!694894 (=> (not res!459079) (not e!395189))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694894 (= res!459079 (bvsle from!3004 i!1382))))

(declare-fun b!694895 () Bool)

(assert (=> b!694895 (= e!395197 e!395196)))

(declare-fun res!459058 () Bool)

(assert (=> b!694895 (=> (not res!459058) (not e!395196))))

(assert (=> b!694895 (= res!459058 (not (= (select (arr!19094 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!24546 0))(
  ( (Unit!24547) )
))
(declare-fun lt!316943 () Unit!24546)

(declare-fun e!395188 () Unit!24546)

(assert (=> b!694895 (= lt!316943 e!395188)))

(declare-fun c!78284 () Bool)

(assert (=> b!694895 (= c!78284 (= (select (arr!19094 a!3626) from!3004) k!2843))))

(declare-fun b!694896 () Bool)

(declare-fun e!395193 () Bool)

(assert (=> b!694896 (= e!395193 (not (contains!3731 lt!316946 k!2843)))))

(declare-fun b!694897 () Bool)

(declare-fun lt!316945 () array!39871)

(declare-fun arrayNoDuplicates!0 (array!39871 (_ BitVec 32) List!13188) Bool)

(assert (=> b!694897 (= e!395191 (not (arrayNoDuplicates!0 lt!316945 from!3004 acc!681)))))

(assert (=> b!694897 (arrayNoDuplicates!0 lt!316945 (bvadd #b00000000000000000000000000000001 from!3004) lt!316946)))

(assert (=> b!694897 (= lt!316945 (array!39872 (store (arr!19094 a!3626) i!1382 k!2843) (size!19477 a!3626)))))

(declare-fun lt!316944 () Unit!24546)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39871 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13188) Unit!24546)

(assert (=> b!694897 (= lt!316944 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316946))))

(declare-fun b!694898 () Bool)

(declare-fun res!459056 () Bool)

(assert (=> b!694898 (=> (not res!459056) (not e!395197))))

(assert (=> b!694898 (= res!459056 e!395195)))

(declare-fun res!459059 () Bool)

(assert (=> b!694898 (=> res!459059 e!395195)))

(declare-fun e!395192 () Bool)

(assert (=> b!694898 (= res!459059 e!395192)))

(declare-fun res!459075 () Bool)

(assert (=> b!694898 (=> (not res!459075) (not e!395192))))

(assert (=> b!694898 (= res!459075 (bvsgt from!3004 i!1382))))

(declare-fun b!694899 () Bool)

(assert (=> b!694899 (= e!395192 (contains!3731 acc!681 k!2843))))

(declare-fun b!694900 () Bool)

(declare-fun res!459069 () Bool)

(assert (=> b!694900 (=> (not res!459069) (not e!395197))))

(assert (=> b!694900 (= res!459069 (validKeyInArray!0 k!2843))))

(declare-fun b!694901 () Bool)

(declare-fun res!459068 () Bool)

(assert (=> b!694901 (=> (not res!459068) (not e!395197))))

(assert (=> b!694901 (= res!459068 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19477 a!3626))))))

(declare-fun b!694902 () Bool)

(declare-fun e!395194 () Bool)

(assert (=> b!694902 (= e!395194 e!395193)))

(declare-fun res!459074 () Bool)

(assert (=> b!694902 (=> (not res!459074) (not e!395193))))

(assert (=> b!694902 (= res!459074 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694903 () Bool)

(declare-fun res!459072 () Bool)

(assert (=> b!694903 (=> (not res!459072) (not e!395191))))

(assert (=> b!694903 (= res!459072 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316946))))

(declare-fun b!694904 () Bool)

(declare-fun res!459078 () Bool)

(assert (=> b!694904 (=> (not res!459078) (not e!395191))))

(assert (=> b!694904 (= res!459078 (not (contains!3731 lt!316946 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694905 () Bool)

(declare-fun res!459070 () Bool)

(assert (=> b!694905 (=> (not res!459070) (not e!395191))))

(assert (=> b!694905 (= res!459070 e!395194)))

(declare-fun res!459064 () Bool)

(assert (=> b!694905 (=> res!459064 e!395194)))

(declare-fun e!395187 () Bool)

(assert (=> b!694905 (= res!459064 e!395187)))

(declare-fun res!459067 () Bool)

(assert (=> b!694905 (=> (not res!459067) (not e!395187))))

(assert (=> b!694905 (= res!459067 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694906 () Bool)

(declare-fun res!459057 () Bool)

(assert (=> b!694906 (=> (not res!459057) (not e!395191))))

(assert (=> b!694906 (= res!459057 (not (contains!3731 lt!316946 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694907 () Bool)

(declare-fun res!459080 () Bool)

(assert (=> b!694907 (=> (not res!459080) (not e!395197))))

(assert (=> b!694907 (= res!459080 (not (contains!3731 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694908 () Bool)

(declare-fun Unit!24548 () Unit!24546)

(assert (=> b!694908 (= e!395188 Unit!24548)))

(declare-fun b!694909 () Bool)

(declare-fun res!459062 () Bool)

(assert (=> b!694909 (=> (not res!459062) (not e!395197))))

(assert (=> b!694909 (= res!459062 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13185))))

(declare-fun res!459060 () Bool)

(assert (=> start!62074 (=> (not res!459060) (not e!395197))))

(assert (=> start!62074 (= res!459060 (and (bvslt (size!19477 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19477 a!3626))))))

(assert (=> start!62074 e!395197))

(assert (=> start!62074 true))

(declare-fun array_inv!14868 (array!39871) Bool)

(assert (=> start!62074 (array_inv!14868 a!3626)))

(declare-fun b!694910 () Bool)

(declare-fun res!459066 () Bool)

(assert (=> b!694910 (=> (not res!459066) (not e!395197))))

(assert (=> b!694910 (= res!459066 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694911 () Bool)

(declare-fun res!459076 () Bool)

(assert (=> b!694911 (=> (not res!459076) (not e!395191))))

(assert (=> b!694911 (= res!459076 (noDuplicate!978 lt!316946))))

(declare-fun b!694912 () Bool)

(declare-fun res!459077 () Bool)

(assert (=> b!694912 (=> (not res!459077) (not e!395197))))

(assert (=> b!694912 (= res!459077 (not (contains!3731 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694913 () Bool)

(declare-fun res!459061 () Bool)

(assert (=> b!694913 (=> (not res!459061) (not e!395197))))

(declare-fun arrayContainsKey!0 (array!39871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694913 (= res!459061 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694914 () Bool)

(declare-fun Unit!24549 () Unit!24546)

(assert (=> b!694914 (= e!395188 Unit!24549)))

(assert (=> b!694914 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316947 () Unit!24546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39871 (_ BitVec 64) (_ BitVec 32)) Unit!24546)

(assert (=> b!694914 (= lt!316947 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694914 false))

(declare-fun b!694915 () Bool)

(assert (=> b!694915 (= e!395187 (contains!3731 lt!316946 k!2843))))

(declare-fun b!694916 () Bool)

(declare-fun res!459071 () Bool)

(assert (=> b!694916 (=> (not res!459071) (not e!395197))))

(assert (=> b!694916 (= res!459071 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19477 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!62074 res!459060) b!694892))

(assert (= (and b!694892 res!459073) b!694907))

(assert (= (and b!694907 res!459080) b!694912))

(assert (= (and b!694912 res!459077) b!694898))

(assert (= (and b!694898 res!459075) b!694899))

(assert (= (and b!694898 (not res!459059)) b!694894))

(assert (= (and b!694894 res!459079) b!694893))

(assert (= (and b!694898 res!459056) b!694909))

(assert (= (and b!694909 res!459062) b!694910))

(assert (= (and b!694910 res!459066) b!694901))

(assert (= (and b!694901 res!459068) b!694900))

(assert (= (and b!694900 res!459069) b!694913))

(assert (= (and b!694913 res!459061) b!694916))

(assert (= (and b!694916 res!459071) b!694891))

(assert (= (and b!694891 res!459065) b!694895))

(assert (= (and b!694895 c!78284) b!694914))

(assert (= (and b!694895 (not c!78284)) b!694908))

(assert (= (and b!694895 res!459058) b!694890))

(assert (= (and b!694890 res!459063) b!694911))

(assert (= (and b!694911 res!459076) b!694906))

(assert (= (and b!694906 res!459057) b!694904))

(assert (= (and b!694904 res!459078) b!694905))

(assert (= (and b!694905 res!459067) b!694915))

(assert (= (and b!694905 (not res!459064)) b!694902))

(assert (= (and b!694902 res!459074) b!694896))

(assert (= (and b!694905 res!459070) b!694903))

(assert (= (and b!694903 res!459072) b!694897))

(declare-fun m!656471 () Bool)

(assert (=> b!694907 m!656471))

(declare-fun m!656473 () Bool)

(assert (=> b!694914 m!656473))

(declare-fun m!656475 () Bool)

(assert (=> b!694914 m!656475))

(declare-fun m!656477 () Bool)

(assert (=> start!62074 m!656477))

(declare-fun m!656479 () Bool)

(assert (=> b!694906 m!656479))

(declare-fun m!656481 () Bool)

(assert (=> b!694909 m!656481))

(declare-fun m!656483 () Bool)

(assert (=> b!694891 m!656483))

(assert (=> b!694891 m!656483))

(declare-fun m!656485 () Bool)

(assert (=> b!694891 m!656485))

(declare-fun m!656487 () Bool)

(assert (=> b!694900 m!656487))

(declare-fun m!656489 () Bool)

(assert (=> b!694910 m!656489))

(assert (=> b!694895 m!656483))

(declare-fun m!656491 () Bool)

(assert (=> b!694912 m!656491))

(declare-fun m!656493 () Bool)

(assert (=> b!694899 m!656493))

(declare-fun m!656495 () Bool)

(assert (=> b!694904 m!656495))

(declare-fun m!656497 () Bool)

(assert (=> b!694915 m!656497))

(assert (=> b!694893 m!656493))

(declare-fun m!656499 () Bool)

(assert (=> b!694897 m!656499))

(declare-fun m!656501 () Bool)

(assert (=> b!694897 m!656501))

(declare-fun m!656503 () Bool)

(assert (=> b!694897 m!656503))

(declare-fun m!656505 () Bool)

(assert (=> b!694897 m!656505))

(declare-fun m!656507 () Bool)

(assert (=> b!694892 m!656507))

(assert (=> b!694890 m!656483))

(assert (=> b!694890 m!656483))

(declare-fun m!656509 () Bool)

(assert (=> b!694890 m!656509))

(declare-fun m!656511 () Bool)

(assert (=> b!694911 m!656511))

(assert (=> b!694896 m!656497))

(declare-fun m!656513 () Bool)

(assert (=> b!694913 m!656513))

(declare-fun m!656515 () Bool)

(assert (=> b!694903 m!656515))

(push 1)

(assert (not b!694904))

(assert (not b!694915))

(assert (not b!694907))

(assert (not b!694909))

(assert (not b!694899))

(assert (not b!694913))

(assert (not b!694903))

(assert (not b!694890))

(assert (not b!694893))

(assert (not b!694912))

(assert (not b!694914))

(assert (not b!694897))

(assert (not b!694892))

(assert (not start!62074))

(assert (not b!694900))

(assert (not b!694911))

(assert (not b!694910))

(assert (not b!694906))

(assert (not b!694896))

(assert (not b!694891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95845 () Bool)

(assert (=> d!95845 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!694900 d!95845))

(declare-fun b!695003 () Bool)

(declare-fun e!395278 () Bool)

(declare-fun call!34284 () Bool)

(assert (=> b!695003 (= e!395278 call!34284)))

(declare-fun b!695004 () Bool)

(assert (=> b!695004 (= e!395278 call!34284)))

(declare-fun b!695006 () Bool)

(declare-fun e!395276 () Bool)

(declare-fun e!395275 () Bool)

(assert (=> b!695006 (= e!395276 e!395275)))

(declare-fun res!459149 () Bool)

(assert (=> b!695006 (=> (not res!459149) (not e!395275))))

(declare-fun e!395277 () Bool)

(assert (=> b!695006 (= res!459149 (not e!395277))))

(declare-fun res!459151 () Bool)

(assert (=> b!695006 (=> (not res!459151) (not e!395277))))

(assert (=> b!695006 (= res!459151 (validKeyInArray!0 (select (arr!19094 a!3626) from!3004)))))

(declare-fun bm!34281 () Bool)

(declare-fun c!78294 () Bool)

(assert (=> bm!34281 (= call!34284 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78294 (Cons!13184 (select (arr!19094 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!695007 () Bool)

(assert (=> b!695007 (= e!395277 (contains!3731 acc!681 (select (arr!19094 a!3626) from!3004)))))

(declare-fun b!695005 () Bool)

(assert (=> b!695005 (= e!395275 e!395278)))

(assert (=> b!695005 (= c!78294 (validKeyInArray!0 (select (arr!19094 a!3626) from!3004)))))

(declare-fun d!95847 () Bool)

(declare-fun res!459150 () Bool)

(assert (=> d!95847 (=> res!459150 e!395276)))

(assert (=> d!95847 (= res!459150 (bvsge from!3004 (size!19477 a!3626)))))

(assert (=> d!95847 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!395276)))

(assert (= (and d!95847 (not res!459150)) b!695006))

(assert (= (and b!695006 res!459151) b!695007))

(assert (= (and b!695006 res!459149) b!695005))

(assert (= (and b!695005 c!78294) b!695003))

(assert (= (and b!695005 (not c!78294)) b!695004))

(assert (= (or b!695003 b!695004) bm!34281))

(assert (=> b!695006 m!656483))

(assert (=> b!695006 m!656483))

(assert (=> b!695006 m!656485))

(assert (=> bm!34281 m!656483))

(declare-fun m!656603 () Bool)

(assert (=> bm!34281 m!656603))

(assert (=> b!695007 m!656483))

(assert (=> b!695007 m!656483))

(declare-fun m!656605 () Bool)

(assert (=> b!695007 m!656605))

(assert (=> b!695005 m!656483))

(assert (=> b!695005 m!656483))

(assert (=> b!695005 m!656485))

(assert (=> b!694910 d!95847))

(declare-fun d!95859 () Bool)

(declare-fun lt!316964 () Bool)

(declare-fun content!324 (List!13188) (Set (_ BitVec 64)))

(assert (=> d!95859 (= lt!316964 (member k!2843 (content!324 acc!681)))))

(declare-fun e!395295 () Bool)

(assert (=> d!95859 (= lt!316964 e!395295)))

(declare-fun res!459165 () Bool)

(assert (=> d!95859 (=> (not res!459165) (not e!395295))))

(assert (=> d!95859 (= res!459165 (is-Cons!13184 acc!681))))

(assert (=> d!95859 (= (contains!3731 acc!681 k!2843) lt!316964)))

(declare-fun b!695027 () Bool)

(declare-fun e!395296 () Bool)

(assert (=> b!695027 (= e!395295 e!395296)))

(declare-fun res!459166 () Bool)

(assert (=> b!695027 (=> res!459166 e!395296)))

(assert (=> b!695027 (= res!459166 (= (h!14229 acc!681) k!2843))))

(declare-fun b!695028 () Bool)

(assert (=> b!695028 (= e!395296 (contains!3731 (t!19475 acc!681) k!2843))))

(assert (= (and d!95859 res!459165) b!695027))

(assert (= (and b!695027 (not res!459166)) b!695028))

(declare-fun m!656615 () Bool)

(assert (=> d!95859 m!656615))

(declare-fun m!656617 () Bool)

(assert (=> d!95859 m!656617))

(declare-fun m!656619 () Bool)

(assert (=> b!695028 m!656619))

(assert (=> b!694899 d!95859))

(declare-fun b!695029 () Bool)

(declare-fun e!395300 () Bool)

(declare-fun call!34288 () Bool)

(assert (=> b!695029 (= e!395300 call!34288)))

(declare-fun b!695030 () Bool)

(assert (=> b!695030 (= e!395300 call!34288)))

(declare-fun b!695032 () Bool)

(declare-fun e!395298 () Bool)

(declare-fun e!395297 () Bool)

(assert (=> b!695032 (= e!395298 e!395297)))

(declare-fun res!459167 () Bool)

(assert (=> b!695032 (=> (not res!459167) (not e!395297))))

(declare-fun e!395299 () Bool)

(assert (=> b!695032 (= res!459167 (not e!395299))))

(declare-fun res!459169 () Bool)

(assert (=> b!695032 (=> (not res!459169) (not e!395299))))

(assert (=> b!695032 (= res!459169 (validKeyInArray!0 (select (arr!19094 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34285 () Bool)

(declare-fun c!78298 () Bool)

(assert (=> bm!34285 (= call!34288 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78298 (Cons!13184 (select (arr!19094 a!3626) #b00000000000000000000000000000000) Nil!13185) Nil!13185)))))

(declare-fun b!695033 () Bool)

(assert (=> b!695033 (= e!395299 (contains!3731 Nil!13185 (select (arr!19094 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!695031 () Bool)

(assert (=> b!695031 (= e!395297 e!395300)))

(assert (=> b!695031 (= c!78298 (validKeyInArray!0 (select (arr!19094 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95863 () Bool)

(declare-fun res!459168 () Bool)

(assert (=> d!95863 (=> res!459168 e!395298)))

(assert (=> d!95863 (= res!459168 (bvsge #b00000000000000000000000000000000 (size!19477 a!3626)))))

(assert (=> d!95863 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13185) e!395298)))

(assert (= (and d!95863 (not res!459168)) b!695032))

(assert (= (and b!695032 res!459169) b!695033))

(assert (= (and b!695032 res!459167) b!695031))

(assert (= (and b!695031 c!78298) b!695029))

(assert (= (and b!695031 (not c!78298)) b!695030))

(assert (= (or b!695029 b!695030) bm!34285))

(declare-fun m!656621 () Bool)

(assert (=> b!695032 m!656621))

(assert (=> b!695032 m!656621))

(declare-fun m!656623 () Bool)

(assert (=> b!695032 m!656623))

(assert (=> bm!34285 m!656621))

(declare-fun m!656625 () Bool)

(assert (=> bm!34285 m!656625))

(assert (=> b!695033 m!656621))

(assert (=> b!695033 m!656621))

(declare-fun m!656627 () Bool)

(assert (=> b!695033 m!656627))

(assert (=> b!695031 m!656621))

(assert (=> b!695031 m!656621))

(assert (=> b!695031 m!656623))

(assert (=> b!694909 d!95863))

(declare-fun d!95865 () Bool)

(declare-fun res!459183 () Bool)

(declare-fun e!395315 () Bool)

(assert (=> d!95865 (=> res!459183 e!395315)))

(assert (=> d!95865 (= res!459183 (is-Nil!13185 acc!681))))

(assert (=> d!95865 (= (noDuplicate!978 acc!681) e!395315)))

(declare-fun b!695049 () Bool)

(declare-fun e!395316 () Bool)

(assert (=> b!695049 (= e!395315 e!395316)))

(declare-fun res!459184 () Bool)

(assert (=> b!695049 (=> (not res!459184) (not e!395316))))

(assert (=> b!695049 (= res!459184 (not (contains!3731 (t!19475 acc!681) (h!14229 acc!681))))))

(declare-fun b!695050 () Bool)

(assert (=> b!695050 (= e!395316 (noDuplicate!978 (t!19475 acc!681)))))

(assert (= (and d!95865 (not res!459183)) b!695049))

(assert (= (and b!695049 res!459184) b!695050))

(declare-fun m!656639 () Bool)

(assert (=> b!695049 m!656639))

(declare-fun m!656641 () Bool)

