; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!468450 () Bool)

(assert start!468450)

(declare-fun b!4654925 () Bool)

(declare-fun res!1957132 () Bool)

(declare-fun e!2904293 () Bool)

(assert (=> b!4654925 (=> (not res!1957132) (not e!2904293))))

(declare-datatypes ((K!13243 0))(
  ( (K!13244 (val!18865 Int)) )
))
(declare-datatypes ((V!13489 0))(
  ( (V!13490 (val!18866 Int)) )
))
(declare-datatypes ((tuple2!52994 0))(
  ( (tuple2!52995 (_1!29791 K!13243) (_2!29791 V!13489)) )
))
(declare-datatypes ((List!52012 0))(
  ( (Nil!51888) (Cons!51888 (h!58030 tuple2!52994) (t!359128 List!52012)) )
))
(declare-fun oldBucket!40 () List!52012)

(declare-fun key!4968 () K!13243)

(declare-fun newBucket!224 () List!52012)

(declare-fun removePairForKey!1260 (List!52012 K!13243) List!52012)

(assert (=> b!4654925 (= res!1957132 (= (removePairForKey!1260 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4654926 () Bool)

(declare-fun res!1957135 () Bool)

(assert (=> b!4654926 (=> (not res!1957135) (not e!2904293))))

(declare-datatypes ((Hashable!6034 0))(
  ( (HashableExt!6033 (__x!31737 Int)) )
))
(declare-fun hashF!1389 () Hashable!6034)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1491 (List!52012 (_ BitVec 64) Hashable!6034) Bool)

(assert (=> b!4654926 (= res!1957135 (allKeysSameHash!1491 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4654927 () Bool)

(declare-fun e!2904294 () Bool)

(declare-fun e!2904290 () Bool)

(assert (=> b!4654927 (= e!2904294 (not e!2904290))))

(declare-fun res!1957131 () Bool)

(assert (=> b!4654927 (=> res!1957131 e!2904290)))

(assert (=> b!4654927 (= res!1957131 (or (and (is-Cons!51888 oldBucket!40) (= (_1!29791 (h!58030 oldBucket!40)) key!4968)) (not (is-Cons!51888 oldBucket!40)) (= (_1!29791 (h!58030 oldBucket!40)) key!4968)))))

(declare-fun e!2904291 () Bool)

(assert (=> b!4654927 e!2904291))

(declare-fun res!1957134 () Bool)

(assert (=> b!4654927 (=> (not res!1957134) (not e!2904291))))

(declare-datatypes ((ListMap!4543 0))(
  ( (ListMap!4544 (toList!5205 List!52012)) )
))
(declare-fun lt!1818020 () ListMap!4543)

(declare-fun lt!1818021 () ListMap!4543)

(declare-fun addToMapMapFromBucket!1094 (List!52012 ListMap!4543) ListMap!4543)

(assert (=> b!4654927 (= res!1957134 (= lt!1818021 (addToMapMapFromBucket!1094 oldBucket!40 lt!1818020)))))

(declare-datatypes ((tuple2!52996 0))(
  ( (tuple2!52997 (_1!29792 (_ BitVec 64)) (_2!29792 List!52012)) )
))
(declare-datatypes ((List!52013 0))(
  ( (Nil!51889) (Cons!51889 (h!58031 tuple2!52996) (t!359129 List!52013)) )
))
(declare-fun extractMap!1693 (List!52013) ListMap!4543)

(assert (=> b!4654927 (= lt!1818020 (extractMap!1693 Nil!51889))))

(assert (=> b!4654927 true))

(declare-fun b!4654928 () Bool)

(declare-fun res!1957137 () Bool)

(assert (=> b!4654928 (=> (not res!1957137) (not e!2904294))))

(declare-fun hash!3772 (Hashable!6034 K!13243) (_ BitVec 64))

(assert (=> b!4654928 (= res!1957137 (= (hash!3772 hashF!1389 key!4968) hash!414))))

(declare-fun b!4654929 () Bool)

(declare-fun lt!1818022 () List!52013)

(declare-fun lambda!199137 () Int)

(declare-fun forall!11019 (List!52013 Int) Bool)

(assert (=> b!4654929 (= e!2904290 (forall!11019 lt!1818022 lambda!199137))))

(declare-fun b!4654930 () Bool)

(assert (=> b!4654930 (= e!2904291 (= lt!1818020 (ListMap!4544 Nil!51888)))))

(declare-fun b!4654931 () Bool)

(declare-fun e!2904289 () Bool)

(declare-fun tp_is_empty!29841 () Bool)

(declare-fun tp_is_empty!29843 () Bool)

(declare-fun tp!1343285 () Bool)

(assert (=> b!4654931 (= e!2904289 (and tp_is_empty!29841 tp_is_empty!29843 tp!1343285))))

(declare-fun res!1957136 () Bool)

(assert (=> start!468450 (=> (not res!1957136) (not e!2904293))))

(declare-fun noDuplicateKeys!1637 (List!52012) Bool)

(assert (=> start!468450 (= res!1957136 (noDuplicateKeys!1637 oldBucket!40))))

(assert (=> start!468450 e!2904293))

(assert (=> start!468450 true))

(declare-fun e!2904292 () Bool)

(assert (=> start!468450 e!2904292))

(assert (=> start!468450 tp_is_empty!29841))

(assert (=> start!468450 e!2904289))

(declare-fun b!4654932 () Bool)

(assert (=> b!4654932 (= e!2904293 e!2904294)))

(declare-fun res!1957133 () Bool)

(assert (=> b!4654932 (=> (not res!1957133) (not e!2904294))))

(declare-fun contains!15032 (ListMap!4543 K!13243) Bool)

(assert (=> b!4654932 (= res!1957133 (contains!15032 lt!1818021 key!4968))))

(assert (=> b!4654932 (= lt!1818021 (extractMap!1693 lt!1818022))))

(assert (=> b!4654932 (= lt!1818022 (Cons!51889 (tuple2!52997 hash!414 oldBucket!40) Nil!51889))))

(declare-fun b!4654933 () Bool)

(declare-fun res!1957130 () Bool)

(assert (=> b!4654933 (=> (not res!1957130) (not e!2904293))))

(assert (=> b!4654933 (= res!1957130 (noDuplicateKeys!1637 newBucket!224))))

(declare-fun b!4654934 () Bool)

(declare-fun res!1957129 () Bool)

(assert (=> b!4654934 (=> (not res!1957129) (not e!2904294))))

(assert (=> b!4654934 (= res!1957129 (allKeysSameHash!1491 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1343284 () Bool)

(declare-fun b!4654935 () Bool)

(assert (=> b!4654935 (= e!2904292 (and tp_is_empty!29841 tp_is_empty!29843 tp!1343284))))

(assert (= (and start!468450 res!1957136) b!4654933))

(assert (= (and b!4654933 res!1957130) b!4654925))

(assert (= (and b!4654925 res!1957132) b!4654926))

(assert (= (and b!4654926 res!1957135) b!4654932))

(assert (= (and b!4654932 res!1957133) b!4654928))

(assert (= (and b!4654928 res!1957137) b!4654934))

(assert (= (and b!4654934 res!1957129) b!4654927))

(assert (= (and b!4654927 res!1957134) b!4654930))

(assert (= (and b!4654927 (not res!1957131)) b!4654929))

(assert (= (and start!468450 (is-Cons!51888 oldBucket!40)) b!4654935))

(assert (= (and start!468450 (is-Cons!51888 newBucket!224)) b!4654931))

(declare-fun m!5533865 () Bool)

(assert (=> b!4654926 m!5533865))

(declare-fun m!5533867 () Bool)

(assert (=> b!4654932 m!5533867))

(declare-fun m!5533869 () Bool)

(assert (=> b!4654932 m!5533869))

(declare-fun m!5533871 () Bool)

(assert (=> b!4654928 m!5533871))

(declare-fun m!5533873 () Bool)

(assert (=> b!4654934 m!5533873))

(declare-fun m!5533875 () Bool)

(assert (=> b!4654933 m!5533875))

(declare-fun m!5533877 () Bool)

(assert (=> b!4654927 m!5533877))

(declare-fun m!5533879 () Bool)

(assert (=> b!4654927 m!5533879))

(declare-fun m!5533881 () Bool)

(assert (=> start!468450 m!5533881))

(declare-fun m!5533883 () Bool)

(assert (=> b!4654925 m!5533883))

(declare-fun m!5533885 () Bool)

(assert (=> b!4654929 m!5533885))

(push 1)

(assert (not b!4654929))

(assert (not b!4654934))

(assert (not start!468450))

(assert (not b!4654935))

(assert (not b!4654931))

(assert (not b!4654933))

(assert (not b!4654927))

(assert tp_is_empty!29841)

(assert (not b!4654928))

(assert (not b!4654926))

(assert (not b!4654925))

(assert (not b!4654932))

(assert tp_is_empty!29843)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1476299 () Bool)

(declare-fun res!1957169 () Bool)

(declare-fun e!2904317 () Bool)

(assert (=> d!1476299 (=> res!1957169 e!2904317)))

(assert (=> d!1476299 (= res!1957169 (not (is-Cons!51888 newBucket!224)))))

(assert (=> d!1476299 (= (noDuplicateKeys!1637 newBucket!224) e!2904317)))

(declare-fun b!4654973 () Bool)

(declare-fun e!2904318 () Bool)

(assert (=> b!4654973 (= e!2904317 e!2904318)))

(declare-fun res!1957170 () Bool)

(assert (=> b!4654973 (=> (not res!1957170) (not e!2904318))))

(declare-fun containsKey!2719 (List!52012 K!13243) Bool)

(assert (=> b!4654973 (= res!1957170 (not (containsKey!2719 (t!359128 newBucket!224) (_1!29791 (h!58030 newBucket!224)))))))

(declare-fun b!4654974 () Bool)

(assert (=> b!4654974 (= e!2904318 (noDuplicateKeys!1637 (t!359128 newBucket!224)))))

(assert (= (and d!1476299 (not res!1957169)) b!4654973))

(assert (= (and b!4654973 res!1957170) b!4654974))

(declare-fun m!5533909 () Bool)

(assert (=> b!4654973 m!5533909))

(declare-fun m!5533911 () Bool)

(assert (=> b!4654974 m!5533911))

(assert (=> b!4654933 d!1476299))

(declare-fun d!1476303 () Bool)

(declare-fun hash!3774 (Hashable!6034 K!13243) (_ BitVec 64))

(assert (=> d!1476303 (= (hash!3772 hashF!1389 key!4968) (hash!3774 hashF!1389 key!4968))))

(declare-fun bs!1064383 () Bool)

(assert (= bs!1064383 d!1476303))

(declare-fun m!5533913 () Bool)

(assert (=> bs!1064383 m!5533913))

(assert (=> b!4654928 d!1476303))

(declare-fun d!1476305 () Bool)

(assert (=> d!1476305 true))

(assert (=> d!1476305 true))

(declare-fun lambda!199143 () Int)

(declare-fun forall!11021 (List!52012 Int) Bool)

(assert (=> d!1476305 (= (allKeysSameHash!1491 newBucket!224 hash!414 hashF!1389) (forall!11021 newBucket!224 lambda!199143))))

(declare-fun bs!1064384 () Bool)

(assert (= bs!1064384 d!1476305))

(declare-fun m!5533915 () Bool)

(assert (=> bs!1064384 m!5533915))

(assert (=> b!4654934 d!1476305))

(declare-fun d!1476307 () Bool)

(declare-fun res!1957179 () Bool)

(declare-fun e!2904327 () Bool)

(assert (=> d!1476307 (=> res!1957179 e!2904327)))

(assert (=> d!1476307 (= res!1957179 (is-Nil!51889 lt!1818022))))

(assert (=> d!1476307 (= (forall!11019 lt!1818022 lambda!199137) e!2904327)))

(declare-fun b!4654987 () Bool)

(declare-fun e!2904328 () Bool)

(assert (=> b!4654987 (= e!2904327 e!2904328)))

(declare-fun res!1957180 () Bool)

(assert (=> b!4654987 (=> (not res!1957180) (not e!2904328))))

(declare-fun dynLambda!21585 (Int tuple2!52996) Bool)

(assert (=> b!4654987 (= res!1957180 (dynLambda!21585 lambda!199137 (h!58031 lt!1818022)))))

(declare-fun b!4654988 () Bool)

(assert (=> b!4654988 (= e!2904328 (forall!11019 (t!359129 lt!1818022) lambda!199137))))

(assert (= (and d!1476307 (not res!1957179)) b!4654987))

(assert (= (and b!4654987 res!1957180) b!4654988))

(declare-fun b_lambda!173871 () Bool)

(assert (=> (not b_lambda!173871) (not b!4654987)))

(declare-fun m!5533917 () Bool)

(assert (=> b!4654987 m!5533917))

(declare-fun m!5533919 () Bool)

(assert (=> b!4654988 m!5533919))

(assert (=> b!4654929 d!1476307))

(declare-fun d!1476309 () Bool)

(declare-fun lt!1818034 () List!52012)

(assert (=> d!1476309 (not (containsKey!2719 lt!1818034 key!4968))))

(declare-fun e!2904335 () List!52012)

(assert (=> d!1476309 (= lt!1818034 e!2904335)))

(declare-fun c!796747 () Bool)

(assert (=> d!1476309 (= c!796747 (and (is-Cons!51888 oldBucket!40) (= (_1!29791 (h!58030 oldBucket!40)) key!4968)))))

(assert (=> d!1476309 (noDuplicateKeys!1637 oldBucket!40)))

(assert (=> d!1476309 (= (removePairForKey!1260 oldBucket!40 key!4968) lt!1818034)))

(declare-fun b!4654999 () Bool)

(assert (=> b!4654999 (= e!2904335 (t!359128 oldBucket!40))))

(declare-fun b!4655002 () Bool)

(declare-fun e!2904336 () List!52012)

(assert (=> b!4655002 (= e!2904336 Nil!51888)))

(declare-fun b!4655001 () Bool)

(assert (=> b!4655001 (= e!2904336 (Cons!51888 (h!58030 oldBucket!40) (removePairForKey!1260 (t!359128 oldBucket!40) key!4968)))))

(declare-fun b!4655000 () Bool)

(assert (=> b!4655000 (= e!2904335 e!2904336)))

(declare-fun c!796748 () Bool)

(assert (=> b!4655000 (= c!796748 (is-Cons!51888 oldBucket!40))))

(assert (= (and d!1476309 c!796747) b!4654999))

(assert (= (and d!1476309 (not c!796747)) b!4655000))

(assert (= (and b!4655000 c!796748) b!4655001))

(assert (= (and b!4655000 (not c!796748)) b!4655002))

(declare-fun m!5533925 () Bool)

(assert (=> d!1476309 m!5533925))

(assert (=> d!1476309 m!5533881))

(declare-fun m!5533927 () Bool)

(assert (=> b!4655001 m!5533927))

(assert (=> b!4654925 d!1476309))

(declare-fun d!1476313 () Bool)

(declare-fun res!1957183 () Bool)

(declare-fun e!2904337 () Bool)

(assert (=> d!1476313 (=> res!1957183 e!2904337)))

(assert (=> d!1476313 (= res!1957183 (not (is-Cons!51888 oldBucket!40)))))

(assert (=> d!1476313 (= (noDuplicateKeys!1637 oldBucket!40) e!2904337)))

(declare-fun b!4655003 () Bool)

(declare-fun e!2904338 () Bool)

(assert (=> b!4655003 (= e!2904337 e!2904338)))

(declare-fun res!1957184 () Bool)

(assert (=> b!4655003 (=> (not res!1957184) (not e!2904338))))

(assert (=> b!4655003 (= res!1957184 (not (containsKey!2719 (t!359128 oldBucket!40) (_1!29791 (h!58030 oldBucket!40)))))))

(declare-fun b!4655004 () Bool)

(assert (=> b!4655004 (= e!2904338 (noDuplicateKeys!1637 (t!359128 oldBucket!40)))))

(assert (= (and d!1476313 (not res!1957183)) b!4655003))

(assert (= (and b!4655003 res!1957184) b!4655004))

(declare-fun m!5533929 () Bool)

(assert (=> b!4655003 m!5533929))

(declare-fun m!5533931 () Bool)

(assert (=> b!4655004 m!5533931))

(assert (=> start!468450 d!1476313))

(declare-fun bs!1064385 () Bool)

(declare-fun d!1476315 () Bool)

(assert (= bs!1064385 (and d!1476315 d!1476305)))

(declare-fun lambda!199144 () Int)

(assert (=> bs!1064385 (= lambda!199144 lambda!199143)))

(assert (=> d!1476315 true))

(assert (=> d!1476315 true))

(assert (=> d!1476315 (= (allKeysSameHash!1491 oldBucket!40 hash!414 hashF!1389) (forall!11021 oldBucket!40 lambda!199144))))

(declare-fun bs!1064386 () Bool)

(assert (= bs!1064386 d!1476315))

(declare-fun m!5533933 () Bool)

(assert (=> bs!1064386 m!5533933))

(assert (=> b!4654926 d!1476315))

(declare-fun b!4655023 () Bool)

(declare-datatypes ((Unit!118488 0))(
  ( (Unit!118489) )
))
(declare-fun e!2904355 () Unit!118488)

(declare-fun lt!1818055 () Unit!118488)

(assert (=> b!4655023 (= e!2904355 lt!1818055)))

(declare-fun lt!1818054 () Unit!118488)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1509 (List!52012 K!13243) Unit!118488)

(assert (=> b!4655023 (= lt!1818054 (lemmaContainsKeyImpliesGetValueByKeyDefined!1509 (toList!5205 lt!1818021) key!4968))))

(declare-datatypes ((Option!11819 0))(
  ( (None!11818) (Some!11818 (v!46088 V!13489)) )
))
(declare-fun isDefined!9084 (Option!11819) Bool)

(declare-fun getValueByKey!1607 (List!52012 K!13243) Option!11819)

(assert (=> b!4655023 (isDefined!9084 (getValueByKey!1607 (toList!5205 lt!1818021) key!4968))))

(declare-fun lt!1818053 () Unit!118488)

(assert (=> b!4655023 (= lt!1818053 lt!1818054)))

(declare-fun lemmaInListThenGetKeysListContains!741 (List!52012 K!13243) Unit!118488)

(assert (=> b!4655023 (= lt!1818055 (lemmaInListThenGetKeysListContains!741 (toList!5205 lt!1818021) key!4968))))

(declare-fun call!325292 () Bool)

(assert (=> b!4655023 call!325292))

(declare-fun b!4655024 () Bool)

(declare-fun e!2904354 () Bool)

(declare-datatypes ((List!52016 0))(
  ( (Nil!51892) (Cons!51892 (h!58036 K!13243) (t!359132 List!52016)) )
))
(declare-fun contains!15034 (List!52016 K!13243) Bool)

(declare-fun keys!18379 (ListMap!4543) List!52016)

(assert (=> b!4655024 (= e!2904354 (contains!15034 (keys!18379 lt!1818021) key!4968))))

(declare-fun b!4655025 () Bool)

(declare-fun e!2904353 () List!52016)

(assert (=> b!4655025 (= e!2904353 (keys!18379 lt!1818021))))

(declare-fun d!1476317 () Bool)

(declare-fun e!2904356 () Bool)

(assert (=> d!1476317 e!2904356))

(declare-fun res!1957192 () Bool)

(assert (=> d!1476317 (=> res!1957192 e!2904356)))

(declare-fun e!2904351 () Bool)

(assert (=> d!1476317 (= res!1957192 e!2904351)))

(declare-fun res!1957191 () Bool)

(assert (=> d!1476317 (=> (not res!1957191) (not e!2904351))))

(declare-fun lt!1818052 () Bool)

(assert (=> d!1476317 (= res!1957191 (not lt!1818052))))

(declare-fun lt!1818051 () Bool)

(assert (=> d!1476317 (= lt!1818052 lt!1818051)))

(declare-fun lt!1818057 () Unit!118488)

(assert (=> d!1476317 (= lt!1818057 e!2904355)))

(declare-fun c!796756 () Bool)

(assert (=> d!1476317 (= c!796756 lt!1818051)))

(declare-fun containsKey!2720 (List!52012 K!13243) Bool)

(assert (=> d!1476317 (= lt!1818051 (containsKey!2720 (toList!5205 lt!1818021) key!4968))))

(assert (=> d!1476317 (= (contains!15032 lt!1818021 key!4968) lt!1818052)))

(declare-fun b!4655026 () Bool)

(declare-fun e!2904352 () Unit!118488)

(declare-fun Unit!118490 () Unit!118488)

(assert (=> b!4655026 (= e!2904352 Unit!118490)))

(declare-fun b!4655027 () Bool)

(declare-fun getKeysList!746 (List!52012) List!52016)

(assert (=> b!4655027 (= e!2904353 (getKeysList!746 (toList!5205 lt!1818021)))))

(declare-fun b!4655028 () Bool)

(assert (=> b!4655028 (= e!2904355 e!2904352)))

(declare-fun c!796755 () Bool)

(assert (=> b!4655028 (= c!796755 call!325292)))

(declare-fun b!4655029 () Bool)

(assert (=> b!4655029 (= e!2904351 (not (contains!15034 (keys!18379 lt!1818021) key!4968)))))

(declare-fun bm!325287 () Bool)

(assert (=> bm!325287 (= call!325292 (contains!15034 e!2904353 key!4968))))

(declare-fun c!796757 () Bool)

(assert (=> bm!325287 (= c!796757 c!796756)))

(declare-fun b!4655030 () Bool)

(assert (=> b!4655030 false))

(declare-fun lt!1818058 () Unit!118488)

(declare-fun lt!1818056 () Unit!118488)

(assert (=> b!4655030 (= lt!1818058 lt!1818056)))

(assert (=> b!4655030 (containsKey!2720 (toList!5205 lt!1818021) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!745 (List!52012 K!13243) Unit!118488)

(assert (=> b!4655030 (= lt!1818056 (lemmaInGetKeysListThenContainsKey!745 (toList!5205 lt!1818021) key!4968))))

(declare-fun Unit!118491 () Unit!118488)

(assert (=> b!4655030 (= e!2904352 Unit!118491)))

(declare-fun b!4655031 () Bool)

(assert (=> b!4655031 (= e!2904356 e!2904354)))

(declare-fun res!1957193 () Bool)

(assert (=> b!4655031 (=> (not res!1957193) (not e!2904354))))

(assert (=> b!4655031 (= res!1957193 (isDefined!9084 (getValueByKey!1607 (toList!5205 lt!1818021) key!4968)))))

(assert (= (and d!1476317 c!796756) b!4655023))

(assert (= (and d!1476317 (not c!796756)) b!4655028))

(assert (= (and b!4655028 c!796755) b!4655030))

(assert (= (and b!4655028 (not c!796755)) b!4655026))

(assert (= (or b!4655023 b!4655028) bm!325287))

(assert (= (and bm!325287 c!796757) b!4655027))

(assert (= (and bm!325287 (not c!796757)) b!4655025))

(assert (= (and d!1476317 res!1957191) b!4655029))

(assert (= (and d!1476317 (not res!1957192)) b!4655031))

(assert (= (and b!4655031 res!1957193) b!4655024))

(declare-fun m!5533935 () Bool)

(assert (=> b!4655029 m!5533935))

(assert (=> b!4655029 m!5533935))

(declare-fun m!5533937 () Bool)

(assert (=> b!4655029 m!5533937))

(assert (=> b!4655024 m!5533935))

(assert (=> b!4655024 m!5533935))

(assert (=> b!4655024 m!5533937))

(declare-fun m!5533939 () Bool)

(assert (=> b!4655030 m!5533939))

(declare-fun m!5533941 () Bool)

(assert (=> b!4655030 m!5533941))

(declare-fun m!5533943 () Bool)

(assert (=> b!4655023 m!5533943))

(declare-fun m!5533945 () Bool)

(assert (=> b!4655023 m!5533945))

(assert (=> b!4655023 m!5533945))

(declare-fun m!5533947 () Bool)

(assert (=> b!4655023 m!5533947))

(declare-fun m!5533949 () Bool)

(assert (=> b!4655023 m!5533949))

(declare-fun m!5533951 () Bool)

(assert (=> b!4655027 m!5533951))

(assert (=> b!4655031 m!5533945))

(assert (=> b!4655031 m!5533945))

(assert (=> b!4655031 m!5533947))

(declare-fun m!5533953 () Bool)

(assert (=> bm!325287 m!5533953))

(assert (=> b!4655025 m!5533935))

(assert (=> d!1476317 m!5533939))

(assert (=> b!4654932 d!1476317))

(declare-fun bs!1064387 () Bool)

(declare-fun d!1476319 () Bool)

(assert (= bs!1064387 (and d!1476319 b!4654929)))

(declare-fun lambda!199147 () Int)

(assert (=> bs!1064387 (= lambda!199147 lambda!199137)))

(declare-fun lt!1818077 () ListMap!4543)

(declare-fun invariantList!1295 (List!52012) Bool)

(assert (=> d!1476319 (invariantList!1295 (toList!5205 lt!1818077))))

(declare-fun e!2904365 () ListMap!4543)

(assert (=> d!1476319 (= lt!1818077 e!2904365)))

(declare-fun c!796766 () Bool)

(assert (=> d!1476319 (= c!796766 (is-Cons!51889 lt!1818022))))

(assert (=> d!1476319 (forall!11019 lt!1818022 lambda!199147)))

(assert (=> d!1476319 (= (extractMap!1693 lt!1818022) lt!1818077)))

(declare-fun b!4655048 () Bool)

(assert (=> b!4655048 (= e!2904365 (addToMapMapFromBucket!1094 (_2!29792 (h!58031 lt!1818022)) (extractMap!1693 (t!359129 lt!1818022))))))

(declare-fun b!4655049 () Bool)

(assert (=> b!4655049 (= e!2904365 (ListMap!4544 Nil!51888))))

(assert (= (and d!1476319 c!796766) b!4655048))

(assert (= (and d!1476319 (not c!796766)) b!4655049))

(declare-fun m!5533955 () Bool)

(assert (=> d!1476319 m!5533955))

(declare-fun m!5533957 () Bool)

(assert (=> d!1476319 m!5533957))

(declare-fun m!5533959 () Bool)

(assert (=> b!4655048 m!5533959))

(assert (=> b!4655048 m!5533959))

(declare-fun m!5533961 () Bool)

(assert (=> b!4655048 m!5533961))

(assert (=> b!4654932 d!1476319))

(declare-fun bs!1064391 () Bool)

(declare-fun b!4655095 () Bool)

(assert (= bs!1064391 (and b!4655095 d!1476305)))

(declare-fun lambda!199182 () Int)

(assert (=> bs!1064391 (not (= lambda!199182 lambda!199143))))

(declare-fun bs!1064392 () Bool)

(assert (= bs!1064392 (and b!4655095 d!1476315)))

(assert (=> bs!1064392 (not (= lambda!199182 lambda!199144))))

(assert (=> b!4655095 true))

(declare-fun bs!1064393 () Bool)

(declare-fun b!4655093 () Bool)

(assert (= bs!1064393 (and b!4655093 d!1476305)))

(declare-fun lambda!199183 () Int)

(assert (=> bs!1064393 (not (= lambda!199183 lambda!199143))))

(declare-fun bs!1064394 () Bool)

(assert (= bs!1064394 (and b!4655093 d!1476315)))

(assert (=> bs!1064394 (not (= lambda!199183 lambda!199144))))

(declare-fun bs!1064395 () Bool)

(assert (= bs!1064395 (and b!4655093 b!4655095)))

(assert (=> bs!1064395 (= lambda!199183 lambda!199182)))

(assert (=> b!4655093 true))

(declare-fun lambda!199184 () Int)

(assert (=> bs!1064393 (not (= lambda!199184 lambda!199143))))

(assert (=> bs!1064394 (not (= lambda!199184 lambda!199144))))

(declare-fun lt!1818131 () ListMap!4543)

(assert (=> bs!1064395 (= (= lt!1818131 lt!1818020) (= lambda!199184 lambda!199182))))

(assert (=> b!4655093 (= (= lt!1818131 lt!1818020) (= lambda!199184 lambda!199183))))

(assert (=> b!4655093 true))

(declare-fun bs!1064396 () Bool)

(declare-fun d!1476321 () Bool)

(assert (= bs!1064396 (and d!1476321 b!4655095)))

(declare-fun lt!1818136 () ListMap!4543)

(declare-fun lambda!199185 () Int)

(assert (=> bs!1064396 (= (= lt!1818136 lt!1818020) (= lambda!199185 lambda!199182))))

(declare-fun bs!1064397 () Bool)

(assert (= bs!1064397 (and d!1476321 b!4655093)))

(assert (=> bs!1064397 (= (= lt!1818136 lt!1818131) (= lambda!199185 lambda!199184))))

(declare-fun bs!1064398 () Bool)

(assert (= bs!1064398 (and d!1476321 d!1476305)))

(assert (=> bs!1064398 (not (= lambda!199185 lambda!199143))))

(declare-fun bs!1064399 () Bool)

(assert (= bs!1064399 (and d!1476321 d!1476315)))

(assert (=> bs!1064399 (not (= lambda!199185 lambda!199144))))

(assert (=> bs!1064397 (= (= lt!1818136 lt!1818020) (= lambda!199185 lambda!199183))))

(assert (=> d!1476321 true))

(declare-fun e!2904395 () ListMap!4543)

(assert (=> b!4655093 (= e!2904395 lt!1818131)))

(declare-fun lt!1818137 () ListMap!4543)

(declare-fun +!1981 (ListMap!4543 tuple2!52994) ListMap!4543)

(assert (=> b!4655093 (= lt!1818137 (+!1981 lt!1818020 (h!58030 oldBucket!40)))))

(assert (=> b!4655093 (= lt!1818131 (addToMapMapFromBucket!1094 (t!359128 oldBucket!40) (+!1981 lt!1818020 (h!58030 oldBucket!40))))))

(declare-fun lt!1818141 () Unit!118488)

(declare-fun call!325303 () Unit!118488)

(assert (=> b!4655093 (= lt!1818141 call!325303)))

(assert (=> b!4655093 (forall!11021 (toList!5205 lt!1818020) lambda!199183)))

(declare-fun lt!1818144 () Unit!118488)

(assert (=> b!4655093 (= lt!1818144 lt!1818141)))

(assert (=> b!4655093 (forall!11021 (toList!5205 lt!1818137) lambda!199184)))

(declare-fun lt!1818151 () Unit!118488)

(declare-fun Unit!118492 () Unit!118488)

(assert (=> b!4655093 (= lt!1818151 Unit!118492)))

(assert (=> b!4655093 (forall!11021 (t!359128 oldBucket!40) lambda!199184)))

(declare-fun lt!1818149 () Unit!118488)

(declare-fun Unit!118493 () Unit!118488)

(assert (=> b!4655093 (= lt!1818149 Unit!118493)))

(declare-fun lt!1818142 () Unit!118488)

(declare-fun Unit!118494 () Unit!118488)

(assert (=> b!4655093 (= lt!1818142 Unit!118494)))

(declare-fun lt!1818148 () Unit!118488)

(declare-fun forallContained!3223 (List!52012 Int tuple2!52994) Unit!118488)

(assert (=> b!4655093 (= lt!1818148 (forallContained!3223 (toList!5205 lt!1818137) lambda!199184 (h!58030 oldBucket!40)))))

(assert (=> b!4655093 (contains!15032 lt!1818137 (_1!29791 (h!58030 oldBucket!40)))))

(declare-fun lt!1818147 () Unit!118488)

(declare-fun Unit!118495 () Unit!118488)

(assert (=> b!4655093 (= lt!1818147 Unit!118495)))

(assert (=> b!4655093 (contains!15032 lt!1818131 (_1!29791 (h!58030 oldBucket!40)))))

(declare-fun lt!1818146 () Unit!118488)

(declare-fun Unit!118496 () Unit!118488)

(assert (=> b!4655093 (= lt!1818146 Unit!118496)))

(assert (=> b!4655093 (forall!11021 oldBucket!40 lambda!199184)))

(declare-fun lt!1818150 () Unit!118488)

(declare-fun Unit!118497 () Unit!118488)

(assert (=> b!4655093 (= lt!1818150 Unit!118497)))

(assert (=> b!4655093 (forall!11021 (toList!5205 lt!1818137) lambda!199184)))

(declare-fun lt!1818135 () Unit!118488)

(declare-fun Unit!118498 () Unit!118488)

(assert (=> b!4655093 (= lt!1818135 Unit!118498)))

(declare-fun lt!1818138 () Unit!118488)

(declare-fun Unit!118499 () Unit!118488)

(assert (=> b!4655093 (= lt!1818138 Unit!118499)))

(declare-fun lt!1818134 () Unit!118488)

(declare-fun addForallContainsKeyThenBeforeAdding!594 (ListMap!4543 ListMap!4543 K!13243 V!13489) Unit!118488)

(assert (=> b!4655093 (= lt!1818134 (addForallContainsKeyThenBeforeAdding!594 lt!1818020 lt!1818131 (_1!29791 (h!58030 oldBucket!40)) (_2!29791 (h!58030 oldBucket!40))))))

(assert (=> b!4655093 (forall!11021 (toList!5205 lt!1818020) lambda!199184)))

(declare-fun lt!1818140 () Unit!118488)

(assert (=> b!4655093 (= lt!1818140 lt!1818134)))

(declare-fun call!325304 () Bool)

(assert (=> b!4655093 call!325304))

(declare-fun lt!1818145 () Unit!118488)

(declare-fun Unit!118500 () Unit!118488)

(assert (=> b!4655093 (= lt!1818145 Unit!118500)))

(declare-fun res!1957218 () Bool)

(assert (=> b!4655093 (= res!1957218 (forall!11021 oldBucket!40 lambda!199184))))

(declare-fun e!2904397 () Bool)

(assert (=> b!4655093 (=> (not res!1957218) (not e!2904397))))

(assert (=> b!4655093 e!2904397))

(declare-fun lt!1818139 () Unit!118488)

(declare-fun Unit!118501 () Unit!118488)

(assert (=> b!4655093 (= lt!1818139 Unit!118501)))

(declare-fun b!4655094 () Bool)

(declare-fun res!1957217 () Bool)

(declare-fun e!2904396 () Bool)

(assert (=> b!4655094 (=> (not res!1957217) (not e!2904396))))

(assert (=> b!4655094 (= res!1957217 (forall!11021 (toList!5205 lt!1818020) lambda!199185))))

(assert (=> d!1476321 e!2904396))

(declare-fun res!1957219 () Bool)

(assert (=> d!1476321 (=> (not res!1957219) (not e!2904396))))

(assert (=> d!1476321 (= res!1957219 (forall!11021 oldBucket!40 lambda!199185))))

(assert (=> d!1476321 (= lt!1818136 e!2904395)))

(declare-fun c!796775 () Bool)

(assert (=> d!1476321 (= c!796775 (is-Nil!51888 oldBucket!40))))

(assert (=> d!1476321 (noDuplicateKeys!1637 oldBucket!40)))

(assert (=> d!1476321 (= (addToMapMapFromBucket!1094 oldBucket!40 lt!1818020) lt!1818136)))

(declare-fun call!325302 () Bool)

(declare-fun bm!325297 () Bool)

(assert (=> bm!325297 (= call!325302 (forall!11021 (toList!5205 lt!1818020) (ite c!796775 lambda!199182 lambda!199184)))))

(declare-fun bm!325298 () Bool)

(assert (=> bm!325298 (= call!325304 (forall!11021 (toList!5205 lt!1818020) (ite c!796775 lambda!199182 lambda!199184)))))

(assert (=> b!4655095 (= e!2904395 lt!1818020)))

(declare-fun lt!1818132 () Unit!118488)

(assert (=> b!4655095 (= lt!1818132 call!325303)))

(assert (=> b!4655095 call!325304))

(declare-fun lt!1818143 () Unit!118488)

(assert (=> b!4655095 (= lt!1818143 lt!1818132)))

(assert (=> b!4655095 call!325302))

(declare-fun lt!1818133 () Unit!118488)

(declare-fun Unit!118502 () Unit!118488)

(assert (=> b!4655095 (= lt!1818133 Unit!118502)))

(declare-fun b!4655096 () Bool)

(assert (=> b!4655096 (= e!2904397 call!325302)))

(declare-fun bm!325299 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!595 (ListMap!4543) Unit!118488)

(assert (=> bm!325299 (= call!325303 (lemmaContainsAllItsOwnKeys!595 lt!1818020))))

(declare-fun b!4655097 () Bool)

(assert (=> b!4655097 (= e!2904396 (invariantList!1295 (toList!5205 lt!1818136)))))

(assert (= (and d!1476321 c!796775) b!4655095))

(assert (= (and d!1476321 (not c!796775)) b!4655093))

(assert (= (and b!4655093 res!1957218) b!4655096))

(assert (= (or b!4655095 b!4655093) bm!325299))

(assert (= (or b!4655095 b!4655096) bm!325297))

(assert (= (or b!4655095 b!4655093) bm!325298))

(assert (= (and d!1476321 res!1957219) b!4655094))

(assert (= (and b!4655094 res!1957217) b!4655097))

(declare-fun m!5534003 () Bool)

(assert (=> b!4655094 m!5534003))

(declare-fun m!5534005 () Bool)

(assert (=> bm!325298 m!5534005))

(declare-fun m!5534007 () Bool)

(assert (=> d!1476321 m!5534007))

(assert (=> d!1476321 m!5533881))

(declare-fun m!5534009 () Bool)

(assert (=> b!4655097 m!5534009))

(assert (=> bm!325297 m!5534005))

(declare-fun m!5534011 () Bool)

(assert (=> bm!325299 m!5534011))

(declare-fun m!5534013 () Bool)

(assert (=> b!4655093 m!5534013))

(declare-fun m!5534015 () Bool)

(assert (=> b!4655093 m!5534015))

(declare-fun m!5534017 () Bool)

(assert (=> b!4655093 m!5534017))

(declare-fun m!5534019 () Bool)

(assert (=> b!4655093 m!5534019))

(declare-fun m!5534021 () Bool)

(assert (=> b!4655093 m!5534021))

(declare-fun m!5534023 () Bool)

(assert (=> b!4655093 m!5534023))

(assert (=> b!4655093 m!5534013))

(assert (=> b!4655093 m!5534021))

(declare-fun m!5534025 () Bool)

(assert (=> b!4655093 m!5534025))

(declare-fun m!5534027 () Bool)

(assert (=> b!4655093 m!5534027))

(declare-fun m!5534029 () Bool)

(assert (=> b!4655093 m!5534029))

(assert (=> b!4655093 m!5534025))

(declare-fun m!5534031 () Bool)

(assert (=> b!4655093 m!5534031))

(declare-fun m!5534033 () Bool)

(assert (=> b!4655093 m!5534033))

(assert (=> b!4654927 d!1476321))

(declare-fun bs!1064400 () Bool)

(declare-fun d!1476335 () Bool)

(assert (= bs!1064400 (and d!1476335 b!4654929)))

(declare-fun lambda!199186 () Int)

(assert (=> bs!1064400 (= lambda!199186 lambda!199137)))

(declare-fun bs!1064401 () Bool)

(assert (= bs!1064401 (and d!1476335 d!1476319)))

(assert (=> bs!1064401 (= lambda!199186 lambda!199147)))

(declare-fun lt!1818152 () ListMap!4543)

(assert (=> d!1476335 (invariantList!1295 (toList!5205 lt!1818152))))

(declare-fun e!2904398 () ListMap!4543)

(assert (=> d!1476335 (= lt!1818152 e!2904398)))

(declare-fun c!796776 () Bool)

(assert (=> d!1476335 (= c!796776 (is-Cons!51889 Nil!51889))))

(assert (=> d!1476335 (forall!11019 Nil!51889 lambda!199186)))

(assert (=> d!1476335 (= (extractMap!1693 Nil!51889) lt!1818152)))

(declare-fun b!4655100 () Bool)

(assert (=> b!4655100 (= e!2904398 (addToMapMapFromBucket!1094 (_2!29792 (h!58031 Nil!51889)) (extractMap!1693 (t!359129 Nil!51889))))))

(declare-fun b!4655101 () Bool)

(assert (=> b!4655101 (= e!2904398 (ListMap!4544 Nil!51888))))

(assert (= (and d!1476335 c!796776) b!4655100))

(assert (= (and d!1476335 (not c!796776)) b!4655101))

(declare-fun m!5534035 () Bool)

(assert (=> d!1476335 m!5534035))

(declare-fun m!5534037 () Bool)

(assert (=> d!1476335 m!5534037))

(declare-fun m!5534039 () Bool)

(assert (=> b!4655100 m!5534039))

(assert (=> b!4655100 m!5534039))

(declare-fun m!5534041 () Bool)

(assert (=> b!4655100 m!5534041))

(assert (=> b!4654927 d!1476335))

(declare-fun e!2904401 () Bool)

(declare-fun tp!1343294 () Bool)

(declare-fun b!4655106 () Bool)

(assert (=> b!4655106 (= e!2904401 (and tp_is_empty!29841 tp_is_empty!29843 tp!1343294))))

(assert (=> b!4654935 (= tp!1343284 e!2904401)))

(assert (= (and b!4654935 (is-Cons!51888 (t!359128 oldBucket!40))) b!4655106))

(declare-fun e!2904402 () Bool)

(declare-fun tp!1343295 () Bool)

(declare-fun b!4655107 () Bool)

(assert (=> b!4655107 (= e!2904402 (and tp_is_empty!29841 tp_is_empty!29843 tp!1343295))))

(assert (=> b!4654931 (= tp!1343285 e!2904402)))

(assert (= (and b!4654931 (is-Cons!51888 (t!359128 newBucket!224))) b!4655107))

(declare-fun b_lambda!173875 () Bool)

(assert (= b_lambda!173871 (or b!4654929 b_lambda!173875)))

(declare-fun bs!1064402 () Bool)

(declare-fun d!1476337 () Bool)

(assert (= bs!1064402 (and d!1476337 b!4654929)))

(assert (=> bs!1064402 (= (dynLambda!21585 lambda!199137 (h!58031 lt!1818022)) (noDuplicateKeys!1637 (_2!29792 (h!58031 lt!1818022))))))

(declare-fun m!5534043 () Bool)

(assert (=> bs!1064402 m!5534043))

(assert (=> b!4654987 d!1476337))

(push 1)

(assert (not d!1476335))

(assert (not b!4655097))

(assert (not b!4655027))

(assert (not b!4655030))

(assert (not b!4655094))

(assert (not bm!325298))

(assert (not b!4655023))

(assert (not d!1476309))

(assert (not bm!325287))

(assert (not b!4655093))

(assert tp_is_empty!29843)

(assert (not d!1476319))

(assert (not b!4655106))

(assert (not b!4654973))

(assert (not bs!1064402))

(assert (not b!4655107))

(assert (not b!4655004))

(assert (not b_lambda!173875))

(assert (not b!4655029))

(assert (not bm!325297))

(assert (not b!4655024))

(assert (not d!1476315))

(assert (not d!1476305))

(assert (not b!4655031))

(assert (not b!4655048))

(assert (not b!4655003))

(assert (not b!4655001))

(assert (not b!4655025))

(assert (not b!4654974))

(assert (not b!4655100))

(assert (not d!1476321))

(assert tp_is_empty!29841)

(assert (not bm!325299))

(assert (not b!4654988))

(assert (not d!1476303))

(assert (not d!1476317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

