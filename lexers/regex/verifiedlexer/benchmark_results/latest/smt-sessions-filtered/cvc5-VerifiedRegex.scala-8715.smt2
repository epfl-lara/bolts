; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!464942 () Bool)

(assert start!464942)

(declare-fun b!4631727 () Bool)

(declare-fun e!2889341 () Bool)

(declare-fun e!2889331 () Bool)

(assert (=> b!4631727 (= e!2889341 e!2889331)))

(declare-fun res!1943378 () Bool)

(assert (=> b!4631727 (=> res!1943378 e!2889331)))

(declare-datatypes ((K!12978 0))(
  ( (K!12979 (val!18653 Int)) )
))
(declare-datatypes ((V!13224 0))(
  ( (V!13225 (val!18654 Int)) )
))
(declare-datatypes ((tuple2!52570 0))(
  ( (tuple2!52571 (_1!29579 K!12978) (_2!29579 V!13224)) )
))
(declare-datatypes ((List!51732 0))(
  ( (Nil!51608) (Cons!51608 (h!57682 tuple2!52570) (t!358788 List!51732)) )
))
(declare-datatypes ((ListMap!4331 0))(
  ( (ListMap!4332 (toList!5027 List!51732)) )
))
(declare-fun lt!1792317 () ListMap!4331)

(declare-fun lt!1792310 () ListMap!4331)

(assert (=> b!4631727 (= res!1943378 (not (= lt!1792317 lt!1792310)))))

(declare-fun lt!1792311 () ListMap!4331)

(declare-fun oldBucket!40 () List!51732)

(declare-fun +!1897 (ListMap!4331 tuple2!52570) ListMap!4331)

(assert (=> b!4631727 (= lt!1792310 (+!1897 lt!1792311 (h!57682 oldBucket!40)))))

(declare-fun lt!1792302 () ListMap!4331)

(declare-fun key!4968 () K!12978)

(declare-fun -!571 (ListMap!4331 K!12978) ListMap!4331)

(assert (=> b!4631727 (= lt!1792317 (-!571 lt!1792302 key!4968))))

(declare-fun lt!1792293 () ListMap!4331)

(assert (=> b!4631727 (= lt!1792302 (+!1897 lt!1792293 (h!57682 oldBucket!40)))))

(assert (=> b!4631727 (= (-!571 (+!1897 lt!1792293 (h!57682 oldBucket!40)) key!4968) (+!1897 lt!1792311 (h!57682 oldBucket!40)))))

(declare-datatypes ((Unit!113502 0))(
  ( (Unit!113503) )
))
(declare-fun lt!1792301 () Unit!113502)

(declare-fun addRemoveCommutativeForDiffKeys!26 (ListMap!4331 K!12978 V!13224 K!12978) Unit!113502)

(assert (=> b!4631727 (= lt!1792301 (addRemoveCommutativeForDiffKeys!26 lt!1792293 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40)) key!4968))))

(declare-fun lt!1792303 () ListMap!4331)

(declare-fun eq!846 (ListMap!4331 ListMap!4331) Bool)

(assert (=> b!4631727 (eq!846 lt!1792303 lt!1792311)))

(assert (=> b!4631727 (= lt!1792311 (-!571 lt!1792293 key!4968))))

(declare-datatypes ((Hashable!5928 0))(
  ( (HashableExt!5927 (__x!31631 Int)) )
))
(declare-fun hashF!1389 () Hashable!5928)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1792304 () Unit!113502)

(declare-fun lt!1792322 () List!51732)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!133 ((_ BitVec 64) List!51732 List!51732 K!12978 Hashable!5928) Unit!113502)

(assert (=> b!4631727 (= lt!1792304 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!133 hash!414 (t!358788 oldBucket!40) lt!1792322 key!4968 hashF!1389))))

(declare-fun b!4631729 () Bool)

(declare-fun res!1943377 () Bool)

(declare-fun e!2889329 () Bool)

(assert (=> b!4631729 (=> res!1943377 e!2889329)))

(declare-fun lt!1792320 () ListMap!4331)

(assert (=> b!4631729 (= res!1943377 (not (eq!846 lt!1792320 (+!1897 lt!1792303 (h!57682 oldBucket!40)))))))

(declare-fun b!4631730 () Bool)

(declare-fun res!1943380 () Bool)

(declare-fun e!2889330 () Bool)

(assert (=> b!4631730 (=> (not res!1943380) (not e!2889330))))

(declare-fun allKeysSameHash!1385 (List!51732 (_ BitVec 64) Hashable!5928) Bool)

(assert (=> b!4631730 (= res!1943380 (allKeysSameHash!1385 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4631731 () Bool)

(declare-datatypes ((tuple2!52572 0))(
  ( (tuple2!52573 (_1!29580 (_ BitVec 64)) (_2!29580 List!51732)) )
))
(declare-datatypes ((List!51733 0))(
  ( (Nil!51609) (Cons!51609 (h!57683 tuple2!52572) (t!358789 List!51733)) )
))
(declare-fun lt!1792292 () List!51733)

(declare-fun lambda!193843 () Int)

(declare-fun forall!10869 (List!51733 Int) Bool)

(assert (=> b!4631731 (= e!2889329 (forall!10869 lt!1792292 lambda!193843))))

(declare-fun b!4631732 () Bool)

(declare-fun e!2889340 () Bool)

(declare-fun e!2889333 () Bool)

(assert (=> b!4631732 (= e!2889340 e!2889333)))

(declare-fun res!1943381 () Bool)

(assert (=> b!4631732 (=> res!1943381 e!2889333)))

(declare-fun lt!1792295 () List!51732)

(declare-fun removePairForKey!1154 (List!51732 K!12978) List!51732)

(assert (=> b!4631732 (= res!1943381 (not (= (removePairForKey!1154 lt!1792295 key!4968) lt!1792322)))))

(declare-fun newBucket!224 () List!51732)

(declare-fun tail!8166 (List!51732) List!51732)

(assert (=> b!4631732 (= lt!1792322 (tail!8166 newBucket!224))))

(assert (=> b!4631732 (= lt!1792295 (tail!8166 oldBucket!40))))

(declare-fun b!4631733 () Bool)

(declare-fun tp_is_empty!29419 () Bool)

(declare-fun tp!1342352 () Bool)

(declare-fun tp_is_empty!29417 () Bool)

(declare-fun e!2889338 () Bool)

(assert (=> b!4631733 (= e!2889338 (and tp_is_empty!29417 tp_is_empty!29419 tp!1342352))))

(declare-fun b!4631734 () Bool)

(declare-fun res!1943385 () Bool)

(assert (=> b!4631734 (=> (not res!1943385) (not e!2889330))))

(declare-fun noDuplicateKeys!1531 (List!51732) Bool)

(assert (=> b!4631734 (= res!1943385 (noDuplicateKeys!1531 newBucket!224))))

(declare-fun b!4631735 () Bool)

(declare-fun e!2889332 () Bool)

(assert (=> b!4631735 (= e!2889330 e!2889332)))

(declare-fun res!1943388 () Bool)

(assert (=> b!4631735 (=> (not res!1943388) (not e!2889332))))

(declare-fun lt!1792315 () ListMap!4331)

(declare-fun contains!14700 (ListMap!4331 K!12978) Bool)

(assert (=> b!4631735 (= res!1943388 (contains!14700 lt!1792315 key!4968))))

(declare-fun lt!1792299 () List!51733)

(declare-fun extractMap!1587 (List!51733) ListMap!4331)

(assert (=> b!4631735 (= lt!1792315 (extractMap!1587 lt!1792299))))

(assert (=> b!4631735 (= lt!1792299 (Cons!51609 (tuple2!52573 hash!414 oldBucket!40) Nil!51609))))

(declare-fun b!4631736 () Bool)

(declare-fun e!2889334 () Bool)

(declare-fun lt!1792316 () ListMap!4331)

(assert (=> b!4631736 (= e!2889334 (= lt!1792316 (ListMap!4332 Nil!51608)))))

(declare-fun b!4631737 () Bool)

(declare-fun res!1943379 () Bool)

(assert (=> b!4631737 (=> res!1943379 e!2889329)))

(declare-fun lt!1792298 () tuple2!52570)

(assert (=> b!4631737 (= res!1943379 (not (= lt!1792298 (h!57682 oldBucket!40))))))

(declare-fun b!4631738 () Bool)

(declare-fun res!1943375 () Bool)

(assert (=> b!4631738 (=> res!1943375 e!2889333)))

(assert (=> b!4631738 (= res!1943375 (not (= (removePairForKey!1154 (t!358788 oldBucket!40) key!4968) lt!1792322)))))

(declare-fun b!4631739 () Bool)

(declare-fun e!2889336 () Bool)

(assert (=> b!4631739 (= e!2889332 e!2889336)))

(declare-fun res!1943389 () Bool)

(assert (=> b!4631739 (=> (not res!1943389) (not e!2889336))))

(declare-fun lt!1792312 () (_ BitVec 64))

(assert (=> b!4631739 (= res!1943389 (= lt!1792312 hash!414))))

(declare-fun hash!3571 (Hashable!5928 K!12978) (_ BitVec 64))

(assert (=> b!4631739 (= lt!1792312 (hash!3571 hashF!1389 key!4968))))

(declare-fun b!4631728 () Bool)

(declare-fun e!2889339 () Bool)

(assert (=> b!4631728 (= e!2889339 e!2889340)))

(declare-fun res!1943392 () Bool)

(assert (=> b!4631728 (=> res!1943392 e!2889340)))

(declare-fun containsKey!2519 (List!51732 K!12978) Bool)

(assert (=> b!4631728 (= res!1943392 (not (containsKey!2519 (t!358788 oldBucket!40) key!4968)))))

(assert (=> b!4631728 (containsKey!2519 oldBucket!40 key!4968)))

(declare-fun lt!1792296 () Unit!113502)

(declare-fun lemmaGetPairDefinedThenContainsKey!77 (List!51732 K!12978 Hashable!5928) Unit!113502)

(assert (=> b!4631728 (= lt!1792296 (lemmaGetPairDefinedThenContainsKey!77 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1792309 () List!51732)

(declare-datatypes ((Option!11661 0))(
  ( (None!11660) (Some!11660 (v!45834 tuple2!52570)) )
))
(declare-fun isDefined!8926 (Option!11661) Bool)

(declare-fun getPair!323 (List!51732 K!12978) Option!11661)

(assert (=> b!4631728 (isDefined!8926 (getPair!323 lt!1792309 key!4968))))

(declare-fun lt!1792321 () Unit!113502)

(declare-fun lt!1792308 () tuple2!52572)

(declare-fun forallContained!3099 (List!51733 Int tuple2!52572) Unit!113502)

(assert (=> b!4631728 (= lt!1792321 (forallContained!3099 lt!1792299 lambda!193843 lt!1792308))))

(declare-fun contains!14701 (List!51733 tuple2!52572) Bool)

(assert (=> b!4631728 (contains!14701 lt!1792299 lt!1792308)))

(assert (=> b!4631728 (= lt!1792308 (tuple2!52573 lt!1792312 lt!1792309))))

(declare-datatypes ((ListLongMap!3617 0))(
  ( (ListLongMap!3618 (toList!5028 List!51733)) )
))
(declare-fun lt!1792305 () ListLongMap!3617)

(declare-fun lt!1792294 () Unit!113502)

(declare-fun lemmaGetValueImpliesTupleContained!128 (ListLongMap!3617 (_ BitVec 64) List!51732) Unit!113502)

(assert (=> b!4631728 (= lt!1792294 (lemmaGetValueImpliesTupleContained!128 lt!1792305 lt!1792312 lt!1792309))))

(declare-fun apply!12196 (ListLongMap!3617 (_ BitVec 64)) List!51732)

(assert (=> b!4631728 (= lt!1792309 (apply!12196 lt!1792305 lt!1792312))))

(declare-fun contains!14702 (ListLongMap!3617 (_ BitVec 64)) Bool)

(assert (=> b!4631728 (contains!14702 lt!1792305 lt!1792312)))

(declare-fun lt!1792314 () Unit!113502)

(declare-fun lemmaInGenMapThenLongMapContainsHash!529 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> b!4631728 (= lt!1792314 (lemmaInGenMapThenLongMapContainsHash!529 lt!1792305 key!4968 hashF!1389))))

(declare-fun lt!1792306 () Unit!113502)

(declare-fun lemmaInGenMapThenGetPairDefined!119 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> b!4631728 (= lt!1792306 (lemmaInGenMapThenGetPairDefined!119 lt!1792305 key!4968 hashF!1389))))

(assert (=> b!4631728 (= lt!1792305 (ListLongMap!3618 lt!1792299))))

(declare-fun res!1943391 () Bool)

(assert (=> start!464942 (=> (not res!1943391) (not e!2889330))))

(assert (=> start!464942 (= res!1943391 (noDuplicateKeys!1531 oldBucket!40))))

(assert (=> start!464942 e!2889330))

(assert (=> start!464942 true))

(declare-fun e!2889337 () Bool)

(assert (=> start!464942 e!2889337))

(assert (=> start!464942 tp_is_empty!29417))

(assert (=> start!464942 e!2889338))

(declare-fun b!4631740 () Bool)

(declare-fun e!2889335 () Bool)

(assert (=> b!4631740 (= e!2889335 e!2889341)))

(declare-fun res!1943386 () Bool)

(assert (=> b!4631740 (=> res!1943386 e!2889341)))

(assert (=> b!4631740 (= res!1943386 (not (eq!846 lt!1792320 (+!1897 lt!1792303 lt!1792298))))))

(assert (=> b!4631740 (= lt!1792303 (extractMap!1587 lt!1792292))))

(assert (=> b!4631740 (= lt!1792292 (Cons!51609 (tuple2!52573 hash!414 lt!1792322) Nil!51609))))

(assert (=> b!4631740 (= lt!1792320 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609)))))

(declare-fun b!4631741 () Bool)

(assert (=> b!4631741 (= e!2889331 e!2889329)))

(declare-fun res!1943387 () Bool)

(assert (=> b!4631741 (=> res!1943387 e!2889329)))

(declare-fun lt!1792297 () ListMap!4331)

(assert (=> b!4631741 (= res!1943387 (not (eq!846 lt!1792297 lt!1792310)))))

(assert (=> b!4631741 (eq!846 lt!1792317 lt!1792297)))

(assert (=> b!4631741 (= lt!1792297 (-!571 lt!1792315 key!4968))))

(declare-fun lt!1792318 () Unit!113502)

(declare-fun lemmaRemovePreservesEq!27 (ListMap!4331 ListMap!4331 K!12978) Unit!113502)

(assert (=> b!4631741 (= lt!1792318 (lemmaRemovePreservesEq!27 lt!1792302 lt!1792315 key!4968))))

(declare-fun b!4631742 () Bool)

(declare-fun res!1943384 () Bool)

(assert (=> b!4631742 (=> (not res!1943384) (not e!2889336))))

(assert (=> b!4631742 (= res!1943384 (allKeysSameHash!1385 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4631743 () Bool)

(declare-fun res!1943390 () Bool)

(assert (=> b!4631743 (=> (not res!1943390) (not e!2889330))))

(assert (=> b!4631743 (= res!1943390 (= (removePairForKey!1154 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1342353 () Bool)

(declare-fun b!4631744 () Bool)

(assert (=> b!4631744 (= e!2889337 (and tp_is_empty!29417 tp_is_empty!29419 tp!1342353))))

(declare-fun b!4631745 () Bool)

(assert (=> b!4631745 (= e!2889333 e!2889335)))

(declare-fun res!1943382 () Bool)

(assert (=> b!4631745 (=> res!1943382 e!2889335)))

(assert (=> b!4631745 (= res!1943382 (not (eq!846 lt!1792315 (+!1897 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)) (h!57682 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!992 (List!51732 ListMap!4331) ListMap!4331)

(assert (=> b!4631745 (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792298 lt!1792322) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792298))))

(declare-fun lt!1792323 () Unit!113502)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!97 (tuple2!52570 List!51732 ListMap!4331) Unit!113502)

(assert (=> b!4631745 (= lt!1792323 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!97 lt!1792298 lt!1792322 (ListMap!4332 Nil!51608)))))

(declare-fun head!9665 (List!51732) tuple2!52570)

(assert (=> b!4631745 (= lt!1792298 (head!9665 newBucket!224))))

(declare-fun lt!1792307 () tuple2!52570)

(assert (=> b!4631745 (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792307 lt!1792295) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792307))))

(declare-fun lt!1792313 () Unit!113502)

(assert (=> b!4631745 (= lt!1792313 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!97 lt!1792307 lt!1792295 (ListMap!4332 Nil!51608)))))

(assert (=> b!4631745 (= lt!1792307 (head!9665 oldBucket!40))))

(assert (=> b!4631745 (contains!14700 lt!1792293 key!4968)))

(declare-fun lt!1792300 () List!51733)

(assert (=> b!4631745 (= lt!1792293 (extractMap!1587 lt!1792300))))

(declare-fun lt!1792319 () Unit!113502)

(declare-fun lemmaListContainsThenExtractedMapContains!349 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> b!4631745 (= lt!1792319 (lemmaListContainsThenExtractedMapContains!349 (ListLongMap!3618 lt!1792300) key!4968 hashF!1389))))

(assert (=> b!4631745 (= lt!1792300 (Cons!51609 (tuple2!52573 hash!414 (t!358788 oldBucket!40)) Nil!51609))))

(declare-fun b!4631746 () Bool)

(assert (=> b!4631746 (= e!2889336 (not e!2889339))))

(declare-fun res!1943376 () Bool)

(assert (=> b!4631746 (=> res!1943376 e!2889339)))

(assert (=> b!4631746 (= res!1943376 (or (and (is-Cons!51608 oldBucket!40) (= (_1!29579 (h!57682 oldBucket!40)) key!4968)) (not (is-Cons!51608 oldBucket!40)) (= (_1!29579 (h!57682 oldBucket!40)) key!4968)))))

(assert (=> b!4631746 e!2889334))

(declare-fun res!1943383 () Bool)

(assert (=> b!4631746 (=> (not res!1943383) (not e!2889334))))

(assert (=> b!4631746 (= res!1943383 (= lt!1792315 (addToMapMapFromBucket!992 oldBucket!40 lt!1792316)))))

(assert (=> b!4631746 (= lt!1792316 (extractMap!1587 Nil!51609))))

(assert (=> b!4631746 true))

(assert (= (and start!464942 res!1943391) b!4631734))

(assert (= (and b!4631734 res!1943385) b!4631743))

(assert (= (and b!4631743 res!1943390) b!4631730))

(assert (= (and b!4631730 res!1943380) b!4631735))

(assert (= (and b!4631735 res!1943388) b!4631739))

(assert (= (and b!4631739 res!1943389) b!4631742))

(assert (= (and b!4631742 res!1943384) b!4631746))

(assert (= (and b!4631746 res!1943383) b!4631736))

(assert (= (and b!4631746 (not res!1943376)) b!4631728))

(assert (= (and b!4631728 (not res!1943392)) b!4631732))

(assert (= (and b!4631732 (not res!1943381)) b!4631738))

(assert (= (and b!4631738 (not res!1943375)) b!4631745))

(assert (= (and b!4631745 (not res!1943382)) b!4631740))

(assert (= (and b!4631740 (not res!1943386)) b!4631727))

(assert (= (and b!4631727 (not res!1943378)) b!4631741))

(assert (= (and b!4631741 (not res!1943387)) b!4631737))

(assert (= (and b!4631737 (not res!1943379)) b!4631729))

(assert (= (and b!4631729 (not res!1943377)) b!4631731))

(assert (= (and start!464942 (is-Cons!51608 oldBucket!40)) b!4631744))

(assert (= (and start!464942 (is-Cons!51608 newBucket!224)) b!4631733))

(declare-fun m!5482105 () Bool)

(assert (=> b!4631742 m!5482105))

(declare-fun m!5482107 () Bool)

(assert (=> b!4631738 m!5482107))

(declare-fun m!5482109 () Bool)

(assert (=> b!4631734 m!5482109))

(declare-fun m!5482111 () Bool)

(assert (=> b!4631746 m!5482111))

(declare-fun m!5482113 () Bool)

(assert (=> b!4631746 m!5482113))

(declare-fun m!5482115 () Bool)

(assert (=> b!4631727 m!5482115))

(declare-fun m!5482117 () Bool)

(assert (=> b!4631727 m!5482117))

(declare-fun m!5482119 () Bool)

(assert (=> b!4631727 m!5482119))

(declare-fun m!5482121 () Bool)

(assert (=> b!4631727 m!5482121))

(assert (=> b!4631727 m!5482115))

(declare-fun m!5482123 () Bool)

(assert (=> b!4631727 m!5482123))

(declare-fun m!5482125 () Bool)

(assert (=> b!4631727 m!5482125))

(declare-fun m!5482127 () Bool)

(assert (=> b!4631727 m!5482127))

(declare-fun m!5482129 () Bool)

(assert (=> b!4631727 m!5482129))

(declare-fun m!5482131 () Bool)

(assert (=> b!4631741 m!5482131))

(declare-fun m!5482133 () Bool)

(assert (=> b!4631741 m!5482133))

(declare-fun m!5482135 () Bool)

(assert (=> b!4631741 m!5482135))

(declare-fun m!5482137 () Bool)

(assert (=> b!4631741 m!5482137))

(declare-fun m!5482139 () Bool)

(assert (=> b!4631730 m!5482139))

(declare-fun m!5482141 () Bool)

(assert (=> b!4631731 m!5482141))

(declare-fun m!5482143 () Bool)

(assert (=> b!4631729 m!5482143))

(assert (=> b!4631729 m!5482143))

(declare-fun m!5482145 () Bool)

(assert (=> b!4631729 m!5482145))

(declare-fun m!5482147 () Bool)

(assert (=> start!464942 m!5482147))

(declare-fun m!5482149 () Bool)

(assert (=> b!4631740 m!5482149))

(assert (=> b!4631740 m!5482149))

(declare-fun m!5482151 () Bool)

(assert (=> b!4631740 m!5482151))

(declare-fun m!5482153 () Bool)

(assert (=> b!4631740 m!5482153))

(declare-fun m!5482155 () Bool)

(assert (=> b!4631740 m!5482155))

(declare-fun m!5482157 () Bool)

(assert (=> b!4631743 m!5482157))

(declare-fun m!5482159 () Bool)

(assert (=> b!4631728 m!5482159))

(declare-fun m!5482161 () Bool)

(assert (=> b!4631728 m!5482161))

(declare-fun m!5482163 () Bool)

(assert (=> b!4631728 m!5482163))

(declare-fun m!5482165 () Bool)

(assert (=> b!4631728 m!5482165))

(declare-fun m!5482167 () Bool)

(assert (=> b!4631728 m!5482167))

(declare-fun m!5482169 () Bool)

(assert (=> b!4631728 m!5482169))

(declare-fun m!5482171 () Bool)

(assert (=> b!4631728 m!5482171))

(declare-fun m!5482173 () Bool)

(assert (=> b!4631728 m!5482173))

(declare-fun m!5482175 () Bool)

(assert (=> b!4631728 m!5482175))

(declare-fun m!5482177 () Bool)

(assert (=> b!4631728 m!5482177))

(assert (=> b!4631728 m!5482171))

(declare-fun m!5482179 () Bool)

(assert (=> b!4631728 m!5482179))

(declare-fun m!5482181 () Bool)

(assert (=> b!4631728 m!5482181))

(declare-fun m!5482183 () Bool)

(assert (=> b!4631745 m!5482183))

(declare-fun m!5482185 () Bool)

(assert (=> b!4631745 m!5482185))

(declare-fun m!5482187 () Bool)

(assert (=> b!4631745 m!5482187))

(declare-fun m!5482189 () Bool)

(assert (=> b!4631745 m!5482189))

(declare-fun m!5482191 () Bool)

(assert (=> b!4631745 m!5482191))

(declare-fun m!5482193 () Bool)

(assert (=> b!4631745 m!5482193))

(declare-fun m!5482195 () Bool)

(assert (=> b!4631745 m!5482195))

(declare-fun m!5482197 () Bool)

(assert (=> b!4631745 m!5482197))

(declare-fun m!5482199 () Bool)

(assert (=> b!4631745 m!5482199))

(declare-fun m!5482201 () Bool)

(assert (=> b!4631745 m!5482201))

(declare-fun m!5482203 () Bool)

(assert (=> b!4631745 m!5482203))

(declare-fun m!5482205 () Bool)

(assert (=> b!4631745 m!5482205))

(declare-fun m!5482207 () Bool)

(assert (=> b!4631745 m!5482207))

(declare-fun m!5482209 () Bool)

(assert (=> b!4631745 m!5482209))

(declare-fun m!5482211 () Bool)

(assert (=> b!4631745 m!5482211))

(declare-fun m!5482213 () Bool)

(assert (=> b!4631745 m!5482213))

(declare-fun m!5482215 () Bool)

(assert (=> b!4631745 m!5482215))

(assert (=> b!4631745 m!5482189))

(assert (=> b!4631745 m!5482213))

(assert (=> b!4631745 m!5482203))

(assert (=> b!4631745 m!5482197))

(assert (=> b!4631745 m!5482211))

(assert (=> b!4631745 m!5482191))

(assert (=> b!4631745 m!5482185))

(assert (=> b!4631745 m!5482183))

(declare-fun m!5482217 () Bool)

(assert (=> b!4631745 m!5482217))

(declare-fun m!5482219 () Bool)

(assert (=> b!4631735 m!5482219))

(declare-fun m!5482221 () Bool)

(assert (=> b!4631735 m!5482221))

(declare-fun m!5482223 () Bool)

(assert (=> b!4631739 m!5482223))

(declare-fun m!5482225 () Bool)

(assert (=> b!4631732 m!5482225))

(declare-fun m!5482227 () Bool)

(assert (=> b!4631732 m!5482227))

(declare-fun m!5482229 () Bool)

(assert (=> b!4631732 m!5482229))

(push 1)

(assert (not b!4631728))

(assert (not b!4631730))

(assert tp_is_empty!29419)

(assert (not b!4631733))

(assert (not b!4631742))

(assert (not b!4631732))

(assert (not b!4631739))

(assert (not b!4631746))

(assert (not b!4631738))

(assert (not b!4631734))

(assert (not b!4631731))

(assert (not b!4631735))

(assert (not b!4631729))

(assert (not start!464942))

(assert (not b!4631727))

(assert (not b!4631740))

(assert tp_is_empty!29417)

(assert (not b!4631745))

(assert (not b!4631744))

(assert (not b!4631741))

(assert (not b!4631743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4631860 () Bool)

(assert (=> b!4631860 true))

(declare-fun bs!1028012 () Bool)

(declare-fun b!4631864 () Bool)

(assert (= bs!1028012 (and b!4631864 b!4631860)))

(declare-fun lambda!193883 () Int)

(declare-fun lambda!193882 () Int)

(assert (=> bs!1028012 (= lambda!193883 lambda!193882)))

(assert (=> b!4631864 true))

(declare-fun lt!1792500 () ListMap!4331)

(declare-fun lambda!193884 () Int)

(assert (=> bs!1028012 (= (= lt!1792500 lt!1792316) (= lambda!193884 lambda!193882))))

(assert (=> b!4631864 (= (= lt!1792500 lt!1792316) (= lambda!193884 lambda!193883))))

(assert (=> b!4631864 true))

(declare-fun bs!1028013 () Bool)

(declare-fun d!1459792 () Bool)

(assert (= bs!1028013 (and d!1459792 b!4631860)))

(declare-fun lt!1792498 () ListMap!4331)

(declare-fun lambda!193885 () Int)

(assert (=> bs!1028013 (= (= lt!1792498 lt!1792316) (= lambda!193885 lambda!193882))))

(declare-fun bs!1028014 () Bool)

(assert (= bs!1028014 (and d!1459792 b!4631864)))

(assert (=> bs!1028014 (= (= lt!1792498 lt!1792316) (= lambda!193885 lambda!193883))))

(assert (=> bs!1028014 (= (= lt!1792498 lt!1792500) (= lambda!193885 lambda!193884))))

(assert (=> d!1459792 true))

(declare-fun e!2889418 () ListMap!4331)

(assert (=> b!4631860 (= e!2889418 lt!1792316)))

(declare-fun lt!1792495 () Unit!113502)

(declare-fun call!323212 () Unit!113502)

(assert (=> b!4631860 (= lt!1792495 call!323212)))

(declare-fun call!323213 () Bool)

(assert (=> b!4631860 call!323213))

(declare-fun lt!1792505 () Unit!113502)

(assert (=> b!4631860 (= lt!1792505 lt!1792495)))

(declare-fun call!323211 () Bool)

(assert (=> b!4631860 call!323211))

(declare-fun lt!1792490 () Unit!113502)

(declare-fun Unit!113506 () Unit!113502)

(assert (=> b!4631860 (= lt!1792490 Unit!113506)))

(declare-fun b!4631861 () Bool)

(declare-fun e!2889417 () Bool)

(declare-fun invariantList!1227 (List!51732) Bool)

(assert (=> b!4631861 (= e!2889417 (invariantList!1227 (toList!5027 lt!1792498)))))

(declare-fun bm!323206 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!529 (ListMap!4331) Unit!113502)

(assert (=> bm!323206 (= call!323212 (lemmaContainsAllItsOwnKeys!529 lt!1792316))))

(declare-fun b!4631863 () Bool)

(declare-fun res!1943474 () Bool)

(assert (=> b!4631863 (=> (not res!1943474) (not e!2889417))))

(declare-fun forall!10871 (List!51732 Int) Bool)

(assert (=> b!4631863 (= res!1943474 (forall!10871 (toList!5027 lt!1792316) lambda!193885))))

(declare-fun c!792818 () Bool)

(declare-fun lt!1792493 () ListMap!4331)

(declare-fun bm!323207 () Bool)

(assert (=> bm!323207 (= call!323213 (forall!10871 (ite c!792818 (toList!5027 lt!1792316) (toList!5027 lt!1792493)) (ite c!792818 lambda!193882 lambda!193884)))))

(assert (=> d!1459792 e!2889417))

(declare-fun res!1943475 () Bool)

(assert (=> d!1459792 (=> (not res!1943475) (not e!2889417))))

(assert (=> d!1459792 (= res!1943475 (forall!10871 oldBucket!40 lambda!193885))))

(assert (=> d!1459792 (= lt!1792498 e!2889418)))

(assert (=> d!1459792 (= c!792818 (is-Nil!51608 oldBucket!40))))

(assert (=> d!1459792 (noDuplicateKeys!1531 oldBucket!40)))

(assert (=> d!1459792 (= (addToMapMapFromBucket!992 oldBucket!40 lt!1792316) lt!1792498)))

(declare-fun b!4631862 () Bool)

(declare-fun e!2889419 () Bool)

(assert (=> b!4631862 (= e!2889419 (forall!10871 (toList!5027 lt!1792316) lambda!193884))))

(declare-fun bm!323208 () Bool)

(assert (=> bm!323208 (= call!323211 (forall!10871 (toList!5027 lt!1792316) (ite c!792818 lambda!193882 lambda!193883)))))

(assert (=> b!4631864 (= e!2889418 lt!1792500)))

(assert (=> b!4631864 (= lt!1792493 (+!1897 lt!1792316 (h!57682 oldBucket!40)))))

(assert (=> b!4631864 (= lt!1792500 (addToMapMapFromBucket!992 (t!358788 oldBucket!40) (+!1897 lt!1792316 (h!57682 oldBucket!40))))))

(declare-fun lt!1792503 () Unit!113502)

(assert (=> b!4631864 (= lt!1792503 call!323212)))

(assert (=> b!4631864 call!323211))

(declare-fun lt!1792504 () Unit!113502)

(assert (=> b!4631864 (= lt!1792504 lt!1792503)))

(assert (=> b!4631864 (forall!10871 (toList!5027 lt!1792493) lambda!193884)))

(declare-fun lt!1792497 () Unit!113502)

(declare-fun Unit!113507 () Unit!113502)

(assert (=> b!4631864 (= lt!1792497 Unit!113507)))

(assert (=> b!4631864 (forall!10871 (t!358788 oldBucket!40) lambda!193884)))

(declare-fun lt!1792499 () Unit!113502)

(declare-fun Unit!113508 () Unit!113502)

(assert (=> b!4631864 (= lt!1792499 Unit!113508)))

(declare-fun lt!1792492 () Unit!113502)

(declare-fun Unit!113509 () Unit!113502)

(assert (=> b!4631864 (= lt!1792492 Unit!113509)))

(declare-fun lt!1792488 () Unit!113502)

(declare-fun forallContained!3101 (List!51732 Int tuple2!52570) Unit!113502)

(assert (=> b!4631864 (= lt!1792488 (forallContained!3101 (toList!5027 lt!1792493) lambda!193884 (h!57682 oldBucket!40)))))

(assert (=> b!4631864 (contains!14700 lt!1792493 (_1!29579 (h!57682 oldBucket!40)))))

(declare-fun lt!1792502 () Unit!113502)

(declare-fun Unit!113510 () Unit!113502)

(assert (=> b!4631864 (= lt!1792502 Unit!113510)))

(assert (=> b!4631864 (contains!14700 lt!1792500 (_1!29579 (h!57682 oldBucket!40)))))

(declare-fun lt!1792506 () Unit!113502)

(declare-fun Unit!113511 () Unit!113502)

(assert (=> b!4631864 (= lt!1792506 Unit!113511)))

(assert (=> b!4631864 (forall!10871 oldBucket!40 lambda!193884)))

(declare-fun lt!1792496 () Unit!113502)

(declare-fun Unit!113512 () Unit!113502)

(assert (=> b!4631864 (= lt!1792496 Unit!113512)))

(assert (=> b!4631864 call!323213))

(declare-fun lt!1792494 () Unit!113502)

(declare-fun Unit!113513 () Unit!113502)

(assert (=> b!4631864 (= lt!1792494 Unit!113513)))

(declare-fun lt!1792487 () Unit!113502)

(declare-fun Unit!113514 () Unit!113502)

(assert (=> b!4631864 (= lt!1792487 Unit!113514)))

(declare-fun lt!1792486 () Unit!113502)

(declare-fun addForallContainsKeyThenBeforeAdding!528 (ListMap!4331 ListMap!4331 K!12978 V!13224) Unit!113502)

(assert (=> b!4631864 (= lt!1792486 (addForallContainsKeyThenBeforeAdding!528 lt!1792316 lt!1792500 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> b!4631864 (forall!10871 (toList!5027 lt!1792316) lambda!193884)))

(declare-fun lt!1792491 () Unit!113502)

(assert (=> b!4631864 (= lt!1792491 lt!1792486)))

(assert (=> b!4631864 (forall!10871 (toList!5027 lt!1792316) lambda!193884)))

(declare-fun lt!1792501 () Unit!113502)

(declare-fun Unit!113515 () Unit!113502)

(assert (=> b!4631864 (= lt!1792501 Unit!113515)))

(declare-fun res!1943476 () Bool)

(assert (=> b!4631864 (= res!1943476 (forall!10871 oldBucket!40 lambda!193884))))

(assert (=> b!4631864 (=> (not res!1943476) (not e!2889419))))

(assert (=> b!4631864 e!2889419))

(declare-fun lt!1792489 () Unit!113502)

(declare-fun Unit!113516 () Unit!113502)

(assert (=> b!4631864 (= lt!1792489 Unit!113516)))

(assert (= (and d!1459792 c!792818) b!4631860))

(assert (= (and d!1459792 (not c!792818)) b!4631864))

(assert (= (and b!4631864 res!1943476) b!4631862))

(assert (= (or b!4631860 b!4631864) bm!323206))

(assert (= (or b!4631860 b!4631864) bm!323208))

(assert (= (or b!4631860 b!4631864) bm!323207))

(assert (= (and d!1459792 res!1943475) b!4631863))

(assert (= (and b!4631863 res!1943474) b!4631861))

(declare-fun m!5482389 () Bool)

(assert (=> bm!323208 m!5482389))

(declare-fun m!5482391 () Bool)

(assert (=> b!4631864 m!5482391))

(declare-fun m!5482393 () Bool)

(assert (=> b!4631864 m!5482393))

(declare-fun m!5482395 () Bool)

(assert (=> b!4631864 m!5482395))

(declare-fun m!5482397 () Bool)

(assert (=> b!4631864 m!5482397))

(declare-fun m!5482399 () Bool)

(assert (=> b!4631864 m!5482399))

(declare-fun m!5482401 () Bool)

(assert (=> b!4631864 m!5482401))

(assert (=> b!4631864 m!5482397))

(declare-fun m!5482403 () Bool)

(assert (=> b!4631864 m!5482403))

(declare-fun m!5482405 () Bool)

(assert (=> b!4631864 m!5482405))

(declare-fun m!5482407 () Bool)

(assert (=> b!4631864 m!5482407))

(assert (=> b!4631864 m!5482391))

(declare-fun m!5482409 () Bool)

(assert (=> b!4631864 m!5482409))

(assert (=> b!4631864 m!5482405))

(declare-fun m!5482411 () Bool)

(assert (=> bm!323206 m!5482411))

(declare-fun m!5482413 () Bool)

(assert (=> b!4631861 m!5482413))

(assert (=> b!4631862 m!5482405))

(declare-fun m!5482415 () Bool)

(assert (=> d!1459792 m!5482415))

(assert (=> d!1459792 m!5482147))

(declare-fun m!5482417 () Bool)

(assert (=> b!4631863 m!5482417))

(declare-fun m!5482419 () Bool)

(assert (=> bm!323207 m!5482419))

(assert (=> b!4631746 d!1459792))

(declare-fun bs!1028016 () Bool)

(declare-fun d!1459806 () Bool)

(assert (= bs!1028016 (and d!1459806 b!4631728)))

(declare-fun lambda!193889 () Int)

(assert (=> bs!1028016 (= lambda!193889 lambda!193843)))

(declare-fun lt!1792512 () ListMap!4331)

(assert (=> d!1459806 (invariantList!1227 (toList!5027 lt!1792512))))

(declare-fun e!2889425 () ListMap!4331)

(assert (=> d!1459806 (= lt!1792512 e!2889425)))

(declare-fun c!792824 () Bool)

(assert (=> d!1459806 (= c!792824 (is-Cons!51609 Nil!51609))))

(assert (=> d!1459806 (forall!10869 Nil!51609 lambda!193889)))

(assert (=> d!1459806 (= (extractMap!1587 Nil!51609) lt!1792512)))

(declare-fun b!4631877 () Bool)

(assert (=> b!4631877 (= e!2889425 (addToMapMapFromBucket!992 (_2!29580 (h!57683 Nil!51609)) (extractMap!1587 (t!358789 Nil!51609))))))

(declare-fun b!4631878 () Bool)

(assert (=> b!4631878 (= e!2889425 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459806 c!792824) b!4631877))

(assert (= (and d!1459806 (not c!792824)) b!4631878))

(declare-fun m!5482429 () Bool)

(assert (=> d!1459806 m!5482429))

(declare-fun m!5482431 () Bool)

(assert (=> d!1459806 m!5482431))

(declare-fun m!5482433 () Bool)

(assert (=> b!4631877 m!5482433))

(assert (=> b!4631877 m!5482433))

(declare-fun m!5482435 () Bool)

(assert (=> b!4631877 m!5482435))

(assert (=> b!4631746 d!1459806))

(declare-fun d!1459810 () Bool)

(declare-fun e!2889433 () Bool)

(assert (=> d!1459810 e!2889433))

(declare-fun res!1943487 () Bool)

(assert (=> d!1459810 (=> (not res!1943487) (not e!2889433))))

(declare-fun lt!1792527 () ListMap!4331)

(assert (=> d!1459810 (= res!1943487 (contains!14700 lt!1792527 (_1!29579 (h!57682 oldBucket!40))))))

(declare-fun lt!1792526 () List!51732)

(assert (=> d!1459810 (= lt!1792527 (ListMap!4332 lt!1792526))))

(declare-fun lt!1792529 () Unit!113502)

(declare-fun lt!1792528 () Unit!113502)

(assert (=> d!1459810 (= lt!1792529 lt!1792528)))

(declare-datatypes ((Option!11663 0))(
  ( (None!11662) (Some!11662 (v!45840 V!13224)) )
))
(declare-fun getValueByKey!1497 (List!51732 K!12978) Option!11663)

(assert (=> d!1459810 (= (getValueByKey!1497 lt!1792526 (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!871 (List!51732 K!12978 V!13224) Unit!113502)

(assert (=> d!1459810 (= lt!1792528 (lemmaContainsTupThenGetReturnValue!871 lt!1792526 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!379 (List!51732 K!12978 V!13224) List!51732)

(assert (=> d!1459810 (= lt!1792526 (insertNoDuplicatedKeys!379 (toList!5027 lt!1792311) (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459810 (= (+!1897 lt!1792311 (h!57682 oldBucket!40)) lt!1792527)))

(declare-fun b!4631888 () Bool)

(declare-fun res!1943486 () Bool)

(assert (=> b!4631888 (=> (not res!1943486) (not e!2889433))))

(assert (=> b!4631888 (= res!1943486 (= (getValueByKey!1497 (toList!5027 lt!1792527) (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40)))))))

(declare-fun b!4631889 () Bool)

(declare-fun contains!14706 (List!51732 tuple2!52570) Bool)

(assert (=> b!4631889 (= e!2889433 (contains!14706 (toList!5027 lt!1792527) (h!57682 oldBucket!40)))))

(assert (= (and d!1459810 res!1943487) b!4631888))

(assert (= (and b!4631888 res!1943486) b!4631889))

(declare-fun m!5482475 () Bool)

(assert (=> d!1459810 m!5482475))

(declare-fun m!5482477 () Bool)

(assert (=> d!1459810 m!5482477))

(declare-fun m!5482479 () Bool)

(assert (=> d!1459810 m!5482479))

(declare-fun m!5482481 () Bool)

(assert (=> d!1459810 m!5482481))

(declare-fun m!5482483 () Bool)

(assert (=> b!4631888 m!5482483))

(declare-fun m!5482485 () Bool)

(assert (=> b!4631889 m!5482485))

(assert (=> b!4631727 d!1459810))

(declare-fun d!1459818 () Bool)

(declare-fun e!2889436 () Bool)

(assert (=> d!1459818 e!2889436))

(declare-fun res!1943490 () Bool)

(assert (=> d!1459818 (=> (not res!1943490) (not e!2889436))))

(declare-fun lt!1792532 () ListMap!4331)

(assert (=> d!1459818 (= res!1943490 (not (contains!14700 lt!1792532 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!276 (List!51732 K!12978) List!51732)

(assert (=> d!1459818 (= lt!1792532 (ListMap!4332 (removePresrvNoDuplicatedKeys!276 (toList!5027 (+!1897 lt!1792293 (h!57682 oldBucket!40))) key!4968)))))

(assert (=> d!1459818 (= (-!571 (+!1897 lt!1792293 (h!57682 oldBucket!40)) key!4968) lt!1792532)))

(declare-fun b!4631892 () Bool)

(declare-datatypes ((List!51736 0))(
  ( (Nil!51612) (Cons!51612 (h!57688 K!12978) (t!358793 List!51736)) )
))
(declare-fun content!8866 (List!51736) (Set K!12978))

(declare-fun keys!18203 (ListMap!4331) List!51736)

(assert (=> b!4631892 (= e!2889436 (= (set.minus (content!8866 (keys!18203 (+!1897 lt!1792293 (h!57682 oldBucket!40)))) (set.insert key!4968 (as set.empty (Set K!12978)))) (content!8866 (keys!18203 lt!1792532))))))

(assert (= (and d!1459818 res!1943490) b!4631892))

(declare-fun m!5482487 () Bool)

(assert (=> d!1459818 m!5482487))

(declare-fun m!5482489 () Bool)

(assert (=> d!1459818 m!5482489))

(declare-fun m!5482491 () Bool)

(assert (=> b!4631892 m!5482491))

(declare-fun m!5482493 () Bool)

(assert (=> b!4631892 m!5482493))

(assert (=> b!4631892 m!5482491))

(declare-fun m!5482495 () Bool)

(assert (=> b!4631892 m!5482495))

(declare-fun m!5482497 () Bool)

(assert (=> b!4631892 m!5482497))

(declare-fun m!5482499 () Bool)

(assert (=> b!4631892 m!5482499))

(assert (=> b!4631892 m!5482115))

(assert (=> b!4631892 m!5482497))

(assert (=> b!4631727 d!1459818))

(declare-fun d!1459820 () Bool)

(declare-fun e!2889437 () Bool)

(assert (=> d!1459820 e!2889437))

(declare-fun res!1943492 () Bool)

(assert (=> d!1459820 (=> (not res!1943492) (not e!2889437))))

(declare-fun lt!1792534 () ListMap!4331)

(assert (=> d!1459820 (= res!1943492 (contains!14700 lt!1792534 (_1!29579 (h!57682 oldBucket!40))))))

(declare-fun lt!1792533 () List!51732)

(assert (=> d!1459820 (= lt!1792534 (ListMap!4332 lt!1792533))))

(declare-fun lt!1792536 () Unit!113502)

(declare-fun lt!1792535 () Unit!113502)

(assert (=> d!1459820 (= lt!1792536 lt!1792535)))

(assert (=> d!1459820 (= (getValueByKey!1497 lt!1792533 (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459820 (= lt!1792535 (lemmaContainsTupThenGetReturnValue!871 lt!1792533 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459820 (= lt!1792533 (insertNoDuplicatedKeys!379 (toList!5027 lt!1792293) (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459820 (= (+!1897 lt!1792293 (h!57682 oldBucket!40)) lt!1792534)))

(declare-fun b!4631893 () Bool)

(declare-fun res!1943491 () Bool)

(assert (=> b!4631893 (=> (not res!1943491) (not e!2889437))))

(assert (=> b!4631893 (= res!1943491 (= (getValueByKey!1497 (toList!5027 lt!1792534) (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40)))))))

(declare-fun b!4631894 () Bool)

(assert (=> b!4631894 (= e!2889437 (contains!14706 (toList!5027 lt!1792534) (h!57682 oldBucket!40)))))

(assert (= (and d!1459820 res!1943492) b!4631893))

(assert (= (and b!4631893 res!1943491) b!4631894))

(declare-fun m!5482501 () Bool)

(assert (=> d!1459820 m!5482501))

(declare-fun m!5482503 () Bool)

(assert (=> d!1459820 m!5482503))

(declare-fun m!5482505 () Bool)

(assert (=> d!1459820 m!5482505))

(declare-fun m!5482507 () Bool)

(assert (=> d!1459820 m!5482507))

(declare-fun m!5482509 () Bool)

(assert (=> b!4631893 m!5482509))

(declare-fun m!5482511 () Bool)

(assert (=> b!4631894 m!5482511))

(assert (=> b!4631727 d!1459820))

(declare-fun d!1459822 () Bool)

(declare-fun content!8867 (List!51732) (Set tuple2!52570))

(assert (=> d!1459822 (= (eq!846 lt!1792303 lt!1792311) (= (content!8867 (toList!5027 lt!1792303)) (content!8867 (toList!5027 lt!1792311))))))

(declare-fun bs!1028017 () Bool)

(assert (= bs!1028017 d!1459822))

(declare-fun m!5482513 () Bool)

(assert (=> bs!1028017 m!5482513))

(declare-fun m!5482515 () Bool)

(assert (=> bs!1028017 m!5482515))

(assert (=> b!4631727 d!1459822))

(declare-fun d!1459824 () Bool)

(assert (=> d!1459824 (eq!846 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792322) Nil!51609)) (-!571 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 (t!358788 oldBucket!40)) Nil!51609)) key!4968))))

(declare-fun lt!1792551 () Unit!113502)

(declare-fun choose!31527 ((_ BitVec 64) List!51732 List!51732 K!12978 Hashable!5928) Unit!113502)

(assert (=> d!1459824 (= lt!1792551 (choose!31527 hash!414 (t!358788 oldBucket!40) lt!1792322 key!4968 hashF!1389))))

(assert (=> d!1459824 (noDuplicateKeys!1531 (t!358788 oldBucket!40))))

(assert (=> d!1459824 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!133 hash!414 (t!358788 oldBucket!40) lt!1792322 key!4968 hashF!1389) lt!1792551)))

(declare-fun bs!1028018 () Bool)

(assert (= bs!1028018 d!1459824))

(declare-fun m!5482529 () Bool)

(assert (=> bs!1028018 m!5482529))

(declare-fun m!5482531 () Bool)

(assert (=> bs!1028018 m!5482531))

(declare-fun m!5482533 () Bool)

(assert (=> bs!1028018 m!5482533))

(declare-fun m!5482535 () Bool)

(assert (=> bs!1028018 m!5482535))

(assert (=> bs!1028018 m!5482533))

(declare-fun m!5482537 () Bool)

(assert (=> bs!1028018 m!5482537))

(assert (=> bs!1028018 m!5482529))

(assert (=> bs!1028018 m!5482537))

(declare-fun m!5482539 () Bool)

(assert (=> bs!1028018 m!5482539))

(assert (=> b!4631727 d!1459824))

(declare-fun d!1459828 () Bool)

(declare-fun e!2889441 () Bool)

(assert (=> d!1459828 e!2889441))

(declare-fun res!1943499 () Bool)

(assert (=> d!1459828 (=> (not res!1943499) (not e!2889441))))

(declare-fun lt!1792552 () ListMap!4331)

(assert (=> d!1459828 (= res!1943499 (not (contains!14700 lt!1792552 key!4968)))))

(assert (=> d!1459828 (= lt!1792552 (ListMap!4332 (removePresrvNoDuplicatedKeys!276 (toList!5027 lt!1792293) key!4968)))))

(assert (=> d!1459828 (= (-!571 lt!1792293 key!4968) lt!1792552)))

(declare-fun b!4631901 () Bool)

(assert (=> b!4631901 (= e!2889441 (= (set.minus (content!8866 (keys!18203 lt!1792293)) (set.insert key!4968 (as set.empty (Set K!12978)))) (content!8866 (keys!18203 lt!1792552))))))

(assert (= (and d!1459828 res!1943499) b!4631901))

(declare-fun m!5482541 () Bool)

(assert (=> d!1459828 m!5482541))

(declare-fun m!5482543 () Bool)

(assert (=> d!1459828 m!5482543))

(declare-fun m!5482545 () Bool)

(assert (=> b!4631901 m!5482545))

(assert (=> b!4631901 m!5482493))

(assert (=> b!4631901 m!5482545))

(declare-fun m!5482547 () Bool)

(assert (=> b!4631901 m!5482547))

(declare-fun m!5482549 () Bool)

(assert (=> b!4631901 m!5482549))

(declare-fun m!5482551 () Bool)

(assert (=> b!4631901 m!5482551))

(assert (=> b!4631901 m!5482549))

(assert (=> b!4631727 d!1459828))

(declare-fun d!1459830 () Bool)

(declare-fun e!2889442 () Bool)

(assert (=> d!1459830 e!2889442))

(declare-fun res!1943500 () Bool)

(assert (=> d!1459830 (=> (not res!1943500) (not e!2889442))))

(declare-fun lt!1792553 () ListMap!4331)

(assert (=> d!1459830 (= res!1943500 (not (contains!14700 lt!1792553 key!4968)))))

(assert (=> d!1459830 (= lt!1792553 (ListMap!4332 (removePresrvNoDuplicatedKeys!276 (toList!5027 lt!1792302) key!4968)))))

(assert (=> d!1459830 (= (-!571 lt!1792302 key!4968) lt!1792553)))

(declare-fun b!4631902 () Bool)

(assert (=> b!4631902 (= e!2889442 (= (set.minus (content!8866 (keys!18203 lt!1792302)) (set.insert key!4968 (as set.empty (Set K!12978)))) (content!8866 (keys!18203 lt!1792553))))))

(assert (= (and d!1459830 res!1943500) b!4631902))

(declare-fun m!5482553 () Bool)

(assert (=> d!1459830 m!5482553))

(declare-fun m!5482555 () Bool)

(assert (=> d!1459830 m!5482555))

(declare-fun m!5482557 () Bool)

(assert (=> b!4631902 m!5482557))

(assert (=> b!4631902 m!5482493))

(assert (=> b!4631902 m!5482557))

(declare-fun m!5482559 () Bool)

(assert (=> b!4631902 m!5482559))

(declare-fun m!5482561 () Bool)

(assert (=> b!4631902 m!5482561))

(declare-fun m!5482563 () Bool)

(assert (=> b!4631902 m!5482563))

(assert (=> b!4631902 m!5482561))

(assert (=> b!4631727 d!1459830))

(declare-fun d!1459832 () Bool)

(assert (=> d!1459832 (= (-!571 (+!1897 lt!1792293 (tuple2!52571 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40)))) key!4968) (+!1897 (-!571 lt!1792293 key!4968) (tuple2!52571 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40)))))))

(declare-fun lt!1792556 () Unit!113502)

(declare-fun choose!31528 (ListMap!4331 K!12978 V!13224 K!12978) Unit!113502)

(assert (=> d!1459832 (= lt!1792556 (choose!31528 lt!1792293 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40)) key!4968))))

(assert (=> d!1459832 (not (= (_1!29579 (h!57682 oldBucket!40)) key!4968))))

(assert (=> d!1459832 (= (addRemoveCommutativeForDiffKeys!26 lt!1792293 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40)) key!4968) lt!1792556)))

(declare-fun bs!1028019 () Bool)

(assert (= bs!1028019 d!1459832))

(declare-fun m!5482565 () Bool)

(assert (=> bs!1028019 m!5482565))

(assert (=> bs!1028019 m!5482565))

(declare-fun m!5482567 () Bool)

(assert (=> bs!1028019 m!5482567))

(assert (=> bs!1028019 m!5482121))

(declare-fun m!5482569 () Bool)

(assert (=> bs!1028019 m!5482569))

(assert (=> bs!1028019 m!5482121))

(declare-fun m!5482571 () Bool)

(assert (=> bs!1028019 m!5482571))

(assert (=> b!4631727 d!1459832))

(declare-fun b!4631919 () Bool)

(declare-fun e!2889453 () Option!11661)

(assert (=> b!4631919 (= e!2889453 (getPair!323 (t!358788 lt!1792309) key!4968))))

(declare-fun b!4631920 () Bool)

(assert (=> b!4631920 (= e!2889453 None!11660)))

(declare-fun b!4631921 () Bool)

(declare-fun e!2889456 () Bool)

(assert (=> b!4631921 (= e!2889456 (not (containsKey!2519 lt!1792309 key!4968)))))

(declare-fun d!1459834 () Bool)

(declare-fun e!2889457 () Bool)

(assert (=> d!1459834 e!2889457))

(declare-fun res!1943509 () Bool)

(assert (=> d!1459834 (=> res!1943509 e!2889457)))

(assert (=> d!1459834 (= res!1943509 e!2889456)))

(declare-fun res!1943511 () Bool)

(assert (=> d!1459834 (=> (not res!1943511) (not e!2889456))))

(declare-fun lt!1792559 () Option!11661)

(declare-fun isEmpty!28953 (Option!11661) Bool)

(assert (=> d!1459834 (= res!1943511 (isEmpty!28953 lt!1792559))))

(declare-fun e!2889455 () Option!11661)

(assert (=> d!1459834 (= lt!1792559 e!2889455)))

(declare-fun c!792830 () Bool)

(assert (=> d!1459834 (= c!792830 (and (is-Cons!51608 lt!1792309) (= (_1!29579 (h!57682 lt!1792309)) key!4968)))))

(assert (=> d!1459834 (noDuplicateKeys!1531 lt!1792309)))

(assert (=> d!1459834 (= (getPair!323 lt!1792309 key!4968) lt!1792559)))

(declare-fun b!4631922 () Bool)

(declare-fun e!2889454 () Bool)

(assert (=> b!4631922 (= e!2889457 e!2889454)))

(declare-fun res!1943512 () Bool)

(assert (=> b!4631922 (=> (not res!1943512) (not e!2889454))))

(assert (=> b!4631922 (= res!1943512 (isDefined!8926 lt!1792559))))

(declare-fun b!4631923 () Bool)

(assert (=> b!4631923 (= e!2889455 (Some!11660 (h!57682 lt!1792309)))))

(declare-fun b!4631924 () Bool)

(declare-fun get!17136 (Option!11661) tuple2!52570)

(assert (=> b!4631924 (= e!2889454 (contains!14706 lt!1792309 (get!17136 lt!1792559)))))

(declare-fun b!4631925 () Bool)

(declare-fun res!1943510 () Bool)

(assert (=> b!4631925 (=> (not res!1943510) (not e!2889454))))

(assert (=> b!4631925 (= res!1943510 (= (_1!29579 (get!17136 lt!1792559)) key!4968))))

(declare-fun b!4631926 () Bool)

(assert (=> b!4631926 (= e!2889455 e!2889453)))

(declare-fun c!792829 () Bool)

(assert (=> b!4631926 (= c!792829 (is-Cons!51608 lt!1792309))))

(assert (= (and d!1459834 c!792830) b!4631923))

(assert (= (and d!1459834 (not c!792830)) b!4631926))

(assert (= (and b!4631926 c!792829) b!4631919))

(assert (= (and b!4631926 (not c!792829)) b!4631920))

(assert (= (and d!1459834 res!1943511) b!4631921))

(assert (= (and d!1459834 (not res!1943509)) b!4631922))

(assert (= (and b!4631922 res!1943512) b!4631925))

(assert (= (and b!4631925 res!1943510) b!4631924))

(declare-fun m!5482573 () Bool)

(assert (=> b!4631924 m!5482573))

(assert (=> b!4631924 m!5482573))

(declare-fun m!5482575 () Bool)

(assert (=> b!4631924 m!5482575))

(declare-fun m!5482577 () Bool)

(assert (=> b!4631921 m!5482577))

(declare-fun m!5482579 () Bool)

(assert (=> d!1459834 m!5482579))

(declare-fun m!5482581 () Bool)

(assert (=> d!1459834 m!5482581))

(declare-fun m!5482583 () Bool)

(assert (=> b!4631922 m!5482583))

(declare-fun m!5482585 () Bool)

(assert (=> b!4631919 m!5482585))

(assert (=> b!4631925 m!5482573))

(assert (=> b!4631728 d!1459834))

(declare-fun d!1459836 () Bool)

(declare-fun dynLambda!21521 (Int tuple2!52572) Bool)

(assert (=> d!1459836 (dynLambda!21521 lambda!193843 lt!1792308)))

(declare-fun lt!1792565 () Unit!113502)

(declare-fun choose!31529 (List!51733 Int tuple2!52572) Unit!113502)

(assert (=> d!1459836 (= lt!1792565 (choose!31529 lt!1792299 lambda!193843 lt!1792308))))

(declare-fun e!2889460 () Bool)

(assert (=> d!1459836 e!2889460))

(declare-fun res!1943515 () Bool)

(assert (=> d!1459836 (=> (not res!1943515) (not e!2889460))))

(assert (=> d!1459836 (= res!1943515 (forall!10869 lt!1792299 lambda!193843))))

(assert (=> d!1459836 (= (forallContained!3099 lt!1792299 lambda!193843 lt!1792308) lt!1792565)))

(declare-fun b!4631929 () Bool)

(assert (=> b!4631929 (= e!2889460 (contains!14701 lt!1792299 lt!1792308))))

(assert (= (and d!1459836 res!1943515) b!4631929))

(declare-fun b_lambda!170895 () Bool)

(assert (=> (not b_lambda!170895) (not d!1459836)))

(declare-fun m!5482595 () Bool)

(assert (=> d!1459836 m!5482595))

(declare-fun m!5482597 () Bool)

(assert (=> d!1459836 m!5482597))

(declare-fun m!5482599 () Bool)

(assert (=> d!1459836 m!5482599))

(assert (=> b!4631929 m!5482165))

(assert (=> b!4631728 d!1459836))

(declare-fun bs!1028024 () Bool)

(declare-fun d!1459838 () Bool)

(assert (= bs!1028024 (and d!1459838 b!4631728)))

(declare-fun lambda!193896 () Int)

(assert (=> bs!1028024 (= lambda!193896 lambda!193843)))

(declare-fun bs!1028025 () Bool)

(assert (= bs!1028025 (and d!1459838 d!1459806)))

(assert (=> bs!1028025 (= lambda!193896 lambda!193889)))

(declare-fun e!2889474 () Bool)

(declare-fun b!4631957 () Bool)

(assert (=> b!4631957 (= e!2889474 (isDefined!8926 (getPair!323 (apply!12196 lt!1792305 (hash!3571 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1792602 () Unit!113502)

(assert (=> b!4631957 (= lt!1792602 (forallContained!3099 (toList!5028 lt!1792305) lambda!193896 (tuple2!52573 (hash!3571 hashF!1389 key!4968) (apply!12196 lt!1792305 (hash!3571 hashF!1389 key!4968)))))))

(declare-fun lt!1792595 () Unit!113502)

(declare-fun lt!1792598 () Unit!113502)

(assert (=> b!4631957 (= lt!1792595 lt!1792598)))

(declare-fun lt!1792599 () (_ BitVec 64))

(declare-fun lt!1792596 () List!51732)

(assert (=> b!4631957 (contains!14701 (toList!5028 lt!1792305) (tuple2!52573 lt!1792599 lt!1792596))))

(assert (=> b!4631957 (= lt!1792598 (lemmaGetValueImpliesTupleContained!128 lt!1792305 lt!1792599 lt!1792596))))

(declare-fun e!2889475 () Bool)

(assert (=> b!4631957 e!2889475))

(declare-fun res!1943529 () Bool)

(assert (=> b!4631957 (=> (not res!1943529) (not e!2889475))))

(assert (=> b!4631957 (= res!1943529 (contains!14702 lt!1792305 lt!1792599))))

(assert (=> b!4631957 (= lt!1792596 (apply!12196 lt!1792305 (hash!3571 hashF!1389 key!4968)))))

(assert (=> b!4631957 (= lt!1792599 (hash!3571 hashF!1389 key!4968))))

(declare-fun lt!1792601 () Unit!113502)

(declare-fun lt!1792597 () Unit!113502)

(assert (=> b!4631957 (= lt!1792601 lt!1792597)))

(assert (=> b!4631957 (contains!14702 lt!1792305 (hash!3571 hashF!1389 key!4968))))

(assert (=> b!4631957 (= lt!1792597 (lemmaInGenMapThenLongMapContainsHash!529 lt!1792305 key!4968 hashF!1389))))

(declare-fun b!4631958 () Bool)

(declare-datatypes ((Option!11664 0))(
  ( (None!11663) (Some!11663 (v!45841 List!51732)) )
))
(declare-fun getValueByKey!1498 (List!51733 (_ BitVec 64)) Option!11664)

(assert (=> b!4631958 (= e!2889475 (= (getValueByKey!1498 (toList!5028 lt!1792305) lt!1792599) (Some!11663 lt!1792596)))))

(declare-fun b!4631955 () Bool)

(declare-fun res!1943531 () Bool)

(assert (=> b!4631955 (=> (not res!1943531) (not e!2889474))))

(declare-fun allKeysSameHashInMap!1553 (ListLongMap!3617 Hashable!5928) Bool)

(assert (=> b!4631955 (= res!1943531 (allKeysSameHashInMap!1553 lt!1792305 hashF!1389))))

(assert (=> d!1459838 e!2889474))

(declare-fun res!1943530 () Bool)

(assert (=> d!1459838 (=> (not res!1943530) (not e!2889474))))

(assert (=> d!1459838 (= res!1943530 (forall!10869 (toList!5028 lt!1792305) lambda!193896))))

(declare-fun lt!1792600 () Unit!113502)

(declare-fun choose!31530 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> d!1459838 (= lt!1792600 (choose!31530 lt!1792305 key!4968 hashF!1389))))

(assert (=> d!1459838 (forall!10869 (toList!5028 lt!1792305) lambda!193896)))

(assert (=> d!1459838 (= (lemmaInGenMapThenGetPairDefined!119 lt!1792305 key!4968 hashF!1389) lt!1792600)))

(declare-fun b!4631956 () Bool)

(declare-fun res!1943528 () Bool)

(assert (=> b!4631956 (=> (not res!1943528) (not e!2889474))))

(assert (=> b!4631956 (= res!1943528 (contains!14700 (extractMap!1587 (toList!5028 lt!1792305)) key!4968))))

(assert (= (and d!1459838 res!1943530) b!4631955))

(assert (= (and b!4631955 res!1943531) b!4631956))

(assert (= (and b!4631956 res!1943528) b!4631957))

(assert (= (and b!4631957 res!1943529) b!4631958))

(declare-fun m!5482639 () Bool)

(assert (=> b!4631957 m!5482639))

(declare-fun m!5482641 () Bool)

(assert (=> b!4631957 m!5482641))

(declare-fun m!5482643 () Bool)

(assert (=> b!4631957 m!5482643))

(declare-fun m!5482645 () Bool)

(assert (=> b!4631957 m!5482645))

(declare-fun m!5482647 () Bool)

(assert (=> b!4631957 m!5482647))

(assert (=> b!4631957 m!5482223))

(declare-fun m!5482649 () Bool)

(assert (=> b!4631957 m!5482649))

(declare-fun m!5482651 () Bool)

(assert (=> b!4631957 m!5482651))

(assert (=> b!4631957 m!5482223))

(declare-fun m!5482653 () Bool)

(assert (=> b!4631957 m!5482653))

(assert (=> b!4631957 m!5482181))

(assert (=> b!4631957 m!5482653))

(assert (=> b!4631957 m!5482645))

(assert (=> b!4631957 m!5482223))

(declare-fun m!5482655 () Bool)

(assert (=> b!4631956 m!5482655))

(assert (=> b!4631956 m!5482655))

(declare-fun m!5482657 () Bool)

(assert (=> b!4631956 m!5482657))

(declare-fun m!5482659 () Bool)

(assert (=> d!1459838 m!5482659))

(declare-fun m!5482661 () Bool)

(assert (=> d!1459838 m!5482661))

(assert (=> d!1459838 m!5482659))

(declare-fun m!5482663 () Bool)

(assert (=> b!4631958 m!5482663))

(declare-fun m!5482665 () Bool)

(assert (=> b!4631955 m!5482665))

(assert (=> b!4631728 d!1459838))

(declare-fun d!1459854 () Bool)

(declare-fun lt!1792608 () Bool)

(declare-fun content!8868 (List!51733) (Set tuple2!52572))

(assert (=> d!1459854 (= lt!1792608 (set.member lt!1792308 (content!8868 lt!1792299)))))

(declare-fun e!2889500 () Bool)

(assert (=> d!1459854 (= lt!1792608 e!2889500)))

(declare-fun res!1943552 () Bool)

(assert (=> d!1459854 (=> (not res!1943552) (not e!2889500))))

(assert (=> d!1459854 (= res!1943552 (is-Cons!51609 lt!1792299))))

(assert (=> d!1459854 (= (contains!14701 lt!1792299 lt!1792308) lt!1792608)))

(declare-fun b!4631991 () Bool)

(declare-fun e!2889499 () Bool)

(assert (=> b!4631991 (= e!2889500 e!2889499)))

(declare-fun res!1943553 () Bool)

(assert (=> b!4631991 (=> res!1943553 e!2889499)))

(assert (=> b!4631991 (= res!1943553 (= (h!57683 lt!1792299) lt!1792308))))

(declare-fun b!4631992 () Bool)

(assert (=> b!4631992 (= e!2889499 (contains!14701 (t!358789 lt!1792299) lt!1792308))))

(assert (= (and d!1459854 res!1943552) b!4631991))

(assert (= (and b!4631991 (not res!1943553)) b!4631992))

(declare-fun m!5482681 () Bool)

(assert (=> d!1459854 m!5482681))

(declare-fun m!5482683 () Bool)

(assert (=> d!1459854 m!5482683))

(declare-fun m!5482685 () Bool)

(assert (=> b!4631992 m!5482685))

(assert (=> b!4631728 d!1459854))

(declare-fun d!1459858 () Bool)

(declare-fun res!1943560 () Bool)

(declare-fun e!2889507 () Bool)

(assert (=> d!1459858 (=> res!1943560 e!2889507)))

(assert (=> d!1459858 (= res!1943560 (and (is-Cons!51608 oldBucket!40) (= (_1!29579 (h!57682 oldBucket!40)) key!4968)))))

(assert (=> d!1459858 (= (containsKey!2519 oldBucket!40 key!4968) e!2889507)))

(declare-fun b!4631999 () Bool)

(declare-fun e!2889508 () Bool)

(assert (=> b!4631999 (= e!2889507 e!2889508)))

(declare-fun res!1943561 () Bool)

(assert (=> b!4631999 (=> (not res!1943561) (not e!2889508))))

(assert (=> b!4631999 (= res!1943561 (is-Cons!51608 oldBucket!40))))

(declare-fun b!4632000 () Bool)

(assert (=> b!4632000 (= e!2889508 (containsKey!2519 (t!358788 oldBucket!40) key!4968))))

(assert (= (and d!1459858 (not res!1943560)) b!4631999))

(assert (= (and b!4631999 res!1943561) b!4632000))

(assert (=> b!4632000 m!5482177))

(assert (=> b!4631728 d!1459858))

(declare-fun bs!1028026 () Bool)

(declare-fun d!1459862 () Bool)

(assert (= bs!1028026 (and d!1459862 b!4631728)))

(declare-fun lambda!193899 () Int)

(assert (=> bs!1028026 (= lambda!193899 lambda!193843)))

(declare-fun bs!1028027 () Bool)

(assert (= bs!1028027 (and d!1459862 d!1459806)))

(assert (=> bs!1028027 (= lambda!193899 lambda!193889)))

(declare-fun bs!1028028 () Bool)

(assert (= bs!1028028 (and d!1459862 d!1459838)))

(assert (=> bs!1028028 (= lambda!193899 lambda!193896)))

(assert (=> d!1459862 (contains!14702 lt!1792305 (hash!3571 hashF!1389 key!4968))))

(declare-fun lt!1792611 () Unit!113502)

(declare-fun choose!31531 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> d!1459862 (= lt!1792611 (choose!31531 lt!1792305 key!4968 hashF!1389))))

(assert (=> d!1459862 (forall!10869 (toList!5028 lt!1792305) lambda!193899)))

(assert (=> d!1459862 (= (lemmaInGenMapThenLongMapContainsHash!529 lt!1792305 key!4968 hashF!1389) lt!1792611)))

(declare-fun bs!1028029 () Bool)

(assert (= bs!1028029 d!1459862))

(assert (=> bs!1028029 m!5482223))

(assert (=> bs!1028029 m!5482223))

(assert (=> bs!1028029 m!5482649))

(declare-fun m!5482689 () Bool)

(assert (=> bs!1028029 m!5482689))

(declare-fun m!5482691 () Bool)

(assert (=> bs!1028029 m!5482691))

(assert (=> b!4631728 d!1459862))

(declare-fun d!1459864 () Bool)

(declare-fun get!17137 (Option!11664) List!51732)

(assert (=> d!1459864 (= (apply!12196 lt!1792305 lt!1792312) (get!17137 (getValueByKey!1498 (toList!5028 lt!1792305) lt!1792312)))))

(declare-fun bs!1028030 () Bool)

(assert (= bs!1028030 d!1459864))

(declare-fun m!5482693 () Bool)

(assert (=> bs!1028030 m!5482693))

(assert (=> bs!1028030 m!5482693))

(declare-fun m!5482695 () Bool)

(assert (=> bs!1028030 m!5482695))

(assert (=> b!4631728 d!1459864))

(declare-fun d!1459866 () Bool)

(assert (=> d!1459866 (containsKey!2519 oldBucket!40 key!4968)))

(declare-fun lt!1792614 () Unit!113502)

(declare-fun choose!31532 (List!51732 K!12978 Hashable!5928) Unit!113502)

(assert (=> d!1459866 (= lt!1792614 (choose!31532 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1459866 (noDuplicateKeys!1531 oldBucket!40)))

(assert (=> d!1459866 (= (lemmaGetPairDefinedThenContainsKey!77 oldBucket!40 key!4968 hashF!1389) lt!1792614)))

(declare-fun bs!1028031 () Bool)

(assert (= bs!1028031 d!1459866))

(assert (=> bs!1028031 m!5482169))

(declare-fun m!5482697 () Bool)

(assert (=> bs!1028031 m!5482697))

(assert (=> bs!1028031 m!5482147))

(assert (=> b!4631728 d!1459866))

(declare-fun d!1459868 () Bool)

(assert (=> d!1459868 (= (isDefined!8926 (getPair!323 lt!1792309 key!4968)) (not (isEmpty!28953 (getPair!323 lt!1792309 key!4968))))))

(declare-fun bs!1028032 () Bool)

(assert (= bs!1028032 d!1459868))

(assert (=> bs!1028032 m!5482171))

(declare-fun m!5482699 () Bool)

(assert (=> bs!1028032 m!5482699))

(assert (=> b!4631728 d!1459868))

(declare-fun d!1459870 () Bool)

(assert (=> d!1459870 (contains!14701 (toList!5028 lt!1792305) (tuple2!52573 lt!1792312 lt!1792309))))

(declare-fun lt!1792617 () Unit!113502)

(declare-fun choose!31533 (ListLongMap!3617 (_ BitVec 64) List!51732) Unit!113502)

(assert (=> d!1459870 (= lt!1792617 (choose!31533 lt!1792305 lt!1792312 lt!1792309))))

(assert (=> d!1459870 (contains!14702 lt!1792305 lt!1792312)))

(assert (=> d!1459870 (= (lemmaGetValueImpliesTupleContained!128 lt!1792305 lt!1792312 lt!1792309) lt!1792617)))

(declare-fun bs!1028033 () Bool)

(assert (= bs!1028033 d!1459870))

(declare-fun m!5482701 () Bool)

(assert (=> bs!1028033 m!5482701))

(declare-fun m!5482703 () Bool)

(assert (=> bs!1028033 m!5482703))

(assert (=> bs!1028033 m!5482163))

(assert (=> b!4631728 d!1459870))

(declare-fun d!1459872 () Bool)

(declare-fun res!1943562 () Bool)

(declare-fun e!2889509 () Bool)

(assert (=> d!1459872 (=> res!1943562 e!2889509)))

(assert (=> d!1459872 (= res!1943562 (and (is-Cons!51608 (t!358788 oldBucket!40)) (= (_1!29579 (h!57682 (t!358788 oldBucket!40))) key!4968)))))

(assert (=> d!1459872 (= (containsKey!2519 (t!358788 oldBucket!40) key!4968) e!2889509)))

(declare-fun b!4632002 () Bool)

(declare-fun e!2889510 () Bool)

(assert (=> b!4632002 (= e!2889509 e!2889510)))

(declare-fun res!1943563 () Bool)

(assert (=> b!4632002 (=> (not res!1943563) (not e!2889510))))

(assert (=> b!4632002 (= res!1943563 (is-Cons!51608 (t!358788 oldBucket!40)))))

(declare-fun b!4632003 () Bool)

(assert (=> b!4632003 (= e!2889510 (containsKey!2519 (t!358788 (t!358788 oldBucket!40)) key!4968))))

(assert (= (and d!1459872 (not res!1943562)) b!4632002))

(assert (= (and b!4632002 res!1943563) b!4632003))

(declare-fun m!5482705 () Bool)

(assert (=> b!4632003 m!5482705))

(assert (=> b!4631728 d!1459872))

(declare-fun d!1459874 () Bool)

(declare-fun e!2889516 () Bool)

(assert (=> d!1459874 e!2889516))

(declare-fun res!1943566 () Bool)

(assert (=> d!1459874 (=> res!1943566 e!2889516)))

(declare-fun lt!1792626 () Bool)

(assert (=> d!1459874 (= res!1943566 (not lt!1792626))))

(declare-fun lt!1792629 () Bool)

(assert (=> d!1459874 (= lt!1792626 lt!1792629)))

(declare-fun lt!1792627 () Unit!113502)

(declare-fun e!2889515 () Unit!113502)

(assert (=> d!1459874 (= lt!1792627 e!2889515)))

(declare-fun c!792845 () Bool)

(assert (=> d!1459874 (= c!792845 lt!1792629)))

(declare-fun containsKey!2521 (List!51733 (_ BitVec 64)) Bool)

(assert (=> d!1459874 (= lt!1792629 (containsKey!2521 (toList!5028 lt!1792305) lt!1792312))))

(assert (=> d!1459874 (= (contains!14702 lt!1792305 lt!1792312) lt!1792626)))

(declare-fun b!4632010 () Bool)

(declare-fun lt!1792628 () Unit!113502)

(assert (=> b!4632010 (= e!2889515 lt!1792628)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1399 (List!51733 (_ BitVec 64)) Unit!113502)

(assert (=> b!4632010 (= lt!1792628 (lemmaContainsKeyImpliesGetValueByKeyDefined!1399 (toList!5028 lt!1792305) lt!1792312))))

(declare-fun isDefined!8928 (Option!11664) Bool)

(assert (=> b!4632010 (isDefined!8928 (getValueByKey!1498 (toList!5028 lt!1792305) lt!1792312))))

(declare-fun b!4632011 () Bool)

(declare-fun Unit!113517 () Unit!113502)

(assert (=> b!4632011 (= e!2889515 Unit!113517)))

(declare-fun b!4632012 () Bool)

(assert (=> b!4632012 (= e!2889516 (isDefined!8928 (getValueByKey!1498 (toList!5028 lt!1792305) lt!1792312)))))

(assert (= (and d!1459874 c!792845) b!4632010))

(assert (= (and d!1459874 (not c!792845)) b!4632011))

(assert (= (and d!1459874 (not res!1943566)) b!4632012))

(declare-fun m!5482707 () Bool)

(assert (=> d!1459874 m!5482707))

(declare-fun m!5482709 () Bool)

(assert (=> b!4632010 m!5482709))

(assert (=> b!4632010 m!5482693))

(assert (=> b!4632010 m!5482693))

(declare-fun m!5482711 () Bool)

(assert (=> b!4632010 m!5482711))

(assert (=> b!4632012 m!5482693))

(assert (=> b!4632012 m!5482693))

(assert (=> b!4632012 m!5482711))

(assert (=> b!4631728 d!1459874))

(declare-fun d!1459876 () Bool)

(declare-fun hash!3575 (Hashable!5928 K!12978) (_ BitVec 64))

(assert (=> d!1459876 (= (hash!3571 hashF!1389 key!4968) (hash!3575 hashF!1389 key!4968))))

(declare-fun bs!1028034 () Bool)

(assert (= bs!1028034 d!1459876))

(declare-fun m!5482713 () Bool)

(assert (=> bs!1028034 m!5482713))

(assert (=> b!4631739 d!1459876))

(declare-fun b!4632023 () Bool)

(declare-fun e!2889521 () List!51732)

(assert (=> b!4632023 (= e!2889521 (Cons!51608 (h!57682 (t!358788 oldBucket!40)) (removePairForKey!1154 (t!358788 (t!358788 oldBucket!40)) key!4968)))))

(declare-fun d!1459878 () Bool)

(declare-fun lt!1792632 () List!51732)

(assert (=> d!1459878 (not (containsKey!2519 lt!1792632 key!4968))))

(declare-fun e!2889522 () List!51732)

(assert (=> d!1459878 (= lt!1792632 e!2889522)))

(declare-fun c!792851 () Bool)

(assert (=> d!1459878 (= c!792851 (and (is-Cons!51608 (t!358788 oldBucket!40)) (= (_1!29579 (h!57682 (t!358788 oldBucket!40))) key!4968)))))

(assert (=> d!1459878 (noDuplicateKeys!1531 (t!358788 oldBucket!40))))

(assert (=> d!1459878 (= (removePairForKey!1154 (t!358788 oldBucket!40) key!4968) lt!1792632)))

(declare-fun b!4632022 () Bool)

(assert (=> b!4632022 (= e!2889522 e!2889521)))

(declare-fun c!792850 () Bool)

(assert (=> b!4632022 (= c!792850 (is-Cons!51608 (t!358788 oldBucket!40)))))

(declare-fun b!4632024 () Bool)

(assert (=> b!4632024 (= e!2889521 Nil!51608)))

(declare-fun b!4632021 () Bool)

(assert (=> b!4632021 (= e!2889522 (t!358788 (t!358788 oldBucket!40)))))

(assert (= (and d!1459878 c!792851) b!4632021))

(assert (= (and d!1459878 (not c!792851)) b!4632022))

(assert (= (and b!4632022 c!792850) b!4632023))

(assert (= (and b!4632022 (not c!792850)) b!4632024))

(declare-fun m!5482715 () Bool)

(assert (=> b!4632023 m!5482715))

(declare-fun m!5482717 () Bool)

(assert (=> d!1459878 m!5482717))

(assert (=> d!1459878 m!5482531))

(assert (=> b!4631738 d!1459878))

(declare-fun d!1459880 () Bool)

(assert (=> d!1459880 (= (eq!846 lt!1792320 (+!1897 lt!1792303 lt!1792298)) (= (content!8867 (toList!5027 lt!1792320)) (content!8867 (toList!5027 (+!1897 lt!1792303 lt!1792298)))))))

(declare-fun bs!1028035 () Bool)

(assert (= bs!1028035 d!1459880))

(declare-fun m!5482719 () Bool)

(assert (=> bs!1028035 m!5482719))

(declare-fun m!5482721 () Bool)

(assert (=> bs!1028035 m!5482721))

(assert (=> b!4631740 d!1459880))

(declare-fun d!1459882 () Bool)

(declare-fun e!2889523 () Bool)

(assert (=> d!1459882 e!2889523))

(declare-fun res!1943568 () Bool)

(assert (=> d!1459882 (=> (not res!1943568) (not e!2889523))))

(declare-fun lt!1792634 () ListMap!4331)

(assert (=> d!1459882 (= res!1943568 (contains!14700 lt!1792634 (_1!29579 lt!1792298)))))

(declare-fun lt!1792633 () List!51732)

(assert (=> d!1459882 (= lt!1792634 (ListMap!4332 lt!1792633))))

(declare-fun lt!1792636 () Unit!113502)

(declare-fun lt!1792635 () Unit!113502)

(assert (=> d!1459882 (= lt!1792636 lt!1792635)))

(assert (=> d!1459882 (= (getValueByKey!1497 lt!1792633 (_1!29579 lt!1792298)) (Some!11662 (_2!29579 lt!1792298)))))

(assert (=> d!1459882 (= lt!1792635 (lemmaContainsTupThenGetReturnValue!871 lt!1792633 (_1!29579 lt!1792298) (_2!29579 lt!1792298)))))

(assert (=> d!1459882 (= lt!1792633 (insertNoDuplicatedKeys!379 (toList!5027 lt!1792303) (_1!29579 lt!1792298) (_2!29579 lt!1792298)))))

(assert (=> d!1459882 (= (+!1897 lt!1792303 lt!1792298) lt!1792634)))

(declare-fun b!4632025 () Bool)

(declare-fun res!1943567 () Bool)

(assert (=> b!4632025 (=> (not res!1943567) (not e!2889523))))

(assert (=> b!4632025 (= res!1943567 (= (getValueByKey!1497 (toList!5027 lt!1792634) (_1!29579 lt!1792298)) (Some!11662 (_2!29579 lt!1792298))))))

(declare-fun b!4632026 () Bool)

(assert (=> b!4632026 (= e!2889523 (contains!14706 (toList!5027 lt!1792634) lt!1792298))))

(assert (= (and d!1459882 res!1943568) b!4632025))

(assert (= (and b!4632025 res!1943567) b!4632026))

(declare-fun m!5482723 () Bool)

(assert (=> d!1459882 m!5482723))

(declare-fun m!5482725 () Bool)

(assert (=> d!1459882 m!5482725))

(declare-fun m!5482727 () Bool)

(assert (=> d!1459882 m!5482727))

(declare-fun m!5482729 () Bool)

(assert (=> d!1459882 m!5482729))

(declare-fun m!5482731 () Bool)

(assert (=> b!4632025 m!5482731))

(declare-fun m!5482733 () Bool)

(assert (=> b!4632026 m!5482733))

(assert (=> b!4631740 d!1459882))

(declare-fun bs!1028036 () Bool)

(declare-fun d!1459884 () Bool)

(assert (= bs!1028036 (and d!1459884 b!4631728)))

(declare-fun lambda!193900 () Int)

(assert (=> bs!1028036 (= lambda!193900 lambda!193843)))

(declare-fun bs!1028037 () Bool)

(assert (= bs!1028037 (and d!1459884 d!1459806)))

(assert (=> bs!1028037 (= lambda!193900 lambda!193889)))

(declare-fun bs!1028038 () Bool)

(assert (= bs!1028038 (and d!1459884 d!1459838)))

(assert (=> bs!1028038 (= lambda!193900 lambda!193896)))

(declare-fun bs!1028039 () Bool)

(assert (= bs!1028039 (and d!1459884 d!1459862)))

(assert (=> bs!1028039 (= lambda!193900 lambda!193899)))

(declare-fun lt!1792637 () ListMap!4331)

(assert (=> d!1459884 (invariantList!1227 (toList!5027 lt!1792637))))

(declare-fun e!2889524 () ListMap!4331)

(assert (=> d!1459884 (= lt!1792637 e!2889524)))

(declare-fun c!792852 () Bool)

(assert (=> d!1459884 (= c!792852 (is-Cons!51609 lt!1792292))))

(assert (=> d!1459884 (forall!10869 lt!1792292 lambda!193900)))

(assert (=> d!1459884 (= (extractMap!1587 lt!1792292) lt!1792637)))

(declare-fun b!4632027 () Bool)

(assert (=> b!4632027 (= e!2889524 (addToMapMapFromBucket!992 (_2!29580 (h!57683 lt!1792292)) (extractMap!1587 (t!358789 lt!1792292))))))

(declare-fun b!4632028 () Bool)

(assert (=> b!4632028 (= e!2889524 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459884 c!792852) b!4632027))

(assert (= (and d!1459884 (not c!792852)) b!4632028))

(declare-fun m!5482735 () Bool)

(assert (=> d!1459884 m!5482735))

(declare-fun m!5482737 () Bool)

(assert (=> d!1459884 m!5482737))

(declare-fun m!5482739 () Bool)

(assert (=> b!4632027 m!5482739))

(assert (=> b!4632027 m!5482739))

(declare-fun m!5482741 () Bool)

(assert (=> b!4632027 m!5482741))

(assert (=> b!4631740 d!1459884))

(declare-fun bs!1028040 () Bool)

(declare-fun d!1459886 () Bool)

(assert (= bs!1028040 (and d!1459886 b!4631728)))

(declare-fun lambda!193901 () Int)

(assert (=> bs!1028040 (= lambda!193901 lambda!193843)))

(declare-fun bs!1028041 () Bool)

(assert (= bs!1028041 (and d!1459886 d!1459806)))

(assert (=> bs!1028041 (= lambda!193901 lambda!193889)))

(declare-fun bs!1028042 () Bool)

(assert (= bs!1028042 (and d!1459886 d!1459862)))

(assert (=> bs!1028042 (= lambda!193901 lambda!193899)))

(declare-fun bs!1028043 () Bool)

(assert (= bs!1028043 (and d!1459886 d!1459838)))

(assert (=> bs!1028043 (= lambda!193901 lambda!193896)))

(declare-fun bs!1028044 () Bool)

(assert (= bs!1028044 (and d!1459886 d!1459884)))

(assert (=> bs!1028044 (= lambda!193901 lambda!193900)))

(declare-fun lt!1792638 () ListMap!4331)

(assert (=> d!1459886 (invariantList!1227 (toList!5027 lt!1792638))))

(declare-fun e!2889525 () ListMap!4331)

(assert (=> d!1459886 (= lt!1792638 e!2889525)))

(declare-fun c!792853 () Bool)

(assert (=> d!1459886 (= c!792853 (is-Cons!51609 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609)))))

(assert (=> d!1459886 (forall!10869 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609) lambda!193901)))

(assert (=> d!1459886 (= (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609)) lt!1792638)))

(declare-fun b!4632029 () Bool)

(assert (=> b!4632029 (= e!2889525 (addToMapMapFromBucket!992 (_2!29580 (h!57683 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609))) (extractMap!1587 (t!358789 (Cons!51609 (tuple2!52573 hash!414 newBucket!224) Nil!51609)))))))

(declare-fun b!4632030 () Bool)

(assert (=> b!4632030 (= e!2889525 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459886 c!792853) b!4632029))

(assert (= (and d!1459886 (not c!792853)) b!4632030))

(declare-fun m!5482743 () Bool)

(assert (=> d!1459886 m!5482743))

(declare-fun m!5482745 () Bool)

(assert (=> d!1459886 m!5482745))

(declare-fun m!5482747 () Bool)

(assert (=> b!4632029 m!5482747))

(assert (=> b!4632029 m!5482747))

(declare-fun m!5482749 () Bool)

(assert (=> b!4632029 m!5482749))

(assert (=> b!4631740 d!1459886))

(declare-fun d!1459888 () Bool)

(assert (=> d!1459888 (= (eq!846 lt!1792320 (+!1897 lt!1792303 (h!57682 oldBucket!40))) (= (content!8867 (toList!5027 lt!1792320)) (content!8867 (toList!5027 (+!1897 lt!1792303 (h!57682 oldBucket!40))))))))

(declare-fun bs!1028045 () Bool)

(assert (= bs!1028045 d!1459888))

(assert (=> bs!1028045 m!5482719))

(declare-fun m!5482751 () Bool)

(assert (=> bs!1028045 m!5482751))

(assert (=> b!4631729 d!1459888))

(declare-fun d!1459890 () Bool)

(declare-fun e!2889526 () Bool)

(assert (=> d!1459890 e!2889526))

(declare-fun res!1943570 () Bool)

(assert (=> d!1459890 (=> (not res!1943570) (not e!2889526))))

(declare-fun lt!1792640 () ListMap!4331)

(assert (=> d!1459890 (= res!1943570 (contains!14700 lt!1792640 (_1!29579 (h!57682 oldBucket!40))))))

(declare-fun lt!1792639 () List!51732)

(assert (=> d!1459890 (= lt!1792640 (ListMap!4332 lt!1792639))))

(declare-fun lt!1792642 () Unit!113502)

(declare-fun lt!1792641 () Unit!113502)

(assert (=> d!1459890 (= lt!1792642 lt!1792641)))

(assert (=> d!1459890 (= (getValueByKey!1497 lt!1792639 (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459890 (= lt!1792641 (lemmaContainsTupThenGetReturnValue!871 lt!1792639 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459890 (= lt!1792639 (insertNoDuplicatedKeys!379 (toList!5027 lt!1792303) (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459890 (= (+!1897 lt!1792303 (h!57682 oldBucket!40)) lt!1792640)))

(declare-fun b!4632031 () Bool)

(declare-fun res!1943569 () Bool)

(assert (=> b!4632031 (=> (not res!1943569) (not e!2889526))))

(assert (=> b!4632031 (= res!1943569 (= (getValueByKey!1497 (toList!5027 lt!1792640) (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40)))))))

(declare-fun b!4632032 () Bool)

(assert (=> b!4632032 (= e!2889526 (contains!14706 (toList!5027 lt!1792640) (h!57682 oldBucket!40)))))

(assert (= (and d!1459890 res!1943570) b!4632031))

(assert (= (and b!4632031 res!1943569) b!4632032))

(declare-fun m!5482753 () Bool)

(assert (=> d!1459890 m!5482753))

(declare-fun m!5482755 () Bool)

(assert (=> d!1459890 m!5482755))

(declare-fun m!5482757 () Bool)

(assert (=> d!1459890 m!5482757))

(declare-fun m!5482759 () Bool)

(assert (=> d!1459890 m!5482759))

(declare-fun m!5482761 () Bool)

(assert (=> b!4632031 m!5482761))

(declare-fun m!5482763 () Bool)

(assert (=> b!4632032 m!5482763))

(assert (=> b!4631729 d!1459890))

(declare-fun d!1459892 () Bool)

(declare-fun res!1943575 () Bool)

(declare-fun e!2889531 () Bool)

(assert (=> d!1459892 (=> res!1943575 e!2889531)))

(assert (=> d!1459892 (= res!1943575 (is-Nil!51609 lt!1792292))))

(assert (=> d!1459892 (= (forall!10869 lt!1792292 lambda!193843) e!2889531)))

(declare-fun b!4632037 () Bool)

(declare-fun e!2889532 () Bool)

(assert (=> b!4632037 (= e!2889531 e!2889532)))

(declare-fun res!1943576 () Bool)

(assert (=> b!4632037 (=> (not res!1943576) (not e!2889532))))

(assert (=> b!4632037 (= res!1943576 (dynLambda!21521 lambda!193843 (h!57683 lt!1792292)))))

(declare-fun b!4632038 () Bool)

(assert (=> b!4632038 (= e!2889532 (forall!10869 (t!358789 lt!1792292) lambda!193843))))

(assert (= (and d!1459892 (not res!1943575)) b!4632037))

(assert (= (and b!4632037 res!1943576) b!4632038))

(declare-fun b_lambda!170897 () Bool)

(assert (=> (not b_lambda!170897) (not b!4632037)))

(declare-fun m!5482765 () Bool)

(assert (=> b!4632037 m!5482765))

(declare-fun m!5482767 () Bool)

(assert (=> b!4632038 m!5482767))

(assert (=> b!4631731 d!1459892))

(declare-fun bs!1028046 () Bool)

(declare-fun d!1459894 () Bool)

(assert (= bs!1028046 (and d!1459894 b!4631860)))

(declare-fun lambda!193908 () Int)

(assert (=> bs!1028046 (not (= lambda!193908 lambda!193882))))

(declare-fun bs!1028047 () Bool)

(assert (= bs!1028047 (and d!1459894 b!4631864)))

(assert (=> bs!1028047 (not (= lambda!193908 lambda!193883))))

(assert (=> bs!1028047 (not (= lambda!193908 lambda!193884))))

(declare-fun bs!1028048 () Bool)

(assert (= bs!1028048 (and d!1459894 d!1459792)))

(assert (=> bs!1028048 (not (= lambda!193908 lambda!193885))))

(assert (=> d!1459894 true))

(assert (=> d!1459894 true))

(assert (=> d!1459894 (= (allKeysSameHash!1385 oldBucket!40 hash!414 hashF!1389) (forall!10871 oldBucket!40 lambda!193908))))

(declare-fun bs!1028049 () Bool)

(assert (= bs!1028049 d!1459894))

(declare-fun m!5482769 () Bool)

(assert (=> bs!1028049 m!5482769))

(assert (=> b!4631730 d!1459894))

(declare-fun d!1459896 () Bool)

(assert (=> d!1459896 (= (eq!846 lt!1792297 lt!1792310) (= (content!8867 (toList!5027 lt!1792297)) (content!8867 (toList!5027 lt!1792310))))))

(declare-fun bs!1028050 () Bool)

(assert (= bs!1028050 d!1459896))

(declare-fun m!5482771 () Bool)

(assert (=> bs!1028050 m!5482771))

(declare-fun m!5482773 () Bool)

(assert (=> bs!1028050 m!5482773))

(assert (=> b!4631741 d!1459896))

(declare-fun d!1459898 () Bool)

(assert (=> d!1459898 (= (eq!846 lt!1792317 lt!1792297) (= (content!8867 (toList!5027 lt!1792317)) (content!8867 (toList!5027 lt!1792297))))))

(declare-fun bs!1028051 () Bool)

(assert (= bs!1028051 d!1459898))

(declare-fun m!5482775 () Bool)

(assert (=> bs!1028051 m!5482775))

(assert (=> bs!1028051 m!5482771))

(assert (=> b!4631741 d!1459898))

(declare-fun d!1459900 () Bool)

(declare-fun e!2889537 () Bool)

(assert (=> d!1459900 e!2889537))

(declare-fun res!1943585 () Bool)

(assert (=> d!1459900 (=> (not res!1943585) (not e!2889537))))

(declare-fun lt!1792659 () ListMap!4331)

(assert (=> d!1459900 (= res!1943585 (not (contains!14700 lt!1792659 key!4968)))))

(assert (=> d!1459900 (= lt!1792659 (ListMap!4332 (removePresrvNoDuplicatedKeys!276 (toList!5027 lt!1792315) key!4968)))))

(assert (=> d!1459900 (= (-!571 lt!1792315 key!4968) lt!1792659)))

(declare-fun b!4632051 () Bool)

(assert (=> b!4632051 (= e!2889537 (= (set.minus (content!8866 (keys!18203 lt!1792315)) (set.insert key!4968 (as set.empty (Set K!12978)))) (content!8866 (keys!18203 lt!1792659))))))

(assert (= (and d!1459900 res!1943585) b!4632051))

(declare-fun m!5482777 () Bool)

(assert (=> d!1459900 m!5482777))

(declare-fun m!5482779 () Bool)

(assert (=> d!1459900 m!5482779))

(declare-fun m!5482781 () Bool)

(assert (=> b!4632051 m!5482781))

(assert (=> b!4632051 m!5482493))

(assert (=> b!4632051 m!5482781))

(declare-fun m!5482783 () Bool)

(assert (=> b!4632051 m!5482783))

(declare-fun m!5482785 () Bool)

(assert (=> b!4632051 m!5482785))

(declare-fun m!5482787 () Bool)

(assert (=> b!4632051 m!5482787))

(assert (=> b!4632051 m!5482785))

(assert (=> b!4631741 d!1459900))

(declare-fun d!1459902 () Bool)

(assert (=> d!1459902 (eq!846 (-!571 lt!1792302 key!4968) (-!571 lt!1792315 key!4968))))

(declare-fun lt!1792670 () Unit!113502)

(declare-fun choose!31534 (ListMap!4331 ListMap!4331 K!12978) Unit!113502)

(assert (=> d!1459902 (= lt!1792670 (choose!31534 lt!1792302 lt!1792315 key!4968))))

(assert (=> d!1459902 (eq!846 lt!1792302 lt!1792315)))

(assert (=> d!1459902 (= (lemmaRemovePreservesEq!27 lt!1792302 lt!1792315 key!4968) lt!1792670)))

(declare-fun bs!1028054 () Bool)

(assert (= bs!1028054 d!1459902))

(assert (=> bs!1028054 m!5482127))

(assert (=> bs!1028054 m!5482135))

(declare-fun m!5482817 () Bool)

(assert (=> bs!1028054 m!5482817))

(assert (=> bs!1028054 m!5482127))

(declare-fun m!5482819 () Bool)

(assert (=> bs!1028054 m!5482819))

(assert (=> bs!1028054 m!5482135))

(declare-fun m!5482821 () Bool)

(assert (=> bs!1028054 m!5482821))

(assert (=> b!4631741 d!1459902))

(declare-fun b!4632058 () Bool)

(declare-fun e!2889540 () List!51732)

(assert (=> b!4632058 (= e!2889540 (Cons!51608 (h!57682 lt!1792295) (removePairForKey!1154 (t!358788 lt!1792295) key!4968)))))

(declare-fun d!1459906 () Bool)

(declare-fun lt!1792671 () List!51732)

(assert (=> d!1459906 (not (containsKey!2519 lt!1792671 key!4968))))

(declare-fun e!2889541 () List!51732)

(assert (=> d!1459906 (= lt!1792671 e!2889541)))

(declare-fun c!792855 () Bool)

(assert (=> d!1459906 (= c!792855 (and (is-Cons!51608 lt!1792295) (= (_1!29579 (h!57682 lt!1792295)) key!4968)))))

(assert (=> d!1459906 (noDuplicateKeys!1531 lt!1792295)))

(assert (=> d!1459906 (= (removePairForKey!1154 lt!1792295 key!4968) lt!1792671)))

(declare-fun b!4632057 () Bool)

(assert (=> b!4632057 (= e!2889541 e!2889540)))

(declare-fun c!792854 () Bool)

(assert (=> b!4632057 (= c!792854 (is-Cons!51608 lt!1792295))))

(declare-fun b!4632059 () Bool)

(assert (=> b!4632059 (= e!2889540 Nil!51608)))

(declare-fun b!4632056 () Bool)

(assert (=> b!4632056 (= e!2889541 (t!358788 lt!1792295))))

(assert (= (and d!1459906 c!792855) b!4632056))

(assert (= (and d!1459906 (not c!792855)) b!4632057))

(assert (= (and b!4632057 c!792854) b!4632058))

(assert (= (and b!4632057 (not c!792854)) b!4632059))

(declare-fun m!5482825 () Bool)

(assert (=> b!4632058 m!5482825))

(declare-fun m!5482827 () Bool)

(assert (=> d!1459906 m!5482827))

(declare-fun m!5482829 () Bool)

(assert (=> d!1459906 m!5482829))

(assert (=> b!4631732 d!1459906))

(declare-fun d!1459910 () Bool)

(assert (=> d!1459910 (= (tail!8166 newBucket!224) (t!358788 newBucket!224))))

(assert (=> b!4631732 d!1459910))

(declare-fun d!1459912 () Bool)

(assert (=> d!1459912 (= (tail!8166 oldBucket!40) (t!358788 oldBucket!40))))

(assert (=> b!4631732 d!1459912))

(declare-fun b!4632062 () Bool)

(declare-fun e!2889542 () List!51732)

(assert (=> b!4632062 (= e!2889542 (Cons!51608 (h!57682 oldBucket!40) (removePairForKey!1154 (t!358788 oldBucket!40) key!4968)))))

(declare-fun d!1459914 () Bool)

(declare-fun lt!1792672 () List!51732)

(assert (=> d!1459914 (not (containsKey!2519 lt!1792672 key!4968))))

(declare-fun e!2889543 () List!51732)

(assert (=> d!1459914 (= lt!1792672 e!2889543)))

(declare-fun c!792857 () Bool)

(assert (=> d!1459914 (= c!792857 (and (is-Cons!51608 oldBucket!40) (= (_1!29579 (h!57682 oldBucket!40)) key!4968)))))

(assert (=> d!1459914 (noDuplicateKeys!1531 oldBucket!40)))

(assert (=> d!1459914 (= (removePairForKey!1154 oldBucket!40 key!4968) lt!1792672)))

(declare-fun b!4632061 () Bool)

(assert (=> b!4632061 (= e!2889543 e!2889542)))

(declare-fun c!792856 () Bool)

(assert (=> b!4632061 (= c!792856 (is-Cons!51608 oldBucket!40))))

(declare-fun b!4632063 () Bool)

(assert (=> b!4632063 (= e!2889542 Nil!51608)))

(declare-fun b!4632060 () Bool)

(assert (=> b!4632060 (= e!2889543 (t!358788 oldBucket!40))))

(assert (= (and d!1459914 c!792857) b!4632060))

(assert (= (and d!1459914 (not c!792857)) b!4632061))

(assert (= (and b!4632061 c!792856) b!4632062))

(assert (= (and b!4632061 (not c!792856)) b!4632063))

(assert (=> b!4632062 m!5482107))

(declare-fun m!5482831 () Bool)

(assert (=> d!1459914 m!5482831))

(assert (=> d!1459914 m!5482147))

(assert (=> b!4631743 d!1459914))

(declare-fun bs!1028056 () Bool)

(declare-fun d!1459916 () Bool)

(assert (= bs!1028056 (and d!1459916 d!1459792)))

(declare-fun lambda!193912 () Int)

(assert (=> bs!1028056 (not (= lambda!193912 lambda!193885))))

(declare-fun bs!1028057 () Bool)

(assert (= bs!1028057 (and d!1459916 b!4631860)))

(assert (=> bs!1028057 (not (= lambda!193912 lambda!193882))))

(declare-fun bs!1028058 () Bool)

(assert (= bs!1028058 (and d!1459916 b!4631864)))

(assert (=> bs!1028058 (not (= lambda!193912 lambda!193884))))

(assert (=> bs!1028058 (not (= lambda!193912 lambda!193883))))

(declare-fun bs!1028059 () Bool)

(assert (= bs!1028059 (and d!1459916 d!1459894)))

(assert (=> bs!1028059 (= lambda!193912 lambda!193908)))

(assert (=> d!1459916 true))

(assert (=> d!1459916 true))

(assert (=> d!1459916 (= (allKeysSameHash!1385 newBucket!224 hash!414 hashF!1389) (forall!10871 newBucket!224 lambda!193912))))

(declare-fun bs!1028060 () Bool)

(assert (= bs!1028060 d!1459916))

(declare-fun m!5482833 () Bool)

(assert (=> bs!1028060 m!5482833))

(assert (=> b!4631742 d!1459916))

(declare-fun d!1459918 () Bool)

(declare-fun res!1943594 () Bool)

(declare-fun e!2889548 () Bool)

(assert (=> d!1459918 (=> res!1943594 e!2889548)))

(assert (=> d!1459918 (= res!1943594 (not (is-Cons!51608 oldBucket!40)))))

(assert (=> d!1459918 (= (noDuplicateKeys!1531 oldBucket!40) e!2889548)))

(declare-fun b!4632068 () Bool)

(declare-fun e!2889549 () Bool)

(assert (=> b!4632068 (= e!2889548 e!2889549)))

(declare-fun res!1943595 () Bool)

(assert (=> b!4632068 (=> (not res!1943595) (not e!2889549))))

(assert (=> b!4632068 (= res!1943595 (not (containsKey!2519 (t!358788 oldBucket!40) (_1!29579 (h!57682 oldBucket!40)))))))

(declare-fun b!4632069 () Bool)

(assert (=> b!4632069 (= e!2889549 (noDuplicateKeys!1531 (t!358788 oldBucket!40)))))

(assert (= (and d!1459918 (not res!1943594)) b!4632068))

(assert (= (and b!4632068 res!1943595) b!4632069))

(declare-fun m!5482835 () Bool)

(assert (=> b!4632068 m!5482835))

(assert (=> b!4632069 m!5482531))

(assert (=> start!464942 d!1459918))

(declare-fun b!4632109 () Bool)

(declare-fun e!2889582 () Unit!113502)

(declare-fun Unit!113519 () Unit!113502)

(assert (=> b!4632109 (= e!2889582 Unit!113519)))

(declare-fun b!4632110 () Bool)

(declare-fun e!2889583 () Unit!113502)

(declare-fun lt!1792716 () Unit!113502)

(assert (=> b!4632110 (= e!2889583 lt!1792716)))

(declare-fun lt!1792715 () Unit!113502)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1400 (List!51732 K!12978) Unit!113502)

(assert (=> b!4632110 (= lt!1792715 (lemmaContainsKeyImpliesGetValueByKeyDefined!1400 (toList!5027 lt!1792315) key!4968))))

(declare-fun isDefined!8929 (Option!11663) Bool)

(assert (=> b!4632110 (isDefined!8929 (getValueByKey!1497 (toList!5027 lt!1792315) key!4968))))

(declare-fun lt!1792721 () Unit!113502)

(assert (=> b!4632110 (= lt!1792721 lt!1792715)))

(declare-fun lemmaInListThenGetKeysListContains!673 (List!51732 K!12978) Unit!113502)

(assert (=> b!4632110 (= lt!1792716 (lemmaInListThenGetKeysListContains!673 (toList!5027 lt!1792315) key!4968))))

(declare-fun call!323216 () Bool)

(assert (=> b!4632110 call!323216))

(declare-fun d!1459920 () Bool)

(declare-fun e!2889580 () Bool)

(assert (=> d!1459920 e!2889580))

(declare-fun res!1943619 () Bool)

(assert (=> d!1459920 (=> res!1943619 e!2889580)))

(declare-fun e!2889584 () Bool)

(assert (=> d!1459920 (= res!1943619 e!2889584)))

(declare-fun res!1943618 () Bool)

(assert (=> d!1459920 (=> (not res!1943618) (not e!2889584))))

(declare-fun lt!1792720 () Bool)

(assert (=> d!1459920 (= res!1943618 (not lt!1792720))))

(declare-fun lt!1792719 () Bool)

(assert (=> d!1459920 (= lt!1792720 lt!1792719)))

(declare-fun lt!1792718 () Unit!113502)

(assert (=> d!1459920 (= lt!1792718 e!2889583)))

(declare-fun c!792869 () Bool)

(assert (=> d!1459920 (= c!792869 lt!1792719)))

(declare-fun containsKey!2523 (List!51732 K!12978) Bool)

(assert (=> d!1459920 (= lt!1792719 (containsKey!2523 (toList!5027 lt!1792315) key!4968))))

(assert (=> d!1459920 (= (contains!14700 lt!1792315 key!4968) lt!1792720)))

(declare-fun b!4632111 () Bool)

(assert (=> b!4632111 false))

(declare-fun lt!1792714 () Unit!113502)

(declare-fun lt!1792717 () Unit!113502)

(assert (=> b!4632111 (= lt!1792714 lt!1792717)))

(assert (=> b!4632111 (containsKey!2523 (toList!5027 lt!1792315) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!678 (List!51732 K!12978) Unit!113502)

(assert (=> b!4632111 (= lt!1792717 (lemmaInGetKeysListThenContainsKey!678 (toList!5027 lt!1792315) key!4968))))

(declare-fun Unit!113521 () Unit!113502)

(assert (=> b!4632111 (= e!2889582 Unit!113521)))

(declare-fun b!4632112 () Bool)

(declare-fun contains!14708 (List!51736 K!12978) Bool)

(assert (=> b!4632112 (= e!2889584 (not (contains!14708 (keys!18203 lt!1792315) key!4968)))))

(declare-fun b!4632113 () Bool)

(declare-fun e!2889585 () List!51736)

(declare-fun getKeysList!679 (List!51732) List!51736)

(assert (=> b!4632113 (= e!2889585 (getKeysList!679 (toList!5027 lt!1792315)))))

(declare-fun bm!323211 () Bool)

(assert (=> bm!323211 (= call!323216 (contains!14708 e!2889585 key!4968))))

(declare-fun c!792868 () Bool)

(assert (=> bm!323211 (= c!792868 c!792869)))

(declare-fun b!4632114 () Bool)

(assert (=> b!4632114 (= e!2889583 e!2889582)))

(declare-fun c!792867 () Bool)

(assert (=> b!4632114 (= c!792867 call!323216)))

(declare-fun b!4632115 () Bool)

(declare-fun e!2889581 () Bool)

(assert (=> b!4632115 (= e!2889580 e!2889581)))

(declare-fun res!1943617 () Bool)

(assert (=> b!4632115 (=> (not res!1943617) (not e!2889581))))

(assert (=> b!4632115 (= res!1943617 (isDefined!8929 (getValueByKey!1497 (toList!5027 lt!1792315) key!4968)))))

(declare-fun b!4632116 () Bool)

(assert (=> b!4632116 (= e!2889581 (contains!14708 (keys!18203 lt!1792315) key!4968))))

(declare-fun b!4632117 () Bool)

(assert (=> b!4632117 (= e!2889585 (keys!18203 lt!1792315))))

(assert (= (and d!1459920 c!792869) b!4632110))

(assert (= (and d!1459920 (not c!792869)) b!4632114))

(assert (= (and b!4632114 c!792867) b!4632111))

(assert (= (and b!4632114 (not c!792867)) b!4632109))

(assert (= (or b!4632110 b!4632114) bm!323211))

(assert (= (and bm!323211 c!792868) b!4632113))

(assert (= (and bm!323211 (not c!792868)) b!4632117))

(assert (= (and d!1459920 res!1943618) b!4632112))

(assert (= (and d!1459920 (not res!1943619)) b!4632115))

(assert (= (and b!4632115 res!1943617) b!4632116))

(declare-fun m!5482883 () Bool)

(assert (=> d!1459920 m!5482883))

(assert (=> b!4632112 m!5482785))

(assert (=> b!4632112 m!5482785))

(declare-fun m!5482885 () Bool)

(assert (=> b!4632112 m!5482885))

(assert (=> b!4632111 m!5482883))

(declare-fun m!5482887 () Bool)

(assert (=> b!4632111 m!5482887))

(assert (=> b!4632116 m!5482785))

(assert (=> b!4632116 m!5482785))

(assert (=> b!4632116 m!5482885))

(declare-fun m!5482889 () Bool)

(assert (=> b!4632115 m!5482889))

(assert (=> b!4632115 m!5482889))

(declare-fun m!5482891 () Bool)

(assert (=> b!4632115 m!5482891))

(declare-fun m!5482893 () Bool)

(assert (=> b!4632110 m!5482893))

(assert (=> b!4632110 m!5482889))

(assert (=> b!4632110 m!5482889))

(assert (=> b!4632110 m!5482891))

(declare-fun m!5482895 () Bool)

(assert (=> b!4632110 m!5482895))

(assert (=> b!4632117 m!5482785))

(declare-fun m!5482897 () Bool)

(assert (=> b!4632113 m!5482897))

(declare-fun m!5482899 () Bool)

(assert (=> bm!323211 m!5482899))

(assert (=> b!4631735 d!1459920))

(declare-fun bs!1028071 () Bool)

(declare-fun d!1459944 () Bool)

(assert (= bs!1028071 (and d!1459944 d!1459886)))

(declare-fun lambda!193917 () Int)

(assert (=> bs!1028071 (= lambda!193917 lambda!193901)))

(declare-fun bs!1028072 () Bool)

(assert (= bs!1028072 (and d!1459944 b!4631728)))

(assert (=> bs!1028072 (= lambda!193917 lambda!193843)))

(declare-fun bs!1028073 () Bool)

(assert (= bs!1028073 (and d!1459944 d!1459806)))

(assert (=> bs!1028073 (= lambda!193917 lambda!193889)))

(declare-fun bs!1028074 () Bool)

(assert (= bs!1028074 (and d!1459944 d!1459862)))

(assert (=> bs!1028074 (= lambda!193917 lambda!193899)))

(declare-fun bs!1028075 () Bool)

(assert (= bs!1028075 (and d!1459944 d!1459838)))

(assert (=> bs!1028075 (= lambda!193917 lambda!193896)))

(declare-fun bs!1028076 () Bool)

(assert (= bs!1028076 (and d!1459944 d!1459884)))

(assert (=> bs!1028076 (= lambda!193917 lambda!193900)))

(declare-fun lt!1792722 () ListMap!4331)

(assert (=> d!1459944 (invariantList!1227 (toList!5027 lt!1792722))))

(declare-fun e!2889586 () ListMap!4331)

(assert (=> d!1459944 (= lt!1792722 e!2889586)))

(declare-fun c!792870 () Bool)

(assert (=> d!1459944 (= c!792870 (is-Cons!51609 lt!1792299))))

(assert (=> d!1459944 (forall!10869 lt!1792299 lambda!193917)))

(assert (=> d!1459944 (= (extractMap!1587 lt!1792299) lt!1792722)))

(declare-fun b!4632118 () Bool)

(assert (=> b!4632118 (= e!2889586 (addToMapMapFromBucket!992 (_2!29580 (h!57683 lt!1792299)) (extractMap!1587 (t!358789 lt!1792299))))))

(declare-fun b!4632119 () Bool)

(assert (=> b!4632119 (= e!2889586 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459944 c!792870) b!4632118))

(assert (= (and d!1459944 (not c!792870)) b!4632119))

(declare-fun m!5482901 () Bool)

(assert (=> d!1459944 m!5482901))

(declare-fun m!5482903 () Bool)

(assert (=> d!1459944 m!5482903))

(declare-fun m!5482905 () Bool)

(assert (=> b!4632118 m!5482905))

(assert (=> b!4632118 m!5482905))

(declare-fun m!5482907 () Bool)

(assert (=> b!4632118 m!5482907))

(assert (=> b!4631735 d!1459944))

(declare-fun d!1459946 () Bool)

(declare-fun res!1943620 () Bool)

(declare-fun e!2889587 () Bool)

(assert (=> d!1459946 (=> res!1943620 e!2889587)))

(assert (=> d!1459946 (= res!1943620 (not (is-Cons!51608 newBucket!224)))))

(assert (=> d!1459946 (= (noDuplicateKeys!1531 newBucket!224) e!2889587)))

(declare-fun b!4632120 () Bool)

(declare-fun e!2889588 () Bool)

(assert (=> b!4632120 (= e!2889587 e!2889588)))

(declare-fun res!1943621 () Bool)

(assert (=> b!4632120 (=> (not res!1943621) (not e!2889588))))

(assert (=> b!4632120 (= res!1943621 (not (containsKey!2519 (t!358788 newBucket!224) (_1!29579 (h!57682 newBucket!224)))))))

(declare-fun b!4632121 () Bool)

(assert (=> b!4632121 (= e!2889588 (noDuplicateKeys!1531 (t!358788 newBucket!224)))))

(assert (= (and d!1459946 (not res!1943620)) b!4632120))

(assert (= (and b!4632120 res!1943621) b!4632121))

(declare-fun m!5482909 () Bool)

(assert (=> b!4632120 m!5482909))

(declare-fun m!5482911 () Bool)

(assert (=> b!4632121 m!5482911))

(assert (=> b!4631734 d!1459946))

(declare-fun bs!1028077 () Bool)

(declare-fun b!4632122 () Bool)

(assert (= bs!1028077 (and b!4632122 d!1459792)))

(declare-fun lambda!193918 () Int)

(assert (=> bs!1028077 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193918 lambda!193885))))

(declare-fun bs!1028078 () Bool)

(assert (= bs!1028078 (and b!4632122 b!4631860)))

(assert (=> bs!1028078 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193918 lambda!193882))))

(declare-fun bs!1028079 () Bool)

(assert (= bs!1028079 (and b!4632122 d!1459916)))

(assert (=> bs!1028079 (not (= lambda!193918 lambda!193912))))

(declare-fun bs!1028080 () Bool)

(assert (= bs!1028080 (and b!4632122 b!4631864)))

(assert (=> bs!1028080 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193918 lambda!193884))))

(assert (=> bs!1028080 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193918 lambda!193883))))

(declare-fun bs!1028081 () Bool)

(assert (= bs!1028081 (and b!4632122 d!1459894)))

(assert (=> bs!1028081 (not (= lambda!193918 lambda!193908))))

(assert (=> b!4632122 true))

(declare-fun bs!1028082 () Bool)

(declare-fun b!4632126 () Bool)

(assert (= bs!1028082 (and b!4632126 d!1459792)))

(declare-fun lambda!193919 () Int)

(assert (=> bs!1028082 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193919 lambda!193885))))

(declare-fun bs!1028083 () Bool)

(assert (= bs!1028083 (and b!4632126 b!4632122)))

(assert (=> bs!1028083 (= lambda!193919 lambda!193918)))

(declare-fun bs!1028084 () Bool)

(assert (= bs!1028084 (and b!4632126 b!4631860)))

(assert (=> bs!1028084 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193919 lambda!193882))))

(declare-fun bs!1028085 () Bool)

(assert (= bs!1028085 (and b!4632126 d!1459916)))

(assert (=> bs!1028085 (not (= lambda!193919 lambda!193912))))

(declare-fun bs!1028086 () Bool)

(assert (= bs!1028086 (and b!4632126 b!4631864)))

(assert (=> bs!1028086 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193919 lambda!193884))))

(assert (=> bs!1028086 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193919 lambda!193883))))

(declare-fun bs!1028087 () Bool)

(assert (= bs!1028087 (and b!4632126 d!1459894)))

(assert (=> bs!1028087 (not (= lambda!193919 lambda!193908))))

(assert (=> b!4632126 true))

(declare-fun lambda!193920 () Int)

(declare-fun lt!1792737 () ListMap!4331)

(assert (=> bs!1028082 (= (= lt!1792737 lt!1792498) (= lambda!193920 lambda!193885))))

(assert (=> bs!1028083 (= (= lt!1792737 (ListMap!4332 Nil!51608)) (= lambda!193920 lambda!193918))))

(assert (=> bs!1028084 (= (= lt!1792737 lt!1792316) (= lambda!193920 lambda!193882))))

(assert (=> bs!1028085 (not (= lambda!193920 lambda!193912))))

(assert (=> bs!1028086 (= (= lt!1792737 lt!1792500) (= lambda!193920 lambda!193884))))

(assert (=> bs!1028086 (= (= lt!1792737 lt!1792316) (= lambda!193920 lambda!193883))))

(assert (=> b!4632126 (= (= lt!1792737 (ListMap!4332 Nil!51608)) (= lambda!193920 lambda!193919))))

(assert (=> bs!1028087 (not (= lambda!193920 lambda!193908))))

(assert (=> b!4632126 true))

(declare-fun bs!1028089 () Bool)

(declare-fun d!1459948 () Bool)

(assert (= bs!1028089 (and d!1459948 d!1459792)))

(declare-fun lambda!193921 () Int)

(declare-fun lt!1792735 () ListMap!4331)

(assert (=> bs!1028089 (= (= lt!1792735 lt!1792498) (= lambda!193921 lambda!193885))))

(declare-fun bs!1028091 () Bool)

(assert (= bs!1028091 (and d!1459948 b!4632122)))

(assert (=> bs!1028091 (= (= lt!1792735 (ListMap!4332 Nil!51608)) (= lambda!193921 lambda!193918))))

(declare-fun bs!1028092 () Bool)

(assert (= bs!1028092 (and d!1459948 b!4631860)))

(assert (=> bs!1028092 (= (= lt!1792735 lt!1792316) (= lambda!193921 lambda!193882))))

(declare-fun bs!1028093 () Bool)

(assert (= bs!1028093 (and d!1459948 b!4632126)))

(assert (=> bs!1028093 (= (= lt!1792735 lt!1792737) (= lambda!193921 lambda!193920))))

(declare-fun bs!1028094 () Bool)

(assert (= bs!1028094 (and d!1459948 d!1459916)))

(assert (=> bs!1028094 (not (= lambda!193921 lambda!193912))))

(declare-fun bs!1028095 () Bool)

(assert (= bs!1028095 (and d!1459948 b!4631864)))

(assert (=> bs!1028095 (= (= lt!1792735 lt!1792500) (= lambda!193921 lambda!193884))))

(assert (=> bs!1028095 (= (= lt!1792735 lt!1792316) (= lambda!193921 lambda!193883))))

(assert (=> bs!1028093 (= (= lt!1792735 (ListMap!4332 Nil!51608)) (= lambda!193921 lambda!193919))))

(declare-fun bs!1028096 () Bool)

(assert (= bs!1028096 (and d!1459948 d!1459894)))

(assert (=> bs!1028096 (not (= lambda!193921 lambda!193908))))

(assert (=> d!1459948 true))

(declare-fun e!2889590 () ListMap!4331)

(assert (=> b!4632122 (= e!2889590 (ListMap!4332 Nil!51608))))

(declare-fun lt!1792732 () Unit!113502)

(declare-fun call!323218 () Unit!113502)

(assert (=> b!4632122 (= lt!1792732 call!323218)))

(declare-fun call!323219 () Bool)

(assert (=> b!4632122 call!323219))

(declare-fun lt!1792742 () Unit!113502)

(assert (=> b!4632122 (= lt!1792742 lt!1792732)))

(declare-fun call!323217 () Bool)

(assert (=> b!4632122 call!323217))

(declare-fun lt!1792727 () Unit!113502)

(declare-fun Unit!113522 () Unit!113502)

(assert (=> b!4632122 (= lt!1792727 Unit!113522)))

(declare-fun b!4632123 () Bool)

(declare-fun e!2889589 () Bool)

(assert (=> b!4632123 (= e!2889589 (invariantList!1227 (toList!5027 lt!1792735)))))

(declare-fun bm!323212 () Bool)

(assert (=> bm!323212 (= call!323218 (lemmaContainsAllItsOwnKeys!529 (ListMap!4332 Nil!51608)))))

(declare-fun b!4632125 () Bool)

(declare-fun res!1943622 () Bool)

(assert (=> b!4632125 (=> (not res!1943622) (not e!2889589))))

(assert (=> b!4632125 (= res!1943622 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193921))))

(declare-fun c!792871 () Bool)

(declare-fun lt!1792730 () ListMap!4331)

(declare-fun bm!323213 () Bool)

(assert (=> bm!323213 (= call!323219 (forall!10871 (ite c!792871 (toList!5027 (ListMap!4332 Nil!51608)) (toList!5027 lt!1792730)) (ite c!792871 lambda!193918 lambda!193920)))))

(assert (=> d!1459948 e!2889589))

(declare-fun res!1943623 () Bool)

(assert (=> d!1459948 (=> (not res!1943623) (not e!2889589))))

(assert (=> d!1459948 (= res!1943623 (forall!10871 (Cons!51608 lt!1792307 lt!1792295) lambda!193921))))

(assert (=> d!1459948 (= lt!1792735 e!2889590)))

(assert (=> d!1459948 (= c!792871 (is-Nil!51608 (Cons!51608 lt!1792307 lt!1792295)))))

(assert (=> d!1459948 (noDuplicateKeys!1531 (Cons!51608 lt!1792307 lt!1792295))))

(assert (=> d!1459948 (= (addToMapMapFromBucket!992 (Cons!51608 lt!1792307 lt!1792295) (ListMap!4332 Nil!51608)) lt!1792735)))

(declare-fun b!4632124 () Bool)

(declare-fun e!2889591 () Bool)

(assert (=> b!4632124 (= e!2889591 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193920))))

(declare-fun bm!323214 () Bool)

(assert (=> bm!323214 (= call!323217 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) (ite c!792871 lambda!193918 lambda!193919)))))

(assert (=> b!4632126 (= e!2889590 lt!1792737)))

(assert (=> b!4632126 (= lt!1792730 (+!1897 (ListMap!4332 Nil!51608) (h!57682 (Cons!51608 lt!1792307 lt!1792295))))))

(assert (=> b!4632126 (= lt!1792737 (addToMapMapFromBucket!992 (t!358788 (Cons!51608 lt!1792307 lt!1792295)) (+!1897 (ListMap!4332 Nil!51608) (h!57682 (Cons!51608 lt!1792307 lt!1792295)))))))

(declare-fun lt!1792740 () Unit!113502)

(assert (=> b!4632126 (= lt!1792740 call!323218)))

(assert (=> b!4632126 call!323217))

(declare-fun lt!1792741 () Unit!113502)

(assert (=> b!4632126 (= lt!1792741 lt!1792740)))

(assert (=> b!4632126 (forall!10871 (toList!5027 lt!1792730) lambda!193920)))

(declare-fun lt!1792734 () Unit!113502)

(declare-fun Unit!113523 () Unit!113502)

(assert (=> b!4632126 (= lt!1792734 Unit!113523)))

(assert (=> b!4632126 (forall!10871 (t!358788 (Cons!51608 lt!1792307 lt!1792295)) lambda!193920)))

(declare-fun lt!1792736 () Unit!113502)

(declare-fun Unit!113524 () Unit!113502)

(assert (=> b!4632126 (= lt!1792736 Unit!113524)))

(declare-fun lt!1792729 () Unit!113502)

(declare-fun Unit!113525 () Unit!113502)

(assert (=> b!4632126 (= lt!1792729 Unit!113525)))

(declare-fun lt!1792725 () Unit!113502)

(assert (=> b!4632126 (= lt!1792725 (forallContained!3101 (toList!5027 lt!1792730) lambda!193920 (h!57682 (Cons!51608 lt!1792307 lt!1792295))))))

(assert (=> b!4632126 (contains!14700 lt!1792730 (_1!29579 (h!57682 (Cons!51608 lt!1792307 lt!1792295))))))

(declare-fun lt!1792739 () Unit!113502)

(declare-fun Unit!113526 () Unit!113502)

(assert (=> b!4632126 (= lt!1792739 Unit!113526)))

(assert (=> b!4632126 (contains!14700 lt!1792737 (_1!29579 (h!57682 (Cons!51608 lt!1792307 lt!1792295))))))

(declare-fun lt!1792743 () Unit!113502)

(declare-fun Unit!113527 () Unit!113502)

(assert (=> b!4632126 (= lt!1792743 Unit!113527)))

(assert (=> b!4632126 (forall!10871 (Cons!51608 lt!1792307 lt!1792295) lambda!193920)))

(declare-fun lt!1792733 () Unit!113502)

(declare-fun Unit!113528 () Unit!113502)

(assert (=> b!4632126 (= lt!1792733 Unit!113528)))

(assert (=> b!4632126 call!323219))

(declare-fun lt!1792731 () Unit!113502)

(declare-fun Unit!113529 () Unit!113502)

(assert (=> b!4632126 (= lt!1792731 Unit!113529)))

(declare-fun lt!1792724 () Unit!113502)

(declare-fun Unit!113530 () Unit!113502)

(assert (=> b!4632126 (= lt!1792724 Unit!113530)))

(declare-fun lt!1792723 () Unit!113502)

(assert (=> b!4632126 (= lt!1792723 (addForallContainsKeyThenBeforeAdding!528 (ListMap!4332 Nil!51608) lt!1792737 (_1!29579 (h!57682 (Cons!51608 lt!1792307 lt!1792295))) (_2!29579 (h!57682 (Cons!51608 lt!1792307 lt!1792295)))))))

(assert (=> b!4632126 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193920)))

(declare-fun lt!1792728 () Unit!113502)

(assert (=> b!4632126 (= lt!1792728 lt!1792723)))

(assert (=> b!4632126 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193920)))

(declare-fun lt!1792738 () Unit!113502)

(declare-fun Unit!113531 () Unit!113502)

(assert (=> b!4632126 (= lt!1792738 Unit!113531)))

(declare-fun res!1943624 () Bool)

(assert (=> b!4632126 (= res!1943624 (forall!10871 (Cons!51608 lt!1792307 lt!1792295) lambda!193920))))

(assert (=> b!4632126 (=> (not res!1943624) (not e!2889591))))

(assert (=> b!4632126 e!2889591))

(declare-fun lt!1792726 () Unit!113502)

(declare-fun Unit!113532 () Unit!113502)

(assert (=> b!4632126 (= lt!1792726 Unit!113532)))

(assert (= (and d!1459948 c!792871) b!4632122))

(assert (= (and d!1459948 (not c!792871)) b!4632126))

(assert (= (and b!4632126 res!1943624) b!4632124))

(assert (= (or b!4632122 b!4632126) bm!323212))

(assert (= (or b!4632122 b!4632126) bm!323214))

(assert (= (or b!4632122 b!4632126) bm!323213))

(assert (= (and d!1459948 res!1943623) b!4632125))

(assert (= (and b!4632125 res!1943622) b!4632123))

(declare-fun m!5482935 () Bool)

(assert (=> bm!323214 m!5482935))

(declare-fun m!5482937 () Bool)

(assert (=> b!4632126 m!5482937))

(declare-fun m!5482939 () Bool)

(assert (=> b!4632126 m!5482939))

(declare-fun m!5482941 () Bool)

(assert (=> b!4632126 m!5482941))

(declare-fun m!5482943 () Bool)

(assert (=> b!4632126 m!5482943))

(declare-fun m!5482945 () Bool)

(assert (=> b!4632126 m!5482945))

(declare-fun m!5482947 () Bool)

(assert (=> b!4632126 m!5482947))

(assert (=> b!4632126 m!5482943))

(declare-fun m!5482949 () Bool)

(assert (=> b!4632126 m!5482949))

(declare-fun m!5482951 () Bool)

(assert (=> b!4632126 m!5482951))

(declare-fun m!5482953 () Bool)

(assert (=> b!4632126 m!5482953))

(assert (=> b!4632126 m!5482937))

(declare-fun m!5482955 () Bool)

(assert (=> b!4632126 m!5482955))

(assert (=> b!4632126 m!5482951))

(declare-fun m!5482957 () Bool)

(assert (=> bm!323212 m!5482957))

(declare-fun m!5482959 () Bool)

(assert (=> b!4632123 m!5482959))

(assert (=> b!4632124 m!5482951))

(declare-fun m!5482961 () Bool)

(assert (=> d!1459948 m!5482961))

(declare-fun m!5482963 () Bool)

(assert (=> d!1459948 m!5482963))

(declare-fun m!5482965 () Bool)

(assert (=> b!4632125 m!5482965))

(declare-fun m!5482967 () Bool)

(assert (=> bm!323213 m!5482967))

(assert (=> b!4631745 d!1459948))

(declare-fun bs!1028097 () Bool)

(declare-fun b!4632129 () Bool)

(assert (= bs!1028097 (and b!4632129 d!1459792)))

(declare-fun lambda!193922 () Int)

(assert (=> bs!1028097 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193922 lambda!193885))))

(declare-fun bs!1028098 () Bool)

(assert (= bs!1028098 (and b!4632129 b!4632122)))

(assert (=> bs!1028098 (= lambda!193922 lambda!193918)))

(declare-fun bs!1028099 () Bool)

(assert (= bs!1028099 (and b!4632129 b!4631860)))

(assert (=> bs!1028099 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193922 lambda!193882))))

(declare-fun bs!1028100 () Bool)

(assert (= bs!1028100 (and b!4632129 d!1459948)))

(assert (=> bs!1028100 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193922 lambda!193921))))

(declare-fun bs!1028101 () Bool)

(assert (= bs!1028101 (and b!4632129 b!4632126)))

(assert (=> bs!1028101 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193922 lambda!193920))))

(declare-fun bs!1028102 () Bool)

(assert (= bs!1028102 (and b!4632129 d!1459916)))

(assert (=> bs!1028102 (not (= lambda!193922 lambda!193912))))

(declare-fun bs!1028103 () Bool)

(assert (= bs!1028103 (and b!4632129 b!4631864)))

(assert (=> bs!1028103 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193922 lambda!193884))))

(assert (=> bs!1028103 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193922 lambda!193883))))

(assert (=> bs!1028101 (= lambda!193922 lambda!193919)))

(declare-fun bs!1028104 () Bool)

(assert (= bs!1028104 (and b!4632129 d!1459894)))

(assert (=> bs!1028104 (not (= lambda!193922 lambda!193908))))

(assert (=> b!4632129 true))

(declare-fun bs!1028105 () Bool)

(declare-fun b!4632133 () Bool)

(assert (= bs!1028105 (and b!4632133 d!1459792)))

(declare-fun lambda!193923 () Int)

(assert (=> bs!1028105 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193923 lambda!193885))))

(declare-fun bs!1028106 () Bool)

(assert (= bs!1028106 (and b!4632133 b!4632122)))

(assert (=> bs!1028106 (= lambda!193923 lambda!193918)))

(declare-fun bs!1028107 () Bool)

(assert (= bs!1028107 (and b!4632133 b!4631860)))

(assert (=> bs!1028107 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193923 lambda!193882))))

(declare-fun bs!1028108 () Bool)

(assert (= bs!1028108 (and b!4632133 d!1459948)))

(assert (=> bs!1028108 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193923 lambda!193921))))

(declare-fun bs!1028109 () Bool)

(assert (= bs!1028109 (and b!4632133 b!4632126)))

(assert (=> bs!1028109 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193923 lambda!193920))))

(declare-fun bs!1028110 () Bool)

(assert (= bs!1028110 (and b!4632133 d!1459916)))

(assert (=> bs!1028110 (not (= lambda!193923 lambda!193912))))

(declare-fun bs!1028111 () Bool)

(assert (= bs!1028111 (and b!4632133 b!4631864)))

(assert (=> bs!1028111 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193923 lambda!193884))))

(assert (=> bs!1028111 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193923 lambda!193883))))

(declare-fun bs!1028112 () Bool)

(assert (= bs!1028112 (and b!4632133 b!4632129)))

(assert (=> bs!1028112 (= lambda!193923 lambda!193922)))

(assert (=> bs!1028109 (= lambda!193923 lambda!193919)))

(declare-fun bs!1028113 () Bool)

(assert (= bs!1028113 (and b!4632133 d!1459894)))

(assert (=> bs!1028113 (not (= lambda!193923 lambda!193908))))

(assert (=> b!4632133 true))

(declare-fun lt!1792765 () ListMap!4331)

(declare-fun lambda!193924 () Int)

(assert (=> bs!1028105 (= (= lt!1792765 lt!1792498) (= lambda!193924 lambda!193885))))

(assert (=> bs!1028106 (= (= lt!1792765 (ListMap!4332 Nil!51608)) (= lambda!193924 lambda!193918))))

(assert (=> bs!1028107 (= (= lt!1792765 lt!1792316) (= lambda!193924 lambda!193882))))

(assert (=> bs!1028108 (= (= lt!1792765 lt!1792735) (= lambda!193924 lambda!193921))))

(assert (=> bs!1028110 (not (= lambda!193924 lambda!193912))))

(assert (=> bs!1028111 (= (= lt!1792765 lt!1792500) (= lambda!193924 lambda!193884))))

(assert (=> bs!1028111 (= (= lt!1792765 lt!1792316) (= lambda!193924 lambda!193883))))

(assert (=> bs!1028112 (= (= lt!1792765 (ListMap!4332 Nil!51608)) (= lambda!193924 lambda!193922))))

(assert (=> bs!1028109 (= (= lt!1792765 (ListMap!4332 Nil!51608)) (= lambda!193924 lambda!193919))))

(assert (=> bs!1028113 (not (= lambda!193924 lambda!193908))))

(assert (=> bs!1028109 (= (= lt!1792765 lt!1792737) (= lambda!193924 lambda!193920))))

(assert (=> b!4632133 (= (= lt!1792765 (ListMap!4332 Nil!51608)) (= lambda!193924 lambda!193923))))

(assert (=> b!4632133 true))

(declare-fun bs!1028114 () Bool)

(declare-fun d!1459956 () Bool)

(assert (= bs!1028114 (and d!1459956 d!1459792)))

(declare-fun lt!1792763 () ListMap!4331)

(declare-fun lambda!193925 () Int)

(assert (=> bs!1028114 (= (= lt!1792763 lt!1792498) (= lambda!193925 lambda!193885))))

(declare-fun bs!1028115 () Bool)

(assert (= bs!1028115 (and d!1459956 b!4632122)))

(assert (=> bs!1028115 (= (= lt!1792763 (ListMap!4332 Nil!51608)) (= lambda!193925 lambda!193918))))

(declare-fun bs!1028116 () Bool)

(assert (= bs!1028116 (and d!1459956 d!1459948)))

(assert (=> bs!1028116 (= (= lt!1792763 lt!1792735) (= lambda!193925 lambda!193921))))

(declare-fun bs!1028117 () Bool)

(assert (= bs!1028117 (and d!1459956 d!1459916)))

(assert (=> bs!1028117 (not (= lambda!193925 lambda!193912))))

(declare-fun bs!1028118 () Bool)

(assert (= bs!1028118 (and d!1459956 b!4631864)))

(assert (=> bs!1028118 (= (= lt!1792763 lt!1792500) (= lambda!193925 lambda!193884))))

(assert (=> bs!1028118 (= (= lt!1792763 lt!1792316) (= lambda!193925 lambda!193883))))

(declare-fun bs!1028119 () Bool)

(assert (= bs!1028119 (and d!1459956 b!4632129)))

(assert (=> bs!1028119 (= (= lt!1792763 (ListMap!4332 Nil!51608)) (= lambda!193925 lambda!193922))))

(declare-fun bs!1028120 () Bool)

(assert (= bs!1028120 (and d!1459956 b!4632126)))

(assert (=> bs!1028120 (= (= lt!1792763 (ListMap!4332 Nil!51608)) (= lambda!193925 lambda!193919))))

(declare-fun bs!1028121 () Bool)

(assert (= bs!1028121 (and d!1459956 d!1459894)))

(assert (=> bs!1028121 (not (= lambda!193925 lambda!193908))))

(declare-fun bs!1028122 () Bool)

(assert (= bs!1028122 (and d!1459956 b!4632133)))

(assert (=> bs!1028122 (= (= lt!1792763 lt!1792765) (= lambda!193925 lambda!193924))))

(declare-fun bs!1028123 () Bool)

(assert (= bs!1028123 (and d!1459956 b!4631860)))

(assert (=> bs!1028123 (= (= lt!1792763 lt!1792316) (= lambda!193925 lambda!193882))))

(assert (=> bs!1028120 (= (= lt!1792763 lt!1792737) (= lambda!193925 lambda!193920))))

(assert (=> bs!1028122 (= (= lt!1792763 (ListMap!4332 Nil!51608)) (= lambda!193925 lambda!193923))))

(assert (=> d!1459956 true))

(declare-fun e!2889594 () ListMap!4331)

(assert (=> b!4632129 (= e!2889594 (ListMap!4332 Nil!51608))))

(declare-fun lt!1792760 () Unit!113502)

(declare-fun call!323221 () Unit!113502)

(assert (=> b!4632129 (= lt!1792760 call!323221)))

(declare-fun call!323222 () Bool)

(assert (=> b!4632129 call!323222))

(declare-fun lt!1792770 () Unit!113502)

(assert (=> b!4632129 (= lt!1792770 lt!1792760)))

(declare-fun call!323220 () Bool)

(assert (=> b!4632129 call!323220))

(declare-fun lt!1792755 () Unit!113502)

(declare-fun Unit!113533 () Unit!113502)

(assert (=> b!4632129 (= lt!1792755 Unit!113533)))

(declare-fun b!4632130 () Bool)

(declare-fun e!2889593 () Bool)

(assert (=> b!4632130 (= e!2889593 (invariantList!1227 (toList!5027 lt!1792763)))))

(declare-fun bm!323215 () Bool)

(assert (=> bm!323215 (= call!323221 (lemmaContainsAllItsOwnKeys!529 (ListMap!4332 Nil!51608)))))

(declare-fun b!4632132 () Bool)

(declare-fun res!1943627 () Bool)

(assert (=> b!4632132 (=> (not res!1943627) (not e!2889593))))

(assert (=> b!4632132 (= res!1943627 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193925))))

(declare-fun lt!1792758 () ListMap!4331)

(declare-fun bm!323216 () Bool)

(declare-fun c!792872 () Bool)

(assert (=> bm!323216 (= call!323222 (forall!10871 (ite c!792872 (toList!5027 (ListMap!4332 Nil!51608)) (toList!5027 lt!1792758)) (ite c!792872 lambda!193922 lambda!193924)))))

(assert (=> d!1459956 e!2889593))

(declare-fun res!1943628 () Bool)

(assert (=> d!1459956 (=> (not res!1943628) (not e!2889593))))

(assert (=> d!1459956 (= res!1943628 (forall!10871 lt!1792295 lambda!193925))))

(assert (=> d!1459956 (= lt!1792763 e!2889594)))

(assert (=> d!1459956 (= c!792872 (is-Nil!51608 lt!1792295))))

(assert (=> d!1459956 (noDuplicateKeys!1531 lt!1792295)))

(assert (=> d!1459956 (= (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792763)))

(declare-fun b!4632131 () Bool)

(declare-fun e!2889595 () Bool)

(assert (=> b!4632131 (= e!2889595 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193924))))

(declare-fun bm!323217 () Bool)

(assert (=> bm!323217 (= call!323220 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) (ite c!792872 lambda!193922 lambda!193923)))))

(assert (=> b!4632133 (= e!2889594 lt!1792765)))

(assert (=> b!4632133 (= lt!1792758 (+!1897 (ListMap!4332 Nil!51608) (h!57682 lt!1792295)))))

(assert (=> b!4632133 (= lt!1792765 (addToMapMapFromBucket!992 (t!358788 lt!1792295) (+!1897 (ListMap!4332 Nil!51608) (h!57682 lt!1792295))))))

(declare-fun lt!1792768 () Unit!113502)

(assert (=> b!4632133 (= lt!1792768 call!323221)))

(assert (=> b!4632133 call!323220))

(declare-fun lt!1792769 () Unit!113502)

(assert (=> b!4632133 (= lt!1792769 lt!1792768)))

(assert (=> b!4632133 (forall!10871 (toList!5027 lt!1792758) lambda!193924)))

(declare-fun lt!1792762 () Unit!113502)

(declare-fun Unit!113534 () Unit!113502)

(assert (=> b!4632133 (= lt!1792762 Unit!113534)))

(assert (=> b!4632133 (forall!10871 (t!358788 lt!1792295) lambda!193924)))

(declare-fun lt!1792764 () Unit!113502)

(declare-fun Unit!113535 () Unit!113502)

(assert (=> b!4632133 (= lt!1792764 Unit!113535)))

(declare-fun lt!1792757 () Unit!113502)

(declare-fun Unit!113536 () Unit!113502)

(assert (=> b!4632133 (= lt!1792757 Unit!113536)))

(declare-fun lt!1792753 () Unit!113502)

(assert (=> b!4632133 (= lt!1792753 (forallContained!3101 (toList!5027 lt!1792758) lambda!193924 (h!57682 lt!1792295)))))

(assert (=> b!4632133 (contains!14700 lt!1792758 (_1!29579 (h!57682 lt!1792295)))))

(declare-fun lt!1792767 () Unit!113502)

(declare-fun Unit!113537 () Unit!113502)

(assert (=> b!4632133 (= lt!1792767 Unit!113537)))

(assert (=> b!4632133 (contains!14700 lt!1792765 (_1!29579 (h!57682 lt!1792295)))))

(declare-fun lt!1792771 () Unit!113502)

(declare-fun Unit!113538 () Unit!113502)

(assert (=> b!4632133 (= lt!1792771 Unit!113538)))

(assert (=> b!4632133 (forall!10871 lt!1792295 lambda!193924)))

(declare-fun lt!1792761 () Unit!113502)

(declare-fun Unit!113539 () Unit!113502)

(assert (=> b!4632133 (= lt!1792761 Unit!113539)))

(assert (=> b!4632133 call!323222))

(declare-fun lt!1792759 () Unit!113502)

(declare-fun Unit!113540 () Unit!113502)

(assert (=> b!4632133 (= lt!1792759 Unit!113540)))

(declare-fun lt!1792752 () Unit!113502)

(declare-fun Unit!113541 () Unit!113502)

(assert (=> b!4632133 (= lt!1792752 Unit!113541)))

(declare-fun lt!1792751 () Unit!113502)

(assert (=> b!4632133 (= lt!1792751 (addForallContainsKeyThenBeforeAdding!528 (ListMap!4332 Nil!51608) lt!1792765 (_1!29579 (h!57682 lt!1792295)) (_2!29579 (h!57682 lt!1792295))))))

(assert (=> b!4632133 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193924)))

(declare-fun lt!1792756 () Unit!113502)

(assert (=> b!4632133 (= lt!1792756 lt!1792751)))

(assert (=> b!4632133 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193924)))

(declare-fun lt!1792766 () Unit!113502)

(declare-fun Unit!113542 () Unit!113502)

(assert (=> b!4632133 (= lt!1792766 Unit!113542)))

(declare-fun res!1943629 () Bool)

(assert (=> b!4632133 (= res!1943629 (forall!10871 lt!1792295 lambda!193924))))

(assert (=> b!4632133 (=> (not res!1943629) (not e!2889595))))

(assert (=> b!4632133 e!2889595))

(declare-fun lt!1792754 () Unit!113502)

(declare-fun Unit!113543 () Unit!113502)

(assert (=> b!4632133 (= lt!1792754 Unit!113543)))

(assert (= (and d!1459956 c!792872) b!4632129))

(assert (= (and d!1459956 (not c!792872)) b!4632133))

(assert (= (and b!4632133 res!1943629) b!4632131))

(assert (= (or b!4632129 b!4632133) bm!323215))

(assert (= (or b!4632129 b!4632133) bm!323217))

(assert (= (or b!4632129 b!4632133) bm!323216))

(assert (= (and d!1459956 res!1943628) b!4632132))

(assert (= (and b!4632132 res!1943627) b!4632130))

(declare-fun m!5482969 () Bool)

(assert (=> bm!323217 m!5482969))

(declare-fun m!5482971 () Bool)

(assert (=> b!4632133 m!5482971))

(declare-fun m!5482973 () Bool)

(assert (=> b!4632133 m!5482973))

(declare-fun m!5482975 () Bool)

(assert (=> b!4632133 m!5482975))

(declare-fun m!5482977 () Bool)

(assert (=> b!4632133 m!5482977))

(declare-fun m!5482979 () Bool)

(assert (=> b!4632133 m!5482979))

(declare-fun m!5482981 () Bool)

(assert (=> b!4632133 m!5482981))

(assert (=> b!4632133 m!5482977))

(declare-fun m!5482983 () Bool)

(assert (=> b!4632133 m!5482983))

(declare-fun m!5482985 () Bool)

(assert (=> b!4632133 m!5482985))

(declare-fun m!5482987 () Bool)

(assert (=> b!4632133 m!5482987))

(assert (=> b!4632133 m!5482971))

(declare-fun m!5482989 () Bool)

(assert (=> b!4632133 m!5482989))

(assert (=> b!4632133 m!5482985))

(assert (=> bm!323215 m!5482957))

(declare-fun m!5482991 () Bool)

(assert (=> b!4632130 m!5482991))

(assert (=> b!4632131 m!5482985))

(declare-fun m!5482993 () Bool)

(assert (=> d!1459956 m!5482993))

(assert (=> d!1459956 m!5482829))

(declare-fun m!5482995 () Bool)

(assert (=> b!4632132 m!5482995))

(declare-fun m!5482997 () Bool)

(assert (=> bm!323216 m!5482997))

(assert (=> b!4631745 d!1459956))

(declare-fun bs!1028124 () Bool)

(declare-fun b!4632134 () Bool)

(assert (= bs!1028124 (and b!4632134 d!1459792)))

(declare-fun lambda!193926 () Int)

(assert (=> bs!1028124 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193926 lambda!193885))))

(declare-fun bs!1028125 () Bool)

(assert (= bs!1028125 (and b!4632134 b!4632122)))

(assert (=> bs!1028125 (= lambda!193926 lambda!193918)))

(declare-fun bs!1028126 () Bool)

(assert (= bs!1028126 (and b!4632134 d!1459948)))

(assert (=> bs!1028126 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193926 lambda!193921))))

(declare-fun bs!1028127 () Bool)

(assert (= bs!1028127 (and b!4632134 d!1459956)))

(assert (=> bs!1028127 (= (= (ListMap!4332 Nil!51608) lt!1792763) (= lambda!193926 lambda!193925))))

(declare-fun bs!1028128 () Bool)

(assert (= bs!1028128 (and b!4632134 d!1459916)))

(assert (=> bs!1028128 (not (= lambda!193926 lambda!193912))))

(declare-fun bs!1028129 () Bool)

(assert (= bs!1028129 (and b!4632134 b!4631864)))

(assert (=> bs!1028129 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193926 lambda!193884))))

(assert (=> bs!1028129 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193926 lambda!193883))))

(declare-fun bs!1028130 () Bool)

(assert (= bs!1028130 (and b!4632134 b!4632129)))

(assert (=> bs!1028130 (= lambda!193926 lambda!193922)))

(declare-fun bs!1028131 () Bool)

(assert (= bs!1028131 (and b!4632134 b!4632126)))

(assert (=> bs!1028131 (= lambda!193926 lambda!193919)))

(declare-fun bs!1028132 () Bool)

(assert (= bs!1028132 (and b!4632134 d!1459894)))

(assert (=> bs!1028132 (not (= lambda!193926 lambda!193908))))

(declare-fun bs!1028133 () Bool)

(assert (= bs!1028133 (and b!4632134 b!4632133)))

(assert (=> bs!1028133 (= (= (ListMap!4332 Nil!51608) lt!1792765) (= lambda!193926 lambda!193924))))

(declare-fun bs!1028134 () Bool)

(assert (= bs!1028134 (and b!4632134 b!4631860)))

(assert (=> bs!1028134 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193926 lambda!193882))))

(assert (=> bs!1028131 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193926 lambda!193920))))

(assert (=> bs!1028133 (= lambda!193926 lambda!193923)))

(assert (=> b!4632134 true))

(declare-fun bs!1028135 () Bool)

(declare-fun b!4632138 () Bool)

(assert (= bs!1028135 (and b!4632138 d!1459792)))

(declare-fun lambda!193927 () Int)

(assert (=> bs!1028135 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193927 lambda!193885))))

(declare-fun bs!1028136 () Bool)

(assert (= bs!1028136 (and b!4632138 b!4632122)))

(assert (=> bs!1028136 (= lambda!193927 lambda!193918)))

(declare-fun bs!1028137 () Bool)

(assert (= bs!1028137 (and b!4632138 d!1459948)))

(assert (=> bs!1028137 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193927 lambda!193921))))

(declare-fun bs!1028138 () Bool)

(assert (= bs!1028138 (and b!4632138 d!1459956)))

(assert (=> bs!1028138 (= (= (ListMap!4332 Nil!51608) lt!1792763) (= lambda!193927 lambda!193925))))

(declare-fun bs!1028139 () Bool)

(assert (= bs!1028139 (and b!4632138 d!1459916)))

(assert (=> bs!1028139 (not (= lambda!193927 lambda!193912))))

(declare-fun bs!1028140 () Bool)

(assert (= bs!1028140 (and b!4632138 b!4631864)))

(assert (=> bs!1028140 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193927 lambda!193884))))

(assert (=> bs!1028140 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193927 lambda!193883))))

(declare-fun bs!1028141 () Bool)

(assert (= bs!1028141 (and b!4632138 b!4632129)))

(assert (=> bs!1028141 (= lambda!193927 lambda!193922)))

(declare-fun bs!1028142 () Bool)

(assert (= bs!1028142 (and b!4632138 b!4632126)))

(assert (=> bs!1028142 (= lambda!193927 lambda!193919)))

(declare-fun bs!1028143 () Bool)

(assert (= bs!1028143 (and b!4632138 b!4632134)))

(assert (=> bs!1028143 (= lambda!193927 lambda!193926)))

(declare-fun bs!1028144 () Bool)

(assert (= bs!1028144 (and b!4632138 d!1459894)))

(assert (=> bs!1028144 (not (= lambda!193927 lambda!193908))))

(declare-fun bs!1028145 () Bool)

(assert (= bs!1028145 (and b!4632138 b!4632133)))

(assert (=> bs!1028145 (= (= (ListMap!4332 Nil!51608) lt!1792765) (= lambda!193927 lambda!193924))))

(declare-fun bs!1028146 () Bool)

(assert (= bs!1028146 (and b!4632138 b!4631860)))

(assert (=> bs!1028146 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193927 lambda!193882))))

(assert (=> bs!1028142 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193927 lambda!193920))))

(assert (=> bs!1028145 (= lambda!193927 lambda!193923)))

(assert (=> b!4632138 true))

(declare-fun lambda!193928 () Int)

(declare-fun lt!1792786 () ListMap!4331)

(assert (=> bs!1028135 (= (= lt!1792786 lt!1792498) (= lambda!193928 lambda!193885))))

(assert (=> bs!1028136 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193918))))

(assert (=> bs!1028137 (= (= lt!1792786 lt!1792735) (= lambda!193928 lambda!193921))))

(assert (=> bs!1028138 (= (= lt!1792786 lt!1792763) (= lambda!193928 lambda!193925))))

(assert (=> bs!1028139 (not (= lambda!193928 lambda!193912))))

(assert (=> bs!1028140 (= (= lt!1792786 lt!1792500) (= lambda!193928 lambda!193884))))

(assert (=> bs!1028141 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193922))))

(assert (=> bs!1028142 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193919))))

(assert (=> bs!1028143 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193926))))

(assert (=> bs!1028144 (not (= lambda!193928 lambda!193908))))

(assert (=> bs!1028145 (= (= lt!1792786 lt!1792765) (= lambda!193928 lambda!193924))))

(assert (=> bs!1028146 (= (= lt!1792786 lt!1792316) (= lambda!193928 lambda!193882))))

(assert (=> bs!1028142 (= (= lt!1792786 lt!1792737) (= lambda!193928 lambda!193920))))

(assert (=> bs!1028145 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193923))))

(assert (=> b!4632138 (= (= lt!1792786 (ListMap!4332 Nil!51608)) (= lambda!193928 lambda!193927))))

(assert (=> bs!1028140 (= (= lt!1792786 lt!1792316) (= lambda!193928 lambda!193883))))

(assert (=> b!4632138 true))

(declare-fun bs!1028147 () Bool)

(declare-fun d!1459958 () Bool)

(assert (= bs!1028147 (and d!1459958 d!1459792)))

(declare-fun lambda!193929 () Int)

(declare-fun lt!1792784 () ListMap!4331)

(assert (=> bs!1028147 (= (= lt!1792784 lt!1792498) (= lambda!193929 lambda!193885))))

(declare-fun bs!1028148 () Bool)

(assert (= bs!1028148 (and d!1459958 b!4632122)))

(assert (=> bs!1028148 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193918))))

(declare-fun bs!1028149 () Bool)

(assert (= bs!1028149 (and d!1459958 d!1459948)))

(assert (=> bs!1028149 (= (= lt!1792784 lt!1792735) (= lambda!193929 lambda!193921))))

(declare-fun bs!1028150 () Bool)

(assert (= bs!1028150 (and d!1459958 d!1459956)))

(assert (=> bs!1028150 (= (= lt!1792784 lt!1792763) (= lambda!193929 lambda!193925))))

(declare-fun bs!1028151 () Bool)

(assert (= bs!1028151 (and d!1459958 d!1459916)))

(assert (=> bs!1028151 (not (= lambda!193929 lambda!193912))))

(declare-fun bs!1028152 () Bool)

(assert (= bs!1028152 (and d!1459958 b!4632138)))

(assert (=> bs!1028152 (= (= lt!1792784 lt!1792786) (= lambda!193929 lambda!193928))))

(declare-fun bs!1028153 () Bool)

(assert (= bs!1028153 (and d!1459958 b!4631864)))

(assert (=> bs!1028153 (= (= lt!1792784 lt!1792500) (= lambda!193929 lambda!193884))))

(declare-fun bs!1028154 () Bool)

(assert (= bs!1028154 (and d!1459958 b!4632129)))

(assert (=> bs!1028154 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193922))))

(declare-fun bs!1028155 () Bool)

(assert (= bs!1028155 (and d!1459958 b!4632126)))

(assert (=> bs!1028155 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193919))))

(declare-fun bs!1028156 () Bool)

(assert (= bs!1028156 (and d!1459958 b!4632134)))

(assert (=> bs!1028156 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193926))))

(declare-fun bs!1028157 () Bool)

(assert (= bs!1028157 (and d!1459958 d!1459894)))

(assert (=> bs!1028157 (not (= lambda!193929 lambda!193908))))

(declare-fun bs!1028158 () Bool)

(assert (= bs!1028158 (and d!1459958 b!4632133)))

(assert (=> bs!1028158 (= (= lt!1792784 lt!1792765) (= lambda!193929 lambda!193924))))

(declare-fun bs!1028159 () Bool)

(assert (= bs!1028159 (and d!1459958 b!4631860)))

(assert (=> bs!1028159 (= (= lt!1792784 lt!1792316) (= lambda!193929 lambda!193882))))

(assert (=> bs!1028155 (= (= lt!1792784 lt!1792737) (= lambda!193929 lambda!193920))))

(assert (=> bs!1028158 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193923))))

(assert (=> bs!1028152 (= (= lt!1792784 (ListMap!4332 Nil!51608)) (= lambda!193929 lambda!193927))))

(assert (=> bs!1028153 (= (= lt!1792784 lt!1792316) (= lambda!193929 lambda!193883))))

(assert (=> d!1459958 true))

(declare-fun e!2889597 () ListMap!4331)

(assert (=> b!4632134 (= e!2889597 (ListMap!4332 Nil!51608))))

(declare-fun lt!1792781 () Unit!113502)

(declare-fun call!323224 () Unit!113502)

(assert (=> b!4632134 (= lt!1792781 call!323224)))

(declare-fun call!323225 () Bool)

(assert (=> b!4632134 call!323225))

(declare-fun lt!1792791 () Unit!113502)

(assert (=> b!4632134 (= lt!1792791 lt!1792781)))

(declare-fun call!323223 () Bool)

(assert (=> b!4632134 call!323223))

(declare-fun lt!1792776 () Unit!113502)

(declare-fun Unit!113544 () Unit!113502)

(assert (=> b!4632134 (= lt!1792776 Unit!113544)))

(declare-fun b!4632135 () Bool)

(declare-fun e!2889596 () Bool)

(assert (=> b!4632135 (= e!2889596 (invariantList!1227 (toList!5027 lt!1792784)))))

(declare-fun bm!323218 () Bool)

(assert (=> bm!323218 (= call!323224 (lemmaContainsAllItsOwnKeys!529 (ListMap!4332 Nil!51608)))))

(declare-fun b!4632137 () Bool)

(declare-fun res!1943630 () Bool)

(assert (=> b!4632137 (=> (not res!1943630) (not e!2889596))))

(assert (=> b!4632137 (= res!1943630 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193929))))

(declare-fun c!792873 () Bool)

(declare-fun bm!323219 () Bool)

(declare-fun lt!1792779 () ListMap!4331)

(assert (=> bm!323219 (= call!323225 (forall!10871 (ite c!792873 (toList!5027 (ListMap!4332 Nil!51608)) (toList!5027 lt!1792779)) (ite c!792873 lambda!193926 lambda!193928)))))

(assert (=> d!1459958 e!2889596))

(declare-fun res!1943631 () Bool)

(assert (=> d!1459958 (=> (not res!1943631) (not e!2889596))))

(assert (=> d!1459958 (= res!1943631 (forall!10871 (Cons!51608 lt!1792298 lt!1792322) lambda!193929))))

(assert (=> d!1459958 (= lt!1792784 e!2889597)))

(assert (=> d!1459958 (= c!792873 (is-Nil!51608 (Cons!51608 lt!1792298 lt!1792322)))))

(assert (=> d!1459958 (noDuplicateKeys!1531 (Cons!51608 lt!1792298 lt!1792322))))

(assert (=> d!1459958 (= (addToMapMapFromBucket!992 (Cons!51608 lt!1792298 lt!1792322) (ListMap!4332 Nil!51608)) lt!1792784)))

(declare-fun b!4632136 () Bool)

(declare-fun e!2889598 () Bool)

(assert (=> b!4632136 (= e!2889598 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193928))))

(declare-fun bm!323220 () Bool)

(assert (=> bm!323220 (= call!323223 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) (ite c!792873 lambda!193926 lambda!193927)))))

(assert (=> b!4632138 (= e!2889597 lt!1792786)))

(assert (=> b!4632138 (= lt!1792779 (+!1897 (ListMap!4332 Nil!51608) (h!57682 (Cons!51608 lt!1792298 lt!1792322))))))

(assert (=> b!4632138 (= lt!1792786 (addToMapMapFromBucket!992 (t!358788 (Cons!51608 lt!1792298 lt!1792322)) (+!1897 (ListMap!4332 Nil!51608) (h!57682 (Cons!51608 lt!1792298 lt!1792322)))))))

(declare-fun lt!1792789 () Unit!113502)

(assert (=> b!4632138 (= lt!1792789 call!323224)))

(assert (=> b!4632138 call!323223))

(declare-fun lt!1792790 () Unit!113502)

(assert (=> b!4632138 (= lt!1792790 lt!1792789)))

(assert (=> b!4632138 (forall!10871 (toList!5027 lt!1792779) lambda!193928)))

(declare-fun lt!1792783 () Unit!113502)

(declare-fun Unit!113545 () Unit!113502)

(assert (=> b!4632138 (= lt!1792783 Unit!113545)))

(assert (=> b!4632138 (forall!10871 (t!358788 (Cons!51608 lt!1792298 lt!1792322)) lambda!193928)))

(declare-fun lt!1792785 () Unit!113502)

(declare-fun Unit!113546 () Unit!113502)

(assert (=> b!4632138 (= lt!1792785 Unit!113546)))

(declare-fun lt!1792778 () Unit!113502)

(declare-fun Unit!113547 () Unit!113502)

(assert (=> b!4632138 (= lt!1792778 Unit!113547)))

(declare-fun lt!1792774 () Unit!113502)

(assert (=> b!4632138 (= lt!1792774 (forallContained!3101 (toList!5027 lt!1792779) lambda!193928 (h!57682 (Cons!51608 lt!1792298 lt!1792322))))))

(assert (=> b!4632138 (contains!14700 lt!1792779 (_1!29579 (h!57682 (Cons!51608 lt!1792298 lt!1792322))))))

(declare-fun lt!1792788 () Unit!113502)

(declare-fun Unit!113548 () Unit!113502)

(assert (=> b!4632138 (= lt!1792788 Unit!113548)))

(assert (=> b!4632138 (contains!14700 lt!1792786 (_1!29579 (h!57682 (Cons!51608 lt!1792298 lt!1792322))))))

(declare-fun lt!1792792 () Unit!113502)

(declare-fun Unit!113549 () Unit!113502)

(assert (=> b!4632138 (= lt!1792792 Unit!113549)))

(assert (=> b!4632138 (forall!10871 (Cons!51608 lt!1792298 lt!1792322) lambda!193928)))

(declare-fun lt!1792782 () Unit!113502)

(declare-fun Unit!113550 () Unit!113502)

(assert (=> b!4632138 (= lt!1792782 Unit!113550)))

(assert (=> b!4632138 call!323225))

(declare-fun lt!1792780 () Unit!113502)

(declare-fun Unit!113551 () Unit!113502)

(assert (=> b!4632138 (= lt!1792780 Unit!113551)))

(declare-fun lt!1792773 () Unit!113502)

(declare-fun Unit!113552 () Unit!113502)

(assert (=> b!4632138 (= lt!1792773 Unit!113552)))

(declare-fun lt!1792772 () Unit!113502)

(assert (=> b!4632138 (= lt!1792772 (addForallContainsKeyThenBeforeAdding!528 (ListMap!4332 Nil!51608) lt!1792786 (_1!29579 (h!57682 (Cons!51608 lt!1792298 lt!1792322))) (_2!29579 (h!57682 (Cons!51608 lt!1792298 lt!1792322)))))))

(assert (=> b!4632138 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193928)))

(declare-fun lt!1792777 () Unit!113502)

(assert (=> b!4632138 (= lt!1792777 lt!1792772)))

(assert (=> b!4632138 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193928)))

(declare-fun lt!1792787 () Unit!113502)

(declare-fun Unit!113553 () Unit!113502)

(assert (=> b!4632138 (= lt!1792787 Unit!113553)))

(declare-fun res!1943632 () Bool)

(assert (=> b!4632138 (= res!1943632 (forall!10871 (Cons!51608 lt!1792298 lt!1792322) lambda!193928))))

(assert (=> b!4632138 (=> (not res!1943632) (not e!2889598))))

(assert (=> b!4632138 e!2889598))

(declare-fun lt!1792775 () Unit!113502)

(declare-fun Unit!113554 () Unit!113502)

(assert (=> b!4632138 (= lt!1792775 Unit!113554)))

(assert (= (and d!1459958 c!792873) b!4632134))

(assert (= (and d!1459958 (not c!792873)) b!4632138))

(assert (= (and b!4632138 res!1943632) b!4632136))

(assert (= (or b!4632134 b!4632138) bm!323218))

(assert (= (or b!4632134 b!4632138) bm!323220))

(assert (= (or b!4632134 b!4632138) bm!323219))

(assert (= (and d!1459958 res!1943631) b!4632137))

(assert (= (and b!4632137 res!1943630) b!4632135))

(declare-fun m!5482999 () Bool)

(assert (=> bm!323220 m!5482999))

(declare-fun m!5483001 () Bool)

(assert (=> b!4632138 m!5483001))

(declare-fun m!5483003 () Bool)

(assert (=> b!4632138 m!5483003))

(declare-fun m!5483005 () Bool)

(assert (=> b!4632138 m!5483005))

(declare-fun m!5483007 () Bool)

(assert (=> b!4632138 m!5483007))

(declare-fun m!5483009 () Bool)

(assert (=> b!4632138 m!5483009))

(declare-fun m!5483011 () Bool)

(assert (=> b!4632138 m!5483011))

(assert (=> b!4632138 m!5483007))

(declare-fun m!5483013 () Bool)

(assert (=> b!4632138 m!5483013))

(declare-fun m!5483015 () Bool)

(assert (=> b!4632138 m!5483015))

(declare-fun m!5483017 () Bool)

(assert (=> b!4632138 m!5483017))

(assert (=> b!4632138 m!5483001))

(declare-fun m!5483019 () Bool)

(assert (=> b!4632138 m!5483019))

(assert (=> b!4632138 m!5483015))

(assert (=> bm!323218 m!5482957))

(declare-fun m!5483021 () Bool)

(assert (=> b!4632135 m!5483021))

(assert (=> b!4632136 m!5483015))

(declare-fun m!5483023 () Bool)

(assert (=> d!1459958 m!5483023))

(declare-fun m!5483025 () Bool)

(assert (=> d!1459958 m!5483025))

(declare-fun m!5483027 () Bool)

(assert (=> b!4632137 m!5483027))

(declare-fun m!5483029 () Bool)

(assert (=> bm!323219 m!5483029))

(assert (=> b!4631745 d!1459958))

(declare-fun d!1459960 () Bool)

(assert (=> d!1459960 (= (head!9665 oldBucket!40) (h!57682 oldBucket!40))))

(assert (=> b!4631745 d!1459960))

(declare-fun d!1459962 () Bool)

(assert (=> d!1459962 (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792307 lt!1792295) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792307))))

(declare-fun lt!1792795 () Unit!113502)

(declare-fun choose!31540 (tuple2!52570 List!51732 ListMap!4331) Unit!113502)

(assert (=> d!1459962 (= lt!1792795 (choose!31540 lt!1792307 lt!1792295 (ListMap!4332 Nil!51608)))))

(assert (=> d!1459962 (noDuplicateKeys!1531 lt!1792295)))

(assert (=> d!1459962 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!97 lt!1792307 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792795)))

(declare-fun bs!1028160 () Bool)

(assert (= bs!1028160 d!1459962))

(assert (=> bs!1028160 m!5482191))

(assert (=> bs!1028160 m!5482185))

(assert (=> bs!1028160 m!5482829))

(assert (=> bs!1028160 m!5482191))

(assert (=> bs!1028160 m!5482183))

(assert (=> bs!1028160 m!5482185))

(assert (=> bs!1028160 m!5482187))

(assert (=> bs!1028160 m!5482183))

(declare-fun m!5483031 () Bool)

(assert (=> bs!1028160 m!5483031))

(assert (=> b!4631745 d!1459962))

(declare-fun d!1459964 () Bool)

(declare-fun e!2889599 () Bool)

(assert (=> d!1459964 e!2889599))

(declare-fun res!1943634 () Bool)

(assert (=> d!1459964 (=> (not res!1943634) (not e!2889599))))

(declare-fun lt!1792797 () ListMap!4331)

(assert (=> d!1459964 (= res!1943634 (contains!14700 lt!1792797 (_1!29579 (h!57682 oldBucket!40))))))

(declare-fun lt!1792796 () List!51732)

(assert (=> d!1459964 (= lt!1792797 (ListMap!4332 lt!1792796))))

(declare-fun lt!1792799 () Unit!113502)

(declare-fun lt!1792798 () Unit!113502)

(assert (=> d!1459964 (= lt!1792799 lt!1792798)))

(assert (=> d!1459964 (= (getValueByKey!1497 lt!1792796 (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459964 (= lt!1792798 (lemmaContainsTupThenGetReturnValue!871 lt!1792796 (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459964 (= lt!1792796 (insertNoDuplicatedKeys!379 (toList!5027 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609))) (_1!29579 (h!57682 oldBucket!40)) (_2!29579 (h!57682 oldBucket!40))))))

(assert (=> d!1459964 (= (+!1897 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)) (h!57682 oldBucket!40)) lt!1792797)))

(declare-fun b!4632139 () Bool)

(declare-fun res!1943633 () Bool)

(assert (=> b!4632139 (=> (not res!1943633) (not e!2889599))))

(assert (=> b!4632139 (= res!1943633 (= (getValueByKey!1497 (toList!5027 lt!1792797) (_1!29579 (h!57682 oldBucket!40))) (Some!11662 (_2!29579 (h!57682 oldBucket!40)))))))

(declare-fun b!4632140 () Bool)

(assert (=> b!4632140 (= e!2889599 (contains!14706 (toList!5027 lt!1792797) (h!57682 oldBucket!40)))))

(assert (= (and d!1459964 res!1943634) b!4632139))

(assert (= (and b!4632139 res!1943633) b!4632140))

(declare-fun m!5483033 () Bool)

(assert (=> d!1459964 m!5483033))

(declare-fun m!5483035 () Bool)

(assert (=> d!1459964 m!5483035))

(declare-fun m!5483037 () Bool)

(assert (=> d!1459964 m!5483037))

(declare-fun m!5483039 () Bool)

(assert (=> d!1459964 m!5483039))

(declare-fun m!5483041 () Bool)

(assert (=> b!4632139 m!5483041))

(declare-fun m!5483043 () Bool)

(assert (=> b!4632140 m!5483043))

(assert (=> b!4631745 d!1459964))

(declare-fun d!1459966 () Bool)

(assert (=> d!1459966 (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792298 lt!1792322) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792298))))

(declare-fun lt!1792800 () Unit!113502)

(assert (=> d!1459966 (= lt!1792800 (choose!31540 lt!1792298 lt!1792322 (ListMap!4332 Nil!51608)))))

(assert (=> d!1459966 (noDuplicateKeys!1531 lt!1792322)))

(assert (=> d!1459966 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!97 lt!1792298 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792800)))

(declare-fun bs!1028161 () Bool)

(assert (= bs!1028161 d!1459966))

(assert (=> bs!1028161 m!5482189))

(assert (=> bs!1028161 m!5482213))

(declare-fun m!5483045 () Bool)

(assert (=> bs!1028161 m!5483045))

(assert (=> bs!1028161 m!5482189))

(assert (=> bs!1028161 m!5482211))

(assert (=> bs!1028161 m!5482213))

(assert (=> bs!1028161 m!5482215))

(assert (=> bs!1028161 m!5482211))

(declare-fun m!5483047 () Bool)

(assert (=> bs!1028161 m!5483047))

(assert (=> b!4631745 d!1459966))

(declare-fun d!1459968 () Bool)

(assert (=> d!1459968 (= (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792298 lt!1792322) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792298)) (= (content!8867 (toList!5027 (addToMapMapFromBucket!992 (Cons!51608 lt!1792298 lt!1792322) (ListMap!4332 Nil!51608)))) (content!8867 (toList!5027 (+!1897 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792298)))))))

(declare-fun bs!1028162 () Bool)

(assert (= bs!1028162 d!1459968))

(declare-fun m!5483049 () Bool)

(assert (=> bs!1028162 m!5483049))

(declare-fun m!5483051 () Bool)

(assert (=> bs!1028162 m!5483051))

(assert (=> b!4631745 d!1459968))

(declare-fun d!1459970 () Bool)

(assert (=> d!1459970 (= (head!9665 newBucket!224) (h!57682 newBucket!224))))

(assert (=> b!4631745 d!1459970))

(declare-fun d!1459972 () Bool)

(assert (=> d!1459972 (= (eq!846 (addToMapMapFromBucket!992 (Cons!51608 lt!1792307 lt!1792295) (ListMap!4332 Nil!51608)) (+!1897 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792307)) (= (content!8867 (toList!5027 (addToMapMapFromBucket!992 (Cons!51608 lt!1792307 lt!1792295) (ListMap!4332 Nil!51608)))) (content!8867 (toList!5027 (+!1897 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792307)))))))

(declare-fun bs!1028163 () Bool)

(assert (= bs!1028163 d!1459972))

(declare-fun m!5483053 () Bool)

(assert (=> bs!1028163 m!5483053))

(declare-fun m!5483055 () Bool)

(assert (=> bs!1028163 m!5483055))

(assert (=> b!4631745 d!1459972))

(declare-fun d!1459974 () Bool)

(declare-fun e!2889600 () Bool)

(assert (=> d!1459974 e!2889600))

(declare-fun res!1943636 () Bool)

(assert (=> d!1459974 (=> (not res!1943636) (not e!2889600))))

(declare-fun lt!1792802 () ListMap!4331)

(assert (=> d!1459974 (= res!1943636 (contains!14700 lt!1792802 (_1!29579 lt!1792298)))))

(declare-fun lt!1792801 () List!51732)

(assert (=> d!1459974 (= lt!1792802 (ListMap!4332 lt!1792801))))

(declare-fun lt!1792804 () Unit!113502)

(declare-fun lt!1792803 () Unit!113502)

(assert (=> d!1459974 (= lt!1792804 lt!1792803)))

(assert (=> d!1459974 (= (getValueByKey!1497 lt!1792801 (_1!29579 lt!1792298)) (Some!11662 (_2!29579 lt!1792298)))))

(assert (=> d!1459974 (= lt!1792803 (lemmaContainsTupThenGetReturnValue!871 lt!1792801 (_1!29579 lt!1792298) (_2!29579 lt!1792298)))))

(assert (=> d!1459974 (= lt!1792801 (insertNoDuplicatedKeys!379 (toList!5027 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608))) (_1!29579 lt!1792298) (_2!29579 lt!1792298)))))

(assert (=> d!1459974 (= (+!1897 (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792298) lt!1792802)))

(declare-fun b!4632141 () Bool)

(declare-fun res!1943635 () Bool)

(assert (=> b!4632141 (=> (not res!1943635) (not e!2889600))))

(assert (=> b!4632141 (= res!1943635 (= (getValueByKey!1497 (toList!5027 lt!1792802) (_1!29579 lt!1792298)) (Some!11662 (_2!29579 lt!1792298))))))

(declare-fun b!4632142 () Bool)

(assert (=> b!4632142 (= e!2889600 (contains!14706 (toList!5027 lt!1792802) lt!1792298))))

(assert (= (and d!1459974 res!1943636) b!4632141))

(assert (= (and b!4632141 res!1943635) b!4632142))

(declare-fun m!5483057 () Bool)

(assert (=> d!1459974 m!5483057))

(declare-fun m!5483059 () Bool)

(assert (=> d!1459974 m!5483059))

(declare-fun m!5483061 () Bool)

(assert (=> d!1459974 m!5483061))

(declare-fun m!5483063 () Bool)

(assert (=> d!1459974 m!5483063))

(declare-fun m!5483065 () Bool)

(assert (=> b!4632141 m!5483065))

(declare-fun m!5483067 () Bool)

(assert (=> b!4632142 m!5483067))

(assert (=> b!4631745 d!1459974))

(declare-fun bs!1028164 () Bool)

(declare-fun d!1459976 () Bool)

(assert (= bs!1028164 (and d!1459976 d!1459886)))

(declare-fun lambda!193932 () Int)

(assert (=> bs!1028164 (= lambda!193932 lambda!193901)))

(declare-fun bs!1028165 () Bool)

(assert (= bs!1028165 (and d!1459976 b!4631728)))

(assert (=> bs!1028165 (= lambda!193932 lambda!193843)))

(declare-fun bs!1028166 () Bool)

(assert (= bs!1028166 (and d!1459976 d!1459944)))

(assert (=> bs!1028166 (= lambda!193932 lambda!193917)))

(declare-fun bs!1028167 () Bool)

(assert (= bs!1028167 (and d!1459976 d!1459806)))

(assert (=> bs!1028167 (= lambda!193932 lambda!193889)))

(declare-fun bs!1028168 () Bool)

(assert (= bs!1028168 (and d!1459976 d!1459862)))

(assert (=> bs!1028168 (= lambda!193932 lambda!193899)))

(declare-fun bs!1028169 () Bool)

(assert (= bs!1028169 (and d!1459976 d!1459838)))

(assert (=> bs!1028169 (= lambda!193932 lambda!193896)))

(declare-fun bs!1028170 () Bool)

(assert (= bs!1028170 (and d!1459976 d!1459884)))

(assert (=> bs!1028170 (= lambda!193932 lambda!193900)))

(assert (=> d!1459976 (contains!14700 (extractMap!1587 (toList!5028 (ListLongMap!3618 lt!1792300))) key!4968)))

(declare-fun lt!1792807 () Unit!113502)

(declare-fun choose!31543 (ListLongMap!3617 K!12978 Hashable!5928) Unit!113502)

(assert (=> d!1459976 (= lt!1792807 (choose!31543 (ListLongMap!3618 lt!1792300) key!4968 hashF!1389))))

(assert (=> d!1459976 (forall!10869 (toList!5028 (ListLongMap!3618 lt!1792300)) lambda!193932)))

(assert (=> d!1459976 (= (lemmaListContainsThenExtractedMapContains!349 (ListLongMap!3618 lt!1792300) key!4968 hashF!1389) lt!1792807)))

(declare-fun bs!1028171 () Bool)

(assert (= bs!1028171 d!1459976))

(declare-fun m!5483069 () Bool)

(assert (=> bs!1028171 m!5483069))

(assert (=> bs!1028171 m!5483069))

(declare-fun m!5483071 () Bool)

(assert (=> bs!1028171 m!5483071))

(declare-fun m!5483073 () Bool)

(assert (=> bs!1028171 m!5483073))

(declare-fun m!5483075 () Bool)

(assert (=> bs!1028171 m!5483075))

(assert (=> b!4631745 d!1459976))

(declare-fun bs!1028172 () Bool)

(declare-fun b!4632143 () Bool)

(assert (= bs!1028172 (and b!4632143 d!1459792)))

(declare-fun lambda!193933 () Int)

(assert (=> bs!1028172 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193933 lambda!193885))))

(declare-fun bs!1028173 () Bool)

(assert (= bs!1028173 (and b!4632143 b!4632122)))

(assert (=> bs!1028173 (= lambda!193933 lambda!193918)))

(declare-fun bs!1028174 () Bool)

(assert (= bs!1028174 (and b!4632143 d!1459948)))

(assert (=> bs!1028174 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193933 lambda!193921))))

(declare-fun bs!1028175 () Bool)

(assert (= bs!1028175 (and b!4632143 d!1459956)))

(assert (=> bs!1028175 (= (= (ListMap!4332 Nil!51608) lt!1792763) (= lambda!193933 lambda!193925))))

(declare-fun bs!1028176 () Bool)

(assert (= bs!1028176 (and b!4632143 d!1459916)))

(assert (=> bs!1028176 (not (= lambda!193933 lambda!193912))))

(declare-fun bs!1028177 () Bool)

(assert (= bs!1028177 (and b!4632143 b!4632138)))

(assert (=> bs!1028177 (= (= (ListMap!4332 Nil!51608) lt!1792786) (= lambda!193933 lambda!193928))))

(declare-fun bs!1028178 () Bool)

(assert (= bs!1028178 (and b!4632143 b!4631864)))

(assert (=> bs!1028178 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193933 lambda!193884))))

(declare-fun bs!1028179 () Bool)

(assert (= bs!1028179 (and b!4632143 b!4632129)))

(assert (=> bs!1028179 (= lambda!193933 lambda!193922)))

(declare-fun bs!1028180 () Bool)

(assert (= bs!1028180 (and b!4632143 b!4632134)))

(assert (=> bs!1028180 (= lambda!193933 lambda!193926)))

(declare-fun bs!1028181 () Bool)

(assert (= bs!1028181 (and b!4632143 d!1459894)))

(assert (=> bs!1028181 (not (= lambda!193933 lambda!193908))))

(declare-fun bs!1028182 () Bool)

(assert (= bs!1028182 (and b!4632143 b!4632133)))

(assert (=> bs!1028182 (= (= (ListMap!4332 Nil!51608) lt!1792765) (= lambda!193933 lambda!193924))))

(declare-fun bs!1028183 () Bool)

(assert (= bs!1028183 (and b!4632143 b!4631860)))

(assert (=> bs!1028183 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193933 lambda!193882))))

(declare-fun bs!1028184 () Bool)

(assert (= bs!1028184 (and b!4632143 b!4632126)))

(assert (=> bs!1028184 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193933 lambda!193920))))

(assert (=> bs!1028182 (= lambda!193933 lambda!193923)))

(assert (=> bs!1028177 (= lambda!193933 lambda!193927)))

(assert (=> bs!1028178 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193933 lambda!193883))))

(declare-fun bs!1028185 () Bool)

(assert (= bs!1028185 (and b!4632143 d!1459958)))

(assert (=> bs!1028185 (= (= (ListMap!4332 Nil!51608) lt!1792784) (= lambda!193933 lambda!193929))))

(assert (=> bs!1028184 (= lambda!193933 lambda!193919)))

(assert (=> b!4632143 true))

(declare-fun bs!1028186 () Bool)

(declare-fun b!4632147 () Bool)

(assert (= bs!1028186 (and b!4632147 d!1459792)))

(declare-fun lambda!193934 () Int)

(assert (=> bs!1028186 (= (= (ListMap!4332 Nil!51608) lt!1792498) (= lambda!193934 lambda!193885))))

(declare-fun bs!1028187 () Bool)

(assert (= bs!1028187 (and b!4632147 b!4632122)))

(assert (=> bs!1028187 (= lambda!193934 lambda!193918)))

(declare-fun bs!1028188 () Bool)

(assert (= bs!1028188 (and b!4632147 d!1459948)))

(assert (=> bs!1028188 (= (= (ListMap!4332 Nil!51608) lt!1792735) (= lambda!193934 lambda!193921))))

(declare-fun bs!1028189 () Bool)

(assert (= bs!1028189 (and b!4632147 d!1459956)))

(assert (=> bs!1028189 (= (= (ListMap!4332 Nil!51608) lt!1792763) (= lambda!193934 lambda!193925))))

(declare-fun bs!1028190 () Bool)

(assert (= bs!1028190 (and b!4632147 d!1459916)))

(assert (=> bs!1028190 (not (= lambda!193934 lambda!193912))))

(declare-fun bs!1028191 () Bool)

(assert (= bs!1028191 (and b!4632147 b!4632138)))

(assert (=> bs!1028191 (= (= (ListMap!4332 Nil!51608) lt!1792786) (= lambda!193934 lambda!193928))))

(declare-fun bs!1028192 () Bool)

(assert (= bs!1028192 (and b!4632147 b!4631864)))

(assert (=> bs!1028192 (= (= (ListMap!4332 Nil!51608) lt!1792500) (= lambda!193934 lambda!193884))))

(declare-fun bs!1028193 () Bool)

(assert (= bs!1028193 (and b!4632147 b!4632129)))

(assert (=> bs!1028193 (= lambda!193934 lambda!193922)))

(declare-fun bs!1028194 () Bool)

(assert (= bs!1028194 (and b!4632147 b!4632134)))

(assert (=> bs!1028194 (= lambda!193934 lambda!193926)))

(declare-fun bs!1028195 () Bool)

(assert (= bs!1028195 (and b!4632147 d!1459894)))

(assert (=> bs!1028195 (not (= lambda!193934 lambda!193908))))

(declare-fun bs!1028196 () Bool)

(assert (= bs!1028196 (and b!4632147 b!4632133)))

(assert (=> bs!1028196 (= (= (ListMap!4332 Nil!51608) lt!1792765) (= lambda!193934 lambda!193924))))

(declare-fun bs!1028197 () Bool)

(assert (= bs!1028197 (and b!4632147 b!4631860)))

(assert (=> bs!1028197 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193934 lambda!193882))))

(declare-fun bs!1028198 () Bool)

(assert (= bs!1028198 (and b!4632147 b!4632126)))

(assert (=> bs!1028198 (= (= (ListMap!4332 Nil!51608) lt!1792737) (= lambda!193934 lambda!193920))))

(assert (=> bs!1028196 (= lambda!193934 lambda!193923)))

(assert (=> bs!1028191 (= lambda!193934 lambda!193927)))

(assert (=> bs!1028192 (= (= (ListMap!4332 Nil!51608) lt!1792316) (= lambda!193934 lambda!193883))))

(declare-fun bs!1028199 () Bool)

(assert (= bs!1028199 (and b!4632147 d!1459958)))

(assert (=> bs!1028199 (= (= (ListMap!4332 Nil!51608) lt!1792784) (= lambda!193934 lambda!193929))))

(assert (=> bs!1028198 (= lambda!193934 lambda!193919)))

(declare-fun bs!1028200 () Bool)

(assert (= bs!1028200 (and b!4632147 b!4632143)))

(assert (=> bs!1028200 (= lambda!193934 lambda!193933)))

(assert (=> b!4632147 true))

(declare-fun lambda!193935 () Int)

(declare-fun lt!1792822 () ListMap!4331)

(assert (=> bs!1028186 (= (= lt!1792822 lt!1792498) (= lambda!193935 lambda!193885))))

(assert (=> bs!1028187 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193918))))

(assert (=> bs!1028188 (= (= lt!1792822 lt!1792735) (= lambda!193935 lambda!193921))))

(assert (=> bs!1028189 (= (= lt!1792822 lt!1792763) (= lambda!193935 lambda!193925))))

(assert (=> bs!1028190 (not (= lambda!193935 lambda!193912))))

(assert (=> bs!1028191 (= (= lt!1792822 lt!1792786) (= lambda!193935 lambda!193928))))

(assert (=> bs!1028192 (= (= lt!1792822 lt!1792500) (= lambda!193935 lambda!193884))))

(assert (=> bs!1028193 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193922))))

(assert (=> b!4632147 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193934))))

(assert (=> bs!1028194 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193926))))

(assert (=> bs!1028195 (not (= lambda!193935 lambda!193908))))

(assert (=> bs!1028196 (= (= lt!1792822 lt!1792765) (= lambda!193935 lambda!193924))))

(assert (=> bs!1028197 (= (= lt!1792822 lt!1792316) (= lambda!193935 lambda!193882))))

(assert (=> bs!1028198 (= (= lt!1792822 lt!1792737) (= lambda!193935 lambda!193920))))

(assert (=> bs!1028196 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193923))))

(assert (=> bs!1028191 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193927))))

(assert (=> bs!1028192 (= (= lt!1792822 lt!1792316) (= lambda!193935 lambda!193883))))

(assert (=> bs!1028199 (= (= lt!1792822 lt!1792784) (= lambda!193935 lambda!193929))))

(assert (=> bs!1028198 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193919))))

(assert (=> bs!1028200 (= (= lt!1792822 (ListMap!4332 Nil!51608)) (= lambda!193935 lambda!193933))))

(assert (=> b!4632147 true))

(declare-fun bs!1028201 () Bool)

(declare-fun d!1459978 () Bool)

(assert (= bs!1028201 (and d!1459978 d!1459792)))

(declare-fun lt!1792820 () ListMap!4331)

(declare-fun lambda!193936 () Int)

(assert (=> bs!1028201 (= (= lt!1792820 lt!1792498) (= lambda!193936 lambda!193885))))

(declare-fun bs!1028202 () Bool)

(assert (= bs!1028202 (and d!1459978 b!4632122)))

(assert (=> bs!1028202 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193918))))

(declare-fun bs!1028203 () Bool)

(assert (= bs!1028203 (and d!1459978 d!1459948)))

(assert (=> bs!1028203 (= (= lt!1792820 lt!1792735) (= lambda!193936 lambda!193921))))

(declare-fun bs!1028204 () Bool)

(assert (= bs!1028204 (and d!1459978 d!1459956)))

(assert (=> bs!1028204 (= (= lt!1792820 lt!1792763) (= lambda!193936 lambda!193925))))

(declare-fun bs!1028205 () Bool)

(assert (= bs!1028205 (and d!1459978 d!1459916)))

(assert (=> bs!1028205 (not (= lambda!193936 lambda!193912))))

(declare-fun bs!1028206 () Bool)

(assert (= bs!1028206 (and d!1459978 b!4632138)))

(assert (=> bs!1028206 (= (= lt!1792820 lt!1792786) (= lambda!193936 lambda!193928))))

(declare-fun bs!1028207 () Bool)

(assert (= bs!1028207 (and d!1459978 b!4632129)))

(assert (=> bs!1028207 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193922))))

(declare-fun bs!1028208 () Bool)

(assert (= bs!1028208 (and d!1459978 b!4632147)))

(assert (=> bs!1028208 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193934))))

(declare-fun bs!1028209 () Bool)

(assert (= bs!1028209 (and d!1459978 b!4632134)))

(assert (=> bs!1028209 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193926))))

(declare-fun bs!1028210 () Bool)

(assert (= bs!1028210 (and d!1459978 d!1459894)))

(assert (=> bs!1028210 (not (= lambda!193936 lambda!193908))))

(declare-fun bs!1028211 () Bool)

(assert (= bs!1028211 (and d!1459978 b!4632133)))

(assert (=> bs!1028211 (= (= lt!1792820 lt!1792765) (= lambda!193936 lambda!193924))))

(declare-fun bs!1028212 () Bool)

(assert (= bs!1028212 (and d!1459978 b!4631860)))

(assert (=> bs!1028212 (= (= lt!1792820 lt!1792316) (= lambda!193936 lambda!193882))))

(declare-fun bs!1028213 () Bool)

(assert (= bs!1028213 (and d!1459978 b!4632126)))

(assert (=> bs!1028213 (= (= lt!1792820 lt!1792737) (= lambda!193936 lambda!193920))))

(assert (=> bs!1028211 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193923))))

(declare-fun bs!1028214 () Bool)

(assert (= bs!1028214 (and d!1459978 b!4631864)))

(assert (=> bs!1028214 (= (= lt!1792820 lt!1792500) (= lambda!193936 lambda!193884))))

(assert (=> bs!1028208 (= (= lt!1792820 lt!1792822) (= lambda!193936 lambda!193935))))

(assert (=> bs!1028206 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193927))))

(assert (=> bs!1028214 (= (= lt!1792820 lt!1792316) (= lambda!193936 lambda!193883))))

(declare-fun bs!1028215 () Bool)

(assert (= bs!1028215 (and d!1459978 d!1459958)))

(assert (=> bs!1028215 (= (= lt!1792820 lt!1792784) (= lambda!193936 lambda!193929))))

(assert (=> bs!1028213 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193919))))

(declare-fun bs!1028216 () Bool)

(assert (= bs!1028216 (and d!1459978 b!4632143)))

(assert (=> bs!1028216 (= (= lt!1792820 (ListMap!4332 Nil!51608)) (= lambda!193936 lambda!193933))))

(assert (=> d!1459978 true))

(declare-fun e!2889602 () ListMap!4331)

(assert (=> b!4632143 (= e!2889602 (ListMap!4332 Nil!51608))))

(declare-fun lt!1792817 () Unit!113502)

(declare-fun call!323227 () Unit!113502)

(assert (=> b!4632143 (= lt!1792817 call!323227)))

(declare-fun call!323228 () Bool)

(assert (=> b!4632143 call!323228))

(declare-fun lt!1792827 () Unit!113502)

(assert (=> b!4632143 (= lt!1792827 lt!1792817)))

(declare-fun call!323226 () Bool)

(assert (=> b!4632143 call!323226))

(declare-fun lt!1792812 () Unit!113502)

(declare-fun Unit!113557 () Unit!113502)

(assert (=> b!4632143 (= lt!1792812 Unit!113557)))

(declare-fun b!4632144 () Bool)

(declare-fun e!2889601 () Bool)

(assert (=> b!4632144 (= e!2889601 (invariantList!1227 (toList!5027 lt!1792820)))))

(declare-fun bm!323221 () Bool)

(assert (=> bm!323221 (= call!323227 (lemmaContainsAllItsOwnKeys!529 (ListMap!4332 Nil!51608)))))

(declare-fun b!4632146 () Bool)

(declare-fun res!1943637 () Bool)

(assert (=> b!4632146 (=> (not res!1943637) (not e!2889601))))

(assert (=> b!4632146 (= res!1943637 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193936))))

(declare-fun bm!323222 () Bool)

(declare-fun lt!1792815 () ListMap!4331)

(declare-fun c!792874 () Bool)

(assert (=> bm!323222 (= call!323228 (forall!10871 (ite c!792874 (toList!5027 (ListMap!4332 Nil!51608)) (toList!5027 lt!1792815)) (ite c!792874 lambda!193933 lambda!193935)))))

(assert (=> d!1459978 e!2889601))

(declare-fun res!1943638 () Bool)

(assert (=> d!1459978 (=> (not res!1943638) (not e!2889601))))

(assert (=> d!1459978 (= res!1943638 (forall!10871 lt!1792322 lambda!193936))))

(assert (=> d!1459978 (= lt!1792820 e!2889602)))

(assert (=> d!1459978 (= c!792874 (is-Nil!51608 lt!1792322))))

(assert (=> d!1459978 (noDuplicateKeys!1531 lt!1792322)))

(assert (=> d!1459978 (= (addToMapMapFromBucket!992 lt!1792322 (ListMap!4332 Nil!51608)) lt!1792820)))

(declare-fun b!4632145 () Bool)

(declare-fun e!2889603 () Bool)

(assert (=> b!4632145 (= e!2889603 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193935))))

(declare-fun bm!323223 () Bool)

(assert (=> bm!323223 (= call!323226 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) (ite c!792874 lambda!193933 lambda!193934)))))

(assert (=> b!4632147 (= e!2889602 lt!1792822)))

(assert (=> b!4632147 (= lt!1792815 (+!1897 (ListMap!4332 Nil!51608) (h!57682 lt!1792322)))))

(assert (=> b!4632147 (= lt!1792822 (addToMapMapFromBucket!992 (t!358788 lt!1792322) (+!1897 (ListMap!4332 Nil!51608) (h!57682 lt!1792322))))))

(declare-fun lt!1792825 () Unit!113502)

(assert (=> b!4632147 (= lt!1792825 call!323227)))

(assert (=> b!4632147 call!323226))

(declare-fun lt!1792826 () Unit!113502)

(assert (=> b!4632147 (= lt!1792826 lt!1792825)))

(assert (=> b!4632147 (forall!10871 (toList!5027 lt!1792815) lambda!193935)))

(declare-fun lt!1792819 () Unit!113502)

(declare-fun Unit!113565 () Unit!113502)

(assert (=> b!4632147 (= lt!1792819 Unit!113565)))

(assert (=> b!4632147 (forall!10871 (t!358788 lt!1792322) lambda!193935)))

(declare-fun lt!1792821 () Unit!113502)

(declare-fun Unit!113566 () Unit!113502)

(assert (=> b!4632147 (= lt!1792821 Unit!113566)))

(declare-fun lt!1792814 () Unit!113502)

(declare-fun Unit!113568 () Unit!113502)

(assert (=> b!4632147 (= lt!1792814 Unit!113568)))

(declare-fun lt!1792810 () Unit!113502)

(assert (=> b!4632147 (= lt!1792810 (forallContained!3101 (toList!5027 lt!1792815) lambda!193935 (h!57682 lt!1792322)))))

(assert (=> b!4632147 (contains!14700 lt!1792815 (_1!29579 (h!57682 lt!1792322)))))

(declare-fun lt!1792824 () Unit!113502)

(declare-fun Unit!113569 () Unit!113502)

(assert (=> b!4632147 (= lt!1792824 Unit!113569)))

(assert (=> b!4632147 (contains!14700 lt!1792822 (_1!29579 (h!57682 lt!1792322)))))

(declare-fun lt!1792828 () Unit!113502)

(declare-fun Unit!113570 () Unit!113502)

(assert (=> b!4632147 (= lt!1792828 Unit!113570)))

(assert (=> b!4632147 (forall!10871 lt!1792322 lambda!193935)))

(declare-fun lt!1792818 () Unit!113502)

(declare-fun Unit!113572 () Unit!113502)

(assert (=> b!4632147 (= lt!1792818 Unit!113572)))

(assert (=> b!4632147 call!323228))

(declare-fun lt!1792816 () Unit!113502)

(declare-fun Unit!113573 () Unit!113502)

(assert (=> b!4632147 (= lt!1792816 Unit!113573)))

(declare-fun lt!1792809 () Unit!113502)

(declare-fun Unit!113574 () Unit!113502)

(assert (=> b!4632147 (= lt!1792809 Unit!113574)))

(declare-fun lt!1792808 () Unit!113502)

(assert (=> b!4632147 (= lt!1792808 (addForallContainsKeyThenBeforeAdding!528 (ListMap!4332 Nil!51608) lt!1792822 (_1!29579 (h!57682 lt!1792322)) (_2!29579 (h!57682 lt!1792322))))))

(assert (=> b!4632147 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193935)))

(declare-fun lt!1792813 () Unit!113502)

(assert (=> b!4632147 (= lt!1792813 lt!1792808)))

(assert (=> b!4632147 (forall!10871 (toList!5027 (ListMap!4332 Nil!51608)) lambda!193935)))

(declare-fun lt!1792823 () Unit!113502)

(declare-fun Unit!113576 () Unit!113502)

(assert (=> b!4632147 (= lt!1792823 Unit!113576)))

(declare-fun res!1943639 () Bool)

(assert (=> b!4632147 (= res!1943639 (forall!10871 lt!1792322 lambda!193935))))

(assert (=> b!4632147 (=> (not res!1943639) (not e!2889603))))

(assert (=> b!4632147 e!2889603))

(declare-fun lt!1792811 () Unit!113502)

(declare-fun Unit!113577 () Unit!113502)

(assert (=> b!4632147 (= lt!1792811 Unit!113577)))

(assert (= (and d!1459978 c!792874) b!4632143))

(assert (= (and d!1459978 (not c!792874)) b!4632147))

(assert (= (and b!4632147 res!1943639) b!4632145))

(assert (= (or b!4632143 b!4632147) bm!323221))

(assert (= (or b!4632143 b!4632147) bm!323223))

(assert (= (or b!4632143 b!4632147) bm!323222))

(assert (= (and d!1459978 res!1943638) b!4632146))

(assert (= (and b!4632146 res!1943637) b!4632144))

(declare-fun m!5483077 () Bool)

(assert (=> bm!323223 m!5483077))

(declare-fun m!5483079 () Bool)

(assert (=> b!4632147 m!5483079))

(declare-fun m!5483081 () Bool)

(assert (=> b!4632147 m!5483081))

(declare-fun m!5483083 () Bool)

(assert (=> b!4632147 m!5483083))

(declare-fun m!5483085 () Bool)

(assert (=> b!4632147 m!5483085))

(declare-fun m!5483087 () Bool)

(assert (=> b!4632147 m!5483087))

(declare-fun m!5483089 () Bool)

(assert (=> b!4632147 m!5483089))

(assert (=> b!4632147 m!5483085))

(declare-fun m!5483091 () Bool)

(assert (=> b!4632147 m!5483091))

(declare-fun m!5483093 () Bool)

(assert (=> b!4632147 m!5483093))

(declare-fun m!5483095 () Bool)

(assert (=> b!4632147 m!5483095))

(assert (=> b!4632147 m!5483079))

(declare-fun m!5483097 () Bool)

(assert (=> b!4632147 m!5483097))

(assert (=> b!4632147 m!5483093))

(assert (=> bm!323221 m!5482957))

(declare-fun m!5483099 () Bool)

(assert (=> b!4632144 m!5483099))

(assert (=> b!4632145 m!5483093))

(declare-fun m!5483101 () Bool)

(assert (=> d!1459978 m!5483101))

(assert (=> d!1459978 m!5483045))

(declare-fun m!5483103 () Bool)

(assert (=> b!4632146 m!5483103))

(declare-fun m!5483105 () Bool)

(assert (=> bm!323222 m!5483105))

(assert (=> b!4631745 d!1459978))

(declare-fun bs!1028217 () Bool)

(declare-fun d!1459980 () Bool)

(assert (= bs!1028217 (and d!1459980 d!1459886)))

(declare-fun lambda!193937 () Int)

(assert (=> bs!1028217 (= lambda!193937 lambda!193901)))

(declare-fun bs!1028218 () Bool)

(assert (= bs!1028218 (and d!1459980 b!4631728)))

(assert (=> bs!1028218 (= lambda!193937 lambda!193843)))

(declare-fun bs!1028219 () Bool)

(assert (= bs!1028219 (and d!1459980 d!1459976)))

(assert (=> bs!1028219 (= lambda!193937 lambda!193932)))

(declare-fun bs!1028220 () Bool)

(assert (= bs!1028220 (and d!1459980 d!1459944)))

(assert (=> bs!1028220 (= lambda!193937 lambda!193917)))

(declare-fun bs!1028221 () Bool)

(assert (= bs!1028221 (and d!1459980 d!1459806)))

(assert (=> bs!1028221 (= lambda!193937 lambda!193889)))

(declare-fun bs!1028222 () Bool)

(assert (= bs!1028222 (and d!1459980 d!1459862)))

(assert (=> bs!1028222 (= lambda!193937 lambda!193899)))

(declare-fun bs!1028223 () Bool)

(assert (= bs!1028223 (and d!1459980 d!1459838)))

(assert (=> bs!1028223 (= lambda!193937 lambda!193896)))

(declare-fun bs!1028224 () Bool)

(assert (= bs!1028224 (and d!1459980 d!1459884)))

(assert (=> bs!1028224 (= lambda!193937 lambda!193900)))

(declare-fun lt!1792829 () ListMap!4331)

(assert (=> d!1459980 (invariantList!1227 (toList!5027 lt!1792829))))

(declare-fun e!2889604 () ListMap!4331)

(assert (=> d!1459980 (= lt!1792829 e!2889604)))

(declare-fun c!792875 () Bool)

(assert (=> d!1459980 (= c!792875 (is-Cons!51609 lt!1792300))))

(assert (=> d!1459980 (forall!10869 lt!1792300 lambda!193937)))

(assert (=> d!1459980 (= (extractMap!1587 lt!1792300) lt!1792829)))

(declare-fun b!4632148 () Bool)

(assert (=> b!4632148 (= e!2889604 (addToMapMapFromBucket!992 (_2!29580 (h!57683 lt!1792300)) (extractMap!1587 (t!358789 lt!1792300))))))

(declare-fun b!4632149 () Bool)

(assert (=> b!4632149 (= e!2889604 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459980 c!792875) b!4632148))

(assert (= (and d!1459980 (not c!792875)) b!4632149))

(declare-fun m!5483107 () Bool)

(assert (=> d!1459980 m!5483107))

(declare-fun m!5483109 () Bool)

(assert (=> d!1459980 m!5483109))

(declare-fun m!5483111 () Bool)

(assert (=> b!4632148 m!5483111))

(assert (=> b!4632148 m!5483111))

(declare-fun m!5483113 () Bool)

(assert (=> b!4632148 m!5483113))

(assert (=> b!4631745 d!1459980))

(declare-fun d!1459982 () Bool)

(declare-fun e!2889605 () Bool)

(assert (=> d!1459982 e!2889605))

(declare-fun res!1943641 () Bool)

(assert (=> d!1459982 (=> (not res!1943641) (not e!2889605))))

(declare-fun lt!1792831 () ListMap!4331)

(assert (=> d!1459982 (= res!1943641 (contains!14700 lt!1792831 (_1!29579 lt!1792307)))))

(declare-fun lt!1792830 () List!51732)

(assert (=> d!1459982 (= lt!1792831 (ListMap!4332 lt!1792830))))

(declare-fun lt!1792833 () Unit!113502)

(declare-fun lt!1792832 () Unit!113502)

(assert (=> d!1459982 (= lt!1792833 lt!1792832)))

(assert (=> d!1459982 (= (getValueByKey!1497 lt!1792830 (_1!29579 lt!1792307)) (Some!11662 (_2!29579 lt!1792307)))))

(assert (=> d!1459982 (= lt!1792832 (lemmaContainsTupThenGetReturnValue!871 lt!1792830 (_1!29579 lt!1792307) (_2!29579 lt!1792307)))))

(assert (=> d!1459982 (= lt!1792830 (insertNoDuplicatedKeys!379 (toList!5027 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608))) (_1!29579 lt!1792307) (_2!29579 lt!1792307)))))

(assert (=> d!1459982 (= (+!1897 (addToMapMapFromBucket!992 lt!1792295 (ListMap!4332 Nil!51608)) lt!1792307) lt!1792831)))

(declare-fun b!4632150 () Bool)

(declare-fun res!1943640 () Bool)

(assert (=> b!4632150 (=> (not res!1943640) (not e!2889605))))

(assert (=> b!4632150 (= res!1943640 (= (getValueByKey!1497 (toList!5027 lt!1792831) (_1!29579 lt!1792307)) (Some!11662 (_2!29579 lt!1792307))))))

(declare-fun b!4632151 () Bool)

(assert (=> b!4632151 (= e!2889605 (contains!14706 (toList!5027 lt!1792831) lt!1792307))))

(assert (= (and d!1459982 res!1943641) b!4632150))

(assert (= (and b!4632150 res!1943640) b!4632151))

(declare-fun m!5483115 () Bool)

(assert (=> d!1459982 m!5483115))

(declare-fun m!5483117 () Bool)

(assert (=> d!1459982 m!5483117))

(declare-fun m!5483119 () Bool)

(assert (=> d!1459982 m!5483119))

(declare-fun m!5483121 () Bool)

(assert (=> d!1459982 m!5483121))

(declare-fun m!5483123 () Bool)

(assert (=> b!4632150 m!5483123))

(declare-fun m!5483125 () Bool)

(assert (=> b!4632151 m!5483125))

(assert (=> b!4631745 d!1459982))

(declare-fun b!4632152 () Bool)

(declare-fun e!2889608 () Unit!113502)

(declare-fun Unit!113578 () Unit!113502)

(assert (=> b!4632152 (= e!2889608 Unit!113578)))

(declare-fun b!4632153 () Bool)

(declare-fun e!2889609 () Unit!113502)

(declare-fun lt!1792836 () Unit!113502)

(assert (=> b!4632153 (= e!2889609 lt!1792836)))

(declare-fun lt!1792835 () Unit!113502)

(assert (=> b!4632153 (= lt!1792835 (lemmaContainsKeyImpliesGetValueByKeyDefined!1400 (toList!5027 lt!1792293) key!4968))))

(assert (=> b!4632153 (isDefined!8929 (getValueByKey!1497 (toList!5027 lt!1792293) key!4968))))

(declare-fun lt!1792841 () Unit!113502)

(assert (=> b!4632153 (= lt!1792841 lt!1792835)))

(assert (=> b!4632153 (= lt!1792836 (lemmaInListThenGetKeysListContains!673 (toList!5027 lt!1792293) key!4968))))

(declare-fun call!323229 () Bool)

(assert (=> b!4632153 call!323229))

(declare-fun d!1459984 () Bool)

(declare-fun e!2889606 () Bool)

(assert (=> d!1459984 e!2889606))

(declare-fun res!1943644 () Bool)

(assert (=> d!1459984 (=> res!1943644 e!2889606)))

(declare-fun e!2889610 () Bool)

(assert (=> d!1459984 (= res!1943644 e!2889610)))

(declare-fun res!1943643 () Bool)

(assert (=> d!1459984 (=> (not res!1943643) (not e!2889610))))

(declare-fun lt!1792840 () Bool)

(assert (=> d!1459984 (= res!1943643 (not lt!1792840))))

(declare-fun lt!1792839 () Bool)

(assert (=> d!1459984 (= lt!1792840 lt!1792839)))

(declare-fun lt!1792838 () Unit!113502)

(assert (=> d!1459984 (= lt!1792838 e!2889609)))

(declare-fun c!792878 () Bool)

(assert (=> d!1459984 (= c!792878 lt!1792839)))

(assert (=> d!1459984 (= lt!1792839 (containsKey!2523 (toList!5027 lt!1792293) key!4968))))

(assert (=> d!1459984 (= (contains!14700 lt!1792293 key!4968) lt!1792840)))

(declare-fun b!4632154 () Bool)

(assert (=> b!4632154 false))

(declare-fun lt!1792834 () Unit!113502)

(declare-fun lt!1792837 () Unit!113502)

(assert (=> b!4632154 (= lt!1792834 lt!1792837)))

(assert (=> b!4632154 (containsKey!2523 (toList!5027 lt!1792293) key!4968)))

(assert (=> b!4632154 (= lt!1792837 (lemmaInGetKeysListThenContainsKey!678 (toList!5027 lt!1792293) key!4968))))

(declare-fun Unit!113579 () Unit!113502)

(assert (=> b!4632154 (= e!2889608 Unit!113579)))

(declare-fun b!4632155 () Bool)

(assert (=> b!4632155 (= e!2889610 (not (contains!14708 (keys!18203 lt!1792293) key!4968)))))

(declare-fun b!4632156 () Bool)

(declare-fun e!2889611 () List!51736)

(assert (=> b!4632156 (= e!2889611 (getKeysList!679 (toList!5027 lt!1792293)))))

(declare-fun bm!323224 () Bool)

(assert (=> bm!323224 (= call!323229 (contains!14708 e!2889611 key!4968))))

(declare-fun c!792877 () Bool)

(assert (=> bm!323224 (= c!792877 c!792878)))

(declare-fun b!4632157 () Bool)

(assert (=> b!4632157 (= e!2889609 e!2889608)))

(declare-fun c!792876 () Bool)

(assert (=> b!4632157 (= c!792876 call!323229)))

(declare-fun b!4632158 () Bool)

(declare-fun e!2889607 () Bool)

(assert (=> b!4632158 (= e!2889606 e!2889607)))

(declare-fun res!1943642 () Bool)

(assert (=> b!4632158 (=> (not res!1943642) (not e!2889607))))

(assert (=> b!4632158 (= res!1943642 (isDefined!8929 (getValueByKey!1497 (toList!5027 lt!1792293) key!4968)))))

(declare-fun b!4632159 () Bool)

(assert (=> b!4632159 (= e!2889607 (contains!14708 (keys!18203 lt!1792293) key!4968))))

(declare-fun b!4632160 () Bool)

(assert (=> b!4632160 (= e!2889611 (keys!18203 lt!1792293))))

(assert (= (and d!1459984 c!792878) b!4632153))

(assert (= (and d!1459984 (not c!792878)) b!4632157))

(assert (= (and b!4632157 c!792876) b!4632154))

(assert (= (and b!4632157 (not c!792876)) b!4632152))

(assert (= (or b!4632153 b!4632157) bm!323224))

(assert (= (and bm!323224 c!792877) b!4632156))

(assert (= (and bm!323224 (not c!792877)) b!4632160))

(assert (= (and d!1459984 res!1943643) b!4632155))

(assert (= (and d!1459984 (not res!1943644)) b!4632158))

(assert (= (and b!4632158 res!1943642) b!4632159))

(declare-fun m!5483127 () Bool)

(assert (=> d!1459984 m!5483127))

(assert (=> b!4632155 m!5482549))

(assert (=> b!4632155 m!5482549))

(declare-fun m!5483129 () Bool)

(assert (=> b!4632155 m!5483129))

(assert (=> b!4632154 m!5483127))

(declare-fun m!5483131 () Bool)

(assert (=> b!4632154 m!5483131))

(assert (=> b!4632159 m!5482549))

(assert (=> b!4632159 m!5482549))

(assert (=> b!4632159 m!5483129))

(declare-fun m!5483133 () Bool)

(assert (=> b!4632158 m!5483133))

(assert (=> b!4632158 m!5483133))

(declare-fun m!5483135 () Bool)

(assert (=> b!4632158 m!5483135))

(declare-fun m!5483137 () Bool)

(assert (=> b!4632153 m!5483137))

(assert (=> b!4632153 m!5483133))

(assert (=> b!4632153 m!5483133))

(assert (=> b!4632153 m!5483135))

(declare-fun m!5483139 () Bool)

(assert (=> b!4632153 m!5483139))

(assert (=> b!4632160 m!5482549))

(declare-fun m!5483141 () Bool)

(assert (=> b!4632156 m!5483141))

(declare-fun m!5483143 () Bool)

(assert (=> bm!323224 m!5483143))

(assert (=> b!4631745 d!1459984))

(declare-fun bs!1028225 () Bool)

(declare-fun d!1459986 () Bool)

(assert (= bs!1028225 (and d!1459986 d!1459886)))

(declare-fun lambda!193938 () Int)

(assert (=> bs!1028225 (= lambda!193938 lambda!193901)))

(declare-fun bs!1028226 () Bool)

(assert (= bs!1028226 (and d!1459986 b!4631728)))

(assert (=> bs!1028226 (= lambda!193938 lambda!193843)))

(declare-fun bs!1028227 () Bool)

(assert (= bs!1028227 (and d!1459986 d!1459980)))

(assert (=> bs!1028227 (= lambda!193938 lambda!193937)))

(declare-fun bs!1028228 () Bool)

(assert (= bs!1028228 (and d!1459986 d!1459976)))

(assert (=> bs!1028228 (= lambda!193938 lambda!193932)))

(declare-fun bs!1028229 () Bool)

(assert (= bs!1028229 (and d!1459986 d!1459944)))

(assert (=> bs!1028229 (= lambda!193938 lambda!193917)))

(declare-fun bs!1028230 () Bool)

(assert (= bs!1028230 (and d!1459986 d!1459806)))

(assert (=> bs!1028230 (= lambda!193938 lambda!193889)))

(declare-fun bs!1028231 () Bool)

(assert (= bs!1028231 (and d!1459986 d!1459862)))

(assert (=> bs!1028231 (= lambda!193938 lambda!193899)))

(declare-fun bs!1028232 () Bool)

(assert (= bs!1028232 (and d!1459986 d!1459838)))

(assert (=> bs!1028232 (= lambda!193938 lambda!193896)))

(declare-fun bs!1028233 () Bool)

(assert (= bs!1028233 (and d!1459986 d!1459884)))

(assert (=> bs!1028233 (= lambda!193938 lambda!193900)))

(declare-fun lt!1792842 () ListMap!4331)

(assert (=> d!1459986 (invariantList!1227 (toList!5027 lt!1792842))))

(declare-fun e!2889612 () ListMap!4331)

(assert (=> d!1459986 (= lt!1792842 e!2889612)))

(declare-fun c!792879 () Bool)

(assert (=> d!1459986 (= c!792879 (is-Cons!51609 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)))))

(assert (=> d!1459986 (forall!10869 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609) lambda!193938)))

(assert (=> d!1459986 (= (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)) lt!1792842)))

(declare-fun b!4632161 () Bool)

(assert (=> b!4632161 (= e!2889612 (addToMapMapFromBucket!992 (_2!29580 (h!57683 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609))) (extractMap!1587 (t!358789 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)))))))

(declare-fun b!4632162 () Bool)

(assert (=> b!4632162 (= e!2889612 (ListMap!4332 Nil!51608))))

(assert (= (and d!1459986 c!792879) b!4632161))

(assert (= (and d!1459986 (not c!792879)) b!4632162))

(declare-fun m!5483145 () Bool)

(assert (=> d!1459986 m!5483145))

(declare-fun m!5483147 () Bool)

(assert (=> d!1459986 m!5483147))

(declare-fun m!5483149 () Bool)

(assert (=> b!4632161 m!5483149))

(assert (=> b!4632161 m!5483149))

(declare-fun m!5483151 () Bool)

(assert (=> b!4632161 m!5483151))

(assert (=> b!4631745 d!1459986))

(declare-fun d!1459988 () Bool)

(assert (=> d!1459988 (= (eq!846 lt!1792315 (+!1897 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)) (h!57682 oldBucket!40))) (= (content!8867 (toList!5027 lt!1792315)) (content!8867 (toList!5027 (+!1897 (extractMap!1587 (Cons!51609 (tuple2!52573 hash!414 lt!1792295) Nil!51609)) (h!57682 oldBucket!40))))))))

(declare-fun bs!1028234 () Bool)

(assert (= bs!1028234 d!1459988))

(declare-fun m!5483153 () Bool)

(assert (=> bs!1028234 m!5483153))

(declare-fun m!5483155 () Bool)

(assert (=> bs!1028234 m!5483155))

(assert (=> b!4631745 d!1459988))

(declare-fun b!4632167 () Bool)

(declare-fun e!2889615 () Bool)

(declare-fun tp!1342362 () Bool)

(assert (=> b!4632167 (= e!2889615 (and tp_is_empty!29417 tp_is_empty!29419 tp!1342362))))

(assert (=> b!4631744 (= tp!1342353 e!2889615)))

(assert (= (and b!4631744 (is-Cons!51608 (t!358788 oldBucket!40))) b!4632167))

(declare-fun tp!1342363 () Bool)

(declare-fun e!2889616 () Bool)

(declare-fun b!4632168 () Bool)

(assert (=> b!4632168 (= e!2889616 (and tp_is_empty!29417 tp_is_empty!29419 tp!1342363))))

(assert (=> b!4631733 (= tp!1342352 e!2889616)))

(assert (= (and b!4631733 (is-Cons!51608 (t!358788 newBucket!224))) b!4632168))

(declare-fun b_lambda!170901 () Bool)

(assert (= b_lambda!170895 (or b!4631728 b_lambda!170901)))

(declare-fun bs!1028235 () Bool)

(declare-fun d!1459990 () Bool)

(assert (= bs!1028235 (and d!1459990 b!4631728)))

(assert (=> bs!1028235 (= (dynLambda!21521 lambda!193843 lt!1792308) (noDuplicateKeys!1531 (_2!29580 lt!1792308)))))

(declare-fun m!5483157 () Bool)

(assert (=> bs!1028235 m!5483157))

(assert (=> d!1459836 d!1459990))

(declare-fun b_lambda!170903 () Bool)

(assert (= b_lambda!170897 (or b!4631728 b_lambda!170903)))

(declare-fun bs!1028236 () Bool)

(declare-fun d!1459992 () Bool)

(assert (= bs!1028236 (and d!1459992 b!4631728)))

(assert (=> bs!1028236 (= (dynLambda!21521 lambda!193843 (h!57683 lt!1792292)) (noDuplicateKeys!1531 (_2!29580 (h!57683 lt!1792292))))))

(declare-fun m!5483159 () Bool)

(assert (=> bs!1028236 m!5483159))

(assert (=> b!4632037 d!1459992))

(push 1)

(assert (not b!4632038))

(assert (not b!4632133))

(assert (not b!4631919))

(assert (not b!4631929))

(assert (not bm!323220))

(assert (not b!4632138))

(assert (not b!4632141))

(assert (not b!4632159))

(assert (not b!4632003))

(assert (not b!4632132))

(assert (not bm!323211))

(assert (not b!4632116))

(assert (not d!1459896))

(assert (not d!1459956))

(assert (not b!4632029))

(assert (not d!1459984))

(assert (not b!4632032))

(assert (not bm!323217))

(assert (not d!1459966))

(assert (not b!4632147))

(assert (not d!1459906))

(assert (not b!4632115))

(assert (not b!4632121))

(assert (not b!4632026))

(assert (not b!4631861))

(assert (not b!4632148))

(assert (not bm!323224))

(assert (not d!1459838))

(assert (not b!4632139))

(assert (not d!1459988))

(assert (not b!4632068))

(assert (not b!4631893))

(assert (not d!1459824))

(assert (not b!4632168))

(assert (not d!1459980))

(assert (not d!1459878))

(assert (not d!1459822))

(assert (not b!4631925))

(assert (not b!4632160))

(assert (not b!4631877))

(assert (not bm!323223))

(assert (not b!4632156))

(assert tp_is_empty!29419)

(assert (not b!4632158))

(assert (not b!4632124))

(assert (not d!1459916))

(assert (not bm!323213))

(assert (not b!4631888))

(assert (not b!4632111))

(assert (not b!4632150))

(assert (not b!4632069))

(assert (not b!4632031))

(assert (not d!1459836))

(assert (not bm!323206))

(assert (not b!4632161))

(assert (not b!4632155))

(assert (not b!4632154))

(assert (not b!4632010))

(assert (not b!4632118))

(assert (not d!1459978))

(assert (not b!4632153))

(assert (not b!4632126))

(assert (not d!1459976))

(assert (not bm!323216))

(assert (not d!1459874))

(assert (not b!4632144))

(assert (not d!1459974))

(assert (not b_lambda!170901))

(assert (not b!4631862))

(assert (not d!1459818))

(assert (not bm!323207))

(assert (not b!4631957))

(assert (not b!4632142))

(assert (not d!1459920))

(assert (not b!4631902))

(assert (not d!1459884))

(assert (not bs!1028236))

(assert (not b!4632023))

(assert (not b!4632062))

(assert (not b!4632110))

(assert (not d!1459964))

(assert (not b!4632137))

(assert (not b!4632167))

(assert (not bm!323218))

(assert (not b!4632113))

(assert (not b!4631958))

(assert (not d!1459876))

(assert (not b!4631955))

(assert (not bs!1028235))

(assert (not b!4631864))

(assert (not d!1459882))

(assert (not d!1459834))

(assert (not d!1459854))

(assert (not d!1459968))

(assert (not b!4632140))

(assert (not b!4632135))

(assert (not b!4631901))

(assert (not d!1459866))

(assert (not d!1459810))

(assert (not b!4632125))

(assert (not bm!323219))

(assert (not b!4632145))

(assert tp_is_empty!29417)

(assert (not b!4631924))

(assert (not b!4632120))

(assert (not b!4632027))

(assert (not b!4631956))

(assert (not b!4632012))

(assert (not bm!323222))

(assert (not d!1459986))

(assert (not b!4631921))

(assert (not bm!323212))

(assert (not d!1459880))

(assert (not d!1459944))

(assert (not b_lambda!170903))

(assert (not b!4631894))

(assert (not b!4632130))

(assert (not b!4632000))

(assert (not b!4632123))

(assert (not b!4632112))

(assert (not d!1459868))

(assert (not bm!323208))

(assert (not b!4631922))

(assert (not d!1459792))

(assert (not bm!323221))

(assert (not d!1459862))

(assert (not d!1459894))

(assert (not d!1459900))

(assert (not b!4632146))

(assert (not bm!323214))

(assert (not d!1459914))

(assert (not d!1459830))

(assert (not b!4632151))

(assert (not d!1459962))

(assert (not b!4631992))

(assert (not b!4632131))

(assert (not d!1459958))

(assert (not d!1459890))

(assert (not d!1459888))

(assert (not d!1459886))

(assert (not d!1459806))

(assert (not d!1459870))

(assert (not b!4631863))

(assert (not b!4631892))

(assert (not b!4632058))

(assert (not d!1459864))

(assert (not b!4632136))

(assert (not b!4632025))

(assert (not b!4632051))

(assert (not d!1459902))

(assert (not bm!323215))

(assert (not d!1459832))

(assert (not d!1459972))

(assert (not b!4631889))

(assert (not d!1459982))

(assert (not d!1459948))

(assert (not d!1459828))

(assert (not b!4632117))

(assert (not d!1459898))

(assert (not d!1459820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

