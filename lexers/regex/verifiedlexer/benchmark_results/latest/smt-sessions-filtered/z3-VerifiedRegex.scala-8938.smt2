; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479344 () Bool)

(assert start!479344)

(declare-fun b!4714358 () Bool)

(declare-fun e!2940322 () Bool)

(declare-fun e!2940326 () Bool)

(assert (=> b!4714358 (= e!2940322 e!2940326)))

(declare-fun res!1993099 () Bool)

(assert (=> b!4714358 (=> (not res!1993099) (not e!2940326))))

(declare-datatypes ((K!14095 0))(
  ( (K!14096 (val!19547 Int)) )
))
(declare-datatypes ((V!14341 0))(
  ( (V!14342 (val!19548 Int)) )
))
(declare-datatypes ((tuple2!54306 0))(
  ( (tuple2!54307 (_1!30447 K!14095) (_2!30447 V!14341)) )
))
(declare-datatypes ((List!52859 0))(
  ( (Nil!52735) (Cons!52735 (h!59058 tuple2!54306) (t!360105 List!52859)) )
))
(declare-datatypes ((ListMap!5209 0))(
  ( (ListMap!5210 (toList!5845 List!52859)) )
))
(declare-fun lt!1878920 () ListMap!5209)

(declare-fun key!4653 () K!14095)

(declare-fun contains!16061 (ListMap!5209 K!14095) Bool)

(assert (=> b!4714358 (= res!1993099 (contains!16061 lt!1878920 key!4653))))

(declare-datatypes ((tuple2!54308 0))(
  ( (tuple2!54309 (_1!30448 (_ BitVec 64)) (_2!30448 List!52859)) )
))
(declare-datatypes ((List!52860 0))(
  ( (Nil!52736) (Cons!52736 (h!59059 tuple2!54308) (t!360106 List!52860)) )
))
(declare-datatypes ((ListLongMap!4375 0))(
  ( (ListLongMap!4376 (toList!5846 List!52860)) )
))
(declare-fun lm!2023 () ListLongMap!4375)

(declare-fun extractMap!2004 (List!52860) ListMap!5209)

(assert (=> b!4714358 (= lt!1878920 (extractMap!2004 (toList!5846 lm!2023)))))

(declare-fun b!4714359 () Bool)

(declare-fun e!2940323 () Bool)

(declare-fun e!2940318 () Bool)

(assert (=> b!4714359 (= e!2940323 e!2940318)))

(declare-fun res!1993102 () Bool)

(assert (=> b!4714359 (=> res!1993102 e!2940318)))

(declare-fun oldBucket!34 () List!52859)

(declare-fun lt!1878932 () ListMap!5209)

(declare-fun lt!1878935 () ListMap!5209)

(declare-fun eq!1105 (ListMap!5209 ListMap!5209) Bool)

(declare-fun +!2238 (ListMap!5209 tuple2!54306) ListMap!5209)

(assert (=> b!4714359 (= res!1993102 (not (eq!1105 lt!1878935 (+!2238 lt!1878932 (h!59058 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1878930 () List!52859)

(assert (=> b!4714359 (= lt!1878932 (extractMap!2004 (Cons!52736 (tuple2!54309 hash!405 lt!1878930) (t!360106 (toList!5846 lm!2023)))))))

(declare-fun lt!1878936 () tuple2!54308)

(assert (=> b!4714359 (= lt!1878935 (extractMap!2004 (Cons!52736 lt!1878936 (t!360106 (toList!5846 lm!2023)))))))

(declare-fun lt!1878927 () tuple2!54306)

(declare-fun lt!1878923 () List!52859)

(declare-fun lt!1878919 () ListMap!5209)

(declare-fun addToMapMapFromBucket!1408 (List!52859 ListMap!5209) ListMap!5209)

(assert (=> b!4714359 (eq!1105 (addToMapMapFromBucket!1408 (Cons!52735 lt!1878927 lt!1878923) lt!1878919) (+!2238 (addToMapMapFromBucket!1408 lt!1878923 lt!1878919) lt!1878927))))

(declare-datatypes ((Unit!128488 0))(
  ( (Unit!128489) )
))
(declare-fun lt!1878926 () Unit!128488)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!354 (tuple2!54306 List!52859 ListMap!5209) Unit!128488)

(assert (=> b!4714359 (= lt!1878926 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!354 lt!1878927 lt!1878923 lt!1878919))))

(declare-fun newBucket!218 () List!52859)

(declare-fun head!10185 (List!52859) tuple2!54306)

(assert (=> b!4714359 (= lt!1878927 (head!10185 newBucket!218))))

(declare-fun lt!1878922 () tuple2!54306)

(assert (=> b!4714359 (eq!1105 (addToMapMapFromBucket!1408 (Cons!52735 lt!1878922 lt!1878930) lt!1878919) (+!2238 (addToMapMapFromBucket!1408 lt!1878930 lt!1878919) lt!1878922))))

(declare-fun lt!1878925 () Unit!128488)

(assert (=> b!4714359 (= lt!1878925 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!354 lt!1878922 lt!1878930 lt!1878919))))

(assert (=> b!4714359 (= lt!1878922 (head!10185 oldBucket!34))))

(declare-fun lt!1878931 () List!52860)

(assert (=> b!4714359 (contains!16061 (extractMap!2004 lt!1878931) key!4653)))

(declare-fun lt!1878921 () Unit!128488)

(declare-datatypes ((Hashable!6347 0))(
  ( (HashableExt!6346 (__x!32050 Int)) )
))
(declare-fun hashF!1323 () Hashable!6347)

(declare-fun lemmaListContainsThenExtractedMapContains!524 (ListLongMap!4375 K!14095 Hashable!6347) Unit!128488)

(assert (=> b!4714359 (= lt!1878921 (lemmaListContainsThenExtractedMapContains!524 (ListLongMap!4376 lt!1878931) key!4653 hashF!1323))))

(assert (=> b!4714359 (= lt!1878931 (Cons!52736 (tuple2!54309 hash!405 (t!360105 oldBucket!34)) (t!360106 (toList!5846 lm!2023))))))

(declare-fun b!4714360 () Bool)

(declare-fun res!1993113 () Bool)

(declare-fun e!2940319 () Bool)

(assert (=> b!4714360 (=> (not res!1993113) (not e!2940319))))

(declare-fun allKeysSameHash!1804 (List!52859 (_ BitVec 64) Hashable!6347) Bool)

(assert (=> b!4714360 (= res!1993113 (allKeysSameHash!1804 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4714361 () Bool)

(assert (=> b!4714361 (= e!2940318 true)))

(declare-fun lt!1878924 () Bool)

(assert (=> b!4714361 (= lt!1878924 (eq!1105 lt!1878935 (+!2238 lt!1878932 lt!1878927)))))

(declare-fun b!4714362 () Bool)

(declare-fun res!1993105 () Bool)

(assert (=> b!4714362 (=> (not res!1993105) (not e!2940322))))

(assert (=> b!4714362 (= res!1993105 (allKeysSameHash!1804 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4714363 () Bool)

(declare-fun tp_is_empty!31205 () Bool)

(declare-fun tp!1347813 () Bool)

(declare-fun e!2940327 () Bool)

(declare-fun tp_is_empty!31207 () Bool)

(assert (=> b!4714363 (= e!2940327 (and tp_is_empty!31205 tp_is_empty!31207 tp!1347813))))

(declare-fun res!1993115 () Bool)

(assert (=> start!479344 (=> (not res!1993115) (not e!2940322))))

(declare-fun lambda!213603 () Int)

(declare-fun forall!11523 (List!52860 Int) Bool)

(assert (=> start!479344 (= res!1993115 (forall!11523 (toList!5846 lm!2023) lambda!213603))))

(assert (=> start!479344 e!2940322))

(declare-fun e!2940325 () Bool)

(declare-fun inv!67969 (ListLongMap!4375) Bool)

(assert (=> start!479344 (and (inv!67969 lm!2023) e!2940325)))

(assert (=> start!479344 tp_is_empty!31205))

(declare-fun e!2940328 () Bool)

(assert (=> start!479344 e!2940328))

(assert (=> start!479344 true))

(assert (=> start!479344 e!2940327))

(declare-fun b!4714364 () Bool)

(declare-fun e!2940324 () Bool)

(declare-fun e!2940320 () Bool)

(assert (=> b!4714364 (= e!2940324 e!2940320)))

(declare-fun res!1993111 () Bool)

(assert (=> b!4714364 (=> res!1993111 e!2940320)))

(declare-fun containsKey!3303 (List!52859 K!14095) Bool)

(assert (=> b!4714364 (= res!1993111 (not (containsKey!3303 (t!360105 oldBucket!34) key!4653)))))

(assert (=> b!4714364 (containsKey!3303 oldBucket!34 key!4653)))

(declare-fun lt!1878928 () Unit!128488)

(declare-fun lemmaGetPairDefinedThenContainsKey!292 (List!52859 K!14095 Hashable!6347) Unit!128488)

(assert (=> b!4714364 (= lt!1878928 (lemmaGetPairDefinedThenContainsKey!292 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1878934 () List!52859)

(declare-datatypes ((Option!12306 0))(
  ( (None!12305) (Some!12305 (v!46852 tuple2!54306)) )
))
(declare-fun isDefined!9560 (Option!12306) Bool)

(declare-fun getPair!544 (List!52859 K!14095) Option!12306)

(assert (=> b!4714364 (isDefined!9560 (getPair!544 lt!1878934 key!4653))))

(declare-fun lt!1878933 () tuple2!54308)

(declare-fun lt!1878917 () Unit!128488)

(declare-fun forallContained!3592 (List!52860 Int tuple2!54308) Unit!128488)

(assert (=> b!4714364 (= lt!1878917 (forallContained!3592 (toList!5846 lm!2023) lambda!213603 lt!1878933))))

(declare-fun contains!16062 (List!52860 tuple2!54308) Bool)

(assert (=> b!4714364 (contains!16062 (toList!5846 lm!2023) lt!1878933)))

(declare-fun lt!1878918 () (_ BitVec 64))

(assert (=> b!4714364 (= lt!1878933 (tuple2!54309 lt!1878918 lt!1878934))))

(declare-fun lt!1878937 () Unit!128488)

(declare-fun lemmaGetValueImpliesTupleContained!349 (ListLongMap!4375 (_ BitVec 64) List!52859) Unit!128488)

(assert (=> b!4714364 (= lt!1878937 (lemmaGetValueImpliesTupleContained!349 lm!2023 lt!1878918 lt!1878934))))

(declare-fun apply!12427 (ListLongMap!4375 (_ BitVec 64)) List!52859)

(assert (=> b!4714364 (= lt!1878934 (apply!12427 lm!2023 lt!1878918))))

(declare-fun contains!16063 (ListLongMap!4375 (_ BitVec 64)) Bool)

(assert (=> b!4714364 (contains!16063 lm!2023 lt!1878918)))

(declare-fun lt!1878938 () Unit!128488)

(declare-fun lemmaInGenMapThenLongMapContainsHash!750 (ListLongMap!4375 K!14095 Hashable!6347) Unit!128488)

(assert (=> b!4714364 (= lt!1878938 (lemmaInGenMapThenLongMapContainsHash!750 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1878929 () Unit!128488)

(declare-fun lemmaInGenMapThenGetPairDefined!340 (ListLongMap!4375 K!14095 Hashable!6347) Unit!128488)

(assert (=> b!4714364 (= lt!1878929 (lemmaInGenMapThenGetPairDefined!340 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4714365 () Bool)

(declare-fun res!1993106 () Bool)

(assert (=> b!4714365 (=> (not res!1993106) (not e!2940322))))

(declare-fun removePairForKey!1573 (List!52859 K!14095) List!52859)

(assert (=> b!4714365 (= res!1993106 (= (removePairForKey!1573 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4714366 () Bool)

(assert (=> b!4714366 (= e!2940326 e!2940319)))

(declare-fun res!1993108 () Bool)

(assert (=> b!4714366 (=> (not res!1993108) (not e!2940319))))

(assert (=> b!4714366 (= res!1993108 (= lt!1878918 hash!405))))

(declare-fun hash!4316 (Hashable!6347 K!14095) (_ BitVec 64))

(assert (=> b!4714366 (= lt!1878918 (hash!4316 hashF!1323 key!4653))))

(declare-fun b!4714367 () Bool)

(declare-fun res!1993104 () Bool)

(assert (=> b!4714367 (=> res!1993104 e!2940318)))

(assert (=> b!4714367 (= res!1993104 (not (= (h!59058 oldBucket!34) lt!1878927)))))

(declare-fun b!4714368 () Bool)

(declare-fun e!2940321 () Bool)

(assert (=> b!4714368 (= e!2940319 e!2940321)))

(declare-fun res!1993114 () Bool)

(assert (=> b!4714368 (=> (not res!1993114) (not e!2940321))))

(declare-fun head!10186 (List!52860) tuple2!54308)

(assert (=> b!4714368 (= res!1993114 (= (head!10186 (toList!5846 lm!2023)) lt!1878936))))

(assert (=> b!4714368 (= lt!1878936 (tuple2!54309 hash!405 oldBucket!34))))

(declare-fun b!4714369 () Bool)

(assert (=> b!4714369 (= e!2940321 (not e!2940324))))

(declare-fun res!1993110 () Bool)

(assert (=> b!4714369 (=> res!1993110 e!2940324)))

(get-info :version)

(assert (=> b!4714369 (= res!1993110 (or (and ((_ is Cons!52735) oldBucket!34) (= (_1!30447 (h!59058 oldBucket!34)) key!4653)) (not ((_ is Cons!52735) oldBucket!34)) (= (_1!30447 (h!59058 oldBucket!34)) key!4653)))))

(assert (=> b!4714369 (= lt!1878920 (addToMapMapFromBucket!1408 (_2!30448 (h!59059 (toList!5846 lm!2023))) lt!1878919))))

(assert (=> b!4714369 (= lt!1878919 (extractMap!2004 (t!360106 (toList!5846 lm!2023))))))

(declare-fun tail!8909 (ListLongMap!4375) ListLongMap!4375)

(assert (=> b!4714369 (= (t!360106 (toList!5846 lm!2023)) (toList!5846 (tail!8909 lm!2023)))))

(declare-fun b!4714370 () Bool)

(declare-fun res!1993103 () Bool)

(assert (=> b!4714370 (=> (not res!1993103) (not e!2940322))))

(declare-fun noDuplicateKeys!1978 (List!52859) Bool)

(assert (=> b!4714370 (= res!1993103 (noDuplicateKeys!1978 newBucket!218))))

(declare-fun b!4714371 () Bool)

(declare-fun res!1993109 () Bool)

(assert (=> b!4714371 (=> (not res!1993109) (not e!2940321))))

(assert (=> b!4714371 (= res!1993109 ((_ is Cons!52736) (toList!5846 lm!2023)))))

(declare-fun b!4714372 () Bool)

(declare-fun res!1993101 () Bool)

(assert (=> b!4714372 (=> (not res!1993101) (not e!2940319))))

(declare-fun allKeysSameHashInMap!1892 (ListLongMap!4375 Hashable!6347) Bool)

(assert (=> b!4714372 (= res!1993101 (allKeysSameHashInMap!1892 lm!2023 hashF!1323))))

(declare-fun b!4714373 () Bool)

(declare-fun res!1993112 () Bool)

(assert (=> b!4714373 (=> (not res!1993112) (not e!2940322))))

(assert (=> b!4714373 (= res!1993112 (noDuplicateKeys!1978 oldBucket!34))))

(declare-fun b!4714374 () Bool)

(declare-fun tp!1347812 () Bool)

(assert (=> b!4714374 (= e!2940325 tp!1347812)))

(declare-fun b!4714375 () Bool)

(assert (=> b!4714375 (= e!2940320 e!2940323)))

(declare-fun res!1993107 () Bool)

(assert (=> b!4714375 (=> res!1993107 e!2940323)))

(assert (=> b!4714375 (= res!1993107 (not (= (removePairForKey!1573 lt!1878930 key!4653) lt!1878923)))))

(declare-fun tail!8910 (List!52859) List!52859)

(assert (=> b!4714375 (= lt!1878923 (tail!8910 newBucket!218))))

(assert (=> b!4714375 (= lt!1878930 (tail!8910 oldBucket!34))))

(declare-fun b!4714376 () Bool)

(declare-fun tp!1347811 () Bool)

(assert (=> b!4714376 (= e!2940328 (and tp_is_empty!31205 tp_is_empty!31207 tp!1347811))))

(declare-fun b!4714377 () Bool)

(declare-fun res!1993100 () Bool)

(assert (=> b!4714377 (=> res!1993100 e!2940323)))

(assert (=> b!4714377 (= res!1993100 (not (= (removePairForKey!1573 (t!360105 oldBucket!34) key!4653) lt!1878923)))))

(assert (= (and start!479344 res!1993115) b!4714373))

(assert (= (and b!4714373 res!1993112) b!4714370))

(assert (= (and b!4714370 res!1993103) b!4714365))

(assert (= (and b!4714365 res!1993106) b!4714362))

(assert (= (and b!4714362 res!1993105) b!4714358))

(assert (= (and b!4714358 res!1993099) b!4714366))

(assert (= (and b!4714366 res!1993108) b!4714360))

(assert (= (and b!4714360 res!1993113) b!4714372))

(assert (= (and b!4714372 res!1993101) b!4714368))

(assert (= (and b!4714368 res!1993114) b!4714371))

(assert (= (and b!4714371 res!1993109) b!4714369))

(assert (= (and b!4714369 (not res!1993110)) b!4714364))

(assert (= (and b!4714364 (not res!1993111)) b!4714375))

(assert (= (and b!4714375 (not res!1993107)) b!4714377))

(assert (= (and b!4714377 (not res!1993100)) b!4714359))

(assert (= (and b!4714359 (not res!1993102)) b!4714367))

(assert (= (and b!4714367 (not res!1993104)) b!4714361))

(assert (= start!479344 b!4714374))

(assert (= (and start!479344 ((_ is Cons!52735) oldBucket!34)) b!4714376))

(assert (= (and start!479344 ((_ is Cons!52735) newBucket!218)) b!4714363))

(declare-fun m!5641765 () Bool)

(assert (=> b!4714368 m!5641765))

(declare-fun m!5641767 () Bool)

(assert (=> b!4714359 m!5641767))

(declare-fun m!5641769 () Bool)

(assert (=> b!4714359 m!5641769))

(declare-fun m!5641771 () Bool)

(assert (=> b!4714359 m!5641771))

(declare-fun m!5641773 () Bool)

(assert (=> b!4714359 m!5641773))

(assert (=> b!4714359 m!5641769))

(assert (=> b!4714359 m!5641773))

(declare-fun m!5641775 () Bool)

(assert (=> b!4714359 m!5641775))

(declare-fun m!5641777 () Bool)

(assert (=> b!4714359 m!5641777))

(declare-fun m!5641779 () Bool)

(assert (=> b!4714359 m!5641779))

(declare-fun m!5641781 () Bool)

(assert (=> b!4714359 m!5641781))

(declare-fun m!5641783 () Bool)

(assert (=> b!4714359 m!5641783))

(declare-fun m!5641785 () Bool)

(assert (=> b!4714359 m!5641785))

(declare-fun m!5641787 () Bool)

(assert (=> b!4714359 m!5641787))

(assert (=> b!4714359 m!5641787))

(declare-fun m!5641789 () Bool)

(assert (=> b!4714359 m!5641789))

(declare-fun m!5641791 () Bool)

(assert (=> b!4714359 m!5641791))

(assert (=> b!4714359 m!5641767))

(declare-fun m!5641793 () Bool)

(assert (=> b!4714359 m!5641793))

(assert (=> b!4714359 m!5641781))

(assert (=> b!4714359 m!5641789))

(declare-fun m!5641795 () Bool)

(assert (=> b!4714359 m!5641795))

(assert (=> b!4714359 m!5641775))

(declare-fun m!5641797 () Bool)

(assert (=> b!4714359 m!5641797))

(assert (=> b!4714359 m!5641783))

(declare-fun m!5641799 () Bool)

(assert (=> b!4714359 m!5641799))

(declare-fun m!5641801 () Bool)

(assert (=> b!4714359 m!5641801))

(declare-fun m!5641803 () Bool)

(assert (=> b!4714359 m!5641803))

(declare-fun m!5641805 () Bool)

(assert (=> b!4714358 m!5641805))

(declare-fun m!5641807 () Bool)

(assert (=> b!4714358 m!5641807))

(declare-fun m!5641809 () Bool)

(assert (=> b!4714369 m!5641809))

(declare-fun m!5641811 () Bool)

(assert (=> b!4714369 m!5641811))

(declare-fun m!5641813 () Bool)

(assert (=> b!4714369 m!5641813))

(declare-fun m!5641815 () Bool)

(assert (=> b!4714360 m!5641815))

(declare-fun m!5641817 () Bool)

(assert (=> b!4714366 m!5641817))

(declare-fun m!5641819 () Bool)

(assert (=> b!4714370 m!5641819))

(declare-fun m!5641821 () Bool)

(assert (=> start!479344 m!5641821))

(declare-fun m!5641823 () Bool)

(assert (=> start!479344 m!5641823))

(declare-fun m!5641825 () Bool)

(assert (=> b!4714377 m!5641825))

(declare-fun m!5641827 () Bool)

(assert (=> b!4714362 m!5641827))

(declare-fun m!5641829 () Bool)

(assert (=> b!4714361 m!5641829))

(assert (=> b!4714361 m!5641829))

(declare-fun m!5641831 () Bool)

(assert (=> b!4714361 m!5641831))

(declare-fun m!5641833 () Bool)

(assert (=> b!4714372 m!5641833))

(declare-fun m!5641835 () Bool)

(assert (=> b!4714365 m!5641835))

(declare-fun m!5641837 () Bool)

(assert (=> b!4714373 m!5641837))

(declare-fun m!5641839 () Bool)

(assert (=> b!4714375 m!5641839))

(declare-fun m!5641841 () Bool)

(assert (=> b!4714375 m!5641841))

(declare-fun m!5641843 () Bool)

(assert (=> b!4714375 m!5641843))

(declare-fun m!5641845 () Bool)

(assert (=> b!4714364 m!5641845))

(declare-fun m!5641847 () Bool)

(assert (=> b!4714364 m!5641847))

(declare-fun m!5641849 () Bool)

(assert (=> b!4714364 m!5641849))

(declare-fun m!5641851 () Bool)

(assert (=> b!4714364 m!5641851))

(declare-fun m!5641853 () Bool)

(assert (=> b!4714364 m!5641853))

(declare-fun m!5641855 () Bool)

(assert (=> b!4714364 m!5641855))

(declare-fun m!5641857 () Bool)

(assert (=> b!4714364 m!5641857))

(declare-fun m!5641859 () Bool)

(assert (=> b!4714364 m!5641859))

(declare-fun m!5641861 () Bool)

(assert (=> b!4714364 m!5641861))

(declare-fun m!5641863 () Bool)

(assert (=> b!4714364 m!5641863))

(declare-fun m!5641865 () Bool)

(assert (=> b!4714364 m!5641865))

(assert (=> b!4714364 m!5641853))

(declare-fun m!5641867 () Bool)

(assert (=> b!4714364 m!5641867))

(check-sat (not b!4714359) (not b!4714376) tp_is_empty!31205 (not b!4714372) (not b!4714361) (not b!4714377) (not b!4714363) (not b!4714374) (not b!4714358) (not b!4714360) (not start!479344) (not b!4714366) (not b!4714364) (not b!4714362) tp_is_empty!31207 (not b!4714365) (not b!4714370) (not b!4714375) (not b!4714368) (not b!4714369) (not b!4714373))
(check-sat)
