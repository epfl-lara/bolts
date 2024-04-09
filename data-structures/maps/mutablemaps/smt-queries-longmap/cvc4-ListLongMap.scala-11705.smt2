; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136922 () Bool)

(assert start!136922)

(declare-fun b!1578888 () Bool)

(declare-fun e!880749 () Bool)

(declare-fun tp!114286 () Bool)

(assert (=> b!1578888 (= e!880749 tp!114286)))

(declare-fun b!1578889 () Bool)

(declare-fun res!1078906 () Bool)

(declare-fun e!880748 () Bool)

(assert (=> b!1578889 (=> (not res!1078906) (not e!880748))))

(declare-datatypes ((B!2574 0))(
  ( (B!2575 (val!19649 Int)) )
))
(declare-datatypes ((tuple2!25564 0))(
  ( (tuple2!25565 (_1!12792 (_ BitVec 64)) (_2!12792 B!2574)) )
))
(declare-datatypes ((List!36930 0))(
  ( (Nil!36927) (Cons!36926 (h!38470 tuple2!25564) (t!51851 List!36930)) )
))
(declare-datatypes ((ListLongMap!22915 0))(
  ( (ListLongMap!22916 (toList!11473 List!36930)) )
))
(declare-fun lm!251 () ListLongMap!22915)

(declare-fun isStrictlySorted!1028 (List!36930) Bool)

(assert (=> b!1578889 (= res!1078906 (isStrictlySorted!1028 (toList!11473 lm!251)))))

(declare-fun a!525 () (_ BitVec 64))

(declare-fun b!1578890 () Bool)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun b!98 () B!2574)

(declare-fun contains!10458 (ListLongMap!22915 (_ BitVec 64)) Bool)

(declare-fun +!5055 (ListLongMap!22915 tuple2!25564) ListLongMap!22915)

(assert (=> b!1578890 (= e!880748 (not (not (contains!10458 (+!5055 lm!251 (tuple2!25565 a!525 b!98)) a0!51))))))

(declare-fun containsKey!878 (List!36930 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!603 (List!36930 (_ BitVec 64) B!2574) List!36930)

(assert (=> b!1578890 (not (containsKey!878 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98) a0!51))))

(declare-datatypes ((Unit!52151 0))(
  ( (Unit!52152) )
))
(declare-fun lt!676297 () Unit!52151)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!3 (List!36930 (_ BitVec 64) B!2574 (_ BitVec 64)) Unit!52151)

(assert (=> b!1578890 (= lt!676297 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!3 (toList!11473 lm!251) a!525 b!98 a0!51))))

(declare-fun res!1078907 () Bool)

(assert (=> start!136922 (=> (not res!1078907) (not e!880748))))

(assert (=> start!136922 (= res!1078907 (not (contains!10458 lm!251 a0!51)))))

(assert (=> start!136922 e!880748))

(declare-fun inv!58930 (ListLongMap!22915) Bool)

(assert (=> start!136922 (and (inv!58930 lm!251) e!880749)))

(assert (=> start!136922 true))

(declare-fun tp_is_empty!39119 () Bool)

(assert (=> start!136922 tp_is_empty!39119))

(declare-fun b!1578891 () Bool)

(declare-fun res!1078910 () Bool)

(assert (=> b!1578891 (=> (not res!1078910) (not e!880748))))

(assert (=> b!1578891 (= res!1078910 (not (containsKey!878 (toList!11473 lm!251) a0!51)))))

(declare-fun b!1578892 () Bool)

(declare-fun res!1078908 () Bool)

(assert (=> b!1578892 (=> (not res!1078908) (not e!880748))))

(assert (=> b!1578892 (= res!1078908 (not (= a0!51 a!525)))))

(declare-fun b!1578893 () Bool)

(declare-fun res!1078909 () Bool)

(assert (=> b!1578893 (=> (not res!1078909) (not e!880748))))

(assert (=> b!1578893 (= res!1078909 (not (= a!525 a0!51)))))

(assert (= (and start!136922 res!1078907) b!1578893))

(assert (= (and b!1578893 res!1078909) b!1578889))

(assert (= (and b!1578889 res!1078906) b!1578891))

(assert (= (and b!1578891 res!1078910) b!1578892))

(assert (= (and b!1578892 res!1078908) b!1578890))

(assert (= start!136922 b!1578888))

(declare-fun m!1450889 () Bool)

(assert (=> b!1578889 m!1450889))

(declare-fun m!1450891 () Bool)

(assert (=> b!1578890 m!1450891))

(declare-fun m!1450893 () Bool)

(assert (=> b!1578890 m!1450893))

(declare-fun m!1450895 () Bool)

(assert (=> b!1578890 m!1450895))

(assert (=> b!1578890 m!1450891))

(declare-fun m!1450897 () Bool)

(assert (=> b!1578890 m!1450897))

(declare-fun m!1450899 () Bool)

(assert (=> b!1578890 m!1450899))

(assert (=> b!1578890 m!1450893))

(declare-fun m!1450901 () Bool)

(assert (=> start!136922 m!1450901))

(declare-fun m!1450903 () Bool)

(assert (=> start!136922 m!1450903))

(declare-fun m!1450905 () Bool)

(assert (=> b!1578891 m!1450905))

(push 1)

(assert (not b!1578889))

(assert (not b!1578891))

(assert (not start!136922))

(assert (not b!1578890))

(assert (not b!1578888))

(assert tp_is_empty!39119)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166115 () Bool)

(declare-fun res!1078921 () Bool)

(declare-fun e!880760 () Bool)

(assert (=> d!166115 (=> res!1078921 e!880760)))

(assert (=> d!166115 (= res!1078921 (or (is-Nil!36927 (toList!11473 lm!251)) (is-Nil!36927 (t!51851 (toList!11473 lm!251)))))))

(assert (=> d!166115 (= (isStrictlySorted!1028 (toList!11473 lm!251)) e!880760)))

(declare-fun b!1578904 () Bool)

(declare-fun e!880761 () Bool)

(assert (=> b!1578904 (= e!880760 e!880761)))

(declare-fun res!1078922 () Bool)

(assert (=> b!1578904 (=> (not res!1078922) (not e!880761))))

(assert (=> b!1578904 (= res!1078922 (bvslt (_1!12792 (h!38470 (toList!11473 lm!251))) (_1!12792 (h!38470 (t!51851 (toList!11473 lm!251))))))))

(declare-fun b!1578905 () Bool)

(assert (=> b!1578905 (= e!880761 (isStrictlySorted!1028 (t!51851 (toList!11473 lm!251))))))

(assert (= (and d!166115 (not res!1078921)) b!1578904))

(assert (= (and b!1578904 res!1078922) b!1578905))

(declare-fun m!1450909 () Bool)

(assert (=> b!1578905 m!1450909))

(assert (=> b!1578889 d!166115))

(declare-fun d!166121 () Bool)

(declare-fun e!880778 () Bool)

(assert (=> d!166121 e!880778))

(declare-fun res!1078928 () Bool)

(assert (=> d!166121 (=> res!1078928 e!880778)))

(declare-fun lt!676322 () Bool)

(assert (=> d!166121 (= res!1078928 (not lt!676322))))

(declare-fun lt!676320 () Bool)

(assert (=> d!166121 (= lt!676322 lt!676320)))

(declare-fun lt!676321 () Unit!52151)

(declare-fun e!880779 () Unit!52151)

(assert (=> d!166121 (= lt!676321 e!880779)))

(declare-fun c!146268 () Bool)

(assert (=> d!166121 (= c!146268 lt!676320)))

(assert (=> d!166121 (= lt!676320 (containsKey!878 (toList!11473 lm!251) a0!51))))

(assert (=> d!166121 (= (contains!10458 lm!251 a0!51) lt!676322)))

(declare-fun b!1578933 () Bool)

(declare-fun lt!676323 () Unit!52151)

(assert (=> b!1578933 (= e!880779 lt!676323)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!540 (List!36930 (_ BitVec 64)) Unit!52151)

(assert (=> b!1578933 (= lt!676323 (lemmaContainsKeyImpliesGetValueByKeyDefined!540 (toList!11473 lm!251) a0!51))))

(declare-datatypes ((Option!880 0))(
  ( (Some!879 (v!22364 B!2574)) (None!878) )
))
(declare-fun isDefined!589 (Option!880) Bool)

(declare-fun getValueByKey!805 (List!36930 (_ BitVec 64)) Option!880)

(assert (=> b!1578933 (isDefined!589 (getValueByKey!805 (toList!11473 lm!251) a0!51))))

(declare-fun b!1578934 () Bool)

(declare-fun Unit!52154 () Unit!52151)

(assert (=> b!1578934 (= e!880779 Unit!52154)))

(declare-fun b!1578935 () Bool)

(assert (=> b!1578935 (= e!880778 (isDefined!589 (getValueByKey!805 (toList!11473 lm!251) a0!51)))))

(assert (= (and d!166121 c!146268) b!1578933))

(assert (= (and d!166121 (not c!146268)) b!1578934))

(assert (= (and d!166121 (not res!1078928)) b!1578935))

(assert (=> d!166121 m!1450905))

(declare-fun m!1450917 () Bool)

(assert (=> b!1578933 m!1450917))

(declare-fun m!1450919 () Bool)

(assert (=> b!1578933 m!1450919))

(assert (=> b!1578933 m!1450919))

(declare-fun m!1450921 () Bool)

(assert (=> b!1578933 m!1450921))

(assert (=> b!1578935 m!1450919))

(assert (=> b!1578935 m!1450919))

(assert (=> b!1578935 m!1450921))

(assert (=> start!136922 d!166121))

(declare-fun d!166125 () Bool)

(assert (=> d!166125 (= (inv!58930 lm!251) (isStrictlySorted!1028 (toList!11473 lm!251)))))

(declare-fun bs!45716 () Bool)

(assert (= bs!45716 d!166125))

(assert (=> bs!45716 m!1450889))

(assert (=> start!136922 d!166125))

(declare-fun d!166129 () Bool)

(declare-fun res!1078943 () Bool)

(declare-fun e!880794 () Bool)

(assert (=> d!166129 (=> res!1078943 e!880794)))

(assert (=> d!166129 (= res!1078943 (and (is-Cons!36926 (toList!11473 lm!251)) (= (_1!12792 (h!38470 (toList!11473 lm!251))) a0!51)))))

(assert (=> d!166129 (= (containsKey!878 (toList!11473 lm!251) a0!51) e!880794)))

(declare-fun b!1578954 () Bool)

(declare-fun e!880795 () Bool)

(assert (=> b!1578954 (= e!880794 e!880795)))

(declare-fun res!1078944 () Bool)

(assert (=> b!1578954 (=> (not res!1078944) (not e!880795))))

(assert (=> b!1578954 (= res!1078944 (and (or (not (is-Cons!36926 (toList!11473 lm!251))) (bvsle (_1!12792 (h!38470 (toList!11473 lm!251))) a0!51)) (is-Cons!36926 (toList!11473 lm!251)) (bvslt (_1!12792 (h!38470 (toList!11473 lm!251))) a0!51)))))

(declare-fun b!1578955 () Bool)

(assert (=> b!1578955 (= e!880795 (containsKey!878 (t!51851 (toList!11473 lm!251)) a0!51))))

(assert (= (and d!166129 (not res!1078943)) b!1578954))

(assert (= (and b!1578954 res!1078944) b!1578955))

(declare-fun m!1450925 () Bool)

(assert (=> b!1578955 m!1450925))

(assert (=> b!1578891 d!166129))

(declare-fun e!880837 () Bool)

(declare-fun b!1579028 () Bool)

(declare-fun lt!676342 () List!36930)

(declare-fun contains!10460 (List!36930 tuple2!25564) Bool)

(assert (=> b!1579028 (= e!880837 (contains!10460 lt!676342 (tuple2!25565 a!525 b!98)))))

(declare-fun b!1579029 () Bool)

(declare-fun e!880836 () List!36930)

(declare-fun e!880838 () List!36930)

(assert (=> b!1579029 (= e!880836 e!880838)))

(declare-fun c!146298 () Bool)

(assert (=> b!1579029 (= c!146298 (and (is-Cons!36926 (toList!11473 lm!251)) (= (_1!12792 (h!38470 (toList!11473 lm!251))) a!525)))))

(declare-fun d!166133 () Bool)

(assert (=> d!166133 e!880837))

(declare-fun res!1078970 () Bool)

(assert (=> d!166133 (=> (not res!1078970) (not e!880837))))

(assert (=> d!166133 (= res!1078970 (isStrictlySorted!1028 lt!676342))))

(assert (=> d!166133 (= lt!676342 e!880836)))

(declare-fun c!146295 () Bool)

(assert (=> d!166133 (= c!146295 (and (is-Cons!36926 (toList!11473 lm!251)) (bvslt (_1!12792 (h!38470 (toList!11473 lm!251))) a!525)))))

(assert (=> d!166133 (isStrictlySorted!1028 (toList!11473 lm!251))))

(assert (=> d!166133 (= (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98) lt!676342)))

(declare-fun b!1579030 () Bool)

(declare-fun call!72394 () List!36930)

(assert (=> b!1579030 (= e!880838 call!72394)))

(declare-fun b!1579031 () Bool)

(declare-fun call!72395 () List!36930)

(assert (=> b!1579031 (= e!880836 call!72395)))

(declare-fun e!880839 () List!36930)

(declare-fun bm!72390 () Bool)

(declare-fun $colon$colon!1008 (List!36930 tuple2!25564) List!36930)

(assert (=> bm!72390 (= call!72395 ($colon$colon!1008 e!880839 (ite c!146295 (h!38470 (toList!11473 lm!251)) (tuple2!25565 a!525 b!98))))))

(declare-fun c!146297 () Bool)

(assert (=> bm!72390 (= c!146297 c!146295)))

(declare-fun b!1579032 () Bool)

(declare-fun res!1078969 () Bool)

(assert (=> b!1579032 (=> (not res!1078969) (not e!880837))))

(assert (=> b!1579032 (= res!1078969 (containsKey!878 lt!676342 a!525))))

(declare-fun b!1579033 () Bool)

(declare-fun e!880835 () List!36930)

(declare-fun call!72393 () List!36930)

(assert (=> b!1579033 (= e!880835 call!72393)))

(declare-fun bm!72391 () Bool)

(assert (=> bm!72391 (= call!72393 call!72394)))

(declare-fun b!1579034 () Bool)

(declare-fun c!146296 () Bool)

(assert (=> b!1579034 (= e!880839 (ite c!146298 (t!51851 (toList!11473 lm!251)) (ite c!146296 (Cons!36926 (h!38470 (toList!11473 lm!251)) (t!51851 (toList!11473 lm!251))) Nil!36927)))))

(declare-fun b!1579035 () Bool)

(assert (=> b!1579035 (= e!880839 (insertStrictlySorted!603 (t!51851 (toList!11473 lm!251)) a!525 b!98))))

(declare-fun bm!72392 () Bool)

(assert (=> bm!72392 (= call!72394 call!72395)))

(declare-fun b!1579036 () Bool)

(assert (=> b!1579036 (= c!146296 (and (is-Cons!36926 (toList!11473 lm!251)) (bvsgt (_1!12792 (h!38470 (toList!11473 lm!251))) a!525)))))

(assert (=> b!1579036 (= e!880838 e!880835)))

(declare-fun b!1579037 () Bool)

(assert (=> b!1579037 (= e!880835 call!72393)))

(assert (= (and d!166133 c!146295) b!1579031))

(assert (= (and d!166133 (not c!146295)) b!1579029))

(assert (= (and b!1579029 c!146298) b!1579030))

(assert (= (and b!1579029 (not c!146298)) b!1579036))

(assert (= (and b!1579036 c!146296) b!1579037))

(assert (= (and b!1579036 (not c!146296)) b!1579033))

(assert (= (or b!1579037 b!1579033) bm!72391))

(assert (= (or b!1579030 bm!72391) bm!72392))

(assert (= (or b!1579031 bm!72392) bm!72390))

(assert (= (and bm!72390 c!146297) b!1579035))

(assert (= (and bm!72390 (not c!146297)) b!1579034))

(assert (= (and d!166133 res!1078970) b!1579032))

(assert (= (and b!1579032 res!1078969) b!1579028))

(declare-fun m!1450961 () Bool)

(assert (=> bm!72390 m!1450961))

(declare-fun m!1450963 () Bool)

(assert (=> b!1579032 m!1450963))

(declare-fun m!1450965 () Bool)

(assert (=> b!1579028 m!1450965))

(declare-fun m!1450967 () Bool)

(assert (=> b!1579035 m!1450967))

(declare-fun m!1450969 () Bool)

(assert (=> d!166133 m!1450969))

(assert (=> d!166133 m!1450889))

(assert (=> b!1578890 d!166133))

(declare-fun d!166143 () Bool)

(declare-fun res!1078973 () Bool)

(declare-fun e!880842 () Bool)

(assert (=> d!166143 (=> res!1078973 e!880842)))

(assert (=> d!166143 (= res!1078973 (and (is-Cons!36926 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98)) (= (_1!12792 (h!38470 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98))) a0!51)))))

(assert (=> d!166143 (= (containsKey!878 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98) a0!51) e!880842)))

(declare-fun b!1579040 () Bool)

(declare-fun e!880843 () Bool)

(assert (=> b!1579040 (= e!880842 e!880843)))

(declare-fun res!1078974 () Bool)

(assert (=> b!1579040 (=> (not res!1078974) (not e!880843))))

(assert (=> b!1579040 (= res!1078974 (and (or (not (is-Cons!36926 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98))) (bvsle (_1!12792 (h!38470 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98))) a0!51)) (is-Cons!36926 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98)) (bvslt (_1!12792 (h!38470 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98))) a0!51)))))

(declare-fun b!1579041 () Bool)

(assert (=> b!1579041 (= e!880843 (containsKey!878 (t!51851 (insertStrictlySorted!603 (toList!11473 lm!251) a!525 b!98)) a0!51))))

(assert (= (and d!166143 (not res!1078973)) b!1579040))

(assert (= (and b!1579040 res!1078974) b!1579041))

(declare-fun m!1450973 () Bool)

(assert (=> b!1579041 m!1450973))

(assert (=> b!1578890 d!166143))

(declare-fun d!166147 () Bool)

(declare-fun e!880855 () Bool)

(assert (=> d!166147 e!880855))

(declare-fun res!1078989 () Bool)

(assert (=> d!166147 (=> (not res!1078989) (not e!880855))))

(declare-fun lt!676377 () ListLongMap!22915)

(assert (=> d!166147 (= res!1078989 (contains!10458 lt!676377 (_1!12792 (tuple2!25565 a!525 b!98))))))

(declare-fun lt!676378 () List!36930)

(assert (=> d!166147 (= lt!676377 (ListLongMap!22916 lt!676378))))

(declare-fun lt!676375 () Unit!52151)

(declare-fun lt!676376 () Unit!52151)

(assert (=> d!166147 (= lt!676375 lt!676376)))

(assert (=> d!166147 (= (getValueByKey!805 lt!676378 (_1!12792 (tuple2!25565 a!525 b!98))) (Some!879 (_2!12792 (tuple2!25565 a!525 b!98))))))

(declare-fun lemmaContainsTupThenGetReturnValue!389 (List!36930 (_ BitVec 64) B!2574) Unit!52151)

(assert (=> d!166147 (= lt!676376 (lemmaContainsTupThenGetReturnValue!389 lt!676378 (_1!12792 (tuple2!25565 a!525 b!98)) (_2!12792 (tuple2!25565 a!525 b!98))))))

(assert (=> d!166147 (= lt!676378 (insertStrictlySorted!603 (toList!11473 lm!251) (_1!12792 (tuple2!25565 a!525 b!98)) (_2!12792 (tuple2!25565 a!525 b!98))))))

(assert (=> d!166147 (= (+!5055 lm!251 (tuple2!25565 a!525 b!98)) lt!676377)))

(declare-fun b!1579061 () Bool)

(declare-fun res!1078988 () Bool)

(assert (=> b!1579061 (=> (not res!1078988) (not e!880855))))

(assert (=> b!1579061 (= res!1078988 (= (getValueByKey!805 (toList!11473 lt!676377) (_1!12792 (tuple2!25565 a!525 b!98))) (Some!879 (_2!12792 (tuple2!25565 a!525 b!98)))))))

(declare-fun b!1579062 () Bool)

(assert (=> b!1579062 (= e!880855 (contains!10460 (toList!11473 lt!676377) (tuple2!25565 a!525 b!98)))))

(assert (= (and d!166147 res!1078989) b!1579061))

(assert (= (and b!1579061 res!1078988) b!1579062))

(declare-fun m!1450991 () Bool)

(assert (=> d!166147 m!1450991))

(declare-fun m!1450995 () Bool)

(assert (=> d!166147 m!1450995))

(declare-fun m!1450999 () Bool)

(assert (=> d!166147 m!1450999))

(declare-fun m!1451001 () Bool)

(assert (=> d!166147 m!1451001))

(declare-fun m!1451003 () Bool)

(assert (=> b!1579061 m!1451003))

(declare-fun m!1451005 () Bool)

(assert (=> b!1579062 m!1451005))

(assert (=> b!1578890 d!166147))

(declare-fun d!166153 () Bool)

(declare-fun e!880858 () Bool)

(assert (=> d!166153 e!880858))

(declare-fun res!1078991 () Bool)

(assert (=> d!166153 (=> res!1078991 e!880858)))

(declare-fun lt!676385 () Bool)

(assert (=> d!166153 (= res!1078991 (not lt!676385))))

