; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60906 () Bool)

(assert start!60906)

(declare-fun b!683000 () Bool)

(declare-fun res!449005 () Bool)

(declare-fun e!389055 () Bool)

(assert (=> b!683000 (=> (not res!449005) (not e!389055))))

(declare-datatypes ((List!13045 0))(
  ( (Nil!13042) (Cons!13041 (h!14086 (_ BitVec 64)) (t!19296 List!13045)) )
))
(declare-fun acc!681 () List!13045)

(declare-fun contains!3588 (List!13045 (_ BitVec 64)) Bool)

(assert (=> b!683000 (= res!449005 (not (contains!3588 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683001 () Bool)

(declare-fun e!389053 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!683001 (= e!389053 (not (contains!3588 acc!681 k!2843)))))

(declare-fun b!683002 () Bool)

(declare-datatypes ((Unit!23992 0))(
  ( (Unit!23993) )
))
(declare-fun e!389059 () Unit!23992)

(declare-fun Unit!23994 () Unit!23992)

(assert (=> b!683002 (= e!389059 Unit!23994)))

(declare-fun lt!313764 () Unit!23992)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39546 0))(
  ( (array!39547 (arr!18951 (Array (_ BitVec 32) (_ BitVec 64))) (size!19315 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39546 (_ BitVec 64) (_ BitVec 32)) Unit!23992)

(assert (=> b!683002 (= lt!313764 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683002 false))

(declare-fun b!683003 () Bool)

(declare-fun e!389054 () Bool)

(assert (=> b!683003 (= e!389054 e!389053)))

(declare-fun res!449003 () Bool)

(assert (=> b!683003 (=> (not res!449003) (not e!389053))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683003 (= res!449003 (bvsle from!3004 i!1382))))

(declare-fun b!683004 () Bool)

(declare-fun res!449009 () Bool)

(assert (=> b!683004 (=> (not res!449009) (not e!389055))))

(declare-fun noDuplicate!835 (List!13045) Bool)

(assert (=> b!683004 (= res!449009 (noDuplicate!835 acc!681))))

(declare-fun b!683005 () Bool)

(declare-fun res!448998 () Bool)

(assert (=> b!683005 (=> (not res!448998) (not e!389055))))

(declare-fun arrayNoDuplicates!0 (array!39546 (_ BitVec 32) List!13045) Bool)

(assert (=> b!683005 (= res!448998 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13042))))

(declare-fun b!683006 () Bool)

(declare-fun e!389057 () Bool)

(declare-fun lt!313761 () List!13045)

(assert (=> b!683006 (= e!389057 (noDuplicate!835 lt!313761))))

(declare-fun b!683007 () Bool)

(declare-fun e!389052 () Unit!23992)

(declare-fun lt!313757 () Unit!23992)

(assert (=> b!683007 (= e!389052 lt!313757)))

(declare-fun lt!313762 () Unit!23992)

(declare-fun lemmaListSubSeqRefl!0 (List!13045) Unit!23992)

(assert (=> b!683007 (= lt!313762 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!173 (List!13045 List!13045) Bool)

(assert (=> b!683007 (subseq!173 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39546 List!13045 List!13045 (_ BitVec 32)) Unit!23992)

(declare-fun $colon$colon!337 (List!13045 (_ BitVec 64)) List!13045)

(assert (=> b!683007 (= lt!313757 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!337 acc!681 (select (arr!18951 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683007 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683008 () Bool)

(declare-fun res!448999 () Bool)

(assert (=> b!683008 (=> (not res!448999) (not e!389055))))

(assert (=> b!683008 (= res!448999 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19315 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683009 () Bool)

(declare-fun res!449002 () Bool)

(assert (=> b!683009 (=> (not res!449002) (not e!389055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683009 (= res!449002 (validKeyInArray!0 k!2843))))

(declare-fun b!683010 () Bool)

(declare-fun res!449007 () Bool)

(assert (=> b!683010 (=> (not res!449007) (not e!389055))))

(assert (=> b!683010 (= res!449007 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683011 () Bool)

(declare-fun Unit!23995 () Unit!23992)

(assert (=> b!683011 (= e!389059 Unit!23995)))

(declare-fun b!683012 () Bool)

(assert (=> b!683012 (= e!389055 (not e!389057))))

(declare-fun res!449006 () Bool)

(assert (=> b!683012 (=> res!449006 e!389057)))

(assert (=> b!683012 (= res!449006 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!138 (List!13045 (_ BitVec 64)) List!13045)

(assert (=> b!683012 (= (-!138 lt!313761 k!2843) acc!681)))

(assert (=> b!683012 (= lt!313761 ($colon$colon!337 acc!681 k!2843))))

(declare-fun lt!313763 () Unit!23992)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13045) Unit!23992)

(assert (=> b!683012 (= lt!313763 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683012 (subseq!173 acc!681 acc!681)))

(declare-fun lt!313758 () Unit!23992)

(assert (=> b!683012 (= lt!313758 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683012 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313760 () Unit!23992)

(assert (=> b!683012 (= lt!313760 e!389052)))

(declare-fun c!77369 () Bool)

(assert (=> b!683012 (= c!77369 (validKeyInArray!0 (select (arr!18951 a!3626) from!3004)))))

(declare-fun lt!313759 () Unit!23992)

(assert (=> b!683012 (= lt!313759 e!389059)))

(declare-fun c!77368 () Bool)

(declare-fun arrayContainsKey!0 (array!39546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683012 (= c!77368 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683012 (arrayContainsKey!0 (array!39547 (store (arr!18951 a!3626) i!1382 k!2843) (size!19315 a!3626)) k!2843 from!3004)))

(declare-fun b!683013 () Bool)

(declare-fun res!449008 () Bool)

(assert (=> b!683013 (=> (not res!449008) (not e!389055))))

(assert (=> b!683013 (= res!449008 (not (contains!3588 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!449011 () Bool)

(assert (=> start!60906 (=> (not res!449011) (not e!389055))))

(assert (=> start!60906 (= res!449011 (and (bvslt (size!19315 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19315 a!3626))))))

(assert (=> start!60906 e!389055))

(assert (=> start!60906 true))

(declare-fun array_inv!14725 (array!39546) Bool)

(assert (=> start!60906 (array_inv!14725 a!3626)))

(declare-fun b!683014 () Bool)

(declare-fun res!449004 () Bool)

(assert (=> b!683014 (=> (not res!449004) (not e!389055))))

(assert (=> b!683014 (= res!449004 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19315 a!3626))))))

(declare-fun b!683015 () Bool)

(declare-fun e!389058 () Bool)

(assert (=> b!683015 (= e!389058 (contains!3588 acc!681 k!2843))))

(declare-fun b!683016 () Bool)

(declare-fun Unit!23996 () Unit!23992)

(assert (=> b!683016 (= e!389052 Unit!23996)))

(declare-fun b!683017 () Bool)

(declare-fun res!449010 () Bool)

(assert (=> b!683017 (=> (not res!449010) (not e!389055))))

(assert (=> b!683017 (= res!449010 e!389054)))

(declare-fun res!449001 () Bool)

(assert (=> b!683017 (=> res!449001 e!389054)))

(assert (=> b!683017 (= res!449001 e!389058)))

(declare-fun res!449012 () Bool)

(assert (=> b!683017 (=> (not res!449012) (not e!389058))))

(assert (=> b!683017 (= res!449012 (bvsgt from!3004 i!1382))))

(declare-fun b!683018 () Bool)

(declare-fun res!449000 () Bool)

(assert (=> b!683018 (=> (not res!449000) (not e!389055))))

(assert (=> b!683018 (= res!449000 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60906 res!449011) b!683004))

(assert (= (and b!683004 res!449009) b!683013))

(assert (= (and b!683013 res!449008) b!683000))

(assert (= (and b!683000 res!449005) b!683017))

(assert (= (and b!683017 res!449012) b!683015))

(assert (= (and b!683017 (not res!449001)) b!683003))

(assert (= (and b!683003 res!449003) b!683001))

(assert (= (and b!683017 res!449010) b!683005))

(assert (= (and b!683005 res!448998) b!683010))

(assert (= (and b!683010 res!449007) b!683014))

(assert (= (and b!683014 res!449004) b!683009))

(assert (= (and b!683009 res!449002) b!683018))

(assert (= (and b!683018 res!449000) b!683008))

(assert (= (and b!683008 res!448999) b!683012))

(assert (= (and b!683012 c!77368) b!683002))

(assert (= (and b!683012 (not c!77368)) b!683011))

(assert (= (and b!683012 c!77369) b!683007))

(assert (= (and b!683012 (not c!77369)) b!683016))

(assert (= (and b!683012 (not res!449006)) b!683006))

(declare-fun m!647643 () Bool)

(assert (=> b!683007 m!647643))

(declare-fun m!647645 () Bool)

(assert (=> b!683007 m!647645))

(declare-fun m!647647 () Bool)

(assert (=> b!683007 m!647647))

(declare-fun m!647649 () Bool)

(assert (=> b!683007 m!647649))

(assert (=> b!683007 m!647645))

(assert (=> b!683007 m!647647))

(declare-fun m!647651 () Bool)

(assert (=> b!683007 m!647651))

(declare-fun m!647653 () Bool)

(assert (=> b!683007 m!647653))

(assert (=> b!683012 m!647643))

(assert (=> b!683012 m!647645))

(declare-fun m!647655 () Bool)

(assert (=> b!683012 m!647655))

(declare-fun m!647657 () Bool)

(assert (=> b!683012 m!647657))

(assert (=> b!683012 m!647651))

(declare-fun m!647659 () Bool)

(assert (=> b!683012 m!647659))

(declare-fun m!647661 () Bool)

(assert (=> b!683012 m!647661))

(declare-fun m!647663 () Bool)

(assert (=> b!683012 m!647663))

(assert (=> b!683012 m!647645))

(declare-fun m!647665 () Bool)

(assert (=> b!683012 m!647665))

(declare-fun m!647667 () Bool)

(assert (=> b!683012 m!647667))

(assert (=> b!683012 m!647653))

(declare-fun m!647669 () Bool)

(assert (=> b!683000 m!647669))

(declare-fun m!647671 () Bool)

(assert (=> b!683009 m!647671))

(declare-fun m!647673 () Bool)

(assert (=> b!683001 m!647673))

(declare-fun m!647675 () Bool)

(assert (=> b!683002 m!647675))

(declare-fun m!647677 () Bool)

(assert (=> b!683004 m!647677))

(declare-fun m!647679 () Bool)

(assert (=> start!60906 m!647679))

(assert (=> b!683015 m!647673))

(declare-fun m!647681 () Bool)

(assert (=> b!683018 m!647681))

(declare-fun m!647683 () Bool)

(assert (=> b!683005 m!647683))

(declare-fun m!647685 () Bool)

(assert (=> b!683006 m!647685))

(declare-fun m!647687 () Bool)

(assert (=> b!683010 m!647687))

(declare-fun m!647689 () Bool)

(assert (=> b!683013 m!647689))

(push 1)

(assert (not b!683007))

(assert (not b!683012))

(assert (not b!683004))

(assert (not b!683005))

(assert (not start!60906))

(assert (not b!683018))

(assert (not b!683000))

(assert (not b!683002))

(assert (not b!683001))

(assert (not b!683006))

(assert (not b!683013))

(assert (not b!683009))

(assert (not b!683015))

(assert (not b!683010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94077 () Bool)

(assert (=> d!94077 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313825 () Unit!23992)

(declare-fun choose!13 (array!39546 (_ BitVec 64) (_ BitVec 32)) Unit!23992)

(assert (=> d!94077 (= lt!313825 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94077 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94077 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313825)))

(declare-fun bs!20040 () Bool)

(assert (= bs!20040 d!94077))

(assert (=> bs!20040 m!647681))

(declare-fun m!647823 () Bool)

(assert (=> bs!20040 m!647823))

(assert (=> b!683002 d!94077))

(declare-fun d!94079 () Bool)

(declare-fun lt!313830 () Bool)

(declare-fun content!284 (List!13045) (Set (_ BitVec 64)))

(assert (=> d!94079 (= lt!313830 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!284 acc!681)))))

(declare-fun e!389181 () Bool)

(assert (=> d!94079 (= lt!313830 e!389181)))

(declare-fun res!449173 () Bool)

(assert (=> d!94079 (=> (not res!449173) (not e!389181))))

(assert (=> d!94079 (= res!449173 (is-Cons!13041 acc!681))))

(assert (=> d!94079 (= (contains!3588 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313830)))

(declare-fun b!683208 () Bool)

(declare-fun e!389180 () Bool)

(assert (=> b!683208 (= e!389181 e!389180)))

(declare-fun res!449172 () Bool)

(assert (=> b!683208 (=> res!449172 e!389180)))

(assert (=> b!683208 (= res!449172 (= (h!14086 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!683209 () Bool)

(assert (=> b!683209 (= e!389180 (contains!3588 (t!19296 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94079 res!449173) b!683208))

(assert (= (and b!683208 (not res!449172)) b!683209))

(declare-fun m!647843 () Bool)

(assert (=> d!94079 m!647843))

(declare-fun m!647845 () Bool)

(assert (=> d!94079 m!647845))

(declare-fun m!647847 () Bool)

(assert (=> b!683209 m!647847))

(assert (=> b!683013 d!94079))

(declare-fun d!94089 () Bool)

(declare-fun res!449185 () Bool)

(declare-fun e!389193 () Bool)

(assert (=> d!94089 (=> res!449185 e!389193)))

(assert (=> d!94089 (= res!449185 (is-Nil!13042 acc!681))))

(assert (=> d!94089 (= (noDuplicate!835 acc!681) e!389193)))

(declare-fun b!683221 () Bool)

(declare-fun e!389195 () Bool)

(assert (=> b!683221 (= e!389193 e!389195)))

(declare-fun res!449186 () Bool)

(assert (=> b!683221 (=> (not res!449186) (not e!389195))))

(assert (=> b!683221 (= res!449186 (not (contains!3588 (t!19296 acc!681) (h!14086 acc!681))))))

(declare-fun b!683223 () Bool)

(assert (=> b!683223 (= e!389195 (noDuplicate!835 (t!19296 acc!681)))))

(assert (= (and d!94089 (not res!449185)) b!683221))

(assert (= (and b!683221 res!449186) b!683223))

(declare-fun m!647853 () Bool)

(assert (=> b!683221 m!647853))

(declare-fun m!647855 () Bool)

(assert (=> b!683223 m!647855))

(assert (=> b!683004 d!94089))

(declare-fun d!94095 () Bool)

(declare-fun lt!313837 () Bool)

(assert (=> d!94095 (= lt!313837 (set.member k!2843 (content!284 acc!681)))))

(declare-fun e!389201 () Bool)

(assert (=> d!94095 (= lt!313837 e!389201)))

(declare-fun res!449192 () Bool)

(assert (=> d!94095 (=> (not res!449192) (not e!389201))))

(assert (=> d!94095 (= res!449192 (is-Cons!13041 acc!681))))

(assert (=> d!94095 (= (contains!3588 acc!681 k!2843) lt!313837)))

(declare-fun b!683229 () Bool)

(declare-fun e!389200 () Bool)

(assert (=> b!683229 (= e!389201 e!389200)))

(declare-fun res!449191 () Bool)

(assert (=> b!683229 (=> res!449191 e!389200)))

(assert (=> b!683229 (= res!449191 (= (h!14086 acc!681) k!2843))))

(declare-fun b!683230 () Bool)

(assert (=> b!683230 (= e!389200 (contains!3588 (t!19296 acc!681) k!2843))))

(assert (= (and d!94095 res!449192) b!683229))

(assert (= (and b!683229 (not res!449191)) b!683230))

(assert (=> d!94095 m!647843))

(declare-fun m!647861 () Bool)

(assert (=> d!94095 m!647861))

(declare-fun m!647863 () Bool)

(assert (=> b!683230 m!647863))

(assert (=> b!683015 d!94095))

(declare-fun d!94097 () Bool)

(declare-fun lt!313838 () Bool)

(assert (=> d!94097 (= lt!313838 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!284 acc!681)))))

(declare-fun e!389203 () Bool)

(assert (=> d!94097 (= lt!313838 e!389203)))

(declare-fun res!449194 () Bool)

(assert (=> d!94097 (=> (not res!449194) (not e!389203))))

(assert (=> d!94097 (= res!449194 (is-Cons!13041 acc!681))))

(assert (=> d!94097 (= (contains!3588 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313838)))

(declare-fun b!683231 () Bool)

(declare-fun e!389202 () Bool)

(assert (=> b!683231 (= e!389203 e!389202)))

(declare-fun res!449193 () Bool)

(assert (=> b!683231 (=> res!449193 e!389202)))

(assert (=> b!683231 (= res!449193 (= (h!14086 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!683232 () Bool)

(assert (=> b!683232 (= e!389202 (contains!3588 (t!19296 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94097 res!449194) b!683231))

(assert (= (and b!683231 (not res!449193)) b!683232))

(assert (=> d!94097 m!647843))

(declare-fun m!647869 () Bool)

(assert (=> d!94097 m!647869))

(declare-fun m!647871 () Bool)

(assert (=> b!683232 m!647871))

(assert (=> b!683000 d!94097))

(declare-fun b!683264 () Bool)

(declare-fun e!389230 () Bool)

(declare-fun e!389231 () Bool)

(assert (=> b!683264 (= e!389230 e!389231)))

(declare-fun c!77392 () Bool)

(assert (=> b!683264 (= c!77392 (validKeyInArray!0 (select (arr!18951 a!3626) from!3004)))))

(declare-fun b!683265 () Bool)

(declare-fun call!34010 () Bool)

(assert (=> b!683265 (= e!389231 call!34010)))

(declare-fun b!683266 () Bool)

(declare-fun e!389232 () Bool)

(assert (=> b!683266 (= e!389232 e!389230)))

(declare-fun res!449215 () Bool)

(assert (=> b!683266 (=> (not res!449215) (not e!389230))))

(declare-fun e!389229 () Bool)

(assert (=> b!683266 (= res!449215 (not e!389229))))

(declare-fun res!449213 () Bool)

(assert (=> b!683266 (=> (not res!449213) (not e!389229))))

(assert (=> b!683266 (= res!449213 (validKeyInArray!0 (select (arr!18951 a!3626) from!3004)))))

(declare-fun b!683267 () Bool)

(assert (=> b!683267 (= e!389229 (contains!3588 acc!681 (select (arr!18951 a!3626) from!3004)))))

(declare-fun bm!34007 () Bool)

(assert (=> bm!34007 (= call!34010 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77392 (Cons!13041 (select (arr!18951 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!683263 () Bool)

(assert (=> b!683263 (= e!389231 call!34010)))

(declare-fun d!94101 () Bool)

(declare-fun res!449214 () Bool)

(assert (=> d!94101 (=> res!449214 e!389232)))

(assert (=> d!94101 (= res!449214 (bvsge from!3004 (size!19315 a!3626)))))

(assert (=> d!94101 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!389232)))

(assert (= (and d!94101 (not res!449214)) b!683266))

(assert (= (and b!683266 res!449213) b!683267))

(assert (= (and b!683266 res!449215) b!683264))

(assert (= (and b!683264 c!77392) b!683263))

(assert (= (and b!683264 (not c!77392)) b!683265))

(assert (= (or b!683263 b!683265) bm!34007))

(assert (=> b!683264 m!647645))

(assert (=> b!683264 m!647645))

(assert (=> b!683264 m!647665))

(assert (=> b!683266 m!647645))

(assert (=> b!683266 m!647645))

(assert (=> b!683266 m!647665))

(assert (=> b!683267 m!647645))

(assert (=> b!683267 m!647645))

(declare-fun m!647893 () Bool)

(assert (=> b!683267 m!647893))

(assert (=> bm!34007 m!647645))

(declare-fun m!647895 () Bool)

(assert (=> bm!34007 m!647895))

(assert (=> b!683010 d!94101))

(declare-fun b!683305 () Bool)

(declare-fun e!389260 () List!13045)

(declare-fun call!34018 () List!13045)

(assert (=> b!683305 (= e!389260 call!34018)))

(declare-fun b!683306 () Bool)

(declare-fun e!389259 () List!13045)

(assert (=> b!683306 (= e!389259 e!389260)))

(declare-fun c!77406 () Bool)

(assert (=> b!683306 (= c!77406 (= k!2843 (h!14086 lt!313761)))))

(declare-fun lt!313856 () List!13045)

(declare-fun e!389261 () Bool)

(declare-fun b!683307 () Bool)

(assert (=> b!683307 (= e!389261 (= (content!284 lt!313856) (set.minus (content!284 lt!313761) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!94117 () Bool)

(assert (=> d!94117 e!389261))

(declare-fun res!449227 () Bool)

(assert (=> d!94117 (=> (not res!449227) (not e!389261))))

(declare-fun size!19319 (List!13045) Int)

(assert (=> d!94117 (= res!449227 (<= (size!19319 lt!313856) (size!19319 lt!313761)))))

(assert (=> d!94117 (= lt!313856 e!389259)))

(declare-fun c!77407 () Bool)

(assert (=> d!94117 (= c!77407 (is-Cons!13041 lt!313761))))

(assert (=> d!94117 (= (-!138 lt!313761 k!2843) lt!313856)))

(declare-fun b!683308 () Bool)

(assert (=> b!683308 (= e!389259 Nil!13042)))

(declare-fun b!683309 () Bool)

(assert (=> b!683309 (= e!389260 (Cons!13041 (h!14086 lt!313761) call!34018))))

(declare-fun bm!34015 () Bool)

(assert (=> bm!34015 (= call!34018 (-!138 (t!19296 lt!313761) k!2843))))

(assert (= (and d!94117 c!77407) b!683306))

(assert (= (and d!94117 (not c!77407)) b!683308))

(assert (= (and b!683306 c!77406) b!683305))

(assert (= (and b!683306 (not c!77406)) b!683309))

(assert (= (or b!683305 b!683309) bm!34015))

(assert (= (and d!94117 res!449227) b!683307))

(declare-fun m!647935 () Bool)

(assert (=> b!683307 m!647935))

(declare-fun m!647937 () Bool)

(assert (=> b!683307 m!647937))

(declare-fun m!647939 () Bool)

(assert (=> b!683307 m!647939))

(declare-fun m!647941 () Bool)

(assert (=> d!94117 m!647941))

(declare-fun m!647943 () Bool)

(assert (=> d!94117 m!647943))

(declare-fun m!647945 () Bool)

(assert (=> bm!34015 m!647945))

(assert (=> b!683012 d!94117))

(declare-fun b!683331 () Bool)

(declare-fun e!389279 () Bool)

(assert (=> b!683331 (= e!389279 (subseq!173 acc!681 (t!19296 acc!681)))))

(declare-fun d!94131 () Bool)

(declare-fun res!449245 () Bool)

(declare-fun e!389278 () Bool)

(assert (=> d!94131 (=> res!449245 e!389278)))

(assert (=> d!94131 (= res!449245 (is-Nil!13042 acc!681))))

(assert (=> d!94131 (= (subseq!173 acc!681 acc!681) e!389278)))

(declare-fun b!683330 () Bool)

(declare-fun e!389280 () Bool)

(assert (=> b!683330 (= e!389280 (subseq!173 (t!19296 acc!681) (t!19296 acc!681)))))

(declare-fun b!683329 () Bool)

(declare-fun e!389281 () Bool)

(assert (=> b!683329 (= e!389281 e!389279)))

(declare-fun res!449244 () Bool)

(assert (=> b!683329 (=> res!449244 e!389279)))

(assert (=> b!683329 (= res!449244 e!389280)))

(declare-fun res!449242 () Bool)

(assert (=> b!683329 (=> (not res!449242) (not e!389280))))

(assert (=> b!683329 (= res!449242 (= (h!14086 acc!681) (h!14086 acc!681)))))

(declare-fun b!683328 () Bool)

(assert (=> b!683328 (= e!389278 e!389281)))

(declare-fun res!449243 () Bool)

(assert (=> b!683328 (=> (not res!449243) (not e!389281))))

(assert (=> b!683328 (= res!449243 (is-Cons!13041 acc!681))))

(assert (= (and d!94131 (not res!449245)) b!683328))

(assert (= (and b!683328 res!449243) b!683329))

(assert (= (and b!683329 res!449242) b!683330))

(assert (= (and b!683329 (not res!449244)) b!683331))

(declare-fun m!647947 () Bool)

(assert (=> b!683331 m!647947))

(declare-fun m!647949 () Bool)

(assert (=> b!683330 m!647949))

(assert (=> b!683012 d!94131))

(declare-fun d!94135 () Bool)

(declare-fun res!449253 () Bool)

(declare-fun e!389290 () Bool)

(assert (=> d!94135 (=> res!449253 e!389290)))

(assert (=> d!94135 (= res!449253 (= (select (arr!18951 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94135 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389290)))

(declare-fun b!683341 () Bool)

(declare-fun e!389291 () Bool)

(assert (=> b!683341 (= e!389290 e!389291)))

(declare-fun res!449254 () Bool)

(assert (=> b!683341 (=> (not res!449254) (not e!389291))))

(assert (=> b!683341 (= res!449254 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19315 a!3626)))))

(declare-fun b!683342 () Bool)

(assert (=> b!683342 (= e!389291 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94135 (not res!449253)) b!683341))

(assert (= (and b!683341 res!449254) b!683342))

(declare-fun m!647957 () Bool)

(assert (=> d!94135 m!647957))

(declare-fun m!647959 () Bool)

(assert (=> b!683342 m!647959))

(assert (=> b!683012 d!94135))

(declare-fun d!94139 () Bool)

(assert (=> d!94139 (= (-!138 ($colon$colon!337 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313862 () Unit!23992)

(declare-fun choose!16 ((_ BitVec 64) List!13045) Unit!23992)

(assert (=> d!94139 (= lt!313862 (choose!16 k!2843 acc!681))))

(assert (=> d!94139 (not (contains!3588 acc!681 k!2843))))

(assert (=> d!94139 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!313862)))

(declare-fun bs!20047 () Bool)

(assert (= bs!20047 d!94139))

(assert (=> bs!20047 m!647661))

(assert (=> bs!20047 m!647661))

(declare-fun m!647963 () Bool)

(assert (=> bs!20047 m!647963))

(declare-fun m!647965 () Bool)

(assert (=> bs!20047 m!647965))

(assert (=> bs!20047 m!647673))

(assert (=> b!683012 d!94139))

(declare-fun d!94145 () Bool)

(declare-fun res!449255 () Bool)

(declare-fun e!389292 () Bool)

(assert (=> d!94145 (=> res!449255 e!389292)))

(assert (=> d!94145 (= res!449255 (= (select (arr!18951 (array!39547 (store (arr!18951 a!3626) i!1382 k!2843) (size!19315 a!3626))) from!3004) k!2843))))

(assert (=> d!94145 (= (arrayContainsKey!0 (array!39547 (store (arr!18951 a!3626) i!1382 k!2843) (size!19315 a!3626)) k!2843 from!3004) e!389292)))

(declare-fun b!683343 () Bool)

(declare-fun e!389293 () Bool)

(assert (=> b!683343 (= e!389292 e!389293)))

(declare-fun res!449256 () Bool)

(assert (=> b!683343 (=> (not res!449256) (not e!389293))))

(assert (=> b!683343 (= res!449256 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19315 (array!39547 (store (arr!18951 a!3626) i!1382 k!2843) (size!19315 a!3626)))))))

(declare-fun b!683344 () Bool)

(assert (=> b!683344 (= e!389293 (arrayContainsKey!0 (array!39547 (store (arr!18951 a!3626) i!1382 k!2843) (size!19315 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94145 (not res!449255)) b!683343))

(assert (= (and b!683343 res!449256) b!683344))

(declare-fun m!647967 () Bool)

(assert (=> d!94145 m!647967))

(declare-fun m!647969 () Bool)

(assert (=> b!683344 m!647969))

(assert (=> b!683012 d!94145))

(declare-fun d!94147 () Bool)

(assert (=> d!94147 (subseq!173 acc!681 acc!681)))

(declare-fun lt!313867 () Unit!23992)

(declare-fun choose!36 (List!13045) Unit!23992)

(assert (=> d!94147 (= lt!313867 (choose!36 acc!681))))

(assert (=> d!94147 (= (lemmaListSubSeqRefl!0 acc!681) lt!313867)))

(declare-fun bs!20048 () Bool)

(assert (= bs!20048 d!94147))

(assert (=> bs!20048 m!647653))

(declare-fun m!647971 () Bool)

(assert (=> bs!20048 m!647971))

(assert (=> b!683012 d!94147))

(declare-fun d!94149 () Bool)

(assert (=> d!94149 (= (validKeyInArray!0 (select (arr!18951 a!3626) from!3004)) (and (not (= (select (arr!18951 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18951 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!683012 d!94149))

(declare-fun d!94155 () Bool)

(assert (=> d!94155 (= ($colon$colon!337 acc!681 k!2843) (Cons!13041 k!2843 acc!681))))

(assert (=> b!683012 d!94155))

(declare-fun b!683350 () Bool)

(declare-fun e!389299 () Bool)

(declare-fun e!389300 () Bool)

(assert (=> b!683350 (= e!389299 e!389300)))

(declare-fun c!77411 () Bool)

(assert (=> b!683350 (= c!77411 (validKeyInArray!0 (select (arr!18951 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!683351 () Bool)

(declare-fun call!34022 () Bool)

(assert (=> b!683351 (= e!389300 call!34022)))

(declare-fun b!683352 () Bool)

(declare-fun e!389301 () Bool)

(assert (=> b!683352 (= e!389301 e!389299)))

(declare-fun res!449263 () Bool)

(assert (=> b!683352 (=> (not res!449263) (not e!389299))))

(declare-fun e!389298 () Bool)

(assert (=> b!683352 (= res!449263 (not e!389298))))

(declare-fun res!449261 () Bool)

(assert (=> b!683352 (=> (not res!449261) (not e!389298))))

(assert (=> b!683352 (= res!449261 (validKeyInArray!0 (select (arr!18951 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!683353 () Bool)

(assert (=> b!683353 (= e!389298 (contains!3588 acc!681 (select (arr!18951 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34019 () Bool)

(assert (=> bm!34019 (= call!34022 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77411 (Cons!13041 (select (arr!18951 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!683349 () Bool)

(assert (=> b!683349 (= e!389300 call!34022)))

(declare-fun d!94159 () Bool)

(declare-fun res!449262 () Bool)

(assert (=> d!94159 (=> res!449262 e!389301)))

(assert (=> d!94159 (= res!449262 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19315 a!3626)))))

(assert (=> d!94159 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!389301)))

