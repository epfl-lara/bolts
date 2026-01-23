; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!464828 () Bool)

(assert start!464828)

(declare-fun b!4631239 () Bool)

(declare-fun e!2889022 () Bool)

(declare-fun e!2889034 () Bool)

(assert (=> b!4631239 (= e!2889022 e!2889034)))

(declare-fun res!1943110 () Bool)

(assert (=> b!4631239 (=> res!1943110 e!2889034)))

(declare-datatypes ((K!12975 0))(
  ( (K!12976 (val!18651 Int)) )
))
(declare-datatypes ((V!13221 0))(
  ( (V!13222 (val!18652 Int)) )
))
(declare-datatypes ((tuple2!52566 0))(
  ( (tuple2!52567 (_1!29577 K!12975) (_2!29577 V!13221)) )
))
(declare-datatypes ((List!51728 0))(
  ( (Nil!51604) (Cons!51604 (h!57676 tuple2!52566) (t!358782 List!51728)) )
))
(declare-datatypes ((ListMap!4329 0))(
  ( (ListMap!4330 (toList!5025 List!51728)) )
))
(declare-fun lt!1791610 () ListMap!4329)

(declare-fun lt!1791608 () tuple2!52566)

(declare-fun lt!1791589 () ListMap!4329)

(declare-fun eq!845 (ListMap!4329 ListMap!4329) Bool)

(declare-fun +!1896 (ListMap!4329 tuple2!52566) ListMap!4329)

(assert (=> b!4631239 (= res!1943110 (not (eq!845 lt!1791610 (+!1896 lt!1791589 lt!1791608))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1791598 () List!51728)

(declare-datatypes ((tuple2!52568 0))(
  ( (tuple2!52569 (_1!29578 (_ BitVec 64)) (_2!29578 List!51728)) )
))
(declare-datatypes ((List!51729 0))(
  ( (Nil!51605) (Cons!51605 (h!57677 tuple2!52568) (t!358783 List!51729)) )
))
(declare-fun extractMap!1586 (List!51729) ListMap!4329)

(assert (=> b!4631239 (= lt!1791589 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605)))))

(declare-fun newBucket!224 () List!51728)

(assert (=> b!4631239 (= lt!1791610 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605)))))

(declare-fun b!4631240 () Bool)

(declare-fun e!2889023 () Bool)

(declare-fun e!2889025 () Bool)

(assert (=> b!4631240 (= e!2889023 e!2889025)))

(declare-fun res!1943104 () Bool)

(assert (=> b!4631240 (=> res!1943104 e!2889025)))

(declare-fun lt!1791591 () List!51728)

(declare-fun key!4968 () K!12975)

(declare-fun removePairForKey!1153 (List!51728 K!12975) List!51728)

(assert (=> b!4631240 (= res!1943104 (not (= (removePairForKey!1153 lt!1791591 key!4968) lt!1791598)))))

(declare-fun tail!8165 (List!51728) List!51728)

(assert (=> b!4631240 (= lt!1791598 (tail!8165 newBucket!224))))

(declare-fun oldBucket!40 () List!51728)

(assert (=> b!4631240 (= lt!1791591 (tail!8165 oldBucket!40))))

(declare-fun b!4631241 () Bool)

(declare-fun e!2889033 () Bool)

(assert (=> b!4631241 (= e!2889034 e!2889033)))

(declare-fun res!1943114 () Bool)

(assert (=> b!4631241 (=> res!1943114 e!2889033)))

(declare-fun lt!1791595 () ListMap!4329)

(declare-fun lt!1791606 () ListMap!4329)

(assert (=> b!4631241 (= res!1943114 (not (= lt!1791595 lt!1791606)))))

(declare-fun lt!1791609 () ListMap!4329)

(assert (=> b!4631241 (= lt!1791606 (+!1896 lt!1791609 (h!57676 oldBucket!40)))))

(declare-fun lt!1791597 () ListMap!4329)

(declare-fun -!570 (ListMap!4329 K!12975) ListMap!4329)

(assert (=> b!4631241 (= lt!1791595 (-!570 lt!1791597 key!4968))))

(declare-fun lt!1791594 () ListMap!4329)

(assert (=> b!4631241 (= lt!1791597 (+!1896 lt!1791594 (h!57676 oldBucket!40)))))

(assert (=> b!4631241 (= (-!570 (+!1896 lt!1791594 (h!57676 oldBucket!40)) key!4968) (+!1896 lt!1791609 (h!57676 oldBucket!40)))))

(declare-datatypes ((Unit!113380 0))(
  ( (Unit!113381) )
))
(declare-fun lt!1791605 () Unit!113380)

(declare-fun addRemoveCommutativeForDiffKeys!25 (ListMap!4329 K!12975 V!13221 K!12975) Unit!113380)

(assert (=> b!4631241 (= lt!1791605 (addRemoveCommutativeForDiffKeys!25 lt!1791594 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40)) key!4968))))

(assert (=> b!4631241 (eq!845 lt!1791589 lt!1791609)))

(assert (=> b!4631241 (= lt!1791609 (-!570 lt!1791594 key!4968))))

(declare-datatypes ((Hashable!5927 0))(
  ( (HashableExt!5926 (__x!31630 Int)) )
))
(declare-fun hashF!1389 () Hashable!5927)

(declare-fun lt!1791601 () Unit!113380)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!132 ((_ BitVec 64) List!51728 List!51728 K!12975 Hashable!5927) Unit!113380)

(assert (=> b!4631241 (= lt!1791601 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!132 hash!414 (t!358782 oldBucket!40) lt!1791598 key!4968 hashF!1389))))

(declare-fun b!4631242 () Bool)

(declare-fun res!1943103 () Bool)

(declare-fun e!2889024 () Bool)

(assert (=> b!4631242 (=> (not res!1943103) (not e!2889024))))

(declare-fun allKeysSameHash!1384 (List!51728 (_ BitVec 64) Hashable!5927) Bool)

(assert (=> b!4631242 (= res!1943103 (allKeysSameHash!1384 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4631243 () Bool)

(assert (=> b!4631243 (= e!2889025 e!2889022)))

(declare-fun res!1943120 () Bool)

(assert (=> b!4631243 (=> res!1943120 e!2889022)))

(declare-fun lt!1791615 () ListMap!4329)

(assert (=> b!4631243 (= res!1943120 (not (eq!845 lt!1791615 (+!1896 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)) (h!57676 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!991 (List!51728 ListMap!4329) ListMap!4329)

(assert (=> b!4631243 (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791608 lt!1791598) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791608))))

(declare-fun lt!1791617 () Unit!113380)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!96 (tuple2!52566 List!51728 ListMap!4329) Unit!113380)

(assert (=> b!4631243 (= lt!1791617 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!96 lt!1791608 lt!1791598 (ListMap!4330 Nil!51604)))))

(declare-fun head!9664 (List!51728) tuple2!52566)

(assert (=> b!4631243 (= lt!1791608 (head!9664 newBucket!224))))

(declare-fun lt!1791612 () tuple2!52566)

(assert (=> b!4631243 (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791612 lt!1791591) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791612))))

(declare-fun lt!1791600 () Unit!113380)

(assert (=> b!4631243 (= lt!1791600 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!96 lt!1791612 lt!1791591 (ListMap!4330 Nil!51604)))))

(assert (=> b!4631243 (= lt!1791612 (head!9664 oldBucket!40))))

(declare-fun contains!14693 (ListMap!4329 K!12975) Bool)

(assert (=> b!4631243 (contains!14693 lt!1791594 key!4968)))

(declare-fun lt!1791613 () List!51729)

(assert (=> b!4631243 (= lt!1791594 (extractMap!1586 lt!1791613))))

(declare-fun lt!1791607 () Unit!113380)

(declare-datatypes ((ListLongMap!3615 0))(
  ( (ListLongMap!3616 (toList!5026 List!51729)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!348 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> b!4631243 (= lt!1791607 (lemmaListContainsThenExtractedMapContains!348 (ListLongMap!3616 lt!1791613) key!4968 hashF!1389))))

(assert (=> b!4631243 (= lt!1791613 (Cons!51605 (tuple2!52569 hash!414 (t!358782 oldBucket!40)) Nil!51605))))

(declare-fun b!4631244 () Bool)

(declare-fun e!2889030 () Bool)

(assert (=> b!4631244 (= e!2889033 e!2889030)))

(declare-fun res!1943115 () Bool)

(assert (=> b!4631244 (=> res!1943115 e!2889030)))

(declare-fun lt!1791592 () ListMap!4329)

(assert (=> b!4631244 (= res!1943115 (not (eq!845 lt!1791592 lt!1791606)))))

(assert (=> b!4631244 (eq!845 lt!1791595 lt!1791592)))

(assert (=> b!4631244 (= lt!1791592 (-!570 lt!1791615 key!4968))))

(declare-fun lt!1791590 () Unit!113380)

(declare-fun lemmaRemovePreservesEq!26 (ListMap!4329 ListMap!4329 K!12975) Unit!113380)

(assert (=> b!4631244 (= lt!1791590 (lemmaRemovePreservesEq!26 lt!1791597 lt!1791615 key!4968))))

(declare-fun b!4631245 () Bool)

(assert (=> b!4631245 (= e!2889030 (not (= newBucket!224 Nil!51604)))))

(declare-fun b!4631246 () Bool)

(declare-fun e!2889029 () Bool)

(declare-fun e!2889028 () Bool)

(assert (=> b!4631246 (= e!2889029 (not e!2889028))))

(declare-fun res!1943108 () Bool)

(assert (=> b!4631246 (=> res!1943108 e!2889028)))

(get-info :version)

(assert (=> b!4631246 (= res!1943108 (or (and ((_ is Cons!51604) oldBucket!40) (= (_1!29577 (h!57676 oldBucket!40)) key!4968)) (not ((_ is Cons!51604) oldBucket!40)) (= (_1!29577 (h!57676 oldBucket!40)) key!4968)))))

(declare-fun e!2889026 () Bool)

(assert (=> b!4631246 e!2889026))

(declare-fun res!1943113 () Bool)

(assert (=> b!4631246 (=> (not res!1943113) (not e!2889026))))

(declare-fun lt!1791603 () ListMap!4329)

(assert (=> b!4631246 (= res!1943113 (= lt!1791615 (addToMapMapFromBucket!991 oldBucket!40 lt!1791603)))))

(assert (=> b!4631246 (= lt!1791603 (extractMap!1586 Nil!51605))))

(assert (=> b!4631246 true))

(declare-fun b!4631247 () Bool)

(declare-fun res!1943111 () Bool)

(assert (=> b!4631247 (=> (not res!1943111) (not e!2889024))))

(assert (=> b!4631247 (= res!1943111 (= (removePairForKey!1153 oldBucket!40 key!4968) newBucket!224))))

(declare-fun e!2889027 () Bool)

(declare-fun tp_is_empty!29415 () Bool)

(declare-fun tp!1342338 () Bool)

(declare-fun b!4631248 () Bool)

(declare-fun tp_is_empty!29413 () Bool)

(assert (=> b!4631248 (= e!2889027 (and tp_is_empty!29413 tp_is_empty!29415 tp!1342338))))

(declare-fun b!4631249 () Bool)

(declare-fun res!1943107 () Bool)

(assert (=> b!4631249 (=> res!1943107 e!2889030)))

(assert (=> b!4631249 (= res!1943107 (not (eq!845 lt!1791610 (+!1896 lt!1791589 (h!57676 oldBucket!40)))))))

(declare-fun res!1943119 () Bool)

(assert (=> start!464828 (=> (not res!1943119) (not e!2889024))))

(declare-fun noDuplicateKeys!1530 (List!51728) Bool)

(assert (=> start!464828 (= res!1943119 (noDuplicateKeys!1530 oldBucket!40))))

(assert (=> start!464828 e!2889024))

(assert (=> start!464828 true))

(declare-fun e!2889031 () Bool)

(assert (=> start!464828 e!2889031))

(assert (=> start!464828 tp_is_empty!29413))

(assert (=> start!464828 e!2889027))

(declare-fun b!4631250 () Bool)

(declare-fun e!2889032 () Bool)

(assert (=> b!4631250 (= e!2889024 e!2889032)))

(declare-fun res!1943117 () Bool)

(assert (=> b!4631250 (=> (not res!1943117) (not e!2889032))))

(assert (=> b!4631250 (= res!1943117 (contains!14693 lt!1791615 key!4968))))

(declare-fun lt!1791619 () List!51729)

(assert (=> b!4631250 (= lt!1791615 (extractMap!1586 lt!1791619))))

(assert (=> b!4631250 (= lt!1791619 (Cons!51605 (tuple2!52569 hash!414 oldBucket!40) Nil!51605))))

(declare-fun b!4631251 () Bool)

(declare-fun res!1943118 () Bool)

(assert (=> b!4631251 (=> (not res!1943118) (not e!2889024))))

(assert (=> b!4631251 (= res!1943118 (noDuplicateKeys!1530 newBucket!224))))

(declare-fun b!4631252 () Bool)

(assert (=> b!4631252 (= e!2889028 e!2889023)))

(declare-fun res!1943106 () Bool)

(assert (=> b!4631252 (=> res!1943106 e!2889023)))

(declare-fun containsKey!2514 (List!51728 K!12975) Bool)

(assert (=> b!4631252 (= res!1943106 (not (containsKey!2514 (t!358782 oldBucket!40) key!4968)))))

(assert (=> b!4631252 (containsKey!2514 oldBucket!40 key!4968)))

(declare-fun lt!1791614 () Unit!113380)

(declare-fun lemmaGetPairDefinedThenContainsKey!76 (List!51728 K!12975 Hashable!5927) Unit!113380)

(assert (=> b!4631252 (= lt!1791614 (lemmaGetPairDefinedThenContainsKey!76 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1791618 () List!51728)

(declare-datatypes ((Option!11656 0))(
  ( (None!11655) (Some!11655 (v!45825 tuple2!52566)) )
))
(declare-fun isDefined!8921 (Option!11656) Bool)

(declare-fun getPair!322 (List!51728 K!12975) Option!11656)

(assert (=> b!4631252 (isDefined!8921 (getPair!322 lt!1791618 key!4968))))

(declare-fun lt!1791604 () Unit!113380)

(declare-fun lt!1791593 () tuple2!52568)

(declare-fun lambda!193692 () Int)

(declare-fun forallContained!3096 (List!51729 Int tuple2!52568) Unit!113380)

(assert (=> b!4631252 (= lt!1791604 (forallContained!3096 lt!1791619 lambda!193692 lt!1791593))))

(declare-fun contains!14694 (List!51729 tuple2!52568) Bool)

(assert (=> b!4631252 (contains!14694 lt!1791619 lt!1791593)))

(declare-fun lt!1791602 () (_ BitVec 64))

(assert (=> b!4631252 (= lt!1791593 (tuple2!52569 lt!1791602 lt!1791618))))

(declare-fun lt!1791616 () ListLongMap!3615)

(declare-fun lt!1791599 () Unit!113380)

(declare-fun lemmaGetValueImpliesTupleContained!127 (ListLongMap!3615 (_ BitVec 64) List!51728) Unit!113380)

(assert (=> b!4631252 (= lt!1791599 (lemmaGetValueImpliesTupleContained!127 lt!1791616 lt!1791602 lt!1791618))))

(declare-fun apply!12195 (ListLongMap!3615 (_ BitVec 64)) List!51728)

(assert (=> b!4631252 (= lt!1791618 (apply!12195 lt!1791616 lt!1791602))))

(declare-fun contains!14695 (ListLongMap!3615 (_ BitVec 64)) Bool)

(assert (=> b!4631252 (contains!14695 lt!1791616 lt!1791602)))

(declare-fun lt!1791596 () Unit!113380)

(declare-fun lemmaInGenMapThenLongMapContainsHash!528 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> b!4631252 (= lt!1791596 (lemmaInGenMapThenLongMapContainsHash!528 lt!1791616 key!4968 hashF!1389))))

(declare-fun lt!1791611 () Unit!113380)

(declare-fun lemmaInGenMapThenGetPairDefined!118 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> b!4631252 (= lt!1791611 (lemmaInGenMapThenGetPairDefined!118 lt!1791616 key!4968 hashF!1389))))

(assert (=> b!4631252 (= lt!1791616 (ListLongMap!3616 lt!1791619))))

(declare-fun b!4631253 () Bool)

(declare-fun res!1943105 () Bool)

(assert (=> b!4631253 (=> res!1943105 e!2889030)))

(assert (=> b!4631253 (= res!1943105 (not (= lt!1791608 (h!57676 oldBucket!40))))))

(declare-fun b!4631254 () Bool)

(declare-fun res!1943109 () Bool)

(assert (=> b!4631254 (=> (not res!1943109) (not e!2889029))))

(assert (=> b!4631254 (= res!1943109 (allKeysSameHash!1384 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4631255 () Bool)

(assert (=> b!4631255 (= e!2889032 e!2889029)))

(declare-fun res!1943116 () Bool)

(assert (=> b!4631255 (=> (not res!1943116) (not e!2889029))))

(assert (=> b!4631255 (= res!1943116 (= lt!1791602 hash!414))))

(declare-fun hash!3566 (Hashable!5927 K!12975) (_ BitVec 64))

(assert (=> b!4631255 (= lt!1791602 (hash!3566 hashF!1389 key!4968))))

(declare-fun b!4631256 () Bool)

(declare-fun res!1943112 () Bool)

(assert (=> b!4631256 (=> res!1943112 e!2889025)))

(assert (=> b!4631256 (= res!1943112 (not (= (removePairForKey!1153 (t!358782 oldBucket!40) key!4968) lt!1791598)))))

(declare-fun b!4631257 () Bool)

(assert (=> b!4631257 (= e!2889026 (= lt!1791603 (ListMap!4330 Nil!51604)))))

(declare-fun b!4631258 () Bool)

(declare-fun tp!1342339 () Bool)

(assert (=> b!4631258 (= e!2889031 (and tp_is_empty!29413 tp_is_empty!29415 tp!1342339))))

(assert (= (and start!464828 res!1943119) b!4631251))

(assert (= (and b!4631251 res!1943118) b!4631247))

(assert (= (and b!4631247 res!1943111) b!4631242))

(assert (= (and b!4631242 res!1943103) b!4631250))

(assert (= (and b!4631250 res!1943117) b!4631255))

(assert (= (and b!4631255 res!1943116) b!4631254))

(assert (= (and b!4631254 res!1943109) b!4631246))

(assert (= (and b!4631246 res!1943113) b!4631257))

(assert (= (and b!4631246 (not res!1943108)) b!4631252))

(assert (= (and b!4631252 (not res!1943106)) b!4631240))

(assert (= (and b!4631240 (not res!1943104)) b!4631256))

(assert (= (and b!4631256 (not res!1943112)) b!4631243))

(assert (= (and b!4631243 (not res!1943120)) b!4631239))

(assert (= (and b!4631239 (not res!1943110)) b!4631241))

(assert (= (and b!4631241 (not res!1943114)) b!4631244))

(assert (= (and b!4631244 (not res!1943115)) b!4631253))

(assert (= (and b!4631253 (not res!1943105)) b!4631249))

(assert (= (and b!4631249 (not res!1943107)) b!4631245))

(assert (= (and start!464828 ((_ is Cons!51604) oldBucket!40)) b!4631258))

(assert (= (and start!464828 ((_ is Cons!51604) newBucket!224)) b!4631248))

(declare-fun m!5480869 () Bool)

(assert (=> b!4631242 m!5480869))

(declare-fun m!5480871 () Bool)

(assert (=> b!4631250 m!5480871))

(declare-fun m!5480873 () Bool)

(assert (=> b!4631250 m!5480873))

(declare-fun m!5480875 () Bool)

(assert (=> b!4631252 m!5480875))

(declare-fun m!5480877 () Bool)

(assert (=> b!4631252 m!5480877))

(declare-fun m!5480879 () Bool)

(assert (=> b!4631252 m!5480879))

(declare-fun m!5480881 () Bool)

(assert (=> b!4631252 m!5480881))

(declare-fun m!5480883 () Bool)

(assert (=> b!4631252 m!5480883))

(declare-fun m!5480885 () Bool)

(assert (=> b!4631252 m!5480885))

(declare-fun m!5480887 () Bool)

(assert (=> b!4631252 m!5480887))

(declare-fun m!5480889 () Bool)

(assert (=> b!4631252 m!5480889))

(declare-fun m!5480891 () Bool)

(assert (=> b!4631252 m!5480891))

(declare-fun m!5480893 () Bool)

(assert (=> b!4631252 m!5480893))

(declare-fun m!5480895 () Bool)

(assert (=> b!4631252 m!5480895))

(declare-fun m!5480897 () Bool)

(assert (=> b!4631252 m!5480897))

(assert (=> b!4631252 m!5480875))

(declare-fun m!5480899 () Bool)

(assert (=> b!4631251 m!5480899))

(declare-fun m!5480901 () Bool)

(assert (=> b!4631255 m!5480901))

(declare-fun m!5480903 () Bool)

(assert (=> b!4631247 m!5480903))

(declare-fun m!5480905 () Bool)

(assert (=> b!4631243 m!5480905))

(declare-fun m!5480907 () Bool)

(assert (=> b!4631243 m!5480907))

(declare-fun m!5480909 () Bool)

(assert (=> b!4631243 m!5480909))

(declare-fun m!5480911 () Bool)

(assert (=> b!4631243 m!5480911))

(declare-fun m!5480913 () Bool)

(assert (=> b!4631243 m!5480913))

(declare-fun m!5480915 () Bool)

(assert (=> b!4631243 m!5480915))

(declare-fun m!5480917 () Bool)

(assert (=> b!4631243 m!5480917))

(declare-fun m!5480919 () Bool)

(assert (=> b!4631243 m!5480919))

(declare-fun m!5480921 () Bool)

(assert (=> b!4631243 m!5480921))

(declare-fun m!5480923 () Bool)

(assert (=> b!4631243 m!5480923))

(declare-fun m!5480925 () Bool)

(assert (=> b!4631243 m!5480925))

(declare-fun m!5480927 () Bool)

(assert (=> b!4631243 m!5480927))

(declare-fun m!5480929 () Bool)

(assert (=> b!4631243 m!5480929))

(assert (=> b!4631243 m!5480929))

(assert (=> b!4631243 m!5480923))

(declare-fun m!5480931 () Bool)

(assert (=> b!4631243 m!5480931))

(assert (=> b!4631243 m!5480913))

(assert (=> b!4631243 m!5480911))

(declare-fun m!5480933 () Bool)

(assert (=> b!4631243 m!5480933))

(declare-fun m!5480935 () Bool)

(assert (=> b!4631243 m!5480935))

(assert (=> b!4631243 m!5480927))

(assert (=> b!4631243 m!5480907))

(declare-fun m!5480937 () Bool)

(assert (=> b!4631243 m!5480937))

(assert (=> b!4631243 m!5480905))

(declare-fun m!5480939 () Bool)

(assert (=> b!4631243 m!5480939))

(assert (=> b!4631243 m!5480909))

(declare-fun m!5480941 () Bool)

(assert (=> b!4631246 m!5480941))

(declare-fun m!5480943 () Bool)

(assert (=> b!4631246 m!5480943))

(declare-fun m!5480945 () Bool)

(assert (=> b!4631249 m!5480945))

(assert (=> b!4631249 m!5480945))

(declare-fun m!5480947 () Bool)

(assert (=> b!4631249 m!5480947))

(declare-fun m!5480949 () Bool)

(assert (=> b!4631244 m!5480949))

(declare-fun m!5480951 () Bool)

(assert (=> b!4631244 m!5480951))

(declare-fun m!5480953 () Bool)

(assert (=> b!4631244 m!5480953))

(declare-fun m!5480955 () Bool)

(assert (=> b!4631244 m!5480955))

(declare-fun m!5480957 () Bool)

(assert (=> b!4631240 m!5480957))

(declare-fun m!5480959 () Bool)

(assert (=> b!4631240 m!5480959))

(declare-fun m!5480961 () Bool)

(assert (=> b!4631240 m!5480961))

(declare-fun m!5480963 () Bool)

(assert (=> start!464828 m!5480963))

(declare-fun m!5480965 () Bool)

(assert (=> b!4631239 m!5480965))

(assert (=> b!4631239 m!5480965))

(declare-fun m!5480967 () Bool)

(assert (=> b!4631239 m!5480967))

(declare-fun m!5480969 () Bool)

(assert (=> b!4631239 m!5480969))

(declare-fun m!5480971 () Bool)

(assert (=> b!4631239 m!5480971))

(declare-fun m!5480973 () Bool)

(assert (=> b!4631254 m!5480973))

(declare-fun m!5480975 () Bool)

(assert (=> b!4631241 m!5480975))

(declare-fun m!5480977 () Bool)

(assert (=> b!4631241 m!5480977))

(declare-fun m!5480979 () Bool)

(assert (=> b!4631241 m!5480979))

(declare-fun m!5480981 () Bool)

(assert (=> b!4631241 m!5480981))

(declare-fun m!5480983 () Bool)

(assert (=> b!4631241 m!5480983))

(declare-fun m!5480985 () Bool)

(assert (=> b!4631241 m!5480985))

(assert (=> b!4631241 m!5480983))

(declare-fun m!5480987 () Bool)

(assert (=> b!4631241 m!5480987))

(declare-fun m!5480989 () Bool)

(assert (=> b!4631241 m!5480989))

(declare-fun m!5480991 () Bool)

(assert (=> b!4631256 m!5480991))

(check-sat (not b!4631252) (not b!4631256) (not b!4631242) (not b!4631249) (not b!4631244) (not start!464828) (not b!4631248) (not b!4631247) tp_is_empty!29415 (not b!4631258) (not b!4631240) (not b!4631251) (not b!4631239) (not b!4631254) (not b!4631255) (not b!4631243) (not b!4631241) (not b!4631250) tp_is_empty!29413 (not b!4631246))
(check-sat)
(get-model)

(declare-fun d!1459553 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8863 (List!51728) (InoxSet tuple2!52566))

(assert (=> d!1459553 (= (eq!845 lt!1791592 lt!1791606) (= (content!8863 (toList!5025 lt!1791592)) (content!8863 (toList!5025 lt!1791606))))))

(declare-fun bs!1027603 () Bool)

(assert (= bs!1027603 d!1459553))

(declare-fun m!5481007 () Bool)

(assert (=> bs!1027603 m!5481007))

(declare-fun m!5481009 () Bool)

(assert (=> bs!1027603 m!5481009))

(assert (=> b!4631244 d!1459553))

(declare-fun d!1459555 () Bool)

(assert (=> d!1459555 (= (eq!845 lt!1791595 lt!1791592) (= (content!8863 (toList!5025 lt!1791595)) (content!8863 (toList!5025 lt!1791592))))))

(declare-fun bs!1027604 () Bool)

(assert (= bs!1027604 d!1459555))

(declare-fun m!5481011 () Bool)

(assert (=> bs!1027604 m!5481011))

(assert (=> bs!1027604 m!5481007))

(assert (=> b!4631244 d!1459555))

(declare-fun d!1459557 () Bool)

(declare-fun e!2889051 () Bool)

(assert (=> d!1459557 e!2889051))

(declare-fun res!1943136 () Bool)

(assert (=> d!1459557 (=> (not res!1943136) (not e!2889051))))

(declare-fun lt!1791651 () ListMap!4329)

(assert (=> d!1459557 (= res!1943136 (not (contains!14693 lt!1791651 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!275 (List!51728 K!12975) List!51728)

(assert (=> d!1459557 (= lt!1791651 (ListMap!4330 (removePresrvNoDuplicatedKeys!275 (toList!5025 lt!1791615) key!4968)))))

(assert (=> d!1459557 (= (-!570 lt!1791615 key!4968) lt!1791651)))

(declare-fun b!4631290 () Bool)

(declare-datatypes ((List!51731 0))(
  ( (Nil!51607) (Cons!51607 (h!57681 K!12975) (t!358787 List!51731)) )
))
(declare-fun content!8864 (List!51731) (InoxSet K!12975))

(declare-fun keys!18200 (ListMap!4329) List!51731)

(assert (=> b!4631290 (= e!2889051 (= ((_ map and) (content!8864 (keys!18200 lt!1791615)) ((_ map not) (store ((as const (Array K!12975 Bool)) false) key!4968 true))) (content!8864 (keys!18200 lt!1791651))))))

(assert (= (and d!1459557 res!1943136) b!4631290))

(declare-fun m!5481075 () Bool)

(assert (=> d!1459557 m!5481075))

(declare-fun m!5481077 () Bool)

(assert (=> d!1459557 m!5481077))

(declare-fun m!5481079 () Bool)

(assert (=> b!4631290 m!5481079))

(declare-fun m!5481081 () Bool)

(assert (=> b!4631290 m!5481081))

(declare-fun m!5481083 () Bool)

(assert (=> b!4631290 m!5481083))

(assert (=> b!4631290 m!5481081))

(declare-fun m!5481085 () Bool)

(assert (=> b!4631290 m!5481085))

(assert (=> b!4631290 m!5481079))

(declare-fun m!5481087 () Bool)

(assert (=> b!4631290 m!5481087))

(assert (=> b!4631244 d!1459557))

(declare-fun d!1459573 () Bool)

(assert (=> d!1459573 (eq!845 (-!570 lt!1791597 key!4968) (-!570 lt!1791615 key!4968))))

(declare-fun lt!1791658 () Unit!113380)

(declare-fun choose!31516 (ListMap!4329 ListMap!4329 K!12975) Unit!113380)

(assert (=> d!1459573 (= lt!1791658 (choose!31516 lt!1791597 lt!1791615 key!4968))))

(assert (=> d!1459573 (eq!845 lt!1791597 lt!1791615)))

(assert (=> d!1459573 (= (lemmaRemovePreservesEq!26 lt!1791597 lt!1791615 key!4968) lt!1791658)))

(declare-fun bs!1027609 () Bool)

(assert (= bs!1027609 d!1459573))

(declare-fun m!5481111 () Bool)

(assert (=> bs!1027609 m!5481111))

(assert (=> bs!1027609 m!5480985))

(declare-fun m!5481113 () Bool)

(assert (=> bs!1027609 m!5481113))

(assert (=> bs!1027609 m!5480953))

(assert (=> bs!1027609 m!5480985))

(assert (=> bs!1027609 m!5480953))

(declare-fun m!5481115 () Bool)

(assert (=> bs!1027609 m!5481115))

(assert (=> b!4631244 d!1459573))

(declare-fun d!1459579 () Bool)

(assert (=> d!1459579 true))

(assert (=> d!1459579 true))

(declare-fun lambda!193698 () Int)

(declare-fun forall!10867 (List!51728 Int) Bool)

(assert (=> d!1459579 (= (allKeysSameHash!1384 newBucket!224 hash!414 hashF!1389) (forall!10867 newBucket!224 lambda!193698))))

(declare-fun bs!1027610 () Bool)

(assert (= bs!1027610 d!1459579))

(declare-fun m!5481117 () Bool)

(assert (=> bs!1027610 m!5481117))

(assert (=> b!4631254 d!1459579))

(declare-fun d!1459581 () Bool)

(declare-fun res!1943148 () Bool)

(declare-fun e!2889063 () Bool)

(assert (=> d!1459581 (=> res!1943148 e!2889063)))

(assert (=> d!1459581 (= res!1943148 (not ((_ is Cons!51604) oldBucket!40)))))

(assert (=> d!1459581 (= (noDuplicateKeys!1530 oldBucket!40) e!2889063)))

(declare-fun b!4631306 () Bool)

(declare-fun e!2889064 () Bool)

(assert (=> b!4631306 (= e!2889063 e!2889064)))

(declare-fun res!1943149 () Bool)

(assert (=> b!4631306 (=> (not res!1943149) (not e!2889064))))

(assert (=> b!4631306 (= res!1943149 (not (containsKey!2514 (t!358782 oldBucket!40) (_1!29577 (h!57676 oldBucket!40)))))))

(declare-fun b!4631307 () Bool)

(assert (=> b!4631307 (= e!2889064 (noDuplicateKeys!1530 (t!358782 oldBucket!40)))))

(assert (= (and d!1459581 (not res!1943148)) b!4631306))

(assert (= (and b!4631306 res!1943149) b!4631307))

(declare-fun m!5481155 () Bool)

(assert (=> b!4631306 m!5481155))

(declare-fun m!5481157 () Bool)

(assert (=> b!4631307 m!5481157))

(assert (=> start!464828 d!1459581))

(declare-fun d!1459593 () Bool)

(assert (=> d!1459593 (= (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791612 lt!1791591) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791612)) (= (content!8863 (toList!5025 (addToMapMapFromBucket!991 (Cons!51604 lt!1791612 lt!1791591) (ListMap!4330 Nil!51604)))) (content!8863 (toList!5025 (+!1896 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791612)))))))

(declare-fun bs!1027613 () Bool)

(assert (= bs!1027613 d!1459593))

(declare-fun m!5481163 () Bool)

(assert (=> bs!1027613 m!5481163))

(declare-fun m!5481165 () Bool)

(assert (=> bs!1027613 m!5481165))

(assert (=> b!4631243 d!1459593))

(declare-fun bs!1027614 () Bool)

(declare-fun d!1459595 () Bool)

(assert (= bs!1027614 (and d!1459595 b!4631252)))

(declare-fun lambda!193701 () Int)

(assert (=> bs!1027614 (= lambda!193701 lambda!193692)))

(declare-fun lt!1791690 () ListMap!4329)

(declare-fun invariantList!1226 (List!51728) Bool)

(assert (=> d!1459595 (invariantList!1226 (toList!5025 lt!1791690))))

(declare-fun e!2889087 () ListMap!4329)

(assert (=> d!1459595 (= lt!1791690 e!2889087)))

(declare-fun c!792732 () Bool)

(assert (=> d!1459595 (= c!792732 ((_ is Cons!51605) lt!1791613))))

(declare-fun forall!10868 (List!51729 Int) Bool)

(assert (=> d!1459595 (forall!10868 lt!1791613 lambda!193701)))

(assert (=> d!1459595 (= (extractMap!1586 lt!1791613) lt!1791690)))

(declare-fun b!4631341 () Bool)

(assert (=> b!4631341 (= e!2889087 (addToMapMapFromBucket!991 (_2!29578 (h!57677 lt!1791613)) (extractMap!1586 (t!358783 lt!1791613))))))

(declare-fun b!4631342 () Bool)

(assert (=> b!4631342 (= e!2889087 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459595 c!792732) b!4631341))

(assert (= (and d!1459595 (not c!792732)) b!4631342))

(declare-fun m!5481185 () Bool)

(assert (=> d!1459595 m!5481185))

(declare-fun m!5481187 () Bool)

(assert (=> d!1459595 m!5481187))

(declare-fun m!5481189 () Bool)

(assert (=> b!4631341 m!5481189))

(assert (=> b!4631341 m!5481189))

(declare-fun m!5481191 () Bool)

(assert (=> b!4631341 m!5481191))

(assert (=> b!4631243 d!1459595))

(declare-fun d!1459599 () Bool)

(assert (=> d!1459599 (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791608 lt!1791598) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791608))))

(declare-fun lt!1791705 () Unit!113380)

(declare-fun choose!31517 (tuple2!52566 List!51728 ListMap!4329) Unit!113380)

(assert (=> d!1459599 (= lt!1791705 (choose!31517 lt!1791608 lt!1791598 (ListMap!4330 Nil!51604)))))

(assert (=> d!1459599 (noDuplicateKeys!1530 lt!1791598)))

(assert (=> d!1459599 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!96 lt!1791608 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791705)))

(declare-fun bs!1027618 () Bool)

(assert (= bs!1027618 d!1459599))

(assert (=> bs!1027618 m!5480909))

(assert (=> bs!1027618 m!5480911))

(assert (=> bs!1027618 m!5480909))

(assert (=> bs!1027618 m!5480913))

(assert (=> bs!1027618 m!5480911))

(assert (=> bs!1027618 m!5480933))

(assert (=> bs!1027618 m!5480913))

(declare-fun m!5481215 () Bool)

(assert (=> bs!1027618 m!5481215))

(declare-fun m!5481217 () Bool)

(assert (=> bs!1027618 m!5481217))

(assert (=> b!4631243 d!1459599))

(declare-fun d!1459611 () Bool)

(assert (=> d!1459611 (= (head!9664 oldBucket!40) (h!57676 oldBucket!40))))

(assert (=> b!4631243 d!1459611))

(declare-fun d!1459613 () Bool)

(assert (=> d!1459613 (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791612 lt!1791591) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791612))))

(declare-fun lt!1791706 () Unit!113380)

(assert (=> d!1459613 (= lt!1791706 (choose!31517 lt!1791612 lt!1791591 (ListMap!4330 Nil!51604)))))

(assert (=> d!1459613 (noDuplicateKeys!1530 lt!1791591)))

(assert (=> d!1459613 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!96 lt!1791612 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791706)))

(declare-fun bs!1027619 () Bool)

(assert (= bs!1027619 d!1459613))

(assert (=> bs!1027619 m!5480905))

(assert (=> bs!1027619 m!5480907))

(assert (=> bs!1027619 m!5480905))

(assert (=> bs!1027619 m!5480927))

(assert (=> bs!1027619 m!5480907))

(assert (=> bs!1027619 m!5480937))

(assert (=> bs!1027619 m!5480927))

(declare-fun m!5481219 () Bool)

(assert (=> bs!1027619 m!5481219))

(declare-fun m!5481221 () Bool)

(assert (=> bs!1027619 m!5481221))

(assert (=> b!4631243 d!1459613))

(declare-fun bs!1027620 () Bool)

(declare-fun d!1459615 () Bool)

(assert (= bs!1027620 (and d!1459615 b!4631252)))

(declare-fun lambda!193713 () Int)

(assert (=> bs!1027620 (= lambda!193713 lambda!193692)))

(declare-fun bs!1027621 () Bool)

(assert (= bs!1027621 (and d!1459615 d!1459595)))

(assert (=> bs!1027621 (= lambda!193713 lambda!193701)))

(assert (=> d!1459615 (contains!14693 (extractMap!1586 (toList!5026 (ListLongMap!3616 lt!1791613))) key!4968)))

(declare-fun lt!1791725 () Unit!113380)

(declare-fun choose!31518 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> d!1459615 (= lt!1791725 (choose!31518 (ListLongMap!3616 lt!1791613) key!4968 hashF!1389))))

(assert (=> d!1459615 (forall!10868 (toList!5026 (ListLongMap!3616 lt!1791613)) lambda!193713)))

(assert (=> d!1459615 (= (lemmaListContainsThenExtractedMapContains!348 (ListLongMap!3616 lt!1791613) key!4968 hashF!1389) lt!1791725)))

(declare-fun bs!1027622 () Bool)

(assert (= bs!1027622 d!1459615))

(declare-fun m!5481223 () Bool)

(assert (=> bs!1027622 m!5481223))

(assert (=> bs!1027622 m!5481223))

(declare-fun m!5481225 () Bool)

(assert (=> bs!1027622 m!5481225))

(declare-fun m!5481227 () Bool)

(assert (=> bs!1027622 m!5481227))

(declare-fun m!5481229 () Bool)

(assert (=> bs!1027622 m!5481229))

(assert (=> b!4631243 d!1459615))

(declare-fun b!4631447 () Bool)

(declare-fun e!2889162 () List!51731)

(assert (=> b!4631447 (= e!2889162 (keys!18200 lt!1791594))))

(declare-fun bm!323153 () Bool)

(declare-fun call!323158 () Bool)

(declare-fun contains!14698 (List!51731 K!12975) Bool)

(assert (=> bm!323153 (= call!323158 (contains!14698 e!2889162 key!4968))))

(declare-fun c!792758 () Bool)

(declare-fun c!792757 () Bool)

(assert (=> bm!323153 (= c!792758 c!792757)))

(declare-fun b!4631448 () Bool)

(declare-fun getKeysList!677 (List!51728) List!51731)

(assert (=> b!4631448 (= e!2889162 (getKeysList!677 (toList!5025 lt!1791594)))))

(declare-fun b!4631449 () Bool)

(declare-fun e!2889159 () Unit!113380)

(declare-fun Unit!113407 () Unit!113380)

(assert (=> b!4631449 (= e!2889159 Unit!113407)))

(declare-fun b!4631450 () Bool)

(declare-fun e!2889160 () Bool)

(assert (=> b!4631450 (= e!2889160 (not (contains!14698 (keys!18200 lt!1791594) key!4968)))))

(declare-fun b!4631451 () Bool)

(declare-fun e!2889157 () Unit!113380)

(declare-fun lt!1791794 () Unit!113380)

(assert (=> b!4631451 (= e!2889157 lt!1791794)))

(declare-fun lt!1791793 () Unit!113380)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1397 (List!51728 K!12975) Unit!113380)

(assert (=> b!4631451 (= lt!1791793 (lemmaContainsKeyImpliesGetValueByKeyDefined!1397 (toList!5025 lt!1791594) key!4968))))

(declare-datatypes ((Option!11659 0))(
  ( (None!11658) (Some!11658 (v!45832 V!13221)) )
))
(declare-fun isDefined!8924 (Option!11659) Bool)

(declare-fun getValueByKey!1495 (List!51728 K!12975) Option!11659)

(assert (=> b!4631451 (isDefined!8924 (getValueByKey!1495 (toList!5025 lt!1791594) key!4968))))

(declare-fun lt!1791790 () Unit!113380)

(assert (=> b!4631451 (= lt!1791790 lt!1791793)))

(declare-fun lemmaInListThenGetKeysListContains!672 (List!51728 K!12975) Unit!113380)

(assert (=> b!4631451 (= lt!1791794 (lemmaInListThenGetKeysListContains!672 (toList!5025 lt!1791594) key!4968))))

(assert (=> b!4631451 call!323158))

(declare-fun b!4631452 () Bool)

(declare-fun e!2889158 () Bool)

(declare-fun e!2889161 () Bool)

(assert (=> b!4631452 (= e!2889158 e!2889161)))

(declare-fun res!1943220 () Bool)

(assert (=> b!4631452 (=> (not res!1943220) (not e!2889161))))

(assert (=> b!4631452 (= res!1943220 (isDefined!8924 (getValueByKey!1495 (toList!5025 lt!1791594) key!4968)))))

(declare-fun b!4631453 () Bool)

(assert (=> b!4631453 (= e!2889161 (contains!14698 (keys!18200 lt!1791594) key!4968))))

(declare-fun d!1459617 () Bool)

(assert (=> d!1459617 e!2889158))

(declare-fun res!1943219 () Bool)

(assert (=> d!1459617 (=> res!1943219 e!2889158)))

(assert (=> d!1459617 (= res!1943219 e!2889160)))

(declare-fun res!1943218 () Bool)

(assert (=> d!1459617 (=> (not res!1943218) (not e!2889160))))

(declare-fun lt!1791789 () Bool)

(assert (=> d!1459617 (= res!1943218 (not lt!1791789))))

(declare-fun lt!1791792 () Bool)

(assert (=> d!1459617 (= lt!1791789 lt!1791792)))

(declare-fun lt!1791795 () Unit!113380)

(assert (=> d!1459617 (= lt!1791795 e!2889157)))

(assert (=> d!1459617 (= c!792757 lt!1791792)))

(declare-fun containsKey!2517 (List!51728 K!12975) Bool)

(assert (=> d!1459617 (= lt!1791792 (containsKey!2517 (toList!5025 lt!1791594) key!4968))))

(assert (=> d!1459617 (= (contains!14693 lt!1791594 key!4968) lt!1791789)))

(declare-fun b!4631454 () Bool)

(assert (=> b!4631454 false))

(declare-fun lt!1791791 () Unit!113380)

(declare-fun lt!1791788 () Unit!113380)

(assert (=> b!4631454 (= lt!1791791 lt!1791788)))

(assert (=> b!4631454 (containsKey!2517 (toList!5025 lt!1791594) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!676 (List!51728 K!12975) Unit!113380)

(assert (=> b!4631454 (= lt!1791788 (lemmaInGetKeysListThenContainsKey!676 (toList!5025 lt!1791594) key!4968))))

(declare-fun Unit!113410 () Unit!113380)

(assert (=> b!4631454 (= e!2889159 Unit!113410)))

(declare-fun b!4631455 () Bool)

(assert (=> b!4631455 (= e!2889157 e!2889159)))

(declare-fun c!792756 () Bool)

(assert (=> b!4631455 (= c!792756 call!323158)))

(assert (= (and d!1459617 c!792757) b!4631451))

(assert (= (and d!1459617 (not c!792757)) b!4631455))

(assert (= (and b!4631455 c!792756) b!4631454))

(assert (= (and b!4631455 (not c!792756)) b!4631449))

(assert (= (or b!4631451 b!4631455) bm!323153))

(assert (= (and bm!323153 c!792758) b!4631448))

(assert (= (and bm!323153 (not c!792758)) b!4631447))

(assert (= (and d!1459617 res!1943218) b!4631450))

(assert (= (and d!1459617 (not res!1943219)) b!4631452))

(assert (= (and b!4631452 res!1943220) b!4631453))

(declare-fun m!5481339 () Bool)

(assert (=> b!4631451 m!5481339))

(declare-fun m!5481341 () Bool)

(assert (=> b!4631451 m!5481341))

(assert (=> b!4631451 m!5481341))

(declare-fun m!5481343 () Bool)

(assert (=> b!4631451 m!5481343))

(declare-fun m!5481345 () Bool)

(assert (=> b!4631451 m!5481345))

(declare-fun m!5481347 () Bool)

(assert (=> b!4631453 m!5481347))

(assert (=> b!4631453 m!5481347))

(declare-fun m!5481349 () Bool)

(assert (=> b!4631453 m!5481349))

(declare-fun m!5481351 () Bool)

(assert (=> d!1459617 m!5481351))

(assert (=> b!4631452 m!5481341))

(assert (=> b!4631452 m!5481341))

(assert (=> b!4631452 m!5481343))

(assert (=> b!4631447 m!5481347))

(declare-fun m!5481353 () Bool)

(assert (=> bm!323153 m!5481353))

(assert (=> b!4631450 m!5481347))

(assert (=> b!4631450 m!5481347))

(assert (=> b!4631450 m!5481349))

(declare-fun m!5481355 () Bool)

(assert (=> b!4631448 m!5481355))

(assert (=> b!4631454 m!5481351))

(declare-fun m!5481357 () Bool)

(assert (=> b!4631454 m!5481357))

(assert (=> b!4631243 d!1459617))

(declare-fun d!1459647 () Bool)

(assert (=> d!1459647 (= (eq!845 lt!1791615 (+!1896 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)) (h!57676 oldBucket!40))) (= (content!8863 (toList!5025 lt!1791615)) (content!8863 (toList!5025 (+!1896 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)) (h!57676 oldBucket!40))))))))

(declare-fun bs!1027631 () Bool)

(assert (= bs!1027631 d!1459647))

(declare-fun m!5481359 () Bool)

(assert (=> bs!1027631 m!5481359))

(declare-fun m!5481361 () Bool)

(assert (=> bs!1027631 m!5481361))

(assert (=> b!4631243 d!1459647))

(declare-fun d!1459649 () Bool)

(declare-fun e!2889166 () Bool)

(assert (=> d!1459649 e!2889166))

(declare-fun res!1943225 () Bool)

(assert (=> d!1459649 (=> (not res!1943225) (not e!2889166))))

(declare-fun lt!1791811 () ListMap!4329)

(assert (=> d!1459649 (= res!1943225 (contains!14693 lt!1791811 (_1!29577 lt!1791612)))))

(declare-fun lt!1791809 () List!51728)

(assert (=> d!1459649 (= lt!1791811 (ListMap!4330 lt!1791809))))

(declare-fun lt!1791810 () Unit!113380)

(declare-fun lt!1791808 () Unit!113380)

(assert (=> d!1459649 (= lt!1791810 lt!1791808)))

(assert (=> d!1459649 (= (getValueByKey!1495 lt!1791809 (_1!29577 lt!1791612)) (Some!11658 (_2!29577 lt!1791612)))))

(declare-fun lemmaContainsTupThenGetReturnValue!870 (List!51728 K!12975 V!13221) Unit!113380)

(assert (=> d!1459649 (= lt!1791808 (lemmaContainsTupThenGetReturnValue!870 lt!1791809 (_1!29577 lt!1791612) (_2!29577 lt!1791612)))))

(declare-fun insertNoDuplicatedKeys!378 (List!51728 K!12975 V!13221) List!51728)

(assert (=> d!1459649 (= lt!1791809 (insertNoDuplicatedKeys!378 (toList!5025 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604))) (_1!29577 lt!1791612) (_2!29577 lt!1791612)))))

(assert (=> d!1459649 (= (+!1896 (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1791612) lt!1791811)))

(declare-fun b!4631462 () Bool)

(declare-fun res!1943226 () Bool)

(assert (=> b!4631462 (=> (not res!1943226) (not e!2889166))))

(assert (=> b!4631462 (= res!1943226 (= (getValueByKey!1495 (toList!5025 lt!1791811) (_1!29577 lt!1791612)) (Some!11658 (_2!29577 lt!1791612))))))

(declare-fun b!4631463 () Bool)

(declare-fun contains!14699 (List!51728 tuple2!52566) Bool)

(assert (=> b!4631463 (= e!2889166 (contains!14699 (toList!5025 lt!1791811) lt!1791612))))

(assert (= (and d!1459649 res!1943225) b!4631462))

(assert (= (and b!4631462 res!1943226) b!4631463))

(declare-fun m!5481375 () Bool)

(assert (=> d!1459649 m!5481375))

(declare-fun m!5481377 () Bool)

(assert (=> d!1459649 m!5481377))

(declare-fun m!5481379 () Bool)

(assert (=> d!1459649 m!5481379))

(declare-fun m!5481381 () Bool)

(assert (=> d!1459649 m!5481381))

(declare-fun m!5481383 () Bool)

(assert (=> b!4631462 m!5481383))

(declare-fun m!5481385 () Bool)

(assert (=> b!4631463 m!5481385))

(assert (=> b!4631243 d!1459649))

(declare-fun bs!1027645 () Bool)

(declare-fun b!4631494 () Bool)

(assert (= bs!1027645 (and b!4631494 d!1459579)))

(declare-fun lambda!193779 () Int)

(assert (=> bs!1027645 (not (= lambda!193779 lambda!193698))))

(assert (=> b!4631494 true))

(declare-fun bs!1027646 () Bool)

(declare-fun b!4631492 () Bool)

(assert (= bs!1027646 (and b!4631492 d!1459579)))

(declare-fun lambda!193780 () Int)

(assert (=> bs!1027646 (not (= lambda!193780 lambda!193698))))

(declare-fun bs!1027647 () Bool)

(assert (= bs!1027647 (and b!4631492 b!4631494)))

(assert (=> bs!1027647 (= lambda!193780 lambda!193779)))

(assert (=> b!4631492 true))

(declare-fun lambda!193782 () Int)

(assert (=> bs!1027646 (not (= lambda!193782 lambda!193698))))

(declare-fun lt!1791921 () ListMap!4329)

(assert (=> bs!1027647 (= (= lt!1791921 (ListMap!4330 Nil!51604)) (= lambda!193782 lambda!193779))))

(assert (=> b!4631492 (= (= lt!1791921 (ListMap!4330 Nil!51604)) (= lambda!193782 lambda!193780))))

(assert (=> b!4631492 true))

(declare-fun bs!1027657 () Bool)

(declare-fun d!1459655 () Bool)

(assert (= bs!1027657 (and d!1459655 d!1459579)))

(declare-fun lambda!193785 () Int)

(assert (=> bs!1027657 (not (= lambda!193785 lambda!193698))))

(declare-fun bs!1027658 () Bool)

(assert (= bs!1027658 (and d!1459655 b!4631494)))

(declare-fun lt!1791918 () ListMap!4329)

(assert (=> bs!1027658 (= (= lt!1791918 (ListMap!4330 Nil!51604)) (= lambda!193785 lambda!193779))))

(declare-fun bs!1027659 () Bool)

(assert (= bs!1027659 (and d!1459655 b!4631492)))

(assert (=> bs!1027659 (= (= lt!1791918 (ListMap!4330 Nil!51604)) (= lambda!193785 lambda!193780))))

(assert (=> bs!1027659 (= (= lt!1791918 lt!1791921) (= lambda!193785 lambda!193782))))

(assert (=> d!1459655 true))

(declare-fun c!792765 () Bool)

(declare-fun call!323174 () Bool)

(declare-fun lt!1791922 () ListMap!4329)

(declare-fun bm!323169 () Bool)

(assert (=> bm!323169 (= call!323174 (forall!10867 (ite c!792765 (toList!5025 (ListMap!4330 Nil!51604)) (toList!5025 lt!1791922)) (ite c!792765 lambda!193779 lambda!193782)))))

(declare-fun b!4631491 () Bool)

(declare-fun res!1943242 () Bool)

(declare-fun e!2889183 () Bool)

(assert (=> b!4631491 (=> (not res!1943242) (not e!2889183))))

(assert (=> b!4631491 (= res!1943242 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193785))))

(assert (=> d!1459655 e!2889183))

(declare-fun res!1943244 () Bool)

(assert (=> d!1459655 (=> (not res!1943244) (not e!2889183))))

(assert (=> d!1459655 (= res!1943244 (forall!10867 (Cons!51604 lt!1791608 lt!1791598) lambda!193785))))

(declare-fun e!2889182 () ListMap!4329)

(assert (=> d!1459655 (= lt!1791918 e!2889182)))

(assert (=> d!1459655 (= c!792765 ((_ is Nil!51604) (Cons!51604 lt!1791608 lt!1791598)))))

(assert (=> d!1459655 (noDuplicateKeys!1530 (Cons!51604 lt!1791608 lt!1791598))))

(assert (=> d!1459655 (= (addToMapMapFromBucket!991 (Cons!51604 lt!1791608 lt!1791598) (ListMap!4330 Nil!51604)) lt!1791918)))

(assert (=> b!4631492 (= e!2889182 lt!1791921)))

(assert (=> b!4631492 (= lt!1791922 (+!1896 (ListMap!4330 Nil!51604) (h!57676 (Cons!51604 lt!1791608 lt!1791598))))))

(assert (=> b!4631492 (= lt!1791921 (addToMapMapFromBucket!991 (t!358782 (Cons!51604 lt!1791608 lt!1791598)) (+!1896 (ListMap!4330 Nil!51604) (h!57676 (Cons!51604 lt!1791608 lt!1791598)))))))

(declare-fun lt!1791924 () Unit!113380)

(declare-fun call!323175 () Unit!113380)

(assert (=> b!4631492 (= lt!1791924 call!323175)))

(assert (=> b!4631492 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193780)))

(declare-fun lt!1791931 () Unit!113380)

(assert (=> b!4631492 (= lt!1791931 lt!1791924)))

(assert (=> b!4631492 call!323174))

(declare-fun lt!1791920 () Unit!113380)

(declare-fun Unit!113411 () Unit!113380)

(assert (=> b!4631492 (= lt!1791920 Unit!113411)))

(assert (=> b!4631492 (forall!10867 (t!358782 (Cons!51604 lt!1791608 lt!1791598)) lambda!193782)))

(declare-fun lt!1791926 () Unit!113380)

(declare-fun Unit!113412 () Unit!113380)

(assert (=> b!4631492 (= lt!1791926 Unit!113412)))

(declare-fun lt!1791917 () Unit!113380)

(declare-fun Unit!113413 () Unit!113380)

(assert (=> b!4631492 (= lt!1791917 Unit!113413)))

(declare-fun lt!1791936 () Unit!113380)

(declare-fun forallContained!3098 (List!51728 Int tuple2!52566) Unit!113380)

(assert (=> b!4631492 (= lt!1791936 (forallContained!3098 (toList!5025 lt!1791922) lambda!193782 (h!57676 (Cons!51604 lt!1791608 lt!1791598))))))

(assert (=> b!4631492 (contains!14693 lt!1791922 (_1!29577 (h!57676 (Cons!51604 lt!1791608 lt!1791598))))))

(declare-fun lt!1791933 () Unit!113380)

(declare-fun Unit!113414 () Unit!113380)

(assert (=> b!4631492 (= lt!1791933 Unit!113414)))

(assert (=> b!4631492 (contains!14693 lt!1791921 (_1!29577 (h!57676 (Cons!51604 lt!1791608 lt!1791598))))))

(declare-fun lt!1791923 () Unit!113380)

(declare-fun Unit!113415 () Unit!113380)

(assert (=> b!4631492 (= lt!1791923 Unit!113415)))

(assert (=> b!4631492 (forall!10867 (Cons!51604 lt!1791608 lt!1791598) lambda!193782)))

(declare-fun lt!1791930 () Unit!113380)

(declare-fun Unit!113416 () Unit!113380)

(assert (=> b!4631492 (= lt!1791930 Unit!113416)))

(assert (=> b!4631492 (forall!10867 (toList!5025 lt!1791922) lambda!193782)))

(declare-fun lt!1791929 () Unit!113380)

(declare-fun Unit!113417 () Unit!113380)

(assert (=> b!4631492 (= lt!1791929 Unit!113417)))

(declare-fun lt!1791925 () Unit!113380)

(declare-fun Unit!113418 () Unit!113380)

(assert (=> b!4631492 (= lt!1791925 Unit!113418)))

(declare-fun lt!1791932 () Unit!113380)

(declare-fun addForallContainsKeyThenBeforeAdding!527 (ListMap!4329 ListMap!4329 K!12975 V!13221) Unit!113380)

(assert (=> b!4631492 (= lt!1791932 (addForallContainsKeyThenBeforeAdding!527 (ListMap!4330 Nil!51604) lt!1791921 (_1!29577 (h!57676 (Cons!51604 lt!1791608 lt!1791598))) (_2!29577 (h!57676 (Cons!51604 lt!1791608 lt!1791598)))))))

(assert (=> b!4631492 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193782)))

(declare-fun lt!1791934 () Unit!113380)

(assert (=> b!4631492 (= lt!1791934 lt!1791932)))

(assert (=> b!4631492 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193782)))

(declare-fun lt!1791928 () Unit!113380)

(declare-fun Unit!113419 () Unit!113380)

(assert (=> b!4631492 (= lt!1791928 Unit!113419)))

(declare-fun res!1943243 () Bool)

(declare-fun call!323176 () Bool)

(assert (=> b!4631492 (= res!1943243 call!323176)))

(declare-fun e!2889184 () Bool)

(assert (=> b!4631492 (=> (not res!1943243) (not e!2889184))))

(assert (=> b!4631492 e!2889184))

(declare-fun lt!1791935 () Unit!113380)

(declare-fun Unit!113420 () Unit!113380)

(assert (=> b!4631492 (= lt!1791935 Unit!113420)))

(declare-fun b!4631493 () Bool)

(assert (=> b!4631493 (= e!2889184 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193782))))

(declare-fun bm!323170 () Bool)

(assert (=> bm!323170 (= call!323176 (forall!10867 (ite c!792765 (toList!5025 (ListMap!4330 Nil!51604)) (Cons!51604 lt!1791608 lt!1791598)) (ite c!792765 lambda!193779 lambda!193782)))))

(assert (=> b!4631494 (= e!2889182 (ListMap!4330 Nil!51604))))

(declare-fun lt!1791927 () Unit!113380)

(assert (=> b!4631494 (= lt!1791927 call!323175)))

(assert (=> b!4631494 call!323174))

(declare-fun lt!1791919 () Unit!113380)

(assert (=> b!4631494 (= lt!1791919 lt!1791927)))

(assert (=> b!4631494 call!323176))

(declare-fun lt!1791937 () Unit!113380)

(declare-fun Unit!113424 () Unit!113380)

(assert (=> b!4631494 (= lt!1791937 Unit!113424)))

(declare-fun bm!323171 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!528 (ListMap!4329) Unit!113380)

(assert (=> bm!323171 (= call!323175 (lemmaContainsAllItsOwnKeys!528 (ListMap!4330 Nil!51604)))))

(declare-fun b!4631495 () Bool)

(assert (=> b!4631495 (= e!2889183 (invariantList!1226 (toList!5025 lt!1791918)))))

(assert (= (and d!1459655 c!792765) b!4631494))

(assert (= (and d!1459655 (not c!792765)) b!4631492))

(assert (= (and b!4631492 res!1943243) b!4631493))

(assert (= (or b!4631494 b!4631492) bm!323171))

(assert (= (or b!4631494 b!4631492) bm!323170))

(assert (= (or b!4631494 b!4631492) bm!323169))

(assert (= (and d!1459655 res!1943244) b!4631491))

(assert (= (and b!4631491 res!1943242) b!4631495))

(declare-fun m!5481427 () Bool)

(assert (=> bm!323171 m!5481427))

(declare-fun m!5481429 () Bool)

(assert (=> bm!323170 m!5481429))

(declare-fun m!5481431 () Bool)

(assert (=> d!1459655 m!5481431))

(declare-fun m!5481433 () Bool)

(assert (=> d!1459655 m!5481433))

(declare-fun m!5481435 () Bool)

(assert (=> b!4631495 m!5481435))

(declare-fun m!5481437 () Bool)

(assert (=> bm!323169 m!5481437))

(declare-fun m!5481439 () Bool)

(assert (=> b!4631493 m!5481439))

(assert (=> b!4631492 m!5481439))

(declare-fun m!5481441 () Bool)

(assert (=> b!4631492 m!5481441))

(declare-fun m!5481443 () Bool)

(assert (=> b!4631492 m!5481443))

(declare-fun m!5481445 () Bool)

(assert (=> b!4631492 m!5481445))

(declare-fun m!5481447 () Bool)

(assert (=> b!4631492 m!5481447))

(declare-fun m!5481449 () Bool)

(assert (=> b!4631492 m!5481449))

(declare-fun m!5481451 () Bool)

(assert (=> b!4631492 m!5481451))

(declare-fun m!5481453 () Bool)

(assert (=> b!4631492 m!5481453))

(declare-fun m!5481455 () Bool)

(assert (=> b!4631492 m!5481455))

(declare-fun m!5481457 () Bool)

(assert (=> b!4631492 m!5481457))

(declare-fun m!5481459 () Bool)

(assert (=> b!4631492 m!5481459))

(assert (=> b!4631492 m!5481439))

(assert (=> b!4631492 m!5481455))

(declare-fun m!5481461 () Bool)

(assert (=> b!4631491 m!5481461))

(assert (=> b!4631243 d!1459655))

(declare-fun d!1459663 () Bool)

(assert (=> d!1459663 (= (head!9664 newBucket!224) (h!57676 newBucket!224))))

(assert (=> b!4631243 d!1459663))

(declare-fun d!1459665 () Bool)

(declare-fun e!2889188 () Bool)

(assert (=> d!1459665 e!2889188))

(declare-fun res!1943248 () Bool)

(assert (=> d!1459665 (=> (not res!1943248) (not e!2889188))))

(declare-fun lt!1791963 () ListMap!4329)

(assert (=> d!1459665 (= res!1943248 (contains!14693 lt!1791963 (_1!29577 (h!57676 oldBucket!40))))))

(declare-fun lt!1791961 () List!51728)

(assert (=> d!1459665 (= lt!1791963 (ListMap!4330 lt!1791961))))

(declare-fun lt!1791962 () Unit!113380)

(declare-fun lt!1791960 () Unit!113380)

(assert (=> d!1459665 (= lt!1791962 lt!1791960)))

(assert (=> d!1459665 (= (getValueByKey!1495 lt!1791961 (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459665 (= lt!1791960 (lemmaContainsTupThenGetReturnValue!870 lt!1791961 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459665 (= lt!1791961 (insertNoDuplicatedKeys!378 (toList!5025 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605))) (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459665 (= (+!1896 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)) (h!57676 oldBucket!40)) lt!1791963)))

(declare-fun b!4631503 () Bool)

(declare-fun res!1943249 () Bool)

(assert (=> b!4631503 (=> (not res!1943249) (not e!2889188))))

(assert (=> b!4631503 (= res!1943249 (= (getValueByKey!1495 (toList!5025 lt!1791963) (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40)))))))

(declare-fun b!4631504 () Bool)

(assert (=> b!4631504 (= e!2889188 (contains!14699 (toList!5025 lt!1791963) (h!57676 oldBucket!40)))))

(assert (= (and d!1459665 res!1943248) b!4631503))

(assert (= (and b!4631503 res!1943249) b!4631504))

(declare-fun m!5481469 () Bool)

(assert (=> d!1459665 m!5481469))

(declare-fun m!5481473 () Bool)

(assert (=> d!1459665 m!5481473))

(declare-fun m!5481477 () Bool)

(assert (=> d!1459665 m!5481477))

(declare-fun m!5481481 () Bool)

(assert (=> d!1459665 m!5481481))

(declare-fun m!5481485 () Bool)

(assert (=> b!4631503 m!5481485))

(declare-fun m!5481489 () Bool)

(assert (=> b!4631504 m!5481489))

(assert (=> b!4631243 d!1459665))

(declare-fun d!1459667 () Bool)

(declare-fun e!2889189 () Bool)

(assert (=> d!1459667 e!2889189))

(declare-fun res!1943250 () Bool)

(assert (=> d!1459667 (=> (not res!1943250) (not e!2889189))))

(declare-fun lt!1791967 () ListMap!4329)

(assert (=> d!1459667 (= res!1943250 (contains!14693 lt!1791967 (_1!29577 lt!1791608)))))

(declare-fun lt!1791965 () List!51728)

(assert (=> d!1459667 (= lt!1791967 (ListMap!4330 lt!1791965))))

(declare-fun lt!1791966 () Unit!113380)

(declare-fun lt!1791964 () Unit!113380)

(assert (=> d!1459667 (= lt!1791966 lt!1791964)))

(assert (=> d!1459667 (= (getValueByKey!1495 lt!1791965 (_1!29577 lt!1791608)) (Some!11658 (_2!29577 lt!1791608)))))

(assert (=> d!1459667 (= lt!1791964 (lemmaContainsTupThenGetReturnValue!870 lt!1791965 (_1!29577 lt!1791608) (_2!29577 lt!1791608)))))

(assert (=> d!1459667 (= lt!1791965 (insertNoDuplicatedKeys!378 (toList!5025 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604))) (_1!29577 lt!1791608) (_2!29577 lt!1791608)))))

(assert (=> d!1459667 (= (+!1896 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791608) lt!1791967)))

(declare-fun b!4631505 () Bool)

(declare-fun res!1943251 () Bool)

(assert (=> b!4631505 (=> (not res!1943251) (not e!2889189))))

(assert (=> b!4631505 (= res!1943251 (= (getValueByKey!1495 (toList!5025 lt!1791967) (_1!29577 lt!1791608)) (Some!11658 (_2!29577 lt!1791608))))))

(declare-fun b!4631506 () Bool)

(assert (=> b!4631506 (= e!2889189 (contains!14699 (toList!5025 lt!1791967) lt!1791608))))

(assert (= (and d!1459667 res!1943250) b!4631505))

(assert (= (and b!4631505 res!1943251) b!4631506))

(declare-fun m!5481509 () Bool)

(assert (=> d!1459667 m!5481509))

(declare-fun m!5481511 () Bool)

(assert (=> d!1459667 m!5481511))

(declare-fun m!5481513 () Bool)

(assert (=> d!1459667 m!5481513))

(declare-fun m!5481515 () Bool)

(assert (=> d!1459667 m!5481515))

(declare-fun m!5481517 () Bool)

(assert (=> b!4631505 m!5481517))

(declare-fun m!5481519 () Bool)

(assert (=> b!4631506 m!5481519))

(assert (=> b!4631243 d!1459667))

(declare-fun bs!1027670 () Bool)

(declare-fun b!4631512 () Bool)

(assert (= bs!1027670 (and b!4631512 d!1459655)))

(declare-fun lambda!193788 () Int)

(assert (=> bs!1027670 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193788 lambda!193785))))

(declare-fun bs!1027673 () Bool)

(assert (= bs!1027673 (and b!4631512 d!1459579)))

(assert (=> bs!1027673 (not (= lambda!193788 lambda!193698))))

(declare-fun bs!1027674 () Bool)

(assert (= bs!1027674 (and b!4631512 b!4631492)))

(assert (=> bs!1027674 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193788 lambda!193782))))

(declare-fun bs!1027675 () Bool)

(assert (= bs!1027675 (and b!4631512 b!4631494)))

(assert (=> bs!1027675 (= lambda!193788 lambda!193779)))

(assert (=> bs!1027674 (= lambda!193788 lambda!193780)))

(assert (=> b!4631512 true))

(declare-fun bs!1027676 () Bool)

(declare-fun b!4631510 () Bool)

(assert (= bs!1027676 (and b!4631510 d!1459655)))

(declare-fun lambda!193789 () Int)

(assert (=> bs!1027676 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193789 lambda!193785))))

(declare-fun bs!1027677 () Bool)

(assert (= bs!1027677 (and b!4631510 d!1459579)))

(assert (=> bs!1027677 (not (= lambda!193789 lambda!193698))))

(declare-fun bs!1027678 () Bool)

(assert (= bs!1027678 (and b!4631510 b!4631492)))

(assert (=> bs!1027678 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193789 lambda!193782))))

(declare-fun bs!1027679 () Bool)

(assert (= bs!1027679 (and b!4631510 b!4631512)))

(assert (=> bs!1027679 (= lambda!193789 lambda!193788)))

(declare-fun bs!1027680 () Bool)

(assert (= bs!1027680 (and b!4631510 b!4631494)))

(assert (=> bs!1027680 (= lambda!193789 lambda!193779)))

(assert (=> bs!1027678 (= lambda!193789 lambda!193780)))

(assert (=> b!4631510 true))

(declare-fun lt!1791973 () ListMap!4329)

(declare-fun lambda!193791 () Int)

(assert (=> bs!1027676 (= (= lt!1791973 lt!1791918) (= lambda!193791 lambda!193785))))

(assert (=> bs!1027677 (not (= lambda!193791 lambda!193698))))

(assert (=> b!4631510 (= (= lt!1791973 (ListMap!4330 Nil!51604)) (= lambda!193791 lambda!193789))))

(assert (=> bs!1027678 (= (= lt!1791973 lt!1791921) (= lambda!193791 lambda!193782))))

(assert (=> bs!1027679 (= (= lt!1791973 (ListMap!4330 Nil!51604)) (= lambda!193791 lambda!193788))))

(assert (=> bs!1027680 (= (= lt!1791973 (ListMap!4330 Nil!51604)) (= lambda!193791 lambda!193779))))

(assert (=> bs!1027678 (= (= lt!1791973 (ListMap!4330 Nil!51604)) (= lambda!193791 lambda!193780))))

(assert (=> b!4631510 true))

(declare-fun bs!1027694 () Bool)

(declare-fun d!1459671 () Bool)

(assert (= bs!1027694 (and d!1459671 b!4631510)))

(declare-fun lt!1791970 () ListMap!4329)

(declare-fun lambda!193793 () Int)

(assert (=> bs!1027694 (= (= lt!1791970 lt!1791973) (= lambda!193793 lambda!193791))))

(declare-fun bs!1027697 () Bool)

(assert (= bs!1027697 (and d!1459671 d!1459655)))

(assert (=> bs!1027697 (= (= lt!1791970 lt!1791918) (= lambda!193793 lambda!193785))))

(declare-fun bs!1027698 () Bool)

(assert (= bs!1027698 (and d!1459671 d!1459579)))

(assert (=> bs!1027698 (not (= lambda!193793 lambda!193698))))

(assert (=> bs!1027694 (= (= lt!1791970 (ListMap!4330 Nil!51604)) (= lambda!193793 lambda!193789))))

(declare-fun bs!1027699 () Bool)

(assert (= bs!1027699 (and d!1459671 b!4631492)))

(assert (=> bs!1027699 (= (= lt!1791970 lt!1791921) (= lambda!193793 lambda!193782))))

(declare-fun bs!1027700 () Bool)

(assert (= bs!1027700 (and d!1459671 b!4631512)))

(assert (=> bs!1027700 (= (= lt!1791970 (ListMap!4330 Nil!51604)) (= lambda!193793 lambda!193788))))

(declare-fun bs!1027701 () Bool)

(assert (= bs!1027701 (and d!1459671 b!4631494)))

(assert (=> bs!1027701 (= (= lt!1791970 (ListMap!4330 Nil!51604)) (= lambda!193793 lambda!193779))))

(assert (=> bs!1027699 (= (= lt!1791970 (ListMap!4330 Nil!51604)) (= lambda!193793 lambda!193780))))

(assert (=> d!1459671 true))

(declare-fun bm!323175 () Bool)

(declare-fun lt!1791974 () ListMap!4329)

(declare-fun c!792768 () Bool)

(declare-fun call!323180 () Bool)

(assert (=> bm!323175 (= call!323180 (forall!10867 (ite c!792768 (toList!5025 (ListMap!4330 Nil!51604)) (toList!5025 lt!1791974)) (ite c!792768 lambda!193788 lambda!193791)))))

(declare-fun b!4631509 () Bool)

(declare-fun res!1943252 () Bool)

(declare-fun e!2889192 () Bool)

(assert (=> b!4631509 (=> (not res!1943252) (not e!2889192))))

(assert (=> b!4631509 (= res!1943252 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193793))))

(assert (=> d!1459671 e!2889192))

(declare-fun res!1943254 () Bool)

(assert (=> d!1459671 (=> (not res!1943254) (not e!2889192))))

(assert (=> d!1459671 (= res!1943254 (forall!10867 (Cons!51604 lt!1791612 lt!1791591) lambda!193793))))

(declare-fun e!2889191 () ListMap!4329)

(assert (=> d!1459671 (= lt!1791970 e!2889191)))

(assert (=> d!1459671 (= c!792768 ((_ is Nil!51604) (Cons!51604 lt!1791612 lt!1791591)))))

(assert (=> d!1459671 (noDuplicateKeys!1530 (Cons!51604 lt!1791612 lt!1791591))))

(assert (=> d!1459671 (= (addToMapMapFromBucket!991 (Cons!51604 lt!1791612 lt!1791591) (ListMap!4330 Nil!51604)) lt!1791970)))

(assert (=> b!4631510 (= e!2889191 lt!1791973)))

(assert (=> b!4631510 (= lt!1791974 (+!1896 (ListMap!4330 Nil!51604) (h!57676 (Cons!51604 lt!1791612 lt!1791591))))))

(assert (=> b!4631510 (= lt!1791973 (addToMapMapFromBucket!991 (t!358782 (Cons!51604 lt!1791612 lt!1791591)) (+!1896 (ListMap!4330 Nil!51604) (h!57676 (Cons!51604 lt!1791612 lt!1791591)))))))

(declare-fun lt!1791976 () Unit!113380)

(declare-fun call!323181 () Unit!113380)

(assert (=> b!4631510 (= lt!1791976 call!323181)))

(assert (=> b!4631510 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193789)))

(declare-fun lt!1791983 () Unit!113380)

(assert (=> b!4631510 (= lt!1791983 lt!1791976)))

(assert (=> b!4631510 call!323180))

(declare-fun lt!1791972 () Unit!113380)

(declare-fun Unit!113433 () Unit!113380)

(assert (=> b!4631510 (= lt!1791972 Unit!113433)))

(assert (=> b!4631510 (forall!10867 (t!358782 (Cons!51604 lt!1791612 lt!1791591)) lambda!193791)))

(declare-fun lt!1791978 () Unit!113380)

(declare-fun Unit!113434 () Unit!113380)

(assert (=> b!4631510 (= lt!1791978 Unit!113434)))

(declare-fun lt!1791969 () Unit!113380)

(declare-fun Unit!113435 () Unit!113380)

(assert (=> b!4631510 (= lt!1791969 Unit!113435)))

(declare-fun lt!1791988 () Unit!113380)

(assert (=> b!4631510 (= lt!1791988 (forallContained!3098 (toList!5025 lt!1791974) lambda!193791 (h!57676 (Cons!51604 lt!1791612 lt!1791591))))))

(assert (=> b!4631510 (contains!14693 lt!1791974 (_1!29577 (h!57676 (Cons!51604 lt!1791612 lt!1791591))))))

(declare-fun lt!1791985 () Unit!113380)

(declare-fun Unit!113436 () Unit!113380)

(assert (=> b!4631510 (= lt!1791985 Unit!113436)))

(assert (=> b!4631510 (contains!14693 lt!1791973 (_1!29577 (h!57676 (Cons!51604 lt!1791612 lt!1791591))))))

(declare-fun lt!1791975 () Unit!113380)

(declare-fun Unit!113437 () Unit!113380)

(assert (=> b!4631510 (= lt!1791975 Unit!113437)))

(assert (=> b!4631510 (forall!10867 (Cons!51604 lt!1791612 lt!1791591) lambda!193791)))

(declare-fun lt!1791982 () Unit!113380)

(declare-fun Unit!113438 () Unit!113380)

(assert (=> b!4631510 (= lt!1791982 Unit!113438)))

(assert (=> b!4631510 (forall!10867 (toList!5025 lt!1791974) lambda!193791)))

(declare-fun lt!1791981 () Unit!113380)

(declare-fun Unit!113439 () Unit!113380)

(assert (=> b!4631510 (= lt!1791981 Unit!113439)))

(declare-fun lt!1791977 () Unit!113380)

(declare-fun Unit!113440 () Unit!113380)

(assert (=> b!4631510 (= lt!1791977 Unit!113440)))

(declare-fun lt!1791984 () Unit!113380)

(assert (=> b!4631510 (= lt!1791984 (addForallContainsKeyThenBeforeAdding!527 (ListMap!4330 Nil!51604) lt!1791973 (_1!29577 (h!57676 (Cons!51604 lt!1791612 lt!1791591))) (_2!29577 (h!57676 (Cons!51604 lt!1791612 lt!1791591)))))))

(assert (=> b!4631510 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193791)))

(declare-fun lt!1791986 () Unit!113380)

(assert (=> b!4631510 (= lt!1791986 lt!1791984)))

(assert (=> b!4631510 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193791)))

(declare-fun lt!1791980 () Unit!113380)

(declare-fun Unit!113441 () Unit!113380)

(assert (=> b!4631510 (= lt!1791980 Unit!113441)))

(declare-fun res!1943253 () Bool)

(declare-fun call!323182 () Bool)

(assert (=> b!4631510 (= res!1943253 call!323182)))

(declare-fun e!2889193 () Bool)

(assert (=> b!4631510 (=> (not res!1943253) (not e!2889193))))

(assert (=> b!4631510 e!2889193))

(declare-fun lt!1791987 () Unit!113380)

(declare-fun Unit!113442 () Unit!113380)

(assert (=> b!4631510 (= lt!1791987 Unit!113442)))

(declare-fun b!4631511 () Bool)

(assert (=> b!4631511 (= e!2889193 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193791))))

(declare-fun bm!323176 () Bool)

(assert (=> bm!323176 (= call!323182 (forall!10867 (ite c!792768 (toList!5025 (ListMap!4330 Nil!51604)) (Cons!51604 lt!1791612 lt!1791591)) (ite c!792768 lambda!193788 lambda!193791)))))

(assert (=> b!4631512 (= e!2889191 (ListMap!4330 Nil!51604))))

(declare-fun lt!1791979 () Unit!113380)

(assert (=> b!4631512 (= lt!1791979 call!323181)))

(assert (=> b!4631512 call!323180))

(declare-fun lt!1791971 () Unit!113380)

(assert (=> b!4631512 (= lt!1791971 lt!1791979)))

(assert (=> b!4631512 call!323182))

(declare-fun lt!1791989 () Unit!113380)

(declare-fun Unit!113443 () Unit!113380)

(assert (=> b!4631512 (= lt!1791989 Unit!113443)))

(declare-fun bm!323177 () Bool)

(assert (=> bm!323177 (= call!323181 (lemmaContainsAllItsOwnKeys!528 (ListMap!4330 Nil!51604)))))

(declare-fun b!4631513 () Bool)

(assert (=> b!4631513 (= e!2889192 (invariantList!1226 (toList!5025 lt!1791970)))))

(assert (= (and d!1459671 c!792768) b!4631512))

(assert (= (and d!1459671 (not c!792768)) b!4631510))

(assert (= (and b!4631510 res!1943253) b!4631511))

(assert (= (or b!4631512 b!4631510) bm!323177))

(assert (= (or b!4631512 b!4631510) bm!323176))

(assert (= (or b!4631512 b!4631510) bm!323175))

(assert (= (and d!1459671 res!1943254) b!4631509))

(assert (= (and b!4631509 res!1943252) b!4631513))

(assert (=> bm!323177 m!5481427))

(declare-fun m!5481533 () Bool)

(assert (=> bm!323176 m!5481533))

(declare-fun m!5481535 () Bool)

(assert (=> d!1459671 m!5481535))

(declare-fun m!5481537 () Bool)

(assert (=> d!1459671 m!5481537))

(declare-fun m!5481539 () Bool)

(assert (=> b!4631513 m!5481539))

(declare-fun m!5481541 () Bool)

(assert (=> bm!323175 m!5481541))

(declare-fun m!5481543 () Bool)

(assert (=> b!4631511 m!5481543))

(assert (=> b!4631510 m!5481543))

(declare-fun m!5481545 () Bool)

(assert (=> b!4631510 m!5481545))

(declare-fun m!5481547 () Bool)

(assert (=> b!4631510 m!5481547))

(declare-fun m!5481549 () Bool)

(assert (=> b!4631510 m!5481549))

(declare-fun m!5481551 () Bool)

(assert (=> b!4631510 m!5481551))

(declare-fun m!5481553 () Bool)

(assert (=> b!4631510 m!5481553))

(declare-fun m!5481555 () Bool)

(assert (=> b!4631510 m!5481555))

(declare-fun m!5481557 () Bool)

(assert (=> b!4631510 m!5481557))

(declare-fun m!5481559 () Bool)

(assert (=> b!4631510 m!5481559))

(declare-fun m!5481561 () Bool)

(assert (=> b!4631510 m!5481561))

(declare-fun m!5481563 () Bool)

(assert (=> b!4631510 m!5481563))

(assert (=> b!4631510 m!5481543))

(assert (=> b!4631510 m!5481559))

(declare-fun m!5481565 () Bool)

(assert (=> b!4631509 m!5481565))

(assert (=> b!4631243 d!1459671))

(declare-fun bs!1027711 () Bool)

(declare-fun d!1459677 () Bool)

(assert (= bs!1027711 (and d!1459677 b!4631252)))

(declare-fun lambda!193796 () Int)

(assert (=> bs!1027711 (= lambda!193796 lambda!193692)))

(declare-fun bs!1027712 () Bool)

(assert (= bs!1027712 (and d!1459677 d!1459595)))

(assert (=> bs!1027712 (= lambda!193796 lambda!193701)))

(declare-fun bs!1027713 () Bool)

(assert (= bs!1027713 (and d!1459677 d!1459615)))

(assert (=> bs!1027713 (= lambda!193796 lambda!193713)))

(declare-fun lt!1792011 () ListMap!4329)

(assert (=> d!1459677 (invariantList!1226 (toList!5025 lt!1792011))))

(declare-fun e!2889197 () ListMap!4329)

(assert (=> d!1459677 (= lt!1792011 e!2889197)))

(declare-fun c!792770 () Bool)

(assert (=> d!1459677 (= c!792770 ((_ is Cons!51605) (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)))))

(assert (=> d!1459677 (forall!10868 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605) lambda!193796)))

(assert (=> d!1459677 (= (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)) lt!1792011)))

(declare-fun b!4631519 () Bool)

(assert (=> b!4631519 (= e!2889197 (addToMapMapFromBucket!991 (_2!29578 (h!57677 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605))) (extractMap!1586 (t!358783 (Cons!51605 (tuple2!52569 hash!414 lt!1791591) Nil!51605)))))))

(declare-fun b!4631520 () Bool)

(assert (=> b!4631520 (= e!2889197 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459677 c!792770) b!4631519))

(assert (= (and d!1459677 (not c!792770)) b!4631520))

(declare-fun m!5481567 () Bool)

(assert (=> d!1459677 m!5481567))

(declare-fun m!5481569 () Bool)

(assert (=> d!1459677 m!5481569))

(declare-fun m!5481571 () Bool)

(assert (=> b!4631519 m!5481571))

(assert (=> b!4631519 m!5481571))

(declare-fun m!5481573 () Bool)

(assert (=> b!4631519 m!5481573))

(assert (=> b!4631243 d!1459677))

(declare-fun d!1459679 () Bool)

(assert (=> d!1459679 (= (eq!845 (addToMapMapFromBucket!991 (Cons!51604 lt!1791608 lt!1791598) (ListMap!4330 Nil!51604)) (+!1896 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791608)) (= (content!8863 (toList!5025 (addToMapMapFromBucket!991 (Cons!51604 lt!1791608 lt!1791598) (ListMap!4330 Nil!51604)))) (content!8863 (toList!5025 (+!1896 (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1791608)))))))

(declare-fun bs!1027714 () Bool)

(assert (= bs!1027714 d!1459679))

(declare-fun m!5481575 () Bool)

(assert (=> bs!1027714 m!5481575))

(declare-fun m!5481577 () Bool)

(assert (=> bs!1027714 m!5481577))

(assert (=> b!4631243 d!1459679))

(declare-fun bs!1027715 () Bool)

(declare-fun b!4631524 () Bool)

(assert (= bs!1027715 (and b!4631524 b!4631510)))

(declare-fun lambda!193797 () Int)

(assert (=> bs!1027715 (= (= (ListMap!4330 Nil!51604) lt!1791973) (= lambda!193797 lambda!193791))))

(declare-fun bs!1027716 () Bool)

(assert (= bs!1027716 (and b!4631524 d!1459655)))

(assert (=> bs!1027716 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193797 lambda!193785))))

(declare-fun bs!1027717 () Bool)

(assert (= bs!1027717 (and b!4631524 d!1459579)))

(assert (=> bs!1027717 (not (= lambda!193797 lambda!193698))))

(assert (=> bs!1027715 (= lambda!193797 lambda!193789)))

(declare-fun bs!1027718 () Bool)

(assert (= bs!1027718 (and b!4631524 b!4631492)))

(assert (=> bs!1027718 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193797 lambda!193782))))

(declare-fun bs!1027719 () Bool)

(assert (= bs!1027719 (and b!4631524 b!4631512)))

(assert (=> bs!1027719 (= lambda!193797 lambda!193788)))

(declare-fun bs!1027721 () Bool)

(assert (= bs!1027721 (and b!4631524 d!1459671)))

(assert (=> bs!1027721 (= (= (ListMap!4330 Nil!51604) lt!1791970) (= lambda!193797 lambda!193793))))

(declare-fun bs!1027722 () Bool)

(assert (= bs!1027722 (and b!4631524 b!4631494)))

(assert (=> bs!1027722 (= lambda!193797 lambda!193779)))

(assert (=> bs!1027718 (= lambda!193797 lambda!193780)))

(assert (=> b!4631524 true))

(declare-fun bs!1027723 () Bool)

(declare-fun b!4631522 () Bool)

(assert (= bs!1027723 (and b!4631522 b!4631510)))

(declare-fun lambda!193798 () Int)

(assert (=> bs!1027723 (= (= (ListMap!4330 Nil!51604) lt!1791973) (= lambda!193798 lambda!193791))))

(declare-fun bs!1027724 () Bool)

(assert (= bs!1027724 (and b!4631522 d!1459579)))

(assert (=> bs!1027724 (not (= lambda!193798 lambda!193698))))

(assert (=> bs!1027723 (= lambda!193798 lambda!193789)))

(declare-fun bs!1027725 () Bool)

(assert (= bs!1027725 (and b!4631522 b!4631492)))

(assert (=> bs!1027725 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193798 lambda!193782))))

(declare-fun bs!1027726 () Bool)

(assert (= bs!1027726 (and b!4631522 b!4631512)))

(assert (=> bs!1027726 (= lambda!193798 lambda!193788)))

(declare-fun bs!1027727 () Bool)

(assert (= bs!1027727 (and b!4631522 d!1459671)))

(assert (=> bs!1027727 (= (= (ListMap!4330 Nil!51604) lt!1791970) (= lambda!193798 lambda!193793))))

(declare-fun bs!1027728 () Bool)

(assert (= bs!1027728 (and b!4631522 d!1459655)))

(assert (=> bs!1027728 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193798 lambda!193785))))

(declare-fun bs!1027729 () Bool)

(assert (= bs!1027729 (and b!4631522 b!4631524)))

(assert (=> bs!1027729 (= lambda!193798 lambda!193797)))

(declare-fun bs!1027730 () Bool)

(assert (= bs!1027730 (and b!4631522 b!4631494)))

(assert (=> bs!1027730 (= lambda!193798 lambda!193779)))

(assert (=> bs!1027725 (= lambda!193798 lambda!193780)))

(assert (=> b!4631522 true))

(declare-fun lt!1792016 () ListMap!4329)

(declare-fun lambda!193799 () Int)

(assert (=> bs!1027723 (= (= lt!1792016 lt!1791973) (= lambda!193799 lambda!193791))))

(assert (=> bs!1027724 (not (= lambda!193799 lambda!193698))))

(assert (=> bs!1027723 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193789))))

(assert (=> bs!1027725 (= (= lt!1792016 lt!1791921) (= lambda!193799 lambda!193782))))

(assert (=> b!4631522 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193798))))

(assert (=> bs!1027726 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193788))))

(assert (=> bs!1027727 (= (= lt!1792016 lt!1791970) (= lambda!193799 lambda!193793))))

(assert (=> bs!1027728 (= (= lt!1792016 lt!1791918) (= lambda!193799 lambda!193785))))

(assert (=> bs!1027729 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193797))))

(assert (=> bs!1027730 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193779))))

(assert (=> bs!1027725 (= (= lt!1792016 (ListMap!4330 Nil!51604)) (= lambda!193799 lambda!193780))))

(assert (=> b!4631522 true))

(declare-fun bs!1027731 () Bool)

(declare-fun d!1459681 () Bool)

(assert (= bs!1027731 (and d!1459681 b!4631510)))

(declare-fun lt!1792013 () ListMap!4329)

(declare-fun lambda!193800 () Int)

(assert (=> bs!1027731 (= (= lt!1792013 lt!1791973) (= lambda!193800 lambda!193791))))

(declare-fun bs!1027732 () Bool)

(assert (= bs!1027732 (and d!1459681 d!1459579)))

(assert (=> bs!1027732 (not (= lambda!193800 lambda!193698))))

(assert (=> bs!1027731 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193789))))

(declare-fun bs!1027733 () Bool)

(assert (= bs!1027733 (and d!1459681 b!4631492)))

(assert (=> bs!1027733 (= (= lt!1792013 lt!1791921) (= lambda!193800 lambda!193782))))

(declare-fun bs!1027734 () Bool)

(assert (= bs!1027734 (and d!1459681 b!4631522)))

(assert (=> bs!1027734 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193798))))

(declare-fun bs!1027735 () Bool)

(assert (= bs!1027735 (and d!1459681 b!4631512)))

(assert (=> bs!1027735 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193788))))

(declare-fun bs!1027736 () Bool)

(assert (= bs!1027736 (and d!1459681 d!1459671)))

(assert (=> bs!1027736 (= (= lt!1792013 lt!1791970) (= lambda!193800 lambda!193793))))

(declare-fun bs!1027737 () Bool)

(assert (= bs!1027737 (and d!1459681 d!1459655)))

(assert (=> bs!1027737 (= (= lt!1792013 lt!1791918) (= lambda!193800 lambda!193785))))

(assert (=> bs!1027734 (= (= lt!1792013 lt!1792016) (= lambda!193800 lambda!193799))))

(declare-fun bs!1027738 () Bool)

(assert (= bs!1027738 (and d!1459681 b!4631524)))

(assert (=> bs!1027738 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193797))))

(declare-fun bs!1027739 () Bool)

(assert (= bs!1027739 (and d!1459681 b!4631494)))

(assert (=> bs!1027739 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193779))))

(assert (=> bs!1027733 (= (= lt!1792013 (ListMap!4330 Nil!51604)) (= lambda!193800 lambda!193780))))

(assert (=> d!1459681 true))

(declare-fun c!792771 () Bool)

(declare-fun call!323186 () Bool)

(declare-fun bm!323181 () Bool)

(declare-fun lt!1792017 () ListMap!4329)

(assert (=> bm!323181 (= call!323186 (forall!10867 (ite c!792771 (toList!5025 (ListMap!4330 Nil!51604)) (toList!5025 lt!1792017)) (ite c!792771 lambda!193797 lambda!193799)))))

(declare-fun b!4631521 () Bool)

(declare-fun res!1943258 () Bool)

(declare-fun e!2889199 () Bool)

(assert (=> b!4631521 (=> (not res!1943258) (not e!2889199))))

(assert (=> b!4631521 (= res!1943258 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193800))))

(assert (=> d!1459681 e!2889199))

(declare-fun res!1943260 () Bool)

(assert (=> d!1459681 (=> (not res!1943260) (not e!2889199))))

(assert (=> d!1459681 (= res!1943260 (forall!10867 lt!1791591 lambda!193800))))

(declare-fun e!2889198 () ListMap!4329)

(assert (=> d!1459681 (= lt!1792013 e!2889198)))

(assert (=> d!1459681 (= c!792771 ((_ is Nil!51604) lt!1791591))))

(assert (=> d!1459681 (noDuplicateKeys!1530 lt!1791591)))

(assert (=> d!1459681 (= (addToMapMapFromBucket!991 lt!1791591 (ListMap!4330 Nil!51604)) lt!1792013)))

(assert (=> b!4631522 (= e!2889198 lt!1792016)))

(assert (=> b!4631522 (= lt!1792017 (+!1896 (ListMap!4330 Nil!51604) (h!57676 lt!1791591)))))

(assert (=> b!4631522 (= lt!1792016 (addToMapMapFromBucket!991 (t!358782 lt!1791591) (+!1896 (ListMap!4330 Nil!51604) (h!57676 lt!1791591))))))

(declare-fun lt!1792019 () Unit!113380)

(declare-fun call!323187 () Unit!113380)

(assert (=> b!4631522 (= lt!1792019 call!323187)))

(assert (=> b!4631522 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193798)))

(declare-fun lt!1792026 () Unit!113380)

(assert (=> b!4631522 (= lt!1792026 lt!1792019)))

(assert (=> b!4631522 call!323186))

(declare-fun lt!1792015 () Unit!113380)

(declare-fun Unit!113455 () Unit!113380)

(assert (=> b!4631522 (= lt!1792015 Unit!113455)))

(assert (=> b!4631522 (forall!10867 (t!358782 lt!1791591) lambda!193799)))

(declare-fun lt!1792021 () Unit!113380)

(declare-fun Unit!113456 () Unit!113380)

(assert (=> b!4631522 (= lt!1792021 Unit!113456)))

(declare-fun lt!1792012 () Unit!113380)

(declare-fun Unit!113457 () Unit!113380)

(assert (=> b!4631522 (= lt!1792012 Unit!113457)))

(declare-fun lt!1792031 () Unit!113380)

(assert (=> b!4631522 (= lt!1792031 (forallContained!3098 (toList!5025 lt!1792017) lambda!193799 (h!57676 lt!1791591)))))

(assert (=> b!4631522 (contains!14693 lt!1792017 (_1!29577 (h!57676 lt!1791591)))))

(declare-fun lt!1792028 () Unit!113380)

(declare-fun Unit!113458 () Unit!113380)

(assert (=> b!4631522 (= lt!1792028 Unit!113458)))

(assert (=> b!4631522 (contains!14693 lt!1792016 (_1!29577 (h!57676 lt!1791591)))))

(declare-fun lt!1792018 () Unit!113380)

(declare-fun Unit!113459 () Unit!113380)

(assert (=> b!4631522 (= lt!1792018 Unit!113459)))

(assert (=> b!4631522 (forall!10867 lt!1791591 lambda!193799)))

(declare-fun lt!1792025 () Unit!113380)

(declare-fun Unit!113460 () Unit!113380)

(assert (=> b!4631522 (= lt!1792025 Unit!113460)))

(assert (=> b!4631522 (forall!10867 (toList!5025 lt!1792017) lambda!193799)))

(declare-fun lt!1792024 () Unit!113380)

(declare-fun Unit!113461 () Unit!113380)

(assert (=> b!4631522 (= lt!1792024 Unit!113461)))

(declare-fun lt!1792020 () Unit!113380)

(declare-fun Unit!113462 () Unit!113380)

(assert (=> b!4631522 (= lt!1792020 Unit!113462)))

(declare-fun lt!1792027 () Unit!113380)

(assert (=> b!4631522 (= lt!1792027 (addForallContainsKeyThenBeforeAdding!527 (ListMap!4330 Nil!51604) lt!1792016 (_1!29577 (h!57676 lt!1791591)) (_2!29577 (h!57676 lt!1791591))))))

(assert (=> b!4631522 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193799)))

(declare-fun lt!1792029 () Unit!113380)

(assert (=> b!4631522 (= lt!1792029 lt!1792027)))

(assert (=> b!4631522 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193799)))

(declare-fun lt!1792023 () Unit!113380)

(declare-fun Unit!113463 () Unit!113380)

(assert (=> b!4631522 (= lt!1792023 Unit!113463)))

(declare-fun res!1943259 () Bool)

(declare-fun call!323188 () Bool)

(assert (=> b!4631522 (= res!1943259 call!323188)))

(declare-fun e!2889200 () Bool)

(assert (=> b!4631522 (=> (not res!1943259) (not e!2889200))))

(assert (=> b!4631522 e!2889200))

(declare-fun lt!1792030 () Unit!113380)

(declare-fun Unit!113464 () Unit!113380)

(assert (=> b!4631522 (= lt!1792030 Unit!113464)))

(declare-fun b!4631523 () Bool)

(assert (=> b!4631523 (= e!2889200 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193799))))

(declare-fun bm!323182 () Bool)

(assert (=> bm!323182 (= call!323188 (forall!10867 (ite c!792771 (toList!5025 (ListMap!4330 Nil!51604)) lt!1791591) (ite c!792771 lambda!193797 lambda!193799)))))

(assert (=> b!4631524 (= e!2889198 (ListMap!4330 Nil!51604))))

(declare-fun lt!1792022 () Unit!113380)

(assert (=> b!4631524 (= lt!1792022 call!323187)))

(assert (=> b!4631524 call!323186))

(declare-fun lt!1792014 () Unit!113380)

(assert (=> b!4631524 (= lt!1792014 lt!1792022)))

(assert (=> b!4631524 call!323188))

(declare-fun lt!1792032 () Unit!113380)

(declare-fun Unit!113465 () Unit!113380)

(assert (=> b!4631524 (= lt!1792032 Unit!113465)))

(declare-fun bm!323183 () Bool)

(assert (=> bm!323183 (= call!323187 (lemmaContainsAllItsOwnKeys!528 (ListMap!4330 Nil!51604)))))

(declare-fun b!4631525 () Bool)

(assert (=> b!4631525 (= e!2889199 (invariantList!1226 (toList!5025 lt!1792013)))))

(assert (= (and d!1459681 c!792771) b!4631524))

(assert (= (and d!1459681 (not c!792771)) b!4631522))

(assert (= (and b!4631522 res!1943259) b!4631523))

(assert (= (or b!4631524 b!4631522) bm!323183))

(assert (= (or b!4631524 b!4631522) bm!323182))

(assert (= (or b!4631524 b!4631522) bm!323181))

(assert (= (and d!1459681 res!1943260) b!4631521))

(assert (= (and b!4631521 res!1943258) b!4631525))

(assert (=> bm!323183 m!5481427))

(declare-fun m!5481627 () Bool)

(assert (=> bm!323182 m!5481627))

(declare-fun m!5481629 () Bool)

(assert (=> d!1459681 m!5481629))

(assert (=> d!1459681 m!5481219))

(declare-fun m!5481631 () Bool)

(assert (=> b!4631525 m!5481631))

(declare-fun m!5481633 () Bool)

(assert (=> bm!323181 m!5481633))

(declare-fun m!5481635 () Bool)

(assert (=> b!4631523 m!5481635))

(assert (=> b!4631522 m!5481635))

(declare-fun m!5481637 () Bool)

(assert (=> b!4631522 m!5481637))

(declare-fun m!5481639 () Bool)

(assert (=> b!4631522 m!5481639))

(declare-fun m!5481641 () Bool)

(assert (=> b!4631522 m!5481641))

(declare-fun m!5481643 () Bool)

(assert (=> b!4631522 m!5481643))

(declare-fun m!5481645 () Bool)

(assert (=> b!4631522 m!5481645))

(declare-fun m!5481647 () Bool)

(assert (=> b!4631522 m!5481647))

(declare-fun m!5481649 () Bool)

(assert (=> b!4631522 m!5481649))

(declare-fun m!5481651 () Bool)

(assert (=> b!4631522 m!5481651))

(declare-fun m!5481653 () Bool)

(assert (=> b!4631522 m!5481653))

(declare-fun m!5481655 () Bool)

(assert (=> b!4631522 m!5481655))

(assert (=> b!4631522 m!5481635))

(assert (=> b!4631522 m!5481651))

(declare-fun m!5481657 () Bool)

(assert (=> b!4631521 m!5481657))

(assert (=> b!4631243 d!1459681))

(declare-fun bs!1027740 () Bool)

(declare-fun b!4631531 () Bool)

(assert (= bs!1027740 (and b!4631531 b!4631510)))

(declare-fun lambda!193801 () Int)

(assert (=> bs!1027740 (= (= (ListMap!4330 Nil!51604) lt!1791973) (= lambda!193801 lambda!193791))))

(declare-fun bs!1027741 () Bool)

(assert (= bs!1027741 (and b!4631531 d!1459579)))

(assert (=> bs!1027741 (not (= lambda!193801 lambda!193698))))

(assert (=> bs!1027740 (= lambda!193801 lambda!193789)))

(declare-fun bs!1027742 () Bool)

(assert (= bs!1027742 (and b!4631531 d!1459681)))

(assert (=> bs!1027742 (= (= (ListMap!4330 Nil!51604) lt!1792013) (= lambda!193801 lambda!193800))))

(declare-fun bs!1027743 () Bool)

(assert (= bs!1027743 (and b!4631531 b!4631492)))

(assert (=> bs!1027743 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193801 lambda!193782))))

(declare-fun bs!1027744 () Bool)

(assert (= bs!1027744 (and b!4631531 b!4631522)))

(assert (=> bs!1027744 (= lambda!193801 lambda!193798)))

(declare-fun bs!1027745 () Bool)

(assert (= bs!1027745 (and b!4631531 b!4631512)))

(assert (=> bs!1027745 (= lambda!193801 lambda!193788)))

(declare-fun bs!1027746 () Bool)

(assert (= bs!1027746 (and b!4631531 d!1459671)))

(assert (=> bs!1027746 (= (= (ListMap!4330 Nil!51604) lt!1791970) (= lambda!193801 lambda!193793))))

(declare-fun bs!1027747 () Bool)

(assert (= bs!1027747 (and b!4631531 d!1459655)))

(assert (=> bs!1027747 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193801 lambda!193785))))

(assert (=> bs!1027744 (= (= (ListMap!4330 Nil!51604) lt!1792016) (= lambda!193801 lambda!193799))))

(declare-fun bs!1027748 () Bool)

(assert (= bs!1027748 (and b!4631531 b!4631524)))

(assert (=> bs!1027748 (= lambda!193801 lambda!193797)))

(declare-fun bs!1027749 () Bool)

(assert (= bs!1027749 (and b!4631531 b!4631494)))

(assert (=> bs!1027749 (= lambda!193801 lambda!193779)))

(assert (=> bs!1027743 (= lambda!193801 lambda!193780)))

(assert (=> b!4631531 true))

(declare-fun bs!1027750 () Bool)

(declare-fun b!4631529 () Bool)

(assert (= bs!1027750 (and b!4631529 b!4631510)))

(declare-fun lambda!193802 () Int)

(assert (=> bs!1027750 (= (= (ListMap!4330 Nil!51604) lt!1791973) (= lambda!193802 lambda!193791))))

(declare-fun bs!1027751 () Bool)

(assert (= bs!1027751 (and b!4631529 d!1459579)))

(assert (=> bs!1027751 (not (= lambda!193802 lambda!193698))))

(assert (=> bs!1027750 (= lambda!193802 lambda!193789)))

(declare-fun bs!1027752 () Bool)

(assert (= bs!1027752 (and b!4631529 d!1459681)))

(assert (=> bs!1027752 (= (= (ListMap!4330 Nil!51604) lt!1792013) (= lambda!193802 lambda!193800))))

(declare-fun bs!1027753 () Bool)

(assert (= bs!1027753 (and b!4631529 b!4631492)))

(assert (=> bs!1027753 (= (= (ListMap!4330 Nil!51604) lt!1791921) (= lambda!193802 lambda!193782))))

(declare-fun bs!1027754 () Bool)

(assert (= bs!1027754 (and b!4631529 b!4631522)))

(assert (=> bs!1027754 (= lambda!193802 lambda!193798)))

(declare-fun bs!1027755 () Bool)

(assert (= bs!1027755 (and b!4631529 b!4631512)))

(assert (=> bs!1027755 (= lambda!193802 lambda!193788)))

(declare-fun bs!1027756 () Bool)

(assert (= bs!1027756 (and b!4631529 b!4631531)))

(assert (=> bs!1027756 (= lambda!193802 lambda!193801)))

(declare-fun bs!1027757 () Bool)

(assert (= bs!1027757 (and b!4631529 d!1459671)))

(assert (=> bs!1027757 (= (= (ListMap!4330 Nil!51604) lt!1791970) (= lambda!193802 lambda!193793))))

(declare-fun bs!1027758 () Bool)

(assert (= bs!1027758 (and b!4631529 d!1459655)))

(assert (=> bs!1027758 (= (= (ListMap!4330 Nil!51604) lt!1791918) (= lambda!193802 lambda!193785))))

(assert (=> bs!1027754 (= (= (ListMap!4330 Nil!51604) lt!1792016) (= lambda!193802 lambda!193799))))

(declare-fun bs!1027759 () Bool)

(assert (= bs!1027759 (and b!4631529 b!4631524)))

(assert (=> bs!1027759 (= lambda!193802 lambda!193797)))

(declare-fun bs!1027760 () Bool)

(assert (= bs!1027760 (and b!4631529 b!4631494)))

(assert (=> bs!1027760 (= lambda!193802 lambda!193779)))

(assert (=> bs!1027753 (= lambda!193802 lambda!193780)))

(assert (=> b!4631529 true))

(declare-fun lt!1792041 () ListMap!4329)

(declare-fun lambda!193803 () Int)

(assert (=> b!4631529 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193802))))

(assert (=> bs!1027750 (= (= lt!1792041 lt!1791973) (= lambda!193803 lambda!193791))))

(assert (=> bs!1027751 (not (= lambda!193803 lambda!193698))))

(assert (=> bs!1027750 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193789))))

(assert (=> bs!1027752 (= (= lt!1792041 lt!1792013) (= lambda!193803 lambda!193800))))

(assert (=> bs!1027753 (= (= lt!1792041 lt!1791921) (= lambda!193803 lambda!193782))))

(assert (=> bs!1027754 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193798))))

(assert (=> bs!1027755 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193788))))

(assert (=> bs!1027756 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193801))))

(assert (=> bs!1027757 (= (= lt!1792041 lt!1791970) (= lambda!193803 lambda!193793))))

(assert (=> bs!1027758 (= (= lt!1792041 lt!1791918) (= lambda!193803 lambda!193785))))

(assert (=> bs!1027754 (= (= lt!1792041 lt!1792016) (= lambda!193803 lambda!193799))))

(assert (=> bs!1027759 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193797))))

(assert (=> bs!1027760 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193779))))

(assert (=> bs!1027753 (= (= lt!1792041 (ListMap!4330 Nil!51604)) (= lambda!193803 lambda!193780))))

(assert (=> b!4631529 true))

(declare-fun bs!1027761 () Bool)

(declare-fun d!1459689 () Bool)

(assert (= bs!1027761 (and d!1459689 b!4631529)))

(declare-fun lt!1792038 () ListMap!4329)

(declare-fun lambda!193805 () Int)

(assert (=> bs!1027761 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193802))))

(declare-fun bs!1027762 () Bool)

(assert (= bs!1027762 (and d!1459689 b!4631510)))

(assert (=> bs!1027762 (= (= lt!1792038 lt!1791973) (= lambda!193805 lambda!193791))))

(assert (=> bs!1027761 (= (= lt!1792038 lt!1792041) (= lambda!193805 lambda!193803))))

(declare-fun bs!1027763 () Bool)

(assert (= bs!1027763 (and d!1459689 d!1459579)))

(assert (=> bs!1027763 (not (= lambda!193805 lambda!193698))))

(assert (=> bs!1027762 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193789))))

(declare-fun bs!1027764 () Bool)

(assert (= bs!1027764 (and d!1459689 d!1459681)))

(assert (=> bs!1027764 (= (= lt!1792038 lt!1792013) (= lambda!193805 lambda!193800))))

(declare-fun bs!1027765 () Bool)

(assert (= bs!1027765 (and d!1459689 b!4631492)))

(assert (=> bs!1027765 (= (= lt!1792038 lt!1791921) (= lambda!193805 lambda!193782))))

(declare-fun bs!1027766 () Bool)

(assert (= bs!1027766 (and d!1459689 b!4631522)))

(assert (=> bs!1027766 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193798))))

(declare-fun bs!1027767 () Bool)

(assert (= bs!1027767 (and d!1459689 b!4631512)))

(assert (=> bs!1027767 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193788))))

(declare-fun bs!1027768 () Bool)

(assert (= bs!1027768 (and d!1459689 b!4631531)))

(assert (=> bs!1027768 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193801))))

(declare-fun bs!1027769 () Bool)

(assert (= bs!1027769 (and d!1459689 d!1459671)))

(assert (=> bs!1027769 (= (= lt!1792038 lt!1791970) (= lambda!193805 lambda!193793))))

(declare-fun bs!1027770 () Bool)

(assert (= bs!1027770 (and d!1459689 d!1459655)))

(assert (=> bs!1027770 (= (= lt!1792038 lt!1791918) (= lambda!193805 lambda!193785))))

(assert (=> bs!1027766 (= (= lt!1792038 lt!1792016) (= lambda!193805 lambda!193799))))

(declare-fun bs!1027771 () Bool)

(assert (= bs!1027771 (and d!1459689 b!4631524)))

(assert (=> bs!1027771 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193797))))

(declare-fun bs!1027772 () Bool)

(assert (= bs!1027772 (and d!1459689 b!4631494)))

(assert (=> bs!1027772 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193779))))

(assert (=> bs!1027765 (= (= lt!1792038 (ListMap!4330 Nil!51604)) (= lambda!193805 lambda!193780))))

(assert (=> d!1459689 true))

(declare-fun c!792772 () Bool)

(declare-fun call!323189 () Bool)

(declare-fun lt!1792042 () ListMap!4329)

(declare-fun bm!323184 () Bool)

(assert (=> bm!323184 (= call!323189 (forall!10867 (ite c!792772 (toList!5025 (ListMap!4330 Nil!51604)) (toList!5025 lt!1792042)) (ite c!792772 lambda!193801 lambda!193803)))))

(declare-fun b!4631528 () Bool)

(declare-fun res!1943263 () Bool)

(declare-fun e!2889203 () Bool)

(assert (=> b!4631528 (=> (not res!1943263) (not e!2889203))))

(assert (=> b!4631528 (= res!1943263 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193805))))

(assert (=> d!1459689 e!2889203))

(declare-fun res!1943265 () Bool)

(assert (=> d!1459689 (=> (not res!1943265) (not e!2889203))))

(assert (=> d!1459689 (= res!1943265 (forall!10867 lt!1791598 lambda!193805))))

(declare-fun e!2889202 () ListMap!4329)

(assert (=> d!1459689 (= lt!1792038 e!2889202)))

(assert (=> d!1459689 (= c!792772 ((_ is Nil!51604) lt!1791598))))

(assert (=> d!1459689 (noDuplicateKeys!1530 lt!1791598)))

(assert (=> d!1459689 (= (addToMapMapFromBucket!991 lt!1791598 (ListMap!4330 Nil!51604)) lt!1792038)))

(assert (=> b!4631529 (= e!2889202 lt!1792041)))

(assert (=> b!4631529 (= lt!1792042 (+!1896 (ListMap!4330 Nil!51604) (h!57676 lt!1791598)))))

(assert (=> b!4631529 (= lt!1792041 (addToMapMapFromBucket!991 (t!358782 lt!1791598) (+!1896 (ListMap!4330 Nil!51604) (h!57676 lt!1791598))))))

(declare-fun lt!1792044 () Unit!113380)

(declare-fun call!323190 () Unit!113380)

(assert (=> b!4631529 (= lt!1792044 call!323190)))

(assert (=> b!4631529 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193802)))

(declare-fun lt!1792051 () Unit!113380)

(assert (=> b!4631529 (= lt!1792051 lt!1792044)))

(assert (=> b!4631529 call!323189))

(declare-fun lt!1792040 () Unit!113380)

(declare-fun Unit!113477 () Unit!113380)

(assert (=> b!4631529 (= lt!1792040 Unit!113477)))

(assert (=> b!4631529 (forall!10867 (t!358782 lt!1791598) lambda!193803)))

(declare-fun lt!1792046 () Unit!113380)

(declare-fun Unit!113478 () Unit!113380)

(assert (=> b!4631529 (= lt!1792046 Unit!113478)))

(declare-fun lt!1792037 () Unit!113380)

(declare-fun Unit!113479 () Unit!113380)

(assert (=> b!4631529 (= lt!1792037 Unit!113479)))

(declare-fun lt!1792056 () Unit!113380)

(assert (=> b!4631529 (= lt!1792056 (forallContained!3098 (toList!5025 lt!1792042) lambda!193803 (h!57676 lt!1791598)))))

(assert (=> b!4631529 (contains!14693 lt!1792042 (_1!29577 (h!57676 lt!1791598)))))

(declare-fun lt!1792053 () Unit!113380)

(declare-fun Unit!113480 () Unit!113380)

(assert (=> b!4631529 (= lt!1792053 Unit!113480)))

(assert (=> b!4631529 (contains!14693 lt!1792041 (_1!29577 (h!57676 lt!1791598)))))

(declare-fun lt!1792043 () Unit!113380)

(declare-fun Unit!113481 () Unit!113380)

(assert (=> b!4631529 (= lt!1792043 Unit!113481)))

(assert (=> b!4631529 (forall!10867 lt!1791598 lambda!193803)))

(declare-fun lt!1792050 () Unit!113380)

(declare-fun Unit!113482 () Unit!113380)

(assert (=> b!4631529 (= lt!1792050 Unit!113482)))

(assert (=> b!4631529 (forall!10867 (toList!5025 lt!1792042) lambda!193803)))

(declare-fun lt!1792049 () Unit!113380)

(declare-fun Unit!113483 () Unit!113380)

(assert (=> b!4631529 (= lt!1792049 Unit!113483)))

(declare-fun lt!1792045 () Unit!113380)

(declare-fun Unit!113484 () Unit!113380)

(assert (=> b!4631529 (= lt!1792045 Unit!113484)))

(declare-fun lt!1792052 () Unit!113380)

(assert (=> b!4631529 (= lt!1792052 (addForallContainsKeyThenBeforeAdding!527 (ListMap!4330 Nil!51604) lt!1792041 (_1!29577 (h!57676 lt!1791598)) (_2!29577 (h!57676 lt!1791598))))))

(assert (=> b!4631529 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193803)))

(declare-fun lt!1792054 () Unit!113380)

(assert (=> b!4631529 (= lt!1792054 lt!1792052)))

(assert (=> b!4631529 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193803)))

(declare-fun lt!1792048 () Unit!113380)

(declare-fun Unit!113485 () Unit!113380)

(assert (=> b!4631529 (= lt!1792048 Unit!113485)))

(declare-fun res!1943264 () Bool)

(declare-fun call!323191 () Bool)

(assert (=> b!4631529 (= res!1943264 call!323191)))

(declare-fun e!2889204 () Bool)

(assert (=> b!4631529 (=> (not res!1943264) (not e!2889204))))

(assert (=> b!4631529 e!2889204))

(declare-fun lt!1792055 () Unit!113380)

(declare-fun Unit!113486 () Unit!113380)

(assert (=> b!4631529 (= lt!1792055 Unit!113486)))

(declare-fun b!4631530 () Bool)

(assert (=> b!4631530 (= e!2889204 (forall!10867 (toList!5025 (ListMap!4330 Nil!51604)) lambda!193803))))

(declare-fun bm!323185 () Bool)

(assert (=> bm!323185 (= call!323191 (forall!10867 (ite c!792772 (toList!5025 (ListMap!4330 Nil!51604)) lt!1791598) (ite c!792772 lambda!193801 lambda!193803)))))

(assert (=> b!4631531 (= e!2889202 (ListMap!4330 Nil!51604))))

(declare-fun lt!1792047 () Unit!113380)

(assert (=> b!4631531 (= lt!1792047 call!323190)))

(assert (=> b!4631531 call!323189))

(declare-fun lt!1792039 () Unit!113380)

(assert (=> b!4631531 (= lt!1792039 lt!1792047)))

(assert (=> b!4631531 call!323191))

(declare-fun lt!1792057 () Unit!113380)

(declare-fun Unit!113487 () Unit!113380)

(assert (=> b!4631531 (= lt!1792057 Unit!113487)))

(declare-fun bm!323186 () Bool)

(assert (=> bm!323186 (= call!323190 (lemmaContainsAllItsOwnKeys!528 (ListMap!4330 Nil!51604)))))

(declare-fun b!4631532 () Bool)

(assert (=> b!4631532 (= e!2889203 (invariantList!1226 (toList!5025 lt!1792038)))))

(assert (= (and d!1459689 c!792772) b!4631531))

(assert (= (and d!1459689 (not c!792772)) b!4631529))

(assert (= (and b!4631529 res!1943264) b!4631530))

(assert (= (or b!4631531 b!4631529) bm!323186))

(assert (= (or b!4631531 b!4631529) bm!323185))

(assert (= (or b!4631531 b!4631529) bm!323184))

(assert (= (and d!1459689 res!1943265) b!4631528))

(assert (= (and b!4631528 res!1943263) b!4631532))

(assert (=> bm!323186 m!5481427))

(declare-fun m!5481667 () Bool)

(assert (=> bm!323185 m!5481667))

(declare-fun m!5481669 () Bool)

(assert (=> d!1459689 m!5481669))

(assert (=> d!1459689 m!5481215))

(declare-fun m!5481671 () Bool)

(assert (=> b!4631532 m!5481671))

(declare-fun m!5481673 () Bool)

(assert (=> bm!323184 m!5481673))

(declare-fun m!5481675 () Bool)

(assert (=> b!4631530 m!5481675))

(assert (=> b!4631529 m!5481675))

(declare-fun m!5481677 () Bool)

(assert (=> b!4631529 m!5481677))

(declare-fun m!5481679 () Bool)

(assert (=> b!4631529 m!5481679))

(declare-fun m!5481681 () Bool)

(assert (=> b!4631529 m!5481681))

(declare-fun m!5481683 () Bool)

(assert (=> b!4631529 m!5481683))

(declare-fun m!5481685 () Bool)

(assert (=> b!4631529 m!5481685))

(declare-fun m!5481687 () Bool)

(assert (=> b!4631529 m!5481687))

(declare-fun m!5481689 () Bool)

(assert (=> b!4631529 m!5481689))

(declare-fun m!5481691 () Bool)

(assert (=> b!4631529 m!5481691))

(declare-fun m!5481693 () Bool)

(assert (=> b!4631529 m!5481693))

(declare-fun m!5481695 () Bool)

(assert (=> b!4631529 m!5481695))

(assert (=> b!4631529 m!5481675))

(assert (=> b!4631529 m!5481691))

(declare-fun m!5481697 () Bool)

(assert (=> b!4631528 m!5481697))

(assert (=> b!4631243 d!1459689))

(declare-fun bs!1027785 () Bool)

(declare-fun d!1459693 () Bool)

(assert (= bs!1027785 (and d!1459693 b!4631529)))

(declare-fun lambda!193809 () Int)

(assert (=> bs!1027785 (not (= lambda!193809 lambda!193802))))

(declare-fun bs!1027786 () Bool)

(assert (= bs!1027786 (and d!1459693 b!4631510)))

(assert (=> bs!1027786 (not (= lambda!193809 lambda!193791))))

(declare-fun bs!1027789 () Bool)

(assert (= bs!1027789 (and d!1459693 d!1459689)))

(assert (=> bs!1027789 (not (= lambda!193809 lambda!193805))))

(assert (=> bs!1027785 (not (= lambda!193809 lambda!193803))))

(declare-fun bs!1027791 () Bool)

(assert (= bs!1027791 (and d!1459693 d!1459579)))

(assert (=> bs!1027791 (= lambda!193809 lambda!193698)))

(assert (=> bs!1027786 (not (= lambda!193809 lambda!193789))))

(declare-fun bs!1027794 () Bool)

(assert (= bs!1027794 (and d!1459693 d!1459681)))

(assert (=> bs!1027794 (not (= lambda!193809 lambda!193800))))

(declare-fun bs!1027795 () Bool)

(assert (= bs!1027795 (and d!1459693 b!4631492)))

(assert (=> bs!1027795 (not (= lambda!193809 lambda!193782))))

(declare-fun bs!1027796 () Bool)

(assert (= bs!1027796 (and d!1459693 b!4631522)))

(assert (=> bs!1027796 (not (= lambda!193809 lambda!193798))))

(declare-fun bs!1027797 () Bool)

(assert (= bs!1027797 (and d!1459693 b!4631512)))

(assert (=> bs!1027797 (not (= lambda!193809 lambda!193788))))

(declare-fun bs!1027798 () Bool)

(assert (= bs!1027798 (and d!1459693 b!4631531)))

(assert (=> bs!1027798 (not (= lambda!193809 lambda!193801))))

(declare-fun bs!1027799 () Bool)

(assert (= bs!1027799 (and d!1459693 d!1459671)))

(assert (=> bs!1027799 (not (= lambda!193809 lambda!193793))))

(declare-fun bs!1027800 () Bool)

(assert (= bs!1027800 (and d!1459693 d!1459655)))

(assert (=> bs!1027800 (not (= lambda!193809 lambda!193785))))

(assert (=> bs!1027796 (not (= lambda!193809 lambda!193799))))

(declare-fun bs!1027802 () Bool)

(assert (= bs!1027802 (and d!1459693 b!4631524)))

(assert (=> bs!1027802 (not (= lambda!193809 lambda!193797))))

(declare-fun bs!1027804 () Bool)

(assert (= bs!1027804 (and d!1459693 b!4631494)))

(assert (=> bs!1027804 (not (= lambda!193809 lambda!193779))))

(assert (=> bs!1027795 (not (= lambda!193809 lambda!193780))))

(assert (=> d!1459693 true))

(assert (=> d!1459693 true))

(assert (=> d!1459693 (= (allKeysSameHash!1384 oldBucket!40 hash!414 hashF!1389) (forall!10867 oldBucket!40 lambda!193809))))

(declare-fun bs!1027807 () Bool)

(assert (= bs!1027807 d!1459693))

(declare-fun m!5481699 () Bool)

(assert (=> bs!1027807 m!5481699))

(assert (=> b!4631242 d!1459693))

(declare-fun bs!1027813 () Bool)

(declare-fun b!4631541 () Bool)

(assert (= bs!1027813 (and b!4631541 b!4631529)))

(declare-fun lambda!193811 () Int)

(assert (=> bs!1027813 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193802))))

(declare-fun bs!1027815 () Bool)

(assert (= bs!1027815 (and b!4631541 b!4631510)))

(assert (=> bs!1027815 (= (= lt!1791603 lt!1791973) (= lambda!193811 lambda!193791))))

(declare-fun bs!1027817 () Bool)

(assert (= bs!1027817 (and b!4631541 d!1459689)))

(assert (=> bs!1027817 (= (= lt!1791603 lt!1792038) (= lambda!193811 lambda!193805))))

(assert (=> bs!1027813 (= (= lt!1791603 lt!1792041) (= lambda!193811 lambda!193803))))

(declare-fun bs!1027818 () Bool)

(assert (= bs!1027818 (and b!4631541 d!1459579)))

(assert (=> bs!1027818 (not (= lambda!193811 lambda!193698))))

(assert (=> bs!1027815 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193789))))

(declare-fun bs!1027819 () Bool)

(assert (= bs!1027819 (and b!4631541 d!1459681)))

(assert (=> bs!1027819 (= (= lt!1791603 lt!1792013) (= lambda!193811 lambda!193800))))

(declare-fun bs!1027820 () Bool)

(assert (= bs!1027820 (and b!4631541 b!4631492)))

(assert (=> bs!1027820 (= (= lt!1791603 lt!1791921) (= lambda!193811 lambda!193782))))

(declare-fun bs!1027821 () Bool)

(assert (= bs!1027821 (and b!4631541 b!4631522)))

(assert (=> bs!1027821 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193798))))

(declare-fun bs!1027822 () Bool)

(assert (= bs!1027822 (and b!4631541 b!4631512)))

(assert (=> bs!1027822 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193788))))

(declare-fun bs!1027823 () Bool)

(assert (= bs!1027823 (and b!4631541 d!1459693)))

(assert (=> bs!1027823 (not (= lambda!193811 lambda!193809))))

(declare-fun bs!1027824 () Bool)

(assert (= bs!1027824 (and b!4631541 b!4631531)))

(assert (=> bs!1027824 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193801))))

(declare-fun bs!1027825 () Bool)

(assert (= bs!1027825 (and b!4631541 d!1459671)))

(assert (=> bs!1027825 (= (= lt!1791603 lt!1791970) (= lambda!193811 lambda!193793))))

(declare-fun bs!1027826 () Bool)

(assert (= bs!1027826 (and b!4631541 d!1459655)))

(assert (=> bs!1027826 (= (= lt!1791603 lt!1791918) (= lambda!193811 lambda!193785))))

(assert (=> bs!1027821 (= (= lt!1791603 lt!1792016) (= lambda!193811 lambda!193799))))

(declare-fun bs!1027827 () Bool)

(assert (= bs!1027827 (and b!4631541 b!4631524)))

(assert (=> bs!1027827 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193797))))

(declare-fun bs!1027828 () Bool)

(assert (= bs!1027828 (and b!4631541 b!4631494)))

(assert (=> bs!1027828 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193779))))

(assert (=> bs!1027820 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193811 lambda!193780))))

(assert (=> b!4631541 true))

(declare-fun bs!1027829 () Bool)

(declare-fun b!4631539 () Bool)

(assert (= bs!1027829 (and b!4631539 b!4631529)))

(declare-fun lambda!193813 () Int)

(assert (=> bs!1027829 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193802))))

(declare-fun bs!1027830 () Bool)

(assert (= bs!1027830 (and b!4631539 b!4631510)))

(assert (=> bs!1027830 (= (= lt!1791603 lt!1791973) (= lambda!193813 lambda!193791))))

(declare-fun bs!1027831 () Bool)

(assert (= bs!1027831 (and b!4631539 d!1459689)))

(assert (=> bs!1027831 (= (= lt!1791603 lt!1792038) (= lambda!193813 lambda!193805))))

(assert (=> bs!1027829 (= (= lt!1791603 lt!1792041) (= lambda!193813 lambda!193803))))

(declare-fun bs!1027832 () Bool)

(assert (= bs!1027832 (and b!4631539 d!1459579)))

(assert (=> bs!1027832 (not (= lambda!193813 lambda!193698))))

(assert (=> bs!1027830 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193789))))

(declare-fun bs!1027833 () Bool)

(assert (= bs!1027833 (and b!4631539 d!1459681)))

(assert (=> bs!1027833 (= (= lt!1791603 lt!1792013) (= lambda!193813 lambda!193800))))

(declare-fun bs!1027834 () Bool)

(assert (= bs!1027834 (and b!4631539 b!4631492)))

(assert (=> bs!1027834 (= (= lt!1791603 lt!1791921) (= lambda!193813 lambda!193782))))

(declare-fun bs!1027835 () Bool)

(assert (= bs!1027835 (and b!4631539 b!4631522)))

(assert (=> bs!1027835 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193798))))

(declare-fun bs!1027836 () Bool)

(assert (= bs!1027836 (and b!4631539 b!4631512)))

(assert (=> bs!1027836 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193788))))

(declare-fun bs!1027837 () Bool)

(assert (= bs!1027837 (and b!4631539 d!1459693)))

(assert (=> bs!1027837 (not (= lambda!193813 lambda!193809))))

(declare-fun bs!1027839 () Bool)

(assert (= bs!1027839 (and b!4631539 b!4631531)))

(assert (=> bs!1027839 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193801))))

(declare-fun bs!1027841 () Bool)

(assert (= bs!1027841 (and b!4631539 d!1459671)))

(assert (=> bs!1027841 (= (= lt!1791603 lt!1791970) (= lambda!193813 lambda!193793))))

(declare-fun bs!1027843 () Bool)

(assert (= bs!1027843 (and b!4631539 d!1459655)))

(assert (=> bs!1027843 (= (= lt!1791603 lt!1791918) (= lambda!193813 lambda!193785))))

(assert (=> bs!1027835 (= (= lt!1791603 lt!1792016) (= lambda!193813 lambda!193799))))

(declare-fun bs!1027846 () Bool)

(assert (= bs!1027846 (and b!4631539 b!4631524)))

(assert (=> bs!1027846 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193797))))

(declare-fun bs!1027847 () Bool)

(assert (= bs!1027847 (and b!4631539 b!4631494)))

(assert (=> bs!1027847 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193779))))

(assert (=> bs!1027834 (= (= lt!1791603 (ListMap!4330 Nil!51604)) (= lambda!193813 lambda!193780))))

(declare-fun bs!1027848 () Bool)

(assert (= bs!1027848 (and b!4631539 b!4631541)))

(assert (=> bs!1027848 (= lambda!193813 lambda!193811)))

(assert (=> b!4631539 true))

(declare-fun lt!1792086 () ListMap!4329)

(declare-fun lambda!193815 () Int)

(assert (=> bs!1027829 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193802))))

(assert (=> bs!1027830 (= (= lt!1792086 lt!1791973) (= lambda!193815 lambda!193791))))

(assert (=> bs!1027831 (= (= lt!1792086 lt!1792038) (= lambda!193815 lambda!193805))))

(assert (=> bs!1027829 (= (= lt!1792086 lt!1792041) (= lambda!193815 lambda!193803))))

(assert (=> bs!1027832 (not (= lambda!193815 lambda!193698))))

(assert (=> bs!1027830 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193789))))

(assert (=> bs!1027833 (= (= lt!1792086 lt!1792013) (= lambda!193815 lambda!193800))))

(assert (=> bs!1027834 (= (= lt!1792086 lt!1791921) (= lambda!193815 lambda!193782))))

(assert (=> bs!1027835 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193798))))

(assert (=> bs!1027836 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193788))))

(assert (=> bs!1027837 (not (= lambda!193815 lambda!193809))))

(assert (=> bs!1027841 (= (= lt!1792086 lt!1791970) (= lambda!193815 lambda!193793))))

(assert (=> bs!1027843 (= (= lt!1792086 lt!1791918) (= lambda!193815 lambda!193785))))

(assert (=> bs!1027835 (= (= lt!1792086 lt!1792016) (= lambda!193815 lambda!193799))))

(assert (=> bs!1027846 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193797))))

(assert (=> bs!1027847 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193779))))

(assert (=> bs!1027834 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193780))))

(assert (=> bs!1027848 (= (= lt!1792086 lt!1791603) (= lambda!193815 lambda!193811))))

(assert (=> bs!1027839 (= (= lt!1792086 (ListMap!4330 Nil!51604)) (= lambda!193815 lambda!193801))))

(assert (=> b!4631539 (= (= lt!1792086 lt!1791603) (= lambda!193815 lambda!193813))))

(assert (=> b!4631539 true))

(declare-fun bs!1027856 () Bool)

(declare-fun d!1459695 () Bool)

(assert (= bs!1027856 (and d!1459695 b!4631529)))

(declare-fun lt!1792083 () ListMap!4329)

(declare-fun lambda!193816 () Int)

(assert (=> bs!1027856 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193802))))

(declare-fun bs!1027857 () Bool)

(assert (= bs!1027857 (and d!1459695 b!4631510)))

(assert (=> bs!1027857 (= (= lt!1792083 lt!1791973) (= lambda!193816 lambda!193791))))

(declare-fun bs!1027858 () Bool)

(assert (= bs!1027858 (and d!1459695 d!1459689)))

(assert (=> bs!1027858 (= (= lt!1792083 lt!1792038) (= lambda!193816 lambda!193805))))

(assert (=> bs!1027856 (= (= lt!1792083 lt!1792041) (= lambda!193816 lambda!193803))))

(declare-fun bs!1027859 () Bool)

(assert (= bs!1027859 (and d!1459695 d!1459579)))

(assert (=> bs!1027859 (not (= lambda!193816 lambda!193698))))

(assert (=> bs!1027857 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193789))))

(declare-fun bs!1027860 () Bool)

(assert (= bs!1027860 (and d!1459695 b!4631539)))

(assert (=> bs!1027860 (= (= lt!1792083 lt!1792086) (= lambda!193816 lambda!193815))))

(declare-fun bs!1027861 () Bool)

(assert (= bs!1027861 (and d!1459695 d!1459681)))

(assert (=> bs!1027861 (= (= lt!1792083 lt!1792013) (= lambda!193816 lambda!193800))))

(declare-fun bs!1027862 () Bool)

(assert (= bs!1027862 (and d!1459695 b!4631492)))

(assert (=> bs!1027862 (= (= lt!1792083 lt!1791921) (= lambda!193816 lambda!193782))))

(declare-fun bs!1027863 () Bool)

(assert (= bs!1027863 (and d!1459695 b!4631522)))

(assert (=> bs!1027863 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193798))))

(declare-fun bs!1027864 () Bool)

(assert (= bs!1027864 (and d!1459695 b!4631512)))

(assert (=> bs!1027864 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193788))))

(declare-fun bs!1027866 () Bool)

(assert (= bs!1027866 (and d!1459695 d!1459693)))

(assert (=> bs!1027866 (not (= lambda!193816 lambda!193809))))

(declare-fun bs!1027868 () Bool)

(assert (= bs!1027868 (and d!1459695 d!1459671)))

(assert (=> bs!1027868 (= (= lt!1792083 lt!1791970) (= lambda!193816 lambda!193793))))

(declare-fun bs!1027870 () Bool)

(assert (= bs!1027870 (and d!1459695 d!1459655)))

(assert (=> bs!1027870 (= (= lt!1792083 lt!1791918) (= lambda!193816 lambda!193785))))

(assert (=> bs!1027863 (= (= lt!1792083 lt!1792016) (= lambda!193816 lambda!193799))))

(declare-fun bs!1027873 () Bool)

(assert (= bs!1027873 (and d!1459695 b!4631524)))

(assert (=> bs!1027873 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193797))))

(declare-fun bs!1027874 () Bool)

(assert (= bs!1027874 (and d!1459695 b!4631494)))

(assert (=> bs!1027874 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193779))))

(assert (=> bs!1027862 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193780))))

(declare-fun bs!1027876 () Bool)

(assert (= bs!1027876 (and d!1459695 b!4631541)))

(assert (=> bs!1027876 (= (= lt!1792083 lt!1791603) (= lambda!193816 lambda!193811))))

(declare-fun bs!1027877 () Bool)

(assert (= bs!1027877 (and d!1459695 b!4631531)))

(assert (=> bs!1027877 (= (= lt!1792083 (ListMap!4330 Nil!51604)) (= lambda!193816 lambda!193801))))

(assert (=> bs!1027860 (= (= lt!1792083 lt!1791603) (= lambda!193816 lambda!193813))))

(assert (=> d!1459695 true))

(declare-fun c!792774 () Bool)

(declare-fun call!323195 () Bool)

(declare-fun bm!323190 () Bool)

(declare-fun lt!1792087 () ListMap!4329)

(assert (=> bm!323190 (= call!323195 (forall!10867 (ite c!792774 (toList!5025 lt!1791603) (toList!5025 lt!1792087)) (ite c!792774 lambda!193811 lambda!193815)))))

(declare-fun b!4631538 () Bool)

(declare-fun res!1943269 () Bool)

(declare-fun e!2889209 () Bool)

(assert (=> b!4631538 (=> (not res!1943269) (not e!2889209))))

(assert (=> b!4631538 (= res!1943269 (forall!10867 (toList!5025 lt!1791603) lambda!193816))))

(assert (=> d!1459695 e!2889209))

(declare-fun res!1943271 () Bool)

(assert (=> d!1459695 (=> (not res!1943271) (not e!2889209))))

(assert (=> d!1459695 (= res!1943271 (forall!10867 oldBucket!40 lambda!193816))))

(declare-fun e!2889208 () ListMap!4329)

(assert (=> d!1459695 (= lt!1792083 e!2889208)))

(assert (=> d!1459695 (= c!792774 ((_ is Nil!51604) oldBucket!40))))

(assert (=> d!1459695 (noDuplicateKeys!1530 oldBucket!40)))

(assert (=> d!1459695 (= (addToMapMapFromBucket!991 oldBucket!40 lt!1791603) lt!1792083)))

(assert (=> b!4631539 (= e!2889208 lt!1792086)))

(assert (=> b!4631539 (= lt!1792087 (+!1896 lt!1791603 (h!57676 oldBucket!40)))))

(assert (=> b!4631539 (= lt!1792086 (addToMapMapFromBucket!991 (t!358782 oldBucket!40) (+!1896 lt!1791603 (h!57676 oldBucket!40))))))

(declare-fun lt!1792089 () Unit!113380)

(declare-fun call!323196 () Unit!113380)

(assert (=> b!4631539 (= lt!1792089 call!323196)))

(assert (=> b!4631539 (forall!10867 (toList!5025 lt!1791603) lambda!193813)))

(declare-fun lt!1792096 () Unit!113380)

(assert (=> b!4631539 (= lt!1792096 lt!1792089)))

(assert (=> b!4631539 call!323195))

(declare-fun lt!1792085 () Unit!113380)

(declare-fun Unit!113488 () Unit!113380)

(assert (=> b!4631539 (= lt!1792085 Unit!113488)))

(assert (=> b!4631539 (forall!10867 (t!358782 oldBucket!40) lambda!193815)))

(declare-fun lt!1792091 () Unit!113380)

(declare-fun Unit!113489 () Unit!113380)

(assert (=> b!4631539 (= lt!1792091 Unit!113489)))

(declare-fun lt!1792082 () Unit!113380)

(declare-fun Unit!113490 () Unit!113380)

(assert (=> b!4631539 (= lt!1792082 Unit!113490)))

(declare-fun lt!1792101 () Unit!113380)

(assert (=> b!4631539 (= lt!1792101 (forallContained!3098 (toList!5025 lt!1792087) lambda!193815 (h!57676 oldBucket!40)))))

(assert (=> b!4631539 (contains!14693 lt!1792087 (_1!29577 (h!57676 oldBucket!40)))))

(declare-fun lt!1792098 () Unit!113380)

(declare-fun Unit!113491 () Unit!113380)

(assert (=> b!4631539 (= lt!1792098 Unit!113491)))

(assert (=> b!4631539 (contains!14693 lt!1792086 (_1!29577 (h!57676 oldBucket!40)))))

(declare-fun lt!1792088 () Unit!113380)

(declare-fun Unit!113492 () Unit!113380)

(assert (=> b!4631539 (= lt!1792088 Unit!113492)))

(assert (=> b!4631539 (forall!10867 oldBucket!40 lambda!193815)))

(declare-fun lt!1792095 () Unit!113380)

(declare-fun Unit!113493 () Unit!113380)

(assert (=> b!4631539 (= lt!1792095 Unit!113493)))

(assert (=> b!4631539 (forall!10867 (toList!5025 lt!1792087) lambda!193815)))

(declare-fun lt!1792094 () Unit!113380)

(declare-fun Unit!113494 () Unit!113380)

(assert (=> b!4631539 (= lt!1792094 Unit!113494)))

(declare-fun lt!1792090 () Unit!113380)

(declare-fun Unit!113495 () Unit!113380)

(assert (=> b!4631539 (= lt!1792090 Unit!113495)))

(declare-fun lt!1792097 () Unit!113380)

(assert (=> b!4631539 (= lt!1792097 (addForallContainsKeyThenBeforeAdding!527 lt!1791603 lt!1792086 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> b!4631539 (forall!10867 (toList!5025 lt!1791603) lambda!193815)))

(declare-fun lt!1792099 () Unit!113380)

(assert (=> b!4631539 (= lt!1792099 lt!1792097)))

(assert (=> b!4631539 (forall!10867 (toList!5025 lt!1791603) lambda!193815)))

(declare-fun lt!1792093 () Unit!113380)

(declare-fun Unit!113496 () Unit!113380)

(assert (=> b!4631539 (= lt!1792093 Unit!113496)))

(declare-fun res!1943270 () Bool)

(declare-fun call!323197 () Bool)

(assert (=> b!4631539 (= res!1943270 call!323197)))

(declare-fun e!2889210 () Bool)

(assert (=> b!4631539 (=> (not res!1943270) (not e!2889210))))

(assert (=> b!4631539 e!2889210))

(declare-fun lt!1792100 () Unit!113380)

(declare-fun Unit!113497 () Unit!113380)

(assert (=> b!4631539 (= lt!1792100 Unit!113497)))

(declare-fun b!4631540 () Bool)

(assert (=> b!4631540 (= e!2889210 (forall!10867 (toList!5025 lt!1791603) lambda!193815))))

(declare-fun bm!323191 () Bool)

(assert (=> bm!323191 (= call!323197 (forall!10867 (ite c!792774 (toList!5025 lt!1791603) oldBucket!40) (ite c!792774 lambda!193811 lambda!193815)))))

(assert (=> b!4631541 (= e!2889208 lt!1791603)))

(declare-fun lt!1792092 () Unit!113380)

(assert (=> b!4631541 (= lt!1792092 call!323196)))

(assert (=> b!4631541 call!323195))

(declare-fun lt!1792084 () Unit!113380)

(assert (=> b!4631541 (= lt!1792084 lt!1792092)))

(assert (=> b!4631541 call!323197))

(declare-fun lt!1792102 () Unit!113380)

(declare-fun Unit!113498 () Unit!113380)

(assert (=> b!4631541 (= lt!1792102 Unit!113498)))

(declare-fun bm!323192 () Bool)

(assert (=> bm!323192 (= call!323196 (lemmaContainsAllItsOwnKeys!528 lt!1791603))))

(declare-fun b!4631542 () Bool)

(assert (=> b!4631542 (= e!2889209 (invariantList!1226 (toList!5025 lt!1792083)))))

(assert (= (and d!1459695 c!792774) b!4631541))

(assert (= (and d!1459695 (not c!792774)) b!4631539))

(assert (= (and b!4631539 res!1943270) b!4631540))

(assert (= (or b!4631541 b!4631539) bm!323192))

(assert (= (or b!4631541 b!4631539) bm!323191))

(assert (= (or b!4631541 b!4631539) bm!323190))

(assert (= (and d!1459695 res!1943271) b!4631538))

(assert (= (and b!4631538 res!1943269) b!4631542))

(declare-fun m!5481737 () Bool)

(assert (=> bm!323192 m!5481737))

(declare-fun m!5481739 () Bool)

(assert (=> bm!323191 m!5481739))

(declare-fun m!5481741 () Bool)

(assert (=> d!1459695 m!5481741))

(assert (=> d!1459695 m!5480963))

(declare-fun m!5481743 () Bool)

(assert (=> b!4631542 m!5481743))

(declare-fun m!5481745 () Bool)

(assert (=> bm!323190 m!5481745))

(declare-fun m!5481747 () Bool)

(assert (=> b!4631540 m!5481747))

(assert (=> b!4631539 m!5481747))

(declare-fun m!5481749 () Bool)

(assert (=> b!4631539 m!5481749))

(declare-fun m!5481751 () Bool)

(assert (=> b!4631539 m!5481751))

(declare-fun m!5481753 () Bool)

(assert (=> b!4631539 m!5481753))

(declare-fun m!5481755 () Bool)

(assert (=> b!4631539 m!5481755))

(declare-fun m!5481757 () Bool)

(assert (=> b!4631539 m!5481757))

(declare-fun m!5481759 () Bool)

(assert (=> b!4631539 m!5481759))

(declare-fun m!5481761 () Bool)

(assert (=> b!4631539 m!5481761))

(declare-fun m!5481763 () Bool)

(assert (=> b!4631539 m!5481763))

(declare-fun m!5481765 () Bool)

(assert (=> b!4631539 m!5481765))

(declare-fun m!5481767 () Bool)

(assert (=> b!4631539 m!5481767))

(assert (=> b!4631539 m!5481747))

(assert (=> b!4631539 m!5481763))

(declare-fun m!5481769 () Bool)

(assert (=> b!4631538 m!5481769))

(assert (=> b!4631246 d!1459695))

(declare-fun bs!1027897 () Bool)

(declare-fun d!1459701 () Bool)

(assert (= bs!1027897 (and d!1459701 b!4631252)))

(declare-fun lambda!193819 () Int)

(assert (=> bs!1027897 (= lambda!193819 lambda!193692)))

(declare-fun bs!1027900 () Bool)

(assert (= bs!1027900 (and d!1459701 d!1459595)))

(assert (=> bs!1027900 (= lambda!193819 lambda!193701)))

(declare-fun bs!1027901 () Bool)

(assert (= bs!1027901 (and d!1459701 d!1459615)))

(assert (=> bs!1027901 (= lambda!193819 lambda!193713)))

(declare-fun bs!1027902 () Bool)

(assert (= bs!1027902 (and d!1459701 d!1459677)))

(assert (=> bs!1027902 (= lambda!193819 lambda!193796)))

(declare-fun lt!1792124 () ListMap!4329)

(assert (=> d!1459701 (invariantList!1226 (toList!5025 lt!1792124))))

(declare-fun e!2889216 () ListMap!4329)

(assert (=> d!1459701 (= lt!1792124 e!2889216)))

(declare-fun c!792776 () Bool)

(assert (=> d!1459701 (= c!792776 ((_ is Cons!51605) Nil!51605))))

(assert (=> d!1459701 (forall!10868 Nil!51605 lambda!193819)))

(assert (=> d!1459701 (= (extractMap!1586 Nil!51605) lt!1792124)))

(declare-fun b!4631550 () Bool)

(assert (=> b!4631550 (= e!2889216 (addToMapMapFromBucket!991 (_2!29578 (h!57677 Nil!51605)) (extractMap!1586 (t!358783 Nil!51605))))))

(declare-fun b!4631551 () Bool)

(assert (=> b!4631551 (= e!2889216 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459701 c!792776) b!4631550))

(assert (= (and d!1459701 (not c!792776)) b!4631551))

(declare-fun m!5481771 () Bool)

(assert (=> d!1459701 m!5481771))

(declare-fun m!5481773 () Bool)

(assert (=> d!1459701 m!5481773))

(declare-fun m!5481775 () Bool)

(assert (=> b!4631550 m!5481775))

(assert (=> b!4631550 m!5481775))

(declare-fun m!5481777 () Bool)

(assert (=> b!4631550 m!5481777))

(assert (=> b!4631246 d!1459701))

(declare-fun b!4631560 () Bool)

(declare-fun e!2889221 () List!51728)

(assert (=> b!4631560 (= e!2889221 (t!358782 (t!358782 oldBucket!40)))))

(declare-fun b!4631563 () Bool)

(declare-fun e!2889222 () List!51728)

(assert (=> b!4631563 (= e!2889222 Nil!51604)))

(declare-fun b!4631562 () Bool)

(assert (=> b!4631562 (= e!2889222 (Cons!51604 (h!57676 (t!358782 oldBucket!40)) (removePairForKey!1153 (t!358782 (t!358782 oldBucket!40)) key!4968)))))

(declare-fun d!1459703 () Bool)

(declare-fun lt!1792127 () List!51728)

(assert (=> d!1459703 (not (containsKey!2514 lt!1792127 key!4968))))

(assert (=> d!1459703 (= lt!1792127 e!2889221)))

(declare-fun c!792781 () Bool)

(assert (=> d!1459703 (= c!792781 (and ((_ is Cons!51604) (t!358782 oldBucket!40)) (= (_1!29577 (h!57676 (t!358782 oldBucket!40))) key!4968)))))

(assert (=> d!1459703 (noDuplicateKeys!1530 (t!358782 oldBucket!40))))

(assert (=> d!1459703 (= (removePairForKey!1153 (t!358782 oldBucket!40) key!4968) lt!1792127)))

(declare-fun b!4631561 () Bool)

(assert (=> b!4631561 (= e!2889221 e!2889222)))

(declare-fun c!792782 () Bool)

(assert (=> b!4631561 (= c!792782 ((_ is Cons!51604) (t!358782 oldBucket!40)))))

(assert (= (and d!1459703 c!792781) b!4631560))

(assert (= (and d!1459703 (not c!792781)) b!4631561))

(assert (= (and b!4631561 c!792782) b!4631562))

(assert (= (and b!4631561 (not c!792782)) b!4631563))

(declare-fun m!5481779 () Bool)

(assert (=> b!4631562 m!5481779))

(declare-fun m!5481781 () Bool)

(assert (=> d!1459703 m!5481781))

(assert (=> d!1459703 m!5481157))

(assert (=> b!4631256 d!1459703))

(declare-fun d!1459705 () Bool)

(declare-fun hash!3570 (Hashable!5927 K!12975) (_ BitVec 64))

(assert (=> d!1459705 (= (hash!3566 hashF!1389 key!4968) (hash!3570 hashF!1389 key!4968))))

(declare-fun bs!1027918 () Bool)

(assert (= bs!1027918 d!1459705))

(declare-fun m!5481817 () Bool)

(assert (=> bs!1027918 m!5481817))

(assert (=> b!4631255 d!1459705))

(declare-fun d!1459707 () Bool)

(assert (=> d!1459707 (= (eq!845 lt!1791610 (+!1896 lt!1791589 (h!57676 oldBucket!40))) (= (content!8863 (toList!5025 lt!1791610)) (content!8863 (toList!5025 (+!1896 lt!1791589 (h!57676 oldBucket!40))))))))

(declare-fun bs!1027919 () Bool)

(assert (= bs!1027919 d!1459707))

(declare-fun m!5481819 () Bool)

(assert (=> bs!1027919 m!5481819))

(declare-fun m!5481821 () Bool)

(assert (=> bs!1027919 m!5481821))

(assert (=> b!4631249 d!1459707))

(declare-fun d!1459711 () Bool)

(declare-fun e!2889223 () Bool)

(assert (=> d!1459711 e!2889223))

(declare-fun res!1943277 () Bool)

(assert (=> d!1459711 (=> (not res!1943277) (not e!2889223))))

(declare-fun lt!1792131 () ListMap!4329)

(assert (=> d!1459711 (= res!1943277 (contains!14693 lt!1792131 (_1!29577 (h!57676 oldBucket!40))))))

(declare-fun lt!1792129 () List!51728)

(assert (=> d!1459711 (= lt!1792131 (ListMap!4330 lt!1792129))))

(declare-fun lt!1792130 () Unit!113380)

(declare-fun lt!1792128 () Unit!113380)

(assert (=> d!1459711 (= lt!1792130 lt!1792128)))

(assert (=> d!1459711 (= (getValueByKey!1495 lt!1792129 (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459711 (= lt!1792128 (lemmaContainsTupThenGetReturnValue!870 lt!1792129 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459711 (= lt!1792129 (insertNoDuplicatedKeys!378 (toList!5025 lt!1791589) (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459711 (= (+!1896 lt!1791589 (h!57676 oldBucket!40)) lt!1792131)))

(declare-fun b!4631564 () Bool)

(declare-fun res!1943278 () Bool)

(assert (=> b!4631564 (=> (not res!1943278) (not e!2889223))))

(assert (=> b!4631564 (= res!1943278 (= (getValueByKey!1495 (toList!5025 lt!1792131) (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40)))))))

(declare-fun b!4631565 () Bool)

(assert (=> b!4631565 (= e!2889223 (contains!14699 (toList!5025 lt!1792131) (h!57676 oldBucket!40)))))

(assert (= (and d!1459711 res!1943277) b!4631564))

(assert (= (and b!4631564 res!1943278) b!4631565))

(declare-fun m!5481823 () Bool)

(assert (=> d!1459711 m!5481823))

(declare-fun m!5481825 () Bool)

(assert (=> d!1459711 m!5481825))

(declare-fun m!5481827 () Bool)

(assert (=> d!1459711 m!5481827))

(declare-fun m!5481829 () Bool)

(assert (=> d!1459711 m!5481829))

(declare-fun m!5481831 () Bool)

(assert (=> b!4631564 m!5481831))

(declare-fun m!5481833 () Bool)

(assert (=> b!4631565 m!5481833))

(assert (=> b!4631249 d!1459711))

(declare-fun b!4631568 () Bool)

(declare-fun e!2889225 () List!51728)

(assert (=> b!4631568 (= e!2889225 (t!358782 oldBucket!40))))

(declare-fun b!4631571 () Bool)

(declare-fun e!2889226 () List!51728)

(assert (=> b!4631571 (= e!2889226 Nil!51604)))

(declare-fun b!4631570 () Bool)

(assert (=> b!4631570 (= e!2889226 (Cons!51604 (h!57676 oldBucket!40) (removePairForKey!1153 (t!358782 oldBucket!40) key!4968)))))

(declare-fun d!1459713 () Bool)

(declare-fun lt!1792133 () List!51728)

(assert (=> d!1459713 (not (containsKey!2514 lt!1792133 key!4968))))

(assert (=> d!1459713 (= lt!1792133 e!2889225)))

(declare-fun c!792784 () Bool)

(assert (=> d!1459713 (= c!792784 (and ((_ is Cons!51604) oldBucket!40) (= (_1!29577 (h!57676 oldBucket!40)) key!4968)))))

(assert (=> d!1459713 (noDuplicateKeys!1530 oldBucket!40)))

(assert (=> d!1459713 (= (removePairForKey!1153 oldBucket!40 key!4968) lt!1792133)))

(declare-fun b!4631569 () Bool)

(assert (=> b!4631569 (= e!2889225 e!2889226)))

(declare-fun c!792785 () Bool)

(assert (=> b!4631569 (= c!792785 ((_ is Cons!51604) oldBucket!40))))

(assert (= (and d!1459713 c!792784) b!4631568))

(assert (= (and d!1459713 (not c!792784)) b!4631569))

(assert (= (and b!4631569 c!792785) b!4631570))

(assert (= (and b!4631569 (not c!792785)) b!4631571))

(assert (=> b!4631570 m!5480991))

(declare-fun m!5481835 () Bool)

(assert (=> d!1459713 m!5481835))

(assert (=> d!1459713 m!5480963))

(assert (=> b!4631247 d!1459713))

(declare-fun d!1459715 () Bool)

(declare-fun dynLambda!21520 (Int tuple2!52568) Bool)

(assert (=> d!1459715 (dynLambda!21520 lambda!193692 lt!1791593)))

(declare-fun lt!1792141 () Unit!113380)

(declare-fun choose!31520 (List!51729 Int tuple2!52568) Unit!113380)

(assert (=> d!1459715 (= lt!1792141 (choose!31520 lt!1791619 lambda!193692 lt!1791593))))

(declare-fun e!2889231 () Bool)

(assert (=> d!1459715 e!2889231))

(declare-fun res!1943283 () Bool)

(assert (=> d!1459715 (=> (not res!1943283) (not e!2889231))))

(assert (=> d!1459715 (= res!1943283 (forall!10868 lt!1791619 lambda!193692))))

(assert (=> d!1459715 (= (forallContained!3096 lt!1791619 lambda!193692 lt!1791593) lt!1792141)))

(declare-fun b!4631578 () Bool)

(assert (=> b!4631578 (= e!2889231 (contains!14694 lt!1791619 lt!1791593))))

(assert (= (and d!1459715 res!1943283) b!4631578))

(declare-fun b_lambda!170887 () Bool)

(assert (=> (not b_lambda!170887) (not d!1459715)))

(declare-fun m!5481867 () Bool)

(assert (=> d!1459715 m!5481867))

(declare-fun m!5481869 () Bool)

(assert (=> d!1459715 m!5481869))

(declare-fun m!5481871 () Bool)

(assert (=> d!1459715 m!5481871))

(assert (=> b!4631578 m!5480891))

(assert (=> b!4631252 d!1459715))

(declare-fun d!1459725 () Bool)

(declare-fun lt!1792146 () Bool)

(declare-fun content!8865 (List!51729) (InoxSet tuple2!52568))

(assert (=> d!1459725 (= lt!1792146 (select (content!8865 lt!1791619) lt!1791593))))

(declare-fun e!2889239 () Bool)

(assert (=> d!1459725 (= lt!1792146 e!2889239)))

(declare-fun res!1943288 () Bool)

(assert (=> d!1459725 (=> (not res!1943288) (not e!2889239))))

(assert (=> d!1459725 (= res!1943288 ((_ is Cons!51605) lt!1791619))))

(assert (=> d!1459725 (= (contains!14694 lt!1791619 lt!1791593) lt!1792146)))

(declare-fun b!4631589 () Bool)

(declare-fun e!2889240 () Bool)

(assert (=> b!4631589 (= e!2889239 e!2889240)))

(declare-fun res!1943289 () Bool)

(assert (=> b!4631589 (=> res!1943289 e!2889240)))

(assert (=> b!4631589 (= res!1943289 (= (h!57677 lt!1791619) lt!1791593))))

(declare-fun b!4631590 () Bool)

(assert (=> b!4631590 (= e!2889240 (contains!14694 (t!358783 lt!1791619) lt!1791593))))

(assert (= (and d!1459725 res!1943288) b!4631589))

(assert (= (and b!4631589 (not res!1943289)) b!4631590))

(declare-fun m!5481883 () Bool)

(assert (=> d!1459725 m!5481883))

(declare-fun m!5481887 () Bool)

(assert (=> d!1459725 m!5481887))

(declare-fun m!5481891 () Bool)

(assert (=> b!4631590 m!5481891))

(assert (=> b!4631252 d!1459725))

(declare-fun d!1459731 () Bool)

(assert (=> d!1459731 (containsKey!2514 oldBucket!40 key!4968)))

(declare-fun lt!1792149 () Unit!113380)

(declare-fun choose!31521 (List!51728 K!12975 Hashable!5927) Unit!113380)

(assert (=> d!1459731 (= lt!1792149 (choose!31521 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1459731 (noDuplicateKeys!1530 oldBucket!40)))

(assert (=> d!1459731 (= (lemmaGetPairDefinedThenContainsKey!76 oldBucket!40 key!4968 hashF!1389) lt!1792149)))

(declare-fun bs!1027963 () Bool)

(assert (= bs!1027963 d!1459731))

(assert (=> bs!1027963 m!5480879))

(declare-fun m!5481895 () Bool)

(assert (=> bs!1027963 m!5481895))

(assert (=> bs!1027963 m!5480963))

(assert (=> b!4631252 d!1459731))

(declare-fun d!1459735 () Bool)

(assert (=> d!1459735 (contains!14694 (toList!5026 lt!1791616) (tuple2!52569 lt!1791602 lt!1791618))))

(declare-fun lt!1792152 () Unit!113380)

(declare-fun choose!31522 (ListLongMap!3615 (_ BitVec 64) List!51728) Unit!113380)

(assert (=> d!1459735 (= lt!1792152 (choose!31522 lt!1791616 lt!1791602 lt!1791618))))

(assert (=> d!1459735 (contains!14695 lt!1791616 lt!1791602)))

(assert (=> d!1459735 (= (lemmaGetValueImpliesTupleContained!127 lt!1791616 lt!1791602 lt!1791618) lt!1792152)))

(declare-fun bs!1027964 () Bool)

(assert (= bs!1027964 d!1459735))

(declare-fun m!5481897 () Bool)

(assert (=> bs!1027964 m!5481897))

(declare-fun m!5481899 () Bool)

(assert (=> bs!1027964 m!5481899))

(assert (=> bs!1027964 m!5480897))

(assert (=> b!4631252 d!1459735))

(declare-fun bs!1027965 () Bool)

(declare-fun d!1459737 () Bool)

(assert (= bs!1027965 (and d!1459737 b!4631252)))

(declare-fun lambda!193828 () Int)

(assert (=> bs!1027965 (= lambda!193828 lambda!193692)))

(declare-fun bs!1027966 () Bool)

(assert (= bs!1027966 (and d!1459737 d!1459677)))

(assert (=> bs!1027966 (= lambda!193828 lambda!193796)))

(declare-fun bs!1027967 () Bool)

(assert (= bs!1027967 (and d!1459737 d!1459701)))

(assert (=> bs!1027967 (= lambda!193828 lambda!193819)))

(declare-fun bs!1027968 () Bool)

(assert (= bs!1027968 (and d!1459737 d!1459615)))

(assert (=> bs!1027968 (= lambda!193828 lambda!193713)))

(declare-fun bs!1027969 () Bool)

(assert (= bs!1027969 (and d!1459737 d!1459595)))

(assert (=> bs!1027969 (= lambda!193828 lambda!193701)))

(assert (=> d!1459737 (contains!14695 lt!1791616 (hash!3566 hashF!1389 key!4968))))

(declare-fun lt!1792155 () Unit!113380)

(declare-fun choose!31523 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> d!1459737 (= lt!1792155 (choose!31523 lt!1791616 key!4968 hashF!1389))))

(assert (=> d!1459737 (forall!10868 (toList!5026 lt!1791616) lambda!193828)))

(assert (=> d!1459737 (= (lemmaInGenMapThenLongMapContainsHash!528 lt!1791616 key!4968 hashF!1389) lt!1792155)))

(declare-fun bs!1027970 () Bool)

(assert (= bs!1027970 d!1459737))

(assert (=> bs!1027970 m!5480901))

(assert (=> bs!1027970 m!5480901))

(declare-fun m!5481901 () Bool)

(assert (=> bs!1027970 m!5481901))

(declare-fun m!5481903 () Bool)

(assert (=> bs!1027970 m!5481903))

(declare-fun m!5481905 () Bool)

(assert (=> bs!1027970 m!5481905))

(assert (=> b!4631252 d!1459737))

(declare-fun d!1459739 () Bool)

(declare-fun isEmpty!28952 (Option!11656) Bool)

(assert (=> d!1459739 (= (isDefined!8921 (getPair!322 lt!1791618 key!4968)) (not (isEmpty!28952 (getPair!322 lt!1791618 key!4968))))))

(declare-fun bs!1027971 () Bool)

(assert (= bs!1027971 d!1459739))

(assert (=> bs!1027971 m!5480875))

(declare-fun m!5481907 () Bool)

(assert (=> bs!1027971 m!5481907))

(assert (=> b!4631252 d!1459739))

(declare-fun d!1459741 () Bool)

(declare-fun e!2889249 () Bool)

(assert (=> d!1459741 e!2889249))

(declare-fun res!1943292 () Bool)

(assert (=> d!1459741 (=> res!1943292 e!2889249)))

(declare-fun lt!1792166 () Bool)

(assert (=> d!1459741 (= res!1943292 (not lt!1792166))))

(declare-fun lt!1792165 () Bool)

(assert (=> d!1459741 (= lt!1792166 lt!1792165)))

(declare-fun lt!1792164 () Unit!113380)

(declare-fun e!2889250 () Unit!113380)

(assert (=> d!1459741 (= lt!1792164 e!2889250)))

(declare-fun c!792792 () Bool)

(assert (=> d!1459741 (= c!792792 lt!1792165)))

(declare-fun containsKey!2518 (List!51729 (_ BitVec 64)) Bool)

(assert (=> d!1459741 (= lt!1792165 (containsKey!2518 (toList!5026 lt!1791616) lt!1791602))))

(assert (=> d!1459741 (= (contains!14695 lt!1791616 lt!1791602) lt!1792166)))

(declare-fun b!4631604 () Bool)

(declare-fun lt!1792167 () Unit!113380)

(assert (=> b!4631604 (= e!2889250 lt!1792167)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1398 (List!51729 (_ BitVec 64)) Unit!113380)

(assert (=> b!4631604 (= lt!1792167 (lemmaContainsKeyImpliesGetValueByKeyDefined!1398 (toList!5026 lt!1791616) lt!1791602))))

(declare-datatypes ((Option!11660 0))(
  ( (None!11659) (Some!11659 (v!45833 List!51728)) )
))
(declare-fun isDefined!8925 (Option!11660) Bool)

(declare-fun getValueByKey!1496 (List!51729 (_ BitVec 64)) Option!11660)

(assert (=> b!4631604 (isDefined!8925 (getValueByKey!1496 (toList!5026 lt!1791616) lt!1791602))))

(declare-fun b!4631605 () Bool)

(declare-fun Unit!113499 () Unit!113380)

(assert (=> b!4631605 (= e!2889250 Unit!113499)))

(declare-fun b!4631606 () Bool)

(assert (=> b!4631606 (= e!2889249 (isDefined!8925 (getValueByKey!1496 (toList!5026 lt!1791616) lt!1791602)))))

(assert (= (and d!1459741 c!792792) b!4631604))

(assert (= (and d!1459741 (not c!792792)) b!4631605))

(assert (= (and d!1459741 (not res!1943292)) b!4631606))

(declare-fun m!5481909 () Bool)

(assert (=> d!1459741 m!5481909))

(declare-fun m!5481911 () Bool)

(assert (=> b!4631604 m!5481911))

(declare-fun m!5481913 () Bool)

(assert (=> b!4631604 m!5481913))

(assert (=> b!4631604 m!5481913))

(declare-fun m!5481915 () Bool)

(assert (=> b!4631604 m!5481915))

(assert (=> b!4631606 m!5481913))

(assert (=> b!4631606 m!5481913))

(assert (=> b!4631606 m!5481915))

(assert (=> b!4631252 d!1459741))

(declare-fun b!4631623 () Bool)

(declare-fun e!2889263 () Option!11656)

(assert (=> b!4631623 (= e!2889263 (Some!11655 (h!57676 lt!1791618)))))

(declare-fun b!4631624 () Bool)

(declare-fun e!2889264 () Option!11656)

(assert (=> b!4631624 (= e!2889263 e!2889264)))

(declare-fun c!792797 () Bool)

(assert (=> b!4631624 (= c!792797 ((_ is Cons!51604) lt!1791618))))

(declare-fun b!4631625 () Bool)

(declare-fun e!2889262 () Bool)

(assert (=> b!4631625 (= e!2889262 (not (containsKey!2514 lt!1791618 key!4968)))))

(declare-fun b!4631626 () Bool)

(assert (=> b!4631626 (= e!2889264 (getPair!322 (t!358782 lt!1791618) key!4968))))

(declare-fun b!4631627 () Bool)

(declare-fun e!2889265 () Bool)

(declare-fun lt!1792170 () Option!11656)

(declare-fun get!17133 (Option!11656) tuple2!52566)

(assert (=> b!4631627 (= e!2889265 (contains!14699 lt!1791618 (get!17133 lt!1792170)))))

(declare-fun b!4631628 () Bool)

(declare-fun res!1943301 () Bool)

(assert (=> b!4631628 (=> (not res!1943301) (not e!2889265))))

(assert (=> b!4631628 (= res!1943301 (= (_1!29577 (get!17133 lt!1792170)) key!4968))))

(declare-fun b!4631629 () Bool)

(declare-fun e!2889261 () Bool)

(assert (=> b!4631629 (= e!2889261 e!2889265)))

(declare-fun res!1943302 () Bool)

(assert (=> b!4631629 (=> (not res!1943302) (not e!2889265))))

(assert (=> b!4631629 (= res!1943302 (isDefined!8921 lt!1792170))))

(declare-fun b!4631630 () Bool)

(assert (=> b!4631630 (= e!2889264 None!11655)))

(declare-fun d!1459743 () Bool)

(assert (=> d!1459743 e!2889261))

(declare-fun res!1943304 () Bool)

(assert (=> d!1459743 (=> res!1943304 e!2889261)))

(assert (=> d!1459743 (= res!1943304 e!2889262)))

(declare-fun res!1943303 () Bool)

(assert (=> d!1459743 (=> (not res!1943303) (not e!2889262))))

(assert (=> d!1459743 (= res!1943303 (isEmpty!28952 lt!1792170))))

(assert (=> d!1459743 (= lt!1792170 e!2889263)))

(declare-fun c!792798 () Bool)

(assert (=> d!1459743 (= c!792798 (and ((_ is Cons!51604) lt!1791618) (= (_1!29577 (h!57676 lt!1791618)) key!4968)))))

(assert (=> d!1459743 (noDuplicateKeys!1530 lt!1791618)))

(assert (=> d!1459743 (= (getPair!322 lt!1791618 key!4968) lt!1792170)))

(assert (= (and d!1459743 c!792798) b!4631623))

(assert (= (and d!1459743 (not c!792798)) b!4631624))

(assert (= (and b!4631624 c!792797) b!4631626))

(assert (= (and b!4631624 (not c!792797)) b!4631630))

(assert (= (and d!1459743 res!1943303) b!4631625))

(assert (= (and d!1459743 (not res!1943304)) b!4631629))

(assert (= (and b!4631629 res!1943302) b!4631628))

(assert (= (and b!4631628 res!1943301) b!4631627))

(declare-fun m!5481917 () Bool)

(assert (=> d!1459743 m!5481917))

(declare-fun m!5481919 () Bool)

(assert (=> d!1459743 m!5481919))

(declare-fun m!5481921 () Bool)

(assert (=> b!4631628 m!5481921))

(assert (=> b!4631627 m!5481921))

(assert (=> b!4631627 m!5481921))

(declare-fun m!5481923 () Bool)

(assert (=> b!4631627 m!5481923))

(declare-fun m!5481925 () Bool)

(assert (=> b!4631625 m!5481925))

(declare-fun m!5481927 () Bool)

(assert (=> b!4631626 m!5481927))

(declare-fun m!5481929 () Bool)

(assert (=> b!4631629 m!5481929))

(assert (=> b!4631252 d!1459743))

(declare-fun d!1459745 () Bool)

(declare-fun res!1943309 () Bool)

(declare-fun e!2889270 () Bool)

(assert (=> d!1459745 (=> res!1943309 e!2889270)))

(assert (=> d!1459745 (= res!1943309 (and ((_ is Cons!51604) (t!358782 oldBucket!40)) (= (_1!29577 (h!57676 (t!358782 oldBucket!40))) key!4968)))))

(assert (=> d!1459745 (= (containsKey!2514 (t!358782 oldBucket!40) key!4968) e!2889270)))

(declare-fun b!4631635 () Bool)

(declare-fun e!2889271 () Bool)

(assert (=> b!4631635 (= e!2889270 e!2889271)))

(declare-fun res!1943310 () Bool)

(assert (=> b!4631635 (=> (not res!1943310) (not e!2889271))))

(assert (=> b!4631635 (= res!1943310 ((_ is Cons!51604) (t!358782 oldBucket!40)))))

(declare-fun b!4631636 () Bool)

(assert (=> b!4631636 (= e!2889271 (containsKey!2514 (t!358782 (t!358782 oldBucket!40)) key!4968))))

(assert (= (and d!1459745 (not res!1943309)) b!4631635))

(assert (= (and b!4631635 res!1943310) b!4631636))

(declare-fun m!5481931 () Bool)

(assert (=> b!4631636 m!5481931))

(assert (=> b!4631252 d!1459745))

(declare-fun d!1459747 () Bool)

(declare-fun get!17134 (Option!11660) List!51728)

(assert (=> d!1459747 (= (apply!12195 lt!1791616 lt!1791602) (get!17134 (getValueByKey!1496 (toList!5026 lt!1791616) lt!1791602)))))

(declare-fun bs!1027972 () Bool)

(assert (= bs!1027972 d!1459747))

(assert (=> bs!1027972 m!5481913))

(assert (=> bs!1027972 m!5481913))

(declare-fun m!5481933 () Bool)

(assert (=> bs!1027972 m!5481933))

(assert (=> b!4631252 d!1459747))

(declare-fun d!1459749 () Bool)

(declare-fun res!1943311 () Bool)

(declare-fun e!2889272 () Bool)

(assert (=> d!1459749 (=> res!1943311 e!2889272)))

(assert (=> d!1459749 (= res!1943311 (and ((_ is Cons!51604) oldBucket!40) (= (_1!29577 (h!57676 oldBucket!40)) key!4968)))))

(assert (=> d!1459749 (= (containsKey!2514 oldBucket!40 key!4968) e!2889272)))

(declare-fun b!4631637 () Bool)

(declare-fun e!2889273 () Bool)

(assert (=> b!4631637 (= e!2889272 e!2889273)))

(declare-fun res!1943312 () Bool)

(assert (=> b!4631637 (=> (not res!1943312) (not e!2889273))))

(assert (=> b!4631637 (= res!1943312 ((_ is Cons!51604) oldBucket!40))))

(declare-fun b!4631638 () Bool)

(assert (=> b!4631638 (= e!2889273 (containsKey!2514 (t!358782 oldBucket!40) key!4968))))

(assert (= (and d!1459749 (not res!1943311)) b!4631637))

(assert (= (and b!4631637 res!1943312) b!4631638))

(assert (=> b!4631638 m!5480887))

(assert (=> b!4631252 d!1459749))

(declare-fun bs!1027973 () Bool)

(declare-fun d!1459751 () Bool)

(assert (= bs!1027973 (and d!1459751 b!4631252)))

(declare-fun lambda!193835 () Int)

(assert (=> bs!1027973 (= lambda!193835 lambda!193692)))

(declare-fun bs!1027974 () Bool)

(assert (= bs!1027974 (and d!1459751 d!1459677)))

(assert (=> bs!1027974 (= lambda!193835 lambda!193796)))

(declare-fun bs!1027975 () Bool)

(assert (= bs!1027975 (and d!1459751 d!1459701)))

(assert (=> bs!1027975 (= lambda!193835 lambda!193819)))

(declare-fun bs!1027976 () Bool)

(assert (= bs!1027976 (and d!1459751 d!1459737)))

(assert (=> bs!1027976 (= lambda!193835 lambda!193828)))

(declare-fun bs!1027977 () Bool)

(assert (= bs!1027977 (and d!1459751 d!1459615)))

(assert (=> bs!1027977 (= lambda!193835 lambda!193713)))

(declare-fun bs!1027978 () Bool)

(assert (= bs!1027978 (and d!1459751 d!1459595)))

(assert (=> bs!1027978 (= lambda!193835 lambda!193701)))

(declare-fun e!2889279 () Bool)

(assert (=> d!1459751 e!2889279))

(declare-fun res!1943323 () Bool)

(assert (=> d!1459751 (=> (not res!1943323) (not e!2889279))))

(assert (=> d!1459751 (= res!1943323 (forall!10868 (toList!5026 lt!1791616) lambda!193835))))

(declare-fun lt!1792190 () Unit!113380)

(declare-fun choose!31524 (ListLongMap!3615 K!12975 Hashable!5927) Unit!113380)

(assert (=> d!1459751 (= lt!1792190 (choose!31524 lt!1791616 key!4968 hashF!1389))))

(assert (=> d!1459751 (forall!10868 (toList!5026 lt!1791616) lambda!193835)))

(assert (=> d!1459751 (= (lemmaInGenMapThenGetPairDefined!118 lt!1791616 key!4968 hashF!1389) lt!1792190)))

(declare-fun b!4631648 () Bool)

(declare-fun res!1943322 () Bool)

(assert (=> b!4631648 (=> (not res!1943322) (not e!2889279))))

(assert (=> b!4631648 (= res!1943322 (contains!14693 (extractMap!1586 (toList!5026 lt!1791616)) key!4968))))

(declare-fun e!2889278 () Bool)

(declare-fun b!4631650 () Bool)

(declare-fun lt!1792187 () (_ BitVec 64))

(declare-fun lt!1792189 () List!51728)

(assert (=> b!4631650 (= e!2889278 (= (getValueByKey!1496 (toList!5026 lt!1791616) lt!1792187) (Some!11659 lt!1792189)))))

(declare-fun b!4631647 () Bool)

(declare-fun res!1943321 () Bool)

(assert (=> b!4631647 (=> (not res!1943321) (not e!2889279))))

(declare-fun allKeysSameHashInMap!1552 (ListLongMap!3615 Hashable!5927) Bool)

(assert (=> b!4631647 (= res!1943321 (allKeysSameHashInMap!1552 lt!1791616 hashF!1389))))

(declare-fun b!4631649 () Bool)

(assert (=> b!4631649 (= e!2889279 (isDefined!8921 (getPair!322 (apply!12195 lt!1791616 (hash!3566 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1792194 () Unit!113380)

(assert (=> b!4631649 (= lt!1792194 (forallContained!3096 (toList!5026 lt!1791616) lambda!193835 (tuple2!52569 (hash!3566 hashF!1389 key!4968) (apply!12195 lt!1791616 (hash!3566 hashF!1389 key!4968)))))))

(declare-fun lt!1792193 () Unit!113380)

(declare-fun lt!1792188 () Unit!113380)

(assert (=> b!4631649 (= lt!1792193 lt!1792188)))

(assert (=> b!4631649 (contains!14694 (toList!5026 lt!1791616) (tuple2!52569 lt!1792187 lt!1792189))))

(assert (=> b!4631649 (= lt!1792188 (lemmaGetValueImpliesTupleContained!127 lt!1791616 lt!1792187 lt!1792189))))

(assert (=> b!4631649 e!2889278))

(declare-fun res!1943324 () Bool)

(assert (=> b!4631649 (=> (not res!1943324) (not e!2889278))))

(assert (=> b!4631649 (= res!1943324 (contains!14695 lt!1791616 lt!1792187))))

(assert (=> b!4631649 (= lt!1792189 (apply!12195 lt!1791616 (hash!3566 hashF!1389 key!4968)))))

(assert (=> b!4631649 (= lt!1792187 (hash!3566 hashF!1389 key!4968))))

(declare-fun lt!1792192 () Unit!113380)

(declare-fun lt!1792191 () Unit!113380)

(assert (=> b!4631649 (= lt!1792192 lt!1792191)))

(assert (=> b!4631649 (contains!14695 lt!1791616 (hash!3566 hashF!1389 key!4968))))

(assert (=> b!4631649 (= lt!1792191 (lemmaInGenMapThenLongMapContainsHash!528 lt!1791616 key!4968 hashF!1389))))

(assert (= (and d!1459751 res!1943323) b!4631647))

(assert (= (and b!4631647 res!1943321) b!4631648))

(assert (= (and b!4631648 res!1943322) b!4631649))

(assert (= (and b!4631649 res!1943324) b!4631650))

(declare-fun m!5481935 () Bool)

(assert (=> b!4631647 m!5481935))

(declare-fun m!5481937 () Bool)

(assert (=> d!1459751 m!5481937))

(declare-fun m!5481939 () Bool)

(assert (=> d!1459751 m!5481939))

(assert (=> d!1459751 m!5481937))

(declare-fun m!5481941 () Bool)

(assert (=> b!4631648 m!5481941))

(assert (=> b!4631648 m!5481941))

(declare-fun m!5481943 () Bool)

(assert (=> b!4631648 m!5481943))

(declare-fun m!5481945 () Bool)

(assert (=> b!4631649 m!5481945))

(declare-fun m!5481947 () Bool)

(assert (=> b!4631649 m!5481947))

(declare-fun m!5481949 () Bool)

(assert (=> b!4631649 m!5481949))

(assert (=> b!4631649 m!5481945))

(assert (=> b!4631649 m!5480901))

(assert (=> b!4631649 m!5481949))

(assert (=> b!4631649 m!5480901))

(assert (=> b!4631649 m!5481901))

(assert (=> b!4631649 m!5480895))

(assert (=> b!4631649 m!5480901))

(declare-fun m!5481951 () Bool)

(assert (=> b!4631649 m!5481951))

(declare-fun m!5481953 () Bool)

(assert (=> b!4631649 m!5481953))

(declare-fun m!5481955 () Bool)

(assert (=> b!4631649 m!5481955))

(declare-fun m!5481957 () Bool)

(assert (=> b!4631649 m!5481957))

(declare-fun m!5481959 () Bool)

(assert (=> b!4631650 m!5481959))

(assert (=> b!4631252 d!1459751))

(declare-fun d!1459753 () Bool)

(assert (=> d!1459753 (eq!845 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605)) (-!570 (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 (t!358782 oldBucket!40)) Nil!51605)) key!4968))))

(declare-fun lt!1792197 () Unit!113380)

(declare-fun choose!31525 ((_ BitVec 64) List!51728 List!51728 K!12975 Hashable!5927) Unit!113380)

(assert (=> d!1459753 (= lt!1792197 (choose!31525 hash!414 (t!358782 oldBucket!40) lt!1791598 key!4968 hashF!1389))))

(assert (=> d!1459753 (noDuplicateKeys!1530 (t!358782 oldBucket!40))))

(assert (=> d!1459753 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!132 hash!414 (t!358782 oldBucket!40) lt!1791598 key!4968 hashF!1389) lt!1792197)))

(declare-fun bs!1027979 () Bool)

(assert (= bs!1027979 d!1459753))

(declare-fun m!5481961 () Bool)

(assert (=> bs!1027979 m!5481961))

(declare-fun m!5481963 () Bool)

(assert (=> bs!1027979 m!5481963))

(declare-fun m!5481965 () Bool)

(assert (=> bs!1027979 m!5481965))

(assert (=> bs!1027979 m!5481961))

(assert (=> bs!1027979 m!5480969))

(assert (=> bs!1027979 m!5481963))

(declare-fun m!5481967 () Bool)

(assert (=> bs!1027979 m!5481967))

(assert (=> bs!1027979 m!5480969))

(assert (=> bs!1027979 m!5481157))

(assert (=> b!4631241 d!1459753))

(declare-fun d!1459755 () Bool)

(declare-fun e!2889280 () Bool)

(assert (=> d!1459755 e!2889280))

(declare-fun res!1943325 () Bool)

(assert (=> d!1459755 (=> (not res!1943325) (not e!2889280))))

(declare-fun lt!1792201 () ListMap!4329)

(assert (=> d!1459755 (= res!1943325 (contains!14693 lt!1792201 (_1!29577 (h!57676 oldBucket!40))))))

(declare-fun lt!1792199 () List!51728)

(assert (=> d!1459755 (= lt!1792201 (ListMap!4330 lt!1792199))))

(declare-fun lt!1792200 () Unit!113380)

(declare-fun lt!1792198 () Unit!113380)

(assert (=> d!1459755 (= lt!1792200 lt!1792198)))

(assert (=> d!1459755 (= (getValueByKey!1495 lt!1792199 (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459755 (= lt!1792198 (lemmaContainsTupThenGetReturnValue!870 lt!1792199 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459755 (= lt!1792199 (insertNoDuplicatedKeys!378 (toList!5025 lt!1791594) (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459755 (= (+!1896 lt!1791594 (h!57676 oldBucket!40)) lt!1792201)))

(declare-fun b!4631651 () Bool)

(declare-fun res!1943326 () Bool)

(assert (=> b!4631651 (=> (not res!1943326) (not e!2889280))))

(assert (=> b!4631651 (= res!1943326 (= (getValueByKey!1495 (toList!5025 lt!1792201) (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40)))))))

(declare-fun b!4631652 () Bool)

(assert (=> b!4631652 (= e!2889280 (contains!14699 (toList!5025 lt!1792201) (h!57676 oldBucket!40)))))

(assert (= (and d!1459755 res!1943325) b!4631651))

(assert (= (and b!4631651 res!1943326) b!4631652))

(declare-fun m!5481969 () Bool)

(assert (=> d!1459755 m!5481969))

(declare-fun m!5481971 () Bool)

(assert (=> d!1459755 m!5481971))

(declare-fun m!5481973 () Bool)

(assert (=> d!1459755 m!5481973))

(declare-fun m!5481975 () Bool)

(assert (=> d!1459755 m!5481975))

(declare-fun m!5481977 () Bool)

(assert (=> b!4631651 m!5481977))

(declare-fun m!5481979 () Bool)

(assert (=> b!4631652 m!5481979))

(assert (=> b!4631241 d!1459755))

(declare-fun d!1459757 () Bool)

(assert (=> d!1459757 (= (eq!845 lt!1791589 lt!1791609) (= (content!8863 (toList!5025 lt!1791589)) (content!8863 (toList!5025 lt!1791609))))))

(declare-fun bs!1027980 () Bool)

(assert (= bs!1027980 d!1459757))

(declare-fun m!5481981 () Bool)

(assert (=> bs!1027980 m!5481981))

(declare-fun m!5481983 () Bool)

(assert (=> bs!1027980 m!5481983))

(assert (=> b!4631241 d!1459757))

(declare-fun d!1459759 () Bool)

(declare-fun e!2889281 () Bool)

(assert (=> d!1459759 e!2889281))

(declare-fun res!1943327 () Bool)

(assert (=> d!1459759 (=> (not res!1943327) (not e!2889281))))

(declare-fun lt!1792202 () ListMap!4329)

(assert (=> d!1459759 (= res!1943327 (not (contains!14693 lt!1792202 key!4968)))))

(assert (=> d!1459759 (= lt!1792202 (ListMap!4330 (removePresrvNoDuplicatedKeys!275 (toList!5025 (+!1896 lt!1791594 (h!57676 oldBucket!40))) key!4968)))))

(assert (=> d!1459759 (= (-!570 (+!1896 lt!1791594 (h!57676 oldBucket!40)) key!4968) lt!1792202)))

(declare-fun b!4631653 () Bool)

(assert (=> b!4631653 (= e!2889281 (= ((_ map and) (content!8864 (keys!18200 (+!1896 lt!1791594 (h!57676 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12975 Bool)) false) key!4968 true))) (content!8864 (keys!18200 lt!1792202))))))

(assert (= (and d!1459759 res!1943327) b!4631653))

(declare-fun m!5481985 () Bool)

(assert (=> d!1459759 m!5481985))

(declare-fun m!5481987 () Bool)

(assert (=> d!1459759 m!5481987))

(assert (=> b!4631653 m!5480983))

(declare-fun m!5481989 () Bool)

(assert (=> b!4631653 m!5481989))

(declare-fun m!5481991 () Bool)

(assert (=> b!4631653 m!5481991))

(assert (=> b!4631653 m!5481083))

(assert (=> b!4631653 m!5481991))

(declare-fun m!5481993 () Bool)

(assert (=> b!4631653 m!5481993))

(assert (=> b!4631653 m!5481989))

(declare-fun m!5481995 () Bool)

(assert (=> b!4631653 m!5481995))

(assert (=> b!4631241 d!1459759))

(declare-fun d!1459761 () Bool)

(declare-fun e!2889282 () Bool)

(assert (=> d!1459761 e!2889282))

(declare-fun res!1943328 () Bool)

(assert (=> d!1459761 (=> (not res!1943328) (not e!2889282))))

(declare-fun lt!1792203 () ListMap!4329)

(assert (=> d!1459761 (= res!1943328 (not (contains!14693 lt!1792203 key!4968)))))

(assert (=> d!1459761 (= lt!1792203 (ListMap!4330 (removePresrvNoDuplicatedKeys!275 (toList!5025 lt!1791594) key!4968)))))

(assert (=> d!1459761 (= (-!570 lt!1791594 key!4968) lt!1792203)))

(declare-fun b!4631654 () Bool)

(assert (=> b!4631654 (= e!2889282 (= ((_ map and) (content!8864 (keys!18200 lt!1791594)) ((_ map not) (store ((as const (Array K!12975 Bool)) false) key!4968 true))) (content!8864 (keys!18200 lt!1792203))))))

(assert (= (and d!1459761 res!1943328) b!4631654))

(declare-fun m!5481997 () Bool)

(assert (=> d!1459761 m!5481997))

(declare-fun m!5481999 () Bool)

(assert (=> d!1459761 m!5481999))

(assert (=> b!4631654 m!5481347))

(declare-fun m!5482001 () Bool)

(assert (=> b!4631654 m!5482001))

(assert (=> b!4631654 m!5481083))

(assert (=> b!4631654 m!5482001))

(declare-fun m!5482003 () Bool)

(assert (=> b!4631654 m!5482003))

(assert (=> b!4631654 m!5481347))

(declare-fun m!5482005 () Bool)

(assert (=> b!4631654 m!5482005))

(assert (=> b!4631241 d!1459761))

(declare-fun d!1459763 () Bool)

(assert (=> d!1459763 (= (-!570 (+!1896 lt!1791594 (tuple2!52567 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40)))) key!4968) (+!1896 (-!570 lt!1791594 key!4968) (tuple2!52567 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40)))))))

(declare-fun lt!1792206 () Unit!113380)

(declare-fun choose!31526 (ListMap!4329 K!12975 V!13221 K!12975) Unit!113380)

(assert (=> d!1459763 (= lt!1792206 (choose!31526 lt!1791594 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40)) key!4968))))

(assert (=> d!1459763 (not (= (_1!29577 (h!57676 oldBucket!40)) key!4968))))

(assert (=> d!1459763 (= (addRemoveCommutativeForDiffKeys!25 lt!1791594 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40)) key!4968) lt!1792206)))

(declare-fun bs!1027981 () Bool)

(assert (= bs!1027981 d!1459763))

(assert (=> bs!1027981 m!5480977))

(declare-fun m!5482007 () Bool)

(assert (=> bs!1027981 m!5482007))

(declare-fun m!5482009 () Bool)

(assert (=> bs!1027981 m!5482009))

(declare-fun m!5482011 () Bool)

(assert (=> bs!1027981 m!5482011))

(assert (=> bs!1027981 m!5482011))

(declare-fun m!5482013 () Bool)

(assert (=> bs!1027981 m!5482013))

(assert (=> bs!1027981 m!5480977))

(assert (=> b!4631241 d!1459763))

(declare-fun d!1459765 () Bool)

(declare-fun e!2889283 () Bool)

(assert (=> d!1459765 e!2889283))

(declare-fun res!1943329 () Bool)

(assert (=> d!1459765 (=> (not res!1943329) (not e!2889283))))

(declare-fun lt!1792210 () ListMap!4329)

(assert (=> d!1459765 (= res!1943329 (contains!14693 lt!1792210 (_1!29577 (h!57676 oldBucket!40))))))

(declare-fun lt!1792208 () List!51728)

(assert (=> d!1459765 (= lt!1792210 (ListMap!4330 lt!1792208))))

(declare-fun lt!1792209 () Unit!113380)

(declare-fun lt!1792207 () Unit!113380)

(assert (=> d!1459765 (= lt!1792209 lt!1792207)))

(assert (=> d!1459765 (= (getValueByKey!1495 lt!1792208 (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459765 (= lt!1792207 (lemmaContainsTupThenGetReturnValue!870 lt!1792208 (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459765 (= lt!1792208 (insertNoDuplicatedKeys!378 (toList!5025 lt!1791609) (_1!29577 (h!57676 oldBucket!40)) (_2!29577 (h!57676 oldBucket!40))))))

(assert (=> d!1459765 (= (+!1896 lt!1791609 (h!57676 oldBucket!40)) lt!1792210)))

(declare-fun b!4631655 () Bool)

(declare-fun res!1943330 () Bool)

(assert (=> b!4631655 (=> (not res!1943330) (not e!2889283))))

(assert (=> b!4631655 (= res!1943330 (= (getValueByKey!1495 (toList!5025 lt!1792210) (_1!29577 (h!57676 oldBucket!40))) (Some!11658 (_2!29577 (h!57676 oldBucket!40)))))))

(declare-fun b!4631656 () Bool)

(assert (=> b!4631656 (= e!2889283 (contains!14699 (toList!5025 lt!1792210) (h!57676 oldBucket!40)))))

(assert (= (and d!1459765 res!1943329) b!4631655))

(assert (= (and b!4631655 res!1943330) b!4631656))

(declare-fun m!5482015 () Bool)

(assert (=> d!1459765 m!5482015))

(declare-fun m!5482017 () Bool)

(assert (=> d!1459765 m!5482017))

(declare-fun m!5482019 () Bool)

(assert (=> d!1459765 m!5482019))

(declare-fun m!5482021 () Bool)

(assert (=> d!1459765 m!5482021))

(declare-fun m!5482023 () Bool)

(assert (=> b!4631655 m!5482023))

(declare-fun m!5482025 () Bool)

(assert (=> b!4631656 m!5482025))

(assert (=> b!4631241 d!1459765))

(declare-fun d!1459767 () Bool)

(declare-fun e!2889284 () Bool)

(assert (=> d!1459767 e!2889284))

(declare-fun res!1943331 () Bool)

(assert (=> d!1459767 (=> (not res!1943331) (not e!2889284))))

(declare-fun lt!1792211 () ListMap!4329)

(assert (=> d!1459767 (= res!1943331 (not (contains!14693 lt!1792211 key!4968)))))

(assert (=> d!1459767 (= lt!1792211 (ListMap!4330 (removePresrvNoDuplicatedKeys!275 (toList!5025 lt!1791597) key!4968)))))

(assert (=> d!1459767 (= (-!570 lt!1791597 key!4968) lt!1792211)))

(declare-fun b!4631657 () Bool)

(assert (=> b!4631657 (= e!2889284 (= ((_ map and) (content!8864 (keys!18200 lt!1791597)) ((_ map not) (store ((as const (Array K!12975 Bool)) false) key!4968 true))) (content!8864 (keys!18200 lt!1792211))))))

(assert (= (and d!1459767 res!1943331) b!4631657))

(declare-fun m!5482027 () Bool)

(assert (=> d!1459767 m!5482027))

(declare-fun m!5482029 () Bool)

(assert (=> d!1459767 m!5482029))

(declare-fun m!5482031 () Bool)

(assert (=> b!4631657 m!5482031))

(declare-fun m!5482033 () Bool)

(assert (=> b!4631657 m!5482033))

(assert (=> b!4631657 m!5481083))

(assert (=> b!4631657 m!5482033))

(declare-fun m!5482035 () Bool)

(assert (=> b!4631657 m!5482035))

(assert (=> b!4631657 m!5482031))

(declare-fun m!5482037 () Bool)

(assert (=> b!4631657 m!5482037))

(assert (=> b!4631241 d!1459767))

(declare-fun d!1459769 () Bool)

(declare-fun res!1943332 () Bool)

(declare-fun e!2889285 () Bool)

(assert (=> d!1459769 (=> res!1943332 e!2889285)))

(assert (=> d!1459769 (= res!1943332 (not ((_ is Cons!51604) newBucket!224)))))

(assert (=> d!1459769 (= (noDuplicateKeys!1530 newBucket!224) e!2889285)))

(declare-fun b!4631658 () Bool)

(declare-fun e!2889286 () Bool)

(assert (=> b!4631658 (= e!2889285 e!2889286)))

(declare-fun res!1943333 () Bool)

(assert (=> b!4631658 (=> (not res!1943333) (not e!2889286))))

(assert (=> b!4631658 (= res!1943333 (not (containsKey!2514 (t!358782 newBucket!224) (_1!29577 (h!57676 newBucket!224)))))))

(declare-fun b!4631659 () Bool)

(assert (=> b!4631659 (= e!2889286 (noDuplicateKeys!1530 (t!358782 newBucket!224)))))

(assert (= (and d!1459769 (not res!1943332)) b!4631658))

(assert (= (and b!4631658 res!1943333) b!4631659))

(declare-fun m!5482039 () Bool)

(assert (=> b!4631658 m!5482039))

(declare-fun m!5482041 () Bool)

(assert (=> b!4631659 m!5482041))

(assert (=> b!4631251 d!1459769))

(declare-fun b!4631660 () Bool)

(declare-fun e!2889287 () List!51728)

(assert (=> b!4631660 (= e!2889287 (t!358782 lt!1791591))))

(declare-fun b!4631663 () Bool)

(declare-fun e!2889288 () List!51728)

(assert (=> b!4631663 (= e!2889288 Nil!51604)))

(declare-fun b!4631662 () Bool)

(assert (=> b!4631662 (= e!2889288 (Cons!51604 (h!57676 lt!1791591) (removePairForKey!1153 (t!358782 lt!1791591) key!4968)))))

(declare-fun d!1459771 () Bool)

(declare-fun lt!1792212 () List!51728)

(assert (=> d!1459771 (not (containsKey!2514 lt!1792212 key!4968))))

(assert (=> d!1459771 (= lt!1792212 e!2889287)))

(declare-fun c!792799 () Bool)

(assert (=> d!1459771 (= c!792799 (and ((_ is Cons!51604) lt!1791591) (= (_1!29577 (h!57676 lt!1791591)) key!4968)))))

(assert (=> d!1459771 (noDuplicateKeys!1530 lt!1791591)))

(assert (=> d!1459771 (= (removePairForKey!1153 lt!1791591 key!4968) lt!1792212)))

(declare-fun b!4631661 () Bool)

(assert (=> b!4631661 (= e!2889287 e!2889288)))

(declare-fun c!792800 () Bool)

(assert (=> b!4631661 (= c!792800 ((_ is Cons!51604) lt!1791591))))

(assert (= (and d!1459771 c!792799) b!4631660))

(assert (= (and d!1459771 (not c!792799)) b!4631661))

(assert (= (and b!4631661 c!792800) b!4631662))

(assert (= (and b!4631661 (not c!792800)) b!4631663))

(declare-fun m!5482043 () Bool)

(assert (=> b!4631662 m!5482043))

(declare-fun m!5482045 () Bool)

(assert (=> d!1459771 m!5482045))

(assert (=> d!1459771 m!5481219))

(assert (=> b!4631240 d!1459771))

(declare-fun d!1459773 () Bool)

(assert (=> d!1459773 (= (tail!8165 newBucket!224) (t!358782 newBucket!224))))

(assert (=> b!4631240 d!1459773))

(declare-fun d!1459775 () Bool)

(assert (=> d!1459775 (= (tail!8165 oldBucket!40) (t!358782 oldBucket!40))))

(assert (=> b!4631240 d!1459775))

(declare-fun b!4631664 () Bool)

(declare-fun e!2889294 () List!51731)

(assert (=> b!4631664 (= e!2889294 (keys!18200 lt!1791615))))

(declare-fun bm!323196 () Bool)

(declare-fun call!323201 () Bool)

(assert (=> bm!323196 (= call!323201 (contains!14698 e!2889294 key!4968))))

(declare-fun c!792803 () Bool)

(declare-fun c!792802 () Bool)

(assert (=> bm!323196 (= c!792803 c!792802)))

(declare-fun b!4631665 () Bool)

(assert (=> b!4631665 (= e!2889294 (getKeysList!677 (toList!5025 lt!1791615)))))

(declare-fun b!4631666 () Bool)

(declare-fun e!2889291 () Unit!113380)

(declare-fun Unit!113500 () Unit!113380)

(assert (=> b!4631666 (= e!2889291 Unit!113500)))

(declare-fun b!4631667 () Bool)

(declare-fun e!2889292 () Bool)

(assert (=> b!4631667 (= e!2889292 (not (contains!14698 (keys!18200 lt!1791615) key!4968)))))

(declare-fun b!4631668 () Bool)

(declare-fun e!2889289 () Unit!113380)

(declare-fun lt!1792219 () Unit!113380)

(assert (=> b!4631668 (= e!2889289 lt!1792219)))

(declare-fun lt!1792218 () Unit!113380)

(assert (=> b!4631668 (= lt!1792218 (lemmaContainsKeyImpliesGetValueByKeyDefined!1397 (toList!5025 lt!1791615) key!4968))))

(assert (=> b!4631668 (isDefined!8924 (getValueByKey!1495 (toList!5025 lt!1791615) key!4968))))

(declare-fun lt!1792215 () Unit!113380)

(assert (=> b!4631668 (= lt!1792215 lt!1792218)))

(assert (=> b!4631668 (= lt!1792219 (lemmaInListThenGetKeysListContains!672 (toList!5025 lt!1791615) key!4968))))

(assert (=> b!4631668 call!323201))

(declare-fun b!4631669 () Bool)

(declare-fun e!2889290 () Bool)

(declare-fun e!2889293 () Bool)

(assert (=> b!4631669 (= e!2889290 e!2889293)))

(declare-fun res!1943336 () Bool)

(assert (=> b!4631669 (=> (not res!1943336) (not e!2889293))))

(assert (=> b!4631669 (= res!1943336 (isDefined!8924 (getValueByKey!1495 (toList!5025 lt!1791615) key!4968)))))

(declare-fun b!4631670 () Bool)

(assert (=> b!4631670 (= e!2889293 (contains!14698 (keys!18200 lt!1791615) key!4968))))

(declare-fun d!1459777 () Bool)

(assert (=> d!1459777 e!2889290))

(declare-fun res!1943335 () Bool)

(assert (=> d!1459777 (=> res!1943335 e!2889290)))

(assert (=> d!1459777 (= res!1943335 e!2889292)))

(declare-fun res!1943334 () Bool)

(assert (=> d!1459777 (=> (not res!1943334) (not e!2889292))))

(declare-fun lt!1792214 () Bool)

(assert (=> d!1459777 (= res!1943334 (not lt!1792214))))

(declare-fun lt!1792217 () Bool)

(assert (=> d!1459777 (= lt!1792214 lt!1792217)))

(declare-fun lt!1792220 () Unit!113380)

(assert (=> d!1459777 (= lt!1792220 e!2889289)))

(assert (=> d!1459777 (= c!792802 lt!1792217)))

(assert (=> d!1459777 (= lt!1792217 (containsKey!2517 (toList!5025 lt!1791615) key!4968))))

(assert (=> d!1459777 (= (contains!14693 lt!1791615 key!4968) lt!1792214)))

(declare-fun b!4631671 () Bool)

(assert (=> b!4631671 false))

(declare-fun lt!1792216 () Unit!113380)

(declare-fun lt!1792213 () Unit!113380)

(assert (=> b!4631671 (= lt!1792216 lt!1792213)))

(assert (=> b!4631671 (containsKey!2517 (toList!5025 lt!1791615) key!4968)))

(assert (=> b!4631671 (= lt!1792213 (lemmaInGetKeysListThenContainsKey!676 (toList!5025 lt!1791615) key!4968))))

(declare-fun Unit!113501 () Unit!113380)

(assert (=> b!4631671 (= e!2889291 Unit!113501)))

(declare-fun b!4631672 () Bool)

(assert (=> b!4631672 (= e!2889289 e!2889291)))

(declare-fun c!792801 () Bool)

(assert (=> b!4631672 (= c!792801 call!323201)))

(assert (= (and d!1459777 c!792802) b!4631668))

(assert (= (and d!1459777 (not c!792802)) b!4631672))

(assert (= (and b!4631672 c!792801) b!4631671))

(assert (= (and b!4631672 (not c!792801)) b!4631666))

(assert (= (or b!4631668 b!4631672) bm!323196))

(assert (= (and bm!323196 c!792803) b!4631665))

(assert (= (and bm!323196 (not c!792803)) b!4631664))

(assert (= (and d!1459777 res!1943334) b!4631667))

(assert (= (and d!1459777 (not res!1943335)) b!4631669))

(assert (= (and b!4631669 res!1943336) b!4631670))

(declare-fun m!5482047 () Bool)

(assert (=> b!4631668 m!5482047))

(declare-fun m!5482049 () Bool)

(assert (=> b!4631668 m!5482049))

(assert (=> b!4631668 m!5482049))

(declare-fun m!5482051 () Bool)

(assert (=> b!4631668 m!5482051))

(declare-fun m!5482053 () Bool)

(assert (=> b!4631668 m!5482053))

(assert (=> b!4631670 m!5481079))

(assert (=> b!4631670 m!5481079))

(declare-fun m!5482055 () Bool)

(assert (=> b!4631670 m!5482055))

(declare-fun m!5482057 () Bool)

(assert (=> d!1459777 m!5482057))

(assert (=> b!4631669 m!5482049))

(assert (=> b!4631669 m!5482049))

(assert (=> b!4631669 m!5482051))

(assert (=> b!4631664 m!5481079))

(declare-fun m!5482059 () Bool)

(assert (=> bm!323196 m!5482059))

(assert (=> b!4631667 m!5481079))

(assert (=> b!4631667 m!5481079))

(assert (=> b!4631667 m!5482055))

(declare-fun m!5482061 () Bool)

(assert (=> b!4631665 m!5482061))

(assert (=> b!4631671 m!5482057))

(declare-fun m!5482063 () Bool)

(assert (=> b!4631671 m!5482063))

(assert (=> b!4631250 d!1459777))

(declare-fun bs!1027982 () Bool)

(declare-fun d!1459779 () Bool)

(assert (= bs!1027982 (and d!1459779 b!4631252)))

(declare-fun lambda!193836 () Int)

(assert (=> bs!1027982 (= lambda!193836 lambda!193692)))

(declare-fun bs!1027983 () Bool)

(assert (= bs!1027983 (and d!1459779 d!1459677)))

(assert (=> bs!1027983 (= lambda!193836 lambda!193796)))

(declare-fun bs!1027984 () Bool)

(assert (= bs!1027984 (and d!1459779 d!1459701)))

(assert (=> bs!1027984 (= lambda!193836 lambda!193819)))

(declare-fun bs!1027985 () Bool)

(assert (= bs!1027985 (and d!1459779 d!1459737)))

(assert (=> bs!1027985 (= lambda!193836 lambda!193828)))

(declare-fun bs!1027986 () Bool)

(assert (= bs!1027986 (and d!1459779 d!1459751)))

(assert (=> bs!1027986 (= lambda!193836 lambda!193835)))

(declare-fun bs!1027987 () Bool)

(assert (= bs!1027987 (and d!1459779 d!1459615)))

(assert (=> bs!1027987 (= lambda!193836 lambda!193713)))

(declare-fun bs!1027988 () Bool)

(assert (= bs!1027988 (and d!1459779 d!1459595)))

(assert (=> bs!1027988 (= lambda!193836 lambda!193701)))

(declare-fun lt!1792221 () ListMap!4329)

(assert (=> d!1459779 (invariantList!1226 (toList!5025 lt!1792221))))

(declare-fun e!2889295 () ListMap!4329)

(assert (=> d!1459779 (= lt!1792221 e!2889295)))

(declare-fun c!792804 () Bool)

(assert (=> d!1459779 (= c!792804 ((_ is Cons!51605) lt!1791619))))

(assert (=> d!1459779 (forall!10868 lt!1791619 lambda!193836)))

(assert (=> d!1459779 (= (extractMap!1586 lt!1791619) lt!1792221)))

(declare-fun b!4631673 () Bool)

(assert (=> b!4631673 (= e!2889295 (addToMapMapFromBucket!991 (_2!29578 (h!57677 lt!1791619)) (extractMap!1586 (t!358783 lt!1791619))))))

(declare-fun b!4631674 () Bool)

(assert (=> b!4631674 (= e!2889295 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459779 c!792804) b!4631673))

(assert (= (and d!1459779 (not c!792804)) b!4631674))

(declare-fun m!5482065 () Bool)

(assert (=> d!1459779 m!5482065))

(declare-fun m!5482067 () Bool)

(assert (=> d!1459779 m!5482067))

(declare-fun m!5482069 () Bool)

(assert (=> b!4631673 m!5482069))

(assert (=> b!4631673 m!5482069))

(declare-fun m!5482071 () Bool)

(assert (=> b!4631673 m!5482071))

(assert (=> b!4631250 d!1459779))

(declare-fun d!1459781 () Bool)

(assert (=> d!1459781 (= (eq!845 lt!1791610 (+!1896 lt!1791589 lt!1791608)) (= (content!8863 (toList!5025 lt!1791610)) (content!8863 (toList!5025 (+!1896 lt!1791589 lt!1791608)))))))

(declare-fun bs!1027989 () Bool)

(assert (= bs!1027989 d!1459781))

(assert (=> bs!1027989 m!5481819))

(declare-fun m!5482073 () Bool)

(assert (=> bs!1027989 m!5482073))

(assert (=> b!4631239 d!1459781))

(declare-fun d!1459783 () Bool)

(declare-fun e!2889296 () Bool)

(assert (=> d!1459783 e!2889296))

(declare-fun res!1943337 () Bool)

(assert (=> d!1459783 (=> (not res!1943337) (not e!2889296))))

(declare-fun lt!1792225 () ListMap!4329)

(assert (=> d!1459783 (= res!1943337 (contains!14693 lt!1792225 (_1!29577 lt!1791608)))))

(declare-fun lt!1792223 () List!51728)

(assert (=> d!1459783 (= lt!1792225 (ListMap!4330 lt!1792223))))

(declare-fun lt!1792224 () Unit!113380)

(declare-fun lt!1792222 () Unit!113380)

(assert (=> d!1459783 (= lt!1792224 lt!1792222)))

(assert (=> d!1459783 (= (getValueByKey!1495 lt!1792223 (_1!29577 lt!1791608)) (Some!11658 (_2!29577 lt!1791608)))))

(assert (=> d!1459783 (= lt!1792222 (lemmaContainsTupThenGetReturnValue!870 lt!1792223 (_1!29577 lt!1791608) (_2!29577 lt!1791608)))))

(assert (=> d!1459783 (= lt!1792223 (insertNoDuplicatedKeys!378 (toList!5025 lt!1791589) (_1!29577 lt!1791608) (_2!29577 lt!1791608)))))

(assert (=> d!1459783 (= (+!1896 lt!1791589 lt!1791608) lt!1792225)))

(declare-fun b!4631675 () Bool)

(declare-fun res!1943338 () Bool)

(assert (=> b!4631675 (=> (not res!1943338) (not e!2889296))))

(assert (=> b!4631675 (= res!1943338 (= (getValueByKey!1495 (toList!5025 lt!1792225) (_1!29577 lt!1791608)) (Some!11658 (_2!29577 lt!1791608))))))

(declare-fun b!4631676 () Bool)

(assert (=> b!4631676 (= e!2889296 (contains!14699 (toList!5025 lt!1792225) lt!1791608))))

(assert (= (and d!1459783 res!1943337) b!4631675))

(assert (= (and b!4631675 res!1943338) b!4631676))

(declare-fun m!5482075 () Bool)

(assert (=> d!1459783 m!5482075))

(declare-fun m!5482077 () Bool)

(assert (=> d!1459783 m!5482077))

(declare-fun m!5482079 () Bool)

(assert (=> d!1459783 m!5482079))

(declare-fun m!5482081 () Bool)

(assert (=> d!1459783 m!5482081))

(declare-fun m!5482083 () Bool)

(assert (=> b!4631675 m!5482083))

(declare-fun m!5482085 () Bool)

(assert (=> b!4631676 m!5482085))

(assert (=> b!4631239 d!1459783))

(declare-fun bs!1027990 () Bool)

(declare-fun d!1459785 () Bool)

(assert (= bs!1027990 (and d!1459785 d!1459779)))

(declare-fun lambda!193837 () Int)

(assert (=> bs!1027990 (= lambda!193837 lambda!193836)))

(declare-fun bs!1027991 () Bool)

(assert (= bs!1027991 (and d!1459785 b!4631252)))

(assert (=> bs!1027991 (= lambda!193837 lambda!193692)))

(declare-fun bs!1027992 () Bool)

(assert (= bs!1027992 (and d!1459785 d!1459677)))

(assert (=> bs!1027992 (= lambda!193837 lambda!193796)))

(declare-fun bs!1027993 () Bool)

(assert (= bs!1027993 (and d!1459785 d!1459701)))

(assert (=> bs!1027993 (= lambda!193837 lambda!193819)))

(declare-fun bs!1027994 () Bool)

(assert (= bs!1027994 (and d!1459785 d!1459737)))

(assert (=> bs!1027994 (= lambda!193837 lambda!193828)))

(declare-fun bs!1027995 () Bool)

(assert (= bs!1027995 (and d!1459785 d!1459751)))

(assert (=> bs!1027995 (= lambda!193837 lambda!193835)))

(declare-fun bs!1027996 () Bool)

(assert (= bs!1027996 (and d!1459785 d!1459615)))

(assert (=> bs!1027996 (= lambda!193837 lambda!193713)))

(declare-fun bs!1027997 () Bool)

(assert (= bs!1027997 (and d!1459785 d!1459595)))

(assert (=> bs!1027997 (= lambda!193837 lambda!193701)))

(declare-fun lt!1792226 () ListMap!4329)

(assert (=> d!1459785 (invariantList!1226 (toList!5025 lt!1792226))))

(declare-fun e!2889297 () ListMap!4329)

(assert (=> d!1459785 (= lt!1792226 e!2889297)))

(declare-fun c!792805 () Bool)

(assert (=> d!1459785 (= c!792805 ((_ is Cons!51605) (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605)))))

(assert (=> d!1459785 (forall!10868 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605) lambda!193837)))

(assert (=> d!1459785 (= (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605)) lt!1792226)))

(declare-fun b!4631677 () Bool)

(assert (=> b!4631677 (= e!2889297 (addToMapMapFromBucket!991 (_2!29578 (h!57677 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605))) (extractMap!1586 (t!358783 (Cons!51605 (tuple2!52569 hash!414 lt!1791598) Nil!51605)))))))

(declare-fun b!4631678 () Bool)

(assert (=> b!4631678 (= e!2889297 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459785 c!792805) b!4631677))

(assert (= (and d!1459785 (not c!792805)) b!4631678))

(declare-fun m!5482087 () Bool)

(assert (=> d!1459785 m!5482087))

(declare-fun m!5482089 () Bool)

(assert (=> d!1459785 m!5482089))

(declare-fun m!5482091 () Bool)

(assert (=> b!4631677 m!5482091))

(assert (=> b!4631677 m!5482091))

(declare-fun m!5482093 () Bool)

(assert (=> b!4631677 m!5482093))

(assert (=> b!4631239 d!1459785))

(declare-fun bs!1027998 () Bool)

(declare-fun d!1459787 () Bool)

(assert (= bs!1027998 (and d!1459787 d!1459779)))

(declare-fun lambda!193838 () Int)

(assert (=> bs!1027998 (= lambda!193838 lambda!193836)))

(declare-fun bs!1027999 () Bool)

(assert (= bs!1027999 (and d!1459787 d!1459677)))

(assert (=> bs!1027999 (= lambda!193838 lambda!193796)))

(declare-fun bs!1028000 () Bool)

(assert (= bs!1028000 (and d!1459787 d!1459701)))

(assert (=> bs!1028000 (= lambda!193838 lambda!193819)))

(declare-fun bs!1028001 () Bool)

(assert (= bs!1028001 (and d!1459787 d!1459737)))

(assert (=> bs!1028001 (= lambda!193838 lambda!193828)))

(declare-fun bs!1028002 () Bool)

(assert (= bs!1028002 (and d!1459787 d!1459751)))

(assert (=> bs!1028002 (= lambda!193838 lambda!193835)))

(declare-fun bs!1028003 () Bool)

(assert (= bs!1028003 (and d!1459787 d!1459615)))

(assert (=> bs!1028003 (= lambda!193838 lambda!193713)))

(declare-fun bs!1028004 () Bool)

(assert (= bs!1028004 (and d!1459787 d!1459595)))

(assert (=> bs!1028004 (= lambda!193838 lambda!193701)))

(declare-fun bs!1028005 () Bool)

(assert (= bs!1028005 (and d!1459787 b!4631252)))

(assert (=> bs!1028005 (= lambda!193838 lambda!193692)))

(declare-fun bs!1028006 () Bool)

(assert (= bs!1028006 (and d!1459787 d!1459785)))

(assert (=> bs!1028006 (= lambda!193838 lambda!193837)))

(declare-fun lt!1792227 () ListMap!4329)

(assert (=> d!1459787 (invariantList!1226 (toList!5025 lt!1792227))))

(declare-fun e!2889298 () ListMap!4329)

(assert (=> d!1459787 (= lt!1792227 e!2889298)))

(declare-fun c!792806 () Bool)

(assert (=> d!1459787 (= c!792806 ((_ is Cons!51605) (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605)))))

(assert (=> d!1459787 (forall!10868 (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605) lambda!193838)))

(assert (=> d!1459787 (= (extractMap!1586 (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605)) lt!1792227)))

(declare-fun b!4631679 () Bool)

(assert (=> b!4631679 (= e!2889298 (addToMapMapFromBucket!991 (_2!29578 (h!57677 (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605))) (extractMap!1586 (t!358783 (Cons!51605 (tuple2!52569 hash!414 newBucket!224) Nil!51605)))))))

(declare-fun b!4631680 () Bool)

(assert (=> b!4631680 (= e!2889298 (ListMap!4330 Nil!51604))))

(assert (= (and d!1459787 c!792806) b!4631679))

(assert (= (and d!1459787 (not c!792806)) b!4631680))

(declare-fun m!5482095 () Bool)

(assert (=> d!1459787 m!5482095))

(declare-fun m!5482097 () Bool)

(assert (=> d!1459787 m!5482097))

(declare-fun m!5482099 () Bool)

(assert (=> b!4631679 m!5482099))

(assert (=> b!4631679 m!5482099))

(declare-fun m!5482101 () Bool)

(assert (=> b!4631679 m!5482101))

(assert (=> b!4631239 d!1459787))

(declare-fun tp!1342346 () Bool)

(declare-fun e!2889301 () Bool)

(declare-fun b!4631685 () Bool)

(assert (=> b!4631685 (= e!2889301 (and tp_is_empty!29413 tp_is_empty!29415 tp!1342346))))

(assert (=> b!4631248 (= tp!1342338 e!2889301)))

(assert (= (and b!4631248 ((_ is Cons!51604) (t!358782 newBucket!224))) b!4631685))

(declare-fun tp!1342347 () Bool)

(declare-fun b!4631686 () Bool)

(declare-fun e!2889302 () Bool)

(assert (=> b!4631686 (= e!2889302 (and tp_is_empty!29413 tp_is_empty!29415 tp!1342347))))

(assert (=> b!4631258 (= tp!1342339 e!2889302)))

(assert (= (and b!4631258 ((_ is Cons!51604) (t!358782 oldBucket!40))) b!4631686))

(declare-fun b_lambda!170891 () Bool)

(assert (= b_lambda!170887 (or b!4631252 b_lambda!170891)))

(declare-fun bs!1028007 () Bool)

(declare-fun d!1459789 () Bool)

(assert (= bs!1028007 (and d!1459789 b!4631252)))

(assert (=> bs!1028007 (= (dynLambda!21520 lambda!193692 lt!1791593) (noDuplicateKeys!1530 (_2!29578 lt!1791593)))))

(declare-fun m!5482103 () Bool)

(assert (=> bs!1028007 m!5482103))

(assert (=> d!1459715 d!1459789))

(check-sat (not d!1459615) (not b!4631650) (not b!4631550) (not bm!323183) (not b!4631450) (not b!4631665) (not d!1459595) (not b!4631504) (not d!1459703) (not b!4631604) (not b!4631658) (not d!1459743) (not b!4631493) (not b!4631505) (not b!4631562) (not d!1459761) (not bm!323184) (not d!1459741) (not d!1459779) (not b!4631606) (not bm!323176) (not d!1459677) (not d!1459759) (not b!4631542) (not d!1459555) (not d!1459617) (not d!1459679) (not b!4631654) (not b!4631565) (not d!1459649) (not b!4631530) (not b!4631539) (not b!4631647) (not d!1459755) (not d!1459671) (not b!4631306) (not bm!323191) (not bs!1028007) (not b!4631521) (not d!1459757) (not b!4631667) (not bm!323153) (not b!4631509) (not b!4631564) (not b!4631495) (not b!4631629) tp_is_empty!29415 (not d!1459737) (not d!1459701) (not d!1459681) (not b!4631522) (not b!4631511) (not b!4631513) (not b!4631659) (not b!4631590) (not b!4631671) (not d!1459707) (not b!4631649) (not d!1459655) (not d!1459689) (not b!4631491) (not b!4631628) (not b!4631664) (not d!1459765) (not b!4631669) (not b_lambda!170891) (not b!4631448) (not b!4631625) (not b!4631510) (not b!4631528) (not d!1459667) (not b!4631341) (not d!1459785) (not d!1459731) (not b!4631462) (not b!4631677) (not b!4631627) (not b!4631447) (not d!1459751) (not d!1459763) (not d!1459725) (not b!4631506) (not b!4631655) (not bm!323192) (not b!4631648) (not d!1459557) (not d!1459771) (not b!4631540) (not b!4631636) (not b!4631452) (not d!1459781) (not bm!323177) (not b!4631670) (not b!4631451) (not d!1459553) (not d!1459593) (not d!1459613) (not b!4631679) (not b!4631529) (not b!4631662) (not b!4631523) (not b!4631675) (not b!4631307) (not d!1459573) (not d!1459599) (not b!4631686) (not b!4631532) (not b!4631668) (not d!1459787) (not d!1459777) (not d!1459715) (not d!1459735) (not b!4631652) (not d!1459713) (not b!4631676) (not b!4631626) (not d!1459711) (not b!4631673) (not bm!323181) (not d!1459767) (not b!4631656) (not b!4631492) (not d!1459739) (not d!1459693) (not b!4631653) (not d!1459647) (not b!4631570) (not d!1459747) (not b!4631519) (not b!4631651) (not bm!323196) (not bm!323190) (not d!1459579) (not bm!323169) (not bm!323186) (not b!4631463) (not d!1459695) (not b!4631290) (not b!4631578) (not b!4631525) (not b!4631538) tp_is_empty!29413 (not b!4631453) (not d!1459753) (not d!1459705) (not d!1459665) (not bm!323182) (not b!4631454) (not b!4631503) (not b!4631657) (not bm!323175) (not bm!323171) (not bm!323185) (not d!1459783) (not bm!323170) (not b!4631638) (not b!4631685))
(check-sat)
