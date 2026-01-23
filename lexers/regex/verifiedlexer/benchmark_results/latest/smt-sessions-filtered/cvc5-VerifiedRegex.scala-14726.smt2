; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!758076 () Bool)

(assert start!758076)

(declare-fun b!8050011 () Bool)

(declare-fun res!3182694 () Bool)

(declare-fun e!4743231 () Bool)

(assert (=> b!8050011 (=> (not res!3182694) (not e!4743231))))

(declare-datatypes ((K!22761 0))(
  ( (K!22762 (val!32881 Int)) )
))
(declare-fun key!6222 () K!22761)

(declare-datatypes ((V!23015 0))(
  ( (V!23016 (val!32882 Int)) )
))
(declare-fun value!3131 () V!23015)

(declare-datatypes ((tuple2!70846 0))(
  ( (tuple2!70847 (_1!38726 K!22761) (_2!38726 V!23015)) )
))
(declare-datatypes ((List!75632 0))(
  ( (Nil!75506) (Cons!75506 (h!81954 tuple2!70846) (t!391404 List!75632)) )
))
(declare-fun l!14636 () List!75632)

(declare-fun contains!21148 (List!75632 tuple2!70846) Bool)

(assert (=> b!8050011 (= res!3182694 (contains!21148 l!14636 (tuple2!70847 key!6222 value!3131)))))

(declare-fun b!8050012 () Bool)

(declare-fun res!3182692 () Bool)

(declare-fun e!4743226 () Bool)

(assert (=> b!8050012 (=> (not res!3182692) (not e!4743226))))

(assert (=> b!8050012 (= res!3182692 (not (is-Nil!75506 l!14636)))))

(declare-fun b!8050013 () Bool)

(declare-fun e!4743228 () Bool)

(assert (=> b!8050013 (= e!4743226 e!4743228)))

(declare-fun res!3182695 () Bool)

(assert (=> b!8050013 (=> (not res!3182695) (not e!4743228))))

(assert (=> b!8050013 (= res!3182695 (= (_1!38726 (h!81954 l!14636)) key!6222))))

(declare-datatypes ((ListMap!7249 0))(
  ( (ListMap!7250 (toList!11899 List!75632)) )
))
(declare-fun lt!2723877 () ListMap!7249)

(declare-fun acc!1298 () ListMap!7249)

(declare-fun addToMapMapFromBucket!1966 (List!75632 ListMap!7249) ListMap!7249)

(declare-fun +!2651 (ListMap!7249 tuple2!70846) ListMap!7249)

(assert (=> b!8050013 (= lt!2723877 (addToMapMapFromBucket!1966 (t!391404 l!14636) (+!2651 acc!1298 (h!81954 l!14636))))))

(declare-fun b!8050014 () Bool)

(declare-fun e!4743232 () Bool)

(assert (=> b!8050014 (= e!4743232 e!4743231)))

(declare-fun res!3182690 () Bool)

(assert (=> b!8050014 (=> (not res!3182690) (not e!4743231))))

(declare-fun containsKey!4813 (List!75632 K!22761) Bool)

(assert (=> b!8050014 (= res!3182690 (containsKey!4813 l!14636 key!6222))))

(declare-fun b!8050015 () Bool)

(declare-fun e!4743227 () Bool)

(assert (=> b!8050015 (= e!4743227 e!4743226)))

(declare-fun res!3182688 () Bool)

(assert (=> b!8050015 (=> (not res!3182688) (not e!4743226))))

(assert (=> b!8050015 (= res!3182688 e!4743232)))

(declare-fun res!3182696 () Bool)

(assert (=> b!8050015 (=> res!3182696 e!4743232)))

(declare-fun e!4743229 () Bool)

(assert (=> b!8050015 (= res!3182696 e!4743229)))

(declare-fun res!3182693 () Bool)

(assert (=> b!8050015 (=> (not res!3182693) (not e!4743229))))

(declare-fun lt!2723875 () Bool)

(assert (=> b!8050015 (= res!3182693 lt!2723875)))

(declare-fun contains!21149 (ListMap!7249 K!22761) Bool)

(assert (=> b!8050015 (= lt!2723875 (contains!21149 acc!1298 key!6222))))

(declare-fun res!3182691 () Bool)

(assert (=> start!758076 (=> (not res!3182691) (not e!4743227))))

(declare-fun noDuplicateKeys!2685 (List!75632) Bool)

(assert (=> start!758076 (= res!3182691 (noDuplicateKeys!2685 l!14636))))

(assert (=> start!758076 e!4743227))

(declare-fun e!4743230 () Bool)

(assert (=> start!758076 e!4743230))

(declare-fun e!4743225 () Bool)

(declare-fun inv!97251 (ListMap!7249) Bool)

(assert (=> start!758076 (and (inv!97251 acc!1298) e!4743225)))

(declare-fun tp_is_empty!54815 () Bool)

(assert (=> start!758076 tp_is_empty!54815))

(declare-fun tp_is_empty!54817 () Bool)

(assert (=> start!758076 tp_is_empty!54817))

(declare-fun b!8050016 () Bool)

(declare-fun res!3182689 () Bool)

(assert (=> b!8050016 (=> (not res!3182689) (not e!4743229))))

(declare-fun apply!14412 (ListMap!7249 K!22761) V!23015)

(assert (=> b!8050016 (= res!3182689 (= (apply!14412 acc!1298 key!6222) value!3131))))

(declare-fun b!8050017 () Bool)

(assert (=> b!8050017 (= e!4743228 (not (= (_2!38726 (h!81954 l!14636)) value!3131)))))

(assert (=> b!8050017 (not (contains!21148 (t!391404 l!14636) (tuple2!70847 key!6222 value!3131)))))

(declare-datatypes ((Unit!171290 0))(
  ( (Unit!171291) )
))
(declare-fun lt!2723876 () Unit!171290)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!13 (List!75632 K!22761 V!23015) Unit!171290)

(assert (=> b!8050017 (= lt!2723876 (lemmaNotContainsKeyThenCannotContainPair!13 (t!391404 l!14636) key!6222 value!3131))))

(declare-fun b!8050018 () Bool)

(assert (=> b!8050018 (= e!4743231 (not lt!2723875))))

(declare-fun b!8050019 () Bool)

(declare-fun res!3182687 () Bool)

(assert (=> b!8050019 (=> (not res!3182687) (not e!4743227))))

(assert (=> b!8050019 (= res!3182687 (contains!21149 (addToMapMapFromBucket!1966 l!14636 acc!1298) key!6222))))

(declare-fun b!8050020 () Bool)

(declare-fun tp!2413535 () Bool)

(assert (=> b!8050020 (= e!4743225 tp!2413535)))

(declare-fun b!8050021 () Bool)

(declare-fun tp!2413534 () Bool)

(assert (=> b!8050021 (= e!4743230 (and tp_is_empty!54815 tp_is_empty!54817 tp!2413534))))

(declare-fun b!8050022 () Bool)

(assert (=> b!8050022 (= e!4743229 (not (containsKey!4813 l!14636 key!6222)))))

(assert (= (and start!758076 res!3182691) b!8050019))

(assert (= (and b!8050019 res!3182687) b!8050015))

(assert (= (and b!8050015 res!3182693) b!8050016))

(assert (= (and b!8050016 res!3182689) b!8050022))

(assert (= (and b!8050015 (not res!3182696)) b!8050014))

(assert (= (and b!8050014 res!3182690) b!8050011))

(assert (= (and b!8050011 res!3182694) b!8050018))

(assert (= (and b!8050015 res!3182688) b!8050012))

(assert (= (and b!8050012 res!3182692) b!8050013))

(assert (= (and b!8050013 res!3182695) b!8050017))

(assert (= (and start!758076 (is-Cons!75506 l!14636)) b!8050021))

(assert (= start!758076 b!8050020))

(declare-fun m!8400888 () Bool)

(assert (=> start!758076 m!8400888))

(declare-fun m!8400890 () Bool)

(assert (=> start!758076 m!8400890))

(declare-fun m!8400892 () Bool)

(assert (=> b!8050016 m!8400892))

(declare-fun m!8400894 () Bool)

(assert (=> b!8050019 m!8400894))

(assert (=> b!8050019 m!8400894))

(declare-fun m!8400896 () Bool)

(assert (=> b!8050019 m!8400896))

(declare-fun m!8400898 () Bool)

(assert (=> b!8050022 m!8400898))

(declare-fun m!8400900 () Bool)

(assert (=> b!8050013 m!8400900))

(assert (=> b!8050013 m!8400900))

(declare-fun m!8400902 () Bool)

(assert (=> b!8050013 m!8400902))

(declare-fun m!8400904 () Bool)

(assert (=> b!8050017 m!8400904))

(declare-fun m!8400906 () Bool)

(assert (=> b!8050017 m!8400906))

(declare-fun m!8400908 () Bool)

(assert (=> b!8050015 m!8400908))

(declare-fun m!8400910 () Bool)

(assert (=> b!8050011 m!8400910))

(assert (=> b!8050014 m!8400898))

(push 1)

(assert (not b!8050013))

(assert (not start!758076))

(assert (not b!8050021))

(assert (not b!8050017))

(assert (not b!8050019))

(assert tp_is_empty!54817)

(assert (not b!8050022))

(assert (not b!8050014))

(assert (not b!8050020))

(assert (not b!8050016))

(assert (not b!8050015))

(assert (not b!8050011))

(assert tp_is_empty!54815)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8050095 () Bool)

(declare-datatypes ((List!75634 0))(
  ( (Nil!75508) (Cons!75508 (h!81956 K!22761) (t!391406 List!75634)) )
))
(declare-fun e!4743291 () List!75634)

(declare-fun keys!30798 (ListMap!7249) List!75634)

(assert (=> b!8050095 (= e!4743291 (keys!30798 (addToMapMapFromBucket!1966 l!14636 acc!1298)))))

(declare-fun b!8050096 () Bool)

(declare-fun getKeysList!1223 (List!75632) List!75634)

(assert (=> b!8050096 (= e!4743291 (getKeysList!1223 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298))))))

(declare-fun b!8050097 () Bool)

(declare-fun e!4743292 () Bool)

(declare-fun e!4743287 () Bool)

(assert (=> b!8050097 (= e!4743292 e!4743287)))

(declare-fun res!3182753 () Bool)

(assert (=> b!8050097 (=> (not res!3182753) (not e!4743287))))

(declare-datatypes ((Option!17980 0))(
  ( (None!17979) (Some!17979 (v!55266 V!23015)) )
))
(declare-fun isDefined!14513 (Option!17980) Bool)

(declare-fun getValueByKey!2764 (List!75632 K!22761) Option!17980)

(assert (=> b!8050097 (= res!3182753 (isDefined!14513 (getValueByKey!2764 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050098 () Bool)

(assert (=> b!8050098 false))

(declare-fun lt!2723910 () Unit!171290)

(declare-fun lt!2723916 () Unit!171290)

(assert (=> b!8050098 (= lt!2723910 lt!2723916)))

(declare-fun containsKey!4815 (List!75632 K!22761) Bool)

(assert (=> b!8050098 (containsKey!4815 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1223 (List!75632 K!22761) Unit!171290)

(assert (=> b!8050098 (= lt!2723916 (lemmaInGetKeysListThenContainsKey!1223 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(declare-fun e!4743290 () Unit!171290)

(declare-fun Unit!171294 () Unit!171290)

(assert (=> b!8050098 (= e!4743290 Unit!171294)))

(declare-fun bm!746810 () Bool)

(declare-fun call!746815 () Bool)

(declare-fun contains!21152 (List!75634 K!22761) Bool)

(assert (=> bm!746810 (= call!746815 (contains!21152 e!4743291 key!6222))))

(declare-fun c!1475710 () Bool)

(declare-fun c!1475711 () Bool)

(assert (=> bm!746810 (= c!1475710 c!1475711)))

(declare-fun b!8050099 () Bool)

(declare-fun e!4743288 () Bool)

(assert (=> b!8050099 (= e!4743288 (not (contains!21152 (keys!30798 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8050100 () Bool)

(declare-fun e!4743289 () Unit!171290)

(assert (=> b!8050100 (= e!4743289 e!4743290)))

(declare-fun c!1475709 () Bool)

(assert (=> b!8050100 (= c!1475709 call!746815)))

(declare-fun d!2397035 () Bool)

(assert (=> d!2397035 e!4743292))

(declare-fun res!3182752 () Bool)

(assert (=> d!2397035 (=> res!3182752 e!4743292)))

(assert (=> d!2397035 (= res!3182752 e!4743288)))

(declare-fun res!3182751 () Bool)

(assert (=> d!2397035 (=> (not res!3182751) (not e!4743288))))

(declare-fun lt!2723913 () Bool)

(assert (=> d!2397035 (= res!3182751 (not lt!2723913))))

(declare-fun lt!2723911 () Bool)

(assert (=> d!2397035 (= lt!2723913 lt!2723911)))

(declare-fun lt!2723914 () Unit!171290)

(assert (=> d!2397035 (= lt!2723914 e!4743289)))

(assert (=> d!2397035 (= c!1475711 lt!2723911)))

(assert (=> d!2397035 (= lt!2723911 (containsKey!4815 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397035 (= (contains!21149 (addToMapMapFromBucket!1966 l!14636 acc!1298) key!6222) lt!2723913)))

(declare-fun b!8050101 () Bool)

(declare-fun lt!2723909 () Unit!171290)

(assert (=> b!8050101 (= e!4743289 lt!2723909)))

(declare-fun lt!2723915 () Unit!171290)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2535 (List!75632 K!22761) Unit!171290)

(assert (=> b!8050101 (= lt!2723915 (lemmaContainsKeyImpliesGetValueByKeyDefined!2535 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050101 (isDefined!14513 (getValueByKey!2764 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2723912 () Unit!171290)

(assert (=> b!8050101 (= lt!2723912 lt!2723915)))

(declare-fun lemmaInListThenGetKeysListContains!1218 (List!75632 K!22761) Unit!171290)

(assert (=> b!8050101 (= lt!2723909 (lemmaInListThenGetKeysListContains!1218 (toList!11899 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(assert (=> b!8050101 call!746815))

(declare-fun b!8050102 () Bool)

(declare-fun Unit!171295 () Unit!171290)

(assert (=> b!8050102 (= e!4743290 Unit!171295)))

(declare-fun b!8050103 () Bool)

(assert (=> b!8050103 (= e!4743287 (contains!21152 (keys!30798 (addToMapMapFromBucket!1966 l!14636 acc!1298)) key!6222))))

(assert (= (and d!2397035 c!1475711) b!8050101))

(assert (= (and d!2397035 (not c!1475711)) b!8050100))

(assert (= (and b!8050100 c!1475709) b!8050098))

(assert (= (and b!8050100 (not c!1475709)) b!8050102))

(assert (= (or b!8050101 b!8050100) bm!746810))

(assert (= (and bm!746810 c!1475710) b!8050096))

(assert (= (and bm!746810 (not c!1475710)) b!8050095))

(assert (= (and d!2397035 res!3182751) b!8050099))

(assert (= (and d!2397035 (not res!3182752)) b!8050097))

(assert (= (and b!8050097 res!3182753) b!8050103))

(assert (=> b!8050099 m!8400894))

(declare-fun m!8400952 () Bool)

(assert (=> b!8050099 m!8400952))

(assert (=> b!8050099 m!8400952))

(declare-fun m!8400954 () Bool)

(assert (=> b!8050099 m!8400954))

(declare-fun m!8400956 () Bool)

(assert (=> bm!746810 m!8400956))

(declare-fun m!8400958 () Bool)

(assert (=> b!8050101 m!8400958))

(declare-fun m!8400960 () Bool)

(assert (=> b!8050101 m!8400960))

(assert (=> b!8050101 m!8400960))

(declare-fun m!8400962 () Bool)

(assert (=> b!8050101 m!8400962))

(declare-fun m!8400964 () Bool)

(assert (=> b!8050101 m!8400964))

(declare-fun m!8400966 () Bool)

(assert (=> b!8050096 m!8400966))

(assert (=> b!8050103 m!8400894))

(assert (=> b!8050103 m!8400952))

(assert (=> b!8050103 m!8400952))

(assert (=> b!8050103 m!8400954))

(assert (=> b!8050097 m!8400960))

(assert (=> b!8050097 m!8400960))

(assert (=> b!8050097 m!8400962))

(declare-fun m!8400968 () Bool)

(assert (=> b!8050098 m!8400968))

(declare-fun m!8400970 () Bool)

(assert (=> b!8050098 m!8400970))

(assert (=> d!2397035 m!8400968))

(assert (=> b!8050095 m!8400894))

(assert (=> b!8050095 m!8400952))

(assert (=> b!8050019 d!2397035))

(declare-fun b!8050119 () Bool)

(assert (=> b!8050119 true))

(declare-fun bs!1971859 () Bool)

(declare-fun b!8050121 () Bool)

(assert (= bs!1971859 (and b!8050121 b!8050119)))

(declare-fun lambda!472913 () Int)

(declare-fun lambda!472912 () Int)

(assert (=> bs!1971859 (= lambda!472913 lambda!472912)))

(assert (=> b!8050121 true))

(declare-fun lt!2723972 () ListMap!7249)

(declare-fun lambda!472914 () Int)

(assert (=> bs!1971859 (= (= lt!2723972 acc!1298) (= lambda!472914 lambda!472912))))

(assert (=> b!8050121 (= (= lt!2723972 acc!1298) (= lambda!472914 lambda!472913))))

(assert (=> b!8050121 true))

(declare-fun bs!1971860 () Bool)

(declare-fun d!2397049 () Bool)

(assert (= bs!1971860 (and d!2397049 b!8050119)))

(declare-fun lambda!472917 () Int)

(declare-fun lt!2723968 () ListMap!7249)

(assert (=> bs!1971860 (= (= lt!2723968 acc!1298) (= lambda!472917 lambda!472912))))

(declare-fun bs!1971861 () Bool)

(assert (= bs!1971861 (and d!2397049 b!8050121)))

(assert (=> bs!1971861 (= (= lt!2723968 acc!1298) (= lambda!472917 lambda!472913))))

(assert (=> bs!1971861 (= (= lt!2723968 lt!2723972) (= lambda!472917 lambda!472914))))

(assert (=> d!2397049 true))

(declare-fun bm!746817 () Bool)

(declare-fun call!746823 () Unit!171290)

(declare-fun lemmaContainsAllItsOwnKeys!1067 (ListMap!7249) Unit!171290)

(assert (=> bm!746817 (= call!746823 (lemmaContainsAllItsOwnKeys!1067 acc!1298))))

(declare-fun b!8050118 () Bool)

(declare-fun e!4743301 () Bool)

(declare-fun forall!18484 (List!75632 Int) Bool)

(assert (=> b!8050118 (= e!4743301 (forall!18484 (toList!11899 acc!1298) lambda!472914))))

(declare-fun bm!746818 () Bool)

(declare-fun lt!2723975 () ListMap!7249)

(declare-fun c!1475716 () Bool)

(declare-fun call!746824 () Bool)

(assert (=> bm!746818 (= call!746824 (forall!18484 (ite c!1475716 (toList!11899 acc!1298) (toList!11899 lt!2723975)) (ite c!1475716 lambda!472912 lambda!472914)))))

(declare-fun call!746822 () Bool)

(declare-fun bm!746819 () Bool)

(assert (=> bm!746819 (= call!746822 (forall!18484 (toList!11899 acc!1298) (ite c!1475716 lambda!472912 lambda!472914)))))

(declare-fun e!4743302 () ListMap!7249)

(assert (=> b!8050119 (= e!4743302 acc!1298)))

(declare-fun lt!2723970 () Unit!171290)

(assert (=> b!8050119 (= lt!2723970 call!746823)))

(assert (=> b!8050119 call!746822))

(declare-fun lt!2723977 () Unit!171290)

(assert (=> b!8050119 (= lt!2723977 lt!2723970)))

(assert (=> b!8050119 call!746824))

(declare-fun lt!2723982 () Unit!171290)

(declare-fun Unit!171296 () Unit!171290)

(assert (=> b!8050119 (= lt!2723982 Unit!171296)))

(declare-fun b!8050120 () Bool)

(declare-fun res!3182762 () Bool)

(declare-fun e!4743303 () Bool)

(assert (=> b!8050120 (=> (not res!3182762) (not e!4743303))))

(assert (=> b!8050120 (= res!3182762 (forall!18484 (toList!11899 acc!1298) lambda!472917))))

(assert (=> d!2397049 e!4743303))

(declare-fun res!3182761 () Bool)

(assert (=> d!2397049 (=> (not res!3182761) (not e!4743303))))

(assert (=> d!2397049 (= res!3182761 (forall!18484 l!14636 lambda!472917))))

(assert (=> d!2397049 (= lt!2723968 e!4743302)))

(assert (=> d!2397049 (= c!1475716 (is-Nil!75506 l!14636))))

(assert (=> d!2397049 (noDuplicateKeys!2685 l!14636)))

(assert (=> d!2397049 (= (addToMapMapFromBucket!1966 l!14636 acc!1298) lt!2723968)))

(assert (=> b!8050121 (= e!4743302 lt!2723972)))

(assert (=> b!8050121 (= lt!2723975 (+!2651 acc!1298 (h!81954 l!14636)))))

(assert (=> b!8050121 (= lt!2723972 (addToMapMapFromBucket!1966 (t!391404 l!14636) (+!2651 acc!1298 (h!81954 l!14636))))))

(declare-fun lt!2723967 () Unit!171290)

(assert (=> b!8050121 (= lt!2723967 call!746823)))

(assert (=> b!8050121 (forall!18484 (toList!11899 acc!1298) lambda!472913)))

(declare-fun lt!2723981 () Unit!171290)

(assert (=> b!8050121 (= lt!2723981 lt!2723967)))

(assert (=> b!8050121 (forall!18484 (toList!11899 lt!2723975) lambda!472914)))

(declare-fun lt!2723969 () Unit!171290)

(declare-fun Unit!171297 () Unit!171290)

(assert (=> b!8050121 (= lt!2723969 Unit!171297)))

(assert (=> b!8050121 (forall!18484 (t!391404 l!14636) lambda!472914)))

(declare-fun lt!2723966 () Unit!171290)

(declare-fun Unit!171298 () Unit!171290)

(assert (=> b!8050121 (= lt!2723966 Unit!171298)))

(declare-fun lt!2723983 () Unit!171290)

(declare-fun Unit!171299 () Unit!171290)

(assert (=> b!8050121 (= lt!2723983 Unit!171299)))

(declare-fun lt!2723973 () Unit!171290)

(declare-fun forallContained!4638 (List!75632 Int tuple2!70846) Unit!171290)

(assert (=> b!8050121 (= lt!2723973 (forallContained!4638 (toList!11899 lt!2723975) lambda!472914 (h!81954 l!14636)))))

(assert (=> b!8050121 (contains!21149 lt!2723975 (_1!38726 (h!81954 l!14636)))))

(declare-fun lt!2723985 () Unit!171290)

(declare-fun Unit!171300 () Unit!171290)

(assert (=> b!8050121 (= lt!2723985 Unit!171300)))

(assert (=> b!8050121 (contains!21149 lt!2723972 (_1!38726 (h!81954 l!14636)))))

(declare-fun lt!2723974 () Unit!171290)

(declare-fun Unit!171301 () Unit!171290)

(assert (=> b!8050121 (= lt!2723974 Unit!171301)))

(assert (=> b!8050121 (forall!18484 l!14636 lambda!472914)))

(declare-fun lt!2723978 () Unit!171290)

(declare-fun Unit!171302 () Unit!171290)

(assert (=> b!8050121 (= lt!2723978 Unit!171302)))

(assert (=> b!8050121 call!746824))

(declare-fun lt!2723980 () Unit!171290)

(declare-fun Unit!171303 () Unit!171290)

(assert (=> b!8050121 (= lt!2723980 Unit!171303)))

(declare-fun lt!2723979 () Unit!171290)

(declare-fun Unit!171304 () Unit!171290)

(assert (=> b!8050121 (= lt!2723979 Unit!171304)))

(declare-fun lt!2723971 () Unit!171290)

(declare-fun addForallContainsKeyThenBeforeAdding!1065 (ListMap!7249 ListMap!7249 K!22761 V!23015) Unit!171290)

(assert (=> b!8050121 (= lt!2723971 (addForallContainsKeyThenBeforeAdding!1065 acc!1298 lt!2723972 (_1!38726 (h!81954 l!14636)) (_2!38726 (h!81954 l!14636))))))

(assert (=> b!8050121 (forall!18484 (toList!11899 acc!1298) lambda!472914)))

(declare-fun lt!2723965 () Unit!171290)

(assert (=> b!8050121 (= lt!2723965 lt!2723971)))

(assert (=> b!8050121 call!746822))

(declare-fun lt!2723976 () Unit!171290)

(declare-fun Unit!171305 () Unit!171290)

(assert (=> b!8050121 (= lt!2723976 Unit!171305)))

(declare-fun res!3182760 () Bool)

(assert (=> b!8050121 (= res!3182760 (forall!18484 l!14636 lambda!472914))))

(assert (=> b!8050121 (=> (not res!3182760) (not e!4743301))))

(assert (=> b!8050121 e!4743301))

(declare-fun lt!2723984 () Unit!171290)

(declare-fun Unit!171306 () Unit!171290)

(assert (=> b!8050121 (= lt!2723984 Unit!171306)))

(declare-fun b!8050122 () Bool)

(declare-fun invariantList!1915 (List!75632) Bool)

(assert (=> b!8050122 (= e!4743303 (invariantList!1915 (toList!11899 lt!2723968)))))

(assert (= (and d!2397049 c!1475716) b!8050119))

(assert (= (and d!2397049 (not c!1475716)) b!8050121))

(assert (= (and b!8050121 res!3182760) b!8050118))

(assert (= (or b!8050119 b!8050121) bm!746818))

(assert (= (or b!8050119 b!8050121) bm!746819))

(assert (= (or b!8050119 b!8050121) bm!746817))

(assert (= (and d!2397049 res!3182761) b!8050120))

(assert (= (and b!8050120 res!3182762) b!8050122))

(assert (=> b!8050121 m!8400900))

(assert (=> b!8050121 m!8400902))

(declare-fun m!8400972 () Bool)

(assert (=> b!8050121 m!8400972))

(declare-fun m!8400974 () Bool)

(assert (=> b!8050121 m!8400974))

(declare-fun m!8400976 () Bool)

(assert (=> b!8050121 m!8400976))

(declare-fun m!8400978 () Bool)

(assert (=> b!8050121 m!8400978))

(declare-fun m!8400980 () Bool)

(assert (=> b!8050121 m!8400980))

(assert (=> b!8050121 m!8400974))

(declare-fun m!8400982 () Bool)

(assert (=> b!8050121 m!8400982))

(declare-fun m!8400984 () Bool)

(assert (=> b!8050121 m!8400984))

(declare-fun m!8400986 () Bool)

(assert (=> b!8050121 m!8400986))

(assert (=> b!8050121 m!8400900))

(declare-fun m!8400988 () Bool)

(assert (=> b!8050121 m!8400988))

(declare-fun m!8400990 () Bool)

(assert (=> bm!746819 m!8400990))

(declare-fun m!8400992 () Bool)

(assert (=> bm!746818 m!8400992))

(declare-fun m!8400994 () Bool)

(assert (=> d!2397049 m!8400994))

(assert (=> d!2397049 m!8400888))

(declare-fun m!8400996 () Bool)

(assert (=> b!8050120 m!8400996))

(declare-fun m!8400998 () Bool)

(assert (=> bm!746817 m!8400998))

(assert (=> b!8050118 m!8400978))

(declare-fun m!8401000 () Bool)

(assert (=> b!8050122 m!8401000))

(assert (=> b!8050019 d!2397049))

(declare-fun bs!1971862 () Bool)

(declare-fun b!8050126 () Bool)

(assert (= bs!1971862 (and b!8050126 b!8050119)))

(declare-fun lambda!472922 () Int)

(assert (=> bs!1971862 (= (= (+!2651 acc!1298 (h!81954 l!14636)) acc!1298) (= lambda!472922 lambda!472912))))

(declare-fun bs!1971863 () Bool)

(assert (= bs!1971863 (and b!8050126 b!8050121)))

(assert (=> bs!1971863 (= (= (+!2651 acc!1298 (h!81954 l!14636)) acc!1298) (= lambda!472922 lambda!472913))))

(assert (=> bs!1971863 (= (= (+!2651 acc!1298 (h!81954 l!14636)) lt!2723972) (= lambda!472922 lambda!472914))))

(declare-fun bs!1971864 () Bool)

(assert (= bs!1971864 (and b!8050126 d!2397049)))

(assert (=> bs!1971864 (= (= (+!2651 acc!1298 (h!81954 l!14636)) lt!2723968) (= lambda!472922 lambda!472917))))

(assert (=> b!8050126 true))

(declare-fun bs!1971865 () Bool)

(declare-fun b!8050128 () Bool)

(assert (= bs!1971865 (and b!8050128 b!8050126)))

(declare-fun lambda!472925 () Int)

(assert (=> bs!1971865 (= lambda!472925 lambda!472922)))

(declare-fun bs!1971866 () Bool)

(assert (= bs!1971866 (and b!8050128 b!8050121)))

(assert (=> bs!1971866 (= (= (+!2651 acc!1298 (h!81954 l!14636)) acc!1298) (= lambda!472925 lambda!472913))))

(assert (=> bs!1971866 (= (= (+!2651 acc!1298 (h!81954 l!14636)) lt!2723972) (= lambda!472925 lambda!472914))))

(declare-fun bs!1971867 () Bool)

(assert (= bs!1971867 (and b!8050128 b!8050119)))

(assert (=> bs!1971867 (= (= (+!2651 acc!1298 (h!81954 l!14636)) acc!1298) (= lambda!472925 lambda!472912))))

(declare-fun bs!1971868 () Bool)

(assert (= bs!1971868 (and b!8050128 d!2397049)))

(assert (=> bs!1971868 (= (= (+!2651 acc!1298 (h!81954 l!14636)) lt!2723968) (= lambda!472925 lambda!472917))))

(assert (=> b!8050128 true))

(declare-fun lambda!472928 () Int)

(declare-fun lt!2724003 () ListMap!7249)

(assert (=> bs!1971865 (= (= lt!2724003 (+!2651 acc!1298 (h!81954 l!14636))) (= lambda!472928 lambda!472922))))

(assert (=> bs!1971866 (= (= lt!2724003 acc!1298) (= lambda!472928 lambda!472913))))

(assert (=> bs!1971866 (= (= lt!2724003 lt!2723972) (= lambda!472928 lambda!472914))))

(assert (=> b!8050128 (= (= lt!2724003 (+!2651 acc!1298 (h!81954 l!14636))) (= lambda!472928 lambda!472925))))

(assert (=> bs!1971867 (= (= lt!2724003 acc!1298) (= lambda!472928 lambda!472912))))

(assert (=> bs!1971868 (= (= lt!2724003 lt!2723968) (= lambda!472928 lambda!472917))))

(assert (=> b!8050128 true))

(declare-fun bs!1971869 () Bool)

(declare-fun d!2397051 () Bool)

(assert (= bs!1971869 (and d!2397051 b!8050126)))

(declare-fun lambda!472931 () Int)

(declare-fun lt!2723999 () ListMap!7249)

(assert (=> bs!1971869 (= (= lt!2723999 (+!2651 acc!1298 (h!81954 l!14636))) (= lambda!472931 lambda!472922))))

(declare-fun bs!1971870 () Bool)

(assert (= bs!1971870 (and d!2397051 b!8050121)))

(assert (=> bs!1971870 (= (= lt!2723999 acc!1298) (= lambda!472931 lambda!472913))))

(assert (=> bs!1971870 (= (= lt!2723999 lt!2723972) (= lambda!472931 lambda!472914))))

(declare-fun bs!1971871 () Bool)

(assert (= bs!1971871 (and d!2397051 b!8050128)))

(assert (=> bs!1971871 (= (= lt!2723999 lt!2724003) (= lambda!472931 lambda!472928))))

(assert (=> bs!1971871 (= (= lt!2723999 (+!2651 acc!1298 (h!81954 l!14636))) (= lambda!472931 lambda!472925))))

(declare-fun bs!1971872 () Bool)

(assert (= bs!1971872 (and d!2397051 b!8050119)))

(assert (=> bs!1971872 (= (= lt!2723999 acc!1298) (= lambda!472931 lambda!472912))))

(declare-fun bs!1971873 () Bool)

(assert (= bs!1971873 (and d!2397051 d!2397049)))

(assert (=> bs!1971873 (= (= lt!2723999 lt!2723968) (= lambda!472931 lambda!472917))))

(assert (=> d!2397051 true))

(declare-fun bm!746820 () Bool)

(declare-fun call!746826 () Unit!171290)

(assert (=> bm!746820 (= call!746826 (lemmaContainsAllItsOwnKeys!1067 (+!2651 acc!1298 (h!81954 l!14636))))))

(declare-fun b!8050125 () Bool)

(declare-fun e!4743304 () Bool)

(assert (=> b!8050125 (= e!4743304 (forall!18484 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) lambda!472928))))

(declare-fun bm!746821 () Bool)

(declare-fun call!746827 () Bool)

(declare-fun lt!2724006 () ListMap!7249)

(declare-fun c!1475717 () Bool)

(assert (=> bm!746821 (= call!746827 (forall!18484 (ite c!1475717 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) (toList!11899 lt!2724006)) (ite c!1475717 lambda!472922 lambda!472928)))))

(declare-fun bm!746822 () Bool)

(declare-fun call!746825 () Bool)

(assert (=> bm!746822 (= call!746825 (forall!18484 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) (ite c!1475717 lambda!472922 lambda!472928)))))

(declare-fun e!4743305 () ListMap!7249)

(assert (=> b!8050126 (= e!4743305 (+!2651 acc!1298 (h!81954 l!14636)))))

(declare-fun lt!2724001 () Unit!171290)

(assert (=> b!8050126 (= lt!2724001 call!746826)))

(assert (=> b!8050126 call!746825))

(declare-fun lt!2724008 () Unit!171290)

(assert (=> b!8050126 (= lt!2724008 lt!2724001)))

(assert (=> b!8050126 call!746827))

(declare-fun lt!2724013 () Unit!171290)

(declare-fun Unit!171307 () Unit!171290)

(assert (=> b!8050126 (= lt!2724013 Unit!171307)))

(declare-fun b!8050127 () Bool)

(declare-fun res!3182765 () Bool)

(declare-fun e!4743306 () Bool)

(assert (=> b!8050127 (=> (not res!3182765) (not e!4743306))))

(assert (=> b!8050127 (= res!3182765 (forall!18484 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) lambda!472931))))

(assert (=> d!2397051 e!4743306))

(declare-fun res!3182764 () Bool)

(assert (=> d!2397051 (=> (not res!3182764) (not e!4743306))))

(assert (=> d!2397051 (= res!3182764 (forall!18484 (t!391404 l!14636) lambda!472931))))

(assert (=> d!2397051 (= lt!2723999 e!4743305)))

(assert (=> d!2397051 (= c!1475717 (is-Nil!75506 (t!391404 l!14636)))))

(assert (=> d!2397051 (noDuplicateKeys!2685 (t!391404 l!14636))))

(assert (=> d!2397051 (= (addToMapMapFromBucket!1966 (t!391404 l!14636) (+!2651 acc!1298 (h!81954 l!14636))) lt!2723999)))

(assert (=> b!8050128 (= e!4743305 lt!2724003)))

(assert (=> b!8050128 (= lt!2724006 (+!2651 (+!2651 acc!1298 (h!81954 l!14636)) (h!81954 (t!391404 l!14636))))))

(assert (=> b!8050128 (= lt!2724003 (addToMapMapFromBucket!1966 (t!391404 (t!391404 l!14636)) (+!2651 (+!2651 acc!1298 (h!81954 l!14636)) (h!81954 (t!391404 l!14636)))))))

(declare-fun lt!2723998 () Unit!171290)

(assert (=> b!8050128 (= lt!2723998 call!746826)))

(assert (=> b!8050128 (forall!18484 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) lambda!472925)))

(declare-fun lt!2724012 () Unit!171290)

(assert (=> b!8050128 (= lt!2724012 lt!2723998)))

(assert (=> b!8050128 (forall!18484 (toList!11899 lt!2724006) lambda!472928)))

(declare-fun lt!2724000 () Unit!171290)

(declare-fun Unit!171308 () Unit!171290)

(assert (=> b!8050128 (= lt!2724000 Unit!171308)))

(assert (=> b!8050128 (forall!18484 (t!391404 (t!391404 l!14636)) lambda!472928)))

(declare-fun lt!2723997 () Unit!171290)

(declare-fun Unit!171309 () Unit!171290)

(assert (=> b!8050128 (= lt!2723997 Unit!171309)))

(declare-fun lt!2724014 () Unit!171290)

(declare-fun Unit!171310 () Unit!171290)

(assert (=> b!8050128 (= lt!2724014 Unit!171310)))

(declare-fun lt!2724004 () Unit!171290)

(assert (=> b!8050128 (= lt!2724004 (forallContained!4638 (toList!11899 lt!2724006) lambda!472928 (h!81954 (t!391404 l!14636))))))

(assert (=> b!8050128 (contains!21149 lt!2724006 (_1!38726 (h!81954 (t!391404 l!14636))))))

(declare-fun lt!2724016 () Unit!171290)

(declare-fun Unit!171311 () Unit!171290)

(assert (=> b!8050128 (= lt!2724016 Unit!171311)))

(assert (=> b!8050128 (contains!21149 lt!2724003 (_1!38726 (h!81954 (t!391404 l!14636))))))

(declare-fun lt!2724005 () Unit!171290)

(declare-fun Unit!171312 () Unit!171290)

(assert (=> b!8050128 (= lt!2724005 Unit!171312)))

(assert (=> b!8050128 (forall!18484 (t!391404 l!14636) lambda!472928)))

(declare-fun lt!2724009 () Unit!171290)

(declare-fun Unit!171313 () Unit!171290)

(assert (=> b!8050128 (= lt!2724009 Unit!171313)))

(assert (=> b!8050128 call!746827))

(declare-fun lt!2724011 () Unit!171290)

(declare-fun Unit!171314 () Unit!171290)

(assert (=> b!8050128 (= lt!2724011 Unit!171314)))

(declare-fun lt!2724010 () Unit!171290)

(declare-fun Unit!171315 () Unit!171290)

(assert (=> b!8050128 (= lt!2724010 Unit!171315)))

(declare-fun lt!2724002 () Unit!171290)

(assert (=> b!8050128 (= lt!2724002 (addForallContainsKeyThenBeforeAdding!1065 (+!2651 acc!1298 (h!81954 l!14636)) lt!2724003 (_1!38726 (h!81954 (t!391404 l!14636))) (_2!38726 (h!81954 (t!391404 l!14636)))))))

(assert (=> b!8050128 (forall!18484 (toList!11899 (+!2651 acc!1298 (h!81954 l!14636))) lambda!472928)))

(declare-fun lt!2723996 () Unit!171290)

(assert (=> b!8050128 (= lt!2723996 lt!2724002)))

(assert (=> b!8050128 call!746825))

(declare-fun lt!2724007 () Unit!171290)

(declare-fun Unit!171316 () Unit!171290)

(assert (=> b!8050128 (= lt!2724007 Unit!171316)))

(declare-fun res!3182763 () Bool)

(assert (=> b!8050128 (= res!3182763 (forall!18484 (t!391404 l!14636) lambda!472928))))

(assert (=> b!8050128 (=> (not res!3182763) (not e!4743304))))

(assert (=> b!8050128 e!4743304))

(declare-fun lt!2724015 () Unit!171290)

(declare-fun Unit!171317 () Unit!171290)

(assert (=> b!8050128 (= lt!2724015 Unit!171317)))

(declare-fun b!8050129 () Bool)

(assert (=> b!8050129 (= e!4743306 (invariantList!1915 (toList!11899 lt!2723999)))))

(assert (= (and d!2397051 c!1475717) b!8050126))

(assert (= (and d!2397051 (not c!1475717)) b!8050128))

(assert (= (and b!8050128 res!3182763) b!8050125))

(assert (= (or b!8050126 b!8050128) bm!746821))

(assert (= (or b!8050126 b!8050128) bm!746822))

(assert (= (or b!8050126 b!8050128) bm!746820))

(assert (= (and d!2397051 res!3182764) b!8050127))

(assert (= (and b!8050127 res!3182765) b!8050129))

(declare-fun m!8401002 () Bool)

(assert (=> b!8050128 m!8401002))

(declare-fun m!8401004 () Bool)

(assert (=> b!8050128 m!8401004))

(declare-fun m!8401006 () Bool)

(assert (=> b!8050128 m!8401006))

(declare-fun m!8401008 () Bool)

(assert (=> b!8050128 m!8401008))

(declare-fun m!8401010 () Bool)

(assert (=> b!8050128 m!8401010))

(declare-fun m!8401012 () Bool)

(assert (=> b!8050128 m!8401012))

(declare-fun m!8401014 () Bool)

(assert (=> b!8050128 m!8401014))

(assert (=> b!8050128 m!8401008))

(declare-fun m!8401016 () Bool)

(assert (=> b!8050128 m!8401016))

(assert (=> b!8050128 m!8400900))

(declare-fun m!8401018 () Bool)

(assert (=> b!8050128 m!8401018))

(declare-fun m!8401020 () Bool)

(assert (=> b!8050128 m!8401020))

(assert (=> b!8050128 m!8400900))

(assert (=> b!8050128 m!8401002))

(declare-fun m!8401022 () Bool)

(assert (=> b!8050128 m!8401022))

(declare-fun m!8401024 () Bool)

(assert (=> bm!746822 m!8401024))

(declare-fun m!8401026 () Bool)

(assert (=> bm!746821 m!8401026))

(declare-fun m!8401028 () Bool)

(assert (=> d!2397051 m!8401028))

(declare-fun m!8401030 () Bool)

(assert (=> d!2397051 m!8401030))

(declare-fun m!8401032 () Bool)

(assert (=> b!8050127 m!8401032))

(assert (=> bm!746820 m!8400900))

(declare-fun m!8401034 () Bool)

(assert (=> bm!746820 m!8401034))

(assert (=> b!8050125 m!8401012))

(declare-fun m!8401036 () Bool)

(assert (=> b!8050129 m!8401036))

(assert (=> b!8050013 d!2397051))

(declare-fun d!2397053 () Bool)

(declare-fun e!4743313 () Bool)

(assert (=> d!2397053 e!4743313))

(declare-fun res!3182777 () Bool)

(assert (=> d!2397053 (=> (not res!3182777) (not e!4743313))))

(declare-fun lt!2724053 () ListMap!7249)

(assert (=> d!2397053 (= res!3182777 (contains!21149 lt!2724053 (_1!38726 (h!81954 l!14636))))))

(declare-fun lt!2724051 () List!75632)

(assert (=> d!2397053 (= lt!2724053 (ListMap!7250 lt!2724051))))

(declare-fun lt!2724054 () Unit!171290)

(declare-fun lt!2724052 () Unit!171290)

(assert (=> d!2397053 (= lt!2724054 lt!2724052)))

(assert (=> d!2397053 (= (getValueByKey!2764 lt!2724051 (_1!38726 (h!81954 l!14636))) (Some!17979 (_2!38726 (h!81954 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1260 (List!75632 K!22761 V!23015) Unit!171290)

(assert (=> d!2397053 (= lt!2724052 (lemmaContainsTupThenGetReturnValue!1260 lt!2724051 (_1!38726 (h!81954 l!14636)) (_2!38726 (h!81954 l!14636))))))

(declare-fun insertNoDuplicatedKeys!768 (List!75632 K!22761 V!23015) List!75632)

(assert (=> d!2397053 (= lt!2724051 (insertNoDuplicatedKeys!768 (toList!11899 acc!1298) (_1!38726 (h!81954 l!14636)) (_2!38726 (h!81954 l!14636))))))

(assert (=> d!2397053 (= (+!2651 acc!1298 (h!81954 l!14636)) lt!2724053)))

(declare-fun b!8050140 () Bool)

(declare-fun res!3182776 () Bool)

(assert (=> b!8050140 (=> (not res!3182776) (not e!4743313))))

(assert (=> b!8050140 (= res!3182776 (= (getValueByKey!2764 (toList!11899 lt!2724053) (_1!38726 (h!81954 l!14636))) (Some!17979 (_2!38726 (h!81954 l!14636)))))))

(declare-fun b!8050141 () Bool)

(assert (=> b!8050141 (= e!4743313 (contains!21148 (toList!11899 lt!2724053) (h!81954 l!14636)))))

(assert (= (and d!2397053 res!3182777) b!8050140))

(assert (= (and b!8050140 res!3182776) b!8050141))

(declare-fun m!8401038 () Bool)

(assert (=> d!2397053 m!8401038))

(declare-fun m!8401040 () Bool)

(assert (=> d!2397053 m!8401040))

(declare-fun m!8401042 () Bool)

(assert (=> d!2397053 m!8401042))

(declare-fun m!8401044 () Bool)

(assert (=> d!2397053 m!8401044))

(declare-fun m!8401046 () Bool)

(assert (=> b!8050140 m!8401046))

(declare-fun m!8401048 () Bool)

(assert (=> b!8050141 m!8401048))

(assert (=> b!8050013 d!2397053))

(declare-fun b!8050142 () Bool)

(declare-fun e!4743318 () List!75634)

(assert (=> b!8050142 (= e!4743318 (keys!30798 acc!1298))))

(declare-fun b!8050143 () Bool)

(assert (=> b!8050143 (= e!4743318 (getKeysList!1223 (toList!11899 acc!1298)))))

(declare-fun b!8050144 () Bool)

(declare-fun e!4743319 () Bool)

(declare-fun e!4743314 () Bool)

(assert (=> b!8050144 (= e!4743319 e!4743314)))

(declare-fun res!3182780 () Bool)

(assert (=> b!8050144 (=> (not res!3182780) (not e!4743314))))

(assert (=> b!8050144 (= res!3182780 (isDefined!14513 (getValueByKey!2764 (toList!11899 acc!1298) key!6222)))))

(declare-fun b!8050145 () Bool)

(assert (=> b!8050145 false))

(declare-fun lt!2724056 () Unit!171290)

(declare-fun lt!2724062 () Unit!171290)

(assert (=> b!8050145 (= lt!2724056 lt!2724062)))

(assert (=> b!8050145 (containsKey!4815 (toList!11899 acc!1298) key!6222)))

(assert (=> b!8050145 (= lt!2724062 (lemmaInGetKeysListThenContainsKey!1223 (toList!11899 acc!1298) key!6222))))

(declare-fun e!4743317 () Unit!171290)

(declare-fun Unit!171329 () Unit!171290)

(assert (=> b!8050145 (= e!4743317 Unit!171329)))

(declare-fun bm!746829 () Bool)

(declare-fun call!746834 () Bool)

(assert (=> bm!746829 (= call!746834 (contains!21152 e!4743318 key!6222))))

(declare-fun c!1475719 () Bool)

(declare-fun c!1475720 () Bool)

(assert (=> bm!746829 (= c!1475719 c!1475720)))

(declare-fun b!8050146 () Bool)

(declare-fun e!4743315 () Bool)

(assert (=> b!8050146 (= e!4743315 (not (contains!21152 (keys!30798 acc!1298) key!6222)))))

(declare-fun b!8050147 () Bool)

(declare-fun e!4743316 () Unit!171290)

(assert (=> b!8050147 (= e!4743316 e!4743317)))

(declare-fun c!1475718 () Bool)

(assert (=> b!8050147 (= c!1475718 call!746834)))

(declare-fun d!2397055 () Bool)

(assert (=> d!2397055 e!4743319))

(declare-fun res!3182779 () Bool)

(assert (=> d!2397055 (=> res!3182779 e!4743319)))

(assert (=> d!2397055 (= res!3182779 e!4743315)))

(declare-fun res!3182778 () Bool)

(assert (=> d!2397055 (=> (not res!3182778) (not e!4743315))))

(declare-fun lt!2724059 () Bool)

(assert (=> d!2397055 (= res!3182778 (not lt!2724059))))

(declare-fun lt!2724057 () Bool)

(assert (=> d!2397055 (= lt!2724059 lt!2724057)))

(declare-fun lt!2724060 () Unit!171290)

(assert (=> d!2397055 (= lt!2724060 e!4743316)))

(assert (=> d!2397055 (= c!1475720 lt!2724057)))

(assert (=> d!2397055 (= lt!2724057 (containsKey!4815 (toList!11899 acc!1298) key!6222))))

(assert (=> d!2397055 (= (contains!21149 acc!1298 key!6222) lt!2724059)))

(declare-fun b!8050148 () Bool)

(declare-fun lt!2724055 () Unit!171290)

(assert (=> b!8050148 (= e!4743316 lt!2724055)))

(declare-fun lt!2724061 () Unit!171290)

(assert (=> b!8050148 (= lt!2724061 (lemmaContainsKeyImpliesGetValueByKeyDefined!2535 (toList!11899 acc!1298) key!6222))))

(assert (=> b!8050148 (isDefined!14513 (getValueByKey!2764 (toList!11899 acc!1298) key!6222))))

(declare-fun lt!2724058 () Unit!171290)

(assert (=> b!8050148 (= lt!2724058 lt!2724061)))

(assert (=> b!8050148 (= lt!2724055 (lemmaInListThenGetKeysListContains!1218 (toList!11899 acc!1298) key!6222))))

(assert (=> b!8050148 call!746834))

(declare-fun b!8050149 () Bool)

(declare-fun Unit!171330 () Unit!171290)

(assert (=> b!8050149 (= e!4743317 Unit!171330)))

(declare-fun b!8050150 () Bool)

(assert (=> b!8050150 (= e!4743314 (contains!21152 (keys!30798 acc!1298) key!6222))))

(assert (= (and d!2397055 c!1475720) b!8050148))

(assert (= (and d!2397055 (not c!1475720)) b!8050147))

(assert (= (and b!8050147 c!1475718) b!8050145))

(assert (= (and b!8050147 (not c!1475718)) b!8050149))

(assert (= (or b!8050148 b!8050147) bm!746829))

(assert (= (and bm!746829 c!1475719) b!8050143))

(assert (= (and bm!746829 (not c!1475719)) b!8050142))

(assert (= (and d!2397055 res!3182778) b!8050146))

(assert (= (and d!2397055 (not res!3182779)) b!8050144))

(assert (= (and b!8050144 res!3182780) b!8050150))

(declare-fun m!8401050 () Bool)

(assert (=> b!8050146 m!8401050))

(assert (=> b!8050146 m!8401050))

(declare-fun m!8401052 () Bool)

(assert (=> b!8050146 m!8401052))

(declare-fun m!8401054 () Bool)

(assert (=> bm!746829 m!8401054))

(declare-fun m!8401056 () Bool)

(assert (=> b!8050148 m!8401056))

(declare-fun m!8401058 () Bool)

(assert (=> b!8050148 m!8401058))

(assert (=> b!8050148 m!8401058))

(declare-fun m!8401060 () Bool)

(assert (=> b!8050148 m!8401060))

(declare-fun m!8401062 () Bool)

(assert (=> b!8050148 m!8401062))

(declare-fun m!8401064 () Bool)

(assert (=> b!8050143 m!8401064))

(assert (=> b!8050150 m!8401050))

(assert (=> b!8050150 m!8401050))

(assert (=> b!8050150 m!8401052))

(assert (=> b!8050144 m!8401058))

(assert (=> b!8050144 m!8401058))

(assert (=> b!8050144 m!8401060))

(declare-fun m!8401066 () Bool)

(assert (=> b!8050145 m!8401066))

(declare-fun m!8401068 () Bool)

(assert (=> b!8050145 m!8401068))

(assert (=> d!2397055 m!8401066))

(assert (=> b!8050142 m!8401050))

(assert (=> b!8050015 d!2397055))

(declare-fun d!2397057 () Bool)

(declare-fun res!3182788 () Bool)

(declare-fun e!4743327 () Bool)

(assert (=> d!2397057 (=> res!3182788 e!4743327)))

(assert (=> d!2397057 (= res!3182788 (and (is-Cons!75506 l!14636) (= (_1!38726 (h!81954 l!14636)) key!6222)))))

(assert (=> d!2397057 (= (containsKey!4813 l!14636 key!6222) e!4743327)))

(declare-fun b!8050162 () Bool)

(declare-fun e!4743328 () Bool)

(assert (=> b!8050162 (= e!4743327 e!4743328)))

(declare-fun res!3182789 () Bool)

(assert (=> b!8050162 (=> (not res!3182789) (not e!4743328))))

(assert (=> b!8050162 (= res!3182789 (is-Cons!75506 l!14636))))

(declare-fun b!8050163 () Bool)

(assert (=> b!8050163 (= e!4743328 (containsKey!4813 (t!391404 l!14636) key!6222))))

(assert (= (and d!2397057 (not res!3182788)) b!8050162))

(assert (= (and b!8050162 res!3182789) b!8050163))

(declare-fun m!8401070 () Bool)

(assert (=> b!8050163 m!8401070))

(assert (=> b!8050014 d!2397057))

(declare-fun d!2397059 () Bool)

(declare-fun res!3182794 () Bool)

(declare-fun e!4743333 () Bool)

(assert (=> d!2397059 (=> res!3182794 e!4743333)))

(assert (=> d!2397059 (= res!3182794 (not (is-Cons!75506 l!14636)))))

(assert (=> d!2397059 (= (noDuplicateKeys!2685 l!14636) e!4743333)))

(declare-fun b!8050168 () Bool)

(declare-fun e!4743334 () Bool)

(assert (=> b!8050168 (= e!4743333 e!4743334)))

(declare-fun res!3182795 () Bool)

(assert (=> b!8050168 (=> (not res!3182795) (not e!4743334))))

(assert (=> b!8050168 (= res!3182795 (not (containsKey!4813 (t!391404 l!14636) (_1!38726 (h!81954 l!14636)))))))

(declare-fun b!8050169 () Bool)

(assert (=> b!8050169 (= e!4743334 (noDuplicateKeys!2685 (t!391404 l!14636)))))

(assert (= (and d!2397059 (not res!3182794)) b!8050168))

(assert (= (and b!8050168 res!3182795) b!8050169))

(declare-fun m!8401094 () Bool)

(assert (=> b!8050168 m!8401094))

(assert (=> b!8050169 m!8401030))

(assert (=> start!758076 d!2397059))

(declare-fun d!2397061 () Bool)

(assert (=> d!2397061 (= (inv!97251 acc!1298) (invariantList!1915 (toList!11899 acc!1298)))))

(declare-fun bs!1971877 () Bool)

(assert (= bs!1971877 d!2397061))

(declare-fun m!8401106 () Bool)

(assert (=> bs!1971877 m!8401106))

(assert (=> start!758076 d!2397061))

(declare-fun d!2397065 () Bool)

(declare-fun get!27188 (Option!17980) V!23015)

(assert (=> d!2397065 (= (apply!14412 acc!1298 key!6222) (get!27188 (getValueByKey!2764 (toList!11899 acc!1298) key!6222)))))

(declare-fun bs!1971878 () Bool)

(assert (= bs!1971878 d!2397065))

(assert (=> bs!1971878 m!8401058))

(assert (=> bs!1971878 m!8401058))

(declare-fun m!8401108 () Bool)

(assert (=> bs!1971878 m!8401108))

(assert (=> b!8050016 d!2397065))

(declare-fun d!2397067 () Bool)

(declare-fun lt!2724086 () Bool)

(declare-fun content!16089 (List!75632) (Set tuple2!70846))

(assert (=> d!2397067 (= lt!2724086 (set.member (tuple2!70847 key!6222 value!3131) (content!16089 l!14636)))))

(declare-fun e!4743340 () Bool)

(assert (=> d!2397067 (= lt!2724086 e!4743340)))

(declare-fun res!3182801 () Bool)

(assert (=> d!2397067 (=> (not res!3182801) (not e!4743340))))

(assert (=> d!2397067 (= res!3182801 (is-Cons!75506 l!14636))))

(assert (=> d!2397067 (= (contains!21148 l!14636 (tuple2!70847 key!6222 value!3131)) lt!2724086)))

(declare-fun b!8050174 () Bool)

(declare-fun e!4743339 () Bool)

(assert (=> b!8050174 (= e!4743340 e!4743339)))

(declare-fun res!3182800 () Bool)

(assert (=> b!8050174 (=> res!3182800 e!4743339)))

(assert (=> b!8050174 (= res!3182800 (= (h!81954 l!14636) (tuple2!70847 key!6222 value!3131)))))

(declare-fun b!8050175 () Bool)

(assert (=> b!8050175 (= e!4743339 (contains!21148 (t!391404 l!14636) (tuple2!70847 key!6222 value!3131)))))

(assert (= (and d!2397067 res!3182801) b!8050174))

(assert (= (and b!8050174 (not res!3182800)) b!8050175))

(declare-fun m!8401110 () Bool)

(assert (=> d!2397067 m!8401110))

(declare-fun m!8401112 () Bool)

(assert (=> d!2397067 m!8401112))

(assert (=> b!8050175 m!8400904))

(assert (=> b!8050011 d!2397067))

(assert (=> b!8050022 d!2397057))

(declare-fun d!2397069 () Bool)

(declare-fun lt!2724087 () Bool)

(assert (=> d!2397069 (= lt!2724087 (set.member (tuple2!70847 key!6222 value!3131) (content!16089 (t!391404 l!14636))))))

(declare-fun e!4743342 () Bool)

(assert (=> d!2397069 (= lt!2724087 e!4743342)))

(declare-fun res!3182803 () Bool)

(assert (=> d!2397069 (=> (not res!3182803) (not e!4743342))))

(assert (=> d!2397069 (= res!3182803 (is-Cons!75506 (t!391404 l!14636)))))

(assert (=> d!2397069 (= (contains!21148 (t!391404 l!14636) (tuple2!70847 key!6222 value!3131)) lt!2724087)))

(declare-fun b!8050176 () Bool)

(declare-fun e!4743341 () Bool)

(assert (=> b!8050176 (= e!4743342 e!4743341)))

(declare-fun res!3182802 () Bool)

(assert (=> b!8050176 (=> res!3182802 e!4743341)))

(assert (=> b!8050176 (= res!3182802 (= (h!81954 (t!391404 l!14636)) (tuple2!70847 key!6222 value!3131)))))

(declare-fun b!8050177 () Bool)

(assert (=> b!8050177 (= e!4743341 (contains!21148 (t!391404 (t!391404 l!14636)) (tuple2!70847 key!6222 value!3131)))))

(assert (= (and d!2397069 res!3182803) b!8050176))

(assert (= (and b!8050176 (not res!3182802)) b!8050177))

(declare-fun m!8401114 () Bool)

(assert (=> d!2397069 m!8401114))

(declare-fun m!8401116 () Bool)

(assert (=> d!2397069 m!8401116))

(declare-fun m!8401118 () Bool)

(assert (=> b!8050177 m!8401118))

(assert (=> b!8050017 d!2397069))

(declare-fun d!2397071 () Bool)

(assert (=> d!2397071 (not (contains!21148 (t!391404 l!14636) (tuple2!70847 key!6222 value!3131)))))

(declare-fun lt!2724090 () Unit!171290)

(declare-fun choose!60492 (List!75632 K!22761 V!23015) Unit!171290)

(assert (=> d!2397071 (= lt!2724090 (choose!60492 (t!391404 l!14636) key!6222 value!3131))))

(assert (=> d!2397071 (not (containsKey!4813 (t!391404 l!14636) key!6222))))

(assert (=> d!2397071 (= (lemmaNotContainsKeyThenCannotContainPair!13 (t!391404 l!14636) key!6222 value!3131) lt!2724090)))

(declare-fun bs!1971879 () Bool)

(assert (= bs!1971879 d!2397071))

(assert (=> bs!1971879 m!8400904))

(declare-fun m!8401120 () Bool)

(assert (=> bs!1971879 m!8401120))

(assert (=> bs!1971879 m!8401070))

(assert (=> b!8050017 d!2397071))

(declare-fun e!4743345 () Bool)

(declare-fun b!8050182 () Bool)

(declare-fun tp!2413544 () Bool)

(assert (=> b!8050182 (= e!4743345 (and tp_is_empty!54815 tp_is_empty!54817 tp!2413544))))

(assert (=> b!8050020 (= tp!2413535 e!4743345)))

(assert (= (and b!8050020 (is-Cons!75506 (toList!11899 acc!1298))) b!8050182))

(declare-fun e!4743346 () Bool)

(declare-fun tp!2413545 () Bool)

(declare-fun b!8050183 () Bool)

(assert (=> b!8050183 (= e!4743346 (and tp_is_empty!54815 tp_is_empty!54817 tp!2413545))))

(assert (=> b!8050021 (= tp!2413534 e!4743346)))

(assert (= (and b!8050021 (is-Cons!75506 (t!391404 l!14636))) b!8050183))

(push 1)

(assert (not d!2397049))

(assert (not bm!746822))

(assert (not b!8050098))

(assert (not bm!746819))

(assert (not b!8050095))

(assert (not bm!746810))

(assert (not b!8050101))

(assert (not bm!746817))

(assert (not bm!746818))

(assert (not b!8050129))

(assert (not b!8050143))

(assert (not b!8050163))

(assert (not d!2397055))

(assert (not b!8050168))

(assert (not b!8050122))

(assert (not b!8050169))

(assert (not b!8050177))

(assert (not b!8050141))

(assert (not d!2397053))

(assert (not b!8050183))

(assert (not bm!746821))

(assert (not d!2397035))

(assert (not b!8050097))

(assert (not b!8050099))

(assert (not bm!746829))

(assert (not b!8050148))

(assert (not d!2397071))

(assert (not b!8050120))

(assert tp_is_empty!54817)

(assert (not b!8050142))

(assert (not b!8050175))

(assert (not d!2397061))

(assert (not b!8050182))

(assert (not b!8050145))

(assert tp_is_empty!54815)

(assert (not d!2397065))

(assert (not d!2397067))

(assert (not b!8050150))

(assert (not b!8050144))

(assert (not b!8050096))

(assert (not b!8050127))

(assert (not b!8050125))

(assert (not b!8050103))

(assert (not bm!746820))

(assert (not b!8050140))

(assert (not d!2397051))

(assert (not b!8050118))

(assert (not b!8050146))

(assert (not d!2397069))

(assert (not b!8050121))

(assert (not b!8050128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

