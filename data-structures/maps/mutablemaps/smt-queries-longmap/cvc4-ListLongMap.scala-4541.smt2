; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63230 () Bool)

(assert start!63230)

(declare-fun b!711854 () Bool)

(declare-fun res!475272 () Bool)

(declare-fun e!400485 () Bool)

(assert (=> b!711854 (=> (not res!475272) (not e!400485))))

(declare-datatypes ((List!13431 0))(
  ( (Nil!13428) (Cons!13427 (h!14472 (_ BitVec 64)) (t!19748 List!13431)) )
))
(declare-fun acc!652 () List!13431)

(declare-fun noDuplicate!1221 (List!13431) Bool)

(assert (=> b!711854 (= res!475272 (noDuplicate!1221 acc!652))))

(declare-fun b!711855 () Bool)

(declare-fun e!400487 () Bool)

(declare-fun lt!318470 () List!13431)

(declare-fun contains!3974 (List!13431 (_ BitVec 64)) Bool)

(assert (=> b!711855 (= e!400487 (contains!3974 lt!318470 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711856 () Bool)

(declare-fun res!475262 () Bool)

(assert (=> b!711856 (=> (not res!475262) (not e!400485))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!711856 (= res!475262 (not (contains!3974 acc!652 k!2824)))))

(declare-fun b!711857 () Bool)

(declare-fun res!475282 () Bool)

(declare-fun e!400488 () Bool)

(assert (=> b!711857 (=> (not res!475282) (not e!400488))))

(declare-fun lt!318469 () List!13431)

(assert (=> b!711857 (= res!475282 (not (contains!3974 lt!318469 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711858 () Bool)

(declare-fun res!475270 () Bool)

(assert (=> b!711858 (=> (not res!475270) (not e!400485))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40396 0))(
  ( (array!40397 (arr!19337 (Array (_ BitVec 32) (_ BitVec 64))) (size!19743 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40396)

(assert (=> b!711858 (= res!475270 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19743 a!3591)))))

(declare-fun b!711859 () Bool)

(declare-fun res!475265 () Bool)

(assert (=> b!711859 (=> (not res!475265) (not e!400488))))

(assert (=> b!711859 (= res!475265 (not (contains!3974 lt!318469 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711860 () Bool)

(declare-fun res!475273 () Bool)

(assert (=> b!711860 (=> (not res!475273) (not e!400485))))

(declare-fun newAcc!49 () List!13431)

(assert (=> b!711860 (= res!475273 (noDuplicate!1221 newAcc!49))))

(declare-fun b!711861 () Bool)

(declare-fun res!475261 () Bool)

(assert (=> b!711861 (=> (not res!475261) (not e!400485))))

(assert (=> b!711861 (= res!475261 (contains!3974 newAcc!49 k!2824))))

(declare-fun b!711862 () Bool)

(declare-fun res!475266 () Bool)

(assert (=> b!711862 (=> (not res!475266) (not e!400488))))

(declare-fun arrayContainsKey!0 (array!40396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!711862 (= res!475266 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711863 () Bool)

(declare-fun res!475276 () Bool)

(assert (=> b!711863 (=> (not res!475276) (not e!400485))))

(assert (=> b!711863 (= res!475276 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!711864 () Bool)

(assert (=> b!711864 (= e!400485 e!400488)))

(declare-fun res!475280 () Bool)

(assert (=> b!711864 (=> (not res!475280) (not e!400488))))

(assert (=> b!711864 (= res!475280 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!528 (List!13431 (_ BitVec 64)) List!13431)

(assert (=> b!711864 (= lt!318470 ($colon$colon!528 newAcc!49 (select (arr!19337 a!3591) from!2969)))))

(assert (=> b!711864 (= lt!318469 ($colon$colon!528 acc!652 (select (arr!19337 a!3591) from!2969)))))

(declare-fun b!711865 () Bool)

(declare-fun res!475283 () Bool)

(assert (=> b!711865 (=> (not res!475283) (not e!400488))))

(assert (=> b!711865 (= res!475283 (noDuplicate!1221 lt!318469))))

(declare-fun b!711866 () Bool)

(declare-fun res!475278 () Bool)

(assert (=> b!711866 (=> (not res!475278) (not e!400488))))

(declare-fun -!383 (List!13431 (_ BitVec 64)) List!13431)

(assert (=> b!711866 (= res!475278 (= (-!383 lt!318470 k!2824) lt!318469))))

(declare-fun b!711867 () Bool)

(declare-fun res!475284 () Bool)

(assert (=> b!711867 (=> (not res!475284) (not e!400485))))

(assert (=> b!711867 (= res!475284 (not (contains!3974 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711868 () Bool)

(declare-fun res!475285 () Bool)

(assert (=> b!711868 (=> (not res!475285) (not e!400488))))

(declare-fun subseq!418 (List!13431 List!13431) Bool)

(assert (=> b!711868 (= res!475285 (subseq!418 lt!318469 lt!318470))))

(declare-fun b!711869 () Bool)

(declare-fun res!475279 () Bool)

(assert (=> b!711869 (=> (not res!475279) (not e!400488))))

(assert (=> b!711869 (= res!475279 (noDuplicate!1221 lt!318470))))

(declare-fun b!711870 () Bool)

(declare-fun res!475277 () Bool)

(assert (=> b!711870 (=> (not res!475277) (not e!400485))))

(assert (=> b!711870 (= res!475277 (not (contains!3974 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711871 () Bool)

(declare-fun res!475260 () Bool)

(assert (=> b!711871 (=> (not res!475260) (not e!400488))))

(assert (=> b!711871 (= res!475260 (not (contains!3974 lt!318469 k!2824)))))

(declare-fun b!711872 () Bool)

(assert (=> b!711872 (= e!400488 e!400487)))

(declare-fun res!475267 () Bool)

(assert (=> b!711872 (=> res!475267 e!400487)))

(assert (=> b!711872 (= res!475267 (contains!3974 lt!318470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711873 () Bool)

(declare-fun res!475286 () Bool)

(assert (=> b!711873 (=> (not res!475286) (not e!400485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!711873 (= res!475286 (validKeyInArray!0 k!2824))))

(declare-fun res!475281 () Bool)

(assert (=> start!63230 (=> (not res!475281) (not e!400485))))

(assert (=> start!63230 (= res!475281 (and (bvslt (size!19743 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19743 a!3591))))))

(assert (=> start!63230 e!400485))

(assert (=> start!63230 true))

(declare-fun array_inv!15111 (array!40396) Bool)

(assert (=> start!63230 (array_inv!15111 a!3591)))

(declare-fun b!711874 () Bool)

(declare-fun res!475269 () Bool)

(assert (=> b!711874 (=> (not res!475269) (not e!400488))))

(assert (=> b!711874 (= res!475269 (contains!3974 lt!318470 k!2824))))

(declare-fun b!711875 () Bool)

(declare-fun res!475287 () Bool)

(assert (=> b!711875 (=> (not res!475287) (not e!400488))))

(declare-fun arrayNoDuplicates!0 (array!40396 (_ BitVec 32) List!13431) Bool)

(assert (=> b!711875 (= res!475287 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318469))))

(declare-fun b!711876 () Bool)

(declare-fun res!475268 () Bool)

(assert (=> b!711876 (=> (not res!475268) (not e!400485))))

(assert (=> b!711876 (= res!475268 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!711877 () Bool)

(declare-fun res!475264 () Bool)

(assert (=> b!711877 (=> (not res!475264) (not e!400485))))

(assert (=> b!711877 (= res!475264 (not (contains!3974 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711878 () Bool)

(declare-fun res!475274 () Bool)

(assert (=> b!711878 (=> (not res!475274) (not e!400485))))

(assert (=> b!711878 (= res!475274 (not (contains!3974 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711879 () Bool)

(declare-fun res!475275 () Bool)

(assert (=> b!711879 (=> (not res!475275) (not e!400485))))

(assert (=> b!711879 (= res!475275 (= (-!383 newAcc!49 k!2824) acc!652))))

(declare-fun b!711880 () Bool)

(declare-fun res!475271 () Bool)

(assert (=> b!711880 (=> (not res!475271) (not e!400485))))

(assert (=> b!711880 (= res!475271 (subseq!418 acc!652 newAcc!49))))

(declare-fun b!711881 () Bool)

(declare-fun res!475263 () Bool)

(assert (=> b!711881 (=> (not res!475263) (not e!400485))))

(assert (=> b!711881 (= res!475263 (validKeyInArray!0 (select (arr!19337 a!3591) from!2969)))))

(assert (= (and start!63230 res!475281) b!711854))

(assert (= (and b!711854 res!475272) b!711860))

(assert (= (and b!711860 res!475273) b!711867))

(assert (= (and b!711867 res!475284) b!711878))

(assert (= (and b!711878 res!475274) b!711863))

(assert (= (and b!711863 res!475276) b!711856))

(assert (= (and b!711856 res!475262) b!711873))

(assert (= (and b!711873 res!475286) b!711876))

(assert (= (and b!711876 res!475268) b!711880))

(assert (= (and b!711880 res!475271) b!711861))

(assert (= (and b!711861 res!475261) b!711879))

(assert (= (and b!711879 res!475275) b!711877))

(assert (= (and b!711877 res!475264) b!711870))

(assert (= (and b!711870 res!475277) b!711858))

(assert (= (and b!711858 res!475270) b!711881))

(assert (= (and b!711881 res!475263) b!711864))

(assert (= (and b!711864 res!475280) b!711865))

(assert (= (and b!711865 res!475283) b!711869))

(assert (= (and b!711869 res!475279) b!711857))

(assert (= (and b!711857 res!475282) b!711859))

(assert (= (and b!711859 res!475265) b!711862))

(assert (= (and b!711862 res!475266) b!711871))

(assert (= (and b!711871 res!475260) b!711875))

(assert (= (and b!711875 res!475287) b!711868))

(assert (= (and b!711868 res!475285) b!711874))

(assert (= (and b!711874 res!475269) b!711866))

(assert (= (and b!711866 res!475278) b!711872))

(assert (= (and b!711872 (not res!475267)) b!711855))

(declare-fun m!668877 () Bool)

(assert (=> start!63230 m!668877))

(declare-fun m!668879 () Bool)

(assert (=> b!711862 m!668879))

(declare-fun m!668881 () Bool)

(assert (=> b!711874 m!668881))

(declare-fun m!668883 () Bool)

(assert (=> b!711868 m!668883))

(declare-fun m!668885 () Bool)

(assert (=> b!711877 m!668885))

(declare-fun m!668887 () Bool)

(assert (=> b!711861 m!668887))

(declare-fun m!668889 () Bool)

(assert (=> b!711875 m!668889))

(declare-fun m!668891 () Bool)

(assert (=> b!711857 m!668891))

(declare-fun m!668893 () Bool)

(assert (=> b!711855 m!668893))

(declare-fun m!668895 () Bool)

(assert (=> b!711856 m!668895))

(declare-fun m!668897 () Bool)

(assert (=> b!711860 m!668897))

(declare-fun m!668899 () Bool)

(assert (=> b!711881 m!668899))

(assert (=> b!711881 m!668899))

(declare-fun m!668901 () Bool)

(assert (=> b!711881 m!668901))

(declare-fun m!668903 () Bool)

(assert (=> b!711854 m!668903))

(declare-fun m!668905 () Bool)

(assert (=> b!711869 m!668905))

(declare-fun m!668907 () Bool)

(assert (=> b!711866 m!668907))

(declare-fun m!668909 () Bool)

(assert (=> b!711859 m!668909))

(declare-fun m!668911 () Bool)

(assert (=> b!711867 m!668911))

(declare-fun m!668913 () Bool)

(assert (=> b!711880 m!668913))

(declare-fun m!668915 () Bool)

(assert (=> b!711878 m!668915))

(declare-fun m!668917 () Bool)

(assert (=> b!711879 m!668917))

(declare-fun m!668919 () Bool)

(assert (=> b!711872 m!668919))

(declare-fun m!668921 () Bool)

(assert (=> b!711865 m!668921))

(declare-fun m!668923 () Bool)

(assert (=> b!711873 m!668923))

(assert (=> b!711864 m!668899))

(assert (=> b!711864 m!668899))

(declare-fun m!668925 () Bool)

(assert (=> b!711864 m!668925))

(assert (=> b!711864 m!668899))

(declare-fun m!668927 () Bool)

(assert (=> b!711864 m!668927))

(declare-fun m!668929 () Bool)

(assert (=> b!711876 m!668929))

(declare-fun m!668931 () Bool)

(assert (=> b!711870 m!668931))

(declare-fun m!668933 () Bool)

(assert (=> b!711871 m!668933))

(declare-fun m!668935 () Bool)

(assert (=> b!711863 m!668935))

(push 1)

(assert (not b!711877))

(assert (not b!711878))

(assert (not b!711875))

(assert (not b!711872))

(assert (not b!711879))

(assert (not b!711870))

(assert (not b!711868))

(assert (not b!711862))

(assert (not b!711854))

(assert (not b!711864))

(assert (not b!711856))

(assert (not b!711881))

(assert (not b!711861))

(assert (not b!711876))

(assert (not b!711859))

(assert (not b!711867))

(assert (not b!711869))

(assert (not b!711857))

(assert (not b!711871))

(assert (not b!711874))

(assert (not b!711873))

(assert (not b!711855))

(assert (not b!711866))

(assert (not b!711865))

(assert (not b!711860))

(assert (not b!711880))

(assert (not b!711863))

(assert (not start!63230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97747 () Bool)

(declare-fun lt!318480 () Bool)

(declare-fun content!362 (List!13431) (Set (_ BitVec 64)))

(assert (=> d!97747 (= lt!318480 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!362 lt!318469)))))

(declare-fun e!400527 () Bool)

(assert (=> d!97747 (= lt!318480 e!400527)))

(declare-fun res!475317 () Bool)

(assert (=> d!97747 (=> (not res!475317) (not e!400527))))

(assert (=> d!97747 (= res!475317 (is-Cons!13427 lt!318469))))

(assert (=> d!97747 (= (contains!3974 lt!318469 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318480)))

(declare-fun b!711926 () Bool)

(declare-fun e!400526 () Bool)

(assert (=> b!711926 (= e!400527 e!400526)))

(declare-fun res!475316 () Bool)

(assert (=> b!711926 (=> res!475316 e!400526)))

(assert (=> b!711926 (= res!475316 (= (h!14472 lt!318469) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711927 () Bool)

(assert (=> b!711927 (= e!400526 (contains!3974 (t!19748 lt!318469) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97747 res!475317) b!711926))

(assert (= (and b!711926 (not res!475316)) b!711927))

(declare-fun m!668969 () Bool)

(assert (=> d!97747 m!668969))

(declare-fun m!668971 () Bool)

(assert (=> d!97747 m!668971))

(declare-fun m!668973 () Bool)

(assert (=> b!711927 m!668973))

(assert (=> b!711857 d!97747))

(declare-fun d!97749 () Bool)

(declare-fun lt!318481 () Bool)

(assert (=> d!97749 (= lt!318481 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!362 acc!652)))))

(declare-fun e!400529 () Bool)

(assert (=> d!97749 (= lt!318481 e!400529)))

(declare-fun res!475319 () Bool)

(assert (=> d!97749 (=> (not res!475319) (not e!400529))))

(assert (=> d!97749 (= res!475319 (is-Cons!13427 acc!652))))

(assert (=> d!97749 (= (contains!3974 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318481)))

(declare-fun b!711928 () Bool)

(declare-fun e!400528 () Bool)

(assert (=> b!711928 (= e!400529 e!400528)))

(declare-fun res!475318 () Bool)

(assert (=> b!711928 (=> res!475318 e!400528)))

(assert (=> b!711928 (= res!475318 (= (h!14472 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711929 () Bool)

(assert (=> b!711929 (= e!400528 (contains!3974 (t!19748 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97749 res!475319) b!711928))

(assert (= (and b!711928 (not res!475318)) b!711929))

(declare-fun m!668975 () Bool)

(assert (=> d!97749 m!668975))

(declare-fun m!668977 () Bool)

(assert (=> d!97749 m!668977))

(declare-fun m!668979 () Bool)

(assert (=> b!711929 m!668979))

(assert (=> b!711878 d!97749))

(declare-fun b!711958 () Bool)

(declare-fun e!400555 () List!13431)

(declare-fun e!400557 () List!13431)

(assert (=> b!711958 (= e!400555 e!400557)))

(declare-fun c!78676 () Bool)

(assert (=> b!711958 (= c!78676 (= k!2824 (h!14472 newAcc!49)))))

(declare-fun b!711959 () Bool)

(declare-fun call!34543 () List!13431)

(assert (=> b!711959 (= e!400557 (Cons!13427 (h!14472 newAcc!49) call!34543))))

(declare-fun e!400556 () Bool)

(declare-fun b!711960 () Bool)

(declare-fun lt!318489 () List!13431)

(assert (=> b!711960 (= e!400556 (= (content!362 lt!318489) (setminus (content!362 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun d!97751 () Bool)

(assert (=> d!97751 e!400556))

(declare-fun res!475340 () Bool)

(assert (=> d!97751 (=> (not res!475340) (not e!400556))))

(declare-fun size!19745 (List!13431) Int)

(assert (=> d!97751 (= res!475340 (<= (size!19745 lt!318489) (size!19745 newAcc!49)))))

(assert (=> d!97751 (= lt!318489 e!400555)))

(declare-fun c!78677 () Bool)

(assert (=> d!97751 (= c!78677 (is-Cons!13427 newAcc!49))))

(assert (=> d!97751 (= (-!383 newAcc!49 k!2824) lt!318489)))

(declare-fun bm!34540 () Bool)

(assert (=> bm!34540 (= call!34543 (-!383 (t!19748 newAcc!49) k!2824))))

(declare-fun b!711961 () Bool)

(assert (=> b!711961 (= e!400555 Nil!13428)))

(declare-fun b!711962 () Bool)

(assert (=> b!711962 (= e!400557 call!34543)))

(assert (= (and d!97751 c!78677) b!711958))

(assert (= (and d!97751 (not c!78677)) b!711961))

(assert (= (and b!711958 c!78676) b!711962))

(assert (= (and b!711958 (not c!78676)) b!711959))

(assert (= (or b!711962 b!711959) bm!34540))

(assert (= (and d!97751 res!475340) b!711960))

(declare-fun m!668997 () Bool)

(assert (=> b!711960 m!668997))

(declare-fun m!668999 () Bool)

(assert (=> b!711960 m!668999))

(declare-fun m!669001 () Bool)

(assert (=> b!711960 m!669001))

(declare-fun m!669003 () Bool)

(assert (=> d!97751 m!669003))

(declare-fun m!669005 () Bool)

(assert (=> d!97751 m!669005))

(declare-fun m!669007 () Bool)

(assert (=> bm!34540 m!669007))

(assert (=> b!711879 d!97751))

(declare-fun d!97769 () Bool)

(declare-fun lt!318491 () Bool)

(assert (=> d!97769 (= lt!318491 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!362 newAcc!49)))))

(declare-fun e!400561 () Bool)

(assert (=> d!97769 (= lt!318491 e!400561)))

(declare-fun res!475344 () Bool)

(assert (=> d!97769 (=> (not res!475344) (not e!400561))))

(assert (=> d!97769 (= res!475344 (is-Cons!13427 newAcc!49))))

(assert (=> d!97769 (= (contains!3974 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318491)))

(declare-fun b!711965 () Bool)

(declare-fun e!400560 () Bool)

(assert (=> b!711965 (= e!400561 e!400560)))

(declare-fun res!475343 () Bool)

(assert (=> b!711965 (=> res!475343 e!400560)))

(assert (=> b!711965 (= res!475343 (= (h!14472 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711966 () Bool)

(assert (=> b!711966 (= e!400560 (contains!3974 (t!19748 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97769 res!475344) b!711965))

(assert (= (and b!711965 (not res!475343)) b!711966))

(assert (=> d!97769 m!668999))

(declare-fun m!669013 () Bool)

(assert (=> d!97769 m!669013))

(declare-fun m!669017 () Bool)

(assert (=> b!711966 m!669017))

(assert (=> b!711877 d!97769))

(declare-fun d!97773 () Bool)

(declare-fun lt!318492 () Bool)

(assert (=> d!97773 (= lt!318492 (member k!2824 (content!362 acc!652)))))

(declare-fun e!400565 () Bool)

(assert (=> d!97773 (= lt!318492 e!400565)))

(declare-fun res!475348 () Bool)

(assert (=> d!97773 (=> (not res!475348) (not e!400565))))

(assert (=> d!97773 (= res!475348 (is-Cons!13427 acc!652))))

(assert (=> d!97773 (= (contains!3974 acc!652 k!2824) lt!318492)))

(declare-fun b!711969 () Bool)

(declare-fun e!400564 () Bool)

(assert (=> b!711969 (= e!400565 e!400564)))

(declare-fun res!475347 () Bool)

(assert (=> b!711969 (=> res!475347 e!400564)))

(assert (=> b!711969 (= res!475347 (= (h!14472 acc!652) k!2824))))

(declare-fun b!711970 () Bool)

(assert (=> b!711970 (= e!400564 (contains!3974 (t!19748 acc!652) k!2824))))

(assert (= (and d!97773 res!475348) b!711969))

(assert (= (and b!711969 (not res!475347)) b!711970))

(assert (=> d!97773 m!668975))

(declare-fun m!669023 () Bool)

(assert (=> d!97773 m!669023))

(declare-fun m!669025 () Bool)

(assert (=> b!711970 m!669025))

(assert (=> b!711856 d!97773))

(declare-fun d!97777 () Bool)

(assert (=> d!97777 (= (validKeyInArray!0 (select (arr!19337 a!3591) from!2969)) (and (not (= (select (arr!19337 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19337 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711881 d!97777))

(declare-fun d!97781 () Bool)

(declare-fun res!475361 () Bool)

(declare-fun e!400578 () Bool)

(assert (=> d!97781 (=> res!475361 e!400578)))

(assert (=> d!97781 (= res!475361 (is-Nil!13428 newAcc!49))))

(assert (=> d!97781 (= (noDuplicate!1221 newAcc!49) e!400578)))

(declare-fun b!711983 () Bool)

(declare-fun e!400579 () Bool)

(assert (=> b!711983 (= e!400578 e!400579)))

(declare-fun res!475362 () Bool)

(assert (=> b!711983 (=> (not res!475362) (not e!400579))))

(assert (=> b!711983 (= res!475362 (not (contains!3974 (t!19748 newAcc!49) (h!14472 newAcc!49))))))

(declare-fun b!711984 () Bool)

(assert (=> b!711984 (= e!400579 (noDuplicate!1221 (t!19748 newAcc!49)))))

(assert (= (and d!97781 (not res!475361)) b!711983))

(assert (= (and b!711983 res!475362) b!711984))

(declare-fun m!669035 () Bool)

(assert (=> b!711983 m!669035))

(declare-fun m!669037 () Bool)

(assert (=> b!711984 m!669037))

(assert (=> b!711860 d!97781))

(declare-fun d!97791 () Bool)

(declare-fun lt!318494 () Bool)

(assert (=> d!97791 (= lt!318494 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!362 lt!318469)))))

(declare-fun e!400583 () Bool)

(assert (=> d!97791 (= lt!318494 e!400583)))

(declare-fun res!475366 () Bool)

(assert (=> d!97791 (=> (not res!475366) (not e!400583))))

(assert (=> d!97791 (= res!475366 (is-Cons!13427 lt!318469))))

(assert (=> d!97791 (= (contains!3974 lt!318469 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318494)))

(declare-fun b!711987 () Bool)

(declare-fun e!400582 () Bool)

(assert (=> b!711987 (= e!400583 e!400582)))

(declare-fun res!475365 () Bool)

(assert (=> b!711987 (=> res!475365 e!400582)))

(assert (=> b!711987 (= res!475365 (= (h!14472 lt!318469) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711988 () Bool)

(assert (=> b!711988 (= e!400582 (contains!3974 (t!19748 lt!318469) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97791 res!475366) b!711987))

(assert (= (and b!711987 (not res!475365)) b!711988))

(assert (=> d!97791 m!668969))

(declare-fun m!669039 () Bool)

(assert (=> d!97791 m!669039))

(declare-fun m!669043 () Bool)

(assert (=> b!711988 m!669043))

(assert (=> b!711859 d!97791))

(declare-fun b!712010 () Bool)

(declare-fun e!400602 () Bool)

(assert (=> b!712010 (= e!400602 (subseq!418 acc!652 (t!19748 newAcc!49)))))

(declare-fun b!712007 () Bool)

(declare-fun e!400604 () Bool)

(declare-fun e!400603 () Bool)

(assert (=> b!712007 (= e!400604 e!400603)))

(declare-fun res!475385 () Bool)

(assert (=> b!712007 (=> (not res!475385) (not e!400603))))

(assert (=> b!712007 (= res!475385 (is-Cons!13427 newAcc!49))))

(declare-fun b!712008 () Bool)

(assert (=> b!712008 (= e!400603 e!400602)))

(declare-fun res!475388 () Bool)

(assert (=> b!712008 (=> res!475388 e!400602)))

(declare-fun e!400605 () Bool)

(assert (=> b!712008 (= res!475388 e!400605)))

(declare-fun res!475386 () Bool)

(assert (=> b!712008 (=> (not res!475386) (not e!400605))))

(assert (=> b!712008 (= res!475386 (= (h!14472 acc!652) (h!14472 newAcc!49)))))

(declare-fun d!97793 () Bool)

(declare-fun res!475387 () Bool)

(assert (=> d!97793 (=> res!475387 e!400604)))

(assert (=> d!97793 (= res!475387 (is-Nil!13428 acc!652))))

(assert (=> d!97793 (= (subseq!418 acc!652 newAcc!49) e!400604)))

(declare-fun b!712009 () Bool)

(assert (=> b!712009 (= e!400605 (subseq!418 (t!19748 acc!652) (t!19748 newAcc!49)))))

(assert (= (and d!97793 (not res!475387)) b!712007))

(assert (= (and b!712007 res!475385) b!712008))

(assert (= (and b!712008 res!475386) b!712009))

(assert (= (and b!712008 (not res!475388)) b!712010))

(declare-fun m!669047 () Bool)

(assert (=> b!712010 m!669047))

(declare-fun m!669049 () Bool)

(assert (=> b!712009 m!669049))

(assert (=> b!711880 d!97793))

(declare-fun d!97797 () Bool)

(declare-fun res!475401 () Bool)

(declare-fun e!400620 () Bool)

(assert (=> d!97797 (=> res!475401 e!400620)))

(assert (=> d!97797 (= res!475401 (= (select (arr!19337 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97797 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400620)))

(declare-fun b!712027 () Bool)

(declare-fun e!400621 () Bool)

(assert (=> b!712027 (= e!400620 e!400621)))

(declare-fun res!475402 () Bool)

(assert (=> b!712027 (=> (not res!475402) (not e!400621))))

(assert (=> b!712027 (= res!475402 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19743 a!3591)))))

(declare-fun b!712028 () Bool)

(assert (=> b!712028 (= e!400621 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97797 (not res!475401)) b!712027))

(assert (= (and b!712027 res!475402) b!712028))

(declare-fun m!669055 () Bool)

(assert (=> d!97797 m!669055))

(declare-fun m!669057 () Bool)

(assert (=> b!712028 m!669057))

(assert (=> b!711862 d!97797))

(declare-fun d!97801 () Bool)

(declare-fun res!475405 () Bool)

(declare-fun e!400624 () Bool)

(assert (=> d!97801 (=> res!475405 e!400624)))

(assert (=> d!97801 (= res!475405 (= (select (arr!19337 a!3591) from!2969) k!2824))))

(assert (=> d!97801 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!400624)))

(declare-fun b!712031 () Bool)

(declare-fun e!400625 () Bool)

(assert (=> b!712031 (= e!400624 e!400625)))

(declare-fun res!475406 () Bool)

(assert (=> b!712031 (=> (not res!475406) (not e!400625))))

(assert (=> b!712031 (= res!475406 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19743 a!3591)))))

(declare-fun b!712032 () Bool)

(assert (=> b!712032 (= e!400625 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97801 (not res!475405)) b!712031))

(assert (= (and b!712031 res!475406) b!712032))

(assert (=> d!97801 m!668899))

(declare-fun m!669063 () Bool)

(assert (=> b!712032 m!669063))

(assert (=> b!711863 d!97801))

(declare-fun d!97803 () Bool)

(declare-fun lt!318496 () Bool)

(assert (=> d!97803 (= lt!318496 (member k!2824 (content!362 newAcc!49)))))

(declare-fun e!400627 () Bool)

(assert (=> d!97803 (= lt!318496 e!400627)))

(declare-fun res!475408 () Bool)

(assert (=> d!97803 (=> (not res!475408) (not e!400627))))

(assert (=> d!97803 (= res!475408 (is-Cons!13427 newAcc!49))))

(assert (=> d!97803 (= (contains!3974 newAcc!49 k!2824) lt!318496)))

(declare-fun b!712033 () Bool)

(declare-fun e!400626 () Bool)

(assert (=> b!712033 (= e!400627 e!400626)))

(declare-fun res!475407 () Bool)

(assert (=> b!712033 (=> res!475407 e!400626)))

(assert (=> b!712033 (= res!475407 (= (h!14472 newAcc!49) k!2824))))

(declare-fun b!712034 () Bool)

(assert (=> b!712034 (= e!400626 (contains!3974 (t!19748 newAcc!49) k!2824))))

(assert (= (and d!97803 res!475408) b!712033))

(assert (= (and b!712033 (not res!475407)) b!712034))

(assert (=> d!97803 m!668999))

(declare-fun m!669067 () Bool)

(assert (=> d!97803 m!669067))

(declare-fun m!669069 () Bool)

(assert (=> b!712034 m!669069))

(assert (=> b!711861 d!97803))

(declare-fun d!97807 () Bool)

(declare-fun res!475413 () Bool)

(declare-fun e!400632 () Bool)

(assert (=> d!97807 (=> res!475413 e!400632)))

(assert (=> d!97807 (= res!475413 (is-Nil!13428 lt!318469))))

(assert (=> d!97807 (= (noDuplicate!1221 lt!318469) e!400632)))

(declare-fun b!712039 () Bool)

(declare-fun e!400633 () Bool)

(assert (=> b!712039 (= e!400632 e!400633)))

(declare-fun res!475414 () Bool)

(assert (=> b!712039 (=> (not res!475414) (not e!400633))))

(assert (=> b!712039 (= res!475414 (not (contains!3974 (t!19748 lt!318469) (h!14472 lt!318469))))))

(declare-fun b!712040 () Bool)

(assert (=> b!712040 (= e!400633 (noDuplicate!1221 (t!19748 lt!318469)))))

(assert (= (and d!97807 (not res!475413)) b!712039))

(assert (= (and b!712039 res!475414) b!712040))

(declare-fun m!669071 () Bool)

(assert (=> b!712039 m!669071))

(declare-fun m!669075 () Bool)

(assert (=> b!712040 m!669075))

(assert (=> b!711865 d!97807))

(declare-fun d!97809 () Bool)

(assert (=> d!97809 (= (array_inv!15111 a!3591) (bvsge (size!19743 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63230 d!97809))

(declare-fun d!97813 () Bool)

(assert (=> d!97813 (= ($colon$colon!528 newAcc!49 (select (arr!19337 a!3591) from!2969)) (Cons!13427 (select (arr!19337 a!3591) from!2969) newAcc!49))))

(assert (=> b!711864 d!97813))

(declare-fun d!97815 () Bool)

(assert (=> d!97815 (= ($colon$colon!528 acc!652 (select (arr!19337 a!3591) from!2969)) (Cons!13427 (select (arr!19337 a!3591) from!2969) acc!652))))

(assert (=> b!711864 d!97815))

(declare-fun b!712049 () Bool)

(declare-fun e!400638 () Bool)

(assert (=> b!712049 (= e!400638 (subseq!418 lt!318469 (t!19748 lt!318470)))))

(declare-fun b!712046 () Bool)

(declare-fun e!400640 () Bool)

(declare-fun e!400639 () Bool)

(assert (=> b!712046 (= e!400640 e!400639)))

(declare-fun res!475418 () Bool)

(assert (=> b!712046 (=> (not res!475418) (not e!400639))))

(assert (=> b!712046 (= res!475418 (is-Cons!13427 lt!318470))))

(declare-fun b!712047 () Bool)

(assert (=> b!712047 (= e!400639 e!400638)))

(declare-fun res!475421 () Bool)

(assert (=> b!712047 (=> res!475421 e!400638)))

(declare-fun e!400641 () Bool)

(assert (=> b!712047 (= res!475421 e!400641)))

(declare-fun res!475419 () Bool)

(assert (=> b!712047 (=> (not res!475419) (not e!400641))))

(assert (=> b!712047 (= res!475419 (= (h!14472 lt!318469) (h!14472 lt!318470)))))

(declare-fun d!97817 () Bool)

(declare-fun res!475420 () Bool)

(assert (=> d!97817 (=> res!475420 e!400640)))

(assert (=> d!97817 (= res!475420 (is-Nil!13428 lt!318469))))

(assert (=> d!97817 (= (subseq!418 lt!318469 lt!318470) e!400640)))

(declare-fun b!712048 () Bool)

(assert (=> b!712048 (= e!400641 (subseq!418 (t!19748 lt!318469) (t!19748 lt!318470)))))

(assert (= (and d!97817 (not res!475420)) b!712046))

(assert (= (and b!712046 res!475418) b!712047))

(assert (= (and b!712047 res!475419) b!712048))

(assert (= (and b!712047 (not res!475421)) b!712049))

(declare-fun m!669081 () Bool)

(assert (=> b!712049 m!669081))

(declare-fun m!669083 () Bool)

(assert (=> b!712048 m!669083))

(assert (=> b!711868 d!97817))

(declare-fun b!712052 () Bool)

(declare-fun e!400644 () List!13431)

(declare-fun e!400648 () List!13431)

(assert (=> b!712052 (= e!400644 e!400648)))

(declare-fun c!78681 () Bool)

(assert (=> b!712052 (= c!78681 (= k!2824 (h!14472 lt!318470)))))

(declare-fun b!712053 () Bool)

(declare-fun call!34547 () List!13431)

(assert (=> b!712053 (= e!400648 (Cons!13427 (h!14472 lt!318470) call!34547))))

(declare-fun e!400647 () Bool)

(declare-fun b!712054 () Bool)

(declare-fun lt!318497 () List!13431)

(assert (=> b!712054 (= e!400647 (= (content!362 lt!318497) (setminus (content!362 lt!318470) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun d!97819 () Bool)

(assert (=> d!97819 e!400647))

(declare-fun res!475424 () Bool)

(assert (=> d!97819 (=> (not res!475424) (not e!400647))))

(assert (=> d!97819 (= res!475424 (<= (size!19745 lt!318497) (size!19745 lt!318470)))))

(assert (=> d!97819 (= lt!318497 e!400644)))

(declare-fun c!78682 () Bool)

(assert (=> d!97819 (= c!78682 (is-Cons!13427 lt!318470))))

(assert (=> d!97819 (= (-!383 lt!318470 k!2824) lt!318497)))

(declare-fun bm!34544 () Bool)

(assert (=> bm!34544 (= call!34547 (-!383 (t!19748 lt!318470) k!2824))))

(declare-fun b!712055 () Bool)

(assert (=> b!712055 (= e!400644 Nil!13428)))

(declare-fun b!712056 () Bool)

(assert (=> b!712056 (= e!400648 call!34547)))

(assert (= (and d!97819 c!78682) b!712052))

(assert (= (and d!97819 (not c!78682)) b!712055))

(assert (= (and b!712052 c!78681) b!712056))

(assert (= (and b!712052 (not c!78681)) b!712053))

(assert (= (or b!712056 b!712053) bm!34544))

(assert (= (and d!97819 res!475424) b!712054))

(declare-fun m!669089 () Bool)

(assert (=> b!712054 m!669089))

(declare-fun m!669091 () Bool)

(assert (=> b!712054 m!669091))

(assert (=> b!712054 m!669001))

(declare-fun m!669093 () Bool)

(assert (=> d!97819 m!669093))

(declare-fun m!669095 () Bool)

(assert (=> d!97819 m!669095))

(declare-fun m!669097 () Bool)

(assert (=> bm!34544 m!669097))

(assert (=> b!711866 d!97819))

(declare-fun d!97823 () Bool)

(declare-fun lt!318499 () Bool)

(assert (=> d!97823 (= lt!318499 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!362 acc!652)))))

(declare-fun e!400652 () Bool)

(assert (=> d!97823 (= lt!318499 e!400652)))

(declare-fun res!475430 () Bool)

(assert (=> d!97823 (=> (not res!475430) (not e!400652))))

(assert (=> d!97823 (= res!475430 (is-Cons!13427 acc!652))))

(assert (=> d!97823 (= (contains!3974 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318499)))

(declare-fun b!712061 () Bool)

(declare-fun e!400651 () Bool)

(assert (=> b!712061 (= e!400652 e!400651)))

(declare-fun res!475429 () Bool)

(assert (=> b!712061 (=> res!475429 e!400651)))

(assert (=> b!712061 (= res!475429 (= (h!14472 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712062 () Bool)

(assert (=> b!712062 (= e!400651 (contains!3974 (t!19748 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97823 res!475430) b!712061))

(assert (= (and b!712061 (not res!475429)) b!712062))

(assert (=> d!97823 m!668975))

(declare-fun m!669105 () Bool)

(assert (=> d!97823 m!669105))

(declare-fun m!669107 () Bool)

(assert (=> b!712062 m!669107))

(assert (=> b!711867 d!97823))

(declare-fun d!97827 () Bool)

(declare-fun lt!318501 () Bool)

(assert (=> d!97827 (= lt!318501 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!362 newAcc!49)))))

(declare-fun e!400656 () Bool)

(assert (=> d!97827 (= lt!318501 e!400656)))

(declare-fun res!475434 () Bool)

(assert (=> d!97827 (=> (not res!475434) (not e!400656))))

(assert (=> d!97827 (= res!475434 (is-Cons!13427 newAcc!49))))

(assert (=> d!97827 (= (contains!3974 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318501)))

(declare-fun b!712065 () Bool)

(declare-fun e!400655 () Bool)

(assert (=> b!712065 (= e!400656 e!400655)))

(declare-fun res!475433 () Bool)

(assert (=> b!712065 (=> res!475433 e!400655)))

(assert (=> b!712065 (= res!475433 (= (h!14472 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712066 () Bool)

(assert (=> b!712066 (= e!400655 (contains!3974 (t!19748 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97827 res!475434) b!712065))

(assert (= (and b!712065 (not res!475433)) b!712066))

(assert (=> d!97827 m!668999))

(declare-fun m!669109 () Bool)

(assert (=> d!97827 m!669109))

(declare-fun m!669111 () Bool)

(assert (=> b!712066 m!669111))

(assert (=> b!711870 d!97827))

(declare-fun d!97829 () Bool)

(declare-fun lt!318502 () Bool)

(assert (=> d!97829 (= lt!318502 (member k!2824 (content!362 lt!318469)))))

(declare-fun e!400658 () Bool)

(assert (=> d!97829 (= lt!318502 e!400658)))

(declare-fun res!475436 () Bool)

(assert (=> d!97829 (=> (not res!475436) (not e!400658))))

(assert (=> d!97829 (= res!475436 (is-Cons!13427 lt!318469))))

(assert (=> d!97829 (= (contains!3974 lt!318469 k!2824) lt!318502)))

(declare-fun b!712067 () Bool)

(declare-fun e!400657 () Bool)

(assert (=> b!712067 (= e!400658 e!400657)))

(declare-fun res!475435 () Bool)

(assert (=> b!712067 (=> res!475435 e!400657)))

(assert (=> b!712067 (= res!475435 (= (h!14472 lt!318469) k!2824))))

(declare-fun b!712068 () Bool)

(assert (=> b!712068 (= e!400657 (contains!3974 (t!19748 lt!318469) k!2824))))

(assert (= (and d!97829 res!475436) b!712067))

(assert (= (and b!712067 (not res!475435)) b!712068))

(assert (=> d!97829 m!668969))

(declare-fun m!669117 () Bool)

(assert (=> d!97829 m!669117))

(declare-fun m!669119 () Bool)

(assert (=> b!712068 m!669119))

(assert (=> b!711871 d!97829))

(declare-fun d!97833 () Bool)

(declare-fun res!475441 () Bool)

(declare-fun e!400663 () Bool)

(assert (=> d!97833 (=> res!475441 e!400663)))

(assert (=> d!97833 (= res!475441 (is-Nil!13428 lt!318470))))

(assert (=> d!97833 (= (noDuplicate!1221 lt!318470) e!400663)))

(declare-fun b!712073 () Bool)

(declare-fun e!400664 () Bool)

(assert (=> b!712073 (= e!400663 e!400664)))

(declare-fun res!475442 () Bool)

(assert (=> b!712073 (=> (not res!475442) (not e!400664))))

(assert (=> b!712073 (= res!475442 (not (contains!3974 (t!19748 lt!318470) (h!14472 lt!318470))))))

(declare-fun b!712074 () Bool)

(assert (=> b!712074 (= e!400664 (noDuplicate!1221 (t!19748 lt!318470)))))

(assert (= (and d!97833 (not res!475441)) b!712073))

(assert (= (and b!712073 res!475442) b!712074))

(declare-fun m!669121 () Bool)

(assert (=> b!712073 m!669121))

(declare-fun m!669123 () Bool)

(assert (=> b!712074 m!669123))

(assert (=> b!711869 d!97833))

(declare-fun d!97835 () Bool)

(assert (=> d!97835 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711873 d!97835))

(declare-fun d!97837 () Bool)

(declare-fun lt!318504 () Bool)

(assert (=> d!97837 (= lt!318504 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!362 lt!318470)))))

(declare-fun e!400666 () Bool)

(assert (=> d!97837 (= lt!318504 e!400666)))

(declare-fun res!475444 () Bool)

(assert (=> d!97837 (=> (not res!475444) (not e!400666))))

(assert (=> d!97837 (= res!475444 (is-Cons!13427 lt!318470))))

(assert (=> d!97837 (= (contains!3974 lt!318470 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318504)))

(declare-fun b!712075 () Bool)

(declare-fun e!400665 () Bool)

(assert (=> b!712075 (= e!400666 e!400665)))

(declare-fun res!475443 () Bool)

(assert (=> b!712075 (=> res!475443 e!400665)))

(assert (=> b!712075 (= res!475443 (= (h!14472 lt!318470) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712076 () Bool)

(assert (=> b!712076 (= e!400665 (contains!3974 (t!19748 lt!318470) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97837 res!475444) b!712075))

(assert (= (and b!712075 (not res!475443)) b!712076))

(assert (=> d!97837 m!669091))

(declare-fun m!669133 () Bool)

(assert (=> d!97837 m!669133))

(declare-fun m!669135 () Bool)

(assert (=> b!712076 m!669135))

(assert (=> b!711872 d!97837))

(declare-fun d!97845 () Bool)

(declare-fun res!475449 () Bool)

(declare-fun e!400671 () Bool)

(assert (=> d!97845 (=> res!475449 e!400671)))

(assert (=> d!97845 (= res!475449 (is-Nil!13428 acc!652))))

(assert (=> d!97845 (= (noDuplicate!1221 acc!652) e!400671)))

(declare-fun b!712081 () Bool)

(declare-fun e!400672 () Bool)

(assert (=> b!712081 (= e!400671 e!400672)))

(declare-fun res!475450 () Bool)

(assert (=> b!712081 (=> (not res!475450) (not e!400672))))

(assert (=> b!712081 (= res!475450 (not (contains!3974 (t!19748 acc!652) (h!14472 acc!652))))))

(declare-fun b!712082 () Bool)

(assert (=> b!712082 (= e!400672 (noDuplicate!1221 (t!19748 acc!652)))))

(assert (= (and d!97845 (not res!475449)) b!712081))

(assert (= (and b!712081 res!475450) b!712082))

(declare-fun m!669141 () Bool)

(assert (=> b!712081 m!669141))

(declare-fun m!669143 () Bool)

(assert (=> b!712082 m!669143))

(assert (=> b!711854 d!97845))

(declare-fun d!97849 () Bool)

(declare-fun lt!318508 () Bool)

(assert (=> d!97849 (= lt!318508 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!362 lt!318470)))))

(declare-fun e!400676 () Bool)

(assert (=> d!97849 (= lt!318508 e!400676)))

(declare-fun res!475454 () Bool)

(assert (=> d!97849 (=> (not res!475454) (not e!400676))))

(assert (=> d!97849 (= res!475454 (is-Cons!13427 lt!318470))))

(assert (=> d!97849 (= (contains!3974 lt!318470 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318508)))

(declare-fun b!712085 () Bool)

(declare-fun e!400675 () Bool)

(assert (=> b!712085 (= e!400676 e!400675)))

(declare-fun res!475453 () Bool)

(assert (=> b!712085 (=> res!475453 e!400675)))

(assert (=> b!712085 (= res!475453 (= (h!14472 lt!318470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712086 () Bool)

(assert (=> b!712086 (= e!400675 (contains!3974 (t!19748 lt!318470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97849 res!475454) b!712085))

(assert (= (and b!712085 (not res!475453)) b!712086))

(assert (=> d!97849 m!669091))

(declare-fun m!669149 () Bool)

(assert (=> d!97849 m!669149))

(declare-fun m!669151 () Bool)

(assert (=> b!712086 m!669151))

(assert (=> b!711855 d!97849))

(declare-fun b!712128 () Bool)

(declare-fun e!400713 () Bool)

(declare-fun call!34553 () Bool)

(assert (=> b!712128 (= e!400713 call!34553)))

(declare-fun d!97853 () Bool)

(declare-fun res!475486 () Bool)

(declare-fun e!400715 () Bool)

(assert (=> d!97853 (=> res!475486 e!400715)))

(assert (=> d!97853 (= res!475486 (bvsge from!2969 (size!19743 a!3591)))))

(assert (=> d!97853 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400715)))

(declare-fun b!712129 () Bool)

(declare-fun e!400716 () Bool)

(assert (=> b!712129 (= e!400715 e!400716)))

(declare-fun res!475488 () Bool)

(assert (=> b!712129 (=> (not res!475488) (not e!400716))))

(declare-fun e!400714 () Bool)

(assert (=> b!712129 (= res!475488 (not e!400714))))

(declare-fun res!475487 () Bool)

(assert (=> b!712129 (=> (not res!475487) (not e!400714))))

(assert (=> b!712129 (= res!475487 (validKeyInArray!0 (select (arr!19337 a!3591) from!2969)))))

(declare-fun c!78688 () Bool)

(declare-fun bm!34550 () Bool)

(assert (=> bm!34550 (= call!34553 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78688 (Cons!13427 (select (arr!19337 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!712130 () Bool)

(assert (=> b!712130 (= e!400716 e!400713)))

(assert (=> b!712130 (= c!78688 (validKeyInArray!0 (select (arr!19337 a!3591) from!2969)))))

(declare-fun b!712131 () Bool)

(assert (=> b!712131 (= e!400714 (contains!3974 acc!652 (select (arr!19337 a!3591) from!2969)))))

(declare-fun b!712132 () Bool)

(assert (=> b!712132 (= e!400713 call!34553)))

(assert (= (and d!97853 (not res!475486)) b!712129))

(assert (= (and b!712129 res!475487) b!712131))

(assert (= (and b!712129 res!475488) b!712130))

(assert (= (and b!712130 c!78688) b!712132))

(assert (= (and b!712130 (not c!78688)) b!712128))

(assert (= (or b!712132 b!712128) bm!34550))

(assert (=> b!712129 m!668899))

(assert (=> b!712129 m!668899))

(assert (=> b!712129 m!668901))

(assert (=> bm!34550 m!668899))

(declare-fun m!669189 () Bool)

(assert (=> bm!34550 m!669189))

(assert (=> b!712130 m!668899))

(assert (=> b!712130 m!668899))

(assert (=> b!712130 m!668901))

(assert (=> b!712131 m!668899))

(assert (=> b!712131 m!668899))

(declare-fun m!669191 () Bool)

(assert (=> b!712131 m!669191))

(assert (=> b!711876 d!97853))

(declare-fun d!97871 () Bool)

(declare-fun lt!318512 () Bool)

(assert (=> d!97871 (= lt!318512 (member k!2824 (content!362 lt!318470)))))

(declare-fun e!400718 () Bool)

(assert (=> d!97871 (= lt!318512 e!400718)))

(declare-fun res!475490 () Bool)

(assert (=> d!97871 (=> (not res!475490) (not e!400718))))

(assert (=> d!97871 (= res!475490 (is-Cons!13427 lt!318470))))

(assert (=> d!97871 (= (contains!3974 lt!318470 k!2824) lt!318512)))

(declare-fun b!712133 () Bool)

(declare-fun e!400717 () Bool)

(assert (=> b!712133 (= e!400718 e!400717)))

(declare-fun res!475489 () Bool)

(assert (=> b!712133 (=> res!475489 e!400717)))

(assert (=> b!712133 (= res!475489 (= (h!14472 lt!318470) k!2824))))

(declare-fun b!712134 () Bool)

(assert (=> b!712134 (= e!400717 (contains!3974 (t!19748 lt!318470) k!2824))))

(assert (= (and d!97871 res!475490) b!712133))

(assert (= (and b!712133 (not res!475489)) b!712134))

(assert (=> d!97871 m!669091))

(declare-fun m!669193 () Bool)

(assert (=> d!97871 m!669193))

(declare-fun m!669195 () Bool)

(assert (=> b!712134 m!669195))

(assert (=> b!711874 d!97871))

(declare-fun b!712135 () Bool)

(declare-fun e!400719 () Bool)

(declare-fun call!34554 () Bool)

(assert (=> b!712135 (= e!400719 call!34554)))

(declare-fun d!97873 () Bool)

(declare-fun res!475491 () Bool)

(declare-fun e!400721 () Bool)

(assert (=> d!97873 (=> res!475491 e!400721)))

(assert (=> d!97873 (= res!475491 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19743 a!3591)))))

(assert (=> d!97873 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318469) e!400721)))

(declare-fun b!712136 () Bool)

(declare-fun e!400722 () Bool)

(assert (=> b!712136 (= e!400721 e!400722)))

(declare-fun res!475493 () Bool)

(assert (=> b!712136 (=> (not res!475493) (not e!400722))))

(declare-fun e!400720 () Bool)

