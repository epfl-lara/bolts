; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419696 () Bool)

(assert start!419696)

(declare-datatypes ((V!10426 0))(
  ( (V!10427 (val!16415 Int)) )
))
(declare-datatypes ((K!10180 0))(
  ( (K!10181 (val!16416 Int)) )
))
(declare-datatypes ((tuple2!48150 0))(
  ( (tuple2!48151 (_1!27369 K!10180) (_2!27369 V!10426)) )
))
(declare-datatypes ((List!48943 0))(
  ( (Nil!48819) (Cons!48819 (h!54346 tuple2!48150) (t!355863 List!48943)) )
))
(declare-datatypes ((tuple2!48152 0))(
  ( (tuple2!48153 (_1!27370 (_ BitVec 64)) (_2!27370 List!48943)) )
))
(declare-datatypes ((List!48944 0))(
  ( (Nil!48820) (Cons!48820 (h!54347 tuple2!48152) (t!355864 List!48944)) )
))
(declare-datatypes ((ListLongMap!1523 0))(
  ( (ListLongMap!1524 (toList!2873 List!48944)) )
))
(declare-fun lt!1561858 () ListLongMap!1523)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lm!1707 () ListLongMap!1523)

(declare-fun e!2705114 () Bool)

(declare-fun b!4347041 () Bool)

(declare-fun lt!1561849 () tuple2!48152)

(get-info :version)

(assert (=> b!4347041 (= e!2705114 (or (not ((_ is Cons!48820) (toList!2873 lm!1707))) (not (= (_1!27370 (h!54347 (toList!2873 lm!1707))) hash!377)) (= lt!1561858 (ListLongMap!1524 (Cons!48820 lt!1561849 (t!355864 (toList!2873 lm!1707)))))))))

(declare-fun b!4347042 () Bool)

(declare-fun e!2705116 () Bool)

(declare-fun e!2705111 () Bool)

(assert (=> b!4347042 (= e!2705116 e!2705111)))

(declare-fun res!1785164 () Bool)

(assert (=> b!4347042 (=> res!1785164 e!2705111)))

(declare-fun lt!1561836 () Bool)

(assert (=> b!4347042 (= res!1785164 lt!1561836)))

(declare-fun e!2705107 () Bool)

(assert (=> b!4347042 e!2705107))

(declare-fun res!1785167 () Bool)

(assert (=> b!4347042 (=> (not res!1785167) (not e!2705107))))

(declare-fun key!3918 () K!10180)

(declare-datatypes ((ListMap!2117 0))(
  ( (ListMap!2118 (toList!2874 List!48943)) )
))
(declare-fun lt!1561848 () ListMap!2117)

(declare-fun contains!10964 (ListMap!2117 K!10180) Bool)

(assert (=> b!4347042 (= res!1785167 (= lt!1561836 (contains!10964 lt!1561848 key!3918)))))

(declare-fun lt!1561853 () ListMap!2117)

(assert (=> b!4347042 (= lt!1561836 (contains!10964 lt!1561853 key!3918))))

(declare-datatypes ((Unit!70737 0))(
  ( (Unit!70738) )
))
(declare-fun lt!1561850 () Unit!70737)

(declare-fun lemmaEquivalentThenSameContains!96 (ListMap!2117 ListMap!2117 K!10180) Unit!70737)

(assert (=> b!4347042 (= lt!1561850 (lemmaEquivalentThenSameContains!96 lt!1561853 lt!1561848 key!3918))))

(declare-fun eq!235 (ListMap!2117 ListMap!2117) Bool)

(assert (=> b!4347042 (eq!235 lt!1561853 lt!1561848)))

(declare-fun lt!1561860 () ListMap!2117)

(declare-fun -!246 (ListMap!2117 K!10180) ListMap!2117)

(assert (=> b!4347042 (= lt!1561848 (-!246 lt!1561860 key!3918))))

(declare-fun lt!1561855 () Unit!70737)

(declare-datatypes ((Hashable!4837 0))(
  ( (HashableExt!4836 (__x!30540 Int)) )
))
(declare-fun hashF!1247 () Hashable!4837)

(declare-fun lt!1561856 () List!48943)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!61 (ListLongMap!1523 (_ BitVec 64) List!48943 K!10180 Hashable!4837) Unit!70737)

(assert (=> b!4347042 (= lt!1561855 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!61 lm!1707 hash!377 lt!1561856 key!3918 hashF!1247))))

(declare-fun lt!1561861 () ListMap!2117)

(assert (=> b!4347042 (= lt!1561861 lt!1561853)))

(declare-fun lt!1561851 () ListLongMap!1523)

(declare-fun extractMap!504 (List!48944) ListMap!2117)

(assert (=> b!4347042 (= lt!1561853 (extractMap!504 (toList!2873 lt!1561851)))))

(declare-fun lt!1561842 () List!48943)

(assert (=> b!4347042 (= lt!1561856 lt!1561842)))

(declare-fun +!561 (ListLongMap!1523 tuple2!48152) ListLongMap!1523)

(assert (=> b!4347042 (= lt!1561851 (+!561 lm!1707 (tuple2!48153 hash!377 lt!1561856)))))

(declare-fun newBucket!200 () List!48943)

(declare-fun tail!6943 (List!48943) List!48943)

(assert (=> b!4347042 (= lt!1561856 (tail!6943 newBucket!200))))

(declare-fun e!2705110 () Bool)

(assert (=> b!4347042 e!2705110))

(declare-fun res!1785171 () Bool)

(assert (=> b!4347042 (=> (not res!1785171) (not e!2705110))))

(declare-fun lt!1561847 () ListMap!2117)

(declare-fun lt!1561840 () ListMap!2117)

(assert (=> b!4347042 (= res!1785171 (eq!235 lt!1561847 lt!1561840))))

(declare-fun lt!1561844 () tuple2!48150)

(declare-fun +!562 (ListMap!2117 tuple2!48150) ListMap!2117)

(assert (=> b!4347042 (= lt!1561840 (+!562 lt!1561861 lt!1561844))))

(declare-fun lt!1561857 () ListMap!2117)

(declare-fun addToMapMapFromBucket!153 (List!48943 ListMap!2117) ListMap!2117)

(assert (=> b!4347042 (= lt!1561861 (addToMapMapFromBucket!153 lt!1561842 lt!1561857))))

(declare-fun lt!1561845 () Unit!70737)

(declare-fun newValue!99 () V!10426)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!64 (ListMap!2117 K!10180 V!10426 List!48943) Unit!70737)

(assert (=> b!4347042 (= lt!1561845 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!64 lt!1561857 key!3918 newValue!99 lt!1561842))))

(declare-fun lt!1561846 () ListMap!2117)

(assert (=> b!4347042 (= lt!1561846 lt!1561847)))

(assert (=> b!4347042 (= lt!1561847 (addToMapMapFromBucket!153 lt!1561842 (+!562 lt!1561857 lt!1561844)))))

(declare-fun lt!1561841 () ListMap!2117)

(assert (=> b!4347042 (= lt!1561841 lt!1561846)))

(declare-fun lt!1561839 () List!48943)

(assert (=> b!4347042 (= lt!1561846 (addToMapMapFromBucket!153 lt!1561839 lt!1561857))))

(assert (=> b!4347042 (= lt!1561841 (addToMapMapFromBucket!153 newBucket!200 lt!1561857))))

(assert (=> b!4347042 (= lt!1561841 (extractMap!504 (toList!2873 lt!1561858)))))

(assert (=> b!4347042 (= lt!1561857 (extractMap!504 (t!355864 (toList!2873 lm!1707))))))

(declare-fun b!4347043 () Bool)

(declare-fun e!2705115 () Bool)

(declare-fun e!2705109 () Bool)

(assert (=> b!4347043 (= e!2705115 (not e!2705109))))

(declare-fun res!1785173 () Bool)

(assert (=> b!4347043 (=> res!1785173 e!2705109)))

(assert (=> b!4347043 (= res!1785173 (not (= newBucket!200 lt!1561839)))))

(assert (=> b!4347043 (= lt!1561839 (Cons!48819 lt!1561844 lt!1561842))))

(declare-fun lt!1561859 () List!48943)

(declare-fun removePairForKey!415 (List!48943 K!10180) List!48943)

(assert (=> b!4347043 (= lt!1561842 (removePairForKey!415 lt!1561859 key!3918))))

(assert (=> b!4347043 (= lt!1561844 (tuple2!48151 key!3918 newValue!99))))

(declare-fun lt!1561843 () tuple2!48152)

(declare-fun lt!1561852 () Unit!70737)

(declare-fun lambda!138545 () Int)

(declare-fun forallContained!1691 (List!48944 Int tuple2!48152) Unit!70737)

(assert (=> b!4347043 (= lt!1561852 (forallContained!1691 (toList!2873 lm!1707) lambda!138545 lt!1561843))))

(declare-fun contains!10965 (List!48944 tuple2!48152) Bool)

(assert (=> b!4347043 (contains!10965 (toList!2873 lm!1707) lt!1561843)))

(assert (=> b!4347043 (= lt!1561843 (tuple2!48153 hash!377 lt!1561859))))

(declare-fun lt!1561854 () Unit!70737)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!292 (List!48944 (_ BitVec 64) List!48943) Unit!70737)

(assert (=> b!4347043 (= lt!1561854 (lemmaGetValueByKeyImpliesContainsTuple!292 (toList!2873 lm!1707) hash!377 lt!1561859))))

(declare-fun apply!11297 (ListLongMap!1523 (_ BitVec 64)) List!48943)

(assert (=> b!4347043 (= lt!1561859 (apply!11297 lm!1707 hash!377))))

(declare-fun b!4347044 () Bool)

(declare-fun e!2705108 () Bool)

(assert (=> b!4347044 (= e!2705108 e!2705115)))

(declare-fun res!1785162 () Bool)

(assert (=> b!4347044 (=> (not res!1785162) (not e!2705115))))

(assert (=> b!4347044 (= res!1785162 (contains!10964 lt!1561860 key!3918))))

(assert (=> b!4347044 (= lt!1561860 (extractMap!504 (toList!2873 lm!1707)))))

(declare-fun b!4347045 () Bool)

(declare-fun res!1785175 () Bool)

(assert (=> b!4347045 (=> (not res!1785175) (not e!2705114))))

(declare-fun forall!9041 (List!48944 Int) Bool)

(assert (=> b!4347045 (= res!1785175 (forall!9041 (toList!2873 lt!1561858) lambda!138545))))

(declare-fun b!4347046 () Bool)

(assert (=> b!4347046 (= e!2705109 e!2705116)))

(declare-fun res!1785165 () Bool)

(assert (=> b!4347046 (=> res!1785165 e!2705116)))

(assert (=> b!4347046 (= res!1785165 (or (not ((_ is Cons!48820) (toList!2873 lm!1707))) (not (= (_1!27370 (h!54347 (toList!2873 lm!1707))) hash!377))))))

(assert (=> b!4347046 e!2705114))

(declare-fun res!1785169 () Bool)

(assert (=> b!4347046 (=> (not res!1785169) (not e!2705114))))

(assert (=> b!4347046 (= res!1785169 (forall!9041 (toList!2873 lt!1561858) lambda!138545))))

(assert (=> b!4347046 (= lt!1561858 (+!561 lm!1707 lt!1561849))))

(assert (=> b!4347046 (= lt!1561849 (tuple2!48153 hash!377 newBucket!200))))

(declare-fun lt!1561837 () Unit!70737)

(declare-fun addValidProp!99 (ListLongMap!1523 Int (_ BitVec 64) List!48943) Unit!70737)

(assert (=> b!4347046 (= lt!1561837 (addValidProp!99 lm!1707 lambda!138545 hash!377 newBucket!200))))

(assert (=> b!4347046 (forall!9041 (toList!2873 lm!1707) lambda!138545)))

(declare-fun b!4347047 () Bool)

(declare-fun res!1785172 () Bool)

(assert (=> b!4347047 (=> (not res!1785172) (not e!2705108))))

(declare-fun allKeysSameHashInMap!549 (ListLongMap!1523 Hashable!4837) Bool)

(assert (=> b!4347047 (= res!1785172 (allKeysSameHashInMap!549 lm!1707 hashF!1247))))

(declare-fun b!4347048 () Bool)

(declare-fun res!1785168 () Bool)

(assert (=> b!4347048 (=> (not res!1785168) (not e!2705108))))

(declare-fun allKeysSameHash!403 (List!48943 (_ BitVec 64) Hashable!4837) Bool)

(assert (=> b!4347048 (= res!1785168 (allKeysSameHash!403 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1785163 () Bool)

(assert (=> start!419696 (=> (not res!1785163) (not e!2705108))))

(assert (=> start!419696 (= res!1785163 (forall!9041 (toList!2873 lm!1707) lambda!138545))))

(assert (=> start!419696 e!2705108))

(declare-fun e!2705112 () Bool)

(assert (=> start!419696 e!2705112))

(assert (=> start!419696 true))

(declare-fun e!2705113 () Bool)

(declare-fun inv!64366 (ListLongMap!1523) Bool)

(assert (=> start!419696 (and (inv!64366 lm!1707) e!2705113)))

(declare-fun tp_is_empty!25017 () Bool)

(assert (=> start!419696 tp_is_empty!25017))

(declare-fun tp_is_empty!25019 () Bool)

(assert (=> start!419696 tp_is_empty!25019))

(declare-fun b!4347049 () Bool)

(declare-fun res!1785166 () Bool)

(assert (=> b!4347049 (=> (not res!1785166) (not e!2705108))))

(declare-fun hash!1432 (Hashable!4837 K!10180) (_ BitVec 64))

(assert (=> b!4347049 (= res!1785166 (= (hash!1432 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347050 () Bool)

(declare-fun tp!1329603 () Bool)

(assert (=> b!4347050 (= e!2705113 tp!1329603)))

(declare-fun b!4347051 () Bool)

(assert (=> b!4347051 (= e!2705110 (eq!235 lt!1561846 lt!1561840))))

(declare-fun b!4347052 () Bool)

(assert (=> b!4347052 (= e!2705107 (= (apply!11297 lt!1561851 hash!377) lt!1561856))))

(declare-fun b!4347053 () Bool)

(declare-fun tp!1329604 () Bool)

(assert (=> b!4347053 (= e!2705112 (and tp_is_empty!25017 tp_is_empty!25019 tp!1329604))))

(declare-fun b!4347054 () Bool)

(declare-fun res!1785174 () Bool)

(assert (=> b!4347054 (=> res!1785174 e!2705109)))

(declare-fun noDuplicateKeys!445 (List!48943) Bool)

(assert (=> b!4347054 (= res!1785174 (not (noDuplicateKeys!445 newBucket!200)))))

(declare-fun b!4347055 () Bool)

(assert (=> b!4347055 (= e!2705111 (forall!9041 (toList!2873 lm!1707) lambda!138545))))

(assert (=> b!4347055 (eq!235 (+!562 lt!1561848 lt!1561844) (+!562 lt!1561860 lt!1561844))))

(declare-fun lt!1561862 () Unit!70737)

(declare-fun removeThenAddForSameKeyIsSameAsAdd!4 (ListMap!2117 K!10180 V!10426) Unit!70737)

(assert (=> b!4347055 (= lt!1561862 (removeThenAddForSameKeyIsSameAsAdd!4 lt!1561860 key!3918 newValue!99))))

(assert (=> b!4347055 (eq!235 (extractMap!504 (toList!2873 (+!561 lt!1561851 lt!1561849))) (+!562 lt!1561853 lt!1561844))))

(declare-fun lt!1561838 () Unit!70737)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!85 (ListLongMap!1523 (_ BitVec 64) List!48943 K!10180 V!10426 Hashable!4837) Unit!70737)

(assert (=> b!4347055 (= lt!1561838 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!85 lt!1561851 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4347056 () Bool)

(declare-fun res!1785170 () Bool)

(assert (=> b!4347056 (=> (not res!1785170) (not e!2705115))))

(declare-fun contains!10966 (ListLongMap!1523 (_ BitVec 64)) Bool)

(assert (=> b!4347056 (= res!1785170 (contains!10966 lm!1707 hash!377))))

(assert (= (and start!419696 res!1785163) b!4347047))

(assert (= (and b!4347047 res!1785172) b!4347049))

(assert (= (and b!4347049 res!1785166) b!4347048))

(assert (= (and b!4347048 res!1785168) b!4347044))

(assert (= (and b!4347044 res!1785162) b!4347056))

(assert (= (and b!4347056 res!1785170) b!4347043))

(assert (= (and b!4347043 (not res!1785173)) b!4347054))

(assert (= (and b!4347054 (not res!1785174)) b!4347046))

(assert (= (and b!4347046 res!1785169) b!4347045))

(assert (= (and b!4347045 res!1785175) b!4347041))

(assert (= (and b!4347046 (not res!1785165)) b!4347042))

(assert (= (and b!4347042 res!1785171) b!4347051))

(assert (= (and b!4347042 res!1785167) b!4347052))

(assert (= (and b!4347042 (not res!1785164)) b!4347055))

(assert (= (and start!419696 ((_ is Cons!48819) newBucket!200)) b!4347053))

(assert (= start!419696 b!4347050))

(declare-fun m!4955893 () Bool)

(assert (=> b!4347056 m!4955893))

(declare-fun m!4955895 () Bool)

(assert (=> b!4347044 m!4955895))

(declare-fun m!4955897 () Bool)

(assert (=> b!4347044 m!4955897))

(declare-fun m!4955899 () Bool)

(assert (=> start!419696 m!4955899))

(declare-fun m!4955901 () Bool)

(assert (=> start!419696 m!4955901))

(declare-fun m!4955903 () Bool)

(assert (=> b!4347042 m!4955903))

(declare-fun m!4955905 () Bool)

(assert (=> b!4347042 m!4955905))

(declare-fun m!4955907 () Bool)

(assert (=> b!4347042 m!4955907))

(declare-fun m!4955909 () Bool)

(assert (=> b!4347042 m!4955909))

(declare-fun m!4955911 () Bool)

(assert (=> b!4347042 m!4955911))

(declare-fun m!4955913 () Bool)

(assert (=> b!4347042 m!4955913))

(declare-fun m!4955915 () Bool)

(assert (=> b!4347042 m!4955915))

(declare-fun m!4955917 () Bool)

(assert (=> b!4347042 m!4955917))

(declare-fun m!4955919 () Bool)

(assert (=> b!4347042 m!4955919))

(declare-fun m!4955921 () Bool)

(assert (=> b!4347042 m!4955921))

(declare-fun m!4955923 () Bool)

(assert (=> b!4347042 m!4955923))

(declare-fun m!4955925 () Bool)

(assert (=> b!4347042 m!4955925))

(declare-fun m!4955927 () Bool)

(assert (=> b!4347042 m!4955927))

(declare-fun m!4955929 () Bool)

(assert (=> b!4347042 m!4955929))

(declare-fun m!4955931 () Bool)

(assert (=> b!4347042 m!4955931))

(declare-fun m!4955933 () Bool)

(assert (=> b!4347042 m!4955933))

(declare-fun m!4955935 () Bool)

(assert (=> b!4347042 m!4955935))

(declare-fun m!4955937 () Bool)

(assert (=> b!4347042 m!4955937))

(declare-fun m!4955939 () Bool)

(assert (=> b!4347042 m!4955939))

(assert (=> b!4347042 m!4955933))

(declare-fun m!4955941 () Bool)

(assert (=> b!4347052 m!4955941))

(declare-fun m!4955943 () Bool)

(assert (=> b!4347055 m!4955943))

(declare-fun m!4955945 () Bool)

(assert (=> b!4347055 m!4955945))

(declare-fun m!4955947 () Bool)

(assert (=> b!4347055 m!4955947))

(assert (=> b!4347055 m!4955899))

(declare-fun m!4955949 () Bool)

(assert (=> b!4347055 m!4955949))

(declare-fun m!4955951 () Bool)

(assert (=> b!4347055 m!4955951))

(declare-fun m!4955953 () Bool)

(assert (=> b!4347055 m!4955953))

(assert (=> b!4347055 m!4955945))

(assert (=> b!4347055 m!4955951))

(declare-fun m!4955955 () Bool)

(assert (=> b!4347055 m!4955955))

(assert (=> b!4347055 m!4955949))

(assert (=> b!4347055 m!4955953))

(declare-fun m!4955957 () Bool)

(assert (=> b!4347055 m!4955957))

(declare-fun m!4955959 () Bool)

(assert (=> b!4347055 m!4955959))

(declare-fun m!4955961 () Bool)

(assert (=> b!4347048 m!4955961))

(declare-fun m!4955963 () Bool)

(assert (=> b!4347047 m!4955963))

(declare-fun m!4955965 () Bool)

(assert (=> b!4347054 m!4955965))

(declare-fun m!4955967 () Bool)

(assert (=> b!4347049 m!4955967))

(declare-fun m!4955969 () Bool)

(assert (=> b!4347045 m!4955969))

(declare-fun m!4955971 () Bool)

(assert (=> b!4347051 m!4955971))

(declare-fun m!4955973 () Bool)

(assert (=> b!4347043 m!4955973))

(declare-fun m!4955975 () Bool)

(assert (=> b!4347043 m!4955975))

(declare-fun m!4955977 () Bool)

(assert (=> b!4347043 m!4955977))

(declare-fun m!4955979 () Bool)

(assert (=> b!4347043 m!4955979))

(declare-fun m!4955981 () Bool)

(assert (=> b!4347043 m!4955981))

(assert (=> b!4347046 m!4955969))

(declare-fun m!4955983 () Bool)

(assert (=> b!4347046 m!4955983))

(declare-fun m!4955985 () Bool)

(assert (=> b!4347046 m!4955985))

(assert (=> b!4347046 m!4955899))

(check-sat (not b!4347048) (not b!4347051) (not b!4347049) tp_is_empty!25017 (not b!4347053) tp_is_empty!25019 (not b!4347055) (not b!4347044) (not b!4347046) (not b!4347050) (not b!4347042) (not start!419696) (not b!4347056) (not b!4347047) (not b!4347054) (not b!4347052) (not b!4347043) (not b!4347045))
(check-sat)
