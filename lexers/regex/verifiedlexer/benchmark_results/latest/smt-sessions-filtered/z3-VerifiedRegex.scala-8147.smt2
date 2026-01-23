; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419368 () Bool)

(assert start!419368)

(declare-fun b!4345152 () Bool)

(declare-fun res!1783924 () Bool)

(declare-fun e!2703944 () Bool)

(assert (=> b!4345152 (=> (not res!1783924) (not e!2703944))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4821 0))(
  ( (HashableExt!4820 (__x!30524 Int)) )
))
(declare-fun hashF!1247 () Hashable!4821)

(declare-datatypes ((K!10140 0))(
  ( (K!10141 (val!16383 Int)) )
))
(declare-fun key!3918 () K!10140)

(declare-fun hash!1400 (Hashable!4821 K!10140) (_ BitVec 64))

(assert (=> b!4345152 (= res!1783924 (= (hash!1400 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345153 () Bool)

(declare-fun e!2703940 () Bool)

(declare-datatypes ((V!10386 0))(
  ( (V!10387 (val!16384 Int)) )
))
(declare-datatypes ((tuple2!48086 0))(
  ( (tuple2!48087 (_1!27337 K!10140) (_2!27337 V!10386)) )
))
(declare-datatypes ((List!48905 0))(
  ( (Nil!48781) (Cons!48781 (h!54302 tuple2!48086) (t!355825 List!48905)) )
))
(declare-fun lt!1559059 () List!48905)

(declare-datatypes ((tuple2!48088 0))(
  ( (tuple2!48089 (_1!27338 (_ BitVec 64)) (_2!27338 List!48905)) )
))
(declare-datatypes ((List!48906 0))(
  ( (Nil!48782) (Cons!48782 (h!54303 tuple2!48088) (t!355826 List!48906)) )
))
(declare-datatypes ((ListLongMap!1491 0))(
  ( (ListLongMap!1492 (toList!2841 List!48906)) )
))
(declare-fun lt!1559060 () ListLongMap!1491)

(declare-fun apply!11281 (ListLongMap!1491 (_ BitVec 64)) List!48905)

(assert (=> b!4345153 (= e!2703940 (= (apply!11281 lt!1559060 hash!377) lt!1559059))))

(declare-fun b!4345154 () Bool)

(declare-fun e!2703939 () Bool)

(declare-fun e!2703942 () Bool)

(assert (=> b!4345154 (= e!2703939 e!2703942)))

(declare-fun res!1783928 () Bool)

(assert (=> b!4345154 (=> res!1783928 e!2703942)))

(declare-fun lm!1707 () ListLongMap!1491)

(get-info :version)

(assert (=> b!4345154 (= res!1783928 (or (not ((_ is Cons!48782) (toList!2841 lm!1707))) (not (= (_1!27338 (h!54303 (toList!2841 lm!1707))) hash!377))))))

(declare-fun e!2703945 () Bool)

(assert (=> b!4345154 e!2703945))

(declare-fun res!1783925 () Bool)

(assert (=> b!4345154 (=> (not res!1783925) (not e!2703945))))

(declare-fun lt!1559063 () ListLongMap!1491)

(declare-fun lambda!137959 () Int)

(declare-fun forall!9019 (List!48906 Int) Bool)

(assert (=> b!4345154 (= res!1783925 (forall!9019 (toList!2841 lt!1559063) lambda!137959))))

(declare-fun lt!1559067 () tuple2!48088)

(declare-fun +!529 (ListLongMap!1491 tuple2!48088) ListLongMap!1491)

(assert (=> b!4345154 (= lt!1559063 (+!529 lm!1707 lt!1559067))))

(declare-fun newBucket!200 () List!48905)

(assert (=> b!4345154 (= lt!1559067 (tuple2!48089 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70399 0))(
  ( (Unit!70400) )
))
(declare-fun lt!1559054 () Unit!70399)

(declare-fun addValidProp!83 (ListLongMap!1491 Int (_ BitVec 64) List!48905) Unit!70399)

(assert (=> b!4345154 (= lt!1559054 (addValidProp!83 lm!1707 lambda!137959 hash!377 newBucket!200))))

(assert (=> b!4345154 (forall!9019 (toList!2841 lm!1707) lambda!137959)))

(declare-fun b!4345155 () Bool)

(declare-fun e!2703943 () Bool)

(declare-datatypes ((ListMap!2085 0))(
  ( (ListMap!2086 (toList!2842 List!48905)) )
))
(declare-fun lt!1559064 () ListMap!2085)

(declare-fun lt!1559052 () ListMap!2085)

(declare-fun eq!219 (ListMap!2085 ListMap!2085) Bool)

(assert (=> b!4345155 (= e!2703943 (eq!219 lt!1559064 lt!1559052))))

(declare-fun b!4345156 () Bool)

(assert (=> b!4345156 (= e!2703945 (or (not ((_ is Cons!48782) (toList!2841 lm!1707))) (not (= (_1!27338 (h!54303 (toList!2841 lm!1707))) hash!377)) (= lt!1559063 (ListLongMap!1492 (Cons!48782 lt!1559067 (t!355826 (toList!2841 lm!1707)))))))))

(declare-fun b!4345157 () Bool)

(declare-fun e!2703938 () Bool)

(declare-fun tp!1329454 () Bool)

(assert (=> b!4345157 (= e!2703938 tp!1329454)))

(declare-fun b!4345158 () Bool)

(declare-fun e!2703941 () Bool)

(assert (=> b!4345158 (= e!2703941 (not e!2703939))))

(declare-fun res!1783927 () Bool)

(assert (=> b!4345158 (=> res!1783927 e!2703939)))

(declare-fun lt!1559049 () List!48905)

(assert (=> b!4345158 (= res!1783927 (not (= newBucket!200 lt!1559049)))))

(declare-fun lt!1559068 () tuple2!48086)

(declare-fun lt!1559066 () List!48905)

(assert (=> b!4345158 (= lt!1559049 (Cons!48781 lt!1559068 lt!1559066))))

(declare-fun lt!1559069 () List!48905)

(declare-fun removePairForKey!399 (List!48905 K!10140) List!48905)

(assert (=> b!4345158 (= lt!1559066 (removePairForKey!399 lt!1559069 key!3918))))

(declare-fun newValue!99 () V!10386)

(assert (=> b!4345158 (= lt!1559068 (tuple2!48087 key!3918 newValue!99))))

(declare-fun lt!1559050 () tuple2!48088)

(declare-fun lt!1559065 () Unit!70399)

(declare-fun forallContained!1669 (List!48906 Int tuple2!48088) Unit!70399)

(assert (=> b!4345158 (= lt!1559065 (forallContained!1669 (toList!2841 lm!1707) lambda!137959 lt!1559050))))

(declare-fun contains!10904 (List!48906 tuple2!48088) Bool)

(assert (=> b!4345158 (contains!10904 (toList!2841 lm!1707) lt!1559050)))

(assert (=> b!4345158 (= lt!1559050 (tuple2!48089 hash!377 lt!1559069))))

(declare-fun lt!1559057 () Unit!70399)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!276 (List!48906 (_ BitVec 64) List!48905) Unit!70399)

(assert (=> b!4345158 (= lt!1559057 (lemmaGetValueByKeyImpliesContainsTuple!276 (toList!2841 lm!1707) hash!377 lt!1559069))))

(assert (=> b!4345158 (= lt!1559069 (apply!11281 lm!1707 hash!377))))

(declare-fun b!4345159 () Bool)

(declare-fun res!1783929 () Bool)

(assert (=> b!4345159 (=> res!1783929 e!2703939)))

(declare-fun noDuplicateKeys!429 (List!48905) Bool)

(assert (=> b!4345159 (= res!1783929 (not (noDuplicateKeys!429 newBucket!200)))))

(declare-fun b!4345160 () Bool)

(assert (=> b!4345160 (= e!2703944 e!2703941)))

(declare-fun res!1783934 () Bool)

(assert (=> b!4345160 (=> (not res!1783934) (not e!2703941))))

(declare-fun lt!1559071 () ListMap!2085)

(declare-fun contains!10905 (ListMap!2085 K!10140) Bool)

(assert (=> b!4345160 (= res!1783934 (contains!10905 lt!1559071 key!3918))))

(declare-fun extractMap!488 (List!48906) ListMap!2085)

(assert (=> b!4345160 (= lt!1559071 (extractMap!488 (toList!2841 lm!1707)))))

(declare-fun b!4345161 () Bool)

(assert (=> b!4345161 (= e!2703942 (forall!9019 (toList!2841 lt!1559060) lambda!137959))))

(assert (=> b!4345161 e!2703940))

(declare-fun res!1783923 () Bool)

(assert (=> b!4345161 (=> (not res!1783923) (not e!2703940))))

(declare-fun lt!1559051 () ListMap!2085)

(declare-fun lt!1559056 () ListMap!2085)

(assert (=> b!4345161 (= res!1783923 (= (contains!10905 lt!1559056 key!3918) (contains!10905 lt!1559051 key!3918)))))

(declare-fun lt!1559058 () Unit!70399)

(declare-fun lemmaEquivalentThenSameContains!80 (ListMap!2085 ListMap!2085 K!10140) Unit!70399)

(assert (=> b!4345161 (= lt!1559058 (lemmaEquivalentThenSameContains!80 lt!1559056 lt!1559051 key!3918))))

(assert (=> b!4345161 (eq!219 lt!1559056 lt!1559051)))

(declare-fun -!230 (ListMap!2085 K!10140) ListMap!2085)

(assert (=> b!4345161 (= lt!1559051 (-!230 lt!1559071 key!3918))))

(declare-fun lt!1559062 () Unit!70399)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!45 (ListLongMap!1491 (_ BitVec 64) List!48905 K!10140 Hashable!4821) Unit!70399)

(assert (=> b!4345161 (= lt!1559062 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!45 lm!1707 hash!377 lt!1559059 key!3918 hashF!1247))))

(declare-fun lt!1559055 () ListMap!2085)

(assert (=> b!4345161 (= lt!1559055 lt!1559056)))

(assert (=> b!4345161 (= lt!1559056 (extractMap!488 (toList!2841 lt!1559060)))))

(assert (=> b!4345161 (= lt!1559059 lt!1559066)))

(assert (=> b!4345161 (= lt!1559060 (+!529 lm!1707 (tuple2!48089 hash!377 lt!1559059)))))

(declare-fun tail!6927 (List!48905) List!48905)

(assert (=> b!4345161 (= lt!1559059 (tail!6927 newBucket!200))))

(assert (=> b!4345161 e!2703943))

(declare-fun res!1783931 () Bool)

(assert (=> b!4345161 (=> (not res!1783931) (not e!2703943))))

(declare-fun lt!1559070 () ListMap!2085)

(assert (=> b!4345161 (= res!1783931 (eq!219 lt!1559070 lt!1559052))))

(declare-fun +!530 (ListMap!2085 tuple2!48086) ListMap!2085)

(assert (=> b!4345161 (= lt!1559052 (+!530 lt!1559055 lt!1559068))))

(declare-fun lt!1559053 () ListMap!2085)

(declare-fun addToMapMapFromBucket!137 (List!48905 ListMap!2085) ListMap!2085)

(assert (=> b!4345161 (= lt!1559055 (addToMapMapFromBucket!137 lt!1559066 lt!1559053))))

(declare-fun lt!1559072 () Unit!70399)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!48 (ListMap!2085 K!10140 V!10386 List!48905) Unit!70399)

(assert (=> b!4345161 (= lt!1559072 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!48 lt!1559053 key!3918 newValue!99 lt!1559066))))

(assert (=> b!4345161 (= lt!1559064 lt!1559070)))

(assert (=> b!4345161 (= lt!1559070 (addToMapMapFromBucket!137 lt!1559066 (+!530 lt!1559053 lt!1559068)))))

(declare-fun lt!1559061 () ListMap!2085)

(assert (=> b!4345161 (= lt!1559061 lt!1559064)))

(assert (=> b!4345161 (= lt!1559064 (addToMapMapFromBucket!137 lt!1559049 lt!1559053))))

(assert (=> b!4345161 (= lt!1559061 (addToMapMapFromBucket!137 newBucket!200 lt!1559053))))

(assert (=> b!4345161 (= lt!1559061 (extractMap!488 (toList!2841 lt!1559063)))))

(assert (=> b!4345161 (= lt!1559053 (extractMap!488 (t!355826 (toList!2841 lm!1707))))))

(declare-fun b!4345162 () Bool)

(declare-fun res!1783935 () Bool)

(assert (=> b!4345162 (=> (not res!1783935) (not e!2703941))))

(declare-fun contains!10906 (ListLongMap!1491 (_ BitVec 64)) Bool)

(assert (=> b!4345162 (= res!1783935 (contains!10906 lm!1707 hash!377))))

(declare-fun tp_is_empty!24955 () Bool)

(declare-fun e!2703946 () Bool)

(declare-fun tp!1329453 () Bool)

(declare-fun b!4345163 () Bool)

(declare-fun tp_is_empty!24953 () Bool)

(assert (=> b!4345163 (= e!2703946 (and tp_is_empty!24953 tp_is_empty!24955 tp!1329453))))

(declare-fun b!4345164 () Bool)

(declare-fun res!1783932 () Bool)

(assert (=> b!4345164 (=> (not res!1783932) (not e!2703944))))

(declare-fun allKeysSameHashInMap!533 (ListLongMap!1491 Hashable!4821) Bool)

(assert (=> b!4345164 (= res!1783932 (allKeysSameHashInMap!533 lm!1707 hashF!1247))))

(declare-fun res!1783933 () Bool)

(assert (=> start!419368 (=> (not res!1783933) (not e!2703944))))

(assert (=> start!419368 (= res!1783933 (forall!9019 (toList!2841 lm!1707) lambda!137959))))

(assert (=> start!419368 e!2703944))

(assert (=> start!419368 e!2703946))

(assert (=> start!419368 true))

(declare-fun inv!64326 (ListLongMap!1491) Bool)

(assert (=> start!419368 (and (inv!64326 lm!1707) e!2703938)))

(assert (=> start!419368 tp_is_empty!24953))

(assert (=> start!419368 tp_is_empty!24955))

(declare-fun b!4345165 () Bool)

(declare-fun res!1783926 () Bool)

(assert (=> b!4345165 (=> (not res!1783926) (not e!2703945))))

(assert (=> b!4345165 (= res!1783926 (forall!9019 (toList!2841 lt!1559063) lambda!137959))))

(declare-fun b!4345166 () Bool)

(declare-fun res!1783930 () Bool)

(assert (=> b!4345166 (=> (not res!1783930) (not e!2703944))))

(declare-fun allKeysSameHash!387 (List!48905 (_ BitVec 64) Hashable!4821) Bool)

(assert (=> b!4345166 (= res!1783930 (allKeysSameHash!387 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!419368 res!1783933) b!4345164))

(assert (= (and b!4345164 res!1783932) b!4345152))

(assert (= (and b!4345152 res!1783924) b!4345166))

(assert (= (and b!4345166 res!1783930) b!4345160))

(assert (= (and b!4345160 res!1783934) b!4345162))

(assert (= (and b!4345162 res!1783935) b!4345158))

(assert (= (and b!4345158 (not res!1783927)) b!4345159))

(assert (= (and b!4345159 (not res!1783929)) b!4345154))

(assert (= (and b!4345154 res!1783925) b!4345165))

(assert (= (and b!4345165 res!1783926) b!4345156))

(assert (= (and b!4345154 (not res!1783928)) b!4345161))

(assert (= (and b!4345161 res!1783931) b!4345155))

(assert (= (and b!4345161 res!1783923) b!4345153))

(assert (= (and start!419368 ((_ is Cons!48781) newBucket!200)) b!4345163))

(assert (= start!419368 b!4345157))

(declare-fun m!4951973 () Bool)

(assert (=> start!419368 m!4951973))

(declare-fun m!4951975 () Bool)

(assert (=> start!419368 m!4951975))

(declare-fun m!4951977 () Bool)

(assert (=> b!4345165 m!4951977))

(declare-fun m!4951979 () Bool)

(assert (=> b!4345155 m!4951979))

(declare-fun m!4951981 () Bool)

(assert (=> b!4345158 m!4951981))

(declare-fun m!4951983 () Bool)

(assert (=> b!4345158 m!4951983))

(declare-fun m!4951985 () Bool)

(assert (=> b!4345158 m!4951985))

(declare-fun m!4951987 () Bool)

(assert (=> b!4345158 m!4951987))

(declare-fun m!4951989 () Bool)

(assert (=> b!4345158 m!4951989))

(assert (=> b!4345154 m!4951977))

(declare-fun m!4951991 () Bool)

(assert (=> b!4345154 m!4951991))

(declare-fun m!4951993 () Bool)

(assert (=> b!4345154 m!4951993))

(assert (=> b!4345154 m!4951973))

(declare-fun m!4951995 () Bool)

(assert (=> b!4345161 m!4951995))

(declare-fun m!4951997 () Bool)

(assert (=> b!4345161 m!4951997))

(declare-fun m!4951999 () Bool)

(assert (=> b!4345161 m!4951999))

(declare-fun m!4952001 () Bool)

(assert (=> b!4345161 m!4952001))

(declare-fun m!4952003 () Bool)

(assert (=> b!4345161 m!4952003))

(declare-fun m!4952005 () Bool)

(assert (=> b!4345161 m!4952005))

(declare-fun m!4952007 () Bool)

(assert (=> b!4345161 m!4952007))

(declare-fun m!4952009 () Bool)

(assert (=> b!4345161 m!4952009))

(declare-fun m!4952011 () Bool)

(assert (=> b!4345161 m!4952011))

(declare-fun m!4952013 () Bool)

(assert (=> b!4345161 m!4952013))

(declare-fun m!4952015 () Bool)

(assert (=> b!4345161 m!4952015))

(declare-fun m!4952017 () Bool)

(assert (=> b!4345161 m!4952017))

(declare-fun m!4952019 () Bool)

(assert (=> b!4345161 m!4952019))

(declare-fun m!4952021 () Bool)

(assert (=> b!4345161 m!4952021))

(declare-fun m!4952023 () Bool)

(assert (=> b!4345161 m!4952023))

(declare-fun m!4952025 () Bool)

(assert (=> b!4345161 m!4952025))

(declare-fun m!4952027 () Bool)

(assert (=> b!4345161 m!4952027))

(declare-fun m!4952029 () Bool)

(assert (=> b!4345161 m!4952029))

(assert (=> b!4345161 m!4952005))

(declare-fun m!4952031 () Bool)

(assert (=> b!4345161 m!4952031))

(declare-fun m!4952033 () Bool)

(assert (=> b!4345161 m!4952033))

(declare-fun m!4952035 () Bool)

(assert (=> b!4345160 m!4952035))

(declare-fun m!4952037 () Bool)

(assert (=> b!4345160 m!4952037))

(declare-fun m!4952039 () Bool)

(assert (=> b!4345152 m!4952039))

(declare-fun m!4952041 () Bool)

(assert (=> b!4345164 m!4952041))

(declare-fun m!4952043 () Bool)

(assert (=> b!4345153 m!4952043))

(declare-fun m!4952045 () Bool)

(assert (=> b!4345166 m!4952045))

(declare-fun m!4952047 () Bool)

(assert (=> b!4345162 m!4952047))

(declare-fun m!4952049 () Bool)

(assert (=> b!4345159 m!4952049))

(check-sat tp_is_empty!24955 (not b!4345162) (not b!4345154) (not start!419368) (not b!4345164) (not b!4345155) (not b!4345163) (not b!4345152) (not b!4345159) (not b!4345153) (not b!4345160) tp_is_empty!24953 (not b!4345161) (not b!4345157) (not b!4345158) (not b!4345166) (not b!4345165))
(check-sat)
(get-model)

(declare-fun b!4345291 () Bool)

(assert (=> b!4345291 true))

(declare-fun bs!627312 () Bool)

(declare-fun b!4345290 () Bool)

(assert (= bs!627312 (and b!4345290 b!4345291)))

(declare-fun lambda!137998 () Int)

(declare-fun lambda!137997 () Int)

(assert (=> bs!627312 (= lambda!137998 lambda!137997)))

(assert (=> b!4345290 true))

(declare-fun lt!1559223 () ListMap!2085)

(declare-fun lambda!137999 () Int)

(assert (=> bs!627312 (= (= lt!1559223 lt!1559053) (= lambda!137999 lambda!137997))))

(assert (=> b!4345290 (= (= lt!1559223 lt!1559053) (= lambda!137999 lambda!137998))))

(assert (=> b!4345290 true))

(declare-fun bs!627313 () Bool)

(declare-fun d!1283012 () Bool)

(assert (= bs!627313 (and d!1283012 b!4345291)))

(declare-fun lt!1559219 () ListMap!2085)

(declare-fun lambda!138000 () Int)

(assert (=> bs!627313 (= (= lt!1559219 lt!1559053) (= lambda!138000 lambda!137997))))

(declare-fun bs!627314 () Bool)

(assert (= bs!627314 (and d!1283012 b!4345290)))

(assert (=> bs!627314 (= (= lt!1559219 lt!1559053) (= lambda!138000 lambda!137998))))

(assert (=> bs!627314 (= (= lt!1559219 lt!1559223) (= lambda!138000 lambda!137999))))

(assert (=> d!1283012 true))

(declare-fun e!2704029 () ListMap!2085)

(assert (=> b!4345290 (= e!2704029 lt!1559223)))

(declare-fun lt!1559224 () ListMap!2085)

(assert (=> b!4345290 (= lt!1559224 (+!530 lt!1559053 (h!54302 newBucket!200)))))

(assert (=> b!4345290 (= lt!1559223 (addToMapMapFromBucket!137 (t!355825 newBucket!200) (+!530 lt!1559053 (h!54302 newBucket!200))))))

(declare-fun lt!1559218 () Unit!70399)

(declare-fun call!302090 () Unit!70399)

(assert (=> b!4345290 (= lt!1559218 call!302090)))

(declare-fun forall!9021 (List!48905 Int) Bool)

(assert (=> b!4345290 (forall!9021 (toList!2842 lt!1559053) lambda!137998)))

(declare-fun lt!1559215 () Unit!70399)

(assert (=> b!4345290 (= lt!1559215 lt!1559218)))

(assert (=> b!4345290 (forall!9021 (toList!2842 lt!1559224) lambda!137999)))

(declare-fun lt!1559217 () Unit!70399)

(declare-fun Unit!70405 () Unit!70399)

(assert (=> b!4345290 (= lt!1559217 Unit!70405)))

(assert (=> b!4345290 (forall!9021 (t!355825 newBucket!200) lambda!137999)))

(declare-fun lt!1559212 () Unit!70399)

(declare-fun Unit!70406 () Unit!70399)

(assert (=> b!4345290 (= lt!1559212 Unit!70406)))

(declare-fun lt!1559211 () Unit!70399)

(declare-fun Unit!70407 () Unit!70399)

(assert (=> b!4345290 (= lt!1559211 Unit!70407)))

(declare-fun lt!1559214 () Unit!70399)

(declare-fun forallContained!1670 (List!48905 Int tuple2!48086) Unit!70399)

(assert (=> b!4345290 (= lt!1559214 (forallContained!1670 (toList!2842 lt!1559224) lambda!137999 (h!54302 newBucket!200)))))

(assert (=> b!4345290 (contains!10905 lt!1559224 (_1!27337 (h!54302 newBucket!200)))))

(declare-fun lt!1559227 () Unit!70399)

(declare-fun Unit!70408 () Unit!70399)

(assert (=> b!4345290 (= lt!1559227 Unit!70408)))

(assert (=> b!4345290 (contains!10905 lt!1559223 (_1!27337 (h!54302 newBucket!200)))))

(declare-fun lt!1559213 () Unit!70399)

(declare-fun Unit!70410 () Unit!70399)

(assert (=> b!4345290 (= lt!1559213 Unit!70410)))

(assert (=> b!4345290 (forall!9021 newBucket!200 lambda!137999)))

(declare-fun lt!1559210 () Unit!70399)

(declare-fun Unit!70411 () Unit!70399)

(assert (=> b!4345290 (= lt!1559210 Unit!70411)))

(declare-fun call!302089 () Bool)

(assert (=> b!4345290 call!302089))

(declare-fun lt!1559209 () Unit!70399)

(declare-fun Unit!70412 () Unit!70399)

(assert (=> b!4345290 (= lt!1559209 Unit!70412)))

(declare-fun lt!1559207 () Unit!70399)

(declare-fun Unit!70413 () Unit!70399)

(assert (=> b!4345290 (= lt!1559207 Unit!70413)))

(declare-fun lt!1559221 () Unit!70399)

(declare-fun addForallContainsKeyThenBeforeAdding!40 (ListMap!2085 ListMap!2085 K!10140 V!10386) Unit!70399)

(assert (=> b!4345290 (= lt!1559221 (addForallContainsKeyThenBeforeAdding!40 lt!1559053 lt!1559223 (_1!27337 (h!54302 newBucket!200)) (_2!27337 (h!54302 newBucket!200))))))

(assert (=> b!4345290 (forall!9021 (toList!2842 lt!1559053) lambda!137999)))

(declare-fun lt!1559220 () Unit!70399)

(assert (=> b!4345290 (= lt!1559220 lt!1559221)))

(assert (=> b!4345290 (forall!9021 (toList!2842 lt!1559053) lambda!137999)))

(declare-fun lt!1559208 () Unit!70399)

(declare-fun Unit!70414 () Unit!70399)

(assert (=> b!4345290 (= lt!1559208 Unit!70414)))

(declare-fun res!1784002 () Bool)

(declare-fun call!302088 () Bool)

(assert (=> b!4345290 (= res!1784002 call!302088)))

(declare-fun e!2704030 () Bool)

(assert (=> b!4345290 (=> (not res!1784002) (not e!2704030))))

(assert (=> b!4345290 e!2704030))

(declare-fun lt!1559225 () Unit!70399)

(declare-fun Unit!70415 () Unit!70399)

(assert (=> b!4345290 (= lt!1559225 Unit!70415)))

(declare-fun e!2704031 () Bool)

(assert (=> d!1283012 e!2704031))

(declare-fun res!1784001 () Bool)

(assert (=> d!1283012 (=> (not res!1784001) (not e!2704031))))

(assert (=> d!1283012 (= res!1784001 (forall!9021 newBucket!200 lambda!138000))))

(assert (=> d!1283012 (= lt!1559219 e!2704029)))

(declare-fun c!738843 () Bool)

(assert (=> d!1283012 (= c!738843 ((_ is Nil!48781) newBucket!200))))

(assert (=> d!1283012 (noDuplicateKeys!429 newBucket!200)))

(assert (=> d!1283012 (= (addToMapMapFromBucket!137 newBucket!200 lt!1559053) lt!1559219)))

(declare-fun bm!302083 () Bool)

(assert (=> bm!302083 (= call!302089 (forall!9021 (ite c!738843 (toList!2842 lt!1559053) (toList!2842 lt!1559224)) (ite c!738843 lambda!137997 lambda!137999)))))

(declare-fun bm!302084 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!40 (ListMap!2085) Unit!70399)

(assert (=> bm!302084 (= call!302090 (lemmaContainsAllItsOwnKeys!40 lt!1559053))))

(declare-fun bm!302085 () Bool)

(assert (=> bm!302085 (= call!302088 (forall!9021 (ite c!738843 (toList!2842 lt!1559053) newBucket!200) (ite c!738843 lambda!137997 lambda!137999)))))

(assert (=> b!4345291 (= e!2704029 lt!1559053)))

(declare-fun lt!1559226 () Unit!70399)

(assert (=> b!4345291 (= lt!1559226 call!302090)))

(assert (=> b!4345291 call!302088))

(declare-fun lt!1559222 () Unit!70399)

(assert (=> b!4345291 (= lt!1559222 lt!1559226)))

(assert (=> b!4345291 call!302089))

(declare-fun lt!1559216 () Unit!70399)

(declare-fun Unit!70416 () Unit!70399)

(assert (=> b!4345291 (= lt!1559216 Unit!70416)))

(declare-fun b!4345292 () Bool)

(assert (=> b!4345292 (= e!2704030 (forall!9021 (toList!2842 lt!1559053) lambda!137999))))

(declare-fun b!4345293 () Bool)

(declare-fun res!1784000 () Bool)

(assert (=> b!4345293 (=> (not res!1784000) (not e!2704031))))

(assert (=> b!4345293 (= res!1784000 (forall!9021 (toList!2842 lt!1559053) lambda!138000))))

(declare-fun b!4345294 () Bool)

(declare-fun invariantList!648 (List!48905) Bool)

(assert (=> b!4345294 (= e!2704031 (invariantList!648 (toList!2842 lt!1559219)))))

(assert (= (and d!1283012 c!738843) b!4345291))

(assert (= (and d!1283012 (not c!738843)) b!4345290))

(assert (= (and b!4345290 res!1784002) b!4345292))

(assert (= (or b!4345291 b!4345290) bm!302084))

(assert (= (or b!4345291 b!4345290) bm!302085))

(assert (= (or b!4345291 b!4345290) bm!302083))

(assert (= (and d!1283012 res!1784001) b!4345293))

(assert (= (and b!4345293 res!1784000) b!4345294))

(declare-fun m!4952205 () Bool)

(assert (=> b!4345290 m!4952205))

(declare-fun m!4952207 () Bool)

(assert (=> b!4345290 m!4952207))

(declare-fun m!4952209 () Bool)

(assert (=> b!4345290 m!4952209))

(declare-fun m!4952211 () Bool)

(assert (=> b!4345290 m!4952211))

(assert (=> b!4345290 m!4952209))

(declare-fun m!4952213 () Bool)

(assert (=> b!4345290 m!4952213))

(declare-fun m!4952215 () Bool)

(assert (=> b!4345290 m!4952215))

(declare-fun m!4952217 () Bool)

(assert (=> b!4345290 m!4952217))

(assert (=> b!4345290 m!4952211))

(declare-fun m!4952219 () Bool)

(assert (=> b!4345290 m!4952219))

(declare-fun m!4952221 () Bool)

(assert (=> b!4345290 m!4952221))

(declare-fun m!4952223 () Bool)

(assert (=> b!4345290 m!4952223))

(declare-fun m!4952225 () Bool)

(assert (=> b!4345290 m!4952225))

(declare-fun m!4952227 () Bool)

(assert (=> d!1283012 m!4952227))

(assert (=> d!1283012 m!4952049))

(declare-fun m!4952229 () Bool)

(assert (=> b!4345293 m!4952229))

(declare-fun m!4952231 () Bool)

(assert (=> bm!302084 m!4952231))

(assert (=> b!4345292 m!4952209))

(declare-fun m!4952233 () Bool)

(assert (=> bm!302083 m!4952233))

(declare-fun m!4952235 () Bool)

(assert (=> bm!302085 m!4952235))

(declare-fun m!4952237 () Bool)

(assert (=> b!4345294 m!4952237))

(assert (=> b!4345161 d!1283012))

(declare-fun bs!627315 () Bool)

(declare-fun d!1283062 () Bool)

(assert (= bs!627315 (and d!1283062 start!419368)))

(declare-fun lambda!138029 () Int)

(assert (=> bs!627315 (= lambda!138029 lambda!137959)))

(declare-fun lt!1559272 () ListMap!2085)

(assert (=> d!1283062 (invariantList!648 (toList!2842 lt!1559272))))

(declare-fun e!2704040 () ListMap!2085)

(assert (=> d!1283062 (= lt!1559272 e!2704040)))

(declare-fun c!738848 () Bool)

(assert (=> d!1283062 (= c!738848 ((_ is Cons!48782) (toList!2841 lt!1559063)))))

(assert (=> d!1283062 (forall!9019 (toList!2841 lt!1559063) lambda!138029)))

(assert (=> d!1283062 (= (extractMap!488 (toList!2841 lt!1559063)) lt!1559272)))

(declare-fun b!4345309 () Bool)

(assert (=> b!4345309 (= e!2704040 (addToMapMapFromBucket!137 (_2!27338 (h!54303 (toList!2841 lt!1559063))) (extractMap!488 (t!355826 (toList!2841 lt!1559063)))))))

(declare-fun b!4345310 () Bool)

(assert (=> b!4345310 (= e!2704040 (ListMap!2086 Nil!48781))))

(assert (= (and d!1283062 c!738848) b!4345309))

(assert (= (and d!1283062 (not c!738848)) b!4345310))

(declare-fun m!4952239 () Bool)

(assert (=> d!1283062 m!4952239))

(declare-fun m!4952241 () Bool)

(assert (=> d!1283062 m!4952241))

(declare-fun m!4952243 () Bool)

(assert (=> b!4345309 m!4952243))

(assert (=> b!4345309 m!4952243))

(declare-fun m!4952245 () Bool)

(assert (=> b!4345309 m!4952245))

(assert (=> b!4345161 d!1283062))

(declare-fun d!1283064 () Bool)

(declare-fun e!2704046 () Bool)

(assert (=> d!1283064 e!2704046))

(declare-fun res!1784016 () Bool)

(assert (=> d!1283064 (=> (not res!1784016) (not e!2704046))))

(declare-fun lt!1559302 () ListMap!2085)

(assert (=> d!1283064 (= res!1784016 (contains!10905 lt!1559302 (_1!27337 lt!1559068)))))

(declare-fun lt!1559305 () List!48905)

(assert (=> d!1283064 (= lt!1559302 (ListMap!2086 lt!1559305))))

(declare-fun lt!1559304 () Unit!70399)

(declare-fun lt!1559303 () Unit!70399)

(assert (=> d!1283064 (= lt!1559304 lt!1559303)))

(declare-datatypes ((Option!10408 0))(
  ( (None!10407) (Some!10407 (v!43193 V!10386)) )
))
(declare-fun getValueByKey!394 (List!48905 K!10140) Option!10408)

(assert (=> d!1283064 (= (getValueByKey!394 lt!1559305 (_1!27337 lt!1559068)) (Some!10407 (_2!27337 lt!1559068)))))

(declare-fun lemmaContainsTupThenGetReturnValue!177 (List!48905 K!10140 V!10386) Unit!70399)

(assert (=> d!1283064 (= lt!1559303 (lemmaContainsTupThenGetReturnValue!177 lt!1559305 (_1!27337 lt!1559068) (_2!27337 lt!1559068)))))

(declare-fun insertNoDuplicatedKeys!81 (List!48905 K!10140 V!10386) List!48905)

(assert (=> d!1283064 (= lt!1559305 (insertNoDuplicatedKeys!81 (toList!2842 lt!1559055) (_1!27337 lt!1559068) (_2!27337 lt!1559068)))))

(assert (=> d!1283064 (= (+!530 lt!1559055 lt!1559068) lt!1559302)))

(declare-fun b!4345324 () Bool)

(declare-fun res!1784017 () Bool)

(assert (=> b!4345324 (=> (not res!1784017) (not e!2704046))))

(assert (=> b!4345324 (= res!1784017 (= (getValueByKey!394 (toList!2842 lt!1559302) (_1!27337 lt!1559068)) (Some!10407 (_2!27337 lt!1559068))))))

(declare-fun b!4345325 () Bool)

(declare-fun contains!10909 (List!48905 tuple2!48086) Bool)

(assert (=> b!4345325 (= e!2704046 (contains!10909 (toList!2842 lt!1559302) lt!1559068))))

(assert (= (and d!1283064 res!1784016) b!4345324))

(assert (= (and b!4345324 res!1784017) b!4345325))

(declare-fun m!4952251 () Bool)

(assert (=> d!1283064 m!4952251))

(declare-fun m!4952255 () Bool)

(assert (=> d!1283064 m!4952255))

(declare-fun m!4952257 () Bool)

(assert (=> d!1283064 m!4952257))

(declare-fun m!4952261 () Bool)

(assert (=> d!1283064 m!4952261))

(declare-fun m!4952265 () Bool)

(assert (=> b!4345324 m!4952265))

(declare-fun m!4952269 () Bool)

(assert (=> b!4345325 m!4952269))

(assert (=> b!4345161 d!1283064))

(declare-fun d!1283066 () Bool)

(assert (=> d!1283066 (eq!219 (addToMapMapFromBucket!137 lt!1559066 (+!530 lt!1559053 (tuple2!48087 key!3918 newValue!99))) (+!530 (addToMapMapFromBucket!137 lt!1559066 lt!1559053) (tuple2!48087 key!3918 newValue!99)))))

(declare-fun lt!1559333 () Unit!70399)

(declare-fun choose!26652 (ListMap!2085 K!10140 V!10386 List!48905) Unit!70399)

(assert (=> d!1283066 (= lt!1559333 (choose!26652 lt!1559053 key!3918 newValue!99 lt!1559066))))

(declare-fun containsKey!594 (List!48905 K!10140) Bool)

(assert (=> d!1283066 (not (containsKey!594 lt!1559066 key!3918))))

(assert (=> d!1283066 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!48 lt!1559053 key!3918 newValue!99 lt!1559066) lt!1559333)))

(declare-fun bs!627329 () Bool)

(assert (= bs!627329 d!1283066))

(declare-fun m!4952313 () Bool)

(assert (=> bs!627329 m!4952313))

(declare-fun m!4952315 () Bool)

(assert (=> bs!627329 m!4952315))

(declare-fun m!4952317 () Bool)

(assert (=> bs!627329 m!4952317))

(declare-fun m!4952319 () Bool)

(assert (=> bs!627329 m!4952319))

(assert (=> bs!627329 m!4952001))

(declare-fun m!4952321 () Bool)

(assert (=> bs!627329 m!4952321))

(assert (=> bs!627329 m!4952317))

(assert (=> bs!627329 m!4952319))

(assert (=> bs!627329 m!4952321))

(declare-fun m!4952323 () Bool)

(assert (=> bs!627329 m!4952323))

(assert (=> bs!627329 m!4952001))

(assert (=> b!4345161 d!1283066))

(declare-fun bs!627335 () Bool)

(declare-fun b!4345337 () Bool)

(assert (= bs!627335 (and b!4345337 b!4345291)))

(declare-fun lambda!138040 () Int)

(assert (=> bs!627335 (= lambda!138040 lambda!137997)))

(declare-fun bs!627336 () Bool)

(assert (= bs!627336 (and b!4345337 b!4345290)))

(assert (=> bs!627336 (= lambda!138040 lambda!137998)))

(assert (=> bs!627336 (= (= lt!1559053 lt!1559223) (= lambda!138040 lambda!137999))))

(declare-fun bs!627337 () Bool)

(assert (= bs!627337 (and b!4345337 d!1283012)))

(assert (=> bs!627337 (= (= lt!1559053 lt!1559219) (= lambda!138040 lambda!138000))))

(assert (=> b!4345337 true))

(declare-fun bs!627338 () Bool)

(declare-fun b!4345336 () Bool)

(assert (= bs!627338 (and b!4345336 b!4345337)))

(declare-fun lambda!138041 () Int)

(assert (=> bs!627338 (= lambda!138041 lambda!138040)))

(declare-fun bs!627339 () Bool)

(assert (= bs!627339 (and b!4345336 b!4345290)))

(assert (=> bs!627339 (= (= lt!1559053 lt!1559223) (= lambda!138041 lambda!137999))))

(declare-fun bs!627340 () Bool)

(assert (= bs!627340 (and b!4345336 d!1283012)))

(assert (=> bs!627340 (= (= lt!1559053 lt!1559219) (= lambda!138041 lambda!138000))))

(declare-fun bs!627341 () Bool)

(assert (= bs!627341 (and b!4345336 b!4345291)))

(assert (=> bs!627341 (= lambda!138041 lambda!137997)))

(assert (=> bs!627339 (= lambda!138041 lambda!137998)))

(assert (=> b!4345336 true))

(declare-fun lambda!138042 () Int)

(declare-fun lt!1559350 () ListMap!2085)

(assert (=> b!4345336 (= (= lt!1559350 lt!1559053) (= lambda!138042 lambda!138041))))

(assert (=> bs!627338 (= (= lt!1559350 lt!1559053) (= lambda!138042 lambda!138040))))

(assert (=> bs!627339 (= (= lt!1559350 lt!1559223) (= lambda!138042 lambda!137999))))

(assert (=> bs!627340 (= (= lt!1559350 lt!1559219) (= lambda!138042 lambda!138000))))

(assert (=> bs!627341 (= (= lt!1559350 lt!1559053) (= lambda!138042 lambda!137997))))

(assert (=> bs!627339 (= (= lt!1559350 lt!1559053) (= lambda!138042 lambda!137998))))

(assert (=> b!4345336 true))

(declare-fun bs!627348 () Bool)

(declare-fun d!1283074 () Bool)

(assert (= bs!627348 (and d!1283074 b!4345336)))

(declare-fun lambda!138044 () Int)

(declare-fun lt!1559346 () ListMap!2085)

(assert (=> bs!627348 (= (= lt!1559346 lt!1559053) (= lambda!138044 lambda!138041))))

(assert (=> bs!627348 (= (= lt!1559346 lt!1559350) (= lambda!138044 lambda!138042))))

(declare-fun bs!627349 () Bool)

(assert (= bs!627349 (and d!1283074 b!4345337)))

(assert (=> bs!627349 (= (= lt!1559346 lt!1559053) (= lambda!138044 lambda!138040))))

(declare-fun bs!627350 () Bool)

(assert (= bs!627350 (and d!1283074 b!4345290)))

(assert (=> bs!627350 (= (= lt!1559346 lt!1559223) (= lambda!138044 lambda!137999))))

(declare-fun bs!627351 () Bool)

(assert (= bs!627351 (and d!1283074 d!1283012)))

(assert (=> bs!627351 (= (= lt!1559346 lt!1559219) (= lambda!138044 lambda!138000))))

(declare-fun bs!627352 () Bool)

(assert (= bs!627352 (and d!1283074 b!4345291)))

(assert (=> bs!627352 (= (= lt!1559346 lt!1559053) (= lambda!138044 lambda!137997))))

(assert (=> bs!627350 (= (= lt!1559346 lt!1559053) (= lambda!138044 lambda!137998))))

(assert (=> d!1283074 true))

(declare-fun e!2704054 () ListMap!2085)

(assert (=> b!4345336 (= e!2704054 lt!1559350)))

(declare-fun lt!1559351 () ListMap!2085)

(assert (=> b!4345336 (= lt!1559351 (+!530 lt!1559053 (h!54302 lt!1559066)))))

(assert (=> b!4345336 (= lt!1559350 (addToMapMapFromBucket!137 (t!355825 lt!1559066) (+!530 lt!1559053 (h!54302 lt!1559066))))))

(declare-fun lt!1559345 () Unit!70399)

(declare-fun call!302105 () Unit!70399)

(assert (=> b!4345336 (= lt!1559345 call!302105)))

(assert (=> b!4345336 (forall!9021 (toList!2842 lt!1559053) lambda!138041)))

(declare-fun lt!1559342 () Unit!70399)

(assert (=> b!4345336 (= lt!1559342 lt!1559345)))

(assert (=> b!4345336 (forall!9021 (toList!2842 lt!1559351) lambda!138042)))

(declare-fun lt!1559344 () Unit!70399)

(declare-fun Unit!70428 () Unit!70399)

(assert (=> b!4345336 (= lt!1559344 Unit!70428)))

(assert (=> b!4345336 (forall!9021 (t!355825 lt!1559066) lambda!138042)))

(declare-fun lt!1559339 () Unit!70399)

(declare-fun Unit!70429 () Unit!70399)

(assert (=> b!4345336 (= lt!1559339 Unit!70429)))

(declare-fun lt!1559338 () Unit!70399)

(declare-fun Unit!70430 () Unit!70399)

(assert (=> b!4345336 (= lt!1559338 Unit!70430)))

(declare-fun lt!1559341 () Unit!70399)

(assert (=> b!4345336 (= lt!1559341 (forallContained!1670 (toList!2842 lt!1559351) lambda!138042 (h!54302 lt!1559066)))))

(assert (=> b!4345336 (contains!10905 lt!1559351 (_1!27337 (h!54302 lt!1559066)))))

(declare-fun lt!1559354 () Unit!70399)

(declare-fun Unit!70431 () Unit!70399)

(assert (=> b!4345336 (= lt!1559354 Unit!70431)))

(assert (=> b!4345336 (contains!10905 lt!1559350 (_1!27337 (h!54302 lt!1559066)))))

(declare-fun lt!1559340 () Unit!70399)

(declare-fun Unit!70432 () Unit!70399)

(assert (=> b!4345336 (= lt!1559340 Unit!70432)))

(assert (=> b!4345336 (forall!9021 lt!1559066 lambda!138042)))

(declare-fun lt!1559337 () Unit!70399)

(declare-fun Unit!70433 () Unit!70399)

(assert (=> b!4345336 (= lt!1559337 Unit!70433)))

(declare-fun call!302104 () Bool)

(assert (=> b!4345336 call!302104))

(declare-fun lt!1559336 () Unit!70399)

(declare-fun Unit!70434 () Unit!70399)

(assert (=> b!4345336 (= lt!1559336 Unit!70434)))

(declare-fun lt!1559334 () Unit!70399)

(declare-fun Unit!70435 () Unit!70399)

(assert (=> b!4345336 (= lt!1559334 Unit!70435)))

(declare-fun lt!1559348 () Unit!70399)

(assert (=> b!4345336 (= lt!1559348 (addForallContainsKeyThenBeforeAdding!40 lt!1559053 lt!1559350 (_1!27337 (h!54302 lt!1559066)) (_2!27337 (h!54302 lt!1559066))))))

(assert (=> b!4345336 (forall!9021 (toList!2842 lt!1559053) lambda!138042)))

(declare-fun lt!1559347 () Unit!70399)

(assert (=> b!4345336 (= lt!1559347 lt!1559348)))

(assert (=> b!4345336 (forall!9021 (toList!2842 lt!1559053) lambda!138042)))

(declare-fun lt!1559335 () Unit!70399)

(declare-fun Unit!70436 () Unit!70399)

(assert (=> b!4345336 (= lt!1559335 Unit!70436)))

(declare-fun res!1784026 () Bool)

(declare-fun call!302103 () Bool)

(assert (=> b!4345336 (= res!1784026 call!302103)))

(declare-fun e!2704055 () Bool)

(assert (=> b!4345336 (=> (not res!1784026) (not e!2704055))))

(assert (=> b!4345336 e!2704055))

(declare-fun lt!1559352 () Unit!70399)

(declare-fun Unit!70437 () Unit!70399)

(assert (=> b!4345336 (= lt!1559352 Unit!70437)))

(declare-fun e!2704056 () Bool)

(assert (=> d!1283074 e!2704056))

(declare-fun res!1784025 () Bool)

(assert (=> d!1283074 (=> (not res!1784025) (not e!2704056))))

(assert (=> d!1283074 (= res!1784025 (forall!9021 lt!1559066 lambda!138044))))

(assert (=> d!1283074 (= lt!1559346 e!2704054)))

(declare-fun c!738852 () Bool)

(assert (=> d!1283074 (= c!738852 ((_ is Nil!48781) lt!1559066))))

(assert (=> d!1283074 (noDuplicateKeys!429 lt!1559066)))

(assert (=> d!1283074 (= (addToMapMapFromBucket!137 lt!1559066 lt!1559053) lt!1559346)))

(declare-fun bm!302098 () Bool)

(assert (=> bm!302098 (= call!302104 (forall!9021 (ite c!738852 (toList!2842 lt!1559053) (toList!2842 lt!1559351)) (ite c!738852 lambda!138040 lambda!138042)))))

(declare-fun bm!302099 () Bool)

(assert (=> bm!302099 (= call!302105 (lemmaContainsAllItsOwnKeys!40 lt!1559053))))

(declare-fun bm!302100 () Bool)

(assert (=> bm!302100 (= call!302103 (forall!9021 (ite c!738852 (toList!2842 lt!1559053) lt!1559066) (ite c!738852 lambda!138040 lambda!138042)))))

(assert (=> b!4345337 (= e!2704054 lt!1559053)))

(declare-fun lt!1559353 () Unit!70399)

(assert (=> b!4345337 (= lt!1559353 call!302105)))

(assert (=> b!4345337 call!302103))

(declare-fun lt!1559349 () Unit!70399)

(assert (=> b!4345337 (= lt!1559349 lt!1559353)))

(assert (=> b!4345337 call!302104))

(declare-fun lt!1559343 () Unit!70399)

(declare-fun Unit!70438 () Unit!70399)

(assert (=> b!4345337 (= lt!1559343 Unit!70438)))

(declare-fun b!4345338 () Bool)

(assert (=> b!4345338 (= e!2704055 (forall!9021 (toList!2842 lt!1559053) lambda!138042))))

(declare-fun b!4345339 () Bool)

(declare-fun res!1784024 () Bool)

(assert (=> b!4345339 (=> (not res!1784024) (not e!2704056))))

(assert (=> b!4345339 (= res!1784024 (forall!9021 (toList!2842 lt!1559053) lambda!138044))))

(declare-fun b!4345340 () Bool)

(assert (=> b!4345340 (= e!2704056 (invariantList!648 (toList!2842 lt!1559346)))))

(assert (= (and d!1283074 c!738852) b!4345337))

(assert (= (and d!1283074 (not c!738852)) b!4345336))

(assert (= (and b!4345336 res!1784026) b!4345338))

(assert (= (or b!4345337 b!4345336) bm!302099))

(assert (= (or b!4345337 b!4345336) bm!302100))

(assert (= (or b!4345337 b!4345336) bm!302098))

(assert (= (and d!1283074 res!1784025) b!4345339))

(assert (= (and b!4345339 res!1784024) b!4345340))

(declare-fun m!4952359 () Bool)

(assert (=> b!4345336 m!4952359))

(declare-fun m!4952361 () Bool)

(assert (=> b!4345336 m!4952361))

(declare-fun m!4952363 () Bool)

(assert (=> b!4345336 m!4952363))

(declare-fun m!4952365 () Bool)

(assert (=> b!4345336 m!4952365))

(assert (=> b!4345336 m!4952363))

(declare-fun m!4952367 () Bool)

(assert (=> b!4345336 m!4952367))

(declare-fun m!4952369 () Bool)

(assert (=> b!4345336 m!4952369))

(declare-fun m!4952371 () Bool)

(assert (=> b!4345336 m!4952371))

(assert (=> b!4345336 m!4952365))

(declare-fun m!4952377 () Bool)

(assert (=> b!4345336 m!4952377))

(declare-fun m!4952381 () Bool)

(assert (=> b!4345336 m!4952381))

(declare-fun m!4952383 () Bool)

(assert (=> b!4345336 m!4952383))

(declare-fun m!4952385 () Bool)

(assert (=> b!4345336 m!4952385))

(declare-fun m!4952387 () Bool)

(assert (=> d!1283074 m!4952387))

(declare-fun m!4952389 () Bool)

(assert (=> d!1283074 m!4952389))

(declare-fun m!4952393 () Bool)

(assert (=> b!4345339 m!4952393))

(assert (=> bm!302099 m!4952231))

(assert (=> b!4345338 m!4952363))

(declare-fun m!4952395 () Bool)

(assert (=> bm!302098 m!4952395))

(declare-fun m!4952397 () Bool)

(assert (=> bm!302100 m!4952397))

(declare-fun m!4952399 () Bool)

(assert (=> b!4345340 m!4952399))

(assert (=> b!4345161 d!1283074))

(declare-fun d!1283080 () Bool)

(declare-fun res!1784034 () Bool)

(declare-fun e!2704065 () Bool)

(assert (=> d!1283080 (=> res!1784034 e!2704065)))

(assert (=> d!1283080 (= res!1784034 ((_ is Nil!48782) (toList!2841 lt!1559060)))))

(assert (=> d!1283080 (= (forall!9019 (toList!2841 lt!1559060) lambda!137959) e!2704065)))

(declare-fun b!4345352 () Bool)

(declare-fun e!2704066 () Bool)

(assert (=> b!4345352 (= e!2704065 e!2704066)))

(declare-fun res!1784035 () Bool)

(assert (=> b!4345352 (=> (not res!1784035) (not e!2704066))))

(declare-fun dynLambda!20593 (Int tuple2!48088) Bool)

(assert (=> b!4345352 (= res!1784035 (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lt!1559060))))))

(declare-fun b!4345353 () Bool)

(assert (=> b!4345353 (= e!2704066 (forall!9019 (t!355826 (toList!2841 lt!1559060)) lambda!137959))))

(assert (= (and d!1283080 (not res!1784034)) b!4345352))

(assert (= (and b!4345352 res!1784035) b!4345353))

(declare-fun b_lambda!130053 () Bool)

(assert (=> (not b_lambda!130053) (not b!4345352)))

(declare-fun m!4952401 () Bool)

(assert (=> b!4345352 m!4952401))

(declare-fun m!4952403 () Bool)

(assert (=> b!4345353 m!4952403))

(assert (=> b!4345161 d!1283080))

(declare-fun bs!627372 () Bool)

(declare-fun d!1283082 () Bool)

(assert (= bs!627372 (and d!1283082 start!419368)))

(declare-fun lambda!138049 () Int)

(assert (=> bs!627372 (= lambda!138049 lambda!137959)))

(declare-fun bs!627373 () Bool)

(assert (= bs!627373 (and d!1283082 d!1283062)))

(assert (=> bs!627373 (= lambda!138049 lambda!138029)))

(declare-fun lt!1559377 () ListMap!2085)

(assert (=> d!1283082 (invariantList!648 (toList!2842 lt!1559377))))

(declare-fun e!2704067 () ListMap!2085)

(assert (=> d!1283082 (= lt!1559377 e!2704067)))

(declare-fun c!738855 () Bool)

(assert (=> d!1283082 (= c!738855 ((_ is Cons!48782) (toList!2841 lt!1559060)))))

(assert (=> d!1283082 (forall!9019 (toList!2841 lt!1559060) lambda!138049)))

(assert (=> d!1283082 (= (extractMap!488 (toList!2841 lt!1559060)) lt!1559377)))

(declare-fun b!4345354 () Bool)

(assert (=> b!4345354 (= e!2704067 (addToMapMapFromBucket!137 (_2!27338 (h!54303 (toList!2841 lt!1559060))) (extractMap!488 (t!355826 (toList!2841 lt!1559060)))))))

(declare-fun b!4345355 () Bool)

(assert (=> b!4345355 (= e!2704067 (ListMap!2086 Nil!48781))))

(assert (= (and d!1283082 c!738855) b!4345354))

(assert (= (and d!1283082 (not c!738855)) b!4345355))

(declare-fun m!4952405 () Bool)

(assert (=> d!1283082 m!4952405))

(declare-fun m!4952407 () Bool)

(assert (=> d!1283082 m!4952407))

(declare-fun m!4952409 () Bool)

(assert (=> b!4345354 m!4952409))

(assert (=> b!4345354 m!4952409))

(declare-fun m!4952411 () Bool)

(assert (=> b!4345354 m!4952411))

(assert (=> b!4345161 d!1283082))

(declare-fun d!1283084 () Bool)

(assert (=> d!1283084 (= (contains!10905 lt!1559056 key!3918) (contains!10905 lt!1559051 key!3918))))

(declare-fun lt!1559405 () Unit!70399)

(declare-fun choose!26653 (ListMap!2085 ListMap!2085 K!10140) Unit!70399)

(assert (=> d!1283084 (= lt!1559405 (choose!26653 lt!1559056 lt!1559051 key!3918))))

(assert (=> d!1283084 (eq!219 lt!1559056 lt!1559051)))

(assert (=> d!1283084 (= (lemmaEquivalentThenSameContains!80 lt!1559056 lt!1559051 key!3918) lt!1559405)))

(declare-fun bs!627384 () Bool)

(assert (= bs!627384 d!1283084))

(assert (=> bs!627384 m!4951995))

(assert (=> bs!627384 m!4952027))

(declare-fun m!4952459 () Bool)

(assert (=> bs!627384 m!4952459))

(assert (=> bs!627384 m!4952031))

(assert (=> b!4345161 d!1283084))

(declare-fun d!1283090 () Bool)

(declare-fun e!2704074 () Bool)

(assert (=> d!1283090 e!2704074))

(declare-fun res!1784043 () Bool)

(assert (=> d!1283090 (=> (not res!1784043) (not e!2704074))))

(declare-fun lt!1559408 () ListMap!2085)

(assert (=> d!1283090 (= res!1784043 (not (contains!10905 lt!1559408 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!31 (List!48905 K!10140) List!48905)

(assert (=> d!1283090 (= lt!1559408 (ListMap!2086 (removePresrvNoDuplicatedKeys!31 (toList!2842 lt!1559071) key!3918)))))

(assert (=> d!1283090 (= (-!230 lt!1559071 key!3918) lt!1559408)))

(declare-fun b!4345365 () Bool)

(declare-datatypes ((List!48908 0))(
  ( (Nil!48784) (Cons!48784 (h!54307 K!10140) (t!355828 List!48908)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7652 (List!48908) (InoxSet K!10140))

(declare-fun keys!16438 (ListMap!2085) List!48908)

(assert (=> b!4345365 (= e!2704074 (= ((_ map and) (content!7652 (keys!16438 lt!1559071)) ((_ map not) (store ((as const (Array K!10140 Bool)) false) key!3918 true))) (content!7652 (keys!16438 lt!1559408))))))

(assert (= (and d!1283090 res!1784043) b!4345365))

(declare-fun m!4952487 () Bool)

(assert (=> d!1283090 m!4952487))

(declare-fun m!4952491 () Bool)

(assert (=> d!1283090 m!4952491))

(declare-fun m!4952495 () Bool)

(assert (=> b!4345365 m!4952495))

(declare-fun m!4952497 () Bool)

(assert (=> b!4345365 m!4952497))

(declare-fun m!4952499 () Bool)

(assert (=> b!4345365 m!4952499))

(assert (=> b!4345365 m!4952499))

(declare-fun m!4952503 () Bool)

(assert (=> b!4345365 m!4952503))

(assert (=> b!4345365 m!4952497))

(declare-fun m!4952505 () Bool)

(assert (=> b!4345365 m!4952505))

(assert (=> b!4345161 d!1283090))

(declare-fun bs!627417 () Bool)

(declare-fun b!4345367 () Bool)

(assert (= bs!627417 (and b!4345367 b!4345336)))

(declare-fun lambda!138055 () Int)

(assert (=> bs!627417 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138055 lambda!138041))))

(assert (=> bs!627417 (= (= (+!530 lt!1559053 lt!1559068) lt!1559350) (= lambda!138055 lambda!138042))))

(declare-fun bs!627418 () Bool)

(assert (= bs!627418 (and b!4345367 b!4345337)))

(assert (=> bs!627418 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138055 lambda!138040))))

(declare-fun bs!627419 () Bool)

(assert (= bs!627419 (and b!4345367 b!4345290)))

(assert (=> bs!627419 (= (= (+!530 lt!1559053 lt!1559068) lt!1559223) (= lambda!138055 lambda!137999))))

(declare-fun bs!627420 () Bool)

(assert (= bs!627420 (and b!4345367 d!1283074)))

(assert (=> bs!627420 (= (= (+!530 lt!1559053 lt!1559068) lt!1559346) (= lambda!138055 lambda!138044))))

(declare-fun bs!627421 () Bool)

(assert (= bs!627421 (and b!4345367 d!1283012)))

(assert (=> bs!627421 (= (= (+!530 lt!1559053 lt!1559068) lt!1559219) (= lambda!138055 lambda!138000))))

(declare-fun bs!627422 () Bool)

(assert (= bs!627422 (and b!4345367 b!4345291)))

(assert (=> bs!627422 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138055 lambda!137997))))

(assert (=> bs!627419 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138055 lambda!137998))))

(assert (=> b!4345367 true))

(declare-fun bs!627423 () Bool)

(declare-fun b!4345366 () Bool)

(assert (= bs!627423 (and b!4345366 b!4345367)))

(declare-fun lambda!138056 () Int)

(assert (=> bs!627423 (= lambda!138056 lambda!138055)))

(declare-fun bs!627424 () Bool)

(assert (= bs!627424 (and b!4345366 b!4345336)))

(assert (=> bs!627424 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138056 lambda!138041))))

(assert (=> bs!627424 (= (= (+!530 lt!1559053 lt!1559068) lt!1559350) (= lambda!138056 lambda!138042))))

(declare-fun bs!627425 () Bool)

(assert (= bs!627425 (and b!4345366 b!4345337)))

(assert (=> bs!627425 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138056 lambda!138040))))

(declare-fun bs!627426 () Bool)

(assert (= bs!627426 (and b!4345366 b!4345290)))

(assert (=> bs!627426 (= (= (+!530 lt!1559053 lt!1559068) lt!1559223) (= lambda!138056 lambda!137999))))

(declare-fun bs!627427 () Bool)

(assert (= bs!627427 (and b!4345366 d!1283074)))

(assert (=> bs!627427 (= (= (+!530 lt!1559053 lt!1559068) lt!1559346) (= lambda!138056 lambda!138044))))

(declare-fun bs!627428 () Bool)

(assert (= bs!627428 (and b!4345366 d!1283012)))

(assert (=> bs!627428 (= (= (+!530 lt!1559053 lt!1559068) lt!1559219) (= lambda!138056 lambda!138000))))

(declare-fun bs!627429 () Bool)

(assert (= bs!627429 (and b!4345366 b!4345291)))

(assert (=> bs!627429 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138056 lambda!137997))))

(assert (=> bs!627426 (= (= (+!530 lt!1559053 lt!1559068) lt!1559053) (= lambda!138056 lambda!137998))))

(assert (=> b!4345366 true))

(declare-fun lt!1559425 () ListMap!2085)

(declare-fun lambda!138057 () Int)

(assert (=> bs!627423 (= (= lt!1559425 (+!530 lt!1559053 lt!1559068)) (= lambda!138057 lambda!138055))))

(assert (=> bs!627424 (= (= lt!1559425 lt!1559053) (= lambda!138057 lambda!138041))))

(assert (=> bs!627424 (= (= lt!1559425 lt!1559350) (= lambda!138057 lambda!138042))))

(assert (=> bs!627425 (= (= lt!1559425 lt!1559053) (= lambda!138057 lambda!138040))))

(assert (=> bs!627426 (= (= lt!1559425 lt!1559223) (= lambda!138057 lambda!137999))))

(assert (=> b!4345366 (= (= lt!1559425 (+!530 lt!1559053 lt!1559068)) (= lambda!138057 lambda!138056))))

(assert (=> bs!627427 (= (= lt!1559425 lt!1559346) (= lambda!138057 lambda!138044))))

(assert (=> bs!627428 (= (= lt!1559425 lt!1559219) (= lambda!138057 lambda!138000))))

(assert (=> bs!627429 (= (= lt!1559425 lt!1559053) (= lambda!138057 lambda!137997))))

(assert (=> bs!627426 (= (= lt!1559425 lt!1559053) (= lambda!138057 lambda!137998))))

(assert (=> b!4345366 true))

(declare-fun bs!627430 () Bool)

(declare-fun d!1283092 () Bool)

(assert (= bs!627430 (and d!1283092 b!4345367)))

(declare-fun lt!1559421 () ListMap!2085)

(declare-fun lambda!138058 () Int)

(assert (=> bs!627430 (= (= lt!1559421 (+!530 lt!1559053 lt!1559068)) (= lambda!138058 lambda!138055))))

(declare-fun bs!627431 () Bool)

(assert (= bs!627431 (and d!1283092 b!4345336)))

(assert (=> bs!627431 (= (= lt!1559421 lt!1559053) (= lambda!138058 lambda!138041))))

(assert (=> bs!627431 (= (= lt!1559421 lt!1559350) (= lambda!138058 lambda!138042))))

(declare-fun bs!627432 () Bool)

(assert (= bs!627432 (and d!1283092 b!4345337)))

(assert (=> bs!627432 (= (= lt!1559421 lt!1559053) (= lambda!138058 lambda!138040))))

(declare-fun bs!627433 () Bool)

(assert (= bs!627433 (and d!1283092 b!4345290)))

(assert (=> bs!627433 (= (= lt!1559421 lt!1559223) (= lambda!138058 lambda!137999))))

(declare-fun bs!627434 () Bool)

(assert (= bs!627434 (and d!1283092 b!4345366)))

(assert (=> bs!627434 (= (= lt!1559421 (+!530 lt!1559053 lt!1559068)) (= lambda!138058 lambda!138056))))

(declare-fun bs!627435 () Bool)

(assert (= bs!627435 (and d!1283092 d!1283074)))

(assert (=> bs!627435 (= (= lt!1559421 lt!1559346) (= lambda!138058 lambda!138044))))

(assert (=> bs!627434 (= (= lt!1559421 lt!1559425) (= lambda!138058 lambda!138057))))

(declare-fun bs!627436 () Bool)

(assert (= bs!627436 (and d!1283092 d!1283012)))

(assert (=> bs!627436 (= (= lt!1559421 lt!1559219) (= lambda!138058 lambda!138000))))

(declare-fun bs!627437 () Bool)

(assert (= bs!627437 (and d!1283092 b!4345291)))

(assert (=> bs!627437 (= (= lt!1559421 lt!1559053) (= lambda!138058 lambda!137997))))

(assert (=> bs!627433 (= (= lt!1559421 lt!1559053) (= lambda!138058 lambda!137998))))

(assert (=> d!1283092 true))

(declare-fun e!2704075 () ListMap!2085)

(assert (=> b!4345366 (= e!2704075 lt!1559425)))

(declare-fun lt!1559426 () ListMap!2085)

(assert (=> b!4345366 (= lt!1559426 (+!530 (+!530 lt!1559053 lt!1559068) (h!54302 lt!1559066)))))

(assert (=> b!4345366 (= lt!1559425 (addToMapMapFromBucket!137 (t!355825 lt!1559066) (+!530 (+!530 lt!1559053 lt!1559068) (h!54302 lt!1559066))))))

(declare-fun lt!1559420 () Unit!70399)

(declare-fun call!302114 () Unit!70399)

(assert (=> b!4345366 (= lt!1559420 call!302114)))

(assert (=> b!4345366 (forall!9021 (toList!2842 (+!530 lt!1559053 lt!1559068)) lambda!138056)))

(declare-fun lt!1559417 () Unit!70399)

(assert (=> b!4345366 (= lt!1559417 lt!1559420)))

(assert (=> b!4345366 (forall!9021 (toList!2842 lt!1559426) lambda!138057)))

(declare-fun lt!1559419 () Unit!70399)

(declare-fun Unit!70450 () Unit!70399)

(assert (=> b!4345366 (= lt!1559419 Unit!70450)))

(assert (=> b!4345366 (forall!9021 (t!355825 lt!1559066) lambda!138057)))

(declare-fun lt!1559414 () Unit!70399)

(declare-fun Unit!70451 () Unit!70399)

(assert (=> b!4345366 (= lt!1559414 Unit!70451)))

(declare-fun lt!1559413 () Unit!70399)

(declare-fun Unit!70452 () Unit!70399)

(assert (=> b!4345366 (= lt!1559413 Unit!70452)))

(declare-fun lt!1559416 () Unit!70399)

(assert (=> b!4345366 (= lt!1559416 (forallContained!1670 (toList!2842 lt!1559426) lambda!138057 (h!54302 lt!1559066)))))

(assert (=> b!4345366 (contains!10905 lt!1559426 (_1!27337 (h!54302 lt!1559066)))))

(declare-fun lt!1559429 () Unit!70399)

(declare-fun Unit!70453 () Unit!70399)

(assert (=> b!4345366 (= lt!1559429 Unit!70453)))

(assert (=> b!4345366 (contains!10905 lt!1559425 (_1!27337 (h!54302 lt!1559066)))))

(declare-fun lt!1559415 () Unit!70399)

(declare-fun Unit!70454 () Unit!70399)

(assert (=> b!4345366 (= lt!1559415 Unit!70454)))

(assert (=> b!4345366 (forall!9021 lt!1559066 lambda!138057)))

(declare-fun lt!1559412 () Unit!70399)

(declare-fun Unit!70455 () Unit!70399)

(assert (=> b!4345366 (= lt!1559412 Unit!70455)))

(declare-fun call!302113 () Bool)

(assert (=> b!4345366 call!302113))

(declare-fun lt!1559411 () Unit!70399)

(declare-fun Unit!70456 () Unit!70399)

(assert (=> b!4345366 (= lt!1559411 Unit!70456)))

(declare-fun lt!1559409 () Unit!70399)

(declare-fun Unit!70457 () Unit!70399)

(assert (=> b!4345366 (= lt!1559409 Unit!70457)))

(declare-fun lt!1559423 () Unit!70399)

(assert (=> b!4345366 (= lt!1559423 (addForallContainsKeyThenBeforeAdding!40 (+!530 lt!1559053 lt!1559068) lt!1559425 (_1!27337 (h!54302 lt!1559066)) (_2!27337 (h!54302 lt!1559066))))))

(assert (=> b!4345366 (forall!9021 (toList!2842 (+!530 lt!1559053 lt!1559068)) lambda!138057)))

(declare-fun lt!1559422 () Unit!70399)

(assert (=> b!4345366 (= lt!1559422 lt!1559423)))

(assert (=> b!4345366 (forall!9021 (toList!2842 (+!530 lt!1559053 lt!1559068)) lambda!138057)))

(declare-fun lt!1559410 () Unit!70399)

(declare-fun Unit!70458 () Unit!70399)

(assert (=> b!4345366 (= lt!1559410 Unit!70458)))

(declare-fun res!1784046 () Bool)

(declare-fun call!302112 () Bool)

(assert (=> b!4345366 (= res!1784046 call!302112)))

(declare-fun e!2704076 () Bool)

(assert (=> b!4345366 (=> (not res!1784046) (not e!2704076))))

(assert (=> b!4345366 e!2704076))

(declare-fun lt!1559427 () Unit!70399)

(declare-fun Unit!70459 () Unit!70399)

(assert (=> b!4345366 (= lt!1559427 Unit!70459)))

(declare-fun e!2704077 () Bool)

(assert (=> d!1283092 e!2704077))

(declare-fun res!1784045 () Bool)

(assert (=> d!1283092 (=> (not res!1784045) (not e!2704077))))

(assert (=> d!1283092 (= res!1784045 (forall!9021 lt!1559066 lambda!138058))))

(assert (=> d!1283092 (= lt!1559421 e!2704075)))

(declare-fun c!738857 () Bool)

(assert (=> d!1283092 (= c!738857 ((_ is Nil!48781) lt!1559066))))

(assert (=> d!1283092 (noDuplicateKeys!429 lt!1559066)))

(assert (=> d!1283092 (= (addToMapMapFromBucket!137 lt!1559066 (+!530 lt!1559053 lt!1559068)) lt!1559421)))

(declare-fun bm!302107 () Bool)

(assert (=> bm!302107 (= call!302113 (forall!9021 (ite c!738857 (toList!2842 (+!530 lt!1559053 lt!1559068)) (toList!2842 lt!1559426)) (ite c!738857 lambda!138055 lambda!138057)))))

(declare-fun bm!302108 () Bool)

(assert (=> bm!302108 (= call!302114 (lemmaContainsAllItsOwnKeys!40 (+!530 lt!1559053 lt!1559068)))))

(declare-fun bm!302109 () Bool)

(assert (=> bm!302109 (= call!302112 (forall!9021 (ite c!738857 (toList!2842 (+!530 lt!1559053 lt!1559068)) lt!1559066) (ite c!738857 lambda!138055 lambda!138057)))))

(assert (=> b!4345367 (= e!2704075 (+!530 lt!1559053 lt!1559068))))

(declare-fun lt!1559428 () Unit!70399)

(assert (=> b!4345367 (= lt!1559428 call!302114)))

(assert (=> b!4345367 call!302112))

(declare-fun lt!1559424 () Unit!70399)

(assert (=> b!4345367 (= lt!1559424 lt!1559428)))

(assert (=> b!4345367 call!302113))

(declare-fun lt!1559418 () Unit!70399)

(declare-fun Unit!70460 () Unit!70399)

(assert (=> b!4345367 (= lt!1559418 Unit!70460)))

(declare-fun b!4345368 () Bool)

(assert (=> b!4345368 (= e!2704076 (forall!9021 (toList!2842 (+!530 lt!1559053 lt!1559068)) lambda!138057))))

(declare-fun b!4345369 () Bool)

(declare-fun res!1784044 () Bool)

(assert (=> b!4345369 (=> (not res!1784044) (not e!2704077))))

(assert (=> b!4345369 (= res!1784044 (forall!9021 (toList!2842 (+!530 lt!1559053 lt!1559068)) lambda!138058))))

(declare-fun b!4345370 () Bool)

(assert (=> b!4345370 (= e!2704077 (invariantList!648 (toList!2842 lt!1559421)))))

(assert (= (and d!1283092 c!738857) b!4345367))

(assert (= (and d!1283092 (not c!738857)) b!4345366))

(assert (= (and b!4345366 res!1784046) b!4345368))

(assert (= (or b!4345367 b!4345366) bm!302108))

(assert (= (or b!4345367 b!4345366) bm!302109))

(assert (= (or b!4345367 b!4345366) bm!302107))

(assert (= (and d!1283092 res!1784045) b!4345369))

(assert (= (and b!4345369 res!1784044) b!4345370))

(declare-fun m!4952509 () Bool)

(assert (=> b!4345366 m!4952509))

(declare-fun m!4952511 () Bool)

(assert (=> b!4345366 m!4952511))

(declare-fun m!4952513 () Bool)

(assert (=> b!4345366 m!4952513))

(assert (=> b!4345366 m!4952005))

(declare-fun m!4952515 () Bool)

(assert (=> b!4345366 m!4952515))

(assert (=> b!4345366 m!4952513))

(declare-fun m!4952517 () Bool)

(assert (=> b!4345366 m!4952517))

(declare-fun m!4952519 () Bool)

(assert (=> b!4345366 m!4952519))

(assert (=> b!4345366 m!4952005))

(declare-fun m!4952521 () Bool)

(assert (=> b!4345366 m!4952521))

(assert (=> b!4345366 m!4952515))

(declare-fun m!4952523 () Bool)

(assert (=> b!4345366 m!4952523))

(declare-fun m!4952525 () Bool)

(assert (=> b!4345366 m!4952525))

(declare-fun m!4952527 () Bool)

(assert (=> b!4345366 m!4952527))

(declare-fun m!4952529 () Bool)

(assert (=> b!4345366 m!4952529))

(declare-fun m!4952531 () Bool)

(assert (=> d!1283092 m!4952531))

(assert (=> d!1283092 m!4952389))

(declare-fun m!4952533 () Bool)

(assert (=> b!4345369 m!4952533))

(assert (=> bm!302108 m!4952005))

(declare-fun m!4952535 () Bool)

(assert (=> bm!302108 m!4952535))

(assert (=> b!4345368 m!4952513))

(declare-fun m!4952537 () Bool)

(assert (=> bm!302107 m!4952537))

(declare-fun m!4952539 () Bool)

(assert (=> bm!302109 m!4952539))

(declare-fun m!4952541 () Bool)

(assert (=> b!4345370 m!4952541))

(assert (=> b!4345161 d!1283092))

(declare-fun d!1283096 () Bool)

(declare-fun e!2704080 () Bool)

(assert (=> d!1283096 e!2704080))

(declare-fun res!1784051 () Bool)

(assert (=> d!1283096 (=> (not res!1784051) (not e!2704080))))

(declare-fun lt!1559444 () ListLongMap!1491)

(assert (=> d!1283096 (= res!1784051 (contains!10906 lt!1559444 (_1!27338 (tuple2!48089 hash!377 lt!1559059))))))

(declare-fun lt!1559441 () List!48906)

(assert (=> d!1283096 (= lt!1559444 (ListLongMap!1492 lt!1559441))))

(declare-fun lt!1559443 () Unit!70399)

(declare-fun lt!1559442 () Unit!70399)

(assert (=> d!1283096 (= lt!1559443 lt!1559442)))

(declare-datatypes ((Option!10409 0))(
  ( (None!10408) (Some!10408 (v!43194 List!48905)) )
))
(declare-fun getValueByKey!395 (List!48906 (_ BitVec 64)) Option!10409)

(assert (=> d!1283096 (= (getValueByKey!395 lt!1559441 (_1!27338 (tuple2!48089 hash!377 lt!1559059))) (Some!10408 (_2!27338 (tuple2!48089 hash!377 lt!1559059))))))

(declare-fun lemmaContainsTupThenGetReturnValue!178 (List!48906 (_ BitVec 64) List!48905) Unit!70399)

(assert (=> d!1283096 (= lt!1559442 (lemmaContainsTupThenGetReturnValue!178 lt!1559441 (_1!27338 (tuple2!48089 hash!377 lt!1559059)) (_2!27338 (tuple2!48089 hash!377 lt!1559059))))))

(declare-fun insertStrictlySorted!105 (List!48906 (_ BitVec 64) List!48905) List!48906)

(assert (=> d!1283096 (= lt!1559441 (insertStrictlySorted!105 (toList!2841 lm!1707) (_1!27338 (tuple2!48089 hash!377 lt!1559059)) (_2!27338 (tuple2!48089 hash!377 lt!1559059))))))

(assert (=> d!1283096 (= (+!529 lm!1707 (tuple2!48089 hash!377 lt!1559059)) lt!1559444)))

(declare-fun b!4345375 () Bool)

(declare-fun res!1784052 () Bool)

(assert (=> b!4345375 (=> (not res!1784052) (not e!2704080))))

(assert (=> b!4345375 (= res!1784052 (= (getValueByKey!395 (toList!2841 lt!1559444) (_1!27338 (tuple2!48089 hash!377 lt!1559059))) (Some!10408 (_2!27338 (tuple2!48089 hash!377 lt!1559059)))))))

(declare-fun b!4345376 () Bool)

(assert (=> b!4345376 (= e!2704080 (contains!10904 (toList!2841 lt!1559444) (tuple2!48089 hash!377 lt!1559059)))))

(assert (= (and d!1283096 res!1784051) b!4345375))

(assert (= (and b!4345375 res!1784052) b!4345376))

(declare-fun m!4952553 () Bool)

(assert (=> d!1283096 m!4952553))

(declare-fun m!4952555 () Bool)

(assert (=> d!1283096 m!4952555))

(declare-fun m!4952557 () Bool)

(assert (=> d!1283096 m!4952557))

(declare-fun m!4952559 () Bool)

(assert (=> d!1283096 m!4952559))

(declare-fun m!4952561 () Bool)

(assert (=> b!4345375 m!4952561))

(declare-fun m!4952563 () Bool)

(assert (=> b!4345376 m!4952563))

(assert (=> b!4345161 d!1283096))

(declare-fun d!1283100 () Bool)

(assert (=> d!1283100 (= (tail!6927 newBucket!200) (t!355825 newBucket!200))))

(assert (=> b!4345161 d!1283100))

(declare-fun d!1283104 () Bool)

(declare-fun content!7653 (List!48905) (InoxSet tuple2!48086))

(assert (=> d!1283104 (= (eq!219 lt!1559070 lt!1559052) (= (content!7653 (toList!2842 lt!1559070)) (content!7653 (toList!2842 lt!1559052))))))

(declare-fun bs!627450 () Bool)

(assert (= bs!627450 d!1283104))

(declare-fun m!4952577 () Bool)

(assert (=> bs!627450 m!4952577))

(declare-fun m!4952579 () Bool)

(assert (=> bs!627450 m!4952579))

(assert (=> b!4345161 d!1283104))

(declare-fun bs!627451 () Bool)

(declare-fun b!4345382 () Bool)

(assert (= bs!627451 (and b!4345382 b!4345367)))

(declare-fun lambda!138063 () Int)

(assert (=> bs!627451 (= (= lt!1559053 (+!530 lt!1559053 lt!1559068)) (= lambda!138063 lambda!138055))))

(declare-fun bs!627452 () Bool)

(assert (= bs!627452 (and b!4345382 b!4345336)))

(assert (=> bs!627452 (= lambda!138063 lambda!138041)))

(assert (=> bs!627452 (= (= lt!1559053 lt!1559350) (= lambda!138063 lambda!138042))))

(declare-fun bs!627453 () Bool)

(assert (= bs!627453 (and b!4345382 b!4345337)))

(assert (=> bs!627453 (= lambda!138063 lambda!138040)))

(declare-fun bs!627454 () Bool)

(assert (= bs!627454 (and b!4345382 b!4345290)))

(assert (=> bs!627454 (= (= lt!1559053 lt!1559223) (= lambda!138063 lambda!137999))))

(declare-fun bs!627455 () Bool)

(assert (= bs!627455 (and b!4345382 b!4345366)))

(assert (=> bs!627455 (= (= lt!1559053 (+!530 lt!1559053 lt!1559068)) (= lambda!138063 lambda!138056))))

(declare-fun bs!627456 () Bool)

(assert (= bs!627456 (and b!4345382 d!1283074)))

(assert (=> bs!627456 (= (= lt!1559053 lt!1559346) (= lambda!138063 lambda!138044))))

(assert (=> bs!627455 (= (= lt!1559053 lt!1559425) (= lambda!138063 lambda!138057))))

(declare-fun bs!627457 () Bool)

(assert (= bs!627457 (and b!4345382 b!4345291)))

(assert (=> bs!627457 (= lambda!138063 lambda!137997)))

(assert (=> bs!627454 (= lambda!138063 lambda!137998)))

(declare-fun bs!627458 () Bool)

(assert (= bs!627458 (and b!4345382 d!1283012)))

(assert (=> bs!627458 (= (= lt!1559053 lt!1559219) (= lambda!138063 lambda!138000))))

(declare-fun bs!627459 () Bool)

(assert (= bs!627459 (and b!4345382 d!1283092)))

(assert (=> bs!627459 (= (= lt!1559053 lt!1559421) (= lambda!138063 lambda!138058))))

(assert (=> b!4345382 true))

(declare-fun bs!627460 () Bool)

(declare-fun b!4345381 () Bool)

(assert (= bs!627460 (and b!4345381 b!4345367)))

(declare-fun lambda!138064 () Int)

(assert (=> bs!627460 (= (= lt!1559053 (+!530 lt!1559053 lt!1559068)) (= lambda!138064 lambda!138055))))

(declare-fun bs!627461 () Bool)

(assert (= bs!627461 (and b!4345381 b!4345336)))

(assert (=> bs!627461 (= lambda!138064 lambda!138041)))

(assert (=> bs!627461 (= (= lt!1559053 lt!1559350) (= lambda!138064 lambda!138042))))

(declare-fun bs!627462 () Bool)

(assert (= bs!627462 (and b!4345381 b!4345337)))

(assert (=> bs!627462 (= lambda!138064 lambda!138040)))

(declare-fun bs!627463 () Bool)

(assert (= bs!627463 (and b!4345381 b!4345290)))

(assert (=> bs!627463 (= (= lt!1559053 lt!1559223) (= lambda!138064 lambda!137999))))

(declare-fun bs!627464 () Bool)

(assert (= bs!627464 (and b!4345381 b!4345382)))

(assert (=> bs!627464 (= lambda!138064 lambda!138063)))

(declare-fun bs!627466 () Bool)

(assert (= bs!627466 (and b!4345381 b!4345366)))

(assert (=> bs!627466 (= (= lt!1559053 (+!530 lt!1559053 lt!1559068)) (= lambda!138064 lambda!138056))))

(declare-fun bs!627467 () Bool)

(assert (= bs!627467 (and b!4345381 d!1283074)))

(assert (=> bs!627467 (= (= lt!1559053 lt!1559346) (= lambda!138064 lambda!138044))))

(assert (=> bs!627466 (= (= lt!1559053 lt!1559425) (= lambda!138064 lambda!138057))))

(declare-fun bs!627469 () Bool)

(assert (= bs!627469 (and b!4345381 b!4345291)))

(assert (=> bs!627469 (= lambda!138064 lambda!137997)))

(assert (=> bs!627463 (= lambda!138064 lambda!137998)))

(declare-fun bs!627470 () Bool)

(assert (= bs!627470 (and b!4345381 d!1283012)))

(assert (=> bs!627470 (= (= lt!1559053 lt!1559219) (= lambda!138064 lambda!138000))))

(declare-fun bs!627471 () Bool)

(assert (= bs!627471 (and b!4345381 d!1283092)))

(assert (=> bs!627471 (= (= lt!1559053 lt!1559421) (= lambda!138064 lambda!138058))))

(assert (=> b!4345381 true))

(declare-fun lt!1559466 () ListMap!2085)

(declare-fun lambda!138065 () Int)

(assert (=> bs!627460 (= (= lt!1559466 (+!530 lt!1559053 lt!1559068)) (= lambda!138065 lambda!138055))))

(assert (=> bs!627461 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!138041))))

(assert (=> bs!627461 (= (= lt!1559466 lt!1559350) (= lambda!138065 lambda!138042))))

(assert (=> bs!627462 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!138040))))

(assert (=> bs!627463 (= (= lt!1559466 lt!1559223) (= lambda!138065 lambda!137999))))

(assert (=> bs!627464 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!138063))))

(assert (=> bs!627466 (= (= lt!1559466 (+!530 lt!1559053 lt!1559068)) (= lambda!138065 lambda!138056))))

(assert (=> bs!627467 (= (= lt!1559466 lt!1559346) (= lambda!138065 lambda!138044))))

(assert (=> bs!627466 (= (= lt!1559466 lt!1559425) (= lambda!138065 lambda!138057))))

(assert (=> b!4345381 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!138064))))

(assert (=> bs!627469 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!137997))))

(assert (=> bs!627463 (= (= lt!1559466 lt!1559053) (= lambda!138065 lambda!137998))))

(assert (=> bs!627470 (= (= lt!1559466 lt!1559219) (= lambda!138065 lambda!138000))))

(assert (=> bs!627471 (= (= lt!1559466 lt!1559421) (= lambda!138065 lambda!138058))))

(assert (=> b!4345381 true))

(declare-fun bs!627472 () Bool)

(declare-fun d!1283106 () Bool)

(assert (= bs!627472 (and d!1283106 b!4345367)))

(declare-fun lambda!138066 () Int)

(declare-fun lt!1559462 () ListMap!2085)

(assert (=> bs!627472 (= (= lt!1559462 (+!530 lt!1559053 lt!1559068)) (= lambda!138066 lambda!138055))))

(declare-fun bs!627473 () Bool)

(assert (= bs!627473 (and d!1283106 b!4345336)))

(assert (=> bs!627473 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!138041))))

(assert (=> bs!627473 (= (= lt!1559462 lt!1559350) (= lambda!138066 lambda!138042))))

(declare-fun bs!627475 () Bool)

(assert (= bs!627475 (and d!1283106 b!4345337)))

(assert (=> bs!627475 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!138040))))

(declare-fun bs!627477 () Bool)

(assert (= bs!627477 (and d!1283106 b!4345382)))

(assert (=> bs!627477 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!138063))))

(declare-fun bs!627478 () Bool)

(assert (= bs!627478 (and d!1283106 b!4345366)))

(assert (=> bs!627478 (= (= lt!1559462 (+!530 lt!1559053 lt!1559068)) (= lambda!138066 lambda!138056))))

(declare-fun bs!627480 () Bool)

(assert (= bs!627480 (and d!1283106 d!1283074)))

(assert (=> bs!627480 (= (= lt!1559462 lt!1559346) (= lambda!138066 lambda!138044))))

(assert (=> bs!627478 (= (= lt!1559462 lt!1559425) (= lambda!138066 lambda!138057))))

(declare-fun bs!627482 () Bool)

(assert (= bs!627482 (and d!1283106 b!4345381)))

(assert (=> bs!627482 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!138064))))

(declare-fun bs!627483 () Bool)

(assert (= bs!627483 (and d!1283106 b!4345291)))

(assert (=> bs!627483 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!137997))))

(declare-fun bs!627485 () Bool)

(assert (= bs!627485 (and d!1283106 b!4345290)))

(assert (=> bs!627485 (= (= lt!1559462 lt!1559053) (= lambda!138066 lambda!137998))))

(assert (=> bs!627485 (= (= lt!1559462 lt!1559223) (= lambda!138066 lambda!137999))))

(assert (=> bs!627482 (= (= lt!1559462 lt!1559466) (= lambda!138066 lambda!138065))))

(declare-fun bs!627486 () Bool)

(assert (= bs!627486 (and d!1283106 d!1283012)))

(assert (=> bs!627486 (= (= lt!1559462 lt!1559219) (= lambda!138066 lambda!138000))))

(declare-fun bs!627487 () Bool)

(assert (= bs!627487 (and d!1283106 d!1283092)))

(assert (=> bs!627487 (= (= lt!1559462 lt!1559421) (= lambda!138066 lambda!138058))))

(assert (=> d!1283106 true))

(declare-fun e!2704083 () ListMap!2085)

(assert (=> b!4345381 (= e!2704083 lt!1559466)))

(declare-fun lt!1559467 () ListMap!2085)

(assert (=> b!4345381 (= lt!1559467 (+!530 lt!1559053 (h!54302 lt!1559049)))))

(assert (=> b!4345381 (= lt!1559466 (addToMapMapFromBucket!137 (t!355825 lt!1559049) (+!530 lt!1559053 (h!54302 lt!1559049))))))

(declare-fun lt!1559461 () Unit!70399)

(declare-fun call!302117 () Unit!70399)

(assert (=> b!4345381 (= lt!1559461 call!302117)))

(assert (=> b!4345381 (forall!9021 (toList!2842 lt!1559053) lambda!138064)))

(declare-fun lt!1559458 () Unit!70399)

(assert (=> b!4345381 (= lt!1559458 lt!1559461)))

(assert (=> b!4345381 (forall!9021 (toList!2842 lt!1559467) lambda!138065)))

(declare-fun lt!1559460 () Unit!70399)

(declare-fun Unit!70472 () Unit!70399)

(assert (=> b!4345381 (= lt!1559460 Unit!70472)))

(assert (=> b!4345381 (forall!9021 (t!355825 lt!1559049) lambda!138065)))

(declare-fun lt!1559455 () Unit!70399)

(declare-fun Unit!70473 () Unit!70399)

(assert (=> b!4345381 (= lt!1559455 Unit!70473)))

(declare-fun lt!1559454 () Unit!70399)

(declare-fun Unit!70474 () Unit!70399)

(assert (=> b!4345381 (= lt!1559454 Unit!70474)))

(declare-fun lt!1559457 () Unit!70399)

(assert (=> b!4345381 (= lt!1559457 (forallContained!1670 (toList!2842 lt!1559467) lambda!138065 (h!54302 lt!1559049)))))

(assert (=> b!4345381 (contains!10905 lt!1559467 (_1!27337 (h!54302 lt!1559049)))))

(declare-fun lt!1559470 () Unit!70399)

(declare-fun Unit!70475 () Unit!70399)

(assert (=> b!4345381 (= lt!1559470 Unit!70475)))

(assert (=> b!4345381 (contains!10905 lt!1559466 (_1!27337 (h!54302 lt!1559049)))))

(declare-fun lt!1559456 () Unit!70399)

(declare-fun Unit!70476 () Unit!70399)

(assert (=> b!4345381 (= lt!1559456 Unit!70476)))

(assert (=> b!4345381 (forall!9021 lt!1559049 lambda!138065)))

(declare-fun lt!1559453 () Unit!70399)

(declare-fun Unit!70477 () Unit!70399)

(assert (=> b!4345381 (= lt!1559453 Unit!70477)))

(declare-fun call!302116 () Bool)

(assert (=> b!4345381 call!302116))

(declare-fun lt!1559452 () Unit!70399)

(declare-fun Unit!70478 () Unit!70399)

(assert (=> b!4345381 (= lt!1559452 Unit!70478)))

(declare-fun lt!1559450 () Unit!70399)

(declare-fun Unit!70479 () Unit!70399)

(assert (=> b!4345381 (= lt!1559450 Unit!70479)))

(declare-fun lt!1559464 () Unit!70399)

(assert (=> b!4345381 (= lt!1559464 (addForallContainsKeyThenBeforeAdding!40 lt!1559053 lt!1559466 (_1!27337 (h!54302 lt!1559049)) (_2!27337 (h!54302 lt!1559049))))))

(assert (=> b!4345381 (forall!9021 (toList!2842 lt!1559053) lambda!138065)))

(declare-fun lt!1559463 () Unit!70399)

(assert (=> b!4345381 (= lt!1559463 lt!1559464)))

(assert (=> b!4345381 (forall!9021 (toList!2842 lt!1559053) lambda!138065)))

(declare-fun lt!1559451 () Unit!70399)

(declare-fun Unit!70480 () Unit!70399)

(assert (=> b!4345381 (= lt!1559451 Unit!70480)))

(declare-fun res!1784057 () Bool)

(declare-fun call!302115 () Bool)

(assert (=> b!4345381 (= res!1784057 call!302115)))

(declare-fun e!2704084 () Bool)

(assert (=> b!4345381 (=> (not res!1784057) (not e!2704084))))

(assert (=> b!4345381 e!2704084))

(declare-fun lt!1559468 () Unit!70399)

(declare-fun Unit!70481 () Unit!70399)

(assert (=> b!4345381 (= lt!1559468 Unit!70481)))

(declare-fun e!2704085 () Bool)

(assert (=> d!1283106 e!2704085))

(declare-fun res!1784056 () Bool)

(assert (=> d!1283106 (=> (not res!1784056) (not e!2704085))))

(assert (=> d!1283106 (= res!1784056 (forall!9021 lt!1559049 lambda!138066))))

(assert (=> d!1283106 (= lt!1559462 e!2704083)))

(declare-fun c!738859 () Bool)

(assert (=> d!1283106 (= c!738859 ((_ is Nil!48781) lt!1559049))))

(assert (=> d!1283106 (noDuplicateKeys!429 lt!1559049)))

(assert (=> d!1283106 (= (addToMapMapFromBucket!137 lt!1559049 lt!1559053) lt!1559462)))

(declare-fun bm!302110 () Bool)

(assert (=> bm!302110 (= call!302116 (forall!9021 (ite c!738859 (toList!2842 lt!1559053) (toList!2842 lt!1559467)) (ite c!738859 lambda!138063 lambda!138065)))))

(declare-fun bm!302111 () Bool)

(assert (=> bm!302111 (= call!302117 (lemmaContainsAllItsOwnKeys!40 lt!1559053))))

(declare-fun bm!302112 () Bool)

(assert (=> bm!302112 (= call!302115 (forall!9021 (ite c!738859 (toList!2842 lt!1559053) lt!1559049) (ite c!738859 lambda!138063 lambda!138065)))))

(assert (=> b!4345382 (= e!2704083 lt!1559053)))

(declare-fun lt!1559469 () Unit!70399)

(assert (=> b!4345382 (= lt!1559469 call!302117)))

(assert (=> b!4345382 call!302115))

(declare-fun lt!1559465 () Unit!70399)

(assert (=> b!4345382 (= lt!1559465 lt!1559469)))

(assert (=> b!4345382 call!302116))

(declare-fun lt!1559459 () Unit!70399)

(declare-fun Unit!70482 () Unit!70399)

(assert (=> b!4345382 (= lt!1559459 Unit!70482)))

(declare-fun b!4345383 () Bool)

(assert (=> b!4345383 (= e!2704084 (forall!9021 (toList!2842 lt!1559053) lambda!138065))))

(declare-fun b!4345384 () Bool)

(declare-fun res!1784055 () Bool)

(assert (=> b!4345384 (=> (not res!1784055) (not e!2704085))))

(assert (=> b!4345384 (= res!1784055 (forall!9021 (toList!2842 lt!1559053) lambda!138066))))

(declare-fun b!4345385 () Bool)

(assert (=> b!4345385 (= e!2704085 (invariantList!648 (toList!2842 lt!1559462)))))

(assert (= (and d!1283106 c!738859) b!4345382))

(assert (= (and d!1283106 (not c!738859)) b!4345381))

(assert (= (and b!4345381 res!1784057) b!4345383))

(assert (= (or b!4345382 b!4345381) bm!302111))

(assert (= (or b!4345382 b!4345381) bm!302112))

(assert (= (or b!4345382 b!4345381) bm!302110))

(assert (= (and d!1283106 res!1784056) b!4345384))

(assert (= (and b!4345384 res!1784055) b!4345385))

(declare-fun m!4952625 () Bool)

(assert (=> b!4345381 m!4952625))

(declare-fun m!4952627 () Bool)

(assert (=> b!4345381 m!4952627))

(declare-fun m!4952629 () Bool)

(assert (=> b!4345381 m!4952629))

(declare-fun m!4952631 () Bool)

(assert (=> b!4345381 m!4952631))

(assert (=> b!4345381 m!4952629))

(declare-fun m!4952633 () Bool)

(assert (=> b!4345381 m!4952633))

(declare-fun m!4952635 () Bool)

(assert (=> b!4345381 m!4952635))

(declare-fun m!4952637 () Bool)

(assert (=> b!4345381 m!4952637))

(assert (=> b!4345381 m!4952631))

(declare-fun m!4952639 () Bool)

(assert (=> b!4345381 m!4952639))

(declare-fun m!4952641 () Bool)

(assert (=> b!4345381 m!4952641))

(declare-fun m!4952643 () Bool)

(assert (=> b!4345381 m!4952643))

(declare-fun m!4952645 () Bool)

(assert (=> b!4345381 m!4952645))

(declare-fun m!4952647 () Bool)

(assert (=> d!1283106 m!4952647))

(declare-fun m!4952649 () Bool)

(assert (=> d!1283106 m!4952649))

(declare-fun m!4952651 () Bool)

(assert (=> b!4345384 m!4952651))

(assert (=> bm!302111 m!4952231))

(assert (=> b!4345383 m!4952629))

(declare-fun m!4952653 () Bool)

(assert (=> bm!302110 m!4952653))

(declare-fun m!4952655 () Bool)

(assert (=> bm!302112 m!4952655))

(declare-fun m!4952657 () Bool)

(assert (=> b!4345385 m!4952657))

(assert (=> b!4345161 d!1283106))

(declare-fun d!1283124 () Bool)

(declare-fun e!2704114 () Bool)

(assert (=> d!1283124 e!2704114))

(declare-fun res!1784067 () Bool)

(assert (=> d!1283124 (=> res!1784067 e!2704114)))

(declare-fun e!2704113 () Bool)

(assert (=> d!1283124 (= res!1784067 e!2704113)))

(declare-fun res!1784069 () Bool)

(assert (=> d!1283124 (=> (not res!1784069) (not e!2704113))))

(declare-fun lt!1559498 () Bool)

(assert (=> d!1283124 (= res!1784069 (not lt!1559498))))

(declare-fun lt!1559500 () Bool)

(assert (=> d!1283124 (= lt!1559498 lt!1559500)))

(declare-fun lt!1559499 () Unit!70399)

(declare-fun e!2704111 () Unit!70399)

(assert (=> d!1283124 (= lt!1559499 e!2704111)))

(declare-fun c!738869 () Bool)

(assert (=> d!1283124 (= c!738869 lt!1559500)))

(declare-fun containsKey!595 (List!48905 K!10140) Bool)

(assert (=> d!1283124 (= lt!1559500 (containsKey!595 (toList!2842 lt!1559051) key!3918))))

(assert (=> d!1283124 (= (contains!10905 lt!1559051 key!3918) lt!1559498)))

(declare-fun b!4345423 () Bool)

(assert (=> b!4345423 false))

(declare-fun lt!1559501 () Unit!70399)

(declare-fun lt!1559497 () Unit!70399)

(assert (=> b!4345423 (= lt!1559501 lt!1559497)))

(assert (=> b!4345423 (containsKey!595 (toList!2842 lt!1559051) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!94 (List!48905 K!10140) Unit!70399)

(assert (=> b!4345423 (= lt!1559497 (lemmaInGetKeysListThenContainsKey!94 (toList!2842 lt!1559051) key!3918))))

(declare-fun e!2704115 () Unit!70399)

(declare-fun Unit!70484 () Unit!70399)

(assert (=> b!4345423 (= e!2704115 Unit!70484)))

(declare-fun b!4345424 () Bool)

(declare-fun e!2704112 () Bool)

(declare-fun contains!10910 (List!48908 K!10140) Bool)

(assert (=> b!4345424 (= e!2704112 (contains!10910 (keys!16438 lt!1559051) key!3918))))

(declare-fun b!4345425 () Bool)

(declare-fun e!2704110 () List!48908)

(assert (=> b!4345425 (= e!2704110 (keys!16438 lt!1559051))))

(declare-fun b!4345426 () Bool)

(assert (=> b!4345426 (= e!2704113 (not (contains!10910 (keys!16438 lt!1559051) key!3918)))))

(declare-fun b!4345427 () Bool)

(assert (=> b!4345427 (= e!2704114 e!2704112)))

(declare-fun res!1784068 () Bool)

(assert (=> b!4345427 (=> (not res!1784068) (not e!2704112))))

(declare-fun isDefined!7704 (Option!10408) Bool)

(assert (=> b!4345427 (= res!1784068 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559051) key!3918)))))

(declare-fun bm!302116 () Bool)

(declare-fun call!302121 () Bool)

(assert (=> bm!302116 (= call!302121 (contains!10910 e!2704110 key!3918))))

(declare-fun c!738871 () Bool)

(assert (=> bm!302116 (= c!738871 c!738869)))

(declare-fun b!4345428 () Bool)

(declare-fun getKeysList!96 (List!48905) List!48908)

(assert (=> b!4345428 (= e!2704110 (getKeysList!96 (toList!2842 lt!1559051)))))

(declare-fun b!4345429 () Bool)

(assert (=> b!4345429 (= e!2704111 e!2704115)))

(declare-fun c!738870 () Bool)

(assert (=> b!4345429 (= c!738870 call!302121)))

(declare-fun b!4345430 () Bool)

(declare-fun lt!1559496 () Unit!70399)

(assert (=> b!4345430 (= e!2704111 lt!1559496)))

(declare-fun lt!1559495 () Unit!70399)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!307 (List!48905 K!10140) Unit!70399)

(assert (=> b!4345430 (= lt!1559495 (lemmaContainsKeyImpliesGetValueByKeyDefined!307 (toList!2842 lt!1559051) key!3918))))

(assert (=> b!4345430 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559051) key!3918))))

(declare-fun lt!1559502 () Unit!70399)

(assert (=> b!4345430 (= lt!1559502 lt!1559495)))

(declare-fun lemmaInListThenGetKeysListContains!93 (List!48905 K!10140) Unit!70399)

(assert (=> b!4345430 (= lt!1559496 (lemmaInListThenGetKeysListContains!93 (toList!2842 lt!1559051) key!3918))))

(assert (=> b!4345430 call!302121))

(declare-fun b!4345431 () Bool)

(declare-fun Unit!70489 () Unit!70399)

(assert (=> b!4345431 (= e!2704115 Unit!70489)))

(assert (= (and d!1283124 c!738869) b!4345430))

(assert (= (and d!1283124 (not c!738869)) b!4345429))

(assert (= (and b!4345429 c!738870) b!4345423))

(assert (= (and b!4345429 (not c!738870)) b!4345431))

(assert (= (or b!4345430 b!4345429) bm!302116))

(assert (= (and bm!302116 c!738871) b!4345428))

(assert (= (and bm!302116 (not c!738871)) b!4345425))

(assert (= (and d!1283124 res!1784069) b!4345426))

(assert (= (and d!1283124 (not res!1784067)) b!4345427))

(assert (= (and b!4345427 res!1784068) b!4345424))

(declare-fun m!4952659 () Bool)

(assert (=> b!4345430 m!4952659))

(declare-fun m!4952661 () Bool)

(assert (=> b!4345430 m!4952661))

(assert (=> b!4345430 m!4952661))

(declare-fun m!4952663 () Bool)

(assert (=> b!4345430 m!4952663))

(declare-fun m!4952665 () Bool)

(assert (=> b!4345430 m!4952665))

(declare-fun m!4952667 () Bool)

(assert (=> b!4345424 m!4952667))

(assert (=> b!4345424 m!4952667))

(declare-fun m!4952669 () Bool)

(assert (=> b!4345424 m!4952669))

(assert (=> b!4345427 m!4952661))

(assert (=> b!4345427 m!4952661))

(assert (=> b!4345427 m!4952663))

(declare-fun m!4952671 () Bool)

(assert (=> b!4345428 m!4952671))

(declare-fun m!4952673 () Bool)

(assert (=> bm!302116 m!4952673))

(declare-fun m!4952675 () Bool)

(assert (=> d!1283124 m!4952675))

(assert (=> b!4345426 m!4952667))

(assert (=> b!4345426 m!4952667))

(assert (=> b!4345426 m!4952669))

(assert (=> b!4345425 m!4952667))

(assert (=> b!4345423 m!4952675))

(declare-fun m!4952677 () Bool)

(assert (=> b!4345423 m!4952677))

(assert (=> b!4345161 d!1283124))

(declare-fun d!1283126 () Bool)

(declare-fun e!2704116 () Bool)

(assert (=> d!1283126 e!2704116))

(declare-fun res!1784070 () Bool)

(assert (=> d!1283126 (=> (not res!1784070) (not e!2704116))))

(declare-fun lt!1559503 () ListMap!2085)

(assert (=> d!1283126 (= res!1784070 (contains!10905 lt!1559503 (_1!27337 lt!1559068)))))

(declare-fun lt!1559506 () List!48905)

(assert (=> d!1283126 (= lt!1559503 (ListMap!2086 lt!1559506))))

(declare-fun lt!1559505 () Unit!70399)

(declare-fun lt!1559504 () Unit!70399)

(assert (=> d!1283126 (= lt!1559505 lt!1559504)))

(assert (=> d!1283126 (= (getValueByKey!394 lt!1559506 (_1!27337 lt!1559068)) (Some!10407 (_2!27337 lt!1559068)))))

(assert (=> d!1283126 (= lt!1559504 (lemmaContainsTupThenGetReturnValue!177 lt!1559506 (_1!27337 lt!1559068) (_2!27337 lt!1559068)))))

(assert (=> d!1283126 (= lt!1559506 (insertNoDuplicatedKeys!81 (toList!2842 lt!1559053) (_1!27337 lt!1559068) (_2!27337 lt!1559068)))))

(assert (=> d!1283126 (= (+!530 lt!1559053 lt!1559068) lt!1559503)))

(declare-fun b!4345432 () Bool)

(declare-fun res!1784071 () Bool)

(assert (=> b!4345432 (=> (not res!1784071) (not e!2704116))))

(assert (=> b!4345432 (= res!1784071 (= (getValueByKey!394 (toList!2842 lt!1559503) (_1!27337 lt!1559068)) (Some!10407 (_2!27337 lt!1559068))))))

(declare-fun b!4345433 () Bool)

(assert (=> b!4345433 (= e!2704116 (contains!10909 (toList!2842 lt!1559503) lt!1559068))))

(assert (= (and d!1283126 res!1784070) b!4345432))

(assert (= (and b!4345432 res!1784071) b!4345433))

(declare-fun m!4952679 () Bool)

(assert (=> d!1283126 m!4952679))

(declare-fun m!4952681 () Bool)

(assert (=> d!1283126 m!4952681))

(declare-fun m!4952683 () Bool)

(assert (=> d!1283126 m!4952683))

(declare-fun m!4952685 () Bool)

(assert (=> d!1283126 m!4952685))

(declare-fun m!4952687 () Bool)

(assert (=> b!4345432 m!4952687))

(declare-fun m!4952689 () Bool)

(assert (=> b!4345433 m!4952689))

(assert (=> b!4345161 d!1283126))

(declare-fun bs!627488 () Bool)

(declare-fun d!1283128 () Bool)

(assert (= bs!627488 (and d!1283128 start!419368)))

(declare-fun lambda!138069 () Int)

(assert (=> bs!627488 (= lambda!138069 lambda!137959)))

(declare-fun bs!627489 () Bool)

(assert (= bs!627489 (and d!1283128 d!1283062)))

(assert (=> bs!627489 (= lambda!138069 lambda!138029)))

(declare-fun bs!627490 () Bool)

(assert (= bs!627490 (and d!1283128 d!1283082)))

(assert (=> bs!627490 (= lambda!138069 lambda!138049)))

(assert (=> d!1283128 (eq!219 (extractMap!488 (toList!2841 (+!529 lm!1707 (tuple2!48089 hash!377 lt!1559059)))) (-!230 (extractMap!488 (toList!2841 lm!1707)) key!3918))))

(declare-fun lt!1559509 () Unit!70399)

(declare-fun choose!26654 (ListLongMap!1491 (_ BitVec 64) List!48905 K!10140 Hashable!4821) Unit!70399)

(assert (=> d!1283128 (= lt!1559509 (choose!26654 lm!1707 hash!377 lt!1559059 key!3918 hashF!1247))))

(assert (=> d!1283128 (forall!9019 (toList!2841 lm!1707) lambda!138069)))

(assert (=> d!1283128 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!45 lm!1707 hash!377 lt!1559059 key!3918 hashF!1247) lt!1559509)))

(declare-fun bs!627491 () Bool)

(assert (= bs!627491 d!1283128))

(assert (=> bs!627491 m!4952037))

(declare-fun m!4952691 () Bool)

(assert (=> bs!627491 m!4952691))

(declare-fun m!4952693 () Bool)

(assert (=> bs!627491 m!4952693))

(assert (=> bs!627491 m!4952003))

(declare-fun m!4952695 () Bool)

(assert (=> bs!627491 m!4952695))

(assert (=> bs!627491 m!4952695))

(assert (=> bs!627491 m!4952691))

(declare-fun m!4952697 () Bool)

(assert (=> bs!627491 m!4952697))

(declare-fun m!4952699 () Bool)

(assert (=> bs!627491 m!4952699))

(assert (=> bs!627491 m!4952037))

(assert (=> b!4345161 d!1283128))

(declare-fun bs!627492 () Bool)

(declare-fun d!1283130 () Bool)

(assert (= bs!627492 (and d!1283130 start!419368)))

(declare-fun lambda!138070 () Int)

(assert (=> bs!627492 (= lambda!138070 lambda!137959)))

(declare-fun bs!627493 () Bool)

(assert (= bs!627493 (and d!1283130 d!1283062)))

(assert (=> bs!627493 (= lambda!138070 lambda!138029)))

(declare-fun bs!627494 () Bool)

(assert (= bs!627494 (and d!1283130 d!1283082)))

(assert (=> bs!627494 (= lambda!138070 lambda!138049)))

(declare-fun bs!627495 () Bool)

(assert (= bs!627495 (and d!1283130 d!1283128)))

(assert (=> bs!627495 (= lambda!138070 lambda!138069)))

(declare-fun lt!1559510 () ListMap!2085)

(assert (=> d!1283130 (invariantList!648 (toList!2842 lt!1559510))))

(declare-fun e!2704117 () ListMap!2085)

(assert (=> d!1283130 (= lt!1559510 e!2704117)))

(declare-fun c!738872 () Bool)

(assert (=> d!1283130 (= c!738872 ((_ is Cons!48782) (t!355826 (toList!2841 lm!1707))))))

(assert (=> d!1283130 (forall!9019 (t!355826 (toList!2841 lm!1707)) lambda!138070)))

(assert (=> d!1283130 (= (extractMap!488 (t!355826 (toList!2841 lm!1707))) lt!1559510)))

(declare-fun b!4345434 () Bool)

(assert (=> b!4345434 (= e!2704117 (addToMapMapFromBucket!137 (_2!27338 (h!54303 (t!355826 (toList!2841 lm!1707)))) (extractMap!488 (t!355826 (t!355826 (toList!2841 lm!1707))))))))

(declare-fun b!4345435 () Bool)

(assert (=> b!4345435 (= e!2704117 (ListMap!2086 Nil!48781))))

(assert (= (and d!1283130 c!738872) b!4345434))

(assert (= (and d!1283130 (not c!738872)) b!4345435))

(declare-fun m!4952701 () Bool)

(assert (=> d!1283130 m!4952701))

(declare-fun m!4952703 () Bool)

(assert (=> d!1283130 m!4952703))

(declare-fun m!4952705 () Bool)

(assert (=> b!4345434 m!4952705))

(assert (=> b!4345434 m!4952705))

(declare-fun m!4952707 () Bool)

(assert (=> b!4345434 m!4952707))

(assert (=> b!4345161 d!1283130))

(declare-fun d!1283132 () Bool)

(declare-fun e!2704122 () Bool)

(assert (=> d!1283132 e!2704122))

(declare-fun res!1784072 () Bool)

(assert (=> d!1283132 (=> res!1784072 e!2704122)))

(declare-fun e!2704121 () Bool)

(assert (=> d!1283132 (= res!1784072 e!2704121)))

(declare-fun res!1784074 () Bool)

(assert (=> d!1283132 (=> (not res!1784074) (not e!2704121))))

(declare-fun lt!1559514 () Bool)

(assert (=> d!1283132 (= res!1784074 (not lt!1559514))))

(declare-fun lt!1559516 () Bool)

(assert (=> d!1283132 (= lt!1559514 lt!1559516)))

(declare-fun lt!1559515 () Unit!70399)

(declare-fun e!2704119 () Unit!70399)

(assert (=> d!1283132 (= lt!1559515 e!2704119)))

(declare-fun c!738873 () Bool)

(assert (=> d!1283132 (= c!738873 lt!1559516)))

(assert (=> d!1283132 (= lt!1559516 (containsKey!595 (toList!2842 lt!1559056) key!3918))))

(assert (=> d!1283132 (= (contains!10905 lt!1559056 key!3918) lt!1559514)))

(declare-fun b!4345436 () Bool)

(assert (=> b!4345436 false))

(declare-fun lt!1559517 () Unit!70399)

(declare-fun lt!1559513 () Unit!70399)

(assert (=> b!4345436 (= lt!1559517 lt!1559513)))

(assert (=> b!4345436 (containsKey!595 (toList!2842 lt!1559056) key!3918)))

(assert (=> b!4345436 (= lt!1559513 (lemmaInGetKeysListThenContainsKey!94 (toList!2842 lt!1559056) key!3918))))

(declare-fun e!2704123 () Unit!70399)

(declare-fun Unit!70496 () Unit!70399)

(assert (=> b!4345436 (= e!2704123 Unit!70496)))

(declare-fun b!4345437 () Bool)

(declare-fun e!2704120 () Bool)

(assert (=> b!4345437 (= e!2704120 (contains!10910 (keys!16438 lt!1559056) key!3918))))

(declare-fun b!4345438 () Bool)

(declare-fun e!2704118 () List!48908)

(assert (=> b!4345438 (= e!2704118 (keys!16438 lt!1559056))))

(declare-fun b!4345439 () Bool)

(assert (=> b!4345439 (= e!2704121 (not (contains!10910 (keys!16438 lt!1559056) key!3918)))))

(declare-fun b!4345440 () Bool)

(assert (=> b!4345440 (= e!2704122 e!2704120)))

(declare-fun res!1784073 () Bool)

(assert (=> b!4345440 (=> (not res!1784073) (not e!2704120))))

(assert (=> b!4345440 (= res!1784073 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559056) key!3918)))))

(declare-fun bm!302117 () Bool)

(declare-fun call!302122 () Bool)

(assert (=> bm!302117 (= call!302122 (contains!10910 e!2704118 key!3918))))

(declare-fun c!738875 () Bool)

(assert (=> bm!302117 (= c!738875 c!738873)))

(declare-fun b!4345441 () Bool)

(assert (=> b!4345441 (= e!2704118 (getKeysList!96 (toList!2842 lt!1559056)))))

(declare-fun b!4345442 () Bool)

(assert (=> b!4345442 (= e!2704119 e!2704123)))

(declare-fun c!738874 () Bool)

(assert (=> b!4345442 (= c!738874 call!302122)))

(declare-fun b!4345443 () Bool)

(declare-fun lt!1559512 () Unit!70399)

(assert (=> b!4345443 (= e!2704119 lt!1559512)))

(declare-fun lt!1559511 () Unit!70399)

(assert (=> b!4345443 (= lt!1559511 (lemmaContainsKeyImpliesGetValueByKeyDefined!307 (toList!2842 lt!1559056) key!3918))))

(assert (=> b!4345443 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559056) key!3918))))

(declare-fun lt!1559518 () Unit!70399)

(assert (=> b!4345443 (= lt!1559518 lt!1559511)))

(assert (=> b!4345443 (= lt!1559512 (lemmaInListThenGetKeysListContains!93 (toList!2842 lt!1559056) key!3918))))

(assert (=> b!4345443 call!302122))

(declare-fun b!4345444 () Bool)

(declare-fun Unit!70497 () Unit!70399)

(assert (=> b!4345444 (= e!2704123 Unit!70497)))

(assert (= (and d!1283132 c!738873) b!4345443))

(assert (= (and d!1283132 (not c!738873)) b!4345442))

(assert (= (and b!4345442 c!738874) b!4345436))

(assert (= (and b!4345442 (not c!738874)) b!4345444))

(assert (= (or b!4345443 b!4345442) bm!302117))

(assert (= (and bm!302117 c!738875) b!4345441))

(assert (= (and bm!302117 (not c!738875)) b!4345438))

(assert (= (and d!1283132 res!1784074) b!4345439))

(assert (= (and d!1283132 (not res!1784072)) b!4345440))

(assert (= (and b!4345440 res!1784073) b!4345437))

(declare-fun m!4952709 () Bool)

(assert (=> b!4345443 m!4952709))

(declare-fun m!4952711 () Bool)

(assert (=> b!4345443 m!4952711))

(assert (=> b!4345443 m!4952711))

(declare-fun m!4952713 () Bool)

(assert (=> b!4345443 m!4952713))

(declare-fun m!4952715 () Bool)

(assert (=> b!4345443 m!4952715))

(declare-fun m!4952717 () Bool)

(assert (=> b!4345437 m!4952717))

(assert (=> b!4345437 m!4952717))

(declare-fun m!4952719 () Bool)

(assert (=> b!4345437 m!4952719))

(assert (=> b!4345440 m!4952711))

(assert (=> b!4345440 m!4952711))

(assert (=> b!4345440 m!4952713))

(declare-fun m!4952721 () Bool)

(assert (=> b!4345441 m!4952721))

(declare-fun m!4952723 () Bool)

(assert (=> bm!302117 m!4952723))

(declare-fun m!4952725 () Bool)

(assert (=> d!1283132 m!4952725))

(assert (=> b!4345439 m!4952717))

(assert (=> b!4345439 m!4952717))

(assert (=> b!4345439 m!4952719))

(assert (=> b!4345438 m!4952717))

(assert (=> b!4345436 m!4952725))

(declare-fun m!4952727 () Bool)

(assert (=> b!4345436 m!4952727))

(assert (=> b!4345161 d!1283132))

(declare-fun d!1283134 () Bool)

(assert (=> d!1283134 (= (eq!219 lt!1559056 lt!1559051) (= (content!7653 (toList!2842 lt!1559056)) (content!7653 (toList!2842 lt!1559051))))))

(declare-fun bs!627496 () Bool)

(assert (= bs!627496 d!1283134))

(declare-fun m!4952729 () Bool)

(assert (=> bs!627496 m!4952729))

(declare-fun m!4952731 () Bool)

(assert (=> bs!627496 m!4952731))

(assert (=> b!4345161 d!1283134))

(declare-fun d!1283136 () Bool)

(declare-fun e!2704128 () Bool)

(assert (=> d!1283136 e!2704128))

(declare-fun res!1784075 () Bool)

(assert (=> d!1283136 (=> res!1784075 e!2704128)))

(declare-fun e!2704127 () Bool)

(assert (=> d!1283136 (= res!1784075 e!2704127)))

(declare-fun res!1784077 () Bool)

(assert (=> d!1283136 (=> (not res!1784077) (not e!2704127))))

(declare-fun lt!1559522 () Bool)

(assert (=> d!1283136 (= res!1784077 (not lt!1559522))))

(declare-fun lt!1559524 () Bool)

(assert (=> d!1283136 (= lt!1559522 lt!1559524)))

(declare-fun lt!1559523 () Unit!70399)

(declare-fun e!2704125 () Unit!70399)

(assert (=> d!1283136 (= lt!1559523 e!2704125)))

(declare-fun c!738876 () Bool)

(assert (=> d!1283136 (= c!738876 lt!1559524)))

(assert (=> d!1283136 (= lt!1559524 (containsKey!595 (toList!2842 lt!1559071) key!3918))))

(assert (=> d!1283136 (= (contains!10905 lt!1559071 key!3918) lt!1559522)))

(declare-fun b!4345445 () Bool)

(assert (=> b!4345445 false))

(declare-fun lt!1559525 () Unit!70399)

(declare-fun lt!1559521 () Unit!70399)

(assert (=> b!4345445 (= lt!1559525 lt!1559521)))

(assert (=> b!4345445 (containsKey!595 (toList!2842 lt!1559071) key!3918)))

(assert (=> b!4345445 (= lt!1559521 (lemmaInGetKeysListThenContainsKey!94 (toList!2842 lt!1559071) key!3918))))

(declare-fun e!2704129 () Unit!70399)

(declare-fun Unit!70500 () Unit!70399)

(assert (=> b!4345445 (= e!2704129 Unit!70500)))

(declare-fun b!4345446 () Bool)

(declare-fun e!2704126 () Bool)

(assert (=> b!4345446 (= e!2704126 (contains!10910 (keys!16438 lt!1559071) key!3918))))

(declare-fun b!4345447 () Bool)

(declare-fun e!2704124 () List!48908)

(assert (=> b!4345447 (= e!2704124 (keys!16438 lt!1559071))))

(declare-fun b!4345448 () Bool)

(assert (=> b!4345448 (= e!2704127 (not (contains!10910 (keys!16438 lt!1559071) key!3918)))))

(declare-fun b!4345449 () Bool)

(assert (=> b!4345449 (= e!2704128 e!2704126)))

(declare-fun res!1784076 () Bool)

(assert (=> b!4345449 (=> (not res!1784076) (not e!2704126))))

(assert (=> b!4345449 (= res!1784076 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559071) key!3918)))))

(declare-fun bm!302118 () Bool)

(declare-fun call!302123 () Bool)

(assert (=> bm!302118 (= call!302123 (contains!10910 e!2704124 key!3918))))

(declare-fun c!738878 () Bool)

(assert (=> bm!302118 (= c!738878 c!738876)))

(declare-fun b!4345450 () Bool)

(assert (=> b!4345450 (= e!2704124 (getKeysList!96 (toList!2842 lt!1559071)))))

(declare-fun b!4345451 () Bool)

(assert (=> b!4345451 (= e!2704125 e!2704129)))

(declare-fun c!738877 () Bool)

(assert (=> b!4345451 (= c!738877 call!302123)))

(declare-fun b!4345452 () Bool)

(declare-fun lt!1559520 () Unit!70399)

(assert (=> b!4345452 (= e!2704125 lt!1559520)))

(declare-fun lt!1559519 () Unit!70399)

(assert (=> b!4345452 (= lt!1559519 (lemmaContainsKeyImpliesGetValueByKeyDefined!307 (toList!2842 lt!1559071) key!3918))))

(assert (=> b!4345452 (isDefined!7704 (getValueByKey!394 (toList!2842 lt!1559071) key!3918))))

(declare-fun lt!1559526 () Unit!70399)

(assert (=> b!4345452 (= lt!1559526 lt!1559519)))

(assert (=> b!4345452 (= lt!1559520 (lemmaInListThenGetKeysListContains!93 (toList!2842 lt!1559071) key!3918))))

(assert (=> b!4345452 call!302123))

(declare-fun b!4345453 () Bool)

(declare-fun Unit!70501 () Unit!70399)

(assert (=> b!4345453 (= e!2704129 Unit!70501)))

(assert (= (and d!1283136 c!738876) b!4345452))

(assert (= (and d!1283136 (not c!738876)) b!4345451))

(assert (= (and b!4345451 c!738877) b!4345445))

(assert (= (and b!4345451 (not c!738877)) b!4345453))

(assert (= (or b!4345452 b!4345451) bm!302118))

(assert (= (and bm!302118 c!738878) b!4345450))

(assert (= (and bm!302118 (not c!738878)) b!4345447))

(assert (= (and d!1283136 res!1784077) b!4345448))

(assert (= (and d!1283136 (not res!1784075)) b!4345449))

(assert (= (and b!4345449 res!1784076) b!4345446))

(declare-fun m!4952733 () Bool)

(assert (=> b!4345452 m!4952733))

(declare-fun m!4952735 () Bool)

(assert (=> b!4345452 m!4952735))

(assert (=> b!4345452 m!4952735))

(declare-fun m!4952737 () Bool)

(assert (=> b!4345452 m!4952737))

(declare-fun m!4952739 () Bool)

(assert (=> b!4345452 m!4952739))

(assert (=> b!4345446 m!4952497))

(assert (=> b!4345446 m!4952497))

(declare-fun m!4952741 () Bool)

(assert (=> b!4345446 m!4952741))

(assert (=> b!4345449 m!4952735))

(assert (=> b!4345449 m!4952735))

(assert (=> b!4345449 m!4952737))

(declare-fun m!4952743 () Bool)

(assert (=> b!4345450 m!4952743))

(declare-fun m!4952745 () Bool)

(assert (=> bm!302118 m!4952745))

(declare-fun m!4952747 () Bool)

(assert (=> d!1283136 m!4952747))

(assert (=> b!4345448 m!4952497))

(assert (=> b!4345448 m!4952497))

(assert (=> b!4345448 m!4952741))

(assert (=> b!4345447 m!4952497))

(assert (=> b!4345445 m!4952747))

(declare-fun m!4952749 () Bool)

(assert (=> b!4345445 m!4952749))

(assert (=> b!4345160 d!1283136))

(declare-fun bs!627497 () Bool)

(declare-fun d!1283138 () Bool)

(assert (= bs!627497 (and d!1283138 d!1283082)))

(declare-fun lambda!138071 () Int)

(assert (=> bs!627497 (= lambda!138071 lambda!138049)))

(declare-fun bs!627498 () Bool)

(assert (= bs!627498 (and d!1283138 d!1283130)))

(assert (=> bs!627498 (= lambda!138071 lambda!138070)))

(declare-fun bs!627499 () Bool)

(assert (= bs!627499 (and d!1283138 d!1283128)))

(assert (=> bs!627499 (= lambda!138071 lambda!138069)))

(declare-fun bs!627500 () Bool)

(assert (= bs!627500 (and d!1283138 d!1283062)))

(assert (=> bs!627500 (= lambda!138071 lambda!138029)))

(declare-fun bs!627501 () Bool)

(assert (= bs!627501 (and d!1283138 start!419368)))

(assert (=> bs!627501 (= lambda!138071 lambda!137959)))

(declare-fun lt!1559527 () ListMap!2085)

(assert (=> d!1283138 (invariantList!648 (toList!2842 lt!1559527))))

(declare-fun e!2704130 () ListMap!2085)

(assert (=> d!1283138 (= lt!1559527 e!2704130)))

(declare-fun c!738879 () Bool)

(assert (=> d!1283138 (= c!738879 ((_ is Cons!48782) (toList!2841 lm!1707)))))

(assert (=> d!1283138 (forall!9019 (toList!2841 lm!1707) lambda!138071)))

(assert (=> d!1283138 (= (extractMap!488 (toList!2841 lm!1707)) lt!1559527)))

(declare-fun b!4345454 () Bool)

(assert (=> b!4345454 (= e!2704130 (addToMapMapFromBucket!137 (_2!27338 (h!54303 (toList!2841 lm!1707))) (extractMap!488 (t!355826 (toList!2841 lm!1707)))))))

(declare-fun b!4345455 () Bool)

(assert (=> b!4345455 (= e!2704130 (ListMap!2086 Nil!48781))))

(assert (= (and d!1283138 c!738879) b!4345454))

(assert (= (and d!1283138 (not c!738879)) b!4345455))

(declare-fun m!4952751 () Bool)

(assert (=> d!1283138 m!4952751))

(declare-fun m!4952753 () Bool)

(assert (=> d!1283138 m!4952753))

(assert (=> b!4345454 m!4952021))

(assert (=> b!4345454 m!4952021))

(declare-fun m!4952755 () Bool)

(assert (=> b!4345454 m!4952755))

(assert (=> b!4345160 d!1283138))

(declare-fun d!1283140 () Bool)

(declare-fun res!1784082 () Bool)

(declare-fun e!2704135 () Bool)

(assert (=> d!1283140 (=> res!1784082 e!2704135)))

(assert (=> d!1283140 (= res!1784082 (not ((_ is Cons!48781) newBucket!200)))))

(assert (=> d!1283140 (= (noDuplicateKeys!429 newBucket!200) e!2704135)))

(declare-fun b!4345460 () Bool)

(declare-fun e!2704136 () Bool)

(assert (=> b!4345460 (= e!2704135 e!2704136)))

(declare-fun res!1784083 () Bool)

(assert (=> b!4345460 (=> (not res!1784083) (not e!2704136))))

(assert (=> b!4345460 (= res!1784083 (not (containsKey!594 (t!355825 newBucket!200) (_1!27337 (h!54302 newBucket!200)))))))

(declare-fun b!4345461 () Bool)

(assert (=> b!4345461 (= e!2704136 (noDuplicateKeys!429 (t!355825 newBucket!200)))))

(assert (= (and d!1283140 (not res!1784082)) b!4345460))

(assert (= (and b!4345460 res!1784083) b!4345461))

(declare-fun m!4952757 () Bool)

(assert (=> b!4345460 m!4952757))

(declare-fun m!4952759 () Bool)

(assert (=> b!4345461 m!4952759))

(assert (=> b!4345159 d!1283140))

(declare-fun d!1283142 () Bool)

(declare-fun get!15835 (Option!10409) List!48905)

(assert (=> d!1283142 (= (apply!11281 lm!1707 hash!377) (get!15835 (getValueByKey!395 (toList!2841 lm!1707) hash!377)))))

(declare-fun bs!627502 () Bool)

(assert (= bs!627502 d!1283142))

(declare-fun m!4952761 () Bool)

(assert (=> bs!627502 m!4952761))

(assert (=> bs!627502 m!4952761))

(declare-fun m!4952763 () Bool)

(assert (=> bs!627502 m!4952763))

(assert (=> b!4345158 d!1283142))

(declare-fun d!1283144 () Bool)

(declare-fun lt!1559530 () Bool)

(declare-fun content!7654 (List!48906) (InoxSet tuple2!48088))

(assert (=> d!1283144 (= lt!1559530 (select (content!7654 (toList!2841 lm!1707)) lt!1559050))))

(declare-fun e!2704142 () Bool)

(assert (=> d!1283144 (= lt!1559530 e!2704142)))

(declare-fun res!1784088 () Bool)

(assert (=> d!1283144 (=> (not res!1784088) (not e!2704142))))

(assert (=> d!1283144 (= res!1784088 ((_ is Cons!48782) (toList!2841 lm!1707)))))

(assert (=> d!1283144 (= (contains!10904 (toList!2841 lm!1707) lt!1559050) lt!1559530)))

(declare-fun b!4345466 () Bool)

(declare-fun e!2704141 () Bool)

(assert (=> b!4345466 (= e!2704142 e!2704141)))

(declare-fun res!1784089 () Bool)

(assert (=> b!4345466 (=> res!1784089 e!2704141)))

(assert (=> b!4345466 (= res!1784089 (= (h!54303 (toList!2841 lm!1707)) lt!1559050))))

(declare-fun b!4345467 () Bool)

(assert (=> b!4345467 (= e!2704141 (contains!10904 (t!355826 (toList!2841 lm!1707)) lt!1559050))))

(assert (= (and d!1283144 res!1784088) b!4345466))

(assert (= (and b!4345466 (not res!1784089)) b!4345467))

(declare-fun m!4952765 () Bool)

(assert (=> d!1283144 m!4952765))

(declare-fun m!4952767 () Bool)

(assert (=> d!1283144 m!4952767))

(declare-fun m!4952769 () Bool)

(assert (=> b!4345467 m!4952769))

(assert (=> b!4345158 d!1283144))

(declare-fun d!1283146 () Bool)

(assert (=> d!1283146 (contains!10904 (toList!2841 lm!1707) (tuple2!48089 hash!377 lt!1559069))))

(declare-fun lt!1559533 () Unit!70399)

(declare-fun choose!26656 (List!48906 (_ BitVec 64) List!48905) Unit!70399)

(assert (=> d!1283146 (= lt!1559533 (choose!26656 (toList!2841 lm!1707) hash!377 lt!1559069))))

(declare-fun e!2704145 () Bool)

(assert (=> d!1283146 e!2704145))

(declare-fun res!1784092 () Bool)

(assert (=> d!1283146 (=> (not res!1784092) (not e!2704145))))

(declare-fun isStrictlySorted!74 (List!48906) Bool)

(assert (=> d!1283146 (= res!1784092 (isStrictlySorted!74 (toList!2841 lm!1707)))))

(assert (=> d!1283146 (= (lemmaGetValueByKeyImpliesContainsTuple!276 (toList!2841 lm!1707) hash!377 lt!1559069) lt!1559533)))

(declare-fun b!4345470 () Bool)

(assert (=> b!4345470 (= e!2704145 (= (getValueByKey!395 (toList!2841 lm!1707) hash!377) (Some!10408 lt!1559069)))))

(assert (= (and d!1283146 res!1784092) b!4345470))

(declare-fun m!4952771 () Bool)

(assert (=> d!1283146 m!4952771))

(declare-fun m!4952773 () Bool)

(assert (=> d!1283146 m!4952773))

(declare-fun m!4952775 () Bool)

(assert (=> d!1283146 m!4952775))

(assert (=> b!4345470 m!4952761))

(assert (=> b!4345158 d!1283146))

(declare-fun d!1283148 () Bool)

(assert (=> d!1283148 (dynLambda!20593 lambda!137959 lt!1559050)))

(declare-fun lt!1559536 () Unit!70399)

(declare-fun choose!26657 (List!48906 Int tuple2!48088) Unit!70399)

(assert (=> d!1283148 (= lt!1559536 (choose!26657 (toList!2841 lm!1707) lambda!137959 lt!1559050))))

(declare-fun e!2704148 () Bool)

(assert (=> d!1283148 e!2704148))

(declare-fun res!1784095 () Bool)

(assert (=> d!1283148 (=> (not res!1784095) (not e!2704148))))

(assert (=> d!1283148 (= res!1784095 (forall!9019 (toList!2841 lm!1707) lambda!137959))))

(assert (=> d!1283148 (= (forallContained!1669 (toList!2841 lm!1707) lambda!137959 lt!1559050) lt!1559536)))

(declare-fun b!4345473 () Bool)

(assert (=> b!4345473 (= e!2704148 (contains!10904 (toList!2841 lm!1707) lt!1559050))))

(assert (= (and d!1283148 res!1784095) b!4345473))

(declare-fun b_lambda!130065 () Bool)

(assert (=> (not b_lambda!130065) (not d!1283148)))

(declare-fun m!4952777 () Bool)

(assert (=> d!1283148 m!4952777))

(declare-fun m!4952779 () Bool)

(assert (=> d!1283148 m!4952779))

(assert (=> d!1283148 m!4951973))

(assert (=> b!4345473 m!4951985))

(assert (=> b!4345158 d!1283148))

(declare-fun b!4345484 () Bool)

(declare-fun e!2704154 () List!48905)

(assert (=> b!4345484 (= e!2704154 (Cons!48781 (h!54302 lt!1559069) (removePairForKey!399 (t!355825 lt!1559069) key!3918)))))

(declare-fun d!1283150 () Bool)

(declare-fun lt!1559539 () List!48905)

(assert (=> d!1283150 (not (containsKey!594 lt!1559539 key!3918))))

(declare-fun e!2704153 () List!48905)

(assert (=> d!1283150 (= lt!1559539 e!2704153)))

(declare-fun c!738884 () Bool)

(assert (=> d!1283150 (= c!738884 (and ((_ is Cons!48781) lt!1559069) (= (_1!27337 (h!54302 lt!1559069)) key!3918)))))

(assert (=> d!1283150 (noDuplicateKeys!429 lt!1559069)))

(assert (=> d!1283150 (= (removePairForKey!399 lt!1559069 key!3918) lt!1559539)))

(declare-fun b!4345483 () Bool)

(assert (=> b!4345483 (= e!2704153 e!2704154)))

(declare-fun c!738885 () Bool)

(assert (=> b!4345483 (= c!738885 ((_ is Cons!48781) lt!1559069))))

(declare-fun b!4345482 () Bool)

(assert (=> b!4345482 (= e!2704153 (t!355825 lt!1559069))))

(declare-fun b!4345485 () Bool)

(assert (=> b!4345485 (= e!2704154 Nil!48781)))

(assert (= (and d!1283150 c!738884) b!4345482))

(assert (= (and d!1283150 (not c!738884)) b!4345483))

(assert (= (and b!4345483 c!738885) b!4345484))

(assert (= (and b!4345483 (not c!738885)) b!4345485))

(declare-fun m!4952781 () Bool)

(assert (=> b!4345484 m!4952781))

(declare-fun m!4952783 () Bool)

(assert (=> d!1283150 m!4952783))

(declare-fun m!4952785 () Bool)

(assert (=> d!1283150 m!4952785))

(assert (=> b!4345158 d!1283150))

(declare-fun d!1283152 () Bool)

(declare-fun res!1784096 () Bool)

(declare-fun e!2704155 () Bool)

(assert (=> d!1283152 (=> res!1784096 e!2704155)))

(assert (=> d!1283152 (= res!1784096 ((_ is Nil!48782) (toList!2841 lm!1707)))))

(assert (=> d!1283152 (= (forall!9019 (toList!2841 lm!1707) lambda!137959) e!2704155)))

(declare-fun b!4345486 () Bool)

(declare-fun e!2704156 () Bool)

(assert (=> b!4345486 (= e!2704155 e!2704156)))

(declare-fun res!1784097 () Bool)

(assert (=> b!4345486 (=> (not res!1784097) (not e!2704156))))

(assert (=> b!4345486 (= res!1784097 (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lm!1707))))))

(declare-fun b!4345487 () Bool)

(assert (=> b!4345487 (= e!2704156 (forall!9019 (t!355826 (toList!2841 lm!1707)) lambda!137959))))

(assert (= (and d!1283152 (not res!1784096)) b!4345486))

(assert (= (and b!4345486 res!1784097) b!4345487))

(declare-fun b_lambda!130067 () Bool)

(assert (=> (not b_lambda!130067) (not b!4345486)))

(declare-fun m!4952787 () Bool)

(assert (=> b!4345486 m!4952787))

(declare-fun m!4952789 () Bool)

(assert (=> b!4345487 m!4952789))

(assert (=> start!419368 d!1283152))

(declare-fun d!1283154 () Bool)

(assert (=> d!1283154 (= (inv!64326 lm!1707) (isStrictlySorted!74 (toList!2841 lm!1707)))))

(declare-fun bs!627503 () Bool)

(assert (= bs!627503 d!1283154))

(assert (=> bs!627503 m!4952775))

(assert (=> start!419368 d!1283154))

(declare-fun bs!627504 () Bool)

(declare-fun d!1283156 () Bool)

(assert (= bs!627504 (and d!1283156 b!4345367)))

(declare-fun lambda!138074 () Int)

(assert (=> bs!627504 (not (= lambda!138074 lambda!138055))))

(declare-fun bs!627505 () Bool)

(assert (= bs!627505 (and d!1283156 b!4345336)))

(assert (=> bs!627505 (not (= lambda!138074 lambda!138042))))

(declare-fun bs!627506 () Bool)

(assert (= bs!627506 (and d!1283156 b!4345337)))

(assert (=> bs!627506 (not (= lambda!138074 lambda!138040))))

(declare-fun bs!627507 () Bool)

(assert (= bs!627507 (and d!1283156 b!4345382)))

(assert (=> bs!627507 (not (= lambda!138074 lambda!138063))))

(declare-fun bs!627508 () Bool)

(assert (= bs!627508 (and d!1283156 b!4345366)))

(assert (=> bs!627508 (not (= lambda!138074 lambda!138056))))

(declare-fun bs!627509 () Bool)

(assert (= bs!627509 (and d!1283156 d!1283074)))

(assert (=> bs!627509 (not (= lambda!138074 lambda!138044))))

(assert (=> bs!627508 (not (= lambda!138074 lambda!138057))))

(declare-fun bs!627510 () Bool)

(assert (= bs!627510 (and d!1283156 b!4345381)))

(assert (=> bs!627510 (not (= lambda!138074 lambda!138064))))

(declare-fun bs!627511 () Bool)

(assert (= bs!627511 (and d!1283156 b!4345291)))

(assert (=> bs!627511 (not (= lambda!138074 lambda!137997))))

(declare-fun bs!627512 () Bool)

(assert (= bs!627512 (and d!1283156 b!4345290)))

(assert (=> bs!627512 (not (= lambda!138074 lambda!137998))))

(declare-fun bs!627513 () Bool)

(assert (= bs!627513 (and d!1283156 d!1283106)))

(assert (=> bs!627513 (not (= lambda!138074 lambda!138066))))

(assert (=> bs!627505 (not (= lambda!138074 lambda!138041))))

(assert (=> bs!627512 (not (= lambda!138074 lambda!137999))))

(assert (=> bs!627510 (not (= lambda!138074 lambda!138065))))

(declare-fun bs!627514 () Bool)

(assert (= bs!627514 (and d!1283156 d!1283012)))

(assert (=> bs!627514 (not (= lambda!138074 lambda!138000))))

(declare-fun bs!627515 () Bool)

(assert (= bs!627515 (and d!1283156 d!1283092)))

(assert (=> bs!627515 (not (= lambda!138074 lambda!138058))))

(assert (=> d!1283156 true))

(assert (=> d!1283156 true))

(assert (=> d!1283156 (= (allKeysSameHash!387 newBucket!200 hash!377 hashF!1247) (forall!9021 newBucket!200 lambda!138074))))

(declare-fun bs!627516 () Bool)

(assert (= bs!627516 d!1283156))

(declare-fun m!4952791 () Bool)

(assert (=> bs!627516 m!4952791))

(assert (=> b!4345166 d!1283156))

(declare-fun d!1283158 () Bool)

(assert (=> d!1283158 (= (eq!219 lt!1559064 lt!1559052) (= (content!7653 (toList!2842 lt!1559064)) (content!7653 (toList!2842 lt!1559052))))))

(declare-fun bs!627517 () Bool)

(assert (= bs!627517 d!1283158))

(declare-fun m!4952793 () Bool)

(assert (=> bs!627517 m!4952793))

(assert (=> bs!627517 m!4952579))

(assert (=> b!4345155 d!1283158))

(declare-fun d!1283160 () Bool)

(declare-fun res!1784098 () Bool)

(declare-fun e!2704157 () Bool)

(assert (=> d!1283160 (=> res!1784098 e!2704157)))

(assert (=> d!1283160 (= res!1784098 ((_ is Nil!48782) (toList!2841 lt!1559063)))))

(assert (=> d!1283160 (= (forall!9019 (toList!2841 lt!1559063) lambda!137959) e!2704157)))

(declare-fun b!4345492 () Bool)

(declare-fun e!2704158 () Bool)

(assert (=> b!4345492 (= e!2704157 e!2704158)))

(declare-fun res!1784099 () Bool)

(assert (=> b!4345492 (=> (not res!1784099) (not e!2704158))))

(assert (=> b!4345492 (= res!1784099 (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lt!1559063))))))

(declare-fun b!4345493 () Bool)

(assert (=> b!4345493 (= e!2704158 (forall!9019 (t!355826 (toList!2841 lt!1559063)) lambda!137959))))

(assert (= (and d!1283160 (not res!1784098)) b!4345492))

(assert (= (and b!4345492 res!1784099) b!4345493))

(declare-fun b_lambda!130069 () Bool)

(assert (=> (not b_lambda!130069) (not b!4345492)))

(declare-fun m!4952795 () Bool)

(assert (=> b!4345492 m!4952795))

(declare-fun m!4952797 () Bool)

(assert (=> b!4345493 m!4952797))

(assert (=> b!4345165 d!1283160))

(assert (=> b!4345154 d!1283160))

(declare-fun d!1283162 () Bool)

(declare-fun e!2704159 () Bool)

(assert (=> d!1283162 e!2704159))

(declare-fun res!1784100 () Bool)

(assert (=> d!1283162 (=> (not res!1784100) (not e!2704159))))

(declare-fun lt!1559543 () ListLongMap!1491)

(assert (=> d!1283162 (= res!1784100 (contains!10906 lt!1559543 (_1!27338 lt!1559067)))))

(declare-fun lt!1559540 () List!48906)

(assert (=> d!1283162 (= lt!1559543 (ListLongMap!1492 lt!1559540))))

(declare-fun lt!1559542 () Unit!70399)

(declare-fun lt!1559541 () Unit!70399)

(assert (=> d!1283162 (= lt!1559542 lt!1559541)))

(assert (=> d!1283162 (= (getValueByKey!395 lt!1559540 (_1!27338 lt!1559067)) (Some!10408 (_2!27338 lt!1559067)))))

(assert (=> d!1283162 (= lt!1559541 (lemmaContainsTupThenGetReturnValue!178 lt!1559540 (_1!27338 lt!1559067) (_2!27338 lt!1559067)))))

(assert (=> d!1283162 (= lt!1559540 (insertStrictlySorted!105 (toList!2841 lm!1707) (_1!27338 lt!1559067) (_2!27338 lt!1559067)))))

(assert (=> d!1283162 (= (+!529 lm!1707 lt!1559067) lt!1559543)))

(declare-fun b!4345494 () Bool)

(declare-fun res!1784101 () Bool)

(assert (=> b!4345494 (=> (not res!1784101) (not e!2704159))))

(assert (=> b!4345494 (= res!1784101 (= (getValueByKey!395 (toList!2841 lt!1559543) (_1!27338 lt!1559067)) (Some!10408 (_2!27338 lt!1559067))))))

(declare-fun b!4345495 () Bool)

(assert (=> b!4345495 (= e!2704159 (contains!10904 (toList!2841 lt!1559543) lt!1559067))))

(assert (= (and d!1283162 res!1784100) b!4345494))

(assert (= (and b!4345494 res!1784101) b!4345495))

(declare-fun m!4952799 () Bool)

(assert (=> d!1283162 m!4952799))

(declare-fun m!4952801 () Bool)

(assert (=> d!1283162 m!4952801))

(declare-fun m!4952803 () Bool)

(assert (=> d!1283162 m!4952803))

(declare-fun m!4952805 () Bool)

(assert (=> d!1283162 m!4952805))

(declare-fun m!4952807 () Bool)

(assert (=> b!4345494 m!4952807))

(declare-fun m!4952809 () Bool)

(assert (=> b!4345495 m!4952809))

(assert (=> b!4345154 d!1283162))

(declare-fun d!1283164 () Bool)

(assert (=> d!1283164 (forall!9019 (toList!2841 (+!529 lm!1707 (tuple2!48089 hash!377 newBucket!200))) lambda!137959)))

(declare-fun lt!1559546 () Unit!70399)

(declare-fun choose!26658 (ListLongMap!1491 Int (_ BitVec 64) List!48905) Unit!70399)

(assert (=> d!1283164 (= lt!1559546 (choose!26658 lm!1707 lambda!137959 hash!377 newBucket!200))))

(declare-fun e!2704162 () Bool)

(assert (=> d!1283164 e!2704162))

(declare-fun res!1784104 () Bool)

(assert (=> d!1283164 (=> (not res!1784104) (not e!2704162))))

(assert (=> d!1283164 (= res!1784104 (forall!9019 (toList!2841 lm!1707) lambda!137959))))

(assert (=> d!1283164 (= (addValidProp!83 lm!1707 lambda!137959 hash!377 newBucket!200) lt!1559546)))

(declare-fun b!4345499 () Bool)

(assert (=> b!4345499 (= e!2704162 (dynLambda!20593 lambda!137959 (tuple2!48089 hash!377 newBucket!200)))))

(assert (= (and d!1283164 res!1784104) b!4345499))

(declare-fun b_lambda!130071 () Bool)

(assert (=> (not b_lambda!130071) (not b!4345499)))

(declare-fun m!4952811 () Bool)

(assert (=> d!1283164 m!4952811))

(declare-fun m!4952813 () Bool)

(assert (=> d!1283164 m!4952813))

(declare-fun m!4952815 () Bool)

(assert (=> d!1283164 m!4952815))

(assert (=> d!1283164 m!4951973))

(declare-fun m!4952817 () Bool)

(assert (=> b!4345499 m!4952817))

(assert (=> b!4345154 d!1283164))

(assert (=> b!4345154 d!1283152))

(declare-fun bs!627518 () Bool)

(declare-fun d!1283166 () Bool)

(assert (= bs!627518 (and d!1283166 d!1283082)))

(declare-fun lambda!138077 () Int)

(assert (=> bs!627518 (not (= lambda!138077 lambda!138049))))

(declare-fun bs!627519 () Bool)

(assert (= bs!627519 (and d!1283166 d!1283138)))

(assert (=> bs!627519 (not (= lambda!138077 lambda!138071))))

(declare-fun bs!627520 () Bool)

(assert (= bs!627520 (and d!1283166 d!1283130)))

(assert (=> bs!627520 (not (= lambda!138077 lambda!138070))))

(declare-fun bs!627521 () Bool)

(assert (= bs!627521 (and d!1283166 d!1283128)))

(assert (=> bs!627521 (not (= lambda!138077 lambda!138069))))

(declare-fun bs!627522 () Bool)

(assert (= bs!627522 (and d!1283166 d!1283062)))

(assert (=> bs!627522 (not (= lambda!138077 lambda!138029))))

(declare-fun bs!627523 () Bool)

(assert (= bs!627523 (and d!1283166 start!419368)))

(assert (=> bs!627523 (not (= lambda!138077 lambda!137959))))

(assert (=> d!1283166 true))

(assert (=> d!1283166 (= (allKeysSameHashInMap!533 lm!1707 hashF!1247) (forall!9019 (toList!2841 lm!1707) lambda!138077))))

(declare-fun bs!627524 () Bool)

(assert (= bs!627524 d!1283166))

(declare-fun m!4952819 () Bool)

(assert (=> bs!627524 m!4952819))

(assert (=> b!4345164 d!1283166))

(declare-fun d!1283168 () Bool)

(assert (=> d!1283168 (= (apply!11281 lt!1559060 hash!377) (get!15835 (getValueByKey!395 (toList!2841 lt!1559060) hash!377)))))

(declare-fun bs!627525 () Bool)

(assert (= bs!627525 d!1283168))

(declare-fun m!4952821 () Bool)

(assert (=> bs!627525 m!4952821))

(assert (=> bs!627525 m!4952821))

(declare-fun m!4952823 () Bool)

(assert (=> bs!627525 m!4952823))

(assert (=> b!4345153 d!1283168))

(declare-fun d!1283170 () Bool)

(declare-fun hash!1404 (Hashable!4821 K!10140) (_ BitVec 64))

(assert (=> d!1283170 (= (hash!1400 hashF!1247 key!3918) (hash!1404 hashF!1247 key!3918))))

(declare-fun bs!627526 () Bool)

(assert (= bs!627526 d!1283170))

(declare-fun m!4952825 () Bool)

(assert (=> bs!627526 m!4952825))

(assert (=> b!4345152 d!1283170))

(declare-fun d!1283172 () Bool)

(declare-fun e!2704167 () Bool)

(assert (=> d!1283172 e!2704167))

(declare-fun res!1784107 () Bool)

(assert (=> d!1283172 (=> res!1784107 e!2704167)))

(declare-fun lt!1559556 () Bool)

(assert (=> d!1283172 (= res!1784107 (not lt!1559556))))

(declare-fun lt!1559558 () Bool)

(assert (=> d!1283172 (= lt!1559556 lt!1559558)))

(declare-fun lt!1559557 () Unit!70399)

(declare-fun e!2704168 () Unit!70399)

(assert (=> d!1283172 (= lt!1559557 e!2704168)))

(declare-fun c!738888 () Bool)

(assert (=> d!1283172 (= c!738888 lt!1559558)))

(declare-fun containsKey!596 (List!48906 (_ BitVec 64)) Bool)

(assert (=> d!1283172 (= lt!1559558 (containsKey!596 (toList!2841 lm!1707) hash!377))))

(assert (=> d!1283172 (= (contains!10906 lm!1707 hash!377) lt!1559556)))

(declare-fun b!4345508 () Bool)

(declare-fun lt!1559555 () Unit!70399)

(assert (=> b!4345508 (= e!2704168 lt!1559555)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!308 (List!48906 (_ BitVec 64)) Unit!70399)

(assert (=> b!4345508 (= lt!1559555 (lemmaContainsKeyImpliesGetValueByKeyDefined!308 (toList!2841 lm!1707) hash!377))))

(declare-fun isDefined!7705 (Option!10409) Bool)

(assert (=> b!4345508 (isDefined!7705 (getValueByKey!395 (toList!2841 lm!1707) hash!377))))

(declare-fun b!4345509 () Bool)

(declare-fun Unit!70502 () Unit!70399)

(assert (=> b!4345509 (= e!2704168 Unit!70502)))

(declare-fun b!4345510 () Bool)

(assert (=> b!4345510 (= e!2704167 (isDefined!7705 (getValueByKey!395 (toList!2841 lm!1707) hash!377)))))

(assert (= (and d!1283172 c!738888) b!4345508))

(assert (= (and d!1283172 (not c!738888)) b!4345509))

(assert (= (and d!1283172 (not res!1784107)) b!4345510))

(declare-fun m!4952827 () Bool)

(assert (=> d!1283172 m!4952827))

(declare-fun m!4952829 () Bool)

(assert (=> b!4345508 m!4952829))

(assert (=> b!4345508 m!4952761))

(assert (=> b!4345508 m!4952761))

(declare-fun m!4952831 () Bool)

(assert (=> b!4345508 m!4952831))

(assert (=> b!4345510 m!4952761))

(assert (=> b!4345510 m!4952761))

(assert (=> b!4345510 m!4952831))

(assert (=> b!4345162 d!1283172))

(declare-fun e!2704171 () Bool)

(declare-fun b!4345515 () Bool)

(declare-fun tp!1329466 () Bool)

(assert (=> b!4345515 (= e!2704171 (and tp_is_empty!24953 tp_is_empty!24955 tp!1329466))))

(assert (=> b!4345163 (= tp!1329453 e!2704171)))

(assert (= (and b!4345163 ((_ is Cons!48781) (t!355825 newBucket!200))) b!4345515))

(declare-fun b!4345520 () Bool)

(declare-fun e!2704174 () Bool)

(declare-fun tp!1329471 () Bool)

(declare-fun tp!1329472 () Bool)

(assert (=> b!4345520 (= e!2704174 (and tp!1329471 tp!1329472))))

(assert (=> b!4345157 (= tp!1329454 e!2704174)))

(assert (= (and b!4345157 ((_ is Cons!48782) (toList!2841 lm!1707))) b!4345520))

(declare-fun b_lambda!130073 () Bool)

(assert (= b_lambda!130067 (or start!419368 b_lambda!130073)))

(declare-fun bs!627527 () Bool)

(declare-fun d!1283174 () Bool)

(assert (= bs!627527 (and d!1283174 start!419368)))

(assert (=> bs!627527 (= (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lm!1707))) (noDuplicateKeys!429 (_2!27338 (h!54303 (toList!2841 lm!1707)))))))

(declare-fun m!4952833 () Bool)

(assert (=> bs!627527 m!4952833))

(assert (=> b!4345486 d!1283174))

(declare-fun b_lambda!130075 () Bool)

(assert (= b_lambda!130065 (or start!419368 b_lambda!130075)))

(declare-fun bs!627528 () Bool)

(declare-fun d!1283176 () Bool)

(assert (= bs!627528 (and d!1283176 start!419368)))

(assert (=> bs!627528 (= (dynLambda!20593 lambda!137959 lt!1559050) (noDuplicateKeys!429 (_2!27338 lt!1559050)))))

(declare-fun m!4952835 () Bool)

(assert (=> bs!627528 m!4952835))

(assert (=> d!1283148 d!1283176))

(declare-fun b_lambda!130077 () Bool)

(assert (= b_lambda!130071 (or start!419368 b_lambda!130077)))

(declare-fun bs!627529 () Bool)

(declare-fun d!1283178 () Bool)

(assert (= bs!627529 (and d!1283178 start!419368)))

(assert (=> bs!627529 (= (dynLambda!20593 lambda!137959 (tuple2!48089 hash!377 newBucket!200)) (noDuplicateKeys!429 (_2!27338 (tuple2!48089 hash!377 newBucket!200))))))

(declare-fun m!4952837 () Bool)

(assert (=> bs!627529 m!4952837))

(assert (=> b!4345499 d!1283178))

(declare-fun b_lambda!130079 () Bool)

(assert (= b_lambda!130069 (or start!419368 b_lambda!130079)))

(declare-fun bs!627530 () Bool)

(declare-fun d!1283180 () Bool)

(assert (= bs!627530 (and d!1283180 start!419368)))

(assert (=> bs!627530 (= (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lt!1559063))) (noDuplicateKeys!429 (_2!27338 (h!54303 (toList!2841 lt!1559063)))))))

(declare-fun m!4952839 () Bool)

(assert (=> bs!627530 m!4952839))

(assert (=> b!4345492 d!1283180))

(declare-fun b_lambda!130081 () Bool)

(assert (= b_lambda!130053 (or start!419368 b_lambda!130081)))

(declare-fun bs!627531 () Bool)

(declare-fun d!1283182 () Bool)

(assert (= bs!627531 (and d!1283182 start!419368)))

(assert (=> bs!627531 (= (dynLambda!20593 lambda!137959 (h!54303 (toList!2841 lt!1559060))) (noDuplicateKeys!429 (_2!27338 (h!54303 (toList!2841 lt!1559060)))))))

(declare-fun m!4952841 () Bool)

(assert (=> bs!627531 m!4952841))

(assert (=> b!4345352 d!1283182))

(check-sat (not b!4345385) (not d!1283106) (not d!1283148) (not bs!627529) (not bs!627531) (not d!1283136) (not bm!302098) (not b!4345434) (not b!4345376) (not b!4345484) (not bm!302110) (not b!4345366) (not b!4345467) (not b!4345340) (not b_lambda!130079) (not b!4345440) (not bm!302118) (not bm!302083) (not b!4345436) (not b!4345381) (not d!1283138) (not d!1283012) (not d!1283168) (not b!4345338) (not b!4345309) (not b!4345325) (not d!1283158) tp_is_empty!24955 (not b!4345292) (not b!4345336) (not b!4345432) (not bm!302107) (not bm!302099) (not d!1283132) (not b!4345441) (not bm!302112) (not b!4345428) (not b!4345460) (not b!4345293) (not d!1283166) (not b!4345493) (not b!4345461) (not b!4345452) (not d!1283104) (not bm!302117) (not d!1283084) (not d!1283162) (not b!4345494) (not bm!302116) (not d!1283062) (not d!1283082) (not d!1283124) (not d!1283154) (not d!1283090) (not d!1283092) (not bs!627530) (not b!4345324) (not b!4345454) (not b!4345443) (not d!1283134) (not d!1283128) (not bs!627527) (not bm!302111) (not d!1283064) (not b!4345426) (not d!1283074) (not b!4345424) (not b!4345437) (not d!1283146) (not b!4345294) tp_is_empty!24953 (not b!4345438) (not d!1283066) (not b!4345423) (not b!4345365) (not b!4345383) (not b!4345510) (not d!1283156) (not b!4345448) (not bm!302109) (not b!4345368) (not b!4345339) (not b!4345427) (not b!4345445) (not b!4345290) (not b_lambda!130077) (not d!1283130) (not b!4345354) (not b!4345353) (not bm!302085) (not b!4345449) (not b!4345473) (not b!4345515) (not b!4345430) (not d!1283164) (not b!4345370) (not b_lambda!130073) (not bm!302100) (not b!4345439) (not b!4345470) (not d!1283144) (not b!4345433) (not b!4345446) (not b!4345450) (not b!4345447) (not b!4345375) (not b!4345369) (not bm!302084) (not b!4345487) (not b!4345425) (not bm!302108) (not d!1283172) (not d!1283170) (not d!1283142) (not d!1283126) (not d!1283150) (not b!4345384) (not b!4345520) (not d!1283096) (not b!4345508) (not b_lambda!130081) (not b_lambda!130075) (not b!4345495) (not bs!627528))
(check-sat)
