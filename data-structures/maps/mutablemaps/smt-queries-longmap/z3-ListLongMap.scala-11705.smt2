; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136920 () Bool)

(assert start!136920)

(declare-fun b!1578870 () Bool)

(declare-fun e!880742 () Bool)

(declare-fun tp!114283 () Bool)

(assert (=> b!1578870 (= e!880742 tp!114283)))

(declare-fun b!1578871 () Bool)

(declare-fun res!1078892 () Bool)

(declare-fun e!880743 () Bool)

(assert (=> b!1578871 (=> (not res!1078892) (not e!880743))))

(declare-datatypes ((B!2572 0))(
  ( (B!2573 (val!19648 Int)) )
))
(declare-datatypes ((tuple2!25562 0))(
  ( (tuple2!25563 (_1!12791 (_ BitVec 64)) (_2!12791 B!2572)) )
))
(declare-datatypes ((List!36929 0))(
  ( (Nil!36926) (Cons!36925 (h!38469 tuple2!25562) (t!51850 List!36929)) )
))
(declare-datatypes ((ListLongMap!22913 0))(
  ( (ListLongMap!22914 (toList!11472 List!36929)) )
))
(declare-fun lm!251 () ListLongMap!22913)

(declare-fun isStrictlySorted!1027 (List!36929) Bool)

(assert (=> b!1578871 (= res!1078892 (isStrictlySorted!1027 (toList!11472 lm!251)))))

(declare-fun b!1578872 () Bool)

(declare-fun res!1078891 () Bool)

(assert (=> b!1578872 (=> (not res!1078891) (not e!880743))))

(declare-fun a!525 () (_ BitVec 64))

(declare-fun a0!51 () (_ BitVec 64))

(assert (=> b!1578872 (= res!1078891 (not (= a!525 a0!51)))))

(declare-fun b!1578873 () Bool)

(declare-fun b!98 () B!2572)

(declare-fun contains!10457 (ListLongMap!22913 (_ BitVec 64)) Bool)

(declare-fun +!5054 (ListLongMap!22913 tuple2!25562) ListLongMap!22913)

(assert (=> b!1578873 (= e!880743 (not (not (contains!10457 (+!5054 lm!251 (tuple2!25563 a!525 b!98)) a0!51))))))

(declare-fun containsKey!877 (List!36929 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!602 (List!36929 (_ BitVec 64) B!2572) List!36929)

(assert (=> b!1578873 (not (containsKey!877 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98) a0!51))))

(declare-datatypes ((Unit!52149 0))(
  ( (Unit!52150) )
))
(declare-fun lt!676294 () Unit!52149)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!2 (List!36929 (_ BitVec 64) B!2572 (_ BitVec 64)) Unit!52149)

(assert (=> b!1578873 (= lt!676294 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!2 (toList!11472 lm!251) a!525 b!98 a0!51))))

(declare-fun res!1078894 () Bool)

(assert (=> start!136920 (=> (not res!1078894) (not e!880743))))

(assert (=> start!136920 (= res!1078894 (not (contains!10457 lm!251 a0!51)))))

(assert (=> start!136920 e!880743))

(declare-fun inv!58929 (ListLongMap!22913) Bool)

(assert (=> start!136920 (and (inv!58929 lm!251) e!880742)))

(assert (=> start!136920 true))

(declare-fun tp_is_empty!39117 () Bool)

(assert (=> start!136920 tp_is_empty!39117))

(declare-fun b!1578874 () Bool)

(declare-fun res!1078895 () Bool)

(assert (=> b!1578874 (=> (not res!1078895) (not e!880743))))

(assert (=> b!1578874 (= res!1078895 (not (containsKey!877 (toList!11472 lm!251) a0!51)))))

(declare-fun b!1578875 () Bool)

(declare-fun res!1078893 () Bool)

(assert (=> b!1578875 (=> (not res!1078893) (not e!880743))))

(assert (=> b!1578875 (= res!1078893 (not (= a0!51 a!525)))))

(assert (= (and start!136920 res!1078894) b!1578872))

(assert (= (and b!1578872 res!1078891) b!1578871))

(assert (= (and b!1578871 res!1078892) b!1578874))

(assert (= (and b!1578874 res!1078895) b!1578875))

(assert (= (and b!1578875 res!1078893) b!1578873))

(assert (= start!136920 b!1578870))

(declare-fun m!1450871 () Bool)

(assert (=> b!1578871 m!1450871))

(declare-fun m!1450873 () Bool)

(assert (=> b!1578873 m!1450873))

(declare-fun m!1450875 () Bool)

(assert (=> b!1578873 m!1450875))

(declare-fun m!1450877 () Bool)

(assert (=> b!1578873 m!1450877))

(assert (=> b!1578873 m!1450873))

(declare-fun m!1450879 () Bool)

(assert (=> b!1578873 m!1450879))

(declare-fun m!1450881 () Bool)

(assert (=> b!1578873 m!1450881))

(assert (=> b!1578873 m!1450875))

(declare-fun m!1450883 () Bool)

(assert (=> start!136920 m!1450883))

(declare-fun m!1450885 () Bool)

(assert (=> start!136920 m!1450885))

(declare-fun m!1450887 () Bool)

(assert (=> b!1578874 m!1450887))

(check-sat (not b!1578874) (not b!1578871) (not b!1578873) tp_is_empty!39117 (not b!1578870) (not start!136920))
(check-sat)
(get-model)

(declare-fun d!166113 () Bool)

(declare-fun res!1078919 () Bool)

(declare-fun e!880758 () Bool)

(assert (=> d!166113 (=> res!1078919 e!880758)))

(get-info :version)

(assert (=> d!166113 (= res!1078919 (or ((_ is Nil!36926) (toList!11472 lm!251)) ((_ is Nil!36926) (t!51850 (toList!11472 lm!251)))))))

(assert (=> d!166113 (= (isStrictlySorted!1027 (toList!11472 lm!251)) e!880758)))

(declare-fun b!1578902 () Bool)

(declare-fun e!880759 () Bool)

(assert (=> b!1578902 (= e!880758 e!880759)))

(declare-fun res!1078920 () Bool)

(assert (=> b!1578902 (=> (not res!1078920) (not e!880759))))

(assert (=> b!1578902 (= res!1078920 (bvslt (_1!12791 (h!38469 (toList!11472 lm!251))) (_1!12791 (h!38469 (t!51850 (toList!11472 lm!251))))))))

(declare-fun b!1578903 () Bool)

(assert (=> b!1578903 (= e!880759 (isStrictlySorted!1027 (t!51850 (toList!11472 lm!251))))))

(assert (= (and d!166113 (not res!1078919)) b!1578902))

(assert (= (and b!1578902 res!1078920) b!1578903))

(declare-fun m!1450907 () Bool)

(assert (=> b!1578903 m!1450907))

(assert (=> b!1578871 d!166113))

(declare-fun d!166119 () Bool)

(declare-fun e!880776 () Bool)

(assert (=> d!166119 e!880776))

(declare-fun res!1078927 () Bool)

(assert (=> d!166119 (=> res!1078927 e!880776)))

(declare-fun lt!676319 () Bool)

(assert (=> d!166119 (= res!1078927 (not lt!676319))))

(declare-fun lt!676316 () Bool)

(assert (=> d!166119 (= lt!676319 lt!676316)))

(declare-fun lt!676318 () Unit!52149)

(declare-fun e!880777 () Unit!52149)

(assert (=> d!166119 (= lt!676318 e!880777)))

(declare-fun c!146267 () Bool)

(assert (=> d!166119 (= c!146267 lt!676316)))

(assert (=> d!166119 (= lt!676316 (containsKey!877 (toList!11472 lm!251) a0!51))))

(assert (=> d!166119 (= (contains!10457 lm!251 a0!51) lt!676319)))

(declare-fun b!1578930 () Bool)

(declare-fun lt!676317 () Unit!52149)

(assert (=> b!1578930 (= e!880777 lt!676317)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!539 (List!36929 (_ BitVec 64)) Unit!52149)

(assert (=> b!1578930 (= lt!676317 (lemmaContainsKeyImpliesGetValueByKeyDefined!539 (toList!11472 lm!251) a0!51))))

(declare-datatypes ((Option!879 0))(
  ( (Some!878 (v!22363 B!2572)) (None!877) )
))
(declare-fun isDefined!588 (Option!879) Bool)

(declare-fun getValueByKey!804 (List!36929 (_ BitVec 64)) Option!879)

(assert (=> b!1578930 (isDefined!588 (getValueByKey!804 (toList!11472 lm!251) a0!51))))

(declare-fun b!1578931 () Bool)

(declare-fun Unit!52153 () Unit!52149)

(assert (=> b!1578931 (= e!880777 Unit!52153)))

(declare-fun b!1578932 () Bool)

(assert (=> b!1578932 (= e!880776 (isDefined!588 (getValueByKey!804 (toList!11472 lm!251) a0!51)))))

(assert (= (and d!166119 c!146267) b!1578930))

(assert (= (and d!166119 (not c!146267)) b!1578931))

(assert (= (and d!166119 (not res!1078927)) b!1578932))

(assert (=> d!166119 m!1450887))

(declare-fun m!1450911 () Bool)

(assert (=> b!1578930 m!1450911))

(declare-fun m!1450913 () Bool)

(assert (=> b!1578930 m!1450913))

(assert (=> b!1578930 m!1450913))

(declare-fun m!1450915 () Bool)

(assert (=> b!1578930 m!1450915))

(assert (=> b!1578932 m!1450913))

(assert (=> b!1578932 m!1450913))

(assert (=> b!1578932 m!1450915))

(assert (=> start!136920 d!166119))

(declare-fun d!166123 () Bool)

(assert (=> d!166123 (= (inv!58929 lm!251) (isStrictlySorted!1027 (toList!11472 lm!251)))))

(declare-fun bs!45715 () Bool)

(assert (= bs!45715 d!166123))

(assert (=> bs!45715 m!1450871))

(assert (=> start!136920 d!166123))

(declare-fun d!166127 () Bool)

(declare-fun res!1078941 () Bool)

(declare-fun e!880792 () Bool)

(assert (=> d!166127 (=> res!1078941 e!880792)))

(assert (=> d!166127 (= res!1078941 (and ((_ is Cons!36925) (toList!11472 lm!251)) (= (_1!12791 (h!38469 (toList!11472 lm!251))) a0!51)))))

(assert (=> d!166127 (= (containsKey!877 (toList!11472 lm!251) a0!51) e!880792)))

(declare-fun b!1578952 () Bool)

(declare-fun e!880793 () Bool)

(assert (=> b!1578952 (= e!880792 e!880793)))

(declare-fun res!1078942 () Bool)

(assert (=> b!1578952 (=> (not res!1078942) (not e!880793))))

(assert (=> b!1578952 (= res!1078942 (and (or (not ((_ is Cons!36925) (toList!11472 lm!251))) (bvsle (_1!12791 (h!38469 (toList!11472 lm!251))) a0!51)) ((_ is Cons!36925) (toList!11472 lm!251)) (bvslt (_1!12791 (h!38469 (toList!11472 lm!251))) a0!51)))))

(declare-fun b!1578953 () Bool)

(assert (=> b!1578953 (= e!880793 (containsKey!877 (t!51850 (toList!11472 lm!251)) a0!51))))

(assert (= (and d!166127 (not res!1078941)) b!1578952))

(assert (= (and b!1578952 res!1078942) b!1578953))

(declare-fun m!1450923 () Bool)

(assert (=> b!1578953 m!1450923))

(assert (=> b!1578874 d!166127))

(declare-fun b!1579016 () Bool)

(declare-fun e!880832 () List!36929)

(declare-fun call!72390 () List!36929)

(assert (=> b!1579016 (= e!880832 call!72390)))

(declare-fun bm!72387 () Bool)

(declare-fun call!72392 () List!36929)

(declare-fun call!72391 () List!36929)

(assert (=> bm!72387 (= call!72392 call!72391)))

(declare-fun b!1579017 () Bool)

(declare-fun res!1078965 () Bool)

(declare-fun e!880830 () Bool)

(assert (=> b!1579017 (=> (not res!1078965) (not e!880830))))

(declare-fun lt!676337 () List!36929)

(assert (=> b!1579017 (= res!1078965 (containsKey!877 lt!676337 a!525))))

(declare-fun d!166131 () Bool)

(assert (=> d!166131 e!880830))

(declare-fun res!1078966 () Bool)

(assert (=> d!166131 (=> (not res!1078966) (not e!880830))))

(assert (=> d!166131 (= res!1078966 (isStrictlySorted!1027 lt!676337))))

(declare-fun e!880833 () List!36929)

(assert (=> d!166131 (= lt!676337 e!880833)))

(declare-fun c!146292 () Bool)

(assert (=> d!166131 (= c!146292 (and ((_ is Cons!36925) (toList!11472 lm!251)) (bvslt (_1!12791 (h!38469 (toList!11472 lm!251))) a!525)))))

(assert (=> d!166131 (isStrictlySorted!1027 (toList!11472 lm!251))))

(assert (=> d!166131 (= (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98) lt!676337)))

(declare-fun b!1579018 () Bool)

(declare-fun e!880831 () List!36929)

(assert (=> b!1579018 (= e!880833 e!880831)))

(declare-fun c!146291 () Bool)

(assert (=> b!1579018 (= c!146291 (and ((_ is Cons!36925) (toList!11472 lm!251)) (= (_1!12791 (h!38469 (toList!11472 lm!251))) a!525)))))

(declare-fun e!880829 () List!36929)

(declare-fun b!1579019 () Bool)

(assert (=> b!1579019 (= e!880829 (insertStrictlySorted!602 (t!51850 (toList!11472 lm!251)) a!525 b!98))))

(declare-fun b!1579020 () Bool)

(assert (=> b!1579020 (= e!880833 call!72391)))

(declare-fun b!1579021 () Bool)

(assert (=> b!1579021 (= e!880832 call!72390)))

(declare-fun b!1579022 () Bool)

(assert (=> b!1579022 (= e!880831 call!72392)))

(declare-fun bm!72388 () Bool)

(declare-fun $colon$colon!1007 (List!36929 tuple2!25562) List!36929)

(assert (=> bm!72388 (= call!72391 ($colon$colon!1007 e!880829 (ite c!146292 (h!38469 (toList!11472 lm!251)) (tuple2!25563 a!525 b!98))))))

(declare-fun c!146293 () Bool)

(assert (=> bm!72388 (= c!146293 c!146292)))

(declare-fun b!1579023 () Bool)

(declare-fun c!146294 () Bool)

(assert (=> b!1579023 (= c!146294 (and ((_ is Cons!36925) (toList!11472 lm!251)) (bvsgt (_1!12791 (h!38469 (toList!11472 lm!251))) a!525)))))

(assert (=> b!1579023 (= e!880831 e!880832)))

(declare-fun b!1579024 () Bool)

(assert (=> b!1579024 (= e!880829 (ite c!146291 (t!51850 (toList!11472 lm!251)) (ite c!146294 (Cons!36925 (h!38469 (toList!11472 lm!251)) (t!51850 (toList!11472 lm!251))) Nil!36926)))))

(declare-fun bm!72389 () Bool)

(assert (=> bm!72389 (= call!72390 call!72392)))

(declare-fun b!1579025 () Bool)

(declare-fun contains!10461 (List!36929 tuple2!25562) Bool)

(assert (=> b!1579025 (= e!880830 (contains!10461 lt!676337 (tuple2!25563 a!525 b!98)))))

(assert (= (and d!166131 c!146292) b!1579020))

(assert (= (and d!166131 (not c!146292)) b!1579018))

(assert (= (and b!1579018 c!146291) b!1579022))

(assert (= (and b!1579018 (not c!146291)) b!1579023))

(assert (= (and b!1579023 c!146294) b!1579016))

(assert (= (and b!1579023 (not c!146294)) b!1579021))

(assert (= (or b!1579016 b!1579021) bm!72389))

(assert (= (or b!1579022 bm!72389) bm!72387))

(assert (= (or b!1579020 bm!72387) bm!72388))

(assert (= (and bm!72388 c!146293) b!1579019))

(assert (= (and bm!72388 (not c!146293)) b!1579024))

(assert (= (and d!166131 res!1078966) b!1579017))

(assert (= (and b!1579017 res!1078965) b!1579025))

(declare-fun m!1450951 () Bool)

(assert (=> b!1579019 m!1450951))

(declare-fun m!1450953 () Bool)

(assert (=> d!166131 m!1450953))

(assert (=> d!166131 m!1450871))

(declare-fun m!1450955 () Bool)

(assert (=> b!1579025 m!1450955))

(declare-fun m!1450957 () Bool)

(assert (=> b!1579017 m!1450957))

(declare-fun m!1450959 () Bool)

(assert (=> bm!72388 m!1450959))

(assert (=> b!1578873 d!166131))

(declare-fun d!166141 () Bool)

(declare-fun res!1078971 () Bool)

(declare-fun e!880840 () Bool)

(assert (=> d!166141 (=> res!1078971 e!880840)))

(assert (=> d!166141 (= res!1078971 (and ((_ is Cons!36925) (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98)) (= (_1!12791 (h!38469 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98))) a0!51)))))

(assert (=> d!166141 (= (containsKey!877 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98) a0!51) e!880840)))

(declare-fun b!1579038 () Bool)

(declare-fun e!880841 () Bool)

(assert (=> b!1579038 (= e!880840 e!880841)))

(declare-fun res!1078972 () Bool)

(assert (=> b!1579038 (=> (not res!1078972) (not e!880841))))

(assert (=> b!1579038 (= res!1078972 (and (or (not ((_ is Cons!36925) (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98))) (bvsle (_1!12791 (h!38469 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98))) a0!51)) ((_ is Cons!36925) (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98)) (bvslt (_1!12791 (h!38469 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98))) a0!51)))))

(declare-fun b!1579039 () Bool)

(assert (=> b!1579039 (= e!880841 (containsKey!877 (t!51850 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98)) a0!51))))

(assert (= (and d!166141 (not res!1078971)) b!1579038))

(assert (= (and b!1579038 res!1078972) b!1579039))

(declare-fun m!1450971 () Bool)

(assert (=> b!1579039 m!1450971))

(assert (=> b!1578873 d!166141))

(declare-fun d!166145 () Bool)

(declare-fun e!880854 () Bool)

(assert (=> d!166145 e!880854))

(declare-fun res!1078986 () Bool)

(assert (=> d!166145 (=> (not res!1078986) (not e!880854))))

(declare-fun lt!676373 () ListLongMap!22913)

(assert (=> d!166145 (= res!1078986 (contains!10457 lt!676373 (_1!12791 (tuple2!25563 a!525 b!98))))))

(declare-fun lt!676374 () List!36929)

(assert (=> d!166145 (= lt!676373 (ListLongMap!22914 lt!676374))))

(declare-fun lt!676371 () Unit!52149)

(declare-fun lt!676372 () Unit!52149)

(assert (=> d!166145 (= lt!676371 lt!676372)))

(assert (=> d!166145 (= (getValueByKey!804 lt!676374 (_1!12791 (tuple2!25563 a!525 b!98))) (Some!878 (_2!12791 (tuple2!25563 a!525 b!98))))))

(declare-fun lemmaContainsTupThenGetReturnValue!388 (List!36929 (_ BitVec 64) B!2572) Unit!52149)

(assert (=> d!166145 (= lt!676372 (lemmaContainsTupThenGetReturnValue!388 lt!676374 (_1!12791 (tuple2!25563 a!525 b!98)) (_2!12791 (tuple2!25563 a!525 b!98))))))

(assert (=> d!166145 (= lt!676374 (insertStrictlySorted!602 (toList!11472 lm!251) (_1!12791 (tuple2!25563 a!525 b!98)) (_2!12791 (tuple2!25563 a!525 b!98))))))

(assert (=> d!166145 (= (+!5054 lm!251 (tuple2!25563 a!525 b!98)) lt!676373)))

(declare-fun b!1579059 () Bool)

(declare-fun res!1078987 () Bool)

(assert (=> b!1579059 (=> (not res!1078987) (not e!880854))))

(assert (=> b!1579059 (= res!1078987 (= (getValueByKey!804 (toList!11472 lt!676373) (_1!12791 (tuple2!25563 a!525 b!98))) (Some!878 (_2!12791 (tuple2!25563 a!525 b!98)))))))

(declare-fun b!1579060 () Bool)

(assert (=> b!1579060 (= e!880854 (contains!10461 (toList!11472 lt!676373) (tuple2!25563 a!525 b!98)))))

(assert (= (and d!166145 res!1078986) b!1579059))

(assert (= (and b!1579059 res!1078987) b!1579060))

(declare-fun m!1450983 () Bool)

(assert (=> d!166145 m!1450983))

(declare-fun m!1450985 () Bool)

(assert (=> d!166145 m!1450985))

(declare-fun m!1450987 () Bool)

(assert (=> d!166145 m!1450987))

(declare-fun m!1450989 () Bool)

(assert (=> d!166145 m!1450989))

(declare-fun m!1450993 () Bool)

(assert (=> b!1579059 m!1450993))

(declare-fun m!1450997 () Bool)

(assert (=> b!1579060 m!1450997))

(assert (=> b!1578873 d!166145))

(declare-fun d!166151 () Bool)

(declare-fun e!880856 () Bool)

(assert (=> d!166151 e!880856))

(declare-fun res!1078990 () Bool)

(assert (=> d!166151 (=> res!1078990 e!880856)))

(declare-fun lt!676382 () Bool)

(assert (=> d!166151 (= res!1078990 (not lt!676382))))

(declare-fun lt!676379 () Bool)

(assert (=> d!166151 (= lt!676382 lt!676379)))

(declare-fun lt!676381 () Unit!52149)

(declare-fun e!880857 () Unit!52149)

(assert (=> d!166151 (= lt!676381 e!880857)))

(declare-fun c!146302 () Bool)

(assert (=> d!166151 (= c!146302 lt!676379)))

(assert (=> d!166151 (= lt!676379 (containsKey!877 (toList!11472 (+!5054 lm!251 (tuple2!25563 a!525 b!98))) a0!51))))

(assert (=> d!166151 (= (contains!10457 (+!5054 lm!251 (tuple2!25563 a!525 b!98)) a0!51) lt!676382)))

(declare-fun b!1579063 () Bool)

(declare-fun lt!676380 () Unit!52149)

(assert (=> b!1579063 (= e!880857 lt!676380)))

(assert (=> b!1579063 (= lt!676380 (lemmaContainsKeyImpliesGetValueByKeyDefined!539 (toList!11472 (+!5054 lm!251 (tuple2!25563 a!525 b!98))) a0!51))))

(assert (=> b!1579063 (isDefined!588 (getValueByKey!804 (toList!11472 (+!5054 lm!251 (tuple2!25563 a!525 b!98))) a0!51))))

(declare-fun b!1579064 () Bool)

(declare-fun Unit!52157 () Unit!52149)

(assert (=> b!1579064 (= e!880857 Unit!52157)))

(declare-fun b!1579065 () Bool)

(assert (=> b!1579065 (= e!880856 (isDefined!588 (getValueByKey!804 (toList!11472 (+!5054 lm!251 (tuple2!25563 a!525 b!98))) a0!51)))))

(assert (= (and d!166151 c!146302) b!1579063))

(assert (= (and d!166151 (not c!146302)) b!1579064))

(assert (= (and d!166151 (not res!1078990)) b!1579065))

(declare-fun m!1451007 () Bool)

(assert (=> d!166151 m!1451007))

(declare-fun m!1451009 () Bool)

(assert (=> b!1579063 m!1451009))

(declare-fun m!1451011 () Bool)

(assert (=> b!1579063 m!1451011))

(assert (=> b!1579063 m!1451011))

(declare-fun m!1451013 () Bool)

(assert (=> b!1579063 m!1451013))

(assert (=> b!1579065 m!1451011))

(assert (=> b!1579065 m!1451011))

(assert (=> b!1579065 m!1451013))

(assert (=> b!1578873 d!166151))

(declare-fun d!166155 () Bool)

(assert (=> d!166155 (not (containsKey!877 (insertStrictlySorted!602 (toList!11472 lm!251) a!525 b!98) a0!51))))

(declare-fun lt!676398 () Unit!52149)

(declare-fun choose!2094 (List!36929 (_ BitVec 64) B!2572 (_ BitVec 64)) Unit!52149)

(assert (=> d!166155 (= lt!676398 (choose!2094 (toList!11472 lm!251) a!525 b!98 a0!51))))

(declare-fun e!880869 () Bool)

(assert (=> d!166155 e!880869))

(declare-fun res!1079007 () Bool)

(assert (=> d!166155 (=> (not res!1079007) (not e!880869))))

(assert (=> d!166155 (= res!1079007 (isStrictlySorted!1027 (toList!11472 lm!251)))))

(assert (=> d!166155 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!2 (toList!11472 lm!251) a!525 b!98 a0!51) lt!676398)))

(declare-fun b!1579086 () Bool)

(declare-fun res!1079008 () Bool)

(assert (=> b!1579086 (=> (not res!1079008) (not e!880869))))

(assert (=> b!1579086 (= res!1079008 (not (containsKey!877 (toList!11472 lm!251) a0!51)))))

(declare-fun b!1579087 () Bool)

(assert (=> b!1579087 (= e!880869 (not (= a0!51 a!525)))))

(assert (= (and d!166155 res!1079007) b!1579086))

(assert (= (and b!1579086 res!1079008) b!1579087))

(assert (=> d!166155 m!1450875))

(assert (=> d!166155 m!1450875))

(assert (=> d!166155 m!1450877))

(declare-fun m!1451031 () Bool)

(assert (=> d!166155 m!1451031))

(assert (=> d!166155 m!1450871))

(assert (=> b!1579086 m!1450887))

(assert (=> b!1578873 d!166155))

(declare-fun b!1579102 () Bool)

(declare-fun e!880879 () Bool)

(declare-fun tp!114291 () Bool)

(assert (=> b!1579102 (= e!880879 (and tp_is_empty!39117 tp!114291))))

(assert (=> b!1578870 (= tp!114283 e!880879)))

(assert (= (and b!1578870 ((_ is Cons!36925) (toList!11472 lm!251))) b!1579102))

(check-sat (not d!166123) (not b!1579017) (not b!1579065) (not b!1579059) (not b!1578930) (not b!1579060) (not b!1579086) (not d!166155) (not b!1579025) (not b!1579039) (not d!166151) (not b!1579063) tp_is_empty!39117 (not d!166119) (not b!1578903) (not b!1579019) (not d!166145) (not bm!72388) (not b!1578932) (not b!1579102) (not d!166131) (not b!1578953))
(check-sat)
