; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!438010 () Bool)

(assert start!438010)

(declare-fun b!4464088 () Bool)

(declare-fun e!2779748 () Bool)

(declare-fun e!2779753 () Bool)

(assert (=> b!4464088 (= e!2779748 (not e!2779753))))

(declare-fun res!1851692 () Bool)

(assert (=> b!4464088 (=> res!1851692 e!2779753)))

(declare-datatypes ((K!11673 0))(
  ( (K!11674 (val!17609 Int)) )
))
(declare-datatypes ((V!11919 0))(
  ( (V!11920 (val!17610 Int)) )
))
(declare-datatypes ((tuple2!50486 0))(
  ( (tuple2!50487 (_1!28537 K!11673) (_2!28537 V!11919)) )
))
(declare-datatypes ((List!50376 0))(
  ( (Nil!50252) (Cons!50252 (h!56005 tuple2!50486) (t!357326 List!50376)) )
))
(declare-fun lt!1654349 () List!50376)

(declare-fun key!3287 () K!11673)

(declare-fun newBucket!178 () List!50376)

(declare-fun removePairForKey!640 (List!50376 K!11673) List!50376)

(assert (=> b!4464088 (= res!1851692 (not (= newBucket!178 (removePairForKey!640 lt!1654349 key!3287))))))

(declare-datatypes ((Unit!87091 0))(
  ( (Unit!87092) )
))
(declare-fun lt!1654346 () Unit!87091)

(declare-fun lambda!162334 () Int)

(declare-datatypes ((tuple2!50488 0))(
  ( (tuple2!50489 (_1!28538 (_ BitVec 64)) (_2!28538 List!50376)) )
))
(declare-datatypes ((List!50377 0))(
  ( (Nil!50253) (Cons!50253 (h!56006 tuple2!50488) (t!357327 List!50377)) )
))
(declare-datatypes ((ListLongMap!2665 0))(
  ( (ListLongMap!2666 (toList!4033 List!50377)) )
))
(declare-fun lm!1477 () ListLongMap!2665)

(declare-fun lt!1654355 () tuple2!50488)

(declare-fun forallContained!2234 (List!50377 Int tuple2!50488) Unit!87091)

(assert (=> b!4464088 (= lt!1654346 (forallContained!2234 (toList!4033 lm!1477) lambda!162334 lt!1654355))))

(declare-fun contains!12784 (List!50377 tuple2!50488) Bool)

(assert (=> b!4464088 (contains!12784 (toList!4033 lm!1477) lt!1654355)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4464088 (= lt!1654355 (tuple2!50489 hash!344 lt!1654349))))

(declare-fun lt!1654354 () Unit!87091)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!525 (List!50377 (_ BitVec 64) List!50376) Unit!87091)

(assert (=> b!4464088 (= lt!1654354 (lemmaGetValueByKeyImpliesContainsTuple!525 (toList!4033 lm!1477) hash!344 lt!1654349))))

(declare-fun apply!11750 (ListLongMap!2665 (_ BitVec 64)) List!50376)

(assert (=> b!4464088 (= lt!1654349 (apply!11750 lm!1477 hash!344))))

(declare-fun lt!1654353 () (_ BitVec 64))

(declare-fun contains!12785 (ListLongMap!2665 (_ BitVec 64)) Bool)

(assert (=> b!4464088 (contains!12785 lm!1477 lt!1654353)))

(declare-datatypes ((Hashable!5408 0))(
  ( (HashableExt!5407 (__x!31111 Int)) )
))
(declare-fun hashF!1107 () Hashable!5408)

(declare-fun lt!1654358 () Unit!87091)

(declare-fun lemmaInGenMapThenLongMapContainsHash!87 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> b!4464088 (= lt!1654358 (lemmaInGenMapThenLongMapContainsHash!87 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4464089 () Bool)

(declare-fun res!1851690 () Bool)

(assert (=> b!4464089 (=> res!1851690 e!2779753)))

(declare-fun noDuplicateKeys!1013 (List!50376) Bool)

(assert (=> b!4464089 (= res!1851690 (not (noDuplicateKeys!1013 newBucket!178)))))

(declare-fun b!4464090 () Bool)

(declare-fun res!1851693 () Bool)

(declare-fun e!2779754 () Bool)

(assert (=> b!4464090 (=> (not res!1851693) (not e!2779754))))

(declare-fun allKeysSameHashInMap!1120 (ListLongMap!2665 Hashable!5408) Bool)

(assert (=> b!4464090 (= res!1851693 (allKeysSameHashInMap!1120 lm!1477 hashF!1107))))

(declare-fun b!4464091 () Bool)

(assert (=> b!4464091 (= e!2779754 e!2779748)))

(declare-fun res!1851688 () Bool)

(assert (=> b!4464091 (=> (not res!1851688) (not e!2779748))))

(assert (=> b!4464091 (= res!1851688 (= lt!1654353 hash!344))))

(declare-fun hash!2408 (Hashable!5408 K!11673) (_ BitVec 64))

(assert (=> b!4464091 (= lt!1654353 (hash!2408 hashF!1107 key!3287))))

(declare-fun b!4464092 () Bool)

(declare-fun e!2779755 () Bool)

(declare-fun e!2779756 () Bool)

(assert (=> b!4464092 (= e!2779755 e!2779756)))

(declare-fun res!1851696 () Bool)

(assert (=> b!4464092 (=> res!1851696 e!2779756)))

(declare-fun lt!1654350 () List!50377)

(declare-fun containsKeyBiggerList!13 (List!50377 K!11673) Bool)

(assert (=> b!4464092 (= res!1851696 (not (containsKeyBiggerList!13 lt!1654350 key!3287)))))

(assert (=> b!4464092 (= lt!1654350 (Cons!50253 (h!56006 (toList!4033 lm!1477)) Nil!50253))))

(declare-fun b!4464093 () Bool)

(declare-fun e!2779750 () Bool)

(declare-fun tp!1336045 () Bool)

(assert (=> b!4464093 (= e!2779750 tp!1336045)))

(declare-fun b!4464094 () Bool)

(declare-fun res!1851698 () Bool)

(assert (=> b!4464094 (=> (not res!1851698) (not e!2779748))))

(declare-fun allKeysSameHash!867 (List!50376 (_ BitVec 64) Hashable!5408) Bool)

(assert (=> b!4464094 (= res!1851698 (allKeysSameHash!867 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4464095 () Bool)

(declare-fun tp_is_empty!27331 () Bool)

(declare-fun e!2779751 () Bool)

(declare-fun tp_is_empty!27329 () Bool)

(declare-fun tp!1336044 () Bool)

(assert (=> b!4464095 (= e!2779751 (and tp_is_empty!27329 tp_is_empty!27331 tp!1336044))))

(declare-fun b!4464096 () Bool)

(declare-fun e!2779752 () Unit!87091)

(declare-fun Unit!87093 () Unit!87091)

(assert (=> b!4464096 (= e!2779752 Unit!87093)))

(declare-fun res!1851689 () Bool)

(assert (=> start!438010 (=> (not res!1851689) (not e!2779754))))

(declare-fun forall!9961 (List!50377 Int) Bool)

(assert (=> start!438010 (= res!1851689 (forall!9961 (toList!4033 lm!1477) lambda!162334))))

(assert (=> start!438010 e!2779754))

(assert (=> start!438010 true))

(declare-fun inv!65858 (ListLongMap!2665) Bool)

(assert (=> start!438010 (and (inv!65858 lm!1477) e!2779750)))

(assert (=> start!438010 tp_is_empty!27329))

(assert (=> start!438010 e!2779751))

(declare-fun b!4464097 () Bool)

(declare-fun e!2779749 () Bool)

(declare-fun lt!1654352 () List!50377)

(assert (=> b!4464097 (= e!2779749 (forall!9961 lt!1654352 lambda!162334))))

(declare-fun b!4464098 () Bool)

(declare-fun res!1851694 () Bool)

(assert (=> b!4464098 (=> (not res!1851694) (not e!2779754))))

(declare-datatypes ((ListMap!3295 0))(
  ( (ListMap!3296 (toList!4034 List!50376)) )
))
(declare-fun contains!12786 (ListMap!3295 K!11673) Bool)

(declare-fun extractMap!1069 (List!50377) ListMap!3295)

(assert (=> b!4464098 (= res!1851694 (contains!12786 (extractMap!1069 (toList!4033 lm!1477)) key!3287))))

(declare-fun b!4464099 () Bool)

(assert (=> b!4464099 (= e!2779756 e!2779749)))

(declare-fun res!1851695 () Bool)

(assert (=> b!4464099 (=> res!1851695 e!2779749)))

(declare-fun lt!1654348 () tuple2!50488)

(declare-fun tail!7482 (List!50377) List!50377)

(declare-fun +!1349 (ListLongMap!2665 tuple2!50488) ListLongMap!2665)

(assert (=> b!4464099 (= res!1851695 (not (= (t!357327 (toList!4033 lm!1477)) (tail!7482 (toList!4033 (+!1349 lm!1477 lt!1654348))))))))

(declare-fun eq!506 (ListMap!3295 ListMap!3295) Bool)

(declare-fun -!275 (ListMap!3295 K!11673) ListMap!3295)

(assert (=> b!4464099 (eq!506 (extractMap!1069 (Cons!50253 lt!1654348 Nil!50253)) (-!275 (extractMap!1069 lt!1654352) key!3287))))

(assert (=> b!4464099 (= lt!1654352 (Cons!50253 (tuple2!50489 hash!344 (_2!28538 (h!56006 (toList!4033 lm!1477)))) Nil!50253))))

(assert (=> b!4464099 (= lt!1654348 (tuple2!50489 hash!344 newBucket!178))))

(declare-fun lt!1654356 () Unit!87091)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!5 ((_ BitVec 64) List!50376 List!50376 K!11673 Hashable!5408) Unit!87091)

(assert (=> b!4464099 (= lt!1654356 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!5 hash!344 (_2!28538 (h!56006 (toList!4033 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4464099 (contains!12786 (extractMap!1069 lt!1654350) key!3287)))

(declare-fun lt!1654351 () Unit!87091)

(declare-fun lemmaListContainsThenExtractedMapContains!9 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> b!4464099 (= lt!1654351 (lemmaListContainsThenExtractedMapContains!9 (ListLongMap!2666 lt!1654350) key!3287 hashF!1107))))

(declare-fun b!4464100 () Bool)

(declare-fun res!1851697 () Bool)

(assert (=> b!4464100 (=> res!1851697 e!2779753)))

(assert (=> b!4464100 (= res!1851697 (or (is-Nil!50253 (toList!4033 lm!1477)) (not (= (_1!28538 (h!56006 (toList!4033 lm!1477))) hash!344))))))

(declare-fun b!4464101 () Bool)

(declare-fun Unit!87094 () Unit!87091)

(assert (=> b!4464101 (= e!2779752 Unit!87094)))

(declare-fun lt!1654357 () Unit!87091)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!13 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> b!4464101 (= lt!1654357 (lemmaNotInItsHashBucketThenNotInMap!13 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4464101 false))

(declare-fun b!4464102 () Bool)

(assert (=> b!4464102 (= e!2779753 e!2779755)))

(declare-fun res!1851691 () Bool)

(assert (=> b!4464102 (=> res!1851691 e!2779755)))

(declare-fun lt!1654347 () Bool)

(assert (=> b!4464102 (= res!1851691 lt!1654347)))

(declare-fun lt!1654345 () Unit!87091)

(assert (=> b!4464102 (= lt!1654345 e!2779752)))

(declare-fun c!759679 () Bool)

(assert (=> b!4464102 (= c!759679 lt!1654347)))

(declare-fun containsKey!1437 (List!50376 K!11673) Bool)

(assert (=> b!4464102 (= lt!1654347 (not (containsKey!1437 (_2!28538 (h!56006 (toList!4033 lm!1477))) key!3287)))))

(assert (= (and start!438010 res!1851689) b!4464090))

(assert (= (and b!4464090 res!1851693) b!4464098))

(assert (= (and b!4464098 res!1851694) b!4464091))

(assert (= (and b!4464091 res!1851688) b!4464094))

(assert (= (and b!4464094 res!1851698) b!4464088))

(assert (= (and b!4464088 (not res!1851692)) b!4464089))

(assert (= (and b!4464089 (not res!1851690)) b!4464100))

(assert (= (and b!4464100 (not res!1851697)) b!4464102))

(assert (= (and b!4464102 c!759679) b!4464101))

(assert (= (and b!4464102 (not c!759679)) b!4464096))

(assert (= (and b!4464102 (not res!1851691)) b!4464092))

(assert (= (and b!4464092 (not res!1851696)) b!4464099))

(assert (= (and b!4464099 (not res!1851695)) b!4464097))

(assert (= start!438010 b!4464093))

(assert (= (and start!438010 (is-Cons!50252 newBucket!178)) b!4464095))

(declare-fun m!5167823 () Bool)

(assert (=> b!4464091 m!5167823))

(declare-fun m!5167825 () Bool)

(assert (=> b!4464092 m!5167825))

(declare-fun m!5167827 () Bool)

(assert (=> b!4464089 m!5167827))

(declare-fun m!5167829 () Bool)

(assert (=> b!4464090 m!5167829))

(declare-fun m!5167831 () Bool)

(assert (=> b!4464102 m!5167831))

(declare-fun m!5167833 () Bool)

(assert (=> b!4464088 m!5167833))

(declare-fun m!5167835 () Bool)

(assert (=> b!4464088 m!5167835))

(declare-fun m!5167837 () Bool)

(assert (=> b!4464088 m!5167837))

(declare-fun m!5167839 () Bool)

(assert (=> b!4464088 m!5167839))

(declare-fun m!5167841 () Bool)

(assert (=> b!4464088 m!5167841))

(declare-fun m!5167843 () Bool)

(assert (=> b!4464088 m!5167843))

(declare-fun m!5167845 () Bool)

(assert (=> b!4464088 m!5167845))

(declare-fun m!5167847 () Bool)

(assert (=> b!4464097 m!5167847))

(declare-fun m!5167849 () Bool)

(assert (=> b!4464094 m!5167849))

(declare-fun m!5167851 () Bool)

(assert (=> b!4464101 m!5167851))

(declare-fun m!5167853 () Bool)

(assert (=> start!438010 m!5167853))

(declare-fun m!5167855 () Bool)

(assert (=> start!438010 m!5167855))

(declare-fun m!5167857 () Bool)

(assert (=> b!4464099 m!5167857))

(declare-fun m!5167859 () Bool)

(assert (=> b!4464099 m!5167859))

(declare-fun m!5167861 () Bool)

(assert (=> b!4464099 m!5167861))

(declare-fun m!5167863 () Bool)

(assert (=> b!4464099 m!5167863))

(declare-fun m!5167865 () Bool)

(assert (=> b!4464099 m!5167865))

(assert (=> b!4464099 m!5167861))

(declare-fun m!5167867 () Bool)

(assert (=> b!4464099 m!5167867))

(assert (=> b!4464099 m!5167859))

(declare-fun m!5167869 () Bool)

(assert (=> b!4464099 m!5167869))

(declare-fun m!5167871 () Bool)

(assert (=> b!4464099 m!5167871))

(assert (=> b!4464099 m!5167869))

(declare-fun m!5167873 () Bool)

(assert (=> b!4464099 m!5167873))

(assert (=> b!4464099 m!5167865))

(declare-fun m!5167875 () Bool)

(assert (=> b!4464099 m!5167875))

(declare-fun m!5167877 () Bool)

(assert (=> b!4464098 m!5167877))

(assert (=> b!4464098 m!5167877))

(declare-fun m!5167879 () Bool)

(assert (=> b!4464098 m!5167879))

(push 1)

(assert (not b!4464093))

(assert (not b!4464098))

(assert tp_is_empty!27331)

(assert (not b!4464102))

(assert (not b!4464092))

(assert (not b!4464089))

(assert (not b!4464094))

(assert (not b!4464095))

(assert (not b!4464097))

(assert (not b!4464101))

(assert (not b!4464090))

(assert (not b!4464088))

(assert (not b!4464099))

(assert (not b!4464091))

(assert tp_is_empty!27329)

(assert (not start!438010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1361081 () Bool)

(assert (=> d!1361081 true))

(assert (=> d!1361081 true))

(declare-fun lambda!162344 () Int)

(declare-fun forall!9963 (List!50376 Int) Bool)

(assert (=> d!1361081 (= (allKeysSameHash!867 newBucket!178 hash!344 hashF!1107) (forall!9963 newBucket!178 lambda!162344))))

(declare-fun bs!792300 () Bool)

(assert (= bs!792300 d!1361081))

(declare-fun m!5167939 () Bool)

(assert (=> bs!792300 m!5167939))

(assert (=> b!4464094 d!1361081))

(declare-fun d!1361083 () Bool)

(declare-fun hash!2411 (Hashable!5408 K!11673) (_ BitVec 64))

(assert (=> d!1361083 (= (hash!2408 hashF!1107 key!3287) (hash!2411 hashF!1107 key!3287))))

(declare-fun bs!792301 () Bool)

(assert (= bs!792301 d!1361083))

(declare-fun m!5167941 () Bool)

(assert (=> bs!792301 m!5167941))

(assert (=> b!4464091 d!1361083))

(declare-fun d!1361085 () Bool)

(declare-fun res!1851736 () Bool)

(declare-fun e!2779788 () Bool)

(assert (=> d!1361085 (=> res!1851736 e!2779788)))

(assert (=> d!1361085 (= res!1851736 (and (is-Cons!50252 (_2!28538 (h!56006 (toList!4033 lm!1477)))) (= (_1!28537 (h!56005 (_2!28538 (h!56006 (toList!4033 lm!1477))))) key!3287)))))

(assert (=> d!1361085 (= (containsKey!1437 (_2!28538 (h!56006 (toList!4033 lm!1477))) key!3287) e!2779788)))

(declare-fun b!4464156 () Bool)

(declare-fun e!2779789 () Bool)

(assert (=> b!4464156 (= e!2779788 e!2779789)))

(declare-fun res!1851737 () Bool)

(assert (=> b!4464156 (=> (not res!1851737) (not e!2779789))))

(assert (=> b!4464156 (= res!1851737 (is-Cons!50252 (_2!28538 (h!56006 (toList!4033 lm!1477)))))))

(declare-fun b!4464157 () Bool)

(assert (=> b!4464157 (= e!2779789 (containsKey!1437 (t!357326 (_2!28538 (h!56006 (toList!4033 lm!1477)))) key!3287))))

(assert (= (and d!1361085 (not res!1851736)) b!4464156))

(assert (= (and b!4464156 res!1851737) b!4464157))

(declare-fun m!5167943 () Bool)

(assert (=> b!4464157 m!5167943))

(assert (=> b!4464102 d!1361085))

(declare-fun d!1361087 () Bool)

(declare-fun res!1851744 () Bool)

(declare-fun e!2779798 () Bool)

(assert (=> d!1361087 (=> res!1851744 e!2779798)))

(declare-fun e!2779797 () Bool)

(assert (=> d!1361087 (= res!1851744 e!2779797)))

(declare-fun res!1851746 () Bool)

(assert (=> d!1361087 (=> (not res!1851746) (not e!2779797))))

(assert (=> d!1361087 (= res!1851746 (is-Cons!50253 lt!1654350))))

(assert (=> d!1361087 (= (containsKeyBiggerList!13 lt!1654350 key!3287) e!2779798)))

(declare-fun b!4464164 () Bool)

(assert (=> b!4464164 (= e!2779797 (containsKey!1437 (_2!28538 (h!56006 lt!1654350)) key!3287))))

(declare-fun b!4464165 () Bool)

(declare-fun e!2779796 () Bool)

(assert (=> b!4464165 (= e!2779798 e!2779796)))

(declare-fun res!1851745 () Bool)

(assert (=> b!4464165 (=> (not res!1851745) (not e!2779796))))

(assert (=> b!4464165 (= res!1851745 (is-Cons!50253 lt!1654350))))

(declare-fun b!4464166 () Bool)

(assert (=> b!4464166 (= e!2779796 (containsKeyBiggerList!13 (t!357327 lt!1654350) key!3287))))

(assert (= (and d!1361087 res!1851746) b!4464164))

(assert (= (and d!1361087 (not res!1851744)) b!4464165))

(assert (= (and b!4464165 res!1851745) b!4464166))

(declare-fun m!5167945 () Bool)

(assert (=> b!4464164 m!5167945))

(declare-fun m!5167947 () Bool)

(assert (=> b!4464166 m!5167947))

(assert (=> b!4464092 d!1361087))

(declare-fun bs!792302 () Bool)

(declare-fun d!1361089 () Bool)

(assert (= bs!792302 (and d!1361089 start!438010)))

(declare-fun lambda!162347 () Int)

(assert (=> bs!792302 (= lambda!162347 lambda!162334)))

(assert (=> d!1361089 (contains!12785 lm!1477 (hash!2408 hashF!1107 key!3287))))

(declare-fun lt!1654403 () Unit!87091)

(declare-fun choose!28461 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> d!1361089 (= lt!1654403 (choose!28461 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361089 (forall!9961 (toList!4033 lm!1477) lambda!162347)))

(assert (=> d!1361089 (= (lemmaInGenMapThenLongMapContainsHash!87 lm!1477 key!3287 hashF!1107) lt!1654403)))

(declare-fun bs!792303 () Bool)

(assert (= bs!792303 d!1361089))

(assert (=> bs!792303 m!5167823))

(assert (=> bs!792303 m!5167823))

(declare-fun m!5167949 () Bool)

(assert (=> bs!792303 m!5167949))

(declare-fun m!5167951 () Bool)

(assert (=> bs!792303 m!5167951))

(declare-fun m!5167953 () Bool)

(assert (=> bs!792303 m!5167953))

(assert (=> b!4464088 d!1361089))

(declare-fun d!1361091 () Bool)

(declare-datatypes ((Option!10904 0))(
  ( (None!10903) (Some!10903 (v!44183 List!50376)) )
))
(declare-fun get!16369 (Option!10904) List!50376)

(declare-fun getValueByKey!890 (List!50377 (_ BitVec 64)) Option!10904)

(assert (=> d!1361091 (= (apply!11750 lm!1477 hash!344) (get!16369 (getValueByKey!890 (toList!4033 lm!1477) hash!344)))))

(declare-fun bs!792304 () Bool)

(assert (= bs!792304 d!1361091))

(declare-fun m!5167955 () Bool)

(assert (=> bs!792304 m!5167955))

(assert (=> bs!792304 m!5167955))

(declare-fun m!5167957 () Bool)

(assert (=> bs!792304 m!5167957))

(assert (=> b!4464088 d!1361091))

(declare-fun d!1361093 () Bool)

(assert (=> d!1361093 (contains!12784 (toList!4033 lm!1477) (tuple2!50489 hash!344 lt!1654349))))

(declare-fun lt!1654406 () Unit!87091)

(declare-fun choose!28462 (List!50377 (_ BitVec 64) List!50376) Unit!87091)

(assert (=> d!1361093 (= lt!1654406 (choose!28462 (toList!4033 lm!1477) hash!344 lt!1654349))))

(declare-fun e!2779801 () Bool)

(assert (=> d!1361093 e!2779801))

(declare-fun res!1851749 () Bool)

(assert (=> d!1361093 (=> (not res!1851749) (not e!2779801))))

(declare-fun isStrictlySorted!330 (List!50377) Bool)

(assert (=> d!1361093 (= res!1851749 (isStrictlySorted!330 (toList!4033 lm!1477)))))

(assert (=> d!1361093 (= (lemmaGetValueByKeyImpliesContainsTuple!525 (toList!4033 lm!1477) hash!344 lt!1654349) lt!1654406)))

(declare-fun b!4464169 () Bool)

(assert (=> b!4464169 (= e!2779801 (= (getValueByKey!890 (toList!4033 lm!1477) hash!344) (Some!10903 lt!1654349)))))

(assert (= (and d!1361093 res!1851749) b!4464169))

(declare-fun m!5167959 () Bool)

(assert (=> d!1361093 m!5167959))

(declare-fun m!5167961 () Bool)

(assert (=> d!1361093 m!5167961))

(declare-fun m!5167963 () Bool)

(assert (=> d!1361093 m!5167963))

(assert (=> b!4464169 m!5167955))

(assert (=> b!4464088 d!1361093))

(declare-fun d!1361095 () Bool)

(declare-fun e!2779807 () Bool)

(assert (=> d!1361095 e!2779807))

(declare-fun res!1851752 () Bool)

(assert (=> d!1361095 (=> res!1851752 e!2779807)))

(declare-fun lt!1654416 () Bool)

(assert (=> d!1361095 (= res!1851752 (not lt!1654416))))

(declare-fun lt!1654418 () Bool)

(assert (=> d!1361095 (= lt!1654416 lt!1654418)))

(declare-fun lt!1654415 () Unit!87091)

(declare-fun e!2779806 () Unit!87091)

(assert (=> d!1361095 (= lt!1654415 e!2779806)))

(declare-fun c!759685 () Bool)

(assert (=> d!1361095 (= c!759685 lt!1654418)))

(declare-fun containsKey!1439 (List!50377 (_ BitVec 64)) Bool)

(assert (=> d!1361095 (= lt!1654418 (containsKey!1439 (toList!4033 lm!1477) lt!1654353))))

(assert (=> d!1361095 (= (contains!12785 lm!1477 lt!1654353) lt!1654416)))

(declare-fun b!4464176 () Bool)

(declare-fun lt!1654417 () Unit!87091)

(assert (=> b!4464176 (= e!2779806 lt!1654417)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!794 (List!50377 (_ BitVec 64)) Unit!87091)

(assert (=> b!4464176 (= lt!1654417 (lemmaContainsKeyImpliesGetValueByKeyDefined!794 (toList!4033 lm!1477) lt!1654353))))

(declare-fun isDefined!8191 (Option!10904) Bool)

(assert (=> b!4464176 (isDefined!8191 (getValueByKey!890 (toList!4033 lm!1477) lt!1654353))))

(declare-fun b!4464177 () Bool)

(declare-fun Unit!87099 () Unit!87091)

(assert (=> b!4464177 (= e!2779806 Unit!87099)))

(declare-fun b!4464178 () Bool)

(assert (=> b!4464178 (= e!2779807 (isDefined!8191 (getValueByKey!890 (toList!4033 lm!1477) lt!1654353)))))

(assert (= (and d!1361095 c!759685) b!4464176))

(assert (= (and d!1361095 (not c!759685)) b!4464177))

(assert (= (and d!1361095 (not res!1851752)) b!4464178))

(declare-fun m!5167965 () Bool)

(assert (=> d!1361095 m!5167965))

(declare-fun m!5167967 () Bool)

(assert (=> b!4464176 m!5167967))

(declare-fun m!5167969 () Bool)

(assert (=> b!4464176 m!5167969))

(assert (=> b!4464176 m!5167969))

(declare-fun m!5167971 () Bool)

(assert (=> b!4464176 m!5167971))

(assert (=> b!4464178 m!5167969))

(assert (=> b!4464178 m!5167969))

(assert (=> b!4464178 m!5167971))

(assert (=> b!4464088 d!1361095))

(declare-fun d!1361097 () Bool)

(declare-fun dynLambda!20995 (Int tuple2!50488) Bool)

(assert (=> d!1361097 (dynLambda!20995 lambda!162334 lt!1654355)))

(declare-fun lt!1654421 () Unit!87091)

(declare-fun choose!28463 (List!50377 Int tuple2!50488) Unit!87091)

(assert (=> d!1361097 (= lt!1654421 (choose!28463 (toList!4033 lm!1477) lambda!162334 lt!1654355))))

(declare-fun e!2779810 () Bool)

(assert (=> d!1361097 e!2779810))

(declare-fun res!1851755 () Bool)

(assert (=> d!1361097 (=> (not res!1851755) (not e!2779810))))

(assert (=> d!1361097 (= res!1851755 (forall!9961 (toList!4033 lm!1477) lambda!162334))))

(assert (=> d!1361097 (= (forallContained!2234 (toList!4033 lm!1477) lambda!162334 lt!1654355) lt!1654421)))

(declare-fun b!4464181 () Bool)

(assert (=> b!4464181 (= e!2779810 (contains!12784 (toList!4033 lm!1477) lt!1654355))))

(assert (= (and d!1361097 res!1851755) b!4464181))

(declare-fun b_lambda!147925 () Bool)

(assert (=> (not b_lambda!147925) (not d!1361097)))

(declare-fun m!5167973 () Bool)

(assert (=> d!1361097 m!5167973))

(declare-fun m!5167975 () Bool)

(assert (=> d!1361097 m!5167975))

(assert (=> d!1361097 m!5167853))

(assert (=> b!4464181 m!5167833))

(assert (=> b!4464088 d!1361097))

(declare-fun d!1361101 () Bool)

(declare-fun lt!1654424 () Bool)

(declare-fun content!8069 (List!50377) (Set tuple2!50488))

(assert (=> d!1361101 (= lt!1654424 (set.member lt!1654355 (content!8069 (toList!4033 lm!1477))))))

(declare-fun e!2779816 () Bool)

(assert (=> d!1361101 (= lt!1654424 e!2779816)))

(declare-fun res!1851760 () Bool)

(assert (=> d!1361101 (=> (not res!1851760) (not e!2779816))))

(assert (=> d!1361101 (= res!1851760 (is-Cons!50253 (toList!4033 lm!1477)))))

(assert (=> d!1361101 (= (contains!12784 (toList!4033 lm!1477) lt!1654355) lt!1654424)))

(declare-fun b!4464186 () Bool)

(declare-fun e!2779815 () Bool)

(assert (=> b!4464186 (= e!2779816 e!2779815)))

(declare-fun res!1851761 () Bool)

(assert (=> b!4464186 (=> res!1851761 e!2779815)))

(assert (=> b!4464186 (= res!1851761 (= (h!56006 (toList!4033 lm!1477)) lt!1654355))))

(declare-fun b!4464187 () Bool)

(assert (=> b!4464187 (= e!2779815 (contains!12784 (t!357327 (toList!4033 lm!1477)) lt!1654355))))

(assert (= (and d!1361101 res!1851760) b!4464186))

(assert (= (and b!4464186 (not res!1851761)) b!4464187))

(declare-fun m!5167977 () Bool)

(assert (=> d!1361101 m!5167977))

(declare-fun m!5167979 () Bool)

(assert (=> d!1361101 m!5167979))

(declare-fun m!5167981 () Bool)

(assert (=> b!4464187 m!5167981))

(assert (=> b!4464088 d!1361101))

(declare-fun b!4464199 () Bool)

(declare-fun e!2779821 () List!50376)

(assert (=> b!4464199 (= e!2779821 Nil!50252)))

(declare-fun b!4464198 () Bool)

(assert (=> b!4464198 (= e!2779821 (Cons!50252 (h!56005 lt!1654349) (removePairForKey!640 (t!357326 lt!1654349) key!3287)))))

(declare-fun d!1361103 () Bool)

(declare-fun lt!1654427 () List!50376)

(assert (=> d!1361103 (not (containsKey!1437 lt!1654427 key!3287))))

(declare-fun e!2779822 () List!50376)

(assert (=> d!1361103 (= lt!1654427 e!2779822)))

(declare-fun c!759691 () Bool)

(assert (=> d!1361103 (= c!759691 (and (is-Cons!50252 lt!1654349) (= (_1!28537 (h!56005 lt!1654349)) key!3287)))))

(assert (=> d!1361103 (noDuplicateKeys!1013 lt!1654349)))

(assert (=> d!1361103 (= (removePairForKey!640 lt!1654349 key!3287) lt!1654427)))

(declare-fun b!4464196 () Bool)

(assert (=> b!4464196 (= e!2779822 (t!357326 lt!1654349))))

(declare-fun b!4464197 () Bool)

(assert (=> b!4464197 (= e!2779822 e!2779821)))

(declare-fun c!759690 () Bool)

(assert (=> b!4464197 (= c!759690 (is-Cons!50252 lt!1654349))))

(assert (= (and d!1361103 c!759691) b!4464196))

(assert (= (and d!1361103 (not c!759691)) b!4464197))

(assert (= (and b!4464197 c!759690) b!4464198))

(assert (= (and b!4464197 (not c!759690)) b!4464199))

(declare-fun m!5167983 () Bool)

(assert (=> b!4464198 m!5167983))

(declare-fun m!5167985 () Bool)

(assert (=> d!1361103 m!5167985))

(declare-fun m!5167987 () Bool)

(assert (=> d!1361103 m!5167987))

(assert (=> b!4464088 d!1361103))

(declare-fun bs!792305 () Bool)

(declare-fun d!1361105 () Bool)

(assert (= bs!792305 (and d!1361105 start!438010)))

(declare-fun lambda!162350 () Int)

(assert (=> bs!792305 (= lambda!162350 lambda!162334)))

(declare-fun bs!792306 () Bool)

(assert (= bs!792306 (and d!1361105 d!1361089)))

(assert (=> bs!792306 (= lambda!162350 lambda!162347)))

(declare-fun lt!1654430 () ListMap!3295)

(declare-fun invariantList!916 (List!50376) Bool)

(assert (=> d!1361105 (invariantList!916 (toList!4034 lt!1654430))))

(declare-fun e!2779825 () ListMap!3295)

(assert (=> d!1361105 (= lt!1654430 e!2779825)))

(declare-fun c!759694 () Bool)

(assert (=> d!1361105 (= c!759694 (is-Cons!50253 (Cons!50253 lt!1654348 Nil!50253)))))

(assert (=> d!1361105 (forall!9961 (Cons!50253 lt!1654348 Nil!50253) lambda!162350)))

(assert (=> d!1361105 (= (extractMap!1069 (Cons!50253 lt!1654348 Nil!50253)) lt!1654430)))

(declare-fun b!4464204 () Bool)

(declare-fun addToMapMapFromBucket!578 (List!50376 ListMap!3295) ListMap!3295)

(assert (=> b!4464204 (= e!2779825 (addToMapMapFromBucket!578 (_2!28538 (h!56006 (Cons!50253 lt!1654348 Nil!50253))) (extractMap!1069 (t!357327 (Cons!50253 lt!1654348 Nil!50253)))))))

(declare-fun b!4464205 () Bool)

(assert (=> b!4464205 (= e!2779825 (ListMap!3296 Nil!50252))))

(assert (= (and d!1361105 c!759694) b!4464204))

(assert (= (and d!1361105 (not c!759694)) b!4464205))

(declare-fun m!5167989 () Bool)

(assert (=> d!1361105 m!5167989))

(declare-fun m!5167991 () Bool)

(assert (=> d!1361105 m!5167991))

(declare-fun m!5167993 () Bool)

(assert (=> b!4464204 m!5167993))

(assert (=> b!4464204 m!5167993))

(declare-fun m!5167995 () Bool)

(assert (=> b!4464204 m!5167995))

(assert (=> b!4464099 d!1361105))

(declare-fun d!1361107 () Bool)

(declare-fun e!2779828 () Bool)

(assert (=> d!1361107 e!2779828))

(declare-fun res!1851766 () Bool)

(assert (=> d!1361107 (=> (not res!1851766) (not e!2779828))))

(declare-fun lt!1654441 () ListLongMap!2665)

(assert (=> d!1361107 (= res!1851766 (contains!12785 lt!1654441 (_1!28538 lt!1654348)))))

(declare-fun lt!1654439 () List!50377)

(assert (=> d!1361107 (= lt!1654441 (ListLongMap!2666 lt!1654439))))

(declare-fun lt!1654442 () Unit!87091)

(declare-fun lt!1654440 () Unit!87091)

(assert (=> d!1361107 (= lt!1654442 lt!1654440)))

(assert (=> d!1361107 (= (getValueByKey!890 lt!1654439 (_1!28538 lt!1654348)) (Some!10903 (_2!28538 lt!1654348)))))

(declare-fun lemmaContainsTupThenGetReturnValue!573 (List!50377 (_ BitVec 64) List!50376) Unit!87091)

(assert (=> d!1361107 (= lt!1654440 (lemmaContainsTupThenGetReturnValue!573 lt!1654439 (_1!28538 lt!1654348) (_2!28538 lt!1654348)))))

(declare-fun insertStrictlySorted!319 (List!50377 (_ BitVec 64) List!50376) List!50377)

(assert (=> d!1361107 (= lt!1654439 (insertStrictlySorted!319 (toList!4033 lm!1477) (_1!28538 lt!1654348) (_2!28538 lt!1654348)))))

(assert (=> d!1361107 (= (+!1349 lm!1477 lt!1654348) lt!1654441)))

(declare-fun b!4464210 () Bool)

(declare-fun res!1851767 () Bool)

(assert (=> b!4464210 (=> (not res!1851767) (not e!2779828))))

(assert (=> b!4464210 (= res!1851767 (= (getValueByKey!890 (toList!4033 lt!1654441) (_1!28538 lt!1654348)) (Some!10903 (_2!28538 lt!1654348))))))

(declare-fun b!4464211 () Bool)

(assert (=> b!4464211 (= e!2779828 (contains!12784 (toList!4033 lt!1654441) lt!1654348))))

(assert (= (and d!1361107 res!1851766) b!4464210))

(assert (= (and b!4464210 res!1851767) b!4464211))

(declare-fun m!5167997 () Bool)

(assert (=> d!1361107 m!5167997))

(declare-fun m!5167999 () Bool)

(assert (=> d!1361107 m!5167999))

(declare-fun m!5168001 () Bool)

(assert (=> d!1361107 m!5168001))

(declare-fun m!5168003 () Bool)

(assert (=> d!1361107 m!5168003))

(declare-fun m!5168005 () Bool)

(assert (=> b!4464210 m!5168005))

(declare-fun m!5168007 () Bool)

(assert (=> b!4464211 m!5168007))

(assert (=> b!4464099 d!1361107))

(declare-fun d!1361109 () Bool)

(declare-fun content!8070 (List!50376) (Set tuple2!50486))

(assert (=> d!1361109 (= (eq!506 (extractMap!1069 (Cons!50253 lt!1654348 Nil!50253)) (-!275 (extractMap!1069 lt!1654352) key!3287)) (= (content!8070 (toList!4034 (extractMap!1069 (Cons!50253 lt!1654348 Nil!50253)))) (content!8070 (toList!4034 (-!275 (extractMap!1069 lt!1654352) key!3287)))))))

(declare-fun bs!792307 () Bool)

(assert (= bs!792307 d!1361109))

(declare-fun m!5168009 () Bool)

(assert (=> bs!792307 m!5168009))

(declare-fun m!5168011 () Bool)

(assert (=> bs!792307 m!5168011))

(assert (=> b!4464099 d!1361109))

(declare-fun d!1361111 () Bool)

(assert (=> d!1361111 (= (tail!7482 (toList!4033 (+!1349 lm!1477 lt!1654348))) (t!357327 (toList!4033 (+!1349 lm!1477 lt!1654348))))))

(assert (=> b!4464099 d!1361111))

(declare-fun d!1361113 () Bool)

(assert (=> d!1361113 (eq!506 (extractMap!1069 (Cons!50253 (tuple2!50489 hash!344 newBucket!178) Nil!50253)) (-!275 (extractMap!1069 (Cons!50253 (tuple2!50489 hash!344 (_2!28538 (h!56006 (toList!4033 lm!1477)))) Nil!50253)) key!3287))))

(declare-fun lt!1654461 () Unit!87091)

(declare-fun choose!28464 ((_ BitVec 64) List!50376 List!50376 K!11673 Hashable!5408) Unit!87091)

(assert (=> d!1361113 (= lt!1654461 (choose!28464 hash!344 (_2!28538 (h!56006 (toList!4033 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1361113 (noDuplicateKeys!1013 (_2!28538 (h!56006 (toList!4033 lm!1477))))))

(assert (=> d!1361113 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!5 hash!344 (_2!28538 (h!56006 (toList!4033 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1654461)))

(declare-fun bs!792308 () Bool)

(assert (= bs!792308 d!1361113))

(declare-fun m!5168013 () Bool)

(assert (=> bs!792308 m!5168013))

(declare-fun m!5168015 () Bool)

(assert (=> bs!792308 m!5168015))

(assert (=> bs!792308 m!5168013))

(declare-fun m!5168017 () Bool)

(assert (=> bs!792308 m!5168017))

(declare-fun m!5168019 () Bool)

(assert (=> bs!792308 m!5168019))

(declare-fun m!5168021 () Bool)

(assert (=> bs!792308 m!5168021))

(declare-fun m!5168023 () Bool)

(assert (=> bs!792308 m!5168023))

(assert (=> bs!792308 m!5168015))

(assert (=> bs!792308 m!5168017))

(assert (=> b!4464099 d!1361113))

(declare-fun b!4464257 () Bool)

(declare-fun e!2779860 () Unit!87091)

(declare-fun lt!1654487 () Unit!87091)

(assert (=> b!4464257 (= e!2779860 lt!1654487)))

(declare-fun lt!1654486 () Unit!87091)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!795 (List!50376 K!11673) Unit!87091)

(assert (=> b!4464257 (= lt!1654486 (lemmaContainsKeyImpliesGetValueByKeyDefined!795 (toList!4034 (extractMap!1069 lt!1654350)) key!3287))))

(declare-datatypes ((Option!10905 0))(
  ( (None!10904) (Some!10904 (v!44186 V!11919)) )
))
(declare-fun isDefined!8192 (Option!10905) Bool)

(declare-fun getValueByKey!891 (List!50376 K!11673) Option!10905)

(assert (=> b!4464257 (isDefined!8192 (getValueByKey!891 (toList!4034 (extractMap!1069 lt!1654350)) key!3287))))

(declare-fun lt!1654492 () Unit!87091)

(assert (=> b!4464257 (= lt!1654492 lt!1654486)))

(declare-fun lemmaInListThenGetKeysListContains!360 (List!50376 K!11673) Unit!87091)

(assert (=> b!4464257 (= lt!1654487 (lemmaInListThenGetKeysListContains!360 (toList!4034 (extractMap!1069 lt!1654350)) key!3287))))

(declare-fun call!310758 () Bool)

(assert (=> b!4464257 call!310758))

(declare-fun b!4464258 () Bool)

(declare-fun e!2779859 () Bool)

(declare-datatypes ((List!50380 0))(
  ( (Nil!50256) (Cons!50256 (h!56011 K!11673) (t!357330 List!50380)) )
))
(declare-fun contains!12790 (List!50380 K!11673) Bool)

(declare-fun keys!17341 (ListMap!3295) List!50380)

(assert (=> b!4464258 (= e!2779859 (not (contains!12790 (keys!17341 (extractMap!1069 lt!1654350)) key!3287)))))

(declare-fun b!4464259 () Bool)

(declare-fun e!2779861 () List!50380)

(assert (=> b!4464259 (= e!2779861 (keys!17341 (extractMap!1069 lt!1654350)))))

(declare-fun b!4464260 () Bool)

(declare-fun getKeysList!364 (List!50376) List!50380)

(assert (=> b!4464260 (= e!2779861 (getKeysList!364 (toList!4034 (extractMap!1069 lt!1654350))))))

(declare-fun b!4464261 () Bool)

(declare-fun e!2779862 () Unit!87091)

(assert (=> b!4464261 (= e!2779860 e!2779862)))

(declare-fun c!759711 () Bool)

(assert (=> b!4464261 (= c!759711 call!310758)))

(declare-fun b!4464262 () Bool)

(assert (=> b!4464262 false))

(declare-fun lt!1654490 () Unit!87091)

(declare-fun lt!1654491 () Unit!87091)

(assert (=> b!4464262 (= lt!1654490 lt!1654491)))

(declare-fun containsKey!1440 (List!50376 K!11673) Bool)

(assert (=> b!4464262 (containsKey!1440 (toList!4034 (extractMap!1069 lt!1654350)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!363 (List!50376 K!11673) Unit!87091)

(assert (=> b!4464262 (= lt!1654491 (lemmaInGetKeysListThenContainsKey!363 (toList!4034 (extractMap!1069 lt!1654350)) key!3287))))

(declare-fun Unit!87100 () Unit!87091)

(assert (=> b!4464262 (= e!2779862 Unit!87100)))

(declare-fun d!1361115 () Bool)

(declare-fun e!2779864 () Bool)

(assert (=> d!1361115 e!2779864))

(declare-fun res!1851785 () Bool)

(assert (=> d!1361115 (=> res!1851785 e!2779864)))

(assert (=> d!1361115 (= res!1851785 e!2779859)))

(declare-fun res!1851783 () Bool)

(assert (=> d!1361115 (=> (not res!1851783) (not e!2779859))))

(declare-fun lt!1654488 () Bool)

(assert (=> d!1361115 (= res!1851783 (not lt!1654488))))

(declare-fun lt!1654489 () Bool)

(assert (=> d!1361115 (= lt!1654488 lt!1654489)))

(declare-fun lt!1654493 () Unit!87091)

(assert (=> d!1361115 (= lt!1654493 e!2779860)))

(declare-fun c!759710 () Bool)

(assert (=> d!1361115 (= c!759710 lt!1654489)))

(assert (=> d!1361115 (= lt!1654489 (containsKey!1440 (toList!4034 (extractMap!1069 lt!1654350)) key!3287))))

(assert (=> d!1361115 (= (contains!12786 (extractMap!1069 lt!1654350) key!3287) lt!1654488)))

(declare-fun b!4464263 () Bool)

(declare-fun Unit!87101 () Unit!87091)

(assert (=> b!4464263 (= e!2779862 Unit!87101)))

(declare-fun b!4464264 () Bool)

(declare-fun e!2779863 () Bool)

(assert (=> b!4464264 (= e!2779864 e!2779863)))

(declare-fun res!1851784 () Bool)

(assert (=> b!4464264 (=> (not res!1851784) (not e!2779863))))

(assert (=> b!4464264 (= res!1851784 (isDefined!8192 (getValueByKey!891 (toList!4034 (extractMap!1069 lt!1654350)) key!3287)))))

(declare-fun b!4464265 () Bool)

(assert (=> b!4464265 (= e!2779863 (contains!12790 (keys!17341 (extractMap!1069 lt!1654350)) key!3287))))

(declare-fun bm!310753 () Bool)

(assert (=> bm!310753 (= call!310758 (contains!12790 e!2779861 key!3287))))

(declare-fun c!759712 () Bool)

(assert (=> bm!310753 (= c!759712 c!759710)))

(assert (= (and d!1361115 c!759710) b!4464257))

(assert (= (and d!1361115 (not c!759710)) b!4464261))

(assert (= (and b!4464261 c!759711) b!4464262))

(assert (= (and b!4464261 (not c!759711)) b!4464263))

(assert (= (or b!4464257 b!4464261) bm!310753))

(assert (= (and bm!310753 c!759712) b!4464260))

(assert (= (and bm!310753 (not c!759712)) b!4464259))

(assert (= (and d!1361115 res!1851783) b!4464258))

(assert (= (and d!1361115 (not res!1851785)) b!4464264))

(assert (= (and b!4464264 res!1851784) b!4464265))

(assert (=> b!4464258 m!5167869))

(declare-fun m!5168045 () Bool)

(assert (=> b!4464258 m!5168045))

(assert (=> b!4464258 m!5168045))

(declare-fun m!5168047 () Bool)

(assert (=> b!4464258 m!5168047))

(declare-fun m!5168049 () Bool)

(assert (=> d!1361115 m!5168049))

(declare-fun m!5168051 () Bool)

(assert (=> b!4464260 m!5168051))

(declare-fun m!5168053 () Bool)

(assert (=> b!4464257 m!5168053))

(declare-fun m!5168055 () Bool)

(assert (=> b!4464257 m!5168055))

(assert (=> b!4464257 m!5168055))

(declare-fun m!5168057 () Bool)

(assert (=> b!4464257 m!5168057))

(declare-fun m!5168059 () Bool)

(assert (=> b!4464257 m!5168059))

(assert (=> b!4464262 m!5168049))

(declare-fun m!5168061 () Bool)

(assert (=> b!4464262 m!5168061))

(assert (=> b!4464259 m!5167869))

(assert (=> b!4464259 m!5168045))

(assert (=> b!4464264 m!5168055))

(assert (=> b!4464264 m!5168055))

(assert (=> b!4464264 m!5168057))

(declare-fun m!5168063 () Bool)

(assert (=> bm!310753 m!5168063))

(assert (=> b!4464265 m!5167869))

(assert (=> b!4464265 m!5168045))

(assert (=> b!4464265 m!5168045))

(assert (=> b!4464265 m!5168047))

(assert (=> b!4464099 d!1361115))

(declare-fun d!1361119 () Bool)

(declare-fun e!2779867 () Bool)

(assert (=> d!1361119 e!2779867))

(declare-fun res!1851788 () Bool)

(assert (=> d!1361119 (=> (not res!1851788) (not e!2779867))))

(declare-fun lt!1654496 () ListMap!3295)

(assert (=> d!1361119 (= res!1851788 (not (contains!12786 lt!1654496 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!52 (List!50376 K!11673) List!50376)

(assert (=> d!1361119 (= lt!1654496 (ListMap!3296 (removePresrvNoDuplicatedKeys!52 (toList!4034 (extractMap!1069 lt!1654352)) key!3287)))))

(assert (=> d!1361119 (= (-!275 (extractMap!1069 lt!1654352) key!3287) lt!1654496)))

(declare-fun b!4464268 () Bool)

(declare-fun content!8071 (List!50380) (Set K!11673))

(assert (=> b!4464268 (= e!2779867 (= (set.minus (content!8071 (keys!17341 (extractMap!1069 lt!1654352))) (set.insert key!3287 (as set.empty (Set K!11673)))) (content!8071 (keys!17341 lt!1654496))))))

(assert (= (and d!1361119 res!1851788) b!4464268))

(declare-fun m!5168065 () Bool)

(assert (=> d!1361119 m!5168065))

(declare-fun m!5168067 () Bool)

(assert (=> d!1361119 m!5168067))

(declare-fun m!5168069 () Bool)

(assert (=> b!4464268 m!5168069))

(assert (=> b!4464268 m!5167865))

(declare-fun m!5168071 () Bool)

(assert (=> b!4464268 m!5168071))

(declare-fun m!5168073 () Bool)

(assert (=> b!4464268 m!5168073))

(assert (=> b!4464268 m!5168073))

(declare-fun m!5168075 () Bool)

(assert (=> b!4464268 m!5168075))

(assert (=> b!4464268 m!5168071))

(declare-fun m!5168077 () Bool)

(assert (=> b!4464268 m!5168077))

(assert (=> b!4464099 d!1361119))

(declare-fun bs!792310 () Bool)

(declare-fun d!1361121 () Bool)

(assert (= bs!792310 (and d!1361121 start!438010)))

(declare-fun lambda!162356 () Int)

(assert (=> bs!792310 (= lambda!162356 lambda!162334)))

(declare-fun bs!792311 () Bool)

(assert (= bs!792311 (and d!1361121 d!1361089)))

(assert (=> bs!792311 (= lambda!162356 lambda!162347)))

(declare-fun bs!792312 () Bool)

(assert (= bs!792312 (and d!1361121 d!1361105)))

(assert (=> bs!792312 (= lambda!162356 lambda!162350)))

(assert (=> d!1361121 (contains!12786 (extractMap!1069 (toList!4033 (ListLongMap!2666 lt!1654350))) key!3287)))

(declare-fun lt!1654502 () Unit!87091)

(declare-fun choose!28465 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> d!1361121 (= lt!1654502 (choose!28465 (ListLongMap!2666 lt!1654350) key!3287 hashF!1107))))

(assert (=> d!1361121 (forall!9961 (toList!4033 (ListLongMap!2666 lt!1654350)) lambda!162356)))

(assert (=> d!1361121 (= (lemmaListContainsThenExtractedMapContains!9 (ListLongMap!2666 lt!1654350) key!3287 hashF!1107) lt!1654502)))

(declare-fun bs!792313 () Bool)

(assert (= bs!792313 d!1361121))

(declare-fun m!5168087 () Bool)

(assert (=> bs!792313 m!5168087))

(assert (=> bs!792313 m!5168087))

(declare-fun m!5168089 () Bool)

(assert (=> bs!792313 m!5168089))

(declare-fun m!5168091 () Bool)

(assert (=> bs!792313 m!5168091))

(declare-fun m!5168093 () Bool)

(assert (=> bs!792313 m!5168093))

(assert (=> b!4464099 d!1361121))

(declare-fun bs!792314 () Bool)

(declare-fun d!1361125 () Bool)

(assert (= bs!792314 (and d!1361125 start!438010)))

(declare-fun lambda!162357 () Int)

(assert (=> bs!792314 (= lambda!162357 lambda!162334)))

(declare-fun bs!792315 () Bool)

(assert (= bs!792315 (and d!1361125 d!1361089)))

(assert (=> bs!792315 (= lambda!162357 lambda!162347)))

(declare-fun bs!792316 () Bool)

(assert (= bs!792316 (and d!1361125 d!1361105)))

(assert (=> bs!792316 (= lambda!162357 lambda!162350)))

(declare-fun bs!792317 () Bool)

(assert (= bs!792317 (and d!1361125 d!1361121)))

(assert (=> bs!792317 (= lambda!162357 lambda!162356)))

(declare-fun lt!1654503 () ListMap!3295)

(assert (=> d!1361125 (invariantList!916 (toList!4034 lt!1654503))))

(declare-fun e!2779871 () ListMap!3295)

(assert (=> d!1361125 (= lt!1654503 e!2779871)))

(declare-fun c!759716 () Bool)

(assert (=> d!1361125 (= c!759716 (is-Cons!50253 lt!1654350))))

(assert (=> d!1361125 (forall!9961 lt!1654350 lambda!162357)))

(assert (=> d!1361125 (= (extractMap!1069 lt!1654350) lt!1654503)))

(declare-fun b!4464275 () Bool)

(assert (=> b!4464275 (= e!2779871 (addToMapMapFromBucket!578 (_2!28538 (h!56006 lt!1654350)) (extractMap!1069 (t!357327 lt!1654350))))))

(declare-fun b!4464276 () Bool)

(assert (=> b!4464276 (= e!2779871 (ListMap!3296 Nil!50252))))

(assert (= (and d!1361125 c!759716) b!4464275))

(assert (= (and d!1361125 (not c!759716)) b!4464276))

(declare-fun m!5168095 () Bool)

(assert (=> d!1361125 m!5168095))

(declare-fun m!5168097 () Bool)

(assert (=> d!1361125 m!5168097))

(declare-fun m!5168099 () Bool)

(assert (=> b!4464275 m!5168099))

(assert (=> b!4464275 m!5168099))

(declare-fun m!5168101 () Bool)

(assert (=> b!4464275 m!5168101))

(assert (=> b!4464099 d!1361125))

(declare-fun bs!792318 () Bool)

(declare-fun d!1361127 () Bool)

(assert (= bs!792318 (and d!1361127 d!1361089)))

(declare-fun lambda!162358 () Int)

(assert (=> bs!792318 (= lambda!162358 lambda!162347)))

(declare-fun bs!792319 () Bool)

(assert (= bs!792319 (and d!1361127 start!438010)))

(assert (=> bs!792319 (= lambda!162358 lambda!162334)))

(declare-fun bs!792320 () Bool)

(assert (= bs!792320 (and d!1361127 d!1361105)))

(assert (=> bs!792320 (= lambda!162358 lambda!162350)))

(declare-fun bs!792321 () Bool)

(assert (= bs!792321 (and d!1361127 d!1361125)))

(assert (=> bs!792321 (= lambda!162358 lambda!162357)))

(declare-fun bs!792322 () Bool)

(assert (= bs!792322 (and d!1361127 d!1361121)))

(assert (=> bs!792322 (= lambda!162358 lambda!162356)))

(declare-fun lt!1654504 () ListMap!3295)

(assert (=> d!1361127 (invariantList!916 (toList!4034 lt!1654504))))

(declare-fun e!2779872 () ListMap!3295)

(assert (=> d!1361127 (= lt!1654504 e!2779872)))

(declare-fun c!759717 () Bool)

(assert (=> d!1361127 (= c!759717 (is-Cons!50253 lt!1654352))))

(assert (=> d!1361127 (forall!9961 lt!1654352 lambda!162358)))

(assert (=> d!1361127 (= (extractMap!1069 lt!1654352) lt!1654504)))

(declare-fun b!4464277 () Bool)

(assert (=> b!4464277 (= e!2779872 (addToMapMapFromBucket!578 (_2!28538 (h!56006 lt!1654352)) (extractMap!1069 (t!357327 lt!1654352))))))

(declare-fun b!4464278 () Bool)

(assert (=> b!4464278 (= e!2779872 (ListMap!3296 Nil!50252))))

(assert (= (and d!1361127 c!759717) b!4464277))

(assert (= (and d!1361127 (not c!759717)) b!4464278))

(declare-fun m!5168103 () Bool)

(assert (=> d!1361127 m!5168103))

(declare-fun m!5168105 () Bool)

(assert (=> d!1361127 m!5168105))

(declare-fun m!5168107 () Bool)

(assert (=> b!4464277 m!5168107))

(assert (=> b!4464277 m!5168107))

(declare-fun m!5168109 () Bool)

(assert (=> b!4464277 m!5168109))

(assert (=> b!4464099 d!1361127))

(declare-fun d!1361129 () Bool)

(declare-fun res!1851793 () Bool)

(declare-fun e!2779877 () Bool)

(assert (=> d!1361129 (=> res!1851793 e!2779877)))

(assert (=> d!1361129 (= res!1851793 (not (is-Cons!50252 newBucket!178)))))

(assert (=> d!1361129 (= (noDuplicateKeys!1013 newBucket!178) e!2779877)))

(declare-fun b!4464287 () Bool)

(declare-fun e!2779878 () Bool)

(assert (=> b!4464287 (= e!2779877 e!2779878)))

(declare-fun res!1851794 () Bool)

(assert (=> b!4464287 (=> (not res!1851794) (not e!2779878))))

(assert (=> b!4464287 (= res!1851794 (not (containsKey!1437 (t!357326 newBucket!178) (_1!28537 (h!56005 newBucket!178)))))))

(declare-fun b!4464288 () Bool)

(assert (=> b!4464288 (= e!2779878 (noDuplicateKeys!1013 (t!357326 newBucket!178)))))

(assert (= (and d!1361129 (not res!1851793)) b!4464287))

(assert (= (and b!4464287 res!1851794) b!4464288))

(declare-fun m!5168113 () Bool)

(assert (=> b!4464287 m!5168113))

(declare-fun m!5168115 () Bool)

(assert (=> b!4464288 m!5168115))

(assert (=> b!4464089 d!1361129))

(declare-fun bs!792324 () Bool)

(declare-fun d!1361131 () Bool)

(assert (= bs!792324 (and d!1361131 start!438010)))

(declare-fun lambda!162364 () Int)

(assert (=> bs!792324 (not (= lambda!162364 lambda!162334))))

(declare-fun bs!792325 () Bool)

(assert (= bs!792325 (and d!1361131 d!1361105)))

(assert (=> bs!792325 (not (= lambda!162364 lambda!162350))))

(declare-fun bs!792326 () Bool)

(assert (= bs!792326 (and d!1361131 d!1361125)))

(assert (=> bs!792326 (not (= lambda!162364 lambda!162357))))

(declare-fun bs!792327 () Bool)

(assert (= bs!792327 (and d!1361131 d!1361121)))

(assert (=> bs!792327 (not (= lambda!162364 lambda!162356))))

(declare-fun bs!792328 () Bool)

(assert (= bs!792328 (and d!1361131 d!1361089)))

(assert (=> bs!792328 (not (= lambda!162364 lambda!162347))))

(declare-fun bs!792329 () Bool)

(assert (= bs!792329 (and d!1361131 d!1361127)))

(assert (=> bs!792329 (not (= lambda!162364 lambda!162358))))

(assert (=> d!1361131 true))

(assert (=> d!1361131 (= (allKeysSameHashInMap!1120 lm!1477 hashF!1107) (forall!9961 (toList!4033 lm!1477) lambda!162364))))

(declare-fun bs!792330 () Bool)

(assert (= bs!792330 d!1361131))

(declare-fun m!5168117 () Bool)

(assert (=> bs!792330 m!5168117))

(assert (=> b!4464090 d!1361131))

(declare-fun bs!792331 () Bool)

(declare-fun d!1361135 () Bool)

(assert (= bs!792331 (and d!1361135 start!438010)))

(declare-fun lambda!162367 () Int)

(assert (=> bs!792331 (= lambda!162367 lambda!162334)))

(declare-fun bs!792332 () Bool)

(assert (= bs!792332 (and d!1361135 d!1361131)))

(assert (=> bs!792332 (not (= lambda!162367 lambda!162364))))

(declare-fun bs!792333 () Bool)

(assert (= bs!792333 (and d!1361135 d!1361105)))

(assert (=> bs!792333 (= lambda!162367 lambda!162350)))

(declare-fun bs!792334 () Bool)

(assert (= bs!792334 (and d!1361135 d!1361125)))

(assert (=> bs!792334 (= lambda!162367 lambda!162357)))

(declare-fun bs!792335 () Bool)

(assert (= bs!792335 (and d!1361135 d!1361121)))

(assert (=> bs!792335 (= lambda!162367 lambda!162356)))

(declare-fun bs!792336 () Bool)

(assert (= bs!792336 (and d!1361135 d!1361089)))

(assert (=> bs!792336 (= lambda!162367 lambda!162347)))

(declare-fun bs!792337 () Bool)

(assert (= bs!792337 (and d!1361135 d!1361127)))

(assert (=> bs!792337 (= lambda!162367 lambda!162358)))

(assert (=> d!1361135 (not (contains!12786 (extractMap!1069 (toList!4033 lm!1477)) key!3287))))

(declare-fun lt!1654510 () Unit!87091)

(declare-fun choose!28466 (ListLongMap!2665 K!11673 Hashable!5408) Unit!87091)

(assert (=> d!1361135 (= lt!1654510 (choose!28466 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361135 (forall!9961 (toList!4033 lm!1477) lambda!162367)))

(assert (=> d!1361135 (= (lemmaNotInItsHashBucketThenNotInMap!13 lm!1477 key!3287 hashF!1107) lt!1654510)))

(declare-fun bs!792338 () Bool)

(assert (= bs!792338 d!1361135))

(assert (=> bs!792338 m!5167877))

(assert (=> bs!792338 m!5167877))

(assert (=> bs!792338 m!5167879))

(declare-fun m!5168127 () Bool)

(assert (=> bs!792338 m!5168127))

(declare-fun m!5168129 () Bool)

(assert (=> bs!792338 m!5168129))

(assert (=> b!4464101 d!1361135))

(declare-fun d!1361141 () Bool)

(declare-fun res!1851808 () Bool)

(declare-fun e!2779892 () Bool)

(assert (=> d!1361141 (=> res!1851808 e!2779892)))

(assert (=> d!1361141 (= res!1851808 (is-Nil!50253 (toList!4033 lm!1477)))))

(assert (=> d!1361141 (= (forall!9961 (toList!4033 lm!1477) lambda!162334) e!2779892)))

(declare-fun b!4464304 () Bool)

(declare-fun e!2779893 () Bool)

(assert (=> b!4464304 (= e!2779892 e!2779893)))

(declare-fun res!1851809 () Bool)

(assert (=> b!4464304 (=> (not res!1851809) (not e!2779893))))

(assert (=> b!4464304 (= res!1851809 (dynLambda!20995 lambda!162334 (h!56006 (toList!4033 lm!1477))))))

(declare-fun b!4464305 () Bool)

(assert (=> b!4464305 (= e!2779893 (forall!9961 (t!357327 (toList!4033 lm!1477)) lambda!162334))))

(assert (= (and d!1361141 (not res!1851808)) b!4464304))

(assert (= (and b!4464304 res!1851809) b!4464305))

(declare-fun b_lambda!147931 () Bool)

(assert (=> (not b_lambda!147931) (not b!4464304)))

(declare-fun m!5168131 () Bool)

(assert (=> b!4464304 m!5168131))

(declare-fun m!5168133 () Bool)

(assert (=> b!4464305 m!5168133))

(assert (=> start!438010 d!1361141))

(declare-fun d!1361143 () Bool)

(assert (=> d!1361143 (= (inv!65858 lm!1477) (isStrictlySorted!330 (toList!4033 lm!1477)))))

(declare-fun bs!792339 () Bool)

(assert (= bs!792339 d!1361143))

(assert (=> bs!792339 m!5167963))

(assert (=> start!438010 d!1361143))

(declare-fun d!1361145 () Bool)

(declare-fun res!1851810 () Bool)

(declare-fun e!2779894 () Bool)

(assert (=> d!1361145 (=> res!1851810 e!2779894)))

(assert (=> d!1361145 (= res!1851810 (is-Nil!50253 lt!1654352))))

(assert (=> d!1361145 (= (forall!9961 lt!1654352 lambda!162334) e!2779894)))

(declare-fun b!4464306 () Bool)

(declare-fun e!2779895 () Bool)

(assert (=> b!4464306 (= e!2779894 e!2779895)))

(declare-fun res!1851811 () Bool)

(assert (=> b!4464306 (=> (not res!1851811) (not e!2779895))))

(assert (=> b!4464306 (= res!1851811 (dynLambda!20995 lambda!162334 (h!56006 lt!1654352)))))

(declare-fun b!4464307 () Bool)

(assert (=> b!4464307 (= e!2779895 (forall!9961 (t!357327 lt!1654352) lambda!162334))))

(assert (= (and d!1361145 (not res!1851810)) b!4464306))

(assert (= (and b!4464306 res!1851811) b!4464307))

(declare-fun b_lambda!147933 () Bool)

(assert (=> (not b_lambda!147933) (not b!4464306)))

(declare-fun m!5168135 () Bool)

(assert (=> b!4464306 m!5168135))

(declare-fun m!5168137 () Bool)

(assert (=> b!4464307 m!5168137))

(assert (=> b!4464097 d!1361145))

(declare-fun b!4464308 () Bool)

(declare-fun e!2779897 () Unit!87091)

(declare-fun lt!1654512 () Unit!87091)

(assert (=> b!4464308 (= e!2779897 lt!1654512)))

(declare-fun lt!1654511 () Unit!87091)

(assert (=> b!4464308 (= lt!1654511 (lemmaContainsKeyImpliesGetValueByKeyDefined!795 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(assert (=> b!4464308 (isDefined!8192 (getValueByKey!891 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(declare-fun lt!1654517 () Unit!87091)

(assert (=> b!4464308 (= lt!1654517 lt!1654511)))

(assert (=> b!4464308 (= lt!1654512 (lemmaInListThenGetKeysListContains!360 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(declare-fun call!310759 () Bool)

(assert (=> b!4464308 call!310759))

(declare-fun b!4464309 () Bool)

(declare-fun e!2779896 () Bool)

(assert (=> b!4464309 (= e!2779896 (not (contains!12790 (keys!17341 (extractMap!1069 (toList!4033 lm!1477))) key!3287)))))

(declare-fun b!4464310 () Bool)

(declare-fun e!2779898 () List!50380)

(assert (=> b!4464310 (= e!2779898 (keys!17341 (extractMap!1069 (toList!4033 lm!1477))))))

(declare-fun b!4464311 () Bool)

(assert (=> b!4464311 (= e!2779898 (getKeysList!364 (toList!4034 (extractMap!1069 (toList!4033 lm!1477)))))))

(declare-fun b!4464312 () Bool)

(declare-fun e!2779899 () Unit!87091)

(assert (=> b!4464312 (= e!2779897 e!2779899)))

(declare-fun c!759719 () Bool)

(assert (=> b!4464312 (= c!759719 call!310759)))

(declare-fun b!4464313 () Bool)

(assert (=> b!4464313 false))

(declare-fun lt!1654515 () Unit!87091)

(declare-fun lt!1654516 () Unit!87091)

(assert (=> b!4464313 (= lt!1654515 lt!1654516)))

(assert (=> b!4464313 (containsKey!1440 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287)))

(assert (=> b!4464313 (= lt!1654516 (lemmaInGetKeysListThenContainsKey!363 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(declare-fun Unit!87102 () Unit!87091)

(assert (=> b!4464313 (= e!2779899 Unit!87102)))

(declare-fun d!1361147 () Bool)

(declare-fun e!2779901 () Bool)

(assert (=> d!1361147 e!2779901))

(declare-fun res!1851814 () Bool)

(assert (=> d!1361147 (=> res!1851814 e!2779901)))

(assert (=> d!1361147 (= res!1851814 e!2779896)))

(declare-fun res!1851812 () Bool)

(assert (=> d!1361147 (=> (not res!1851812) (not e!2779896))))

(declare-fun lt!1654513 () Bool)

(assert (=> d!1361147 (= res!1851812 (not lt!1654513))))

(declare-fun lt!1654514 () Bool)

(assert (=> d!1361147 (= lt!1654513 lt!1654514)))

(declare-fun lt!1654518 () Unit!87091)

(assert (=> d!1361147 (= lt!1654518 e!2779897)))

(declare-fun c!759718 () Bool)

(assert (=> d!1361147 (= c!759718 lt!1654514)))

(assert (=> d!1361147 (= lt!1654514 (containsKey!1440 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(assert (=> d!1361147 (= (contains!12786 (extractMap!1069 (toList!4033 lm!1477)) key!3287) lt!1654513)))

(declare-fun b!4464314 () Bool)

(declare-fun Unit!87103 () Unit!87091)

(assert (=> b!4464314 (= e!2779899 Unit!87103)))

(declare-fun b!4464315 () Bool)

(declare-fun e!2779900 () Bool)

(assert (=> b!4464315 (= e!2779901 e!2779900)))

(declare-fun res!1851813 () Bool)

(assert (=> b!4464315 (=> (not res!1851813) (not e!2779900))))

(assert (=> b!4464315 (= res!1851813 (isDefined!8192 (getValueByKey!891 (toList!4034 (extractMap!1069 (toList!4033 lm!1477))) key!3287)))))

(declare-fun b!4464316 () Bool)

(assert (=> b!4464316 (= e!2779900 (contains!12790 (keys!17341 (extractMap!1069 (toList!4033 lm!1477))) key!3287))))

(declare-fun bm!310754 () Bool)

(assert (=> bm!310754 (= call!310759 (contains!12790 e!2779898 key!3287))))

(declare-fun c!759720 () Bool)

(assert (=> bm!310754 (= c!759720 c!759718)))

(assert (= (and d!1361147 c!759718) b!4464308))

(assert (= (and d!1361147 (not c!759718)) b!4464312))

(assert (= (and b!4464312 c!759719) b!4464313))

(assert (= (and b!4464312 (not c!759719)) b!4464314))

(assert (= (or b!4464308 b!4464312) bm!310754))

(assert (= (and bm!310754 c!759720) b!4464311))

(assert (= (and bm!310754 (not c!759720)) b!4464310))

(assert (= (and d!1361147 res!1851812) b!4464309))

(assert (= (and d!1361147 (not res!1851814)) b!4464315))

(assert (= (and b!4464315 res!1851813) b!4464316))

(assert (=> b!4464309 m!5167877))

(declare-fun m!5168139 () Bool)

(assert (=> b!4464309 m!5168139))

(assert (=> b!4464309 m!5168139))

(declare-fun m!5168141 () Bool)

(assert (=> b!4464309 m!5168141))

(declare-fun m!5168143 () Bool)

(assert (=> d!1361147 m!5168143))

(declare-fun m!5168145 () Bool)

(assert (=> b!4464311 m!5168145))

(declare-fun m!5168147 () Bool)

(assert (=> b!4464308 m!5168147))

(declare-fun m!5168149 () Bool)

(assert (=> b!4464308 m!5168149))

(assert (=> b!4464308 m!5168149))

(declare-fun m!5168151 () Bool)

(assert (=> b!4464308 m!5168151))

(declare-fun m!5168153 () Bool)

(assert (=> b!4464308 m!5168153))

(assert (=> b!4464313 m!5168143))

(declare-fun m!5168155 () Bool)

(assert (=> b!4464313 m!5168155))

(assert (=> b!4464310 m!5167877))

(assert (=> b!4464310 m!5168139))

(assert (=> b!4464315 m!5168149))

(assert (=> b!4464315 m!5168149))

(assert (=> b!4464315 m!5168151))

(declare-fun m!5168157 () Bool)

(assert (=> bm!310754 m!5168157))

(assert (=> b!4464316 m!5167877))

(assert (=> b!4464316 m!5168139))

(assert (=> b!4464316 m!5168139))

(assert (=> b!4464316 m!5168141))

(assert (=> b!4464098 d!1361147))

(declare-fun bs!792340 () Bool)

(declare-fun d!1361149 () Bool)

(assert (= bs!792340 (and d!1361149 start!438010)))

(declare-fun lambda!162368 () Int)

(assert (=> bs!792340 (= lambda!162368 lambda!162334)))

(declare-fun bs!792341 () Bool)

(assert (= bs!792341 (and d!1361149 d!1361135)))

(assert (=> bs!792341 (= lambda!162368 lambda!162367)))

(declare-fun bs!792342 () Bool)

(assert (= bs!792342 (and d!1361149 d!1361131)))

(assert (=> bs!792342 (not (= lambda!162368 lambda!162364))))

(declare-fun bs!792343 () Bool)

(assert (= bs!792343 (and d!1361149 d!1361105)))

(assert (=> bs!792343 (= lambda!162368 lambda!162350)))

(declare-fun bs!792344 () Bool)

(assert (= bs!792344 (and d!1361149 d!1361125)))

(assert (=> bs!792344 (= lambda!162368 lambda!162357)))

(declare-fun bs!792345 () Bool)

(assert (= bs!792345 (and d!1361149 d!1361121)))

(assert (=> bs!792345 (= lambda!162368 lambda!162356)))

(declare-fun bs!792346 () Bool)

(assert (= bs!792346 (and d!1361149 d!1361089)))

(assert (=> bs!792346 (= lambda!162368 lambda!162347)))

(declare-fun bs!792347 () Bool)

(assert (= bs!792347 (and d!1361149 d!1361127)))

(assert (=> bs!792347 (= lambda!162368 lambda!162358)))

(declare-fun lt!1654519 () ListMap!3295)

(assert (=> d!1361149 (invariantList!916 (toList!4034 lt!1654519))))

(declare-fun e!2779902 () ListMap!3295)

(assert (=> d!1361149 (= lt!1654519 e!2779902)))

(declare-fun c!759721 () Bool)

(assert (=> d!1361149 (= c!759721 (is-Cons!50253 (toList!4033 lm!1477)))))

(assert (=> d!1361149 (forall!9961 (toList!4033 lm!1477) lambda!162368)))

(assert (=> d!1361149 (= (extractMap!1069 (toList!4033 lm!1477)) lt!1654519)))

(declare-fun b!4464317 () Bool)

(assert (=> b!4464317 (= e!2779902 (addToMapMapFromBucket!578 (_2!28538 (h!56006 (toList!4033 lm!1477))) (extractMap!1069 (t!357327 (toList!4033 lm!1477)))))))

(declare-fun b!4464318 () Bool)

(assert (=> b!4464318 (= e!2779902 (ListMap!3296 Nil!50252))))

(assert (= (and d!1361149 c!759721) b!4464317))

(assert (= (and d!1361149 (not c!759721)) b!4464318))

(declare-fun m!5168159 () Bool)

(assert (=> d!1361149 m!5168159))

(declare-fun m!5168161 () Bool)

(assert (=> d!1361149 m!5168161))

(declare-fun m!5168163 () Bool)

(assert (=> b!4464317 m!5168163))

(assert (=> b!4464317 m!5168163))

(declare-fun m!5168165 () Bool)

(assert (=> b!4464317 m!5168165))

(assert (=> b!4464098 d!1361149))

(declare-fun tp!1336054 () Bool)

(declare-fun e!2779905 () Bool)

(declare-fun b!4464323 () Bool)

(assert (=> b!4464323 (= e!2779905 (and tp_is_empty!27329 tp_is_empty!27331 tp!1336054))))

(assert (=> b!4464095 (= tp!1336044 e!2779905)))

(assert (= (and b!4464095 (is-Cons!50252 (t!357326 newBucket!178))) b!4464323))

(declare-fun b!4464328 () Bool)

(declare-fun e!2779908 () Bool)

(declare-fun tp!1336059 () Bool)

(declare-fun tp!1336060 () Bool)

(assert (=> b!4464328 (= e!2779908 (and tp!1336059 tp!1336060))))

(assert (=> b!4464093 (= tp!1336045 e!2779908)))

(assert (= (and b!4464093 (is-Cons!50253 (toList!4033 lm!1477))) b!4464328))

(declare-fun b_lambda!147935 () Bool)

(assert (= b_lambda!147933 (or start!438010 b_lambda!147935)))

(declare-fun bs!792348 () Bool)

(declare-fun d!1361151 () Bool)

(assert (= bs!792348 (and d!1361151 start!438010)))

(assert (=> bs!792348 (= (dynLambda!20995 lambda!162334 (h!56006 lt!1654352)) (noDuplicateKeys!1013 (_2!28538 (h!56006 lt!1654352))))))

(declare-fun m!5168167 () Bool)

(assert (=> bs!792348 m!5168167))

(assert (=> b!4464306 d!1361151))

(declare-fun b_lambda!147937 () Bool)

(assert (= b_lambda!147925 (or start!438010 b_lambda!147937)))

(declare-fun bs!792349 () Bool)

(declare-fun d!1361153 () Bool)

(assert (= bs!792349 (and d!1361153 start!438010)))

(assert (=> bs!792349 (= (dynLambda!20995 lambda!162334 lt!1654355) (noDuplicateKeys!1013 (_2!28538 lt!1654355)))))

(declare-fun m!5168169 () Bool)

(assert (=> bs!792349 m!5168169))

(assert (=> d!1361097 d!1361153))

(declare-fun b_lambda!147939 () Bool)

(assert (= b_lambda!147931 (or start!438010 b_lambda!147939)))

(declare-fun bs!792350 () Bool)

(declare-fun d!1361155 () Bool)

(assert (= bs!792350 (and d!1361155 start!438010)))

(assert (=> bs!792350 (= (dynLambda!20995 lambda!162334 (h!56006 (toList!4033 lm!1477))) (noDuplicateKeys!1013 (_2!28538 (h!56006 (toList!4033 lm!1477)))))))

(assert (=> bs!792350 m!5168023))

(assert (=> b!4464304 d!1361155))

(push 1)

(assert (not b!4464310))

(assert (not b!4464157))

(assert (not d!1361103))

(assert tp_is_empty!27331)

(assert (not b!4464178))

(assert (not b!4464262))

(assert (not b!4464288))

(assert (not d!1361095))

(assert (not d!1361147))

(assert (not d!1361091))

(assert (not b!4464313))

(assert (not d!1361105))

(assert (not d!1361081))

(assert (not d!1361121))

(assert (not d!1361131))

(assert (not bm!310754))

(assert (not b!4464268))

(assert (not b!4464307))

(assert (not b!4464260))

(assert (not d!1361083))

(assert (not b!4464308))

(assert (not d!1361125))

(assert (not b_lambda!147939))

(assert (not b!4464315))

(assert (not b_lambda!147937))

(assert (not b!4464257))

(assert (not d!1361119))

(assert (not b!4464264))

(assert (not bs!792348))

(assert (not d!1361101))

(assert (not d!1361089))

(assert (not b!4464287))

(assert (not b!4464265))

(assert (not d!1361143))

(assert (not b!4464211))

(assert (not b!4464169))

(assert (not d!1361115))

(assert (not d!1361109))

(assert (not d!1361127))

(assert (not b!4464275))

(assert (not bm!310753))

(assert (not b!4464198))

(assert (not b!4464309))

(assert (not b!4464210))

(assert (not b!4464277))

(assert tp_is_empty!27329)

(assert (not b!4464316))

(assert (not b!4464305))

(assert (not b!4464317))

(assert (not d!1361107))

(assert (not b!4464176))

(assert (not bs!792349))

(assert (not b_lambda!147935))

(assert (not b!4464166))

(assert (not d!1361113))

(assert (not b!4464328))

(assert (not b!4464259))

(assert (not b!4464204))

(assert (not b!4464258))

(assert (not b!4464311))

(assert (not b!4464323))

(assert (not b!4464181))

(assert (not b!4464187))

(assert (not d!1361149))

(assert (not d!1361135))

(assert (not bs!792350))

(assert (not b!4464164))

(assert (not d!1361093))

(assert (not d!1361097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

