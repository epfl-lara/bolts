; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136918 () Bool)

(assert start!136918)

(declare-fun res!1078876 () Bool)

(declare-fun e!880736 () Bool)

(assert (=> start!136918 (=> (not res!1078876) (not e!880736))))

(declare-datatypes ((B!2570 0))(
  ( (B!2571 (val!19647 Int)) )
))
(declare-datatypes ((tuple2!25560 0))(
  ( (tuple2!25561 (_1!12790 (_ BitVec 64)) (_2!12790 B!2570)) )
))
(declare-datatypes ((List!36928 0))(
  ( (Nil!36925) (Cons!36924 (h!38468 tuple2!25560) (t!51849 List!36928)) )
))
(declare-datatypes ((ListLongMap!22911 0))(
  ( (ListLongMap!22912 (toList!11471 List!36928)) )
))
(declare-fun lm!251 () ListLongMap!22911)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun contains!10456 (ListLongMap!22911 (_ BitVec 64)) Bool)

(assert (=> start!136918 (= res!1078876 (not (contains!10456 lm!251 a0!51)))))

(assert (=> start!136918 e!880736))

(declare-fun e!880737 () Bool)

(declare-fun inv!58928 (ListLongMap!22911) Bool)

(assert (=> start!136918 (and (inv!58928 lm!251) e!880737)))

(assert (=> start!136918 true))

(declare-fun tp_is_empty!39115 () Bool)

(assert (=> start!136918 tp_is_empty!39115))

(declare-fun b!1578852 () Bool)

(declare-fun res!1078880 () Bool)

(assert (=> b!1578852 (=> (not res!1078880) (not e!880736))))

(declare-fun isStrictlySorted!1026 (List!36928) Bool)

(assert (=> b!1578852 (= res!1078880 (isStrictlySorted!1026 (toList!11471 lm!251)))))

(declare-fun a!525 () (_ BitVec 64))

(declare-fun b!1578853 () Bool)

(declare-fun b!98 () B!2570)

(declare-fun +!5053 (ListLongMap!22911 tuple2!25560) ListLongMap!22911)

(assert (=> b!1578853 (= e!880736 (not (not (contains!10456 (+!5053 lm!251 (tuple2!25561 a!525 b!98)) a0!51))))))

(declare-fun containsKey!876 (List!36928 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!601 (List!36928 (_ BitVec 64) B!2570) List!36928)

(assert (=> b!1578853 (not (containsKey!876 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98) a0!51))))

(declare-datatypes ((Unit!52147 0))(
  ( (Unit!52148) )
))
(declare-fun lt!676291 () Unit!52147)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!1 (List!36928 (_ BitVec 64) B!2570 (_ BitVec 64)) Unit!52147)

(assert (=> b!1578853 (= lt!676291 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!1 (toList!11471 lm!251) a!525 b!98 a0!51))))

(declare-fun b!1578854 () Bool)

(declare-fun res!1078878 () Bool)

(assert (=> b!1578854 (=> (not res!1078878) (not e!880736))))

(assert (=> b!1578854 (= res!1078878 (not (= a0!51 a!525)))))

(declare-fun b!1578855 () Bool)

(declare-fun tp!114280 () Bool)

(assert (=> b!1578855 (= e!880737 tp!114280)))

(declare-fun b!1578856 () Bool)

(declare-fun res!1078879 () Bool)

(assert (=> b!1578856 (=> (not res!1078879) (not e!880736))))

(assert (=> b!1578856 (= res!1078879 (not (containsKey!876 (toList!11471 lm!251) a0!51)))))

(declare-fun b!1578857 () Bool)

(declare-fun res!1078877 () Bool)

(assert (=> b!1578857 (=> (not res!1078877) (not e!880736))))

(assert (=> b!1578857 (= res!1078877 (not (= a!525 a0!51)))))

(assert (= (and start!136918 res!1078876) b!1578857))

(assert (= (and b!1578857 res!1078877) b!1578852))

(assert (= (and b!1578852 res!1078880) b!1578856))

(assert (= (and b!1578856 res!1078879) b!1578854))

(assert (= (and b!1578854 res!1078878) b!1578853))

(assert (= start!136918 b!1578855))

(declare-fun m!1450853 () Bool)

(assert (=> start!136918 m!1450853))

(declare-fun m!1450855 () Bool)

(assert (=> start!136918 m!1450855))

(declare-fun m!1450857 () Bool)

(assert (=> b!1578852 m!1450857))

(declare-fun m!1450859 () Bool)

(assert (=> b!1578853 m!1450859))

(declare-fun m!1450861 () Bool)

(assert (=> b!1578853 m!1450861))

(declare-fun m!1450863 () Bool)

(assert (=> b!1578853 m!1450863))

(assert (=> b!1578853 m!1450859))

(declare-fun m!1450865 () Bool)

(assert (=> b!1578853 m!1450865))

(declare-fun m!1450867 () Bool)

(assert (=> b!1578853 m!1450867))

(assert (=> b!1578853 m!1450861))

(declare-fun m!1450869 () Bool)

(assert (=> b!1578856 m!1450869))

(push 1)

(assert (not b!1578852))

(assert (not b!1578855))

(assert (not b!1578853))

(assert (not b!1578856))

(assert (not start!136918))

(assert tp_is_empty!39115)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1578956 () Bool)

(declare-fun c!146271 () Bool)

(assert (=> b!1578956 (= c!146271 (and (is-Cons!36924 (toList!11471 lm!251)) (bvsgt (_1!12790 (h!38468 (toList!11471 lm!251))) a!525)))))

(declare-fun e!880798 () List!36928)

(declare-fun e!880797 () List!36928)

(assert (=> b!1578956 (= e!880798 e!880797)))

(declare-fun b!1578957 () Bool)

(declare-fun e!880799 () List!36928)

(assert (=> b!1578957 (= e!880799 e!880798)))

(declare-fun c!146274 () Bool)

(assert (=> b!1578957 (= c!146274 (and (is-Cons!36924 (toList!11471 lm!251)) (= (_1!12790 (h!38468 (toList!11471 lm!251))) a!525)))))

(declare-fun e!880796 () List!36928)

(declare-fun b!1578958 () Bool)

(assert (=> b!1578958 (= e!880796 (insertStrictlySorted!601 (t!51849 (toList!11471 lm!251)) a!525 b!98))))

(declare-fun b!1578960 () Bool)

(declare-fun call!72375 () List!36928)

(assert (=> b!1578960 (= e!880799 call!72375)))

(declare-fun b!1578961 () Bool)

(declare-fun res!1078945 () Bool)

(declare-fun e!880800 () Bool)

(assert (=> b!1578961 (=> (not res!1078945) (not e!880800))))

(declare-fun lt!676324 () List!36928)

(assert (=> b!1578961 (= res!1078945 (containsKey!876 lt!676324 a!525))))

(declare-fun c!146273 () Bool)

(declare-fun bm!72372 () Bool)

(declare-fun $colon$colon!1006 (List!36928 tuple2!25560) List!36928)

(assert (=> bm!72372 (= call!72375 ($colon$colon!1006 e!880796 (ite c!146273 (h!38468 (toList!11471 lm!251)) (tuple2!25561 a!525 b!98))))))

(declare-fun c!146272 () Bool)

(assert (=> bm!72372 (= c!146272 c!146273)))

(declare-fun b!1578962 () Bool)

(declare-fun call!72376 () List!36928)

(assert (=> b!1578962 (= e!880797 call!72376)))

(declare-fun b!1578963 () Bool)

(assert (=> b!1578963 (= e!880797 call!72376)))

(declare-fun bm!72373 () Bool)

(declare-fun call!72377 () List!36928)

(assert (=> bm!72373 (= call!72376 call!72377)))

(declare-fun b!1578964 () Bool)

(declare-fun contains!10459 (List!36928 tuple2!25560) Bool)

(assert (=> b!1578964 (= e!880800 (contains!10459 lt!676324 (tuple2!25561 a!525 b!98)))))

(declare-fun b!1578965 () Bool)

(assert (=> b!1578965 (= e!880798 call!72377)))

(declare-fun bm!72374 () Bool)

(assert (=> bm!72374 (= call!72377 call!72375)))

(declare-fun d!166117 () Bool)

(assert (=> d!166117 e!880800))

(declare-fun res!1078946 () Bool)

(assert (=> d!166117 (=> (not res!1078946) (not e!880800))))

(assert (=> d!166117 (= res!1078946 (isStrictlySorted!1026 lt!676324))))

(assert (=> d!166117 (= lt!676324 e!880799)))

(assert (=> d!166117 (= c!146273 (and (is-Cons!36924 (toList!11471 lm!251)) (bvslt (_1!12790 (h!38468 (toList!11471 lm!251))) a!525)))))

(assert (=> d!166117 (isStrictlySorted!1026 (toList!11471 lm!251))))

(assert (=> d!166117 (= (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98) lt!676324)))

(declare-fun b!1578959 () Bool)

(assert (=> b!1578959 (= e!880796 (ite c!146274 (t!51849 (toList!11471 lm!251)) (ite c!146271 (Cons!36924 (h!38468 (toList!11471 lm!251)) (t!51849 (toList!11471 lm!251))) Nil!36925)))))

(assert (= (and d!166117 c!146273) b!1578960))

(assert (= (and d!166117 (not c!146273)) b!1578957))

(assert (= (and b!1578957 c!146274) b!1578965))

(assert (= (and b!1578957 (not c!146274)) b!1578956))

(assert (= (and b!1578956 c!146271) b!1578963))

(assert (= (and b!1578956 (not c!146271)) b!1578962))

(assert (= (or b!1578963 b!1578962) bm!72373))

(assert (= (or b!1578965 bm!72373) bm!72374))

(assert (= (or b!1578960 bm!72374) bm!72372))

(assert (= (and bm!72372 c!146272) b!1578958))

(assert (= (and bm!72372 (not c!146272)) b!1578959))

(assert (= (and d!166117 res!1078946) b!1578961))

(assert (= (and b!1578961 res!1078945) b!1578964))

(declare-fun m!1450927 () Bool)

(assert (=> b!1578961 m!1450927))

(declare-fun m!1450929 () Bool)

(assert (=> d!166117 m!1450929))

(assert (=> d!166117 m!1450857))

(declare-fun m!1450931 () Bool)

(assert (=> bm!72372 m!1450931))

(declare-fun m!1450933 () Bool)

(assert (=> b!1578958 m!1450933))

(declare-fun m!1450935 () Bool)

(assert (=> b!1578964 m!1450935))

(assert (=> b!1578853 d!166117))

(declare-fun d!166135 () Bool)

(declare-fun res!1078951 () Bool)

(declare-fun e!880805 () Bool)

(assert (=> d!166135 (=> res!1078951 e!880805)))

(assert (=> d!166135 (= res!1078951 (and (is-Cons!36924 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98)) (= (_1!12790 (h!38468 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98))) a0!51)))))

(assert (=> d!166135 (= (containsKey!876 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98) a0!51) e!880805)))

(declare-fun b!1578970 () Bool)

(declare-fun e!880806 () Bool)

(assert (=> b!1578970 (= e!880805 e!880806)))

(declare-fun res!1078952 () Bool)

(assert (=> b!1578970 (=> (not res!1078952) (not e!880806))))

(assert (=> b!1578970 (= res!1078952 (and (or (not (is-Cons!36924 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98))) (bvsle (_1!12790 (h!38468 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98))) a0!51)) (is-Cons!36924 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98)) (bvslt (_1!12790 (h!38468 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98))) a0!51)))))

(declare-fun b!1578971 () Bool)

(assert (=> b!1578971 (= e!880806 (containsKey!876 (t!51849 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98)) a0!51))))

(assert (= (and d!166135 (not res!1078951)) b!1578970))

(assert (= (and b!1578970 res!1078952) b!1578971))

(declare-fun m!1450937 () Bool)

(assert (=> b!1578971 m!1450937))

(assert (=> b!1578853 d!166135))

(declare-fun d!166137 () Bool)

(declare-fun e!880834 () Bool)

(assert (=> d!166137 e!880834))

(declare-fun res!1078967 () Bool)

(assert (=> d!166137 (=> (not res!1078967) (not e!880834))))

(declare-fun lt!676341 () ListLongMap!22911)

(assert (=> d!166137 (= res!1078967 (contains!10456 lt!676341 (_1!12790 (tuple2!25561 a!525 b!98))))))

(declare-fun lt!676338 () List!36928)

(assert (=> d!166137 (= lt!676341 (ListLongMap!22912 lt!676338))))

(declare-fun lt!676339 () Unit!52147)

(declare-fun lt!676340 () Unit!52147)

(assert (=> d!166137 (= lt!676339 lt!676340)))

(declare-datatypes ((Option!881 0))(
  ( (Some!880 (v!22365 B!2570)) (None!879) )
))
(declare-fun getValueByKey!806 (List!36928 (_ BitVec 64)) Option!881)

(assert (=> d!166137 (= (getValueByKey!806 lt!676338 (_1!12790 (tuple2!25561 a!525 b!98))) (Some!880 (_2!12790 (tuple2!25561 a!525 b!98))))))

(declare-fun lemmaContainsTupThenGetReturnValue!387 (List!36928 (_ BitVec 64) B!2570) Unit!52147)

(assert (=> d!166137 (= lt!676340 (lemmaContainsTupThenGetReturnValue!387 lt!676338 (_1!12790 (tuple2!25561 a!525 b!98)) (_2!12790 (tuple2!25561 a!525 b!98))))))

(assert (=> d!166137 (= lt!676338 (insertStrictlySorted!601 (toList!11471 lm!251) (_1!12790 (tuple2!25561 a!525 b!98)) (_2!12790 (tuple2!25561 a!525 b!98))))))

(assert (=> d!166137 (= (+!5053 lm!251 (tuple2!25561 a!525 b!98)) lt!676341)))

(declare-fun b!1579026 () Bool)

(declare-fun res!1078968 () Bool)

(assert (=> b!1579026 (=> (not res!1078968) (not e!880834))))

(assert (=> b!1579026 (= res!1078968 (= (getValueByKey!806 (toList!11471 lt!676341) (_1!12790 (tuple2!25561 a!525 b!98))) (Some!880 (_2!12790 (tuple2!25561 a!525 b!98)))))))

(declare-fun b!1579027 () Bool)

(assert (=> b!1579027 (= e!880834 (contains!10459 (toList!11471 lt!676341) (tuple2!25561 a!525 b!98)))))

(assert (= (and d!166137 res!1078967) b!1579026))

(assert (= (and b!1579026 res!1078968) b!1579027))

(declare-fun m!1450939 () Bool)

(assert (=> d!166137 m!1450939))

(declare-fun m!1450941 () Bool)

(assert (=> d!166137 m!1450941))

(declare-fun m!1450943 () Bool)

(assert (=> d!166137 m!1450943))

(declare-fun m!1450945 () Bool)

(assert (=> d!166137 m!1450945))

(declare-fun m!1450947 () Bool)

(assert (=> b!1579026 m!1450947))

(declare-fun m!1450949 () Bool)

(assert (=> b!1579027 m!1450949))

(assert (=> b!1578853 d!166137))

(declare-fun d!166139 () Bool)

(declare-fun e!880849 () Bool)

(assert (=> d!166139 e!880849))

(declare-fun res!1078977 () Bool)

(assert (=> d!166139 (=> res!1078977 e!880849)))

(declare-fun lt!676354 () Bool)

(assert (=> d!166139 (= res!1078977 (not lt!676354))))

(declare-fun lt!676353 () Bool)

(assert (=> d!166139 (= lt!676354 lt!676353)))

(declare-fun lt!676351 () Unit!52147)

(declare-fun e!880848 () Unit!52147)

(assert (=> d!166139 (= lt!676351 e!880848)))

(declare-fun c!146301 () Bool)

(assert (=> d!166139 (= c!146301 lt!676353)))

(assert (=> d!166139 (= lt!676353 (containsKey!876 (toList!11471 (+!5053 lm!251 (tuple2!25561 a!525 b!98))) a0!51))))

(assert (=> d!166139 (= (contains!10456 (+!5053 lm!251 (tuple2!25561 a!525 b!98)) a0!51) lt!676354)))

(declare-fun b!1579048 () Bool)

(declare-fun lt!676352 () Unit!52147)

(assert (=> b!1579048 (= e!880848 lt!676352)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!541 (List!36928 (_ BitVec 64)) Unit!52147)

(assert (=> b!1579048 (= lt!676352 (lemmaContainsKeyImpliesGetValueByKeyDefined!541 (toList!11471 (+!5053 lm!251 (tuple2!25561 a!525 b!98))) a0!51))))

(declare-fun isDefined!590 (Option!881) Bool)

(assert (=> b!1579048 (isDefined!590 (getValueByKey!806 (toList!11471 (+!5053 lm!251 (tuple2!25561 a!525 b!98))) a0!51))))

(declare-fun b!1579049 () Bool)

(declare-fun Unit!52155 () Unit!52147)

(assert (=> b!1579049 (= e!880848 Unit!52155)))

(declare-fun b!1579050 () Bool)

(assert (=> b!1579050 (= e!880849 (isDefined!590 (getValueByKey!806 (toList!11471 (+!5053 lm!251 (tuple2!25561 a!525 b!98))) a0!51)))))

(assert (= (and d!166139 c!146301) b!1579048))

(assert (= (and d!166139 (not c!146301)) b!1579049))

(assert (= (and d!166139 (not res!1078977)) b!1579050))

(declare-fun m!1450975 () Bool)

(assert (=> d!166139 m!1450975))

(declare-fun m!1450977 () Bool)

(assert (=> b!1579048 m!1450977))

(declare-fun m!1450979 () Bool)

(assert (=> b!1579048 m!1450979))

(assert (=> b!1579048 m!1450979))

(declare-fun m!1450981 () Bool)

(assert (=> b!1579048 m!1450981))

(assert (=> b!1579050 m!1450979))

(assert (=> b!1579050 m!1450979))

(assert (=> b!1579050 m!1450981))

(assert (=> b!1578853 d!166139))

(declare-fun d!166149 () Bool)

(assert (=> d!166149 (not (containsKey!876 (insertStrictlySorted!601 (toList!11471 lm!251) a!525 b!98) a0!51))))

(declare-fun lt!676389 () Unit!52147)

(declare-fun choose!2093 (List!36928 (_ BitVec 64) B!2570 (_ BitVec 64)) Unit!52147)

(assert (=> d!166149 (= lt!676389 (choose!2093 (toList!11471 lm!251) a!525 b!98 a0!51))))

(declare-fun e!880862 () Bool)

(assert (=> d!166149 e!880862))

(declare-fun res!1078996 () Bool)

(assert (=> d!166149 (=> (not res!1078996) (not e!880862))))

(assert (=> d!166149 (= res!1078996 (isStrictlySorted!1026 (toList!11471 lm!251)))))

(assert (=> d!166149 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!1 (toList!11471 lm!251) a!525 b!98 a0!51) lt!676389)))

(declare-fun b!1579073 () Bool)

(declare-fun res!1078997 () Bool)

(assert (=> b!1579073 (=> (not res!1078997) (not e!880862))))

(assert (=> b!1579073 (= res!1078997 (not (containsKey!876 (toList!11471 lm!251) a0!51)))))

(declare-fun b!1579074 () Bool)

(assert (=> b!1579074 (= e!880862 (not (= a0!51 a!525)))))

(assert (= (and d!166149 res!1078996) b!1579073))

(assert (= (and b!1579073 res!1078997) b!1579074))

(assert (=> d!166149 m!1450861))

(assert (=> d!166149 m!1450861))

(assert (=> d!166149 m!1450863))

(declare-fun m!1451023 () Bool)

(assert (=> d!166149 m!1451023))

(assert (=> d!166149 m!1450857))

(assert (=> b!1579073 m!1450869))

(assert (=> b!1578853 d!166149))

(declare-fun d!166159 () Bool)

(declare-fun e!880864 () Bool)

(assert (=> d!166159 e!880864))

(declare-fun res!1078998 () Bool)

(assert (=> d!166159 (=> res!1078998 e!880864)))

(declare-fun lt!676393 () Bool)

(assert (=> d!166159 (= res!1078998 (not lt!676393))))

(declare-fun lt!676392 () Bool)

(assert (=> d!166159 (= lt!676393 lt!676392)))

(declare-fun lt!676390 () Unit!52147)

(declare-fun e!880863 () Unit!52147)

(assert (=> d!166159 (= lt!676390 e!880863)))

(declare-fun c!146304 () Bool)

(assert (=> d!166159 (= c!146304 lt!676392)))

(assert (=> d!166159 (= lt!676392 (containsKey!876 (toList!11471 lm!251) a0!51))))

(assert (=> d!166159 (= (contains!10456 lm!251 a0!51) lt!676393)))

(declare-fun b!1579075 () Bool)

(declare-fun lt!676391 () Unit!52147)

(assert (=> b!1579075 (= e!880863 lt!676391)))

(assert (=> b!1579075 (= lt!676391 (lemmaContainsKeyImpliesGetValueByKeyDefined!541 (toList!11471 lm!251) a0!51))))

(assert (=> b!1579075 (isDefined!590 (getValueByKey!806 (toList!11471 lm!251) a0!51))))

(declare-fun b!1579076 () Bool)

(declare-fun Unit!52156 () Unit!52147)

(assert (=> b!1579076 (= e!880863 Unit!52156)))

(declare-fun b!1579077 () Bool)

(assert (=> b!1579077 (= e!880864 (isDefined!590 (getValueByKey!806 (toList!11471 lm!251) a0!51)))))

(assert (= (and d!166159 c!146304) b!1579075))

(assert (= (and d!166159 (not c!146304)) b!1579076))

(assert (= (and d!166159 (not res!1078998)) b!1579077))

(assert (=> d!166159 m!1450869))

(declare-fun m!1451025 () Bool)

(assert (=> b!1579075 m!1451025))

(declare-fun m!1451027 () Bool)

(assert (=> b!1579075 m!1451027))

(assert (=> b!1579075 m!1451027))

(declare-fun m!1451029 () Bool)

(assert (=> b!1579075 m!1451029))

(assert (=> b!1579077 m!1451027))

(assert (=> b!1579077 m!1451027))

(assert (=> b!1579077 m!1451029))

(assert (=> start!136918 d!166159))

(declare-fun d!166161 () Bool)

(assert (=> d!166161 (= (inv!58928 lm!251) (isStrictlySorted!1026 (toList!11471 lm!251)))))

(declare-fun bs!45717 () Bool)

(assert (= bs!45717 d!166161))

(assert (=> bs!45717 m!1450857))

(assert (=> start!136918 d!166161))

(declare-fun d!166163 () Bool)

(declare-fun res!1079015 () Bool)

(declare-fun e!880881 () Bool)

(assert (=> d!166163 (=> res!1079015 e!880881)))

(assert (=> d!166163 (= res!1079015 (or (is-Nil!36925 (toList!11471 lm!251)) (is-Nil!36925 (t!51849 (toList!11471 lm!251)))))))

(assert (=> d!166163 (= (isStrictlySorted!1026 (toList!11471 lm!251)) e!880881)))

(declare-fun b!1579104 () Bool)

(declare-fun e!880882 () Bool)

(assert (=> b!1579104 (= e!880881 e!880882)))

(declare-fun res!1079016 () Bool)

(assert (=> b!1579104 (=> (not res!1079016) (not e!880882))))

(assert (=> b!1579104 (= res!1079016 (bvslt (_1!12790 (h!38468 (toList!11471 lm!251))) (_1!12790 (h!38468 (t!51849 (toList!11471 lm!251))))))))

(declare-fun b!1579105 () Bool)

(assert (=> b!1579105 (= e!880882 (isStrictlySorted!1026 (t!51849 (toList!11471 lm!251))))))

(assert (= (and d!166163 (not res!1079015)) b!1579104))

(assert (= (and b!1579104 res!1079016) b!1579105))

(declare-fun m!1451035 () Bool)

(assert (=> b!1579105 m!1451035))

(assert (=> b!1578852 d!166163))

(declare-fun d!166165 () Bool)

(declare-fun res!1079017 () Bool)

(declare-fun e!880883 () Bool)

(assert (=> d!166165 (=> res!1079017 e!880883)))

(assert (=> d!166165 (= res!1079017 (and (is-Cons!36924 (toList!11471 lm!251)) (= (_1!12790 (h!38468 (toList!11471 lm!251))) a0!51)))))

(assert (=> d!166165 (= (containsKey!876 (toList!11471 lm!251) a0!51) e!880883)))

(declare-fun b!1579106 () Bool)

(declare-fun e!880884 () Bool)

(assert (=> b!1579106 (= e!880883 e!880884)))

(declare-fun res!1079018 () Bool)

(assert (=> b!1579106 (=> (not res!1079018) (not e!880884))))

(assert (=> b!1579106 (= res!1079018 (and (or (not (is-Cons!36924 (toList!11471 lm!251))) (bvsle (_1!12790 (h!38468 (toList!11471 lm!251))) a0!51)) (is-Cons!36924 (toList!11471 lm!251)) (bvslt (_1!12790 (h!38468 (toList!11471 lm!251))) a0!51)))))

(declare-fun b!1579107 () Bool)

(assert (=> b!1579107 (= e!880884 (containsKey!876 (t!51849 (toList!11471 lm!251)) a0!51))))

(assert (= (and d!166165 (not res!1079017)) b!1579106))

(assert (= (and b!1579106 res!1079018) b!1579107))

(declare-fun m!1451037 () Bool)

(assert (=> b!1579107 m!1451037))

(assert (=> b!1578856 d!166165))

(declare-fun b!1579112 () Bool)

(declare-fun e!880887 () Bool)

(declare-fun tp!114295 () Bool)

(assert (=> b!1579112 (= e!880887 (and tp_is_empty!39115 tp!114295))))

(assert (=> b!1578855 (= tp!114280 e!880887)))

(assert (= (and b!1578855 (is-Cons!36924 (toList!11471 lm!251))) b!1579112))

(push 1)

