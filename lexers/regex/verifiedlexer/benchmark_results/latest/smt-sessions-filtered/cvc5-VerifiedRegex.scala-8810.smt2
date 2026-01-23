; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471382 () Bool)

(assert start!471382)

(declare-fun b!4672096 () Bool)

(declare-fun res!1967039 () Bool)

(declare-fun e!2915612 () Bool)

(assert (=> b!4672096 (=> (not res!1967039) (not e!2915612))))

(declare-datatypes ((K!13453 0))(
  ( (K!13454 (val!19033 Int)) )
))
(declare-datatypes ((V!13699 0))(
  ( (V!13700 (val!19034 Int)) )
))
(declare-datatypes ((tuple2!53278 0))(
  ( (tuple2!53279 (_1!29933 K!13453) (_2!29933 V!13699)) )
))
(declare-datatypes ((List!52204 0))(
  ( (Nil!52080) (Cons!52080 (h!58262 tuple2!53278) (t!359342 List!52204)) )
))
(declare-datatypes ((tuple2!53280 0))(
  ( (tuple2!53281 (_1!29934 (_ BitVec 64)) (_2!29934 List!52204)) )
))
(declare-datatypes ((List!52205 0))(
  ( (Nil!52081) (Cons!52081 (h!58263 tuple2!53280) (t!359343 List!52205)) )
))
(declare-datatypes ((ListLongMap!3861 0))(
  ( (ListLongMap!3862 (toList!5331 List!52205)) )
))
(declare-fun lm!2023 () ListLongMap!3861)

(declare-datatypes ((Hashable!6090 0))(
  ( (HashableExt!6089 (__x!31793 Int)) )
))
(declare-fun hashF!1323 () Hashable!6090)

(declare-fun allKeysSameHashInMap!1635 (ListLongMap!3861 Hashable!6090) Bool)

(assert (=> b!4672096 (= res!1967039 (allKeysSameHashInMap!1635 lm!2023 hashF!1323))))

(declare-fun b!4672097 () Bool)

(declare-fun isEmpty!29061 (ListLongMap!3861) Bool)

(assert (=> b!4672097 (= e!2915612 (isEmpty!29061 lm!2023))))

(declare-fun b!4672098 () Bool)

(declare-fun res!1967035 () Bool)

(assert (=> b!4672098 (=> (not res!1967035) (not e!2915612))))

(declare-fun key!4653 () K!13453)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3870 (Hashable!6090 K!13453) (_ BitVec 64))

(assert (=> b!4672098 (= res!1967035 (= (hash!3870 hashF!1323 key!4653) hash!405))))

(declare-fun b!4672099 () Bool)

(declare-fun res!1967041 () Bool)

(assert (=> b!4672099 (=> (not res!1967041) (not e!2915612))))

(declare-fun oldBucket!34 () List!52204)

(declare-fun allKeysSameHash!1547 (List!52204 (_ BitVec 64) Hashable!6090) Bool)

(assert (=> b!4672099 (= res!1967041 (allKeysSameHash!1547 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4672100 () Bool)

(declare-fun res!1967042 () Bool)

(assert (=> b!4672100 (=> (not res!1967042) (not e!2915612))))

(assert (=> b!4672100 (= res!1967042 (is-Cons!52081 (toList!5331 lm!2023)))))

(declare-fun b!4672101 () Bool)

(declare-fun res!1967034 () Bool)

(assert (=> b!4672101 (=> (not res!1967034) (not e!2915612))))

(declare-fun newBucket!218 () List!52204)

(declare-fun noDuplicateKeys!1721 (List!52204) Bool)

(assert (=> b!4672101 (= res!1967034 (noDuplicateKeys!1721 newBucket!218))))

(declare-fun b!4672102 () Bool)

(declare-fun e!2915610 () Bool)

(declare-fun tp!1344069 () Bool)

(assert (=> b!4672102 (= e!2915610 tp!1344069)))

(declare-fun b!4672103 () Bool)

(declare-fun res!1967040 () Bool)

(assert (=> b!4672103 (=> (not res!1967040) (not e!2915612))))

(declare-datatypes ((ListMap!4695 0))(
  ( (ListMap!4696 (toList!5332 List!52204)) )
))
(declare-fun contains!15264 (ListMap!4695 K!13453) Bool)

(declare-fun extractMap!1747 (List!52205) ListMap!4695)

(assert (=> b!4672103 (= res!1967040 (contains!15264 (extractMap!1747 (toList!5331 lm!2023)) key!4653))))

(declare-fun b!4672105 () Bool)

(declare-fun res!1967036 () Bool)

(assert (=> b!4672105 (=> (not res!1967036) (not e!2915612))))

(declare-fun head!9761 (List!52205) tuple2!53280)

(assert (=> b!4672105 (= res!1967036 (= (head!9761 (toList!5331 lm!2023)) (tuple2!53281 hash!405 oldBucket!34)))))

(declare-fun tp_is_empty!30177 () Bool)

(declare-fun tp_is_empty!30179 () Bool)

(declare-fun tp!1344070 () Bool)

(declare-fun b!4672106 () Bool)

(declare-fun e!2915613 () Bool)

(assert (=> b!4672106 (= e!2915613 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344070))))

(declare-fun b!4672107 () Bool)

(declare-fun res!1967038 () Bool)

(assert (=> b!4672107 (=> (not res!1967038) (not e!2915612))))

(declare-fun removePairForKey!1316 (List!52204 K!13453) List!52204)

(assert (=> b!4672107 (= res!1967038 (= (removePairForKey!1316 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4672108 () Bool)

(declare-fun res!1967044 () Bool)

(assert (=> b!4672108 (=> (not res!1967044) (not e!2915612))))

(assert (=> b!4672108 (= res!1967044 (allKeysSameHash!1547 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1344068 () Bool)

(declare-fun b!4672109 () Bool)

(declare-fun e!2915611 () Bool)

(assert (=> b!4672109 (= e!2915611 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344068))))

(declare-fun b!4672104 () Bool)

(declare-fun res!1967037 () Bool)

(assert (=> b!4672104 (=> (not res!1967037) (not e!2915612))))

(assert (=> b!4672104 (= res!1967037 (noDuplicateKeys!1721 oldBucket!34))))

(declare-fun res!1967043 () Bool)

(assert (=> start!471382 (=> (not res!1967043) (not e!2915612))))

(declare-fun lambda!202781 () Int)

(declare-fun forall!11124 (List!52205 Int) Bool)

(assert (=> start!471382 (= res!1967043 (forall!11124 (toList!5331 lm!2023) lambda!202781))))

(assert (=> start!471382 e!2915612))

(declare-fun inv!67328 (ListLongMap!3861) Bool)

(assert (=> start!471382 (and (inv!67328 lm!2023) e!2915610)))

(assert (=> start!471382 tp_is_empty!30177))

(assert (=> start!471382 e!2915611))

(assert (=> start!471382 true))

(assert (=> start!471382 e!2915613))

(assert (= (and start!471382 res!1967043) b!4672104))

(assert (= (and b!4672104 res!1967037) b!4672101))

(assert (= (and b!4672101 res!1967034) b!4672107))

(assert (= (and b!4672107 res!1967038) b!4672099))

(assert (= (and b!4672099 res!1967041) b!4672103))

(assert (= (and b!4672103 res!1967040) b!4672098))

(assert (= (and b!4672098 res!1967035) b!4672108))

(assert (= (and b!4672108 res!1967044) b!4672096))

(assert (= (and b!4672096 res!1967039) b!4672105))

(assert (= (and b!4672105 res!1967036) b!4672100))

(assert (= (and b!4672100 res!1967042) b!4672097))

(assert (= start!471382 b!4672102))

(assert (= (and start!471382 (is-Cons!52080 oldBucket!34)) b!4672109))

(assert (= (and start!471382 (is-Cons!52080 newBucket!218)) b!4672106))

(declare-fun m!5565893 () Bool)

(assert (=> b!4672097 m!5565893))

(declare-fun m!5565895 () Bool)

(assert (=> b!4672104 m!5565895))

(declare-fun m!5565897 () Bool)

(assert (=> start!471382 m!5565897))

(declare-fun m!5565899 () Bool)

(assert (=> start!471382 m!5565899))

(declare-fun m!5565901 () Bool)

(assert (=> b!4672098 m!5565901))

(declare-fun m!5565903 () Bool)

(assert (=> b!4672101 m!5565903))

(declare-fun m!5565905 () Bool)

(assert (=> b!4672105 m!5565905))

(declare-fun m!5565907 () Bool)

(assert (=> b!4672099 m!5565907))

(declare-fun m!5565909 () Bool)

(assert (=> b!4672107 m!5565909))

(declare-fun m!5565911 () Bool)

(assert (=> b!4672103 m!5565911))

(assert (=> b!4672103 m!5565911))

(declare-fun m!5565913 () Bool)

(assert (=> b!4672103 m!5565913))

(declare-fun m!5565915 () Bool)

(assert (=> b!4672096 m!5565915))

(declare-fun m!5565917 () Bool)

(assert (=> b!4672108 m!5565917))

(push 1)

(assert (not b!4672098))

(assert tp_is_empty!30177)

(assert (not b!4672099))

(assert (not b!4672097))

(assert tp_is_empty!30179)

(assert (not b!4672102))

(assert (not b!4672096))

(assert (not b!4672108))

(assert (not b!4672107))

(assert (not b!4672106))

(assert (not b!4672109))

(assert (not b!4672103))

(assert (not b!4672101))

(assert (not b!4672104))

(assert (not start!471382))

(assert (not b!4672105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485677 () Bool)

(assert (=> d!1485677 (= (head!9761 (toList!5331 lm!2023)) (h!58263 (toList!5331 lm!2023)))))

(assert (=> b!4672105 d!1485677))

(declare-fun d!1485679 () Bool)

(assert (=> d!1485679 true))

(assert (=> d!1485679 true))

(declare-fun lambda!202787 () Int)

(declare-fun forall!11126 (List!52204 Int) Bool)

(assert (=> d!1485679 (= (allKeysSameHash!1547 oldBucket!34 hash!405 hashF!1323) (forall!11126 oldBucket!34 lambda!202787))))

(declare-fun bs!1079098 () Bool)

(assert (= bs!1079098 d!1485679))

(declare-fun m!5565945 () Bool)

(assert (=> bs!1079098 m!5565945))

(assert (=> b!4672099 d!1485679))

(declare-fun d!1485681 () Bool)

(declare-fun res!1967082 () Bool)

(declare-fun e!2915630 () Bool)

(assert (=> d!1485681 (=> res!1967082 e!2915630)))

(assert (=> d!1485681 (= res!1967082 (not (is-Cons!52080 oldBucket!34)))))

(assert (=> d!1485681 (= (noDuplicateKeys!1721 oldBucket!34) e!2915630)))

(declare-fun b!4672160 () Bool)

(declare-fun e!2915631 () Bool)

(assert (=> b!4672160 (= e!2915630 e!2915631)))

(declare-fun res!1967083 () Bool)

(assert (=> b!4672160 (=> (not res!1967083) (not e!2915631))))

(declare-fun containsKey!2863 (List!52204 K!13453) Bool)

(assert (=> b!4672160 (= res!1967083 (not (containsKey!2863 (t!359342 oldBucket!34) (_1!29933 (h!58262 oldBucket!34)))))))

(declare-fun b!4672161 () Bool)

(assert (=> b!4672161 (= e!2915631 (noDuplicateKeys!1721 (t!359342 oldBucket!34)))))

(assert (= (and d!1485681 (not res!1967082)) b!4672160))

(assert (= (and b!4672160 res!1967083) b!4672161))

(declare-fun m!5565947 () Bool)

(assert (=> b!4672160 m!5565947))

(declare-fun m!5565949 () Bool)

(assert (=> b!4672161 m!5565949))

(assert (=> b!4672104 d!1485681))

(declare-fun d!1485685 () Bool)

(declare-fun hash!3872 (Hashable!6090 K!13453) (_ BitVec 64))

(assert (=> d!1485685 (= (hash!3870 hashF!1323 key!4653) (hash!3872 hashF!1323 key!4653))))

(declare-fun bs!1079099 () Bool)

(assert (= bs!1079099 d!1485685))

(declare-fun m!5565951 () Bool)

(assert (=> bs!1079099 m!5565951))

(assert (=> b!4672098 d!1485685))

(declare-fun b!4672196 () Bool)

(declare-datatypes ((List!52208 0))(
  ( (Nil!52084) (Cons!52084 (h!58268 K!13453) (t!359346 List!52208)) )
))
(declare-fun e!2915651 () List!52208)

(declare-fun getKeysList!786 (List!52204) List!52208)

(assert (=> b!4672196 (= e!2915651 (getKeysList!786 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))

(declare-fun b!4672197 () Bool)

(declare-fun e!2915650 () Bool)

(declare-fun contains!15266 (List!52208 K!13453) Bool)

(declare-fun keys!18517 (ListMap!4695) List!52208)

(assert (=> b!4672197 (= e!2915650 (not (contains!15266 (keys!18517 (extractMap!1747 (toList!5331 lm!2023))) key!4653)))))

(declare-fun b!4672198 () Bool)

(assert (=> b!4672198 false))

(declare-datatypes ((Unit!121311 0))(
  ( (Unit!121312) )
))
(declare-fun lt!1833866 () Unit!121311)

(declare-fun lt!1833869 () Unit!121311)

(assert (=> b!4672198 (= lt!1833866 lt!1833869)))

(declare-fun containsKey!2864 (List!52204 K!13453) Bool)

(assert (=> b!4672198 (containsKey!2864 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!785 (List!52204 K!13453) Unit!121311)

(assert (=> b!4672198 (= lt!1833869 (lemmaInGetKeysListThenContainsKey!785 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(declare-fun e!2915653 () Unit!121311)

(declare-fun Unit!121313 () Unit!121311)

(assert (=> b!4672198 (= e!2915653 Unit!121313)))

(declare-fun bm!326541 () Bool)

(declare-fun call!326546 () Bool)

(assert (=> bm!326541 (= call!326546 (contains!15266 e!2915651 key!4653))))

(declare-fun c!799745 () Bool)

(declare-fun c!799746 () Bool)

(assert (=> bm!326541 (= c!799745 c!799746)))

(declare-fun d!1485687 () Bool)

(declare-fun e!2915652 () Bool)

(assert (=> d!1485687 e!2915652))

(declare-fun res!1967090 () Bool)

(assert (=> d!1485687 (=> res!1967090 e!2915652)))

(assert (=> d!1485687 (= res!1967090 e!2915650)))

(declare-fun res!1967091 () Bool)

(assert (=> d!1485687 (=> (not res!1967091) (not e!2915650))))

(declare-fun lt!1833868 () Bool)

(assert (=> d!1485687 (= res!1967091 (not lt!1833868))))

(declare-fun lt!1833870 () Bool)

(assert (=> d!1485687 (= lt!1833868 lt!1833870)))

(declare-fun lt!1833867 () Unit!121311)

(declare-fun e!2915655 () Unit!121311)

(assert (=> d!1485687 (= lt!1833867 e!2915655)))

(assert (=> d!1485687 (= c!799746 lt!1833870)))

(assert (=> d!1485687 (= lt!1833870 (containsKey!2864 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(assert (=> d!1485687 (= (contains!15264 (extractMap!1747 (toList!5331 lm!2023)) key!4653) lt!1833868)))

(declare-fun b!4672199 () Bool)

(assert (=> b!4672199 (= e!2915651 (keys!18517 (extractMap!1747 (toList!5331 lm!2023))))))

(declare-fun b!4672200 () Bool)

(declare-fun Unit!121314 () Unit!121311)

(assert (=> b!4672200 (= e!2915653 Unit!121314)))

(declare-fun b!4672201 () Bool)

(declare-fun e!2915654 () Bool)

(assert (=> b!4672201 (= e!2915654 (contains!15266 (keys!18517 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(declare-fun b!4672202 () Bool)

(declare-fun lt!1833865 () Unit!121311)

(assert (=> b!4672202 (= e!2915655 lt!1833865)))

(declare-fun lt!1833871 () Unit!121311)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1581 (List!52204 K!13453) Unit!121311)

(assert (=> b!4672202 (= lt!1833871 (lemmaContainsKeyImpliesGetValueByKeyDefined!1581 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(declare-datatypes ((Option!11941 0))(
  ( (None!11940) (Some!11940 (v!46301 V!13699)) )
))
(declare-fun isDefined!9196 (Option!11941) Bool)

(declare-fun getValueByKey!1689 (List!52204 K!13453) Option!11941)

(assert (=> b!4672202 (isDefined!9196 (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(declare-fun lt!1833872 () Unit!121311)

(assert (=> b!4672202 (= lt!1833872 lt!1833871)))

(declare-fun lemmaInListThenGetKeysListContains!781 (List!52204 K!13453) Unit!121311)

(assert (=> b!4672202 (= lt!1833865 (lemmaInListThenGetKeysListContains!781 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(assert (=> b!4672202 call!326546))

(declare-fun b!4672203 () Bool)

(assert (=> b!4672203 (= e!2915652 e!2915654)))

(declare-fun res!1967092 () Bool)

(assert (=> b!4672203 (=> (not res!1967092) (not e!2915654))))

(assert (=> b!4672203 (= res!1967092 (isDefined!9196 (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653)))))

(declare-fun b!4672204 () Bool)

(assert (=> b!4672204 (= e!2915655 e!2915653)))

(declare-fun c!799747 () Bool)

(assert (=> b!4672204 (= c!799747 call!326546)))

(assert (= (and d!1485687 c!799746) b!4672202))

(assert (= (and d!1485687 (not c!799746)) b!4672204))

(assert (= (and b!4672204 c!799747) b!4672198))

(assert (= (and b!4672204 (not c!799747)) b!4672200))

(assert (= (or b!4672202 b!4672204) bm!326541))

(assert (= (and bm!326541 c!799745) b!4672196))

(assert (= (and bm!326541 (not c!799745)) b!4672199))

(assert (= (and d!1485687 res!1967091) b!4672197))

(assert (= (and d!1485687 (not res!1967090)) b!4672203))

(assert (= (and b!4672203 res!1967092) b!4672201))

(assert (=> b!4672197 m!5565911))

(declare-fun m!5565961 () Bool)

(assert (=> b!4672197 m!5565961))

(assert (=> b!4672197 m!5565961))

(declare-fun m!5565963 () Bool)

(assert (=> b!4672197 m!5565963))

(declare-fun m!5565965 () Bool)

(assert (=> d!1485687 m!5565965))

(declare-fun m!5565967 () Bool)

(assert (=> bm!326541 m!5565967))

(assert (=> b!4672201 m!5565911))

(assert (=> b!4672201 m!5565961))

(assert (=> b!4672201 m!5565961))

(assert (=> b!4672201 m!5565963))

(declare-fun m!5565969 () Bool)

(assert (=> b!4672203 m!5565969))

(assert (=> b!4672203 m!5565969))

(declare-fun m!5565971 () Bool)

(assert (=> b!4672203 m!5565971))

(assert (=> b!4672199 m!5565911))

(assert (=> b!4672199 m!5565961))

(declare-fun m!5565973 () Bool)

(assert (=> b!4672196 m!5565973))

(assert (=> b!4672198 m!5565965))

(declare-fun m!5565975 () Bool)

(assert (=> b!4672198 m!5565975))

(declare-fun m!5565977 () Bool)

(assert (=> b!4672202 m!5565977))

(assert (=> b!4672202 m!5565969))

(assert (=> b!4672202 m!5565969))

(assert (=> b!4672202 m!5565971))

(declare-fun m!5565979 () Bool)

(assert (=> b!4672202 m!5565979))

(assert (=> b!4672103 d!1485687))

(declare-fun bs!1079105 () Bool)

(declare-fun d!1485697 () Bool)

(assert (= bs!1079105 (and d!1485697 start!471382)))

(declare-fun lambda!202794 () Int)

(assert (=> bs!1079105 (= lambda!202794 lambda!202781)))

(declare-fun lt!1833875 () ListMap!4695)

(declare-fun invariantList!1347 (List!52204) Bool)

(assert (=> d!1485697 (invariantList!1347 (toList!5332 lt!1833875))))

(declare-fun e!2915658 () ListMap!4695)

(assert (=> d!1485697 (= lt!1833875 e!2915658)))

(declare-fun c!799750 () Bool)

(assert (=> d!1485697 (= c!799750 (is-Cons!52081 (toList!5331 lm!2023)))))

(assert (=> d!1485697 (forall!11124 (toList!5331 lm!2023) lambda!202794)))

(assert (=> d!1485697 (= (extractMap!1747 (toList!5331 lm!2023)) lt!1833875)))

(declare-fun b!4672209 () Bool)

(declare-fun addToMapMapFromBucket!1156 (List!52204 ListMap!4695) ListMap!4695)

(assert (=> b!4672209 (= e!2915658 (addToMapMapFromBucket!1156 (_2!29934 (h!58263 (toList!5331 lm!2023))) (extractMap!1747 (t!359343 (toList!5331 lm!2023)))))))

(declare-fun b!4672210 () Bool)

(assert (=> b!4672210 (= e!2915658 (ListMap!4696 Nil!52080))))

(assert (= (and d!1485697 c!799750) b!4672209))

(assert (= (and d!1485697 (not c!799750)) b!4672210))

(declare-fun m!5565985 () Bool)

(assert (=> d!1485697 m!5565985))

(declare-fun m!5565987 () Bool)

(assert (=> d!1485697 m!5565987))

(declare-fun m!5565989 () Bool)

(assert (=> b!4672209 m!5565989))

(assert (=> b!4672209 m!5565989))

(declare-fun m!5565991 () Bool)

(assert (=> b!4672209 m!5565991))

(assert (=> b!4672103 d!1485697))

(declare-fun bs!1079106 () Bool)

(declare-fun d!1485703 () Bool)

(assert (= bs!1079106 (and d!1485703 d!1485679)))

(declare-fun lambda!202795 () Int)

(assert (=> bs!1079106 (= lambda!202795 lambda!202787)))

(assert (=> d!1485703 true))

(assert (=> d!1485703 true))

(assert (=> d!1485703 (= (allKeysSameHash!1547 newBucket!218 hash!405 hashF!1323) (forall!11126 newBucket!218 lambda!202795))))

(declare-fun bs!1079107 () Bool)

(assert (= bs!1079107 d!1485703))

(declare-fun m!5565993 () Bool)

(assert (=> bs!1079107 m!5565993))

(assert (=> b!4672108 d!1485703))

(declare-fun d!1485705 () Bool)

(declare-fun res!1967097 () Bool)

(declare-fun e!2915663 () Bool)

(assert (=> d!1485705 (=> res!1967097 e!2915663)))

(assert (=> d!1485705 (= res!1967097 (is-Nil!52081 (toList!5331 lm!2023)))))

(assert (=> d!1485705 (= (forall!11124 (toList!5331 lm!2023) lambda!202781) e!2915663)))

(declare-fun b!4672215 () Bool)

(declare-fun e!2915664 () Bool)

(assert (=> b!4672215 (= e!2915663 e!2915664)))

(declare-fun res!1967098 () Bool)

(assert (=> b!4672215 (=> (not res!1967098) (not e!2915664))))

(declare-fun dynLambda!21648 (Int tuple2!53280) Bool)

(assert (=> b!4672215 (= res!1967098 (dynLambda!21648 lambda!202781 (h!58263 (toList!5331 lm!2023))))))

(declare-fun b!4672216 () Bool)

(assert (=> b!4672216 (= e!2915664 (forall!11124 (t!359343 (toList!5331 lm!2023)) lambda!202781))))

(assert (= (and d!1485705 (not res!1967097)) b!4672215))

(assert (= (and b!4672215 res!1967098) b!4672216))

(declare-fun b_lambda!176397 () Bool)

(assert (=> (not b_lambda!176397) (not b!4672215)))

(declare-fun m!5565995 () Bool)

(assert (=> b!4672215 m!5565995))

(declare-fun m!5565997 () Bool)

(assert (=> b!4672216 m!5565997))

(assert (=> start!471382 d!1485705))

(declare-fun d!1485707 () Bool)

(declare-fun isStrictlySorted!587 (List!52205) Bool)

(assert (=> d!1485707 (= (inv!67328 lm!2023) (isStrictlySorted!587 (toList!5331 lm!2023)))))

(declare-fun bs!1079108 () Bool)

(assert (= bs!1079108 d!1485707))

(declare-fun m!5565999 () Bool)

(assert (=> bs!1079108 m!5565999))

(assert (=> start!471382 d!1485707))

(declare-fun d!1485709 () Bool)

(declare-fun isEmpty!29063 (List!52205) Bool)

(assert (=> d!1485709 (= (isEmpty!29061 lm!2023) (isEmpty!29063 (toList!5331 lm!2023)))))

(declare-fun bs!1079109 () Bool)

(assert (= bs!1079109 d!1485709))

(declare-fun m!5566001 () Bool)

(assert (=> bs!1079109 m!5566001))

(assert (=> b!4672097 d!1485709))

(declare-fun b!4672227 () Bool)

(declare-fun e!2915670 () List!52204)

(assert (=> b!4672227 (= e!2915670 (Cons!52080 (h!58262 oldBucket!34) (removePairForKey!1316 (t!359342 oldBucket!34) key!4653)))))

(declare-fun d!1485711 () Bool)

(declare-fun lt!1833878 () List!52204)

(assert (=> d!1485711 (not (containsKey!2863 lt!1833878 key!4653))))

(declare-fun e!2915669 () List!52204)

(assert (=> d!1485711 (= lt!1833878 e!2915669)))

(declare-fun c!799756 () Bool)

(assert (=> d!1485711 (= c!799756 (and (is-Cons!52080 oldBucket!34) (= (_1!29933 (h!58262 oldBucket!34)) key!4653)))))

(assert (=> d!1485711 (noDuplicateKeys!1721 oldBucket!34)))

(assert (=> d!1485711 (= (removePairForKey!1316 oldBucket!34 key!4653) lt!1833878)))

(declare-fun b!4672226 () Bool)

(assert (=> b!4672226 (= e!2915669 e!2915670)))

(declare-fun c!799755 () Bool)

(assert (=> b!4672226 (= c!799755 (is-Cons!52080 oldBucket!34))))

(declare-fun b!4672225 () Bool)

(assert (=> b!4672225 (= e!2915669 (t!359342 oldBucket!34))))

(declare-fun b!4672228 () Bool)

(assert (=> b!4672228 (= e!2915670 Nil!52080)))

(assert (= (and d!1485711 c!799756) b!4672225))

(assert (= (and d!1485711 (not c!799756)) b!4672226))

(assert (= (and b!4672226 c!799755) b!4672227))

(assert (= (and b!4672226 (not c!799755)) b!4672228))

(declare-fun m!5566003 () Bool)

(assert (=> b!4672227 m!5566003))

(declare-fun m!5566005 () Bool)

(assert (=> d!1485711 m!5566005))

(assert (=> d!1485711 m!5565895))

(assert (=> b!4672107 d!1485711))

(declare-fun bs!1079110 () Bool)

(declare-fun d!1485713 () Bool)

(assert (= bs!1079110 (and d!1485713 start!471382)))

(declare-fun lambda!202798 () Int)

(assert (=> bs!1079110 (not (= lambda!202798 lambda!202781))))

(declare-fun bs!1079111 () Bool)

(assert (= bs!1079111 (and d!1485713 d!1485697)))

(assert (=> bs!1079111 (not (= lambda!202798 lambda!202794))))

(assert (=> d!1485713 true))

(assert (=> d!1485713 (= (allKeysSameHashInMap!1635 lm!2023 hashF!1323) (forall!11124 (toList!5331 lm!2023) lambda!202798))))

(declare-fun bs!1079112 () Bool)

(assert (= bs!1079112 d!1485713))

(declare-fun m!5566007 () Bool)

(assert (=> bs!1079112 m!5566007))

(assert (=> b!4672096 d!1485713))

(declare-fun d!1485715 () Bool)

(declare-fun res!1967099 () Bool)

(declare-fun e!2915671 () Bool)

(assert (=> d!1485715 (=> res!1967099 e!2915671)))

(assert (=> d!1485715 (= res!1967099 (not (is-Cons!52080 newBucket!218)))))

(assert (=> d!1485715 (= (noDuplicateKeys!1721 newBucket!218) e!2915671)))

(declare-fun b!4672231 () Bool)

(declare-fun e!2915672 () Bool)

(assert (=> b!4672231 (= e!2915671 e!2915672)))

(declare-fun res!1967100 () Bool)

(assert (=> b!4672231 (=> (not res!1967100) (not e!2915672))))

(assert (=> b!4672231 (= res!1967100 (not (containsKey!2863 (t!359342 newBucket!218) (_1!29933 (h!58262 newBucket!218)))))))

(declare-fun b!4672232 () Bool)

(assert (=> b!4672232 (= e!2915672 (noDuplicateKeys!1721 (t!359342 newBucket!218)))))

(assert (= (and d!1485715 (not res!1967099)) b!4672231))

(assert (= (and b!4672231 res!1967100) b!4672232))

(declare-fun m!5566009 () Bool)

(assert (=> b!4672231 m!5566009))

(declare-fun m!5566011 () Bool)

(assert (=> b!4672232 m!5566011))

(assert (=> b!4672101 d!1485715))

(declare-fun e!2915675 () Bool)

(declare-fun tp!1344082 () Bool)

(declare-fun b!4672237 () Bool)

(assert (=> b!4672237 (= e!2915675 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344082))))

(assert (=> b!4672106 (= tp!1344070 e!2915675)))

(assert (= (and b!4672106 (is-Cons!52080 (t!359342 newBucket!218))) b!4672237))

(declare-fun b!4672238 () Bool)

(declare-fun e!2915676 () Bool)

(declare-fun tp!1344083 () Bool)

(assert (=> b!4672238 (= e!2915676 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344083))))

(assert (=> b!4672109 (= tp!1344068 e!2915676)))

(assert (= (and b!4672109 (is-Cons!52080 (t!359342 oldBucket!34))) b!4672238))

(declare-fun b!4672243 () Bool)

(declare-fun e!2915679 () Bool)

(declare-fun tp!1344088 () Bool)

(declare-fun tp!1344089 () Bool)

(assert (=> b!4672243 (= e!2915679 (and tp!1344088 tp!1344089))))

(assert (=> b!4672102 (= tp!1344069 e!2915679)))

(assert (= (and b!4672102 (is-Cons!52081 (toList!5331 lm!2023))) b!4672243))

(declare-fun b_lambda!176399 () Bool)

(assert (= b_lambda!176397 (or start!471382 b_lambda!176399)))

(declare-fun bs!1079113 () Bool)

(declare-fun d!1485717 () Bool)

(assert (= bs!1079113 (and d!1485717 start!471382)))

(assert (=> bs!1079113 (= (dynLambda!21648 lambda!202781 (h!58263 (toList!5331 lm!2023))) (noDuplicateKeys!1721 (_2!29934 (h!58263 (toList!5331 lm!2023)))))))

(declare-fun m!5566013 () Bool)

(assert (=> bs!1079113 m!5566013))

(assert (=> b!4672215 d!1485717))

(push 1)

(assert (not d!1485713))

(assert (not b!4672202))

(assert (not b!4672231))

(assert (not b!4672203))

(assert (not b!4672232))

(assert (not d!1485709))

(assert (not d!1485697))

(assert (not d!1485703))

(assert (not b!4672227))

(assert (not d!1485679))

(assert (not d!1485687))

(assert (not b!4672216))

(assert (not b!4672161))

(assert (not d!1485707))

(assert tp_is_empty!30177)

(assert (not b!4672196))

(assert (not b!4672209))

(assert (not b!4672201))

(assert (not b!4672237))

(assert (not b_lambda!176399))

(assert (not d!1485711))

(assert (not b!4672198))

(assert (not bs!1079113))

(assert tp_is_empty!30179)

(assert (not b!4672238))

(assert (not b!4672197))

(assert (not b!4672243))

(assert (not d!1485685))

(assert (not bm!326541))

(assert (not b!4672199))

(assert (not b!4672160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485733 () Bool)

(declare-fun res!1967124 () Bool)

(declare-fun e!2915722 () Bool)

(assert (=> d!1485733 (=> res!1967124 e!2915722)))

(assert (=> d!1485733 (= res!1967124 (not (is-Cons!52080 (t!359342 newBucket!218))))))

(assert (=> d!1485733 (= (noDuplicateKeys!1721 (t!359342 newBucket!218)) e!2915722)))

(declare-fun b!4672304 () Bool)

(declare-fun e!2915723 () Bool)

(assert (=> b!4672304 (= e!2915722 e!2915723)))

(declare-fun res!1967125 () Bool)

(assert (=> b!4672304 (=> (not res!1967125) (not e!2915723))))

(assert (=> b!4672304 (= res!1967125 (not (containsKey!2863 (t!359342 (t!359342 newBucket!218)) (_1!29933 (h!58262 (t!359342 newBucket!218))))))))

(declare-fun b!4672305 () Bool)

(assert (=> b!4672305 (= e!2915723 (noDuplicateKeys!1721 (t!359342 (t!359342 newBucket!218))))))

(assert (= (and d!1485733 (not res!1967124)) b!4672304))

(assert (= (and b!4672304 res!1967125) b!4672305))

(declare-fun m!5566061 () Bool)

(assert (=> b!4672304 m!5566061))

(declare-fun m!5566063 () Bool)

(assert (=> b!4672305 m!5566063))

(assert (=> b!4672232 d!1485733))

(declare-fun d!1485735 () Bool)

(declare-fun choose!32341 (Hashable!6090 K!13453) (_ BitVec 64))

(assert (=> d!1485735 (= (hash!3872 hashF!1323 key!4653) (choose!32341 hashF!1323 key!4653))))

(declare-fun bs!1079120 () Bool)

(assert (= bs!1079120 d!1485735))

(declare-fun m!5566065 () Bool)

(assert (=> bs!1079120 m!5566065))

(assert (=> d!1485685 d!1485735))

(declare-fun d!1485737 () Bool)

(declare-fun res!1967130 () Bool)

(declare-fun e!2915728 () Bool)

(assert (=> d!1485737 (=> res!1967130 e!2915728)))

(assert (=> d!1485737 (= res!1967130 (and (is-Cons!52080 (t!359342 newBucket!218)) (= (_1!29933 (h!58262 (t!359342 newBucket!218))) (_1!29933 (h!58262 newBucket!218)))))))

(assert (=> d!1485737 (= (containsKey!2863 (t!359342 newBucket!218) (_1!29933 (h!58262 newBucket!218))) e!2915728)))

(declare-fun b!4672310 () Bool)

(declare-fun e!2915729 () Bool)

(assert (=> b!4672310 (= e!2915728 e!2915729)))

(declare-fun res!1967131 () Bool)

(assert (=> b!4672310 (=> (not res!1967131) (not e!2915729))))

(assert (=> b!4672310 (= res!1967131 (is-Cons!52080 (t!359342 newBucket!218)))))

(declare-fun b!4672311 () Bool)

(assert (=> b!4672311 (= e!2915729 (containsKey!2863 (t!359342 (t!359342 newBucket!218)) (_1!29933 (h!58262 newBucket!218))))))

(assert (= (and d!1485737 (not res!1967130)) b!4672310))

(assert (= (and b!4672310 res!1967131) b!4672311))

(declare-fun m!5566067 () Bool)

(assert (=> b!4672311 m!5566067))

(assert (=> b!4672231 d!1485737))

(declare-fun d!1485739 () Bool)

(declare-fun res!1967132 () Bool)

(declare-fun e!2915730 () Bool)

(assert (=> d!1485739 (=> res!1967132 e!2915730)))

(assert (=> d!1485739 (= res!1967132 (and (is-Cons!52080 lt!1833878) (= (_1!29933 (h!58262 lt!1833878)) key!4653)))))

(assert (=> d!1485739 (= (containsKey!2863 lt!1833878 key!4653) e!2915730)))

(declare-fun b!4672312 () Bool)

(declare-fun e!2915731 () Bool)

(assert (=> b!4672312 (= e!2915730 e!2915731)))

(declare-fun res!1967133 () Bool)

(assert (=> b!4672312 (=> (not res!1967133) (not e!2915731))))

(assert (=> b!4672312 (= res!1967133 (is-Cons!52080 lt!1833878))))

(declare-fun b!4672313 () Bool)

(assert (=> b!4672313 (= e!2915731 (containsKey!2863 (t!359342 lt!1833878) key!4653))))

(assert (= (and d!1485739 (not res!1967132)) b!4672312))

(assert (= (and b!4672312 res!1967133) b!4672313))

(declare-fun m!5566069 () Bool)

(assert (=> b!4672313 m!5566069))

(assert (=> d!1485711 d!1485739))

(assert (=> d!1485711 d!1485681))

(declare-fun bs!1079121 () Bool)

(declare-fun b!4672327 () Bool)

(assert (= bs!1079121 (and b!4672327 d!1485679)))

(declare-fun lambda!202833 () Int)

(assert (=> bs!1079121 (not (= lambda!202833 lambda!202787))))

(declare-fun bs!1079122 () Bool)

(assert (= bs!1079122 (and b!4672327 d!1485703)))

(assert (=> bs!1079122 (not (= lambda!202833 lambda!202795))))

(assert (=> b!4672327 true))

(declare-fun bs!1079123 () Bool)

(declare-fun b!4672325 () Bool)

(assert (= bs!1079123 (and b!4672325 d!1485679)))

(declare-fun lambda!202834 () Int)

(assert (=> bs!1079123 (not (= lambda!202834 lambda!202787))))

(declare-fun bs!1079124 () Bool)

(assert (= bs!1079124 (and b!4672325 d!1485703)))

(assert (=> bs!1079124 (not (= lambda!202834 lambda!202795))))

(declare-fun bs!1079125 () Bool)

(assert (= bs!1079125 (and b!4672325 b!4672327)))

(assert (=> bs!1079125 (= lambda!202834 lambda!202833)))

(assert (=> b!4672325 true))

(declare-fun lambda!202835 () Int)

(assert (=> bs!1079123 (not (= lambda!202835 lambda!202787))))

(assert (=> bs!1079124 (not (= lambda!202835 lambda!202795))))

(declare-fun lt!1833953 () ListMap!4695)

(assert (=> bs!1079125 (= (= lt!1833953 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (= lambda!202835 lambda!202833))))

(assert (=> b!4672325 (= (= lt!1833953 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (= lambda!202835 lambda!202834))))

(assert (=> b!4672325 true))

(declare-fun bs!1079126 () Bool)

(declare-fun d!1485741 () Bool)

(assert (= bs!1079126 (and d!1485741 b!4672325)))

(declare-fun lt!1833960 () ListMap!4695)

(declare-fun lambda!202836 () Int)

(assert (=> bs!1079126 (= (= lt!1833960 lt!1833953) (= lambda!202836 lambda!202835))))

(declare-fun bs!1079127 () Bool)

(assert (= bs!1079127 (and d!1485741 d!1485679)))

(assert (=> bs!1079127 (not (= lambda!202836 lambda!202787))))

(declare-fun bs!1079128 () Bool)

(assert (= bs!1079128 (and d!1485741 d!1485703)))

(assert (=> bs!1079128 (not (= lambda!202836 lambda!202795))))

(declare-fun bs!1079129 () Bool)

(assert (= bs!1079129 (and d!1485741 b!4672327)))

(assert (=> bs!1079129 (= (= lt!1833960 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (= lambda!202836 lambda!202833))))

(assert (=> bs!1079126 (= (= lt!1833960 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (= lambda!202836 lambda!202834))))

(assert (=> d!1485741 true))

(declare-fun e!2915738 () Bool)

(assert (=> d!1485741 e!2915738))

(declare-fun res!1967141 () Bool)

(assert (=> d!1485741 (=> (not res!1967141) (not e!2915738))))

(assert (=> d!1485741 (= res!1967141 (forall!11126 (_2!29934 (h!58263 (toList!5331 lm!2023))) lambda!202836))))

(declare-fun e!2915739 () ListMap!4695)

(assert (=> d!1485741 (= lt!1833960 e!2915739)))

(declare-fun c!799771 () Bool)

(assert (=> d!1485741 (= c!799771 (is-Nil!52080 (_2!29934 (h!58263 (toList!5331 lm!2023)))))))

(assert (=> d!1485741 (noDuplicateKeys!1721 (_2!29934 (h!58263 (toList!5331 lm!2023))))))

(assert (=> d!1485741 (= (addToMapMapFromBucket!1156 (_2!29934 (h!58263 (toList!5331 lm!2023))) (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) lt!1833960)))

(declare-fun b!4672324 () Bool)

(declare-fun res!1967140 () Bool)

(assert (=> b!4672324 (=> (not res!1967140) (not e!2915738))))

(assert (=> b!4672324 (= res!1967140 (forall!11126 (toList!5332 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) lambda!202836))))

(assert (=> b!4672325 (= e!2915739 lt!1833953)))

(declare-fun lt!1833948 () ListMap!4695)

(declare-fun +!2044 (ListMap!4695 tuple2!53278) ListMap!4695)

(assert (=> b!4672325 (= lt!1833948 (+!2044 (extractMap!1747 (t!359343 (toList!5331 lm!2023))) (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(assert (=> b!4672325 (= lt!1833953 (addToMapMapFromBucket!1156 (t!359342 (_2!29934 (h!58263 (toList!5331 lm!2023)))) (+!2044 (extractMap!1747 (t!359343 (toList!5331 lm!2023))) (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023)))))))))

(declare-fun lt!1833949 () Unit!121311)

(declare-fun call!326557 () Unit!121311)

(assert (=> b!4672325 (= lt!1833949 call!326557)))

(assert (=> b!4672325 (forall!11126 (toList!5332 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) lambda!202834)))

(declare-fun lt!1833955 () Unit!121311)

(assert (=> b!4672325 (= lt!1833955 lt!1833949)))

(assert (=> b!4672325 (forall!11126 (toList!5332 lt!1833948) lambda!202835)))

(declare-fun lt!1833968 () Unit!121311)

(declare-fun Unit!121319 () Unit!121311)

(assert (=> b!4672325 (= lt!1833968 Unit!121319)))

(assert (=> b!4672325 (forall!11126 (t!359342 (_2!29934 (h!58263 (toList!5331 lm!2023)))) lambda!202835)))

(declare-fun lt!1833958 () Unit!121311)

(declare-fun Unit!121320 () Unit!121311)

(assert (=> b!4672325 (= lt!1833958 Unit!121320)))

(declare-fun lt!1833950 () Unit!121311)

(declare-fun Unit!121321 () Unit!121311)

(assert (=> b!4672325 (= lt!1833950 Unit!121321)))

(declare-fun lt!1833952 () Unit!121311)

(declare-fun forallContained!3321 (List!52204 Int tuple2!53278) Unit!121311)

(assert (=> b!4672325 (= lt!1833952 (forallContained!3321 (toList!5332 lt!1833948) lambda!202835 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(assert (=> b!4672325 (contains!15264 lt!1833948 (_1!29933 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(declare-fun lt!1833957 () Unit!121311)

(declare-fun Unit!121322 () Unit!121311)

(assert (=> b!4672325 (= lt!1833957 Unit!121322)))

(assert (=> b!4672325 (contains!15264 lt!1833953 (_1!29933 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(declare-fun lt!1833964 () Unit!121311)

(declare-fun Unit!121323 () Unit!121311)

(assert (=> b!4672325 (= lt!1833964 Unit!121323)))

(assert (=> b!4672325 (forall!11126 (_2!29934 (h!58263 (toList!5331 lm!2023))) lambda!202835)))

(declare-fun lt!1833959 () Unit!121311)

(declare-fun Unit!121324 () Unit!121311)

(assert (=> b!4672325 (= lt!1833959 Unit!121324)))

(assert (=> b!4672325 (forall!11126 (toList!5332 lt!1833948) lambda!202835)))

(declare-fun lt!1833951 () Unit!121311)

(declare-fun Unit!121325 () Unit!121311)

(assert (=> b!4672325 (= lt!1833951 Unit!121325)))

(declare-fun lt!1833954 () Unit!121311)

(declare-fun Unit!121326 () Unit!121311)

(assert (=> b!4672325 (= lt!1833954 Unit!121326)))

(declare-fun lt!1833962 () Unit!121311)

(declare-fun addForallContainsKeyThenBeforeAdding!637 (ListMap!4695 ListMap!4695 K!13453 V!13699) Unit!121311)

(assert (=> b!4672325 (= lt!1833962 (addForallContainsKeyThenBeforeAdding!637 (extractMap!1747 (t!359343 (toList!5331 lm!2023))) lt!1833953 (_1!29933 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))) (_2!29933 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023)))))))))

(declare-fun call!326558 () Bool)

(assert (=> b!4672325 call!326558))

(declare-fun lt!1833965 () Unit!121311)

(assert (=> b!4672325 (= lt!1833965 lt!1833962)))

(declare-fun call!326556 () Bool)

(assert (=> b!4672325 call!326556))

(declare-fun lt!1833967 () Unit!121311)

(declare-fun Unit!121327 () Unit!121311)

(assert (=> b!4672325 (= lt!1833967 Unit!121327)))

(declare-fun res!1967142 () Bool)

(assert (=> b!4672325 (= res!1967142 (forall!11126 (_2!29934 (h!58263 (toList!5331 lm!2023))) lambda!202835))))

(declare-fun e!2915740 () Bool)

(assert (=> b!4672325 (=> (not res!1967142) (not e!2915740))))

(assert (=> b!4672325 e!2915740))

(declare-fun lt!1833963 () Unit!121311)

(declare-fun Unit!121328 () Unit!121311)

(assert (=> b!4672325 (= lt!1833963 Unit!121328)))

(declare-fun bm!326551 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!638 (ListMap!4695) Unit!121311)

(assert (=> bm!326551 (= call!326557 (lemmaContainsAllItsOwnKeys!638 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))))))

(declare-fun b!4672326 () Bool)

(assert (=> b!4672326 (= e!2915738 (invariantList!1347 (toList!5332 lt!1833960)))))

(declare-fun bm!326552 () Bool)

(assert (=> bm!326552 (= call!326558 (forall!11126 (toList!5332 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (ite c!799771 lambda!202833 lambda!202835)))))

(assert (=> b!4672327 (= e!2915739 (extractMap!1747 (t!359343 (toList!5331 lm!2023))))))

(declare-fun lt!1833956 () Unit!121311)

(assert (=> b!4672327 (= lt!1833956 call!326557)))

(assert (=> b!4672327 call!326556))

(declare-fun lt!1833961 () Unit!121311)

(assert (=> b!4672327 (= lt!1833961 lt!1833956)))

(assert (=> b!4672327 call!326558))

(declare-fun lt!1833966 () Unit!121311)

(declare-fun Unit!121329 () Unit!121311)

(assert (=> b!4672327 (= lt!1833966 Unit!121329)))

(declare-fun bm!326553 () Bool)

(assert (=> bm!326553 (= call!326556 (forall!11126 (toList!5332 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) (ite c!799771 lambda!202833 lambda!202835)))))

(declare-fun b!4672328 () Bool)

(assert (=> b!4672328 (= e!2915740 (forall!11126 (toList!5332 (extractMap!1747 (t!359343 (toList!5331 lm!2023)))) lambda!202835))))

(assert (= (and d!1485741 c!799771) b!4672327))

(assert (= (and d!1485741 (not c!799771)) b!4672325))

(assert (= (and b!4672325 res!1967142) b!4672328))

(assert (= (or b!4672327 b!4672325) bm!326551))

(assert (= (or b!4672327 b!4672325) bm!326553))

(assert (= (or b!4672327 b!4672325) bm!326552))

(assert (= (and d!1485741 res!1967141) b!4672324))

(assert (= (and b!4672324 res!1967140) b!4672326))

(declare-fun m!5566071 () Bool)

(assert (=> b!4672328 m!5566071))

(declare-fun m!5566073 () Bool)

(assert (=> b!4672324 m!5566073))

(assert (=> b!4672325 m!5565989))

(declare-fun m!5566075 () Bool)

(assert (=> b!4672325 m!5566075))

(declare-fun m!5566079 () Bool)

(assert (=> b!4672325 m!5566079))

(declare-fun m!5566081 () Bool)

(assert (=> b!4672325 m!5566081))

(declare-fun m!5566083 () Bool)

(assert (=> b!4672325 m!5566083))

(assert (=> b!4672325 m!5565989))

(declare-fun m!5566085 () Bool)

(assert (=> b!4672325 m!5566085))

(assert (=> b!4672325 m!5566083))

(declare-fun m!5566087 () Bool)

(assert (=> b!4672325 m!5566087))

(assert (=> b!4672325 m!5566075))

(declare-fun m!5566089 () Bool)

(assert (=> b!4672325 m!5566089))

(declare-fun m!5566091 () Bool)

(assert (=> b!4672325 m!5566091))

(declare-fun m!5566093 () Bool)

(assert (=> b!4672325 m!5566093))

(declare-fun m!5566095 () Bool)

(assert (=> b!4672325 m!5566095))

(assert (=> b!4672325 m!5566091))

(declare-fun m!5566097 () Bool)

(assert (=> bm!326553 m!5566097))

(assert (=> bm!326552 m!5566097))

(declare-fun m!5566099 () Bool)

(assert (=> d!1485741 m!5566099))

(assert (=> d!1485741 m!5566013))

(assert (=> bm!326551 m!5565989))

(declare-fun m!5566101 () Bool)

(assert (=> bm!326551 m!5566101))

(declare-fun m!5566103 () Bool)

(assert (=> b!4672326 m!5566103))

(assert (=> b!4672209 d!1485741))

(declare-fun bs!1079131 () Bool)

(declare-fun d!1485747 () Bool)

(assert (= bs!1079131 (and d!1485747 start!471382)))

(declare-fun lambda!202837 () Int)

(assert (=> bs!1079131 (= lambda!202837 lambda!202781)))

(declare-fun bs!1079132 () Bool)

(assert (= bs!1079132 (and d!1485747 d!1485697)))

(assert (=> bs!1079132 (= lambda!202837 lambda!202794)))

(declare-fun bs!1079133 () Bool)

(assert (= bs!1079133 (and d!1485747 d!1485713)))

(assert (=> bs!1079133 (not (= lambda!202837 lambda!202798))))

(declare-fun lt!1833969 () ListMap!4695)

(assert (=> d!1485747 (invariantList!1347 (toList!5332 lt!1833969))))

(declare-fun e!2915741 () ListMap!4695)

(assert (=> d!1485747 (= lt!1833969 e!2915741)))

(declare-fun c!799772 () Bool)

(assert (=> d!1485747 (= c!799772 (is-Cons!52081 (t!359343 (toList!5331 lm!2023))))))

(assert (=> d!1485747 (forall!11124 (t!359343 (toList!5331 lm!2023)) lambda!202837)))

(assert (=> d!1485747 (= (extractMap!1747 (t!359343 (toList!5331 lm!2023))) lt!1833969)))

(declare-fun b!4672331 () Bool)

(assert (=> b!4672331 (= e!2915741 (addToMapMapFromBucket!1156 (_2!29934 (h!58263 (t!359343 (toList!5331 lm!2023)))) (extractMap!1747 (t!359343 (t!359343 (toList!5331 lm!2023))))))))

(declare-fun b!4672332 () Bool)

(assert (=> b!4672332 (= e!2915741 (ListMap!4696 Nil!52080))))

(assert (= (and d!1485747 c!799772) b!4672331))

(assert (= (and d!1485747 (not c!799772)) b!4672332))

(declare-fun m!5566105 () Bool)

(assert (=> d!1485747 m!5566105))

(declare-fun m!5566107 () Bool)

(assert (=> d!1485747 m!5566107))

(declare-fun m!5566111 () Bool)

(assert (=> b!4672331 m!5566111))

(assert (=> b!4672331 m!5566111))

(declare-fun m!5566113 () Bool)

(assert (=> b!4672331 m!5566113))

(assert (=> b!4672209 d!1485747))

(declare-fun d!1485751 () Bool)

(declare-fun res!1967143 () Bool)

(declare-fun e!2915742 () Bool)

(assert (=> d!1485751 (=> res!1967143 e!2915742)))

(assert (=> d!1485751 (= res!1967143 (is-Nil!52081 (t!359343 (toList!5331 lm!2023))))))

(assert (=> d!1485751 (= (forall!11124 (t!359343 (toList!5331 lm!2023)) lambda!202781) e!2915742)))

(declare-fun b!4672333 () Bool)

(declare-fun e!2915743 () Bool)

(assert (=> b!4672333 (= e!2915742 e!2915743)))

(declare-fun res!1967144 () Bool)

(assert (=> b!4672333 (=> (not res!1967144) (not e!2915743))))

(assert (=> b!4672333 (= res!1967144 (dynLambda!21648 lambda!202781 (h!58263 (t!359343 (toList!5331 lm!2023)))))))

(declare-fun b!4672334 () Bool)

(assert (=> b!4672334 (= e!2915743 (forall!11124 (t!359343 (t!359343 (toList!5331 lm!2023))) lambda!202781))))

(assert (= (and d!1485751 (not res!1967143)) b!4672333))

(assert (= (and b!4672333 res!1967144) b!4672334))

(declare-fun b_lambda!176405 () Bool)

(assert (=> (not b_lambda!176405) (not b!4672333)))

(declare-fun m!5566115 () Bool)

(assert (=> b!4672333 m!5566115))

(declare-fun m!5566117 () Bool)

(assert (=> b!4672334 m!5566117))

(assert (=> b!4672216 d!1485751))

(declare-fun d!1485753 () Bool)

(declare-fun res!1967151 () Bool)

(declare-fun e!2915750 () Bool)

(assert (=> d!1485753 (=> res!1967151 e!2915750)))

(assert (=> d!1485753 (= res!1967151 (or (is-Nil!52081 (toList!5331 lm!2023)) (is-Nil!52081 (t!359343 (toList!5331 lm!2023)))))))

(assert (=> d!1485753 (= (isStrictlySorted!587 (toList!5331 lm!2023)) e!2915750)))

(declare-fun b!4672341 () Bool)

(declare-fun e!2915751 () Bool)

(assert (=> b!4672341 (= e!2915750 e!2915751)))

(declare-fun res!1967152 () Bool)

(assert (=> b!4672341 (=> (not res!1967152) (not e!2915751))))

(assert (=> b!4672341 (= res!1967152 (bvslt (_1!29934 (h!58263 (toList!5331 lm!2023))) (_1!29934 (h!58263 (t!359343 (toList!5331 lm!2023))))))))

(declare-fun b!4672342 () Bool)

(assert (=> b!4672342 (= e!2915751 (isStrictlySorted!587 (t!359343 (toList!5331 lm!2023))))))

(assert (= (and d!1485753 (not res!1967151)) b!4672341))

(assert (= (and b!4672341 res!1967152) b!4672342))

(declare-fun m!5566123 () Bool)

(assert (=> b!4672342 m!5566123))

(assert (=> d!1485707 d!1485753))

(declare-fun d!1485757 () Bool)

(declare-fun noDuplicatedKeys!366 (List!52204) Bool)

(assert (=> d!1485757 (= (invariantList!1347 (toList!5332 lt!1833875)) (noDuplicatedKeys!366 (toList!5332 lt!1833875)))))

(declare-fun bs!1079135 () Bool)

(assert (= bs!1079135 d!1485757))

(declare-fun m!5566125 () Bool)

(assert (=> bs!1079135 m!5566125))

(assert (=> d!1485697 d!1485757))

(declare-fun d!1485759 () Bool)

(declare-fun res!1967153 () Bool)

(declare-fun e!2915752 () Bool)

(assert (=> d!1485759 (=> res!1967153 e!2915752)))

(assert (=> d!1485759 (= res!1967153 (is-Nil!52081 (toList!5331 lm!2023)))))

(assert (=> d!1485759 (= (forall!11124 (toList!5331 lm!2023) lambda!202794) e!2915752)))

(declare-fun b!4672343 () Bool)

(declare-fun e!2915753 () Bool)

(assert (=> b!4672343 (= e!2915752 e!2915753)))

(declare-fun res!1967154 () Bool)

(assert (=> b!4672343 (=> (not res!1967154) (not e!2915753))))

(assert (=> b!4672343 (= res!1967154 (dynLambda!21648 lambda!202794 (h!58263 (toList!5331 lm!2023))))))

(declare-fun b!4672344 () Bool)

(assert (=> b!4672344 (= e!2915753 (forall!11124 (t!359343 (toList!5331 lm!2023)) lambda!202794))))

(assert (= (and d!1485759 (not res!1967153)) b!4672343))

(assert (= (and b!4672343 res!1967154) b!4672344))

(declare-fun b_lambda!176409 () Bool)

(assert (=> (not b_lambda!176409) (not b!4672343)))

(declare-fun m!5566127 () Bool)

(assert (=> b!4672343 m!5566127))

(declare-fun m!5566129 () Bool)

(assert (=> b!4672344 m!5566129))

(assert (=> d!1485697 d!1485759))

(declare-fun d!1485761 () Bool)

(declare-fun res!1967155 () Bool)

(declare-fun e!2915754 () Bool)

(assert (=> d!1485761 (=> res!1967155 e!2915754)))

(assert (=> d!1485761 (= res!1967155 (not (is-Cons!52080 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(assert (=> d!1485761 (= (noDuplicateKeys!1721 (_2!29934 (h!58263 (toList!5331 lm!2023)))) e!2915754)))

(declare-fun b!4672345 () Bool)

(declare-fun e!2915755 () Bool)

(assert (=> b!4672345 (= e!2915754 e!2915755)))

(declare-fun res!1967156 () Bool)

(assert (=> b!4672345 (=> (not res!1967156) (not e!2915755))))

(assert (=> b!4672345 (= res!1967156 (not (containsKey!2863 (t!359342 (_2!29934 (h!58263 (toList!5331 lm!2023)))) (_1!29933 (h!58262 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))))

(declare-fun b!4672346 () Bool)

(assert (=> b!4672346 (= e!2915755 (noDuplicateKeys!1721 (t!359342 (_2!29934 (h!58263 (toList!5331 lm!2023))))))))

(assert (= (and d!1485761 (not res!1967155)) b!4672345))

(assert (= (and b!4672345 res!1967156) b!4672346))

(declare-fun m!5566131 () Bool)

(assert (=> b!4672345 m!5566131))

(declare-fun m!5566133 () Bool)

(assert (=> b!4672346 m!5566133))

(assert (=> bs!1079113 d!1485761))

(declare-fun b!4672360 () Bool)

(assert (=> b!4672360 true))

(declare-fun d!1485763 () Bool)

(declare-fun e!2915764 () Bool)

(assert (=> d!1485763 e!2915764))

(declare-fun res!1967170 () Bool)

(assert (=> d!1485763 (=> (not res!1967170) (not e!2915764))))

(declare-fun lt!1833975 () List!52208)

(declare-fun noDuplicate!852 (List!52208) Bool)

(assert (=> d!1485763 (= res!1967170 (noDuplicate!852 lt!1833975))))

(assert (=> d!1485763 (= lt!1833975 (getKeysList!786 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))

(assert (=> d!1485763 (= (keys!18517 (extractMap!1747 (toList!5331 lm!2023))) lt!1833975)))

(declare-fun b!4672359 () Bool)

(declare-fun res!1967171 () Bool)

(assert (=> b!4672359 (=> (not res!1967171) (not e!2915764))))

(declare-fun length!560 (List!52208) Int)

(declare-fun length!561 (List!52204) Int)

(assert (=> b!4672359 (= res!1967171 (= (length!560 lt!1833975) (length!561 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))))

(declare-fun res!1967169 () Bool)

(assert (=> b!4672360 (=> (not res!1967169) (not e!2915764))))

(declare-fun lambda!202842 () Int)

(declare-fun forall!11128 (List!52208 Int) Bool)

(assert (=> b!4672360 (= res!1967169 (forall!11128 lt!1833975 lambda!202842))))

(declare-fun b!4672361 () Bool)

(declare-fun lambda!202843 () Int)

(declare-fun content!9081 (List!52208) (Set K!13453))

(declare-fun map!11526 (List!52204 Int) List!52208)

(assert (=> b!4672361 (= e!2915764 (= (content!9081 lt!1833975) (content!9081 (map!11526 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) lambda!202843))))))

(assert (= (and d!1485763 res!1967170) b!4672359))

(assert (= (and b!4672359 res!1967171) b!4672360))

(assert (= (and b!4672360 res!1967169) b!4672361))

(declare-fun m!5566141 () Bool)

(assert (=> d!1485763 m!5566141))

(assert (=> d!1485763 m!5565973))

(declare-fun m!5566143 () Bool)

(assert (=> b!4672359 m!5566143))

(declare-fun m!5566145 () Bool)

(assert (=> b!4672359 m!5566145))

(declare-fun m!5566147 () Bool)

(assert (=> b!4672360 m!5566147))

(declare-fun m!5566149 () Bool)

(assert (=> b!4672361 m!5566149))

(declare-fun m!5566151 () Bool)

(assert (=> b!4672361 m!5566151))

(assert (=> b!4672361 m!5566151))

(declare-fun m!5566153 () Bool)

(assert (=> b!4672361 m!5566153))

(assert (=> b!4672199 d!1485763))

(declare-fun d!1485767 () Bool)

(declare-fun res!1967176 () Bool)

(declare-fun e!2915769 () Bool)

(assert (=> d!1485767 (=> res!1967176 e!2915769)))

(assert (=> d!1485767 (= res!1967176 (is-Nil!52080 oldBucket!34))))

(assert (=> d!1485767 (= (forall!11126 oldBucket!34 lambda!202787) e!2915769)))

(declare-fun b!4672368 () Bool)

(declare-fun e!2915770 () Bool)

(assert (=> b!4672368 (= e!2915769 e!2915770)))

(declare-fun res!1967177 () Bool)

(assert (=> b!4672368 (=> (not res!1967177) (not e!2915770))))

(declare-fun dynLambda!21650 (Int tuple2!53278) Bool)

(assert (=> b!4672368 (= res!1967177 (dynLambda!21650 lambda!202787 (h!58262 oldBucket!34)))))

(declare-fun b!4672369 () Bool)

(assert (=> b!4672369 (= e!2915770 (forall!11126 (t!359342 oldBucket!34) lambda!202787))))

(assert (= (and d!1485767 (not res!1967176)) b!4672368))

(assert (= (and b!4672368 res!1967177) b!4672369))

(declare-fun b_lambda!176411 () Bool)

(assert (=> (not b_lambda!176411) (not b!4672368)))

(declare-fun m!5566155 () Bool)

(assert (=> b!4672368 m!5566155))

(declare-fun m!5566157 () Bool)

(assert (=> b!4672369 m!5566157))

(assert (=> d!1485679 d!1485767))

(declare-fun d!1485769 () Bool)

(declare-fun lt!1833980 () Bool)

(assert (=> d!1485769 (= lt!1833980 (set.member key!4653 (content!9081 e!2915651)))))

(declare-fun e!2915778 () Bool)

(assert (=> d!1485769 (= lt!1833980 e!2915778)))

(declare-fun res!1967189 () Bool)

(assert (=> d!1485769 (=> (not res!1967189) (not e!2915778))))

(assert (=> d!1485769 (= res!1967189 (is-Cons!52084 e!2915651))))

(assert (=> d!1485769 (= (contains!15266 e!2915651 key!4653) lt!1833980)))

(declare-fun b!4672378 () Bool)

(declare-fun e!2915777 () Bool)

(assert (=> b!4672378 (= e!2915778 e!2915777)))

(declare-fun res!1967188 () Bool)

(assert (=> b!4672378 (=> res!1967188 e!2915777)))

(assert (=> b!4672378 (= res!1967188 (= (h!58268 e!2915651) key!4653))))

(declare-fun b!4672379 () Bool)

(assert (=> b!4672379 (= e!2915777 (contains!15266 (t!359346 e!2915651) key!4653))))

(assert (= (and d!1485769 res!1967189) b!4672378))

(assert (= (and b!4672378 (not res!1967188)) b!4672379))

(declare-fun m!5566159 () Bool)

(assert (=> d!1485769 m!5566159))

(declare-fun m!5566161 () Bool)

(assert (=> d!1485769 m!5566161))

(declare-fun m!5566163 () Bool)

(assert (=> b!4672379 m!5566163))

(assert (=> bm!326541 d!1485769))

(declare-fun d!1485771 () Bool)

(declare-fun res!1967190 () Bool)

(declare-fun e!2915779 () Bool)

(assert (=> d!1485771 (=> res!1967190 e!2915779)))

(assert (=> d!1485771 (= res!1967190 (is-Nil!52080 newBucket!218))))

(assert (=> d!1485771 (= (forall!11126 newBucket!218 lambda!202795) e!2915779)))

(declare-fun b!4672382 () Bool)

(declare-fun e!2915780 () Bool)

(assert (=> b!4672382 (= e!2915779 e!2915780)))

(declare-fun res!1967191 () Bool)

(assert (=> b!4672382 (=> (not res!1967191) (not e!2915780))))

(assert (=> b!4672382 (= res!1967191 (dynLambda!21650 lambda!202795 (h!58262 newBucket!218)))))

(declare-fun b!4672383 () Bool)

(assert (=> b!4672383 (= e!2915780 (forall!11126 (t!359342 newBucket!218) lambda!202795))))

(assert (= (and d!1485771 (not res!1967190)) b!4672382))

(assert (= (and b!4672382 res!1967191) b!4672383))

(declare-fun b_lambda!176413 () Bool)

(assert (=> (not b_lambda!176413) (not b!4672382)))

(declare-fun m!5566165 () Bool)

(assert (=> b!4672382 m!5566165))

(declare-fun m!5566167 () Bool)

(assert (=> b!4672383 m!5566167))

(assert (=> d!1485703 d!1485771))

(declare-fun d!1485773 () Bool)

(declare-fun res!1967196 () Bool)

(declare-fun e!2915785 () Bool)

(assert (=> d!1485773 (=> res!1967196 e!2915785)))

(assert (=> d!1485773 (= res!1967196 (and (is-Cons!52080 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (= (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) key!4653)))))

(assert (=> d!1485773 (= (containsKey!2864 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653) e!2915785)))

(declare-fun b!4672388 () Bool)

(declare-fun e!2915786 () Bool)

(assert (=> b!4672388 (= e!2915785 e!2915786)))

(declare-fun res!1967197 () Bool)

(assert (=> b!4672388 (=> (not res!1967197) (not e!2915786))))

(assert (=> b!4672388 (= res!1967197 (is-Cons!52080 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))

(declare-fun b!4672389 () Bool)

(assert (=> b!4672389 (= e!2915786 (containsKey!2864 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) key!4653))))

(assert (= (and d!1485773 (not res!1967196)) b!4672388))

(assert (= (and b!4672388 res!1967197) b!4672389))

(declare-fun m!5566169 () Bool)

(assert (=> b!4672389 m!5566169))

(assert (=> d!1485687 d!1485773))

(assert (=> b!4672198 d!1485773))

(declare-fun d!1485775 () Bool)

(assert (=> d!1485775 (containsKey!2864 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653)))

(declare-fun lt!1833984 () Unit!121311)

(declare-fun choose!32342 (List!52204 K!13453) Unit!121311)

(assert (=> d!1485775 (= lt!1833984 (choose!32342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(assert (=> d!1485775 (invariantList!1347 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))

(assert (=> d!1485775 (= (lemmaInGetKeysListThenContainsKey!785 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653) lt!1833984)))

(declare-fun bs!1079136 () Bool)

(assert (= bs!1079136 d!1485775))

(assert (=> bs!1079136 m!5565965))

(declare-fun m!5566171 () Bool)

(assert (=> bs!1079136 m!5566171))

(declare-fun m!5566173 () Bool)

(assert (=> bs!1079136 m!5566173))

(assert (=> b!4672198 d!1485775))

(declare-fun d!1485777 () Bool)

(declare-fun lt!1833985 () Bool)

(assert (=> d!1485777 (= lt!1833985 (set.member key!4653 (content!9081 (keys!18517 (extractMap!1747 (toList!5331 lm!2023))))))))

(declare-fun e!2915789 () Bool)

(assert (=> d!1485777 (= lt!1833985 e!2915789)))

(declare-fun res!1967202 () Bool)

(assert (=> d!1485777 (=> (not res!1967202) (not e!2915789))))

(assert (=> d!1485777 (= res!1967202 (is-Cons!52084 (keys!18517 (extractMap!1747 (toList!5331 lm!2023)))))))

(assert (=> d!1485777 (= (contains!15266 (keys!18517 (extractMap!1747 (toList!5331 lm!2023))) key!4653) lt!1833985)))

(declare-fun b!4672395 () Bool)

(declare-fun e!2915788 () Bool)

(assert (=> b!4672395 (= e!2915789 e!2915788)))

(declare-fun res!1967201 () Bool)

(assert (=> b!4672395 (=> res!1967201 e!2915788)))

(assert (=> b!4672395 (= res!1967201 (= (h!58268 (keys!18517 (extractMap!1747 (toList!5331 lm!2023)))) key!4653))))

(declare-fun b!4672396 () Bool)

(assert (=> b!4672396 (= e!2915788 (contains!15266 (t!359346 (keys!18517 (extractMap!1747 (toList!5331 lm!2023)))) key!4653))))

(assert (= (and d!1485777 res!1967202) b!4672395))

(assert (= (and b!4672395 (not res!1967201)) b!4672396))

(assert (=> d!1485777 m!5565961))

(declare-fun m!5566175 () Bool)

(assert (=> d!1485777 m!5566175))

(declare-fun m!5566177 () Bool)

(assert (=> d!1485777 m!5566177))

(declare-fun m!5566179 () Bool)

(assert (=> b!4672396 m!5566179))

(assert (=> b!4672197 d!1485777))

(assert (=> b!4672197 d!1485763))

(declare-fun b!4672399 () Bool)

(declare-fun e!2915791 () List!52204)

(assert (=> b!4672399 (= e!2915791 (Cons!52080 (h!58262 (t!359342 oldBucket!34)) (removePairForKey!1316 (t!359342 (t!359342 oldBucket!34)) key!4653)))))

(declare-fun d!1485779 () Bool)

(declare-fun lt!1833986 () List!52204)

(assert (=> d!1485779 (not (containsKey!2863 lt!1833986 key!4653))))

(declare-fun e!2915790 () List!52204)

(assert (=> d!1485779 (= lt!1833986 e!2915790)))

(declare-fun c!799774 () Bool)

(assert (=> d!1485779 (= c!799774 (and (is-Cons!52080 (t!359342 oldBucket!34)) (= (_1!29933 (h!58262 (t!359342 oldBucket!34))) key!4653)))))

(assert (=> d!1485779 (noDuplicateKeys!1721 (t!359342 oldBucket!34))))

(assert (=> d!1485779 (= (removePairForKey!1316 (t!359342 oldBucket!34) key!4653) lt!1833986)))

(declare-fun b!4672398 () Bool)

(assert (=> b!4672398 (= e!2915790 e!2915791)))

(declare-fun c!799773 () Bool)

(assert (=> b!4672398 (= c!799773 (is-Cons!52080 (t!359342 oldBucket!34)))))

(declare-fun b!4672397 () Bool)

(assert (=> b!4672397 (= e!2915790 (t!359342 (t!359342 oldBucket!34)))))

(declare-fun b!4672400 () Bool)

(assert (=> b!4672400 (= e!2915791 Nil!52080)))

(assert (= (and d!1485779 c!799774) b!4672397))

(assert (= (and d!1485779 (not c!799774)) b!4672398))

(assert (= (and b!4672398 c!799773) b!4672399))

(assert (= (and b!4672398 (not c!799773)) b!4672400))

(declare-fun m!5566181 () Bool)

(assert (=> b!4672399 m!5566181))

(declare-fun m!5566183 () Bool)

(assert (=> d!1485779 m!5566183))

(assert (=> d!1485779 m!5565949))

(assert (=> b!4672227 d!1485779))

(declare-fun bs!1079139 () Bool)

(declare-fun b!4672450 () Bool)

(assert (= bs!1079139 (and b!4672450 b!4672360)))

(declare-fun lambda!202858 () Int)

(assert (=> bs!1079139 (= (= (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (= lambda!202858 lambda!202842))))

(assert (=> b!4672450 true))

(declare-fun bs!1079140 () Bool)

(declare-fun b!4672445 () Bool)

(assert (= bs!1079140 (and b!4672445 b!4672360)))

(declare-fun lambda!202859 () Int)

(assert (=> bs!1079140 (= (= (Cons!52080 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (= lambda!202859 lambda!202842))))

(declare-fun bs!1079141 () Bool)

(assert (= bs!1079141 (and b!4672445 b!4672450)))

(assert (=> bs!1079141 (= (= (Cons!52080 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (= lambda!202859 lambda!202858))))

(assert (=> b!4672445 true))

(declare-fun bs!1079142 () Bool)

(declare-fun b!4672448 () Bool)

(assert (= bs!1079142 (and b!4672448 b!4672360)))

(declare-fun lambda!202860 () Int)

(assert (=> bs!1079142 (= lambda!202860 lambda!202842)))

(declare-fun bs!1079143 () Bool)

(assert (= bs!1079143 (and b!4672448 b!4672450)))

(assert (=> bs!1079143 (= (= (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (= lambda!202860 lambda!202858))))

(declare-fun bs!1079144 () Bool)

(assert (= bs!1079144 (and b!4672448 b!4672445)))

(assert (=> bs!1079144 (= (= (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) (Cons!52080 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))) (= lambda!202860 lambda!202859))))

(assert (=> b!4672448 true))

(declare-fun bs!1079145 () Bool)

(declare-fun b!4672451 () Bool)

(assert (= bs!1079145 (and b!4672451 b!4672361)))

(declare-fun lambda!202861 () Int)

(assert (=> bs!1079145 (= lambda!202861 lambda!202843)))

(declare-fun e!2915821 () List!52208)

(assert (=> b!4672445 (= e!2915821 (Cons!52084 (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (getKeysList!786 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))))

(declare-fun c!799790 () Bool)

(assert (=> b!4672445 (= c!799790 (containsKey!2864 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))))

(declare-fun lt!1834009 () Unit!121311)

(declare-fun e!2915819 () Unit!121311)

(assert (=> b!4672445 (= lt!1834009 e!2915819)))

(declare-fun c!799791 () Bool)

(assert (=> b!4672445 (= c!799791 (contains!15266 (getKeysList!786 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))))

(declare-fun lt!1834008 () Unit!121311)

(declare-fun e!2915818 () Unit!121311)

(assert (=> b!4672445 (= lt!1834008 e!2915818)))

(declare-fun lt!1834006 () List!52208)

(assert (=> b!4672445 (= lt!1834006 (getKeysList!786 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))))

(declare-fun lt!1834007 () Unit!121311)

(declare-fun lemmaForallContainsAddHeadPreserves!272 (List!52204 List!52208 tuple2!53278) Unit!121311)

(assert (=> b!4672445 (= lt!1834007 (lemmaForallContainsAddHeadPreserves!272 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) lt!1834006 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))))

(assert (=> b!4672445 (forall!11128 lt!1834006 lambda!202859)))

(declare-fun lt!1834011 () Unit!121311)

(assert (=> b!4672445 (= lt!1834011 lt!1834007)))

(declare-fun b!4672446 () Bool)

(declare-fun res!1967219 () Bool)

(declare-fun e!2915820 () Bool)

(assert (=> b!4672446 (=> (not res!1967219) (not e!2915820))))

(declare-fun lt!1834012 () List!52208)

(assert (=> b!4672446 (= res!1967219 (= (length!560 lt!1834012) (length!561 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))))

(declare-fun d!1485781 () Bool)

(assert (=> d!1485781 e!2915820))

(declare-fun res!1967221 () Bool)

(assert (=> d!1485781 (=> (not res!1967221) (not e!2915820))))

(assert (=> d!1485781 (= res!1967221 (noDuplicate!852 lt!1834012))))

(assert (=> d!1485781 (= lt!1834012 e!2915821)))

(declare-fun c!799789 () Bool)

(assert (=> d!1485781 (= c!799789 (is-Cons!52080 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))

(assert (=> d!1485781 (invariantList!1347 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))

(assert (=> d!1485781 (= (getKeysList!786 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) lt!1834012)))

(declare-fun b!4672447 () Bool)

(assert (=> b!4672447 false))

(declare-fun Unit!121330 () Unit!121311)

(assert (=> b!4672447 (= e!2915819 Unit!121330)))

(declare-fun res!1967220 () Bool)

(assert (=> b!4672448 (=> (not res!1967220) (not e!2915820))))

(assert (=> b!4672448 (= res!1967220 (forall!11128 lt!1834012 lambda!202860))))

(declare-fun b!4672449 () Bool)

(declare-fun Unit!121331 () Unit!121311)

(assert (=> b!4672449 (= e!2915818 Unit!121331)))

(assert (=> b!4672450 false))

(declare-fun lt!1834010 () Unit!121311)

(declare-fun forallContained!3322 (List!52208 Int K!13453) Unit!121311)

(assert (=> b!4672450 (= lt!1834010 (forallContained!3322 (getKeysList!786 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) lambda!202858 (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))))

(declare-fun Unit!121332 () Unit!121311)

(assert (=> b!4672450 (= e!2915818 Unit!121332)))

(assert (=> b!4672451 (= e!2915820 (= (content!9081 lt!1834012) (content!9081 (map!11526 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) lambda!202861))))))

(declare-fun b!4672452 () Bool)

(assert (=> b!4672452 (= e!2915821 Nil!52084)))

(declare-fun b!4672453 () Bool)

(declare-fun Unit!121333 () Unit!121311)

(assert (=> b!4672453 (= e!2915819 Unit!121333)))

(assert (= (and d!1485781 c!799789) b!4672445))

(assert (= (and d!1485781 (not c!799789)) b!4672452))

(assert (= (and b!4672445 c!799790) b!4672447))

(assert (= (and b!4672445 (not c!799790)) b!4672453))

(assert (= (and b!4672445 c!799791) b!4672450))

(assert (= (and b!4672445 (not c!799791)) b!4672449))

(assert (= (and d!1485781 res!1967221) b!4672446))

(assert (= (and b!4672446 res!1967219) b!4672448))

(assert (= (and b!4672448 res!1967220) b!4672451))

(declare-fun m!5566223 () Bool)

(assert (=> b!4672451 m!5566223))

(declare-fun m!5566225 () Bool)

(assert (=> b!4672451 m!5566225))

(assert (=> b!4672451 m!5566225))

(declare-fun m!5566227 () Bool)

(assert (=> b!4672451 m!5566227))

(declare-fun m!5566229 () Bool)

(assert (=> d!1485781 m!5566229))

(assert (=> d!1485781 m!5566173))

(declare-fun m!5566231 () Bool)

(assert (=> b!4672445 m!5566231))

(declare-fun m!5566233 () Bool)

(assert (=> b!4672445 m!5566233))

(declare-fun m!5566235 () Bool)

(assert (=> b!4672445 m!5566235))

(assert (=> b!4672445 m!5566235))

(declare-fun m!5566237 () Bool)

(assert (=> b!4672445 m!5566237))

(declare-fun m!5566241 () Bool)

(assert (=> b!4672445 m!5566241))

(declare-fun m!5566245 () Bool)

(assert (=> b!4672448 m!5566245))

(assert (=> b!4672450 m!5566235))

(assert (=> b!4672450 m!5566235))

(declare-fun m!5566247 () Bool)

(assert (=> b!4672450 m!5566247))

(declare-fun m!5566249 () Bool)

(assert (=> b!4672446 m!5566249))

(assert (=> b!4672446 m!5566145))

(assert (=> b!4672196 d!1485781))

(declare-fun d!1485801 () Bool)

(declare-fun isEmpty!29065 (Option!11941) Bool)

(assert (=> d!1485801 (= (isDefined!9196 (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653)) (not (isEmpty!29065 (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))))

(declare-fun bs!1079147 () Bool)

(assert (= bs!1079147 d!1485801))

(assert (=> bs!1079147 m!5565969))

(declare-fun m!5566251 () Bool)

(assert (=> bs!1079147 m!5566251))

(assert (=> b!4672203 d!1485801))

(declare-fun b!4672467 () Bool)

(declare-fun e!2915827 () Option!11941)

(assert (=> b!4672467 (= e!2915827 None!11940)))

(declare-fun b!4672465 () Bool)

(declare-fun e!2915826 () Option!11941)

(assert (=> b!4672465 (= e!2915826 e!2915827)))

(declare-fun c!799797 () Bool)

(assert (=> b!4672465 (= c!799797 (and (is-Cons!52080 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (not (= (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) key!4653))))))

(declare-fun d!1485803 () Bool)

(declare-fun c!799796 () Bool)

(assert (=> d!1485803 (= c!799796 (and (is-Cons!52080 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) (= (_1!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))) key!4653)))))

(assert (=> d!1485803 (= (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653) e!2915826)))

(declare-fun b!4672466 () Bool)

(assert (=> b!4672466 (= e!2915827 (getValueByKey!1689 (t!359342 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) key!4653))))

(declare-fun b!4672464 () Bool)

(assert (=> b!4672464 (= e!2915826 (Some!11940 (_2!29933 (h!58262 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))))))))

(assert (= (and d!1485803 c!799796) b!4672464))

(assert (= (and d!1485803 (not c!799796)) b!4672465))

(assert (= (and b!4672465 c!799797) b!4672466))

(assert (= (and b!4672465 (not c!799797)) b!4672467))

(declare-fun m!5566253 () Bool)

(assert (=> b!4672466 m!5566253))

(assert (=> b!4672203 d!1485803))

(declare-fun d!1485805 () Bool)

(assert (=> d!1485805 (isDefined!9196 (getValueByKey!1689 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(declare-fun lt!1834018 () Unit!121311)

(declare-fun choose!32343 (List!52204 K!13453) Unit!121311)

(assert (=> d!1485805 (= lt!1834018 (choose!32343 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(assert (=> d!1485805 (invariantList!1347 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))

(assert (=> d!1485805 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1581 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653) lt!1834018)))

(declare-fun bs!1079148 () Bool)

(assert (= bs!1079148 d!1485805))

(assert (=> bs!1079148 m!5565969))

(assert (=> bs!1079148 m!5565969))

(assert (=> bs!1079148 m!5565971))

(declare-fun m!5566255 () Bool)

(assert (=> bs!1079148 m!5566255))

(assert (=> bs!1079148 m!5566173))

(assert (=> b!4672202 d!1485805))

(assert (=> b!4672202 d!1485801))

(assert (=> b!4672202 d!1485803))

(declare-fun d!1485807 () Bool)

(assert (=> d!1485807 (contains!15266 (getKeysList!786 (toList!5332 (extractMap!1747 (toList!5331 lm!2023)))) key!4653)))

(declare-fun lt!1834021 () Unit!121311)

(declare-fun choose!32344 (List!52204 K!13453) Unit!121311)

(assert (=> d!1485807 (= lt!1834021 (choose!32344 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653))))

(assert (=> d!1485807 (invariantList!1347 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))))))

(assert (=> d!1485807 (= (lemmaInListThenGetKeysListContains!781 (toList!5332 (extractMap!1747 (toList!5331 lm!2023))) key!4653) lt!1834021)))

(declare-fun bs!1079149 () Bool)

(assert (= bs!1079149 d!1485807))

(assert (=> bs!1079149 m!5565973))

(assert (=> bs!1079149 m!5565973))

(declare-fun m!5566257 () Bool)

(assert (=> bs!1079149 m!5566257))

(declare-fun m!5566259 () Bool)

(assert (=> bs!1079149 m!5566259))

(assert (=> bs!1079149 m!5566173))

(assert (=> b!4672202 d!1485807))

(declare-fun d!1485809 () Bool)

(declare-fun res!1967222 () Bool)

(declare-fun e!2915828 () Bool)

(assert (=> d!1485809 (=> res!1967222 e!2915828)))

(assert (=> d!1485809 (= res!1967222 (is-Nil!52081 (toList!5331 lm!2023)))))

(assert (=> d!1485809 (= (forall!11124 (toList!5331 lm!2023) lambda!202798) e!2915828)))

(declare-fun b!4672468 () Bool)

(declare-fun e!2915829 () Bool)

(assert (=> b!4672468 (= e!2915828 e!2915829)))

(declare-fun res!1967223 () Bool)

(assert (=> b!4672468 (=> (not res!1967223) (not e!2915829))))

(assert (=> b!4672468 (= res!1967223 (dynLambda!21648 lambda!202798 (h!58263 (toList!5331 lm!2023))))))

(declare-fun b!4672469 () Bool)

(assert (=> b!4672469 (= e!2915829 (forall!11124 (t!359343 (toList!5331 lm!2023)) lambda!202798))))

(assert (= (and d!1485809 (not res!1967222)) b!4672468))

(assert (= (and b!4672468 res!1967223) b!4672469))

(declare-fun b_lambda!176415 () Bool)

(assert (=> (not b_lambda!176415) (not b!4672468)))

(declare-fun m!5566261 () Bool)

(assert (=> b!4672468 m!5566261))

(declare-fun m!5566263 () Bool)

(assert (=> b!4672469 m!5566263))

(assert (=> d!1485713 d!1485809))

(declare-fun d!1485811 () Bool)

(declare-fun res!1967224 () Bool)

(declare-fun e!2915830 () Bool)

(assert (=> d!1485811 (=> res!1967224 e!2915830)))

(assert (=> d!1485811 (= res!1967224 (not (is-Cons!52080 (t!359342 oldBucket!34))))))

(assert (=> d!1485811 (= (noDuplicateKeys!1721 (t!359342 oldBucket!34)) e!2915830)))

(declare-fun b!4672470 () Bool)

(declare-fun e!2915831 () Bool)

(assert (=> b!4672470 (= e!2915830 e!2915831)))

(declare-fun res!1967225 () Bool)

(assert (=> b!4672470 (=> (not res!1967225) (not e!2915831))))

(assert (=> b!4672470 (= res!1967225 (not (containsKey!2863 (t!359342 (t!359342 oldBucket!34)) (_1!29933 (h!58262 (t!359342 oldBucket!34))))))))

(declare-fun b!4672471 () Bool)

(assert (=> b!4672471 (= e!2915831 (noDuplicateKeys!1721 (t!359342 (t!359342 oldBucket!34))))))

(assert (= (and d!1485811 (not res!1967224)) b!4672470))

(assert (= (and b!4672470 res!1967225) b!4672471))

(declare-fun m!5566265 () Bool)

(assert (=> b!4672470 m!5566265))

(declare-fun m!5566267 () Bool)

(assert (=> b!4672471 m!5566267))

(assert (=> b!4672161 d!1485811))

(assert (=> b!4672201 d!1485777))

(assert (=> b!4672201 d!1485763))

(declare-fun d!1485813 () Bool)

(declare-fun res!1967226 () Bool)

(declare-fun e!2915832 () Bool)

(assert (=> d!1485813 (=> res!1967226 e!2915832)))

(assert (=> d!1485813 (= res!1967226 (and (is-Cons!52080 (t!359342 oldBucket!34)) (= (_1!29933 (h!58262 (t!359342 oldBucket!34))) (_1!29933 (h!58262 oldBucket!34)))))))

(assert (=> d!1485813 (= (containsKey!2863 (t!359342 oldBucket!34) (_1!29933 (h!58262 oldBucket!34))) e!2915832)))

(declare-fun b!4672472 () Bool)

(declare-fun e!2915833 () Bool)

(assert (=> b!4672472 (= e!2915832 e!2915833)))

(declare-fun res!1967227 () Bool)

(assert (=> b!4672472 (=> (not res!1967227) (not e!2915833))))

(assert (=> b!4672472 (= res!1967227 (is-Cons!52080 (t!359342 oldBucket!34)))))

(declare-fun b!4672473 () Bool)

(assert (=> b!4672473 (= e!2915833 (containsKey!2863 (t!359342 (t!359342 oldBucket!34)) (_1!29933 (h!58262 oldBucket!34))))))

(assert (= (and d!1485813 (not res!1967226)) b!4672472))

(assert (= (and b!4672472 res!1967227) b!4672473))

(declare-fun m!5566269 () Bool)

(assert (=> b!4672473 m!5566269))

(assert (=> b!4672160 d!1485813))

(declare-fun d!1485815 () Bool)

(assert (=> d!1485815 (= (isEmpty!29063 (toList!5331 lm!2023)) (is-Nil!52081 (toList!5331 lm!2023)))))

(assert (=> d!1485709 d!1485815))

(declare-fun e!2915834 () Bool)

(declare-fun tp!1344100 () Bool)

(declare-fun b!4672474 () Bool)

(assert (=> b!4672474 (= e!2915834 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344100))))

(assert (=> b!4672243 (= tp!1344088 e!2915834)))

(assert (= (and b!4672243 (is-Cons!52080 (_2!29934 (h!58263 (toList!5331 lm!2023))))) b!4672474))

(declare-fun b!4672475 () Bool)

(declare-fun e!2915835 () Bool)

(declare-fun tp!1344101 () Bool)

(declare-fun tp!1344102 () Bool)

(assert (=> b!4672475 (= e!2915835 (and tp!1344101 tp!1344102))))

(assert (=> b!4672243 (= tp!1344089 e!2915835)))

(assert (= (and b!4672243 (is-Cons!52081 (t!359343 (toList!5331 lm!2023)))) b!4672475))

(declare-fun b!4672476 () Bool)

(declare-fun e!2915836 () Bool)

(declare-fun tp!1344103 () Bool)

(assert (=> b!4672476 (= e!2915836 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344103))))

(assert (=> b!4672237 (= tp!1344082 e!2915836)))

(assert (= (and b!4672237 (is-Cons!52080 (t!359342 (t!359342 newBucket!218)))) b!4672476))

(declare-fun e!2915837 () Bool)

(declare-fun tp!1344104 () Bool)

(declare-fun b!4672477 () Bool)

(assert (=> b!4672477 (= e!2915837 (and tp_is_empty!30177 tp_is_empty!30179 tp!1344104))))

(assert (=> b!4672238 (= tp!1344083 e!2915837)))

(assert (= (and b!4672238 (is-Cons!52080 (t!359342 (t!359342 oldBucket!34)))) b!4672477))

(declare-fun b_lambda!176417 () Bool)

(assert (= b_lambda!176415 (or d!1485713 b_lambda!176417)))

(declare-fun bs!1079150 () Bool)

(declare-fun d!1485817 () Bool)

(assert (= bs!1079150 (and d!1485817 d!1485713)))

(assert (=> bs!1079150 (= (dynLambda!21648 lambda!202798 (h!58263 (toList!5331 lm!2023))) (allKeysSameHash!1547 (_2!29934 (h!58263 (toList!5331 lm!2023))) (_1!29934 (h!58263 (toList!5331 lm!2023))) hashF!1323))))

(declare-fun m!5566271 () Bool)

(assert (=> bs!1079150 m!5566271))

(assert (=> b!4672468 d!1485817))

(declare-fun b_lambda!176419 () Bool)

(assert (= b_lambda!176413 (or d!1485703 b_lambda!176419)))

(declare-fun bs!1079151 () Bool)

(declare-fun d!1485819 () Bool)

(assert (= bs!1079151 (and d!1485819 d!1485703)))

(assert (=> bs!1079151 (= (dynLambda!21650 lambda!202795 (h!58262 newBucket!218)) (= (hash!3870 hashF!1323 (_1!29933 (h!58262 newBucket!218))) hash!405))))

(declare-fun m!5566273 () Bool)

(assert (=> bs!1079151 m!5566273))

(assert (=> b!4672382 d!1485819))

(declare-fun b_lambda!176421 () Bool)

(assert (= b_lambda!176409 (or d!1485697 b_lambda!176421)))

(declare-fun bs!1079152 () Bool)

(declare-fun d!1485821 () Bool)

(assert (= bs!1079152 (and d!1485821 d!1485697)))

(assert (=> bs!1079152 (= (dynLambda!21648 lambda!202794 (h!58263 (toList!5331 lm!2023))) (noDuplicateKeys!1721 (_2!29934 (h!58263 (toList!5331 lm!2023)))))))

(assert (=> bs!1079152 m!5566013))

(assert (=> b!4672343 d!1485821))

(declare-fun b_lambda!176423 () Bool)

(assert (= b_lambda!176405 (or start!471382 b_lambda!176423)))

(declare-fun bs!1079153 () Bool)

(declare-fun d!1485823 () Bool)

(assert (= bs!1079153 (and d!1485823 start!471382)))

(assert (=> bs!1079153 (= (dynLambda!21648 lambda!202781 (h!58263 (t!359343 (toList!5331 lm!2023)))) (noDuplicateKeys!1721 (_2!29934 (h!58263 (t!359343 (toList!5331 lm!2023))))))))

(declare-fun m!5566275 () Bool)

(assert (=> bs!1079153 m!5566275))

(assert (=> b!4672333 d!1485823))

(declare-fun b_lambda!176425 () Bool)

(assert (= b_lambda!176411 (or d!1485679 b_lambda!176425)))

(declare-fun bs!1079154 () Bool)

(declare-fun d!1485825 () Bool)

(assert (= bs!1079154 (and d!1485825 d!1485679)))

(assert (=> bs!1079154 (= (dynLambda!21650 lambda!202787 (h!58262 oldBucket!34)) (= (hash!3870 hashF!1323 (_1!29933 (h!58262 oldBucket!34))) hash!405))))

(declare-fun m!5566277 () Bool)

(assert (=> bs!1079154 m!5566277))

(assert (=> b!4672368 d!1485825))

(push 1)

(assert (not bm!326553))

(assert (not bs!1079153))

(assert (not bs!1079151))

(assert (not b!4672331))

(assert (not d!1485741))

(assert (not b!4672466))

(assert (not b!4672389))

(assert (not b!4672346))

(assert (not d!1485747))

(assert (not b_lambda!176419))

(assert (not bm!326552))

(assert (not b_lambda!176423))

(assert (not bs!1079150))

(assert (not b!4672448))

(assert (not b!4672311))

(assert (not d!1485781))

(assert (not d!1485807))

(assert (not b!4672446))

(assert (not b!4672328))

(assert (not b!4672473))

(assert (not b!4672475))

(assert (not b!4672469))

(assert (not b!4672471))

(assert (not b!4672313))

(assert (not bs!1079154))

(assert (not b!4672360))

(assert (not b!4672359))

(assert (not b_lambda!176425))

(assert (not d!1485777))

(assert (not b!4672334))

(assert tp_is_empty!30177)

(assert (not b!4672451))

(assert (not b!4672305))

(assert (not b!4672325))

(assert (not d!1485763))

(assert (not b_lambda!176399))

(assert (not b!4672383))

(assert (not b!4672361))

(assert (not b!4672474))

(assert (not d!1485757))

(assert (not bm!326551))

(assert (not b!4672304))

(assert (not b!4672344))

(assert (not b!4672450))

(assert (not d!1485769))

(assert tp_is_empty!30179)

(assert (not b!4672345))

(assert (not b!4672477))

(assert (not d!1485779))

(assert (not b!4672369))

(assert (not b_lambda!176417))

(assert (not d!1485775))

(assert (not b!4672396))

(assert (not b!4672379))

(assert (not bs!1079152))

(assert (not d!1485735))

(assert (not b!4672324))

(assert (not d!1485805))

(assert (not b!4672470))

(assert (not b!4672399))

(assert (not b!4672342))

(assert (not b!4672326))

(assert (not b!4672476))

(assert (not b_lambda!176421))

(assert (not d!1485801))

(assert (not b!4672445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

