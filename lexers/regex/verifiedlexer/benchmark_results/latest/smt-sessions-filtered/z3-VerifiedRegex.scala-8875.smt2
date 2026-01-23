; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474300 () Bool)

(assert start!474300)

(declare-fun b!4689356 () Bool)

(declare-fun e!2925514 () Bool)

(declare-fun e!2925513 () Bool)

(assert (=> b!4689356 (= e!2925514 (not e!2925513))))

(declare-fun res!1977814 () Bool)

(assert (=> b!4689356 (=> res!1977814 e!2925513)))

(declare-datatypes ((K!13780 0))(
  ( (K!13781 (val!19295 Int)) )
))
(declare-datatypes ((V!14026 0))(
  ( (V!14027 (val!19296 Int)) )
))
(declare-datatypes ((tuple2!53802 0))(
  ( (tuple2!53803 (_1!30195 K!13780) (_2!30195 V!14026)) )
))
(declare-datatypes ((List!52527 0))(
  ( (Nil!52403) (Cons!52403 (h!58646 tuple2!53802) (t!359701 List!52527)) )
))
(declare-fun oldBucket!34 () List!52527)

(declare-fun key!4653 () K!13780)

(get-info :version)

(assert (=> b!4689356 (= res!1977814 (or (and ((_ is Cons!52403) oldBucket!34) (= (_1!30195 (h!58646 oldBucket!34)) key!4653)) (not ((_ is Cons!52403) oldBucket!34)) (= (_1!30195 (h!58646 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4957 0))(
  ( (ListMap!4958 (toList!5593 List!52527)) )
))
(declare-fun lt!1849008 () ListMap!4957)

(declare-datatypes ((tuple2!53804 0))(
  ( (tuple2!53805 (_1!30196 (_ BitVec 64)) (_2!30196 List!52527)) )
))
(declare-datatypes ((List!52528 0))(
  ( (Nil!52404) (Cons!52404 (h!58647 tuple2!53804) (t!359702 List!52528)) )
))
(declare-datatypes ((ListLongMap!4123 0))(
  ( (ListLongMap!4124 (toList!5594 List!52528)) )
))
(declare-fun lm!2023 () ListLongMap!4123)

(declare-fun lt!1849020 () ListMap!4957)

(declare-fun addToMapMapFromBucket!1284 (List!52527 ListMap!4957) ListMap!4957)

(assert (=> b!4689356 (= lt!1849008 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 (toList!5594 lm!2023))) lt!1849020))))

(declare-fun extractMap!1878 (List!52528) ListMap!4957)

(assert (=> b!4689356 (= lt!1849020 (extractMap!1878 (t!359702 (toList!5594 lm!2023))))))

(declare-fun tail!8584 (ListLongMap!4123) ListLongMap!4123)

(assert (=> b!4689356 (= (t!359702 (toList!5594 lm!2023)) (toList!5594 (tail!8584 lm!2023)))))

(declare-fun b!4689357 () Bool)

(declare-fun res!1977812 () Bool)

(assert (=> b!4689357 (=> (not res!1977812) (not e!2925514))))

(assert (=> b!4689357 (= res!1977812 ((_ is Cons!52404) (toList!5594 lm!2023)))))

(declare-fun b!4689358 () Bool)

(declare-fun res!1977815 () Bool)

(declare-fun e!2925517 () Bool)

(assert (=> b!4689358 (=> res!1977815 e!2925517)))

(declare-fun lt!1849016 () List!52527)

(declare-fun removePairForKey!1447 (List!52527 K!13780) List!52527)

(assert (=> b!4689358 (= res!1977815 (not (= (removePairForKey!1447 (t!359701 oldBucket!34) key!4653) lt!1849016)))))

(declare-fun b!4689359 () Bool)

(declare-fun res!1977822 () Bool)

(declare-fun e!2925511 () Bool)

(assert (=> b!4689359 (=> res!1977822 e!2925511)))

(declare-fun lt!1849018 () tuple2!53802)

(assert (=> b!4689359 (= res!1977822 (not (= (h!58646 oldBucket!34) lt!1849018)))))

(declare-fun b!4689360 () Bool)

(declare-fun e!2925509 () Bool)

(assert (=> b!4689360 (= e!2925509 e!2925517)))

(declare-fun res!1977819 () Bool)

(assert (=> b!4689360 (=> res!1977819 e!2925517)))

(declare-fun lt!1849001 () List!52527)

(assert (=> b!4689360 (= res!1977819 (not (= (removePairForKey!1447 lt!1849001 key!4653) lt!1849016)))))

(declare-fun newBucket!218 () List!52527)

(declare-fun tail!8585 (List!52527) List!52527)

(assert (=> b!4689360 (= lt!1849016 (tail!8585 newBucket!218))))

(assert (=> b!4689360 (= lt!1849001 (tail!8585 oldBucket!34))))

(declare-fun b!4689361 () Bool)

(declare-fun res!1977820 () Bool)

(declare-fun e!2925516 () Bool)

(assert (=> b!4689361 (=> (not res!1977820) (not e!2925516))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6221 0))(
  ( (HashableExt!6220 (__x!31924 Int)) )
))
(declare-fun hashF!1323 () Hashable!6221)

(declare-fun allKeysSameHash!1678 (List!52527 (_ BitVec 64) Hashable!6221) Bool)

(assert (=> b!4689361 (= res!1977820 (allKeysSameHash!1678 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4689362 () Bool)

(declare-fun lt!1849002 () List!52528)

(declare-fun lambda!206943 () Int)

(declare-fun forall!11317 (List!52528 Int) Bool)

(assert (=> b!4689362 (= e!2925511 (forall!11317 lt!1849002 lambda!206943))))

(declare-fun b!4689363 () Bool)

(declare-fun res!1977825 () Bool)

(declare-fun e!2925518 () Bool)

(assert (=> b!4689363 (=> (not res!1977825) (not e!2925518))))

(assert (=> b!4689363 (= res!1977825 (= (removePairForKey!1447 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4689365 () Bool)

(assert (=> b!4689365 (= e!2925513 e!2925509)))

(declare-fun res!1977816 () Bool)

(assert (=> b!4689365 (=> res!1977816 e!2925509)))

(declare-fun containsKey!3047 (List!52527 K!13780) Bool)

(assert (=> b!4689365 (= res!1977816 (not (containsKey!3047 (t!359701 oldBucket!34) key!4653)))))

(assert (=> b!4689365 (containsKey!3047 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123901 0))(
  ( (Unit!123902) )
))
(declare-fun lt!1849012 () Unit!123901)

(declare-fun lemmaGetPairDefinedThenContainsKey!204 (List!52527 K!13780 Hashable!6221) Unit!123901)

(assert (=> b!4689365 (= lt!1849012 (lemmaGetPairDefinedThenContainsKey!204 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1849004 () List!52527)

(declare-datatypes ((Option!12071 0))(
  ( (None!12070) (Some!12070 (v!46481 tuple2!53802)) )
))
(declare-fun isDefined!9326 (Option!12071) Bool)

(declare-fun getPair!456 (List!52527 K!13780) Option!12071)

(assert (=> b!4689365 (isDefined!9326 (getPair!456 lt!1849004 key!4653))))

(declare-fun lt!1849011 () Unit!123901)

(declare-fun lt!1849006 () tuple2!53804)

(declare-fun forallContained!3424 (List!52528 Int tuple2!53804) Unit!123901)

(assert (=> b!4689365 (= lt!1849011 (forallContained!3424 (toList!5594 lm!2023) lambda!206943 lt!1849006))))

(declare-fun contains!15598 (List!52528 tuple2!53804) Bool)

(assert (=> b!4689365 (contains!15598 (toList!5594 lm!2023) lt!1849006)))

(declare-fun lt!1849015 () (_ BitVec 64))

(assert (=> b!4689365 (= lt!1849006 (tuple2!53805 lt!1849015 lt!1849004))))

(declare-fun lt!1849013 () Unit!123901)

(declare-fun lemmaGetValueImpliesTupleContained!261 (ListLongMap!4123 (_ BitVec 64) List!52527) Unit!123901)

(assert (=> b!4689365 (= lt!1849013 (lemmaGetValueImpliesTupleContained!261 lm!2023 lt!1849015 lt!1849004))))

(declare-fun apply!12335 (ListLongMap!4123 (_ BitVec 64)) List!52527)

(assert (=> b!4689365 (= lt!1849004 (apply!12335 lm!2023 lt!1849015))))

(declare-fun contains!15599 (ListLongMap!4123 (_ BitVec 64)) Bool)

(assert (=> b!4689365 (contains!15599 lm!2023 lt!1849015)))

(declare-fun lt!1849019 () Unit!123901)

(declare-fun lemmaInGenMapThenLongMapContainsHash!662 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> b!4689365 (= lt!1849019 (lemmaInGenMapThenLongMapContainsHash!662 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1849017 () Unit!123901)

(declare-fun lemmaInGenMapThenGetPairDefined!252 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> b!4689365 (= lt!1849017 (lemmaInGenMapThenGetPairDefined!252 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4689366 () Bool)

(declare-fun tp_is_empty!30703 () Bool)

(declare-fun tp!1345879 () Bool)

(declare-fun e!2925508 () Bool)

(declare-fun tp_is_empty!30701 () Bool)

(assert (=> b!4689366 (= e!2925508 (and tp_is_empty!30701 tp_is_empty!30703 tp!1345879))))

(declare-fun b!4689367 () Bool)

(assert (=> b!4689367 (= e!2925517 e!2925511)))

(declare-fun res!1977813 () Bool)

(assert (=> b!4689367 (=> res!1977813 e!2925511)))

(declare-fun lt!1849009 () tuple2!53804)

(declare-fun eq!1011 (ListMap!4957 ListMap!4957) Bool)

(declare-fun +!2136 (ListMap!4957 tuple2!53802) ListMap!4957)

(assert (=> b!4689367 (= res!1977813 (not (eq!1011 (extractMap!1878 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))) (+!2136 (extractMap!1878 lt!1849002) (h!58646 oldBucket!34)))))))

(assert (=> b!4689367 (= lt!1849002 (Cons!52404 (tuple2!53805 hash!405 lt!1849001) (t!359702 (toList!5594 lm!2023))))))

(assert (=> b!4689367 (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849018 lt!1849016) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849018))))

(declare-fun lt!1849014 () Unit!123901)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!260 (tuple2!53802 List!52527 ListMap!4957) Unit!123901)

(assert (=> b!4689367 (= lt!1849014 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!260 lt!1849018 lt!1849016 lt!1849020))))

(declare-fun head!9967 (List!52527) tuple2!53802)

(assert (=> b!4689367 (= lt!1849018 (head!9967 newBucket!218))))

(declare-fun lt!1849010 () tuple2!53802)

(assert (=> b!4689367 (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849010 lt!1849001) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849010))))

(declare-fun lt!1849003 () Unit!123901)

(assert (=> b!4689367 (= lt!1849003 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!260 lt!1849010 lt!1849001 lt!1849020))))

(assert (=> b!4689367 (= lt!1849010 (head!9967 oldBucket!34))))

(declare-fun lt!1849007 () List!52528)

(declare-fun contains!15600 (ListMap!4957 K!13780) Bool)

(assert (=> b!4689367 (contains!15600 (extractMap!1878 lt!1849007) key!4653)))

(declare-fun lt!1849005 () Unit!123901)

(declare-fun lemmaListContainsThenExtractedMapContains!444 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> b!4689367 (= lt!1849005 (lemmaListContainsThenExtractedMapContains!444 (ListLongMap!4124 lt!1849007) key!4653 hashF!1323))))

(assert (=> b!4689367 (= lt!1849007 (Cons!52404 (tuple2!53805 hash!405 (t!359701 oldBucket!34)) (t!359702 (toList!5594 lm!2023))))))

(declare-fun b!4689368 () Bool)

(declare-fun e!2925512 () Bool)

(assert (=> b!4689368 (= e!2925518 e!2925512)))

(declare-fun res!1977811 () Bool)

(assert (=> b!4689368 (=> (not res!1977811) (not e!2925512))))

(assert (=> b!4689368 (= res!1977811 (contains!15600 lt!1849008 key!4653))))

(assert (=> b!4689368 (= lt!1849008 (extractMap!1878 (toList!5594 lm!2023)))))

(declare-fun res!1977818 () Bool)

(assert (=> start!474300 (=> (not res!1977818) (not e!2925518))))

(assert (=> start!474300 (= res!1977818 (forall!11317 (toList!5594 lm!2023) lambda!206943))))

(assert (=> start!474300 e!2925518))

(declare-fun e!2925515 () Bool)

(declare-fun inv!67654 (ListLongMap!4123) Bool)

(assert (=> start!474300 (and (inv!67654 lm!2023) e!2925515)))

(assert (=> start!474300 tp_is_empty!30701))

(declare-fun e!2925510 () Bool)

(assert (=> start!474300 e!2925510))

(assert (=> start!474300 true))

(assert (=> start!474300 e!2925508))

(declare-fun tp!1345877 () Bool)

(declare-fun b!4689364 () Bool)

(assert (=> b!4689364 (= e!2925510 (and tp_is_empty!30701 tp_is_empty!30703 tp!1345877))))

(declare-fun b!4689369 () Bool)

(declare-fun res!1977826 () Bool)

(assert (=> b!4689369 (=> (not res!1977826) (not e!2925518))))

(declare-fun noDuplicateKeys!1852 (List!52527) Bool)

(assert (=> b!4689369 (= res!1977826 (noDuplicateKeys!1852 oldBucket!34))))

(declare-fun b!4689370 () Bool)

(declare-fun tp!1345878 () Bool)

(assert (=> b!4689370 (= e!2925515 tp!1345878)))

(declare-fun b!4689371 () Bool)

(assert (=> b!4689371 (= e!2925516 e!2925514)))

(declare-fun res!1977817 () Bool)

(assert (=> b!4689371 (=> (not res!1977817) (not e!2925514))))

(declare-fun head!9968 (List!52528) tuple2!53804)

(assert (=> b!4689371 (= res!1977817 (= (head!9968 (toList!5594 lm!2023)) lt!1849009))))

(assert (=> b!4689371 (= lt!1849009 (tuple2!53805 hash!405 oldBucket!34))))

(declare-fun b!4689372 () Bool)

(declare-fun res!1977827 () Bool)

(assert (=> b!4689372 (=> (not res!1977827) (not e!2925518))))

(assert (=> b!4689372 (= res!1977827 (allKeysSameHash!1678 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4689373 () Bool)

(assert (=> b!4689373 (= e!2925512 e!2925516)))

(declare-fun res!1977824 () Bool)

(assert (=> b!4689373 (=> (not res!1977824) (not e!2925516))))

(assert (=> b!4689373 (= res!1977824 (= lt!1849015 hash!405))))

(declare-fun hash!4061 (Hashable!6221 K!13780) (_ BitVec 64))

(assert (=> b!4689373 (= lt!1849015 (hash!4061 hashF!1323 key!4653))))

(declare-fun b!4689374 () Bool)

(declare-fun res!1977823 () Bool)

(assert (=> b!4689374 (=> (not res!1977823) (not e!2925516))))

(declare-fun allKeysSameHashInMap!1766 (ListLongMap!4123 Hashable!6221) Bool)

(assert (=> b!4689374 (= res!1977823 (allKeysSameHashInMap!1766 lm!2023 hashF!1323))))

(declare-fun b!4689375 () Bool)

(declare-fun res!1977821 () Bool)

(assert (=> b!4689375 (=> (not res!1977821) (not e!2925518))))

(assert (=> b!4689375 (= res!1977821 (noDuplicateKeys!1852 newBucket!218))))

(assert (= (and start!474300 res!1977818) b!4689369))

(assert (= (and b!4689369 res!1977826) b!4689375))

(assert (= (and b!4689375 res!1977821) b!4689363))

(assert (= (and b!4689363 res!1977825) b!4689372))

(assert (= (and b!4689372 res!1977827) b!4689368))

(assert (= (and b!4689368 res!1977811) b!4689373))

(assert (= (and b!4689373 res!1977824) b!4689361))

(assert (= (and b!4689361 res!1977820) b!4689374))

(assert (= (and b!4689374 res!1977823) b!4689371))

(assert (= (and b!4689371 res!1977817) b!4689357))

(assert (= (and b!4689357 res!1977812) b!4689356))

(assert (= (and b!4689356 (not res!1977814)) b!4689365))

(assert (= (and b!4689365 (not res!1977816)) b!4689360))

(assert (= (and b!4689360 (not res!1977819)) b!4689358))

(assert (= (and b!4689358 (not res!1977815)) b!4689367))

(assert (= (and b!4689367 (not res!1977813)) b!4689359))

(assert (= (and b!4689359 (not res!1977822)) b!4689362))

(assert (= start!474300 b!4689370))

(assert (= (and start!474300 ((_ is Cons!52403) oldBucket!34)) b!4689364))

(assert (= (and start!474300 ((_ is Cons!52403) newBucket!218)) b!4689366))

(declare-fun m!5590851 () Bool)

(assert (=> start!474300 m!5590851))

(declare-fun m!5590853 () Bool)

(assert (=> start!474300 m!5590853))

(declare-fun m!5590855 () Bool)

(assert (=> b!4689372 m!5590855))

(declare-fun m!5590857 () Bool)

(assert (=> b!4689358 m!5590857))

(declare-fun m!5590859 () Bool)

(assert (=> b!4689369 m!5590859))

(declare-fun m!5590861 () Bool)

(assert (=> b!4689367 m!5590861))

(declare-fun m!5590863 () Bool)

(assert (=> b!4689367 m!5590863))

(declare-fun m!5590865 () Bool)

(assert (=> b!4689367 m!5590865))

(declare-fun m!5590867 () Bool)

(assert (=> b!4689367 m!5590867))

(assert (=> b!4689367 m!5590867))

(declare-fun m!5590869 () Bool)

(assert (=> b!4689367 m!5590869))

(declare-fun m!5590871 () Bool)

(assert (=> b!4689367 m!5590871))

(declare-fun m!5590873 () Bool)

(assert (=> b!4689367 m!5590873))

(declare-fun m!5590875 () Bool)

(assert (=> b!4689367 m!5590875))

(declare-fun m!5590877 () Bool)

(assert (=> b!4689367 m!5590877))

(declare-fun m!5590879 () Bool)

(assert (=> b!4689367 m!5590879))

(declare-fun m!5590881 () Bool)

(assert (=> b!4689367 m!5590881))

(declare-fun m!5590883 () Bool)

(assert (=> b!4689367 m!5590883))

(assert (=> b!4689367 m!5590865))

(declare-fun m!5590885 () Bool)

(assert (=> b!4689367 m!5590885))

(declare-fun m!5590887 () Bool)

(assert (=> b!4689367 m!5590887))

(declare-fun m!5590889 () Bool)

(assert (=> b!4689367 m!5590889))

(declare-fun m!5590891 () Bool)

(assert (=> b!4689367 m!5590891))

(assert (=> b!4689367 m!5590887))

(declare-fun m!5590893 () Bool)

(assert (=> b!4689367 m!5590893))

(declare-fun m!5590895 () Bool)

(assert (=> b!4689367 m!5590895))

(assert (=> b!4689367 m!5590869))

(assert (=> b!4689367 m!5590863))

(assert (=> b!4689367 m!5590879))

(assert (=> b!4689367 m!5590861))

(assert (=> b!4689367 m!5590881))

(declare-fun m!5590897 () Bool)

(assert (=> b!4689367 m!5590897))

(assert (=> b!4689367 m!5590883))

(assert (=> b!4689367 m!5590895))

(declare-fun m!5590899 () Bool)

(assert (=> b!4689374 m!5590899))

(declare-fun m!5590901 () Bool)

(assert (=> b!4689356 m!5590901))

(declare-fun m!5590903 () Bool)

(assert (=> b!4689356 m!5590903))

(declare-fun m!5590905 () Bool)

(assert (=> b!4689356 m!5590905))

(declare-fun m!5590907 () Bool)

(assert (=> b!4689368 m!5590907))

(declare-fun m!5590909 () Bool)

(assert (=> b!4689368 m!5590909))

(declare-fun m!5590911 () Bool)

(assert (=> b!4689362 m!5590911))

(declare-fun m!5590913 () Bool)

(assert (=> b!4689365 m!5590913))

(declare-fun m!5590915 () Bool)

(assert (=> b!4689365 m!5590915))

(declare-fun m!5590917 () Bool)

(assert (=> b!4689365 m!5590917))

(declare-fun m!5590919 () Bool)

(assert (=> b!4689365 m!5590919))

(declare-fun m!5590921 () Bool)

(assert (=> b!4689365 m!5590921))

(declare-fun m!5590923 () Bool)

(assert (=> b!4689365 m!5590923))

(declare-fun m!5590925 () Bool)

(assert (=> b!4689365 m!5590925))

(declare-fun m!5590927 () Bool)

(assert (=> b!4689365 m!5590927))

(declare-fun m!5590929 () Bool)

(assert (=> b!4689365 m!5590929))

(declare-fun m!5590931 () Bool)

(assert (=> b!4689365 m!5590931))

(declare-fun m!5590933 () Bool)

(assert (=> b!4689365 m!5590933))

(declare-fun m!5590935 () Bool)

(assert (=> b!4689365 m!5590935))

(assert (=> b!4689365 m!5590915))

(declare-fun m!5590937 () Bool)

(assert (=> b!4689375 m!5590937))

(declare-fun m!5590939 () Bool)

(assert (=> b!4689360 m!5590939))

(declare-fun m!5590941 () Bool)

(assert (=> b!4689360 m!5590941))

(declare-fun m!5590943 () Bool)

(assert (=> b!4689360 m!5590943))

(declare-fun m!5590945 () Bool)

(assert (=> b!4689363 m!5590945))

(declare-fun m!5590947 () Bool)

(assert (=> b!4689361 m!5590947))

(declare-fun m!5590949 () Bool)

(assert (=> b!4689371 m!5590949))

(declare-fun m!5590951 () Bool)

(assert (=> b!4689373 m!5590951))

(check-sat (not b!4689364) (not b!4689362) (not b!4689361) (not start!474300) (not b!4689365) (not b!4689367) (not b!4689375) (not b!4689358) tp_is_empty!30701 (not b!4689374) tp_is_empty!30703 (not b!4689370) (not b!4689366) (not b!4689371) (not b!4689373) (not b!4689372) (not b!4689369) (not b!4689356) (not b!4689363) (not b!4689368) (not b!4689360))
(check-sat)
(get-model)

(declare-fun bs!1086124 () Bool)

(declare-fun d!1490240 () Bool)

(assert (= bs!1086124 (and d!1490240 start!474300)))

(declare-fun lambda!206946 () Int)

(assert (=> bs!1086124 (not (= lambda!206946 lambda!206943))))

(assert (=> d!1490240 true))

(assert (=> d!1490240 (= (allKeysSameHashInMap!1766 lm!2023 hashF!1323) (forall!11317 (toList!5594 lm!2023) lambda!206946))))

(declare-fun bs!1086125 () Bool)

(assert (= bs!1086125 d!1490240))

(declare-fun m!5590953 () Bool)

(assert (=> bs!1086125 m!5590953))

(assert (=> b!4689374 d!1490240))

(declare-fun d!1490242 () Bool)

(declare-fun lt!1849023 () List!52527)

(assert (=> d!1490242 (not (containsKey!3047 lt!1849023 key!4653))))

(declare-fun e!2925524 () List!52527)

(assert (=> d!1490242 (= lt!1849023 e!2925524)))

(declare-fun c!801786 () Bool)

(assert (=> d!1490242 (= c!801786 (and ((_ is Cons!52403) oldBucket!34) (= (_1!30195 (h!58646 oldBucket!34)) key!4653)))))

(assert (=> d!1490242 (noDuplicateKeys!1852 oldBucket!34)))

(assert (=> d!1490242 (= (removePairForKey!1447 oldBucket!34 key!4653) lt!1849023)))

(declare-fun b!4689387 () Bool)

(declare-fun e!2925523 () List!52527)

(assert (=> b!4689387 (= e!2925524 e!2925523)))

(declare-fun c!801787 () Bool)

(assert (=> b!4689387 (= c!801787 ((_ is Cons!52403) oldBucket!34))))

(declare-fun b!4689389 () Bool)

(assert (=> b!4689389 (= e!2925523 Nil!52403)))

(declare-fun b!4689386 () Bool)

(assert (=> b!4689386 (= e!2925524 (t!359701 oldBucket!34))))

(declare-fun b!4689388 () Bool)

(assert (=> b!4689388 (= e!2925523 (Cons!52403 (h!58646 oldBucket!34) (removePairForKey!1447 (t!359701 oldBucket!34) key!4653)))))

(assert (= (and d!1490242 c!801786) b!4689386))

(assert (= (and d!1490242 (not c!801786)) b!4689387))

(assert (= (and b!4689387 c!801787) b!4689388))

(assert (= (and b!4689387 (not c!801787)) b!4689389))

(declare-fun m!5590955 () Bool)

(assert (=> d!1490242 m!5590955))

(assert (=> d!1490242 m!5590859))

(assert (=> b!4689388 m!5590857))

(assert (=> b!4689363 d!1490242))

(declare-fun d!1490248 () Bool)

(declare-fun res!1977836 () Bool)

(declare-fun e!2925539 () Bool)

(assert (=> d!1490248 (=> res!1977836 e!2925539)))

(assert (=> d!1490248 (= res!1977836 ((_ is Nil!52404) lt!1849002))))

(assert (=> d!1490248 (= (forall!11317 lt!1849002 lambda!206943) e!2925539)))

(declare-fun b!4689410 () Bool)

(declare-fun e!2925540 () Bool)

(assert (=> b!4689410 (= e!2925539 e!2925540)))

(declare-fun res!1977837 () Bool)

(assert (=> b!4689410 (=> (not res!1977837) (not e!2925540))))

(declare-fun dynLambda!21711 (Int tuple2!53804) Bool)

(assert (=> b!4689410 (= res!1977837 (dynLambda!21711 lambda!206943 (h!58647 lt!1849002)))))

(declare-fun b!4689411 () Bool)

(assert (=> b!4689411 (= e!2925540 (forall!11317 (t!359702 lt!1849002) lambda!206943))))

(assert (= (and d!1490248 (not res!1977836)) b!4689410))

(assert (= (and b!4689410 res!1977837) b!4689411))

(declare-fun b_lambda!176965 () Bool)

(assert (=> (not b_lambda!176965) (not b!4689410)))

(declare-fun m!5590961 () Bool)

(assert (=> b!4689410 m!5590961))

(declare-fun m!5590963 () Bool)

(assert (=> b!4689411 m!5590963))

(assert (=> b!4689362 d!1490248))

(declare-fun d!1490254 () Bool)

(declare-fun hash!4063 (Hashable!6221 K!13780) (_ BitVec 64))

(assert (=> d!1490254 (= (hash!4061 hashF!1323 key!4653) (hash!4063 hashF!1323 key!4653))))

(declare-fun bs!1086127 () Bool)

(assert (= bs!1086127 d!1490254))

(declare-fun m!5590975 () Bool)

(assert (=> bs!1086127 m!5590975))

(assert (=> b!4689373 d!1490254))

(declare-fun d!1490260 () Bool)

(declare-fun res!1977840 () Bool)

(declare-fun e!2925545 () Bool)

(assert (=> d!1490260 (=> res!1977840 e!2925545)))

(assert (=> d!1490260 (= res!1977840 ((_ is Nil!52404) (toList!5594 lm!2023)))))

(assert (=> d!1490260 (= (forall!11317 (toList!5594 lm!2023) lambda!206943) e!2925545)))

(declare-fun b!4689418 () Bool)

(declare-fun e!2925546 () Bool)

(assert (=> b!4689418 (= e!2925545 e!2925546)))

(declare-fun res!1977841 () Bool)

(assert (=> b!4689418 (=> (not res!1977841) (not e!2925546))))

(assert (=> b!4689418 (= res!1977841 (dynLambda!21711 lambda!206943 (h!58647 (toList!5594 lm!2023))))))

(declare-fun b!4689419 () Bool)

(assert (=> b!4689419 (= e!2925546 (forall!11317 (t!359702 (toList!5594 lm!2023)) lambda!206943))))

(assert (= (and d!1490260 (not res!1977840)) b!4689418))

(assert (= (and b!4689418 res!1977841) b!4689419))

(declare-fun b_lambda!176969 () Bool)

(assert (=> (not b_lambda!176969) (not b!4689418)))

(declare-fun m!5590977 () Bool)

(assert (=> b!4689418 m!5590977))

(declare-fun m!5590979 () Bool)

(assert (=> b!4689419 m!5590979))

(assert (=> start!474300 d!1490260))

(declare-fun d!1490262 () Bool)

(declare-fun isStrictlySorted!648 (List!52528) Bool)

(assert (=> d!1490262 (= (inv!67654 lm!2023) (isStrictlySorted!648 (toList!5594 lm!2023)))))

(declare-fun bs!1086129 () Bool)

(assert (= bs!1086129 d!1490262))

(declare-fun m!5590985 () Bool)

(assert (=> bs!1086129 m!5590985))

(assert (=> start!474300 d!1490262))

(declare-fun b!4689514 () Bool)

(assert (=> b!4689514 true))

(declare-fun bs!1086147 () Bool)

(declare-fun b!4689516 () Bool)

(assert (= bs!1086147 (and b!4689516 b!4689514)))

(declare-fun lambda!206992 () Int)

(declare-fun lambda!206991 () Int)

(assert (=> bs!1086147 (= lambda!206992 lambda!206991)))

(assert (=> b!4689516 true))

(declare-fun lambda!206993 () Int)

(declare-fun lt!1849151 () ListMap!4957)

(assert (=> bs!1086147 (= (= lt!1849151 lt!1849020) (= lambda!206993 lambda!206991))))

(assert (=> b!4689516 (= (= lt!1849151 lt!1849020) (= lambda!206993 lambda!206992))))

(assert (=> b!4689516 true))

(declare-fun bs!1086148 () Bool)

(declare-fun d!1490266 () Bool)

(assert (= bs!1086148 (and d!1490266 b!4689514)))

(declare-fun lt!1849167 () ListMap!4957)

(declare-fun lambda!206994 () Int)

(assert (=> bs!1086148 (= (= lt!1849167 lt!1849020) (= lambda!206994 lambda!206991))))

(declare-fun bs!1086149 () Bool)

(assert (= bs!1086149 (and d!1490266 b!4689516)))

(assert (=> bs!1086149 (= (= lt!1849167 lt!1849020) (= lambda!206994 lambda!206992))))

(assert (=> bs!1086149 (= (= lt!1849167 lt!1849151) (= lambda!206994 lambda!206993))))

(assert (=> d!1490266 true))

(declare-fun b!4689513 () Bool)

(declare-fun res!1977904 () Bool)

(declare-fun e!2925608 () Bool)

(assert (=> b!4689513 (=> (not res!1977904) (not e!2925608))))

(declare-fun forall!11318 (List!52527 Int) Bool)

(assert (=> b!4689513 (= res!1977904 (forall!11318 (toList!5593 lt!1849020) lambda!206994))))

(declare-fun b!4689515 () Bool)

(declare-fun invariantList!1407 (List!52527) Bool)

(assert (=> b!4689515 (= e!2925608 (invariantList!1407 (toList!5593 lt!1849167)))))

(declare-fun call!327716 () Bool)

(declare-fun c!801810 () Bool)

(declare-fun bm!327709 () Bool)

(assert (=> bm!327709 (= call!327716 (forall!11318 (ite c!801810 (toList!5593 lt!1849020) (_2!30196 (h!58647 (toList!5594 lm!2023)))) (ite c!801810 lambda!206991 lambda!206993)))))

(declare-fun bm!327710 () Bool)

(declare-fun call!327715 () Unit!123901)

(declare-fun lemmaContainsAllItsOwnKeys!695 (ListMap!4957) Unit!123901)

(assert (=> bm!327710 (= call!327715 (lemmaContainsAllItsOwnKeys!695 lt!1849020))))

(declare-fun bm!327711 () Bool)

(declare-fun call!327714 () Bool)

(declare-fun lt!1849152 () ListMap!4957)

(assert (=> bm!327711 (= call!327714 (forall!11318 (ite c!801810 (toList!5593 lt!1849020) (toList!5593 lt!1849152)) (ite c!801810 lambda!206991 lambda!206993)))))

(assert (=> d!1490266 e!2925608))

(declare-fun res!1977906 () Bool)

(assert (=> d!1490266 (=> (not res!1977906) (not e!2925608))))

(assert (=> d!1490266 (= res!1977906 (forall!11318 (_2!30196 (h!58647 (toList!5594 lm!2023))) lambda!206994))))

(declare-fun e!2925607 () ListMap!4957)

(assert (=> d!1490266 (= lt!1849167 e!2925607)))

(assert (=> d!1490266 (= c!801810 ((_ is Nil!52403) (_2!30196 (h!58647 (toList!5594 lm!2023)))))))

(assert (=> d!1490266 (noDuplicateKeys!1852 (_2!30196 (h!58647 (toList!5594 lm!2023))))))

(assert (=> d!1490266 (= (addToMapMapFromBucket!1284 (_2!30196 (h!58647 (toList!5594 lm!2023))) lt!1849020) lt!1849167)))

(assert (=> b!4689514 (= e!2925607 lt!1849020)))

(declare-fun lt!1849158 () Unit!123901)

(assert (=> b!4689514 (= lt!1849158 call!327715)))

(assert (=> b!4689514 call!327716))

(declare-fun lt!1849163 () Unit!123901)

(assert (=> b!4689514 (= lt!1849163 lt!1849158)))

(assert (=> b!4689514 call!327714))

(declare-fun lt!1849166 () Unit!123901)

(declare-fun Unit!123904 () Unit!123901)

(assert (=> b!4689514 (= lt!1849166 Unit!123904)))

(assert (=> b!4689516 (= e!2925607 lt!1849151)))

(assert (=> b!4689516 (= lt!1849152 (+!2136 lt!1849020 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023))))))))

(assert (=> b!4689516 (= lt!1849151 (addToMapMapFromBucket!1284 (t!359701 (_2!30196 (h!58647 (toList!5594 lm!2023)))) (+!2136 lt!1849020 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023)))))))))

(declare-fun lt!1849150 () Unit!123901)

(assert (=> b!4689516 (= lt!1849150 call!327715)))

(assert (=> b!4689516 (forall!11318 (toList!5593 lt!1849020) lambda!206992)))

(declare-fun lt!1849156 () Unit!123901)

(assert (=> b!4689516 (= lt!1849156 lt!1849150)))

(assert (=> b!4689516 call!327714))

(declare-fun lt!1849164 () Unit!123901)

(declare-fun Unit!123905 () Unit!123901)

(assert (=> b!4689516 (= lt!1849164 Unit!123905)))

(assert (=> b!4689516 (forall!11318 (t!359701 (_2!30196 (h!58647 (toList!5594 lm!2023)))) lambda!206993)))

(declare-fun lt!1849155 () Unit!123901)

(declare-fun Unit!123906 () Unit!123901)

(assert (=> b!4689516 (= lt!1849155 Unit!123906)))

(declare-fun lt!1849154 () Unit!123901)

(declare-fun Unit!123907 () Unit!123901)

(assert (=> b!4689516 (= lt!1849154 Unit!123907)))

(declare-fun lt!1849161 () Unit!123901)

(declare-fun forallContained!3425 (List!52527 Int tuple2!53802) Unit!123901)

(assert (=> b!4689516 (= lt!1849161 (forallContained!3425 (toList!5593 lt!1849152) lambda!206993 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023))))))))

(assert (=> b!4689516 (contains!15600 lt!1849152 (_1!30195 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023))))))))

(declare-fun lt!1849162 () Unit!123901)

(declare-fun Unit!123908 () Unit!123901)

(assert (=> b!4689516 (= lt!1849162 Unit!123908)))

(assert (=> b!4689516 (contains!15600 lt!1849151 (_1!30195 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023))))))))

(declare-fun lt!1849148 () Unit!123901)

(declare-fun Unit!123909 () Unit!123901)

(assert (=> b!4689516 (= lt!1849148 Unit!123909)))

(assert (=> b!4689516 (forall!11318 (_2!30196 (h!58647 (toList!5594 lm!2023))) lambda!206993)))

(declare-fun lt!1849160 () Unit!123901)

(declare-fun Unit!123910 () Unit!123901)

(assert (=> b!4689516 (= lt!1849160 Unit!123910)))

(assert (=> b!4689516 (forall!11318 (toList!5593 lt!1849152) lambda!206993)))

(declare-fun lt!1849149 () Unit!123901)

(declare-fun Unit!123911 () Unit!123901)

(assert (=> b!4689516 (= lt!1849149 Unit!123911)))

(declare-fun lt!1849165 () Unit!123901)

(declare-fun Unit!123912 () Unit!123901)

(assert (=> b!4689516 (= lt!1849165 Unit!123912)))

(declare-fun lt!1849159 () Unit!123901)

(declare-fun addForallContainsKeyThenBeforeAdding!694 (ListMap!4957 ListMap!4957 K!13780 V!14026) Unit!123901)

(assert (=> b!4689516 (= lt!1849159 (addForallContainsKeyThenBeforeAdding!694 lt!1849020 lt!1849151 (_1!30195 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023))))) (_2!30195 (h!58646 (_2!30196 (h!58647 (toList!5594 lm!2023)))))))))

(assert (=> b!4689516 (forall!11318 (toList!5593 lt!1849020) lambda!206993)))

(declare-fun lt!1849157 () Unit!123901)

(assert (=> b!4689516 (= lt!1849157 lt!1849159)))

(assert (=> b!4689516 (forall!11318 (toList!5593 lt!1849020) lambda!206993)))

(declare-fun lt!1849147 () Unit!123901)

(declare-fun Unit!123913 () Unit!123901)

(assert (=> b!4689516 (= lt!1849147 Unit!123913)))

(declare-fun res!1977905 () Bool)

(assert (=> b!4689516 (= res!1977905 call!327716)))

(declare-fun e!2925609 () Bool)

(assert (=> b!4689516 (=> (not res!1977905) (not e!2925609))))

(assert (=> b!4689516 e!2925609))

(declare-fun lt!1849153 () Unit!123901)

(declare-fun Unit!123914 () Unit!123901)

(assert (=> b!4689516 (= lt!1849153 Unit!123914)))

(declare-fun b!4689517 () Bool)

(assert (=> b!4689517 (= e!2925609 (forall!11318 (toList!5593 lt!1849020) lambda!206993))))

(assert (= (and d!1490266 c!801810) b!4689514))

(assert (= (and d!1490266 (not c!801810)) b!4689516))

(assert (= (and b!4689516 res!1977905) b!4689517))

(assert (= (or b!4689514 b!4689516) bm!327710))

(assert (= (or b!4689514 b!4689516) bm!327709))

(assert (= (or b!4689514 b!4689516) bm!327711))

(assert (= (and d!1490266 res!1977906) b!4689513))

(assert (= (and b!4689513 res!1977904) b!4689515))

(declare-fun m!5591111 () Bool)

(assert (=> b!4689517 m!5591111))

(declare-fun m!5591113 () Bool)

(assert (=> bm!327711 m!5591113))

(declare-fun m!5591115 () Bool)

(assert (=> b!4689513 m!5591115))

(declare-fun m!5591117 () Bool)

(assert (=> b!4689516 m!5591117))

(declare-fun m!5591119 () Bool)

(assert (=> b!4689516 m!5591119))

(declare-fun m!5591121 () Bool)

(assert (=> b!4689516 m!5591121))

(declare-fun m!5591123 () Bool)

(assert (=> b!4689516 m!5591123))

(declare-fun m!5591125 () Bool)

(assert (=> b!4689516 m!5591125))

(declare-fun m!5591127 () Bool)

(assert (=> b!4689516 m!5591127))

(declare-fun m!5591129 () Bool)

(assert (=> b!4689516 m!5591129))

(assert (=> b!4689516 m!5591127))

(declare-fun m!5591131 () Bool)

(assert (=> b!4689516 m!5591131))

(assert (=> b!4689516 m!5591111))

(declare-fun m!5591133 () Bool)

(assert (=> b!4689516 m!5591133))

(declare-fun m!5591135 () Bool)

(assert (=> b!4689516 m!5591135))

(assert (=> b!4689516 m!5591111))

(declare-fun m!5591137 () Bool)

(assert (=> d!1490266 m!5591137))

(declare-fun m!5591139 () Bool)

(assert (=> d!1490266 m!5591139))

(declare-fun m!5591141 () Bool)

(assert (=> bm!327710 m!5591141))

(declare-fun m!5591143 () Bool)

(assert (=> b!4689515 m!5591143))

(declare-fun m!5591145 () Bool)

(assert (=> bm!327709 m!5591145))

(assert (=> b!4689356 d!1490266))

(declare-fun bs!1086150 () Bool)

(declare-fun d!1490308 () Bool)

(assert (= bs!1086150 (and d!1490308 start!474300)))

(declare-fun lambda!206999 () Int)

(assert (=> bs!1086150 (= lambda!206999 lambda!206943)))

(declare-fun bs!1086151 () Bool)

(assert (= bs!1086151 (and d!1490308 d!1490240)))

(assert (=> bs!1086151 (not (= lambda!206999 lambda!206946))))

(declare-fun lt!1849176 () ListMap!4957)

(assert (=> d!1490308 (invariantList!1407 (toList!5593 lt!1849176))))

(declare-fun e!2925614 () ListMap!4957)

(assert (=> d!1490308 (= lt!1849176 e!2925614)))

(declare-fun c!801815 () Bool)

(assert (=> d!1490308 (= c!801815 ((_ is Cons!52404) (t!359702 (toList!5594 lm!2023))))))

(assert (=> d!1490308 (forall!11317 (t!359702 (toList!5594 lm!2023)) lambda!206999)))

(assert (=> d!1490308 (= (extractMap!1878 (t!359702 (toList!5594 lm!2023))) lt!1849176)))

(declare-fun b!4689528 () Bool)

(assert (=> b!4689528 (= e!2925614 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 (t!359702 (toList!5594 lm!2023)))) (extractMap!1878 (t!359702 (t!359702 (toList!5594 lm!2023))))))))

(declare-fun b!4689529 () Bool)

(assert (=> b!4689529 (= e!2925614 (ListMap!4958 Nil!52403))))

(assert (= (and d!1490308 c!801815) b!4689528))

(assert (= (and d!1490308 (not c!801815)) b!4689529))

(declare-fun m!5591147 () Bool)

(assert (=> d!1490308 m!5591147))

(declare-fun m!5591149 () Bool)

(assert (=> d!1490308 m!5591149))

(declare-fun m!5591151 () Bool)

(assert (=> b!4689528 m!5591151))

(assert (=> b!4689528 m!5591151))

(declare-fun m!5591153 () Bool)

(assert (=> b!4689528 m!5591153))

(assert (=> b!4689356 d!1490308))

(declare-fun d!1490310 () Bool)

(declare-fun tail!8586 (List!52528) List!52528)

(assert (=> d!1490310 (= (tail!8584 lm!2023) (ListLongMap!4124 (tail!8586 (toList!5594 lm!2023))))))

(declare-fun bs!1086152 () Bool)

(assert (= bs!1086152 d!1490310))

(declare-fun m!5591155 () Bool)

(assert (=> bs!1086152 m!5591155))

(assert (=> b!4689356 d!1490310))

(declare-fun d!1490312 () Bool)

(declare-fun res!1977911 () Bool)

(declare-fun e!2925619 () Bool)

(assert (=> d!1490312 (=> res!1977911 e!2925619)))

(assert (=> d!1490312 (= res!1977911 (not ((_ is Cons!52403) newBucket!218)))))

(assert (=> d!1490312 (= (noDuplicateKeys!1852 newBucket!218) e!2925619)))

(declare-fun b!4689534 () Bool)

(declare-fun e!2925620 () Bool)

(assert (=> b!4689534 (= e!2925619 e!2925620)))

(declare-fun res!1977912 () Bool)

(assert (=> b!4689534 (=> (not res!1977912) (not e!2925620))))

(assert (=> b!4689534 (= res!1977912 (not (containsKey!3047 (t!359701 newBucket!218) (_1!30195 (h!58646 newBucket!218)))))))

(declare-fun b!4689535 () Bool)

(assert (=> b!4689535 (= e!2925620 (noDuplicateKeys!1852 (t!359701 newBucket!218)))))

(assert (= (and d!1490312 (not res!1977911)) b!4689534))

(assert (= (and b!4689534 res!1977912) b!4689535))

(declare-fun m!5591157 () Bool)

(assert (=> b!4689534 m!5591157))

(declare-fun m!5591159 () Bool)

(assert (=> b!4689535 m!5591159))

(assert (=> b!4689375 d!1490312))

(declare-fun d!1490314 () Bool)

(declare-fun lt!1849205 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9161 (List!52528) (InoxSet tuple2!53804))

(assert (=> d!1490314 (= lt!1849205 (select (content!9161 (toList!5594 lm!2023)) lt!1849006))))

(declare-fun e!2925625 () Bool)

(assert (=> d!1490314 (= lt!1849205 e!2925625)))

(declare-fun res!1977918 () Bool)

(assert (=> d!1490314 (=> (not res!1977918) (not e!2925625))))

(assert (=> d!1490314 (= res!1977918 ((_ is Cons!52404) (toList!5594 lm!2023)))))

(assert (=> d!1490314 (= (contains!15598 (toList!5594 lm!2023) lt!1849006) lt!1849205)))

(declare-fun b!4689540 () Bool)

(declare-fun e!2925626 () Bool)

(assert (=> b!4689540 (= e!2925625 e!2925626)))

(declare-fun res!1977917 () Bool)

(assert (=> b!4689540 (=> res!1977917 e!2925626)))

(assert (=> b!4689540 (= res!1977917 (= (h!58647 (toList!5594 lm!2023)) lt!1849006))))

(declare-fun b!4689541 () Bool)

(assert (=> b!4689541 (= e!2925626 (contains!15598 (t!359702 (toList!5594 lm!2023)) lt!1849006))))

(assert (= (and d!1490314 res!1977918) b!4689540))

(assert (= (and b!4689540 (not res!1977917)) b!4689541))

(declare-fun m!5591161 () Bool)

(assert (=> d!1490314 m!5591161))

(declare-fun m!5591163 () Bool)

(assert (=> d!1490314 m!5591163))

(declare-fun m!5591165 () Bool)

(assert (=> b!4689541 m!5591165))

(assert (=> b!4689365 d!1490314))

(declare-fun bs!1086153 () Bool)

(declare-fun d!1490316 () Bool)

(assert (= bs!1086153 (and d!1490316 start!474300)))

(declare-fun lambda!207024 () Int)

(assert (=> bs!1086153 (= lambda!207024 lambda!206943)))

(declare-fun bs!1086154 () Bool)

(assert (= bs!1086154 (and d!1490316 d!1490240)))

(assert (=> bs!1086154 (not (= lambda!207024 lambda!206946))))

(declare-fun bs!1086155 () Bool)

(assert (= bs!1086155 (and d!1490316 d!1490308)))

(assert (=> bs!1086155 (= lambda!207024 lambda!206999)))

(assert (=> d!1490316 (contains!15599 lm!2023 (hash!4061 hashF!1323 key!4653))))

(declare-fun lt!1849218 () Unit!123901)

(declare-fun choose!32569 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> d!1490316 (= lt!1849218 (choose!32569 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490316 (forall!11317 (toList!5594 lm!2023) lambda!207024)))

(assert (=> d!1490316 (= (lemmaInGenMapThenLongMapContainsHash!662 lm!2023 key!4653 hashF!1323) lt!1849218)))

(declare-fun bs!1086156 () Bool)

(assert (= bs!1086156 d!1490316))

(assert (=> bs!1086156 m!5590951))

(assert (=> bs!1086156 m!5590951))

(declare-fun m!5591167 () Bool)

(assert (=> bs!1086156 m!5591167))

(declare-fun m!5591169 () Bool)

(assert (=> bs!1086156 m!5591169))

(declare-fun m!5591171 () Bool)

(assert (=> bs!1086156 m!5591171))

(assert (=> b!4689365 d!1490316))

(declare-fun d!1490318 () Bool)

(declare-fun isEmpty!29092 (Option!12071) Bool)

(assert (=> d!1490318 (= (isDefined!9326 (getPair!456 lt!1849004 key!4653)) (not (isEmpty!29092 (getPair!456 lt!1849004 key!4653))))))

(declare-fun bs!1086157 () Bool)

(assert (= bs!1086157 d!1490318))

(assert (=> bs!1086157 m!5590915))

(declare-fun m!5591173 () Bool)

(assert (=> bs!1086157 m!5591173))

(assert (=> b!4689365 d!1490318))

(declare-fun b!4689564 () Bool)

(declare-fun e!2925645 () Bool)

(declare-fun e!2925641 () Bool)

(assert (=> b!4689564 (= e!2925645 e!2925641)))

(declare-fun res!1977935 () Bool)

(assert (=> b!4689564 (=> (not res!1977935) (not e!2925641))))

(declare-fun lt!1849221 () Option!12071)

(assert (=> b!4689564 (= res!1977935 (isDefined!9326 lt!1849221))))

(declare-fun b!4689565 () Bool)

(declare-fun res!1977936 () Bool)

(assert (=> b!4689565 (=> (not res!1977936) (not e!2925641))))

(declare-fun get!17488 (Option!12071) tuple2!53802)

(assert (=> b!4689565 (= res!1977936 (= (_1!30195 (get!17488 lt!1849221)) key!4653))))

(declare-fun b!4689566 () Bool)

(declare-fun e!2925642 () Option!12071)

(assert (=> b!4689566 (= e!2925642 None!12070)))

(declare-fun b!4689567 () Bool)

(declare-fun contains!15602 (List!52527 tuple2!53802) Bool)

(assert (=> b!4689567 (= e!2925641 (contains!15602 lt!1849004 (get!17488 lt!1849221)))))

(declare-fun b!4689568 () Bool)

(assert (=> b!4689568 (= e!2925642 (getPair!456 (t!359701 lt!1849004) key!4653))))

(declare-fun b!4689569 () Bool)

(declare-fun e!2925644 () Option!12071)

(assert (=> b!4689569 (= e!2925644 (Some!12070 (h!58646 lt!1849004)))))

(declare-fun d!1490320 () Bool)

(assert (=> d!1490320 e!2925645))

(declare-fun res!1977933 () Bool)

(assert (=> d!1490320 (=> res!1977933 e!2925645)))

(declare-fun e!2925643 () Bool)

(assert (=> d!1490320 (= res!1977933 e!2925643)))

(declare-fun res!1977934 () Bool)

(assert (=> d!1490320 (=> (not res!1977934) (not e!2925643))))

(assert (=> d!1490320 (= res!1977934 (isEmpty!29092 lt!1849221))))

(assert (=> d!1490320 (= lt!1849221 e!2925644)))

(declare-fun c!801821 () Bool)

(assert (=> d!1490320 (= c!801821 (and ((_ is Cons!52403) lt!1849004) (= (_1!30195 (h!58646 lt!1849004)) key!4653)))))

(assert (=> d!1490320 (noDuplicateKeys!1852 lt!1849004)))

(assert (=> d!1490320 (= (getPair!456 lt!1849004 key!4653) lt!1849221)))

(declare-fun b!4689570 () Bool)

(assert (=> b!4689570 (= e!2925644 e!2925642)))

(declare-fun c!801820 () Bool)

(assert (=> b!4689570 (= c!801820 ((_ is Cons!52403) lt!1849004))))

(declare-fun b!4689571 () Bool)

(assert (=> b!4689571 (= e!2925643 (not (containsKey!3047 lt!1849004 key!4653)))))

(assert (= (and d!1490320 c!801821) b!4689569))

(assert (= (and d!1490320 (not c!801821)) b!4689570))

(assert (= (and b!4689570 c!801820) b!4689568))

(assert (= (and b!4689570 (not c!801820)) b!4689566))

(assert (= (and d!1490320 res!1977934) b!4689571))

(assert (= (and d!1490320 (not res!1977933)) b!4689564))

(assert (= (and b!4689564 res!1977935) b!4689565))

(assert (= (and b!4689565 res!1977936) b!4689567))

(declare-fun m!5591175 () Bool)

(assert (=> b!4689564 m!5591175))

(declare-fun m!5591177 () Bool)

(assert (=> b!4689567 m!5591177))

(assert (=> b!4689567 m!5591177))

(declare-fun m!5591179 () Bool)

(assert (=> b!4689567 m!5591179))

(declare-fun m!5591181 () Bool)

(assert (=> d!1490320 m!5591181))

(declare-fun m!5591183 () Bool)

(assert (=> d!1490320 m!5591183))

(declare-fun m!5591185 () Bool)

(assert (=> b!4689571 m!5591185))

(assert (=> b!4689565 m!5591177))

(declare-fun m!5591187 () Bool)

(assert (=> b!4689568 m!5591187))

(assert (=> b!4689365 d!1490320))

(declare-fun d!1490322 () Bool)

(assert (=> d!1490322 (containsKey!3047 oldBucket!34 key!4653)))

(declare-fun lt!1849245 () Unit!123901)

(declare-fun choose!32571 (List!52527 K!13780 Hashable!6221) Unit!123901)

(assert (=> d!1490322 (= lt!1849245 (choose!32571 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1490322 (noDuplicateKeys!1852 oldBucket!34)))

(assert (=> d!1490322 (= (lemmaGetPairDefinedThenContainsKey!204 oldBucket!34 key!4653 hashF!1323) lt!1849245)))

(declare-fun bs!1086159 () Bool)

(assert (= bs!1086159 d!1490322))

(assert (=> bs!1086159 m!5590931))

(declare-fun m!5591189 () Bool)

(assert (=> bs!1086159 m!5591189))

(assert (=> bs!1086159 m!5590859))

(assert (=> b!4689365 d!1490322))

(declare-fun d!1490324 () Bool)

(declare-fun res!1977944 () Bool)

(declare-fun e!2925653 () Bool)

(assert (=> d!1490324 (=> res!1977944 e!2925653)))

(assert (=> d!1490324 (= res!1977944 (and ((_ is Cons!52403) (t!359701 oldBucket!34)) (= (_1!30195 (h!58646 (t!359701 oldBucket!34))) key!4653)))))

(assert (=> d!1490324 (= (containsKey!3047 (t!359701 oldBucket!34) key!4653) e!2925653)))

(declare-fun b!4689583 () Bool)

(declare-fun e!2925654 () Bool)

(assert (=> b!4689583 (= e!2925653 e!2925654)))

(declare-fun res!1977945 () Bool)

(assert (=> b!4689583 (=> (not res!1977945) (not e!2925654))))

(assert (=> b!4689583 (= res!1977945 ((_ is Cons!52403) (t!359701 oldBucket!34)))))

(declare-fun b!4689584 () Bool)

(assert (=> b!4689584 (= e!2925654 (containsKey!3047 (t!359701 (t!359701 oldBucket!34)) key!4653))))

(assert (= (and d!1490324 (not res!1977944)) b!4689583))

(assert (= (and b!4689583 res!1977945) b!4689584))

(declare-fun m!5591201 () Bool)

(assert (=> b!4689584 m!5591201))

(assert (=> b!4689365 d!1490324))

(declare-fun d!1490326 () Bool)

(declare-fun res!1977946 () Bool)

(declare-fun e!2925655 () Bool)

(assert (=> d!1490326 (=> res!1977946 e!2925655)))

(assert (=> d!1490326 (= res!1977946 (and ((_ is Cons!52403) oldBucket!34) (= (_1!30195 (h!58646 oldBucket!34)) key!4653)))))

(assert (=> d!1490326 (= (containsKey!3047 oldBucket!34 key!4653) e!2925655)))

(declare-fun b!4689585 () Bool)

(declare-fun e!2925656 () Bool)

(assert (=> b!4689585 (= e!2925655 e!2925656)))

(declare-fun res!1977947 () Bool)

(assert (=> b!4689585 (=> (not res!1977947) (not e!2925656))))

(assert (=> b!4689585 (= res!1977947 ((_ is Cons!52403) oldBucket!34))))

(declare-fun b!4689586 () Bool)

(assert (=> b!4689586 (= e!2925656 (containsKey!3047 (t!359701 oldBucket!34) key!4653))))

(assert (= (and d!1490326 (not res!1977946)) b!4689585))

(assert (= (and b!4689585 res!1977947) b!4689586))

(assert (=> b!4689586 m!5590925))

(assert (=> b!4689365 d!1490326))

(declare-fun d!1490328 () Bool)

(assert (=> d!1490328 (contains!15598 (toList!5594 lm!2023) (tuple2!53805 lt!1849015 lt!1849004))))

(declare-fun lt!1849248 () Unit!123901)

(declare-fun choose!32572 (ListLongMap!4123 (_ BitVec 64) List!52527) Unit!123901)

(assert (=> d!1490328 (= lt!1849248 (choose!32572 lm!2023 lt!1849015 lt!1849004))))

(assert (=> d!1490328 (contains!15599 lm!2023 lt!1849015)))

(assert (=> d!1490328 (= (lemmaGetValueImpliesTupleContained!261 lm!2023 lt!1849015 lt!1849004) lt!1849248)))

(declare-fun bs!1086162 () Bool)

(assert (= bs!1086162 d!1490328))

(declare-fun m!5591229 () Bool)

(assert (=> bs!1086162 m!5591229))

(declare-fun m!5591231 () Bool)

(assert (=> bs!1086162 m!5591231))

(assert (=> bs!1086162 m!5590933))

(assert (=> b!4689365 d!1490328))

(declare-fun d!1490332 () Bool)

(declare-fun e!2925661 () Bool)

(assert (=> d!1490332 e!2925661))

(declare-fun res!1977950 () Bool)

(assert (=> d!1490332 (=> res!1977950 e!2925661)))

(declare-fun lt!1849259 () Bool)

(assert (=> d!1490332 (= res!1977950 (not lt!1849259))))

(declare-fun lt!1849257 () Bool)

(assert (=> d!1490332 (= lt!1849259 lt!1849257)))

(declare-fun lt!1849258 () Unit!123901)

(declare-fun e!2925662 () Unit!123901)

(assert (=> d!1490332 (= lt!1849258 e!2925662)))

(declare-fun c!801825 () Bool)

(assert (=> d!1490332 (= c!801825 lt!1849257)))

(declare-fun containsKey!3049 (List!52528 (_ BitVec 64)) Bool)

(assert (=> d!1490332 (= lt!1849257 (containsKey!3049 (toList!5594 lm!2023) lt!1849015))))

(assert (=> d!1490332 (= (contains!15599 lm!2023 lt!1849015) lt!1849259)))

(declare-fun b!4689594 () Bool)

(declare-fun lt!1849260 () Unit!123901)

(assert (=> b!4689594 (= e!2925662 lt!1849260)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1667 (List!52528 (_ BitVec 64)) Unit!123901)

(assert (=> b!4689594 (= lt!1849260 (lemmaContainsKeyImpliesGetValueByKeyDefined!1667 (toList!5594 lm!2023) lt!1849015))))

(declare-datatypes ((Option!12074 0))(
  ( (None!12073) (Some!12073 (v!46488 List!52527)) )
))
(declare-fun isDefined!9328 (Option!12074) Bool)

(declare-fun getValueByKey!1776 (List!52528 (_ BitVec 64)) Option!12074)

(assert (=> b!4689594 (isDefined!9328 (getValueByKey!1776 (toList!5594 lm!2023) lt!1849015))))

(declare-fun b!4689595 () Bool)

(declare-fun Unit!123926 () Unit!123901)

(assert (=> b!4689595 (= e!2925662 Unit!123926)))

(declare-fun b!4689596 () Bool)

(assert (=> b!4689596 (= e!2925661 (isDefined!9328 (getValueByKey!1776 (toList!5594 lm!2023) lt!1849015)))))

(assert (= (and d!1490332 c!801825) b!4689594))

(assert (= (and d!1490332 (not c!801825)) b!4689595))

(assert (= (and d!1490332 (not res!1977950)) b!4689596))

(declare-fun m!5591233 () Bool)

(assert (=> d!1490332 m!5591233))

(declare-fun m!5591235 () Bool)

(assert (=> b!4689594 m!5591235))

(declare-fun m!5591237 () Bool)

(assert (=> b!4689594 m!5591237))

(assert (=> b!4689594 m!5591237))

(declare-fun m!5591239 () Bool)

(assert (=> b!4689594 m!5591239))

(assert (=> b!4689596 m!5591237))

(assert (=> b!4689596 m!5591237))

(assert (=> b!4689596 m!5591239))

(assert (=> b!4689365 d!1490332))

(declare-fun d!1490334 () Bool)

(assert (=> d!1490334 (dynLambda!21711 lambda!206943 lt!1849006)))

(declare-fun lt!1849267 () Unit!123901)

(declare-fun choose!32574 (List!52528 Int tuple2!53804) Unit!123901)

(assert (=> d!1490334 (= lt!1849267 (choose!32574 (toList!5594 lm!2023) lambda!206943 lt!1849006))))

(declare-fun e!2925665 () Bool)

(assert (=> d!1490334 e!2925665))

(declare-fun res!1977953 () Bool)

(assert (=> d!1490334 (=> (not res!1977953) (not e!2925665))))

(assert (=> d!1490334 (= res!1977953 (forall!11317 (toList!5594 lm!2023) lambda!206943))))

(assert (=> d!1490334 (= (forallContained!3424 (toList!5594 lm!2023) lambda!206943 lt!1849006) lt!1849267)))

(declare-fun b!4689599 () Bool)

(assert (=> b!4689599 (= e!2925665 (contains!15598 (toList!5594 lm!2023) lt!1849006))))

(assert (= (and d!1490334 res!1977953) b!4689599))

(declare-fun b_lambda!176975 () Bool)

(assert (=> (not b_lambda!176975) (not d!1490334)))

(declare-fun m!5591249 () Bool)

(assert (=> d!1490334 m!5591249))

(declare-fun m!5591251 () Bool)

(assert (=> d!1490334 m!5591251))

(assert (=> d!1490334 m!5590851))

(assert (=> b!4689599 m!5590919))

(assert (=> b!4689365 d!1490334))

(declare-fun d!1490340 () Bool)

(declare-fun get!17489 (Option!12074) List!52527)

(assert (=> d!1490340 (= (apply!12335 lm!2023 lt!1849015) (get!17489 (getValueByKey!1776 (toList!5594 lm!2023) lt!1849015)))))

(declare-fun bs!1086165 () Bool)

(assert (= bs!1086165 d!1490340))

(assert (=> bs!1086165 m!5591237))

(assert (=> bs!1086165 m!5591237))

(declare-fun m!5591253 () Bool)

(assert (=> bs!1086165 m!5591253))

(assert (=> b!4689365 d!1490340))

(declare-fun bs!1086243 () Bool)

(declare-fun d!1490342 () Bool)

(assert (= bs!1086243 (and d!1490342 start!474300)))

(declare-fun lambda!207055 () Int)

(assert (=> bs!1086243 (= lambda!207055 lambda!206943)))

(declare-fun bs!1086244 () Bool)

(assert (= bs!1086244 (and d!1490342 d!1490240)))

(assert (=> bs!1086244 (not (= lambda!207055 lambda!206946))))

(declare-fun bs!1086245 () Bool)

(assert (= bs!1086245 (and d!1490342 d!1490308)))

(assert (=> bs!1086245 (= lambda!207055 lambda!206999)))

(declare-fun bs!1086246 () Bool)

(assert (= bs!1086246 (and d!1490342 d!1490316)))

(assert (=> bs!1086246 (= lambda!207055 lambda!207024)))

(declare-fun b!4689626 () Bool)

(declare-fun res!1977972 () Bool)

(declare-fun e!2925680 () Bool)

(assert (=> b!4689626 (=> (not res!1977972) (not e!2925680))))

(assert (=> b!4689626 (= res!1977972 (contains!15600 (extractMap!1878 (toList!5594 lm!2023)) key!4653))))

(declare-fun lt!1849358 () List!52527)

(declare-fun e!2925681 () Bool)

(declare-fun lt!1849351 () (_ BitVec 64))

(declare-fun b!4689628 () Bool)

(assert (=> b!4689628 (= e!2925681 (= (getValueByKey!1776 (toList!5594 lm!2023) lt!1849351) (Some!12073 lt!1849358)))))

(declare-fun b!4689625 () Bool)

(declare-fun res!1977974 () Bool)

(assert (=> b!4689625 (=> (not res!1977974) (not e!2925680))))

(assert (=> b!4689625 (= res!1977974 (allKeysSameHashInMap!1766 lm!2023 hashF!1323))))

(assert (=> d!1490342 e!2925680))

(declare-fun res!1977973 () Bool)

(assert (=> d!1490342 (=> (not res!1977973) (not e!2925680))))

(assert (=> d!1490342 (= res!1977973 (forall!11317 (toList!5594 lm!2023) lambda!207055))))

(declare-fun lt!1849356 () Unit!123901)

(declare-fun choose!32575 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> d!1490342 (= lt!1849356 (choose!32575 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490342 (forall!11317 (toList!5594 lm!2023) lambda!207055)))

(assert (=> d!1490342 (= (lemmaInGenMapThenGetPairDefined!252 lm!2023 key!4653 hashF!1323) lt!1849356)))

(declare-fun b!4689627 () Bool)

(assert (=> b!4689627 (= e!2925680 (isDefined!9326 (getPair!456 (apply!12335 lm!2023 (hash!4061 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1849354 () Unit!123901)

(assert (=> b!4689627 (= lt!1849354 (forallContained!3424 (toList!5594 lm!2023) lambda!207055 (tuple2!53805 (hash!4061 hashF!1323 key!4653) (apply!12335 lm!2023 (hash!4061 hashF!1323 key!4653)))))))

(declare-fun lt!1849353 () Unit!123901)

(declare-fun lt!1849352 () Unit!123901)

(assert (=> b!4689627 (= lt!1849353 lt!1849352)))

(assert (=> b!4689627 (contains!15598 (toList!5594 lm!2023) (tuple2!53805 lt!1849351 lt!1849358))))

(assert (=> b!4689627 (= lt!1849352 (lemmaGetValueImpliesTupleContained!261 lm!2023 lt!1849351 lt!1849358))))

(assert (=> b!4689627 e!2925681))

(declare-fun res!1977971 () Bool)

(assert (=> b!4689627 (=> (not res!1977971) (not e!2925681))))

(assert (=> b!4689627 (= res!1977971 (contains!15599 lm!2023 lt!1849351))))

(assert (=> b!4689627 (= lt!1849358 (apply!12335 lm!2023 (hash!4061 hashF!1323 key!4653)))))

(assert (=> b!4689627 (= lt!1849351 (hash!4061 hashF!1323 key!4653))))

(declare-fun lt!1849357 () Unit!123901)

(declare-fun lt!1849355 () Unit!123901)

(assert (=> b!4689627 (= lt!1849357 lt!1849355)))

(assert (=> b!4689627 (contains!15599 lm!2023 (hash!4061 hashF!1323 key!4653))))

(assert (=> b!4689627 (= lt!1849355 (lemmaInGenMapThenLongMapContainsHash!662 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1490342 res!1977973) b!4689625))

(assert (= (and b!4689625 res!1977974) b!4689626))

(assert (= (and b!4689626 res!1977972) b!4689627))

(assert (= (and b!4689627 res!1977971) b!4689628))

(declare-fun m!5591377 () Bool)

(assert (=> b!4689628 m!5591377))

(declare-fun m!5591379 () Bool)

(assert (=> d!1490342 m!5591379))

(declare-fun m!5591381 () Bool)

(assert (=> d!1490342 m!5591381))

(assert (=> d!1490342 m!5591379))

(declare-fun m!5591383 () Bool)

(assert (=> b!4689627 m!5591383))

(declare-fun m!5591385 () Bool)

(assert (=> b!4689627 m!5591385))

(declare-fun m!5591387 () Bool)

(assert (=> b!4689627 m!5591387))

(assert (=> b!4689627 m!5590951))

(assert (=> b!4689627 m!5591167))

(declare-fun m!5591389 () Bool)

(assert (=> b!4689627 m!5591389))

(declare-fun m!5591391 () Bool)

(assert (=> b!4689627 m!5591391))

(assert (=> b!4689627 m!5590921))

(declare-fun m!5591393 () Bool)

(assert (=> b!4689627 m!5591393))

(assert (=> b!4689627 m!5590951))

(declare-fun m!5591395 () Bool)

(assert (=> b!4689627 m!5591395))

(assert (=> b!4689627 m!5590951))

(assert (=> b!4689627 m!5591395))

(assert (=> b!4689627 m!5591383))

(assert (=> b!4689625 m!5590899))

(assert (=> b!4689626 m!5590909))

(assert (=> b!4689626 m!5590909))

(declare-fun m!5591397 () Bool)

(assert (=> b!4689626 m!5591397))

(assert (=> b!4689365 d!1490342))

(declare-fun d!1490358 () Bool)

(declare-fun lt!1849359 () List!52527)

(assert (=> d!1490358 (not (containsKey!3047 lt!1849359 key!4653))))

(declare-fun e!2925683 () List!52527)

(assert (=> d!1490358 (= lt!1849359 e!2925683)))

(declare-fun c!801830 () Bool)

(assert (=> d!1490358 (= c!801830 (and ((_ is Cons!52403) (t!359701 oldBucket!34)) (= (_1!30195 (h!58646 (t!359701 oldBucket!34))) key!4653)))))

(assert (=> d!1490358 (noDuplicateKeys!1852 (t!359701 oldBucket!34))))

(assert (=> d!1490358 (= (removePairForKey!1447 (t!359701 oldBucket!34) key!4653) lt!1849359)))

(declare-fun b!4689630 () Bool)

(declare-fun e!2925682 () List!52527)

(assert (=> b!4689630 (= e!2925683 e!2925682)))

(declare-fun c!801831 () Bool)

(assert (=> b!4689630 (= c!801831 ((_ is Cons!52403) (t!359701 oldBucket!34)))))

(declare-fun b!4689632 () Bool)

(assert (=> b!4689632 (= e!2925682 Nil!52403)))

(declare-fun b!4689629 () Bool)

(assert (=> b!4689629 (= e!2925683 (t!359701 (t!359701 oldBucket!34)))))

(declare-fun b!4689631 () Bool)

(assert (=> b!4689631 (= e!2925682 (Cons!52403 (h!58646 (t!359701 oldBucket!34)) (removePairForKey!1447 (t!359701 (t!359701 oldBucket!34)) key!4653)))))

(assert (= (and d!1490358 c!801830) b!4689629))

(assert (= (and d!1490358 (not c!801830)) b!4689630))

(assert (= (and b!4689630 c!801831) b!4689631))

(assert (= (and b!4689630 (not c!801831)) b!4689632))

(declare-fun m!5591399 () Bool)

(assert (=> d!1490358 m!5591399))

(declare-fun m!5591401 () Bool)

(assert (=> d!1490358 m!5591401))

(declare-fun m!5591403 () Bool)

(assert (=> b!4689631 m!5591403))

(assert (=> b!4689358 d!1490358))

(declare-fun d!1490360 () Bool)

(declare-fun res!1977975 () Bool)

(declare-fun e!2925684 () Bool)

(assert (=> d!1490360 (=> res!1977975 e!2925684)))

(assert (=> d!1490360 (= res!1977975 (not ((_ is Cons!52403) oldBucket!34)))))

(assert (=> d!1490360 (= (noDuplicateKeys!1852 oldBucket!34) e!2925684)))

(declare-fun b!4689633 () Bool)

(declare-fun e!2925685 () Bool)

(assert (=> b!4689633 (= e!2925684 e!2925685)))

(declare-fun res!1977976 () Bool)

(assert (=> b!4689633 (=> (not res!1977976) (not e!2925685))))

(assert (=> b!4689633 (= res!1977976 (not (containsKey!3047 (t!359701 oldBucket!34) (_1!30195 (h!58646 oldBucket!34)))))))

(declare-fun b!4689634 () Bool)

(assert (=> b!4689634 (= e!2925685 (noDuplicateKeys!1852 (t!359701 oldBucket!34)))))

(assert (= (and d!1490360 (not res!1977975)) b!4689633))

(assert (= (and b!4689633 res!1977976) b!4689634))

(declare-fun m!5591405 () Bool)

(assert (=> b!4689633 m!5591405))

(assert (=> b!4689634 m!5591401))

(assert (=> b!4689369 d!1490360))

(declare-fun d!1490362 () Bool)

(declare-fun content!9162 (List!52527) (InoxSet tuple2!53802))

(assert (=> d!1490362 (= (eq!1011 (extractMap!1878 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))) (+!2136 (extractMap!1878 lt!1849002) (h!58646 oldBucket!34))) (= (content!9162 (toList!5593 (extractMap!1878 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))))) (content!9162 (toList!5593 (+!2136 (extractMap!1878 lt!1849002) (h!58646 oldBucket!34))))))))

(declare-fun bs!1086247 () Bool)

(assert (= bs!1086247 d!1490362))

(declare-fun m!5591407 () Bool)

(assert (=> bs!1086247 m!5591407))

(declare-fun m!5591409 () Bool)

(assert (=> bs!1086247 m!5591409))

(assert (=> b!4689367 d!1490362))

(declare-fun bs!1086255 () Bool)

(declare-fun d!1490364 () Bool)

(assert (= bs!1086255 (and d!1490364 d!1490240)))

(declare-fun lambda!207059 () Int)

(assert (=> bs!1086255 (not (= lambda!207059 lambda!206946))))

(declare-fun bs!1086256 () Bool)

(assert (= bs!1086256 (and d!1490364 d!1490342)))

(assert (=> bs!1086256 (= lambda!207059 lambda!207055)))

(declare-fun bs!1086257 () Bool)

(assert (= bs!1086257 (and d!1490364 d!1490316)))

(assert (=> bs!1086257 (= lambda!207059 lambda!207024)))

(declare-fun bs!1086258 () Bool)

(assert (= bs!1086258 (and d!1490364 start!474300)))

(assert (=> bs!1086258 (= lambda!207059 lambda!206943)))

(declare-fun bs!1086259 () Bool)

(assert (= bs!1086259 (and d!1490364 d!1490308)))

(assert (=> bs!1086259 (= lambda!207059 lambda!206999)))

(assert (=> d!1490364 (contains!15600 (extractMap!1878 (toList!5594 (ListLongMap!4124 lt!1849007))) key!4653)))

(declare-fun lt!1849387 () Unit!123901)

(declare-fun choose!32576 (ListLongMap!4123 K!13780 Hashable!6221) Unit!123901)

(assert (=> d!1490364 (= lt!1849387 (choose!32576 (ListLongMap!4124 lt!1849007) key!4653 hashF!1323))))

(assert (=> d!1490364 (forall!11317 (toList!5594 (ListLongMap!4124 lt!1849007)) lambda!207059)))

(assert (=> d!1490364 (= (lemmaListContainsThenExtractedMapContains!444 (ListLongMap!4124 lt!1849007) key!4653 hashF!1323) lt!1849387)))

(declare-fun bs!1086260 () Bool)

(assert (= bs!1086260 d!1490364))

(declare-fun m!5591439 () Bool)

(assert (=> bs!1086260 m!5591439))

(assert (=> bs!1086260 m!5591439))

(declare-fun m!5591441 () Bool)

(assert (=> bs!1086260 m!5591441))

(declare-fun m!5591443 () Bool)

(assert (=> bs!1086260 m!5591443))

(declare-fun m!5591445 () Bool)

(assert (=> bs!1086260 m!5591445))

(assert (=> b!4689367 d!1490364))

(declare-fun d!1490372 () Bool)

(assert (=> d!1490372 (= (head!9967 oldBucket!34) (h!58646 oldBucket!34))))

(assert (=> b!4689367 d!1490372))

(declare-fun d!1490374 () Bool)

(assert (=> d!1490374 (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849010 lt!1849001) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849010))))

(declare-fun lt!1849421 () Unit!123901)

(declare-fun choose!32577 (tuple2!53802 List!52527 ListMap!4957) Unit!123901)

(assert (=> d!1490374 (= lt!1849421 (choose!32577 lt!1849010 lt!1849001 lt!1849020))))

(assert (=> d!1490374 (noDuplicateKeys!1852 lt!1849001)))

(assert (=> d!1490374 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!260 lt!1849010 lt!1849001 lt!1849020) lt!1849421)))

(declare-fun bs!1086297 () Bool)

(assert (= bs!1086297 d!1490374))

(declare-fun m!5591485 () Bool)

(assert (=> bs!1086297 m!5591485))

(assert (=> bs!1086297 m!5590861))

(assert (=> bs!1086297 m!5590881))

(assert (=> bs!1086297 m!5590897))

(declare-fun m!5591487 () Bool)

(assert (=> bs!1086297 m!5591487))

(assert (=> bs!1086297 m!5590861))

(assert (=> bs!1086297 m!5590879))

(assert (=> bs!1086297 m!5590879))

(assert (=> bs!1086297 m!5590881))

(assert (=> b!4689367 d!1490374))

(declare-fun d!1490392 () Bool)

(assert (=> d!1490392 (= (head!9967 newBucket!218) (h!58646 newBucket!218))))

(assert (=> b!4689367 d!1490392))

(declare-fun b!4689727 () Bool)

(assert (=> b!4689727 false))

(declare-fun lt!1849440 () Unit!123901)

(declare-fun lt!1849444 () Unit!123901)

(assert (=> b!4689727 (= lt!1849440 lt!1849444)))

(declare-fun containsKey!3050 (List!52527 K!13780) Bool)

(assert (=> b!4689727 (containsKey!3050 (toList!5593 (extractMap!1878 lt!1849007)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!846 (List!52527 K!13780) Unit!123901)

(assert (=> b!4689727 (= lt!1849444 (lemmaInGetKeysListThenContainsKey!846 (toList!5593 (extractMap!1878 lt!1849007)) key!4653))))

(declare-fun e!2925750 () Unit!123901)

(declare-fun Unit!123938 () Unit!123901)

(assert (=> b!4689727 (= e!2925750 Unit!123938)))

(declare-fun b!4689728 () Bool)

(declare-fun e!2925747 () Unit!123901)

(assert (=> b!4689728 (= e!2925747 e!2925750)))

(declare-fun c!801857 () Bool)

(declare-fun call!327744 () Bool)

(assert (=> b!4689728 (= c!801857 call!327744)))

(declare-fun b!4689729 () Bool)

(declare-datatypes ((List!52529 0))(
  ( (Nil!52405) (Cons!52405 (h!58650 K!13780) (t!359705 List!52529)) )
))
(declare-fun e!2925746 () List!52529)

(declare-fun keys!18708 (ListMap!4957) List!52529)

(assert (=> b!4689729 (= e!2925746 (keys!18708 (extractMap!1878 lt!1849007)))))

(declare-fun b!4689730 () Bool)

(declare-fun e!2925749 () Bool)

(declare-fun contains!15603 (List!52529 K!13780) Bool)

(assert (=> b!4689730 (= e!2925749 (not (contains!15603 (keys!18708 (extractMap!1878 lt!1849007)) key!4653)))))

(declare-fun bm!327739 () Bool)

(assert (=> bm!327739 (= call!327744 (contains!15603 e!2925746 key!4653))))

(declare-fun c!801858 () Bool)

(declare-fun c!801856 () Bool)

(assert (=> bm!327739 (= c!801858 c!801856)))

(declare-fun d!1490394 () Bool)

(declare-fun e!2925745 () Bool)

(assert (=> d!1490394 e!2925745))

(declare-fun res!1978008 () Bool)

(assert (=> d!1490394 (=> res!1978008 e!2925745)))

(assert (=> d!1490394 (= res!1978008 e!2925749)))

(declare-fun res!1978006 () Bool)

(assert (=> d!1490394 (=> (not res!1978006) (not e!2925749))))

(declare-fun lt!1849443 () Bool)

(assert (=> d!1490394 (= res!1978006 (not lt!1849443))))

(declare-fun lt!1849441 () Bool)

(assert (=> d!1490394 (= lt!1849443 lt!1849441)))

(declare-fun lt!1849442 () Unit!123901)

(assert (=> d!1490394 (= lt!1849442 e!2925747)))

(assert (=> d!1490394 (= c!801856 lt!1849441)))

(assert (=> d!1490394 (= lt!1849441 (containsKey!3050 (toList!5593 (extractMap!1878 lt!1849007)) key!4653))))

(assert (=> d!1490394 (= (contains!15600 (extractMap!1878 lt!1849007) key!4653) lt!1849443)))

(declare-fun b!4689731 () Bool)

(declare-fun e!2925748 () Bool)

(assert (=> b!4689731 (= e!2925748 (contains!15603 (keys!18708 (extractMap!1878 lt!1849007)) key!4653))))

(declare-fun b!4689732 () Bool)

(declare-fun Unit!123943 () Unit!123901)

(assert (=> b!4689732 (= e!2925750 Unit!123943)))

(declare-fun b!4689733 () Bool)

(declare-fun lt!1849446 () Unit!123901)

(assert (=> b!4689733 (= e!2925747 lt!1849446)))

(declare-fun lt!1849445 () Unit!123901)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1668 (List!52527 K!13780) Unit!123901)

(assert (=> b!4689733 (= lt!1849445 (lemmaContainsKeyImpliesGetValueByKeyDefined!1668 (toList!5593 (extractMap!1878 lt!1849007)) key!4653))))

(declare-datatypes ((Option!12075 0))(
  ( (None!12074) (Some!12074 (v!46489 V!14026)) )
))
(declare-fun isDefined!9329 (Option!12075) Bool)

(declare-fun getValueByKey!1777 (List!52527 K!13780) Option!12075)

(assert (=> b!4689733 (isDefined!9329 (getValueByKey!1777 (toList!5593 (extractMap!1878 lt!1849007)) key!4653))))

(declare-fun lt!1849439 () Unit!123901)

(assert (=> b!4689733 (= lt!1849439 lt!1849445)))

(declare-fun lemmaInListThenGetKeysListContains!842 (List!52527 K!13780) Unit!123901)

(assert (=> b!4689733 (= lt!1849446 (lemmaInListThenGetKeysListContains!842 (toList!5593 (extractMap!1878 lt!1849007)) key!4653))))

(assert (=> b!4689733 call!327744))

(declare-fun b!4689734 () Bool)

(declare-fun getKeysList!847 (List!52527) List!52529)

(assert (=> b!4689734 (= e!2925746 (getKeysList!847 (toList!5593 (extractMap!1878 lt!1849007))))))

(declare-fun b!4689735 () Bool)

(assert (=> b!4689735 (= e!2925745 e!2925748)))

(declare-fun res!1978007 () Bool)

(assert (=> b!4689735 (=> (not res!1978007) (not e!2925748))))

(assert (=> b!4689735 (= res!1978007 (isDefined!9329 (getValueByKey!1777 (toList!5593 (extractMap!1878 lt!1849007)) key!4653)))))

(assert (= (and d!1490394 c!801856) b!4689733))

(assert (= (and d!1490394 (not c!801856)) b!4689728))

(assert (= (and b!4689728 c!801857) b!4689727))

(assert (= (and b!4689728 (not c!801857)) b!4689732))

(assert (= (or b!4689733 b!4689728) bm!327739))

(assert (= (and bm!327739 c!801858) b!4689734))

(assert (= (and bm!327739 (not c!801858)) b!4689729))

(assert (= (and d!1490394 res!1978006) b!4689730))

(assert (= (and d!1490394 (not res!1978008)) b!4689735))

(assert (= (and b!4689735 res!1978007) b!4689731))

(declare-fun m!5591539 () Bool)

(assert (=> b!4689727 m!5591539))

(declare-fun m!5591541 () Bool)

(assert (=> b!4689727 m!5591541))

(declare-fun m!5591543 () Bool)

(assert (=> b!4689733 m!5591543))

(declare-fun m!5591545 () Bool)

(assert (=> b!4689733 m!5591545))

(assert (=> b!4689733 m!5591545))

(declare-fun m!5591547 () Bool)

(assert (=> b!4689733 m!5591547))

(declare-fun m!5591549 () Bool)

(assert (=> b!4689733 m!5591549))

(assert (=> b!4689729 m!5590887))

(declare-fun m!5591551 () Bool)

(assert (=> b!4689729 m!5591551))

(assert (=> d!1490394 m!5591539))

(assert (=> b!4689731 m!5590887))

(assert (=> b!4689731 m!5591551))

(assert (=> b!4689731 m!5591551))

(declare-fun m!5591553 () Bool)

(assert (=> b!4689731 m!5591553))

(assert (=> b!4689735 m!5591545))

(assert (=> b!4689735 m!5591545))

(assert (=> b!4689735 m!5591547))

(assert (=> b!4689730 m!5590887))

(assert (=> b!4689730 m!5591551))

(assert (=> b!4689730 m!5591551))

(assert (=> b!4689730 m!5591553))

(declare-fun m!5591555 () Bool)

(assert (=> bm!327739 m!5591555))

(declare-fun m!5591557 () Bool)

(assert (=> b!4689734 m!5591557))

(assert (=> b!4689367 d!1490394))

(declare-fun d!1490408 () Bool)

(declare-fun e!2925753 () Bool)

(assert (=> d!1490408 e!2925753))

(declare-fun res!1978013 () Bool)

(assert (=> d!1490408 (=> (not res!1978013) (not e!2925753))))

(declare-fun lt!1849456 () ListMap!4957)

(assert (=> d!1490408 (= res!1978013 (contains!15600 lt!1849456 (_1!30195 lt!1849018)))))

(declare-fun lt!1849457 () List!52527)

(assert (=> d!1490408 (= lt!1849456 (ListMap!4958 lt!1849457))))

(declare-fun lt!1849458 () Unit!123901)

(declare-fun lt!1849455 () Unit!123901)

(assert (=> d!1490408 (= lt!1849458 lt!1849455)))

(assert (=> d!1490408 (= (getValueByKey!1777 lt!1849457 (_1!30195 lt!1849018)) (Some!12074 (_2!30195 lt!1849018)))))

(declare-fun lemmaContainsTupThenGetReturnValue!998 (List!52527 K!13780 V!14026) Unit!123901)

(assert (=> d!1490408 (= lt!1849455 (lemmaContainsTupThenGetReturnValue!998 lt!1849457 (_1!30195 lt!1849018) (_2!30195 lt!1849018)))))

(declare-fun insertNoDuplicatedKeys!506 (List!52527 K!13780 V!14026) List!52527)

(assert (=> d!1490408 (= lt!1849457 (insertNoDuplicatedKeys!506 (toList!5593 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020)) (_1!30195 lt!1849018) (_2!30195 lt!1849018)))))

(assert (=> d!1490408 (= (+!2136 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849018) lt!1849456)))

(declare-fun b!4689740 () Bool)

(declare-fun res!1978014 () Bool)

(assert (=> b!4689740 (=> (not res!1978014) (not e!2925753))))

(assert (=> b!4689740 (= res!1978014 (= (getValueByKey!1777 (toList!5593 lt!1849456) (_1!30195 lt!1849018)) (Some!12074 (_2!30195 lt!1849018))))))

(declare-fun b!4689741 () Bool)

(assert (=> b!4689741 (= e!2925753 (contains!15602 (toList!5593 lt!1849456) lt!1849018))))

(assert (= (and d!1490408 res!1978013) b!4689740))

(assert (= (and b!4689740 res!1978014) b!4689741))

(declare-fun m!5591559 () Bool)

(assert (=> d!1490408 m!5591559))

(declare-fun m!5591561 () Bool)

(assert (=> d!1490408 m!5591561))

(declare-fun m!5591563 () Bool)

(assert (=> d!1490408 m!5591563))

(declare-fun m!5591565 () Bool)

(assert (=> d!1490408 m!5591565))

(declare-fun m!5591567 () Bool)

(assert (=> b!4689740 m!5591567))

(declare-fun m!5591569 () Bool)

(assert (=> b!4689741 m!5591569))

(assert (=> b!4689367 d!1490408))

(declare-fun d!1490410 () Bool)

(assert (=> d!1490410 (= (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849018 lt!1849016) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849018)) (= (content!9162 (toList!5593 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849018 lt!1849016) lt!1849020))) (content!9162 (toList!5593 (+!2136 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849018)))))))

(declare-fun bs!1086355 () Bool)

(assert (= bs!1086355 d!1490410))

(declare-fun m!5591571 () Bool)

(assert (=> bs!1086355 m!5591571))

(declare-fun m!5591573 () Bool)

(assert (=> bs!1086355 m!5591573))

(assert (=> b!4689367 d!1490410))

(declare-fun d!1490412 () Bool)

(declare-fun e!2925754 () Bool)

(assert (=> d!1490412 e!2925754))

(declare-fun res!1978015 () Bool)

(assert (=> d!1490412 (=> (not res!1978015) (not e!2925754))))

(declare-fun lt!1849460 () ListMap!4957)

(assert (=> d!1490412 (= res!1978015 (contains!15600 lt!1849460 (_1!30195 (h!58646 oldBucket!34))))))

(declare-fun lt!1849461 () List!52527)

(assert (=> d!1490412 (= lt!1849460 (ListMap!4958 lt!1849461))))

(declare-fun lt!1849462 () Unit!123901)

(declare-fun lt!1849459 () Unit!123901)

(assert (=> d!1490412 (= lt!1849462 lt!1849459)))

(assert (=> d!1490412 (= (getValueByKey!1777 lt!1849461 (_1!30195 (h!58646 oldBucket!34))) (Some!12074 (_2!30195 (h!58646 oldBucket!34))))))

(assert (=> d!1490412 (= lt!1849459 (lemmaContainsTupThenGetReturnValue!998 lt!1849461 (_1!30195 (h!58646 oldBucket!34)) (_2!30195 (h!58646 oldBucket!34))))))

(assert (=> d!1490412 (= lt!1849461 (insertNoDuplicatedKeys!506 (toList!5593 (extractMap!1878 lt!1849002)) (_1!30195 (h!58646 oldBucket!34)) (_2!30195 (h!58646 oldBucket!34))))))

(assert (=> d!1490412 (= (+!2136 (extractMap!1878 lt!1849002) (h!58646 oldBucket!34)) lt!1849460)))

(declare-fun b!4689742 () Bool)

(declare-fun res!1978016 () Bool)

(assert (=> b!4689742 (=> (not res!1978016) (not e!2925754))))

(assert (=> b!4689742 (= res!1978016 (= (getValueByKey!1777 (toList!5593 lt!1849460) (_1!30195 (h!58646 oldBucket!34))) (Some!12074 (_2!30195 (h!58646 oldBucket!34)))))))

(declare-fun b!4689743 () Bool)

(assert (=> b!4689743 (= e!2925754 (contains!15602 (toList!5593 lt!1849460) (h!58646 oldBucket!34)))))

(assert (= (and d!1490412 res!1978015) b!4689742))

(assert (= (and b!4689742 res!1978016) b!4689743))

(declare-fun m!5591575 () Bool)

(assert (=> d!1490412 m!5591575))

(declare-fun m!5591577 () Bool)

(assert (=> d!1490412 m!5591577))

(declare-fun m!5591579 () Bool)

(assert (=> d!1490412 m!5591579))

(declare-fun m!5591581 () Bool)

(assert (=> d!1490412 m!5591581))

(declare-fun m!5591583 () Bool)

(assert (=> b!4689742 m!5591583))

(declare-fun m!5591585 () Bool)

(assert (=> b!4689743 m!5591585))

(assert (=> b!4689367 d!1490412))

(declare-fun d!1490414 () Bool)

(assert (=> d!1490414 (= (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849010 lt!1849001) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849010)) (= (content!9162 (toList!5593 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849010 lt!1849001) lt!1849020))) (content!9162 (toList!5593 (+!2136 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849010)))))))

(declare-fun bs!1086356 () Bool)

(assert (= bs!1086356 d!1490414))

(declare-fun m!5591587 () Bool)

(assert (=> bs!1086356 m!5591587))

(declare-fun m!5591589 () Bool)

(assert (=> bs!1086356 m!5591589))

(assert (=> b!4689367 d!1490414))

(declare-fun bs!1086357 () Bool)

(declare-fun b!4689745 () Bool)

(assert (= bs!1086357 (and b!4689745 b!4689514)))

(declare-fun lambda!207070 () Int)

(assert (=> bs!1086357 (= lambda!207070 lambda!206991)))

(declare-fun bs!1086358 () Bool)

(assert (= bs!1086358 (and b!4689745 b!4689516)))

(assert (=> bs!1086358 (= lambda!207070 lambda!206992)))

(assert (=> bs!1086358 (= (= lt!1849020 lt!1849151) (= lambda!207070 lambda!206993))))

(declare-fun bs!1086359 () Bool)

(assert (= bs!1086359 (and b!4689745 d!1490266)))

(assert (=> bs!1086359 (= (= lt!1849020 lt!1849167) (= lambda!207070 lambda!206994))))

(assert (=> b!4689745 true))

(declare-fun bs!1086360 () Bool)

(declare-fun b!4689747 () Bool)

(assert (= bs!1086360 (and b!4689747 b!4689745)))

(declare-fun lambda!207071 () Int)

(assert (=> bs!1086360 (= lambda!207071 lambda!207070)))

(declare-fun bs!1086361 () Bool)

(assert (= bs!1086361 (and b!4689747 d!1490266)))

(assert (=> bs!1086361 (= (= lt!1849020 lt!1849167) (= lambda!207071 lambda!206994))))

(declare-fun bs!1086362 () Bool)

(assert (= bs!1086362 (and b!4689747 b!4689514)))

(assert (=> bs!1086362 (= lambda!207071 lambda!206991)))

(declare-fun bs!1086363 () Bool)

(assert (= bs!1086363 (and b!4689747 b!4689516)))

(assert (=> bs!1086363 (= lambda!207071 lambda!206992)))

(assert (=> bs!1086363 (= (= lt!1849020 lt!1849151) (= lambda!207071 lambda!206993))))

(assert (=> b!4689747 true))

(declare-fun lt!1849467 () ListMap!4957)

(declare-fun lambda!207072 () Int)

(assert (=> bs!1086360 (= (= lt!1849467 lt!1849020) (= lambda!207072 lambda!207070))))

(assert (=> bs!1086361 (= (= lt!1849467 lt!1849167) (= lambda!207072 lambda!206994))))

(assert (=> b!4689747 (= (= lt!1849467 lt!1849020) (= lambda!207072 lambda!207071))))

(assert (=> bs!1086362 (= (= lt!1849467 lt!1849020) (= lambda!207072 lambda!206991))))

(assert (=> bs!1086363 (= (= lt!1849467 lt!1849020) (= lambda!207072 lambda!206992))))

(assert (=> bs!1086363 (= (= lt!1849467 lt!1849151) (= lambda!207072 lambda!206993))))

(assert (=> b!4689747 true))

(declare-fun bs!1086364 () Bool)

(declare-fun d!1490416 () Bool)

(assert (= bs!1086364 (and d!1490416 b!4689745)))

(declare-fun lt!1849483 () ListMap!4957)

(declare-fun lambda!207073 () Int)

(assert (=> bs!1086364 (= (= lt!1849483 lt!1849020) (= lambda!207073 lambda!207070))))

(declare-fun bs!1086365 () Bool)

(assert (= bs!1086365 (and d!1490416 d!1490266)))

(assert (=> bs!1086365 (= (= lt!1849483 lt!1849167) (= lambda!207073 lambda!206994))))

(declare-fun bs!1086366 () Bool)

(assert (= bs!1086366 (and d!1490416 b!4689747)))

(assert (=> bs!1086366 (= (= lt!1849483 lt!1849020) (= lambda!207073 lambda!207071))))

(declare-fun bs!1086367 () Bool)

(assert (= bs!1086367 (and d!1490416 b!4689514)))

(assert (=> bs!1086367 (= (= lt!1849483 lt!1849020) (= lambda!207073 lambda!206991))))

(declare-fun bs!1086368 () Bool)

(assert (= bs!1086368 (and d!1490416 b!4689516)))

(assert (=> bs!1086368 (= (= lt!1849483 lt!1849020) (= lambda!207073 lambda!206992))))

(assert (=> bs!1086366 (= (= lt!1849483 lt!1849467) (= lambda!207073 lambda!207072))))

(assert (=> bs!1086368 (= (= lt!1849483 lt!1849151) (= lambda!207073 lambda!206993))))

(assert (=> d!1490416 true))

(declare-fun b!4689744 () Bool)

(declare-fun res!1978017 () Bool)

(declare-fun e!2925756 () Bool)

(assert (=> b!4689744 (=> (not res!1978017) (not e!2925756))))

(assert (=> b!4689744 (= res!1978017 (forall!11318 (toList!5593 lt!1849020) lambda!207073))))

(declare-fun b!4689746 () Bool)

(assert (=> b!4689746 (= e!2925756 (invariantList!1407 (toList!5593 lt!1849483)))))

(declare-fun call!327747 () Bool)

(declare-fun c!801859 () Bool)

(declare-fun bm!327740 () Bool)

(assert (=> bm!327740 (= call!327747 (forall!11318 (ite c!801859 (toList!5593 lt!1849020) lt!1849001) (ite c!801859 lambda!207070 lambda!207072)))))

(declare-fun bm!327741 () Bool)

(declare-fun call!327746 () Unit!123901)

(assert (=> bm!327741 (= call!327746 (lemmaContainsAllItsOwnKeys!695 lt!1849020))))

(declare-fun call!327745 () Bool)

(declare-fun bm!327742 () Bool)

(declare-fun lt!1849468 () ListMap!4957)

(assert (=> bm!327742 (= call!327745 (forall!11318 (ite c!801859 (toList!5593 lt!1849020) (toList!5593 lt!1849468)) (ite c!801859 lambda!207070 lambda!207072)))))

(assert (=> d!1490416 e!2925756))

(declare-fun res!1978019 () Bool)

(assert (=> d!1490416 (=> (not res!1978019) (not e!2925756))))

(assert (=> d!1490416 (= res!1978019 (forall!11318 lt!1849001 lambda!207073))))

(declare-fun e!2925755 () ListMap!4957)

(assert (=> d!1490416 (= lt!1849483 e!2925755)))

(assert (=> d!1490416 (= c!801859 ((_ is Nil!52403) lt!1849001))))

(assert (=> d!1490416 (noDuplicateKeys!1852 lt!1849001)))

(assert (=> d!1490416 (= (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849483)))

(assert (=> b!4689745 (= e!2925755 lt!1849020)))

(declare-fun lt!1849474 () Unit!123901)

(assert (=> b!4689745 (= lt!1849474 call!327746)))

(assert (=> b!4689745 call!327747))

(declare-fun lt!1849479 () Unit!123901)

(assert (=> b!4689745 (= lt!1849479 lt!1849474)))

(assert (=> b!4689745 call!327745))

(declare-fun lt!1849482 () Unit!123901)

(declare-fun Unit!123951 () Unit!123901)

(assert (=> b!4689745 (= lt!1849482 Unit!123951)))

(assert (=> b!4689747 (= e!2925755 lt!1849467)))

(assert (=> b!4689747 (= lt!1849468 (+!2136 lt!1849020 (h!58646 lt!1849001)))))

(assert (=> b!4689747 (= lt!1849467 (addToMapMapFromBucket!1284 (t!359701 lt!1849001) (+!2136 lt!1849020 (h!58646 lt!1849001))))))

(declare-fun lt!1849466 () Unit!123901)

(assert (=> b!4689747 (= lt!1849466 call!327746)))

(assert (=> b!4689747 (forall!11318 (toList!5593 lt!1849020) lambda!207071)))

(declare-fun lt!1849472 () Unit!123901)

(assert (=> b!4689747 (= lt!1849472 lt!1849466)))

(assert (=> b!4689747 call!327745))

(declare-fun lt!1849480 () Unit!123901)

(declare-fun Unit!123952 () Unit!123901)

(assert (=> b!4689747 (= lt!1849480 Unit!123952)))

(assert (=> b!4689747 (forall!11318 (t!359701 lt!1849001) lambda!207072)))

(declare-fun lt!1849471 () Unit!123901)

(declare-fun Unit!123953 () Unit!123901)

(assert (=> b!4689747 (= lt!1849471 Unit!123953)))

(declare-fun lt!1849470 () Unit!123901)

(declare-fun Unit!123954 () Unit!123901)

(assert (=> b!4689747 (= lt!1849470 Unit!123954)))

(declare-fun lt!1849477 () Unit!123901)

(assert (=> b!4689747 (= lt!1849477 (forallContained!3425 (toList!5593 lt!1849468) lambda!207072 (h!58646 lt!1849001)))))

(assert (=> b!4689747 (contains!15600 lt!1849468 (_1!30195 (h!58646 lt!1849001)))))

(declare-fun lt!1849478 () Unit!123901)

(declare-fun Unit!123955 () Unit!123901)

(assert (=> b!4689747 (= lt!1849478 Unit!123955)))

(assert (=> b!4689747 (contains!15600 lt!1849467 (_1!30195 (h!58646 lt!1849001)))))

(declare-fun lt!1849464 () Unit!123901)

(declare-fun Unit!123956 () Unit!123901)

(assert (=> b!4689747 (= lt!1849464 Unit!123956)))

(assert (=> b!4689747 (forall!11318 lt!1849001 lambda!207072)))

(declare-fun lt!1849476 () Unit!123901)

(declare-fun Unit!123957 () Unit!123901)

(assert (=> b!4689747 (= lt!1849476 Unit!123957)))

(assert (=> b!4689747 (forall!11318 (toList!5593 lt!1849468) lambda!207072)))

(declare-fun lt!1849465 () Unit!123901)

(declare-fun Unit!123958 () Unit!123901)

(assert (=> b!4689747 (= lt!1849465 Unit!123958)))

(declare-fun lt!1849481 () Unit!123901)

(declare-fun Unit!123959 () Unit!123901)

(assert (=> b!4689747 (= lt!1849481 Unit!123959)))

(declare-fun lt!1849475 () Unit!123901)

(assert (=> b!4689747 (= lt!1849475 (addForallContainsKeyThenBeforeAdding!694 lt!1849020 lt!1849467 (_1!30195 (h!58646 lt!1849001)) (_2!30195 (h!58646 lt!1849001))))))

(assert (=> b!4689747 (forall!11318 (toList!5593 lt!1849020) lambda!207072)))

(declare-fun lt!1849473 () Unit!123901)

(assert (=> b!4689747 (= lt!1849473 lt!1849475)))

(assert (=> b!4689747 (forall!11318 (toList!5593 lt!1849020) lambda!207072)))

(declare-fun lt!1849463 () Unit!123901)

(declare-fun Unit!123960 () Unit!123901)

(assert (=> b!4689747 (= lt!1849463 Unit!123960)))

(declare-fun res!1978018 () Bool)

(assert (=> b!4689747 (= res!1978018 call!327747)))

(declare-fun e!2925757 () Bool)

(assert (=> b!4689747 (=> (not res!1978018) (not e!2925757))))

(assert (=> b!4689747 e!2925757))

(declare-fun lt!1849469 () Unit!123901)

(declare-fun Unit!123961 () Unit!123901)

(assert (=> b!4689747 (= lt!1849469 Unit!123961)))

(declare-fun b!4689748 () Bool)

(assert (=> b!4689748 (= e!2925757 (forall!11318 (toList!5593 lt!1849020) lambda!207072))))

(assert (= (and d!1490416 c!801859) b!4689745))

(assert (= (and d!1490416 (not c!801859)) b!4689747))

(assert (= (and b!4689747 res!1978018) b!4689748))

(assert (= (or b!4689745 b!4689747) bm!327741))

(assert (= (or b!4689745 b!4689747) bm!327740))

(assert (= (or b!4689745 b!4689747) bm!327742))

(assert (= (and d!1490416 res!1978019) b!4689744))

(assert (= (and b!4689744 res!1978017) b!4689746))

(declare-fun m!5591591 () Bool)

(assert (=> b!4689748 m!5591591))

(declare-fun m!5591593 () Bool)

(assert (=> bm!327742 m!5591593))

(declare-fun m!5591595 () Bool)

(assert (=> b!4689744 m!5591595))

(declare-fun m!5591597 () Bool)

(assert (=> b!4689747 m!5591597))

(declare-fun m!5591599 () Bool)

(assert (=> b!4689747 m!5591599))

(declare-fun m!5591601 () Bool)

(assert (=> b!4689747 m!5591601))

(declare-fun m!5591603 () Bool)

(assert (=> b!4689747 m!5591603))

(declare-fun m!5591605 () Bool)

(assert (=> b!4689747 m!5591605))

(declare-fun m!5591607 () Bool)

(assert (=> b!4689747 m!5591607))

(declare-fun m!5591609 () Bool)

(assert (=> b!4689747 m!5591609))

(assert (=> b!4689747 m!5591607))

(declare-fun m!5591611 () Bool)

(assert (=> b!4689747 m!5591611))

(assert (=> b!4689747 m!5591591))

(declare-fun m!5591613 () Bool)

(assert (=> b!4689747 m!5591613))

(declare-fun m!5591615 () Bool)

(assert (=> b!4689747 m!5591615))

(assert (=> b!4689747 m!5591591))

(declare-fun m!5591617 () Bool)

(assert (=> d!1490416 m!5591617))

(assert (=> d!1490416 m!5591487))

(assert (=> bm!327741 m!5591141))

(declare-fun m!5591619 () Bool)

(assert (=> b!4689746 m!5591619))

(declare-fun m!5591621 () Bool)

(assert (=> bm!327740 m!5591621))

(assert (=> b!4689367 d!1490416))

(declare-fun bs!1086369 () Bool)

(declare-fun b!4689750 () Bool)

(assert (= bs!1086369 (and b!4689750 b!4689745)))

(declare-fun lambda!207074 () Int)

(assert (=> bs!1086369 (= lambda!207074 lambda!207070)))

(declare-fun bs!1086370 () Bool)

(assert (= bs!1086370 (and b!4689750 d!1490266)))

(assert (=> bs!1086370 (= (= lt!1849020 lt!1849167) (= lambda!207074 lambda!206994))))

(declare-fun bs!1086371 () Bool)

(assert (= bs!1086371 (and b!4689750 b!4689747)))

(assert (=> bs!1086371 (= lambda!207074 lambda!207071)))

(declare-fun bs!1086372 () Bool)

(assert (= bs!1086372 (and b!4689750 d!1490416)))

(assert (=> bs!1086372 (= (= lt!1849020 lt!1849483) (= lambda!207074 lambda!207073))))

(declare-fun bs!1086373 () Bool)

(assert (= bs!1086373 (and b!4689750 b!4689514)))

(assert (=> bs!1086373 (= lambda!207074 lambda!206991)))

(declare-fun bs!1086374 () Bool)

(assert (= bs!1086374 (and b!4689750 b!4689516)))

(assert (=> bs!1086374 (= lambda!207074 lambda!206992)))

(assert (=> bs!1086371 (= (= lt!1849020 lt!1849467) (= lambda!207074 lambda!207072))))

(assert (=> bs!1086374 (= (= lt!1849020 lt!1849151) (= lambda!207074 lambda!206993))))

(assert (=> b!4689750 true))

(declare-fun bs!1086375 () Bool)

(declare-fun b!4689752 () Bool)

(assert (= bs!1086375 (and b!4689752 b!4689745)))

(declare-fun lambda!207075 () Int)

(assert (=> bs!1086375 (= lambda!207075 lambda!207070)))

(declare-fun bs!1086376 () Bool)

(assert (= bs!1086376 (and b!4689752 d!1490266)))

(assert (=> bs!1086376 (= (= lt!1849020 lt!1849167) (= lambda!207075 lambda!206994))))

(declare-fun bs!1086377 () Bool)

(assert (= bs!1086377 (and b!4689752 b!4689747)))

(assert (=> bs!1086377 (= lambda!207075 lambda!207071)))

(declare-fun bs!1086378 () Bool)

(assert (= bs!1086378 (and b!4689752 d!1490416)))

(assert (=> bs!1086378 (= (= lt!1849020 lt!1849483) (= lambda!207075 lambda!207073))))

(declare-fun bs!1086379 () Bool)

(assert (= bs!1086379 (and b!4689752 b!4689514)))

(assert (=> bs!1086379 (= lambda!207075 lambda!206991)))

(declare-fun bs!1086380 () Bool)

(assert (= bs!1086380 (and b!4689752 b!4689516)))

(assert (=> bs!1086380 (= lambda!207075 lambda!206992)))

(declare-fun bs!1086381 () Bool)

(assert (= bs!1086381 (and b!4689752 b!4689750)))

(assert (=> bs!1086381 (= lambda!207075 lambda!207074)))

(assert (=> bs!1086377 (= (= lt!1849020 lt!1849467) (= lambda!207075 lambda!207072))))

(assert (=> bs!1086380 (= (= lt!1849020 lt!1849151) (= lambda!207075 lambda!206993))))

(assert (=> b!4689752 true))

(declare-fun lambda!207076 () Int)

(declare-fun lt!1849488 () ListMap!4957)

(assert (=> bs!1086375 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!207070))))

(assert (=> bs!1086376 (= (= lt!1849488 lt!1849167) (= lambda!207076 lambda!206994))))

(assert (=> bs!1086377 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!207071))))

(assert (=> b!4689752 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!207075))))

(assert (=> bs!1086378 (= (= lt!1849488 lt!1849483) (= lambda!207076 lambda!207073))))

(assert (=> bs!1086379 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!206991))))

(assert (=> bs!1086380 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!206992))))

(assert (=> bs!1086381 (= (= lt!1849488 lt!1849020) (= lambda!207076 lambda!207074))))

(assert (=> bs!1086377 (= (= lt!1849488 lt!1849467) (= lambda!207076 lambda!207072))))

(assert (=> bs!1086380 (= (= lt!1849488 lt!1849151) (= lambda!207076 lambda!206993))))

(assert (=> b!4689752 true))

(declare-fun bs!1086382 () Bool)

(declare-fun d!1490418 () Bool)

(assert (= bs!1086382 (and d!1490418 b!4689745)))

(declare-fun lt!1849504 () ListMap!4957)

(declare-fun lambda!207077 () Int)

(assert (=> bs!1086382 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!207070))))

(declare-fun bs!1086383 () Bool)

(assert (= bs!1086383 (and d!1490418 d!1490266)))

(assert (=> bs!1086383 (= (= lt!1849504 lt!1849167) (= lambda!207077 lambda!206994))))

(declare-fun bs!1086384 () Bool)

(assert (= bs!1086384 (and d!1490418 b!4689747)))

(assert (=> bs!1086384 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!207071))))

(declare-fun bs!1086385 () Bool)

(assert (= bs!1086385 (and d!1490418 b!4689752)))

(assert (=> bs!1086385 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!207075))))

(declare-fun bs!1086386 () Bool)

(assert (= bs!1086386 (and d!1490418 d!1490416)))

(assert (=> bs!1086386 (= (= lt!1849504 lt!1849483) (= lambda!207077 lambda!207073))))

(declare-fun bs!1086387 () Bool)

(assert (= bs!1086387 (and d!1490418 b!4689514)))

(assert (=> bs!1086387 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!206991))))

(declare-fun bs!1086388 () Bool)

(assert (= bs!1086388 (and d!1490418 b!4689516)))

(assert (=> bs!1086388 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!206992))))

(assert (=> bs!1086385 (= (= lt!1849504 lt!1849488) (= lambda!207077 lambda!207076))))

(declare-fun bs!1086389 () Bool)

(assert (= bs!1086389 (and d!1490418 b!4689750)))

(assert (=> bs!1086389 (= (= lt!1849504 lt!1849020) (= lambda!207077 lambda!207074))))

(assert (=> bs!1086384 (= (= lt!1849504 lt!1849467) (= lambda!207077 lambda!207072))))

(assert (=> bs!1086388 (= (= lt!1849504 lt!1849151) (= lambda!207077 lambda!206993))))

(assert (=> d!1490418 true))

(declare-fun b!4689749 () Bool)

(declare-fun res!1978020 () Bool)

(declare-fun e!2925759 () Bool)

(assert (=> b!4689749 (=> (not res!1978020) (not e!2925759))))

(assert (=> b!4689749 (= res!1978020 (forall!11318 (toList!5593 lt!1849020) lambda!207077))))

(declare-fun b!4689751 () Bool)

(assert (=> b!4689751 (= e!2925759 (invariantList!1407 (toList!5593 lt!1849504)))))

(declare-fun c!801860 () Bool)

(declare-fun bm!327743 () Bool)

(declare-fun call!327750 () Bool)

(assert (=> bm!327743 (= call!327750 (forall!11318 (ite c!801860 (toList!5593 lt!1849020) (Cons!52403 lt!1849010 lt!1849001)) (ite c!801860 lambda!207074 lambda!207076)))))

(declare-fun bm!327744 () Bool)

(declare-fun call!327749 () Unit!123901)

(assert (=> bm!327744 (= call!327749 (lemmaContainsAllItsOwnKeys!695 lt!1849020))))

(declare-fun bm!327745 () Bool)

(declare-fun call!327748 () Bool)

(declare-fun lt!1849489 () ListMap!4957)

(assert (=> bm!327745 (= call!327748 (forall!11318 (ite c!801860 (toList!5593 lt!1849020) (toList!5593 lt!1849489)) (ite c!801860 lambda!207074 lambda!207076)))))

(assert (=> d!1490418 e!2925759))

(declare-fun res!1978022 () Bool)

(assert (=> d!1490418 (=> (not res!1978022) (not e!2925759))))

(assert (=> d!1490418 (= res!1978022 (forall!11318 (Cons!52403 lt!1849010 lt!1849001) lambda!207077))))

(declare-fun e!2925758 () ListMap!4957)

(assert (=> d!1490418 (= lt!1849504 e!2925758)))

(assert (=> d!1490418 (= c!801860 ((_ is Nil!52403) (Cons!52403 lt!1849010 lt!1849001)))))

(assert (=> d!1490418 (noDuplicateKeys!1852 (Cons!52403 lt!1849010 lt!1849001))))

(assert (=> d!1490418 (= (addToMapMapFromBucket!1284 (Cons!52403 lt!1849010 lt!1849001) lt!1849020) lt!1849504)))

(assert (=> b!4689750 (= e!2925758 lt!1849020)))

(declare-fun lt!1849495 () Unit!123901)

(assert (=> b!4689750 (= lt!1849495 call!327749)))

(assert (=> b!4689750 call!327750))

(declare-fun lt!1849500 () Unit!123901)

(assert (=> b!4689750 (= lt!1849500 lt!1849495)))

(assert (=> b!4689750 call!327748))

(declare-fun lt!1849503 () Unit!123901)

(declare-fun Unit!123973 () Unit!123901)

(assert (=> b!4689750 (= lt!1849503 Unit!123973)))

(assert (=> b!4689752 (= e!2925758 lt!1849488)))

(assert (=> b!4689752 (= lt!1849489 (+!2136 lt!1849020 (h!58646 (Cons!52403 lt!1849010 lt!1849001))))))

(assert (=> b!4689752 (= lt!1849488 (addToMapMapFromBucket!1284 (t!359701 (Cons!52403 lt!1849010 lt!1849001)) (+!2136 lt!1849020 (h!58646 (Cons!52403 lt!1849010 lt!1849001)))))))

(declare-fun lt!1849487 () Unit!123901)

(assert (=> b!4689752 (= lt!1849487 call!327749)))

(assert (=> b!4689752 (forall!11318 (toList!5593 lt!1849020) lambda!207075)))

(declare-fun lt!1849493 () Unit!123901)

(assert (=> b!4689752 (= lt!1849493 lt!1849487)))

(assert (=> b!4689752 call!327748))

(declare-fun lt!1849501 () Unit!123901)

(declare-fun Unit!123974 () Unit!123901)

(assert (=> b!4689752 (= lt!1849501 Unit!123974)))

(assert (=> b!4689752 (forall!11318 (t!359701 (Cons!52403 lt!1849010 lt!1849001)) lambda!207076)))

(declare-fun lt!1849492 () Unit!123901)

(declare-fun Unit!123975 () Unit!123901)

(assert (=> b!4689752 (= lt!1849492 Unit!123975)))

(declare-fun lt!1849491 () Unit!123901)

(declare-fun Unit!123976 () Unit!123901)

(assert (=> b!4689752 (= lt!1849491 Unit!123976)))

(declare-fun lt!1849498 () Unit!123901)

(assert (=> b!4689752 (= lt!1849498 (forallContained!3425 (toList!5593 lt!1849489) lambda!207076 (h!58646 (Cons!52403 lt!1849010 lt!1849001))))))

(assert (=> b!4689752 (contains!15600 lt!1849489 (_1!30195 (h!58646 (Cons!52403 lt!1849010 lt!1849001))))))

(declare-fun lt!1849499 () Unit!123901)

(declare-fun Unit!123977 () Unit!123901)

(assert (=> b!4689752 (= lt!1849499 Unit!123977)))

(assert (=> b!4689752 (contains!15600 lt!1849488 (_1!30195 (h!58646 (Cons!52403 lt!1849010 lt!1849001))))))

(declare-fun lt!1849485 () Unit!123901)

(declare-fun Unit!123979 () Unit!123901)

(assert (=> b!4689752 (= lt!1849485 Unit!123979)))

(assert (=> b!4689752 (forall!11318 (Cons!52403 lt!1849010 lt!1849001) lambda!207076)))

(declare-fun lt!1849497 () Unit!123901)

(declare-fun Unit!123980 () Unit!123901)

(assert (=> b!4689752 (= lt!1849497 Unit!123980)))

(assert (=> b!4689752 (forall!11318 (toList!5593 lt!1849489) lambda!207076)))

(declare-fun lt!1849486 () Unit!123901)

(declare-fun Unit!123981 () Unit!123901)

(assert (=> b!4689752 (= lt!1849486 Unit!123981)))

(declare-fun lt!1849502 () Unit!123901)

(declare-fun Unit!123982 () Unit!123901)

(assert (=> b!4689752 (= lt!1849502 Unit!123982)))

(declare-fun lt!1849496 () Unit!123901)

(assert (=> b!4689752 (= lt!1849496 (addForallContainsKeyThenBeforeAdding!694 lt!1849020 lt!1849488 (_1!30195 (h!58646 (Cons!52403 lt!1849010 lt!1849001))) (_2!30195 (h!58646 (Cons!52403 lt!1849010 lt!1849001)))))))

(assert (=> b!4689752 (forall!11318 (toList!5593 lt!1849020) lambda!207076)))

(declare-fun lt!1849494 () Unit!123901)

(assert (=> b!4689752 (= lt!1849494 lt!1849496)))

(assert (=> b!4689752 (forall!11318 (toList!5593 lt!1849020) lambda!207076)))

(declare-fun lt!1849484 () Unit!123901)

(declare-fun Unit!123983 () Unit!123901)

(assert (=> b!4689752 (= lt!1849484 Unit!123983)))

(declare-fun res!1978021 () Bool)

(assert (=> b!4689752 (= res!1978021 call!327750)))

(declare-fun e!2925760 () Bool)

(assert (=> b!4689752 (=> (not res!1978021) (not e!2925760))))

(assert (=> b!4689752 e!2925760))

(declare-fun lt!1849490 () Unit!123901)

(declare-fun Unit!123984 () Unit!123901)

(assert (=> b!4689752 (= lt!1849490 Unit!123984)))

(declare-fun b!4689753 () Bool)

(assert (=> b!4689753 (= e!2925760 (forall!11318 (toList!5593 lt!1849020) lambda!207076))))

(assert (= (and d!1490418 c!801860) b!4689750))

(assert (= (and d!1490418 (not c!801860)) b!4689752))

(assert (= (and b!4689752 res!1978021) b!4689753))

(assert (= (or b!4689750 b!4689752) bm!327744))

(assert (= (or b!4689750 b!4689752) bm!327743))

(assert (= (or b!4689750 b!4689752) bm!327745))

(assert (= (and d!1490418 res!1978022) b!4689749))

(assert (= (and b!4689749 res!1978020) b!4689751))

(declare-fun m!5591623 () Bool)

(assert (=> b!4689753 m!5591623))

(declare-fun m!5591625 () Bool)

(assert (=> bm!327745 m!5591625))

(declare-fun m!5591627 () Bool)

(assert (=> b!4689749 m!5591627))

(declare-fun m!5591629 () Bool)

(assert (=> b!4689752 m!5591629))

(declare-fun m!5591631 () Bool)

(assert (=> b!4689752 m!5591631))

(declare-fun m!5591633 () Bool)

(assert (=> b!4689752 m!5591633))

(declare-fun m!5591635 () Bool)

(assert (=> b!4689752 m!5591635))

(declare-fun m!5591637 () Bool)

(assert (=> b!4689752 m!5591637))

(declare-fun m!5591639 () Bool)

(assert (=> b!4689752 m!5591639))

(declare-fun m!5591641 () Bool)

(assert (=> b!4689752 m!5591641))

(assert (=> b!4689752 m!5591639))

(declare-fun m!5591643 () Bool)

(assert (=> b!4689752 m!5591643))

(assert (=> b!4689752 m!5591623))

(declare-fun m!5591645 () Bool)

(assert (=> b!4689752 m!5591645))

(declare-fun m!5591647 () Bool)

(assert (=> b!4689752 m!5591647))

(assert (=> b!4689752 m!5591623))

(declare-fun m!5591649 () Bool)

(assert (=> d!1490418 m!5591649))

(declare-fun m!5591651 () Bool)

(assert (=> d!1490418 m!5591651))

(assert (=> bm!327744 m!5591141))

(declare-fun m!5591653 () Bool)

(assert (=> b!4689751 m!5591653))

(declare-fun m!5591655 () Bool)

(assert (=> bm!327743 m!5591655))

(assert (=> b!4689367 d!1490418))

(declare-fun d!1490420 () Bool)

(declare-fun e!2925761 () Bool)

(assert (=> d!1490420 e!2925761))

(declare-fun res!1978023 () Bool)

(assert (=> d!1490420 (=> (not res!1978023) (not e!2925761))))

(declare-fun lt!1849506 () ListMap!4957)

(assert (=> d!1490420 (= res!1978023 (contains!15600 lt!1849506 (_1!30195 lt!1849010)))))

(declare-fun lt!1849507 () List!52527)

(assert (=> d!1490420 (= lt!1849506 (ListMap!4958 lt!1849507))))

(declare-fun lt!1849508 () Unit!123901)

(declare-fun lt!1849505 () Unit!123901)

(assert (=> d!1490420 (= lt!1849508 lt!1849505)))

(assert (=> d!1490420 (= (getValueByKey!1777 lt!1849507 (_1!30195 lt!1849010)) (Some!12074 (_2!30195 lt!1849010)))))

(assert (=> d!1490420 (= lt!1849505 (lemmaContainsTupThenGetReturnValue!998 lt!1849507 (_1!30195 lt!1849010) (_2!30195 lt!1849010)))))

(assert (=> d!1490420 (= lt!1849507 (insertNoDuplicatedKeys!506 (toList!5593 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020)) (_1!30195 lt!1849010) (_2!30195 lt!1849010)))))

(assert (=> d!1490420 (= (+!2136 (addToMapMapFromBucket!1284 lt!1849001 lt!1849020) lt!1849010) lt!1849506)))

(declare-fun b!4689754 () Bool)

(declare-fun res!1978024 () Bool)

(assert (=> b!4689754 (=> (not res!1978024) (not e!2925761))))

(assert (=> b!4689754 (= res!1978024 (= (getValueByKey!1777 (toList!5593 lt!1849506) (_1!30195 lt!1849010)) (Some!12074 (_2!30195 lt!1849010))))))

(declare-fun b!4689755 () Bool)

(assert (=> b!4689755 (= e!2925761 (contains!15602 (toList!5593 lt!1849506) lt!1849010))))

(assert (= (and d!1490420 res!1978023) b!4689754))

(assert (= (and b!4689754 res!1978024) b!4689755))

(declare-fun m!5591657 () Bool)

(assert (=> d!1490420 m!5591657))

(declare-fun m!5591659 () Bool)

(assert (=> d!1490420 m!5591659))

(declare-fun m!5591661 () Bool)

(assert (=> d!1490420 m!5591661))

(declare-fun m!5591663 () Bool)

(assert (=> d!1490420 m!5591663))

(declare-fun m!5591665 () Bool)

(assert (=> b!4689754 m!5591665))

(declare-fun m!5591667 () Bool)

(assert (=> b!4689755 m!5591667))

(assert (=> b!4689367 d!1490420))

(declare-fun bs!1086390 () Bool)

(declare-fun d!1490422 () Bool)

(assert (= bs!1086390 (and d!1490422 d!1490240)))

(declare-fun lambda!207078 () Int)

(assert (=> bs!1086390 (not (= lambda!207078 lambda!206946))))

(declare-fun bs!1086391 () Bool)

(assert (= bs!1086391 (and d!1490422 d!1490342)))

(assert (=> bs!1086391 (= lambda!207078 lambda!207055)))

(declare-fun bs!1086392 () Bool)

(assert (= bs!1086392 (and d!1490422 d!1490364)))

(assert (=> bs!1086392 (= lambda!207078 lambda!207059)))

(declare-fun bs!1086393 () Bool)

(assert (= bs!1086393 (and d!1490422 d!1490316)))

(assert (=> bs!1086393 (= lambda!207078 lambda!207024)))

(declare-fun bs!1086394 () Bool)

(assert (= bs!1086394 (and d!1490422 start!474300)))

(assert (=> bs!1086394 (= lambda!207078 lambda!206943)))

(declare-fun bs!1086395 () Bool)

(assert (= bs!1086395 (and d!1490422 d!1490308)))

(assert (=> bs!1086395 (= lambda!207078 lambda!206999)))

(declare-fun lt!1849509 () ListMap!4957)

(assert (=> d!1490422 (invariantList!1407 (toList!5593 lt!1849509))))

(declare-fun e!2925762 () ListMap!4957)

(assert (=> d!1490422 (= lt!1849509 e!2925762)))

(declare-fun c!801861 () Bool)

(assert (=> d!1490422 (= c!801861 ((_ is Cons!52404) (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))))))

(assert (=> d!1490422 (forall!11317 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023))) lambda!207078)))

(assert (=> d!1490422 (= (extractMap!1878 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))) lt!1849509)))

(declare-fun b!4689756 () Bool)

(assert (=> b!4689756 (= e!2925762 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023))))) (extractMap!1878 (t!359702 (Cons!52404 lt!1849009 (t!359702 (toList!5594 lm!2023)))))))))

(declare-fun b!4689757 () Bool)

(assert (=> b!4689757 (= e!2925762 (ListMap!4958 Nil!52403))))

(assert (= (and d!1490422 c!801861) b!4689756))

(assert (= (and d!1490422 (not c!801861)) b!4689757))

(declare-fun m!5591669 () Bool)

(assert (=> d!1490422 m!5591669))

(declare-fun m!5591671 () Bool)

(assert (=> d!1490422 m!5591671))

(declare-fun m!5591673 () Bool)

(assert (=> b!4689756 m!5591673))

(assert (=> b!4689756 m!5591673))

(declare-fun m!5591675 () Bool)

(assert (=> b!4689756 m!5591675))

(assert (=> b!4689367 d!1490422))

(declare-fun bs!1086396 () Bool)

(declare-fun b!4689759 () Bool)

(assert (= bs!1086396 (and b!4689759 b!4689745)))

(declare-fun lambda!207079 () Int)

(assert (=> bs!1086396 (= lambda!207079 lambda!207070)))

(declare-fun bs!1086397 () Bool)

(assert (= bs!1086397 (and b!4689759 b!4689747)))

(assert (=> bs!1086397 (= lambda!207079 lambda!207071)))

(declare-fun bs!1086398 () Bool)

(assert (= bs!1086398 (and b!4689759 b!4689752)))

(assert (=> bs!1086398 (= lambda!207079 lambda!207075)))

(declare-fun bs!1086399 () Bool)

(assert (= bs!1086399 (and b!4689759 d!1490416)))

(assert (=> bs!1086399 (= (= lt!1849020 lt!1849483) (= lambda!207079 lambda!207073))))

(declare-fun bs!1086400 () Bool)

(assert (= bs!1086400 (and b!4689759 b!4689514)))

(assert (=> bs!1086400 (= lambda!207079 lambda!206991)))

(declare-fun bs!1086401 () Bool)

(assert (= bs!1086401 (and b!4689759 b!4689516)))

(assert (=> bs!1086401 (= lambda!207079 lambda!206992)))

(assert (=> bs!1086398 (= (= lt!1849020 lt!1849488) (= lambda!207079 lambda!207076))))

(declare-fun bs!1086402 () Bool)

(assert (= bs!1086402 (and b!4689759 b!4689750)))

(assert (=> bs!1086402 (= lambda!207079 lambda!207074)))

(declare-fun bs!1086403 () Bool)

(assert (= bs!1086403 (and b!4689759 d!1490418)))

(assert (=> bs!1086403 (= (= lt!1849020 lt!1849504) (= lambda!207079 lambda!207077))))

(declare-fun bs!1086404 () Bool)

(assert (= bs!1086404 (and b!4689759 d!1490266)))

(assert (=> bs!1086404 (= (= lt!1849020 lt!1849167) (= lambda!207079 lambda!206994))))

(assert (=> bs!1086397 (= (= lt!1849020 lt!1849467) (= lambda!207079 lambda!207072))))

(assert (=> bs!1086401 (= (= lt!1849020 lt!1849151) (= lambda!207079 lambda!206993))))

(assert (=> b!4689759 true))

(declare-fun bs!1086405 () Bool)

(declare-fun b!4689761 () Bool)

(assert (= bs!1086405 (and b!4689761 b!4689745)))

(declare-fun lambda!207080 () Int)

(assert (=> bs!1086405 (= lambda!207080 lambda!207070)))

(declare-fun bs!1086406 () Bool)

(assert (= bs!1086406 (and b!4689761 b!4689747)))

(assert (=> bs!1086406 (= lambda!207080 lambda!207071)))

(declare-fun bs!1086407 () Bool)

(assert (= bs!1086407 (and b!4689761 b!4689759)))

(assert (=> bs!1086407 (= lambda!207080 lambda!207079)))

(declare-fun bs!1086408 () Bool)

(assert (= bs!1086408 (and b!4689761 b!4689752)))

(assert (=> bs!1086408 (= lambda!207080 lambda!207075)))

(declare-fun bs!1086409 () Bool)

(assert (= bs!1086409 (and b!4689761 d!1490416)))

(assert (=> bs!1086409 (= (= lt!1849020 lt!1849483) (= lambda!207080 lambda!207073))))

(declare-fun bs!1086410 () Bool)

(assert (= bs!1086410 (and b!4689761 b!4689514)))

(assert (=> bs!1086410 (= lambda!207080 lambda!206991)))

(declare-fun bs!1086411 () Bool)

(assert (= bs!1086411 (and b!4689761 b!4689516)))

(assert (=> bs!1086411 (= lambda!207080 lambda!206992)))

(assert (=> bs!1086408 (= (= lt!1849020 lt!1849488) (= lambda!207080 lambda!207076))))

(declare-fun bs!1086412 () Bool)

(assert (= bs!1086412 (and b!4689761 b!4689750)))

(assert (=> bs!1086412 (= lambda!207080 lambda!207074)))

(declare-fun bs!1086413 () Bool)

(assert (= bs!1086413 (and b!4689761 d!1490418)))

(assert (=> bs!1086413 (= (= lt!1849020 lt!1849504) (= lambda!207080 lambda!207077))))

(declare-fun bs!1086414 () Bool)

(assert (= bs!1086414 (and b!4689761 d!1490266)))

(assert (=> bs!1086414 (= (= lt!1849020 lt!1849167) (= lambda!207080 lambda!206994))))

(assert (=> bs!1086406 (= (= lt!1849020 lt!1849467) (= lambda!207080 lambda!207072))))

(assert (=> bs!1086411 (= (= lt!1849020 lt!1849151) (= lambda!207080 lambda!206993))))

(assert (=> b!4689761 true))

(declare-fun lambda!207081 () Int)

(declare-fun lt!1849514 () ListMap!4957)

(assert (=> bs!1086405 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207070))))

(assert (=> bs!1086406 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207071))))

(assert (=> b!4689761 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207080))))

(assert (=> bs!1086407 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207079))))

(assert (=> bs!1086408 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207075))))

(assert (=> bs!1086409 (= (= lt!1849514 lt!1849483) (= lambda!207081 lambda!207073))))

(assert (=> bs!1086410 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!206991))))

(assert (=> bs!1086411 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!206992))))

(assert (=> bs!1086408 (= (= lt!1849514 lt!1849488) (= lambda!207081 lambda!207076))))

(assert (=> bs!1086412 (= (= lt!1849514 lt!1849020) (= lambda!207081 lambda!207074))))

(assert (=> bs!1086413 (= (= lt!1849514 lt!1849504) (= lambda!207081 lambda!207077))))

(assert (=> bs!1086414 (= (= lt!1849514 lt!1849167) (= lambda!207081 lambda!206994))))

(assert (=> bs!1086406 (= (= lt!1849514 lt!1849467) (= lambda!207081 lambda!207072))))

(assert (=> bs!1086411 (= (= lt!1849514 lt!1849151) (= lambda!207081 lambda!206993))))

(assert (=> b!4689761 true))

(declare-fun bs!1086415 () Bool)

(declare-fun d!1490424 () Bool)

(assert (= bs!1086415 (and d!1490424 b!4689745)))

(declare-fun lt!1849530 () ListMap!4957)

(declare-fun lambda!207082 () Int)

(assert (=> bs!1086415 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207070))))

(declare-fun bs!1086416 () Bool)

(assert (= bs!1086416 (and d!1490424 b!4689747)))

(assert (=> bs!1086416 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207071))))

(declare-fun bs!1086417 () Bool)

(assert (= bs!1086417 (and d!1490424 b!4689761)))

(assert (=> bs!1086417 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207080))))

(declare-fun bs!1086418 () Bool)

(assert (= bs!1086418 (and d!1490424 b!4689759)))

(assert (=> bs!1086418 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207079))))

(assert (=> bs!1086417 (= (= lt!1849530 lt!1849514) (= lambda!207082 lambda!207081))))

(declare-fun bs!1086419 () Bool)

(assert (= bs!1086419 (and d!1490424 b!4689752)))

(assert (=> bs!1086419 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207075))))

(declare-fun bs!1086420 () Bool)

(assert (= bs!1086420 (and d!1490424 d!1490416)))

(assert (=> bs!1086420 (= (= lt!1849530 lt!1849483) (= lambda!207082 lambda!207073))))

(declare-fun bs!1086421 () Bool)

(assert (= bs!1086421 (and d!1490424 b!4689514)))

(assert (=> bs!1086421 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!206991))))

(declare-fun bs!1086422 () Bool)

(assert (= bs!1086422 (and d!1490424 b!4689516)))

(assert (=> bs!1086422 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!206992))))

(assert (=> bs!1086419 (= (= lt!1849530 lt!1849488) (= lambda!207082 lambda!207076))))

(declare-fun bs!1086423 () Bool)

(assert (= bs!1086423 (and d!1490424 b!4689750)))

(assert (=> bs!1086423 (= (= lt!1849530 lt!1849020) (= lambda!207082 lambda!207074))))

(declare-fun bs!1086424 () Bool)

(assert (= bs!1086424 (and d!1490424 d!1490418)))

(assert (=> bs!1086424 (= (= lt!1849530 lt!1849504) (= lambda!207082 lambda!207077))))

(declare-fun bs!1086425 () Bool)

(assert (= bs!1086425 (and d!1490424 d!1490266)))

(assert (=> bs!1086425 (= (= lt!1849530 lt!1849167) (= lambda!207082 lambda!206994))))

(assert (=> bs!1086416 (= (= lt!1849530 lt!1849467) (= lambda!207082 lambda!207072))))

(assert (=> bs!1086422 (= (= lt!1849530 lt!1849151) (= lambda!207082 lambda!206993))))

(assert (=> d!1490424 true))

(declare-fun b!4689758 () Bool)

(declare-fun res!1978025 () Bool)

(declare-fun e!2925764 () Bool)

(assert (=> b!4689758 (=> (not res!1978025) (not e!2925764))))

(assert (=> b!4689758 (= res!1978025 (forall!11318 (toList!5593 lt!1849020) lambda!207082))))

(declare-fun b!4689760 () Bool)

(assert (=> b!4689760 (= e!2925764 (invariantList!1407 (toList!5593 lt!1849530)))))

(declare-fun bm!327746 () Bool)

(declare-fun call!327753 () Bool)

(declare-fun c!801862 () Bool)

(assert (=> bm!327746 (= call!327753 (forall!11318 (ite c!801862 (toList!5593 lt!1849020) lt!1849016) (ite c!801862 lambda!207079 lambda!207081)))))

(declare-fun bm!327747 () Bool)

(declare-fun call!327752 () Unit!123901)

(assert (=> bm!327747 (= call!327752 (lemmaContainsAllItsOwnKeys!695 lt!1849020))))

(declare-fun bm!327748 () Bool)

(declare-fun call!327751 () Bool)

(declare-fun lt!1849515 () ListMap!4957)

(assert (=> bm!327748 (= call!327751 (forall!11318 (ite c!801862 (toList!5593 lt!1849020) (toList!5593 lt!1849515)) (ite c!801862 lambda!207079 lambda!207081)))))

(assert (=> d!1490424 e!2925764))

(declare-fun res!1978027 () Bool)

(assert (=> d!1490424 (=> (not res!1978027) (not e!2925764))))

(assert (=> d!1490424 (= res!1978027 (forall!11318 lt!1849016 lambda!207082))))

(declare-fun e!2925763 () ListMap!4957)

(assert (=> d!1490424 (= lt!1849530 e!2925763)))

(assert (=> d!1490424 (= c!801862 ((_ is Nil!52403) lt!1849016))))

(assert (=> d!1490424 (noDuplicateKeys!1852 lt!1849016)))

(assert (=> d!1490424 (= (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849530)))

(assert (=> b!4689759 (= e!2925763 lt!1849020)))

(declare-fun lt!1849521 () Unit!123901)

(assert (=> b!4689759 (= lt!1849521 call!327752)))

(assert (=> b!4689759 call!327753))

(declare-fun lt!1849526 () Unit!123901)

(assert (=> b!4689759 (= lt!1849526 lt!1849521)))

(assert (=> b!4689759 call!327751))

(declare-fun lt!1849529 () Unit!123901)

(declare-fun Unit!123988 () Unit!123901)

(assert (=> b!4689759 (= lt!1849529 Unit!123988)))

(assert (=> b!4689761 (= e!2925763 lt!1849514)))

(assert (=> b!4689761 (= lt!1849515 (+!2136 lt!1849020 (h!58646 lt!1849016)))))

(assert (=> b!4689761 (= lt!1849514 (addToMapMapFromBucket!1284 (t!359701 lt!1849016) (+!2136 lt!1849020 (h!58646 lt!1849016))))))

(declare-fun lt!1849513 () Unit!123901)

(assert (=> b!4689761 (= lt!1849513 call!327752)))

(assert (=> b!4689761 (forall!11318 (toList!5593 lt!1849020) lambda!207080)))

(declare-fun lt!1849519 () Unit!123901)

(assert (=> b!4689761 (= lt!1849519 lt!1849513)))

(assert (=> b!4689761 call!327751))

(declare-fun lt!1849527 () Unit!123901)

(declare-fun Unit!123989 () Unit!123901)

(assert (=> b!4689761 (= lt!1849527 Unit!123989)))

(assert (=> b!4689761 (forall!11318 (t!359701 lt!1849016) lambda!207081)))

(declare-fun lt!1849518 () Unit!123901)

(declare-fun Unit!123990 () Unit!123901)

(assert (=> b!4689761 (= lt!1849518 Unit!123990)))

(declare-fun lt!1849517 () Unit!123901)

(declare-fun Unit!123991 () Unit!123901)

(assert (=> b!4689761 (= lt!1849517 Unit!123991)))

(declare-fun lt!1849524 () Unit!123901)

(assert (=> b!4689761 (= lt!1849524 (forallContained!3425 (toList!5593 lt!1849515) lambda!207081 (h!58646 lt!1849016)))))

(assert (=> b!4689761 (contains!15600 lt!1849515 (_1!30195 (h!58646 lt!1849016)))))

(declare-fun lt!1849525 () Unit!123901)

(declare-fun Unit!123992 () Unit!123901)

(assert (=> b!4689761 (= lt!1849525 Unit!123992)))

(assert (=> b!4689761 (contains!15600 lt!1849514 (_1!30195 (h!58646 lt!1849016)))))

(declare-fun lt!1849511 () Unit!123901)

(declare-fun Unit!123993 () Unit!123901)

(assert (=> b!4689761 (= lt!1849511 Unit!123993)))

(assert (=> b!4689761 (forall!11318 lt!1849016 lambda!207081)))

(declare-fun lt!1849523 () Unit!123901)

(declare-fun Unit!123994 () Unit!123901)

(assert (=> b!4689761 (= lt!1849523 Unit!123994)))

(assert (=> b!4689761 (forall!11318 (toList!5593 lt!1849515) lambda!207081)))

(declare-fun lt!1849512 () Unit!123901)

(declare-fun Unit!123995 () Unit!123901)

(assert (=> b!4689761 (= lt!1849512 Unit!123995)))

(declare-fun lt!1849528 () Unit!123901)

(declare-fun Unit!123996 () Unit!123901)

(assert (=> b!4689761 (= lt!1849528 Unit!123996)))

(declare-fun lt!1849522 () Unit!123901)

(assert (=> b!4689761 (= lt!1849522 (addForallContainsKeyThenBeforeAdding!694 lt!1849020 lt!1849514 (_1!30195 (h!58646 lt!1849016)) (_2!30195 (h!58646 lt!1849016))))))

(assert (=> b!4689761 (forall!11318 (toList!5593 lt!1849020) lambda!207081)))

(declare-fun lt!1849520 () Unit!123901)

(assert (=> b!4689761 (= lt!1849520 lt!1849522)))

(assert (=> b!4689761 (forall!11318 (toList!5593 lt!1849020) lambda!207081)))

(declare-fun lt!1849510 () Unit!123901)

(declare-fun Unit!123997 () Unit!123901)

(assert (=> b!4689761 (= lt!1849510 Unit!123997)))

(declare-fun res!1978026 () Bool)

(assert (=> b!4689761 (= res!1978026 call!327753)))

(declare-fun e!2925765 () Bool)

(assert (=> b!4689761 (=> (not res!1978026) (not e!2925765))))

(assert (=> b!4689761 e!2925765))

(declare-fun lt!1849516 () Unit!123901)

(declare-fun Unit!123998 () Unit!123901)

(assert (=> b!4689761 (= lt!1849516 Unit!123998)))

(declare-fun b!4689762 () Bool)

(assert (=> b!4689762 (= e!2925765 (forall!11318 (toList!5593 lt!1849020) lambda!207081))))

(assert (= (and d!1490424 c!801862) b!4689759))

(assert (= (and d!1490424 (not c!801862)) b!4689761))

(assert (= (and b!4689761 res!1978026) b!4689762))

(assert (= (or b!4689759 b!4689761) bm!327747))

(assert (= (or b!4689759 b!4689761) bm!327746))

(assert (= (or b!4689759 b!4689761) bm!327748))

(assert (= (and d!1490424 res!1978027) b!4689758))

(assert (= (and b!4689758 res!1978025) b!4689760))

(declare-fun m!5591677 () Bool)

(assert (=> b!4689762 m!5591677))

(declare-fun m!5591679 () Bool)

(assert (=> bm!327748 m!5591679))

(declare-fun m!5591681 () Bool)

(assert (=> b!4689758 m!5591681))

(declare-fun m!5591683 () Bool)

(assert (=> b!4689761 m!5591683))

(declare-fun m!5591685 () Bool)

(assert (=> b!4689761 m!5591685))

(declare-fun m!5591687 () Bool)

(assert (=> b!4689761 m!5591687))

(declare-fun m!5591689 () Bool)

(assert (=> b!4689761 m!5591689))

(declare-fun m!5591691 () Bool)

(assert (=> b!4689761 m!5591691))

(declare-fun m!5591693 () Bool)

(assert (=> b!4689761 m!5591693))

(declare-fun m!5591695 () Bool)

(assert (=> b!4689761 m!5591695))

(assert (=> b!4689761 m!5591693))

(declare-fun m!5591697 () Bool)

(assert (=> b!4689761 m!5591697))

(assert (=> b!4689761 m!5591677))

(declare-fun m!5591699 () Bool)

(assert (=> b!4689761 m!5591699))

(declare-fun m!5591701 () Bool)

(assert (=> b!4689761 m!5591701))

(assert (=> b!4689761 m!5591677))

(declare-fun m!5591703 () Bool)

(assert (=> d!1490424 m!5591703))

(declare-fun m!5591705 () Bool)

(assert (=> d!1490424 m!5591705))

(assert (=> bm!327747 m!5591141))

(declare-fun m!5591707 () Bool)

(assert (=> b!4689760 m!5591707))

(declare-fun m!5591709 () Bool)

(assert (=> bm!327746 m!5591709))

(assert (=> b!4689367 d!1490424))

(declare-fun bs!1086426 () Bool)

(declare-fun d!1490426 () Bool)

(assert (= bs!1086426 (and d!1490426 d!1490240)))

(declare-fun lambda!207083 () Int)

(assert (=> bs!1086426 (not (= lambda!207083 lambda!206946))))

(declare-fun bs!1086427 () Bool)

(assert (= bs!1086427 (and d!1490426 d!1490342)))

(assert (=> bs!1086427 (= lambda!207083 lambda!207055)))

(declare-fun bs!1086428 () Bool)

(assert (= bs!1086428 (and d!1490426 d!1490364)))

(assert (=> bs!1086428 (= lambda!207083 lambda!207059)))

(declare-fun bs!1086429 () Bool)

(assert (= bs!1086429 (and d!1490426 d!1490316)))

(assert (=> bs!1086429 (= lambda!207083 lambda!207024)))

(declare-fun bs!1086430 () Bool)

(assert (= bs!1086430 (and d!1490426 start!474300)))

(assert (=> bs!1086430 (= lambda!207083 lambda!206943)))

(declare-fun bs!1086431 () Bool)

(assert (= bs!1086431 (and d!1490426 d!1490422)))

(assert (=> bs!1086431 (= lambda!207083 lambda!207078)))

(declare-fun bs!1086432 () Bool)

(assert (= bs!1086432 (and d!1490426 d!1490308)))

(assert (=> bs!1086432 (= lambda!207083 lambda!206999)))

(declare-fun lt!1849531 () ListMap!4957)

(assert (=> d!1490426 (invariantList!1407 (toList!5593 lt!1849531))))

(declare-fun e!2925766 () ListMap!4957)

(assert (=> d!1490426 (= lt!1849531 e!2925766)))

(declare-fun c!801863 () Bool)

(assert (=> d!1490426 (= c!801863 ((_ is Cons!52404) lt!1849002))))

(assert (=> d!1490426 (forall!11317 lt!1849002 lambda!207083)))

(assert (=> d!1490426 (= (extractMap!1878 lt!1849002) lt!1849531)))

(declare-fun b!4689763 () Bool)

(assert (=> b!4689763 (= e!2925766 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 lt!1849002)) (extractMap!1878 (t!359702 lt!1849002))))))

(declare-fun b!4689764 () Bool)

(assert (=> b!4689764 (= e!2925766 (ListMap!4958 Nil!52403))))

(assert (= (and d!1490426 c!801863) b!4689763))

(assert (= (and d!1490426 (not c!801863)) b!4689764))

(declare-fun m!5591711 () Bool)

(assert (=> d!1490426 m!5591711))

(declare-fun m!5591713 () Bool)

(assert (=> d!1490426 m!5591713))

(declare-fun m!5591715 () Bool)

(assert (=> b!4689763 m!5591715))

(assert (=> b!4689763 m!5591715))

(declare-fun m!5591717 () Bool)

(assert (=> b!4689763 m!5591717))

(assert (=> b!4689367 d!1490426))

(declare-fun d!1490428 () Bool)

(assert (=> d!1490428 (eq!1011 (addToMapMapFromBucket!1284 (Cons!52403 lt!1849018 lt!1849016) lt!1849020) (+!2136 (addToMapMapFromBucket!1284 lt!1849016 lt!1849020) lt!1849018))))

(declare-fun lt!1849532 () Unit!123901)

(assert (=> d!1490428 (= lt!1849532 (choose!32577 lt!1849018 lt!1849016 lt!1849020))))

(assert (=> d!1490428 (noDuplicateKeys!1852 lt!1849016)))

(assert (=> d!1490428 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!260 lt!1849018 lt!1849016 lt!1849020) lt!1849532)))

(declare-fun bs!1086433 () Bool)

(assert (= bs!1086433 d!1490428))

(declare-fun m!5591719 () Bool)

(assert (=> bs!1086433 m!5591719))

(assert (=> bs!1086433 m!5590883))

(assert (=> bs!1086433 m!5590865))

(assert (=> bs!1086433 m!5590885))

(assert (=> bs!1086433 m!5591705))

(assert (=> bs!1086433 m!5590883))

(assert (=> bs!1086433 m!5590863))

(assert (=> bs!1086433 m!5590863))

(assert (=> bs!1086433 m!5590865))

(assert (=> b!4689367 d!1490428))

(declare-fun bs!1086434 () Bool)

(declare-fun d!1490430 () Bool)

(assert (= bs!1086434 (and d!1490430 d!1490240)))

(declare-fun lambda!207084 () Int)

(assert (=> bs!1086434 (not (= lambda!207084 lambda!206946))))

(declare-fun bs!1086435 () Bool)

(assert (= bs!1086435 (and d!1490430 d!1490342)))

(assert (=> bs!1086435 (= lambda!207084 lambda!207055)))

(declare-fun bs!1086436 () Bool)

(assert (= bs!1086436 (and d!1490430 d!1490426)))

(assert (=> bs!1086436 (= lambda!207084 lambda!207083)))

(declare-fun bs!1086437 () Bool)

(assert (= bs!1086437 (and d!1490430 d!1490364)))

(assert (=> bs!1086437 (= lambda!207084 lambda!207059)))

(declare-fun bs!1086438 () Bool)

(assert (= bs!1086438 (and d!1490430 d!1490316)))

(assert (=> bs!1086438 (= lambda!207084 lambda!207024)))

(declare-fun bs!1086439 () Bool)

(assert (= bs!1086439 (and d!1490430 start!474300)))

(assert (=> bs!1086439 (= lambda!207084 lambda!206943)))

(declare-fun bs!1086440 () Bool)

(assert (= bs!1086440 (and d!1490430 d!1490422)))

(assert (=> bs!1086440 (= lambda!207084 lambda!207078)))

(declare-fun bs!1086441 () Bool)

(assert (= bs!1086441 (and d!1490430 d!1490308)))

(assert (=> bs!1086441 (= lambda!207084 lambda!206999)))

(declare-fun lt!1849533 () ListMap!4957)

(assert (=> d!1490430 (invariantList!1407 (toList!5593 lt!1849533))))

(declare-fun e!2925767 () ListMap!4957)

(assert (=> d!1490430 (= lt!1849533 e!2925767)))

(declare-fun c!801864 () Bool)

(assert (=> d!1490430 (= c!801864 ((_ is Cons!52404) lt!1849007))))

(assert (=> d!1490430 (forall!11317 lt!1849007 lambda!207084)))

(assert (=> d!1490430 (= (extractMap!1878 lt!1849007) lt!1849533)))

(declare-fun b!4689765 () Bool)

(assert (=> b!4689765 (= e!2925767 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 lt!1849007)) (extractMap!1878 (t!359702 lt!1849007))))))

(declare-fun b!4689766 () Bool)

(assert (=> b!4689766 (= e!2925767 (ListMap!4958 Nil!52403))))

(assert (= (and d!1490430 c!801864) b!4689765))

(assert (= (and d!1490430 (not c!801864)) b!4689766))

(declare-fun m!5591721 () Bool)

(assert (=> d!1490430 m!5591721))

(declare-fun m!5591723 () Bool)

(assert (=> d!1490430 m!5591723))

(declare-fun m!5591725 () Bool)

(assert (=> b!4689765 m!5591725))

(assert (=> b!4689765 m!5591725))

(declare-fun m!5591727 () Bool)

(assert (=> b!4689765 m!5591727))

(assert (=> b!4689367 d!1490430))

(declare-fun bs!1086442 () Bool)

(declare-fun b!4689768 () Bool)

(assert (= bs!1086442 (and b!4689768 b!4689745)))

(declare-fun lambda!207085 () Int)

(assert (=> bs!1086442 (= lambda!207085 lambda!207070)))

(declare-fun bs!1086443 () Bool)

(assert (= bs!1086443 (and b!4689768 b!4689747)))

(assert (=> bs!1086443 (= lambda!207085 lambda!207071)))

(declare-fun bs!1086444 () Bool)

(assert (= bs!1086444 (and b!4689768 b!4689761)))

(assert (=> bs!1086444 (= lambda!207085 lambda!207080)))

(declare-fun bs!1086445 () Bool)

(assert (= bs!1086445 (and b!4689768 b!4689759)))

(assert (=> bs!1086445 (= lambda!207085 lambda!207079)))

(assert (=> bs!1086444 (= (= lt!1849020 lt!1849514) (= lambda!207085 lambda!207081))))

(declare-fun bs!1086446 () Bool)

(assert (= bs!1086446 (and b!4689768 b!4689752)))

(assert (=> bs!1086446 (= lambda!207085 lambda!207075)))

(declare-fun bs!1086447 () Bool)

(assert (= bs!1086447 (and b!4689768 d!1490416)))

(assert (=> bs!1086447 (= (= lt!1849020 lt!1849483) (= lambda!207085 lambda!207073))))

(declare-fun bs!1086448 () Bool)

(assert (= bs!1086448 (and b!4689768 b!4689514)))

(assert (=> bs!1086448 (= lambda!207085 lambda!206991)))

(declare-fun bs!1086449 () Bool)

(assert (= bs!1086449 (and b!4689768 b!4689516)))

(assert (=> bs!1086449 (= lambda!207085 lambda!206992)))

(declare-fun bs!1086450 () Bool)

(assert (= bs!1086450 (and b!4689768 d!1490424)))

(assert (=> bs!1086450 (= (= lt!1849020 lt!1849530) (= lambda!207085 lambda!207082))))

(assert (=> bs!1086446 (= (= lt!1849020 lt!1849488) (= lambda!207085 lambda!207076))))

(declare-fun bs!1086451 () Bool)

(assert (= bs!1086451 (and b!4689768 b!4689750)))

(assert (=> bs!1086451 (= lambda!207085 lambda!207074)))

(declare-fun bs!1086452 () Bool)

(assert (= bs!1086452 (and b!4689768 d!1490418)))

(assert (=> bs!1086452 (= (= lt!1849020 lt!1849504) (= lambda!207085 lambda!207077))))

(declare-fun bs!1086453 () Bool)

(assert (= bs!1086453 (and b!4689768 d!1490266)))

(assert (=> bs!1086453 (= (= lt!1849020 lt!1849167) (= lambda!207085 lambda!206994))))

(assert (=> bs!1086443 (= (= lt!1849020 lt!1849467) (= lambda!207085 lambda!207072))))

(assert (=> bs!1086449 (= (= lt!1849020 lt!1849151) (= lambda!207085 lambda!206993))))

(assert (=> b!4689768 true))

(declare-fun bs!1086454 () Bool)

(declare-fun b!4689770 () Bool)

(assert (= bs!1086454 (and b!4689770 b!4689745)))

(declare-fun lambda!207086 () Int)

(assert (=> bs!1086454 (= lambda!207086 lambda!207070)))

(declare-fun bs!1086455 () Bool)

(assert (= bs!1086455 (and b!4689770 b!4689747)))

(assert (=> bs!1086455 (= lambda!207086 lambda!207071)))

(declare-fun bs!1086456 () Bool)

(assert (= bs!1086456 (and b!4689770 b!4689761)))

(assert (=> bs!1086456 (= lambda!207086 lambda!207080)))

(declare-fun bs!1086457 () Bool)

(assert (= bs!1086457 (and b!4689770 b!4689759)))

(assert (=> bs!1086457 (= lambda!207086 lambda!207079)))

(assert (=> bs!1086456 (= (= lt!1849020 lt!1849514) (= lambda!207086 lambda!207081))))

(declare-fun bs!1086458 () Bool)

(assert (= bs!1086458 (and b!4689770 b!4689752)))

(assert (=> bs!1086458 (= lambda!207086 lambda!207075)))

(declare-fun bs!1086459 () Bool)

(assert (= bs!1086459 (and b!4689770 d!1490416)))

(assert (=> bs!1086459 (= (= lt!1849020 lt!1849483) (= lambda!207086 lambda!207073))))

(declare-fun bs!1086460 () Bool)

(assert (= bs!1086460 (and b!4689770 b!4689514)))

(assert (=> bs!1086460 (= lambda!207086 lambda!206991)))

(declare-fun bs!1086461 () Bool)

(assert (= bs!1086461 (and b!4689770 b!4689516)))

(assert (=> bs!1086461 (= lambda!207086 lambda!206992)))

(declare-fun bs!1086462 () Bool)

(assert (= bs!1086462 (and b!4689770 d!1490424)))

(assert (=> bs!1086462 (= (= lt!1849020 lt!1849530) (= lambda!207086 lambda!207082))))

(declare-fun bs!1086463 () Bool)

(assert (= bs!1086463 (and b!4689770 b!4689768)))

(assert (=> bs!1086463 (= lambda!207086 lambda!207085)))

(assert (=> bs!1086458 (= (= lt!1849020 lt!1849488) (= lambda!207086 lambda!207076))))

(declare-fun bs!1086464 () Bool)

(assert (= bs!1086464 (and b!4689770 b!4689750)))

(assert (=> bs!1086464 (= lambda!207086 lambda!207074)))

(declare-fun bs!1086465 () Bool)

(assert (= bs!1086465 (and b!4689770 d!1490418)))

(assert (=> bs!1086465 (= (= lt!1849020 lt!1849504) (= lambda!207086 lambda!207077))))

(declare-fun bs!1086466 () Bool)

(assert (= bs!1086466 (and b!4689770 d!1490266)))

(assert (=> bs!1086466 (= (= lt!1849020 lt!1849167) (= lambda!207086 lambda!206994))))

(assert (=> bs!1086455 (= (= lt!1849020 lt!1849467) (= lambda!207086 lambda!207072))))

(assert (=> bs!1086461 (= (= lt!1849020 lt!1849151) (= lambda!207086 lambda!206993))))

(assert (=> b!4689770 true))

(declare-fun lambda!207087 () Int)

(declare-fun lt!1849538 () ListMap!4957)

(assert (=> bs!1086454 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207070))))

(assert (=> bs!1086455 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207071))))

(assert (=> bs!1086456 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207080))))

(assert (=> bs!1086457 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207079))))

(assert (=> bs!1086456 (= (= lt!1849538 lt!1849514) (= lambda!207087 lambda!207081))))

(assert (=> bs!1086458 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207075))))

(assert (=> bs!1086459 (= (= lt!1849538 lt!1849483) (= lambda!207087 lambda!207073))))

(assert (=> bs!1086460 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!206991))))

(assert (=> bs!1086461 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!206992))))

(assert (=> bs!1086462 (= (= lt!1849538 lt!1849530) (= lambda!207087 lambda!207082))))

(assert (=> bs!1086463 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207085))))

(assert (=> bs!1086458 (= (= lt!1849538 lt!1849488) (= lambda!207087 lambda!207076))))

(assert (=> bs!1086465 (= (= lt!1849538 lt!1849504) (= lambda!207087 lambda!207077))))

(assert (=> bs!1086466 (= (= lt!1849538 lt!1849167) (= lambda!207087 lambda!206994))))

(assert (=> bs!1086455 (= (= lt!1849538 lt!1849467) (= lambda!207087 lambda!207072))))

(assert (=> bs!1086461 (= (= lt!1849538 lt!1849151) (= lambda!207087 lambda!206993))))

(assert (=> b!4689770 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207086))))

(assert (=> bs!1086464 (= (= lt!1849538 lt!1849020) (= lambda!207087 lambda!207074))))

(assert (=> b!4689770 true))

(declare-fun bs!1086467 () Bool)

(declare-fun d!1490432 () Bool)

(assert (= bs!1086467 (and d!1490432 b!4689745)))

(declare-fun lambda!207088 () Int)

(declare-fun lt!1849554 () ListMap!4957)

(assert (=> bs!1086467 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207070))))

(declare-fun bs!1086468 () Bool)

(assert (= bs!1086468 (and d!1490432 b!4689747)))

(assert (=> bs!1086468 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207071))))

(declare-fun bs!1086469 () Bool)

(assert (= bs!1086469 (and d!1490432 b!4689761)))

(assert (=> bs!1086469 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207080))))

(declare-fun bs!1086470 () Bool)

(assert (= bs!1086470 (and d!1490432 b!4689759)))

(assert (=> bs!1086470 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207079))))

(declare-fun bs!1086471 () Bool)

(assert (= bs!1086471 (and d!1490432 b!4689770)))

(assert (=> bs!1086471 (= (= lt!1849554 lt!1849538) (= lambda!207088 lambda!207087))))

(assert (=> bs!1086469 (= (= lt!1849554 lt!1849514) (= lambda!207088 lambda!207081))))

(declare-fun bs!1086472 () Bool)

(assert (= bs!1086472 (and d!1490432 b!4689752)))

(assert (=> bs!1086472 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207075))))

(declare-fun bs!1086473 () Bool)

(assert (= bs!1086473 (and d!1490432 d!1490416)))

(assert (=> bs!1086473 (= (= lt!1849554 lt!1849483) (= lambda!207088 lambda!207073))))

(declare-fun bs!1086474 () Bool)

(assert (= bs!1086474 (and d!1490432 b!4689514)))

(assert (=> bs!1086474 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!206991))))

(declare-fun bs!1086475 () Bool)

(assert (= bs!1086475 (and d!1490432 b!4689516)))

(assert (=> bs!1086475 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!206992))))

(declare-fun bs!1086476 () Bool)

(assert (= bs!1086476 (and d!1490432 d!1490424)))

(assert (=> bs!1086476 (= (= lt!1849554 lt!1849530) (= lambda!207088 lambda!207082))))

(declare-fun bs!1086477 () Bool)

(assert (= bs!1086477 (and d!1490432 b!4689768)))

(assert (=> bs!1086477 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207085))))

(assert (=> bs!1086472 (= (= lt!1849554 lt!1849488) (= lambda!207088 lambda!207076))))

(declare-fun bs!1086478 () Bool)

(assert (= bs!1086478 (and d!1490432 d!1490418)))

(assert (=> bs!1086478 (= (= lt!1849554 lt!1849504) (= lambda!207088 lambda!207077))))

(declare-fun bs!1086479 () Bool)

(assert (= bs!1086479 (and d!1490432 d!1490266)))

(assert (=> bs!1086479 (= (= lt!1849554 lt!1849167) (= lambda!207088 lambda!206994))))

(assert (=> bs!1086468 (= (= lt!1849554 lt!1849467) (= lambda!207088 lambda!207072))))

(assert (=> bs!1086475 (= (= lt!1849554 lt!1849151) (= lambda!207088 lambda!206993))))

(assert (=> bs!1086471 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207086))))

(declare-fun bs!1086480 () Bool)

(assert (= bs!1086480 (and d!1490432 b!4689750)))

(assert (=> bs!1086480 (= (= lt!1849554 lt!1849020) (= lambda!207088 lambda!207074))))

(assert (=> d!1490432 true))

(declare-fun b!4689767 () Bool)

(declare-fun res!1978028 () Bool)

(declare-fun e!2925769 () Bool)

(assert (=> b!4689767 (=> (not res!1978028) (not e!2925769))))

(assert (=> b!4689767 (= res!1978028 (forall!11318 (toList!5593 lt!1849020) lambda!207088))))

(declare-fun b!4689769 () Bool)

(assert (=> b!4689769 (= e!2925769 (invariantList!1407 (toList!5593 lt!1849554)))))

(declare-fun c!801865 () Bool)

(declare-fun bm!327749 () Bool)

(declare-fun call!327756 () Bool)

(assert (=> bm!327749 (= call!327756 (forall!11318 (ite c!801865 (toList!5593 lt!1849020) (Cons!52403 lt!1849018 lt!1849016)) (ite c!801865 lambda!207085 lambda!207087)))))

(declare-fun bm!327750 () Bool)

(declare-fun call!327755 () Unit!123901)

(assert (=> bm!327750 (= call!327755 (lemmaContainsAllItsOwnKeys!695 lt!1849020))))

(declare-fun bm!327751 () Bool)

(declare-fun lt!1849539 () ListMap!4957)

(declare-fun call!327754 () Bool)

(assert (=> bm!327751 (= call!327754 (forall!11318 (ite c!801865 (toList!5593 lt!1849020) (toList!5593 lt!1849539)) (ite c!801865 lambda!207085 lambda!207087)))))

(assert (=> d!1490432 e!2925769))

(declare-fun res!1978030 () Bool)

(assert (=> d!1490432 (=> (not res!1978030) (not e!2925769))))

(assert (=> d!1490432 (= res!1978030 (forall!11318 (Cons!52403 lt!1849018 lt!1849016) lambda!207088))))

(declare-fun e!2925768 () ListMap!4957)

(assert (=> d!1490432 (= lt!1849554 e!2925768)))

(assert (=> d!1490432 (= c!801865 ((_ is Nil!52403) (Cons!52403 lt!1849018 lt!1849016)))))

(assert (=> d!1490432 (noDuplicateKeys!1852 (Cons!52403 lt!1849018 lt!1849016))))

(assert (=> d!1490432 (= (addToMapMapFromBucket!1284 (Cons!52403 lt!1849018 lt!1849016) lt!1849020) lt!1849554)))

(assert (=> b!4689768 (= e!2925768 lt!1849020)))

(declare-fun lt!1849545 () Unit!123901)

(assert (=> b!4689768 (= lt!1849545 call!327755)))

(assert (=> b!4689768 call!327756))

(declare-fun lt!1849550 () Unit!123901)

(assert (=> b!4689768 (= lt!1849550 lt!1849545)))

(assert (=> b!4689768 call!327754))

(declare-fun lt!1849553 () Unit!123901)

(declare-fun Unit!124010 () Unit!123901)

(assert (=> b!4689768 (= lt!1849553 Unit!124010)))

(assert (=> b!4689770 (= e!2925768 lt!1849538)))

(assert (=> b!4689770 (= lt!1849539 (+!2136 lt!1849020 (h!58646 (Cons!52403 lt!1849018 lt!1849016))))))

(assert (=> b!4689770 (= lt!1849538 (addToMapMapFromBucket!1284 (t!359701 (Cons!52403 lt!1849018 lt!1849016)) (+!2136 lt!1849020 (h!58646 (Cons!52403 lt!1849018 lt!1849016)))))))

(declare-fun lt!1849537 () Unit!123901)

(assert (=> b!4689770 (= lt!1849537 call!327755)))

(assert (=> b!4689770 (forall!11318 (toList!5593 lt!1849020) lambda!207086)))

(declare-fun lt!1849543 () Unit!123901)

(assert (=> b!4689770 (= lt!1849543 lt!1849537)))

(assert (=> b!4689770 call!327754))

(declare-fun lt!1849551 () Unit!123901)

(declare-fun Unit!124011 () Unit!123901)

(assert (=> b!4689770 (= lt!1849551 Unit!124011)))

(assert (=> b!4689770 (forall!11318 (t!359701 (Cons!52403 lt!1849018 lt!1849016)) lambda!207087)))

(declare-fun lt!1849542 () Unit!123901)

(declare-fun Unit!124012 () Unit!123901)

(assert (=> b!4689770 (= lt!1849542 Unit!124012)))

(declare-fun lt!1849541 () Unit!123901)

(declare-fun Unit!124013 () Unit!123901)

(assert (=> b!4689770 (= lt!1849541 Unit!124013)))

(declare-fun lt!1849548 () Unit!123901)

(assert (=> b!4689770 (= lt!1849548 (forallContained!3425 (toList!5593 lt!1849539) lambda!207087 (h!58646 (Cons!52403 lt!1849018 lt!1849016))))))

(assert (=> b!4689770 (contains!15600 lt!1849539 (_1!30195 (h!58646 (Cons!52403 lt!1849018 lt!1849016))))))

(declare-fun lt!1849549 () Unit!123901)

(declare-fun Unit!124014 () Unit!123901)

(assert (=> b!4689770 (= lt!1849549 Unit!124014)))

(assert (=> b!4689770 (contains!15600 lt!1849538 (_1!30195 (h!58646 (Cons!52403 lt!1849018 lt!1849016))))))

(declare-fun lt!1849535 () Unit!123901)

(declare-fun Unit!124015 () Unit!123901)

(assert (=> b!4689770 (= lt!1849535 Unit!124015)))

(assert (=> b!4689770 (forall!11318 (Cons!52403 lt!1849018 lt!1849016) lambda!207087)))

(declare-fun lt!1849547 () Unit!123901)

(declare-fun Unit!124016 () Unit!123901)

(assert (=> b!4689770 (= lt!1849547 Unit!124016)))

(assert (=> b!4689770 (forall!11318 (toList!5593 lt!1849539) lambda!207087)))

(declare-fun lt!1849536 () Unit!123901)

(declare-fun Unit!124017 () Unit!123901)

(assert (=> b!4689770 (= lt!1849536 Unit!124017)))

(declare-fun lt!1849552 () Unit!123901)

(declare-fun Unit!124018 () Unit!123901)

(assert (=> b!4689770 (= lt!1849552 Unit!124018)))

(declare-fun lt!1849546 () Unit!123901)

(assert (=> b!4689770 (= lt!1849546 (addForallContainsKeyThenBeforeAdding!694 lt!1849020 lt!1849538 (_1!30195 (h!58646 (Cons!52403 lt!1849018 lt!1849016))) (_2!30195 (h!58646 (Cons!52403 lt!1849018 lt!1849016)))))))

(assert (=> b!4689770 (forall!11318 (toList!5593 lt!1849020) lambda!207087)))

(declare-fun lt!1849544 () Unit!123901)

(assert (=> b!4689770 (= lt!1849544 lt!1849546)))

(assert (=> b!4689770 (forall!11318 (toList!5593 lt!1849020) lambda!207087)))

(declare-fun lt!1849534 () Unit!123901)

(declare-fun Unit!124019 () Unit!123901)

(assert (=> b!4689770 (= lt!1849534 Unit!124019)))

(declare-fun res!1978029 () Bool)

(assert (=> b!4689770 (= res!1978029 call!327756)))

(declare-fun e!2925770 () Bool)

(assert (=> b!4689770 (=> (not res!1978029) (not e!2925770))))

(assert (=> b!4689770 e!2925770))

(declare-fun lt!1849540 () Unit!123901)

(declare-fun Unit!124020 () Unit!123901)

(assert (=> b!4689770 (= lt!1849540 Unit!124020)))

(declare-fun b!4689771 () Bool)

(assert (=> b!4689771 (= e!2925770 (forall!11318 (toList!5593 lt!1849020) lambda!207087))))

(assert (= (and d!1490432 c!801865) b!4689768))

(assert (= (and d!1490432 (not c!801865)) b!4689770))

(assert (= (and b!4689770 res!1978029) b!4689771))

(assert (= (or b!4689768 b!4689770) bm!327750))

(assert (= (or b!4689768 b!4689770) bm!327749))

(assert (= (or b!4689768 b!4689770) bm!327751))

(assert (= (and d!1490432 res!1978030) b!4689767))

(assert (= (and b!4689767 res!1978028) b!4689769))

(declare-fun m!5591729 () Bool)

(assert (=> b!4689771 m!5591729))

(declare-fun m!5591731 () Bool)

(assert (=> bm!327751 m!5591731))

(declare-fun m!5591733 () Bool)

(assert (=> b!4689767 m!5591733))

(declare-fun m!5591735 () Bool)

(assert (=> b!4689770 m!5591735))

(declare-fun m!5591737 () Bool)

(assert (=> b!4689770 m!5591737))

(declare-fun m!5591739 () Bool)

(assert (=> b!4689770 m!5591739))

(declare-fun m!5591741 () Bool)

(assert (=> b!4689770 m!5591741))

(declare-fun m!5591743 () Bool)

(assert (=> b!4689770 m!5591743))

(declare-fun m!5591745 () Bool)

(assert (=> b!4689770 m!5591745))

(declare-fun m!5591747 () Bool)

(assert (=> b!4689770 m!5591747))

(assert (=> b!4689770 m!5591745))

(declare-fun m!5591749 () Bool)

(assert (=> b!4689770 m!5591749))

(assert (=> b!4689770 m!5591729))

(declare-fun m!5591751 () Bool)

(assert (=> b!4689770 m!5591751))

(declare-fun m!5591753 () Bool)

(assert (=> b!4689770 m!5591753))

(assert (=> b!4689770 m!5591729))

(declare-fun m!5591755 () Bool)

(assert (=> d!1490432 m!5591755))

(declare-fun m!5591757 () Bool)

(assert (=> d!1490432 m!5591757))

(assert (=> bm!327750 m!5591141))

(declare-fun m!5591759 () Bool)

(assert (=> b!4689769 m!5591759))

(declare-fun m!5591761 () Bool)

(assert (=> bm!327749 m!5591761))

(assert (=> b!4689367 d!1490432))

(declare-fun b!4689772 () Bool)

(assert (=> b!4689772 false))

(declare-fun lt!1849556 () Unit!123901)

(declare-fun lt!1849560 () Unit!123901)

(assert (=> b!4689772 (= lt!1849556 lt!1849560)))

(assert (=> b!4689772 (containsKey!3050 (toList!5593 lt!1849008) key!4653)))

(assert (=> b!4689772 (= lt!1849560 (lemmaInGetKeysListThenContainsKey!846 (toList!5593 lt!1849008) key!4653))))

(declare-fun e!2925776 () Unit!123901)

(declare-fun Unit!124021 () Unit!123901)

(assert (=> b!4689772 (= e!2925776 Unit!124021)))

(declare-fun b!4689773 () Bool)

(declare-fun e!2925773 () Unit!123901)

(assert (=> b!4689773 (= e!2925773 e!2925776)))

(declare-fun c!801867 () Bool)

(declare-fun call!327757 () Bool)

(assert (=> b!4689773 (= c!801867 call!327757)))

(declare-fun b!4689774 () Bool)

(declare-fun e!2925772 () List!52529)

(assert (=> b!4689774 (= e!2925772 (keys!18708 lt!1849008))))

(declare-fun b!4689775 () Bool)

(declare-fun e!2925775 () Bool)

(assert (=> b!4689775 (= e!2925775 (not (contains!15603 (keys!18708 lt!1849008) key!4653)))))

(declare-fun bm!327752 () Bool)

(assert (=> bm!327752 (= call!327757 (contains!15603 e!2925772 key!4653))))

(declare-fun c!801868 () Bool)

(declare-fun c!801866 () Bool)

(assert (=> bm!327752 (= c!801868 c!801866)))

(declare-fun d!1490434 () Bool)

(declare-fun e!2925771 () Bool)

(assert (=> d!1490434 e!2925771))

(declare-fun res!1978033 () Bool)

(assert (=> d!1490434 (=> res!1978033 e!2925771)))

(assert (=> d!1490434 (= res!1978033 e!2925775)))

(declare-fun res!1978031 () Bool)

(assert (=> d!1490434 (=> (not res!1978031) (not e!2925775))))

(declare-fun lt!1849559 () Bool)

(assert (=> d!1490434 (= res!1978031 (not lt!1849559))))

(declare-fun lt!1849557 () Bool)

(assert (=> d!1490434 (= lt!1849559 lt!1849557)))

(declare-fun lt!1849558 () Unit!123901)

(assert (=> d!1490434 (= lt!1849558 e!2925773)))

(assert (=> d!1490434 (= c!801866 lt!1849557)))

(assert (=> d!1490434 (= lt!1849557 (containsKey!3050 (toList!5593 lt!1849008) key!4653))))

(assert (=> d!1490434 (= (contains!15600 lt!1849008 key!4653) lt!1849559)))

(declare-fun b!4689776 () Bool)

(declare-fun e!2925774 () Bool)

(assert (=> b!4689776 (= e!2925774 (contains!15603 (keys!18708 lt!1849008) key!4653))))

(declare-fun b!4689777 () Bool)

(declare-fun Unit!124022 () Unit!123901)

(assert (=> b!4689777 (= e!2925776 Unit!124022)))

(declare-fun b!4689778 () Bool)

(declare-fun lt!1849562 () Unit!123901)

(assert (=> b!4689778 (= e!2925773 lt!1849562)))

(declare-fun lt!1849561 () Unit!123901)

(assert (=> b!4689778 (= lt!1849561 (lemmaContainsKeyImpliesGetValueByKeyDefined!1668 (toList!5593 lt!1849008) key!4653))))

(assert (=> b!4689778 (isDefined!9329 (getValueByKey!1777 (toList!5593 lt!1849008) key!4653))))

(declare-fun lt!1849555 () Unit!123901)

(assert (=> b!4689778 (= lt!1849555 lt!1849561)))

(assert (=> b!4689778 (= lt!1849562 (lemmaInListThenGetKeysListContains!842 (toList!5593 lt!1849008) key!4653))))

(assert (=> b!4689778 call!327757))

(declare-fun b!4689779 () Bool)

(assert (=> b!4689779 (= e!2925772 (getKeysList!847 (toList!5593 lt!1849008)))))

(declare-fun b!4689780 () Bool)

(assert (=> b!4689780 (= e!2925771 e!2925774)))

(declare-fun res!1978032 () Bool)

(assert (=> b!4689780 (=> (not res!1978032) (not e!2925774))))

(assert (=> b!4689780 (= res!1978032 (isDefined!9329 (getValueByKey!1777 (toList!5593 lt!1849008) key!4653)))))

(assert (= (and d!1490434 c!801866) b!4689778))

(assert (= (and d!1490434 (not c!801866)) b!4689773))

(assert (= (and b!4689773 c!801867) b!4689772))

(assert (= (and b!4689773 (not c!801867)) b!4689777))

(assert (= (or b!4689778 b!4689773) bm!327752))

(assert (= (and bm!327752 c!801868) b!4689779))

(assert (= (and bm!327752 (not c!801868)) b!4689774))

(assert (= (and d!1490434 res!1978031) b!4689775))

(assert (= (and d!1490434 (not res!1978033)) b!4689780))

(assert (= (and b!4689780 res!1978032) b!4689776))

(declare-fun m!5591763 () Bool)

(assert (=> b!4689772 m!5591763))

(declare-fun m!5591765 () Bool)

(assert (=> b!4689772 m!5591765))

(declare-fun m!5591767 () Bool)

(assert (=> b!4689778 m!5591767))

(declare-fun m!5591769 () Bool)

(assert (=> b!4689778 m!5591769))

(assert (=> b!4689778 m!5591769))

(declare-fun m!5591771 () Bool)

(assert (=> b!4689778 m!5591771))

(declare-fun m!5591773 () Bool)

(assert (=> b!4689778 m!5591773))

(declare-fun m!5591775 () Bool)

(assert (=> b!4689774 m!5591775))

(assert (=> d!1490434 m!5591763))

(assert (=> b!4689776 m!5591775))

(assert (=> b!4689776 m!5591775))

(declare-fun m!5591777 () Bool)

(assert (=> b!4689776 m!5591777))

(assert (=> b!4689780 m!5591769))

(assert (=> b!4689780 m!5591769))

(assert (=> b!4689780 m!5591771))

(assert (=> b!4689775 m!5591775))

(assert (=> b!4689775 m!5591775))

(assert (=> b!4689775 m!5591777))

(declare-fun m!5591779 () Bool)

(assert (=> bm!327752 m!5591779))

(declare-fun m!5591781 () Bool)

(assert (=> b!4689779 m!5591781))

(assert (=> b!4689368 d!1490434))

(declare-fun bs!1086481 () Bool)

(declare-fun d!1490436 () Bool)

(assert (= bs!1086481 (and d!1490436 d!1490240)))

(declare-fun lambda!207089 () Int)

(assert (=> bs!1086481 (not (= lambda!207089 lambda!206946))))

(declare-fun bs!1086482 () Bool)

(assert (= bs!1086482 (and d!1490436 d!1490342)))

(assert (=> bs!1086482 (= lambda!207089 lambda!207055)))

(declare-fun bs!1086483 () Bool)

(assert (= bs!1086483 (and d!1490436 d!1490430)))

(assert (=> bs!1086483 (= lambda!207089 lambda!207084)))

(declare-fun bs!1086484 () Bool)

(assert (= bs!1086484 (and d!1490436 d!1490426)))

(assert (=> bs!1086484 (= lambda!207089 lambda!207083)))

(declare-fun bs!1086485 () Bool)

(assert (= bs!1086485 (and d!1490436 d!1490364)))

(assert (=> bs!1086485 (= lambda!207089 lambda!207059)))

(declare-fun bs!1086486 () Bool)

(assert (= bs!1086486 (and d!1490436 d!1490316)))

(assert (=> bs!1086486 (= lambda!207089 lambda!207024)))

(declare-fun bs!1086487 () Bool)

(assert (= bs!1086487 (and d!1490436 start!474300)))

(assert (=> bs!1086487 (= lambda!207089 lambda!206943)))

(declare-fun bs!1086488 () Bool)

(assert (= bs!1086488 (and d!1490436 d!1490422)))

(assert (=> bs!1086488 (= lambda!207089 lambda!207078)))

(declare-fun bs!1086489 () Bool)

(assert (= bs!1086489 (and d!1490436 d!1490308)))

(assert (=> bs!1086489 (= lambda!207089 lambda!206999)))

(declare-fun lt!1849563 () ListMap!4957)

(assert (=> d!1490436 (invariantList!1407 (toList!5593 lt!1849563))))

(declare-fun e!2925777 () ListMap!4957)

(assert (=> d!1490436 (= lt!1849563 e!2925777)))

(declare-fun c!801869 () Bool)

(assert (=> d!1490436 (= c!801869 ((_ is Cons!52404) (toList!5594 lm!2023)))))

(assert (=> d!1490436 (forall!11317 (toList!5594 lm!2023) lambda!207089)))

(assert (=> d!1490436 (= (extractMap!1878 (toList!5594 lm!2023)) lt!1849563)))

(declare-fun b!4689781 () Bool)

(assert (=> b!4689781 (= e!2925777 (addToMapMapFromBucket!1284 (_2!30196 (h!58647 (toList!5594 lm!2023))) (extractMap!1878 (t!359702 (toList!5594 lm!2023)))))))

(declare-fun b!4689782 () Bool)

(assert (=> b!4689782 (= e!2925777 (ListMap!4958 Nil!52403))))

(assert (= (and d!1490436 c!801869) b!4689781))

(assert (= (and d!1490436 (not c!801869)) b!4689782))

(declare-fun m!5591783 () Bool)

(assert (=> d!1490436 m!5591783))

(declare-fun m!5591785 () Bool)

(assert (=> d!1490436 m!5591785))

(assert (=> b!4689781 m!5590903))

(assert (=> b!4689781 m!5590903))

(declare-fun m!5591787 () Bool)

(assert (=> b!4689781 m!5591787))

(assert (=> b!4689368 d!1490436))

(declare-fun d!1490438 () Bool)

(assert (=> d!1490438 (= (head!9968 (toList!5594 lm!2023)) (h!58647 (toList!5594 lm!2023)))))

(assert (=> b!4689371 d!1490438))

(declare-fun bs!1086490 () Bool)

(declare-fun d!1490440 () Bool)

(assert (= bs!1086490 (and d!1490440 b!4689745)))

(declare-fun lambda!207092 () Int)

(assert (=> bs!1086490 (not (= lambda!207092 lambda!207070))))

(declare-fun bs!1086491 () Bool)

(assert (= bs!1086491 (and d!1490440 d!1490432)))

(assert (=> bs!1086491 (not (= lambda!207092 lambda!207088))))

(declare-fun bs!1086492 () Bool)

(assert (= bs!1086492 (and d!1490440 b!4689747)))

(assert (=> bs!1086492 (not (= lambda!207092 lambda!207071))))

(declare-fun bs!1086493 () Bool)

(assert (= bs!1086493 (and d!1490440 b!4689761)))

(assert (=> bs!1086493 (not (= lambda!207092 lambda!207080))))

(declare-fun bs!1086494 () Bool)

(assert (= bs!1086494 (and d!1490440 b!4689759)))

(assert (=> bs!1086494 (not (= lambda!207092 lambda!207079))))

(declare-fun bs!1086495 () Bool)

(assert (= bs!1086495 (and d!1490440 b!4689770)))

(assert (=> bs!1086495 (not (= lambda!207092 lambda!207087))))

(assert (=> bs!1086493 (not (= lambda!207092 lambda!207081))))

(declare-fun bs!1086496 () Bool)

(assert (= bs!1086496 (and d!1490440 b!4689752)))

(assert (=> bs!1086496 (not (= lambda!207092 lambda!207075))))

(declare-fun bs!1086497 () Bool)

(assert (= bs!1086497 (and d!1490440 d!1490416)))

(assert (=> bs!1086497 (not (= lambda!207092 lambda!207073))))

(declare-fun bs!1086498 () Bool)

(assert (= bs!1086498 (and d!1490440 b!4689514)))

(assert (=> bs!1086498 (not (= lambda!207092 lambda!206991))))

(declare-fun bs!1086499 () Bool)

(assert (= bs!1086499 (and d!1490440 b!4689516)))

(assert (=> bs!1086499 (not (= lambda!207092 lambda!206992))))

(declare-fun bs!1086500 () Bool)

(assert (= bs!1086500 (and d!1490440 d!1490424)))

(assert (=> bs!1086500 (not (= lambda!207092 lambda!207082))))

(declare-fun bs!1086501 () Bool)

(assert (= bs!1086501 (and d!1490440 b!4689768)))

(assert (=> bs!1086501 (not (= lambda!207092 lambda!207085))))

(assert (=> bs!1086496 (not (= lambda!207092 lambda!207076))))

(declare-fun bs!1086502 () Bool)

(assert (= bs!1086502 (and d!1490440 d!1490418)))

(assert (=> bs!1086502 (not (= lambda!207092 lambda!207077))))

(declare-fun bs!1086503 () Bool)

(assert (= bs!1086503 (and d!1490440 d!1490266)))

(assert (=> bs!1086503 (not (= lambda!207092 lambda!206994))))

(assert (=> bs!1086492 (not (= lambda!207092 lambda!207072))))

(assert (=> bs!1086499 (not (= lambda!207092 lambda!206993))))

(assert (=> bs!1086495 (not (= lambda!207092 lambda!207086))))

(declare-fun bs!1086504 () Bool)

(assert (= bs!1086504 (and d!1490440 b!4689750)))

(assert (=> bs!1086504 (not (= lambda!207092 lambda!207074))))

(assert (=> d!1490440 true))

(assert (=> d!1490440 true))

(assert (=> d!1490440 (= (allKeysSameHash!1678 oldBucket!34 hash!405 hashF!1323) (forall!11318 oldBucket!34 lambda!207092))))

(declare-fun bs!1086505 () Bool)

(assert (= bs!1086505 d!1490440))

(declare-fun m!5591789 () Bool)

(assert (=> bs!1086505 m!5591789))

(assert (=> b!4689372 d!1490440))

(declare-fun bs!1086506 () Bool)

(declare-fun d!1490442 () Bool)

(assert (= bs!1086506 (and d!1490442 b!4689745)))

(declare-fun lambda!207093 () Int)

(assert (=> bs!1086506 (not (= lambda!207093 lambda!207070))))

(declare-fun bs!1086507 () Bool)

(assert (= bs!1086507 (and d!1490442 d!1490432)))

(assert (=> bs!1086507 (not (= lambda!207093 lambda!207088))))

(declare-fun bs!1086508 () Bool)

(assert (= bs!1086508 (and d!1490442 d!1490440)))

(assert (=> bs!1086508 (= lambda!207093 lambda!207092)))

(declare-fun bs!1086509 () Bool)

(assert (= bs!1086509 (and d!1490442 b!4689747)))

(assert (=> bs!1086509 (not (= lambda!207093 lambda!207071))))

(declare-fun bs!1086510 () Bool)

(assert (= bs!1086510 (and d!1490442 b!4689761)))

(assert (=> bs!1086510 (not (= lambda!207093 lambda!207080))))

(declare-fun bs!1086511 () Bool)

(assert (= bs!1086511 (and d!1490442 b!4689759)))

(assert (=> bs!1086511 (not (= lambda!207093 lambda!207079))))

(declare-fun bs!1086512 () Bool)

(assert (= bs!1086512 (and d!1490442 b!4689770)))

(assert (=> bs!1086512 (not (= lambda!207093 lambda!207087))))

(assert (=> bs!1086510 (not (= lambda!207093 lambda!207081))))

(declare-fun bs!1086513 () Bool)

(assert (= bs!1086513 (and d!1490442 b!4689752)))

(assert (=> bs!1086513 (not (= lambda!207093 lambda!207075))))

(declare-fun bs!1086514 () Bool)

(assert (= bs!1086514 (and d!1490442 d!1490416)))

(assert (=> bs!1086514 (not (= lambda!207093 lambda!207073))))

(declare-fun bs!1086515 () Bool)

(assert (= bs!1086515 (and d!1490442 b!4689514)))

(assert (=> bs!1086515 (not (= lambda!207093 lambda!206991))))

(declare-fun bs!1086516 () Bool)

(assert (= bs!1086516 (and d!1490442 b!4689516)))

(assert (=> bs!1086516 (not (= lambda!207093 lambda!206992))))

(declare-fun bs!1086517 () Bool)

(assert (= bs!1086517 (and d!1490442 d!1490424)))

(assert (=> bs!1086517 (not (= lambda!207093 lambda!207082))))

(declare-fun bs!1086518 () Bool)

(assert (= bs!1086518 (and d!1490442 b!4689768)))

(assert (=> bs!1086518 (not (= lambda!207093 lambda!207085))))

(assert (=> bs!1086513 (not (= lambda!207093 lambda!207076))))

(declare-fun bs!1086519 () Bool)

(assert (= bs!1086519 (and d!1490442 d!1490418)))

(assert (=> bs!1086519 (not (= lambda!207093 lambda!207077))))

(declare-fun bs!1086520 () Bool)

(assert (= bs!1086520 (and d!1490442 d!1490266)))

(assert (=> bs!1086520 (not (= lambda!207093 lambda!206994))))

(assert (=> bs!1086509 (not (= lambda!207093 lambda!207072))))

(assert (=> bs!1086516 (not (= lambda!207093 lambda!206993))))

(assert (=> bs!1086512 (not (= lambda!207093 lambda!207086))))

(declare-fun bs!1086521 () Bool)

(assert (= bs!1086521 (and d!1490442 b!4689750)))

(assert (=> bs!1086521 (not (= lambda!207093 lambda!207074))))

(assert (=> d!1490442 true))

(assert (=> d!1490442 true))

(assert (=> d!1490442 (= (allKeysSameHash!1678 newBucket!218 hash!405 hashF!1323) (forall!11318 newBucket!218 lambda!207093))))

(declare-fun bs!1086522 () Bool)

(assert (= bs!1086522 d!1490442))

(declare-fun m!5591791 () Bool)

(assert (=> bs!1086522 m!5591791))

(assert (=> b!4689361 d!1490442))

(declare-fun d!1490444 () Bool)

(declare-fun lt!1849564 () List!52527)

(assert (=> d!1490444 (not (containsKey!3047 lt!1849564 key!4653))))

(declare-fun e!2925779 () List!52527)

(assert (=> d!1490444 (= lt!1849564 e!2925779)))

(declare-fun c!801870 () Bool)

(assert (=> d!1490444 (= c!801870 (and ((_ is Cons!52403) lt!1849001) (= (_1!30195 (h!58646 lt!1849001)) key!4653)))))

(assert (=> d!1490444 (noDuplicateKeys!1852 lt!1849001)))

(assert (=> d!1490444 (= (removePairForKey!1447 lt!1849001 key!4653) lt!1849564)))

(declare-fun b!4689788 () Bool)

(declare-fun e!2925778 () List!52527)

(assert (=> b!4689788 (= e!2925779 e!2925778)))

(declare-fun c!801871 () Bool)

(assert (=> b!4689788 (= c!801871 ((_ is Cons!52403) lt!1849001))))

(declare-fun b!4689790 () Bool)

(assert (=> b!4689790 (= e!2925778 Nil!52403)))

(declare-fun b!4689787 () Bool)

(assert (=> b!4689787 (= e!2925779 (t!359701 lt!1849001))))

(declare-fun b!4689789 () Bool)

(assert (=> b!4689789 (= e!2925778 (Cons!52403 (h!58646 lt!1849001) (removePairForKey!1447 (t!359701 lt!1849001) key!4653)))))

(assert (= (and d!1490444 c!801870) b!4689787))

(assert (= (and d!1490444 (not c!801870)) b!4689788))

(assert (= (and b!4689788 c!801871) b!4689789))

(assert (= (and b!4689788 (not c!801871)) b!4689790))

(declare-fun m!5591793 () Bool)

(assert (=> d!1490444 m!5591793))

(assert (=> d!1490444 m!5591487))

(declare-fun m!5591795 () Bool)

(assert (=> b!4689789 m!5591795))

(assert (=> b!4689360 d!1490444))

(declare-fun d!1490446 () Bool)

(assert (=> d!1490446 (= (tail!8585 newBucket!218) (t!359701 newBucket!218))))

(assert (=> b!4689360 d!1490446))

(declare-fun d!1490448 () Bool)

(assert (=> d!1490448 (= (tail!8585 oldBucket!34) (t!359701 oldBucket!34))))

(assert (=> b!4689360 d!1490448))

(declare-fun tp!1345892 () Bool)

(declare-fun e!2925782 () Bool)

(declare-fun b!4689795 () Bool)

(assert (=> b!4689795 (= e!2925782 (and tp_is_empty!30701 tp_is_empty!30703 tp!1345892))))

(assert (=> b!4689364 (= tp!1345877 e!2925782)))

(assert (= (and b!4689364 ((_ is Cons!52403) (t!359701 oldBucket!34))) b!4689795))

(declare-fun e!2925783 () Bool)

(declare-fun b!4689796 () Bool)

(declare-fun tp!1345893 () Bool)

(assert (=> b!4689796 (= e!2925783 (and tp_is_empty!30701 tp_is_empty!30703 tp!1345893))))

(assert (=> b!4689366 (= tp!1345879 e!2925783)))

(assert (= (and b!4689366 ((_ is Cons!52403) (t!359701 newBucket!218))) b!4689796))

(declare-fun b!4689801 () Bool)

(declare-fun e!2925786 () Bool)

(declare-fun tp!1345898 () Bool)

(declare-fun tp!1345899 () Bool)

(assert (=> b!4689801 (= e!2925786 (and tp!1345898 tp!1345899))))

(assert (=> b!4689370 (= tp!1345878 e!2925786)))

(assert (= (and b!4689370 ((_ is Cons!52404) (toList!5594 lm!2023))) b!4689801))

(declare-fun b_lambda!176983 () Bool)

(assert (= b_lambda!176965 (or start!474300 b_lambda!176983)))

(declare-fun bs!1086523 () Bool)

(declare-fun d!1490450 () Bool)

(assert (= bs!1086523 (and d!1490450 start!474300)))

(assert (=> bs!1086523 (= (dynLambda!21711 lambda!206943 (h!58647 lt!1849002)) (noDuplicateKeys!1852 (_2!30196 (h!58647 lt!1849002))))))

(declare-fun m!5591797 () Bool)

(assert (=> bs!1086523 m!5591797))

(assert (=> b!4689410 d!1490450))

(declare-fun b_lambda!176985 () Bool)

(assert (= b_lambda!176975 (or start!474300 b_lambda!176985)))

(declare-fun bs!1086524 () Bool)

(declare-fun d!1490452 () Bool)

(assert (= bs!1086524 (and d!1490452 start!474300)))

(assert (=> bs!1086524 (= (dynLambda!21711 lambda!206943 lt!1849006) (noDuplicateKeys!1852 (_2!30196 lt!1849006)))))

(declare-fun m!5591799 () Bool)

(assert (=> bs!1086524 m!5591799))

(assert (=> d!1490334 d!1490452))

(declare-fun b_lambda!176987 () Bool)

(assert (= b_lambda!176969 (or start!474300 b_lambda!176987)))

(declare-fun bs!1086525 () Bool)

(declare-fun d!1490454 () Bool)

(assert (= bs!1086525 (and d!1490454 start!474300)))

(assert (=> bs!1086525 (= (dynLambda!21711 lambda!206943 (h!58647 (toList!5594 lm!2023))) (noDuplicateKeys!1852 (_2!30196 (h!58647 (toList!5594 lm!2023)))))))

(assert (=> bs!1086525 m!5591139))

(assert (=> b!4689418 d!1490454))

(check-sat (not b!4689769) (not b!4689565) (not bm!327752) (not d!1490328) (not bm!327739) (not d!1490364) (not bs!1086523) (not b!4689628) (not b!4689730) (not d!1490340) (not b!4689751) (not d!1490432) (not bm!327749) (not b!4689796) (not bm!327751) (not b!4689631) (not b!4689795) (not b!4689776) (not d!1490410) (not b!4689771) (not d!1490358) (not d!1490342) (not d!1490334) (not b!4689633) (not b!4689584) (not d!1490444) (not b!4689767) (not b!4689741) (not d!1490242) (not d!1490362) (not b!4689727) (not b!4689779) (not b!4689789) (not b!4689775) (not d!1490434) (not b!4689765) (not b!4689535) (not d!1490420) (not b!4689772) (not d!1490416) (not b!4689634) (not b!4689534) (not b_lambda!176987) (not b!4689541) (not d!1490436) (not b!4689594) (not b!4689752) (not b!4689586) (not d!1490318) (not d!1490430) (not b!4689742) (not b!4689627) (not d!1490418) (not b!4689735) (not b!4689778) (not d!1490428) (not b!4689599) (not bm!327744) (not b!4689567) (not b!4689760) (not d!1490408) (not b!4689517) (not d!1490316) (not d!1490424) (not b!4689596) (not bs!1086525) (not b!4689774) (not bm!327710) (not bm!327745) (not d!1490314) (not b!4689801) (not b!4689758) (not b!4689388) (not d!1490332) (not b!4689733) (not bm!327741) (not d!1490440) (not b!4689568) tp_is_empty!30701 (not b!4689781) (not b!4689756) (not d!1490266) (not b!4689734) (not b!4689729) (not bm!327709) (not b!4689761) (not b!4689748) (not d!1490422) (not b!4689755) (not d!1490374) (not d!1490394) (not bm!327748) (not b!4689740) (not b!4689753) tp_is_empty!30703 (not b!4689770) (not b!4689419) (not b!4689743) (not bs!1086524) (not d!1490310) (not b!4689625) (not bm!327742) (not b!4689780) (not b_lambda!176985) (not d!1490442) (not d!1490320) (not bm!327743) (not d!1490254) (not d!1490308) (not bm!327740) (not b!4689571) (not b!4689516) (not b!4689411) (not b!4689754) (not b!4689564) (not b_lambda!176983) (not b!4689744) (not bm!327711) (not b!4689513) (not d!1490322) (not b!4689731) (not b!4689763) (not b!4689626) (not bm!327746) (not d!1490412) (not b!4689762) (not d!1490262) (not b!4689746) (not b!4689515) (not d!1490414) (not bm!327747) (not b!4689528) (not d!1490426) (not d!1490240) (not b!4689749) (not bm!327750) (not b!4689747))
(check-sat)
