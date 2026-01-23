; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!438580 () Bool)

(assert start!438580)

(declare-fun res!1852976 () Bool)

(declare-fun e!2781458 () Bool)

(assert (=> start!438580 (=> (not res!1852976) (not e!2781458))))

(declare-datatypes ((K!11690 0))(
  ( (K!11691 (val!17623 Int)) )
))
(declare-datatypes ((V!11936 0))(
  ( (V!11937 (val!17624 Int)) )
))
(declare-datatypes ((tuple2!50514 0))(
  ( (tuple2!50515 (_1!28551 K!11690) (_2!28551 V!11936)) )
))
(declare-datatypes ((List!50396 0))(
  ( (Nil!50272) (Cons!50272 (h!56031 tuple2!50514) (t!357346 List!50396)) )
))
(declare-datatypes ((tuple2!50516 0))(
  ( (tuple2!50517 (_1!28552 (_ BitVec 64)) (_2!28552 List!50396)) )
))
(declare-datatypes ((List!50397 0))(
  ( (Nil!50273) (Cons!50273 (h!56032 tuple2!50516) (t!357347 List!50397)) )
))
(declare-datatypes ((ListLongMap!2679 0))(
  ( (ListLongMap!2680 (toList!4047 List!50397)) )
))
(declare-fun lm!1477 () ListLongMap!2679)

(declare-fun lambda!162813 () Int)

(declare-fun forall!9978 (List!50397 Int) Bool)

(assert (=> start!438580 (= res!1852976 (forall!9978 (toList!4047 lm!1477) lambda!162813))))

(assert (=> start!438580 e!2781458))

(assert (=> start!438580 true))

(declare-fun e!2781457 () Bool)

(declare-fun inv!65874 (ListLongMap!2679) Bool)

(assert (=> start!438580 (and (inv!65874 lm!1477) e!2781457)))

(declare-fun tp_is_empty!27357 () Bool)

(assert (=> start!438580 tp_is_empty!27357))

(declare-fun e!2781454 () Bool)

(assert (=> start!438580 e!2781454))

(declare-fun b!4466758 () Bool)

(declare-fun res!1852983 () Bool)

(declare-fun e!2781450 () Bool)

(assert (=> b!4466758 (=> res!1852983 e!2781450)))

(declare-fun newBucket!178 () List!50396)

(declare-fun noDuplicateKeys!1020 (List!50396) Bool)

(assert (=> b!4466758 (= res!1852983 (not (noDuplicateKeys!1020 newBucket!178)))))

(declare-fun b!4466759 () Bool)

(declare-fun e!2781455 () Bool)

(declare-fun e!2781456 () Bool)

(assert (=> b!4466759 (= e!2781455 e!2781456)))

(declare-fun res!1852984 () Bool)

(assert (=> b!4466759 (=> res!1852984 e!2781456)))

(declare-fun lt!1656305 () ListLongMap!2679)

(declare-fun tail!7492 (List!50397) List!50397)

(assert (=> b!4466759 (= res!1852984 (not (= (t!357347 (toList!4047 lm!1477)) (tail!7492 (toList!4047 lt!1656305)))))))

(declare-fun lt!1656299 () tuple2!50516)

(declare-fun +!1360 (ListLongMap!2679 tuple2!50516) ListLongMap!2679)

(assert (=> b!4466759 (= lt!1656305 (+!1360 lm!1477 lt!1656299))))

(declare-fun key!3287 () K!11690)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((ListMap!3309 0))(
  ( (ListMap!3310 (toList!4048 List!50396)) )
))
(declare-fun eq!513 (ListMap!3309 ListMap!3309) Bool)

(declare-fun extractMap!1076 (List!50397) ListMap!3309)

(declare-fun -!282 (ListMap!3309 K!11690) ListMap!3309)

(assert (=> b!4466759 (eq!513 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)) (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))))

(assert (=> b!4466759 (= lt!1656299 (tuple2!50517 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5415 0))(
  ( (HashableExt!5414 (__x!31118 Int)) )
))
(declare-fun hashF!1107 () Hashable!5415)

(declare-datatypes ((Unit!87415 0))(
  ( (Unit!87416) )
))
(declare-fun lt!1656301 () Unit!87415)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!12 ((_ BitVec 64) List!50396 List!50396 K!11690 Hashable!5415) Unit!87415)

(assert (=> b!4466759 (= lt!1656301 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!12 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1656304 () List!50397)

(declare-fun contains!12815 (ListMap!3309 K!11690) Bool)

(assert (=> b!4466759 (contains!12815 (extractMap!1076 lt!1656304) key!3287)))

(declare-fun lt!1656303 () Unit!87415)

(declare-fun lemmaListContainsThenExtractedMapContains!16 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> b!4466759 (= lt!1656303 (lemmaListContainsThenExtractedMapContains!16 (ListLongMap!2680 lt!1656304) key!3287 hashF!1107))))

(declare-fun b!4466760 () Bool)

(declare-fun res!1852982 () Bool)

(declare-fun e!2781451 () Bool)

(assert (=> b!4466760 (=> (not res!1852982) (not e!2781451))))

(declare-fun allKeysSameHash!874 (List!50396 (_ BitVec 64) Hashable!5415) Bool)

(assert (=> b!4466760 (= res!1852982 (allKeysSameHash!874 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4466761 () Bool)

(declare-fun e!2781452 () Bool)

(assert (=> b!4466761 (= e!2781452 e!2781455)))

(declare-fun res!1852974 () Bool)

(assert (=> b!4466761 (=> res!1852974 e!2781455)))

(declare-fun containsKeyBiggerList!20 (List!50397 K!11690) Bool)

(assert (=> b!4466761 (= res!1852974 (not (containsKeyBiggerList!20 lt!1656304 key!3287)))))

(assert (=> b!4466761 (= lt!1656304 (Cons!50273 (h!56032 (toList!4047 lm!1477)) Nil!50273))))

(declare-fun b!4466762 () Bool)

(assert (=> b!4466762 (= e!2781451 (not e!2781450))))

(declare-fun res!1852980 () Bool)

(assert (=> b!4466762 (=> res!1852980 e!2781450)))

(declare-fun lt!1656307 () List!50396)

(declare-fun removePairForKey!647 (List!50396 K!11690) List!50396)

(assert (=> b!4466762 (= res!1852980 (not (= newBucket!178 (removePairForKey!647 lt!1656307 key!3287))))))

(declare-fun lt!1656306 () Unit!87415)

(declare-fun lt!1656297 () tuple2!50516)

(declare-fun forallContained!2249 (List!50397 Int tuple2!50516) Unit!87415)

(assert (=> b!4466762 (= lt!1656306 (forallContained!2249 (toList!4047 lm!1477) lambda!162813 lt!1656297))))

(declare-fun contains!12816 (List!50397 tuple2!50516) Bool)

(assert (=> b!4466762 (contains!12816 (toList!4047 lm!1477) lt!1656297)))

(assert (=> b!4466762 (= lt!1656297 (tuple2!50517 hash!344 lt!1656307))))

(declare-fun lt!1656296 () Unit!87415)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!532 (List!50397 (_ BitVec 64) List!50396) Unit!87415)

(assert (=> b!4466762 (= lt!1656296 (lemmaGetValueByKeyImpliesContainsTuple!532 (toList!4047 lm!1477) hash!344 lt!1656307))))

(declare-fun apply!11757 (ListLongMap!2679 (_ BitVec 64)) List!50396)

(assert (=> b!4466762 (= lt!1656307 (apply!11757 lm!1477 hash!344))))

(declare-fun lt!1656298 () (_ BitVec 64))

(declare-fun contains!12817 (ListLongMap!2679 (_ BitVec 64)) Bool)

(assert (=> b!4466762 (contains!12817 lm!1477 lt!1656298)))

(declare-fun lt!1656302 () Unit!87415)

(declare-fun lemmaInGenMapThenLongMapContainsHash!94 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> b!4466762 (= lt!1656302 (lemmaInGenMapThenLongMapContainsHash!94 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4466763 () Bool)

(declare-fun e!2781459 () Bool)

(declare-fun lt!1656294 () ListLongMap!2679)

(assert (=> b!4466763 (= e!2781459 (forall!9978 (toList!4047 lt!1656294) lambda!162813))))

(declare-fun b!4466764 () Bool)

(declare-fun res!1852978 () Bool)

(assert (=> b!4466764 (=> res!1852978 e!2781450)))

(get-info :version)

(assert (=> b!4466764 (= res!1852978 (or ((_ is Nil!50273) (toList!4047 lm!1477)) (not (= (_1!28552 (h!56032 (toList!4047 lm!1477))) hash!344))))))

(declare-fun b!4466765 () Bool)

(declare-fun e!2781453 () Unit!87415)

(declare-fun Unit!87417 () Unit!87415)

(assert (=> b!4466765 (= e!2781453 Unit!87417)))

(declare-fun lt!1656295 () Unit!87415)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!20 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> b!4466765 (= lt!1656295 (lemmaNotInItsHashBucketThenNotInMap!20 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4466765 false))

(declare-fun b!4466766 () Bool)

(assert (=> b!4466766 (= e!2781458 e!2781451)))

(declare-fun res!1852977 () Bool)

(assert (=> b!4466766 (=> (not res!1852977) (not e!2781451))))

(assert (=> b!4466766 (= res!1852977 (= lt!1656298 hash!344))))

(declare-fun hash!2431 (Hashable!5415 K!11690) (_ BitVec 64))

(assert (=> b!4466766 (= lt!1656298 (hash!2431 hashF!1107 key!3287))))

(declare-fun b!4466767 () Bool)

(assert (=> b!4466767 (= e!2781456 e!2781459)))

(declare-fun res!1852985 () Bool)

(assert (=> b!4466767 (=> res!1852985 e!2781459)))

(assert (=> b!4466767 (= res!1852985 (not (= lt!1656305 (+!1360 lt!1656294 lt!1656299))))))

(declare-fun tail!7493 (ListLongMap!2679) ListLongMap!2679)

(assert (=> b!4466767 (= lt!1656294 (tail!7493 lm!1477))))

(declare-fun b!4466768 () Bool)

(declare-fun tp!1336156 () Bool)

(declare-fun tp_is_empty!27359 () Bool)

(assert (=> b!4466768 (= e!2781454 (and tp_is_empty!27357 tp_is_empty!27359 tp!1336156))))

(declare-fun b!4466769 () Bool)

(declare-fun Unit!87418 () Unit!87415)

(assert (=> b!4466769 (= e!2781453 Unit!87418)))

(declare-fun b!4466770 () Bool)

(declare-fun tp!1336157 () Bool)

(assert (=> b!4466770 (= e!2781457 tp!1336157)))

(declare-fun b!4466771 () Bool)

(declare-fun res!1852975 () Bool)

(assert (=> b!4466771 (=> (not res!1852975) (not e!2781458))))

(declare-fun allKeysSameHashInMap!1127 (ListLongMap!2679 Hashable!5415) Bool)

(assert (=> b!4466771 (= res!1852975 (allKeysSameHashInMap!1127 lm!1477 hashF!1107))))

(declare-fun b!4466772 () Bool)

(assert (=> b!4466772 (= e!2781450 e!2781452)))

(declare-fun res!1852981 () Bool)

(assert (=> b!4466772 (=> res!1852981 e!2781452)))

(declare-fun lt!1656308 () Bool)

(assert (=> b!4466772 (= res!1852981 lt!1656308)))

(declare-fun lt!1656300 () Unit!87415)

(assert (=> b!4466772 (= lt!1656300 e!2781453)))

(declare-fun c!760284 () Bool)

(assert (=> b!4466772 (= c!760284 lt!1656308)))

(declare-fun containsKey!1456 (List!50396 K!11690) Bool)

(assert (=> b!4466772 (= lt!1656308 (not (containsKey!1456 (_2!28552 (h!56032 (toList!4047 lm!1477))) key!3287)))))

(declare-fun b!4466773 () Bool)

(declare-fun res!1852979 () Bool)

(assert (=> b!4466773 (=> (not res!1852979) (not e!2781458))))

(assert (=> b!4466773 (= res!1852979 (contains!12815 (extractMap!1076 (toList!4047 lm!1477)) key!3287))))

(assert (= (and start!438580 res!1852976) b!4466771))

(assert (= (and b!4466771 res!1852975) b!4466773))

(assert (= (and b!4466773 res!1852979) b!4466766))

(assert (= (and b!4466766 res!1852977) b!4466760))

(assert (= (and b!4466760 res!1852982) b!4466762))

(assert (= (and b!4466762 (not res!1852980)) b!4466758))

(assert (= (and b!4466758 (not res!1852983)) b!4466764))

(assert (= (and b!4466764 (not res!1852978)) b!4466772))

(assert (= (and b!4466772 c!760284) b!4466765))

(assert (= (and b!4466772 (not c!760284)) b!4466769))

(assert (= (and b!4466772 (not res!1852981)) b!4466761))

(assert (= (and b!4466761 (not res!1852974)) b!4466759))

(assert (= (and b!4466759 (not res!1852984)) b!4466767))

(assert (= (and b!4466767 (not res!1852985)) b!4466763))

(assert (= start!438580 b!4466770))

(assert (= (and start!438580 ((_ is Cons!50272) newBucket!178)) b!4466768))

(declare-fun m!5171933 () Bool)

(assert (=> b!4466758 m!5171933))

(declare-fun m!5171935 () Bool)

(assert (=> b!4466773 m!5171935))

(assert (=> b!4466773 m!5171935))

(declare-fun m!5171937 () Bool)

(assert (=> b!4466773 m!5171937))

(declare-fun m!5171939 () Bool)

(assert (=> b!4466765 m!5171939))

(declare-fun m!5171941 () Bool)

(assert (=> b!4466761 m!5171941))

(declare-fun m!5171943 () Bool)

(assert (=> b!4466766 m!5171943))

(declare-fun m!5171945 () Bool)

(assert (=> b!4466771 m!5171945))

(declare-fun m!5171947 () Bool)

(assert (=> b!4466772 m!5171947))

(declare-fun m!5171949 () Bool)

(assert (=> b!4466759 m!5171949))

(declare-fun m!5171951 () Bool)

(assert (=> b!4466759 m!5171951))

(declare-fun m!5171953 () Bool)

(assert (=> b!4466759 m!5171953))

(declare-fun m!5171955 () Bool)

(assert (=> b!4466759 m!5171955))

(declare-fun m!5171957 () Bool)

(assert (=> b!4466759 m!5171957))

(assert (=> b!4466759 m!5171953))

(declare-fun m!5171959 () Bool)

(assert (=> b!4466759 m!5171959))

(assert (=> b!4466759 m!5171955))

(declare-fun m!5171961 () Bool)

(assert (=> b!4466759 m!5171961))

(declare-fun m!5171963 () Bool)

(assert (=> b!4466759 m!5171963))

(declare-fun m!5171965 () Bool)

(assert (=> b!4466759 m!5171965))

(assert (=> b!4466759 m!5171951))

(assert (=> b!4466759 m!5171957))

(declare-fun m!5171967 () Bool)

(assert (=> b!4466759 m!5171967))

(declare-fun m!5171969 () Bool)

(assert (=> b!4466763 m!5171969))

(declare-fun m!5171971 () Bool)

(assert (=> b!4466762 m!5171971))

(declare-fun m!5171973 () Bool)

(assert (=> b!4466762 m!5171973))

(declare-fun m!5171975 () Bool)

(assert (=> b!4466762 m!5171975))

(declare-fun m!5171977 () Bool)

(assert (=> b!4466762 m!5171977))

(declare-fun m!5171979 () Bool)

(assert (=> b!4466762 m!5171979))

(declare-fun m!5171981 () Bool)

(assert (=> b!4466762 m!5171981))

(declare-fun m!5171983 () Bool)

(assert (=> b!4466762 m!5171983))

(declare-fun m!5171985 () Bool)

(assert (=> start!438580 m!5171985))

(declare-fun m!5171987 () Bool)

(assert (=> start!438580 m!5171987))

(declare-fun m!5171989 () Bool)

(assert (=> b!4466760 m!5171989))

(declare-fun m!5171991 () Bool)

(assert (=> b!4466767 m!5171991))

(declare-fun m!5171993 () Bool)

(assert (=> b!4466767 m!5171993))

(check-sat (not b!4466766) (not b!4466758) (not b!4466767) (not b!4466762) (not b!4466761) (not b!4466759) (not b!4466765) (not b!4466772) (not start!438580) (not b!4466760) (not b!4466773) (not b!4466771) (not b!4466763) (not b!4466770) (not b!4466768) tp_is_empty!27357 tp_is_empty!27359)
(check-sat)
(get-model)

(declare-fun d!1362288 () Bool)

(declare-fun e!2781468 () Bool)

(assert (=> d!1362288 e!2781468))

(declare-fun res!1852997 () Bool)

(assert (=> d!1362288 (=> (not res!1852997) (not e!2781468))))

(declare-fun lt!1656318 () ListLongMap!2679)

(assert (=> d!1362288 (= res!1852997 (contains!12817 lt!1656318 (_1!28552 lt!1656299)))))

(declare-fun lt!1656320 () List!50397)

(assert (=> d!1362288 (= lt!1656318 (ListLongMap!2680 lt!1656320))))

(declare-fun lt!1656319 () Unit!87415)

(declare-fun lt!1656317 () Unit!87415)

(assert (=> d!1362288 (= lt!1656319 lt!1656317)))

(declare-datatypes ((Option!10918 0))(
  ( (None!10917) (Some!10917 (v!44219 List!50396)) )
))
(declare-fun getValueByKey!904 (List!50397 (_ BitVec 64)) Option!10918)

(assert (=> d!1362288 (= (getValueByKey!904 lt!1656320 (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299)))))

(declare-fun lemmaContainsTupThenGetReturnValue!580 (List!50397 (_ BitVec 64) List!50396) Unit!87415)

(assert (=> d!1362288 (= lt!1656317 (lemmaContainsTupThenGetReturnValue!580 lt!1656320 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(declare-fun insertStrictlySorted!326 (List!50397 (_ BitVec 64) List!50396) List!50397)

(assert (=> d!1362288 (= lt!1656320 (insertStrictlySorted!326 (toList!4047 lt!1656294) (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(assert (=> d!1362288 (= (+!1360 lt!1656294 lt!1656299) lt!1656318)))

(declare-fun b!4466784 () Bool)

(declare-fun res!1852996 () Bool)

(assert (=> b!4466784 (=> (not res!1852996) (not e!2781468))))

(assert (=> b!4466784 (= res!1852996 (= (getValueByKey!904 (toList!4047 lt!1656318) (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299))))))

(declare-fun b!4466785 () Bool)

(assert (=> b!4466785 (= e!2781468 (contains!12816 (toList!4047 lt!1656318) lt!1656299))))

(assert (= (and d!1362288 res!1852997) b!4466784))

(assert (= (and b!4466784 res!1852996) b!4466785))

(declare-fun m!5172003 () Bool)

(assert (=> d!1362288 m!5172003))

(declare-fun m!5172005 () Bool)

(assert (=> d!1362288 m!5172005))

(declare-fun m!5172007 () Bool)

(assert (=> d!1362288 m!5172007))

(declare-fun m!5172009 () Bool)

(assert (=> d!1362288 m!5172009))

(declare-fun m!5172011 () Bool)

(assert (=> b!4466784 m!5172011))

(declare-fun m!5172013 () Bool)

(assert (=> b!4466785 m!5172013))

(assert (=> b!4466767 d!1362288))

(declare-fun d!1362298 () Bool)

(assert (=> d!1362298 (= (tail!7493 lm!1477) (ListLongMap!2680 (tail!7492 (toList!4047 lm!1477))))))

(declare-fun bs!793557 () Bool)

(assert (= bs!793557 d!1362298))

(declare-fun m!5172015 () Bool)

(assert (=> bs!793557 m!5172015))

(assert (=> b!4466767 d!1362298))

(declare-fun d!1362300 () Bool)

(declare-fun res!1853013 () Bool)

(declare-fun e!2781484 () Bool)

(assert (=> d!1362300 (=> res!1853013 e!2781484)))

(assert (=> d!1362300 (= res!1853013 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362300 (= (forall!9978 (toList!4047 lm!1477) lambda!162813) e!2781484)))

(declare-fun b!4466803 () Bool)

(declare-fun e!2781485 () Bool)

(assert (=> b!4466803 (= e!2781484 e!2781485)))

(declare-fun res!1853014 () Bool)

(assert (=> b!4466803 (=> (not res!1853014) (not e!2781485))))

(declare-fun dynLambda!21006 (Int tuple2!50516) Bool)

(assert (=> b!4466803 (= res!1853014 (dynLambda!21006 lambda!162813 (h!56032 (toList!4047 lm!1477))))))

(declare-fun b!4466804 () Bool)

(assert (=> b!4466804 (= e!2781485 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162813))))

(assert (= (and d!1362300 (not res!1853013)) b!4466803))

(assert (= (and b!4466803 res!1853014) b!4466804))

(declare-fun b_lambda!148159 () Bool)

(assert (=> (not b_lambda!148159) (not b!4466803)))

(declare-fun m!5172029 () Bool)

(assert (=> b!4466803 m!5172029))

(declare-fun m!5172031 () Bool)

(assert (=> b!4466804 m!5172031))

(assert (=> start!438580 d!1362300))

(declare-fun d!1362306 () Bool)

(declare-fun isStrictlySorted!337 (List!50397) Bool)

(assert (=> d!1362306 (= (inv!65874 lm!1477) (isStrictlySorted!337 (toList!4047 lm!1477)))))

(declare-fun bs!793558 () Bool)

(assert (= bs!793558 d!1362306))

(declare-fun m!5172033 () Bool)

(assert (=> bs!793558 m!5172033))

(assert (=> start!438580 d!1362306))

(declare-fun d!1362308 () Bool)

(declare-fun hash!2435 (Hashable!5415 K!11690) (_ BitVec 64))

(assert (=> d!1362308 (= (hash!2431 hashF!1107 key!3287) (hash!2435 hashF!1107 key!3287))))

(declare-fun bs!793562 () Bool)

(assert (= bs!793562 d!1362308))

(declare-fun m!5172041 () Bool)

(assert (=> bs!793562 m!5172041))

(assert (=> b!4466766 d!1362308))

(declare-fun d!1362312 () Bool)

(assert (=> d!1362312 true))

(assert (=> d!1362312 true))

(declare-fun lambda!162822 () Int)

(declare-fun forall!9980 (List!50396 Int) Bool)

(assert (=> d!1362312 (= (allKeysSameHash!874 newBucket!178 hash!344 hashF!1107) (forall!9980 newBucket!178 lambda!162822))))

(declare-fun bs!793564 () Bool)

(assert (= bs!793564 d!1362312))

(declare-fun m!5172051 () Bool)

(assert (=> bs!793564 m!5172051))

(assert (=> b!4466760 d!1362312))

(declare-fun d!1362318 () Bool)

(declare-fun e!2781493 () Bool)

(assert (=> d!1362318 e!2781493))

(declare-fun res!1853023 () Bool)

(assert (=> d!1362318 (=> (not res!1853023) (not e!2781493))))

(declare-fun lt!1656331 () ListLongMap!2679)

(assert (=> d!1362318 (= res!1853023 (contains!12817 lt!1656331 (_1!28552 lt!1656299)))))

(declare-fun lt!1656333 () List!50397)

(assert (=> d!1362318 (= lt!1656331 (ListLongMap!2680 lt!1656333))))

(declare-fun lt!1656332 () Unit!87415)

(declare-fun lt!1656330 () Unit!87415)

(assert (=> d!1362318 (= lt!1656332 lt!1656330)))

(assert (=> d!1362318 (= (getValueByKey!904 lt!1656333 (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299)))))

(assert (=> d!1362318 (= lt!1656330 (lemmaContainsTupThenGetReturnValue!580 lt!1656333 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(assert (=> d!1362318 (= lt!1656333 (insertStrictlySorted!326 (toList!4047 lm!1477) (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(assert (=> d!1362318 (= (+!1360 lm!1477 lt!1656299) lt!1656331)))

(declare-fun b!4466816 () Bool)

(declare-fun res!1853022 () Bool)

(assert (=> b!4466816 (=> (not res!1853022) (not e!2781493))))

(assert (=> b!4466816 (= res!1853022 (= (getValueByKey!904 (toList!4047 lt!1656331) (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299))))))

(declare-fun b!4466817 () Bool)

(assert (=> b!4466817 (= e!2781493 (contains!12816 (toList!4047 lt!1656331) lt!1656299))))

(assert (= (and d!1362318 res!1853023) b!4466816))

(assert (= (and b!4466816 res!1853022) b!4466817))

(declare-fun m!5172053 () Bool)

(assert (=> d!1362318 m!5172053))

(declare-fun m!5172055 () Bool)

(assert (=> d!1362318 m!5172055))

(declare-fun m!5172057 () Bool)

(assert (=> d!1362318 m!5172057))

(declare-fun m!5172059 () Bool)

(assert (=> d!1362318 m!5172059))

(declare-fun m!5172061 () Bool)

(assert (=> b!4466816 m!5172061))

(declare-fun m!5172063 () Bool)

(assert (=> b!4466817 m!5172063))

(assert (=> b!4466759 d!1362318))

(declare-fun d!1362320 () Bool)

(declare-fun e!2781511 () Bool)

(assert (=> d!1362320 e!2781511))

(declare-fun res!1853032 () Bool)

(assert (=> d!1362320 (=> (not res!1853032) (not e!2781511))))

(declare-fun lt!1656354 () ListMap!3309)

(assert (=> d!1362320 (= res!1853032 (not (contains!12815 lt!1656354 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!58 (List!50396 K!11690) List!50396)

(assert (=> d!1362320 (= lt!1656354 (ListMap!3310 (removePresrvNoDuplicatedKeys!58 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287)))))

(assert (=> d!1362320 (= (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287) lt!1656354)))

(declare-fun b!4466848 () Bool)

(declare-datatypes ((List!50399 0))(
  ( (Nil!50275) (Cons!50275 (h!56036 K!11690) (t!357349 List!50399)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8089 (List!50399) (InoxSet K!11690))

(declare-fun keys!17354 (ListMap!3309) List!50399)

(assert (=> b!4466848 (= e!2781511 (= ((_ map and) (content!8089 (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) ((_ map not) (store ((as const (Array K!11690 Bool)) false) key!3287 true))) (content!8089 (keys!17354 lt!1656354))))))

(assert (= (and d!1362320 res!1853032) b!4466848))

(declare-fun m!5172085 () Bool)

(assert (=> d!1362320 m!5172085))

(declare-fun m!5172087 () Bool)

(assert (=> d!1362320 m!5172087))

(declare-fun m!5172089 () Bool)

(assert (=> b!4466848 m!5172089))

(declare-fun m!5172091 () Bool)

(assert (=> b!4466848 m!5172091))

(assert (=> b!4466848 m!5172091))

(declare-fun m!5172093 () Bool)

(assert (=> b!4466848 m!5172093))

(assert (=> b!4466848 m!5171951))

(declare-fun m!5172095 () Bool)

(assert (=> b!4466848 m!5172095))

(assert (=> b!4466848 m!5172095))

(declare-fun m!5172097 () Bool)

(assert (=> b!4466848 m!5172097))

(assert (=> b!4466759 d!1362320))

(declare-fun d!1362330 () Bool)

(declare-fun content!8090 (List!50396) (InoxSet tuple2!50514))

(assert (=> d!1362330 (= (eq!513 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)) (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287)) (= (content!8090 (toList!4048 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)))) (content!8090 (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287)))))))

(declare-fun bs!793567 () Bool)

(assert (= bs!793567 d!1362330))

(declare-fun m!5172111 () Bool)

(assert (=> bs!793567 m!5172111))

(declare-fun m!5172115 () Bool)

(assert (=> bs!793567 m!5172115))

(assert (=> b!4466759 d!1362330))

(declare-fun bs!793569 () Bool)

(declare-fun d!1362336 () Bool)

(assert (= bs!793569 (and d!1362336 start!438580)))

(declare-fun lambda!162828 () Int)

(assert (=> bs!793569 (= lambda!162828 lambda!162813)))

(assert (=> d!1362336 (contains!12815 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304))) key!3287)))

(declare-fun lt!1656393 () Unit!87415)

(declare-fun choose!28525 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> d!1362336 (= lt!1656393 (choose!28525 (ListLongMap!2680 lt!1656304) key!3287 hashF!1107))))

(assert (=> d!1362336 (forall!9978 (toList!4047 (ListLongMap!2680 lt!1656304)) lambda!162828)))

(assert (=> d!1362336 (= (lemmaListContainsThenExtractedMapContains!16 (ListLongMap!2680 lt!1656304) key!3287 hashF!1107) lt!1656393)))

(declare-fun bs!793570 () Bool)

(assert (= bs!793570 d!1362336))

(declare-fun m!5172141 () Bool)

(assert (=> bs!793570 m!5172141))

(assert (=> bs!793570 m!5172141))

(declare-fun m!5172143 () Bool)

(assert (=> bs!793570 m!5172143))

(declare-fun m!5172145 () Bool)

(assert (=> bs!793570 m!5172145))

(declare-fun m!5172147 () Bool)

(assert (=> bs!793570 m!5172147))

(assert (=> b!4466759 d!1362336))

(declare-fun bs!793591 () Bool)

(declare-fun d!1362344 () Bool)

(assert (= bs!793591 (and d!1362344 start!438580)))

(declare-fun lambda!162839 () Int)

(assert (=> bs!793591 (= lambda!162839 lambda!162813)))

(declare-fun bs!793592 () Bool)

(assert (= bs!793592 (and d!1362344 d!1362336)))

(assert (=> bs!793592 (= lambda!162839 lambda!162828)))

(declare-fun lt!1656416 () ListMap!3309)

(declare-fun invariantList!923 (List!50396) Bool)

(assert (=> d!1362344 (invariantList!923 (toList!4048 lt!1656416))))

(declare-fun e!2781549 () ListMap!3309)

(assert (=> d!1362344 (= lt!1656416 e!2781549)))

(declare-fun c!760313 () Bool)

(assert (=> d!1362344 (= c!760313 ((_ is Cons!50273) (Cons!50273 lt!1656299 Nil!50273)))))

(assert (=> d!1362344 (forall!9978 (Cons!50273 lt!1656299 Nil!50273) lambda!162839)))

(assert (=> d!1362344 (= (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)) lt!1656416)))

(declare-fun b!4466909 () Bool)

(declare-fun addToMapMapFromBucket!585 (List!50396 ListMap!3309) ListMap!3309)

(assert (=> b!4466909 (= e!2781549 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))))))

(declare-fun b!4466910 () Bool)

(assert (=> b!4466910 (= e!2781549 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362344 c!760313) b!4466909))

(assert (= (and d!1362344 (not c!760313)) b!4466910))

(declare-fun m!5172217 () Bool)

(assert (=> d!1362344 m!5172217))

(declare-fun m!5172219 () Bool)

(assert (=> d!1362344 m!5172219))

(declare-fun m!5172221 () Bool)

(assert (=> b!4466909 m!5172221))

(assert (=> b!4466909 m!5172221))

(declare-fun m!5172223 () Bool)

(assert (=> b!4466909 m!5172223))

(assert (=> b!4466759 d!1362344))

(declare-fun bs!793593 () Bool)

(declare-fun d!1362362 () Bool)

(assert (= bs!793593 (and d!1362362 start!438580)))

(declare-fun lambda!162840 () Int)

(assert (=> bs!793593 (= lambda!162840 lambda!162813)))

(declare-fun bs!793594 () Bool)

(assert (= bs!793594 (and d!1362362 d!1362336)))

(assert (=> bs!793594 (= lambda!162840 lambda!162828)))

(declare-fun bs!793595 () Bool)

(assert (= bs!793595 (and d!1362362 d!1362344)))

(assert (=> bs!793595 (= lambda!162840 lambda!162839)))

(declare-fun lt!1656417 () ListMap!3309)

(assert (=> d!1362362 (invariantList!923 (toList!4048 lt!1656417))))

(declare-fun e!2781550 () ListMap!3309)

(assert (=> d!1362362 (= lt!1656417 e!2781550)))

(declare-fun c!760314 () Bool)

(assert (=> d!1362362 (= c!760314 ((_ is Cons!50273) (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))

(assert (=> d!1362362 (forall!9978 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273) lambda!162840)))

(assert (=> d!1362362 (= (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) lt!1656417)))

(declare-fun b!4466911 () Bool)

(assert (=> b!4466911 (= e!2781550 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun b!4466912 () Bool)

(assert (=> b!4466912 (= e!2781550 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362362 c!760314) b!4466911))

(assert (= (and d!1362362 (not c!760314)) b!4466912))

(declare-fun m!5172225 () Bool)

(assert (=> d!1362362 m!5172225))

(declare-fun m!5172227 () Bool)

(assert (=> d!1362362 m!5172227))

(declare-fun m!5172229 () Bool)

(assert (=> b!4466911 m!5172229))

(assert (=> b!4466911 m!5172229))

(declare-fun m!5172231 () Bool)

(assert (=> b!4466911 m!5172231))

(assert (=> b!4466759 d!1362362))

(declare-fun b!4466958 () Bool)

(declare-fun e!2781586 () Unit!87415)

(declare-fun e!2781588 () Unit!87415)

(assert (=> b!4466958 (= e!2781586 e!2781588)))

(declare-fun c!760324 () Bool)

(declare-fun call!310977 () Bool)

(assert (=> b!4466958 (= c!760324 call!310977)))

(declare-fun b!4466959 () Bool)

(declare-fun e!2781587 () List!50399)

(assert (=> b!4466959 (= e!2781587 (keys!17354 (extractMap!1076 lt!1656304)))))

(declare-fun b!4466960 () Bool)

(assert (=> b!4466960 false))

(declare-fun lt!1656451 () Unit!87415)

(declare-fun lt!1656450 () Unit!87415)

(assert (=> b!4466960 (= lt!1656451 lt!1656450)))

(declare-fun containsKey!1459 (List!50396 K!11690) Bool)

(assert (=> b!4466960 (containsKey!1459 (toList!4048 (extractMap!1076 lt!1656304)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!370 (List!50396 K!11690) Unit!87415)

(assert (=> b!4466960 (= lt!1656450 (lemmaInGetKeysListThenContainsKey!370 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(declare-fun Unit!87424 () Unit!87415)

(assert (=> b!4466960 (= e!2781588 Unit!87424)))

(declare-fun b!4466961 () Bool)

(declare-fun lt!1656449 () Unit!87415)

(assert (=> b!4466961 (= e!2781586 lt!1656449)))

(declare-fun lt!1656447 () Unit!87415)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!808 (List!50396 K!11690) Unit!87415)

(assert (=> b!4466961 (= lt!1656447 (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(declare-datatypes ((Option!10919 0))(
  ( (None!10918) (Some!10918 (v!44220 V!11936)) )
))
(declare-fun isDefined!8205 (Option!10919) Bool)

(declare-fun getValueByKey!905 (List!50396 K!11690) Option!10919)

(assert (=> b!4466961 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(declare-fun lt!1656446 () Unit!87415)

(assert (=> b!4466961 (= lt!1656446 lt!1656447)))

(declare-fun lemmaInListThenGetKeysListContains!367 (List!50396 K!11690) Unit!87415)

(assert (=> b!4466961 (= lt!1656449 (lemmaInListThenGetKeysListContains!367 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(assert (=> b!4466961 call!310977))

(declare-fun b!4466962 () Bool)

(declare-fun e!2781585 () Bool)

(declare-fun contains!12819 (List!50399 K!11690) Bool)

(assert (=> b!4466962 (= e!2781585 (not (contains!12819 (keys!17354 (extractMap!1076 lt!1656304)) key!3287)))))

(declare-fun b!4466963 () Bool)

(declare-fun getKeysList!371 (List!50396) List!50399)

(assert (=> b!4466963 (= e!2781587 (getKeysList!371 (toList!4048 (extractMap!1076 lt!1656304))))))

(declare-fun bm!310972 () Bool)

(assert (=> bm!310972 (= call!310977 (contains!12819 e!2781587 key!3287))))

(declare-fun c!760322 () Bool)

(declare-fun c!760323 () Bool)

(assert (=> bm!310972 (= c!760322 c!760323)))

(declare-fun b!4466964 () Bool)

(declare-fun e!2781589 () Bool)

(assert (=> b!4466964 (= e!2781589 (contains!12819 (keys!17354 (extractMap!1076 lt!1656304)) key!3287))))

(declare-fun d!1362364 () Bool)

(declare-fun e!2781590 () Bool)

(assert (=> d!1362364 e!2781590))

(declare-fun res!1853076 () Bool)

(assert (=> d!1362364 (=> res!1853076 e!2781590)))

(assert (=> d!1362364 (= res!1853076 e!2781585)))

(declare-fun res!1853078 () Bool)

(assert (=> d!1362364 (=> (not res!1853078) (not e!2781585))))

(declare-fun lt!1656445 () Bool)

(assert (=> d!1362364 (= res!1853078 (not lt!1656445))))

(declare-fun lt!1656444 () Bool)

(assert (=> d!1362364 (= lt!1656445 lt!1656444)))

(declare-fun lt!1656448 () Unit!87415)

(assert (=> d!1362364 (= lt!1656448 e!2781586)))

(assert (=> d!1362364 (= c!760323 lt!1656444)))

(assert (=> d!1362364 (= lt!1656444 (containsKey!1459 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(assert (=> d!1362364 (= (contains!12815 (extractMap!1076 lt!1656304) key!3287) lt!1656445)))

(declare-fun b!4466965 () Bool)

(declare-fun Unit!87425 () Unit!87415)

(assert (=> b!4466965 (= e!2781588 Unit!87425)))

(declare-fun b!4466966 () Bool)

(assert (=> b!4466966 (= e!2781590 e!2781589)))

(declare-fun res!1853077 () Bool)

(assert (=> b!4466966 (=> (not res!1853077) (not e!2781589))))

(assert (=> b!4466966 (= res!1853077 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287)))))

(assert (= (and d!1362364 c!760323) b!4466961))

(assert (= (and d!1362364 (not c!760323)) b!4466958))

(assert (= (and b!4466958 c!760324) b!4466960))

(assert (= (and b!4466958 (not c!760324)) b!4466965))

(assert (= (or b!4466961 b!4466958) bm!310972))

(assert (= (and bm!310972 c!760322) b!4466963))

(assert (= (and bm!310972 (not c!760322)) b!4466959))

(assert (= (and d!1362364 res!1853078) b!4466962))

(assert (= (and d!1362364 (not res!1853076)) b!4466966))

(assert (= (and b!4466966 res!1853077) b!4466964))

(declare-fun m!5172277 () Bool)

(assert (=> b!4466966 m!5172277))

(assert (=> b!4466966 m!5172277))

(declare-fun m!5172279 () Bool)

(assert (=> b!4466966 m!5172279))

(assert (=> b!4466962 m!5171955))

(declare-fun m!5172281 () Bool)

(assert (=> b!4466962 m!5172281))

(assert (=> b!4466962 m!5172281))

(declare-fun m!5172283 () Bool)

(assert (=> b!4466962 m!5172283))

(assert (=> b!4466964 m!5171955))

(assert (=> b!4466964 m!5172281))

(assert (=> b!4466964 m!5172281))

(assert (=> b!4466964 m!5172283))

(declare-fun m!5172285 () Bool)

(assert (=> b!4466963 m!5172285))

(declare-fun m!5172287 () Bool)

(assert (=> bm!310972 m!5172287))

(assert (=> b!4466959 m!5171955))

(assert (=> b!4466959 m!5172281))

(declare-fun m!5172289 () Bool)

(assert (=> b!4466960 m!5172289))

(declare-fun m!5172291 () Bool)

(assert (=> b!4466960 m!5172291))

(declare-fun m!5172293 () Bool)

(assert (=> b!4466961 m!5172293))

(assert (=> b!4466961 m!5172277))

(assert (=> b!4466961 m!5172277))

(assert (=> b!4466961 m!5172279))

(declare-fun m!5172295 () Bool)

(assert (=> b!4466961 m!5172295))

(assert (=> d!1362364 m!5172289))

(assert (=> b!4466759 d!1362364))

(declare-fun d!1362382 () Bool)

(assert (=> d!1362382 (eq!513 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)) (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))))

(declare-fun lt!1656454 () Unit!87415)

(declare-fun choose!28527 ((_ BitVec 64) List!50396 List!50396 K!11690 Hashable!5415) Unit!87415)

(assert (=> d!1362382 (= lt!1656454 (choose!28527 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1362382 (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477))))))

(assert (=> d!1362382 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!12 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1656454)))

(declare-fun bs!793616 () Bool)

(assert (= bs!793616 d!1362382))

(assert (=> bs!793616 m!5171951))

(assert (=> bs!793616 m!5171953))

(assert (=> bs!793616 m!5171951))

(declare-fun m!5172297 () Bool)

(assert (=> bs!793616 m!5172297))

(declare-fun m!5172299 () Bool)

(assert (=> bs!793616 m!5172299))

(declare-fun m!5172301 () Bool)

(assert (=> bs!793616 m!5172301))

(assert (=> bs!793616 m!5171953))

(declare-fun m!5172303 () Bool)

(assert (=> bs!793616 m!5172303))

(assert (=> bs!793616 m!5172301))

(assert (=> b!4466759 d!1362382))

(declare-fun bs!793617 () Bool)

(declare-fun d!1362384 () Bool)

(assert (= bs!793617 (and d!1362384 start!438580)))

(declare-fun lambda!162845 () Int)

(assert (=> bs!793617 (= lambda!162845 lambda!162813)))

(declare-fun bs!793618 () Bool)

(assert (= bs!793618 (and d!1362384 d!1362336)))

(assert (=> bs!793618 (= lambda!162845 lambda!162828)))

(declare-fun bs!793619 () Bool)

(assert (= bs!793619 (and d!1362384 d!1362344)))

(assert (=> bs!793619 (= lambda!162845 lambda!162839)))

(declare-fun bs!793620 () Bool)

(assert (= bs!793620 (and d!1362384 d!1362362)))

(assert (=> bs!793620 (= lambda!162845 lambda!162840)))

(declare-fun lt!1656455 () ListMap!3309)

(assert (=> d!1362384 (invariantList!923 (toList!4048 lt!1656455))))

(declare-fun e!2781591 () ListMap!3309)

(assert (=> d!1362384 (= lt!1656455 e!2781591)))

(declare-fun c!760325 () Bool)

(assert (=> d!1362384 (= c!760325 ((_ is Cons!50273) lt!1656304))))

(assert (=> d!1362384 (forall!9978 lt!1656304 lambda!162845)))

(assert (=> d!1362384 (= (extractMap!1076 lt!1656304) lt!1656455)))

(declare-fun b!4466967 () Bool)

(assert (=> b!4466967 (= e!2781591 (addToMapMapFromBucket!585 (_2!28552 (h!56032 lt!1656304)) (extractMap!1076 (t!357347 lt!1656304))))))

(declare-fun b!4466968 () Bool)

(assert (=> b!4466968 (= e!2781591 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362384 c!760325) b!4466967))

(assert (= (and d!1362384 (not c!760325)) b!4466968))

(declare-fun m!5172305 () Bool)

(assert (=> d!1362384 m!5172305))

(declare-fun m!5172307 () Bool)

(assert (=> d!1362384 m!5172307))

(declare-fun m!5172309 () Bool)

(assert (=> b!4466967 m!5172309))

(assert (=> b!4466967 m!5172309))

(declare-fun m!5172311 () Bool)

(assert (=> b!4466967 m!5172311))

(assert (=> b!4466759 d!1362384))

(declare-fun d!1362386 () Bool)

(assert (=> d!1362386 (= (tail!7492 (toList!4047 lt!1656305)) (t!357347 (toList!4047 lt!1656305)))))

(assert (=> b!4466759 d!1362386))

(declare-fun d!1362388 () Bool)

(declare-fun res!1853083 () Bool)

(declare-fun e!2781596 () Bool)

(assert (=> d!1362388 (=> res!1853083 e!2781596)))

(assert (=> d!1362388 (= res!1853083 (not ((_ is Cons!50272) newBucket!178)))))

(assert (=> d!1362388 (= (noDuplicateKeys!1020 newBucket!178) e!2781596)))

(declare-fun b!4466973 () Bool)

(declare-fun e!2781597 () Bool)

(assert (=> b!4466973 (= e!2781596 e!2781597)))

(declare-fun res!1853084 () Bool)

(assert (=> b!4466973 (=> (not res!1853084) (not e!2781597))))

(assert (=> b!4466973 (= res!1853084 (not (containsKey!1456 (t!357346 newBucket!178) (_1!28551 (h!56031 newBucket!178)))))))

(declare-fun b!4466974 () Bool)

(assert (=> b!4466974 (= e!2781597 (noDuplicateKeys!1020 (t!357346 newBucket!178)))))

(assert (= (and d!1362388 (not res!1853083)) b!4466973))

(assert (= (and b!4466973 res!1853084) b!4466974))

(declare-fun m!5172313 () Bool)

(assert (=> b!4466973 m!5172313))

(declare-fun m!5172315 () Bool)

(assert (=> b!4466974 m!5172315))

(assert (=> b!4466758 d!1362388))

(declare-fun b!4466975 () Bool)

(declare-fun e!2781599 () Unit!87415)

(declare-fun e!2781601 () Unit!87415)

(assert (=> b!4466975 (= e!2781599 e!2781601)))

(declare-fun c!760328 () Bool)

(declare-fun call!310978 () Bool)

(assert (=> b!4466975 (= c!760328 call!310978)))

(declare-fun b!4466976 () Bool)

(declare-fun e!2781600 () List!50399)

(assert (=> b!4466976 (= e!2781600 (keys!17354 (extractMap!1076 (toList!4047 lm!1477))))))

(declare-fun b!4466977 () Bool)

(assert (=> b!4466977 false))

(declare-fun lt!1656463 () Unit!87415)

(declare-fun lt!1656462 () Unit!87415)

(assert (=> b!4466977 (= lt!1656463 lt!1656462)))

(assert (=> b!4466977 (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287)))

(assert (=> b!4466977 (= lt!1656462 (lemmaInGetKeysListThenContainsKey!370 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(declare-fun Unit!87426 () Unit!87415)

(assert (=> b!4466977 (= e!2781601 Unit!87426)))

(declare-fun b!4466978 () Bool)

(declare-fun lt!1656461 () Unit!87415)

(assert (=> b!4466978 (= e!2781599 lt!1656461)))

(declare-fun lt!1656459 () Unit!87415)

(assert (=> b!4466978 (= lt!1656459 (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> b!4466978 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(declare-fun lt!1656458 () Unit!87415)

(assert (=> b!4466978 (= lt!1656458 lt!1656459)))

(assert (=> b!4466978 (= lt!1656461 (lemmaInListThenGetKeysListContains!367 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> b!4466978 call!310978))

(declare-fun b!4466979 () Bool)

(declare-fun e!2781598 () Bool)

(assert (=> b!4466979 (= e!2781598 (not (contains!12819 (keys!17354 (extractMap!1076 (toList!4047 lm!1477))) key!3287)))))

(declare-fun b!4466980 () Bool)

(assert (=> b!4466980 (= e!2781600 (getKeysList!371 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))

(declare-fun bm!310973 () Bool)

(assert (=> bm!310973 (= call!310978 (contains!12819 e!2781600 key!3287))))

(declare-fun c!760326 () Bool)

(declare-fun c!760327 () Bool)

(assert (=> bm!310973 (= c!760326 c!760327)))

(declare-fun b!4466981 () Bool)

(declare-fun e!2781602 () Bool)

(assert (=> b!4466981 (= e!2781602 (contains!12819 (keys!17354 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(declare-fun d!1362390 () Bool)

(declare-fun e!2781603 () Bool)

(assert (=> d!1362390 e!2781603))

(declare-fun res!1853085 () Bool)

(assert (=> d!1362390 (=> res!1853085 e!2781603)))

(assert (=> d!1362390 (= res!1853085 e!2781598)))

(declare-fun res!1853087 () Bool)

(assert (=> d!1362390 (=> (not res!1853087) (not e!2781598))))

(declare-fun lt!1656457 () Bool)

(assert (=> d!1362390 (= res!1853087 (not lt!1656457))))

(declare-fun lt!1656456 () Bool)

(assert (=> d!1362390 (= lt!1656457 lt!1656456)))

(declare-fun lt!1656460 () Unit!87415)

(assert (=> d!1362390 (= lt!1656460 e!2781599)))

(assert (=> d!1362390 (= c!760327 lt!1656456)))

(assert (=> d!1362390 (= lt!1656456 (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> d!1362390 (= (contains!12815 (extractMap!1076 (toList!4047 lm!1477)) key!3287) lt!1656457)))

(declare-fun b!4466982 () Bool)

(declare-fun Unit!87427 () Unit!87415)

(assert (=> b!4466982 (= e!2781601 Unit!87427)))

(declare-fun b!4466983 () Bool)

(assert (=> b!4466983 (= e!2781603 e!2781602)))

(declare-fun res!1853086 () Bool)

(assert (=> b!4466983 (=> (not res!1853086) (not e!2781602))))

(assert (=> b!4466983 (= res!1853086 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287)))))

(assert (= (and d!1362390 c!760327) b!4466978))

(assert (= (and d!1362390 (not c!760327)) b!4466975))

(assert (= (and b!4466975 c!760328) b!4466977))

(assert (= (and b!4466975 (not c!760328)) b!4466982))

(assert (= (or b!4466978 b!4466975) bm!310973))

(assert (= (and bm!310973 c!760326) b!4466980))

(assert (= (and bm!310973 (not c!760326)) b!4466976))

(assert (= (and d!1362390 res!1853087) b!4466979))

(assert (= (and d!1362390 (not res!1853085)) b!4466983))

(assert (= (and b!4466983 res!1853086) b!4466981))

(declare-fun m!5172317 () Bool)

(assert (=> b!4466983 m!5172317))

(assert (=> b!4466983 m!5172317))

(declare-fun m!5172319 () Bool)

(assert (=> b!4466983 m!5172319))

(assert (=> b!4466979 m!5171935))

(declare-fun m!5172321 () Bool)

(assert (=> b!4466979 m!5172321))

(assert (=> b!4466979 m!5172321))

(declare-fun m!5172323 () Bool)

(assert (=> b!4466979 m!5172323))

(assert (=> b!4466981 m!5171935))

(assert (=> b!4466981 m!5172321))

(assert (=> b!4466981 m!5172321))

(assert (=> b!4466981 m!5172323))

(declare-fun m!5172325 () Bool)

(assert (=> b!4466980 m!5172325))

(declare-fun m!5172327 () Bool)

(assert (=> bm!310973 m!5172327))

(assert (=> b!4466976 m!5171935))

(assert (=> b!4466976 m!5172321))

(declare-fun m!5172329 () Bool)

(assert (=> b!4466977 m!5172329))

(declare-fun m!5172331 () Bool)

(assert (=> b!4466977 m!5172331))

(declare-fun m!5172333 () Bool)

(assert (=> b!4466978 m!5172333))

(assert (=> b!4466978 m!5172317))

(assert (=> b!4466978 m!5172317))

(assert (=> b!4466978 m!5172319))

(declare-fun m!5172335 () Bool)

(assert (=> b!4466978 m!5172335))

(assert (=> d!1362390 m!5172329))

(assert (=> b!4466773 d!1362390))

(declare-fun bs!793621 () Bool)

(declare-fun d!1362392 () Bool)

(assert (= bs!793621 (and d!1362392 d!1362384)))

(declare-fun lambda!162846 () Int)

(assert (=> bs!793621 (= lambda!162846 lambda!162845)))

(declare-fun bs!793622 () Bool)

(assert (= bs!793622 (and d!1362392 d!1362362)))

(assert (=> bs!793622 (= lambda!162846 lambda!162840)))

(declare-fun bs!793623 () Bool)

(assert (= bs!793623 (and d!1362392 d!1362336)))

(assert (=> bs!793623 (= lambda!162846 lambda!162828)))

(declare-fun bs!793624 () Bool)

(assert (= bs!793624 (and d!1362392 start!438580)))

(assert (=> bs!793624 (= lambda!162846 lambda!162813)))

(declare-fun bs!793625 () Bool)

(assert (= bs!793625 (and d!1362392 d!1362344)))

(assert (=> bs!793625 (= lambda!162846 lambda!162839)))

(declare-fun lt!1656464 () ListMap!3309)

(assert (=> d!1362392 (invariantList!923 (toList!4048 lt!1656464))))

(declare-fun e!2781604 () ListMap!3309)

(assert (=> d!1362392 (= lt!1656464 e!2781604)))

(declare-fun c!760329 () Bool)

(assert (=> d!1362392 (= c!760329 ((_ is Cons!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362392 (forall!9978 (toList!4047 lm!1477) lambda!162846)))

(assert (=> d!1362392 (= (extractMap!1076 (toList!4047 lm!1477)) lt!1656464)))

(declare-fun b!4466984 () Bool)

(assert (=> b!4466984 (= e!2781604 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))))))

(declare-fun b!4466985 () Bool)

(assert (=> b!4466985 (= e!2781604 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362392 c!760329) b!4466984))

(assert (= (and d!1362392 (not c!760329)) b!4466985))

(declare-fun m!5172337 () Bool)

(assert (=> d!1362392 m!5172337))

(declare-fun m!5172339 () Bool)

(assert (=> d!1362392 m!5172339))

(declare-fun m!5172341 () Bool)

(assert (=> b!4466984 m!5172341))

(assert (=> b!4466984 m!5172341))

(declare-fun m!5172343 () Bool)

(assert (=> b!4466984 m!5172343))

(assert (=> b!4466773 d!1362392))

(declare-fun bs!793626 () Bool)

(declare-fun d!1362394 () Bool)

(assert (= bs!793626 (and d!1362394 d!1362384)))

(declare-fun lambda!162849 () Int)

(assert (=> bs!793626 (= lambda!162849 lambda!162845)))

(declare-fun bs!793627 () Bool)

(assert (= bs!793627 (and d!1362394 d!1362362)))

(assert (=> bs!793627 (= lambda!162849 lambda!162840)))

(declare-fun bs!793628 () Bool)

(assert (= bs!793628 (and d!1362394 d!1362392)))

(assert (=> bs!793628 (= lambda!162849 lambda!162846)))

(declare-fun bs!793629 () Bool)

(assert (= bs!793629 (and d!1362394 d!1362336)))

(assert (=> bs!793629 (= lambda!162849 lambda!162828)))

(declare-fun bs!793630 () Bool)

(assert (= bs!793630 (and d!1362394 start!438580)))

(assert (=> bs!793630 (= lambda!162849 lambda!162813)))

(declare-fun bs!793631 () Bool)

(assert (= bs!793631 (and d!1362394 d!1362344)))

(assert (=> bs!793631 (= lambda!162849 lambda!162839)))

(assert (=> d!1362394 (contains!12817 lm!1477 (hash!2431 hashF!1107 key!3287))))

(declare-fun lt!1656467 () Unit!87415)

(declare-fun choose!28528 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> d!1362394 (= lt!1656467 (choose!28528 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1362394 (forall!9978 (toList!4047 lm!1477) lambda!162849)))

(assert (=> d!1362394 (= (lemmaInGenMapThenLongMapContainsHash!94 lm!1477 key!3287 hashF!1107) lt!1656467)))

(declare-fun bs!793632 () Bool)

(assert (= bs!793632 d!1362394))

(assert (=> bs!793632 m!5171943))

(assert (=> bs!793632 m!5171943))

(declare-fun m!5172345 () Bool)

(assert (=> bs!793632 m!5172345))

(declare-fun m!5172347 () Bool)

(assert (=> bs!793632 m!5172347))

(declare-fun m!5172349 () Bool)

(assert (=> bs!793632 m!5172349))

(assert (=> b!4466762 d!1362394))

(declare-fun d!1362396 () Bool)

(declare-fun get!16383 (Option!10918) List!50396)

(assert (=> d!1362396 (= (apply!11757 lm!1477 hash!344) (get!16383 (getValueByKey!904 (toList!4047 lm!1477) hash!344)))))

(declare-fun bs!793633 () Bool)

(assert (= bs!793633 d!1362396))

(declare-fun m!5172351 () Bool)

(assert (=> bs!793633 m!5172351))

(assert (=> bs!793633 m!5172351))

(declare-fun m!5172353 () Bool)

(assert (=> bs!793633 m!5172353))

(assert (=> b!4466762 d!1362396))

(declare-fun d!1362398 () Bool)

(assert (=> d!1362398 (dynLambda!21006 lambda!162813 lt!1656297)))

(declare-fun lt!1656470 () Unit!87415)

(declare-fun choose!28529 (List!50397 Int tuple2!50516) Unit!87415)

(assert (=> d!1362398 (= lt!1656470 (choose!28529 (toList!4047 lm!1477) lambda!162813 lt!1656297))))

(declare-fun e!2781607 () Bool)

(assert (=> d!1362398 e!2781607))

(declare-fun res!1853090 () Bool)

(assert (=> d!1362398 (=> (not res!1853090) (not e!2781607))))

(assert (=> d!1362398 (= res!1853090 (forall!9978 (toList!4047 lm!1477) lambda!162813))))

(assert (=> d!1362398 (= (forallContained!2249 (toList!4047 lm!1477) lambda!162813 lt!1656297) lt!1656470)))

(declare-fun b!4466988 () Bool)

(assert (=> b!4466988 (= e!2781607 (contains!12816 (toList!4047 lm!1477) lt!1656297))))

(assert (= (and d!1362398 res!1853090) b!4466988))

(declare-fun b_lambda!148171 () Bool)

(assert (=> (not b_lambda!148171) (not d!1362398)))

(declare-fun m!5172355 () Bool)

(assert (=> d!1362398 m!5172355))

(declare-fun m!5172357 () Bool)

(assert (=> d!1362398 m!5172357))

(assert (=> d!1362398 m!5171985))

(assert (=> b!4466988 m!5171971))

(assert (=> b!4466762 d!1362398))

(declare-fun d!1362400 () Bool)

(declare-fun lt!1656473 () List!50396)

(assert (=> d!1362400 (not (containsKey!1456 lt!1656473 key!3287))))

(declare-fun e!2781612 () List!50396)

(assert (=> d!1362400 (= lt!1656473 e!2781612)))

(declare-fun c!760335 () Bool)

(assert (=> d!1362400 (= c!760335 (and ((_ is Cons!50272) lt!1656307) (= (_1!28551 (h!56031 lt!1656307)) key!3287)))))

(assert (=> d!1362400 (noDuplicateKeys!1020 lt!1656307)))

(assert (=> d!1362400 (= (removePairForKey!647 lt!1656307 key!3287) lt!1656473)))

(declare-fun b!4466998 () Bool)

(declare-fun e!2781613 () List!50396)

(assert (=> b!4466998 (= e!2781612 e!2781613)))

(declare-fun c!760334 () Bool)

(assert (=> b!4466998 (= c!760334 ((_ is Cons!50272) lt!1656307))))

(declare-fun b!4466997 () Bool)

(assert (=> b!4466997 (= e!2781612 (t!357346 lt!1656307))))

(declare-fun b!4467000 () Bool)

(assert (=> b!4467000 (= e!2781613 Nil!50272)))

(declare-fun b!4466999 () Bool)

(assert (=> b!4466999 (= e!2781613 (Cons!50272 (h!56031 lt!1656307) (removePairForKey!647 (t!357346 lt!1656307) key!3287)))))

(assert (= (and d!1362400 c!760335) b!4466997))

(assert (= (and d!1362400 (not c!760335)) b!4466998))

(assert (= (and b!4466998 c!760334) b!4466999))

(assert (= (and b!4466998 (not c!760334)) b!4467000))

(declare-fun m!5172359 () Bool)

(assert (=> d!1362400 m!5172359))

(declare-fun m!5172361 () Bool)

(assert (=> d!1362400 m!5172361))

(declare-fun m!5172363 () Bool)

(assert (=> b!4466999 m!5172363))

(assert (=> b!4466762 d!1362400))

(declare-fun d!1362402 () Bool)

(declare-fun e!2781618 () Bool)

(assert (=> d!1362402 e!2781618))

(declare-fun res!1853093 () Bool)

(assert (=> d!1362402 (=> res!1853093 e!2781618)))

(declare-fun lt!1656485 () Bool)

(assert (=> d!1362402 (= res!1853093 (not lt!1656485))))

(declare-fun lt!1656484 () Bool)

(assert (=> d!1362402 (= lt!1656485 lt!1656484)))

(declare-fun lt!1656483 () Unit!87415)

(declare-fun e!2781619 () Unit!87415)

(assert (=> d!1362402 (= lt!1656483 e!2781619)))

(declare-fun c!760338 () Bool)

(assert (=> d!1362402 (= c!760338 lt!1656484)))

(declare-fun containsKey!1460 (List!50397 (_ BitVec 64)) Bool)

(assert (=> d!1362402 (= lt!1656484 (containsKey!1460 (toList!4047 lm!1477) lt!1656298))))

(assert (=> d!1362402 (= (contains!12817 lm!1477 lt!1656298) lt!1656485)))

(declare-fun b!4467007 () Bool)

(declare-fun lt!1656482 () Unit!87415)

(assert (=> b!4467007 (= e!2781619 lt!1656482)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!809 (List!50397 (_ BitVec 64)) Unit!87415)

(assert (=> b!4467007 (= lt!1656482 (lemmaContainsKeyImpliesGetValueByKeyDefined!809 (toList!4047 lm!1477) lt!1656298))))

(declare-fun isDefined!8206 (Option!10918) Bool)

(assert (=> b!4467007 (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) lt!1656298))))

(declare-fun b!4467008 () Bool)

(declare-fun Unit!87428 () Unit!87415)

(assert (=> b!4467008 (= e!2781619 Unit!87428)))

(declare-fun b!4467009 () Bool)

(assert (=> b!4467009 (= e!2781618 (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) lt!1656298)))))

(assert (= (and d!1362402 c!760338) b!4467007))

(assert (= (and d!1362402 (not c!760338)) b!4467008))

(assert (= (and d!1362402 (not res!1853093)) b!4467009))

(declare-fun m!5172365 () Bool)

(assert (=> d!1362402 m!5172365))

(declare-fun m!5172367 () Bool)

(assert (=> b!4467007 m!5172367))

(declare-fun m!5172369 () Bool)

(assert (=> b!4467007 m!5172369))

(assert (=> b!4467007 m!5172369))

(declare-fun m!5172371 () Bool)

(assert (=> b!4467007 m!5172371))

(assert (=> b!4467009 m!5172369))

(assert (=> b!4467009 m!5172369))

(assert (=> b!4467009 m!5172371))

(assert (=> b!4466762 d!1362402))

(declare-fun d!1362404 () Bool)

(assert (=> d!1362404 (contains!12816 (toList!4047 lm!1477) (tuple2!50517 hash!344 lt!1656307))))

(declare-fun lt!1656488 () Unit!87415)

(declare-fun choose!28530 (List!50397 (_ BitVec 64) List!50396) Unit!87415)

(assert (=> d!1362404 (= lt!1656488 (choose!28530 (toList!4047 lm!1477) hash!344 lt!1656307))))

(declare-fun e!2781622 () Bool)

(assert (=> d!1362404 e!2781622))

(declare-fun res!1853096 () Bool)

(assert (=> d!1362404 (=> (not res!1853096) (not e!2781622))))

(assert (=> d!1362404 (= res!1853096 (isStrictlySorted!337 (toList!4047 lm!1477)))))

(assert (=> d!1362404 (= (lemmaGetValueByKeyImpliesContainsTuple!532 (toList!4047 lm!1477) hash!344 lt!1656307) lt!1656488)))

(declare-fun b!4467012 () Bool)

(assert (=> b!4467012 (= e!2781622 (= (getValueByKey!904 (toList!4047 lm!1477) hash!344) (Some!10917 lt!1656307)))))

(assert (= (and d!1362404 res!1853096) b!4467012))

(declare-fun m!5172373 () Bool)

(assert (=> d!1362404 m!5172373))

(declare-fun m!5172375 () Bool)

(assert (=> d!1362404 m!5172375))

(assert (=> d!1362404 m!5172033))

(assert (=> b!4467012 m!5172351))

(assert (=> b!4466762 d!1362404))

(declare-fun d!1362406 () Bool)

(declare-fun lt!1656491 () Bool)

(declare-fun content!8092 (List!50397) (InoxSet tuple2!50516))

(assert (=> d!1362406 (= lt!1656491 (select (content!8092 (toList!4047 lm!1477)) lt!1656297))))

(declare-fun e!2781628 () Bool)

(assert (=> d!1362406 (= lt!1656491 e!2781628)))

(declare-fun res!1853101 () Bool)

(assert (=> d!1362406 (=> (not res!1853101) (not e!2781628))))

(assert (=> d!1362406 (= res!1853101 ((_ is Cons!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362406 (= (contains!12816 (toList!4047 lm!1477) lt!1656297) lt!1656491)))

(declare-fun b!4467017 () Bool)

(declare-fun e!2781627 () Bool)

(assert (=> b!4467017 (= e!2781628 e!2781627)))

(declare-fun res!1853102 () Bool)

(assert (=> b!4467017 (=> res!1853102 e!2781627)))

(assert (=> b!4467017 (= res!1853102 (= (h!56032 (toList!4047 lm!1477)) lt!1656297))))

(declare-fun b!4467018 () Bool)

(assert (=> b!4467018 (= e!2781627 (contains!12816 (t!357347 (toList!4047 lm!1477)) lt!1656297))))

(assert (= (and d!1362406 res!1853101) b!4467017))

(assert (= (and b!4467017 (not res!1853102)) b!4467018))

(declare-fun m!5172377 () Bool)

(assert (=> d!1362406 m!5172377))

(declare-fun m!5172379 () Bool)

(assert (=> d!1362406 m!5172379))

(declare-fun m!5172381 () Bool)

(assert (=> b!4467018 m!5172381))

(assert (=> b!4466762 d!1362406))

(declare-fun d!1362408 () Bool)

(declare-fun res!1853109 () Bool)

(declare-fun e!2781637 () Bool)

(assert (=> d!1362408 (=> res!1853109 e!2781637)))

(declare-fun e!2781636 () Bool)

(assert (=> d!1362408 (= res!1853109 e!2781636)))

(declare-fun res!1853110 () Bool)

(assert (=> d!1362408 (=> (not res!1853110) (not e!2781636))))

(assert (=> d!1362408 (= res!1853110 ((_ is Cons!50273) lt!1656304))))

(assert (=> d!1362408 (= (containsKeyBiggerList!20 lt!1656304 key!3287) e!2781637)))

(declare-fun b!4467025 () Bool)

(assert (=> b!4467025 (= e!2781636 (containsKey!1456 (_2!28552 (h!56032 lt!1656304)) key!3287))))

(declare-fun b!4467026 () Bool)

(declare-fun e!2781635 () Bool)

(assert (=> b!4467026 (= e!2781637 e!2781635)))

(declare-fun res!1853111 () Bool)

(assert (=> b!4467026 (=> (not res!1853111) (not e!2781635))))

(assert (=> b!4467026 (= res!1853111 ((_ is Cons!50273) lt!1656304))))

(declare-fun b!4467027 () Bool)

(assert (=> b!4467027 (= e!2781635 (containsKeyBiggerList!20 (t!357347 lt!1656304) key!3287))))

(assert (= (and d!1362408 res!1853110) b!4467025))

(assert (= (and d!1362408 (not res!1853109)) b!4467026))

(assert (= (and b!4467026 res!1853111) b!4467027))

(declare-fun m!5172383 () Bool)

(assert (=> b!4467025 m!5172383))

(declare-fun m!5172385 () Bool)

(assert (=> b!4467027 m!5172385))

(assert (=> b!4466761 d!1362408))

(declare-fun d!1362410 () Bool)

(declare-fun res!1853116 () Bool)

(declare-fun e!2781642 () Bool)

(assert (=> d!1362410 (=> res!1853116 e!2781642)))

(assert (=> d!1362410 (= res!1853116 (and ((_ is Cons!50272) (_2!28552 (h!56032 (toList!4047 lm!1477)))) (= (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))) key!3287)))))

(assert (=> d!1362410 (= (containsKey!1456 (_2!28552 (h!56032 (toList!4047 lm!1477))) key!3287) e!2781642)))

(declare-fun b!4467032 () Bool)

(declare-fun e!2781643 () Bool)

(assert (=> b!4467032 (= e!2781642 e!2781643)))

(declare-fun res!1853117 () Bool)

(assert (=> b!4467032 (=> (not res!1853117) (not e!2781643))))

(assert (=> b!4467032 (= res!1853117 ((_ is Cons!50272) (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(declare-fun b!4467033 () Bool)

(assert (=> b!4467033 (= e!2781643 (containsKey!1456 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))) key!3287))))

(assert (= (and d!1362410 (not res!1853116)) b!4467032))

(assert (= (and b!4467032 res!1853117) b!4467033))

(declare-fun m!5172387 () Bool)

(assert (=> b!4467033 m!5172387))

(assert (=> b!4466772 d!1362410))

(declare-fun bs!793634 () Bool)

(declare-fun d!1362412 () Bool)

(assert (= bs!793634 (and d!1362412 d!1362384)))

(declare-fun lambda!162852 () Int)

(assert (=> bs!793634 (not (= lambda!162852 lambda!162845))))

(declare-fun bs!793635 () Bool)

(assert (= bs!793635 (and d!1362412 d!1362362)))

(assert (=> bs!793635 (not (= lambda!162852 lambda!162840))))

(declare-fun bs!793636 () Bool)

(assert (= bs!793636 (and d!1362412 d!1362394)))

(assert (=> bs!793636 (not (= lambda!162852 lambda!162849))))

(declare-fun bs!793637 () Bool)

(assert (= bs!793637 (and d!1362412 d!1362392)))

(assert (=> bs!793637 (not (= lambda!162852 lambda!162846))))

(declare-fun bs!793638 () Bool)

(assert (= bs!793638 (and d!1362412 d!1362336)))

(assert (=> bs!793638 (not (= lambda!162852 lambda!162828))))

(declare-fun bs!793639 () Bool)

(assert (= bs!793639 (and d!1362412 start!438580)))

(assert (=> bs!793639 (not (= lambda!162852 lambda!162813))))

(declare-fun bs!793640 () Bool)

(assert (= bs!793640 (and d!1362412 d!1362344)))

(assert (=> bs!793640 (not (= lambda!162852 lambda!162839))))

(assert (=> d!1362412 true))

(assert (=> d!1362412 (= (allKeysSameHashInMap!1127 lm!1477 hashF!1107) (forall!9978 (toList!4047 lm!1477) lambda!162852))))

(declare-fun bs!793641 () Bool)

(assert (= bs!793641 d!1362412))

(declare-fun m!5172389 () Bool)

(assert (=> bs!793641 m!5172389))

(assert (=> b!4466771 d!1362412))

(declare-fun bs!793642 () Bool)

(declare-fun d!1362414 () Bool)

(assert (= bs!793642 (and d!1362414 d!1362384)))

(declare-fun lambda!162855 () Int)

(assert (=> bs!793642 (= lambda!162855 lambda!162845)))

(declare-fun bs!793643 () Bool)

(assert (= bs!793643 (and d!1362414 d!1362412)))

(assert (=> bs!793643 (not (= lambda!162855 lambda!162852))))

(declare-fun bs!793644 () Bool)

(assert (= bs!793644 (and d!1362414 d!1362362)))

(assert (=> bs!793644 (= lambda!162855 lambda!162840)))

(declare-fun bs!793645 () Bool)

(assert (= bs!793645 (and d!1362414 d!1362394)))

(assert (=> bs!793645 (= lambda!162855 lambda!162849)))

(declare-fun bs!793646 () Bool)

(assert (= bs!793646 (and d!1362414 d!1362392)))

(assert (=> bs!793646 (= lambda!162855 lambda!162846)))

(declare-fun bs!793647 () Bool)

(assert (= bs!793647 (and d!1362414 d!1362336)))

(assert (=> bs!793647 (= lambda!162855 lambda!162828)))

(declare-fun bs!793648 () Bool)

(assert (= bs!793648 (and d!1362414 start!438580)))

(assert (=> bs!793648 (= lambda!162855 lambda!162813)))

(declare-fun bs!793649 () Bool)

(assert (= bs!793649 (and d!1362414 d!1362344)))

(assert (=> bs!793649 (= lambda!162855 lambda!162839)))

(assert (=> d!1362414 (not (contains!12815 (extractMap!1076 (toList!4047 lm!1477)) key!3287))))

(declare-fun lt!1656494 () Unit!87415)

(declare-fun choose!28531 (ListLongMap!2679 K!11690 Hashable!5415) Unit!87415)

(assert (=> d!1362414 (= lt!1656494 (choose!28531 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1362414 (forall!9978 (toList!4047 lm!1477) lambda!162855)))

(assert (=> d!1362414 (= (lemmaNotInItsHashBucketThenNotInMap!20 lm!1477 key!3287 hashF!1107) lt!1656494)))

(declare-fun bs!793650 () Bool)

(assert (= bs!793650 d!1362414))

(assert (=> bs!793650 m!5171935))

(assert (=> bs!793650 m!5171935))

(assert (=> bs!793650 m!5171937))

(declare-fun m!5172391 () Bool)

(assert (=> bs!793650 m!5172391))

(declare-fun m!5172393 () Bool)

(assert (=> bs!793650 m!5172393))

(assert (=> b!4466765 d!1362414))

(declare-fun d!1362416 () Bool)

(declare-fun res!1853118 () Bool)

(declare-fun e!2781644 () Bool)

(assert (=> d!1362416 (=> res!1853118 e!2781644)))

(assert (=> d!1362416 (= res!1853118 ((_ is Nil!50273) (toList!4047 lt!1656294)))))

(assert (=> d!1362416 (= (forall!9978 (toList!4047 lt!1656294) lambda!162813) e!2781644)))

(declare-fun b!4467036 () Bool)

(declare-fun e!2781645 () Bool)

(assert (=> b!4467036 (= e!2781644 e!2781645)))

(declare-fun res!1853119 () Bool)

(assert (=> b!4467036 (=> (not res!1853119) (not e!2781645))))

(assert (=> b!4467036 (= res!1853119 (dynLambda!21006 lambda!162813 (h!56032 (toList!4047 lt!1656294))))))

(declare-fun b!4467037 () Bool)

(assert (=> b!4467037 (= e!2781645 (forall!9978 (t!357347 (toList!4047 lt!1656294)) lambda!162813))))

(assert (= (and d!1362416 (not res!1853118)) b!4467036))

(assert (= (and b!4467036 res!1853119) b!4467037))

(declare-fun b_lambda!148173 () Bool)

(assert (=> (not b_lambda!148173) (not b!4467036)))

(declare-fun m!5172395 () Bool)

(assert (=> b!4467036 m!5172395))

(declare-fun m!5172397 () Bool)

(assert (=> b!4467037 m!5172397))

(assert (=> b!4466763 d!1362416))

(declare-fun b!4467042 () Bool)

(declare-fun tp!1336169 () Bool)

(declare-fun e!2781648 () Bool)

(assert (=> b!4467042 (= e!2781648 (and tp_is_empty!27357 tp_is_empty!27359 tp!1336169))))

(assert (=> b!4466768 (= tp!1336156 e!2781648)))

(assert (= (and b!4466768 ((_ is Cons!50272) (t!357346 newBucket!178))) b!4467042))

(declare-fun b!4467047 () Bool)

(declare-fun e!2781651 () Bool)

(declare-fun tp!1336174 () Bool)

(declare-fun tp!1336175 () Bool)

(assert (=> b!4467047 (= e!2781651 (and tp!1336174 tp!1336175))))

(assert (=> b!4466770 (= tp!1336157 e!2781651)))

(assert (= (and b!4466770 ((_ is Cons!50273) (toList!4047 lm!1477))) b!4467047))

(declare-fun b_lambda!148175 () Bool)

(assert (= b_lambda!148159 (or start!438580 b_lambda!148175)))

(declare-fun bs!793651 () Bool)

(declare-fun d!1362418 () Bool)

(assert (= bs!793651 (and d!1362418 start!438580)))

(assert (=> bs!793651 (= (dynLambda!21006 lambda!162813 (h!56032 (toList!4047 lm!1477))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(assert (=> bs!793651 m!5172299))

(assert (=> b!4466803 d!1362418))

(declare-fun b_lambda!148177 () Bool)

(assert (= b_lambda!148171 (or start!438580 b_lambda!148177)))

(declare-fun bs!793652 () Bool)

(declare-fun d!1362420 () Bool)

(assert (= bs!793652 (and d!1362420 start!438580)))

(assert (=> bs!793652 (= (dynLambda!21006 lambda!162813 lt!1656297) (noDuplicateKeys!1020 (_2!28552 lt!1656297)))))

(declare-fun m!5172399 () Bool)

(assert (=> bs!793652 m!5172399))

(assert (=> d!1362398 d!1362420))

(declare-fun b_lambda!148179 () Bool)

(assert (= b_lambda!148173 (or start!438580 b_lambda!148179)))

(declare-fun bs!793653 () Bool)

(declare-fun d!1362422 () Bool)

(assert (= bs!793653 (and d!1362422 start!438580)))

(assert (=> bs!793653 (= (dynLambda!21006 lambda!162813 (h!56032 (toList!4047 lt!1656294))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lt!1656294)))))))

(declare-fun m!5172401 () Bool)

(assert (=> bs!793653 m!5172401))

(assert (=> b!4467036 d!1362422))

(check-sat (not b!4466988) (not d!1362330) (not bs!793652) (not d!1362390) (not b_lambda!148177) (not b!4466964) (not b!4466960) (not d!1362402) (not d!1362320) (not b!4466962) (not b!4466961) (not bm!310972) (not d!1362384) (not b!4467025) (not b!4467018) (not b!4466785) (not b!4466976) (not b!4467009) (not b!4466848) (not d!1362392) (not d!1362288) (not bm!310973) (not b_lambda!148175) (not b!4466959) (not b!4466984) (not b_lambda!148179) (not d!1362298) (not b!4467007) (not d!1362364) (not d!1362306) (not d!1362336) (not d!1362344) (not d!1362400) (not b!4467033) (not d!1362396) (not b!4466977) (not b!4466909) (not b!4466981) (not d!1362382) (not d!1362412) (not d!1362406) (not d!1362318) (not b!4466979) (not bs!793651) (not d!1362398) (not d!1362362) (not b!4466978) (not d!1362404) (not b!4466966) (not bs!793653) (not b!4467037) (not b!4467047) (not b!4466911) (not b!4466999) (not d!1362414) (not b!4466804) (not d!1362308) (not b!4467027) (not b!4466974) (not d!1362394) (not b!4466967) tp_is_empty!27359 (not b!4466963) (not b!4467042) tp_is_empty!27357 (not b!4466973) (not b!4466784) (not d!1362312) (not b!4466983) (not b!4466980) (not b!4466816) (not b!4466817) (not b!4467012))
(check-sat)
(get-model)

(declare-fun d!1362432 () Bool)

(declare-fun lt!1656561 () Bool)

(assert (=> d!1362432 (= lt!1656561 (select (content!8089 e!2781587) key!3287))))

(declare-fun e!2781678 () Bool)

(assert (=> d!1362432 (= lt!1656561 e!2781678)))

(declare-fun res!1853144 () Bool)

(assert (=> d!1362432 (=> (not res!1853144) (not e!2781678))))

(assert (=> d!1362432 (= res!1853144 ((_ is Cons!50275) e!2781587))))

(assert (=> d!1362432 (= (contains!12819 e!2781587 key!3287) lt!1656561)))

(declare-fun b!4467082 () Bool)

(declare-fun e!2781677 () Bool)

(assert (=> b!4467082 (= e!2781678 e!2781677)))

(declare-fun res!1853145 () Bool)

(assert (=> b!4467082 (=> res!1853145 e!2781677)))

(assert (=> b!4467082 (= res!1853145 (= (h!56036 e!2781587) key!3287))))

(declare-fun b!4467083 () Bool)

(assert (=> b!4467083 (= e!2781677 (contains!12819 (t!357349 e!2781587) key!3287))))

(assert (= (and d!1362432 res!1853144) b!4467082))

(assert (= (and b!4467082 (not res!1853145)) b!4467083))

(declare-fun m!5172463 () Bool)

(assert (=> d!1362432 m!5172463))

(declare-fun m!5172465 () Bool)

(assert (=> d!1362432 m!5172465))

(declare-fun m!5172467 () Bool)

(assert (=> b!4467083 m!5172467))

(assert (=> bm!310972 d!1362432))

(declare-fun d!1362444 () Bool)

(declare-fun lt!1656562 () Bool)

(assert (=> d!1362444 (= lt!1656562 (select (content!8089 (keys!17354 (extractMap!1076 lt!1656304))) key!3287))))

(declare-fun e!2781680 () Bool)

(assert (=> d!1362444 (= lt!1656562 e!2781680)))

(declare-fun res!1853146 () Bool)

(assert (=> d!1362444 (=> (not res!1853146) (not e!2781680))))

(assert (=> d!1362444 (= res!1853146 ((_ is Cons!50275) (keys!17354 (extractMap!1076 lt!1656304))))))

(assert (=> d!1362444 (= (contains!12819 (keys!17354 (extractMap!1076 lt!1656304)) key!3287) lt!1656562)))

(declare-fun b!4467084 () Bool)

(declare-fun e!2781679 () Bool)

(assert (=> b!4467084 (= e!2781680 e!2781679)))

(declare-fun res!1853147 () Bool)

(assert (=> b!4467084 (=> res!1853147 e!2781679)))

(assert (=> b!4467084 (= res!1853147 (= (h!56036 (keys!17354 (extractMap!1076 lt!1656304))) key!3287))))

(declare-fun b!4467085 () Bool)

(assert (=> b!4467085 (= e!2781679 (contains!12819 (t!357349 (keys!17354 (extractMap!1076 lt!1656304))) key!3287))))

(assert (= (and d!1362444 res!1853146) b!4467084))

(assert (= (and b!4467084 (not res!1853147)) b!4467085))

(assert (=> d!1362444 m!5172281))

(declare-fun m!5172469 () Bool)

(assert (=> d!1362444 m!5172469))

(declare-fun m!5172471 () Bool)

(assert (=> d!1362444 m!5172471))

(declare-fun m!5172473 () Bool)

(assert (=> b!4467085 m!5172473))

(assert (=> b!4466962 d!1362444))

(declare-fun b!4467127 () Bool)

(assert (=> b!4467127 true))

(declare-fun d!1362448 () Bool)

(declare-fun e!2781711 () Bool)

(assert (=> d!1362448 e!2781711))

(declare-fun res!1853178 () Bool)

(assert (=> d!1362448 (=> (not res!1853178) (not e!2781711))))

(declare-fun lt!1656571 () List!50399)

(declare-fun noDuplicate!695 (List!50399) Bool)

(assert (=> d!1362448 (= res!1853178 (noDuplicate!695 lt!1656571))))

(assert (=> d!1362448 (= lt!1656571 (getKeysList!371 (toList!4048 (extractMap!1076 lt!1656304))))))

(assert (=> d!1362448 (= (keys!17354 (extractMap!1076 lt!1656304)) lt!1656571)))

(declare-fun b!4467126 () Bool)

(declare-fun res!1853176 () Bool)

(assert (=> b!4467126 (=> (not res!1853176) (not e!2781711))))

(declare-fun length!246 (List!50399) Int)

(declare-fun length!247 (List!50396) Int)

(assert (=> b!4467126 (= res!1853176 (= (length!246 lt!1656571) (length!247 (toList!4048 (extractMap!1076 lt!1656304)))))))

(declare-fun res!1853177 () Bool)

(assert (=> b!4467127 (=> (not res!1853177) (not e!2781711))))

(declare-fun lambda!162893 () Int)

(declare-fun forall!9981 (List!50399 Int) Bool)

(assert (=> b!4467127 (= res!1853177 (forall!9981 lt!1656571 lambda!162893))))

(declare-fun lambda!162894 () Int)

(declare-fun b!4467128 () Bool)

(declare-fun map!11016 (List!50396 Int) List!50399)

(assert (=> b!4467128 (= e!2781711 (= (content!8089 lt!1656571) (content!8089 (map!11016 (toList!4048 (extractMap!1076 lt!1656304)) lambda!162894))))))

(assert (= (and d!1362448 res!1853178) b!4467126))

(assert (= (and b!4467126 res!1853176) b!4467127))

(assert (= (and b!4467127 res!1853177) b!4467128))

(declare-fun m!5172519 () Bool)

(assert (=> d!1362448 m!5172519))

(assert (=> d!1362448 m!5172285))

(declare-fun m!5172521 () Bool)

(assert (=> b!4467126 m!5172521))

(declare-fun m!5172523 () Bool)

(assert (=> b!4467126 m!5172523))

(declare-fun m!5172525 () Bool)

(assert (=> b!4467127 m!5172525))

(declare-fun m!5172527 () Bool)

(assert (=> b!4467128 m!5172527))

(declare-fun m!5172529 () Bool)

(assert (=> b!4467128 m!5172529))

(assert (=> b!4467128 m!5172529))

(declare-fun m!5172531 () Bool)

(assert (=> b!4467128 m!5172531))

(assert (=> b!4466962 d!1362448))

(declare-fun d!1362478 () Bool)

(declare-fun res!1853179 () Bool)

(declare-fun e!2781712 () Bool)

(assert (=> d!1362478 (=> res!1853179 e!2781712)))

(assert (=> d!1362478 (= res!1853179 (not ((_ is Cons!50272) (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(assert (=> d!1362478 (= (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477)))) e!2781712)))

(declare-fun b!4467131 () Bool)

(declare-fun e!2781713 () Bool)

(assert (=> b!4467131 (= e!2781712 e!2781713)))

(declare-fun res!1853180 () Bool)

(assert (=> b!4467131 (=> (not res!1853180) (not e!2781713))))

(assert (=> b!4467131 (= res!1853180 (not (containsKey!1456 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))) (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))))

(declare-fun b!4467132 () Bool)

(assert (=> b!4467132 (= e!2781713 (noDuplicateKeys!1020 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(assert (= (and d!1362478 (not res!1853179)) b!4467131))

(assert (= (and b!4467131 res!1853180) b!4467132))

(declare-fun m!5172533 () Bool)

(assert (=> b!4467131 m!5172533))

(declare-fun m!5172535 () Bool)

(assert (=> b!4467132 m!5172535))

(assert (=> bs!793651 d!1362478))

(declare-fun d!1362480 () Bool)

(declare-fun noDuplicatedKeys!211 (List!50396) Bool)

(assert (=> d!1362480 (= (invariantList!923 (toList!4048 lt!1656416)) (noDuplicatedKeys!211 (toList!4048 lt!1656416)))))

(declare-fun bs!793675 () Bool)

(assert (= bs!793675 d!1362480))

(declare-fun m!5172537 () Bool)

(assert (=> bs!793675 m!5172537))

(assert (=> d!1362344 d!1362480))

(declare-fun d!1362482 () Bool)

(declare-fun res!1853185 () Bool)

(declare-fun e!2781718 () Bool)

(assert (=> d!1362482 (=> res!1853185 e!2781718)))

(assert (=> d!1362482 (= res!1853185 ((_ is Nil!50273) (Cons!50273 lt!1656299 Nil!50273)))))

(assert (=> d!1362482 (= (forall!9978 (Cons!50273 lt!1656299 Nil!50273) lambda!162839) e!2781718)))

(declare-fun b!4467137 () Bool)

(declare-fun e!2781719 () Bool)

(assert (=> b!4467137 (= e!2781718 e!2781719)))

(declare-fun res!1853186 () Bool)

(assert (=> b!4467137 (=> (not res!1853186) (not e!2781719))))

(assert (=> b!4467137 (= res!1853186 (dynLambda!21006 lambda!162839 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))

(declare-fun b!4467138 () Bool)

(assert (=> b!4467138 (= e!2781719 (forall!9978 (t!357347 (Cons!50273 lt!1656299 Nil!50273)) lambda!162839))))

(assert (= (and d!1362482 (not res!1853185)) b!4467137))

(assert (= (and b!4467137 res!1853186) b!4467138))

(declare-fun b_lambda!148189 () Bool)

(assert (=> (not b_lambda!148189) (not b!4467137)))

(declare-fun m!5172539 () Bool)

(assert (=> b!4467137 m!5172539))

(declare-fun m!5172541 () Bool)

(assert (=> b!4467138 m!5172541))

(assert (=> d!1362344 d!1362482))

(declare-fun d!1362484 () Bool)

(declare-fun e!2781720 () Bool)

(assert (=> d!1362484 e!2781720))

(declare-fun res!1853187 () Bool)

(assert (=> d!1362484 (=> res!1853187 e!2781720)))

(declare-fun lt!1656575 () Bool)

(assert (=> d!1362484 (= res!1853187 (not lt!1656575))))

(declare-fun lt!1656574 () Bool)

(assert (=> d!1362484 (= lt!1656575 lt!1656574)))

(declare-fun lt!1656573 () Unit!87415)

(declare-fun e!2781721 () Unit!87415)

(assert (=> d!1362484 (= lt!1656573 e!2781721)))

(declare-fun c!760349 () Bool)

(assert (=> d!1362484 (= c!760349 lt!1656574)))

(assert (=> d!1362484 (= lt!1656574 (containsKey!1460 (toList!4047 lm!1477) (hash!2431 hashF!1107 key!3287)))))

(assert (=> d!1362484 (= (contains!12817 lm!1477 (hash!2431 hashF!1107 key!3287)) lt!1656575)))

(declare-fun b!4467139 () Bool)

(declare-fun lt!1656572 () Unit!87415)

(assert (=> b!4467139 (= e!2781721 lt!1656572)))

(assert (=> b!4467139 (= lt!1656572 (lemmaContainsKeyImpliesGetValueByKeyDefined!809 (toList!4047 lm!1477) (hash!2431 hashF!1107 key!3287)))))

(assert (=> b!4467139 (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) (hash!2431 hashF!1107 key!3287)))))

(declare-fun b!4467140 () Bool)

(declare-fun Unit!87440 () Unit!87415)

(assert (=> b!4467140 (= e!2781721 Unit!87440)))

(declare-fun b!4467141 () Bool)

(assert (=> b!4467141 (= e!2781720 (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) (hash!2431 hashF!1107 key!3287))))))

(assert (= (and d!1362484 c!760349) b!4467139))

(assert (= (and d!1362484 (not c!760349)) b!4467140))

(assert (= (and d!1362484 (not res!1853187)) b!4467141))

(assert (=> d!1362484 m!5171943))

(declare-fun m!5172545 () Bool)

(assert (=> d!1362484 m!5172545))

(assert (=> b!4467139 m!5171943))

(declare-fun m!5172547 () Bool)

(assert (=> b!4467139 m!5172547))

(assert (=> b!4467139 m!5171943))

(declare-fun m!5172549 () Bool)

(assert (=> b!4467139 m!5172549))

(assert (=> b!4467139 m!5172549))

(declare-fun m!5172551 () Bool)

(assert (=> b!4467139 m!5172551))

(assert (=> b!4467141 m!5171943))

(assert (=> b!4467141 m!5172549))

(assert (=> b!4467141 m!5172549))

(assert (=> b!4467141 m!5172551))

(assert (=> d!1362394 d!1362484))

(assert (=> d!1362394 d!1362308))

(declare-fun d!1362488 () Bool)

(assert (=> d!1362488 (contains!12817 lm!1477 (hash!2431 hashF!1107 key!3287))))

(assert (=> d!1362488 true))

(declare-fun _$27!1073 () Unit!87415)

(assert (=> d!1362488 (= (choose!28528 lm!1477 key!3287 hashF!1107) _$27!1073)))

(declare-fun bs!793676 () Bool)

(assert (= bs!793676 d!1362488))

(assert (=> bs!793676 m!5171943))

(assert (=> bs!793676 m!5171943))

(assert (=> bs!793676 m!5172345))

(assert (=> d!1362394 d!1362488))

(declare-fun d!1362492 () Bool)

(declare-fun res!1853190 () Bool)

(declare-fun e!2781727 () Bool)

(assert (=> d!1362492 (=> res!1853190 e!2781727)))

(assert (=> d!1362492 (= res!1853190 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362492 (= (forall!9978 (toList!4047 lm!1477) lambda!162849) e!2781727)))

(declare-fun b!4467150 () Bool)

(declare-fun e!2781728 () Bool)

(assert (=> b!4467150 (= e!2781727 e!2781728)))

(declare-fun res!1853191 () Bool)

(assert (=> b!4467150 (=> (not res!1853191) (not e!2781728))))

(assert (=> b!4467150 (= res!1853191 (dynLambda!21006 lambda!162849 (h!56032 (toList!4047 lm!1477))))))

(declare-fun b!4467151 () Bool)

(assert (=> b!4467151 (= e!2781728 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162849))))

(assert (= (and d!1362492 (not res!1853190)) b!4467150))

(assert (= (and b!4467150 res!1853191) b!4467151))

(declare-fun b_lambda!148191 () Bool)

(assert (=> (not b_lambda!148191) (not b!4467150)))

(declare-fun m!5172555 () Bool)

(assert (=> b!4467150 m!5172555))

(declare-fun m!5172557 () Bool)

(assert (=> b!4467151 m!5172557))

(assert (=> d!1362394 d!1362492))

(declare-fun d!1362494 () Bool)

(declare-fun res!1853192 () Bool)

(declare-fun e!2781729 () Bool)

(assert (=> d!1362494 (=> res!1853192 e!2781729)))

(assert (=> d!1362494 (= res!1853192 (not ((_ is Cons!50272) (t!357346 newBucket!178))))))

(assert (=> d!1362494 (= (noDuplicateKeys!1020 (t!357346 newBucket!178)) e!2781729)))

(declare-fun b!4467152 () Bool)

(declare-fun e!2781730 () Bool)

(assert (=> b!4467152 (= e!2781729 e!2781730)))

(declare-fun res!1853193 () Bool)

(assert (=> b!4467152 (=> (not res!1853193) (not e!2781730))))

(assert (=> b!4467152 (= res!1853193 (not (containsKey!1456 (t!357346 (t!357346 newBucket!178)) (_1!28551 (h!56031 (t!357346 newBucket!178))))))))

(declare-fun b!4467153 () Bool)

(assert (=> b!4467153 (= e!2781730 (noDuplicateKeys!1020 (t!357346 (t!357346 newBucket!178))))))

(assert (= (and d!1362494 (not res!1853192)) b!4467152))

(assert (= (and b!4467152 res!1853193) b!4467153))

(declare-fun m!5172559 () Bool)

(assert (=> b!4467152 m!5172559))

(declare-fun m!5172561 () Bool)

(assert (=> b!4467153 m!5172561))

(assert (=> b!4466974 d!1362494))

(declare-fun d!1362496 () Bool)

(declare-fun lt!1656576 () Bool)

(assert (=> d!1362496 (= lt!1656576 (select (content!8092 (toList!4047 lt!1656318)) lt!1656299))))

(declare-fun e!2781732 () Bool)

(assert (=> d!1362496 (= lt!1656576 e!2781732)))

(declare-fun res!1853194 () Bool)

(assert (=> d!1362496 (=> (not res!1853194) (not e!2781732))))

(assert (=> d!1362496 (= res!1853194 ((_ is Cons!50273) (toList!4047 lt!1656318)))))

(assert (=> d!1362496 (= (contains!12816 (toList!4047 lt!1656318) lt!1656299) lt!1656576)))

(declare-fun b!4467154 () Bool)

(declare-fun e!2781731 () Bool)

(assert (=> b!4467154 (= e!2781732 e!2781731)))

(declare-fun res!1853195 () Bool)

(assert (=> b!4467154 (=> res!1853195 e!2781731)))

(assert (=> b!4467154 (= res!1853195 (= (h!56032 (toList!4047 lt!1656318)) lt!1656299))))

(declare-fun b!4467155 () Bool)

(assert (=> b!4467155 (= e!2781731 (contains!12816 (t!357347 (toList!4047 lt!1656318)) lt!1656299))))

(assert (= (and d!1362496 res!1853194) b!4467154))

(assert (= (and b!4467154 (not res!1853195)) b!4467155))

(declare-fun m!5172563 () Bool)

(assert (=> d!1362496 m!5172563))

(declare-fun m!5172565 () Bool)

(assert (=> d!1362496 m!5172565))

(declare-fun m!5172567 () Bool)

(assert (=> b!4467155 m!5172567))

(assert (=> b!4466785 d!1362496))

(declare-fun d!1362498 () Bool)

(declare-fun res!1853196 () Bool)

(declare-fun e!2781733 () Bool)

(assert (=> d!1362498 (=> res!1853196 e!2781733)))

(assert (=> d!1362498 (= res!1853196 ((_ is Nil!50273) (t!357347 (toList!4047 lm!1477))))))

(assert (=> d!1362498 (= (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162813) e!2781733)))

(declare-fun b!4467156 () Bool)

(declare-fun e!2781734 () Bool)

(assert (=> b!4467156 (= e!2781733 e!2781734)))

(declare-fun res!1853197 () Bool)

(assert (=> b!4467156 (=> (not res!1853197) (not e!2781734))))

(assert (=> b!4467156 (= res!1853197 (dynLambda!21006 lambda!162813 (h!56032 (t!357347 (toList!4047 lm!1477)))))))

(declare-fun b!4467157 () Bool)

(assert (=> b!4467157 (= e!2781734 (forall!9978 (t!357347 (t!357347 (toList!4047 lm!1477))) lambda!162813))))

(assert (= (and d!1362498 (not res!1853196)) b!4467156))

(assert (= (and b!4467156 res!1853197) b!4467157))

(declare-fun b_lambda!148193 () Bool)

(assert (=> (not b_lambda!148193) (not b!4467156)))

(declare-fun m!5172569 () Bool)

(assert (=> b!4467156 m!5172569))

(declare-fun m!5172571 () Bool)

(assert (=> b!4467157 m!5172571))

(assert (=> b!4466804 d!1362498))

(declare-fun d!1362500 () Bool)

(declare-fun res!1853202 () Bool)

(declare-fun e!2781739 () Bool)

(assert (=> d!1362500 (=> res!1853202 e!2781739)))

(assert (=> d!1362500 (= res!1853202 ((_ is Nil!50272) newBucket!178))))

(assert (=> d!1362500 (= (forall!9980 newBucket!178 lambda!162822) e!2781739)))

(declare-fun b!4467162 () Bool)

(declare-fun e!2781740 () Bool)

(assert (=> b!4467162 (= e!2781739 e!2781740)))

(declare-fun res!1853203 () Bool)

(assert (=> b!4467162 (=> (not res!1853203) (not e!2781740))))

(declare-fun dynLambda!21007 (Int tuple2!50514) Bool)

(assert (=> b!4467162 (= res!1853203 (dynLambda!21007 lambda!162822 (h!56031 newBucket!178)))))

(declare-fun b!4467163 () Bool)

(assert (=> b!4467163 (= e!2781740 (forall!9980 (t!357346 newBucket!178) lambda!162822))))

(assert (= (and d!1362500 (not res!1853202)) b!4467162))

(assert (= (and b!4467162 res!1853203) b!4467163))

(declare-fun b_lambda!148195 () Bool)

(assert (=> (not b_lambda!148195) (not b!4467162)))

(declare-fun m!5172575 () Bool)

(assert (=> b!4467162 m!5172575))

(declare-fun m!5172577 () Bool)

(assert (=> b!4467163 m!5172577))

(assert (=> d!1362312 d!1362500))

(declare-fun bs!793748 () Bool)

(declare-fun b!4467327 () Bool)

(assert (= bs!793748 (and b!4467327 d!1362312)))

(declare-fun lambda!162942 () Int)

(assert (=> bs!793748 (not (= lambda!162942 lambda!162822))))

(assert (=> b!4467327 true))

(declare-fun bs!793749 () Bool)

(declare-fun b!4467328 () Bool)

(assert (= bs!793749 (and b!4467328 d!1362312)))

(declare-fun lambda!162943 () Int)

(assert (=> bs!793749 (not (= lambda!162943 lambda!162822))))

(declare-fun bs!793750 () Bool)

(assert (= bs!793750 (and b!4467328 b!4467327)))

(assert (=> bs!793750 (= lambda!162943 lambda!162942)))

(assert (=> b!4467328 true))

(declare-fun lambda!162944 () Int)

(assert (=> bs!793749 (not (= lambda!162944 lambda!162822))))

(declare-fun lt!1656700 () ListMap!3309)

(assert (=> bs!793750 (= (= lt!1656700 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162944 lambda!162942))))

(assert (=> b!4467328 (= (= lt!1656700 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162944 lambda!162943))))

(assert (=> b!4467328 true))

(declare-fun bs!793751 () Bool)

(declare-fun d!1362504 () Bool)

(assert (= bs!793751 (and d!1362504 d!1362312)))

(declare-fun lambda!162945 () Int)

(assert (=> bs!793751 (not (= lambda!162945 lambda!162822))))

(declare-fun bs!793752 () Bool)

(assert (= bs!793752 (and d!1362504 b!4467327)))

(declare-fun lt!1656701 () ListMap!3309)

(assert (=> bs!793752 (= (= lt!1656701 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162945 lambda!162942))))

(declare-fun bs!793753 () Bool)

(assert (= bs!793753 (and d!1362504 b!4467328)))

(assert (=> bs!793753 (= (= lt!1656701 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162945 lambda!162943))))

(assert (=> bs!793753 (= (= lt!1656701 lt!1656700) (= lambda!162945 lambda!162944))))

(assert (=> d!1362504 true))

(declare-fun bm!311003 () Bool)

(declare-fun c!760398 () Bool)

(declare-fun call!311010 () Bool)

(declare-fun lt!1656694 () ListMap!3309)

(assert (=> bm!311003 (= call!311010 (forall!9980 (ite c!760398 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (toList!4048 lt!1656694)) (ite c!760398 lambda!162942 lambda!162944)))))

(declare-fun e!2781836 () ListMap!3309)

(assert (=> b!4467328 (= e!2781836 lt!1656700)))

(declare-fun +!1362 (ListMap!3309 tuple2!50514) ListMap!3309)

(assert (=> b!4467328 (= lt!1656694 (+!1362 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273))) (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))))

(assert (=> b!4467328 (= lt!1656700 (addToMapMapFromBucket!585 (t!357346 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))) (+!1362 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273))) (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))))))))

(declare-fun lt!1656692 () Unit!87415)

(declare-fun call!311009 () Unit!87415)

(assert (=> b!4467328 (= lt!1656692 call!311009)))

(assert (=> b!4467328 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) lambda!162943)))

(declare-fun lt!1656710 () Unit!87415)

(assert (=> b!4467328 (= lt!1656710 lt!1656692)))

(assert (=> b!4467328 (forall!9980 (toList!4048 lt!1656694) lambda!162944)))

(declare-fun lt!1656706 () Unit!87415)

(declare-fun Unit!87442 () Unit!87415)

(assert (=> b!4467328 (= lt!1656706 Unit!87442)))

(assert (=> b!4467328 (forall!9980 (t!357346 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))) lambda!162944)))

(declare-fun lt!1656699 () Unit!87415)

(declare-fun Unit!87443 () Unit!87415)

(assert (=> b!4467328 (= lt!1656699 Unit!87443)))

(declare-fun lt!1656698 () Unit!87415)

(declare-fun Unit!87444 () Unit!87415)

(assert (=> b!4467328 (= lt!1656698 Unit!87444)))

(declare-fun lt!1656702 () Unit!87415)

(declare-fun forallContained!2251 (List!50396 Int tuple2!50514) Unit!87415)

(assert (=> b!4467328 (= lt!1656702 (forallContained!2251 (toList!4048 lt!1656694) lambda!162944 (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))))

(assert (=> b!4467328 (contains!12815 lt!1656694 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))))

(declare-fun lt!1656707 () Unit!87415)

(declare-fun Unit!87445 () Unit!87415)

(assert (=> b!4467328 (= lt!1656707 Unit!87445)))

(assert (=> b!4467328 (contains!12815 lt!1656700 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))))

(declare-fun lt!1656703 () Unit!87415)

(declare-fun Unit!87446 () Unit!87415)

(assert (=> b!4467328 (= lt!1656703 Unit!87446)))

(assert (=> b!4467328 (forall!9980 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) lambda!162944)))

(declare-fun lt!1656705 () Unit!87415)

(declare-fun Unit!87447 () Unit!87415)

(assert (=> b!4467328 (= lt!1656705 Unit!87447)))

(assert (=> b!4467328 call!311010))

(declare-fun lt!1656711 () Unit!87415)

(declare-fun Unit!87448 () Unit!87415)

(assert (=> b!4467328 (= lt!1656711 Unit!87448)))

(declare-fun lt!1656695 () Unit!87415)

(declare-fun Unit!87449 () Unit!87415)

(assert (=> b!4467328 (= lt!1656695 Unit!87449)))

(declare-fun lt!1656696 () Unit!87415)

(declare-fun addForallContainsKeyThenBeforeAdding!264 (ListMap!3309 ListMap!3309 K!11690 V!11936) Unit!87415)

(assert (=> b!4467328 (= lt!1656696 (addForallContainsKeyThenBeforeAdding!264 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273))) lt!1656700 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))) (_2!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))))))))

(declare-fun call!311008 () Bool)

(assert (=> b!4467328 call!311008))

(declare-fun lt!1656708 () Unit!87415)

(assert (=> b!4467328 (= lt!1656708 lt!1656696)))

(assert (=> b!4467328 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) lambda!162944)))

(declare-fun lt!1656704 () Unit!87415)

(declare-fun Unit!87450 () Unit!87415)

(assert (=> b!4467328 (= lt!1656704 Unit!87450)))

(declare-fun res!1853277 () Bool)

(assert (=> b!4467328 (= res!1853277 (forall!9980 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) lambda!162944))))

(declare-fun e!2781837 () Bool)

(assert (=> b!4467328 (=> (not res!1853277) (not e!2781837))))

(assert (=> b!4467328 e!2781837))

(declare-fun lt!1656712 () Unit!87415)

(declare-fun Unit!87451 () Unit!87415)

(assert (=> b!4467328 (= lt!1656712 Unit!87451)))

(declare-fun bm!311004 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!265 (ListMap!3309) Unit!87415)

(assert (=> bm!311004 (= call!311009 (lemmaContainsAllItsOwnKeys!265 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))))))

(declare-fun b!4467329 () Bool)

(declare-fun e!2781838 () Bool)

(assert (=> b!4467329 (= e!2781838 (invariantList!923 (toList!4048 lt!1656701)))))

(declare-fun bm!311005 () Bool)

(assert (=> bm!311005 (= call!311008 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (ite c!760398 lambda!162942 lambda!162944)))))

(assert (=> b!4467327 (= e!2781836 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273))))))

(declare-fun lt!1656709 () Unit!87415)

(assert (=> b!4467327 (= lt!1656709 call!311009)))

(assert (=> b!4467327 call!311008))

(declare-fun lt!1656697 () Unit!87415)

(assert (=> b!4467327 (= lt!1656697 lt!1656709)))

(assert (=> b!4467327 call!311010))

(declare-fun lt!1656693 () Unit!87415)

(declare-fun Unit!87452 () Unit!87415)

(assert (=> b!4467327 (= lt!1656693 Unit!87452)))

(assert (=> d!1362504 e!2781838))

(declare-fun res!1853276 () Bool)

(assert (=> d!1362504 (=> (not res!1853276) (not e!2781838))))

(assert (=> d!1362504 (= res!1853276 (forall!9980 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) lambda!162945))))

(assert (=> d!1362504 (= lt!1656701 e!2781836)))

(assert (=> d!1362504 (= c!760398 ((_ is Nil!50272) (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))))))

(assert (=> d!1362504 (noDuplicateKeys!1020 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))))))

(assert (=> d!1362504 (= (addToMapMapFromBucket!585 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) lt!1656701)))

(declare-fun b!4467330 () Bool)

(declare-fun res!1853275 () Bool)

(assert (=> b!4467330 (=> (not res!1853275) (not e!2781838))))

(assert (=> b!4467330 (= res!1853275 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) lambda!162945))))

(declare-fun b!4467331 () Bool)

(assert (=> b!4467331 (= e!2781837 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) lambda!162944))))

(assert (= (and d!1362504 c!760398) b!4467327))

(assert (= (and d!1362504 (not c!760398)) b!4467328))

(assert (= (and b!4467328 res!1853277) b!4467331))

(assert (= (or b!4467327 b!4467328) bm!311005))

(assert (= (or b!4467327 b!4467328) bm!311003))

(assert (= (or b!4467327 b!4467328) bm!311004))

(assert (= (and d!1362504 res!1853276) b!4467330))

(assert (= (and b!4467330 res!1853275) b!4467329))

(declare-fun m!5172833 () Bool)

(assert (=> b!4467331 m!5172833))

(declare-fun m!5172835 () Bool)

(assert (=> bm!311003 m!5172835))

(declare-fun m!5172837 () Bool)

(assert (=> d!1362504 m!5172837))

(declare-fun m!5172839 () Bool)

(assert (=> d!1362504 m!5172839))

(declare-fun m!5172841 () Bool)

(assert (=> b!4467329 m!5172841))

(declare-fun m!5172843 () Bool)

(assert (=> b!4467328 m!5172843))

(declare-fun m!5172845 () Bool)

(assert (=> b!4467328 m!5172845))

(declare-fun m!5172847 () Bool)

(assert (=> b!4467328 m!5172847))

(declare-fun m!5172849 () Bool)

(assert (=> b!4467328 m!5172849))

(declare-fun m!5172851 () Bool)

(assert (=> b!4467328 m!5172851))

(declare-fun m!5172853 () Bool)

(assert (=> b!4467328 m!5172853))

(declare-fun m!5172855 () Bool)

(assert (=> b!4467328 m!5172855))

(declare-fun m!5172857 () Bool)

(assert (=> b!4467328 m!5172857))

(assert (=> b!4467328 m!5172847))

(assert (=> b!4467328 m!5172833))

(declare-fun m!5172859 () Bool)

(assert (=> b!4467328 m!5172859))

(assert (=> b!4467328 m!5172221))

(declare-fun m!5172861 () Bool)

(assert (=> b!4467328 m!5172861))

(assert (=> b!4467328 m!5172221))

(assert (=> b!4467328 m!5172853))

(assert (=> bm!311004 m!5172221))

(declare-fun m!5172863 () Bool)

(assert (=> bm!311004 m!5172863))

(declare-fun m!5172865 () Bool)

(assert (=> bm!311005 m!5172865))

(declare-fun m!5172867 () Bool)

(assert (=> b!4467330 m!5172867))

(assert (=> b!4466909 d!1362504))

(declare-fun bs!793754 () Bool)

(declare-fun d!1362586 () Bool)

(assert (= bs!793754 (and d!1362586 d!1362384)))

(declare-fun lambda!162946 () Int)

(assert (=> bs!793754 (= lambda!162946 lambda!162845)))

(declare-fun bs!793755 () Bool)

(assert (= bs!793755 (and d!1362586 d!1362412)))

(assert (=> bs!793755 (not (= lambda!162946 lambda!162852))))

(declare-fun bs!793756 () Bool)

(assert (= bs!793756 (and d!1362586 d!1362362)))

(assert (=> bs!793756 (= lambda!162946 lambda!162840)))

(declare-fun bs!793757 () Bool)

(assert (= bs!793757 (and d!1362586 d!1362394)))

(assert (=> bs!793757 (= lambda!162946 lambda!162849)))

(declare-fun bs!793758 () Bool)

(assert (= bs!793758 (and d!1362586 d!1362414)))

(assert (=> bs!793758 (= lambda!162946 lambda!162855)))

(declare-fun bs!793759 () Bool)

(assert (= bs!793759 (and d!1362586 d!1362392)))

(assert (=> bs!793759 (= lambda!162946 lambda!162846)))

(declare-fun bs!793760 () Bool)

(assert (= bs!793760 (and d!1362586 d!1362336)))

(assert (=> bs!793760 (= lambda!162946 lambda!162828)))

(declare-fun bs!793761 () Bool)

(assert (= bs!793761 (and d!1362586 start!438580)))

(assert (=> bs!793761 (= lambda!162946 lambda!162813)))

(declare-fun bs!793762 () Bool)

(assert (= bs!793762 (and d!1362586 d!1362344)))

(assert (=> bs!793762 (= lambda!162946 lambda!162839)))

(declare-fun lt!1656713 () ListMap!3309)

(assert (=> d!1362586 (invariantList!923 (toList!4048 lt!1656713))))

(declare-fun e!2781839 () ListMap!3309)

(assert (=> d!1362586 (= lt!1656713 e!2781839)))

(declare-fun c!760399 () Bool)

(assert (=> d!1362586 (= c!760399 ((_ is Cons!50273) (t!357347 (Cons!50273 lt!1656299 Nil!50273))))))

(assert (=> d!1362586 (forall!9978 (t!357347 (Cons!50273 lt!1656299 Nil!50273)) lambda!162946)))

(assert (=> d!1362586 (= (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273))) lt!1656713)))

(declare-fun b!4467334 () Bool)

(assert (=> b!4467334 (= e!2781839 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (extractMap!1076 (t!357347 (t!357347 (Cons!50273 lt!1656299 Nil!50273))))))))

(declare-fun b!4467335 () Bool)

(assert (=> b!4467335 (= e!2781839 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362586 c!760399) b!4467334))

(assert (= (and d!1362586 (not c!760399)) b!4467335))

(declare-fun m!5172869 () Bool)

(assert (=> d!1362586 m!5172869))

(declare-fun m!5172871 () Bool)

(assert (=> d!1362586 m!5172871))

(declare-fun m!5172873 () Bool)

(assert (=> b!4467334 m!5172873))

(assert (=> b!4467334 m!5172873))

(declare-fun m!5172875 () Bool)

(assert (=> b!4467334 m!5172875))

(assert (=> b!4466909 d!1362586))

(declare-fun d!1362588 () Bool)

(declare-fun lt!1656714 () Bool)

(assert (=> d!1362588 (= lt!1656714 (select (content!8092 (toList!4047 lt!1656331)) lt!1656299))))

(declare-fun e!2781841 () Bool)

(assert (=> d!1362588 (= lt!1656714 e!2781841)))

(declare-fun res!1853278 () Bool)

(assert (=> d!1362588 (=> (not res!1853278) (not e!2781841))))

(assert (=> d!1362588 (= res!1853278 ((_ is Cons!50273) (toList!4047 lt!1656331)))))

(assert (=> d!1362588 (= (contains!12816 (toList!4047 lt!1656331) lt!1656299) lt!1656714)))

(declare-fun b!4467336 () Bool)

(declare-fun e!2781840 () Bool)

(assert (=> b!4467336 (= e!2781841 e!2781840)))

(declare-fun res!1853279 () Bool)

(assert (=> b!4467336 (=> res!1853279 e!2781840)))

(assert (=> b!4467336 (= res!1853279 (= (h!56032 (toList!4047 lt!1656331)) lt!1656299))))

(declare-fun b!4467337 () Bool)

(assert (=> b!4467337 (= e!2781840 (contains!12816 (t!357347 (toList!4047 lt!1656331)) lt!1656299))))

(assert (= (and d!1362588 res!1853278) b!4467336))

(assert (= (and b!4467336 (not res!1853279)) b!4467337))

(declare-fun m!5172877 () Bool)

(assert (=> d!1362588 m!5172877))

(declare-fun m!5172879 () Bool)

(assert (=> d!1362588 m!5172879))

(declare-fun m!5172881 () Bool)

(assert (=> b!4467337 m!5172881))

(assert (=> b!4466817 d!1362588))

(declare-fun d!1362590 () Bool)

(declare-fun res!1853284 () Bool)

(declare-fun e!2781848 () Bool)

(assert (=> d!1362590 (=> res!1853284 e!2781848)))

(assert (=> d!1362590 (= res!1853284 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) key!3287)))))

(assert (=> d!1362590 (= (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287) e!2781848)))

(declare-fun b!4467342 () Bool)

(declare-fun e!2781849 () Bool)

(assert (=> b!4467342 (= e!2781848 e!2781849)))

(declare-fun res!1853285 () Bool)

(assert (=> b!4467342 (=> (not res!1853285) (not e!2781849))))

(assert (=> b!4467342 (= res!1853285 ((_ is Cons!50272) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))

(declare-fun b!4467343 () Bool)

(assert (=> b!4467343 (= e!2781849 (containsKey!1459 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) key!3287))))

(assert (= (and d!1362590 (not res!1853284)) b!4467342))

(assert (= (and b!4467342 res!1853285) b!4467343))

(declare-fun m!5172883 () Bool)

(assert (=> b!4467343 m!5172883))

(assert (=> d!1362390 d!1362590))

(declare-fun d!1362592 () Bool)

(declare-fun res!1853286 () Bool)

(declare-fun e!2781850 () Bool)

(assert (=> d!1362592 (=> res!1853286 e!2781850)))

(assert (=> d!1362592 (= res!1853286 (and ((_ is Cons!50272) lt!1656473) (= (_1!28551 (h!56031 lt!1656473)) key!3287)))))

(assert (=> d!1362592 (= (containsKey!1456 lt!1656473 key!3287) e!2781850)))

(declare-fun b!4467344 () Bool)

(declare-fun e!2781851 () Bool)

(assert (=> b!4467344 (= e!2781850 e!2781851)))

(declare-fun res!1853287 () Bool)

(assert (=> b!4467344 (=> (not res!1853287) (not e!2781851))))

(assert (=> b!4467344 (= res!1853287 ((_ is Cons!50272) lt!1656473))))

(declare-fun b!4467345 () Bool)

(assert (=> b!4467345 (= e!2781851 (containsKey!1456 (t!357346 lt!1656473) key!3287))))

(assert (= (and d!1362592 (not res!1853286)) b!4467344))

(assert (= (and b!4467344 res!1853287) b!4467345))

(declare-fun m!5172885 () Bool)

(assert (=> b!4467345 m!5172885))

(assert (=> d!1362400 d!1362592))

(declare-fun d!1362594 () Bool)

(declare-fun res!1853288 () Bool)

(declare-fun e!2781852 () Bool)

(assert (=> d!1362594 (=> res!1853288 e!2781852)))

(assert (=> d!1362594 (= res!1853288 (not ((_ is Cons!50272) lt!1656307)))))

(assert (=> d!1362594 (= (noDuplicateKeys!1020 lt!1656307) e!2781852)))

(declare-fun b!4467346 () Bool)

(declare-fun e!2781853 () Bool)

(assert (=> b!4467346 (= e!2781852 e!2781853)))

(declare-fun res!1853289 () Bool)

(assert (=> b!4467346 (=> (not res!1853289) (not e!2781853))))

(assert (=> b!4467346 (= res!1853289 (not (containsKey!1456 (t!357346 lt!1656307) (_1!28551 (h!56031 lt!1656307)))))))

(declare-fun b!4467347 () Bool)

(assert (=> b!4467347 (= e!2781853 (noDuplicateKeys!1020 (t!357346 lt!1656307)))))

(assert (= (and d!1362594 (not res!1853288)) b!4467346))

(assert (= (and b!4467346 res!1853289) b!4467347))

(declare-fun m!5172887 () Bool)

(assert (=> b!4467346 m!5172887))

(declare-fun m!5172889 () Bool)

(assert (=> b!4467347 m!5172889))

(assert (=> d!1362400 d!1362594))

(declare-fun d!1362596 () Bool)

(declare-fun c!760402 () Bool)

(assert (=> d!1362596 (= c!760402 ((_ is Nil!50272) (toList!4048 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)))))))

(declare-fun e!2781856 () (InoxSet tuple2!50514))

(assert (=> d!1362596 (= (content!8090 (toList!4048 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)))) e!2781856)))

(declare-fun b!4467352 () Bool)

(assert (=> b!4467352 (= e!2781856 ((as const (Array tuple2!50514 Bool)) false))))

(declare-fun b!4467353 () Bool)

(assert (=> b!4467353 (= e!2781856 ((_ map or) (store ((as const (Array tuple2!50514 Bool)) false) (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)))) true) (content!8090 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 lt!1656299 Nil!50273)))))))))

(assert (= (and d!1362596 c!760402) b!4467352))

(assert (= (and d!1362596 (not c!760402)) b!4467353))

(declare-fun m!5172891 () Bool)

(assert (=> b!4467353 m!5172891))

(declare-fun m!5172893 () Bool)

(assert (=> b!4467353 m!5172893))

(assert (=> d!1362330 d!1362596))

(declare-fun d!1362598 () Bool)

(declare-fun c!760403 () Bool)

(assert (=> d!1362598 (= c!760403 ((_ is Nil!50272) (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))))))

(declare-fun e!2781857 () (InoxSet tuple2!50514))

(assert (=> d!1362598 (= (content!8090 (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))) e!2781857)))

(declare-fun b!4467354 () Bool)

(assert (=> b!4467354 (= e!2781857 ((as const (Array tuple2!50514 Bool)) false))))

(declare-fun b!4467355 () Bool)

(assert (=> b!4467355 (= e!2781857 ((_ map or) (store ((as const (Array tuple2!50514 Bool)) false) (h!56031 (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))) true) (content!8090 (t!357346 (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))))))))

(assert (= (and d!1362598 c!760403) b!4467354))

(assert (= (and d!1362598 (not c!760403)) b!4467355))

(declare-fun m!5172895 () Bool)

(assert (=> b!4467355 m!5172895))

(declare-fun m!5172897 () Bool)

(assert (=> b!4467355 m!5172897))

(assert (=> d!1362330 d!1362598))

(declare-fun d!1362600 () Bool)

(declare-fun res!1853290 () Bool)

(declare-fun e!2781858 () Bool)

(assert (=> d!1362600 (=> res!1853290 e!2781858)))

(assert (=> d!1362600 (= res!1853290 (not ((_ is Cons!50272) (_2!28552 (h!56032 (toList!4047 lt!1656294))))))))

(assert (=> d!1362600 (= (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lt!1656294)))) e!2781858)))

(declare-fun b!4467356 () Bool)

(declare-fun e!2781859 () Bool)

(assert (=> b!4467356 (= e!2781858 e!2781859)))

(declare-fun res!1853291 () Bool)

(assert (=> b!4467356 (=> (not res!1853291) (not e!2781859))))

(assert (=> b!4467356 (= res!1853291 (not (containsKey!1456 (t!357346 (_2!28552 (h!56032 (toList!4047 lt!1656294)))) (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lt!1656294))))))))))

(declare-fun b!4467357 () Bool)

(assert (=> b!4467357 (= e!2781859 (noDuplicateKeys!1020 (t!357346 (_2!28552 (h!56032 (toList!4047 lt!1656294))))))))

(assert (= (and d!1362600 (not res!1853290)) b!4467356))

(assert (= (and b!4467356 res!1853291) b!4467357))

(declare-fun m!5172899 () Bool)

(assert (=> b!4467356 m!5172899))

(declare-fun m!5172901 () Bool)

(assert (=> b!4467357 m!5172901))

(assert (=> bs!793653 d!1362600))

(declare-fun d!1362602 () Bool)

(assert (=> d!1362602 (= (get!16383 (getValueByKey!904 (toList!4047 lm!1477) hash!344)) (v!44219 (getValueByKey!904 (toList!4047 lm!1477) hash!344)))))

(assert (=> d!1362396 d!1362602))

(declare-fun b!4467368 () Bool)

(declare-fun e!2781865 () Option!10918)

(assert (=> b!4467368 (= e!2781865 (getValueByKey!904 (t!357347 (toList!4047 lm!1477)) hash!344))))

(declare-fun d!1362604 () Bool)

(declare-fun c!760408 () Bool)

(assert (=> d!1362604 (= c!760408 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (= (_1!28552 (h!56032 (toList!4047 lm!1477))) hash!344)))))

(declare-fun e!2781864 () Option!10918)

(assert (=> d!1362604 (= (getValueByKey!904 (toList!4047 lm!1477) hash!344) e!2781864)))

(declare-fun b!4467369 () Bool)

(assert (=> b!4467369 (= e!2781865 None!10917)))

(declare-fun b!4467366 () Bool)

(assert (=> b!4467366 (= e!2781864 (Some!10917 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(declare-fun b!4467367 () Bool)

(assert (=> b!4467367 (= e!2781864 e!2781865)))

(declare-fun c!760409 () Bool)

(assert (=> b!4467367 (= c!760409 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (not (= (_1!28552 (h!56032 (toList!4047 lm!1477))) hash!344))))))

(assert (= (and d!1362604 c!760408) b!4467366))

(assert (= (and d!1362604 (not c!760408)) b!4467367))

(assert (= (and b!4467367 c!760409) b!4467368))

(assert (= (and b!4467367 (not c!760409)) b!4467369))

(declare-fun m!5172903 () Bool)

(assert (=> b!4467368 m!5172903))

(assert (=> d!1362396 d!1362604))

(assert (=> b!4466977 d!1362590))

(declare-fun d!1362606 () Bool)

(assert (=> d!1362606 (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287)))

(declare-fun lt!1656721 () Unit!87415)

(declare-fun choose!28537 (List!50396 K!11690) Unit!87415)

(assert (=> d!1362606 (= lt!1656721 (choose!28537 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> d!1362606 (invariantList!923 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))

(assert (=> d!1362606 (= (lemmaInGetKeysListThenContainsKey!370 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287) lt!1656721)))

(declare-fun bs!793763 () Bool)

(assert (= bs!793763 d!1362606))

(assert (=> bs!793763 m!5172329))

(declare-fun m!5172905 () Bool)

(assert (=> bs!793763 m!5172905))

(declare-fun m!5172907 () Bool)

(assert (=> bs!793763 m!5172907))

(assert (=> b!4466977 d!1362606))

(declare-fun d!1362608 () Bool)

(declare-fun res!1853292 () Bool)

(declare-fun e!2781872 () Bool)

(assert (=> d!1362608 (=> res!1853292 e!2781872)))

(assert (=> d!1362608 (= res!1853292 (and ((_ is Cons!50272) (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477))))) (= (_1!28551 (h!56031 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))))) key!3287)))))

(assert (=> d!1362608 (= (containsKey!1456 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))) key!3287) e!2781872)))

(declare-fun b!4467382 () Bool)

(declare-fun e!2781873 () Bool)

(assert (=> b!4467382 (= e!2781872 e!2781873)))

(declare-fun res!1853293 () Bool)

(assert (=> b!4467382 (=> (not res!1853293) (not e!2781873))))

(assert (=> b!4467382 (= res!1853293 ((_ is Cons!50272) (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(declare-fun b!4467383 () Bool)

(assert (=> b!4467383 (= e!2781873 (containsKey!1456 (t!357346 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477))))) key!3287))))

(assert (= (and d!1362608 (not res!1853292)) b!4467382))

(assert (= (and b!4467382 res!1853293) b!4467383))

(declare-fun m!5172909 () Bool)

(assert (=> b!4467383 m!5172909))

(assert (=> b!4467033 d!1362608))

(declare-fun d!1362610 () Bool)

(declare-fun lt!1656734 () Bool)

(assert (=> d!1362610 (= lt!1656734 (select (content!8089 (keys!17354 (extractMap!1076 (toList!4047 lm!1477)))) key!3287))))

(declare-fun e!2781875 () Bool)

(assert (=> d!1362610 (= lt!1656734 e!2781875)))

(declare-fun res!1853294 () Bool)

(assert (=> d!1362610 (=> (not res!1853294) (not e!2781875))))

(assert (=> d!1362610 (= res!1853294 ((_ is Cons!50275) (keys!17354 (extractMap!1076 (toList!4047 lm!1477)))))))

(assert (=> d!1362610 (= (contains!12819 (keys!17354 (extractMap!1076 (toList!4047 lm!1477))) key!3287) lt!1656734)))

(declare-fun b!4467384 () Bool)

(declare-fun e!2781874 () Bool)

(assert (=> b!4467384 (= e!2781875 e!2781874)))

(declare-fun res!1853295 () Bool)

(assert (=> b!4467384 (=> res!1853295 e!2781874)))

(assert (=> b!4467384 (= res!1853295 (= (h!56036 (keys!17354 (extractMap!1076 (toList!4047 lm!1477)))) key!3287))))

(declare-fun b!4467385 () Bool)

(assert (=> b!4467385 (= e!2781874 (contains!12819 (t!357349 (keys!17354 (extractMap!1076 (toList!4047 lm!1477)))) key!3287))))

(assert (= (and d!1362610 res!1853294) b!4467384))

(assert (= (and b!4467384 (not res!1853295)) b!4467385))

(assert (=> d!1362610 m!5172321))

(declare-fun m!5172911 () Bool)

(assert (=> d!1362610 m!5172911))

(declare-fun m!5172913 () Bool)

(assert (=> d!1362610 m!5172913))

(declare-fun m!5172915 () Bool)

(assert (=> b!4467385 m!5172915))

(assert (=> b!4466979 d!1362610))

(declare-fun bs!793764 () Bool)

(declare-fun b!4467387 () Bool)

(assert (= bs!793764 (and b!4467387 b!4467127)))

(declare-fun lambda!162947 () Int)

(assert (=> bs!793764 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!162947 lambda!162893))))

(assert (=> b!4467387 true))

(declare-fun bs!793765 () Bool)

(declare-fun b!4467388 () Bool)

(assert (= bs!793765 (and b!4467388 b!4467128)))

(declare-fun lambda!162948 () Int)

(assert (=> bs!793765 (= lambda!162948 lambda!162894)))

(declare-fun d!1362612 () Bool)

(declare-fun e!2781876 () Bool)

(assert (=> d!1362612 e!2781876))

(declare-fun res!1853298 () Bool)

(assert (=> d!1362612 (=> (not res!1853298) (not e!2781876))))

(declare-fun lt!1656735 () List!50399)

(assert (=> d!1362612 (= res!1853298 (noDuplicate!695 lt!1656735))))

(assert (=> d!1362612 (= lt!1656735 (getKeysList!371 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))

(assert (=> d!1362612 (= (keys!17354 (extractMap!1076 (toList!4047 lm!1477))) lt!1656735)))

(declare-fun b!4467386 () Bool)

(declare-fun res!1853296 () Bool)

(assert (=> b!4467386 (=> (not res!1853296) (not e!2781876))))

(assert (=> b!4467386 (= res!1853296 (= (length!246 lt!1656735) (length!247 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))))

(declare-fun res!1853297 () Bool)

(assert (=> b!4467387 (=> (not res!1853297) (not e!2781876))))

(assert (=> b!4467387 (= res!1853297 (forall!9981 lt!1656735 lambda!162947))))

(assert (=> b!4467388 (= e!2781876 (= (content!8089 lt!1656735) (content!8089 (map!11016 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) lambda!162948))))))

(assert (= (and d!1362612 res!1853298) b!4467386))

(assert (= (and b!4467386 res!1853296) b!4467387))

(assert (= (and b!4467387 res!1853297) b!4467388))

(declare-fun m!5172917 () Bool)

(assert (=> d!1362612 m!5172917))

(assert (=> d!1362612 m!5172325))

(declare-fun m!5172919 () Bool)

(assert (=> b!4467386 m!5172919))

(declare-fun m!5172921 () Bool)

(assert (=> b!4467386 m!5172921))

(declare-fun m!5172923 () Bool)

(assert (=> b!4467387 m!5172923))

(declare-fun m!5172925 () Bool)

(assert (=> b!4467388 m!5172925))

(declare-fun m!5172927 () Bool)

(assert (=> b!4467388 m!5172927))

(assert (=> b!4467388 m!5172927))

(declare-fun m!5172929 () Bool)

(assert (=> b!4467388 m!5172929))

(assert (=> b!4466979 d!1362612))

(declare-fun d!1362614 () Bool)

(declare-fun res!1853299 () Bool)

(declare-fun e!2781883 () Bool)

(assert (=> d!1362614 (=> res!1853299 e!2781883)))

(assert (=> d!1362614 (= res!1853299 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362614 (= (forall!9978 (toList!4047 lm!1477) lambda!162852) e!2781883)))

(declare-fun b!4467401 () Bool)

(declare-fun e!2781884 () Bool)

(assert (=> b!4467401 (= e!2781883 e!2781884)))

(declare-fun res!1853300 () Bool)

(assert (=> b!4467401 (=> (not res!1853300) (not e!2781884))))

(assert (=> b!4467401 (= res!1853300 (dynLambda!21006 lambda!162852 (h!56032 (toList!4047 lm!1477))))))

(declare-fun b!4467402 () Bool)

(assert (=> b!4467402 (= e!2781884 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162852))))

(assert (= (and d!1362614 (not res!1853299)) b!4467401))

(assert (= (and b!4467401 res!1853300) b!4467402))

(declare-fun b_lambda!148201 () Bool)

(assert (=> (not b_lambda!148201) (not b!4467401)))

(declare-fun m!5172931 () Bool)

(assert (=> b!4467401 m!5172931))

(declare-fun m!5172933 () Bool)

(assert (=> b!4467402 m!5172933))

(assert (=> d!1362412 d!1362614))

(declare-fun d!1362616 () Bool)

(declare-fun res!1853311 () Bool)

(declare-fun e!2781893 () Bool)

(assert (=> d!1362616 (=> res!1853311 e!2781893)))

(assert (=> d!1362616 (= res!1853311 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (= (_1!28552 (h!56032 (toList!4047 lm!1477))) lt!1656298)))))

(assert (=> d!1362616 (= (containsKey!1460 (toList!4047 lm!1477) lt!1656298) e!2781893)))

(declare-fun b!4467419 () Bool)

(declare-fun e!2781894 () Bool)

(assert (=> b!4467419 (= e!2781893 e!2781894)))

(declare-fun res!1853312 () Bool)

(assert (=> b!4467419 (=> (not res!1853312) (not e!2781894))))

(assert (=> b!4467419 (= res!1853312 (and (or (not ((_ is Cons!50273) (toList!4047 lm!1477))) (bvsle (_1!28552 (h!56032 (toList!4047 lm!1477))) lt!1656298)) ((_ is Cons!50273) (toList!4047 lm!1477)) (bvslt (_1!28552 (h!56032 (toList!4047 lm!1477))) lt!1656298)))))

(declare-fun b!4467420 () Bool)

(assert (=> b!4467420 (= e!2781894 (containsKey!1460 (t!357347 (toList!4047 lm!1477)) lt!1656298))))

(assert (= (and d!1362616 (not res!1853311)) b!4467419))

(assert (= (and b!4467419 res!1853312) b!4467420))

(declare-fun m!5172935 () Bool)

(assert (=> b!4467420 m!5172935))

(assert (=> d!1362402 d!1362616))

(declare-fun d!1362618 () Bool)

(declare-fun res!1853313 () Bool)

(declare-fun e!2781897 () Bool)

(assert (=> d!1362618 (=> res!1853313 e!2781897)))

(assert (=> d!1362618 (= res!1853313 ((_ is Nil!50273) (t!357347 (toList!4047 lt!1656294))))))

(assert (=> d!1362618 (= (forall!9978 (t!357347 (toList!4047 lt!1656294)) lambda!162813) e!2781897)))

(declare-fun b!4467423 () Bool)

(declare-fun e!2781898 () Bool)

(assert (=> b!4467423 (= e!2781897 e!2781898)))

(declare-fun res!1853314 () Bool)

(assert (=> b!4467423 (=> (not res!1853314) (not e!2781898))))

(assert (=> b!4467423 (= res!1853314 (dynLambda!21006 lambda!162813 (h!56032 (t!357347 (toList!4047 lt!1656294)))))))

(declare-fun b!4467424 () Bool)

(assert (=> b!4467424 (= e!2781898 (forall!9978 (t!357347 (t!357347 (toList!4047 lt!1656294))) lambda!162813))))

(assert (= (and d!1362618 (not res!1853313)) b!4467423))

(assert (= (and b!4467423 res!1853314) b!4467424))

(declare-fun b_lambda!148203 () Bool)

(assert (=> (not b_lambda!148203) (not b!4467423)))

(declare-fun m!5172937 () Bool)

(assert (=> b!4467423 m!5172937))

(declare-fun m!5172939 () Bool)

(assert (=> b!4467424 m!5172939))

(assert (=> b!4467037 d!1362618))

(declare-fun d!1362620 () Bool)

(declare-fun lt!1656756 () Bool)

(assert (=> d!1362620 (= lt!1656756 (select (content!8089 e!2781600) key!3287))))

(declare-fun e!2781900 () Bool)

(assert (=> d!1362620 (= lt!1656756 e!2781900)))

(declare-fun res!1853315 () Bool)

(assert (=> d!1362620 (=> (not res!1853315) (not e!2781900))))

(assert (=> d!1362620 (= res!1853315 ((_ is Cons!50275) e!2781600))))

(assert (=> d!1362620 (= (contains!12819 e!2781600 key!3287) lt!1656756)))

(declare-fun b!4467425 () Bool)

(declare-fun e!2781899 () Bool)

(assert (=> b!4467425 (= e!2781900 e!2781899)))

(declare-fun res!1853316 () Bool)

(assert (=> b!4467425 (=> res!1853316 e!2781899)))

(assert (=> b!4467425 (= res!1853316 (= (h!56036 e!2781600) key!3287))))

(declare-fun b!4467426 () Bool)

(assert (=> b!4467426 (= e!2781899 (contains!12819 (t!357349 e!2781600) key!3287))))

(assert (= (and d!1362620 res!1853315) b!4467425))

(assert (= (and b!4467425 (not res!1853316)) b!4467426))

(declare-fun m!5172941 () Bool)

(assert (=> d!1362620 m!5172941))

(declare-fun m!5172943 () Bool)

(assert (=> d!1362620 m!5172943))

(declare-fun m!5172945 () Bool)

(assert (=> b!4467426 m!5172945))

(assert (=> bm!310973 d!1362620))

(declare-fun d!1362622 () Bool)

(declare-fun res!1853317 () Bool)

(declare-fun e!2781901 () Bool)

(assert (=> d!1362622 (=> res!1853317 e!2781901)))

(assert (=> d!1362622 (= res!1853317 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 lt!1656304))) (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304)))) key!3287)))))

(assert (=> d!1362622 (= (containsKey!1459 (toList!4048 (extractMap!1076 lt!1656304)) key!3287) e!2781901)))

(declare-fun b!4467427 () Bool)

(declare-fun e!2781902 () Bool)

(assert (=> b!4467427 (= e!2781901 e!2781902)))

(declare-fun res!1853318 () Bool)

(assert (=> b!4467427 (=> (not res!1853318) (not e!2781902))))

(assert (=> b!4467427 (= res!1853318 ((_ is Cons!50272) (toList!4048 (extractMap!1076 lt!1656304))))))

(declare-fun b!4467428 () Bool)

(assert (=> b!4467428 (= e!2781902 (containsKey!1459 (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) key!3287))))

(assert (= (and d!1362622 (not res!1853317)) b!4467427))

(assert (= (and b!4467427 res!1853318) b!4467428))

(declare-fun m!5172947 () Bool)

(assert (=> b!4467428 m!5172947))

(assert (=> b!4466960 d!1362622))

(declare-fun d!1362624 () Bool)

(assert (=> d!1362624 (containsKey!1459 (toList!4048 (extractMap!1076 lt!1656304)) key!3287)))

(declare-fun lt!1656757 () Unit!87415)

(assert (=> d!1362624 (= lt!1656757 (choose!28537 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(assert (=> d!1362624 (invariantList!923 (toList!4048 (extractMap!1076 lt!1656304)))))

(assert (=> d!1362624 (= (lemmaInGetKeysListThenContainsKey!370 (toList!4048 (extractMap!1076 lt!1656304)) key!3287) lt!1656757)))

(declare-fun bs!793766 () Bool)

(assert (= bs!793766 d!1362624))

(assert (=> bs!793766 m!5172289))

(declare-fun m!5172949 () Bool)

(assert (=> bs!793766 m!5172949))

(declare-fun m!5172951 () Bool)

(assert (=> bs!793766 m!5172951))

(assert (=> b!4466960 d!1362624))

(declare-fun d!1362626 () Bool)

(assert (=> d!1362626 (dynLambda!21006 lambda!162813 lt!1656297)))

(assert (=> d!1362626 true))

(declare-fun _$7!1675 () Unit!87415)

(assert (=> d!1362626 (= (choose!28529 (toList!4047 lm!1477) lambda!162813 lt!1656297) _$7!1675)))

(declare-fun b_lambda!148205 () Bool)

(assert (=> (not b_lambda!148205) (not d!1362626)))

(declare-fun bs!793767 () Bool)

(assert (= bs!793767 d!1362626))

(assert (=> bs!793767 m!5172355))

(assert (=> d!1362398 d!1362626))

(assert (=> d!1362398 d!1362300))

(declare-fun b!4467429 () Bool)

(declare-fun e!2781904 () Unit!87415)

(declare-fun e!2781906 () Unit!87415)

(assert (=> b!4467429 (= e!2781904 e!2781906)))

(declare-fun c!760428 () Bool)

(declare-fun call!311023 () Bool)

(assert (=> b!4467429 (= c!760428 call!311023)))

(declare-fun b!4467430 () Bool)

(declare-fun e!2781905 () List!50399)

(assert (=> b!4467430 (= e!2781905 (keys!17354 lt!1656354))))

(declare-fun b!4467431 () Bool)

(assert (=> b!4467431 false))

(declare-fun lt!1656765 () Unit!87415)

(declare-fun lt!1656764 () Unit!87415)

(assert (=> b!4467431 (= lt!1656765 lt!1656764)))

(assert (=> b!4467431 (containsKey!1459 (toList!4048 lt!1656354) key!3287)))

(assert (=> b!4467431 (= lt!1656764 (lemmaInGetKeysListThenContainsKey!370 (toList!4048 lt!1656354) key!3287))))

(declare-fun Unit!87455 () Unit!87415)

(assert (=> b!4467431 (= e!2781906 Unit!87455)))

(declare-fun b!4467432 () Bool)

(declare-fun lt!1656763 () Unit!87415)

(assert (=> b!4467432 (= e!2781904 lt!1656763)))

(declare-fun lt!1656761 () Unit!87415)

(assert (=> b!4467432 (= lt!1656761 (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 lt!1656354) key!3287))))

(assert (=> b!4467432 (isDefined!8205 (getValueByKey!905 (toList!4048 lt!1656354) key!3287))))

(declare-fun lt!1656760 () Unit!87415)

(assert (=> b!4467432 (= lt!1656760 lt!1656761)))

(assert (=> b!4467432 (= lt!1656763 (lemmaInListThenGetKeysListContains!367 (toList!4048 lt!1656354) key!3287))))

(assert (=> b!4467432 call!311023))

(declare-fun b!4467433 () Bool)

(declare-fun e!2781903 () Bool)

(assert (=> b!4467433 (= e!2781903 (not (contains!12819 (keys!17354 lt!1656354) key!3287)))))

(declare-fun b!4467434 () Bool)

(assert (=> b!4467434 (= e!2781905 (getKeysList!371 (toList!4048 lt!1656354)))))

(declare-fun bm!311018 () Bool)

(assert (=> bm!311018 (= call!311023 (contains!12819 e!2781905 key!3287))))

(declare-fun c!760426 () Bool)

(declare-fun c!760427 () Bool)

(assert (=> bm!311018 (= c!760426 c!760427)))

(declare-fun b!4467435 () Bool)

(declare-fun e!2781907 () Bool)

(assert (=> b!4467435 (= e!2781907 (contains!12819 (keys!17354 lt!1656354) key!3287))))

(declare-fun d!1362628 () Bool)

(declare-fun e!2781908 () Bool)

(assert (=> d!1362628 e!2781908))

(declare-fun res!1853319 () Bool)

(assert (=> d!1362628 (=> res!1853319 e!2781908)))

(assert (=> d!1362628 (= res!1853319 e!2781903)))

(declare-fun res!1853321 () Bool)

(assert (=> d!1362628 (=> (not res!1853321) (not e!2781903))))

(declare-fun lt!1656759 () Bool)

(assert (=> d!1362628 (= res!1853321 (not lt!1656759))))

(declare-fun lt!1656758 () Bool)

(assert (=> d!1362628 (= lt!1656759 lt!1656758)))

(declare-fun lt!1656762 () Unit!87415)

(assert (=> d!1362628 (= lt!1656762 e!2781904)))

(assert (=> d!1362628 (= c!760427 lt!1656758)))

(assert (=> d!1362628 (= lt!1656758 (containsKey!1459 (toList!4048 lt!1656354) key!3287))))

(assert (=> d!1362628 (= (contains!12815 lt!1656354 key!3287) lt!1656759)))

(declare-fun b!4467436 () Bool)

(declare-fun Unit!87456 () Unit!87415)

(assert (=> b!4467436 (= e!2781906 Unit!87456)))

(declare-fun b!4467437 () Bool)

(assert (=> b!4467437 (= e!2781908 e!2781907)))

(declare-fun res!1853320 () Bool)

(assert (=> b!4467437 (=> (not res!1853320) (not e!2781907))))

(assert (=> b!4467437 (= res!1853320 (isDefined!8205 (getValueByKey!905 (toList!4048 lt!1656354) key!3287)))))

(assert (= (and d!1362628 c!760427) b!4467432))

(assert (= (and d!1362628 (not c!760427)) b!4467429))

(assert (= (and b!4467429 c!760428) b!4467431))

(assert (= (and b!4467429 (not c!760428)) b!4467436))

(assert (= (or b!4467432 b!4467429) bm!311018))

(assert (= (and bm!311018 c!760426) b!4467434))

(assert (= (and bm!311018 (not c!760426)) b!4467430))

(assert (= (and d!1362628 res!1853321) b!4467433))

(assert (= (and d!1362628 (not res!1853319)) b!4467437))

(assert (= (and b!4467437 res!1853320) b!4467435))

(declare-fun m!5172953 () Bool)

(assert (=> b!4467437 m!5172953))

(assert (=> b!4467437 m!5172953))

(declare-fun m!5172955 () Bool)

(assert (=> b!4467437 m!5172955))

(assert (=> b!4467433 m!5172091))

(assert (=> b!4467433 m!5172091))

(declare-fun m!5172957 () Bool)

(assert (=> b!4467433 m!5172957))

(assert (=> b!4467435 m!5172091))

(assert (=> b!4467435 m!5172091))

(assert (=> b!4467435 m!5172957))

(declare-fun m!5172959 () Bool)

(assert (=> b!4467434 m!5172959))

(declare-fun m!5172961 () Bool)

(assert (=> bm!311018 m!5172961))

(assert (=> b!4467430 m!5172091))

(declare-fun m!5172963 () Bool)

(assert (=> b!4467431 m!5172963))

(declare-fun m!5172965 () Bool)

(assert (=> b!4467431 m!5172965))

(declare-fun m!5172967 () Bool)

(assert (=> b!4467432 m!5172967))

(assert (=> b!4467432 m!5172953))

(assert (=> b!4467432 m!5172953))

(assert (=> b!4467432 m!5172955))

(declare-fun m!5172969 () Bool)

(assert (=> b!4467432 m!5172969))

(assert (=> d!1362628 m!5172963))

(assert (=> d!1362320 d!1362628))

(declare-fun b!4467562 () Bool)

(declare-fun e!2781987 () List!50396)

(assert (=> b!4467562 (= e!2781987 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(declare-fun b!4467563 () Bool)

(declare-fun e!2781986 () Unit!87415)

(declare-fun Unit!87457 () Unit!87415)

(assert (=> b!4467563 (= e!2781986 Unit!87457)))

(declare-fun lt!1656877 () Unit!87415)

(assert (=> b!4467563 (= lt!1656877 (lemmaInGetKeysListThenContainsKey!370 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(declare-fun call!311048 () Bool)

(assert (=> b!4467563 call!311048))

(declare-fun lt!1656874 () Unit!87415)

(assert (=> b!4467563 (= lt!1656874 lt!1656877)))

(assert (=> b!4467563 false))

(declare-fun b!4467564 () Bool)

(declare-fun e!2781985 () List!50396)

(assert (=> b!4467564 (= e!2781985 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun c!760476 () Bool)

(declare-fun call!311053 () Bool)

(assert (=> b!4467564 (= c!760476 call!311053)))

(declare-fun lt!1656868 () Unit!87415)

(declare-fun e!2781984 () Unit!87415)

(assert (=> b!4467564 (= lt!1656868 e!2781984)))

(declare-fun b!4467565 () Bool)

(declare-fun e!2781983 () Unit!87415)

(declare-fun Unit!87458 () Unit!87415)

(assert (=> b!4467565 (= e!2781983 Unit!87458)))

(declare-fun lt!1656870 () V!11936)

(declare-fun get!16384 (Option!10919) V!11936)

(assert (=> b!4467565 (= lt!1656870 (get!16384 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287)))))

(declare-fun lt!1656871 () K!11690)

(assert (=> b!4467565 (= lt!1656871 key!3287)))

(declare-fun lt!1656882 () K!11690)

(assert (=> b!4467565 (= lt!1656882 key!3287)))

(declare-fun lt!1656878 () Unit!87415)

(declare-fun lemmaContainsTupleThenContainsKey!20 (List!50396 K!11690 V!11936) Unit!87415)

(assert (=> b!4467565 (= lt!1656878 (lemmaContainsTupleThenContainsKey!20 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lt!1656871 (get!16384 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))))))

(assert (=> b!4467565 call!311048))

(declare-fun lt!1656883 () Unit!87415)

(assert (=> b!4467565 (= lt!1656883 lt!1656878)))

(assert (=> b!4467565 false))

(declare-fun bm!311043 () Bool)

(declare-fun call!311049 () (InoxSet tuple2!50514))

(assert (=> bm!311043 (= call!311049 (content!8090 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun e!2781990 () Bool)

(declare-fun call!311051 () (InoxSet tuple2!50514))

(declare-fun b!4467566 () Bool)

(declare-fun call!311052 () (InoxSet tuple2!50514))

(assert (=> b!4467566 (= e!2781990 (= call!311052 ((_ map and) call!311051 ((_ map not) (store ((as const (Array tuple2!50514 Bool)) false) (tuple2!50515 key!3287 (get!16384 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))) true)))))))

(assert (=> b!4467566 (containsKey!1459 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287)))

(declare-fun lt!1656875 () Unit!87415)

(assert (=> b!4467566 (= lt!1656875 (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))))

(assert (=> b!4467566 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))))

(declare-fun lt!1656884 () Unit!87415)

(assert (=> b!4467566 (= lt!1656884 lt!1656875)))

(declare-fun b!4467567 () Bool)

(declare-fun e!2781988 () List!50396)

(assert (=> b!4467567 (= e!2781988 Nil!50272)))

(declare-fun b!4467568 () Bool)

(declare-fun res!1853368 () Bool)

(declare-fun e!2781982 () Bool)

(assert (=> b!4467568 (=> (not res!1853368) (not e!2781982))))

(declare-fun lt!1656873 () List!50396)

(assert (=> b!4467568 (= res!1853368 (= (content!8089 (getKeysList!371 lt!1656873)) ((_ map and) (content!8089 (getKeysList!371 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))) ((_ map not) (store ((as const (Array K!11690 Bool)) false) key!3287 true)))))))

(declare-fun b!4467569 () Bool)

(declare-fun call!311050 () (InoxSet tuple2!50514))

(assert (=> b!4467569 (= call!311049 ((_ map and) call!311050 ((_ map not) (store ((as const (Array tuple2!50514 Bool)) false) (tuple2!50515 key!3287 (get!16384 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))) true))))))

(declare-fun lt!1656879 () Unit!87415)

(assert (=> b!4467569 (= lt!1656879 e!2781983)))

(declare-fun c!760469 () Bool)

(declare-fun contains!12820 (List!50396 tuple2!50514) Bool)

(assert (=> b!4467569 (= c!760469 (contains!12820 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (tuple2!50515 key!3287 (get!16384 (getValueByKey!905 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287)))))))

(declare-fun Unit!87459 () Unit!87415)

(assert (=> b!4467569 (= e!2781984 Unit!87459)))

(declare-fun bm!311044 () Bool)

(assert (=> bm!311044 (= call!311051 (content!8090 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun bm!311045 () Bool)

(assert (=> bm!311045 (= call!311052 (content!8090 lt!1656873))))

(declare-fun b!4467570 () Bool)

(declare-fun e!2781989 () Unit!87415)

(declare-fun Unit!87461 () Unit!87415)

(assert (=> b!4467570 (= e!2781989 Unit!87461)))

(declare-fun b!4467571 () Bool)

(declare-fun Unit!87463 () Unit!87415)

(assert (=> b!4467571 (= e!2781986 Unit!87463)))

(declare-fun b!4467572 () Bool)

(assert (=> b!4467572 (= e!2781982 e!2781990)))

(declare-fun c!760472 () Bool)

(assert (=> b!4467572 (= c!760472 (containsKey!1459 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287))))

(declare-fun bm!311046 () Bool)

(declare-fun c!760474 () Bool)

(assert (=> bm!311046 (= call!311048 (containsKey!1459 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (ite c!760474 lt!1656871 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))))

(declare-fun bm!311047 () Bool)

(assert (=> bm!311047 (= call!311053 (containsKey!1459 e!2781987 (ite c!760474 key!3287 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))))

(declare-fun c!760475 () Bool)

(assert (=> bm!311047 (= c!760475 c!760474)))

(declare-fun bm!311048 () Bool)

(assert (=> bm!311048 (= call!311050 (content!8090 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun b!4467573 () Bool)

(assert (=> b!4467573 (= e!2781990 (= call!311052 call!311051))))

(declare-fun b!4467574 () Bool)

(assert (=> b!4467574 (= e!2781985 e!2781988)))

(declare-fun c!760470 () Bool)

(assert (=> b!4467574 (= c!760470 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (not (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))) key!3287))))))

(declare-fun b!4467575 () Bool)

(declare-fun Unit!87470 () Unit!87415)

(assert (=> b!4467575 (= e!2781989 Unit!87470)))

(declare-fun lt!1656876 () List!50396)

(assert (=> b!4467575 (= lt!1656876 (removePresrvNoDuplicatedKeys!58 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) key!3287))))

(declare-fun lt!1656885 () Unit!87415)

(assert (=> b!4467575 (= lt!1656885 (lemmaInListThenGetKeysListContains!367 lt!1656876 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(assert (=> b!4467575 (contains!12819 (getKeysList!371 lt!1656876) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun lt!1656869 () Unit!87415)

(assert (=> b!4467575 (= lt!1656869 lt!1656885)))

(assert (=> b!4467575 false))

(declare-fun b!4467576 () Bool)

(declare-fun Unit!87472 () Unit!87415)

(assert (=> b!4467576 (= e!2781983 Unit!87472)))

(declare-fun b!4467577 () Bool)

(assert (=> b!4467577 (= e!2781987 (removePresrvNoDuplicatedKeys!58 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) key!3287))))

(declare-fun b!4467579 () Bool)

(declare-fun lt!1656881 () Unit!87415)

(assert (=> b!4467579 (= lt!1656881 e!2781989)))

(declare-fun c!760473 () Bool)

(assert (=> b!4467579 (= c!760473 call!311053)))

(declare-fun lt!1656872 () Unit!87415)

(assert (=> b!4467579 (= lt!1656872 e!2781986)))

(declare-fun c!760471 () Bool)

(assert (=> b!4467579 (= c!760471 (contains!12819 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(declare-fun lt!1656880 () List!50396)

(declare-fun $colon$colon!846 (List!50396 tuple2!50514) List!50396)

(assert (=> b!4467579 (= lt!1656880 ($colon$colon!846 (removePresrvNoDuplicatedKeys!58 (t!357346 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) key!3287) (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(assert (=> b!4467579 (= e!2781988 lt!1656880)))

(declare-fun b!4467580 () Bool)

(declare-fun res!1853366 () Bool)

(assert (=> b!4467580 (=> (not res!1853366) (not e!2781982))))

(assert (=> b!4467580 (= res!1853366 (not (containsKey!1459 lt!1656873 key!3287)))))

(declare-fun d!1362630 () Bool)

(assert (=> d!1362630 e!2781982))

(declare-fun res!1853367 () Bool)

(assert (=> d!1362630 (=> (not res!1853367) (not e!2781982))))

(assert (=> d!1362630 (= res!1853367 (invariantList!923 lt!1656873))))

(assert (=> d!1362630 (= lt!1656873 e!2781985)))

(assert (=> d!1362630 (= c!760474 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))) key!3287)))))

(assert (=> d!1362630 (invariantList!923 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(assert (=> d!1362630 (= (removePresrvNoDuplicatedKeys!58 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) key!3287) lt!1656873)))

(declare-fun b!4467578 () Bool)

(assert (=> b!4467578 (= call!311049 call!311050)))

(declare-fun Unit!87475 () Unit!87415)

(assert (=> b!4467578 (= e!2781984 Unit!87475)))

(assert (= (and d!1362630 c!760474) b!4467564))

(assert (= (and d!1362630 (not c!760474)) b!4467574))

(assert (= (and b!4467564 c!760476) b!4467569))

(assert (= (and b!4467564 (not c!760476)) b!4467578))

(assert (= (and b!4467569 c!760469) b!4467565))

(assert (= (and b!4467569 (not c!760469)) b!4467576))

(assert (= (or b!4467569 b!4467578) bm!311043))

(assert (= (or b!4467569 b!4467578) bm!311048))

(assert (= (and b!4467574 c!760470) b!4467579))

(assert (= (and b!4467574 (not c!760470)) b!4467567))

(assert (= (and b!4467579 c!760471) b!4467563))

(assert (= (and b!4467579 (not c!760471)) b!4467571))

(assert (= (and b!4467579 c!760473) b!4467575))

(assert (= (and b!4467579 (not c!760473)) b!4467570))

(assert (= (or b!4467565 b!4467563) bm!311046))

(assert (= (or b!4467564 b!4467579) bm!311047))

(assert (= (and bm!311047 c!760475) b!4467562))

(assert (= (and bm!311047 (not c!760475)) b!4467577))

(assert (= (and d!1362630 res!1853367) b!4467580))

(assert (= (and b!4467580 res!1853366) b!4467568))

(assert (= (and b!4467568 res!1853368) b!4467572))

(assert (= (and b!4467572 c!760472) b!4467566))

(assert (= (and b!4467572 (not c!760472)) b!4467573))

(assert (= (or b!4467566 b!4467573) bm!311044))

(assert (= (or b!4467566 b!4467573) bm!311045))

(declare-fun m!5173137 () Bool)

(assert (=> b!4467563 m!5173137))

(declare-fun m!5173139 () Bool)

(assert (=> bm!311043 m!5173139))

(declare-fun m!5173141 () Bool)

(assert (=> bm!311045 m!5173141))

(declare-fun m!5173143 () Bool)

(assert (=> bm!311046 m!5173143))

(declare-fun m!5173145 () Bool)

(assert (=> b!4467569 m!5173145))

(assert (=> b!4467569 m!5173145))

(declare-fun m!5173147 () Bool)

(assert (=> b!4467569 m!5173147))

(declare-fun m!5173149 () Bool)

(assert (=> b!4467569 m!5173149))

(declare-fun m!5173151 () Bool)

(assert (=> b!4467569 m!5173151))

(declare-fun m!5173153 () Bool)

(assert (=> bm!311044 m!5173153))

(declare-fun m!5173155 () Bool)

(assert (=> b!4467579 m!5173155))

(assert (=> b!4467579 m!5173155))

(declare-fun m!5173157 () Bool)

(assert (=> b!4467579 m!5173157))

(declare-fun m!5173159 () Bool)

(assert (=> b!4467579 m!5173159))

(assert (=> b!4467579 m!5173159))

(declare-fun m!5173161 () Bool)

(assert (=> b!4467579 m!5173161))

(assert (=> b!4467565 m!5173145))

(assert (=> b!4467565 m!5173145))

(assert (=> b!4467565 m!5173147))

(assert (=> b!4467565 m!5173147))

(declare-fun m!5173163 () Bool)

(assert (=> b!4467565 m!5173163))

(declare-fun m!5173165 () Bool)

(assert (=> b!4467580 m!5173165))

(declare-fun m!5173167 () Bool)

(assert (=> bm!311047 m!5173167))

(assert (=> bm!311048 m!5173153))

(declare-fun m!5173169 () Bool)

(assert (=> b!4467572 m!5173169))

(assert (=> b!4467568 m!5172089))

(declare-fun m!5173171 () Bool)

(assert (=> b!4467568 m!5173171))

(declare-fun m!5173173 () Bool)

(assert (=> b!4467568 m!5173173))

(declare-fun m!5173175 () Bool)

(assert (=> b!4467568 m!5173175))

(assert (=> b!4467568 m!5173173))

(assert (=> b!4467568 m!5173171))

(declare-fun m!5173177 () Bool)

(assert (=> b!4467568 m!5173177))

(declare-fun m!5173179 () Bool)

(assert (=> d!1362630 m!5173179))

(declare-fun m!5173181 () Bool)

(assert (=> d!1362630 m!5173181))

(assert (=> b!4467575 m!5173159))

(declare-fun m!5173183 () Bool)

(assert (=> b!4467575 m!5173183))

(declare-fun m!5173185 () Bool)

(assert (=> b!4467575 m!5173185))

(assert (=> b!4467575 m!5173185))

(declare-fun m!5173187 () Bool)

(assert (=> b!4467575 m!5173187))

(assert (=> b!4467566 m!5173145))

(assert (=> b!4467566 m!5173145))

(assert (=> b!4467566 m!5173147))

(assert (=> b!4467566 m!5173145))

(declare-fun m!5173189 () Bool)

(assert (=> b!4467566 m!5173189))

(declare-fun m!5173191 () Bool)

(assert (=> b!4467566 m!5173191))

(assert (=> b!4467566 m!5173169))

(assert (=> b!4467566 m!5173149))

(assert (=> b!4467577 m!5173159))

(assert (=> d!1362320 d!1362630))

(declare-fun d!1362670 () Bool)

(declare-fun lt!1656893 () Bool)

(assert (=> d!1362670 (= lt!1656893 (select (content!8092 (toList!4047 lm!1477)) (tuple2!50517 hash!344 lt!1656307)))))

(declare-fun e!2781996 () Bool)

(assert (=> d!1362670 (= lt!1656893 e!2781996)))

(declare-fun res!1853372 () Bool)

(assert (=> d!1362670 (=> (not res!1853372) (not e!2781996))))

(assert (=> d!1362670 (= res!1853372 ((_ is Cons!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362670 (= (contains!12816 (toList!4047 lm!1477) (tuple2!50517 hash!344 lt!1656307)) lt!1656893)))

(declare-fun b!4467592 () Bool)

(declare-fun e!2781995 () Bool)

(assert (=> b!4467592 (= e!2781996 e!2781995)))

(declare-fun res!1853373 () Bool)

(assert (=> b!4467592 (=> res!1853373 e!2781995)))

(assert (=> b!4467592 (= res!1853373 (= (h!56032 (toList!4047 lm!1477)) (tuple2!50517 hash!344 lt!1656307)))))

(declare-fun b!4467593 () Bool)

(assert (=> b!4467593 (= e!2781995 (contains!12816 (t!357347 (toList!4047 lm!1477)) (tuple2!50517 hash!344 lt!1656307)))))

(assert (= (and d!1362670 res!1853372) b!4467592))

(assert (= (and b!4467592 (not res!1853373)) b!4467593))

(assert (=> d!1362670 m!5172377))

(declare-fun m!5173193 () Bool)

(assert (=> d!1362670 m!5173193))

(declare-fun m!5173195 () Bool)

(assert (=> b!4467593 m!5173195))

(assert (=> d!1362404 d!1362670))

(declare-fun d!1362672 () Bool)

(assert (=> d!1362672 (contains!12816 (toList!4047 lm!1477) (tuple2!50517 hash!344 lt!1656307))))

(assert (=> d!1362672 true))

(declare-fun _$14!978 () Unit!87415)

(assert (=> d!1362672 (= (choose!28530 (toList!4047 lm!1477) hash!344 lt!1656307) _$14!978)))

(declare-fun bs!793826 () Bool)

(assert (= bs!793826 d!1362672))

(assert (=> bs!793826 m!5172373))

(assert (=> d!1362404 d!1362672))

(declare-fun d!1362676 () Bool)

(declare-fun res!1853378 () Bool)

(declare-fun e!2782001 () Bool)

(assert (=> d!1362676 (=> res!1853378 e!2782001)))

(assert (=> d!1362676 (= res!1853378 (or ((_ is Nil!50273) (toList!4047 lm!1477)) ((_ is Nil!50273) (t!357347 (toList!4047 lm!1477)))))))

(assert (=> d!1362676 (= (isStrictlySorted!337 (toList!4047 lm!1477)) e!2782001)))

(declare-fun b!4467598 () Bool)

(declare-fun e!2782002 () Bool)

(assert (=> b!4467598 (= e!2782001 e!2782002)))

(declare-fun res!1853379 () Bool)

(assert (=> b!4467598 (=> (not res!1853379) (not e!2782002))))

(assert (=> b!4467598 (= res!1853379 (bvslt (_1!28552 (h!56032 (toList!4047 lm!1477))) (_1!28552 (h!56032 (t!357347 (toList!4047 lm!1477))))))))

(declare-fun b!4467599 () Bool)

(assert (=> b!4467599 (= e!2782002 (isStrictlySorted!337 (t!357347 (toList!4047 lm!1477))))))

(assert (= (and d!1362676 (not res!1853378)) b!4467598))

(assert (= (and b!4467598 res!1853379) b!4467599))

(declare-fun m!5173221 () Bool)

(assert (=> b!4467599 m!5173221))

(assert (=> d!1362404 d!1362676))

(declare-fun b!4467602 () Bool)

(declare-fun e!2782004 () Option!10918)

(assert (=> b!4467602 (= e!2782004 (getValueByKey!904 (t!357347 (toList!4047 lt!1656318)) (_1!28552 lt!1656299)))))

(declare-fun d!1362678 () Bool)

(declare-fun c!760480 () Bool)

(assert (=> d!1362678 (= c!760480 (and ((_ is Cons!50273) (toList!4047 lt!1656318)) (= (_1!28552 (h!56032 (toList!4047 lt!1656318))) (_1!28552 lt!1656299))))))

(declare-fun e!2782003 () Option!10918)

(assert (=> d!1362678 (= (getValueByKey!904 (toList!4047 lt!1656318) (_1!28552 lt!1656299)) e!2782003)))

(declare-fun b!4467603 () Bool)

(assert (=> b!4467603 (= e!2782004 None!10917)))

(declare-fun b!4467600 () Bool)

(assert (=> b!4467600 (= e!2782003 (Some!10917 (_2!28552 (h!56032 (toList!4047 lt!1656318)))))))

(declare-fun b!4467601 () Bool)

(assert (=> b!4467601 (= e!2782003 e!2782004)))

(declare-fun c!760481 () Bool)

(assert (=> b!4467601 (= c!760481 (and ((_ is Cons!50273) (toList!4047 lt!1656318)) (not (= (_1!28552 (h!56032 (toList!4047 lt!1656318))) (_1!28552 lt!1656299)))))))

(assert (= (and d!1362678 c!760480) b!4467600))

(assert (= (and d!1362678 (not c!760480)) b!4467601))

(assert (= (and b!4467601 c!760481) b!4467602))

(assert (= (and b!4467601 (not c!760481)) b!4467603))

(declare-fun m!5173223 () Bool)

(assert (=> b!4467602 m!5173223))

(assert (=> b!4466784 d!1362678))

(declare-fun d!1362680 () Bool)

(declare-fun res!1853380 () Bool)

(declare-fun e!2782005 () Bool)

(assert (=> d!1362680 (=> res!1853380 e!2782005)))

(assert (=> d!1362680 (= res!1853380 (and ((_ is Cons!50272) (_2!28552 (h!56032 lt!1656304))) (= (_1!28551 (h!56031 (_2!28552 (h!56032 lt!1656304)))) key!3287)))))

(assert (=> d!1362680 (= (containsKey!1456 (_2!28552 (h!56032 lt!1656304)) key!3287) e!2782005)))

(declare-fun b!4467604 () Bool)

(declare-fun e!2782006 () Bool)

(assert (=> b!4467604 (= e!2782005 e!2782006)))

(declare-fun res!1853381 () Bool)

(assert (=> b!4467604 (=> (not res!1853381) (not e!2782006))))

(assert (=> b!4467604 (= res!1853381 ((_ is Cons!50272) (_2!28552 (h!56032 lt!1656304))))))

(declare-fun b!4467605 () Bool)

(assert (=> b!4467605 (= e!2782006 (containsKey!1456 (t!357346 (_2!28552 (h!56032 lt!1656304))) key!3287))))

(assert (= (and d!1362680 (not res!1853380)) b!4467604))

(assert (= (and b!4467604 res!1853381) b!4467605))

(declare-fun m!5173225 () Bool)

(assert (=> b!4467605 m!5173225))

(assert (=> b!4467025 d!1362680))

(declare-fun d!1362682 () Bool)

(assert (=> d!1362682 (= (invariantList!923 (toList!4048 lt!1656417)) (noDuplicatedKeys!211 (toList!4048 lt!1656417)))))

(declare-fun bs!793827 () Bool)

(assert (= bs!793827 d!1362682))

(declare-fun m!5173227 () Bool)

(assert (=> bs!793827 m!5173227))

(assert (=> d!1362362 d!1362682))

(declare-fun d!1362684 () Bool)

(declare-fun res!1853382 () Bool)

(declare-fun e!2782007 () Bool)

(assert (=> d!1362684 (=> res!1853382 e!2782007)))

(assert (=> d!1362684 (= res!1853382 ((_ is Nil!50273) (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))

(assert (=> d!1362684 (= (forall!9978 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273) lambda!162840) e!2782007)))

(declare-fun b!4467606 () Bool)

(declare-fun e!2782008 () Bool)

(assert (=> b!4467606 (= e!2782007 e!2782008)))

(declare-fun res!1853383 () Bool)

(assert (=> b!4467606 (=> (not res!1853383) (not e!2782008))))

(assert (=> b!4467606 (= res!1853383 (dynLambda!21006 lambda!162840 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(declare-fun b!4467607 () Bool)

(assert (=> b!4467607 (= e!2782008 (forall!9978 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) lambda!162840))))

(assert (= (and d!1362684 (not res!1853382)) b!4467606))

(assert (= (and b!4467606 res!1853383) b!4467607))

(declare-fun b_lambda!148215 () Bool)

(assert (=> (not b_lambda!148215) (not b!4467606)))

(declare-fun m!5173229 () Bool)

(assert (=> b!4467606 m!5173229))

(declare-fun m!5173231 () Bool)

(assert (=> b!4467607 m!5173231))

(assert (=> d!1362362 d!1362684))

(declare-fun d!1362686 () Bool)

(assert (=> d!1362686 (= (invariantList!923 (toList!4048 lt!1656455)) (noDuplicatedKeys!211 (toList!4048 lt!1656455)))))

(declare-fun bs!793828 () Bool)

(assert (= bs!793828 d!1362686))

(declare-fun m!5173233 () Bool)

(assert (=> bs!793828 m!5173233))

(assert (=> d!1362384 d!1362686))

(declare-fun d!1362688 () Bool)

(declare-fun res!1853384 () Bool)

(declare-fun e!2782009 () Bool)

(assert (=> d!1362688 (=> res!1853384 e!2782009)))

(assert (=> d!1362688 (= res!1853384 ((_ is Nil!50273) lt!1656304))))

(assert (=> d!1362688 (= (forall!9978 lt!1656304 lambda!162845) e!2782009)))

(declare-fun b!4467608 () Bool)

(declare-fun e!2782010 () Bool)

(assert (=> b!4467608 (= e!2782009 e!2782010)))

(declare-fun res!1853385 () Bool)

(assert (=> b!4467608 (=> (not res!1853385) (not e!2782010))))

(assert (=> b!4467608 (= res!1853385 (dynLambda!21006 lambda!162845 (h!56032 lt!1656304)))))

(declare-fun b!4467609 () Bool)

(assert (=> b!4467609 (= e!2782010 (forall!9978 (t!357347 lt!1656304) lambda!162845))))

(assert (= (and d!1362688 (not res!1853384)) b!4467608))

(assert (= (and b!4467608 res!1853385) b!4467609))

(declare-fun b_lambda!148217 () Bool)

(assert (=> (not b_lambda!148217) (not b!4467608)))

(declare-fun m!5173235 () Bool)

(assert (=> b!4467608 m!5173235))

(declare-fun m!5173237 () Bool)

(assert (=> b!4467609 m!5173237))

(assert (=> d!1362384 d!1362688))

(declare-fun d!1362690 () Bool)

(assert (=> d!1362690 (= (invariantList!923 (toList!4048 lt!1656464)) (noDuplicatedKeys!211 (toList!4048 lt!1656464)))))

(declare-fun bs!793829 () Bool)

(assert (= bs!793829 d!1362690))

(declare-fun m!5173239 () Bool)

(assert (=> bs!793829 m!5173239))

(assert (=> d!1362392 d!1362690))

(declare-fun d!1362692 () Bool)

(declare-fun res!1853386 () Bool)

(declare-fun e!2782011 () Bool)

(assert (=> d!1362692 (=> res!1853386 e!2782011)))

(assert (=> d!1362692 (= res!1853386 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362692 (= (forall!9978 (toList!4047 lm!1477) lambda!162846) e!2782011)))

(declare-fun b!4467610 () Bool)

(declare-fun e!2782012 () Bool)

(assert (=> b!4467610 (= e!2782011 e!2782012)))

(declare-fun res!1853387 () Bool)

(assert (=> b!4467610 (=> (not res!1853387) (not e!2782012))))

(assert (=> b!4467610 (= res!1853387 (dynLambda!21006 lambda!162846 (h!56032 (toList!4047 lm!1477))))))

(declare-fun b!4467611 () Bool)

(assert (=> b!4467611 (= e!2782012 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162846))))

(assert (= (and d!1362692 (not res!1853386)) b!4467610))

(assert (= (and b!4467610 res!1853387) b!4467611))

(declare-fun b_lambda!148219 () Bool)

(assert (=> (not b_lambda!148219) (not b!4467610)))

(declare-fun m!5173241 () Bool)

(assert (=> b!4467610 m!5173241))

(declare-fun m!5173243 () Bool)

(assert (=> b!4467611 m!5173243))

(assert (=> d!1362392 d!1362692))

(declare-fun bs!793889 () Bool)

(declare-fun b!4467666 () Bool)

(assert (= bs!793889 (and b!4467666 b!4467127)))

(declare-fun lambda!162981 () Int)

(assert (=> bs!793889 (= (= (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!162981 lambda!162893))))

(declare-fun bs!793892 () Bool)

(assert (= bs!793892 (and b!4467666 b!4467387)))

(assert (=> bs!793892 (= (= (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!162981 lambda!162947))))

(assert (=> b!4467666 true))

(declare-fun bs!793896 () Bool)

(declare-fun b!4467667 () Bool)

(assert (= bs!793896 (and b!4467667 b!4467127)))

(declare-fun lambda!162982 () Int)

(assert (=> bs!793896 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!162982 lambda!162893))))

(declare-fun bs!793898 () Bool)

(assert (= bs!793898 (and b!4467667 b!4467387)))

(assert (=> bs!793898 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!162982 lambda!162947))))

(declare-fun bs!793900 () Bool)

(assert (= bs!793900 (and b!4467667 b!4467666)))

(assert (=> bs!793900 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!162982 lambda!162981))))

(assert (=> b!4467667 true))

(declare-fun bs!793905 () Bool)

(declare-fun b!4467665 () Bool)

(assert (= bs!793905 (and b!4467665 b!4467127)))

(declare-fun lambda!162984 () Int)

(assert (=> bs!793905 (= lambda!162984 lambda!162893)))

(declare-fun bs!793907 () Bool)

(assert (= bs!793907 (and b!4467665 b!4467387)))

(assert (=> bs!793907 (= (= (toList!4048 (extractMap!1076 lt!1656304)) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!162984 lambda!162947))))

(declare-fun bs!793909 () Bool)

(assert (= bs!793909 (and b!4467665 b!4467666)))

(assert (=> bs!793909 (= (= (toList!4048 (extractMap!1076 lt!1656304)) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!162984 lambda!162981))))

(declare-fun bs!793911 () Bool)

(assert (= bs!793911 (and b!4467665 b!4467667)))

(assert (=> bs!793911 (= (= (toList!4048 (extractMap!1076 lt!1656304)) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!162984 lambda!162982))))

(assert (=> b!4467665 true))

(declare-fun bs!793913 () Bool)

(declare-fun b!4467668 () Bool)

(assert (= bs!793913 (and b!4467668 b!4467128)))

(declare-fun lambda!162986 () Int)

(assert (=> bs!793913 (= lambda!162986 lambda!162894)))

(declare-fun bs!793915 () Bool)

(assert (= bs!793915 (and b!4467668 b!4467388)))

(assert (=> bs!793915 (= lambda!162986 lambda!162948)))

(declare-fun b!4467664 () Bool)

(declare-fun res!1853408 () Bool)

(declare-fun e!2782042 () Bool)

(assert (=> b!4467664 (=> (not res!1853408) (not e!2782042))))

(declare-fun lt!1656943 () List!50399)

(assert (=> b!4467664 (= res!1853408 (= (length!246 lt!1656943) (length!247 (toList!4048 (extractMap!1076 lt!1656304)))))))

(declare-fun res!1853406 () Bool)

(assert (=> b!4467665 (=> (not res!1853406) (not e!2782042))))

(assert (=> b!4467665 (= res!1853406 (forall!9981 lt!1656943 lambda!162984))))

(assert (=> b!4467666 false))

(declare-fun lt!1656944 () Unit!87415)

(declare-fun forallContained!2252 (List!50399 Int K!11690) Unit!87415)

(assert (=> b!4467666 (= lt!1656944 (forallContained!2252 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) lambda!162981 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))))))))

(declare-fun e!2782044 () Unit!87415)

(declare-fun Unit!87480 () Unit!87415)

(assert (=> b!4467666 (= e!2782044 Unit!87480)))

(declare-fun e!2782043 () List!50399)

(assert (=> b!4467667 (= e!2782043 (Cons!50275 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304)))) (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))))))

(declare-fun c!760499 () Bool)

(assert (=> b!4467667 (= c!760499 (containsKey!1459 (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))))))))

(declare-fun lt!1656940 () Unit!87415)

(declare-fun e!2782041 () Unit!87415)

(assert (=> b!4467667 (= lt!1656940 e!2782041)))

(declare-fun c!760501 () Bool)

(assert (=> b!4467667 (= c!760501 (contains!12819 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))))))))

(declare-fun lt!1656942 () Unit!87415)

(assert (=> b!4467667 (= lt!1656942 e!2782044)))

(declare-fun lt!1656941 () List!50399)

(assert (=> b!4467667 (= lt!1656941 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))))))

(declare-fun lt!1656938 () Unit!87415)

(declare-fun lemmaForallContainsAddHeadPreserves!117 (List!50396 List!50399 tuple2!50514) Unit!87415)

(assert (=> b!4467667 (= lt!1656938 (lemmaForallContainsAddHeadPreserves!117 (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) lt!1656941 (h!56031 (toList!4048 (extractMap!1076 lt!1656304)))))))

(assert (=> b!4467667 (forall!9981 lt!1656941 lambda!162982)))

(declare-fun lt!1656939 () Unit!87415)

(assert (=> b!4467667 (= lt!1656939 lt!1656938)))

(assert (=> b!4467668 (= e!2782042 (= (content!8089 lt!1656943) (content!8089 (map!11016 (toList!4048 (extractMap!1076 lt!1656304)) lambda!162986))))))

(declare-fun d!1362694 () Bool)

(assert (=> d!1362694 e!2782042))

(declare-fun res!1853407 () Bool)

(assert (=> d!1362694 (=> (not res!1853407) (not e!2782042))))

(assert (=> d!1362694 (= res!1853407 (noDuplicate!695 lt!1656943))))

(assert (=> d!1362694 (= lt!1656943 e!2782043)))

(declare-fun c!760500 () Bool)

(assert (=> d!1362694 (= c!760500 ((_ is Cons!50272) (toList!4048 (extractMap!1076 lt!1656304))))))

(assert (=> d!1362694 (invariantList!923 (toList!4048 (extractMap!1076 lt!1656304)))))

(assert (=> d!1362694 (= (getKeysList!371 (toList!4048 (extractMap!1076 lt!1656304))) lt!1656943)))

(declare-fun b!4467669 () Bool)

(assert (=> b!4467669 (= e!2782043 Nil!50275)))

(declare-fun b!4467670 () Bool)

(declare-fun Unit!87482 () Unit!87415)

(assert (=> b!4467670 (= e!2782041 Unit!87482)))

(declare-fun b!4467671 () Bool)

(assert (=> b!4467671 false))

(declare-fun Unit!87483 () Unit!87415)

(assert (=> b!4467671 (= e!2782041 Unit!87483)))

(declare-fun b!4467672 () Bool)

(declare-fun Unit!87484 () Unit!87415)

(assert (=> b!4467672 (= e!2782044 Unit!87484)))

(assert (= (and d!1362694 c!760500) b!4467667))

(assert (= (and d!1362694 (not c!760500)) b!4467669))

(assert (= (and b!4467667 c!760499) b!4467671))

(assert (= (and b!4467667 (not c!760499)) b!4467670))

(assert (= (and b!4467667 c!760501) b!4467666))

(assert (= (and b!4467667 (not c!760501)) b!4467672))

(assert (= (and d!1362694 res!1853407) b!4467664))

(assert (= (and b!4467664 res!1853408) b!4467665))

(assert (= (and b!4467665 res!1853406) b!4467668))

(declare-fun m!5173313 () Bool)

(assert (=> b!4467668 m!5173313))

(declare-fun m!5173317 () Bool)

(assert (=> b!4467668 m!5173317))

(assert (=> b!4467668 m!5173317))

(declare-fun m!5173321 () Bool)

(assert (=> b!4467668 m!5173321))

(declare-fun m!5173325 () Bool)

(assert (=> b!4467664 m!5173325))

(assert (=> b!4467664 m!5172523))

(declare-fun m!5173327 () Bool)

(assert (=> d!1362694 m!5173327))

(assert (=> d!1362694 m!5172951))

(declare-fun m!5173333 () Bool)

(assert (=> b!4467665 m!5173333))

(declare-fun m!5173337 () Bool)

(assert (=> b!4467667 m!5173337))

(declare-fun m!5173341 () Bool)

(assert (=> b!4467667 m!5173341))

(declare-fun m!5173345 () Bool)

(assert (=> b!4467667 m!5173345))

(assert (=> b!4467667 m!5173341))

(declare-fun m!5173349 () Bool)

(assert (=> b!4467667 m!5173349))

(declare-fun m!5173353 () Bool)

(assert (=> b!4467667 m!5173353))

(assert (=> b!4467666 m!5173341))

(assert (=> b!4467666 m!5173341))

(declare-fun m!5173359 () Bool)

(assert (=> b!4467666 m!5173359))

(assert (=> b!4466963 d!1362694))

(declare-fun d!1362716 () Bool)

(declare-fun e!2782045 () Bool)

(assert (=> d!1362716 e!2782045))

(declare-fun res!1853409 () Bool)

(assert (=> d!1362716 (=> res!1853409 e!2782045)))

(declare-fun lt!1656948 () Bool)

(assert (=> d!1362716 (= res!1853409 (not lt!1656948))))

(declare-fun lt!1656947 () Bool)

(assert (=> d!1362716 (= lt!1656948 lt!1656947)))

(declare-fun lt!1656946 () Unit!87415)

(declare-fun e!2782046 () Unit!87415)

(assert (=> d!1362716 (= lt!1656946 e!2782046)))

(declare-fun c!760502 () Bool)

(assert (=> d!1362716 (= c!760502 lt!1656947)))

(assert (=> d!1362716 (= lt!1656947 (containsKey!1460 (toList!4047 lt!1656331) (_1!28552 lt!1656299)))))

(assert (=> d!1362716 (= (contains!12817 lt!1656331 (_1!28552 lt!1656299)) lt!1656948)))

(declare-fun b!4467675 () Bool)

(declare-fun lt!1656945 () Unit!87415)

(assert (=> b!4467675 (= e!2782046 lt!1656945)))

(assert (=> b!4467675 (= lt!1656945 (lemmaContainsKeyImpliesGetValueByKeyDefined!809 (toList!4047 lt!1656331) (_1!28552 lt!1656299)))))

(assert (=> b!4467675 (isDefined!8206 (getValueByKey!904 (toList!4047 lt!1656331) (_1!28552 lt!1656299)))))

(declare-fun b!4467676 () Bool)

(declare-fun Unit!87489 () Unit!87415)

(assert (=> b!4467676 (= e!2782046 Unit!87489)))

(declare-fun b!4467677 () Bool)

(assert (=> b!4467677 (= e!2782045 (isDefined!8206 (getValueByKey!904 (toList!4047 lt!1656331) (_1!28552 lt!1656299))))))

(assert (= (and d!1362716 c!760502) b!4467675))

(assert (= (and d!1362716 (not c!760502)) b!4467676))

(assert (= (and d!1362716 (not res!1853409)) b!4467677))

(declare-fun m!5173361 () Bool)

(assert (=> d!1362716 m!5173361))

(declare-fun m!5173363 () Bool)

(assert (=> b!4467675 m!5173363))

(assert (=> b!4467675 m!5172061))

(assert (=> b!4467675 m!5172061))

(declare-fun m!5173365 () Bool)

(assert (=> b!4467675 m!5173365))

(assert (=> b!4467677 m!5172061))

(assert (=> b!4467677 m!5172061))

(assert (=> b!4467677 m!5173365))

(assert (=> d!1362318 d!1362716))

(declare-fun b!4467683 () Bool)

(declare-fun e!2782051 () Option!10918)

(assert (=> b!4467683 (= e!2782051 (getValueByKey!904 (t!357347 lt!1656333) (_1!28552 lt!1656299)))))

(declare-fun d!1362718 () Bool)

(declare-fun c!760503 () Bool)

(assert (=> d!1362718 (= c!760503 (and ((_ is Cons!50273) lt!1656333) (= (_1!28552 (h!56032 lt!1656333)) (_1!28552 lt!1656299))))))

(declare-fun e!2782050 () Option!10918)

(assert (=> d!1362718 (= (getValueByKey!904 lt!1656333 (_1!28552 lt!1656299)) e!2782050)))

(declare-fun b!4467684 () Bool)

(assert (=> b!4467684 (= e!2782051 None!10917)))

(declare-fun b!4467681 () Bool)

(assert (=> b!4467681 (= e!2782050 (Some!10917 (_2!28552 (h!56032 lt!1656333))))))

(declare-fun b!4467682 () Bool)

(assert (=> b!4467682 (= e!2782050 e!2782051)))

(declare-fun c!760504 () Bool)

(assert (=> b!4467682 (= c!760504 (and ((_ is Cons!50273) lt!1656333) (not (= (_1!28552 (h!56032 lt!1656333)) (_1!28552 lt!1656299)))))))

(assert (= (and d!1362718 c!760503) b!4467681))

(assert (= (and d!1362718 (not c!760503)) b!4467682))

(assert (= (and b!4467682 c!760504) b!4467683))

(assert (= (and b!4467682 (not c!760504)) b!4467684))

(declare-fun m!5173367 () Bool)

(assert (=> b!4467683 m!5173367))

(assert (=> d!1362318 d!1362718))

(declare-fun d!1362720 () Bool)

(assert (=> d!1362720 (= (getValueByKey!904 lt!1656333 (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299)))))

(declare-fun lt!1656951 () Unit!87415)

(declare-fun choose!28539 (List!50397 (_ BitVec 64) List!50396) Unit!87415)

(assert (=> d!1362720 (= lt!1656951 (choose!28539 lt!1656333 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(declare-fun e!2782054 () Bool)

(assert (=> d!1362720 e!2782054))

(declare-fun res!1853414 () Bool)

(assert (=> d!1362720 (=> (not res!1853414) (not e!2782054))))

(assert (=> d!1362720 (= res!1853414 (isStrictlySorted!337 lt!1656333))))

(assert (=> d!1362720 (= (lemmaContainsTupThenGetReturnValue!580 lt!1656333 (_1!28552 lt!1656299) (_2!28552 lt!1656299)) lt!1656951)))

(declare-fun b!4467689 () Bool)

(declare-fun res!1853415 () Bool)

(assert (=> b!4467689 (=> (not res!1853415) (not e!2782054))))

(assert (=> b!4467689 (= res!1853415 (containsKey!1460 lt!1656333 (_1!28552 lt!1656299)))))

(declare-fun b!4467690 () Bool)

(assert (=> b!4467690 (= e!2782054 (contains!12816 lt!1656333 (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299))))))

(assert (= (and d!1362720 res!1853414) b!4467689))

(assert (= (and b!4467689 res!1853415) b!4467690))

(assert (=> d!1362720 m!5172055))

(declare-fun m!5173379 () Bool)

(assert (=> d!1362720 m!5173379))

(declare-fun m!5173381 () Bool)

(assert (=> d!1362720 m!5173381))

(declare-fun m!5173383 () Bool)

(assert (=> b!4467689 m!5173383))

(declare-fun m!5173385 () Bool)

(assert (=> b!4467690 m!5173385))

(assert (=> d!1362318 d!1362720))

(declare-fun b!4467711 () Bool)

(declare-fun e!2782069 () List!50397)

(assert (=> b!4467711 (= e!2782069 (insertStrictlySorted!326 (t!357347 (toList!4047 lm!1477)) (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(declare-fun b!4467712 () Bool)

(declare-fun e!2782067 () List!50397)

(declare-fun call!311063 () List!50397)

(assert (=> b!4467712 (= e!2782067 call!311063)))

(declare-fun b!4467713 () Bool)

(declare-fun e!2782068 () List!50397)

(declare-fun call!311064 () List!50397)

(assert (=> b!4467713 (= e!2782068 call!311064)))

(declare-fun b!4467714 () Bool)

(assert (=> b!4467714 (= e!2782067 e!2782068)))

(declare-fun c!760514 () Bool)

(assert (=> b!4467714 (= c!760514 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (= (_1!28552 (h!56032 (toList!4047 lm!1477))) (_1!28552 lt!1656299))))))

(declare-fun bm!311058 () Bool)

(assert (=> bm!311058 (= call!311064 call!311063)))

(declare-fun c!760515 () Bool)

(declare-fun bm!311059 () Bool)

(declare-fun $colon$colon!848 (List!50397 tuple2!50516) List!50397)

(assert (=> bm!311059 (= call!311063 ($colon$colon!848 e!2782069 (ite c!760515 (h!56032 (toList!4047 lm!1477)) (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))))

(declare-fun c!760513 () Bool)

(assert (=> bm!311059 (= c!760513 c!760515)))

(declare-fun bm!311060 () Bool)

(declare-fun call!311065 () List!50397)

(assert (=> bm!311060 (= call!311065 call!311064)))

(declare-fun b!4467715 () Bool)

(declare-fun res!1853421 () Bool)

(declare-fun e!2782066 () Bool)

(assert (=> b!4467715 (=> (not res!1853421) (not e!2782066))))

(declare-fun lt!1656954 () List!50397)

(assert (=> b!4467715 (= res!1853421 (containsKey!1460 lt!1656954 (_1!28552 lt!1656299)))))

(declare-fun b!4467716 () Bool)

(assert (=> b!4467716 (= e!2782066 (contains!12816 lt!1656954 (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299))))))

(declare-fun d!1362744 () Bool)

(assert (=> d!1362744 e!2782066))

(declare-fun res!1853420 () Bool)

(assert (=> d!1362744 (=> (not res!1853420) (not e!2782066))))

(assert (=> d!1362744 (= res!1853420 (isStrictlySorted!337 lt!1656954))))

(assert (=> d!1362744 (= lt!1656954 e!2782067)))

(assert (=> d!1362744 (= c!760515 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (bvslt (_1!28552 (h!56032 (toList!4047 lm!1477))) (_1!28552 lt!1656299))))))

(assert (=> d!1362744 (isStrictlySorted!337 (toList!4047 lm!1477))))

(assert (=> d!1362744 (= (insertStrictlySorted!326 (toList!4047 lm!1477) (_1!28552 lt!1656299) (_2!28552 lt!1656299)) lt!1656954)))

(declare-fun b!4467717 () Bool)

(declare-fun e!2782065 () List!50397)

(assert (=> b!4467717 (= e!2782065 call!311065)))

(declare-fun c!760516 () Bool)

(declare-fun b!4467718 () Bool)

(assert (=> b!4467718 (= e!2782069 (ite c!760514 (t!357347 (toList!4047 lm!1477)) (ite c!760516 (Cons!50273 (h!56032 (toList!4047 lm!1477)) (t!357347 (toList!4047 lm!1477))) Nil!50273)))))

(declare-fun b!4467719 () Bool)

(assert (=> b!4467719 (= c!760516 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (bvsgt (_1!28552 (h!56032 (toList!4047 lm!1477))) (_1!28552 lt!1656299))))))

(assert (=> b!4467719 (= e!2782068 e!2782065)))

(declare-fun b!4467720 () Bool)

(assert (=> b!4467720 (= e!2782065 call!311065)))

(assert (= (and d!1362744 c!760515) b!4467712))

(assert (= (and d!1362744 (not c!760515)) b!4467714))

(assert (= (and b!4467714 c!760514) b!4467713))

(assert (= (and b!4467714 (not c!760514)) b!4467719))

(assert (= (and b!4467719 c!760516) b!4467717))

(assert (= (and b!4467719 (not c!760516)) b!4467720))

(assert (= (or b!4467717 b!4467720) bm!311060))

(assert (= (or b!4467713 bm!311060) bm!311058))

(assert (= (or b!4467712 bm!311058) bm!311059))

(assert (= (and bm!311059 c!760513) b!4467711))

(assert (= (and bm!311059 (not c!760513)) b!4467718))

(assert (= (and d!1362744 res!1853420) b!4467715))

(assert (= (and b!4467715 res!1853421) b!4467716))

(declare-fun m!5173387 () Bool)

(assert (=> b!4467715 m!5173387))

(declare-fun m!5173389 () Bool)

(assert (=> bm!311059 m!5173389))

(declare-fun m!5173391 () Bool)

(assert (=> d!1362744 m!5173391))

(assert (=> d!1362744 m!5172033))

(declare-fun m!5173393 () Bool)

(assert (=> b!4467716 m!5173393))

(declare-fun m!5173395 () Bool)

(assert (=> b!4467711 m!5173395))

(assert (=> d!1362318 d!1362744))

(assert (=> d!1362414 d!1362390))

(assert (=> d!1362414 d!1362392))

(declare-fun d!1362746 () Bool)

(assert (=> d!1362746 (not (contains!12815 (extractMap!1076 (toList!4047 lm!1477)) key!3287))))

(assert (=> d!1362746 true))

(declare-fun _$26!233 () Unit!87415)

(assert (=> d!1362746 (= (choose!28531 lm!1477 key!3287 hashF!1107) _$26!233)))

(declare-fun bs!793930 () Bool)

(assert (= bs!793930 d!1362746))

(assert (=> bs!793930 m!5171935))

(assert (=> bs!793930 m!5171935))

(assert (=> bs!793930 m!5171937))

(assert (=> d!1362414 d!1362746))

(declare-fun d!1362748 () Bool)

(declare-fun res!1853422 () Bool)

(declare-fun e!2782070 () Bool)

(assert (=> d!1362748 (=> res!1853422 e!2782070)))

(assert (=> d!1362748 (= res!1853422 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(assert (=> d!1362748 (= (forall!9978 (toList!4047 lm!1477) lambda!162855) e!2782070)))

(declare-fun b!4467721 () Bool)

(declare-fun e!2782071 () Bool)

(assert (=> b!4467721 (= e!2782070 e!2782071)))

(declare-fun res!1853423 () Bool)

(assert (=> b!4467721 (=> (not res!1853423) (not e!2782071))))

(assert (=> b!4467721 (= res!1853423 (dynLambda!21006 lambda!162855 (h!56032 (toList!4047 lm!1477))))))

(declare-fun b!4467722 () Bool)

(assert (=> b!4467722 (= e!2782071 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162855))))

(assert (= (and d!1362748 (not res!1853422)) b!4467721))

(assert (= (and b!4467721 res!1853423) b!4467722))

(declare-fun b_lambda!148249 () Bool)

(assert (=> (not b_lambda!148249) (not b!4467721)))

(declare-fun m!5173397 () Bool)

(assert (=> b!4467721 m!5173397))

(declare-fun m!5173399 () Bool)

(assert (=> b!4467722 m!5173399))

(assert (=> d!1362414 d!1362748))

(declare-fun d!1362750 () Bool)

(declare-fun res!1853424 () Bool)

(declare-fun e!2782074 () Bool)

(assert (=> d!1362750 (=> res!1853424 e!2782074)))

(declare-fun e!2782073 () Bool)

(assert (=> d!1362750 (= res!1853424 e!2782073)))

(declare-fun res!1853425 () Bool)

(assert (=> d!1362750 (=> (not res!1853425) (not e!2782073))))

(assert (=> d!1362750 (= res!1853425 ((_ is Cons!50273) (t!357347 lt!1656304)))))

(assert (=> d!1362750 (= (containsKeyBiggerList!20 (t!357347 lt!1656304) key!3287) e!2782074)))

(declare-fun b!4467723 () Bool)

(assert (=> b!4467723 (= e!2782073 (containsKey!1456 (_2!28552 (h!56032 (t!357347 lt!1656304))) key!3287))))

(declare-fun b!4467724 () Bool)

(declare-fun e!2782072 () Bool)

(assert (=> b!4467724 (= e!2782074 e!2782072)))

(declare-fun res!1853426 () Bool)

(assert (=> b!4467724 (=> (not res!1853426) (not e!2782072))))

(assert (=> b!4467724 (= res!1853426 ((_ is Cons!50273) (t!357347 lt!1656304)))))

(declare-fun b!4467725 () Bool)

(assert (=> b!4467725 (= e!2782072 (containsKeyBiggerList!20 (t!357347 (t!357347 lt!1656304)) key!3287))))

(assert (= (and d!1362750 res!1853425) b!4467723))

(assert (= (and d!1362750 (not res!1853424)) b!4467724))

(assert (= (and b!4467724 res!1853426) b!4467725))

(declare-fun m!5173401 () Bool)

(assert (=> b!4467723 m!5173401))

(declare-fun m!5173403 () Bool)

(assert (=> b!4467725 m!5173403))

(assert (=> b!4467027 d!1362750))

(declare-fun bs!793931 () Bool)

(declare-fun b!4467726 () Bool)

(assert (= bs!793931 (and b!4467726 d!1362312)))

(declare-fun lambda!162987 () Int)

(assert (=> bs!793931 (not (= lambda!162987 lambda!162822))))

(declare-fun bs!793932 () Bool)

(assert (= bs!793932 (and b!4467726 b!4467328)))

(assert (=> bs!793932 (= (= (extractMap!1076 (t!357347 lt!1656304)) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162987 lambda!162943))))

(declare-fun bs!793933 () Bool)

(assert (= bs!793933 (and b!4467726 d!1362504)))

(assert (=> bs!793933 (= (= (extractMap!1076 (t!357347 lt!1656304)) lt!1656701) (= lambda!162987 lambda!162945))))

(assert (=> bs!793932 (= (= (extractMap!1076 (t!357347 lt!1656304)) lt!1656700) (= lambda!162987 lambda!162944))))

(declare-fun bs!793934 () Bool)

(assert (= bs!793934 (and b!4467726 b!4467327)))

(assert (=> bs!793934 (= (= (extractMap!1076 (t!357347 lt!1656304)) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162987 lambda!162942))))

(assert (=> b!4467726 true))

(declare-fun bs!793935 () Bool)

(declare-fun b!4467727 () Bool)

(assert (= bs!793935 (and b!4467727 d!1362312)))

(declare-fun lambda!162988 () Int)

(assert (=> bs!793935 (not (= lambda!162988 lambda!162822))))

(declare-fun bs!793936 () Bool)

(assert (= bs!793936 (and b!4467727 b!4467328)))

(assert (=> bs!793936 (= (= (extractMap!1076 (t!357347 lt!1656304)) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162988 lambda!162943))))

(declare-fun bs!793937 () Bool)

(assert (= bs!793937 (and b!4467727 d!1362504)))

(assert (=> bs!793937 (= (= (extractMap!1076 (t!357347 lt!1656304)) lt!1656701) (= lambda!162988 lambda!162945))))

(assert (=> bs!793936 (= (= (extractMap!1076 (t!357347 lt!1656304)) lt!1656700) (= lambda!162988 lambda!162944))))

(declare-fun bs!793938 () Bool)

(assert (= bs!793938 (and b!4467727 b!4467726)))

(assert (=> bs!793938 (= lambda!162988 lambda!162987)))

(declare-fun bs!793939 () Bool)

(assert (= bs!793939 (and b!4467727 b!4467327)))

(assert (=> bs!793939 (= (= (extractMap!1076 (t!357347 lt!1656304)) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162988 lambda!162942))))

(assert (=> b!4467727 true))

(declare-fun lambda!162989 () Int)

(assert (=> bs!793935 (not (= lambda!162989 lambda!162822))))

(declare-fun lt!1656963 () ListMap!3309)

(assert (=> bs!793936 (= (= lt!1656963 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162989 lambda!162943))))

(assert (=> b!4467727 (= (= lt!1656963 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162989 lambda!162988))))

(assert (=> bs!793937 (= (= lt!1656963 lt!1656701) (= lambda!162989 lambda!162945))))

(assert (=> bs!793936 (= (= lt!1656963 lt!1656700) (= lambda!162989 lambda!162944))))

(assert (=> bs!793938 (= (= lt!1656963 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162989 lambda!162987))))

(assert (=> bs!793939 (= (= lt!1656963 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162989 lambda!162942))))

(assert (=> b!4467727 true))

(declare-fun bs!793940 () Bool)

(declare-fun d!1362752 () Bool)

(assert (= bs!793940 (and d!1362752 b!4467727)))

(declare-fun lt!1656964 () ListMap!3309)

(declare-fun lambda!162990 () Int)

(assert (=> bs!793940 (= (= lt!1656964 lt!1656963) (= lambda!162990 lambda!162989))))

(declare-fun bs!793941 () Bool)

(assert (= bs!793941 (and d!1362752 d!1362312)))

(assert (=> bs!793941 (not (= lambda!162990 lambda!162822))))

(declare-fun bs!793942 () Bool)

(assert (= bs!793942 (and d!1362752 b!4467328)))

(assert (=> bs!793942 (= (= lt!1656964 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162990 lambda!162943))))

(assert (=> bs!793940 (= (= lt!1656964 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162990 lambda!162988))))

(declare-fun bs!793943 () Bool)

(assert (= bs!793943 (and d!1362752 d!1362504)))

(assert (=> bs!793943 (= (= lt!1656964 lt!1656701) (= lambda!162990 lambda!162945))))

(assert (=> bs!793942 (= (= lt!1656964 lt!1656700) (= lambda!162990 lambda!162944))))

(declare-fun bs!793944 () Bool)

(assert (= bs!793944 (and d!1362752 b!4467726)))

(assert (=> bs!793944 (= (= lt!1656964 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162990 lambda!162987))))

(declare-fun bs!793945 () Bool)

(assert (= bs!793945 (and d!1362752 b!4467327)))

(assert (=> bs!793945 (= (= lt!1656964 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162990 lambda!162942))))

(assert (=> d!1362752 true))

(declare-fun call!311068 () Bool)

(declare-fun bm!311061 () Bool)

(declare-fun c!760517 () Bool)

(declare-fun lt!1656957 () ListMap!3309)

(assert (=> bm!311061 (= call!311068 (forall!9980 (ite c!760517 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) (toList!4048 lt!1656957)) (ite c!760517 lambda!162987 lambda!162989)))))

(declare-fun e!2782075 () ListMap!3309)

(assert (=> b!4467727 (= e!2782075 lt!1656963)))

(assert (=> b!4467727 (= lt!1656957 (+!1362 (extractMap!1076 (t!357347 lt!1656304)) (h!56031 (_2!28552 (h!56032 lt!1656304)))))))

(assert (=> b!4467727 (= lt!1656963 (addToMapMapFromBucket!585 (t!357346 (_2!28552 (h!56032 lt!1656304))) (+!1362 (extractMap!1076 (t!357347 lt!1656304)) (h!56031 (_2!28552 (h!56032 lt!1656304))))))))

(declare-fun lt!1656955 () Unit!87415)

(declare-fun call!311067 () Unit!87415)

(assert (=> b!4467727 (= lt!1656955 call!311067)))

(assert (=> b!4467727 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) lambda!162988)))

(declare-fun lt!1656973 () Unit!87415)

(assert (=> b!4467727 (= lt!1656973 lt!1656955)))

(assert (=> b!4467727 (forall!9980 (toList!4048 lt!1656957) lambda!162989)))

(declare-fun lt!1656969 () Unit!87415)

(declare-fun Unit!87492 () Unit!87415)

(assert (=> b!4467727 (= lt!1656969 Unit!87492)))

(assert (=> b!4467727 (forall!9980 (t!357346 (_2!28552 (h!56032 lt!1656304))) lambda!162989)))

(declare-fun lt!1656962 () Unit!87415)

(declare-fun Unit!87493 () Unit!87415)

(assert (=> b!4467727 (= lt!1656962 Unit!87493)))

(declare-fun lt!1656961 () Unit!87415)

(declare-fun Unit!87494 () Unit!87415)

(assert (=> b!4467727 (= lt!1656961 Unit!87494)))

(declare-fun lt!1656965 () Unit!87415)

(assert (=> b!4467727 (= lt!1656965 (forallContained!2251 (toList!4048 lt!1656957) lambda!162989 (h!56031 (_2!28552 (h!56032 lt!1656304)))))))

(assert (=> b!4467727 (contains!12815 lt!1656957 (_1!28551 (h!56031 (_2!28552 (h!56032 lt!1656304)))))))

(declare-fun lt!1656970 () Unit!87415)

(declare-fun Unit!87495 () Unit!87415)

(assert (=> b!4467727 (= lt!1656970 Unit!87495)))

(assert (=> b!4467727 (contains!12815 lt!1656963 (_1!28551 (h!56031 (_2!28552 (h!56032 lt!1656304)))))))

(declare-fun lt!1656966 () Unit!87415)

(declare-fun Unit!87496 () Unit!87415)

(assert (=> b!4467727 (= lt!1656966 Unit!87496)))

(assert (=> b!4467727 (forall!9980 (_2!28552 (h!56032 lt!1656304)) lambda!162989)))

(declare-fun lt!1656968 () Unit!87415)

(declare-fun Unit!87497 () Unit!87415)

(assert (=> b!4467727 (= lt!1656968 Unit!87497)))

(assert (=> b!4467727 call!311068))

(declare-fun lt!1656974 () Unit!87415)

(declare-fun Unit!87498 () Unit!87415)

(assert (=> b!4467727 (= lt!1656974 Unit!87498)))

(declare-fun lt!1656958 () Unit!87415)

(declare-fun Unit!87499 () Unit!87415)

(assert (=> b!4467727 (= lt!1656958 Unit!87499)))

(declare-fun lt!1656959 () Unit!87415)

(assert (=> b!4467727 (= lt!1656959 (addForallContainsKeyThenBeforeAdding!264 (extractMap!1076 (t!357347 lt!1656304)) lt!1656963 (_1!28551 (h!56031 (_2!28552 (h!56032 lt!1656304)))) (_2!28551 (h!56031 (_2!28552 (h!56032 lt!1656304))))))))

(declare-fun call!311066 () Bool)

(assert (=> b!4467727 call!311066))

(declare-fun lt!1656971 () Unit!87415)

(assert (=> b!4467727 (= lt!1656971 lt!1656959)))

(assert (=> b!4467727 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) lambda!162989)))

(declare-fun lt!1656967 () Unit!87415)

(declare-fun Unit!87500 () Unit!87415)

(assert (=> b!4467727 (= lt!1656967 Unit!87500)))

(declare-fun res!1853429 () Bool)

(assert (=> b!4467727 (= res!1853429 (forall!9980 (_2!28552 (h!56032 lt!1656304)) lambda!162989))))

(declare-fun e!2782076 () Bool)

(assert (=> b!4467727 (=> (not res!1853429) (not e!2782076))))

(assert (=> b!4467727 e!2782076))

(declare-fun lt!1656975 () Unit!87415)

(declare-fun Unit!87501 () Unit!87415)

(assert (=> b!4467727 (= lt!1656975 Unit!87501)))

(declare-fun bm!311062 () Bool)

(assert (=> bm!311062 (= call!311067 (lemmaContainsAllItsOwnKeys!265 (extractMap!1076 (t!357347 lt!1656304))))))

(declare-fun b!4467728 () Bool)

(declare-fun e!2782077 () Bool)

(assert (=> b!4467728 (= e!2782077 (invariantList!923 (toList!4048 lt!1656964)))))

(declare-fun bm!311063 () Bool)

(assert (=> bm!311063 (= call!311066 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) (ite c!760517 lambda!162987 lambda!162989)))))

(assert (=> b!4467726 (= e!2782075 (extractMap!1076 (t!357347 lt!1656304)))))

(declare-fun lt!1656972 () Unit!87415)

(assert (=> b!4467726 (= lt!1656972 call!311067)))

(assert (=> b!4467726 call!311066))

(declare-fun lt!1656960 () Unit!87415)

(assert (=> b!4467726 (= lt!1656960 lt!1656972)))

(assert (=> b!4467726 call!311068))

(declare-fun lt!1656956 () Unit!87415)

(declare-fun Unit!87502 () Unit!87415)

(assert (=> b!4467726 (= lt!1656956 Unit!87502)))

(assert (=> d!1362752 e!2782077))

(declare-fun res!1853428 () Bool)

(assert (=> d!1362752 (=> (not res!1853428) (not e!2782077))))

(assert (=> d!1362752 (= res!1853428 (forall!9980 (_2!28552 (h!56032 lt!1656304)) lambda!162990))))

(assert (=> d!1362752 (= lt!1656964 e!2782075)))

(assert (=> d!1362752 (= c!760517 ((_ is Nil!50272) (_2!28552 (h!56032 lt!1656304))))))

(assert (=> d!1362752 (noDuplicateKeys!1020 (_2!28552 (h!56032 lt!1656304)))))

(assert (=> d!1362752 (= (addToMapMapFromBucket!585 (_2!28552 (h!56032 lt!1656304)) (extractMap!1076 (t!357347 lt!1656304))) lt!1656964)))

(declare-fun b!4467729 () Bool)

(declare-fun res!1853427 () Bool)

(assert (=> b!4467729 (=> (not res!1853427) (not e!2782077))))

(assert (=> b!4467729 (= res!1853427 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) lambda!162990))))

(declare-fun b!4467730 () Bool)

(assert (=> b!4467730 (= e!2782076 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 lt!1656304))) lambda!162989))))

(assert (= (and d!1362752 c!760517) b!4467726))

(assert (= (and d!1362752 (not c!760517)) b!4467727))

(assert (= (and b!4467727 res!1853429) b!4467730))

(assert (= (or b!4467726 b!4467727) bm!311063))

(assert (= (or b!4467726 b!4467727) bm!311061))

(assert (= (or b!4467726 b!4467727) bm!311062))

(assert (= (and d!1362752 res!1853428) b!4467729))

(assert (= (and b!4467729 res!1853427) b!4467728))

(declare-fun m!5173405 () Bool)

(assert (=> b!4467730 m!5173405))

(declare-fun m!5173407 () Bool)

(assert (=> bm!311061 m!5173407))

(declare-fun m!5173409 () Bool)

(assert (=> d!1362752 m!5173409))

(declare-fun m!5173411 () Bool)

(assert (=> d!1362752 m!5173411))

(declare-fun m!5173413 () Bool)

(assert (=> b!4467728 m!5173413))

(declare-fun m!5173415 () Bool)

(assert (=> b!4467727 m!5173415))

(declare-fun m!5173417 () Bool)

(assert (=> b!4467727 m!5173417))

(declare-fun m!5173419 () Bool)

(assert (=> b!4467727 m!5173419))

(declare-fun m!5173421 () Bool)

(assert (=> b!4467727 m!5173421))

(declare-fun m!5173423 () Bool)

(assert (=> b!4467727 m!5173423))

(declare-fun m!5173425 () Bool)

(assert (=> b!4467727 m!5173425))

(declare-fun m!5173427 () Bool)

(assert (=> b!4467727 m!5173427))

(declare-fun m!5173429 () Bool)

(assert (=> b!4467727 m!5173429))

(assert (=> b!4467727 m!5173419))

(assert (=> b!4467727 m!5173405))

(declare-fun m!5173431 () Bool)

(assert (=> b!4467727 m!5173431))

(assert (=> b!4467727 m!5172309))

(declare-fun m!5173433 () Bool)

(assert (=> b!4467727 m!5173433))

(assert (=> b!4467727 m!5172309))

(assert (=> b!4467727 m!5173425))

(assert (=> bm!311062 m!5172309))

(declare-fun m!5173435 () Bool)

(assert (=> bm!311062 m!5173435))

(declare-fun m!5173437 () Bool)

(assert (=> bm!311063 m!5173437))

(declare-fun m!5173439 () Bool)

(assert (=> b!4467729 m!5173439))

(assert (=> b!4466967 d!1362752))

(declare-fun bs!793946 () Bool)

(declare-fun d!1362754 () Bool)

(assert (= bs!793946 (and d!1362754 d!1362384)))

(declare-fun lambda!162991 () Int)

(assert (=> bs!793946 (= lambda!162991 lambda!162845)))

(declare-fun bs!793947 () Bool)

(assert (= bs!793947 (and d!1362754 d!1362412)))

(assert (=> bs!793947 (not (= lambda!162991 lambda!162852))))

(declare-fun bs!793948 () Bool)

(assert (= bs!793948 (and d!1362754 d!1362362)))

(assert (=> bs!793948 (= lambda!162991 lambda!162840)))

(declare-fun bs!793949 () Bool)

(assert (= bs!793949 (and d!1362754 d!1362394)))

(assert (=> bs!793949 (= lambda!162991 lambda!162849)))

(declare-fun bs!793950 () Bool)

(assert (= bs!793950 (and d!1362754 d!1362414)))

(assert (=> bs!793950 (= lambda!162991 lambda!162855)))

(declare-fun bs!793951 () Bool)

(assert (= bs!793951 (and d!1362754 d!1362392)))

(assert (=> bs!793951 (= lambda!162991 lambda!162846)))

(declare-fun bs!793952 () Bool)

(assert (= bs!793952 (and d!1362754 d!1362336)))

(assert (=> bs!793952 (= lambda!162991 lambda!162828)))

(declare-fun bs!793953 () Bool)

(assert (= bs!793953 (and d!1362754 d!1362586)))

(assert (=> bs!793953 (= lambda!162991 lambda!162946)))

(declare-fun bs!793954 () Bool)

(assert (= bs!793954 (and d!1362754 start!438580)))

(assert (=> bs!793954 (= lambda!162991 lambda!162813)))

(declare-fun bs!793955 () Bool)

(assert (= bs!793955 (and d!1362754 d!1362344)))

(assert (=> bs!793955 (= lambda!162991 lambda!162839)))

(declare-fun lt!1656976 () ListMap!3309)

(assert (=> d!1362754 (invariantList!923 (toList!4048 lt!1656976))))

(declare-fun e!2782078 () ListMap!3309)

(assert (=> d!1362754 (= lt!1656976 e!2782078)))

(declare-fun c!760518 () Bool)

(assert (=> d!1362754 (= c!760518 ((_ is Cons!50273) (t!357347 lt!1656304)))))

(assert (=> d!1362754 (forall!9978 (t!357347 lt!1656304) lambda!162991)))

(assert (=> d!1362754 (= (extractMap!1076 (t!357347 lt!1656304)) lt!1656976)))

(declare-fun b!4467731 () Bool)

(assert (=> b!4467731 (= e!2782078 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (t!357347 lt!1656304))) (extractMap!1076 (t!357347 (t!357347 lt!1656304)))))))

(declare-fun b!4467732 () Bool)

(assert (=> b!4467732 (= e!2782078 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362754 c!760518) b!4467731))

(assert (= (and d!1362754 (not c!760518)) b!4467732))

(declare-fun m!5173441 () Bool)

(assert (=> d!1362754 m!5173441))

(declare-fun m!5173443 () Bool)

(assert (=> d!1362754 m!5173443))

(declare-fun m!5173445 () Bool)

(assert (=> b!4467731 m!5173445))

(assert (=> b!4467731 m!5173445))

(declare-fun m!5173447 () Bool)

(assert (=> b!4467731 m!5173447))

(assert (=> b!4466967 d!1362754))

(declare-fun bs!793956 () Bool)

(declare-fun b!4467733 () Bool)

(assert (= bs!793956 (and b!4467733 b!4467727)))

(declare-fun lambda!162992 () Int)

(assert (=> bs!793956 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656963) (= lambda!162992 lambda!162989))))

(declare-fun bs!793957 () Bool)

(assert (= bs!793957 (and b!4467733 d!1362312)))

(assert (=> bs!793957 (not (= lambda!162992 lambda!162822))))

(declare-fun bs!793958 () Bool)

(assert (= bs!793958 (and b!4467733 d!1362752)))

(assert (=> bs!793958 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656964) (= lambda!162992 lambda!162990))))

(declare-fun bs!793959 () Bool)

(assert (= bs!793959 (and b!4467733 b!4467328)))

(assert (=> bs!793959 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162992 lambda!162943))))

(assert (=> bs!793956 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162992 lambda!162988))))

(declare-fun bs!793960 () Bool)

(assert (= bs!793960 (and b!4467733 d!1362504)))

(assert (=> bs!793960 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656701) (= lambda!162992 lambda!162945))))

(assert (=> bs!793959 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656700) (= lambda!162992 lambda!162944))))

(declare-fun bs!793961 () Bool)

(assert (= bs!793961 (and b!4467733 b!4467726)))

(assert (=> bs!793961 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162992 lambda!162987))))

(declare-fun bs!793962 () Bool)

(assert (= bs!793962 (and b!4467733 b!4467327)))

(assert (=> bs!793962 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162992 lambda!162942))))

(assert (=> b!4467733 true))

(declare-fun bs!793963 () Bool)

(declare-fun b!4467734 () Bool)

(assert (= bs!793963 (and b!4467734 b!4467733)))

(declare-fun lambda!162993 () Int)

(assert (=> bs!793963 (= lambda!162993 lambda!162992)))

(declare-fun bs!793964 () Bool)

(assert (= bs!793964 (and b!4467734 b!4467727)))

(assert (=> bs!793964 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656963) (= lambda!162993 lambda!162989))))

(declare-fun bs!793965 () Bool)

(assert (= bs!793965 (and b!4467734 d!1362312)))

(assert (=> bs!793965 (not (= lambda!162993 lambda!162822))))

(declare-fun bs!793966 () Bool)

(assert (= bs!793966 (and b!4467734 d!1362752)))

(assert (=> bs!793966 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656964) (= lambda!162993 lambda!162990))))

(declare-fun bs!793967 () Bool)

(assert (= bs!793967 (and b!4467734 b!4467328)))

(assert (=> bs!793967 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162993 lambda!162943))))

(assert (=> bs!793964 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162993 lambda!162988))))

(declare-fun bs!793968 () Bool)

(assert (= bs!793968 (and b!4467734 d!1362504)))

(assert (=> bs!793968 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656701) (= lambda!162993 lambda!162945))))

(assert (=> bs!793967 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656700) (= lambda!162993 lambda!162944))))

(declare-fun bs!793969 () Bool)

(assert (= bs!793969 (and b!4467734 b!4467726)))

(assert (=> bs!793969 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162993 lambda!162987))))

(declare-fun bs!793970 () Bool)

(assert (= bs!793970 (and b!4467734 b!4467327)))

(assert (=> bs!793970 (= (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162993 lambda!162942))))

(assert (=> b!4467734 true))

(declare-fun lambda!162994 () Int)

(declare-fun lt!1656985 () ListMap!3309)

(assert (=> b!4467734 (= (= lt!1656985 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162994 lambda!162993))))

(assert (=> bs!793963 (= (= lt!1656985 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162994 lambda!162992))))

(assert (=> bs!793964 (= (= lt!1656985 lt!1656963) (= lambda!162994 lambda!162989))))

(assert (=> bs!793965 (not (= lambda!162994 lambda!162822))))

(assert (=> bs!793966 (= (= lt!1656985 lt!1656964) (= lambda!162994 lambda!162990))))

(assert (=> bs!793967 (= (= lt!1656985 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162994 lambda!162943))))

(assert (=> bs!793964 (= (= lt!1656985 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162994 lambda!162988))))

(assert (=> bs!793968 (= (= lt!1656985 lt!1656701) (= lambda!162994 lambda!162945))))

(assert (=> bs!793967 (= (= lt!1656985 lt!1656700) (= lambda!162994 lambda!162944))))

(assert (=> bs!793969 (= (= lt!1656985 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162994 lambda!162987))))

(assert (=> bs!793970 (= (= lt!1656985 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162994 lambda!162942))))

(assert (=> b!4467734 true))

(declare-fun bs!793971 () Bool)

(declare-fun d!1362756 () Bool)

(assert (= bs!793971 (and d!1362756 b!4467734)))

(declare-fun lt!1656986 () ListMap!3309)

(declare-fun lambda!162995 () Int)

(assert (=> bs!793971 (= (= lt!1656986 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162995 lambda!162993))))

(declare-fun bs!793972 () Bool)

(assert (= bs!793972 (and d!1362756 b!4467733)))

(assert (=> bs!793972 (= (= lt!1656986 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162995 lambda!162992))))

(declare-fun bs!793973 () Bool)

(assert (= bs!793973 (and d!1362756 b!4467727)))

(assert (=> bs!793973 (= (= lt!1656986 lt!1656963) (= lambda!162995 lambda!162989))))

(declare-fun bs!793974 () Bool)

(assert (= bs!793974 (and d!1362756 d!1362312)))

(assert (=> bs!793974 (not (= lambda!162995 lambda!162822))))

(declare-fun bs!793975 () Bool)

(assert (= bs!793975 (and d!1362756 d!1362752)))

(assert (=> bs!793975 (= (= lt!1656986 lt!1656964) (= lambda!162995 lambda!162990))))

(declare-fun bs!793976 () Bool)

(assert (= bs!793976 (and d!1362756 b!4467328)))

(assert (=> bs!793976 (= (= lt!1656986 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162995 lambda!162943))))

(assert (=> bs!793973 (= (= lt!1656986 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162995 lambda!162988))))

(declare-fun bs!793977 () Bool)

(assert (= bs!793977 (and d!1362756 d!1362504)))

(assert (=> bs!793977 (= (= lt!1656986 lt!1656701) (= lambda!162995 lambda!162945))))

(assert (=> bs!793976 (= (= lt!1656986 lt!1656700) (= lambda!162995 lambda!162944))))

(declare-fun bs!793978 () Bool)

(assert (= bs!793978 (and d!1362756 b!4467726)))

(assert (=> bs!793978 (= (= lt!1656986 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162995 lambda!162987))))

(assert (=> bs!793971 (= (= lt!1656986 lt!1656985) (= lambda!162995 lambda!162994))))

(declare-fun bs!793979 () Bool)

(assert (= bs!793979 (and d!1362756 b!4467327)))

(assert (=> bs!793979 (= (= lt!1656986 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162995 lambda!162942))))

(assert (=> d!1362756 true))

(declare-fun call!311071 () Bool)

(declare-fun lt!1656979 () ListMap!3309)

(declare-fun c!760519 () Bool)

(declare-fun bm!311064 () Bool)

(assert (=> bm!311064 (= call!311071 (forall!9980 (ite c!760519 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (toList!4048 lt!1656979)) (ite c!760519 lambda!162992 lambda!162994)))))

(declare-fun e!2782079 () ListMap!3309)

(assert (=> b!4467734 (= e!2782079 lt!1656985)))

(assert (=> b!4467734 (= lt!1656979 (+!1362 (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(assert (=> b!4467734 (= lt!1656985 (addToMapMapFromBucket!585 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))) (+!1362 (extractMap!1076 (t!357347 (toList!4047 lm!1477))) (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))))

(declare-fun lt!1656977 () Unit!87415)

(declare-fun call!311070 () Unit!87415)

(assert (=> b!4467734 (= lt!1656977 call!311070)))

(assert (=> b!4467734 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) lambda!162993)))

(declare-fun lt!1656995 () Unit!87415)

(assert (=> b!4467734 (= lt!1656995 lt!1656977)))

(assert (=> b!4467734 (forall!9980 (toList!4048 lt!1656979) lambda!162994)))

(declare-fun lt!1656991 () Unit!87415)

(declare-fun Unit!87514 () Unit!87415)

(assert (=> b!4467734 (= lt!1656991 Unit!87514)))

(assert (=> b!4467734 (forall!9980 (t!357346 (_2!28552 (h!56032 (toList!4047 lm!1477)))) lambda!162994)))

(declare-fun lt!1656984 () Unit!87415)

(declare-fun Unit!87515 () Unit!87415)

(assert (=> b!4467734 (= lt!1656984 Unit!87515)))

(declare-fun lt!1656983 () Unit!87415)

(declare-fun Unit!87516 () Unit!87415)

(assert (=> b!4467734 (= lt!1656983 Unit!87516)))

(declare-fun lt!1656987 () Unit!87415)

(assert (=> b!4467734 (= lt!1656987 (forallContained!2251 (toList!4048 lt!1656979) lambda!162994 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(assert (=> b!4467734 (contains!12815 lt!1656979 (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(declare-fun lt!1656992 () Unit!87415)

(declare-fun Unit!87518 () Unit!87415)

(assert (=> b!4467734 (= lt!1656992 Unit!87518)))

(assert (=> b!4467734 (contains!12815 lt!1656985 (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))))))

(declare-fun lt!1656988 () Unit!87415)

(declare-fun Unit!87519 () Unit!87415)

(assert (=> b!4467734 (= lt!1656988 Unit!87519)))

(assert (=> b!4467734 (forall!9980 (_2!28552 (h!56032 (toList!4047 lm!1477))) lambda!162994)))

(declare-fun lt!1656990 () Unit!87415)

(declare-fun Unit!87520 () Unit!87415)

(assert (=> b!4467734 (= lt!1656990 Unit!87520)))

(assert (=> b!4467734 call!311071))

(declare-fun lt!1656996 () Unit!87415)

(declare-fun Unit!87521 () Unit!87415)

(assert (=> b!4467734 (= lt!1656996 Unit!87521)))

(declare-fun lt!1656980 () Unit!87415)

(declare-fun Unit!87522 () Unit!87415)

(assert (=> b!4467734 (= lt!1656980 Unit!87522)))

(declare-fun lt!1656981 () Unit!87415)

(assert (=> b!4467734 (= lt!1656981 (addForallContainsKeyThenBeforeAdding!264 (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656985 (_1!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477))))) (_2!28551 (h!56031 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))))

(declare-fun call!311069 () Bool)

(assert (=> b!4467734 call!311069))

(declare-fun lt!1656993 () Unit!87415)

(assert (=> b!4467734 (= lt!1656993 lt!1656981)))

(assert (=> b!4467734 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) lambda!162994)))

(declare-fun lt!1656989 () Unit!87415)

(declare-fun Unit!87523 () Unit!87415)

(assert (=> b!4467734 (= lt!1656989 Unit!87523)))

(declare-fun res!1853432 () Bool)

(assert (=> b!4467734 (= res!1853432 (forall!9980 (_2!28552 (h!56032 (toList!4047 lm!1477))) lambda!162994))))

(declare-fun e!2782080 () Bool)

(assert (=> b!4467734 (=> (not res!1853432) (not e!2782080))))

(assert (=> b!4467734 e!2782080))

(declare-fun lt!1656997 () Unit!87415)

(declare-fun Unit!87524 () Unit!87415)

(assert (=> b!4467734 (= lt!1656997 Unit!87524)))

(declare-fun bm!311065 () Bool)

(assert (=> bm!311065 (= call!311070 (lemmaContainsAllItsOwnKeys!265 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))))))

(declare-fun b!4467735 () Bool)

(declare-fun e!2782081 () Bool)

(assert (=> b!4467735 (= e!2782081 (invariantList!923 (toList!4048 lt!1656986)))))

(declare-fun bm!311066 () Bool)

(assert (=> bm!311066 (= call!311069 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (ite c!760519 lambda!162992 lambda!162994)))))

(assert (=> b!4467733 (= e!2782079 (extractMap!1076 (t!357347 (toList!4047 lm!1477))))))

(declare-fun lt!1656994 () Unit!87415)

(assert (=> b!4467733 (= lt!1656994 call!311070)))

(assert (=> b!4467733 call!311069))

(declare-fun lt!1656982 () Unit!87415)

(assert (=> b!4467733 (= lt!1656982 lt!1656994)))

(assert (=> b!4467733 call!311071))

(declare-fun lt!1656978 () Unit!87415)

(declare-fun Unit!87525 () Unit!87415)

(assert (=> b!4467733 (= lt!1656978 Unit!87525)))

(assert (=> d!1362756 e!2782081))

(declare-fun res!1853431 () Bool)

(assert (=> d!1362756 (=> (not res!1853431) (not e!2782081))))

(assert (=> d!1362756 (= res!1853431 (forall!9980 (_2!28552 (h!56032 (toList!4047 lm!1477))) lambda!162995))))

(assert (=> d!1362756 (= lt!1656986 e!2782079)))

(assert (=> d!1362756 (= c!760519 ((_ is Nil!50272) (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(assert (=> d!1362756 (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477))))))

(assert (=> d!1362756 (= (addToMapMapFromBucket!585 (_2!28552 (h!56032 (toList!4047 lm!1477))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) lt!1656986)))

(declare-fun b!4467736 () Bool)

(declare-fun res!1853430 () Bool)

(assert (=> b!4467736 (=> (not res!1853430) (not e!2782081))))

(assert (=> b!4467736 (= res!1853430 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) lambda!162995))))

(declare-fun b!4467737 () Bool)

(assert (=> b!4467737 (= e!2782080 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) lambda!162994))))

(assert (= (and d!1362756 c!760519) b!4467733))

(assert (= (and d!1362756 (not c!760519)) b!4467734))

(assert (= (and b!4467734 res!1853432) b!4467737))

(assert (= (or b!4467733 b!4467734) bm!311066))

(assert (= (or b!4467733 b!4467734) bm!311064))

(assert (= (or b!4467733 b!4467734) bm!311065))

(assert (= (and d!1362756 res!1853431) b!4467736))

(assert (= (and b!4467736 res!1853430) b!4467735))

(declare-fun m!5173449 () Bool)

(assert (=> b!4467737 m!5173449))

(declare-fun m!5173451 () Bool)

(assert (=> bm!311064 m!5173451))

(declare-fun m!5173453 () Bool)

(assert (=> d!1362756 m!5173453))

(assert (=> d!1362756 m!5172299))

(declare-fun m!5173455 () Bool)

(assert (=> b!4467735 m!5173455))

(declare-fun m!5173457 () Bool)

(assert (=> b!4467734 m!5173457))

(declare-fun m!5173459 () Bool)

(assert (=> b!4467734 m!5173459))

(declare-fun m!5173461 () Bool)

(assert (=> b!4467734 m!5173461))

(declare-fun m!5173463 () Bool)

(assert (=> b!4467734 m!5173463))

(declare-fun m!5173465 () Bool)

(assert (=> b!4467734 m!5173465))

(declare-fun m!5173467 () Bool)

(assert (=> b!4467734 m!5173467))

(declare-fun m!5173469 () Bool)

(assert (=> b!4467734 m!5173469))

(declare-fun m!5173471 () Bool)

(assert (=> b!4467734 m!5173471))

(assert (=> b!4467734 m!5173461))

(assert (=> b!4467734 m!5173449))

(declare-fun m!5173473 () Bool)

(assert (=> b!4467734 m!5173473))

(assert (=> b!4467734 m!5172341))

(declare-fun m!5173475 () Bool)

(assert (=> b!4467734 m!5173475))

(assert (=> b!4467734 m!5172341))

(assert (=> b!4467734 m!5173467))

(assert (=> bm!311065 m!5172341))

(declare-fun m!5173477 () Bool)

(assert (=> bm!311065 m!5173477))

(declare-fun m!5173479 () Bool)

(assert (=> bm!311066 m!5173479))

(declare-fun m!5173481 () Bool)

(assert (=> b!4467736 m!5173481))

(assert (=> b!4466984 d!1362756))

(declare-fun bs!793980 () Bool)

(declare-fun d!1362758 () Bool)

(assert (= bs!793980 (and d!1362758 d!1362384)))

(declare-fun lambda!162996 () Int)

(assert (=> bs!793980 (= lambda!162996 lambda!162845)))

(declare-fun bs!793981 () Bool)

(assert (= bs!793981 (and d!1362758 d!1362412)))

(assert (=> bs!793981 (not (= lambda!162996 lambda!162852))))

(declare-fun bs!793982 () Bool)

(assert (= bs!793982 (and d!1362758 d!1362362)))

(assert (=> bs!793982 (= lambda!162996 lambda!162840)))

(declare-fun bs!793983 () Bool)

(assert (= bs!793983 (and d!1362758 d!1362394)))

(assert (=> bs!793983 (= lambda!162996 lambda!162849)))

(declare-fun bs!793984 () Bool)

(assert (= bs!793984 (and d!1362758 d!1362414)))

(assert (=> bs!793984 (= lambda!162996 lambda!162855)))

(declare-fun bs!793985 () Bool)

(assert (= bs!793985 (and d!1362758 d!1362392)))

(assert (=> bs!793985 (= lambda!162996 lambda!162846)))

(declare-fun bs!793986 () Bool)

(assert (= bs!793986 (and d!1362758 d!1362336)))

(assert (=> bs!793986 (= lambda!162996 lambda!162828)))

(declare-fun bs!793987 () Bool)

(assert (= bs!793987 (and d!1362758 d!1362586)))

(assert (=> bs!793987 (= lambda!162996 lambda!162946)))

(declare-fun bs!793988 () Bool)

(assert (= bs!793988 (and d!1362758 start!438580)))

(assert (=> bs!793988 (= lambda!162996 lambda!162813)))

(declare-fun bs!793989 () Bool)

(assert (= bs!793989 (and d!1362758 d!1362754)))

(assert (=> bs!793989 (= lambda!162996 lambda!162991)))

(declare-fun bs!793990 () Bool)

(assert (= bs!793990 (and d!1362758 d!1362344)))

(assert (=> bs!793990 (= lambda!162996 lambda!162839)))

(declare-fun lt!1656998 () ListMap!3309)

(assert (=> d!1362758 (invariantList!923 (toList!4048 lt!1656998))))

(declare-fun e!2782082 () ListMap!3309)

(assert (=> d!1362758 (= lt!1656998 e!2782082)))

(declare-fun c!760520 () Bool)

(assert (=> d!1362758 (= c!760520 ((_ is Cons!50273) (t!357347 (toList!4047 lm!1477))))))

(assert (=> d!1362758 (forall!9978 (t!357347 (toList!4047 lm!1477)) lambda!162996)))

(assert (=> d!1362758 (= (extractMap!1076 (t!357347 (toList!4047 lm!1477))) lt!1656998)))

(declare-fun b!4467738 () Bool)

(assert (=> b!4467738 (= e!2782082 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (t!357347 (toList!4047 lm!1477)))) (extractMap!1076 (t!357347 (t!357347 (toList!4047 lm!1477))))))))

(declare-fun b!4467739 () Bool)

(assert (=> b!4467739 (= e!2782082 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362758 c!760520) b!4467738))

(assert (= (and d!1362758 (not c!760520)) b!4467739))

(declare-fun m!5173483 () Bool)

(assert (=> d!1362758 m!5173483))

(declare-fun m!5173485 () Bool)

(assert (=> d!1362758 m!5173485))

(declare-fun m!5173487 () Bool)

(assert (=> b!4467738 m!5173487))

(assert (=> b!4467738 m!5173487))

(declare-fun m!5173489 () Bool)

(assert (=> b!4467738 m!5173489))

(assert (=> b!4466984 d!1362758))

(declare-fun d!1362760 () Bool)

(declare-fun lt!1656999 () List!50396)

(assert (=> d!1362760 (not (containsKey!1456 lt!1656999 key!3287))))

(declare-fun e!2782083 () List!50396)

(assert (=> d!1362760 (= lt!1656999 e!2782083)))

(declare-fun c!760522 () Bool)

(assert (=> d!1362760 (= c!760522 (and ((_ is Cons!50272) (t!357346 lt!1656307)) (= (_1!28551 (h!56031 (t!357346 lt!1656307))) key!3287)))))

(assert (=> d!1362760 (noDuplicateKeys!1020 (t!357346 lt!1656307))))

(assert (=> d!1362760 (= (removePairForKey!647 (t!357346 lt!1656307) key!3287) lt!1656999)))

(declare-fun b!4467741 () Bool)

(declare-fun e!2782084 () List!50396)

(assert (=> b!4467741 (= e!2782083 e!2782084)))

(declare-fun c!760521 () Bool)

(assert (=> b!4467741 (= c!760521 ((_ is Cons!50272) (t!357346 lt!1656307)))))

(declare-fun b!4467740 () Bool)

(assert (=> b!4467740 (= e!2782083 (t!357346 (t!357346 lt!1656307)))))

(declare-fun b!4467743 () Bool)

(assert (=> b!4467743 (= e!2782084 Nil!50272)))

(declare-fun b!4467742 () Bool)

(assert (=> b!4467742 (= e!2782084 (Cons!50272 (h!56031 (t!357346 lt!1656307)) (removePairForKey!647 (t!357346 (t!357346 lt!1656307)) key!3287)))))

(assert (= (and d!1362760 c!760522) b!4467740))

(assert (= (and d!1362760 (not c!760522)) b!4467741))

(assert (= (and b!4467741 c!760521) b!4467742))

(assert (= (and b!4467741 (not c!760521)) b!4467743))

(declare-fun m!5173491 () Bool)

(assert (=> d!1362760 m!5173491))

(assert (=> d!1362760 m!5172889))

(declare-fun m!5173493 () Bool)

(assert (=> b!4467742 m!5173493))

(assert (=> b!4466999 d!1362760))

(declare-fun d!1362762 () Bool)

(declare-fun isEmpty!28480 (Option!10919) Bool)

(assert (=> d!1362762 (= (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287)) (not (isEmpty!28480 (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))))

(declare-fun bs!793991 () Bool)

(assert (= bs!793991 d!1362762))

(assert (=> bs!793991 m!5172277))

(declare-fun m!5173495 () Bool)

(assert (=> bs!793991 m!5173495))

(assert (=> b!4466966 d!1362762))

(declare-fun b!4467754 () Bool)

(declare-fun e!2782090 () Option!10919)

(assert (=> b!4467754 (= e!2782090 (getValueByKey!905 (t!357346 (toList!4048 (extractMap!1076 lt!1656304))) key!3287))))

(declare-fun d!1362764 () Bool)

(declare-fun c!760527 () Bool)

(assert (=> d!1362764 (= c!760527 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 lt!1656304))) (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304)))) key!3287)))))

(declare-fun e!2782089 () Option!10919)

(assert (=> d!1362764 (= (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287) e!2782089)))

(declare-fun b!4467753 () Bool)

(assert (=> b!4467753 (= e!2782089 e!2782090)))

(declare-fun c!760528 () Bool)

(assert (=> b!4467753 (= c!760528 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 lt!1656304))) (not (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304)))) key!3287))))))

(declare-fun b!4467752 () Bool)

(assert (=> b!4467752 (= e!2782089 (Some!10918 (_2!28551 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))))))))

(declare-fun b!4467755 () Bool)

(assert (=> b!4467755 (= e!2782090 None!10918)))

(assert (= (and d!1362764 c!760527) b!4467752))

(assert (= (and d!1362764 (not c!760527)) b!4467753))

(assert (= (and b!4467753 c!760528) b!4467754))

(assert (= (and b!4467753 (not c!760528)) b!4467755))

(declare-fun m!5173497 () Bool)

(assert (=> b!4467754 m!5173497))

(assert (=> b!4466966 d!1362764))

(assert (=> b!4466964 d!1362444))

(assert (=> b!4466964 d!1362448))

(declare-fun d!1362766 () Bool)

(declare-fun e!2782091 () Bool)

(assert (=> d!1362766 e!2782091))

(declare-fun res!1853433 () Bool)

(assert (=> d!1362766 (=> res!1853433 e!2782091)))

(declare-fun lt!1657003 () Bool)

(assert (=> d!1362766 (= res!1853433 (not lt!1657003))))

(declare-fun lt!1657002 () Bool)

(assert (=> d!1362766 (= lt!1657003 lt!1657002)))

(declare-fun lt!1657001 () Unit!87415)

(declare-fun e!2782092 () Unit!87415)

(assert (=> d!1362766 (= lt!1657001 e!2782092)))

(declare-fun c!760529 () Bool)

(assert (=> d!1362766 (= c!760529 lt!1657002)))

(assert (=> d!1362766 (= lt!1657002 (containsKey!1460 (toList!4047 lt!1656318) (_1!28552 lt!1656299)))))

(assert (=> d!1362766 (= (contains!12817 lt!1656318 (_1!28552 lt!1656299)) lt!1657003)))

(declare-fun b!4467756 () Bool)

(declare-fun lt!1657000 () Unit!87415)

(assert (=> b!4467756 (= e!2782092 lt!1657000)))

(assert (=> b!4467756 (= lt!1657000 (lemmaContainsKeyImpliesGetValueByKeyDefined!809 (toList!4047 lt!1656318) (_1!28552 lt!1656299)))))

(assert (=> b!4467756 (isDefined!8206 (getValueByKey!904 (toList!4047 lt!1656318) (_1!28552 lt!1656299)))))

(declare-fun b!4467757 () Bool)

(declare-fun Unit!87526 () Unit!87415)

(assert (=> b!4467757 (= e!2782092 Unit!87526)))

(declare-fun b!4467758 () Bool)

(assert (=> b!4467758 (= e!2782091 (isDefined!8206 (getValueByKey!904 (toList!4047 lt!1656318) (_1!28552 lt!1656299))))))

(assert (= (and d!1362766 c!760529) b!4467756))

(assert (= (and d!1362766 (not c!760529)) b!4467757))

(assert (= (and d!1362766 (not res!1853433)) b!4467758))

(declare-fun m!5173499 () Bool)

(assert (=> d!1362766 m!5173499))

(declare-fun m!5173501 () Bool)

(assert (=> b!4467756 m!5173501))

(assert (=> b!4467756 m!5172011))

(assert (=> b!4467756 m!5172011))

(declare-fun m!5173503 () Bool)

(assert (=> b!4467756 m!5173503))

(assert (=> b!4467758 m!5172011))

(assert (=> b!4467758 m!5172011))

(assert (=> b!4467758 m!5173503))

(assert (=> d!1362288 d!1362766))

(declare-fun b!4467761 () Bool)

(declare-fun e!2782094 () Option!10918)

(assert (=> b!4467761 (= e!2782094 (getValueByKey!904 (t!357347 lt!1656320) (_1!28552 lt!1656299)))))

(declare-fun d!1362768 () Bool)

(declare-fun c!760530 () Bool)

(assert (=> d!1362768 (= c!760530 (and ((_ is Cons!50273) lt!1656320) (= (_1!28552 (h!56032 lt!1656320)) (_1!28552 lt!1656299))))))

(declare-fun e!2782093 () Option!10918)

(assert (=> d!1362768 (= (getValueByKey!904 lt!1656320 (_1!28552 lt!1656299)) e!2782093)))

(declare-fun b!4467762 () Bool)

(assert (=> b!4467762 (= e!2782094 None!10917)))

(declare-fun b!4467759 () Bool)

(assert (=> b!4467759 (= e!2782093 (Some!10917 (_2!28552 (h!56032 lt!1656320))))))

(declare-fun b!4467760 () Bool)

(assert (=> b!4467760 (= e!2782093 e!2782094)))

(declare-fun c!760531 () Bool)

(assert (=> b!4467760 (= c!760531 (and ((_ is Cons!50273) lt!1656320) (not (= (_1!28552 (h!56032 lt!1656320)) (_1!28552 lt!1656299)))))))

(assert (= (and d!1362768 c!760530) b!4467759))

(assert (= (and d!1362768 (not c!760530)) b!4467760))

(assert (= (and b!4467760 c!760531) b!4467761))

(assert (= (and b!4467760 (not c!760531)) b!4467762))

(declare-fun m!5173505 () Bool)

(assert (=> b!4467761 m!5173505))

(assert (=> d!1362288 d!1362768))

(declare-fun d!1362770 () Bool)

(assert (=> d!1362770 (= (getValueByKey!904 lt!1656320 (_1!28552 lt!1656299)) (Some!10917 (_2!28552 lt!1656299)))))

(declare-fun lt!1657004 () Unit!87415)

(assert (=> d!1362770 (= lt!1657004 (choose!28539 lt!1656320 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(declare-fun e!2782095 () Bool)

(assert (=> d!1362770 e!2782095))

(declare-fun res!1853434 () Bool)

(assert (=> d!1362770 (=> (not res!1853434) (not e!2782095))))

(assert (=> d!1362770 (= res!1853434 (isStrictlySorted!337 lt!1656320))))

(assert (=> d!1362770 (= (lemmaContainsTupThenGetReturnValue!580 lt!1656320 (_1!28552 lt!1656299) (_2!28552 lt!1656299)) lt!1657004)))

(declare-fun b!4467763 () Bool)

(declare-fun res!1853435 () Bool)

(assert (=> b!4467763 (=> (not res!1853435) (not e!2782095))))

(assert (=> b!4467763 (= res!1853435 (containsKey!1460 lt!1656320 (_1!28552 lt!1656299)))))

(declare-fun b!4467764 () Bool)

(assert (=> b!4467764 (= e!2782095 (contains!12816 lt!1656320 (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299))))))

(assert (= (and d!1362770 res!1853434) b!4467763))

(assert (= (and b!4467763 res!1853435) b!4467764))

(assert (=> d!1362770 m!5172005))

(declare-fun m!5173507 () Bool)

(assert (=> d!1362770 m!5173507))

(declare-fun m!5173509 () Bool)

(assert (=> d!1362770 m!5173509))

(declare-fun m!5173511 () Bool)

(assert (=> b!4467763 m!5173511))

(declare-fun m!5173513 () Bool)

(assert (=> b!4467764 m!5173513))

(assert (=> d!1362288 d!1362770))

(declare-fun b!4467765 () Bool)

(declare-fun e!2782100 () List!50397)

(assert (=> b!4467765 (= e!2782100 (insertStrictlySorted!326 (t!357347 (toList!4047 lt!1656294)) (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))

(declare-fun b!4467766 () Bool)

(declare-fun e!2782098 () List!50397)

(declare-fun call!311072 () List!50397)

(assert (=> b!4467766 (= e!2782098 call!311072)))

(declare-fun b!4467767 () Bool)

(declare-fun e!2782099 () List!50397)

(declare-fun call!311073 () List!50397)

(assert (=> b!4467767 (= e!2782099 call!311073)))

(declare-fun b!4467768 () Bool)

(assert (=> b!4467768 (= e!2782098 e!2782099)))

(declare-fun c!760533 () Bool)

(assert (=> b!4467768 (= c!760533 (and ((_ is Cons!50273) (toList!4047 lt!1656294)) (= (_1!28552 (h!56032 (toList!4047 lt!1656294))) (_1!28552 lt!1656299))))))

(declare-fun bm!311067 () Bool)

(assert (=> bm!311067 (= call!311073 call!311072)))

(declare-fun bm!311068 () Bool)

(declare-fun c!760534 () Bool)

(assert (=> bm!311068 (= call!311072 ($colon$colon!848 e!2782100 (ite c!760534 (h!56032 (toList!4047 lt!1656294)) (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299)))))))

(declare-fun c!760532 () Bool)

(assert (=> bm!311068 (= c!760532 c!760534)))

(declare-fun bm!311069 () Bool)

(declare-fun call!311074 () List!50397)

(assert (=> bm!311069 (= call!311074 call!311073)))

(declare-fun b!4467769 () Bool)

(declare-fun res!1853437 () Bool)

(declare-fun e!2782097 () Bool)

(assert (=> b!4467769 (=> (not res!1853437) (not e!2782097))))

(declare-fun lt!1657005 () List!50397)

(assert (=> b!4467769 (= res!1853437 (containsKey!1460 lt!1657005 (_1!28552 lt!1656299)))))

(declare-fun b!4467770 () Bool)

(assert (=> b!4467770 (= e!2782097 (contains!12816 lt!1657005 (tuple2!50517 (_1!28552 lt!1656299) (_2!28552 lt!1656299))))))

(declare-fun d!1362772 () Bool)

(assert (=> d!1362772 e!2782097))

(declare-fun res!1853436 () Bool)

(assert (=> d!1362772 (=> (not res!1853436) (not e!2782097))))

(assert (=> d!1362772 (= res!1853436 (isStrictlySorted!337 lt!1657005))))

(assert (=> d!1362772 (= lt!1657005 e!2782098)))

(assert (=> d!1362772 (= c!760534 (and ((_ is Cons!50273) (toList!4047 lt!1656294)) (bvslt (_1!28552 (h!56032 (toList!4047 lt!1656294))) (_1!28552 lt!1656299))))))

(assert (=> d!1362772 (isStrictlySorted!337 (toList!4047 lt!1656294))))

(assert (=> d!1362772 (= (insertStrictlySorted!326 (toList!4047 lt!1656294) (_1!28552 lt!1656299) (_2!28552 lt!1656299)) lt!1657005)))

(declare-fun b!4467771 () Bool)

(declare-fun e!2782096 () List!50397)

(assert (=> b!4467771 (= e!2782096 call!311074)))

(declare-fun c!760535 () Bool)

(declare-fun b!4467772 () Bool)

(assert (=> b!4467772 (= e!2782100 (ite c!760533 (t!357347 (toList!4047 lt!1656294)) (ite c!760535 (Cons!50273 (h!56032 (toList!4047 lt!1656294)) (t!357347 (toList!4047 lt!1656294))) Nil!50273)))))

(declare-fun b!4467773 () Bool)

(assert (=> b!4467773 (= c!760535 (and ((_ is Cons!50273) (toList!4047 lt!1656294)) (bvsgt (_1!28552 (h!56032 (toList!4047 lt!1656294))) (_1!28552 lt!1656299))))))

(assert (=> b!4467773 (= e!2782099 e!2782096)))

(declare-fun b!4467774 () Bool)

(assert (=> b!4467774 (= e!2782096 call!311074)))

(assert (= (and d!1362772 c!760534) b!4467766))

(assert (= (and d!1362772 (not c!760534)) b!4467768))

(assert (= (and b!4467768 c!760533) b!4467767))

(assert (= (and b!4467768 (not c!760533)) b!4467773))

(assert (= (and b!4467773 c!760535) b!4467771))

(assert (= (and b!4467773 (not c!760535)) b!4467774))

(assert (= (or b!4467771 b!4467774) bm!311069))

(assert (= (or b!4467767 bm!311069) bm!311067))

(assert (= (or b!4467766 bm!311067) bm!311068))

(assert (= (and bm!311068 c!760532) b!4467765))

(assert (= (and bm!311068 (not c!760532)) b!4467772))

(assert (= (and d!1362772 res!1853436) b!4467769))

(assert (= (and b!4467769 res!1853437) b!4467770))

(declare-fun m!5173515 () Bool)

(assert (=> b!4467769 m!5173515))

(declare-fun m!5173517 () Bool)

(assert (=> bm!311068 m!5173517))

(declare-fun m!5173519 () Bool)

(assert (=> d!1362772 m!5173519))

(declare-fun m!5173521 () Bool)

(assert (=> d!1362772 m!5173521))

(declare-fun m!5173523 () Bool)

(assert (=> b!4467770 m!5173523))

(declare-fun m!5173525 () Bool)

(assert (=> b!4467765 m!5173525))

(assert (=> d!1362288 d!1362772))

(declare-fun d!1362774 () Bool)

(declare-fun c!760538 () Bool)

(assert (=> d!1362774 (= c!760538 ((_ is Nil!50273) (toList!4047 lm!1477)))))

(declare-fun e!2782103 () (InoxSet tuple2!50516))

(assert (=> d!1362774 (= (content!8092 (toList!4047 lm!1477)) e!2782103)))

(declare-fun b!4467779 () Bool)

(assert (=> b!4467779 (= e!2782103 ((as const (Array tuple2!50516 Bool)) false))))

(declare-fun b!4467780 () Bool)

(assert (=> b!4467780 (= e!2782103 ((_ map or) (store ((as const (Array tuple2!50516 Bool)) false) (h!56032 (toList!4047 lm!1477)) true) (content!8092 (t!357347 (toList!4047 lm!1477)))))))

(assert (= (and d!1362774 c!760538) b!4467779))

(assert (= (and d!1362774 (not c!760538)) b!4467780))

(declare-fun m!5173527 () Bool)

(assert (=> b!4467780 m!5173527))

(declare-fun m!5173529 () Bool)

(assert (=> b!4467780 m!5173529))

(assert (=> d!1362406 d!1362774))

(declare-fun d!1362776 () Bool)

(declare-fun res!1853438 () Bool)

(declare-fun e!2782104 () Bool)

(assert (=> d!1362776 (=> res!1853438 e!2782104)))

(assert (=> d!1362776 (= res!1853438 (and ((_ is Cons!50272) (t!357346 newBucket!178)) (= (_1!28551 (h!56031 (t!357346 newBucket!178))) (_1!28551 (h!56031 newBucket!178)))))))

(assert (=> d!1362776 (= (containsKey!1456 (t!357346 newBucket!178) (_1!28551 (h!56031 newBucket!178))) e!2782104)))

(declare-fun b!4467781 () Bool)

(declare-fun e!2782105 () Bool)

(assert (=> b!4467781 (= e!2782104 e!2782105)))

(declare-fun res!1853439 () Bool)

(assert (=> b!4467781 (=> (not res!1853439) (not e!2782105))))

(assert (=> b!4467781 (= res!1853439 ((_ is Cons!50272) (t!357346 newBucket!178)))))

(declare-fun b!4467782 () Bool)

(assert (=> b!4467782 (= e!2782105 (containsKey!1456 (t!357346 (t!357346 newBucket!178)) (_1!28551 (h!56031 newBucket!178))))))

(assert (= (and d!1362776 (not res!1853438)) b!4467781))

(assert (= (and b!4467781 res!1853439) b!4467782))

(declare-fun m!5173531 () Bool)

(assert (=> b!4467782 m!5173531))

(assert (=> b!4466973 d!1362776))

(declare-fun d!1362778 () Bool)

(declare-fun res!1853440 () Bool)

(declare-fun e!2782106 () Bool)

(assert (=> d!1362778 (=> res!1853440 e!2782106)))

(assert (=> d!1362778 (= res!1853440 (not ((_ is Cons!50272) (_2!28552 lt!1656297))))))

(assert (=> d!1362778 (= (noDuplicateKeys!1020 (_2!28552 lt!1656297)) e!2782106)))

(declare-fun b!4467783 () Bool)

(declare-fun e!2782107 () Bool)

(assert (=> b!4467783 (= e!2782106 e!2782107)))

(declare-fun res!1853441 () Bool)

(assert (=> b!4467783 (=> (not res!1853441) (not e!2782107))))

(assert (=> b!4467783 (= res!1853441 (not (containsKey!1456 (t!357346 (_2!28552 lt!1656297)) (_1!28551 (h!56031 (_2!28552 lt!1656297))))))))

(declare-fun b!4467784 () Bool)

(assert (=> b!4467784 (= e!2782107 (noDuplicateKeys!1020 (t!357346 (_2!28552 lt!1656297))))))

(assert (= (and d!1362778 (not res!1853440)) b!4467783))

(assert (= (and b!4467783 res!1853441) b!4467784))

(declare-fun m!5173533 () Bool)

(assert (=> b!4467783 m!5173533))

(declare-fun m!5173535 () Bool)

(assert (=> b!4467784 m!5173535))

(assert (=> bs!793652 d!1362778))

(declare-fun d!1362780 () Bool)

(declare-fun lt!1657006 () Bool)

(assert (=> d!1362780 (= lt!1657006 (select (content!8092 (t!357347 (toList!4047 lm!1477))) lt!1656297))))

(declare-fun e!2782109 () Bool)

(assert (=> d!1362780 (= lt!1657006 e!2782109)))

(declare-fun res!1853442 () Bool)

(assert (=> d!1362780 (=> (not res!1853442) (not e!2782109))))

(assert (=> d!1362780 (= res!1853442 ((_ is Cons!50273) (t!357347 (toList!4047 lm!1477))))))

(assert (=> d!1362780 (= (contains!12816 (t!357347 (toList!4047 lm!1477)) lt!1656297) lt!1657006)))

(declare-fun b!4467785 () Bool)

(declare-fun e!2782108 () Bool)

(assert (=> b!4467785 (= e!2782109 e!2782108)))

(declare-fun res!1853443 () Bool)

(assert (=> b!4467785 (=> res!1853443 e!2782108)))

(assert (=> b!4467785 (= res!1853443 (= (h!56032 (t!357347 (toList!4047 lm!1477))) lt!1656297))))

(declare-fun b!4467786 () Bool)

(assert (=> b!4467786 (= e!2782108 (contains!12816 (t!357347 (t!357347 (toList!4047 lm!1477))) lt!1656297))))

(assert (= (and d!1362780 res!1853442) b!4467785))

(assert (= (and b!4467785 (not res!1853443)) b!4467786))

(assert (=> d!1362780 m!5173529))

(declare-fun m!5173537 () Bool)

(assert (=> d!1362780 m!5173537))

(declare-fun m!5173539 () Bool)

(assert (=> b!4467786 m!5173539))

(assert (=> b!4467018 d!1362780))

(assert (=> d!1362382 d!1362362))

(declare-fun d!1362782 () Bool)

(assert (=> d!1362782 (eq!513 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)) (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287))))

(assert (=> d!1362782 true))

(declare-fun _$18!198 () Unit!87415)

(assert (=> d!1362782 (= (choose!28527 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!198)))

(declare-fun bs!793992 () Bool)

(assert (= bs!793992 d!1362782))

(assert (=> bs!793992 m!5172301))

(assert (=> bs!793992 m!5171951))

(assert (=> bs!793992 m!5171951))

(assert (=> bs!793992 m!5171953))

(assert (=> bs!793992 m!5172301))

(assert (=> bs!793992 m!5171953))

(assert (=> bs!793992 m!5172303))

(assert (=> d!1362382 d!1362782))

(assert (=> d!1362382 d!1362320))

(assert (=> d!1362382 d!1362478))

(declare-fun bs!793993 () Bool)

(declare-fun d!1362784 () Bool)

(assert (= bs!793993 (and d!1362784 d!1362384)))

(declare-fun lambda!162997 () Int)

(assert (=> bs!793993 (= lambda!162997 lambda!162845)))

(declare-fun bs!793994 () Bool)

(assert (= bs!793994 (and d!1362784 d!1362412)))

(assert (=> bs!793994 (not (= lambda!162997 lambda!162852))))

(declare-fun bs!793995 () Bool)

(assert (= bs!793995 (and d!1362784 d!1362362)))

(assert (=> bs!793995 (= lambda!162997 lambda!162840)))

(declare-fun bs!793996 () Bool)

(assert (= bs!793996 (and d!1362784 d!1362394)))

(assert (=> bs!793996 (= lambda!162997 lambda!162849)))

(declare-fun bs!793997 () Bool)

(assert (= bs!793997 (and d!1362784 d!1362392)))

(assert (=> bs!793997 (= lambda!162997 lambda!162846)))

(declare-fun bs!793998 () Bool)

(assert (= bs!793998 (and d!1362784 d!1362336)))

(assert (=> bs!793998 (= lambda!162997 lambda!162828)))

(declare-fun bs!793999 () Bool)

(assert (= bs!793999 (and d!1362784 d!1362586)))

(assert (=> bs!793999 (= lambda!162997 lambda!162946)))

(declare-fun bs!794000 () Bool)

(assert (= bs!794000 (and d!1362784 start!438580)))

(assert (=> bs!794000 (= lambda!162997 lambda!162813)))

(declare-fun bs!794001 () Bool)

(assert (= bs!794001 (and d!1362784 d!1362754)))

(assert (=> bs!794001 (= lambda!162997 lambda!162991)))

(declare-fun bs!794002 () Bool)

(assert (= bs!794002 (and d!1362784 d!1362344)))

(assert (=> bs!794002 (= lambda!162997 lambda!162839)))

(declare-fun bs!794003 () Bool)

(assert (= bs!794003 (and d!1362784 d!1362414)))

(assert (=> bs!794003 (= lambda!162997 lambda!162855)))

(declare-fun bs!794004 () Bool)

(assert (= bs!794004 (and d!1362784 d!1362758)))

(assert (=> bs!794004 (= lambda!162997 lambda!162996)))

(declare-fun lt!1657007 () ListMap!3309)

(assert (=> d!1362784 (invariantList!923 (toList!4048 lt!1657007))))

(declare-fun e!2782110 () ListMap!3309)

(assert (=> d!1362784 (= lt!1657007 e!2782110)))

(declare-fun c!760539 () Bool)

(assert (=> d!1362784 (= c!760539 ((_ is Cons!50273) (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)))))

(assert (=> d!1362784 (forall!9978 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273) lambda!162997)))

(assert (=> d!1362784 (= (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)) lt!1657007)))

(declare-fun b!4467787 () Bool)

(assert (=> b!4467787 (= e!2782110 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)))))))

(declare-fun b!4467788 () Bool)

(assert (=> b!4467788 (= e!2782110 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362784 c!760539) b!4467787))

(assert (= (and d!1362784 (not c!760539)) b!4467788))

(declare-fun m!5173541 () Bool)

(assert (=> d!1362784 m!5173541))

(declare-fun m!5173543 () Bool)

(assert (=> d!1362784 m!5173543))

(declare-fun m!5173545 () Bool)

(assert (=> b!4467787 m!5173545))

(assert (=> b!4467787 m!5173545))

(declare-fun m!5173547 () Bool)

(assert (=> b!4467787 m!5173547))

(assert (=> d!1362382 d!1362784))

(declare-fun d!1362786 () Bool)

(assert (=> d!1362786 (= (eq!513 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)) (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287)) (= (content!8090 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 newBucket!178) Nil!50273)))) (content!8090 (toList!4048 (-!282 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) key!3287)))))))

(declare-fun bs!794005 () Bool)

(assert (= bs!794005 d!1362786))

(declare-fun m!5173549 () Bool)

(assert (=> bs!794005 m!5173549))

(assert (=> bs!794005 m!5172115))

(assert (=> d!1362382 d!1362786))

(declare-fun d!1362788 () Bool)

(declare-fun choose!28540 (Hashable!5415 K!11690) (_ BitVec 64))

(assert (=> d!1362788 (= (hash!2435 hashF!1107 key!3287) (choose!28540 hashF!1107 key!3287))))

(declare-fun bs!794006 () Bool)

(assert (= bs!794006 d!1362788))

(declare-fun m!5173551 () Bool)

(assert (=> bs!794006 m!5173551))

(assert (=> d!1362308 d!1362788))

(declare-fun bs!794007 () Bool)

(declare-fun b!4467789 () Bool)

(assert (= bs!794007 (and b!4467789 b!4467734)))

(declare-fun lambda!162998 () Int)

(assert (=> bs!794007 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162998 lambda!162993))))

(declare-fun bs!794008 () Bool)

(assert (= bs!794008 (and b!4467789 d!1362756)))

(assert (=> bs!794008 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656986) (= lambda!162998 lambda!162995))))

(declare-fun bs!794009 () Bool)

(assert (= bs!794009 (and b!4467789 b!4467733)))

(assert (=> bs!794009 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162998 lambda!162992))))

(declare-fun bs!794010 () Bool)

(assert (= bs!794010 (and b!4467789 b!4467727)))

(assert (=> bs!794010 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656963) (= lambda!162998 lambda!162989))))

(declare-fun bs!794011 () Bool)

(assert (= bs!794011 (and b!4467789 d!1362312)))

(assert (=> bs!794011 (not (= lambda!162998 lambda!162822))))

(declare-fun bs!794012 () Bool)

(assert (= bs!794012 (and b!4467789 d!1362752)))

(assert (=> bs!794012 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656964) (= lambda!162998 lambda!162990))))

(declare-fun bs!794013 () Bool)

(assert (= bs!794013 (and b!4467789 b!4467328)))

(assert (=> bs!794013 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162998 lambda!162943))))

(assert (=> bs!794010 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162998 lambda!162988))))

(declare-fun bs!794014 () Bool)

(assert (= bs!794014 (and b!4467789 d!1362504)))

(assert (=> bs!794014 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656701) (= lambda!162998 lambda!162945))))

(assert (=> bs!794013 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656700) (= lambda!162998 lambda!162944))))

(declare-fun bs!794015 () Bool)

(assert (= bs!794015 (and b!4467789 b!4467726)))

(assert (=> bs!794015 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162998 lambda!162987))))

(assert (=> bs!794007 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656985) (= lambda!162998 lambda!162994))))

(declare-fun bs!794016 () Bool)

(assert (= bs!794016 (and b!4467789 b!4467327)))

(assert (=> bs!794016 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162998 lambda!162942))))

(assert (=> b!4467789 true))

(declare-fun bs!794017 () Bool)

(declare-fun b!4467790 () Bool)

(assert (= bs!794017 (and b!4467790 b!4467734)))

(declare-fun lambda!162999 () Int)

(assert (=> bs!794017 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162999 lambda!162993))))

(declare-fun bs!794018 () Bool)

(assert (= bs!794018 (and b!4467790 d!1362756)))

(assert (=> bs!794018 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656986) (= lambda!162999 lambda!162995))))

(declare-fun bs!794019 () Bool)

(assert (= bs!794019 (and b!4467790 b!4467733)))

(assert (=> bs!794019 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!162999 lambda!162992))))

(declare-fun bs!794020 () Bool)

(assert (= bs!794020 (and b!4467790 b!4467727)))

(assert (=> bs!794020 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656963) (= lambda!162999 lambda!162989))))

(declare-fun bs!794021 () Bool)

(assert (= bs!794021 (and b!4467790 d!1362312)))

(assert (=> bs!794021 (not (= lambda!162999 lambda!162822))))

(declare-fun bs!794022 () Bool)

(assert (= bs!794022 (and b!4467790 d!1362752)))

(assert (=> bs!794022 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656964) (= lambda!162999 lambda!162990))))

(declare-fun bs!794023 () Bool)

(assert (= bs!794023 (and b!4467790 b!4467328)))

(assert (=> bs!794023 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162999 lambda!162943))))

(assert (=> bs!794020 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162999 lambda!162988))))

(declare-fun bs!794024 () Bool)

(assert (= bs!794024 (and b!4467790 d!1362504)))

(assert (=> bs!794024 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656701) (= lambda!162999 lambda!162945))))

(declare-fun bs!794025 () Bool)

(assert (= bs!794025 (and b!4467790 b!4467789)))

(assert (=> bs!794025 (= lambda!162999 lambda!162998)))

(assert (=> bs!794023 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656700) (= lambda!162999 lambda!162944))))

(declare-fun bs!794026 () Bool)

(assert (= bs!794026 (and b!4467790 b!4467726)))

(assert (=> bs!794026 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 lt!1656304))) (= lambda!162999 lambda!162987))))

(assert (=> bs!794017 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1656985) (= lambda!162999 lambda!162994))))

(declare-fun bs!794027 () Bool)

(assert (= bs!794027 (and b!4467790 b!4467327)))

(assert (=> bs!794027 (= (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!162999 lambda!162942))))

(assert (=> b!4467790 true))

(declare-fun lt!1657016 () ListMap!3309)

(declare-fun lambda!163000 () Int)

(assert (=> bs!794017 (= (= lt!1657016 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!163000 lambda!162993))))

(assert (=> bs!794018 (= (= lt!1657016 lt!1656986) (= lambda!163000 lambda!162995))))

(assert (=> bs!794019 (= (= lt!1657016 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!163000 lambda!162992))))

(assert (=> bs!794020 (= (= lt!1657016 lt!1656963) (= lambda!163000 lambda!162989))))

(assert (=> bs!794021 (not (= lambda!163000 lambda!162822))))

(assert (=> bs!794022 (= (= lt!1657016 lt!1656964) (= lambda!163000 lambda!162990))))

(assert (=> bs!794023 (= (= lt!1657016 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!163000 lambda!162943))))

(assert (=> bs!794020 (= (= lt!1657016 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!163000 lambda!162988))))

(assert (=> bs!794024 (= (= lt!1657016 lt!1656701) (= lambda!163000 lambda!162945))))

(assert (=> bs!794025 (= (= lt!1657016 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163000 lambda!162998))))

(assert (=> bs!794023 (= (= lt!1657016 lt!1656700) (= lambda!163000 lambda!162944))))

(assert (=> b!4467790 (= (= lt!1657016 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163000 lambda!162999))))

(assert (=> bs!794026 (= (= lt!1657016 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!163000 lambda!162987))))

(assert (=> bs!794017 (= (= lt!1657016 lt!1656985) (= lambda!163000 lambda!162994))))

(assert (=> bs!794027 (= (= lt!1657016 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!163000 lambda!162942))))

(assert (=> b!4467790 true))

(declare-fun bs!794028 () Bool)

(declare-fun d!1362790 () Bool)

(assert (= bs!794028 (and d!1362790 b!4467734)))

(declare-fun lambda!163001 () Int)

(declare-fun lt!1657017 () ListMap!3309)

(assert (=> bs!794028 (= (= lt!1657017 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!163001 lambda!162993))))

(declare-fun bs!794029 () Bool)

(assert (= bs!794029 (and d!1362790 d!1362756)))

(assert (=> bs!794029 (= (= lt!1657017 lt!1656986) (= lambda!163001 lambda!162995))))

(declare-fun bs!794030 () Bool)

(assert (= bs!794030 (and d!1362790 b!4467733)))

(assert (=> bs!794030 (= (= lt!1657017 (extractMap!1076 (t!357347 (toList!4047 lm!1477)))) (= lambda!163001 lambda!162992))))

(declare-fun bs!794031 () Bool)

(assert (= bs!794031 (and d!1362790 b!4467727)))

(assert (=> bs!794031 (= (= lt!1657017 lt!1656963) (= lambda!163001 lambda!162989))))

(declare-fun bs!794032 () Bool)

(assert (= bs!794032 (and d!1362790 d!1362312)))

(assert (=> bs!794032 (not (= lambda!163001 lambda!162822))))

(declare-fun bs!794033 () Bool)

(assert (= bs!794033 (and d!1362790 b!4467790)))

(assert (=> bs!794033 (= (= lt!1657017 lt!1657016) (= lambda!163001 lambda!163000))))

(declare-fun bs!794034 () Bool)

(assert (= bs!794034 (and d!1362790 d!1362752)))

(assert (=> bs!794034 (= (= lt!1657017 lt!1656964) (= lambda!163001 lambda!162990))))

(declare-fun bs!794035 () Bool)

(assert (= bs!794035 (and d!1362790 b!4467328)))

(assert (=> bs!794035 (= (= lt!1657017 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!163001 lambda!162943))))

(assert (=> bs!794031 (= (= lt!1657017 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!163001 lambda!162988))))

(declare-fun bs!794036 () Bool)

(assert (= bs!794036 (and d!1362790 d!1362504)))

(assert (=> bs!794036 (= (= lt!1657017 lt!1656701) (= lambda!163001 lambda!162945))))

(declare-fun bs!794037 () Bool)

(assert (= bs!794037 (and d!1362790 b!4467789)))

(assert (=> bs!794037 (= (= lt!1657017 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163001 lambda!162998))))

(assert (=> bs!794035 (= (= lt!1657017 lt!1656700) (= lambda!163001 lambda!162944))))

(assert (=> bs!794033 (= (= lt!1657017 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163001 lambda!162999))))

(declare-fun bs!794038 () Bool)

(assert (= bs!794038 (and d!1362790 b!4467726)))

(assert (=> bs!794038 (= (= lt!1657017 (extractMap!1076 (t!357347 lt!1656304))) (= lambda!163001 lambda!162987))))

(assert (=> bs!794028 (= (= lt!1657017 lt!1656985) (= lambda!163001 lambda!162994))))

(declare-fun bs!794039 () Bool)

(assert (= bs!794039 (and d!1362790 b!4467327)))

(assert (=> bs!794039 (= (= lt!1657017 (extractMap!1076 (t!357347 (Cons!50273 lt!1656299 Nil!50273)))) (= lambda!163001 lambda!162942))))

(assert (=> d!1362790 true))

(declare-fun lt!1657010 () ListMap!3309)

(declare-fun c!760540 () Bool)

(declare-fun call!311077 () Bool)

(declare-fun bm!311070 () Bool)

(assert (=> bm!311070 (= call!311077 (forall!9980 (ite c!760540 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (toList!4048 lt!1657010)) (ite c!760540 lambda!162998 lambda!163000)))))

(declare-fun e!2782111 () ListMap!3309)

(assert (=> b!4467790 (= e!2782111 lt!1657016)))

(assert (=> b!4467790 (= lt!1657010 (+!1362 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(assert (=> b!4467790 (= lt!1657016 (addToMapMapFromBucket!585 (t!357346 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (+!1362 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(declare-fun lt!1657008 () Unit!87415)

(declare-fun call!311076 () Unit!87415)

(assert (=> b!4467790 (= lt!1657008 call!311076)))

(assert (=> b!4467790 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lambda!162999)))

(declare-fun lt!1657026 () Unit!87415)

(assert (=> b!4467790 (= lt!1657026 lt!1657008)))

(assert (=> b!4467790 (forall!9980 (toList!4048 lt!1657010) lambda!163000)))

(declare-fun lt!1657022 () Unit!87415)

(declare-fun Unit!87536 () Unit!87415)

(assert (=> b!4467790 (= lt!1657022 Unit!87536)))

(assert (=> b!4467790 (forall!9980 (t!357346 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lambda!163000)))

(declare-fun lt!1657015 () Unit!87415)

(declare-fun Unit!87538 () Unit!87415)

(assert (=> b!4467790 (= lt!1657015 Unit!87538)))

(declare-fun lt!1657014 () Unit!87415)

(declare-fun Unit!87540 () Unit!87415)

(assert (=> b!4467790 (= lt!1657014 Unit!87540)))

(declare-fun lt!1657018 () Unit!87415)

(assert (=> b!4467790 (= lt!1657018 (forallContained!2251 (toList!4048 lt!1657010) lambda!163000 (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(assert (=> b!4467790 (contains!12815 lt!1657010 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun lt!1657023 () Unit!87415)

(declare-fun Unit!87542 () Unit!87415)

(assert (=> b!4467790 (= lt!1657023 Unit!87542)))

(assert (=> b!4467790 (contains!12815 lt!1657016 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun lt!1657019 () Unit!87415)

(declare-fun Unit!87543 () Unit!87415)

(assert (=> b!4467790 (= lt!1657019 Unit!87543)))

(assert (=> b!4467790 (forall!9980 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lambda!163000)))

(declare-fun lt!1657021 () Unit!87415)

(declare-fun Unit!87545 () Unit!87415)

(assert (=> b!4467790 (= lt!1657021 Unit!87545)))

(assert (=> b!4467790 call!311077))

(declare-fun lt!1657027 () Unit!87415)

(declare-fun Unit!87546 () Unit!87415)

(assert (=> b!4467790 (= lt!1657027 Unit!87546)))

(declare-fun lt!1657011 () Unit!87415)

(declare-fun Unit!87548 () Unit!87415)

(assert (=> b!4467790 (= lt!1657011 Unit!87548)))

(declare-fun lt!1657012 () Unit!87415)

(assert (=> b!4467790 (= lt!1657012 (addForallContainsKeyThenBeforeAdding!264 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1657016 (_1!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))) (_2!28551 (h!56031 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(declare-fun call!311075 () Bool)

(assert (=> b!4467790 call!311075))

(declare-fun lt!1657024 () Unit!87415)

(assert (=> b!4467790 (= lt!1657024 lt!1657012)))

(assert (=> b!4467790 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lambda!163000)))

(declare-fun lt!1657020 () Unit!87415)

(declare-fun Unit!87550 () Unit!87415)

(assert (=> b!4467790 (= lt!1657020 Unit!87550)))

(declare-fun res!1853446 () Bool)

(assert (=> b!4467790 (= res!1853446 (forall!9980 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lambda!163000))))

(declare-fun e!2782112 () Bool)

(assert (=> b!4467790 (=> (not res!1853446) (not e!2782112))))

(assert (=> b!4467790 e!2782112))

(declare-fun lt!1657028 () Unit!87415)

(declare-fun Unit!87551 () Unit!87415)

(assert (=> b!4467790 (= lt!1657028 Unit!87551)))

(declare-fun bm!311071 () Bool)

(assert (=> bm!311071 (= call!311076 (lemmaContainsAllItsOwnKeys!265 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun b!4467791 () Bool)

(declare-fun e!2782113 () Bool)

(assert (=> b!4467791 (= e!2782113 (invariantList!923 (toList!4048 lt!1657017)))))

(declare-fun bm!311072 () Bool)

(assert (=> bm!311072 (= call!311075 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (ite c!760540 lambda!162998 lambda!163000)))))

(assert (=> b!4467789 (= e!2782111 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(declare-fun lt!1657025 () Unit!87415)

(assert (=> b!4467789 (= lt!1657025 call!311076)))

(assert (=> b!4467789 call!311075))

(declare-fun lt!1657013 () Unit!87415)

(assert (=> b!4467789 (= lt!1657013 lt!1657025)))

(assert (=> b!4467789 call!311077))

(declare-fun lt!1657009 () Unit!87415)

(declare-fun Unit!87552 () Unit!87415)

(assert (=> b!4467789 (= lt!1657009 Unit!87552)))

(assert (=> d!1362790 e!2782113))

(declare-fun res!1853445 () Bool)

(assert (=> d!1362790 (=> (not res!1853445) (not e!2782113))))

(assert (=> d!1362790 (= res!1853445 (forall!9980 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lambda!163001))))

(assert (=> d!1362790 (= lt!1657017 e!2782111)))

(assert (=> d!1362790 (= c!760540 ((_ is Nil!50272) (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(assert (=> d!1362790 (noDuplicateKeys!1020 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(assert (=> d!1362790 (= (addToMapMapFromBucket!585 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lt!1657017)))

(declare-fun b!4467792 () Bool)

(declare-fun res!1853444 () Bool)

(assert (=> b!4467792 (=> (not res!1853444) (not e!2782113))))

(assert (=> b!4467792 (= res!1853444 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lambda!163001))))

(declare-fun b!4467793 () Bool)

(assert (=> b!4467793 (= e!2782112 (forall!9980 (toList!4048 (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) lambda!163000))))

(assert (= (and d!1362790 c!760540) b!4467789))

(assert (= (and d!1362790 (not c!760540)) b!4467790))

(assert (= (and b!4467790 res!1853446) b!4467793))

(assert (= (or b!4467789 b!4467790) bm!311072))

(assert (= (or b!4467789 b!4467790) bm!311070))

(assert (= (or b!4467789 b!4467790) bm!311071))

(assert (= (and d!1362790 res!1853445) b!4467792))

(assert (= (and b!4467792 res!1853444) b!4467791))

(declare-fun m!5173553 () Bool)

(assert (=> b!4467793 m!5173553))

(declare-fun m!5173555 () Bool)

(assert (=> bm!311070 m!5173555))

(declare-fun m!5173557 () Bool)

(assert (=> d!1362790 m!5173557))

(declare-fun m!5173559 () Bool)

(assert (=> d!1362790 m!5173559))

(declare-fun m!5173561 () Bool)

(assert (=> b!4467791 m!5173561))

(declare-fun m!5173563 () Bool)

(assert (=> b!4467790 m!5173563))

(declare-fun m!5173565 () Bool)

(assert (=> b!4467790 m!5173565))

(declare-fun m!5173567 () Bool)

(assert (=> b!4467790 m!5173567))

(declare-fun m!5173569 () Bool)

(assert (=> b!4467790 m!5173569))

(declare-fun m!5173571 () Bool)

(assert (=> b!4467790 m!5173571))

(declare-fun m!5173573 () Bool)

(assert (=> b!4467790 m!5173573))

(declare-fun m!5173575 () Bool)

(assert (=> b!4467790 m!5173575))

(declare-fun m!5173577 () Bool)

(assert (=> b!4467790 m!5173577))

(assert (=> b!4467790 m!5173567))

(assert (=> b!4467790 m!5173553))

(declare-fun m!5173579 () Bool)

(assert (=> b!4467790 m!5173579))

(assert (=> b!4467790 m!5172229))

(declare-fun m!5173581 () Bool)

(assert (=> b!4467790 m!5173581))

(assert (=> b!4467790 m!5172229))

(assert (=> b!4467790 m!5173573))

(assert (=> bm!311071 m!5172229))

(declare-fun m!5173583 () Bool)

(assert (=> bm!311071 m!5173583))

(declare-fun m!5173585 () Bool)

(assert (=> bm!311072 m!5173585))

(declare-fun m!5173587 () Bool)

(assert (=> b!4467792 m!5173587))

(assert (=> b!4466911 d!1362790))

(declare-fun bs!794040 () Bool)

(declare-fun d!1362792 () Bool)

(assert (= bs!794040 (and d!1362792 d!1362384)))

(declare-fun lambda!163002 () Int)

(assert (=> bs!794040 (= lambda!163002 lambda!162845)))

(declare-fun bs!794041 () Bool)

(assert (= bs!794041 (and d!1362792 d!1362412)))

(assert (=> bs!794041 (not (= lambda!163002 lambda!162852))))

(declare-fun bs!794042 () Bool)

(assert (= bs!794042 (and d!1362792 d!1362362)))

(assert (=> bs!794042 (= lambda!163002 lambda!162840)))

(declare-fun bs!794043 () Bool)

(assert (= bs!794043 (and d!1362792 d!1362394)))

(assert (=> bs!794043 (= lambda!163002 lambda!162849)))

(declare-fun bs!794044 () Bool)

(assert (= bs!794044 (and d!1362792 d!1362392)))

(assert (=> bs!794044 (= lambda!163002 lambda!162846)))

(declare-fun bs!794045 () Bool)

(assert (= bs!794045 (and d!1362792 d!1362336)))

(assert (=> bs!794045 (= lambda!163002 lambda!162828)))

(declare-fun bs!794046 () Bool)

(assert (= bs!794046 (and d!1362792 d!1362784)))

(assert (=> bs!794046 (= lambda!163002 lambda!162997)))

(declare-fun bs!794047 () Bool)

(assert (= bs!794047 (and d!1362792 d!1362586)))

(assert (=> bs!794047 (= lambda!163002 lambda!162946)))

(declare-fun bs!794048 () Bool)

(assert (= bs!794048 (and d!1362792 start!438580)))

(assert (=> bs!794048 (= lambda!163002 lambda!162813)))

(declare-fun bs!794049 () Bool)

(assert (= bs!794049 (and d!1362792 d!1362754)))

(assert (=> bs!794049 (= lambda!163002 lambda!162991)))

(declare-fun bs!794050 () Bool)

(assert (= bs!794050 (and d!1362792 d!1362344)))

(assert (=> bs!794050 (= lambda!163002 lambda!162839)))

(declare-fun bs!794051 () Bool)

(assert (= bs!794051 (and d!1362792 d!1362414)))

(assert (=> bs!794051 (= lambda!163002 lambda!162855)))

(declare-fun bs!794052 () Bool)

(assert (= bs!794052 (and d!1362792 d!1362758)))

(assert (=> bs!794052 (= lambda!163002 lambda!162996)))

(declare-fun lt!1657029 () ListMap!3309)

(assert (=> d!1362792 (invariantList!923 (toList!4048 lt!1657029))))

(declare-fun e!2782114 () ListMap!3309)

(assert (=> d!1362792 (= lt!1657029 e!2782114)))

(declare-fun c!760541 () Bool)

(assert (=> d!1362792 (= c!760541 ((_ is Cons!50273) (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))

(assert (=> d!1362792 (forall!9978 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)) lambda!163002)))

(assert (=> d!1362792 (= (extractMap!1076 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1657029)))

(declare-fun b!4467794 () Bool)

(assert (=> b!4467794 (= e!2782114 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (extractMap!1076 (t!357347 (t!357347 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun b!4467795 () Bool)

(assert (=> b!4467795 (= e!2782114 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362792 c!760541) b!4467794))

(assert (= (and d!1362792 (not c!760541)) b!4467795))

(declare-fun m!5173589 () Bool)

(assert (=> d!1362792 m!5173589))

(declare-fun m!5173591 () Bool)

(assert (=> d!1362792 m!5173591))

(declare-fun m!5173593 () Bool)

(assert (=> b!4467794 m!5173593))

(assert (=> b!4467794 m!5173593))

(declare-fun m!5173595 () Bool)

(assert (=> b!4467794 m!5173595))

(assert (=> b!4466911 d!1362792))

(assert (=> d!1362306 d!1362676))

(declare-fun b!4467798 () Bool)

(declare-fun e!2782116 () Option!10918)

(assert (=> b!4467798 (= e!2782116 (getValueByKey!904 (t!357347 (toList!4047 lt!1656331)) (_1!28552 lt!1656299)))))

(declare-fun d!1362794 () Bool)

(declare-fun c!760542 () Bool)

(assert (=> d!1362794 (= c!760542 (and ((_ is Cons!50273) (toList!4047 lt!1656331)) (= (_1!28552 (h!56032 (toList!4047 lt!1656331))) (_1!28552 lt!1656299))))))

(declare-fun e!2782115 () Option!10918)

(assert (=> d!1362794 (= (getValueByKey!904 (toList!4047 lt!1656331) (_1!28552 lt!1656299)) e!2782115)))

(declare-fun b!4467799 () Bool)

(assert (=> b!4467799 (= e!2782116 None!10917)))

(declare-fun b!4467796 () Bool)

(assert (=> b!4467796 (= e!2782115 (Some!10917 (_2!28552 (h!56032 (toList!4047 lt!1656331)))))))

(declare-fun b!4467797 () Bool)

(assert (=> b!4467797 (= e!2782115 e!2782116)))

(declare-fun c!760543 () Bool)

(assert (=> b!4467797 (= c!760543 (and ((_ is Cons!50273) (toList!4047 lt!1656331)) (not (= (_1!28552 (h!56032 (toList!4047 lt!1656331))) (_1!28552 lt!1656299)))))))

(assert (= (and d!1362794 c!760542) b!4467796))

(assert (= (and d!1362794 (not c!760542)) b!4467797))

(assert (= (and b!4467797 c!760543) b!4467798))

(assert (= (and b!4467797 (not c!760543)) b!4467799))

(declare-fun m!5173597 () Bool)

(assert (=> b!4467798 m!5173597))

(assert (=> b!4466816 d!1362794))

(assert (=> b!4466976 d!1362612))

(declare-fun d!1362796 () Bool)

(assert (=> d!1362796 (= (tail!7492 (toList!4047 lm!1477)) (t!357347 (toList!4047 lm!1477)))))

(assert (=> d!1362298 d!1362796))

(declare-fun d!1362798 () Bool)

(declare-fun isEmpty!28481 (Option!10918) Bool)

(assert (=> d!1362798 (= (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) lt!1656298)) (not (isEmpty!28481 (getValueByKey!904 (toList!4047 lm!1477) lt!1656298))))))

(declare-fun bs!794053 () Bool)

(assert (= bs!794053 d!1362798))

(assert (=> bs!794053 m!5172369))

(declare-fun m!5173599 () Bool)

(assert (=> bs!794053 m!5173599))

(assert (=> b!4467009 d!1362798))

(declare-fun b!4467802 () Bool)

(declare-fun e!2782118 () Option!10918)

(assert (=> b!4467802 (= e!2782118 (getValueByKey!904 (t!357347 (toList!4047 lm!1477)) lt!1656298))))

(declare-fun d!1362800 () Bool)

(declare-fun c!760544 () Bool)

(assert (=> d!1362800 (= c!760544 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (= (_1!28552 (h!56032 (toList!4047 lm!1477))) lt!1656298)))))

(declare-fun e!2782117 () Option!10918)

(assert (=> d!1362800 (= (getValueByKey!904 (toList!4047 lm!1477) lt!1656298) e!2782117)))

(declare-fun b!4467803 () Bool)

(assert (=> b!4467803 (= e!2782118 None!10917)))

(declare-fun b!4467800 () Bool)

(assert (=> b!4467800 (= e!2782117 (Some!10917 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(declare-fun b!4467801 () Bool)

(assert (=> b!4467801 (= e!2782117 e!2782118)))

(declare-fun c!760545 () Bool)

(assert (=> b!4467801 (= c!760545 (and ((_ is Cons!50273) (toList!4047 lm!1477)) (not (= (_1!28552 (h!56032 (toList!4047 lm!1477))) lt!1656298))))))

(assert (= (and d!1362800 c!760544) b!4467800))

(assert (= (and d!1362800 (not c!760544)) b!4467801))

(assert (= (and b!4467801 c!760545) b!4467802))

(assert (= (and b!4467801 (not c!760545)) b!4467803))

(declare-fun m!5173601 () Bool)

(assert (=> b!4467802 m!5173601))

(assert (=> b!4467009 d!1362800))

(declare-fun d!1362802 () Bool)

(declare-fun c!760548 () Bool)

(assert (=> d!1362802 (= c!760548 ((_ is Nil!50275) (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(declare-fun e!2782121 () (InoxSet K!11690))

(assert (=> d!1362802 (= (content!8089 (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) e!2782121)))

(declare-fun b!4467808 () Bool)

(assert (=> b!4467808 (= e!2782121 ((as const (Array K!11690 Bool)) false))))

(declare-fun b!4467809 () Bool)

(assert (=> b!4467809 (= e!2782121 ((_ map or) (store ((as const (Array K!11690 Bool)) false) (h!56036 (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) true) (content!8089 (t!357349 (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))))

(assert (= (and d!1362802 c!760548) b!4467808))

(assert (= (and d!1362802 (not c!760548)) b!4467809))

(declare-fun m!5173603 () Bool)

(assert (=> b!4467809 m!5173603))

(declare-fun m!5173605 () Bool)

(assert (=> b!4467809 m!5173605))

(assert (=> b!4466848 d!1362802))

(declare-fun bs!794054 () Bool)

(declare-fun b!4467811 () Bool)

(assert (= bs!794054 (and b!4467811 b!4467127)))

(declare-fun lambda!163003 () Int)

(assert (=> bs!794054 (= (= (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163003 lambda!162893))))

(declare-fun bs!794055 () Bool)

(assert (= bs!794055 (and b!4467811 b!4467387)))

(assert (=> bs!794055 (= (= (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!163003 lambda!162947))))

(declare-fun bs!794056 () Bool)

(assert (= bs!794056 (and b!4467811 b!4467665)))

(assert (=> bs!794056 (= (= (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163003 lambda!162984))))

(declare-fun bs!794057 () Bool)

(assert (= bs!794057 (and b!4467811 b!4467667)))

(assert (=> bs!794057 (= (= (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!163003 lambda!162982))))

(declare-fun bs!794058 () Bool)

(assert (= bs!794058 (and b!4467811 b!4467666)))

(assert (=> bs!794058 (= (= (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!163003 lambda!162981))))

(assert (=> b!4467811 true))

(declare-fun bs!794059 () Bool)

(declare-fun b!4467812 () Bool)

(assert (= bs!794059 (and b!4467812 b!4467128)))

(declare-fun lambda!163004 () Int)

(assert (=> bs!794059 (= lambda!163004 lambda!162894)))

(declare-fun bs!794060 () Bool)

(assert (= bs!794060 (and b!4467812 b!4467388)))

(assert (=> bs!794060 (= lambda!163004 lambda!162948)))

(declare-fun bs!794061 () Bool)

(assert (= bs!794061 (and b!4467812 b!4467668)))

(assert (=> bs!794061 (= lambda!163004 lambda!162986)))

(declare-fun d!1362804 () Bool)

(declare-fun e!2782122 () Bool)

(assert (=> d!1362804 e!2782122))

(declare-fun res!1853449 () Bool)

(assert (=> d!1362804 (=> (not res!1853449) (not e!2782122))))

(declare-fun lt!1657030 () List!50399)

(assert (=> d!1362804 (= res!1853449 (noDuplicate!695 lt!1657030))))

(assert (=> d!1362804 (= lt!1657030 (getKeysList!371 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(assert (=> d!1362804 (= (keys!17354 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lt!1657030)))

(declare-fun b!4467810 () Bool)

(declare-fun res!1853447 () Bool)

(assert (=> b!4467810 (=> (not res!1853447) (not e!2782122))))

(assert (=> b!4467810 (= res!1853447 (= (length!246 lt!1657030) (length!247 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))))))))

(declare-fun res!1853448 () Bool)

(assert (=> b!4467811 (=> (not res!1853448) (not e!2782122))))

(assert (=> b!4467811 (= res!1853448 (forall!9981 lt!1657030 lambda!163003))))

(assert (=> b!4467812 (= e!2782122 (= (content!8089 lt!1657030) (content!8089 (map!11016 (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) lambda!163004))))))

(assert (= (and d!1362804 res!1853449) b!4467810))

(assert (= (and b!4467810 res!1853447) b!4467811))

(assert (= (and b!4467811 res!1853448) b!4467812))

(declare-fun m!5173607 () Bool)

(assert (=> d!1362804 m!5173607))

(assert (=> d!1362804 m!5173171))

(declare-fun m!5173609 () Bool)

(assert (=> b!4467810 m!5173609))

(declare-fun m!5173611 () Bool)

(assert (=> b!4467810 m!5173611))

(declare-fun m!5173613 () Bool)

(assert (=> b!4467811 m!5173613))

(declare-fun m!5173615 () Bool)

(assert (=> b!4467812 m!5173615))

(declare-fun m!5173617 () Bool)

(assert (=> b!4467812 m!5173617))

(assert (=> b!4467812 m!5173617))

(declare-fun m!5173619 () Bool)

(assert (=> b!4467812 m!5173619))

(assert (=> b!4466848 d!1362804))

(declare-fun d!1362806 () Bool)

(declare-fun c!760549 () Bool)

(assert (=> d!1362806 (= c!760549 ((_ is Nil!50275) (keys!17354 lt!1656354)))))

(declare-fun e!2782123 () (InoxSet K!11690))

(assert (=> d!1362806 (= (content!8089 (keys!17354 lt!1656354)) e!2782123)))

(declare-fun b!4467813 () Bool)

(assert (=> b!4467813 (= e!2782123 ((as const (Array K!11690 Bool)) false))))

(declare-fun b!4467814 () Bool)

(assert (=> b!4467814 (= e!2782123 ((_ map or) (store ((as const (Array K!11690 Bool)) false) (h!56036 (keys!17354 lt!1656354)) true) (content!8089 (t!357349 (keys!17354 lt!1656354)))))))

(assert (= (and d!1362806 c!760549) b!4467813))

(assert (= (and d!1362806 (not c!760549)) b!4467814))

(declare-fun m!5173621 () Bool)

(assert (=> b!4467814 m!5173621))

(declare-fun m!5173623 () Bool)

(assert (=> b!4467814 m!5173623))

(assert (=> b!4466848 d!1362806))

(declare-fun bs!794062 () Bool)

(declare-fun b!4467816 () Bool)

(assert (= bs!794062 (and b!4467816 b!4467127)))

(declare-fun lambda!163005 () Int)

(assert (=> bs!794062 (= (= (toList!4048 lt!1656354) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163005 lambda!162893))))

(declare-fun bs!794063 () Bool)

(assert (= bs!794063 (and b!4467816 b!4467387)))

(assert (=> bs!794063 (= (= (toList!4048 lt!1656354) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!163005 lambda!162947))))

(declare-fun bs!794064 () Bool)

(assert (= bs!794064 (and b!4467816 b!4467665)))

(assert (=> bs!794064 (= (= (toList!4048 lt!1656354) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163005 lambda!162984))))

(declare-fun bs!794065 () Bool)

(assert (= bs!794065 (and b!4467816 b!4467811)))

(assert (=> bs!794065 (= (= (toList!4048 lt!1656354) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163005 lambda!163003))))

(declare-fun bs!794066 () Bool)

(assert (= bs!794066 (and b!4467816 b!4467667)))

(assert (=> bs!794066 (= (= (toList!4048 lt!1656354) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!163005 lambda!162982))))

(declare-fun bs!794067 () Bool)

(assert (= bs!794067 (and b!4467816 b!4467666)))

(assert (=> bs!794067 (= (= (toList!4048 lt!1656354) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!163005 lambda!162981))))

(assert (=> b!4467816 true))

(declare-fun bs!794068 () Bool)

(declare-fun b!4467817 () Bool)

(assert (= bs!794068 (and b!4467817 b!4467128)))

(declare-fun lambda!163006 () Int)

(assert (=> bs!794068 (= lambda!163006 lambda!162894)))

(declare-fun bs!794069 () Bool)

(assert (= bs!794069 (and b!4467817 b!4467388)))

(assert (=> bs!794069 (= lambda!163006 lambda!162948)))

(declare-fun bs!794070 () Bool)

(assert (= bs!794070 (and b!4467817 b!4467668)))

(assert (=> bs!794070 (= lambda!163006 lambda!162986)))

(declare-fun bs!794071 () Bool)

(assert (= bs!794071 (and b!4467817 b!4467812)))

(assert (=> bs!794071 (= lambda!163006 lambda!163004)))

(declare-fun d!1362808 () Bool)

(declare-fun e!2782124 () Bool)

(assert (=> d!1362808 e!2782124))

(declare-fun res!1853452 () Bool)

(assert (=> d!1362808 (=> (not res!1853452) (not e!2782124))))

(declare-fun lt!1657031 () List!50399)

(assert (=> d!1362808 (= res!1853452 (noDuplicate!695 lt!1657031))))

(assert (=> d!1362808 (= lt!1657031 (getKeysList!371 (toList!4048 lt!1656354)))))

(assert (=> d!1362808 (= (keys!17354 lt!1656354) lt!1657031)))

(declare-fun b!4467815 () Bool)

(declare-fun res!1853450 () Bool)

(assert (=> b!4467815 (=> (not res!1853450) (not e!2782124))))

(assert (=> b!4467815 (= res!1853450 (= (length!246 lt!1657031) (length!247 (toList!4048 lt!1656354))))))

(declare-fun res!1853451 () Bool)

(assert (=> b!4467816 (=> (not res!1853451) (not e!2782124))))

(assert (=> b!4467816 (= res!1853451 (forall!9981 lt!1657031 lambda!163005))))

(assert (=> b!4467817 (= e!2782124 (= (content!8089 lt!1657031) (content!8089 (map!11016 (toList!4048 lt!1656354) lambda!163006))))))

(assert (= (and d!1362808 res!1853452) b!4467815))

(assert (= (and b!4467815 res!1853450) b!4467816))

(assert (= (and b!4467816 res!1853451) b!4467817))

(declare-fun m!5173625 () Bool)

(assert (=> d!1362808 m!5173625))

(assert (=> d!1362808 m!5172959))

(declare-fun m!5173627 () Bool)

(assert (=> b!4467815 m!5173627))

(declare-fun m!5173629 () Bool)

(assert (=> b!4467815 m!5173629))

(declare-fun m!5173631 () Bool)

(assert (=> b!4467816 m!5173631))

(declare-fun m!5173633 () Bool)

(assert (=> b!4467817 m!5173633))

(declare-fun m!5173635 () Bool)

(assert (=> b!4467817 m!5173635))

(assert (=> b!4467817 m!5173635))

(declare-fun m!5173637 () Bool)

(assert (=> b!4467817 m!5173637))

(assert (=> b!4466848 d!1362808))

(declare-fun d!1362810 () Bool)

(assert (=> d!1362810 (isDefined!8206 (getValueByKey!904 (toList!4047 lm!1477) lt!1656298))))

(declare-fun lt!1657034 () Unit!87415)

(declare-fun choose!28541 (List!50397 (_ BitVec 64)) Unit!87415)

(assert (=> d!1362810 (= lt!1657034 (choose!28541 (toList!4047 lm!1477) lt!1656298))))

(declare-fun e!2782127 () Bool)

(assert (=> d!1362810 e!2782127))

(declare-fun res!1853455 () Bool)

(assert (=> d!1362810 (=> (not res!1853455) (not e!2782127))))

(assert (=> d!1362810 (= res!1853455 (isStrictlySorted!337 (toList!4047 lm!1477)))))

(assert (=> d!1362810 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!809 (toList!4047 lm!1477) lt!1656298) lt!1657034)))

(declare-fun b!4467820 () Bool)

(assert (=> b!4467820 (= e!2782127 (containsKey!1460 (toList!4047 lm!1477) lt!1656298))))

(assert (= (and d!1362810 res!1853455) b!4467820))

(assert (=> d!1362810 m!5172369))

(assert (=> d!1362810 m!5172369))

(assert (=> d!1362810 m!5172371))

(declare-fun m!5173639 () Bool)

(assert (=> d!1362810 m!5173639))

(assert (=> d!1362810 m!5172033))

(assert (=> b!4467820 m!5172365))

(assert (=> b!4467007 d!1362810))

(assert (=> b!4467007 d!1362798))

(assert (=> b!4467007 d!1362800))

(declare-fun b!4467821 () Bool)

(declare-fun e!2782129 () Unit!87415)

(declare-fun e!2782131 () Unit!87415)

(assert (=> b!4467821 (= e!2782129 e!2782131)))

(declare-fun c!760552 () Bool)

(declare-fun call!311078 () Bool)

(assert (=> b!4467821 (= c!760552 call!311078)))

(declare-fun b!4467822 () Bool)

(declare-fun e!2782130 () List!50399)

(assert (=> b!4467822 (= e!2782130 (keys!17354 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))))))

(declare-fun b!4467823 () Bool)

(assert (=> b!4467823 false))

(declare-fun lt!1657042 () Unit!87415)

(declare-fun lt!1657041 () Unit!87415)

(assert (=> b!4467823 (= lt!1657042 lt!1657041)))

(assert (=> b!4467823 (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287)))

(assert (=> b!4467823 (= lt!1657041 (lemmaInGetKeysListThenContainsKey!370 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(declare-fun Unit!87553 () Unit!87415)

(assert (=> b!4467823 (= e!2782131 Unit!87553)))

(declare-fun b!4467824 () Bool)

(declare-fun lt!1657040 () Unit!87415)

(assert (=> b!4467824 (= e!2782129 lt!1657040)))

(declare-fun lt!1657038 () Unit!87415)

(assert (=> b!4467824 (= lt!1657038 (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(assert (=> b!4467824 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(declare-fun lt!1657037 () Unit!87415)

(assert (=> b!4467824 (= lt!1657037 lt!1657038)))

(assert (=> b!4467824 (= lt!1657040 (lemmaInListThenGetKeysListContains!367 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(assert (=> b!4467824 call!311078))

(declare-fun b!4467825 () Bool)

(declare-fun e!2782128 () Bool)

(assert (=> b!4467825 (= e!2782128 (not (contains!12819 (keys!17354 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287)))))

(declare-fun b!4467826 () Bool)

(assert (=> b!4467826 (= e!2782130 (getKeysList!371 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304))))))))

(declare-fun bm!311073 () Bool)

(assert (=> bm!311073 (= call!311078 (contains!12819 e!2782130 key!3287))))

(declare-fun c!760550 () Bool)

(declare-fun c!760551 () Bool)

(assert (=> bm!311073 (= c!760550 c!760551)))

(declare-fun b!4467827 () Bool)

(declare-fun e!2782132 () Bool)

(assert (=> b!4467827 (= e!2782132 (contains!12819 (keys!17354 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(declare-fun d!1362812 () Bool)

(declare-fun e!2782133 () Bool)

(assert (=> d!1362812 e!2782133))

(declare-fun res!1853456 () Bool)

(assert (=> d!1362812 (=> res!1853456 e!2782133)))

(assert (=> d!1362812 (= res!1853456 e!2782128)))

(declare-fun res!1853458 () Bool)

(assert (=> d!1362812 (=> (not res!1853458) (not e!2782128))))

(declare-fun lt!1657036 () Bool)

(assert (=> d!1362812 (= res!1853458 (not lt!1657036))))

(declare-fun lt!1657035 () Bool)

(assert (=> d!1362812 (= lt!1657036 lt!1657035)))

(declare-fun lt!1657039 () Unit!87415)

(assert (=> d!1362812 (= lt!1657039 e!2782129)))

(assert (=> d!1362812 (= c!760551 lt!1657035)))

(assert (=> d!1362812 (= lt!1657035 (containsKey!1459 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287))))

(assert (=> d!1362812 (= (contains!12815 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304))) key!3287) lt!1657036)))

(declare-fun b!4467828 () Bool)

(declare-fun Unit!87554 () Unit!87415)

(assert (=> b!4467828 (= e!2782131 Unit!87554)))

(declare-fun b!4467829 () Bool)

(assert (=> b!4467829 (= e!2782133 e!2782132)))

(declare-fun res!1853457 () Bool)

(assert (=> b!4467829 (=> (not res!1853457) (not e!2782132))))

(assert (=> b!4467829 (= res!1853457 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304)))) key!3287)))))

(assert (= (and d!1362812 c!760551) b!4467824))

(assert (= (and d!1362812 (not c!760551)) b!4467821))

(assert (= (and b!4467821 c!760552) b!4467823))

(assert (= (and b!4467821 (not c!760552)) b!4467828))

(assert (= (or b!4467824 b!4467821) bm!311073))

(assert (= (and bm!311073 c!760550) b!4467826))

(assert (= (and bm!311073 (not c!760550)) b!4467822))

(assert (= (and d!1362812 res!1853458) b!4467825))

(assert (= (and d!1362812 (not res!1853456)) b!4467829))

(assert (= (and b!4467829 res!1853457) b!4467827))

(declare-fun m!5173641 () Bool)

(assert (=> b!4467829 m!5173641))

(assert (=> b!4467829 m!5173641))

(declare-fun m!5173643 () Bool)

(assert (=> b!4467829 m!5173643))

(assert (=> b!4467825 m!5172141))

(declare-fun m!5173645 () Bool)

(assert (=> b!4467825 m!5173645))

(assert (=> b!4467825 m!5173645))

(declare-fun m!5173647 () Bool)

(assert (=> b!4467825 m!5173647))

(assert (=> b!4467827 m!5172141))

(assert (=> b!4467827 m!5173645))

(assert (=> b!4467827 m!5173645))

(assert (=> b!4467827 m!5173647))

(declare-fun m!5173649 () Bool)

(assert (=> b!4467826 m!5173649))

(declare-fun m!5173651 () Bool)

(assert (=> bm!311073 m!5173651))

(assert (=> b!4467822 m!5172141))

(assert (=> b!4467822 m!5173645))

(declare-fun m!5173653 () Bool)

(assert (=> b!4467823 m!5173653))

(declare-fun m!5173655 () Bool)

(assert (=> b!4467823 m!5173655))

(declare-fun m!5173657 () Bool)

(assert (=> b!4467824 m!5173657))

(assert (=> b!4467824 m!5173641))

(assert (=> b!4467824 m!5173641))

(assert (=> b!4467824 m!5173643))

(declare-fun m!5173659 () Bool)

(assert (=> b!4467824 m!5173659))

(assert (=> d!1362812 m!5173653))

(assert (=> d!1362336 d!1362812))

(declare-fun bs!794072 () Bool)

(declare-fun d!1362814 () Bool)

(assert (= bs!794072 (and d!1362814 d!1362384)))

(declare-fun lambda!163007 () Int)

(assert (=> bs!794072 (= lambda!163007 lambda!162845)))

(declare-fun bs!794073 () Bool)

(assert (= bs!794073 (and d!1362814 d!1362792)))

(assert (=> bs!794073 (= lambda!163007 lambda!163002)))

(declare-fun bs!794074 () Bool)

(assert (= bs!794074 (and d!1362814 d!1362412)))

(assert (=> bs!794074 (not (= lambda!163007 lambda!162852))))

(declare-fun bs!794075 () Bool)

(assert (= bs!794075 (and d!1362814 d!1362362)))

(assert (=> bs!794075 (= lambda!163007 lambda!162840)))

(declare-fun bs!794076 () Bool)

(assert (= bs!794076 (and d!1362814 d!1362394)))

(assert (=> bs!794076 (= lambda!163007 lambda!162849)))

(declare-fun bs!794077 () Bool)

(assert (= bs!794077 (and d!1362814 d!1362392)))

(assert (=> bs!794077 (= lambda!163007 lambda!162846)))

(declare-fun bs!794078 () Bool)

(assert (= bs!794078 (and d!1362814 d!1362336)))

(assert (=> bs!794078 (= lambda!163007 lambda!162828)))

(declare-fun bs!794079 () Bool)

(assert (= bs!794079 (and d!1362814 d!1362784)))

(assert (=> bs!794079 (= lambda!163007 lambda!162997)))

(declare-fun bs!794080 () Bool)

(assert (= bs!794080 (and d!1362814 d!1362586)))

(assert (=> bs!794080 (= lambda!163007 lambda!162946)))

(declare-fun bs!794081 () Bool)

(assert (= bs!794081 (and d!1362814 start!438580)))

(assert (=> bs!794081 (= lambda!163007 lambda!162813)))

(declare-fun bs!794082 () Bool)

(assert (= bs!794082 (and d!1362814 d!1362754)))

(assert (=> bs!794082 (= lambda!163007 lambda!162991)))

(declare-fun bs!794083 () Bool)

(assert (= bs!794083 (and d!1362814 d!1362344)))

(assert (=> bs!794083 (= lambda!163007 lambda!162839)))

(declare-fun bs!794084 () Bool)

(assert (= bs!794084 (and d!1362814 d!1362414)))

(assert (=> bs!794084 (= lambda!163007 lambda!162855)))

(declare-fun bs!794085 () Bool)

(assert (= bs!794085 (and d!1362814 d!1362758)))

(assert (=> bs!794085 (= lambda!163007 lambda!162996)))

(declare-fun lt!1657043 () ListMap!3309)

(assert (=> d!1362814 (invariantList!923 (toList!4048 lt!1657043))))

(declare-fun e!2782134 () ListMap!3309)

(assert (=> d!1362814 (= lt!1657043 e!2782134)))

(declare-fun c!760553 () Bool)

(assert (=> d!1362814 (= c!760553 ((_ is Cons!50273) (toList!4047 (ListLongMap!2680 lt!1656304))))))

(assert (=> d!1362814 (forall!9978 (toList!4047 (ListLongMap!2680 lt!1656304)) lambda!163007)))

(assert (=> d!1362814 (= (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304))) lt!1657043)))

(declare-fun b!4467830 () Bool)

(assert (=> b!4467830 (= e!2782134 (addToMapMapFromBucket!585 (_2!28552 (h!56032 (toList!4047 (ListLongMap!2680 lt!1656304)))) (extractMap!1076 (t!357347 (toList!4047 (ListLongMap!2680 lt!1656304))))))))

(declare-fun b!4467831 () Bool)

(assert (=> b!4467831 (= e!2782134 (ListMap!3310 Nil!50272))))

(assert (= (and d!1362814 c!760553) b!4467830))

(assert (= (and d!1362814 (not c!760553)) b!4467831))

(declare-fun m!5173661 () Bool)

(assert (=> d!1362814 m!5173661))

(declare-fun m!5173663 () Bool)

(assert (=> d!1362814 m!5173663))

(declare-fun m!5173665 () Bool)

(assert (=> b!4467830 m!5173665))

(assert (=> b!4467830 m!5173665))

(declare-fun m!5173667 () Bool)

(assert (=> b!4467830 m!5173667))

(assert (=> d!1362336 d!1362814))

(declare-fun d!1362816 () Bool)

(assert (=> d!1362816 (contains!12815 (extractMap!1076 (toList!4047 (ListLongMap!2680 lt!1656304))) key!3287)))

(assert (=> d!1362816 true))

(declare-fun _$34!550 () Unit!87415)

(assert (=> d!1362816 (= (choose!28525 (ListLongMap!2680 lt!1656304) key!3287 hashF!1107) _$34!550)))

(declare-fun bs!794086 () Bool)

(assert (= bs!794086 d!1362816))

(assert (=> bs!794086 m!5172141))

(assert (=> bs!794086 m!5172141))

(assert (=> bs!794086 m!5172143))

(assert (=> d!1362336 d!1362816))

(declare-fun d!1362818 () Bool)

(declare-fun res!1853459 () Bool)

(declare-fun e!2782135 () Bool)

(assert (=> d!1362818 (=> res!1853459 e!2782135)))

(assert (=> d!1362818 (= res!1853459 ((_ is Nil!50273) (toList!4047 (ListLongMap!2680 lt!1656304))))))

(assert (=> d!1362818 (= (forall!9978 (toList!4047 (ListLongMap!2680 lt!1656304)) lambda!162828) e!2782135)))

(declare-fun b!4467832 () Bool)

(declare-fun e!2782136 () Bool)

(assert (=> b!4467832 (= e!2782135 e!2782136)))

(declare-fun res!1853460 () Bool)

(assert (=> b!4467832 (=> (not res!1853460) (not e!2782136))))

(assert (=> b!4467832 (= res!1853460 (dynLambda!21006 lambda!162828 (h!56032 (toList!4047 (ListLongMap!2680 lt!1656304)))))))

(declare-fun b!4467833 () Bool)

(assert (=> b!4467833 (= e!2782136 (forall!9978 (t!357347 (toList!4047 (ListLongMap!2680 lt!1656304))) lambda!162828))))

(assert (= (and d!1362818 (not res!1853459)) b!4467832))

(assert (= (and b!4467832 res!1853460) b!4467833))

(declare-fun b_lambda!148251 () Bool)

(assert (=> (not b_lambda!148251) (not b!4467832)))

(declare-fun m!5173669 () Bool)

(assert (=> b!4467832 m!5173669))

(declare-fun m!5173671 () Bool)

(assert (=> b!4467833 m!5173671))

(assert (=> d!1362336 d!1362818))

(declare-fun d!1362820 () Bool)

(assert (=> d!1362820 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(declare-fun lt!1657046 () Unit!87415)

(declare-fun choose!28542 (List!50396 K!11690) Unit!87415)

(assert (=> d!1362820 (= lt!1657046 (choose!28542 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> d!1362820 (invariantList!923 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))

(assert (=> d!1362820 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287) lt!1657046)))

(declare-fun bs!794087 () Bool)

(assert (= bs!794087 d!1362820))

(assert (=> bs!794087 m!5172317))

(assert (=> bs!794087 m!5172317))

(assert (=> bs!794087 m!5172319))

(declare-fun m!5173673 () Bool)

(assert (=> bs!794087 m!5173673))

(assert (=> bs!794087 m!5172907))

(assert (=> b!4466978 d!1362820))

(declare-fun d!1362822 () Bool)

(assert (=> d!1362822 (= (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287)) (not (isEmpty!28480 (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))))

(declare-fun bs!794088 () Bool)

(assert (= bs!794088 d!1362822))

(assert (=> bs!794088 m!5172317))

(declare-fun m!5173675 () Bool)

(assert (=> bs!794088 m!5173675))

(assert (=> b!4466978 d!1362822))

(declare-fun b!4467836 () Bool)

(declare-fun e!2782138 () Option!10919)

(assert (=> b!4467836 (= e!2782138 (getValueByKey!905 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) key!3287))))

(declare-fun d!1362824 () Bool)

(declare-fun c!760554 () Bool)

(assert (=> d!1362824 (= c!760554 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) key!3287)))))

(declare-fun e!2782137 () Option!10919)

(assert (=> d!1362824 (= (getValueByKey!905 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287) e!2782137)))

(declare-fun b!4467835 () Bool)

(assert (=> b!4467835 (= e!2782137 e!2782138)))

(declare-fun c!760555 () Bool)

(assert (=> b!4467835 (= c!760555 (and ((_ is Cons!50272) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (not (= (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) key!3287))))))

(declare-fun b!4467834 () Bool)

(assert (=> b!4467834 (= e!2782137 (Some!10918 (_2!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))))

(declare-fun b!4467837 () Bool)

(assert (=> b!4467837 (= e!2782138 None!10918)))

(assert (= (and d!1362824 c!760554) b!4467834))

(assert (= (and d!1362824 (not c!760554)) b!4467835))

(assert (= (and b!4467835 c!760555) b!4467836))

(assert (= (and b!4467835 (not c!760555)) b!4467837))

(declare-fun m!5173677 () Bool)

(assert (=> b!4467836 m!5173677))

(assert (=> b!4466978 d!1362824))

(declare-fun d!1362826 () Bool)

(assert (=> d!1362826 (contains!12819 (getKeysList!371 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) key!3287)))

(declare-fun lt!1657049 () Unit!87415)

(declare-fun choose!28543 (List!50396 K!11690) Unit!87415)

(assert (=> d!1362826 (= lt!1657049 (choose!28543 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287))))

(assert (=> d!1362826 (invariantList!923 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))

(assert (=> d!1362826 (= (lemmaInListThenGetKeysListContains!367 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) key!3287) lt!1657049)))

(declare-fun bs!794089 () Bool)

(assert (= bs!794089 d!1362826))

(assert (=> bs!794089 m!5172325))

(assert (=> bs!794089 m!5172325))

(declare-fun m!5173679 () Bool)

(assert (=> bs!794089 m!5173679))

(declare-fun m!5173681 () Bool)

(assert (=> bs!794089 m!5173681))

(assert (=> bs!794089 m!5172907))

(assert (=> b!4466978 d!1362826))

(assert (=> b!4466959 d!1362448))

(assert (=> b!4466981 d!1362610))

(assert (=> b!4466981 d!1362612))

(assert (=> b!4467012 d!1362604))

(declare-fun bs!794090 () Bool)

(declare-fun b!4467840 () Bool)

(assert (= bs!794090 (and b!4467840 b!4467387)))

(declare-fun lambda!163008 () Int)

(assert (=> bs!794090 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!163008 lambda!162947))))

(declare-fun bs!794091 () Bool)

(assert (= bs!794091 (and b!4467840 b!4467665)))

(assert (=> bs!794091 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163008 lambda!162984))))

(declare-fun bs!794092 () Bool)

(assert (= bs!794092 (and b!4467840 b!4467811)))

(assert (=> bs!794092 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163008 lambda!163003))))

(declare-fun bs!794093 () Bool)

(assert (= bs!794093 (and b!4467840 b!4467667)))

(assert (=> bs!794093 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!163008 lambda!162982))))

(declare-fun bs!794094 () Bool)

(assert (= bs!794094 (and b!4467840 b!4467666)))

(assert (=> bs!794094 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!163008 lambda!162981))))

(declare-fun bs!794095 () Bool)

(assert (= bs!794095 (and b!4467840 b!4467816)))

(assert (=> bs!794095 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (toList!4048 lt!1656354)) (= lambda!163008 lambda!163005))))

(declare-fun bs!794096 () Bool)

(assert (= bs!794096 (and b!4467840 b!4467127)))

(assert (=> bs!794096 (= (= (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163008 lambda!162893))))

(assert (=> b!4467840 true))

(declare-fun bs!794097 () Bool)

(declare-fun b!4467841 () Bool)

(assert (= bs!794097 (and b!4467841 b!4467387)))

(declare-fun lambda!163009 () Int)

(assert (=> bs!794097 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (= lambda!163009 lambda!162947))))

(declare-fun bs!794098 () Bool)

(assert (= bs!794098 (and b!4467841 b!4467665)))

(assert (=> bs!794098 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163009 lambda!162984))))

(declare-fun bs!794099 () Bool)

(assert (= bs!794099 (and b!4467841 b!4467811)))

(assert (=> bs!794099 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163009 lambda!163003))))

(declare-fun bs!794100 () Bool)

(assert (= bs!794100 (and b!4467841 b!4467667)))

(assert (=> bs!794100 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!163009 lambda!162982))))

(declare-fun bs!794101 () Bool)

(assert (= bs!794101 (and b!4467841 b!4467840)))

(assert (=> bs!794101 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (= lambda!163009 lambda!163008))))

(declare-fun bs!794102 () Bool)

(assert (= bs!794102 (and b!4467841 b!4467666)))

(assert (=> bs!794102 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!163009 lambda!162981))))

(declare-fun bs!794103 () Bool)

(assert (= bs!794103 (and b!4467841 b!4467816)))

(assert (=> bs!794103 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (toList!4048 lt!1656354)) (= lambda!163009 lambda!163005))))

(declare-fun bs!794104 () Bool)

(assert (= bs!794104 (and b!4467841 b!4467127)))

(assert (=> bs!794104 (= (= (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163009 lambda!162893))))

(assert (=> b!4467841 true))

(declare-fun bs!794105 () Bool)

(declare-fun b!4467839 () Bool)

(assert (= bs!794105 (and b!4467839 b!4467387)))

(declare-fun lambda!163010 () Int)

(assert (=> bs!794105 (= lambda!163010 lambda!162947)))

(declare-fun bs!794106 () Bool)

(assert (= bs!794106 (and b!4467839 b!4467665)))

(assert (=> bs!794106 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163010 lambda!162984))))

(declare-fun bs!794107 () Bool)

(assert (= bs!794107 (and b!4467839 b!4467811)))

(assert (=> bs!794107 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (toList!4048 (extractMap!1076 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))) (= lambda!163010 lambda!163003))))

(declare-fun bs!794108 () Bool)

(assert (= bs!794108 (and b!4467839 b!4467667)))

(assert (=> bs!794108 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 lt!1656304))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304))))) (= lambda!163010 lambda!162982))))

(declare-fun bs!794109 () Bool)

(assert (= bs!794109 (and b!4467839 b!4467841)))

(assert (=> bs!794109 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (Cons!50272 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))) (= lambda!163010 lambda!163009))))

(declare-fun bs!794110 () Bool)

(assert (= bs!794110 (and b!4467839 b!4467840)))

(assert (=> bs!794110 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (= lambda!163010 lambda!163008))))

(declare-fun bs!794111 () Bool)

(assert (= bs!794111 (and b!4467839 b!4467666)))

(assert (=> bs!794111 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (t!357346 (toList!4048 (extractMap!1076 lt!1656304)))) (= lambda!163010 lambda!162981))))

(declare-fun bs!794112 () Bool)

(assert (= bs!794112 (and b!4467839 b!4467816)))

(assert (=> bs!794112 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (toList!4048 lt!1656354)) (= lambda!163010 lambda!163005))))

(declare-fun bs!794113 () Bool)

(assert (= bs!794113 (and b!4467839 b!4467127)))

(assert (=> bs!794113 (= (= (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) (toList!4048 (extractMap!1076 lt!1656304))) (= lambda!163010 lambda!162893))))

(assert (=> b!4467839 true))

(declare-fun bs!794114 () Bool)

(declare-fun b!4467842 () Bool)

(assert (= bs!794114 (and b!4467842 b!4467388)))

(declare-fun lambda!163011 () Int)

(assert (=> bs!794114 (= lambda!163011 lambda!162948)))

(declare-fun bs!794115 () Bool)

(assert (= bs!794115 (and b!4467842 b!4467668)))

(assert (=> bs!794115 (= lambda!163011 lambda!162986)))

(declare-fun bs!794116 () Bool)

(assert (= bs!794116 (and b!4467842 b!4467812)))

(assert (=> bs!794116 (= lambda!163011 lambda!163004)))

(declare-fun bs!794117 () Bool)

(assert (= bs!794117 (and b!4467842 b!4467817)))

(assert (=> bs!794117 (= lambda!163011 lambda!163006)))

(declare-fun bs!794118 () Bool)

(assert (= bs!794118 (and b!4467842 b!4467128)))

(assert (=> bs!794118 (= lambda!163011 lambda!162894)))

(declare-fun b!4467838 () Bool)

(declare-fun res!1853463 () Bool)

(declare-fun e!2782140 () Bool)

(assert (=> b!4467838 (=> (not res!1853463) (not e!2782140))))

(declare-fun lt!1657055 () List!50399)

(assert (=> b!4467838 (= res!1853463 (= (length!246 lt!1657055) (length!247 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))))

(declare-fun res!1853461 () Bool)

(assert (=> b!4467839 (=> (not res!1853461) (not e!2782140))))

(assert (=> b!4467839 (= res!1853461 (forall!9981 lt!1657055 lambda!163010))))

(assert (=> b!4467840 false))

(declare-fun lt!1657056 () Unit!87415)

(assert (=> b!4467840 (= lt!1657056 (forallContained!2252 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) lambda!163008 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))))

(declare-fun e!2782142 () Unit!87415)

(declare-fun Unit!87559 () Unit!87415)

(assert (=> b!4467840 (= e!2782142 Unit!87559)))

(declare-fun e!2782141 () List!50399)

(assert (=> b!4467841 (= e!2782141 (Cons!50275 (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))))

(declare-fun c!760556 () Bool)

(assert (=> b!4467841 (= c!760556 (containsKey!1459 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))))

(declare-fun lt!1657052 () Unit!87415)

(declare-fun e!2782139 () Unit!87415)

(assert (=> b!4467841 (= lt!1657052 e!2782139)))

(declare-fun c!760558 () Bool)

(assert (=> b!4467841 (= c!760558 (contains!12819 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))) (_1!28551 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))))

(declare-fun lt!1657054 () Unit!87415)

(assert (=> b!4467841 (= lt!1657054 e!2782142)))

(declare-fun lt!1657053 () List!50399)

(assert (=> b!4467841 (= lt!1657053 (getKeysList!371 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))))

(declare-fun lt!1657050 () Unit!87415)

(assert (=> b!4467841 (= lt!1657050 (lemmaForallContainsAddHeadPreserves!117 (t!357346 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) lt!1657053 (h!56031 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))))

(assert (=> b!4467841 (forall!9981 lt!1657053 lambda!163009)))

(declare-fun lt!1657051 () Unit!87415)

(assert (=> b!4467841 (= lt!1657051 lt!1657050)))

(assert (=> b!4467842 (= e!2782140 (= (content!8089 lt!1657055) (content!8089 (map!11016 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))) lambda!163011))))))

(declare-fun d!1362828 () Bool)

(assert (=> d!1362828 e!2782140))

(declare-fun res!1853462 () Bool)

(assert (=> d!1362828 (=> (not res!1853462) (not e!2782140))))

(assert (=> d!1362828 (= res!1853462 (noDuplicate!695 lt!1657055))))

(assert (=> d!1362828 (= lt!1657055 e!2782141)))

(declare-fun c!760557 () Bool)

(assert (=> d!1362828 (= c!760557 ((_ is Cons!50272) (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))))))

(assert (=> d!1362828 (invariantList!923 (toList!4048 (extractMap!1076 (toList!4047 lm!1477))))))

(assert (=> d!1362828 (= (getKeysList!371 (toList!4048 (extractMap!1076 (toList!4047 lm!1477)))) lt!1657055)))

(declare-fun b!4467843 () Bool)

(assert (=> b!4467843 (= e!2782141 Nil!50275)))

(declare-fun b!4467844 () Bool)

(declare-fun Unit!87560 () Unit!87415)

(assert (=> b!4467844 (= e!2782139 Unit!87560)))

(declare-fun b!4467845 () Bool)

(assert (=> b!4467845 false))

(declare-fun Unit!87561 () Unit!87415)

(assert (=> b!4467845 (= e!2782139 Unit!87561)))

(declare-fun b!4467846 () Bool)

(declare-fun Unit!87562 () Unit!87415)

(assert (=> b!4467846 (= e!2782142 Unit!87562)))

(assert (= (and d!1362828 c!760557) b!4467841))

(assert (= (and d!1362828 (not c!760557)) b!4467843))

(assert (= (and b!4467841 c!760556) b!4467845))

(assert (= (and b!4467841 (not c!760556)) b!4467844))

(assert (= (and b!4467841 c!760558) b!4467840))

(assert (= (and b!4467841 (not c!760558)) b!4467846))

(assert (= (and d!1362828 res!1853462) b!4467838))

(assert (= (and b!4467838 res!1853463) b!4467839))

(assert (= (and b!4467839 res!1853461) b!4467842))

(declare-fun m!5173683 () Bool)

(assert (=> b!4467842 m!5173683))

(declare-fun m!5173685 () Bool)

(assert (=> b!4467842 m!5173685))

(assert (=> b!4467842 m!5173685))

(declare-fun m!5173687 () Bool)

(assert (=> b!4467842 m!5173687))

(declare-fun m!5173689 () Bool)

(assert (=> b!4467838 m!5173689))

(assert (=> b!4467838 m!5172921))

(declare-fun m!5173691 () Bool)

(assert (=> d!1362828 m!5173691))

(assert (=> d!1362828 m!5172907))

(declare-fun m!5173693 () Bool)

(assert (=> b!4467839 m!5173693))

(declare-fun m!5173695 () Bool)

(assert (=> b!4467841 m!5173695))

(declare-fun m!5173697 () Bool)

(assert (=> b!4467841 m!5173697))

(declare-fun m!5173699 () Bool)

(assert (=> b!4467841 m!5173699))

(assert (=> b!4467841 m!5173697))

(declare-fun m!5173701 () Bool)

(assert (=> b!4467841 m!5173701))

(declare-fun m!5173703 () Bool)

(assert (=> b!4467841 m!5173703))

(assert (=> b!4467840 m!5173697))

(assert (=> b!4467840 m!5173697))

(declare-fun m!5173705 () Bool)

(assert (=> b!4467840 m!5173705))

(assert (=> b!4466980 d!1362828))

(declare-fun d!1362830 () Bool)

(assert (=> d!1362830 (isDefined!8205 (getValueByKey!905 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(declare-fun lt!1657057 () Unit!87415)

(assert (=> d!1362830 (= lt!1657057 (choose!28542 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(assert (=> d!1362830 (invariantList!923 (toList!4048 (extractMap!1076 lt!1656304)))))

(assert (=> d!1362830 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!808 (toList!4048 (extractMap!1076 lt!1656304)) key!3287) lt!1657057)))

(declare-fun bs!794119 () Bool)

(assert (= bs!794119 d!1362830))

(assert (=> bs!794119 m!5172277))

(assert (=> bs!794119 m!5172277))

(assert (=> bs!794119 m!5172279))

(declare-fun m!5173707 () Bool)

(assert (=> bs!794119 m!5173707))

(assert (=> bs!794119 m!5172951))

(assert (=> b!4466961 d!1362830))

(assert (=> b!4466961 d!1362762))

(assert (=> b!4466961 d!1362764))

(declare-fun d!1362832 () Bool)

(assert (=> d!1362832 (contains!12819 (getKeysList!371 (toList!4048 (extractMap!1076 lt!1656304))) key!3287)))

(declare-fun lt!1657058 () Unit!87415)

(assert (=> d!1362832 (= lt!1657058 (choose!28543 (toList!4048 (extractMap!1076 lt!1656304)) key!3287))))

(assert (=> d!1362832 (invariantList!923 (toList!4048 (extractMap!1076 lt!1656304)))))

(assert (=> d!1362832 (= (lemmaInListThenGetKeysListContains!367 (toList!4048 (extractMap!1076 lt!1656304)) key!3287) lt!1657058)))

(declare-fun bs!794120 () Bool)

(assert (= bs!794120 d!1362832))

(assert (=> bs!794120 m!5172285))

(assert (=> bs!794120 m!5172285))

(declare-fun m!5173709 () Bool)

(assert (=> bs!794120 m!5173709))

(declare-fun m!5173711 () Bool)

(assert (=> bs!794120 m!5173711))

(assert (=> bs!794120 m!5172951))

(assert (=> b!4466961 d!1362832))

(assert (=> b!4466983 d!1362822))

(assert (=> b!4466983 d!1362824))

(assert (=> b!4466988 d!1362406))

(assert (=> d!1362364 d!1362622))

(declare-fun b!4467847 () Bool)

(declare-fun tp!1336180 () Bool)

(declare-fun e!2782143 () Bool)

(assert (=> b!4467847 (= e!2782143 (and tp_is_empty!27357 tp_is_empty!27359 tp!1336180))))

(assert (=> b!4467047 (= tp!1336174 e!2782143)))

(assert (= (and b!4467047 ((_ is Cons!50272) (_2!28552 (h!56032 (toList!4047 lm!1477))))) b!4467847))

(declare-fun b!4467848 () Bool)

(declare-fun e!2782144 () Bool)

(declare-fun tp!1336181 () Bool)

(declare-fun tp!1336182 () Bool)

(assert (=> b!4467848 (= e!2782144 (and tp!1336181 tp!1336182))))

(assert (=> b!4467047 (= tp!1336175 e!2782144)))

(assert (= (and b!4467047 ((_ is Cons!50273) (t!357347 (toList!4047 lm!1477)))) b!4467848))

(declare-fun b!4467849 () Bool)

(declare-fun tp!1336183 () Bool)

(declare-fun e!2782145 () Bool)

(assert (=> b!4467849 (= e!2782145 (and tp_is_empty!27357 tp_is_empty!27359 tp!1336183))))

(assert (=> b!4467042 (= tp!1336169 e!2782145)))

(assert (= (and b!4467042 ((_ is Cons!50272) (t!357346 (t!357346 newBucket!178)))) b!4467849))

(declare-fun b_lambda!148253 () Bool)

(assert (= b_lambda!148191 (or d!1362394 b_lambda!148253)))

(declare-fun bs!794121 () Bool)

(declare-fun d!1362834 () Bool)

(assert (= bs!794121 (and d!1362834 d!1362394)))

(assert (=> bs!794121 (= (dynLambda!21006 lambda!162849 (h!56032 (toList!4047 lm!1477))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(assert (=> bs!794121 m!5172299))

(assert (=> b!4467150 d!1362834))

(declare-fun b_lambda!148255 () Bool)

(assert (= b_lambda!148195 (or d!1362312 b_lambda!148255)))

(declare-fun bs!794122 () Bool)

(declare-fun d!1362836 () Bool)

(assert (= bs!794122 (and d!1362836 d!1362312)))

(assert (=> bs!794122 (= (dynLambda!21007 lambda!162822 (h!56031 newBucket!178)) (= (hash!2431 hashF!1107 (_1!28551 (h!56031 newBucket!178))) hash!344))))

(declare-fun m!5173713 () Bool)

(assert (=> bs!794122 m!5173713))

(assert (=> b!4467162 d!1362836))

(declare-fun b_lambda!148257 () Bool)

(assert (= b_lambda!148215 (or d!1362362 b_lambda!148257)))

(declare-fun bs!794123 () Bool)

(declare-fun d!1362838 () Bool)

(assert (= bs!794123 (and d!1362838 d!1362362)))

(assert (=> bs!794123 (= (dynLambda!21006 lambda!162840 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (Cons!50273 (tuple2!50517 hash!344 (_2!28552 (h!56032 (toList!4047 lm!1477)))) Nil!50273)))))))

(assert (=> bs!794123 m!5173559))

(assert (=> b!4467606 d!1362838))

(declare-fun b_lambda!148259 () Bool)

(assert (= b_lambda!148251 (or d!1362336 b_lambda!148259)))

(declare-fun bs!794124 () Bool)

(declare-fun d!1362840 () Bool)

(assert (= bs!794124 (and d!1362840 d!1362336)))

(assert (=> bs!794124 (= (dynLambda!21006 lambda!162828 (h!56032 (toList!4047 (ListLongMap!2680 lt!1656304)))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 (ListLongMap!2680 lt!1656304))))))))

(declare-fun m!5173715 () Bool)

(assert (=> bs!794124 m!5173715))

(assert (=> b!4467832 d!1362840))

(declare-fun b_lambda!148261 () Bool)

(assert (= b_lambda!148203 (or start!438580 b_lambda!148261)))

(declare-fun bs!794125 () Bool)

(declare-fun d!1362842 () Bool)

(assert (= bs!794125 (and d!1362842 start!438580)))

(assert (=> bs!794125 (= (dynLambda!21006 lambda!162813 (h!56032 (t!357347 (toList!4047 lt!1656294)))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (t!357347 (toList!4047 lt!1656294))))))))

(declare-fun m!5173717 () Bool)

(assert (=> bs!794125 m!5173717))

(assert (=> b!4467423 d!1362842))

(declare-fun b_lambda!148263 () Bool)

(assert (= b_lambda!148217 (or d!1362384 b_lambda!148263)))

(declare-fun bs!794126 () Bool)

(declare-fun d!1362844 () Bool)

(assert (= bs!794126 (and d!1362844 d!1362384)))

(assert (=> bs!794126 (= (dynLambda!21006 lambda!162845 (h!56032 lt!1656304)) (noDuplicateKeys!1020 (_2!28552 (h!56032 lt!1656304))))))

(assert (=> bs!794126 m!5173411))

(assert (=> b!4467608 d!1362844))

(declare-fun b_lambda!148265 () Bool)

(assert (= b_lambda!148193 (or start!438580 b_lambda!148265)))

(declare-fun bs!794127 () Bool)

(declare-fun d!1362846 () Bool)

(assert (= bs!794127 (and d!1362846 start!438580)))

(assert (=> bs!794127 (= (dynLambda!21006 lambda!162813 (h!56032 (t!357347 (toList!4047 lm!1477)))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (t!357347 (toList!4047 lm!1477))))))))

(declare-fun m!5173719 () Bool)

(assert (=> bs!794127 m!5173719))

(assert (=> b!4467156 d!1362846))

(declare-fun b_lambda!148267 () Bool)

(assert (= b_lambda!148205 (or start!438580 b_lambda!148267)))

(assert (=> d!1362626 d!1362420))

(declare-fun b_lambda!148269 () Bool)

(assert (= b_lambda!148249 (or d!1362414 b_lambda!148269)))

(declare-fun bs!794128 () Bool)

(declare-fun d!1362848 () Bool)

(assert (= bs!794128 (and d!1362848 d!1362414)))

(assert (=> bs!794128 (= (dynLambda!21006 lambda!162855 (h!56032 (toList!4047 lm!1477))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(assert (=> bs!794128 m!5172299))

(assert (=> b!4467721 d!1362848))

(declare-fun b_lambda!148271 () Bool)

(assert (= b_lambda!148189 (or d!1362344 b_lambda!148271)))

(declare-fun bs!794129 () Bool)

(declare-fun d!1362850 () Bool)

(assert (= bs!794129 (and d!1362850 d!1362344)))

(assert (=> bs!794129 (= (dynLambda!21006 lambda!162839 (h!56032 (Cons!50273 lt!1656299 Nil!50273))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (Cons!50273 lt!1656299 Nil!50273)))))))

(assert (=> bs!794129 m!5172839))

(assert (=> b!4467137 d!1362850))

(declare-fun b_lambda!148273 () Bool)

(assert (= b_lambda!148219 (or d!1362392 b_lambda!148273)))

(declare-fun bs!794130 () Bool)

(declare-fun d!1362852 () Bool)

(assert (= bs!794130 (and d!1362852 d!1362392)))

(assert (=> bs!794130 (= (dynLambda!21006 lambda!162846 (h!56032 (toList!4047 lm!1477))) (noDuplicateKeys!1020 (_2!28552 (h!56032 (toList!4047 lm!1477)))))))

(assert (=> bs!794130 m!5172299))

(assert (=> b!4467610 d!1362852))

(declare-fun b_lambda!148275 () Bool)

(assert (= b_lambda!148201 (or d!1362412 b_lambda!148275)))

(declare-fun bs!794131 () Bool)

(declare-fun d!1362854 () Bool)

(assert (= bs!794131 (and d!1362854 d!1362412)))

(assert (=> bs!794131 (= (dynLambda!21006 lambda!162852 (h!56032 (toList!4047 lm!1477))) (allKeysSameHash!874 (_2!28552 (h!56032 (toList!4047 lm!1477))) (_1!28552 (h!56032 (toList!4047 lm!1477))) hashF!1107))))

(declare-fun m!5173721 () Bool)

(assert (=> bs!794131 m!5173721))

(assert (=> b!4467401 d!1362854))

(check-sat (not b!4467782) (not b!4467847) (not b!4467155) (not b!4467141) (not b!4467730) (not b!4467716) (not b!4467770) (not bm!311070) (not bm!311061) (not bs!794127) (not b!4467345) (not b!4467787) (not b!4467811) (not b!4467824) (not b!4467827) (not b!4467432) (not d!1362788) (not bm!311072) (not b_lambda!148255) (not d!1362496) (not b!4467435) (not bm!311018) (not b_lambda!148177) (not bs!794121) (not b_lambda!148267) (not b!4467609) (not b!4467157) (not b!4467715) (not b!4467343) (not b!4467085) (not b!4467802) (not bs!794128) (not b!4467151) (not b!4467153) (not b!4467126) (not b!4467426) (not d!1362610) (not bm!311063) (not d!1362804) (not d!1362754) (not d!1362760) (not b!4467383) (not d!1362814) (not b!4467337) (not d!1362766) (not b!4467836) (not b!4467822) (not b!4467568) (not b!4467580) (not b!4467723) (not b!4467711) (not b!4467816) (not d!1362504) (not bm!311066) (not d!1362488) (not b!4467842) (not d!1362798) (not d!1362822) (not d!1362780) (not d!1362606) (not b!4467152) (not b!4467563) (not d!1362432) (not bm!311043) (not b!4467769) (not b!4467131) (not bm!311047) (not bs!794123) (not b!4467355) (not b!4467611) (not d!1362756) (not b!4467665) (not b!4467163) (not b!4467838) (not bm!311046) (not bs!794124) (not b!4467388) (not bs!794130) (not b!4467848) (not d!1362782) (not b!4467791) (not b!4467689) (not b!4467825) (not b_lambda!148275) (not b!4467430) (not b_lambda!148257) (not b_lambda!148273) (not b!4467566) (not b!4467139) (not d!1362830) (not b!4467387) (not b!4467431) (not b!4467347) (not b!4467809) (not b!4467754) (not d!1362784) (not bs!794129) (not d!1362770) (not d!1362792) (not b!4467569) (not d!1362790) (not d!1362620) (not b!4467138) (not b_lambda!148175) (not d!1362786) (not b!4467668) (not b!4467083) (not b!4467780) (not d!1362808) (not b!4467346) (not b!4467667) (not b!4467402) (not bs!794131) (not b!4467829) (not b!4467605) (not b!4467742) (not b!4467690) (not b_lambda!148179) (not d!1362832) (not d!1362690) (not b!4467764) (not d!1362480) (not b!4467725) (not b!4467328) (not b!4467437) (not d!1362624) (not b!4467385) (not b!4467664) (not b!4467763) (not d!1362686) (not b!4467765) (not b!4467738) (not b!4467334) (not b!4467735) (not b!4467784) (not bm!311068) (not b!4467839) (not b!4467815) (not b!4467357) (not b!4467599) (not b!4467683) (not bm!311004) (not b!4467727) (not b!4467798) (not b!4467579) (not b!4467607) (not bs!794122) (not b!4467368) (not b!4467761) (not b_lambda!148263) (not bm!311059) (not b!4467593) (not b!4467793) (not b!4467826) (not b!4467677) (not b!4467736) (not d!1362752) (not b!4467577) (not b!4467565) (not d!1362820) (not b!4467572) (not d!1362586) (not d!1362828) (not b!4467792) (not d!1362630) (not b!4467737) (not b!4467356) (not b!4467434) (not b_lambda!148265) (not b!4467817) (not d!1362682) (not d!1362812) (not b!4467790) (not b!4467841) (not b!4467849) (not d!1362720) (not d!1362746) (not b!4467728) (not bm!311073) (not bs!794125) (not d!1362484) (not b!4467783) (not b!4467128) (not b!4467756) (not d!1362716) (not b!4467830) (not b!4467820) (not b!4467810) (not b!4467722) (not bs!794126) (not d!1362672) (not bm!311048) (not b!4467420) (not d!1362762) (not d!1362612) (not d!1362826) (not b_lambda!148271) (not b!4467823) (not bm!311071) (not b!4467731) (not b!4467729) (not d!1362758) (not b_lambda!148269) (not b!4467666) (not bm!311005) (not b!4467331) (not b!4467734) (not bm!311003) (not b!4467602) (not d!1362444) (not b_lambda!148261) (not b!4467428) (not b!4467675) (not d!1362810) (not b!4467786) (not b!4467424) (not bm!311044) (not d!1362670) (not b!4467758) (not d!1362628) (not bm!311065) (not b!4467386) (not b!4467132) (not d!1362694) (not b_lambda!148259) (not b!4467794) (not d!1362588) (not d!1362448) tp_is_empty!27357 tp_is_empty!27359 (not b!4467812) (not bm!311045) (not bm!311064) (not b!4467814) (not d!1362744) (not b!4467833) (not b!4467353) (not d!1362816) (not b!4467840) (not b!4467330) (not bm!311062) (not b!4467329) (not d!1362772) (not b_lambda!148253) (not b!4467575) (not b!4467127) (not b!4467433))
(check-sat)
