; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!420638 () Bool)

(assert start!420638)

(declare-fun res!1788036 () Bool)

(declare-fun e!2708179 () Bool)

(assert (=> start!420638 (=> (not res!1788036) (not e!2708179))))

(declare-datatypes ((V!10494 0))(
  ( (V!10495 (val!16469 Int)) )
))
(declare-datatypes ((K!10248 0))(
  ( (K!10249 (val!16470 Int)) )
))
(declare-datatypes ((tuple2!48258 0))(
  ( (tuple2!48259 (_1!27423 K!10248) (_2!27423 V!10494)) )
))
(declare-datatypes ((List!49007 0))(
  ( (Nil!48883) (Cons!48883 (h!54420 tuple2!48258) (t!355927 List!49007)) )
))
(declare-datatypes ((tuple2!48260 0))(
  ( (tuple2!48261 (_1!27424 (_ BitVec 64)) (_2!27424 List!49007)) )
))
(declare-datatypes ((List!49008 0))(
  ( (Nil!48884) (Cons!48884 (h!54421 tuple2!48260) (t!355928 List!49008)) )
))
(declare-datatypes ((ListLongMap!1577 0))(
  ( (ListLongMap!1578 (toList!2927 List!49008)) )
))
(declare-fun lm!1707 () ListLongMap!1577)

(declare-fun lambda!139592 () Int)

(declare-fun forall!9086 (List!49008 Int) Bool)

(assert (=> start!420638 (= res!1788036 (forall!9086 (toList!2927 lm!1707) lambda!139592))))

(assert (=> start!420638 e!2708179))

(declare-fun e!2708182 () Bool)

(assert (=> start!420638 e!2708182))

(assert (=> start!420638 true))

(declare-fun e!2708183 () Bool)

(declare-fun inv!64435 (ListLongMap!1577) Bool)

(assert (=> start!420638 (and (inv!64435 lm!1707) e!2708183)))

(declare-fun tp_is_empty!25125 () Bool)

(assert (=> start!420638 tp_is_empty!25125))

(declare-fun tp_is_empty!25127 () Bool)

(assert (=> start!420638 tp_is_empty!25127))

(declare-fun b!4351931 () Bool)

(declare-fun tp!1329887 () Bool)

(assert (=> b!4351931 (= e!2708183 tp!1329887)))

(declare-fun b!4351932 () Bool)

(declare-fun res!1788042 () Bool)

(assert (=> b!4351932 (=> (not res!1788042) (not e!2708179))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4864 0))(
  ( (HashableExt!4863 (__x!30567 Int)) )
))
(declare-fun hashF!1247 () Hashable!4864)

(declare-fun key!3918 () K!10248)

(declare-fun hash!1491 (Hashable!4864 K!10248) (_ BitVec 64))

(assert (=> b!4351932 (= res!1788042 (= (hash!1491 hashF!1247 key!3918) hash!377))))

(declare-fun b!4351933 () Bool)

(declare-fun e!2708181 () Bool)

(declare-fun lt!1565343 () ListLongMap!1577)

(assert (=> b!4351933 (= e!2708181 (forall!9086 (toList!2927 lt!1565343) lambda!139592))))

(declare-fun b!4351934 () Bool)

(declare-fun e!2708180 () Bool)

(declare-fun e!2708184 () Bool)

(assert (=> b!4351934 (= e!2708180 e!2708184)))

(declare-fun res!1788034 () Bool)

(assert (=> b!4351934 (=> res!1788034 e!2708184)))

(assert (=> b!4351934 (= res!1788034 (or (and (is-Cons!48884 (toList!2927 lm!1707)) (= (_1!27424 (h!54421 (toList!2927 lm!1707))) hash!377)) (not (is-Cons!48884 (toList!2927 lm!1707))) (= (_1!27424 (h!54421 (toList!2927 lm!1707))) hash!377)))))

(assert (=> b!4351934 e!2708181))

(declare-fun res!1788032 () Bool)

(assert (=> b!4351934 (=> (not res!1788032) (not e!2708181))))

(assert (=> b!4351934 (= res!1788032 (forall!9086 (toList!2927 lt!1565343) lambda!139592))))

(declare-fun lt!1565338 () tuple2!48260)

(declare-fun +!601 (ListLongMap!1577 tuple2!48260) ListLongMap!1577)

(assert (=> b!4351934 (= lt!1565343 (+!601 lm!1707 lt!1565338))))

(declare-fun newBucket!200 () List!49007)

(assert (=> b!4351934 (= lt!1565338 (tuple2!48261 hash!377 newBucket!200))))

(declare-datatypes ((Unit!71185 0))(
  ( (Unit!71186) )
))
(declare-fun lt!1565344 () Unit!71185)

(declare-fun addValidProp!126 (ListLongMap!1577 Int (_ BitVec 64) List!49007) Unit!71185)

(assert (=> b!4351934 (= lt!1565344 (addValidProp!126 lm!1707 lambda!139592 hash!377 newBucket!200))))

(assert (=> b!4351934 (forall!9086 (toList!2927 lm!1707) lambda!139592)))

(declare-fun b!4351935 () Bool)

(declare-fun res!1788039 () Bool)

(assert (=> b!4351935 (=> (not res!1788039) (not e!2708179))))

(declare-datatypes ((ListMap!2171 0))(
  ( (ListMap!2172 (toList!2928 List!49007)) )
))
(declare-fun contains!11057 (ListMap!2171 K!10248) Bool)

(declare-fun extractMap!531 (List!49008) ListMap!2171)

(assert (=> b!4351935 (= res!1788039 (contains!11057 (extractMap!531 (toList!2927 lm!1707)) key!3918))))

(declare-fun b!4351936 () Bool)

(declare-fun res!1788037 () Bool)

(assert (=> b!4351936 (=> res!1788037 e!2708180)))

(declare-fun noDuplicateKeys!472 (List!49007) Bool)

(assert (=> b!4351936 (= res!1788037 (not (noDuplicateKeys!472 newBucket!200)))))

(declare-fun b!4351937 () Bool)

(declare-fun res!1788038 () Bool)

(assert (=> b!4351937 (=> (not res!1788038) (not e!2708179))))

(declare-fun allKeysSameHash!430 (List!49007 (_ BitVec 64) Hashable!4864) Bool)

(assert (=> b!4351937 (= res!1788038 (allKeysSameHash!430 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4351938 () Bool)

(assert (=> b!4351938 (= e!2708179 (not e!2708180))))

(declare-fun res!1788041 () Bool)

(assert (=> b!4351938 (=> res!1788041 e!2708180)))

(declare-fun lt!1565347 () List!49007)

(declare-fun lt!1565341 () tuple2!48258)

(declare-fun removePairForKey!442 (List!49007 K!10248) List!49007)

(assert (=> b!4351938 (= res!1788041 (not (= newBucket!200 (Cons!48883 lt!1565341 (removePairForKey!442 lt!1565347 key!3918)))))))

(declare-fun newValue!99 () V!10494)

(assert (=> b!4351938 (= lt!1565341 (tuple2!48259 key!3918 newValue!99))))

(declare-fun lt!1565339 () Unit!71185)

(declare-fun lt!1565334 () tuple2!48260)

(declare-fun forallContained!1734 (List!49008 Int tuple2!48260) Unit!71185)

(assert (=> b!4351938 (= lt!1565339 (forallContained!1734 (toList!2927 lm!1707) lambda!139592 lt!1565334))))

(declare-fun contains!11058 (List!49008 tuple2!48260) Bool)

(assert (=> b!4351938 (contains!11058 (toList!2927 lm!1707) lt!1565334)))

(assert (=> b!4351938 (= lt!1565334 (tuple2!48261 hash!377 lt!1565347))))

(declare-fun lt!1565337 () Unit!71185)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!319 (List!49008 (_ BitVec 64) List!49007) Unit!71185)

(assert (=> b!4351938 (= lt!1565337 (lemmaGetValueByKeyImpliesContainsTuple!319 (toList!2927 lm!1707) hash!377 lt!1565347))))

(declare-fun apply!11324 (ListLongMap!1577 (_ BitVec 64)) List!49007)

(assert (=> b!4351938 (= lt!1565347 (apply!11324 lm!1707 hash!377))))

(declare-fun b!4351939 () Bool)

(declare-fun lt!1565336 () ListLongMap!1577)

(assert (=> b!4351939 (= e!2708184 (forall!9086 (toList!2927 lt!1565336) lambda!139592))))

(declare-fun lt!1565345 () ListMap!2171)

(declare-fun eq!242 (ListMap!2171 ListMap!2171) Bool)

(declare-fun +!602 (ListMap!2171 tuple2!48258) ListMap!2171)

(assert (=> b!4351939 (eq!242 (extractMap!531 (toList!2927 lt!1565336)) (+!602 lt!1565345 lt!1565341))))

(declare-fun lt!1565346 () ListLongMap!1577)

(assert (=> b!4351939 (= lt!1565336 (+!601 lt!1565346 lt!1565338))))

(declare-fun lt!1565335 () Unit!71185)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!76 (ListLongMap!1577 (_ BitVec 64) List!49007 K!10248 V!10494 Hashable!4864) Unit!71185)

(assert (=> b!4351939 (= lt!1565335 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!76 lt!1565346 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4351939 (contains!11057 lt!1565345 key!3918)))

(assert (=> b!4351939 (= lt!1565345 (extractMap!531 (toList!2927 lt!1565346)))))

(declare-fun tail!6966 (ListLongMap!1577) ListLongMap!1577)

(assert (=> b!4351939 (= lt!1565346 (tail!6966 lm!1707))))

(declare-fun lt!1565342 () ListMap!2171)

(assert (=> b!4351939 (contains!11057 lt!1565342 key!3918)))

(declare-fun lt!1565340 () Unit!71185)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!15 (List!49007 K!10248 V!10494 ListMap!2171) Unit!71185)

(assert (=> b!4351939 (= lt!1565340 (lemmaAddToMapContainsAndNotInListThenInAcc!15 (_2!27424 (h!54421 (toList!2927 lm!1707))) key!3918 newValue!99 lt!1565342))))

(assert (=> b!4351939 (= lt!1565342 (extractMap!531 (t!355928 (toList!2927 lm!1707))))))

(declare-fun e!2708185 () Bool)

(assert (=> b!4351939 e!2708185))

(declare-fun res!1788033 () Bool)

(assert (=> b!4351939 (=> (not res!1788033) (not e!2708185))))

(declare-fun containsKey!647 (List!49007 K!10248) Bool)

(assert (=> b!4351939 (= res!1788033 (not (containsKey!647 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707)))) key!3918)))))

(declare-fun lt!1565333 () Unit!71185)

(declare-fun lemmaNotSameHashThenCannotContainKey!19 (ListLongMap!1577 K!10248 (_ BitVec 64) Hashable!4864) Unit!71185)

(assert (=> b!4351939 (= lt!1565333 (lemmaNotSameHashThenCannotContainKey!19 lm!1707 key!3918 (_1!27424 (h!54421 (toList!2927 lm!1707))) hashF!1247))))

(declare-fun b!4351940 () Bool)

(declare-fun tp!1329888 () Bool)

(assert (=> b!4351940 (= e!2708182 (and tp_is_empty!25125 tp_is_empty!25127 tp!1329888))))

(declare-fun b!4351941 () Bool)

(declare-fun res!1788035 () Bool)

(assert (=> b!4351941 (=> (not res!1788035) (not e!2708179))))

(declare-fun contains!11059 (ListLongMap!1577 (_ BitVec 64)) Bool)

(assert (=> b!4351941 (= res!1788035 (contains!11059 lm!1707 hash!377))))

(declare-fun b!4351942 () Bool)

(assert (=> b!4351942 (= e!2708185 (not (containsKey!647 (_2!27424 (h!54421 (toList!2927 lm!1707))) key!3918)))))

(declare-fun b!4351943 () Bool)

(declare-fun res!1788040 () Bool)

(assert (=> b!4351943 (=> (not res!1788040) (not e!2708179))))

(declare-fun allKeysSameHashInMap!576 (ListLongMap!1577 Hashable!4864) Bool)

(assert (=> b!4351943 (= res!1788040 (allKeysSameHashInMap!576 lm!1707 hashF!1247))))

(assert (= (and start!420638 res!1788036) b!4351943))

(assert (= (and b!4351943 res!1788040) b!4351932))

(assert (= (and b!4351932 res!1788042) b!4351937))

(assert (= (and b!4351937 res!1788038) b!4351935))

(assert (= (and b!4351935 res!1788039) b!4351941))

(assert (= (and b!4351941 res!1788035) b!4351938))

(assert (= (and b!4351938 (not res!1788041)) b!4351936))

(assert (= (and b!4351936 (not res!1788037)) b!4351934))

(assert (= (and b!4351934 res!1788032) b!4351933))

(assert (= (and b!4351934 (not res!1788034)) b!4351939))

(assert (= (and b!4351939 res!1788033) b!4351942))

(assert (= (and start!420638 (is-Cons!48883 newBucket!200)) b!4351940))

(assert (= start!420638 b!4351931))

(declare-fun m!4962893 () Bool)

(assert (=> b!4351941 m!4962893))

(declare-fun m!4962895 () Bool)

(assert (=> b!4351942 m!4962895))

(declare-fun m!4962897 () Bool)

(assert (=> b!4351933 m!4962897))

(assert (=> b!4351934 m!4962897))

(declare-fun m!4962899 () Bool)

(assert (=> b!4351934 m!4962899))

(declare-fun m!4962901 () Bool)

(assert (=> b!4351934 m!4962901))

(declare-fun m!4962903 () Bool)

(assert (=> b!4351934 m!4962903))

(assert (=> start!420638 m!4962903))

(declare-fun m!4962905 () Bool)

(assert (=> start!420638 m!4962905))

(declare-fun m!4962907 () Bool)

(assert (=> b!4351932 m!4962907))

(declare-fun m!4962909 () Bool)

(assert (=> b!4351938 m!4962909))

(declare-fun m!4962911 () Bool)

(assert (=> b!4351938 m!4962911))

(declare-fun m!4962913 () Bool)

(assert (=> b!4351938 m!4962913))

(declare-fun m!4962915 () Bool)

(assert (=> b!4351938 m!4962915))

(declare-fun m!4962917 () Bool)

(assert (=> b!4351938 m!4962917))

(declare-fun m!4962919 () Bool)

(assert (=> b!4351936 m!4962919))

(declare-fun m!4962921 () Bool)

(assert (=> b!4351937 m!4962921))

(declare-fun m!4962923 () Bool)

(assert (=> b!4351939 m!4962923))

(declare-fun m!4962925 () Bool)

(assert (=> b!4351939 m!4962925))

(declare-fun m!4962927 () Bool)

(assert (=> b!4351939 m!4962927))

(declare-fun m!4962929 () Bool)

(assert (=> b!4351939 m!4962929))

(declare-fun m!4962931 () Bool)

(assert (=> b!4351939 m!4962931))

(declare-fun m!4962933 () Bool)

(assert (=> b!4351939 m!4962933))

(declare-fun m!4962935 () Bool)

(assert (=> b!4351939 m!4962935))

(declare-fun m!4962937 () Bool)

(assert (=> b!4351939 m!4962937))

(declare-fun m!4962939 () Bool)

(assert (=> b!4351939 m!4962939))

(declare-fun m!4962941 () Bool)

(assert (=> b!4351939 m!4962941))

(assert (=> b!4351939 m!4962929))

(declare-fun m!4962943 () Bool)

(assert (=> b!4351939 m!4962943))

(declare-fun m!4962945 () Bool)

(assert (=> b!4351939 m!4962945))

(declare-fun m!4962947 () Bool)

(assert (=> b!4351939 m!4962947))

(assert (=> b!4351939 m!4962947))

(declare-fun m!4962949 () Bool)

(assert (=> b!4351939 m!4962949))

(assert (=> b!4351939 m!4962931))

(declare-fun m!4962951 () Bool)

(assert (=> b!4351939 m!4962951))

(declare-fun m!4962953 () Bool)

(assert (=> b!4351935 m!4962953))

(assert (=> b!4351935 m!4962953))

(declare-fun m!4962955 () Bool)

(assert (=> b!4351935 m!4962955))

(declare-fun m!4962957 () Bool)

(assert (=> b!4351943 m!4962957))

(push 1)

(assert (not b!4351937))

(assert (not b!4351941))

(assert (not b!4351942))

(assert tp_is_empty!25125)

(assert (not b!4351932))

(assert (not start!420638))

(assert (not b!4351943))

(assert (not b!4351940))

(assert (not b!4351934))

(assert (not b!4351936))

(assert (not b!4351931))

(assert (not b!4351933))

(assert (not b!4351938))

(assert (not b!4351939))

(assert tp_is_empty!25127)

(assert (not b!4351935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1285686 () Bool)

(declare-datatypes ((Option!10438 0))(
  ( (None!10437) (Some!10437 (v!43271 List!49007)) )
))
(declare-fun get!15872 (Option!10438) List!49007)

(declare-fun getValueByKey!424 (List!49008 (_ BitVec 64)) Option!10438)

(assert (=> d!1285686 (= (apply!11324 lm!1707 hash!377) (get!15872 (getValueByKey!424 (toList!2927 lm!1707) hash!377)))))

(declare-fun bs!629532 () Bool)

(assert (= bs!629532 d!1285686))

(declare-fun m!4963025 () Bool)

(assert (=> bs!629532 m!4963025))

(assert (=> bs!629532 m!4963025))

(declare-fun m!4963027 () Bool)

(assert (=> bs!629532 m!4963027))

(assert (=> b!4351938 d!1285686))

(declare-fun d!1285688 () Bool)

(declare-fun lt!1565395 () Bool)

(declare-fun content!7687 (List!49008) (Set tuple2!48260))

(assert (=> d!1285688 (= lt!1565395 (set.member lt!1565334 (content!7687 (toList!2927 lm!1707))))))

(declare-fun e!2708211 () Bool)

(assert (=> d!1285688 (= lt!1565395 e!2708211)))

(declare-fun res!1788081 () Bool)

(assert (=> d!1285688 (=> (not res!1788081) (not e!2708211))))

(assert (=> d!1285688 (= res!1788081 (is-Cons!48884 (toList!2927 lm!1707)))))

(assert (=> d!1285688 (= (contains!11058 (toList!2927 lm!1707) lt!1565334) lt!1565395)))

(declare-fun b!4351987 () Bool)

(declare-fun e!2708212 () Bool)

(assert (=> b!4351987 (= e!2708211 e!2708212)))

(declare-fun res!1788080 () Bool)

(assert (=> b!4351987 (=> res!1788080 e!2708212)))

(assert (=> b!4351987 (= res!1788080 (= (h!54421 (toList!2927 lm!1707)) lt!1565334))))

(declare-fun b!4351988 () Bool)

(assert (=> b!4351988 (= e!2708212 (contains!11058 (t!355928 (toList!2927 lm!1707)) lt!1565334))))

(assert (= (and d!1285688 res!1788081) b!4351987))

(assert (= (and b!4351987 (not res!1788080)) b!4351988))

(declare-fun m!4963029 () Bool)

(assert (=> d!1285688 m!4963029))

(declare-fun m!4963031 () Bool)

(assert (=> d!1285688 m!4963031))

(declare-fun m!4963033 () Bool)

(assert (=> b!4351988 m!4963033))

(assert (=> b!4351938 d!1285688))

(declare-fun b!4351999 () Bool)

(declare-fun e!2708217 () List!49007)

(assert (=> b!4351999 (= e!2708217 (Cons!48883 (h!54420 lt!1565347) (removePairForKey!442 (t!355927 lt!1565347) key!3918)))))

(declare-fun d!1285690 () Bool)

(declare-fun lt!1565398 () List!49007)

(assert (=> d!1285690 (not (containsKey!647 lt!1565398 key!3918))))

(declare-fun e!2708218 () List!49007)

(assert (=> d!1285690 (= lt!1565398 e!2708218)))

(declare-fun c!739845 () Bool)

(assert (=> d!1285690 (= c!739845 (and (is-Cons!48883 lt!1565347) (= (_1!27423 (h!54420 lt!1565347)) key!3918)))))

(assert (=> d!1285690 (noDuplicateKeys!472 lt!1565347)))

(assert (=> d!1285690 (= (removePairForKey!442 lt!1565347 key!3918) lt!1565398)))

(declare-fun b!4351997 () Bool)

(assert (=> b!4351997 (= e!2708218 (t!355927 lt!1565347))))

(declare-fun b!4352000 () Bool)

(assert (=> b!4352000 (= e!2708217 Nil!48883)))

(declare-fun b!4351998 () Bool)

(assert (=> b!4351998 (= e!2708218 e!2708217)))

(declare-fun c!739846 () Bool)

(assert (=> b!4351998 (= c!739846 (is-Cons!48883 lt!1565347))))

(assert (= (and d!1285690 c!739845) b!4351997))

(assert (= (and d!1285690 (not c!739845)) b!4351998))

(assert (= (and b!4351998 c!739846) b!4351999))

(assert (= (and b!4351998 (not c!739846)) b!4352000))

(declare-fun m!4963035 () Bool)

(assert (=> b!4351999 m!4963035))

(declare-fun m!4963037 () Bool)

(assert (=> d!1285690 m!4963037))

(declare-fun m!4963039 () Bool)

(assert (=> d!1285690 m!4963039))

(assert (=> b!4351938 d!1285690))

(declare-fun d!1285692 () Bool)

(assert (=> d!1285692 (contains!11058 (toList!2927 lm!1707) (tuple2!48261 hash!377 lt!1565347))))

(declare-fun lt!1565401 () Unit!71185)

(declare-fun choose!26787 (List!49008 (_ BitVec 64) List!49007) Unit!71185)

(assert (=> d!1285692 (= lt!1565401 (choose!26787 (toList!2927 lm!1707) hash!377 lt!1565347))))

(declare-fun e!2708221 () Bool)

(assert (=> d!1285692 e!2708221))

(declare-fun res!1788084 () Bool)

(assert (=> d!1285692 (=> (not res!1788084) (not e!2708221))))

(declare-fun isStrictlySorted!89 (List!49008) Bool)

(assert (=> d!1285692 (= res!1788084 (isStrictlySorted!89 (toList!2927 lm!1707)))))

(assert (=> d!1285692 (= (lemmaGetValueByKeyImpliesContainsTuple!319 (toList!2927 lm!1707) hash!377 lt!1565347) lt!1565401)))

(declare-fun b!4352003 () Bool)

(assert (=> b!4352003 (= e!2708221 (= (getValueByKey!424 (toList!2927 lm!1707) hash!377) (Some!10437 lt!1565347)))))

(assert (= (and d!1285692 res!1788084) b!4352003))

(declare-fun m!4963041 () Bool)

(assert (=> d!1285692 m!4963041))

(declare-fun m!4963043 () Bool)

(assert (=> d!1285692 m!4963043))

(declare-fun m!4963045 () Bool)

(assert (=> d!1285692 m!4963045))

(assert (=> b!4352003 m!4963025))

(assert (=> b!4351938 d!1285692))

(declare-fun d!1285696 () Bool)

(declare-fun dynLambda!20616 (Int tuple2!48260) Bool)

(assert (=> d!1285696 (dynLambda!20616 lambda!139592 lt!1565334)))

(declare-fun lt!1565404 () Unit!71185)

(declare-fun choose!26788 (List!49008 Int tuple2!48260) Unit!71185)

(assert (=> d!1285696 (= lt!1565404 (choose!26788 (toList!2927 lm!1707) lambda!139592 lt!1565334))))

(declare-fun e!2708224 () Bool)

(assert (=> d!1285696 e!2708224))

(declare-fun res!1788087 () Bool)

(assert (=> d!1285696 (=> (not res!1788087) (not e!2708224))))

(assert (=> d!1285696 (= res!1788087 (forall!9086 (toList!2927 lm!1707) lambda!139592))))

(assert (=> d!1285696 (= (forallContained!1734 (toList!2927 lm!1707) lambda!139592 lt!1565334) lt!1565404)))

(declare-fun b!4352010 () Bool)

(assert (=> b!4352010 (= e!2708224 (contains!11058 (toList!2927 lm!1707) lt!1565334))))

(assert (= (and d!1285696 res!1788087) b!4352010))

(declare-fun b_lambda!130667 () Bool)

(assert (=> (not b_lambda!130667) (not d!1285696)))

(declare-fun m!4963049 () Bool)

(assert (=> d!1285696 m!4963049))

(declare-fun m!4963051 () Bool)

(assert (=> d!1285696 m!4963051))

(assert (=> d!1285696 m!4962903))

(assert (=> b!4352010 m!4962917))

(assert (=> b!4351938 d!1285696))

(declare-fun d!1285700 () Bool)

(assert (=> d!1285700 (= (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707)))) (get!15872 (getValueByKey!424 (toList!2927 lm!1707) (_1!27424 (h!54421 (toList!2927 lm!1707))))))))

(declare-fun bs!629534 () Bool)

(assert (= bs!629534 d!1285700))

(declare-fun m!4963053 () Bool)

(assert (=> bs!629534 m!4963053))

(assert (=> bs!629534 m!4963053))

(declare-fun m!4963055 () Bool)

(assert (=> bs!629534 m!4963055))

(assert (=> b!4351939 d!1285700))

(declare-fun bs!629535 () Bool)

(declare-fun d!1285702 () Bool)

(assert (= bs!629535 (and d!1285702 start!420638)))

(declare-fun lambda!139611 () Int)

(assert (=> bs!629535 (= lambda!139611 lambda!139592)))

(assert (=> d!1285702 (eq!242 (extractMap!531 (toList!2927 (+!601 lt!1565346 (tuple2!48261 hash!377 newBucket!200)))) (+!602 (extractMap!531 (toList!2927 lt!1565346)) (tuple2!48259 key!3918 newValue!99)))))

(declare-fun lt!1565407 () Unit!71185)

(declare-fun choose!26789 (ListLongMap!1577 (_ BitVec 64) List!49007 K!10248 V!10494 Hashable!4864) Unit!71185)

(assert (=> d!1285702 (= lt!1565407 (choose!26789 lt!1565346 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1285702 (forall!9086 (toList!2927 lt!1565346) lambda!139611)))

(assert (=> d!1285702 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!76 lt!1565346 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1565407)))

(declare-fun bs!629536 () Bool)

(assert (= bs!629536 d!1285702))

(declare-fun m!4963061 () Bool)

(assert (=> bs!629536 m!4963061))

(declare-fun m!4963063 () Bool)

(assert (=> bs!629536 m!4963063))

(declare-fun m!4963065 () Bool)

(assert (=> bs!629536 m!4963065))

(assert (=> bs!629536 m!4962923))

(declare-fun m!4963067 () Bool)

(assert (=> bs!629536 m!4963067))

(declare-fun m!4963069 () Bool)

(assert (=> bs!629536 m!4963069))

(assert (=> bs!629536 m!4963065))

(assert (=> bs!629536 m!4963067))

(declare-fun m!4963071 () Bool)

(assert (=> bs!629536 m!4963071))

(assert (=> bs!629536 m!4962923))

(assert (=> b!4351939 d!1285702))

(declare-fun d!1285706 () Bool)

(assert (=> d!1285706 (contains!11057 lt!1565342 key!3918)))

(declare-fun lt!1565418 () Unit!71185)

(declare-fun choose!26790 (List!49007 K!10248 V!10494 ListMap!2171) Unit!71185)

(assert (=> d!1285706 (= lt!1565418 (choose!26790 (_2!27424 (h!54421 (toList!2927 lm!1707))) key!3918 newValue!99 lt!1565342))))

(assert (=> d!1285706 (noDuplicateKeys!472 (_2!27424 (h!54421 (toList!2927 lm!1707))))))

(assert (=> d!1285706 (= (lemmaAddToMapContainsAndNotInListThenInAcc!15 (_2!27424 (h!54421 (toList!2927 lm!1707))) key!3918 newValue!99 lt!1565342) lt!1565418)))

(declare-fun bs!629537 () Bool)

(assert (= bs!629537 d!1285706))

(assert (=> bs!629537 m!4962927))

(declare-fun m!4963073 () Bool)

(assert (=> bs!629537 m!4963073))

(declare-fun m!4963075 () Bool)

(assert (=> bs!629537 m!4963075))

(assert (=> b!4351939 d!1285706))

(declare-fun d!1285708 () Bool)

(declare-fun res!1788102 () Bool)

(declare-fun e!2708237 () Bool)

(assert (=> d!1285708 (=> res!1788102 e!2708237)))

(assert (=> d!1285708 (= res!1788102 (is-Nil!48884 (toList!2927 lt!1565336)))))

(assert (=> d!1285708 (= (forall!9086 (toList!2927 lt!1565336) lambda!139592) e!2708237)))

(declare-fun b!4352025 () Bool)

(declare-fun e!2708238 () Bool)

(assert (=> b!4352025 (= e!2708237 e!2708238)))

(declare-fun res!1788103 () Bool)

(assert (=> b!4352025 (=> (not res!1788103) (not e!2708238))))

(assert (=> b!4352025 (= res!1788103 (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lt!1565336))))))

(declare-fun b!4352026 () Bool)

(assert (=> b!4352026 (= e!2708238 (forall!9086 (t!355928 (toList!2927 lt!1565336)) lambda!139592))))

(assert (= (and d!1285708 (not res!1788102)) b!4352025))

(assert (= (and b!4352025 res!1788103) b!4352026))

(declare-fun b_lambda!130671 () Bool)

(assert (=> (not b_lambda!130671) (not b!4352025)))

(declare-fun m!4963077 () Bool)

(assert (=> b!4352025 m!4963077))

(declare-fun m!4963079 () Bool)

(assert (=> b!4352026 m!4963079))

(assert (=> b!4351939 d!1285708))

(declare-fun bs!629538 () Bool)

(declare-fun d!1285710 () Bool)

(assert (= bs!629538 (and d!1285710 start!420638)))

(declare-fun lambda!139614 () Int)

(assert (=> bs!629538 (= lambda!139614 lambda!139592)))

(declare-fun bs!629539 () Bool)

(assert (= bs!629539 (and d!1285710 d!1285702)))

(assert (=> bs!629539 (= lambda!139614 lambda!139611)))

(declare-fun lt!1565425 () ListMap!2171)

(declare-fun invariantList!663 (List!49007) Bool)

(assert (=> d!1285710 (invariantList!663 (toList!2928 lt!1565425))))

(declare-fun e!2708242 () ListMap!2171)

(assert (=> d!1285710 (= lt!1565425 e!2708242)))

(declare-fun c!739849 () Bool)

(assert (=> d!1285710 (= c!739849 (is-Cons!48884 (toList!2927 lt!1565346)))))

(assert (=> d!1285710 (forall!9086 (toList!2927 lt!1565346) lambda!139614)))

(assert (=> d!1285710 (= (extractMap!531 (toList!2927 lt!1565346)) lt!1565425)))

(declare-fun b!4352033 () Bool)

(declare-fun addToMapMapFromBucket!170 (List!49007 ListMap!2171) ListMap!2171)

(assert (=> b!4352033 (= e!2708242 (addToMapMapFromBucket!170 (_2!27424 (h!54421 (toList!2927 lt!1565346))) (extractMap!531 (t!355928 (toList!2927 lt!1565346)))))))

(declare-fun b!4352034 () Bool)

(assert (=> b!4352034 (= e!2708242 (ListMap!2172 Nil!48883))))

(assert (= (and d!1285710 c!739849) b!4352033))

(assert (= (and d!1285710 (not c!739849)) b!4352034))

(declare-fun m!4963093 () Bool)

(assert (=> d!1285710 m!4963093))

(declare-fun m!4963095 () Bool)

(assert (=> d!1285710 m!4963095))

(declare-fun m!4963097 () Bool)

(assert (=> b!4352033 m!4963097))

(assert (=> b!4352033 m!4963097))

(declare-fun m!4963099 () Bool)

(assert (=> b!4352033 m!4963099))

(assert (=> b!4351939 d!1285710))

(declare-fun d!1285714 () Bool)

(declare-fun e!2708250 () Bool)

(assert (=> d!1285714 e!2708250))

(declare-fun res!1788115 () Bool)

(assert (=> d!1285714 (=> (not res!1788115) (not e!2708250))))

(declare-fun lt!1565440 () ListMap!2171)

(assert (=> d!1285714 (= res!1788115 (contains!11057 lt!1565440 (_1!27423 lt!1565341)))))

(declare-fun lt!1565437 () List!49007)

(assert (=> d!1285714 (= lt!1565440 (ListMap!2172 lt!1565437))))

(declare-fun lt!1565439 () Unit!71185)

(declare-fun lt!1565438 () Unit!71185)

(assert (=> d!1285714 (= lt!1565439 lt!1565438)))

(declare-datatypes ((Option!10439 0))(
  ( (None!10438) (Some!10438 (v!43272 V!10494)) )
))
(declare-fun getValueByKey!425 (List!49007 K!10248) Option!10439)

(assert (=> d!1285714 (= (getValueByKey!425 lt!1565437 (_1!27423 lt!1565341)) (Some!10438 (_2!27423 lt!1565341)))))

(declare-fun lemmaContainsTupThenGetReturnValue!199 (List!49007 K!10248 V!10494) Unit!71185)

(assert (=> d!1285714 (= lt!1565438 (lemmaContainsTupThenGetReturnValue!199 lt!1565437 (_1!27423 lt!1565341) (_2!27423 lt!1565341)))))

(declare-fun insertNoDuplicatedKeys!88 (List!49007 K!10248 V!10494) List!49007)

(assert (=> d!1285714 (= lt!1565437 (insertNoDuplicatedKeys!88 (toList!2928 lt!1565345) (_1!27423 lt!1565341) (_2!27423 lt!1565341)))))

(assert (=> d!1285714 (= (+!602 lt!1565345 lt!1565341) lt!1565440)))

(declare-fun b!4352045 () Bool)

(declare-fun res!1788116 () Bool)

(assert (=> b!4352045 (=> (not res!1788116) (not e!2708250))))

(assert (=> b!4352045 (= res!1788116 (= (getValueByKey!425 (toList!2928 lt!1565440) (_1!27423 lt!1565341)) (Some!10438 (_2!27423 lt!1565341))))))

(declare-fun b!4352046 () Bool)

(declare-fun contains!11063 (List!49007 tuple2!48258) Bool)

(assert (=> b!4352046 (= e!2708250 (contains!11063 (toList!2928 lt!1565440) lt!1565341))))

(assert (= (and d!1285714 res!1788115) b!4352045))

(assert (= (and b!4352045 res!1788116) b!4352046))

(declare-fun m!4963113 () Bool)

(assert (=> d!1285714 m!4963113))

(declare-fun m!4963115 () Bool)

(assert (=> d!1285714 m!4963115))

(declare-fun m!4963117 () Bool)

(assert (=> d!1285714 m!4963117))

(declare-fun m!4963119 () Bool)

(assert (=> d!1285714 m!4963119))

(declare-fun m!4963121 () Bool)

(assert (=> b!4352045 m!4963121))

(declare-fun m!4963123 () Bool)

(assert (=> b!4352046 m!4963123))

(assert (=> b!4351939 d!1285714))

(declare-fun d!1285720 () Bool)

(declare-fun tail!6968 (List!49008) List!49008)

(assert (=> d!1285720 (= (tail!6966 lm!1707) (ListLongMap!1578 (tail!6968 (toList!2927 lm!1707))))))

(declare-fun bs!629540 () Bool)

(assert (= bs!629540 d!1285720))

(declare-fun m!4963125 () Bool)

(assert (=> bs!629540 m!4963125))

(assert (=> b!4351939 d!1285720))

(declare-fun d!1285722 () Bool)

(declare-fun content!7688 (List!49007) (Set tuple2!48258))

(assert (=> d!1285722 (= (eq!242 (extractMap!531 (toList!2927 lt!1565336)) (+!602 lt!1565345 lt!1565341)) (= (content!7688 (toList!2928 (extractMap!531 (toList!2927 lt!1565336)))) (content!7688 (toList!2928 (+!602 lt!1565345 lt!1565341)))))))

(declare-fun bs!629541 () Bool)

(assert (= bs!629541 d!1285722))

(declare-fun m!4963127 () Bool)

(assert (=> bs!629541 m!4963127))

(declare-fun m!4963129 () Bool)

(assert (=> bs!629541 m!4963129))

(assert (=> b!4351939 d!1285722))

(declare-fun bs!629542 () Bool)

(declare-fun d!1285724 () Bool)

(assert (= bs!629542 (and d!1285724 start!420638)))

(declare-fun lambda!139615 () Int)

(assert (=> bs!629542 (= lambda!139615 lambda!139592)))

(declare-fun bs!629543 () Bool)

(assert (= bs!629543 (and d!1285724 d!1285702)))

(assert (=> bs!629543 (= lambda!139615 lambda!139611)))

(declare-fun bs!629544 () Bool)

(assert (= bs!629544 (and d!1285724 d!1285710)))

(assert (=> bs!629544 (= lambda!139615 lambda!139614)))

(declare-fun lt!1565441 () ListMap!2171)

(assert (=> d!1285724 (invariantList!663 (toList!2928 lt!1565441))))

(declare-fun e!2708251 () ListMap!2171)

(assert (=> d!1285724 (= lt!1565441 e!2708251)))

(declare-fun c!739850 () Bool)

(assert (=> d!1285724 (= c!739850 (is-Cons!48884 (t!355928 (toList!2927 lm!1707))))))

(assert (=> d!1285724 (forall!9086 (t!355928 (toList!2927 lm!1707)) lambda!139615)))

(assert (=> d!1285724 (= (extractMap!531 (t!355928 (toList!2927 lm!1707))) lt!1565441)))

(declare-fun b!4352047 () Bool)

(assert (=> b!4352047 (= e!2708251 (addToMapMapFromBucket!170 (_2!27424 (h!54421 (t!355928 (toList!2927 lm!1707)))) (extractMap!531 (t!355928 (t!355928 (toList!2927 lm!1707))))))))

(declare-fun b!4352048 () Bool)

(assert (=> b!4352048 (= e!2708251 (ListMap!2172 Nil!48883))))

(assert (= (and d!1285724 c!739850) b!4352047))

(assert (= (and d!1285724 (not c!739850)) b!4352048))

(declare-fun m!4963131 () Bool)

(assert (=> d!1285724 m!4963131))

(declare-fun m!4963133 () Bool)

(assert (=> d!1285724 m!4963133))

(declare-fun m!4963135 () Bool)

(assert (=> b!4352047 m!4963135))

(assert (=> b!4352047 m!4963135))

(declare-fun m!4963137 () Bool)

(assert (=> b!4352047 m!4963137))

(assert (=> b!4351939 d!1285724))

(declare-fun bs!629545 () Bool)

(declare-fun d!1285726 () Bool)

(assert (= bs!629545 (and d!1285726 start!420638)))

(declare-fun lambda!139618 () Int)

(assert (=> bs!629545 (= lambda!139618 lambda!139592)))

(declare-fun bs!629546 () Bool)

(assert (= bs!629546 (and d!1285726 d!1285702)))

(assert (=> bs!629546 (= lambda!139618 lambda!139611)))

(declare-fun bs!629547 () Bool)

(assert (= bs!629547 (and d!1285726 d!1285710)))

(assert (=> bs!629547 (= lambda!139618 lambda!139614)))

(declare-fun bs!629548 () Bool)

(assert (= bs!629548 (and d!1285726 d!1285724)))

(assert (=> bs!629548 (= lambda!139618 lambda!139615)))

(assert (=> d!1285726 (not (containsKey!647 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707)))) key!3918))))

(declare-fun lt!1565444 () Unit!71185)

(declare-fun choose!26791 (ListLongMap!1577 K!10248 (_ BitVec 64) Hashable!4864) Unit!71185)

(assert (=> d!1285726 (= lt!1565444 (choose!26791 lm!1707 key!3918 (_1!27424 (h!54421 (toList!2927 lm!1707))) hashF!1247))))

(assert (=> d!1285726 (forall!9086 (toList!2927 lm!1707) lambda!139618)))

(assert (=> d!1285726 (= (lemmaNotSameHashThenCannotContainKey!19 lm!1707 key!3918 (_1!27424 (h!54421 (toList!2927 lm!1707))) hashF!1247) lt!1565444)))

(declare-fun bs!629549 () Bool)

(assert (= bs!629549 d!1285726))

(assert (=> bs!629549 m!4962947))

(assert (=> bs!629549 m!4962947))

(assert (=> bs!629549 m!4962949))

(declare-fun m!4963139 () Bool)

(assert (=> bs!629549 m!4963139))

(declare-fun m!4963141 () Bool)

(assert (=> bs!629549 m!4963141))

(assert (=> b!4351939 d!1285726))

(declare-fun bs!629550 () Bool)

(declare-fun d!1285728 () Bool)

(assert (= bs!629550 (and d!1285728 d!1285724)))

(declare-fun lambda!139619 () Int)

(assert (=> bs!629550 (= lambda!139619 lambda!139615)))

(declare-fun bs!629551 () Bool)

(assert (= bs!629551 (and d!1285728 start!420638)))

(assert (=> bs!629551 (= lambda!139619 lambda!139592)))

(declare-fun bs!629552 () Bool)

(assert (= bs!629552 (and d!1285728 d!1285710)))

(assert (=> bs!629552 (= lambda!139619 lambda!139614)))

(declare-fun bs!629553 () Bool)

(assert (= bs!629553 (and d!1285728 d!1285702)))

(assert (=> bs!629553 (= lambda!139619 lambda!139611)))

(declare-fun bs!629554 () Bool)

(assert (= bs!629554 (and d!1285728 d!1285726)))

(assert (=> bs!629554 (= lambda!139619 lambda!139618)))

(declare-fun lt!1565445 () ListMap!2171)

(assert (=> d!1285728 (invariantList!663 (toList!2928 lt!1565445))))

(declare-fun e!2708252 () ListMap!2171)

(assert (=> d!1285728 (= lt!1565445 e!2708252)))

(declare-fun c!739851 () Bool)

(assert (=> d!1285728 (= c!739851 (is-Cons!48884 (toList!2927 lt!1565336)))))

(assert (=> d!1285728 (forall!9086 (toList!2927 lt!1565336) lambda!139619)))

(assert (=> d!1285728 (= (extractMap!531 (toList!2927 lt!1565336)) lt!1565445)))

(declare-fun b!4352049 () Bool)

(assert (=> b!4352049 (= e!2708252 (addToMapMapFromBucket!170 (_2!27424 (h!54421 (toList!2927 lt!1565336))) (extractMap!531 (t!355928 (toList!2927 lt!1565336)))))))

(declare-fun b!4352050 () Bool)

(assert (=> b!4352050 (= e!2708252 (ListMap!2172 Nil!48883))))

(assert (= (and d!1285728 c!739851) b!4352049))

(assert (= (and d!1285728 (not c!739851)) b!4352050))

(declare-fun m!4963143 () Bool)

(assert (=> d!1285728 m!4963143))

(declare-fun m!4963145 () Bool)

(assert (=> d!1285728 m!4963145))

(declare-fun m!4963147 () Bool)

(assert (=> b!4352049 m!4963147))

(assert (=> b!4352049 m!4963147))

(declare-fun m!4963149 () Bool)

(assert (=> b!4352049 m!4963149))

(assert (=> b!4351939 d!1285728))

(declare-fun d!1285730 () Bool)

(declare-fun res!1788121 () Bool)

(declare-fun e!2708257 () Bool)

(assert (=> d!1285730 (=> res!1788121 e!2708257)))

(assert (=> d!1285730 (= res!1788121 (and (is-Cons!48883 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707))))) (= (_1!27423 (h!54420 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707)))))) key!3918)))))

(assert (=> d!1285730 (= (containsKey!647 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707)))) key!3918) e!2708257)))

(declare-fun b!4352055 () Bool)

(declare-fun e!2708258 () Bool)

(assert (=> b!4352055 (= e!2708257 e!2708258)))

(declare-fun res!1788122 () Bool)

(assert (=> b!4352055 (=> (not res!1788122) (not e!2708258))))

(assert (=> b!4352055 (= res!1788122 (is-Cons!48883 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707))))))))

(declare-fun b!4352056 () Bool)

(assert (=> b!4352056 (= e!2708258 (containsKey!647 (t!355927 (apply!11324 lm!1707 (_1!27424 (h!54421 (toList!2927 lm!1707))))) key!3918))))

(assert (= (and d!1285730 (not res!1788121)) b!4352055))

(assert (= (and b!4352055 res!1788122) b!4352056))

(declare-fun m!4963151 () Bool)

(assert (=> b!4352056 m!4963151))

(assert (=> b!4351939 d!1285730))

(declare-fun b!4352087 () Bool)

(declare-fun e!2708278 () Unit!71185)

(declare-fun Unit!71189 () Unit!71185)

(assert (=> b!4352087 (= e!2708278 Unit!71189)))

(declare-fun b!4352088 () Bool)

(declare-datatypes ((List!49011 0))(
  ( (Nil!48887) (Cons!48887 (h!54426 K!10248) (t!355931 List!49011)) )
))
(declare-fun e!2708277 () List!49011)

(declare-fun keys!16497 (ListMap!2171) List!49011)

(assert (=> b!4352088 (= e!2708277 (keys!16497 lt!1565342))))

(declare-fun b!4352089 () Bool)

(declare-fun e!2708280 () Bool)

(declare-fun contains!11064 (List!49011 K!10248) Bool)

(assert (=> b!4352089 (= e!2708280 (contains!11064 (keys!16497 lt!1565342) key!3918))))

(declare-fun b!4352090 () Bool)

(declare-fun e!2708282 () Unit!71185)

(assert (=> b!4352090 (= e!2708282 e!2708278)))

(declare-fun c!739866 () Bool)

(declare-fun call!302480 () Bool)

(assert (=> b!4352090 (= c!739866 call!302480)))

(declare-fun b!4352091 () Bool)

(declare-fun getKeysList!111 (List!49007) List!49011)

(assert (=> b!4352091 (= e!2708277 (getKeysList!111 (toList!2928 lt!1565342)))))

(declare-fun d!1285732 () Bool)

(declare-fun e!2708279 () Bool)

(assert (=> d!1285732 e!2708279))

(declare-fun res!1788131 () Bool)

(assert (=> d!1285732 (=> res!1788131 e!2708279)))

(declare-fun e!2708281 () Bool)

(assert (=> d!1285732 (= res!1788131 e!2708281)))

(declare-fun res!1788130 () Bool)

(assert (=> d!1285732 (=> (not res!1788130) (not e!2708281))))

(declare-fun lt!1565481 () Bool)

(assert (=> d!1285732 (= res!1788130 (not lt!1565481))))

(declare-fun lt!1565479 () Bool)

(assert (=> d!1285732 (= lt!1565481 lt!1565479)))

(declare-fun lt!1565482 () Unit!71185)

(assert (=> d!1285732 (= lt!1565482 e!2708282)))

(declare-fun c!739865 () Bool)

(assert (=> d!1285732 (= c!739865 lt!1565479)))

(declare-fun containsKey!649 (List!49007 K!10248) Bool)

(assert (=> d!1285732 (= lt!1565479 (containsKey!649 (toList!2928 lt!1565342) key!3918))))

(assert (=> d!1285732 (= (contains!11057 lt!1565342 key!3918) lt!1565481)))

(declare-fun bm!302475 () Bool)

(assert (=> bm!302475 (= call!302480 (contains!11064 e!2708277 key!3918))))

(declare-fun c!739864 () Bool)

(assert (=> bm!302475 (= c!739864 c!739865)))

(declare-fun b!4352092 () Bool)

(assert (=> b!4352092 false))

(declare-fun lt!1565483 () Unit!71185)

(declare-fun lt!1565478 () Unit!71185)

(assert (=> b!4352092 (= lt!1565483 lt!1565478)))

(assert (=> b!4352092 (containsKey!649 (toList!2928 lt!1565342) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!109 (List!49007 K!10248) Unit!71185)

(assert (=> b!4352092 (= lt!1565478 (lemmaInGetKeysListThenContainsKey!109 (toList!2928 lt!1565342) key!3918))))

(declare-fun Unit!71190 () Unit!71185)

(assert (=> b!4352092 (= e!2708278 Unit!71190)))

(declare-fun b!4352093 () Bool)

(declare-fun lt!1565480 () Unit!71185)

(assert (=> b!4352093 (= e!2708282 lt!1565480)))

(declare-fun lt!1565485 () Unit!71185)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!337 (List!49007 K!10248) Unit!71185)

(assert (=> b!4352093 (= lt!1565485 (lemmaContainsKeyImpliesGetValueByKeyDefined!337 (toList!2928 lt!1565342) key!3918))))

(declare-fun isDefined!7734 (Option!10439) Bool)

(assert (=> b!4352093 (isDefined!7734 (getValueByKey!425 (toList!2928 lt!1565342) key!3918))))

(declare-fun lt!1565484 () Unit!71185)

(assert (=> b!4352093 (= lt!1565484 lt!1565485)))

(declare-fun lemmaInListThenGetKeysListContains!108 (List!49007 K!10248) Unit!71185)

(assert (=> b!4352093 (= lt!1565480 (lemmaInListThenGetKeysListContains!108 (toList!2928 lt!1565342) key!3918))))

(assert (=> b!4352093 call!302480))

(declare-fun b!4352094 () Bool)

(assert (=> b!4352094 (= e!2708281 (not (contains!11064 (keys!16497 lt!1565342) key!3918)))))

(declare-fun b!4352095 () Bool)

(assert (=> b!4352095 (= e!2708279 e!2708280)))

(declare-fun res!1788129 () Bool)

(assert (=> b!4352095 (=> (not res!1788129) (not e!2708280))))

(assert (=> b!4352095 (= res!1788129 (isDefined!7734 (getValueByKey!425 (toList!2928 lt!1565342) key!3918)))))

(assert (= (and d!1285732 c!739865) b!4352093))

(assert (= (and d!1285732 (not c!739865)) b!4352090))

(assert (= (and b!4352090 c!739866) b!4352092))

(assert (= (and b!4352090 (not c!739866)) b!4352087))

(assert (= (or b!4352093 b!4352090) bm!302475))

(assert (= (and bm!302475 c!739864) b!4352091))

(assert (= (and bm!302475 (not c!739864)) b!4352088))

(assert (= (and d!1285732 res!1788130) b!4352094))

(assert (= (and d!1285732 (not res!1788131)) b!4352095))

(assert (= (and b!4352095 res!1788129) b!4352089))

(declare-fun m!4963153 () Bool)

(assert (=> b!4352091 m!4963153))

(declare-fun m!4963155 () Bool)

(assert (=> d!1285732 m!4963155))

(declare-fun m!4963157 () Bool)

(assert (=> bm!302475 m!4963157))

(declare-fun m!4963159 () Bool)

(assert (=> b!4352089 m!4963159))

(assert (=> b!4352089 m!4963159))

(declare-fun m!4963161 () Bool)

(assert (=> b!4352089 m!4963161))

(declare-fun m!4963163 () Bool)

(assert (=> b!4352095 m!4963163))

(assert (=> b!4352095 m!4963163))

(declare-fun m!4963165 () Bool)

(assert (=> b!4352095 m!4963165))

(assert (=> b!4352092 m!4963155))

(declare-fun m!4963167 () Bool)

(assert (=> b!4352092 m!4963167))

(assert (=> b!4352088 m!4963159))

(declare-fun m!4963169 () Bool)

(assert (=> b!4352093 m!4963169))

(assert (=> b!4352093 m!4963163))

(assert (=> b!4352093 m!4963163))

(assert (=> b!4352093 m!4963165))

(declare-fun m!4963171 () Bool)

(assert (=> b!4352093 m!4963171))

(assert (=> b!4352094 m!4963159))

(assert (=> b!4352094 m!4963159))

(assert (=> b!4352094 m!4963161))

(assert (=> b!4351939 d!1285732))

(declare-fun d!1285734 () Bool)

(declare-fun e!2708291 () Bool)

(assert (=> d!1285734 e!2708291))

(declare-fun res!1788143 () Bool)

(assert (=> d!1285734 (=> (not res!1788143) (not e!2708291))))

(declare-fun lt!1565495 () ListLongMap!1577)

(assert (=> d!1285734 (= res!1788143 (contains!11059 lt!1565495 (_1!27424 lt!1565338)))))

(declare-fun lt!1565494 () List!49008)

(assert (=> d!1285734 (= lt!1565495 (ListLongMap!1578 lt!1565494))))

(declare-fun lt!1565496 () Unit!71185)

(declare-fun lt!1565497 () Unit!71185)

(assert (=> d!1285734 (= lt!1565496 lt!1565497)))

(assert (=> d!1285734 (= (getValueByKey!424 lt!1565494 (_1!27424 lt!1565338)) (Some!10437 (_2!27424 lt!1565338)))))

(declare-fun lemmaContainsTupThenGetReturnValue!200 (List!49008 (_ BitVec 64) List!49007) Unit!71185)

(assert (=> d!1285734 (= lt!1565497 (lemmaContainsTupThenGetReturnValue!200 lt!1565494 (_1!27424 lt!1565338) (_2!27424 lt!1565338)))))

(declare-fun insertStrictlySorted!120 (List!49008 (_ BitVec 64) List!49007) List!49008)

(assert (=> d!1285734 (= lt!1565494 (insertStrictlySorted!120 (toList!2927 lt!1565346) (_1!27424 lt!1565338) (_2!27424 lt!1565338)))))

(assert (=> d!1285734 (= (+!601 lt!1565346 lt!1565338) lt!1565495)))

(declare-fun b!4352106 () Bool)

(declare-fun res!1788142 () Bool)

(assert (=> b!4352106 (=> (not res!1788142) (not e!2708291))))

(assert (=> b!4352106 (= res!1788142 (= (getValueByKey!424 (toList!2927 lt!1565495) (_1!27424 lt!1565338)) (Some!10437 (_2!27424 lt!1565338))))))

(declare-fun b!4352107 () Bool)

(assert (=> b!4352107 (= e!2708291 (contains!11058 (toList!2927 lt!1565495) lt!1565338))))

(assert (= (and d!1285734 res!1788143) b!4352106))

(assert (= (and b!4352106 res!1788142) b!4352107))

(declare-fun m!4963173 () Bool)

(assert (=> d!1285734 m!4963173))

(declare-fun m!4963175 () Bool)

(assert (=> d!1285734 m!4963175))

(declare-fun m!4963177 () Bool)

(assert (=> d!1285734 m!4963177))

(declare-fun m!4963179 () Bool)

(assert (=> d!1285734 m!4963179))

(declare-fun m!4963181 () Bool)

(assert (=> b!4352106 m!4963181))

(declare-fun m!4963183 () Bool)

(assert (=> b!4352107 m!4963183))

(assert (=> b!4351939 d!1285734))

(declare-fun b!4352108 () Bool)

(declare-fun e!2708293 () Unit!71185)

(declare-fun Unit!71191 () Unit!71185)

(assert (=> b!4352108 (= e!2708293 Unit!71191)))

(declare-fun b!4352109 () Bool)

(declare-fun e!2708292 () List!49011)

(assert (=> b!4352109 (= e!2708292 (keys!16497 lt!1565345))))

(declare-fun b!4352110 () Bool)

(declare-fun e!2708295 () Bool)

(assert (=> b!4352110 (= e!2708295 (contains!11064 (keys!16497 lt!1565345) key!3918))))

(declare-fun b!4352111 () Bool)

(declare-fun e!2708297 () Unit!71185)

(assert (=> b!4352111 (= e!2708297 e!2708293)))

(declare-fun c!739869 () Bool)

(declare-fun call!302481 () Bool)

(assert (=> b!4352111 (= c!739869 call!302481)))

(declare-fun b!4352112 () Bool)

(assert (=> b!4352112 (= e!2708292 (getKeysList!111 (toList!2928 lt!1565345)))))

(declare-fun d!1285736 () Bool)

(declare-fun e!2708294 () Bool)

(assert (=> d!1285736 e!2708294))

(declare-fun res!1788146 () Bool)

(assert (=> d!1285736 (=> res!1788146 e!2708294)))

(declare-fun e!2708296 () Bool)

(assert (=> d!1285736 (= res!1788146 e!2708296)))

(declare-fun res!1788145 () Bool)

(assert (=> d!1285736 (=> (not res!1788145) (not e!2708296))))

(declare-fun lt!1565501 () Bool)

(assert (=> d!1285736 (= res!1788145 (not lt!1565501))))

(declare-fun lt!1565499 () Bool)

(assert (=> d!1285736 (= lt!1565501 lt!1565499)))

(declare-fun lt!1565502 () Unit!71185)

(assert (=> d!1285736 (= lt!1565502 e!2708297)))

(declare-fun c!739868 () Bool)

(assert (=> d!1285736 (= c!739868 lt!1565499)))

(assert (=> d!1285736 (= lt!1565499 (containsKey!649 (toList!2928 lt!1565345) key!3918))))

(assert (=> d!1285736 (= (contains!11057 lt!1565345 key!3918) lt!1565501)))

(declare-fun bm!302476 () Bool)

(assert (=> bm!302476 (= call!302481 (contains!11064 e!2708292 key!3918))))

(declare-fun c!739867 () Bool)

(assert (=> bm!302476 (= c!739867 c!739868)))

(declare-fun b!4352113 () Bool)

(assert (=> b!4352113 false))

(declare-fun lt!1565503 () Unit!71185)

(declare-fun lt!1565498 () Unit!71185)

(assert (=> b!4352113 (= lt!1565503 lt!1565498)))

(assert (=> b!4352113 (containsKey!649 (toList!2928 lt!1565345) key!3918)))

(assert (=> b!4352113 (= lt!1565498 (lemmaInGetKeysListThenContainsKey!109 (toList!2928 lt!1565345) key!3918))))

(declare-fun Unit!71192 () Unit!71185)

(assert (=> b!4352113 (= e!2708293 Unit!71192)))

(declare-fun b!4352114 () Bool)

(declare-fun lt!1565500 () Unit!71185)

(assert (=> b!4352114 (= e!2708297 lt!1565500)))

(declare-fun lt!1565505 () Unit!71185)

(assert (=> b!4352114 (= lt!1565505 (lemmaContainsKeyImpliesGetValueByKeyDefined!337 (toList!2928 lt!1565345) key!3918))))

(assert (=> b!4352114 (isDefined!7734 (getValueByKey!425 (toList!2928 lt!1565345) key!3918))))

(declare-fun lt!1565504 () Unit!71185)

(assert (=> b!4352114 (= lt!1565504 lt!1565505)))

(assert (=> b!4352114 (= lt!1565500 (lemmaInListThenGetKeysListContains!108 (toList!2928 lt!1565345) key!3918))))

(assert (=> b!4352114 call!302481))

(declare-fun b!4352115 () Bool)

(assert (=> b!4352115 (= e!2708296 (not (contains!11064 (keys!16497 lt!1565345) key!3918)))))

(declare-fun b!4352116 () Bool)

(assert (=> b!4352116 (= e!2708294 e!2708295)))

(declare-fun res!1788144 () Bool)

(assert (=> b!4352116 (=> (not res!1788144) (not e!2708295))))

(assert (=> b!4352116 (= res!1788144 (isDefined!7734 (getValueByKey!425 (toList!2928 lt!1565345) key!3918)))))

(assert (= (and d!1285736 c!739868) b!4352114))

(assert (= (and d!1285736 (not c!739868)) b!4352111))

(assert (= (and b!4352111 c!739869) b!4352113))

(assert (= (and b!4352111 (not c!739869)) b!4352108))

(assert (= (or b!4352114 b!4352111) bm!302476))

(assert (= (and bm!302476 c!739867) b!4352112))

(assert (= (and bm!302476 (not c!739867)) b!4352109))

(assert (= (and d!1285736 res!1788145) b!4352115))

(assert (= (and d!1285736 (not res!1788146)) b!4352116))

(assert (= (and b!4352116 res!1788144) b!4352110))

(declare-fun m!4963185 () Bool)

(assert (=> b!4352112 m!4963185))

(declare-fun m!4963187 () Bool)

(assert (=> d!1285736 m!4963187))

(declare-fun m!4963189 () Bool)

(assert (=> bm!302476 m!4963189))

(declare-fun m!4963191 () Bool)

(assert (=> b!4352110 m!4963191))

(assert (=> b!4352110 m!4963191))

(declare-fun m!4963193 () Bool)

(assert (=> b!4352110 m!4963193))

(declare-fun m!4963195 () Bool)

(assert (=> b!4352116 m!4963195))

(assert (=> b!4352116 m!4963195))

(declare-fun m!4963197 () Bool)

(assert (=> b!4352116 m!4963197))

(assert (=> b!4352113 m!4963187))

(declare-fun m!4963199 () Bool)

(assert (=> b!4352113 m!4963199))

(assert (=> b!4352109 m!4963191))

(declare-fun m!4963201 () Bool)

(assert (=> b!4352114 m!4963201))

(assert (=> b!4352114 m!4963195))

(assert (=> b!4352114 m!4963195))

(assert (=> b!4352114 m!4963197))

(declare-fun m!4963203 () Bool)

(assert (=> b!4352114 m!4963203))

(assert (=> b!4352115 m!4963191))

(assert (=> b!4352115 m!4963191))

(assert (=> b!4352115 m!4963193))

(assert (=> b!4351939 d!1285736))

(declare-fun d!1285738 () Bool)

(assert (=> d!1285738 true))

(assert (=> d!1285738 true))

(declare-fun lambda!139622 () Int)

(declare-fun forall!9088 (List!49007 Int) Bool)

(assert (=> d!1285738 (= (allKeysSameHash!430 newBucket!200 hash!377 hashF!1247) (forall!9088 newBucket!200 lambda!139622))))

(declare-fun bs!629555 () Bool)

(assert (= bs!629555 d!1285738))

(declare-fun m!4963225 () Bool)

(assert (=> bs!629555 m!4963225))

(assert (=> b!4351937 d!1285738))

(declare-fun d!1285742 () Bool)

(declare-fun res!1788150 () Bool)

(declare-fun e!2708304 () Bool)

(assert (=> d!1285742 (=> res!1788150 e!2708304)))

(assert (=> d!1285742 (= res!1788150 (is-Nil!48884 (toList!2927 lm!1707)))))

(assert (=> d!1285742 (= (forall!9086 (toList!2927 lm!1707) lambda!139592) e!2708304)))

(declare-fun b!4352130 () Bool)

(declare-fun e!2708305 () Bool)

(assert (=> b!4352130 (= e!2708304 e!2708305)))

(declare-fun res!1788151 () Bool)

(assert (=> b!4352130 (=> (not res!1788151) (not e!2708305))))

(assert (=> b!4352130 (= res!1788151 (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lm!1707))))))

(declare-fun b!4352131 () Bool)

(assert (=> b!4352131 (= e!2708305 (forall!9086 (t!355928 (toList!2927 lm!1707)) lambda!139592))))

(assert (= (and d!1285742 (not res!1788150)) b!4352130))

(assert (= (and b!4352130 res!1788151) b!4352131))

(declare-fun b_lambda!130677 () Bool)

(assert (=> (not b_lambda!130677) (not b!4352130)))

(declare-fun m!4963227 () Bool)

(assert (=> b!4352130 m!4963227))

(declare-fun m!4963229 () Bool)

(assert (=> b!4352131 m!4963229))

(assert (=> start!420638 d!1285742))

(declare-fun d!1285744 () Bool)

(assert (=> d!1285744 (= (inv!64435 lm!1707) (isStrictlySorted!89 (toList!2927 lm!1707)))))

(declare-fun bs!629556 () Bool)

(assert (= bs!629556 d!1285744))

(assert (=> bs!629556 m!4963045))

(assert (=> start!420638 d!1285744))

(declare-fun d!1285746 () Bool)

(declare-fun res!1788156 () Bool)

(declare-fun e!2708310 () Bool)

(assert (=> d!1285746 (=> res!1788156 e!2708310)))

(assert (=> d!1285746 (= res!1788156 (not (is-Cons!48883 newBucket!200)))))

(assert (=> d!1285746 (= (noDuplicateKeys!472 newBucket!200) e!2708310)))

(declare-fun b!4352136 () Bool)

(declare-fun e!2708311 () Bool)

(assert (=> b!4352136 (= e!2708310 e!2708311)))

(declare-fun res!1788157 () Bool)

(assert (=> b!4352136 (=> (not res!1788157) (not e!2708311))))

(assert (=> b!4352136 (= res!1788157 (not (containsKey!647 (t!355927 newBucket!200) (_1!27423 (h!54420 newBucket!200)))))))

(declare-fun b!4352137 () Bool)

(assert (=> b!4352137 (= e!2708311 (noDuplicateKeys!472 (t!355927 newBucket!200)))))

(assert (= (and d!1285746 (not res!1788156)) b!4352136))

(assert (= (and b!4352136 res!1788157) b!4352137))

(declare-fun m!4963231 () Bool)

(assert (=> b!4352136 m!4963231))

(declare-fun m!4963233 () Bool)

(assert (=> b!4352137 m!4963233))

(assert (=> b!4351936 d!1285746))

(declare-fun d!1285748 () Bool)

(declare-fun res!1788158 () Bool)

(declare-fun e!2708312 () Bool)

(assert (=> d!1285748 (=> res!1788158 e!2708312)))

(assert (=> d!1285748 (= res!1788158 (is-Nil!48884 (toList!2927 lt!1565343)))))

(assert (=> d!1285748 (= (forall!9086 (toList!2927 lt!1565343) lambda!139592) e!2708312)))

(declare-fun b!4352138 () Bool)

(declare-fun e!2708313 () Bool)

(assert (=> b!4352138 (= e!2708312 e!2708313)))

(declare-fun res!1788159 () Bool)

(assert (=> b!4352138 (=> (not res!1788159) (not e!2708313))))

(assert (=> b!4352138 (= res!1788159 (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lt!1565343))))))

(declare-fun b!4352139 () Bool)

(assert (=> b!4352139 (= e!2708313 (forall!9086 (t!355928 (toList!2927 lt!1565343)) lambda!139592))))

(assert (= (and d!1285748 (not res!1788158)) b!4352138))

(assert (= (and b!4352138 res!1788159) b!4352139))

(declare-fun b_lambda!130679 () Bool)

(assert (=> (not b_lambda!130679) (not b!4352138)))

(declare-fun m!4963235 () Bool)

(assert (=> b!4352138 m!4963235))

(declare-fun m!4963237 () Bool)

(assert (=> b!4352139 m!4963237))

(assert (=> b!4351934 d!1285748))

(declare-fun d!1285750 () Bool)

(declare-fun e!2708314 () Bool)

(assert (=> d!1285750 e!2708314))

(declare-fun res!1788161 () Bool)

(assert (=> d!1285750 (=> (not res!1788161) (not e!2708314))))

(declare-fun lt!1565515 () ListLongMap!1577)

(assert (=> d!1285750 (= res!1788161 (contains!11059 lt!1565515 (_1!27424 lt!1565338)))))

(declare-fun lt!1565514 () List!49008)

(assert (=> d!1285750 (= lt!1565515 (ListLongMap!1578 lt!1565514))))

(declare-fun lt!1565516 () Unit!71185)

(declare-fun lt!1565517 () Unit!71185)

(assert (=> d!1285750 (= lt!1565516 lt!1565517)))

(assert (=> d!1285750 (= (getValueByKey!424 lt!1565514 (_1!27424 lt!1565338)) (Some!10437 (_2!27424 lt!1565338)))))

(assert (=> d!1285750 (= lt!1565517 (lemmaContainsTupThenGetReturnValue!200 lt!1565514 (_1!27424 lt!1565338) (_2!27424 lt!1565338)))))

(assert (=> d!1285750 (= lt!1565514 (insertStrictlySorted!120 (toList!2927 lm!1707) (_1!27424 lt!1565338) (_2!27424 lt!1565338)))))

(assert (=> d!1285750 (= (+!601 lm!1707 lt!1565338) lt!1565515)))

(declare-fun b!4352140 () Bool)

(declare-fun res!1788160 () Bool)

(assert (=> b!4352140 (=> (not res!1788160) (not e!2708314))))

(assert (=> b!4352140 (= res!1788160 (= (getValueByKey!424 (toList!2927 lt!1565515) (_1!27424 lt!1565338)) (Some!10437 (_2!27424 lt!1565338))))))

(declare-fun b!4352141 () Bool)

(assert (=> b!4352141 (= e!2708314 (contains!11058 (toList!2927 lt!1565515) lt!1565338))))

(assert (= (and d!1285750 res!1788161) b!4352140))

(assert (= (and b!4352140 res!1788160) b!4352141))

(declare-fun m!4963239 () Bool)

(assert (=> d!1285750 m!4963239))

(declare-fun m!4963241 () Bool)

(assert (=> d!1285750 m!4963241))

(declare-fun m!4963243 () Bool)

(assert (=> d!1285750 m!4963243))

(declare-fun m!4963245 () Bool)

(assert (=> d!1285750 m!4963245))

(declare-fun m!4963247 () Bool)

(assert (=> b!4352140 m!4963247))

(declare-fun m!4963249 () Bool)

(assert (=> b!4352141 m!4963249))

(assert (=> b!4351934 d!1285750))

(declare-fun d!1285752 () Bool)

(assert (=> d!1285752 (forall!9086 (toList!2927 (+!601 lm!1707 (tuple2!48261 hash!377 newBucket!200))) lambda!139592)))

(declare-fun lt!1565520 () Unit!71185)

(declare-fun choose!26792 (ListLongMap!1577 Int (_ BitVec 64) List!49007) Unit!71185)

(assert (=> d!1285752 (= lt!1565520 (choose!26792 lm!1707 lambda!139592 hash!377 newBucket!200))))

(declare-fun e!2708317 () Bool)

(assert (=> d!1285752 e!2708317))

(declare-fun res!1788164 () Bool)

(assert (=> d!1285752 (=> (not res!1788164) (not e!2708317))))

(assert (=> d!1285752 (= res!1788164 (forall!9086 (toList!2927 lm!1707) lambda!139592))))

(assert (=> d!1285752 (= (addValidProp!126 lm!1707 lambda!139592 hash!377 newBucket!200) lt!1565520)))

(declare-fun b!4352145 () Bool)

(assert (=> b!4352145 (= e!2708317 (dynLambda!20616 lambda!139592 (tuple2!48261 hash!377 newBucket!200)))))

(assert (= (and d!1285752 res!1788164) b!4352145))

(declare-fun b_lambda!130681 () Bool)

(assert (=> (not b_lambda!130681) (not b!4352145)))

(declare-fun m!4963251 () Bool)

(assert (=> d!1285752 m!4963251))

(declare-fun m!4963253 () Bool)

(assert (=> d!1285752 m!4963253))

(declare-fun m!4963255 () Bool)

(assert (=> d!1285752 m!4963255))

(assert (=> d!1285752 m!4962903))

(declare-fun m!4963257 () Bool)

(assert (=> b!4352145 m!4963257))

(assert (=> b!4351934 d!1285752))

(assert (=> b!4351934 d!1285742))

(declare-fun b!4352146 () Bool)

(declare-fun e!2708319 () Unit!71185)

(declare-fun Unit!71193 () Unit!71185)

(assert (=> b!4352146 (= e!2708319 Unit!71193)))

(declare-fun b!4352147 () Bool)

(declare-fun e!2708318 () List!49011)

(assert (=> b!4352147 (= e!2708318 (keys!16497 (extractMap!531 (toList!2927 lm!1707))))))

(declare-fun b!4352148 () Bool)

(declare-fun e!2708321 () Bool)

(assert (=> b!4352148 (= e!2708321 (contains!11064 (keys!16497 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(declare-fun b!4352149 () Bool)

(declare-fun e!2708323 () Unit!71185)

(assert (=> b!4352149 (= e!2708323 e!2708319)))

(declare-fun c!739875 () Bool)

(declare-fun call!302483 () Bool)

(assert (=> b!4352149 (= c!739875 call!302483)))

(declare-fun b!4352150 () Bool)

(assert (=> b!4352150 (= e!2708318 (getKeysList!111 (toList!2928 (extractMap!531 (toList!2927 lm!1707)))))))

(declare-fun d!1285754 () Bool)

(declare-fun e!2708320 () Bool)

(assert (=> d!1285754 e!2708320))

(declare-fun res!1788167 () Bool)

(assert (=> d!1285754 (=> res!1788167 e!2708320)))

(declare-fun e!2708322 () Bool)

(assert (=> d!1285754 (= res!1788167 e!2708322)))

(declare-fun res!1788166 () Bool)

(assert (=> d!1285754 (=> (not res!1788166) (not e!2708322))))

(declare-fun lt!1565524 () Bool)

(assert (=> d!1285754 (= res!1788166 (not lt!1565524))))

(declare-fun lt!1565522 () Bool)

(assert (=> d!1285754 (= lt!1565524 lt!1565522)))

(declare-fun lt!1565525 () Unit!71185)

(assert (=> d!1285754 (= lt!1565525 e!2708323)))

(declare-fun c!739874 () Bool)

(assert (=> d!1285754 (= c!739874 lt!1565522)))

(assert (=> d!1285754 (= lt!1565522 (containsKey!649 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(assert (=> d!1285754 (= (contains!11057 (extractMap!531 (toList!2927 lm!1707)) key!3918) lt!1565524)))

(declare-fun bm!302478 () Bool)

(assert (=> bm!302478 (= call!302483 (contains!11064 e!2708318 key!3918))))

(declare-fun c!739873 () Bool)

(assert (=> bm!302478 (= c!739873 c!739874)))

(declare-fun b!4352151 () Bool)

(assert (=> b!4352151 false))

(declare-fun lt!1565526 () Unit!71185)

(declare-fun lt!1565521 () Unit!71185)

(assert (=> b!4352151 (= lt!1565526 lt!1565521)))

(assert (=> b!4352151 (containsKey!649 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918)))

(assert (=> b!4352151 (= lt!1565521 (lemmaInGetKeysListThenContainsKey!109 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(declare-fun Unit!71194 () Unit!71185)

(assert (=> b!4352151 (= e!2708319 Unit!71194)))

(declare-fun b!4352152 () Bool)

(declare-fun lt!1565523 () Unit!71185)

(assert (=> b!4352152 (= e!2708323 lt!1565523)))

(declare-fun lt!1565528 () Unit!71185)

(assert (=> b!4352152 (= lt!1565528 (lemmaContainsKeyImpliesGetValueByKeyDefined!337 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(assert (=> b!4352152 (isDefined!7734 (getValueByKey!425 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(declare-fun lt!1565527 () Unit!71185)

(assert (=> b!4352152 (= lt!1565527 lt!1565528)))

(assert (=> b!4352152 (= lt!1565523 (lemmaInListThenGetKeysListContains!108 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918))))

(assert (=> b!4352152 call!302483))

(declare-fun b!4352153 () Bool)

(assert (=> b!4352153 (= e!2708322 (not (contains!11064 (keys!16497 (extractMap!531 (toList!2927 lm!1707))) key!3918)))))

(declare-fun b!4352154 () Bool)

(assert (=> b!4352154 (= e!2708320 e!2708321)))

(declare-fun res!1788165 () Bool)

(assert (=> b!4352154 (=> (not res!1788165) (not e!2708321))))

(assert (=> b!4352154 (= res!1788165 (isDefined!7734 (getValueByKey!425 (toList!2928 (extractMap!531 (toList!2927 lm!1707))) key!3918)))))

(assert (= (and d!1285754 c!739874) b!4352152))

(assert (= (and d!1285754 (not c!739874)) b!4352149))

(assert (= (and b!4352149 c!739875) b!4352151))

(assert (= (and b!4352149 (not c!739875)) b!4352146))

(assert (= (or b!4352152 b!4352149) bm!302478))

(assert (= (and bm!302478 c!739873) b!4352150))

(assert (= (and bm!302478 (not c!739873)) b!4352147))

(assert (= (and d!1285754 res!1788166) b!4352153))

(assert (= (and d!1285754 (not res!1788167)) b!4352154))

(assert (= (and b!4352154 res!1788165) b!4352148))

(declare-fun m!4963259 () Bool)

(assert (=> b!4352150 m!4963259))

(declare-fun m!4963261 () Bool)

(assert (=> d!1285754 m!4963261))

(declare-fun m!4963263 () Bool)

(assert (=> bm!302478 m!4963263))

(assert (=> b!4352148 m!4962953))

(declare-fun m!4963265 () Bool)

(assert (=> b!4352148 m!4963265))

(assert (=> b!4352148 m!4963265))

(declare-fun m!4963267 () Bool)

(assert (=> b!4352148 m!4963267))

(declare-fun m!4963269 () Bool)

(assert (=> b!4352154 m!4963269))

(assert (=> b!4352154 m!4963269))

(declare-fun m!4963271 () Bool)

(assert (=> b!4352154 m!4963271))

(assert (=> b!4352151 m!4963261))

(declare-fun m!4963273 () Bool)

(assert (=> b!4352151 m!4963273))

(assert (=> b!4352147 m!4962953))

(assert (=> b!4352147 m!4963265))

(declare-fun m!4963275 () Bool)

(assert (=> b!4352152 m!4963275))

(assert (=> b!4352152 m!4963269))

(assert (=> b!4352152 m!4963269))

(assert (=> b!4352152 m!4963271))

(declare-fun m!4963277 () Bool)

(assert (=> b!4352152 m!4963277))

(assert (=> b!4352153 m!4962953))

(assert (=> b!4352153 m!4963265))

(assert (=> b!4352153 m!4963265))

(assert (=> b!4352153 m!4963267))

(assert (=> b!4351935 d!1285754))

(declare-fun bs!629557 () Bool)

(declare-fun d!1285756 () Bool)

(assert (= bs!629557 (and d!1285756 d!1285724)))

(declare-fun lambda!139623 () Int)

(assert (=> bs!629557 (= lambda!139623 lambda!139615)))

(declare-fun bs!629558 () Bool)

(assert (= bs!629558 (and d!1285756 d!1285728)))

(assert (=> bs!629558 (= lambda!139623 lambda!139619)))

(declare-fun bs!629559 () Bool)

(assert (= bs!629559 (and d!1285756 start!420638)))

(assert (=> bs!629559 (= lambda!139623 lambda!139592)))

(declare-fun bs!629560 () Bool)

(assert (= bs!629560 (and d!1285756 d!1285710)))

(assert (=> bs!629560 (= lambda!139623 lambda!139614)))

(declare-fun bs!629561 () Bool)

(assert (= bs!629561 (and d!1285756 d!1285702)))

(assert (=> bs!629561 (= lambda!139623 lambda!139611)))

(declare-fun bs!629562 () Bool)

(assert (= bs!629562 (and d!1285756 d!1285726)))

(assert (=> bs!629562 (= lambda!139623 lambda!139618)))

(declare-fun lt!1565529 () ListMap!2171)

(assert (=> d!1285756 (invariantList!663 (toList!2928 lt!1565529))))

(declare-fun e!2708324 () ListMap!2171)

(assert (=> d!1285756 (= lt!1565529 e!2708324)))

(declare-fun c!739876 () Bool)

(assert (=> d!1285756 (= c!739876 (is-Cons!48884 (toList!2927 lm!1707)))))

(assert (=> d!1285756 (forall!9086 (toList!2927 lm!1707) lambda!139623)))

(assert (=> d!1285756 (= (extractMap!531 (toList!2927 lm!1707)) lt!1565529)))

(declare-fun b!4352155 () Bool)

(assert (=> b!4352155 (= e!2708324 (addToMapMapFromBucket!170 (_2!27424 (h!54421 (toList!2927 lm!1707))) (extractMap!531 (t!355928 (toList!2927 lm!1707)))))))

(declare-fun b!4352156 () Bool)

(assert (=> b!4352156 (= e!2708324 (ListMap!2172 Nil!48883))))

(assert (= (and d!1285756 c!739876) b!4352155))

(assert (= (and d!1285756 (not c!739876)) b!4352156))

(declare-fun m!4963279 () Bool)

(assert (=> d!1285756 m!4963279))

(declare-fun m!4963281 () Bool)

(assert (=> d!1285756 m!4963281))

(assert (=> b!4352155 m!4962925))

(assert (=> b!4352155 m!4962925))

(declare-fun m!4963283 () Bool)

(assert (=> b!4352155 m!4963283))

(assert (=> b!4351935 d!1285756))

(assert (=> b!4351933 d!1285748))

(declare-fun d!1285758 () Bool)

(declare-fun res!1788168 () Bool)

(declare-fun e!2708325 () Bool)

(assert (=> d!1285758 (=> res!1788168 e!2708325)))

(assert (=> d!1285758 (= res!1788168 (and (is-Cons!48883 (_2!27424 (h!54421 (toList!2927 lm!1707)))) (= (_1!27423 (h!54420 (_2!27424 (h!54421 (toList!2927 lm!1707))))) key!3918)))))

(assert (=> d!1285758 (= (containsKey!647 (_2!27424 (h!54421 (toList!2927 lm!1707))) key!3918) e!2708325)))

(declare-fun b!4352157 () Bool)

(declare-fun e!2708326 () Bool)

(assert (=> b!4352157 (= e!2708325 e!2708326)))

(declare-fun res!1788169 () Bool)

(assert (=> b!4352157 (=> (not res!1788169) (not e!2708326))))

(assert (=> b!4352157 (= res!1788169 (is-Cons!48883 (_2!27424 (h!54421 (toList!2927 lm!1707)))))))

(declare-fun b!4352158 () Bool)

(assert (=> b!4352158 (= e!2708326 (containsKey!647 (t!355927 (_2!27424 (h!54421 (toList!2927 lm!1707)))) key!3918))))

(assert (= (and d!1285758 (not res!1788168)) b!4352157))

(assert (= (and b!4352157 res!1788169) b!4352158))

(declare-fun m!4963285 () Bool)

(assert (=> b!4352158 m!4963285))

(assert (=> b!4351942 d!1285758))

(declare-fun bs!629563 () Bool)

(declare-fun d!1285760 () Bool)

(assert (= bs!629563 (and d!1285760 d!1285724)))

(declare-fun lambda!139626 () Int)

(assert (=> bs!629563 (not (= lambda!139626 lambda!139615))))

(declare-fun bs!629564 () Bool)

(assert (= bs!629564 (and d!1285760 d!1285728)))

(assert (=> bs!629564 (not (= lambda!139626 lambda!139619))))

(declare-fun bs!629565 () Bool)

(assert (= bs!629565 (and d!1285760 start!420638)))

(assert (=> bs!629565 (not (= lambda!139626 lambda!139592))))

(declare-fun bs!629566 () Bool)

(assert (= bs!629566 (and d!1285760 d!1285710)))

(assert (=> bs!629566 (not (= lambda!139626 lambda!139614))))

(declare-fun bs!629567 () Bool)

(assert (= bs!629567 (and d!1285760 d!1285702)))

(assert (=> bs!629567 (not (= lambda!139626 lambda!139611))))

(declare-fun bs!629568 () Bool)

(assert (= bs!629568 (and d!1285760 d!1285756)))

(assert (=> bs!629568 (not (= lambda!139626 lambda!139623))))

(declare-fun bs!629569 () Bool)

(assert (= bs!629569 (and d!1285760 d!1285726)))

(assert (=> bs!629569 (not (= lambda!139626 lambda!139618))))

(assert (=> d!1285760 true))

(assert (=> d!1285760 (= (allKeysSameHashInMap!576 lm!1707 hashF!1247) (forall!9086 (toList!2927 lm!1707) lambda!139626))))

(declare-fun bs!629570 () Bool)

(assert (= bs!629570 d!1285760))

(declare-fun m!4963287 () Bool)

(assert (=> bs!629570 m!4963287))

(assert (=> b!4351943 d!1285760))

(declare-fun d!1285762 () Bool)

(declare-fun hash!1497 (Hashable!4864 K!10248) (_ BitVec 64))

(assert (=> d!1285762 (= (hash!1491 hashF!1247 key!3918) (hash!1497 hashF!1247 key!3918))))

(declare-fun bs!629571 () Bool)

(assert (= bs!629571 d!1285762))

(declare-fun m!4963289 () Bool)

(assert (=> bs!629571 m!4963289))

(assert (=> b!4351932 d!1285762))

(declare-fun d!1285764 () Bool)

(declare-fun e!2708333 () Bool)

(assert (=> d!1285764 e!2708333))

(declare-fun res!1788172 () Bool)

(assert (=> d!1285764 (=> res!1788172 e!2708333)))

(declare-fun lt!1565543 () Bool)

(assert (=> d!1285764 (= res!1788172 (not lt!1565543))))

(declare-fun lt!1565540 () Bool)

(assert (=> d!1285764 (= lt!1565543 lt!1565540)))

(declare-fun lt!1565541 () Unit!71185)

(declare-fun e!2708334 () Unit!71185)

(assert (=> d!1285764 (= lt!1565541 e!2708334)))

(declare-fun c!739881 () Bool)

(assert (=> d!1285764 (= c!739881 lt!1565540)))

(declare-fun containsKey!651 (List!49008 (_ BitVec 64)) Bool)

(assert (=> d!1285764 (= lt!1565540 (containsKey!651 (toList!2927 lm!1707) hash!377))))

(assert (=> d!1285764 (= (contains!11059 lm!1707 hash!377) lt!1565543)))

(declare-fun b!4352171 () Bool)

(declare-fun lt!1565542 () Unit!71185)

(assert (=> b!4352171 (= e!2708334 lt!1565542)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!339 (List!49008 (_ BitVec 64)) Unit!71185)

(assert (=> b!4352171 (= lt!1565542 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!2927 lm!1707) hash!377))))

(declare-fun isDefined!7736 (Option!10438) Bool)

(assert (=> b!4352171 (isDefined!7736 (getValueByKey!424 (toList!2927 lm!1707) hash!377))))

(declare-fun b!4352172 () Bool)

(declare-fun Unit!71197 () Unit!71185)

(assert (=> b!4352172 (= e!2708334 Unit!71197)))

(declare-fun b!4352173 () Bool)

(assert (=> b!4352173 (= e!2708333 (isDefined!7736 (getValueByKey!424 (toList!2927 lm!1707) hash!377)))))

(assert (= (and d!1285764 c!739881) b!4352171))

(assert (= (and d!1285764 (not c!739881)) b!4352172))

(assert (= (and d!1285764 (not res!1788172)) b!4352173))

(declare-fun m!4963291 () Bool)

(assert (=> d!1285764 m!4963291))

(declare-fun m!4963293 () Bool)

(assert (=> b!4352171 m!4963293))

(assert (=> b!4352171 m!4963025))

(assert (=> b!4352171 m!4963025))

(declare-fun m!4963295 () Bool)

(assert (=> b!4352171 m!4963295))

(assert (=> b!4352173 m!4963025))

(assert (=> b!4352173 m!4963025))

(assert (=> b!4352173 m!4963295))

(assert (=> b!4351941 d!1285764))

(declare-fun tp!1329897 () Bool)

(declare-fun b!4352178 () Bool)

(declare-fun e!2708337 () Bool)

(assert (=> b!4352178 (= e!2708337 (and tp_is_empty!25125 tp_is_empty!25127 tp!1329897))))

(assert (=> b!4351940 (= tp!1329888 e!2708337)))

(assert (= (and b!4351940 (is-Cons!48883 (t!355927 newBucket!200))) b!4352178))

(declare-fun b!4352183 () Bool)

(declare-fun e!2708340 () Bool)

(declare-fun tp!1329902 () Bool)

(declare-fun tp!1329903 () Bool)

(assert (=> b!4352183 (= e!2708340 (and tp!1329902 tp!1329903))))

(assert (=> b!4351931 (= tp!1329887 e!2708340)))

(assert (= (and b!4351931 (is-Cons!48884 (toList!2927 lm!1707))) b!4352183))

(declare-fun b_lambda!130683 () Bool)

(assert (= b_lambda!130667 (or start!420638 b_lambda!130683)))

(declare-fun bs!629572 () Bool)

(declare-fun d!1285766 () Bool)

(assert (= bs!629572 (and d!1285766 start!420638)))

(assert (=> bs!629572 (= (dynLambda!20616 lambda!139592 lt!1565334) (noDuplicateKeys!472 (_2!27424 lt!1565334)))))

(declare-fun m!4963297 () Bool)

(assert (=> bs!629572 m!4963297))

(assert (=> d!1285696 d!1285766))

(declare-fun b_lambda!130685 () Bool)

(assert (= b_lambda!130679 (or start!420638 b_lambda!130685)))

(declare-fun bs!629573 () Bool)

(declare-fun d!1285768 () Bool)

(assert (= bs!629573 (and d!1285768 start!420638)))

(assert (=> bs!629573 (= (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lt!1565343))) (noDuplicateKeys!472 (_2!27424 (h!54421 (toList!2927 lt!1565343)))))))

(declare-fun m!4963299 () Bool)

(assert (=> bs!629573 m!4963299))

(assert (=> b!4352138 d!1285768))

(declare-fun b_lambda!130687 () Bool)

(assert (= b_lambda!130681 (or start!420638 b_lambda!130687)))

(declare-fun bs!629574 () Bool)

(declare-fun d!1285770 () Bool)

(assert (= bs!629574 (and d!1285770 start!420638)))

(assert (=> bs!629574 (= (dynLambda!20616 lambda!139592 (tuple2!48261 hash!377 newBucket!200)) (noDuplicateKeys!472 (_2!27424 (tuple2!48261 hash!377 newBucket!200))))))

(declare-fun m!4963301 () Bool)

(assert (=> bs!629574 m!4963301))

(assert (=> b!4352145 d!1285770))

(declare-fun b_lambda!130689 () Bool)

(assert (= b_lambda!130671 (or start!420638 b_lambda!130689)))

(declare-fun bs!629575 () Bool)

(declare-fun d!1285772 () Bool)

(assert (= bs!629575 (and d!1285772 start!420638)))

(assert (=> bs!629575 (= (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lt!1565336))) (noDuplicateKeys!472 (_2!27424 (h!54421 (toList!2927 lt!1565336)))))))

(declare-fun m!4963303 () Bool)

(assert (=> bs!629575 m!4963303))

(assert (=> b!4352025 d!1285772))

(declare-fun b_lambda!130691 () Bool)

(assert (= b_lambda!130677 (or start!420638 b_lambda!130691)))

(declare-fun bs!629576 () Bool)

(declare-fun d!1285774 () Bool)

(assert (= bs!629576 (and d!1285774 start!420638)))

(assert (=> bs!629576 (= (dynLambda!20616 lambda!139592 (h!54421 (toList!2927 lm!1707))) (noDuplicateKeys!472 (_2!27424 (h!54421 (toList!2927 lm!1707)))))))

(assert (=> bs!629576 m!4963075))

(assert (=> b!4352130 d!1285774))

(push 1)

(assert (not b!4352045))

(assert (not d!1285706))

(assert (not b!4352139))

(assert tp_is_empty!25125)

(assert (not b!4352131))

(assert (not b!4352033))

(assert tp_is_empty!25127)

(assert (not bs!629574))

(assert (not b!4352092))

(assert (not bs!629572))

(assert (not bm!302476))

(assert (not b!4352136))

(assert (not b!4352153))

(assert (not b!4352158))

(assert (not b!4352049))

(assert (not bm!302478))

(assert (not b!4351999))

(assert (not b!4352116))

(assert (not b!4352088))

(assert (not d!1285756))

(assert (not b!4352010))

(assert (not b!4352178))

(assert (not b!4352094))

(assert (not bs!629573))

(assert (not b!4352056))

(assert (not d!1285744))

(assert (not b!4352106))

(assert (not b!4352112))

(assert (not b!4352141))

(assert (not d!1285690))

(assert (not d!1285736))

(assert (not b!4352115))

(assert (not b!4352137))

(assert (not b!4352109))

(assert (not b_lambda!130687))

(assert (not b!4352152))

(assert (not d!1285760))

(assert (not d!1285692))

(assert (not b!4352047))

(assert (not d!1285764))

(assert (not b!4352171))

(assert (not b!4352155))

(assert (not d!1285724))

(assert (not b!4352151))

(assert (not b!4352003))

(assert (not bm!302475))

(assert (not b!4352173))

(assert (not d!1285726))

(assert (not b!4352114))

(assert (not b!4352091))

(assert (not b!4352093))

(assert (not b!4352148))

(assert (not b!4352046))

(assert (not b!4352110))

(assert (not d!1285728))

(assert (not d!1285720))

(assert (not d!1285714))

(assert (not d!1285710))

(assert (not bs!629575))

(assert (not b!4352113))

(assert (not b!4352147))

(assert (not b!4352095))

(assert (not b_lambda!130691))

(assert (not d!1285688))

(assert (not d!1285752))

(assert (not d!1285732))

(assert (not d!1285702))

(assert (not bs!629576))

(assert (not d!1285686))

(assert (not b!4352150))

(assert (not d!1285754))

(assert (not b!4352183))

(assert (not d!1285722))

(assert (not b!4352026))

(assert (not b_lambda!130689))

(assert (not d!1285738))

(assert (not b!4352140))

(assert (not d!1285700))

(assert (not d!1285734))

(assert (not d!1285750))

(assert (not b!4352154))

(assert (not b!4352089))

(assert (not b!4351988))

(assert (not d!1285696))

(assert (not b!4352107))

(assert (not b_lambda!130685))

(assert (not b_lambda!130683))

(assert (not d!1285762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

