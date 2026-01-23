; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484058 () Bool)

(assert start!484058)

(declare-fun b!4743280 () Bool)

(declare-fun e!2958721 () Bool)

(declare-fun e!2958725 () Bool)

(assert (=> b!4743280 (= e!2958721 e!2958725)))

(declare-fun res!2009931 () Bool)

(assert (=> b!4743280 (=> res!2009931 e!2958725)))

(declare-datatypes ((K!14308 0))(
  ( (K!14309 (val!19717 Int)) )
))
(declare-datatypes ((V!14554 0))(
  ( (V!14555 (val!19718 Int)) )
))
(declare-datatypes ((tuple2!54646 0))(
  ( (tuple2!54647 (_1!30617 K!14308) (_2!30617 V!14554)) )
))
(declare-datatypes ((List!53089 0))(
  ( (Nil!52965) (Cons!52965 (h!59350 tuple2!54646) (t!360391 List!53089)) )
))
(declare-fun oldBucket!34 () List!53089)

(declare-fun key!4653 () K!14308)

(declare-fun containsKey!3484 (List!53089 K!14308) Bool)

(assert (=> b!4743280 (= res!2009931 (not (containsKey!3484 (t!360391 oldBucket!34) key!4653)))))

(assert (=> b!4743280 (containsKey!3484 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6432 0))(
  ( (HashableExt!6431 (__x!32135 Int)) )
))
(declare-fun hashF!1323 () Hashable!6432)

(declare-datatypes ((Unit!133851 0))(
  ( (Unit!133852) )
))
(declare-fun lt!1905833 () Unit!133851)

(declare-fun lemmaGetPairDefinedThenContainsKey!347 (List!53089 K!14308 Hashable!6432) Unit!133851)

(assert (=> b!4743280 (= lt!1905833 (lemmaGetPairDefinedThenContainsKey!347 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1905840 () List!53089)

(declare-datatypes ((Option!12470 0))(
  ( (None!12469) (Some!12469 (v!47146 tuple2!54646)) )
))
(declare-fun isDefined!9724 (Option!12470) Bool)

(declare-fun getPair!603 (List!53089 K!14308) Option!12470)

(assert (=> b!4743280 (isDefined!9724 (getPair!603 lt!1905840 key!4653))))

(declare-datatypes ((tuple2!54648 0))(
  ( (tuple2!54649 (_1!30618 (_ BitVec 64)) (_2!30618 List!53089)) )
))
(declare-datatypes ((List!53090 0))(
  ( (Nil!52966) (Cons!52966 (h!59351 tuple2!54648) (t!360392 List!53090)) )
))
(declare-datatypes ((ListLongMap!4545 0))(
  ( (ListLongMap!4546 (toList!6015 List!53090)) )
))
(declare-fun lm!2023 () ListLongMap!4545)

(declare-fun lt!1905846 () Unit!133851)

(declare-fun lt!1905841 () tuple2!54648)

(declare-fun lambda!219585 () Int)

(declare-fun forallContained!3732 (List!53090 Int tuple2!54648) Unit!133851)

(assert (=> b!4743280 (= lt!1905846 (forallContained!3732 (toList!6015 lm!2023) lambda!219585 lt!1905841))))

(declare-fun contains!16381 (List!53090 tuple2!54648) Bool)

(assert (=> b!4743280 (contains!16381 (toList!6015 lm!2023) lt!1905841)))

(declare-fun lt!1905839 () (_ BitVec 64))

(assert (=> b!4743280 (= lt!1905841 (tuple2!54649 lt!1905839 lt!1905840))))

(declare-fun lt!1905828 () Unit!133851)

(declare-fun lemmaGetValueImpliesTupleContained!408 (ListLongMap!4545 (_ BitVec 64) List!53089) Unit!133851)

(assert (=> b!4743280 (= lt!1905828 (lemmaGetValueImpliesTupleContained!408 lm!2023 lt!1905839 lt!1905840))))

(declare-fun apply!12488 (ListLongMap!4545 (_ BitVec 64)) List!53089)

(assert (=> b!4743280 (= lt!1905840 (apply!12488 lm!2023 lt!1905839))))

(declare-fun contains!16382 (ListLongMap!4545 (_ BitVec 64)) Bool)

(assert (=> b!4743280 (contains!16382 lm!2023 lt!1905839)))

(declare-fun lt!1905837 () Unit!133851)

(declare-fun lemmaInGenMapThenLongMapContainsHash!809 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> b!4743280 (= lt!1905837 (lemmaInGenMapThenLongMapContainsHash!809 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1905835 () Unit!133851)

(declare-fun lemmaInGenMapThenGetPairDefined!399 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> b!4743280 (= lt!1905835 (lemmaInGenMapThenGetPairDefined!399 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4743281 () Bool)

(declare-fun res!2009925 () Bool)

(declare-fun e!2958729 () Bool)

(assert (=> b!4743281 (=> res!2009925 e!2958729)))

(declare-fun lt!1905845 () List!53090)

(declare-fun forall!11692 (List!53090 Int) Bool)

(assert (=> b!4743281 (= res!2009925 (not (forall!11692 lt!1905845 lambda!219585)))))

(declare-fun b!4743282 () Bool)

(declare-fun res!2009924 () Bool)

(assert (=> b!4743282 (=> res!2009924 e!2958729)))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1889 (List!53089 (_ BitVec 64) Hashable!6432) Bool)

(assert (=> b!4743282 (= res!2009924 (not (allKeysSameHash!1889 (t!360391 oldBucket!34) hash!405 hashF!1323)))))

(declare-fun b!4743283 () Bool)

(declare-fun e!2958731 () Bool)

(declare-fun tp!1349328 () Bool)

(assert (=> b!4743283 (= e!2958731 tp!1349328)))

(declare-fun b!4743284 () Bool)

(declare-fun res!2009938 () Bool)

(declare-fun e!2958727 () Bool)

(assert (=> b!4743284 (=> (not res!2009938) (not e!2958727))))

(assert (=> b!4743284 (= res!2009938 (allKeysSameHash!1889 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1349330 () Bool)

(declare-fun tp_is_empty!31545 () Bool)

(declare-fun b!4743285 () Bool)

(declare-fun tp_is_empty!31547 () Bool)

(declare-fun e!2958722 () Bool)

(assert (=> b!4743285 (= e!2958722 (and tp_is_empty!31545 tp_is_empty!31547 tp!1349330))))

(declare-fun b!4743286 () Bool)

(declare-fun res!2009918 () Bool)

(declare-fun e!2958726 () Bool)

(assert (=> b!4743286 (=> res!2009918 e!2958726)))

(declare-fun lt!1905838 () List!53089)

(declare-fun removePairForKey!1658 (List!53089 K!14308) List!53089)

(assert (=> b!4743286 (= res!2009918 (not (= (removePairForKey!1658 (t!360391 oldBucket!34) key!4653) lt!1905838)))))

(declare-fun b!4743287 () Bool)

(declare-fun e!2958723 () Bool)

(declare-fun e!2958728 () Bool)

(assert (=> b!4743287 (= e!2958723 e!2958728)))

(declare-fun res!2009937 () Bool)

(assert (=> b!4743287 (=> (not res!2009937) (not e!2958728))))

(declare-fun lt!1905831 () tuple2!54648)

(declare-fun head!10329 (List!53090) tuple2!54648)

(assert (=> b!4743287 (= res!2009937 (= (head!10329 (toList!6015 lm!2023)) lt!1905831))))

(assert (=> b!4743287 (= lt!1905831 (tuple2!54649 hash!405 oldBucket!34))))

(declare-fun b!4743288 () Bool)

(declare-fun res!2009919 () Bool)

(assert (=> b!4743288 (=> res!2009919 e!2958729)))

(declare-fun lt!1905834 () ListLongMap!4545)

(declare-fun allKeysSameHashInMap!1977 (ListLongMap!4545 Hashable!6432) Bool)

(assert (=> b!4743288 (= res!2009919 (not (allKeysSameHashInMap!1977 lt!1905834 hashF!1323)))))

(declare-fun b!4743289 () Bool)

(declare-fun res!2009926 () Bool)

(assert (=> b!4743289 (=> res!2009926 e!2958729)))

(declare-fun lt!1905830 () tuple2!54646)

(assert (=> b!4743289 (= res!2009926 (not (= (h!59350 oldBucket!34) lt!1905830)))))

(declare-fun b!4743290 () Bool)

(assert (=> b!4743290 (= e!2958725 e!2958726)))

(declare-fun res!2009914 () Bool)

(assert (=> b!4743290 (=> res!2009914 e!2958726)))

(declare-fun lt!1905849 () List!53089)

(assert (=> b!4743290 (= res!2009914 (not (= (removePairForKey!1658 lt!1905849 key!4653) lt!1905838)))))

(declare-fun newBucket!218 () List!53089)

(declare-fun tail!9128 (List!53089) List!53089)

(assert (=> b!4743290 (= lt!1905838 (tail!9128 newBucket!218))))

(assert (=> b!4743290 (= lt!1905849 (tail!9128 oldBucket!34))))

(declare-fun b!4743291 () Bool)

(assert (=> b!4743291 (= e!2958726 e!2958729)))

(declare-fun res!2009933 () Bool)

(assert (=> b!4743291 (=> res!2009933 e!2958729)))

(declare-datatypes ((ListMap!5379 0))(
  ( (ListMap!5380 (toList!6016 List!53089)) )
))
(declare-fun lt!1905832 () ListMap!5379)

(declare-fun lt!1905847 () ListMap!5379)

(declare-fun eq!1160 (ListMap!5379 ListMap!5379) Bool)

(declare-fun +!2311 (ListMap!5379 tuple2!54646) ListMap!5379)

(assert (=> b!4743291 (= res!2009933 (not (eq!1160 lt!1905847 (+!2311 lt!1905832 (h!59350 oldBucket!34)))))))

(declare-fun extractMap!2089 (List!53090) ListMap!5379)

(assert (=> b!4743291 (= lt!1905832 (extractMap!2089 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023)))))))

(assert (=> b!4743291 (= lt!1905847 (extractMap!2089 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023)))))))

(declare-fun lt!1905850 () ListMap!5379)

(declare-fun addToMapMapFromBucket!1493 (List!53089 ListMap!5379) ListMap!5379)

(assert (=> b!4743291 (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905830 lt!1905838) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1905830))))

(declare-fun lt!1905848 () Unit!133851)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!409 (tuple2!54646 List!53089 ListMap!5379) Unit!133851)

(assert (=> b!4743291 (= lt!1905848 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!409 lt!1905830 lt!1905838 lt!1905850))))

(declare-fun head!10330 (List!53089) tuple2!54646)

(assert (=> b!4743291 (= lt!1905830 (head!10330 newBucket!218))))

(declare-fun lt!1905836 () tuple2!54646)

(assert (=> b!4743291 (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905836 lt!1905849) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1905836))))

(declare-fun lt!1905829 () Unit!133851)

(assert (=> b!4743291 (= lt!1905829 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!409 lt!1905836 lt!1905849 lt!1905850))))

(assert (=> b!4743291 (= lt!1905836 (head!10330 oldBucket!34))))

(declare-fun contains!16383 (ListMap!5379 K!14308) Bool)

(assert (=> b!4743291 (contains!16383 (extractMap!2089 lt!1905845) key!4653)))

(declare-fun lt!1905842 () Unit!133851)

(declare-fun lemmaListContainsThenExtractedMapContains!571 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> b!4743291 (= lt!1905842 (lemmaListContainsThenExtractedMapContains!571 lt!1905834 key!4653 hashF!1323))))

(assert (=> b!4743291 (= lt!1905834 (ListLongMap!4546 lt!1905845))))

(declare-fun lt!1905844 () tuple2!54648)

(assert (=> b!4743291 (= lt!1905845 (Cons!52966 lt!1905844 (t!360392 (toList!6015 lm!2023))))))

(assert (=> b!4743291 (= lt!1905844 (tuple2!54649 hash!405 (t!360391 oldBucket!34)))))

(declare-fun b!4743292 () Bool)

(declare-fun res!2009922 () Bool)

(assert (=> b!4743292 (=> res!2009922 e!2958729)))

(assert (=> b!4743292 (= res!2009922 (not (allKeysSameHash!1889 lt!1905838 hash!405 hashF!1323)))))

(declare-fun b!4743293 () Bool)

(declare-fun res!2009934 () Bool)

(assert (=> b!4743293 (=> res!2009934 e!2958729)))

(declare-fun noDuplicateKeys!2063 (List!53089) Bool)

(assert (=> b!4743293 (= res!2009934 (not (noDuplicateKeys!2063 lt!1905838)))))

(declare-fun b!4743294 () Bool)

(declare-fun res!2009936 () Bool)

(assert (=> b!4743294 (=> res!2009936 e!2958729)))

(assert (=> b!4743294 (= res!2009936 (not (noDuplicateKeys!2063 (t!360391 oldBucket!34))))))

(declare-fun b!4743295 () Bool)

(declare-fun res!2009921 () Bool)

(assert (=> b!4743295 (=> (not res!2009921) (not e!2958723))))

(assert (=> b!4743295 (= res!2009921 (allKeysSameHash!1889 newBucket!218 hash!405 hashF!1323))))

(declare-fun e!2958730 () Bool)

(declare-fun tp!1349329 () Bool)

(declare-fun b!4743296 () Bool)

(assert (=> b!4743296 (= e!2958730 (and tp_is_empty!31545 tp_is_empty!31547 tp!1349329))))

(declare-fun b!4743297 () Bool)

(declare-fun res!2009929 () Bool)

(assert (=> b!4743297 (=> (not res!2009929) (not e!2958727))))

(assert (=> b!4743297 (= res!2009929 (noDuplicateKeys!2063 newBucket!218))))

(declare-fun b!4743298 () Bool)

(declare-fun res!2009930 () Bool)

(assert (=> b!4743298 (=> res!2009930 e!2958729)))

(assert (=> b!4743298 (= res!2009930 (not (eq!1160 lt!1905847 (+!2311 lt!1905832 lt!1905830))))))

(declare-fun b!4743299 () Bool)

(declare-fun res!2009932 () Bool)

(assert (=> b!4743299 (=> (not res!2009932) (not e!2958727))))

(assert (=> b!4743299 (= res!2009932 (noDuplicateKeys!2063 oldBucket!34))))

(declare-fun b!4743300 () Bool)

(declare-fun res!2009920 () Bool)

(assert (=> b!4743300 (=> (not res!2009920) (not e!2958723))))

(assert (=> b!4743300 (= res!2009920 (allKeysSameHashInMap!1977 lm!2023 hashF!1323))))

(declare-fun b!4743301 () Bool)

(declare-fun res!2009927 () Bool)

(assert (=> b!4743301 (=> (not res!2009927) (not e!2958727))))

(assert (=> b!4743301 (= res!2009927 (= (removePairForKey!1658 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4743302 () Bool)

(declare-fun size!35985 (List!53089) Int)

(assert (=> b!4743302 (= e!2958729 (< (size!35985 (t!360391 oldBucket!34)) (size!35985 oldBucket!34)))))

(declare-fun b!4743303 () Bool)

(declare-fun res!2009916 () Bool)

(assert (=> b!4743303 (=> (not res!2009916) (not e!2958728))))

(assert (=> b!4743303 (= res!2009916 (is-Cons!52966 (toList!6015 lm!2023)))))

(declare-fun b!4743304 () Bool)

(declare-fun e!2958724 () Bool)

(assert (=> b!4743304 (= e!2958724 e!2958723)))

(declare-fun res!2009917 () Bool)

(assert (=> b!4743304 (=> (not res!2009917) (not e!2958723))))

(assert (=> b!4743304 (= res!2009917 (= lt!1905839 hash!405))))

(declare-fun hash!4469 (Hashable!6432 K!14308) (_ BitVec 64))

(assert (=> b!4743304 (= lt!1905839 (hash!4469 hashF!1323 key!4653))))

(declare-fun b!4743305 () Bool)

(declare-fun res!2009923 () Bool)

(assert (=> b!4743305 (=> res!2009923 e!2958729)))

(assert (=> b!4743305 (= res!2009923 (not (= (head!10329 lt!1905845) lt!1905844)))))

(declare-fun b!4743306 () Bool)

(assert (=> b!4743306 (= e!2958727 e!2958724)))

(declare-fun res!2009935 () Bool)

(assert (=> b!4743306 (=> (not res!2009935) (not e!2958724))))

(declare-fun lt!1905843 () ListMap!5379)

(assert (=> b!4743306 (= res!2009935 (contains!16383 lt!1905843 key!4653))))

(assert (=> b!4743306 (= lt!1905843 (extractMap!2089 (toList!6015 lm!2023)))))

(declare-fun b!4743307 () Bool)

(assert (=> b!4743307 (= e!2958728 (not e!2958721))))

(declare-fun res!2009915 () Bool)

(assert (=> b!4743307 (=> res!2009915 e!2958721)))

(assert (=> b!4743307 (= res!2009915 (or (and (is-Cons!52965 oldBucket!34) (= (_1!30617 (h!59350 oldBucket!34)) key!4653)) (not (is-Cons!52965 oldBucket!34)) (= (_1!30617 (h!59350 oldBucket!34)) key!4653)))))

(assert (=> b!4743307 (= lt!1905843 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (toList!6015 lm!2023))) lt!1905850))))

(assert (=> b!4743307 (= lt!1905850 (extractMap!2089 (t!360392 (toList!6015 lm!2023))))))

(declare-fun tail!9129 (ListLongMap!4545) ListLongMap!4545)

(assert (=> b!4743307 (= (t!360392 (toList!6015 lm!2023)) (toList!6015 (tail!9129 lm!2023)))))

(declare-fun res!2009928 () Bool)

(assert (=> start!484058 (=> (not res!2009928) (not e!2958727))))

(assert (=> start!484058 (= res!2009928 (forall!11692 (toList!6015 lm!2023) lambda!219585))))

(assert (=> start!484058 e!2958727))

(declare-fun inv!68183 (ListLongMap!4545) Bool)

(assert (=> start!484058 (and (inv!68183 lm!2023) e!2958731)))

(assert (=> start!484058 tp_is_empty!31545))

(assert (=> start!484058 e!2958730))

(assert (=> start!484058 true))

(assert (=> start!484058 e!2958722))

(assert (= (and start!484058 res!2009928) b!4743299))

(assert (= (and b!4743299 res!2009932) b!4743297))

(assert (= (and b!4743297 res!2009929) b!4743301))

(assert (= (and b!4743301 res!2009927) b!4743284))

(assert (= (and b!4743284 res!2009938) b!4743306))

(assert (= (and b!4743306 res!2009935) b!4743304))

(assert (= (and b!4743304 res!2009917) b!4743295))

(assert (= (and b!4743295 res!2009921) b!4743300))

(assert (= (and b!4743300 res!2009920) b!4743287))

(assert (= (and b!4743287 res!2009937) b!4743303))

(assert (= (and b!4743303 res!2009916) b!4743307))

(assert (= (and b!4743307 (not res!2009915)) b!4743280))

(assert (= (and b!4743280 (not res!2009931)) b!4743290))

(assert (= (and b!4743290 (not res!2009914)) b!4743286))

(assert (= (and b!4743286 (not res!2009918)) b!4743291))

(assert (= (and b!4743291 (not res!2009933)) b!4743289))

(assert (= (and b!4743289 (not res!2009926)) b!4743298))

(assert (= (and b!4743298 (not res!2009930)) b!4743281))

(assert (= (and b!4743281 (not res!2009925)) b!4743294))

(assert (= (and b!4743294 (not res!2009936)) b!4743293))

(assert (= (and b!4743293 (not res!2009934)) b!4743282))

(assert (= (and b!4743282 (not res!2009924)) b!4743292))

(assert (= (and b!4743292 (not res!2009922)) b!4743288))

(assert (= (and b!4743288 (not res!2009919)) b!4743305))

(assert (= (and b!4743305 (not res!2009923)) b!4743302))

(assert (= start!484058 b!4743283))

(assert (= (and start!484058 (is-Cons!52965 oldBucket!34)) b!4743296))

(assert (= (and start!484058 (is-Cons!52965 newBucket!218)) b!4743285))

(declare-fun m!5697885 () Bool)

(assert (=> b!4743287 m!5697885))

(declare-fun m!5697887 () Bool)

(assert (=> b!4743291 m!5697887))

(declare-fun m!5697889 () Bool)

(assert (=> b!4743291 m!5697889))

(declare-fun m!5697891 () Bool)

(assert (=> b!4743291 m!5697891))

(declare-fun m!5697893 () Bool)

(assert (=> b!4743291 m!5697893))

(declare-fun m!5697895 () Bool)

(assert (=> b!4743291 m!5697895))

(declare-fun m!5697897 () Bool)

(assert (=> b!4743291 m!5697897))

(assert (=> b!4743291 m!5697887))

(assert (=> b!4743291 m!5697897))

(assert (=> b!4743291 m!5697889))

(declare-fun m!5697899 () Bool)

(assert (=> b!4743291 m!5697899))

(declare-fun m!5697901 () Bool)

(assert (=> b!4743291 m!5697901))

(declare-fun m!5697903 () Bool)

(assert (=> b!4743291 m!5697903))

(declare-fun m!5697905 () Bool)

(assert (=> b!4743291 m!5697905))

(declare-fun m!5697907 () Bool)

(assert (=> b!4743291 m!5697907))

(assert (=> b!4743291 m!5697901))

(declare-fun m!5697909 () Bool)

(assert (=> b!4743291 m!5697909))

(assert (=> b!4743291 m!5697905))

(declare-fun m!5697911 () Bool)

(assert (=> b!4743291 m!5697911))

(declare-fun m!5697913 () Bool)

(assert (=> b!4743291 m!5697913))

(declare-fun m!5697915 () Bool)

(assert (=> b!4743291 m!5697915))

(assert (=> b!4743291 m!5697911))

(declare-fun m!5697917 () Bool)

(assert (=> b!4743291 m!5697917))

(declare-fun m!5697919 () Bool)

(assert (=> b!4743291 m!5697919))

(assert (=> b!4743291 m!5697915))

(assert (=> b!4743291 m!5697893))

(declare-fun m!5697921 () Bool)

(assert (=> b!4743291 m!5697921))

(declare-fun m!5697923 () Bool)

(assert (=> b!4743291 m!5697923))

(declare-fun m!5697925 () Bool)

(assert (=> b!4743305 m!5697925))

(declare-fun m!5697927 () Bool)

(assert (=> b!4743292 m!5697927))

(declare-fun m!5697929 () Bool)

(assert (=> b!4743282 m!5697929))

(declare-fun m!5697931 () Bool)

(assert (=> b!4743284 m!5697931))

(declare-fun m!5697933 () Bool)

(assert (=> b!4743299 m!5697933))

(declare-fun m!5697935 () Bool)

(assert (=> b!4743300 m!5697935))

(declare-fun m!5697937 () Bool)

(assert (=> b!4743281 m!5697937))

(declare-fun m!5697939 () Bool)

(assert (=> b!4743297 m!5697939))

(declare-fun m!5697941 () Bool)

(assert (=> b!4743306 m!5697941))

(declare-fun m!5697943 () Bool)

(assert (=> b!4743306 m!5697943))

(declare-fun m!5697945 () Bool)

(assert (=> start!484058 m!5697945))

(declare-fun m!5697947 () Bool)

(assert (=> start!484058 m!5697947))

(declare-fun m!5697949 () Bool)

(assert (=> b!4743294 m!5697949))

(declare-fun m!5697951 () Bool)

(assert (=> b!4743286 m!5697951))

(declare-fun m!5697953 () Bool)

(assert (=> b!4743288 m!5697953))

(declare-fun m!5697955 () Bool)

(assert (=> b!4743301 m!5697955))

(declare-fun m!5697957 () Bool)

(assert (=> b!4743307 m!5697957))

(declare-fun m!5697959 () Bool)

(assert (=> b!4743307 m!5697959))

(declare-fun m!5697961 () Bool)

(assert (=> b!4743307 m!5697961))

(declare-fun m!5697963 () Bool)

(assert (=> b!4743290 m!5697963))

(declare-fun m!5697965 () Bool)

(assert (=> b!4743290 m!5697965))

(declare-fun m!5697967 () Bool)

(assert (=> b!4743290 m!5697967))

(declare-fun m!5697969 () Bool)

(assert (=> b!4743302 m!5697969))

(declare-fun m!5697971 () Bool)

(assert (=> b!4743302 m!5697971))

(declare-fun m!5697973 () Bool)

(assert (=> b!4743293 m!5697973))

(declare-fun m!5697975 () Bool)

(assert (=> b!4743298 m!5697975))

(assert (=> b!4743298 m!5697975))

(declare-fun m!5697977 () Bool)

(assert (=> b!4743298 m!5697977))

(declare-fun m!5697979 () Bool)

(assert (=> b!4743295 m!5697979))

(declare-fun m!5697981 () Bool)

(assert (=> b!4743304 m!5697981))

(declare-fun m!5697983 () Bool)

(assert (=> b!4743280 m!5697983))

(declare-fun m!5697985 () Bool)

(assert (=> b!4743280 m!5697985))

(declare-fun m!5697987 () Bool)

(assert (=> b!4743280 m!5697987))

(declare-fun m!5697989 () Bool)

(assert (=> b!4743280 m!5697989))

(declare-fun m!5697991 () Bool)

(assert (=> b!4743280 m!5697991))

(declare-fun m!5697993 () Bool)

(assert (=> b!4743280 m!5697993))

(declare-fun m!5697995 () Bool)

(assert (=> b!4743280 m!5697995))

(declare-fun m!5697997 () Bool)

(assert (=> b!4743280 m!5697997))

(declare-fun m!5697999 () Bool)

(assert (=> b!4743280 m!5697999))

(assert (=> b!4743280 m!5697991))

(declare-fun m!5698001 () Bool)

(assert (=> b!4743280 m!5698001))

(declare-fun m!5698003 () Bool)

(assert (=> b!4743280 m!5698003))

(declare-fun m!5698005 () Bool)

(assert (=> b!4743280 m!5698005))

(push 1)

(assert (not b!4743282))

(assert (not b!4743298))

(assert (not b!4743283))

(assert (not b!4743306))

(assert (not b!4743296))

(assert (not b!4743299))

(assert (not b!4743307))

(assert (not b!4743301))

(assert (not b!4743286))

(assert (not b!4743294))

(assert (not b!4743285))

(assert (not start!484058))

(assert (not b!4743287))

(assert (not b!4743295))

(assert (not b!4743293))

(assert (not b!4743284))

(assert (not b!4743288))

(assert (not b!4743302))

(assert (not b!4743290))

(assert (not b!4743280))

(assert tp_is_empty!31547)

(assert (not b!4743291))

(assert tp_is_empty!31545)

(assert (not b!4743304))

(assert (not b!4743281))

(assert (not b!4743292))

(assert (not b!4743305))

(assert (not b!4743300))

(assert (not b!4743297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1515498 () Bool)

(assert (=> d!1515498 (= (head!10329 (toList!6015 lm!2023)) (h!59351 (toList!6015 lm!2023)))))

(assert (=> b!4743287 d!1515498))

(declare-fun bs!1136251 () Bool)

(declare-fun d!1515500 () Bool)

(assert (= bs!1136251 (and d!1515500 start!484058)))

(declare-fun lambda!219595 () Int)

(assert (=> bs!1136251 (not (= lambda!219595 lambda!219585))))

(assert (=> d!1515500 true))

(assert (=> d!1515500 (= (allKeysSameHashInMap!1977 lt!1905834 hashF!1323) (forall!11692 (toList!6015 lt!1905834) lambda!219595))))

(declare-fun bs!1136252 () Bool)

(assert (= bs!1136252 d!1515500))

(declare-fun m!5698129 () Bool)

(assert (=> bs!1136252 m!5698129))

(assert (=> b!4743288 d!1515500))

(declare-fun d!1515502 () Bool)

(assert (=> d!1515502 true))

(assert (=> d!1515502 true))

(declare-fun lambda!219598 () Int)

(declare-fun forall!11694 (List!53089 Int) Bool)

(assert (=> d!1515502 (= (allKeysSameHash!1889 oldBucket!34 hash!405 hashF!1323) (forall!11694 oldBucket!34 lambda!219598))))

(declare-fun bs!1136253 () Bool)

(assert (= bs!1136253 d!1515502))

(declare-fun m!5698131 () Bool)

(assert (=> bs!1136253 m!5698131))

(assert (=> b!4743284 d!1515502))

(declare-fun d!1515504 () Bool)

(assert (=> d!1515504 (= (head!10329 lt!1905845) (h!59351 lt!1905845))))

(assert (=> b!4743305 d!1515504))

(declare-fun d!1515506 () Bool)

(declare-fun e!2958781 () Bool)

(assert (=> d!1515506 e!2958781))

(declare-fun res!2010020 () Bool)

(assert (=> d!1515506 (=> res!2010020 e!2958781)))

(declare-fun e!2958779 () Bool)

(assert (=> d!1515506 (= res!2010020 e!2958779)))

(declare-fun res!2010022 () Bool)

(assert (=> d!1515506 (=> (not res!2010022) (not e!2958779))))

(declare-fun lt!1905936 () Bool)

(assert (=> d!1515506 (= res!2010022 (not lt!1905936))))

(declare-fun lt!1905938 () Bool)

(assert (=> d!1515506 (= lt!1905936 lt!1905938)))

(declare-fun lt!1905937 () Unit!133851)

(declare-fun e!2958782 () Unit!133851)

(assert (=> d!1515506 (= lt!1905937 e!2958782)))

(declare-fun c!810229 () Bool)

(assert (=> d!1515506 (= c!810229 lt!1905938)))

(declare-fun containsKey!3486 (List!53089 K!14308) Bool)

(assert (=> d!1515506 (= lt!1905938 (containsKey!3486 (toList!6016 lt!1905843) key!4653))))

(assert (=> d!1515506 (= (contains!16383 lt!1905843 key!4653) lt!1905936)))

(declare-fun b!4743416 () Bool)

(declare-datatypes ((List!53093 0))(
  ( (Nil!52969) (Cons!52969 (h!59356 K!14308) (t!360397 List!53093)) )
))
(declare-fun contains!16387 (List!53093 K!14308) Bool)

(declare-fun keys!19062 (ListMap!5379) List!53093)

(assert (=> b!4743416 (= e!2958779 (not (contains!16387 (keys!19062 lt!1905843) key!4653)))))

(declare-fun b!4743417 () Bool)

(declare-fun e!2958778 () List!53093)

(assert (=> b!4743417 (= e!2958778 (keys!19062 lt!1905843))))

(declare-fun b!4743418 () Bool)

(declare-fun e!2958780 () Bool)

(assert (=> b!4743418 (= e!2958780 (contains!16387 (keys!19062 lt!1905843) key!4653))))

(declare-fun b!4743419 () Bool)

(declare-fun e!2958777 () Unit!133851)

(declare-fun Unit!133855 () Unit!133851)

(assert (=> b!4743419 (= e!2958777 Unit!133855)))

(declare-fun b!4743420 () Bool)

(declare-fun lt!1905942 () Unit!133851)

(assert (=> b!4743420 (= e!2958782 lt!1905942)))

(declare-fun lt!1905941 () Unit!133851)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1917 (List!53089 K!14308) Unit!133851)

(assert (=> b!4743420 (= lt!1905941 (lemmaContainsKeyImpliesGetValueByKeyDefined!1917 (toList!6016 lt!1905843) key!4653))))

(declare-datatypes ((Option!12472 0))(
  ( (None!12471) (Some!12471 (v!47150 V!14554)) )
))
(declare-fun isDefined!9726 (Option!12472) Bool)

(declare-fun getValueByKey!2026 (List!53089 K!14308) Option!12472)

(assert (=> b!4743420 (isDefined!9726 (getValueByKey!2026 (toList!6016 lt!1905843) key!4653))))

(declare-fun lt!1905943 () Unit!133851)

(assert (=> b!4743420 (= lt!1905943 lt!1905941)))

(declare-fun lemmaInListThenGetKeysListContains!982 (List!53089 K!14308) Unit!133851)

(assert (=> b!4743420 (= lt!1905942 (lemmaInListThenGetKeysListContains!982 (toList!6016 lt!1905843) key!4653))))

(declare-fun call!331952 () Bool)

(assert (=> b!4743420 call!331952))

(declare-fun b!4743421 () Bool)

(assert (=> b!4743421 (= e!2958781 e!2958780)))

(declare-fun res!2010021 () Bool)

(assert (=> b!4743421 (=> (not res!2010021) (not e!2958780))))

(assert (=> b!4743421 (= res!2010021 (isDefined!9726 (getValueByKey!2026 (toList!6016 lt!1905843) key!4653)))))

(declare-fun bm!331947 () Bool)

(assert (=> bm!331947 (= call!331952 (contains!16387 e!2958778 key!4653))))

(declare-fun c!810228 () Bool)

(assert (=> bm!331947 (= c!810228 c!810229)))

(declare-fun b!4743422 () Bool)

(declare-fun getKeysList!987 (List!53089) List!53093)

(assert (=> b!4743422 (= e!2958778 (getKeysList!987 (toList!6016 lt!1905843)))))

(declare-fun b!4743423 () Bool)

(assert (=> b!4743423 false))

(declare-fun lt!1905940 () Unit!133851)

(declare-fun lt!1905939 () Unit!133851)

(assert (=> b!4743423 (= lt!1905940 lt!1905939)))

(assert (=> b!4743423 (containsKey!3486 (toList!6016 lt!1905843) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!986 (List!53089 K!14308) Unit!133851)

(assert (=> b!4743423 (= lt!1905939 (lemmaInGetKeysListThenContainsKey!986 (toList!6016 lt!1905843) key!4653))))

(declare-fun Unit!133856 () Unit!133851)

(assert (=> b!4743423 (= e!2958777 Unit!133856)))

(declare-fun b!4743424 () Bool)

(assert (=> b!4743424 (= e!2958782 e!2958777)))

(declare-fun c!810230 () Bool)

(assert (=> b!4743424 (= c!810230 call!331952)))

(assert (= (and d!1515506 c!810229) b!4743420))

(assert (= (and d!1515506 (not c!810229)) b!4743424))

(assert (= (and b!4743424 c!810230) b!4743423))

(assert (= (and b!4743424 (not c!810230)) b!4743419))

(assert (= (or b!4743420 b!4743424) bm!331947))

(assert (= (and bm!331947 c!810228) b!4743422))

(assert (= (and bm!331947 (not c!810228)) b!4743417))

(assert (= (and d!1515506 res!2010022) b!4743416))

(assert (= (and d!1515506 (not res!2010020)) b!4743421))

(assert (= (and b!4743421 res!2010021) b!4743418))

(declare-fun m!5698133 () Bool)

(assert (=> b!4743420 m!5698133))

(declare-fun m!5698135 () Bool)

(assert (=> b!4743420 m!5698135))

(assert (=> b!4743420 m!5698135))

(declare-fun m!5698137 () Bool)

(assert (=> b!4743420 m!5698137))

(declare-fun m!5698139 () Bool)

(assert (=> b!4743420 m!5698139))

(declare-fun m!5698141 () Bool)

(assert (=> b!4743423 m!5698141))

(declare-fun m!5698143 () Bool)

(assert (=> b!4743423 m!5698143))

(assert (=> b!4743421 m!5698135))

(assert (=> b!4743421 m!5698135))

(assert (=> b!4743421 m!5698137))

(declare-fun m!5698145 () Bool)

(assert (=> b!4743422 m!5698145))

(declare-fun m!5698147 () Bool)

(assert (=> b!4743416 m!5698147))

(assert (=> b!4743416 m!5698147))

(declare-fun m!5698149 () Bool)

(assert (=> b!4743416 m!5698149))

(assert (=> b!4743417 m!5698147))

(assert (=> b!4743418 m!5698147))

(assert (=> b!4743418 m!5698147))

(assert (=> b!4743418 m!5698149))

(declare-fun m!5698151 () Bool)

(assert (=> bm!331947 m!5698151))

(assert (=> d!1515506 m!5698141))

(assert (=> b!4743306 d!1515506))

(declare-fun bs!1136254 () Bool)

(declare-fun d!1515508 () Bool)

(assert (= bs!1136254 (and d!1515508 start!484058)))

(declare-fun lambda!219601 () Int)

(assert (=> bs!1136254 (= lambda!219601 lambda!219585)))

(declare-fun bs!1136255 () Bool)

(assert (= bs!1136255 (and d!1515508 d!1515500)))

(assert (=> bs!1136255 (not (= lambda!219601 lambda!219595))))

(declare-fun lt!1905946 () ListMap!5379)

(declare-fun invariantList!1548 (List!53089) Bool)

(assert (=> d!1515508 (invariantList!1548 (toList!6016 lt!1905946))))

(declare-fun e!2958785 () ListMap!5379)

(assert (=> d!1515508 (= lt!1905946 e!2958785)))

(declare-fun c!810233 () Bool)

(assert (=> d!1515508 (= c!810233 (is-Cons!52966 (toList!6015 lm!2023)))))

(assert (=> d!1515508 (forall!11692 (toList!6015 lm!2023) lambda!219601)))

(assert (=> d!1515508 (= (extractMap!2089 (toList!6015 lm!2023)) lt!1905946)))

(declare-fun b!4743429 () Bool)

(assert (=> b!4743429 (= e!2958785 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (toList!6015 lm!2023))) (extractMap!2089 (t!360392 (toList!6015 lm!2023)))))))

(declare-fun b!4743430 () Bool)

(assert (=> b!4743430 (= e!2958785 (ListMap!5380 Nil!52965))))

(assert (= (and d!1515508 c!810233) b!4743429))

(assert (= (and d!1515508 (not c!810233)) b!4743430))

(declare-fun m!5698153 () Bool)

(assert (=> d!1515508 m!5698153))

(declare-fun m!5698155 () Bool)

(assert (=> d!1515508 m!5698155))

(assert (=> b!4743429 m!5697959))

(assert (=> b!4743429 m!5697959))

(declare-fun m!5698157 () Bool)

(assert (=> b!4743429 m!5698157))

(assert (=> b!4743306 d!1515508))

(declare-fun d!1515510 () Bool)

(declare-fun lt!1905949 () List!53089)

(assert (=> d!1515510 (not (containsKey!3484 lt!1905949 key!4653))))

(declare-fun e!2958790 () List!53089)

(assert (=> d!1515510 (= lt!1905949 e!2958790)))

(declare-fun c!810238 () Bool)

(assert (=> d!1515510 (= c!810238 (and (is-Cons!52965 (t!360391 oldBucket!34)) (= (_1!30617 (h!59350 (t!360391 oldBucket!34))) key!4653)))))

(assert (=> d!1515510 (noDuplicateKeys!2063 (t!360391 oldBucket!34))))

(assert (=> d!1515510 (= (removePairForKey!1658 (t!360391 oldBucket!34) key!4653) lt!1905949)))

(declare-fun b!4743441 () Bool)

(declare-fun e!2958791 () List!53089)

(assert (=> b!4743441 (= e!2958791 (Cons!52965 (h!59350 (t!360391 oldBucket!34)) (removePairForKey!1658 (t!360391 (t!360391 oldBucket!34)) key!4653)))))

(declare-fun b!4743439 () Bool)

(assert (=> b!4743439 (= e!2958790 (t!360391 (t!360391 oldBucket!34)))))

(declare-fun b!4743440 () Bool)

(assert (=> b!4743440 (= e!2958790 e!2958791)))

(declare-fun c!810239 () Bool)

(assert (=> b!4743440 (= c!810239 (is-Cons!52965 (t!360391 oldBucket!34)))))

(declare-fun b!4743442 () Bool)

(assert (=> b!4743442 (= e!2958791 Nil!52965)))

(assert (= (and d!1515510 c!810238) b!4743439))

(assert (= (and d!1515510 (not c!810238)) b!4743440))

(assert (= (and b!4743440 c!810239) b!4743441))

(assert (= (and b!4743440 (not c!810239)) b!4743442))

(declare-fun m!5698159 () Bool)

(assert (=> d!1515510 m!5698159))

(assert (=> d!1515510 m!5697949))

(declare-fun m!5698161 () Bool)

(assert (=> b!4743441 m!5698161))

(assert (=> b!4743286 d!1515510))

(declare-fun bs!1136258 () Bool)

(declare-fun b!4743474 () Bool)

(assert (= bs!1136258 (and b!4743474 d!1515502)))

(declare-fun lambda!219630 () Int)

(assert (=> bs!1136258 (not (= lambda!219630 lambda!219598))))

(assert (=> b!4743474 true))

(declare-fun bs!1136259 () Bool)

(declare-fun b!4743471 () Bool)

(assert (= bs!1136259 (and b!4743471 d!1515502)))

(declare-fun lambda!219631 () Int)

(assert (=> bs!1136259 (not (= lambda!219631 lambda!219598))))

(declare-fun bs!1136260 () Bool)

(assert (= bs!1136260 (and b!4743471 b!4743474)))

(assert (=> bs!1136260 (= lambda!219631 lambda!219630)))

(assert (=> b!4743471 true))

(declare-fun lambda!219632 () Int)

(assert (=> bs!1136259 (not (= lambda!219632 lambda!219598))))

(declare-fun lt!1906002 () ListMap!5379)

(assert (=> bs!1136260 (= (= lt!1906002 lt!1905850) (= lambda!219632 lambda!219630))))

(assert (=> b!4743471 (= (= lt!1906002 lt!1905850) (= lambda!219632 lambda!219631))))

(assert (=> b!4743471 true))

(declare-fun bs!1136261 () Bool)

(declare-fun d!1515512 () Bool)

(assert (= bs!1136261 (and d!1515512 d!1515502)))

(declare-fun lambda!219633 () Int)

(assert (=> bs!1136261 (not (= lambda!219633 lambda!219598))))

(declare-fun bs!1136262 () Bool)

(assert (= bs!1136262 (and d!1515512 b!4743474)))

(declare-fun lt!1906010 () ListMap!5379)

(assert (=> bs!1136262 (= (= lt!1906010 lt!1905850) (= lambda!219633 lambda!219630))))

(declare-fun bs!1136263 () Bool)

(assert (= bs!1136263 (and d!1515512 b!4743471)))

(assert (=> bs!1136263 (= (= lt!1906010 lt!1905850) (= lambda!219633 lambda!219631))))

(assert (=> bs!1136263 (= (= lt!1906010 lt!1906002) (= lambda!219633 lambda!219632))))

(assert (=> d!1515512 true))

(declare-fun e!2958811 () ListMap!5379)

(assert (=> b!4743471 (= e!2958811 lt!1906002)))

(declare-fun lt!1906003 () ListMap!5379)

(assert (=> b!4743471 (= lt!1906003 (+!2311 lt!1905850 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023))))))))

(assert (=> b!4743471 (= lt!1906002 (addToMapMapFromBucket!1493 (t!360391 (_2!30618 (h!59351 (toList!6015 lm!2023)))) (+!2311 lt!1905850 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023)))))))))

(declare-fun lt!1906009 () Unit!133851)

(declare-fun call!331960 () Unit!133851)

(assert (=> b!4743471 (= lt!1906009 call!331960)))

(assert (=> b!4743471 (forall!11694 (toList!6016 lt!1905850) lambda!219631)))

(declare-fun lt!1906013 () Unit!133851)

(assert (=> b!4743471 (= lt!1906013 lt!1906009)))

(assert (=> b!4743471 (forall!11694 (toList!6016 lt!1906003) lambda!219632)))

(declare-fun lt!1906008 () Unit!133851)

(declare-fun Unit!133857 () Unit!133851)

(assert (=> b!4743471 (= lt!1906008 Unit!133857)))

(assert (=> b!4743471 (forall!11694 (t!360391 (_2!30618 (h!59351 (toList!6015 lm!2023)))) lambda!219632)))

(declare-fun lt!1905996 () Unit!133851)

(declare-fun Unit!133858 () Unit!133851)

(assert (=> b!4743471 (= lt!1905996 Unit!133858)))

(declare-fun lt!1906014 () Unit!133851)

(declare-fun Unit!133859 () Unit!133851)

(assert (=> b!4743471 (= lt!1906014 Unit!133859)))

(declare-fun lt!1906001 () Unit!133851)

(declare-fun forallContained!3734 (List!53089 Int tuple2!54646) Unit!133851)

(assert (=> b!4743471 (= lt!1906001 (forallContained!3734 (toList!6016 lt!1906003) lambda!219632 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023))))))))

(assert (=> b!4743471 (contains!16383 lt!1906003 (_1!30617 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023))))))))

(declare-fun lt!1906007 () Unit!133851)

(declare-fun Unit!133860 () Unit!133851)

(assert (=> b!4743471 (= lt!1906007 Unit!133860)))

(assert (=> b!4743471 (contains!16383 lt!1906002 (_1!30617 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023))))))))

(declare-fun lt!1906015 () Unit!133851)

(declare-fun Unit!133861 () Unit!133851)

(assert (=> b!4743471 (= lt!1906015 Unit!133861)))

(assert (=> b!4743471 (forall!11694 (_2!30618 (h!59351 (toList!6015 lm!2023))) lambda!219632)))

(declare-fun lt!1905998 () Unit!133851)

(declare-fun Unit!133862 () Unit!133851)

(assert (=> b!4743471 (= lt!1905998 Unit!133862)))

(assert (=> b!4743471 (forall!11694 (toList!6016 lt!1906003) lambda!219632)))

(declare-fun lt!1906005 () Unit!133851)

(declare-fun Unit!133863 () Unit!133851)

(assert (=> b!4743471 (= lt!1906005 Unit!133863)))

(declare-fun lt!1905997 () Unit!133851)

(declare-fun Unit!133864 () Unit!133851)

(assert (=> b!4743471 (= lt!1905997 Unit!133864)))

(declare-fun lt!1906012 () Unit!133851)

(declare-fun addForallContainsKeyThenBeforeAdding!832 (ListMap!5379 ListMap!5379 K!14308 V!14554) Unit!133851)

(assert (=> b!4743471 (= lt!1906012 (addForallContainsKeyThenBeforeAdding!832 lt!1905850 lt!1906002 (_1!30617 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023))))) (_2!30617 (h!59350 (_2!30618 (h!59351 (toList!6015 lm!2023)))))))))

(assert (=> b!4743471 (forall!11694 (toList!6016 lt!1905850) lambda!219632)))

(declare-fun lt!1905995 () Unit!133851)

(assert (=> b!4743471 (= lt!1905995 lt!1906012)))

(declare-fun call!331961 () Bool)

(assert (=> b!4743471 call!331961))

(declare-fun lt!1906006 () Unit!133851)

(declare-fun Unit!133865 () Unit!133851)

(assert (=> b!4743471 (= lt!1906006 Unit!133865)))

(declare-fun res!2010036 () Bool)

(declare-fun call!331959 () Bool)

(assert (=> b!4743471 (= res!2010036 call!331959)))

(declare-fun e!2958812 () Bool)

(assert (=> b!4743471 (=> (not res!2010036) (not e!2958812))))

(assert (=> b!4743471 e!2958812))

(declare-fun lt!1906000 () Unit!133851)

(declare-fun Unit!133866 () Unit!133851)

(assert (=> b!4743471 (= lt!1906000 Unit!133866)))

(declare-fun b!4743472 () Bool)

(assert (=> b!4743472 (= e!2958812 (forall!11694 (toList!6016 lt!1905850) lambda!219632))))

(declare-fun bm!331954 () Bool)

(declare-fun c!810248 () Bool)

(assert (=> bm!331954 (= call!331961 (forall!11694 (toList!6016 lt!1905850) (ite c!810248 lambda!219630 lambda!219632)))))

(declare-fun b!4743473 () Bool)

(declare-fun res!2010037 () Bool)

(declare-fun e!2958810 () Bool)

(assert (=> b!4743473 (=> (not res!2010037) (not e!2958810))))

(assert (=> b!4743473 (= res!2010037 (forall!11694 (toList!6016 lt!1905850) lambda!219633))))

(declare-fun bm!331955 () Bool)

(assert (=> bm!331955 (= call!331959 (forall!11694 (ite c!810248 (toList!6016 lt!1905850) (_2!30618 (h!59351 (toList!6015 lm!2023)))) (ite c!810248 lambda!219630 lambda!219632)))))

(assert (=> d!1515512 e!2958810))

(declare-fun res!2010035 () Bool)

(assert (=> d!1515512 (=> (not res!2010035) (not e!2958810))))

(assert (=> d!1515512 (= res!2010035 (forall!11694 (_2!30618 (h!59351 (toList!6015 lm!2023))) lambda!219633))))

(assert (=> d!1515512 (= lt!1906010 e!2958811)))

(assert (=> d!1515512 (= c!810248 (is-Nil!52965 (_2!30618 (h!59351 (toList!6015 lm!2023)))))))

(assert (=> d!1515512 (noDuplicateKeys!2063 (_2!30618 (h!59351 (toList!6015 lm!2023))))))

(assert (=> d!1515512 (= (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (toList!6015 lm!2023))) lt!1905850) lt!1906010)))

(declare-fun bm!331956 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!833 (ListMap!5379) Unit!133851)

(assert (=> bm!331956 (= call!331960 (lemmaContainsAllItsOwnKeys!833 lt!1905850))))

(assert (=> b!4743474 (= e!2958811 lt!1905850)))

(declare-fun lt!1906011 () Unit!133851)

(assert (=> b!4743474 (= lt!1906011 call!331960)))

(assert (=> b!4743474 call!331959))

(declare-fun lt!1906004 () Unit!133851)

(assert (=> b!4743474 (= lt!1906004 lt!1906011)))

(assert (=> b!4743474 call!331961))

(declare-fun lt!1905999 () Unit!133851)

(declare-fun Unit!133867 () Unit!133851)

(assert (=> b!4743474 (= lt!1905999 Unit!133867)))

(declare-fun b!4743475 () Bool)

(assert (=> b!4743475 (= e!2958810 (invariantList!1548 (toList!6016 lt!1906010)))))

(assert (= (and d!1515512 c!810248) b!4743474))

(assert (= (and d!1515512 (not c!810248)) b!4743471))

(assert (= (and b!4743471 res!2010036) b!4743472))

(assert (= (or b!4743474 b!4743471) bm!331956))

(assert (= (or b!4743474 b!4743471) bm!331954))

(assert (= (or b!4743474 b!4743471) bm!331955))

(assert (= (and d!1515512 res!2010035) b!4743473))

(assert (= (and b!4743473 res!2010037) b!4743475))

(declare-fun m!5698173 () Bool)

(assert (=> b!4743472 m!5698173))

(declare-fun m!5698175 () Bool)

(assert (=> b!4743473 m!5698175))

(declare-fun m!5698177 () Bool)

(assert (=> b!4743475 m!5698177))

(declare-fun m!5698179 () Bool)

(assert (=> d!1515512 m!5698179))

(declare-fun m!5698181 () Bool)

(assert (=> d!1515512 m!5698181))

(declare-fun m!5698183 () Bool)

(assert (=> bm!331955 m!5698183))

(declare-fun m!5698185 () Bool)

(assert (=> bm!331956 m!5698185))

(declare-fun m!5698187 () Bool)

(assert (=> b!4743471 m!5698187))

(declare-fun m!5698189 () Bool)

(assert (=> b!4743471 m!5698189))

(declare-fun m!5698191 () Bool)

(assert (=> b!4743471 m!5698191))

(assert (=> b!4743471 m!5698173))

(declare-fun m!5698193 () Bool)

(assert (=> b!4743471 m!5698193))

(declare-fun m!5698195 () Bool)

(assert (=> b!4743471 m!5698195))

(declare-fun m!5698197 () Bool)

(assert (=> b!4743471 m!5698197))

(assert (=> b!4743471 m!5698191))

(declare-fun m!5698199 () Bool)

(assert (=> b!4743471 m!5698199))

(declare-fun m!5698201 () Bool)

(assert (=> b!4743471 m!5698201))

(assert (=> b!4743471 m!5698195))

(declare-fun m!5698203 () Bool)

(assert (=> b!4743471 m!5698203))

(declare-fun m!5698205 () Bool)

(assert (=> b!4743471 m!5698205))

(declare-fun m!5698207 () Bool)

(assert (=> bm!331954 m!5698207))

(assert (=> b!4743307 d!1515512))

(declare-fun bs!1136264 () Bool)

(declare-fun d!1515526 () Bool)

(assert (= bs!1136264 (and d!1515526 start!484058)))

(declare-fun lambda!219634 () Int)

(assert (=> bs!1136264 (= lambda!219634 lambda!219585)))

(declare-fun bs!1136265 () Bool)

(assert (= bs!1136265 (and d!1515526 d!1515500)))

(assert (=> bs!1136265 (not (= lambda!219634 lambda!219595))))

(declare-fun bs!1136266 () Bool)

(assert (= bs!1136266 (and d!1515526 d!1515508)))

(assert (=> bs!1136266 (= lambda!219634 lambda!219601)))

(declare-fun lt!1906016 () ListMap!5379)

(assert (=> d!1515526 (invariantList!1548 (toList!6016 lt!1906016))))

(declare-fun e!2958813 () ListMap!5379)

(assert (=> d!1515526 (= lt!1906016 e!2958813)))

(declare-fun c!810249 () Bool)

(assert (=> d!1515526 (= c!810249 (is-Cons!52966 (t!360392 (toList!6015 lm!2023))))))

(assert (=> d!1515526 (forall!11692 (t!360392 (toList!6015 lm!2023)) lambda!219634)))

(assert (=> d!1515526 (= (extractMap!2089 (t!360392 (toList!6015 lm!2023))) lt!1906016)))

(declare-fun b!4743478 () Bool)

(assert (=> b!4743478 (= e!2958813 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (t!360392 (toList!6015 lm!2023)))) (extractMap!2089 (t!360392 (t!360392 (toList!6015 lm!2023))))))))

(declare-fun b!4743479 () Bool)

(assert (=> b!4743479 (= e!2958813 (ListMap!5380 Nil!52965))))

(assert (= (and d!1515526 c!810249) b!4743478))

(assert (= (and d!1515526 (not c!810249)) b!4743479))

(declare-fun m!5698209 () Bool)

(assert (=> d!1515526 m!5698209))

(declare-fun m!5698211 () Bool)

(assert (=> d!1515526 m!5698211))

(declare-fun m!5698213 () Bool)

(assert (=> b!4743478 m!5698213))

(assert (=> b!4743478 m!5698213))

(declare-fun m!5698215 () Bool)

(assert (=> b!4743478 m!5698215))

(assert (=> b!4743307 d!1515526))

(declare-fun d!1515528 () Bool)

(declare-fun tail!9132 (List!53090) List!53090)

(assert (=> d!1515528 (= (tail!9129 lm!2023) (ListLongMap!4546 (tail!9132 (toList!6015 lm!2023))))))

(declare-fun bs!1136267 () Bool)

(assert (= bs!1136267 d!1515528))

(declare-fun m!5698217 () Bool)

(assert (=> bs!1136267 m!5698217))

(assert (=> b!4743307 d!1515528))

(declare-fun d!1515530 () Bool)

(declare-fun res!2010042 () Bool)

(declare-fun e!2958818 () Bool)

(assert (=> d!1515530 (=> res!2010042 e!2958818)))

(assert (=> d!1515530 (= res!2010042 (is-Nil!52966 lt!1905845))))

(assert (=> d!1515530 (= (forall!11692 lt!1905845 lambda!219585) e!2958818)))

(declare-fun b!4743484 () Bool)

(declare-fun e!2958819 () Bool)

(assert (=> b!4743484 (= e!2958818 e!2958819)))

(declare-fun res!2010043 () Bool)

(assert (=> b!4743484 (=> (not res!2010043) (not e!2958819))))

(declare-fun dynLambda!21878 (Int tuple2!54648) Bool)

(assert (=> b!4743484 (= res!2010043 (dynLambda!21878 lambda!219585 (h!59351 lt!1905845)))))

(declare-fun b!4743485 () Bool)

(assert (=> b!4743485 (= e!2958819 (forall!11692 (t!360392 lt!1905845) lambda!219585))))

(assert (= (and d!1515530 (not res!2010042)) b!4743484))

(assert (= (and b!4743484 res!2010043) b!4743485))

(declare-fun b_lambda!182631 () Bool)

(assert (=> (not b_lambda!182631) (not b!4743484)))

(declare-fun m!5698219 () Bool)

(assert (=> b!4743484 m!5698219))

(declare-fun m!5698221 () Bool)

(assert (=> b!4743485 m!5698221))

(assert (=> b!4743281 d!1515530))

(declare-fun bs!1136268 () Bool)

(declare-fun d!1515532 () Bool)

(assert (= bs!1136268 (and d!1515532 b!4743474)))

(declare-fun lambda!219635 () Int)

(assert (=> bs!1136268 (not (= lambda!219635 lambda!219630))))

(declare-fun bs!1136269 () Bool)

(assert (= bs!1136269 (and d!1515532 b!4743471)))

(assert (=> bs!1136269 (not (= lambda!219635 lambda!219631))))

(assert (=> bs!1136269 (not (= lambda!219635 lambda!219632))))

(declare-fun bs!1136270 () Bool)

(assert (= bs!1136270 (and d!1515532 d!1515512)))

(assert (=> bs!1136270 (not (= lambda!219635 lambda!219633))))

(declare-fun bs!1136271 () Bool)

(assert (= bs!1136271 (and d!1515532 d!1515502)))

(assert (=> bs!1136271 (= lambda!219635 lambda!219598)))

(assert (=> d!1515532 true))

(assert (=> d!1515532 true))

(assert (=> d!1515532 (= (allKeysSameHash!1889 (t!360391 oldBucket!34) hash!405 hashF!1323) (forall!11694 (t!360391 oldBucket!34) lambda!219635))))

(declare-fun bs!1136272 () Bool)

(assert (= bs!1136272 d!1515532))

(declare-fun m!5698223 () Bool)

(assert (=> bs!1136272 m!5698223))

(assert (=> b!4743282 d!1515532))

(declare-fun d!1515534 () Bool)

(declare-fun hash!4471 (Hashable!6432 K!14308) (_ BitVec 64))

(assert (=> d!1515534 (= (hash!4469 hashF!1323 key!4653) (hash!4471 hashF!1323 key!4653))))

(declare-fun bs!1136273 () Bool)

(assert (= bs!1136273 d!1515534))

(declare-fun m!5698225 () Bool)

(assert (=> bs!1136273 m!5698225))

(assert (=> b!4743304 d!1515534))

(declare-fun bs!1136274 () Bool)

(declare-fun d!1515536 () Bool)

(assert (= bs!1136274 (and d!1515536 start!484058)))

(declare-fun lambda!219636 () Int)

(assert (=> bs!1136274 (not (= lambda!219636 lambda!219585))))

(declare-fun bs!1136275 () Bool)

(assert (= bs!1136275 (and d!1515536 d!1515500)))

(assert (=> bs!1136275 (= lambda!219636 lambda!219595)))

(declare-fun bs!1136276 () Bool)

(assert (= bs!1136276 (and d!1515536 d!1515508)))

(assert (=> bs!1136276 (not (= lambda!219636 lambda!219601))))

(declare-fun bs!1136277 () Bool)

(assert (= bs!1136277 (and d!1515536 d!1515526)))

(assert (=> bs!1136277 (not (= lambda!219636 lambda!219634))))

(assert (=> d!1515536 true))

(assert (=> d!1515536 (= (allKeysSameHashInMap!1977 lm!2023 hashF!1323) (forall!11692 (toList!6015 lm!2023) lambda!219636))))

(declare-fun bs!1136278 () Bool)

(assert (= bs!1136278 d!1515536))

(declare-fun m!5698227 () Bool)

(assert (=> bs!1136278 m!5698227))

(assert (=> b!4743300 d!1515536))

(declare-fun d!1515538 () Bool)

(assert (=> d!1515538 (contains!16381 (toList!6015 lm!2023) (tuple2!54649 lt!1905839 lt!1905840))))

(declare-fun lt!1906019 () Unit!133851)

(declare-fun choose!33683 (ListLongMap!4545 (_ BitVec 64) List!53089) Unit!133851)

(assert (=> d!1515538 (= lt!1906019 (choose!33683 lm!2023 lt!1905839 lt!1905840))))

(assert (=> d!1515538 (contains!16382 lm!2023 lt!1905839)))

(assert (=> d!1515538 (= (lemmaGetValueImpliesTupleContained!408 lm!2023 lt!1905839 lt!1905840) lt!1906019)))

(declare-fun bs!1136279 () Bool)

(assert (= bs!1136279 d!1515538))

(declare-fun m!5698229 () Bool)

(assert (=> bs!1136279 m!5698229))

(declare-fun m!5698231 () Bool)

(assert (=> bs!1136279 m!5698231))

(assert (=> bs!1136279 m!5698003))

(assert (=> b!4743280 d!1515538))

(declare-fun d!1515540 () Bool)

(declare-fun isEmpty!29240 (Option!12470) Bool)

(assert (=> d!1515540 (= (isDefined!9724 (getPair!603 lt!1905840 key!4653)) (not (isEmpty!29240 (getPair!603 lt!1905840 key!4653))))))

(declare-fun bs!1136280 () Bool)

(assert (= bs!1136280 d!1515540))

(assert (=> bs!1136280 m!5697991))

(declare-fun m!5698233 () Bool)

(assert (=> bs!1136280 m!5698233))

(assert (=> b!4743280 d!1515540))

(declare-fun d!1515542 () Bool)

(declare-datatypes ((Option!12473 0))(
  ( (None!12472) (Some!12472 (v!47152 List!53089)) )
))
(declare-fun get!17810 (Option!12473) List!53089)

(declare-fun getValueByKey!2027 (List!53090 (_ BitVec 64)) Option!12473)

(assert (=> d!1515542 (= (apply!12488 lm!2023 lt!1905839) (get!17810 (getValueByKey!2027 (toList!6015 lm!2023) lt!1905839)))))

(declare-fun bs!1136281 () Bool)

(assert (= bs!1136281 d!1515542))

(declare-fun m!5698235 () Bool)

(assert (=> bs!1136281 m!5698235))

(assert (=> bs!1136281 m!5698235))

(declare-fun m!5698237 () Bool)

(assert (=> bs!1136281 m!5698237))

(assert (=> b!4743280 d!1515542))

(declare-fun bs!1136282 () Bool)

(declare-fun d!1515544 () Bool)

(assert (= bs!1136282 (and d!1515544 d!1515526)))

(declare-fun lambda!219643 () Int)

(assert (=> bs!1136282 (= lambda!219643 lambda!219634)))

(declare-fun bs!1136283 () Bool)

(assert (= bs!1136283 (and d!1515544 d!1515500)))

(assert (=> bs!1136283 (not (= lambda!219643 lambda!219595))))

(declare-fun bs!1136284 () Bool)

(assert (= bs!1136284 (and d!1515544 d!1515536)))

(assert (=> bs!1136284 (not (= lambda!219643 lambda!219636))))

(declare-fun bs!1136285 () Bool)

(assert (= bs!1136285 (and d!1515544 d!1515508)))

(assert (=> bs!1136285 (= lambda!219643 lambda!219601)))

(declare-fun bs!1136286 () Bool)

(assert (= bs!1136286 (and d!1515544 start!484058)))

(assert (=> bs!1136286 (= lambda!219643 lambda!219585)))

(declare-fun e!2958824 () Bool)

(declare-fun b!4743497 () Bool)

(assert (=> b!4743497 (= e!2958824 (isDefined!9724 (getPair!603 (apply!12488 lm!2023 (hash!4469 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1906038 () Unit!133851)

(assert (=> b!4743497 (= lt!1906038 (forallContained!3732 (toList!6015 lm!2023) lambda!219643 (tuple2!54649 (hash!4469 hashF!1323 key!4653) (apply!12488 lm!2023 (hash!4469 hashF!1323 key!4653)))))))

(declare-fun lt!1906043 () Unit!133851)

(declare-fun lt!1906039 () Unit!133851)

(assert (=> b!4743497 (= lt!1906043 lt!1906039)))

(declare-fun lt!1906037 () (_ BitVec 64))

(declare-fun lt!1906040 () List!53089)

(assert (=> b!4743497 (contains!16381 (toList!6015 lm!2023) (tuple2!54649 lt!1906037 lt!1906040))))

(assert (=> b!4743497 (= lt!1906039 (lemmaGetValueImpliesTupleContained!408 lm!2023 lt!1906037 lt!1906040))))

(declare-fun e!2958825 () Bool)

(assert (=> b!4743497 e!2958825))

(declare-fun res!2010053 () Bool)

(assert (=> b!4743497 (=> (not res!2010053) (not e!2958825))))

(assert (=> b!4743497 (= res!2010053 (contains!16382 lm!2023 lt!1906037))))

(assert (=> b!4743497 (= lt!1906040 (apply!12488 lm!2023 (hash!4469 hashF!1323 key!4653)))))

(assert (=> b!4743497 (= lt!1906037 (hash!4469 hashF!1323 key!4653))))

(declare-fun lt!1906041 () Unit!133851)

(declare-fun lt!1906042 () Unit!133851)

(assert (=> b!4743497 (= lt!1906041 lt!1906042)))

(assert (=> b!4743497 (contains!16382 lm!2023 (hash!4469 hashF!1323 key!4653))))

(assert (=> b!4743497 (= lt!1906042 (lemmaInGenMapThenLongMapContainsHash!809 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4743495 () Bool)

(declare-fun res!2010052 () Bool)

(assert (=> b!4743495 (=> (not res!2010052) (not e!2958824))))

(assert (=> b!4743495 (= res!2010052 (allKeysSameHashInMap!1977 lm!2023 hashF!1323))))

(declare-fun b!4743496 () Bool)

(declare-fun res!2010055 () Bool)

(assert (=> b!4743496 (=> (not res!2010055) (not e!2958824))))

(assert (=> b!4743496 (= res!2010055 (contains!16383 (extractMap!2089 (toList!6015 lm!2023)) key!4653))))

(assert (=> d!1515544 e!2958824))

(declare-fun res!2010054 () Bool)

(assert (=> d!1515544 (=> (not res!2010054) (not e!2958824))))

(assert (=> d!1515544 (= res!2010054 (forall!11692 (toList!6015 lm!2023) lambda!219643))))

(declare-fun lt!1906036 () Unit!133851)

(declare-fun choose!33684 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> d!1515544 (= lt!1906036 (choose!33684 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515544 (forall!11692 (toList!6015 lm!2023) lambda!219643)))

(assert (=> d!1515544 (= (lemmaInGenMapThenGetPairDefined!399 lm!2023 key!4653 hashF!1323) lt!1906036)))

(declare-fun b!4743498 () Bool)

(assert (=> b!4743498 (= e!2958825 (= (getValueByKey!2027 (toList!6015 lm!2023) lt!1906037) (Some!12472 lt!1906040)))))

(assert (= (and d!1515544 res!2010054) b!4743495))

(assert (= (and b!4743495 res!2010052) b!4743496))

(assert (= (and b!4743496 res!2010055) b!4743497))

(assert (= (and b!4743497 res!2010053) b!4743498))

(assert (=> b!4743496 m!5697943))

(assert (=> b!4743496 m!5697943))

(declare-fun m!5698239 () Bool)

(assert (=> b!4743496 m!5698239))

(declare-fun m!5698241 () Bool)

(assert (=> d!1515544 m!5698241))

(declare-fun m!5698243 () Bool)

(assert (=> d!1515544 m!5698243))

(assert (=> d!1515544 m!5698241))

(assert (=> b!4743495 m!5697935))

(declare-fun m!5698245 () Bool)

(assert (=> b!4743498 m!5698245))

(declare-fun m!5698247 () Bool)

(assert (=> b!4743497 m!5698247))

(declare-fun m!5698249 () Bool)

(assert (=> b!4743497 m!5698249))

(declare-fun m!5698251 () Bool)

(assert (=> b!4743497 m!5698251))

(assert (=> b!4743497 m!5697981))

(declare-fun m!5698253 () Bool)

(assert (=> b!4743497 m!5698253))

(assert (=> b!4743497 m!5697987))

(assert (=> b!4743497 m!5697981))

(declare-fun m!5698255 () Bool)

(assert (=> b!4743497 m!5698255))

(declare-fun m!5698257 () Bool)

(assert (=> b!4743497 m!5698257))

(declare-fun m!5698259 () Bool)

(assert (=> b!4743497 m!5698259))

(declare-fun m!5698261 () Bool)

(assert (=> b!4743497 m!5698261))

(assert (=> b!4743497 m!5698253))

(assert (=> b!4743497 m!5698249))

(assert (=> b!4743497 m!5697981))

(assert (=> b!4743280 d!1515544))

(declare-fun d!1515546 () Bool)

(declare-fun res!2010060 () Bool)

(declare-fun e!2958830 () Bool)

(assert (=> d!1515546 (=> res!2010060 e!2958830)))

(assert (=> d!1515546 (= res!2010060 (and (is-Cons!52965 (t!360391 oldBucket!34)) (= (_1!30617 (h!59350 (t!360391 oldBucket!34))) key!4653)))))

(assert (=> d!1515546 (= (containsKey!3484 (t!360391 oldBucket!34) key!4653) e!2958830)))

(declare-fun b!4743503 () Bool)

(declare-fun e!2958831 () Bool)

(assert (=> b!4743503 (= e!2958830 e!2958831)))

(declare-fun res!2010061 () Bool)

(assert (=> b!4743503 (=> (not res!2010061) (not e!2958831))))

(assert (=> b!4743503 (= res!2010061 (is-Cons!52965 (t!360391 oldBucket!34)))))

(declare-fun b!4743504 () Bool)

(assert (=> b!4743504 (= e!2958831 (containsKey!3484 (t!360391 (t!360391 oldBucket!34)) key!4653))))

(assert (= (and d!1515546 (not res!2010060)) b!4743503))

(assert (= (and b!4743503 res!2010061) b!4743504))

(declare-fun m!5698263 () Bool)

(assert (=> b!4743504 m!5698263))

(assert (=> b!4743280 d!1515546))

(declare-fun d!1515548 () Bool)

(declare-fun lt!1906046 () Bool)

(declare-fun content!9474 (List!53090) (Set tuple2!54648))

(assert (=> d!1515548 (= lt!1906046 (set.member lt!1905841 (content!9474 (toList!6015 lm!2023))))))

(declare-fun e!2958837 () Bool)

(assert (=> d!1515548 (= lt!1906046 e!2958837)))

(declare-fun res!2010067 () Bool)

(assert (=> d!1515548 (=> (not res!2010067) (not e!2958837))))

(assert (=> d!1515548 (= res!2010067 (is-Cons!52966 (toList!6015 lm!2023)))))

(assert (=> d!1515548 (= (contains!16381 (toList!6015 lm!2023) lt!1905841) lt!1906046)))

(declare-fun b!4743509 () Bool)

(declare-fun e!2958836 () Bool)

(assert (=> b!4743509 (= e!2958837 e!2958836)))

(declare-fun res!2010066 () Bool)

(assert (=> b!4743509 (=> res!2010066 e!2958836)))

(assert (=> b!4743509 (= res!2010066 (= (h!59351 (toList!6015 lm!2023)) lt!1905841))))

(declare-fun b!4743510 () Bool)

(assert (=> b!4743510 (= e!2958836 (contains!16381 (t!360392 (toList!6015 lm!2023)) lt!1905841))))

(assert (= (and d!1515548 res!2010067) b!4743509))

(assert (= (and b!4743509 (not res!2010066)) b!4743510))

(declare-fun m!5698265 () Bool)

(assert (=> d!1515548 m!5698265))

(declare-fun m!5698267 () Bool)

(assert (=> d!1515548 m!5698267))

(declare-fun m!5698269 () Bool)

(assert (=> b!4743510 m!5698269))

(assert (=> b!4743280 d!1515548))

(declare-fun b!4743531 () Bool)

(declare-fun e!2958854 () Option!12470)

(assert (=> b!4743531 (= e!2958854 (Some!12469 (h!59350 lt!1905840)))))

(declare-fun b!4743532 () Bool)

(declare-fun e!2958852 () Bool)

(declare-fun lt!1906059 () Option!12470)

(declare-fun contains!16388 (List!53089 tuple2!54646) Bool)

(declare-fun get!17811 (Option!12470) tuple2!54646)

(assert (=> b!4743532 (= e!2958852 (contains!16388 lt!1905840 (get!17811 lt!1906059)))))

(declare-fun b!4743533 () Bool)

(declare-fun e!2958853 () Option!12470)

(assert (=> b!4743533 (= e!2958853 None!12469)))

(declare-fun b!4743534 () Bool)

(declare-fun e!2958850 () Bool)

(assert (=> b!4743534 (= e!2958850 (not (containsKey!3484 lt!1905840 key!4653)))))

(declare-fun d!1515550 () Bool)

(declare-fun e!2958851 () Bool)

(assert (=> d!1515550 e!2958851))

(declare-fun res!2010079 () Bool)

(assert (=> d!1515550 (=> res!2010079 e!2958851)))

(assert (=> d!1515550 (= res!2010079 e!2958850)))

(declare-fun res!2010077 () Bool)

(assert (=> d!1515550 (=> (not res!2010077) (not e!2958850))))

(assert (=> d!1515550 (= res!2010077 (isEmpty!29240 lt!1906059))))

(assert (=> d!1515550 (= lt!1906059 e!2958854)))

(declare-fun c!810257 () Bool)

(assert (=> d!1515550 (= c!810257 (and (is-Cons!52965 lt!1905840) (= (_1!30617 (h!59350 lt!1905840)) key!4653)))))

(assert (=> d!1515550 (noDuplicateKeys!2063 lt!1905840)))

(assert (=> d!1515550 (= (getPair!603 lt!1905840 key!4653) lt!1906059)))

(declare-fun b!4743535 () Bool)

(assert (=> b!4743535 (= e!2958851 e!2958852)))

(declare-fun res!2010078 () Bool)

(assert (=> b!4743535 (=> (not res!2010078) (not e!2958852))))

(assert (=> b!4743535 (= res!2010078 (isDefined!9724 lt!1906059))))

(declare-fun b!4743536 () Bool)

(assert (=> b!4743536 (= e!2958854 e!2958853)))

(declare-fun c!810256 () Bool)

(assert (=> b!4743536 (= c!810256 (is-Cons!52965 lt!1905840))))

(declare-fun b!4743537 () Bool)

(declare-fun res!2010076 () Bool)

(assert (=> b!4743537 (=> (not res!2010076) (not e!2958852))))

(assert (=> b!4743537 (= res!2010076 (= (_1!30617 (get!17811 lt!1906059)) key!4653))))

(declare-fun b!4743538 () Bool)

(assert (=> b!4743538 (= e!2958853 (getPair!603 (t!360391 lt!1905840) key!4653))))

(assert (= (and d!1515550 c!810257) b!4743531))

(assert (= (and d!1515550 (not c!810257)) b!4743536))

(assert (= (and b!4743536 c!810256) b!4743538))

(assert (= (and b!4743536 (not c!810256)) b!4743533))

(assert (= (and d!1515550 res!2010077) b!4743534))

(assert (= (and d!1515550 (not res!2010079)) b!4743535))

(assert (= (and b!4743535 res!2010078) b!4743537))

(assert (= (and b!4743537 res!2010076) b!4743532))

(declare-fun m!5698271 () Bool)

(assert (=> b!4743535 m!5698271))

(declare-fun m!5698273 () Bool)

(assert (=> b!4743534 m!5698273))

(declare-fun m!5698275 () Bool)

(assert (=> b!4743538 m!5698275))

(declare-fun m!5698277 () Bool)

(assert (=> b!4743537 m!5698277))

(declare-fun m!5698279 () Bool)

(assert (=> d!1515550 m!5698279))

(declare-fun m!5698281 () Bool)

(assert (=> d!1515550 m!5698281))

(assert (=> b!4743532 m!5698277))

(assert (=> b!4743532 m!5698277))

(declare-fun m!5698283 () Bool)

(assert (=> b!4743532 m!5698283))

(assert (=> b!4743280 d!1515550))

(declare-fun d!1515552 () Bool)

(declare-fun res!2010080 () Bool)

(declare-fun e!2958855 () Bool)

(assert (=> d!1515552 (=> res!2010080 e!2958855)))

(assert (=> d!1515552 (= res!2010080 (and (is-Cons!52965 oldBucket!34) (= (_1!30617 (h!59350 oldBucket!34)) key!4653)))))

(assert (=> d!1515552 (= (containsKey!3484 oldBucket!34 key!4653) e!2958855)))

(declare-fun b!4743539 () Bool)

(declare-fun e!2958856 () Bool)

(assert (=> b!4743539 (= e!2958855 e!2958856)))

(declare-fun res!2010081 () Bool)

(assert (=> b!4743539 (=> (not res!2010081) (not e!2958856))))

(assert (=> b!4743539 (= res!2010081 (is-Cons!52965 oldBucket!34))))

(declare-fun b!4743540 () Bool)

(assert (=> b!4743540 (= e!2958856 (containsKey!3484 (t!360391 oldBucket!34) key!4653))))

(assert (= (and d!1515552 (not res!2010080)) b!4743539))

(assert (= (and b!4743539 res!2010081) b!4743540))

(assert (=> b!4743540 m!5697995))

(assert (=> b!4743280 d!1515552))

(declare-fun d!1515554 () Bool)

(declare-fun e!2958862 () Bool)

(assert (=> d!1515554 e!2958862))

(declare-fun res!2010084 () Bool)

(assert (=> d!1515554 (=> res!2010084 e!2958862)))

(declare-fun lt!1906098 () Bool)

(assert (=> d!1515554 (= res!2010084 (not lt!1906098))))

(declare-fun lt!1906100 () Bool)

(assert (=> d!1515554 (= lt!1906098 lt!1906100)))

(declare-fun lt!1906101 () Unit!133851)

(declare-fun e!2958861 () Unit!133851)

(assert (=> d!1515554 (= lt!1906101 e!2958861)))

(declare-fun c!810260 () Bool)

(assert (=> d!1515554 (= c!810260 lt!1906100)))

(declare-fun containsKey!3487 (List!53090 (_ BitVec 64)) Bool)

(assert (=> d!1515554 (= lt!1906100 (containsKey!3487 (toList!6015 lm!2023) lt!1905839))))

(assert (=> d!1515554 (= (contains!16382 lm!2023 lt!1905839) lt!1906098)))

(declare-fun b!4743547 () Bool)

(declare-fun lt!1906099 () Unit!133851)

(assert (=> b!4743547 (= e!2958861 lt!1906099)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1918 (List!53090 (_ BitVec 64)) Unit!133851)

(assert (=> b!4743547 (= lt!1906099 (lemmaContainsKeyImpliesGetValueByKeyDefined!1918 (toList!6015 lm!2023) lt!1905839))))

(declare-fun isDefined!9727 (Option!12473) Bool)

(assert (=> b!4743547 (isDefined!9727 (getValueByKey!2027 (toList!6015 lm!2023) lt!1905839))))

(declare-fun b!4743548 () Bool)

(declare-fun Unit!133868 () Unit!133851)

(assert (=> b!4743548 (= e!2958861 Unit!133868)))

(declare-fun b!4743549 () Bool)

(assert (=> b!4743549 (= e!2958862 (isDefined!9727 (getValueByKey!2027 (toList!6015 lm!2023) lt!1905839)))))

(assert (= (and d!1515554 c!810260) b!4743547))

(assert (= (and d!1515554 (not c!810260)) b!4743548))

(assert (= (and d!1515554 (not res!2010084)) b!4743549))

(declare-fun m!5698285 () Bool)

(assert (=> d!1515554 m!5698285))

(declare-fun m!5698287 () Bool)

(assert (=> b!4743547 m!5698287))

(assert (=> b!4743547 m!5698235))

(assert (=> b!4743547 m!5698235))

(declare-fun m!5698289 () Bool)

(assert (=> b!4743547 m!5698289))

(assert (=> b!4743549 m!5698235))

(assert (=> b!4743549 m!5698235))

(assert (=> b!4743549 m!5698289))

(assert (=> b!4743280 d!1515554))

(declare-fun bs!1136287 () Bool)

(declare-fun d!1515556 () Bool)

(assert (= bs!1136287 (and d!1515556 d!1515544)))

(declare-fun lambda!219672 () Int)

(assert (=> bs!1136287 (= lambda!219672 lambda!219643)))

(declare-fun bs!1136288 () Bool)

(assert (= bs!1136288 (and d!1515556 d!1515526)))

(assert (=> bs!1136288 (= lambda!219672 lambda!219634)))

(declare-fun bs!1136289 () Bool)

(assert (= bs!1136289 (and d!1515556 d!1515500)))

(assert (=> bs!1136289 (not (= lambda!219672 lambda!219595))))

(declare-fun bs!1136290 () Bool)

(assert (= bs!1136290 (and d!1515556 d!1515536)))

(assert (=> bs!1136290 (not (= lambda!219672 lambda!219636))))

(declare-fun bs!1136291 () Bool)

(assert (= bs!1136291 (and d!1515556 d!1515508)))

(assert (=> bs!1136291 (= lambda!219672 lambda!219601)))

(declare-fun bs!1136292 () Bool)

(assert (= bs!1136292 (and d!1515556 start!484058)))

(assert (=> bs!1136292 (= lambda!219672 lambda!219585)))

(assert (=> d!1515556 (contains!16382 lm!2023 (hash!4469 hashF!1323 key!4653))))

(declare-fun lt!1906106 () Unit!133851)

(declare-fun choose!33685 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> d!1515556 (= lt!1906106 (choose!33685 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515556 (forall!11692 (toList!6015 lm!2023) lambda!219672)))

(assert (=> d!1515556 (= (lemmaInGenMapThenLongMapContainsHash!809 lm!2023 key!4653 hashF!1323) lt!1906106)))

(declare-fun bs!1136293 () Bool)

(assert (= bs!1136293 d!1515556))

(assert (=> bs!1136293 m!5697981))

(assert (=> bs!1136293 m!5697981))

(assert (=> bs!1136293 m!5698255))

(declare-fun m!5698291 () Bool)

(assert (=> bs!1136293 m!5698291))

(declare-fun m!5698293 () Bool)

(assert (=> bs!1136293 m!5698293))

(assert (=> b!4743280 d!1515556))

(declare-fun d!1515558 () Bool)

(assert (=> d!1515558 (dynLambda!21878 lambda!219585 lt!1905841)))

(declare-fun lt!1906109 () Unit!133851)

(declare-fun choose!33686 (List!53090 Int tuple2!54648) Unit!133851)

(assert (=> d!1515558 (= lt!1906109 (choose!33686 (toList!6015 lm!2023) lambda!219585 lt!1905841))))

(declare-fun e!2958869 () Bool)

(assert (=> d!1515558 e!2958869))

(declare-fun res!2010093 () Bool)

(assert (=> d!1515558 (=> (not res!2010093) (not e!2958869))))

(assert (=> d!1515558 (= res!2010093 (forall!11692 (toList!6015 lm!2023) lambda!219585))))

(assert (=> d!1515558 (= (forallContained!3732 (toList!6015 lm!2023) lambda!219585 lt!1905841) lt!1906109)))

(declare-fun b!4743558 () Bool)

(assert (=> b!4743558 (= e!2958869 (contains!16381 (toList!6015 lm!2023) lt!1905841))))

(assert (= (and d!1515558 res!2010093) b!4743558))

(declare-fun b_lambda!182633 () Bool)

(assert (=> (not b_lambda!182633) (not d!1515558)))

(declare-fun m!5698295 () Bool)

(assert (=> d!1515558 m!5698295))

(declare-fun m!5698297 () Bool)

(assert (=> d!1515558 m!5698297))

(assert (=> d!1515558 m!5697945))

(assert (=> b!4743558 m!5697997))

(assert (=> b!4743280 d!1515558))

(declare-fun d!1515560 () Bool)

(assert (=> d!1515560 (containsKey!3484 oldBucket!34 key!4653)))

(declare-fun lt!1906112 () Unit!133851)

(declare-fun choose!33687 (List!53089 K!14308 Hashable!6432) Unit!133851)

(assert (=> d!1515560 (= lt!1906112 (choose!33687 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1515560 (noDuplicateKeys!2063 oldBucket!34)))

(assert (=> d!1515560 (= (lemmaGetPairDefinedThenContainsKey!347 oldBucket!34 key!4653 hashF!1323) lt!1906112)))

(declare-fun bs!1136294 () Bool)

(assert (= bs!1136294 d!1515560))

(assert (=> bs!1136294 m!5698005))

(declare-fun m!5698299 () Bool)

(assert (=> bs!1136294 m!5698299))

(assert (=> bs!1136294 m!5697933))

(assert (=> b!4743280 d!1515560))

(declare-fun d!1515562 () Bool)

(declare-fun lt!1906113 () List!53089)

(assert (=> d!1515562 (not (containsKey!3484 lt!1906113 key!4653))))

(declare-fun e!2958870 () List!53089)

(assert (=> d!1515562 (= lt!1906113 e!2958870)))

(declare-fun c!810261 () Bool)

(assert (=> d!1515562 (= c!810261 (and (is-Cons!52965 oldBucket!34) (= (_1!30617 (h!59350 oldBucket!34)) key!4653)))))

(assert (=> d!1515562 (noDuplicateKeys!2063 oldBucket!34)))

(assert (=> d!1515562 (= (removePairForKey!1658 oldBucket!34 key!4653) lt!1906113)))

(declare-fun b!4743561 () Bool)

(declare-fun e!2958871 () List!53089)

(assert (=> b!4743561 (= e!2958871 (Cons!52965 (h!59350 oldBucket!34) (removePairForKey!1658 (t!360391 oldBucket!34) key!4653)))))

(declare-fun b!4743559 () Bool)

(assert (=> b!4743559 (= e!2958870 (t!360391 oldBucket!34))))

(declare-fun b!4743560 () Bool)

(assert (=> b!4743560 (= e!2958870 e!2958871)))

(declare-fun c!810262 () Bool)

(assert (=> b!4743560 (= c!810262 (is-Cons!52965 oldBucket!34))))

(declare-fun b!4743562 () Bool)

(assert (=> b!4743562 (= e!2958871 Nil!52965)))

(assert (= (and d!1515562 c!810261) b!4743559))

(assert (= (and d!1515562 (not c!810261)) b!4743560))

(assert (= (and b!4743560 c!810262) b!4743561))

(assert (= (and b!4743560 (not c!810262)) b!4743562))

(declare-fun m!5698301 () Bool)

(assert (=> d!1515562 m!5698301))

(assert (=> d!1515562 m!5697933))

(assert (=> b!4743561 m!5697951))

(assert (=> b!4743301 d!1515562))

(declare-fun d!1515564 () Bool)

(declare-fun lt!1906137 () Int)

(assert (=> d!1515564 (>= lt!1906137 0)))

(declare-fun e!2958877 () Int)

(assert (=> d!1515564 (= lt!1906137 e!2958877)))

(declare-fun c!810266 () Bool)

(assert (=> d!1515564 (= c!810266 (is-Nil!52965 (t!360391 oldBucket!34)))))

(assert (=> d!1515564 (= (size!35985 (t!360391 oldBucket!34)) lt!1906137)))

(declare-fun b!4743574 () Bool)

(assert (=> b!4743574 (= e!2958877 0)))

(declare-fun b!4743575 () Bool)

(assert (=> b!4743575 (= e!2958877 (+ 1 (size!35985 (t!360391 (t!360391 oldBucket!34)))))))

(assert (= (and d!1515564 c!810266) b!4743574))

(assert (= (and d!1515564 (not c!810266)) b!4743575))

(declare-fun m!5698303 () Bool)

(assert (=> b!4743575 m!5698303))

(assert (=> b!4743302 d!1515564))

(declare-fun d!1515566 () Bool)

(declare-fun lt!1906138 () Int)

(assert (=> d!1515566 (>= lt!1906138 0)))

(declare-fun e!2958878 () Int)

(assert (=> d!1515566 (= lt!1906138 e!2958878)))

(declare-fun c!810267 () Bool)

(assert (=> d!1515566 (= c!810267 (is-Nil!52965 oldBucket!34))))

(assert (=> d!1515566 (= (size!35985 oldBucket!34) lt!1906138)))

(declare-fun b!4743576 () Bool)

(assert (=> b!4743576 (= e!2958878 0)))

(declare-fun b!4743577 () Bool)

(assert (=> b!4743577 (= e!2958878 (+ 1 (size!35985 (t!360391 oldBucket!34))))))

(assert (= (and d!1515566 c!810267) b!4743576))

(assert (= (and d!1515566 (not c!810267)) b!4743577))

(assert (=> b!4743577 m!5697969))

(assert (=> b!4743302 d!1515566))

(declare-fun d!1515568 () Bool)

(declare-fun res!2010101 () Bool)

(declare-fun e!2958883 () Bool)

(assert (=> d!1515568 (=> res!2010101 e!2958883)))

(assert (=> d!1515568 (= res!2010101 (not (is-Cons!52965 newBucket!218)))))

(assert (=> d!1515568 (= (noDuplicateKeys!2063 newBucket!218) e!2958883)))

(declare-fun b!4743582 () Bool)

(declare-fun e!2958884 () Bool)

(assert (=> b!4743582 (= e!2958883 e!2958884)))

(declare-fun res!2010102 () Bool)

(assert (=> b!4743582 (=> (not res!2010102) (not e!2958884))))

(assert (=> b!4743582 (= res!2010102 (not (containsKey!3484 (t!360391 newBucket!218) (_1!30617 (h!59350 newBucket!218)))))))

(declare-fun b!4743583 () Bool)

(assert (=> b!4743583 (= e!2958884 (noDuplicateKeys!2063 (t!360391 newBucket!218)))))

(assert (= (and d!1515568 (not res!2010101)) b!4743582))

(assert (= (and b!4743582 res!2010102) b!4743583))

(declare-fun m!5698307 () Bool)

(assert (=> b!4743582 m!5698307))

(declare-fun m!5698309 () Bool)

(assert (=> b!4743583 m!5698309))

(assert (=> b!4743297 d!1515568))

(declare-fun d!1515570 () Bool)

(declare-fun content!9475 (List!53089) (Set tuple2!54646))

(assert (=> d!1515570 (= (eq!1160 lt!1905847 (+!2311 lt!1905832 lt!1905830)) (= (content!9475 (toList!6016 lt!1905847)) (content!9475 (toList!6016 (+!2311 lt!1905832 lt!1905830)))))))

(declare-fun bs!1136298 () Bool)

(assert (= bs!1136298 d!1515570))

(declare-fun m!5698345 () Bool)

(assert (=> bs!1136298 m!5698345))

(declare-fun m!5698347 () Bool)

(assert (=> bs!1136298 m!5698347))

(assert (=> b!4743298 d!1515570))

(declare-fun d!1515574 () Bool)

(declare-fun e!2958889 () Bool)

(assert (=> d!1515574 e!2958889))

(declare-fun res!2010112 () Bool)

(assert (=> d!1515574 (=> (not res!2010112) (not e!2958889))))

(declare-fun lt!1906155 () ListMap!5379)

(assert (=> d!1515574 (= res!2010112 (contains!16383 lt!1906155 (_1!30617 lt!1905830)))))

(declare-fun lt!1906157 () List!53089)

(assert (=> d!1515574 (= lt!1906155 (ListMap!5380 lt!1906157))))

(declare-fun lt!1906158 () Unit!133851)

(declare-fun lt!1906156 () Unit!133851)

(assert (=> d!1515574 (= lt!1906158 lt!1906156)))

(assert (=> d!1515574 (= (getValueByKey!2026 lt!1906157 (_1!30617 lt!1905830)) (Some!12471 (_2!30617 lt!1905830)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1115 (List!53089 K!14308 V!14554) Unit!133851)

(assert (=> d!1515574 (= lt!1906156 (lemmaContainsTupThenGetReturnValue!1115 lt!1906157 (_1!30617 lt!1905830) (_2!30617 lt!1905830)))))

(declare-fun insertNoDuplicatedKeys!623 (List!53089 K!14308 V!14554) List!53089)

(assert (=> d!1515574 (= lt!1906157 (insertNoDuplicatedKeys!623 (toList!6016 lt!1905832) (_1!30617 lt!1905830) (_2!30617 lt!1905830)))))

(assert (=> d!1515574 (= (+!2311 lt!1905832 lt!1905830) lt!1906155)))

(declare-fun b!4743592 () Bool)

(declare-fun res!2010111 () Bool)

(assert (=> b!4743592 (=> (not res!2010111) (not e!2958889))))

(assert (=> b!4743592 (= res!2010111 (= (getValueByKey!2026 (toList!6016 lt!1906155) (_1!30617 lt!1905830)) (Some!12471 (_2!30617 lt!1905830))))))

(declare-fun b!4743593 () Bool)

(assert (=> b!4743593 (= e!2958889 (contains!16388 (toList!6016 lt!1906155) lt!1905830))))

(assert (= (and d!1515574 res!2010112) b!4743592))

(assert (= (and b!4743592 res!2010111) b!4743593))

(declare-fun m!5698349 () Bool)

(assert (=> d!1515574 m!5698349))

(declare-fun m!5698351 () Bool)

(assert (=> d!1515574 m!5698351))

(declare-fun m!5698355 () Bool)

(assert (=> d!1515574 m!5698355))

(declare-fun m!5698359 () Bool)

(assert (=> d!1515574 m!5698359))

(declare-fun m!5698363 () Bool)

(assert (=> b!4743592 m!5698363))

(declare-fun m!5698367 () Bool)

(assert (=> b!4743593 m!5698367))

(assert (=> b!4743298 d!1515574))

(declare-fun d!1515576 () Bool)

(declare-fun res!2010115 () Bool)

(declare-fun e!2958891 () Bool)

(assert (=> d!1515576 (=> res!2010115 e!2958891)))

(assert (=> d!1515576 (= res!2010115 (not (is-Cons!52965 oldBucket!34)))))

(assert (=> d!1515576 (= (noDuplicateKeys!2063 oldBucket!34) e!2958891)))

(declare-fun b!4743596 () Bool)

(declare-fun e!2958892 () Bool)

(assert (=> b!4743596 (= e!2958891 e!2958892)))

(declare-fun res!2010116 () Bool)

(assert (=> b!4743596 (=> (not res!2010116) (not e!2958892))))

(assert (=> b!4743596 (= res!2010116 (not (containsKey!3484 (t!360391 oldBucket!34) (_1!30617 (h!59350 oldBucket!34)))))))

(declare-fun b!4743597 () Bool)

(assert (=> b!4743597 (= e!2958892 (noDuplicateKeys!2063 (t!360391 oldBucket!34)))))

(assert (= (and d!1515576 (not res!2010115)) b!4743596))

(assert (= (and b!4743596 res!2010116) b!4743597))

(declare-fun m!5698373 () Bool)

(assert (=> b!4743596 m!5698373))

(assert (=> b!4743597 m!5697949))

(assert (=> b!4743299 d!1515576))

(declare-fun d!1515580 () Bool)

(declare-fun res!2010117 () Bool)

(declare-fun e!2958893 () Bool)

(assert (=> d!1515580 (=> res!2010117 e!2958893)))

(assert (=> d!1515580 (= res!2010117 (is-Nil!52966 (toList!6015 lm!2023)))))

(assert (=> d!1515580 (= (forall!11692 (toList!6015 lm!2023) lambda!219585) e!2958893)))

(declare-fun b!4743598 () Bool)

(declare-fun e!2958894 () Bool)

(assert (=> b!4743598 (= e!2958893 e!2958894)))

(declare-fun res!2010118 () Bool)

(assert (=> b!4743598 (=> (not res!2010118) (not e!2958894))))

(assert (=> b!4743598 (= res!2010118 (dynLambda!21878 lambda!219585 (h!59351 (toList!6015 lm!2023))))))

(declare-fun b!4743599 () Bool)

(assert (=> b!4743599 (= e!2958894 (forall!11692 (t!360392 (toList!6015 lm!2023)) lambda!219585))))

(assert (= (and d!1515580 (not res!2010117)) b!4743598))

(assert (= (and b!4743598 res!2010118) b!4743599))

(declare-fun b_lambda!182635 () Bool)

(assert (=> (not b_lambda!182635) (not b!4743598)))

(declare-fun m!5698375 () Bool)

(assert (=> b!4743598 m!5698375))

(declare-fun m!5698377 () Bool)

(assert (=> b!4743599 m!5698377))

(assert (=> start!484058 d!1515580))

(declare-fun d!1515582 () Bool)

(declare-fun isStrictlySorted!785 (List!53090) Bool)

(assert (=> d!1515582 (= (inv!68183 lm!2023) (isStrictlySorted!785 (toList!6015 lm!2023)))))

(declare-fun bs!1136299 () Bool)

(assert (= bs!1136299 d!1515582))

(declare-fun m!5698379 () Bool)

(assert (=> bs!1136299 m!5698379))

(assert (=> start!484058 d!1515582))

(declare-fun bs!1136300 () Bool)

(declare-fun d!1515584 () Bool)

(assert (= bs!1136300 (and d!1515584 b!4743474)))

(declare-fun lambda!219679 () Int)

(assert (=> bs!1136300 (not (= lambda!219679 lambda!219630))))

(declare-fun bs!1136301 () Bool)

(assert (= bs!1136301 (and d!1515584 b!4743471)))

(assert (=> bs!1136301 (not (= lambda!219679 lambda!219631))))

(declare-fun bs!1136302 () Bool)

(assert (= bs!1136302 (and d!1515584 d!1515532)))

(assert (=> bs!1136302 (= lambda!219679 lambda!219635)))

(assert (=> bs!1136301 (not (= lambda!219679 lambda!219632))))

(declare-fun bs!1136303 () Bool)

(assert (= bs!1136303 (and d!1515584 d!1515512)))

(assert (=> bs!1136303 (not (= lambda!219679 lambda!219633))))

(declare-fun bs!1136304 () Bool)

(assert (= bs!1136304 (and d!1515584 d!1515502)))

(assert (=> bs!1136304 (= lambda!219679 lambda!219598)))

(assert (=> d!1515584 true))

(assert (=> d!1515584 true))

(assert (=> d!1515584 (= (allKeysSameHash!1889 newBucket!218 hash!405 hashF!1323) (forall!11694 newBucket!218 lambda!219679))))

(declare-fun bs!1136305 () Bool)

(assert (= bs!1136305 d!1515584))

(declare-fun m!5698381 () Bool)

(assert (=> bs!1136305 m!5698381))

(assert (=> b!4743295 d!1515584))

(declare-fun bs!1136306 () Bool)

(declare-fun d!1515586 () Bool)

(assert (= bs!1136306 (and d!1515586 b!4743474)))

(declare-fun lambda!219680 () Int)

(assert (=> bs!1136306 (not (= lambda!219680 lambda!219630))))

(declare-fun bs!1136307 () Bool)

(assert (= bs!1136307 (and d!1515586 b!4743471)))

(assert (=> bs!1136307 (not (= lambda!219680 lambda!219631))))

(declare-fun bs!1136308 () Bool)

(assert (= bs!1136308 (and d!1515586 d!1515532)))

(assert (=> bs!1136308 (= lambda!219680 lambda!219635)))

(assert (=> bs!1136307 (not (= lambda!219680 lambda!219632))))

(declare-fun bs!1136309 () Bool)

(assert (= bs!1136309 (and d!1515586 d!1515584)))

(assert (=> bs!1136309 (= lambda!219680 lambda!219679)))

(declare-fun bs!1136310 () Bool)

(assert (= bs!1136310 (and d!1515586 d!1515512)))

(assert (=> bs!1136310 (not (= lambda!219680 lambda!219633))))

(declare-fun bs!1136311 () Bool)

(assert (= bs!1136311 (and d!1515586 d!1515502)))

(assert (=> bs!1136311 (= lambda!219680 lambda!219598)))

(assert (=> d!1515586 true))

(assert (=> d!1515586 true))

(assert (=> d!1515586 (= (allKeysSameHash!1889 lt!1905838 hash!405 hashF!1323) (forall!11694 lt!1905838 lambda!219680))))

(declare-fun bs!1136312 () Bool)

(assert (= bs!1136312 d!1515586))

(declare-fun m!5698383 () Bool)

(assert (=> bs!1136312 m!5698383))

(assert (=> b!4743292 d!1515586))

(declare-fun d!1515588 () Bool)

(declare-fun res!2010119 () Bool)

(declare-fun e!2958895 () Bool)

(assert (=> d!1515588 (=> res!2010119 e!2958895)))

(assert (=> d!1515588 (= res!2010119 (not (is-Cons!52965 lt!1905838)))))

(assert (=> d!1515588 (= (noDuplicateKeys!2063 lt!1905838) e!2958895)))

(declare-fun b!4743600 () Bool)

(declare-fun e!2958896 () Bool)

(assert (=> b!4743600 (= e!2958895 e!2958896)))

(declare-fun res!2010120 () Bool)

(assert (=> b!4743600 (=> (not res!2010120) (not e!2958896))))

(assert (=> b!4743600 (= res!2010120 (not (containsKey!3484 (t!360391 lt!1905838) (_1!30617 (h!59350 lt!1905838)))))))

(declare-fun b!4743601 () Bool)

(assert (=> b!4743601 (= e!2958896 (noDuplicateKeys!2063 (t!360391 lt!1905838)))))

(assert (= (and d!1515588 (not res!2010119)) b!4743600))

(assert (= (and b!4743600 res!2010120) b!4743601))

(declare-fun m!5698385 () Bool)

(assert (=> b!4743600 m!5698385))

(declare-fun m!5698387 () Bool)

(assert (=> b!4743601 m!5698387))

(assert (=> b!4743293 d!1515588))

(declare-fun d!1515590 () Bool)

(declare-fun res!2010121 () Bool)

(declare-fun e!2958897 () Bool)

(assert (=> d!1515590 (=> res!2010121 e!2958897)))

(assert (=> d!1515590 (= res!2010121 (not (is-Cons!52965 (t!360391 oldBucket!34))))))

(assert (=> d!1515590 (= (noDuplicateKeys!2063 (t!360391 oldBucket!34)) e!2958897)))

(declare-fun b!4743602 () Bool)

(declare-fun e!2958898 () Bool)

(assert (=> b!4743602 (= e!2958897 e!2958898)))

(declare-fun res!2010122 () Bool)

(assert (=> b!4743602 (=> (not res!2010122) (not e!2958898))))

(assert (=> b!4743602 (= res!2010122 (not (containsKey!3484 (t!360391 (t!360391 oldBucket!34)) (_1!30617 (h!59350 (t!360391 oldBucket!34))))))))

(declare-fun b!4743603 () Bool)

(assert (=> b!4743603 (= e!2958898 (noDuplicateKeys!2063 (t!360391 (t!360391 oldBucket!34))))))

(assert (= (and d!1515590 (not res!2010121)) b!4743602))

(assert (= (and b!4743602 res!2010122) b!4743603))

(declare-fun m!5698389 () Bool)

(assert (=> b!4743602 m!5698389))

(declare-fun m!5698391 () Bool)

(assert (=> b!4743603 m!5698391))

(assert (=> b!4743294 d!1515590))

(declare-fun d!1515592 () Bool)

(declare-fun lt!1906163 () List!53089)

(assert (=> d!1515592 (not (containsKey!3484 lt!1906163 key!4653))))

(declare-fun e!2958899 () List!53089)

(assert (=> d!1515592 (= lt!1906163 e!2958899)))

(declare-fun c!810268 () Bool)

(assert (=> d!1515592 (= c!810268 (and (is-Cons!52965 lt!1905849) (= (_1!30617 (h!59350 lt!1905849)) key!4653)))))

(assert (=> d!1515592 (noDuplicateKeys!2063 lt!1905849)))

(assert (=> d!1515592 (= (removePairForKey!1658 lt!1905849 key!4653) lt!1906163)))

(declare-fun b!4743606 () Bool)

(declare-fun e!2958900 () List!53089)

(assert (=> b!4743606 (= e!2958900 (Cons!52965 (h!59350 lt!1905849) (removePairForKey!1658 (t!360391 lt!1905849) key!4653)))))

(declare-fun b!4743604 () Bool)

(assert (=> b!4743604 (= e!2958899 (t!360391 lt!1905849))))

(declare-fun b!4743605 () Bool)

(assert (=> b!4743605 (= e!2958899 e!2958900)))

(declare-fun c!810269 () Bool)

(assert (=> b!4743605 (= c!810269 (is-Cons!52965 lt!1905849))))

(declare-fun b!4743607 () Bool)

(assert (=> b!4743607 (= e!2958900 Nil!52965)))

(assert (= (and d!1515592 c!810268) b!4743604))

(assert (= (and d!1515592 (not c!810268)) b!4743605))

(assert (= (and b!4743605 c!810269) b!4743606))

(assert (= (and b!4743605 (not c!810269)) b!4743607))

(declare-fun m!5698393 () Bool)

(assert (=> d!1515592 m!5698393))

(declare-fun m!5698395 () Bool)

(assert (=> d!1515592 m!5698395))

(declare-fun m!5698397 () Bool)

(assert (=> b!4743606 m!5698397))

(assert (=> b!4743290 d!1515592))

(declare-fun d!1515594 () Bool)

(assert (=> d!1515594 (= (tail!9128 newBucket!218) (t!360391 newBucket!218))))

(assert (=> b!4743290 d!1515594))

(declare-fun d!1515596 () Bool)

(assert (=> d!1515596 (= (tail!9128 oldBucket!34) (t!360391 oldBucket!34))))

(assert (=> b!4743290 d!1515596))

(declare-fun bs!1136313 () Bool)

(declare-fun d!1515598 () Bool)

(assert (= bs!1136313 (and d!1515598 d!1515544)))

(declare-fun lambda!219681 () Int)

(assert (=> bs!1136313 (= lambda!219681 lambda!219643)))

(declare-fun bs!1136314 () Bool)

(assert (= bs!1136314 (and d!1515598 d!1515526)))

(assert (=> bs!1136314 (= lambda!219681 lambda!219634)))

(declare-fun bs!1136315 () Bool)

(assert (= bs!1136315 (and d!1515598 d!1515500)))

(assert (=> bs!1136315 (not (= lambda!219681 lambda!219595))))

(declare-fun bs!1136316 () Bool)

(assert (= bs!1136316 (and d!1515598 d!1515536)))

(assert (=> bs!1136316 (not (= lambda!219681 lambda!219636))))

(declare-fun bs!1136317 () Bool)

(assert (= bs!1136317 (and d!1515598 d!1515508)))

(assert (=> bs!1136317 (= lambda!219681 lambda!219601)))

(declare-fun bs!1136318 () Bool)

(assert (= bs!1136318 (and d!1515598 d!1515556)))

(assert (=> bs!1136318 (= lambda!219681 lambda!219672)))

(declare-fun bs!1136319 () Bool)

(assert (= bs!1136319 (and d!1515598 start!484058)))

(assert (=> bs!1136319 (= lambda!219681 lambda!219585)))

(declare-fun lt!1906164 () ListMap!5379)

(assert (=> d!1515598 (invariantList!1548 (toList!6016 lt!1906164))))

(declare-fun e!2958901 () ListMap!5379)

(assert (=> d!1515598 (= lt!1906164 e!2958901)))

(declare-fun c!810270 () Bool)

(assert (=> d!1515598 (= c!810270 (is-Cons!52966 lt!1905845))))

(assert (=> d!1515598 (forall!11692 lt!1905845 lambda!219681)))

(assert (=> d!1515598 (= (extractMap!2089 lt!1905845) lt!1906164)))

(declare-fun b!4743608 () Bool)

(assert (=> b!4743608 (= e!2958901 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 lt!1905845)) (extractMap!2089 (t!360392 lt!1905845))))))

(declare-fun b!4743609 () Bool)

(assert (=> b!4743609 (= e!2958901 (ListMap!5380 Nil!52965))))

(assert (= (and d!1515598 c!810270) b!4743608))

(assert (= (and d!1515598 (not c!810270)) b!4743609))

(declare-fun m!5698399 () Bool)

(assert (=> d!1515598 m!5698399))

(declare-fun m!5698401 () Bool)

(assert (=> d!1515598 m!5698401))

(declare-fun m!5698403 () Bool)

(assert (=> b!4743608 m!5698403))

(assert (=> b!4743608 m!5698403))

(declare-fun m!5698405 () Bool)

(assert (=> b!4743608 m!5698405))

(assert (=> b!4743291 d!1515598))

(declare-fun bs!1136320 () Bool)

(declare-fun d!1515600 () Bool)

(assert (= bs!1136320 (and d!1515600 d!1515544)))

(declare-fun lambda!219682 () Int)

(assert (=> bs!1136320 (= lambda!219682 lambda!219643)))

(declare-fun bs!1136321 () Bool)

(assert (= bs!1136321 (and d!1515600 d!1515526)))

(assert (=> bs!1136321 (= lambda!219682 lambda!219634)))

(declare-fun bs!1136322 () Bool)

(assert (= bs!1136322 (and d!1515600 d!1515500)))

(assert (=> bs!1136322 (not (= lambda!219682 lambda!219595))))

(declare-fun bs!1136323 () Bool)

(assert (= bs!1136323 (and d!1515600 d!1515536)))

(assert (=> bs!1136323 (not (= lambda!219682 lambda!219636))))

(declare-fun bs!1136324 () Bool)

(assert (= bs!1136324 (and d!1515600 d!1515508)))

(assert (=> bs!1136324 (= lambda!219682 lambda!219601)))

(declare-fun bs!1136325 () Bool)

(assert (= bs!1136325 (and d!1515600 d!1515598)))

(assert (=> bs!1136325 (= lambda!219682 lambda!219681)))

(declare-fun bs!1136326 () Bool)

(assert (= bs!1136326 (and d!1515600 d!1515556)))

(assert (=> bs!1136326 (= lambda!219682 lambda!219672)))

(declare-fun bs!1136327 () Bool)

(assert (= bs!1136327 (and d!1515600 start!484058)))

(assert (=> bs!1136327 (= lambda!219682 lambda!219585)))

(declare-fun lt!1906165 () ListMap!5379)

(assert (=> d!1515600 (invariantList!1548 (toList!6016 lt!1906165))))

(declare-fun e!2958902 () ListMap!5379)

(assert (=> d!1515600 (= lt!1906165 e!2958902)))

(declare-fun c!810271 () Bool)

(assert (=> d!1515600 (= c!810271 (is-Cons!52966 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023)))))))

(assert (=> d!1515600 (forall!11692 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023))) lambda!219682)))

(assert (=> d!1515600 (= (extractMap!2089 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023)))) lt!1906165)))

(declare-fun b!4743610 () Bool)

(assert (=> b!4743610 (= e!2958902 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023))))) (extractMap!2089 (t!360392 (Cons!52966 lt!1905831 (t!360392 (toList!6015 lm!2023)))))))))

(declare-fun b!4743611 () Bool)

(assert (=> b!4743611 (= e!2958902 (ListMap!5380 Nil!52965))))

(assert (= (and d!1515600 c!810271) b!4743610))

(assert (= (and d!1515600 (not c!810271)) b!4743611))

(declare-fun m!5698407 () Bool)

(assert (=> d!1515600 m!5698407))

(declare-fun m!5698409 () Bool)

(assert (=> d!1515600 m!5698409))

(declare-fun m!5698411 () Bool)

(assert (=> b!4743610 m!5698411))

(assert (=> b!4743610 m!5698411))

(declare-fun m!5698413 () Bool)

(assert (=> b!4743610 m!5698413))

(assert (=> b!4743291 d!1515600))

(declare-fun d!1515602 () Bool)

(assert (=> d!1515602 (= (head!10330 oldBucket!34) (h!59350 oldBucket!34))))

(assert (=> b!4743291 d!1515602))

(declare-fun d!1515604 () Bool)

(declare-fun e!2958903 () Bool)

(assert (=> d!1515604 e!2958903))

(declare-fun res!2010124 () Bool)

(assert (=> d!1515604 (=> (not res!2010124) (not e!2958903))))

(declare-fun lt!1906166 () ListMap!5379)

(assert (=> d!1515604 (= res!2010124 (contains!16383 lt!1906166 (_1!30617 lt!1905830)))))

(declare-fun lt!1906168 () List!53089)

(assert (=> d!1515604 (= lt!1906166 (ListMap!5380 lt!1906168))))

(declare-fun lt!1906169 () Unit!133851)

(declare-fun lt!1906167 () Unit!133851)

(assert (=> d!1515604 (= lt!1906169 lt!1906167)))

(assert (=> d!1515604 (= (getValueByKey!2026 lt!1906168 (_1!30617 lt!1905830)) (Some!12471 (_2!30617 lt!1905830)))))

(assert (=> d!1515604 (= lt!1906167 (lemmaContainsTupThenGetReturnValue!1115 lt!1906168 (_1!30617 lt!1905830) (_2!30617 lt!1905830)))))

(assert (=> d!1515604 (= lt!1906168 (insertNoDuplicatedKeys!623 (toList!6016 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850)) (_1!30617 lt!1905830) (_2!30617 lt!1905830)))))

(assert (=> d!1515604 (= (+!2311 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1905830) lt!1906166)))

(declare-fun b!4743612 () Bool)

(declare-fun res!2010123 () Bool)

(assert (=> b!4743612 (=> (not res!2010123) (not e!2958903))))

(assert (=> b!4743612 (= res!2010123 (= (getValueByKey!2026 (toList!6016 lt!1906166) (_1!30617 lt!1905830)) (Some!12471 (_2!30617 lt!1905830))))))

(declare-fun b!4743613 () Bool)

(assert (=> b!4743613 (= e!2958903 (contains!16388 (toList!6016 lt!1906166) lt!1905830))))

(assert (= (and d!1515604 res!2010124) b!4743612))

(assert (= (and b!4743612 res!2010123) b!4743613))

(declare-fun m!5698415 () Bool)

(assert (=> d!1515604 m!5698415))

(declare-fun m!5698417 () Bool)

(assert (=> d!1515604 m!5698417))

(declare-fun m!5698419 () Bool)

(assert (=> d!1515604 m!5698419))

(declare-fun m!5698421 () Bool)

(assert (=> d!1515604 m!5698421))

(declare-fun m!5698423 () Bool)

(assert (=> b!4743612 m!5698423))

(declare-fun m!5698425 () Bool)

(assert (=> b!4743613 m!5698425))

(assert (=> b!4743291 d!1515604))

(declare-fun d!1515606 () Bool)

(assert (=> d!1515606 (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905830 lt!1905838) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1905830))))

(declare-fun lt!1906200 () Unit!133851)

(declare-fun choose!33688 (tuple2!54646 List!53089 ListMap!5379) Unit!133851)

(assert (=> d!1515606 (= lt!1906200 (choose!33688 lt!1905830 lt!1905838 lt!1905850))))

(assert (=> d!1515606 (noDuplicateKeys!2063 lt!1905838)))

(assert (=> d!1515606 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!409 lt!1905830 lt!1905838 lt!1905850) lt!1906200)))

(declare-fun bs!1136341 () Bool)

(assert (= bs!1136341 d!1515606))

(assert (=> bs!1136341 m!5697897))

(assert (=> bs!1136341 m!5697897))

(assert (=> bs!1136341 m!5697889))

(assert (=> bs!1136341 m!5697887))

(assert (=> bs!1136341 m!5697887))

(assert (=> bs!1136341 m!5697889))

(assert (=> bs!1136341 m!5697891))

(assert (=> bs!1136341 m!5697973))

(declare-fun m!5698475 () Bool)

(assert (=> bs!1136341 m!5698475))

(assert (=> b!4743291 d!1515606))

(declare-fun bs!1136365 () Bool)

(declare-fun d!1515614 () Bool)

(assert (= bs!1136365 (and d!1515614 d!1515544)))

(declare-fun lambda!219697 () Int)

(assert (=> bs!1136365 (= lambda!219697 lambda!219643)))

(declare-fun bs!1136366 () Bool)

(assert (= bs!1136366 (and d!1515614 d!1515526)))

(assert (=> bs!1136366 (= lambda!219697 lambda!219634)))

(declare-fun bs!1136367 () Bool)

(assert (= bs!1136367 (and d!1515614 d!1515500)))

(assert (=> bs!1136367 (not (= lambda!219697 lambda!219595))))

(declare-fun bs!1136368 () Bool)

(assert (= bs!1136368 (and d!1515614 d!1515536)))

(assert (=> bs!1136368 (not (= lambda!219697 lambda!219636))))

(declare-fun bs!1136369 () Bool)

(assert (= bs!1136369 (and d!1515614 d!1515508)))

(assert (=> bs!1136369 (= lambda!219697 lambda!219601)))

(declare-fun bs!1136370 () Bool)

(assert (= bs!1136370 (and d!1515614 d!1515598)))

(assert (=> bs!1136370 (= lambda!219697 lambda!219681)))

(declare-fun bs!1136371 () Bool)

(assert (= bs!1136371 (and d!1515614 d!1515556)))

(assert (=> bs!1136371 (= lambda!219697 lambda!219672)))

(declare-fun bs!1136372 () Bool)

(assert (= bs!1136372 (and d!1515614 d!1515600)))

(assert (=> bs!1136372 (= lambda!219697 lambda!219682)))

(declare-fun bs!1136373 () Bool)

(assert (= bs!1136373 (and d!1515614 start!484058)))

(assert (=> bs!1136373 (= lambda!219697 lambda!219585)))

(assert (=> d!1515614 (contains!16383 (extractMap!2089 (toList!6015 lt!1905834)) key!4653)))

(declare-fun lt!1906225 () Unit!133851)

(declare-fun choose!33689 (ListLongMap!4545 K!14308 Hashable!6432) Unit!133851)

(assert (=> d!1515614 (= lt!1906225 (choose!33689 lt!1905834 key!4653 hashF!1323))))

(assert (=> d!1515614 (forall!11692 (toList!6015 lt!1905834) lambda!219697)))

(assert (=> d!1515614 (= (lemmaListContainsThenExtractedMapContains!571 lt!1905834 key!4653 hashF!1323) lt!1906225)))

(declare-fun bs!1136374 () Bool)

(assert (= bs!1136374 d!1515614))

(declare-fun m!5698523 () Bool)

(assert (=> bs!1136374 m!5698523))

(assert (=> bs!1136374 m!5698523))

(declare-fun m!5698525 () Bool)

(assert (=> bs!1136374 m!5698525))

(declare-fun m!5698527 () Bool)

(assert (=> bs!1136374 m!5698527))

(declare-fun m!5698529 () Bool)

(assert (=> bs!1136374 m!5698529))

(assert (=> b!4743291 d!1515614))

(declare-fun d!1515624 () Bool)

(assert (=> d!1515624 (= (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905836 lt!1905849) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1905836)) (= (content!9475 (toList!6016 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905836 lt!1905849) lt!1905850))) (content!9475 (toList!6016 (+!2311 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1905836)))))))

(declare-fun bs!1136375 () Bool)

(assert (= bs!1136375 d!1515624))

(declare-fun m!5698531 () Bool)

(assert (=> bs!1136375 m!5698531))

(declare-fun m!5698533 () Bool)

(assert (=> bs!1136375 m!5698533))

(assert (=> b!4743291 d!1515624))

(declare-fun bs!1136376 () Bool)

(declare-fun b!4743637 () Bool)

(assert (= bs!1136376 (and b!4743637 b!4743474)))

(declare-fun lambda!219698 () Int)

(assert (=> bs!1136376 (= lambda!219698 lambda!219630)))

(declare-fun bs!1136377 () Bool)

(assert (= bs!1136377 (and b!4743637 b!4743471)))

(assert (=> bs!1136377 (= lambda!219698 lambda!219631)))

(declare-fun bs!1136378 () Bool)

(assert (= bs!1136378 (and b!4743637 d!1515532)))

(assert (=> bs!1136378 (not (= lambda!219698 lambda!219635))))

(assert (=> bs!1136377 (= (= lt!1905850 lt!1906002) (= lambda!219698 lambda!219632))))

(declare-fun bs!1136379 () Bool)

(assert (= bs!1136379 (and b!4743637 d!1515584)))

(assert (=> bs!1136379 (not (= lambda!219698 lambda!219679))))

(declare-fun bs!1136380 () Bool)

(assert (= bs!1136380 (and b!4743637 d!1515512)))

(assert (=> bs!1136380 (= (= lt!1905850 lt!1906010) (= lambda!219698 lambda!219633))))

(declare-fun bs!1136381 () Bool)

(assert (= bs!1136381 (and b!4743637 d!1515502)))

(assert (=> bs!1136381 (not (= lambda!219698 lambda!219598))))

(declare-fun bs!1136382 () Bool)

(assert (= bs!1136382 (and b!4743637 d!1515586)))

(assert (=> bs!1136382 (not (= lambda!219698 lambda!219680))))

(assert (=> b!4743637 true))

(declare-fun bs!1136383 () Bool)

(declare-fun b!4743634 () Bool)

(assert (= bs!1136383 (and b!4743634 b!4743474)))

(declare-fun lambda!219699 () Int)

(assert (=> bs!1136383 (= lambda!219699 lambda!219630)))

(declare-fun bs!1136384 () Bool)

(assert (= bs!1136384 (and b!4743634 d!1515532)))

(assert (=> bs!1136384 (not (= lambda!219699 lambda!219635))))

(declare-fun bs!1136385 () Bool)

(assert (= bs!1136385 (and b!4743634 b!4743471)))

(assert (=> bs!1136385 (= (= lt!1905850 lt!1906002) (= lambda!219699 lambda!219632))))

(declare-fun bs!1136386 () Bool)

(assert (= bs!1136386 (and b!4743634 d!1515584)))

(assert (=> bs!1136386 (not (= lambda!219699 lambda!219679))))

(declare-fun bs!1136387 () Bool)

(assert (= bs!1136387 (and b!4743634 d!1515512)))

(assert (=> bs!1136387 (= (= lt!1905850 lt!1906010) (= lambda!219699 lambda!219633))))

(declare-fun bs!1136388 () Bool)

(assert (= bs!1136388 (and b!4743634 d!1515502)))

(assert (=> bs!1136388 (not (= lambda!219699 lambda!219598))))

(declare-fun bs!1136389 () Bool)

(assert (= bs!1136389 (and b!4743634 d!1515586)))

(assert (=> bs!1136389 (not (= lambda!219699 lambda!219680))))

(declare-fun bs!1136390 () Bool)

(assert (= bs!1136390 (and b!4743634 b!4743637)))

(assert (=> bs!1136390 (= lambda!219699 lambda!219698)))

(assert (=> bs!1136385 (= lambda!219699 lambda!219631)))

(assert (=> b!4743634 true))

(declare-fun lambda!219700 () Int)

(declare-fun lt!1906233 () ListMap!5379)

(assert (=> b!4743634 (= (= lt!1906233 lt!1905850) (= lambda!219700 lambda!219699))))

(assert (=> bs!1136383 (= (= lt!1906233 lt!1905850) (= lambda!219700 lambda!219630))))

(assert (=> bs!1136384 (not (= lambda!219700 lambda!219635))))

(assert (=> bs!1136385 (= (= lt!1906233 lt!1906002) (= lambda!219700 lambda!219632))))

(assert (=> bs!1136386 (not (= lambda!219700 lambda!219679))))

(assert (=> bs!1136387 (= (= lt!1906233 lt!1906010) (= lambda!219700 lambda!219633))))

(assert (=> bs!1136388 (not (= lambda!219700 lambda!219598))))

(assert (=> bs!1136389 (not (= lambda!219700 lambda!219680))))

(assert (=> bs!1136390 (= (= lt!1906233 lt!1905850) (= lambda!219700 lambda!219698))))

(assert (=> bs!1136385 (= (= lt!1906233 lt!1905850) (= lambda!219700 lambda!219631))))

(assert (=> b!4743634 true))

(declare-fun bs!1136391 () Bool)

(declare-fun d!1515626 () Bool)

(assert (= bs!1136391 (and d!1515626 b!4743634)))

(declare-fun lt!1906241 () ListMap!5379)

(declare-fun lambda!219701 () Int)

(assert (=> bs!1136391 (= (= lt!1906241 lt!1905850) (= lambda!219701 lambda!219699))))

(declare-fun bs!1136392 () Bool)

(assert (= bs!1136392 (and d!1515626 b!4743474)))

(assert (=> bs!1136392 (= (= lt!1906241 lt!1905850) (= lambda!219701 lambda!219630))))

(declare-fun bs!1136393 () Bool)

(assert (= bs!1136393 (and d!1515626 b!4743471)))

(assert (=> bs!1136393 (= (= lt!1906241 lt!1906002) (= lambda!219701 lambda!219632))))

(declare-fun bs!1136394 () Bool)

(assert (= bs!1136394 (and d!1515626 d!1515584)))

(assert (=> bs!1136394 (not (= lambda!219701 lambda!219679))))

(declare-fun bs!1136395 () Bool)

(assert (= bs!1136395 (and d!1515626 d!1515512)))

(assert (=> bs!1136395 (= (= lt!1906241 lt!1906010) (= lambda!219701 lambda!219633))))

(declare-fun bs!1136396 () Bool)

(assert (= bs!1136396 (and d!1515626 d!1515502)))

(assert (=> bs!1136396 (not (= lambda!219701 lambda!219598))))

(declare-fun bs!1136397 () Bool)

(assert (= bs!1136397 (and d!1515626 d!1515586)))

(assert (=> bs!1136397 (not (= lambda!219701 lambda!219680))))

(declare-fun bs!1136398 () Bool)

(assert (= bs!1136398 (and d!1515626 b!4743637)))

(assert (=> bs!1136398 (= (= lt!1906241 lt!1905850) (= lambda!219701 lambda!219698))))

(assert (=> bs!1136393 (= (= lt!1906241 lt!1905850) (= lambda!219701 lambda!219631))))

(declare-fun bs!1136399 () Bool)

(assert (= bs!1136399 (and d!1515626 d!1515532)))

(assert (=> bs!1136399 (not (= lambda!219701 lambda!219635))))

(assert (=> bs!1136391 (= (= lt!1906241 lt!1906233) (= lambda!219701 lambda!219700))))

(assert (=> d!1515626 true))

(declare-fun e!2958916 () ListMap!5379)

(assert (=> b!4743634 (= e!2958916 lt!1906233)))

(declare-fun lt!1906234 () ListMap!5379)

(assert (=> b!4743634 (= lt!1906234 (+!2311 lt!1905850 (h!59350 (Cons!52965 lt!1905836 lt!1905849))))))

(assert (=> b!4743634 (= lt!1906233 (addToMapMapFromBucket!1493 (t!360391 (Cons!52965 lt!1905836 lt!1905849)) (+!2311 lt!1905850 (h!59350 (Cons!52965 lt!1905836 lt!1905849)))))))

(declare-fun lt!1906240 () Unit!133851)

(declare-fun call!331978 () Unit!133851)

(assert (=> b!4743634 (= lt!1906240 call!331978)))

(assert (=> b!4743634 (forall!11694 (toList!6016 lt!1905850) lambda!219699)))

(declare-fun lt!1906244 () Unit!133851)

(assert (=> b!4743634 (= lt!1906244 lt!1906240)))

(assert (=> b!4743634 (forall!11694 (toList!6016 lt!1906234) lambda!219700)))

(declare-fun lt!1906239 () Unit!133851)

(declare-fun Unit!133880 () Unit!133851)

(assert (=> b!4743634 (= lt!1906239 Unit!133880)))

(assert (=> b!4743634 (forall!11694 (t!360391 (Cons!52965 lt!1905836 lt!1905849)) lambda!219700)))

(declare-fun lt!1906227 () Unit!133851)

(declare-fun Unit!133881 () Unit!133851)

(assert (=> b!4743634 (= lt!1906227 Unit!133881)))

(declare-fun lt!1906245 () Unit!133851)

(declare-fun Unit!133882 () Unit!133851)

(assert (=> b!4743634 (= lt!1906245 Unit!133882)))

(declare-fun lt!1906232 () Unit!133851)

(assert (=> b!4743634 (= lt!1906232 (forallContained!3734 (toList!6016 lt!1906234) lambda!219700 (h!59350 (Cons!52965 lt!1905836 lt!1905849))))))

(assert (=> b!4743634 (contains!16383 lt!1906234 (_1!30617 (h!59350 (Cons!52965 lt!1905836 lt!1905849))))))

(declare-fun lt!1906238 () Unit!133851)

(declare-fun Unit!133883 () Unit!133851)

(assert (=> b!4743634 (= lt!1906238 Unit!133883)))

(assert (=> b!4743634 (contains!16383 lt!1906233 (_1!30617 (h!59350 (Cons!52965 lt!1905836 lt!1905849))))))

(declare-fun lt!1906246 () Unit!133851)

(declare-fun Unit!133884 () Unit!133851)

(assert (=> b!4743634 (= lt!1906246 Unit!133884)))

(assert (=> b!4743634 (forall!11694 (Cons!52965 lt!1905836 lt!1905849) lambda!219700)))

(declare-fun lt!1906229 () Unit!133851)

(declare-fun Unit!133885 () Unit!133851)

(assert (=> b!4743634 (= lt!1906229 Unit!133885)))

(assert (=> b!4743634 (forall!11694 (toList!6016 lt!1906234) lambda!219700)))

(declare-fun lt!1906236 () Unit!133851)

(declare-fun Unit!133886 () Unit!133851)

(assert (=> b!4743634 (= lt!1906236 Unit!133886)))

(declare-fun lt!1906228 () Unit!133851)

(declare-fun Unit!133887 () Unit!133851)

(assert (=> b!4743634 (= lt!1906228 Unit!133887)))

(declare-fun lt!1906243 () Unit!133851)

(assert (=> b!4743634 (= lt!1906243 (addForallContainsKeyThenBeforeAdding!832 lt!1905850 lt!1906233 (_1!30617 (h!59350 (Cons!52965 lt!1905836 lt!1905849))) (_2!30617 (h!59350 (Cons!52965 lt!1905836 lt!1905849)))))))

(assert (=> b!4743634 (forall!11694 (toList!6016 lt!1905850) lambda!219700)))

(declare-fun lt!1906226 () Unit!133851)

(assert (=> b!4743634 (= lt!1906226 lt!1906243)))

(declare-fun call!331979 () Bool)

(assert (=> b!4743634 call!331979))

(declare-fun lt!1906237 () Unit!133851)

(declare-fun Unit!133888 () Unit!133851)

(assert (=> b!4743634 (= lt!1906237 Unit!133888)))

(declare-fun res!2010134 () Bool)

(declare-fun call!331977 () Bool)

(assert (=> b!4743634 (= res!2010134 call!331977)))

(declare-fun e!2958917 () Bool)

(assert (=> b!4743634 (=> (not res!2010134) (not e!2958917))))

(assert (=> b!4743634 e!2958917))

(declare-fun lt!1906231 () Unit!133851)

(declare-fun Unit!133889 () Unit!133851)

(assert (=> b!4743634 (= lt!1906231 Unit!133889)))

(declare-fun b!4743635 () Bool)

(assert (=> b!4743635 (= e!2958917 (forall!11694 (toList!6016 lt!1905850) lambda!219700))))

(declare-fun bm!331972 () Bool)

(declare-fun c!810278 () Bool)

(assert (=> bm!331972 (= call!331979 (forall!11694 (toList!6016 lt!1905850) (ite c!810278 lambda!219698 lambda!219700)))))

(declare-fun b!4743636 () Bool)

(declare-fun res!2010135 () Bool)

(declare-fun e!2958915 () Bool)

(assert (=> b!4743636 (=> (not res!2010135) (not e!2958915))))

(assert (=> b!4743636 (= res!2010135 (forall!11694 (toList!6016 lt!1905850) lambda!219701))))

(declare-fun bm!331973 () Bool)

(assert (=> bm!331973 (= call!331977 (forall!11694 (ite c!810278 (toList!6016 lt!1905850) (Cons!52965 lt!1905836 lt!1905849)) (ite c!810278 lambda!219698 lambda!219700)))))

(assert (=> d!1515626 e!2958915))

(declare-fun res!2010133 () Bool)

(assert (=> d!1515626 (=> (not res!2010133) (not e!2958915))))

(assert (=> d!1515626 (= res!2010133 (forall!11694 (Cons!52965 lt!1905836 lt!1905849) lambda!219701))))

(assert (=> d!1515626 (= lt!1906241 e!2958916)))

(assert (=> d!1515626 (= c!810278 (is-Nil!52965 (Cons!52965 lt!1905836 lt!1905849)))))

(assert (=> d!1515626 (noDuplicateKeys!2063 (Cons!52965 lt!1905836 lt!1905849))))

(assert (=> d!1515626 (= (addToMapMapFromBucket!1493 (Cons!52965 lt!1905836 lt!1905849) lt!1905850) lt!1906241)))

(declare-fun bm!331974 () Bool)

(assert (=> bm!331974 (= call!331978 (lemmaContainsAllItsOwnKeys!833 lt!1905850))))

(assert (=> b!4743637 (= e!2958916 lt!1905850)))

(declare-fun lt!1906242 () Unit!133851)

(assert (=> b!4743637 (= lt!1906242 call!331978)))

(assert (=> b!4743637 call!331977))

(declare-fun lt!1906235 () Unit!133851)

(assert (=> b!4743637 (= lt!1906235 lt!1906242)))

(assert (=> b!4743637 call!331979))

(declare-fun lt!1906230 () Unit!133851)

(declare-fun Unit!133890 () Unit!133851)

(assert (=> b!4743637 (= lt!1906230 Unit!133890)))

(declare-fun b!4743638 () Bool)

(assert (=> b!4743638 (= e!2958915 (invariantList!1548 (toList!6016 lt!1906241)))))

(assert (= (and d!1515626 c!810278) b!4743637))

(assert (= (and d!1515626 (not c!810278)) b!4743634))

(assert (= (and b!4743634 res!2010134) b!4743635))

(assert (= (or b!4743637 b!4743634) bm!331974))

(assert (= (or b!4743637 b!4743634) bm!331972))

(assert (= (or b!4743637 b!4743634) bm!331973))

(assert (= (and d!1515626 res!2010133) b!4743636))

(assert (= (and b!4743636 res!2010135) b!4743638))

(declare-fun m!5698535 () Bool)

(assert (=> b!4743635 m!5698535))

(declare-fun m!5698537 () Bool)

(assert (=> b!4743636 m!5698537))

(declare-fun m!5698539 () Bool)

(assert (=> b!4743638 m!5698539))

(declare-fun m!5698541 () Bool)

(assert (=> d!1515626 m!5698541))

(declare-fun m!5698543 () Bool)

(assert (=> d!1515626 m!5698543))

(declare-fun m!5698545 () Bool)

(assert (=> bm!331973 m!5698545))

(assert (=> bm!331974 m!5698185))

(declare-fun m!5698547 () Bool)

(assert (=> b!4743634 m!5698547))

(declare-fun m!5698549 () Bool)

(assert (=> b!4743634 m!5698549))

(declare-fun m!5698551 () Bool)

(assert (=> b!4743634 m!5698551))

(assert (=> b!4743634 m!5698535))

(declare-fun m!5698553 () Bool)

(assert (=> b!4743634 m!5698553))

(declare-fun m!5698555 () Bool)

(assert (=> b!4743634 m!5698555))

(declare-fun m!5698557 () Bool)

(assert (=> b!4743634 m!5698557))

(assert (=> b!4743634 m!5698551))

(declare-fun m!5698559 () Bool)

(assert (=> b!4743634 m!5698559))

(declare-fun m!5698561 () Bool)

(assert (=> b!4743634 m!5698561))

(assert (=> b!4743634 m!5698555))

(declare-fun m!5698563 () Bool)

(assert (=> b!4743634 m!5698563))

(declare-fun m!5698565 () Bool)

(assert (=> b!4743634 m!5698565))

(declare-fun m!5698567 () Bool)

(assert (=> bm!331972 m!5698567))

(assert (=> b!4743291 d!1515626))

(declare-fun d!1515628 () Bool)

(assert (=> d!1515628 (= (eq!1160 lt!1905847 (+!2311 lt!1905832 (h!59350 oldBucket!34))) (= (content!9475 (toList!6016 lt!1905847)) (content!9475 (toList!6016 (+!2311 lt!1905832 (h!59350 oldBucket!34))))))))

(declare-fun bs!1136400 () Bool)

(assert (= bs!1136400 d!1515628))

(assert (=> bs!1136400 m!5698345))

(declare-fun m!5698569 () Bool)

(assert (=> bs!1136400 m!5698569))

(assert (=> b!4743291 d!1515628))

(declare-fun d!1515630 () Bool)

(assert (=> d!1515630 (= (head!10330 newBucket!218) (h!59350 newBucket!218))))

(assert (=> b!4743291 d!1515630))

(declare-fun d!1515632 () Bool)

(declare-fun e!2958922 () Bool)

(assert (=> d!1515632 e!2958922))

(declare-fun res!2010137 () Bool)

(assert (=> d!1515632 (=> (not res!2010137) (not e!2958922))))

(declare-fun lt!1906263 () ListMap!5379)

(assert (=> d!1515632 (= res!2010137 (contains!16383 lt!1906263 (_1!30617 lt!1905836)))))

(declare-fun lt!1906265 () List!53089)

(assert (=> d!1515632 (= lt!1906263 (ListMap!5380 lt!1906265))))

(declare-fun lt!1906266 () Unit!133851)

(declare-fun lt!1906264 () Unit!133851)

(assert (=> d!1515632 (= lt!1906266 lt!1906264)))

(assert (=> d!1515632 (= (getValueByKey!2026 lt!1906265 (_1!30617 lt!1905836)) (Some!12471 (_2!30617 lt!1905836)))))

(assert (=> d!1515632 (= lt!1906264 (lemmaContainsTupThenGetReturnValue!1115 lt!1906265 (_1!30617 lt!1905836) (_2!30617 lt!1905836)))))

(assert (=> d!1515632 (= lt!1906265 (insertNoDuplicatedKeys!623 (toList!6016 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850)) (_1!30617 lt!1905836) (_2!30617 lt!1905836)))))

(assert (=> d!1515632 (= (+!2311 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1905836) lt!1906263)))

(declare-fun b!4743647 () Bool)

(declare-fun res!2010136 () Bool)

(assert (=> b!4743647 (=> (not res!2010136) (not e!2958922))))

(assert (=> b!4743647 (= res!2010136 (= (getValueByKey!2026 (toList!6016 lt!1906263) (_1!30617 lt!1905836)) (Some!12471 (_2!30617 lt!1905836))))))

(declare-fun b!4743648 () Bool)

(assert (=> b!4743648 (= e!2958922 (contains!16388 (toList!6016 lt!1906263) lt!1905836))))

(assert (= (and d!1515632 res!2010137) b!4743647))

(assert (= (and b!4743647 res!2010136) b!4743648))

(declare-fun m!5698571 () Bool)

(assert (=> d!1515632 m!5698571))

(declare-fun m!5698573 () Bool)

(assert (=> d!1515632 m!5698573))

(declare-fun m!5698575 () Bool)

(assert (=> d!1515632 m!5698575))

(declare-fun m!5698577 () Bool)

(assert (=> d!1515632 m!5698577))

(declare-fun m!5698579 () Bool)

(assert (=> b!4743647 m!5698579))

(declare-fun m!5698581 () Bool)

(assert (=> b!4743648 m!5698581))

(assert (=> b!4743291 d!1515632))

(declare-fun bs!1136401 () Bool)

(declare-fun b!4743656 () Bool)

(assert (= bs!1136401 (and b!4743656 b!4743634)))

(declare-fun lambda!219702 () Int)

(assert (=> bs!1136401 (= lambda!219702 lambda!219699)))

(declare-fun bs!1136402 () Bool)

(assert (= bs!1136402 (and b!4743656 b!4743474)))

(assert (=> bs!1136402 (= lambda!219702 lambda!219630)))

(declare-fun bs!1136403 () Bool)

(assert (= bs!1136403 (and b!4743656 b!4743471)))

(assert (=> bs!1136403 (= (= lt!1905850 lt!1906002) (= lambda!219702 lambda!219632))))

(declare-fun bs!1136404 () Bool)

(assert (= bs!1136404 (and b!4743656 d!1515584)))

(assert (=> bs!1136404 (not (= lambda!219702 lambda!219679))))

(declare-fun bs!1136405 () Bool)

(assert (= bs!1136405 (and b!4743656 d!1515512)))

(assert (=> bs!1136405 (= (= lt!1905850 lt!1906010) (= lambda!219702 lambda!219633))))

(declare-fun bs!1136406 () Bool)

(assert (= bs!1136406 (and b!4743656 d!1515586)))

(assert (=> bs!1136406 (not (= lambda!219702 lambda!219680))))

(declare-fun bs!1136407 () Bool)

(assert (= bs!1136407 (and b!4743656 b!4743637)))

(assert (=> bs!1136407 (= lambda!219702 lambda!219698)))

(assert (=> bs!1136403 (= lambda!219702 lambda!219631)))

(declare-fun bs!1136408 () Bool)

(assert (= bs!1136408 (and b!4743656 d!1515532)))

(assert (=> bs!1136408 (not (= lambda!219702 lambda!219635))))

(assert (=> bs!1136401 (= (= lt!1905850 lt!1906233) (= lambda!219702 lambda!219700))))

(declare-fun bs!1136409 () Bool)

(assert (= bs!1136409 (and b!4743656 d!1515502)))

(assert (=> bs!1136409 (not (= lambda!219702 lambda!219598))))

(declare-fun bs!1136410 () Bool)

(assert (= bs!1136410 (and b!4743656 d!1515626)))

(assert (=> bs!1136410 (= (= lt!1905850 lt!1906241) (= lambda!219702 lambda!219701))))

(assert (=> b!4743656 true))

(declare-fun bs!1136411 () Bool)

(declare-fun b!4743653 () Bool)

(assert (= bs!1136411 (and b!4743653 b!4743634)))

(declare-fun lambda!219703 () Int)

(assert (=> bs!1136411 (= lambda!219703 lambda!219699)))

(declare-fun bs!1136412 () Bool)

(assert (= bs!1136412 (and b!4743653 b!4743474)))

(assert (=> bs!1136412 (= lambda!219703 lambda!219630)))

(declare-fun bs!1136413 () Bool)

(assert (= bs!1136413 (and b!4743653 b!4743471)))

(assert (=> bs!1136413 (= (= lt!1905850 lt!1906002) (= lambda!219703 lambda!219632))))

(declare-fun bs!1136414 () Bool)

(assert (= bs!1136414 (and b!4743653 d!1515584)))

(assert (=> bs!1136414 (not (= lambda!219703 lambda!219679))))

(declare-fun bs!1136415 () Bool)

(assert (= bs!1136415 (and b!4743653 d!1515512)))

(assert (=> bs!1136415 (= (= lt!1905850 lt!1906010) (= lambda!219703 lambda!219633))))

(declare-fun bs!1136416 () Bool)

(assert (= bs!1136416 (and b!4743653 b!4743637)))

(assert (=> bs!1136416 (= lambda!219703 lambda!219698)))

(assert (=> bs!1136413 (= lambda!219703 lambda!219631)))

(declare-fun bs!1136417 () Bool)

(assert (= bs!1136417 (and b!4743653 d!1515532)))

(assert (=> bs!1136417 (not (= lambda!219703 lambda!219635))))

(assert (=> bs!1136411 (= (= lt!1905850 lt!1906233) (= lambda!219703 lambda!219700))))

(declare-fun bs!1136418 () Bool)

(assert (= bs!1136418 (and b!4743653 d!1515502)))

(assert (=> bs!1136418 (not (= lambda!219703 lambda!219598))))

(declare-fun bs!1136419 () Bool)

(assert (= bs!1136419 (and b!4743653 d!1515626)))

(assert (=> bs!1136419 (= (= lt!1905850 lt!1906241) (= lambda!219703 lambda!219701))))

(declare-fun bs!1136420 () Bool)

(assert (= bs!1136420 (and b!4743653 d!1515586)))

(assert (=> bs!1136420 (not (= lambda!219703 lambda!219680))))

(declare-fun bs!1136421 () Bool)

(assert (= bs!1136421 (and b!4743653 b!4743656)))

(assert (=> bs!1136421 (= lambda!219703 lambda!219702)))

(assert (=> b!4743653 true))

(declare-fun lambda!219704 () Int)

(declare-fun lt!1906274 () ListMap!5379)

(assert (=> bs!1136411 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219699))))

(assert (=> bs!1136412 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219630))))

(assert (=> bs!1136413 (= (= lt!1906274 lt!1906002) (= lambda!219704 lambda!219632))))

(assert (=> bs!1136414 (not (= lambda!219704 lambda!219679))))

(assert (=> bs!1136415 (= (= lt!1906274 lt!1906010) (= lambda!219704 lambda!219633))))

(assert (=> b!4743653 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219703))))

(assert (=> bs!1136416 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219698))))

(assert (=> bs!1136413 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219631))))

(assert (=> bs!1136417 (not (= lambda!219704 lambda!219635))))

(assert (=> bs!1136411 (= (= lt!1906274 lt!1906233) (= lambda!219704 lambda!219700))))

(assert (=> bs!1136418 (not (= lambda!219704 lambda!219598))))

(assert (=> bs!1136419 (= (= lt!1906274 lt!1906241) (= lambda!219704 lambda!219701))))

(assert (=> bs!1136420 (not (= lambda!219704 lambda!219680))))

(assert (=> bs!1136421 (= (= lt!1906274 lt!1905850) (= lambda!219704 lambda!219702))))

(assert (=> b!4743653 true))

(declare-fun bs!1136422 () Bool)

(declare-fun d!1515634 () Bool)

(assert (= bs!1136422 (and d!1515634 b!4743653)))

(declare-fun lambda!219705 () Int)

(declare-fun lt!1906282 () ListMap!5379)

(assert (=> bs!1136422 (= (= lt!1906282 lt!1906274) (= lambda!219705 lambda!219704))))

(declare-fun bs!1136423 () Bool)

(assert (= bs!1136423 (and d!1515634 b!4743634)))

(assert (=> bs!1136423 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219699))))

(declare-fun bs!1136424 () Bool)

(assert (= bs!1136424 (and d!1515634 b!4743474)))

(assert (=> bs!1136424 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219630))))

(declare-fun bs!1136425 () Bool)

(assert (= bs!1136425 (and d!1515634 b!4743471)))

(assert (=> bs!1136425 (= (= lt!1906282 lt!1906002) (= lambda!219705 lambda!219632))))

(declare-fun bs!1136426 () Bool)

(assert (= bs!1136426 (and d!1515634 d!1515584)))

(assert (=> bs!1136426 (not (= lambda!219705 lambda!219679))))

(declare-fun bs!1136427 () Bool)

(assert (= bs!1136427 (and d!1515634 d!1515512)))

(assert (=> bs!1136427 (= (= lt!1906282 lt!1906010) (= lambda!219705 lambda!219633))))

(assert (=> bs!1136422 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219703))))

(declare-fun bs!1136428 () Bool)

(assert (= bs!1136428 (and d!1515634 b!4743637)))

(assert (=> bs!1136428 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219698))))

(assert (=> bs!1136425 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219631))))

(declare-fun bs!1136429 () Bool)

(assert (= bs!1136429 (and d!1515634 d!1515532)))

(assert (=> bs!1136429 (not (= lambda!219705 lambda!219635))))

(assert (=> bs!1136423 (= (= lt!1906282 lt!1906233) (= lambda!219705 lambda!219700))))

(declare-fun bs!1136430 () Bool)

(assert (= bs!1136430 (and d!1515634 d!1515502)))

(assert (=> bs!1136430 (not (= lambda!219705 lambda!219598))))

(declare-fun bs!1136431 () Bool)

(assert (= bs!1136431 (and d!1515634 d!1515626)))

(assert (=> bs!1136431 (= (= lt!1906282 lt!1906241) (= lambda!219705 lambda!219701))))

(declare-fun bs!1136432 () Bool)

(assert (= bs!1136432 (and d!1515634 d!1515586)))

(assert (=> bs!1136432 (not (= lambda!219705 lambda!219680))))

(declare-fun bs!1136433 () Bool)

(assert (= bs!1136433 (and d!1515634 b!4743656)))

(assert (=> bs!1136433 (= (= lt!1906282 lt!1905850) (= lambda!219705 lambda!219702))))

(assert (=> d!1515634 true))

(declare-fun e!2958926 () ListMap!5379)

(assert (=> b!4743653 (= e!2958926 lt!1906274)))

(declare-fun lt!1906275 () ListMap!5379)

(assert (=> b!4743653 (= lt!1906275 (+!2311 lt!1905850 (h!59350 lt!1905838)))))

(assert (=> b!4743653 (= lt!1906274 (addToMapMapFromBucket!1493 (t!360391 lt!1905838) (+!2311 lt!1905850 (h!59350 lt!1905838))))))

(declare-fun lt!1906281 () Unit!133851)

(declare-fun call!331983 () Unit!133851)

(assert (=> b!4743653 (= lt!1906281 call!331983)))

(assert (=> b!4743653 (forall!11694 (toList!6016 lt!1905850) lambda!219703)))

(declare-fun lt!1906285 () Unit!133851)

(assert (=> b!4743653 (= lt!1906285 lt!1906281)))

(assert (=> b!4743653 (forall!11694 (toList!6016 lt!1906275) lambda!219704)))

(declare-fun lt!1906280 () Unit!133851)

(declare-fun Unit!133901 () Unit!133851)

(assert (=> b!4743653 (= lt!1906280 Unit!133901)))

(assert (=> b!4743653 (forall!11694 (t!360391 lt!1905838) lambda!219704)))

(declare-fun lt!1906268 () Unit!133851)

(declare-fun Unit!133902 () Unit!133851)

(assert (=> b!4743653 (= lt!1906268 Unit!133902)))

(declare-fun lt!1906286 () Unit!133851)

(declare-fun Unit!133903 () Unit!133851)

(assert (=> b!4743653 (= lt!1906286 Unit!133903)))

(declare-fun lt!1906273 () Unit!133851)

(assert (=> b!4743653 (= lt!1906273 (forallContained!3734 (toList!6016 lt!1906275) lambda!219704 (h!59350 lt!1905838)))))

(assert (=> b!4743653 (contains!16383 lt!1906275 (_1!30617 (h!59350 lt!1905838)))))

(declare-fun lt!1906279 () Unit!133851)

(declare-fun Unit!133905 () Unit!133851)

(assert (=> b!4743653 (= lt!1906279 Unit!133905)))

(assert (=> b!4743653 (contains!16383 lt!1906274 (_1!30617 (h!59350 lt!1905838)))))

(declare-fun lt!1906287 () Unit!133851)

(declare-fun Unit!133906 () Unit!133851)

(assert (=> b!4743653 (= lt!1906287 Unit!133906)))

(assert (=> b!4743653 (forall!11694 lt!1905838 lambda!219704)))

(declare-fun lt!1906270 () Unit!133851)

(declare-fun Unit!133907 () Unit!133851)

(assert (=> b!4743653 (= lt!1906270 Unit!133907)))

(assert (=> b!4743653 (forall!11694 (toList!6016 lt!1906275) lambda!219704)))

(declare-fun lt!1906277 () Unit!133851)

(declare-fun Unit!133908 () Unit!133851)

(assert (=> b!4743653 (= lt!1906277 Unit!133908)))

(declare-fun lt!1906269 () Unit!133851)

(declare-fun Unit!133909 () Unit!133851)

(assert (=> b!4743653 (= lt!1906269 Unit!133909)))

(declare-fun lt!1906284 () Unit!133851)

(assert (=> b!4743653 (= lt!1906284 (addForallContainsKeyThenBeforeAdding!832 lt!1905850 lt!1906274 (_1!30617 (h!59350 lt!1905838)) (_2!30617 (h!59350 lt!1905838))))))

(assert (=> b!4743653 (forall!11694 (toList!6016 lt!1905850) lambda!219704)))

(declare-fun lt!1906267 () Unit!133851)

(assert (=> b!4743653 (= lt!1906267 lt!1906284)))

(declare-fun call!331984 () Bool)

(assert (=> b!4743653 call!331984))

(declare-fun lt!1906278 () Unit!133851)

(declare-fun Unit!133910 () Unit!133851)

(assert (=> b!4743653 (= lt!1906278 Unit!133910)))

(declare-fun res!2010139 () Bool)

(declare-fun call!331982 () Bool)

(assert (=> b!4743653 (= res!2010139 call!331982)))

(declare-fun e!2958927 () Bool)

(assert (=> b!4743653 (=> (not res!2010139) (not e!2958927))))

(assert (=> b!4743653 e!2958927))

(declare-fun lt!1906272 () Unit!133851)

(declare-fun Unit!133911 () Unit!133851)

(assert (=> b!4743653 (= lt!1906272 Unit!133911)))

(declare-fun b!4743654 () Bool)

(assert (=> b!4743654 (= e!2958927 (forall!11694 (toList!6016 lt!1905850) lambda!219704))))

(declare-fun bm!331977 () Bool)

(declare-fun c!810285 () Bool)

(assert (=> bm!331977 (= call!331984 (forall!11694 (toList!6016 lt!1905850) (ite c!810285 lambda!219702 lambda!219704)))))

(declare-fun b!4743655 () Bool)

(declare-fun res!2010140 () Bool)

(declare-fun e!2958925 () Bool)

(assert (=> b!4743655 (=> (not res!2010140) (not e!2958925))))

(assert (=> b!4743655 (= res!2010140 (forall!11694 (toList!6016 lt!1905850) lambda!219705))))

(declare-fun bm!331978 () Bool)

(assert (=> bm!331978 (= call!331982 (forall!11694 (ite c!810285 (toList!6016 lt!1905850) lt!1905838) (ite c!810285 lambda!219702 lambda!219704)))))

(assert (=> d!1515634 e!2958925))

(declare-fun res!2010138 () Bool)

(assert (=> d!1515634 (=> (not res!2010138) (not e!2958925))))

(assert (=> d!1515634 (= res!2010138 (forall!11694 lt!1905838 lambda!219705))))

(assert (=> d!1515634 (= lt!1906282 e!2958926)))

(assert (=> d!1515634 (= c!810285 (is-Nil!52965 lt!1905838))))

(assert (=> d!1515634 (noDuplicateKeys!2063 lt!1905838)))

(assert (=> d!1515634 (= (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1906282)))

(declare-fun bm!331979 () Bool)

(assert (=> bm!331979 (= call!331983 (lemmaContainsAllItsOwnKeys!833 lt!1905850))))

(assert (=> b!4743656 (= e!2958926 lt!1905850)))

(declare-fun lt!1906283 () Unit!133851)

(assert (=> b!4743656 (= lt!1906283 call!331983)))

(assert (=> b!4743656 call!331982))

(declare-fun lt!1906276 () Unit!133851)

(assert (=> b!4743656 (= lt!1906276 lt!1906283)))

(assert (=> b!4743656 call!331984))

(declare-fun lt!1906271 () Unit!133851)

(declare-fun Unit!133912 () Unit!133851)

(assert (=> b!4743656 (= lt!1906271 Unit!133912)))

(declare-fun b!4743657 () Bool)

(assert (=> b!4743657 (= e!2958925 (invariantList!1548 (toList!6016 lt!1906282)))))

(assert (= (and d!1515634 c!810285) b!4743656))

(assert (= (and d!1515634 (not c!810285)) b!4743653))

(assert (= (and b!4743653 res!2010139) b!4743654))

(assert (= (or b!4743656 b!4743653) bm!331979))

(assert (= (or b!4743656 b!4743653) bm!331977))

(assert (= (or b!4743656 b!4743653) bm!331978))

(assert (= (and d!1515634 res!2010138) b!4743655))

(assert (= (and b!4743655 res!2010140) b!4743657))

(declare-fun m!5698607 () Bool)

(assert (=> b!4743654 m!5698607))

(declare-fun m!5698609 () Bool)

(assert (=> b!4743655 m!5698609))

(declare-fun m!5698611 () Bool)

(assert (=> b!4743657 m!5698611))

(declare-fun m!5698613 () Bool)

(assert (=> d!1515634 m!5698613))

(assert (=> d!1515634 m!5697973))

(declare-fun m!5698617 () Bool)

(assert (=> bm!331978 m!5698617))

(assert (=> bm!331979 m!5698185))

(declare-fun m!5698623 () Bool)

(assert (=> b!4743653 m!5698623))

(declare-fun m!5698627 () Bool)

(assert (=> b!4743653 m!5698627))

(declare-fun m!5698631 () Bool)

(assert (=> b!4743653 m!5698631))

(assert (=> b!4743653 m!5698607))

(declare-fun m!5698635 () Bool)

(assert (=> b!4743653 m!5698635))

(declare-fun m!5698637 () Bool)

(assert (=> b!4743653 m!5698637))

(declare-fun m!5698639 () Bool)

(assert (=> b!4743653 m!5698639))

(assert (=> b!4743653 m!5698631))

(declare-fun m!5698641 () Bool)

(assert (=> b!4743653 m!5698641))

(declare-fun m!5698643 () Bool)

(assert (=> b!4743653 m!5698643))

(assert (=> b!4743653 m!5698637))

(declare-fun m!5698645 () Bool)

(assert (=> b!4743653 m!5698645))

(declare-fun m!5698647 () Bool)

(assert (=> b!4743653 m!5698647))

(declare-fun m!5698649 () Bool)

(assert (=> bm!331977 m!5698649))

(assert (=> b!4743291 d!1515634))

(declare-fun d!1515642 () Bool)

(declare-fun e!2958942 () Bool)

(assert (=> d!1515642 e!2958942))

(declare-fun res!2010153 () Bool)

(assert (=> d!1515642 (=> (not res!2010153) (not e!2958942))))

(declare-fun lt!1906301 () ListMap!5379)

(assert (=> d!1515642 (= res!2010153 (contains!16383 lt!1906301 (_1!30617 (h!59350 oldBucket!34))))))

(declare-fun lt!1906303 () List!53089)

(assert (=> d!1515642 (= lt!1906301 (ListMap!5380 lt!1906303))))

(declare-fun lt!1906304 () Unit!133851)

(declare-fun lt!1906302 () Unit!133851)

(assert (=> d!1515642 (= lt!1906304 lt!1906302)))

(assert (=> d!1515642 (= (getValueByKey!2026 lt!1906303 (_1!30617 (h!59350 oldBucket!34))) (Some!12471 (_2!30617 (h!59350 oldBucket!34))))))

(assert (=> d!1515642 (= lt!1906302 (lemmaContainsTupThenGetReturnValue!1115 lt!1906303 (_1!30617 (h!59350 oldBucket!34)) (_2!30617 (h!59350 oldBucket!34))))))

(assert (=> d!1515642 (= lt!1906303 (insertNoDuplicatedKeys!623 (toList!6016 lt!1905832) (_1!30617 (h!59350 oldBucket!34)) (_2!30617 (h!59350 oldBucket!34))))))

(assert (=> d!1515642 (= (+!2311 lt!1905832 (h!59350 oldBucket!34)) lt!1906301)))

(declare-fun b!4743677 () Bool)

(declare-fun res!2010152 () Bool)

(assert (=> b!4743677 (=> (not res!2010152) (not e!2958942))))

(assert (=> b!4743677 (= res!2010152 (= (getValueByKey!2026 (toList!6016 lt!1906301) (_1!30617 (h!59350 oldBucket!34))) (Some!12471 (_2!30617 (h!59350 oldBucket!34)))))))

(declare-fun b!4743678 () Bool)

(assert (=> b!4743678 (= e!2958942 (contains!16388 (toList!6016 lt!1906301) (h!59350 oldBucket!34)))))

(assert (= (and d!1515642 res!2010153) b!4743677))

(assert (= (and b!4743677 res!2010152) b!4743678))

(declare-fun m!5698651 () Bool)

(assert (=> d!1515642 m!5698651))

(declare-fun m!5698653 () Bool)

(assert (=> d!1515642 m!5698653))

(declare-fun m!5698655 () Bool)

(assert (=> d!1515642 m!5698655))

(declare-fun m!5698659 () Bool)

(assert (=> d!1515642 m!5698659))

(declare-fun m!5698663 () Bool)

(assert (=> b!4743677 m!5698663))

(declare-fun m!5698667 () Bool)

(assert (=> b!4743678 m!5698667))

(assert (=> b!4743291 d!1515642))

(declare-fun bs!1136438 () Bool)

(declare-fun b!4743682 () Bool)

(assert (= bs!1136438 (and b!4743682 b!4743634)))

(declare-fun lambda!219707 () Int)

(assert (=> bs!1136438 (= lambda!219707 lambda!219699)))

(declare-fun bs!1136439 () Bool)

(assert (= bs!1136439 (and b!4743682 b!4743474)))

(assert (=> bs!1136439 (= lambda!219707 lambda!219630)))

(declare-fun bs!1136440 () Bool)

(assert (= bs!1136440 (and b!4743682 b!4743471)))

(assert (=> bs!1136440 (= (= lt!1905850 lt!1906002) (= lambda!219707 lambda!219632))))

(declare-fun bs!1136441 () Bool)

(assert (= bs!1136441 (and b!4743682 d!1515584)))

(assert (=> bs!1136441 (not (= lambda!219707 lambda!219679))))

(declare-fun bs!1136442 () Bool)

(assert (= bs!1136442 (and b!4743682 d!1515512)))

(assert (=> bs!1136442 (= (= lt!1905850 lt!1906010) (= lambda!219707 lambda!219633))))

(declare-fun bs!1136443 () Bool)

(assert (= bs!1136443 (and b!4743682 b!4743653)))

(assert (=> bs!1136443 (= lambda!219707 lambda!219703)))

(declare-fun bs!1136444 () Bool)

(assert (= bs!1136444 (and b!4743682 d!1515634)))

(assert (=> bs!1136444 (= (= lt!1905850 lt!1906282) (= lambda!219707 lambda!219705))))

(assert (=> bs!1136443 (= (= lt!1905850 lt!1906274) (= lambda!219707 lambda!219704))))

(declare-fun bs!1136445 () Bool)

(assert (= bs!1136445 (and b!4743682 b!4743637)))

(assert (=> bs!1136445 (= lambda!219707 lambda!219698)))

(assert (=> bs!1136440 (= lambda!219707 lambda!219631)))

(declare-fun bs!1136446 () Bool)

(assert (= bs!1136446 (and b!4743682 d!1515532)))

(assert (=> bs!1136446 (not (= lambda!219707 lambda!219635))))

(assert (=> bs!1136438 (= (= lt!1905850 lt!1906233) (= lambda!219707 lambda!219700))))

(declare-fun bs!1136447 () Bool)

(assert (= bs!1136447 (and b!4743682 d!1515502)))

(assert (=> bs!1136447 (not (= lambda!219707 lambda!219598))))

(declare-fun bs!1136448 () Bool)

(assert (= bs!1136448 (and b!4743682 d!1515626)))

(assert (=> bs!1136448 (= (= lt!1905850 lt!1906241) (= lambda!219707 lambda!219701))))

(declare-fun bs!1136449 () Bool)

(assert (= bs!1136449 (and b!4743682 d!1515586)))

(assert (=> bs!1136449 (not (= lambda!219707 lambda!219680))))

(declare-fun bs!1136450 () Bool)

(assert (= bs!1136450 (and b!4743682 b!4743656)))

(assert (=> bs!1136450 (= lambda!219707 lambda!219702)))

(assert (=> b!4743682 true))

(declare-fun bs!1136451 () Bool)

(declare-fun b!4743679 () Bool)

(assert (= bs!1136451 (and b!4743679 b!4743634)))

(declare-fun lambda!219708 () Int)

(assert (=> bs!1136451 (= lambda!219708 lambda!219699)))

(declare-fun bs!1136452 () Bool)

(assert (= bs!1136452 (and b!4743679 b!4743474)))

(assert (=> bs!1136452 (= lambda!219708 lambda!219630)))

(declare-fun bs!1136453 () Bool)

(assert (= bs!1136453 (and b!4743679 b!4743471)))

(assert (=> bs!1136453 (= (= lt!1905850 lt!1906002) (= lambda!219708 lambda!219632))))

(declare-fun bs!1136454 () Bool)

(assert (= bs!1136454 (and b!4743679 d!1515584)))

(assert (=> bs!1136454 (not (= lambda!219708 lambda!219679))))

(declare-fun bs!1136455 () Bool)

(assert (= bs!1136455 (and b!4743679 d!1515512)))

(assert (=> bs!1136455 (= (= lt!1905850 lt!1906010) (= lambda!219708 lambda!219633))))

(declare-fun bs!1136456 () Bool)

(assert (= bs!1136456 (and b!4743679 b!4743653)))

(assert (=> bs!1136456 (= lambda!219708 lambda!219703)))

(declare-fun bs!1136457 () Bool)

(assert (= bs!1136457 (and b!4743679 b!4743682)))

(assert (=> bs!1136457 (= lambda!219708 lambda!219707)))

(declare-fun bs!1136458 () Bool)

(assert (= bs!1136458 (and b!4743679 d!1515634)))

(assert (=> bs!1136458 (= (= lt!1905850 lt!1906282) (= lambda!219708 lambda!219705))))

(assert (=> bs!1136456 (= (= lt!1905850 lt!1906274) (= lambda!219708 lambda!219704))))

(declare-fun bs!1136459 () Bool)

(assert (= bs!1136459 (and b!4743679 b!4743637)))

(assert (=> bs!1136459 (= lambda!219708 lambda!219698)))

(assert (=> bs!1136453 (= lambda!219708 lambda!219631)))

(declare-fun bs!1136460 () Bool)

(assert (= bs!1136460 (and b!4743679 d!1515532)))

(assert (=> bs!1136460 (not (= lambda!219708 lambda!219635))))

(assert (=> bs!1136451 (= (= lt!1905850 lt!1906233) (= lambda!219708 lambda!219700))))

(declare-fun bs!1136461 () Bool)

(assert (= bs!1136461 (and b!4743679 d!1515502)))

(assert (=> bs!1136461 (not (= lambda!219708 lambda!219598))))

(declare-fun bs!1136462 () Bool)

(assert (= bs!1136462 (and b!4743679 d!1515626)))

(assert (=> bs!1136462 (= (= lt!1905850 lt!1906241) (= lambda!219708 lambda!219701))))

(declare-fun bs!1136463 () Bool)

(assert (= bs!1136463 (and b!4743679 d!1515586)))

(assert (=> bs!1136463 (not (= lambda!219708 lambda!219680))))

(declare-fun bs!1136464 () Bool)

(assert (= bs!1136464 (and b!4743679 b!4743656)))

(assert (=> bs!1136464 (= lambda!219708 lambda!219702)))

(assert (=> b!4743679 true))

(declare-fun lt!1906312 () ListMap!5379)

(declare-fun lambda!219709 () Int)

(assert (=> bs!1136451 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219699))))

(assert (=> bs!1136452 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219630))))

(assert (=> bs!1136453 (= (= lt!1906312 lt!1906002) (= lambda!219709 lambda!219632))))

(assert (=> bs!1136454 (not (= lambda!219709 lambda!219679))))

(assert (=> bs!1136455 (= (= lt!1906312 lt!1906010) (= lambda!219709 lambda!219633))))

(assert (=> bs!1136457 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219707))))

(assert (=> bs!1136458 (= (= lt!1906312 lt!1906282) (= lambda!219709 lambda!219705))))

(assert (=> bs!1136456 (= (= lt!1906312 lt!1906274) (= lambda!219709 lambda!219704))))

(assert (=> bs!1136459 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219698))))

(assert (=> bs!1136453 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219631))))

(assert (=> bs!1136460 (not (= lambda!219709 lambda!219635))))

(assert (=> bs!1136451 (= (= lt!1906312 lt!1906233) (= lambda!219709 lambda!219700))))

(assert (=> bs!1136456 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219703))))

(assert (=> b!4743679 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219708))))

(assert (=> bs!1136461 (not (= lambda!219709 lambda!219598))))

(assert (=> bs!1136462 (= (= lt!1906312 lt!1906241) (= lambda!219709 lambda!219701))))

(assert (=> bs!1136463 (not (= lambda!219709 lambda!219680))))

(assert (=> bs!1136464 (= (= lt!1906312 lt!1905850) (= lambda!219709 lambda!219702))))

(assert (=> b!4743679 true))

(declare-fun bs!1136465 () Bool)

(declare-fun d!1515644 () Bool)

(assert (= bs!1136465 (and d!1515644 b!4743474)))

(declare-fun lambda!219710 () Int)

(declare-fun lt!1906320 () ListMap!5379)

(assert (=> bs!1136465 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219630))))

(declare-fun bs!1136466 () Bool)

(assert (= bs!1136466 (and d!1515644 b!4743471)))

(assert (=> bs!1136466 (= (= lt!1906320 lt!1906002) (= lambda!219710 lambda!219632))))

(declare-fun bs!1136467 () Bool)

(assert (= bs!1136467 (and d!1515644 d!1515584)))

(assert (=> bs!1136467 (not (= lambda!219710 lambda!219679))))

(declare-fun bs!1136468 () Bool)

(assert (= bs!1136468 (and d!1515644 d!1515512)))

(assert (=> bs!1136468 (= (= lt!1906320 lt!1906010) (= lambda!219710 lambda!219633))))

(declare-fun bs!1136469 () Bool)

(assert (= bs!1136469 (and d!1515644 b!4743682)))

(assert (=> bs!1136469 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219707))))

(declare-fun bs!1136470 () Bool)

(assert (= bs!1136470 (and d!1515644 d!1515634)))

(assert (=> bs!1136470 (= (= lt!1906320 lt!1906282) (= lambda!219710 lambda!219705))))

(declare-fun bs!1136471 () Bool)

(assert (= bs!1136471 (and d!1515644 b!4743653)))

(assert (=> bs!1136471 (= (= lt!1906320 lt!1906274) (= lambda!219710 lambda!219704))))

(declare-fun bs!1136472 () Bool)

(assert (= bs!1136472 (and d!1515644 b!4743634)))

(assert (=> bs!1136472 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219699))))

(declare-fun bs!1136473 () Bool)

(assert (= bs!1136473 (and d!1515644 b!4743679)))

(assert (=> bs!1136473 (= (= lt!1906320 lt!1906312) (= lambda!219710 lambda!219709))))

(declare-fun bs!1136474 () Bool)

(assert (= bs!1136474 (and d!1515644 b!4743637)))

(assert (=> bs!1136474 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219698))))

(assert (=> bs!1136466 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219631))))

(declare-fun bs!1136475 () Bool)

(assert (= bs!1136475 (and d!1515644 d!1515532)))

(assert (=> bs!1136475 (not (= lambda!219710 lambda!219635))))

(assert (=> bs!1136472 (= (= lt!1906320 lt!1906233) (= lambda!219710 lambda!219700))))

(assert (=> bs!1136471 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219703))))

(assert (=> bs!1136473 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219708))))

(declare-fun bs!1136476 () Bool)

(assert (= bs!1136476 (and d!1515644 d!1515502)))

(assert (=> bs!1136476 (not (= lambda!219710 lambda!219598))))

(declare-fun bs!1136477 () Bool)

(assert (= bs!1136477 (and d!1515644 d!1515626)))

(assert (=> bs!1136477 (= (= lt!1906320 lt!1906241) (= lambda!219710 lambda!219701))))

(declare-fun bs!1136478 () Bool)

(assert (= bs!1136478 (and d!1515644 d!1515586)))

(assert (=> bs!1136478 (not (= lambda!219710 lambda!219680))))

(declare-fun bs!1136479 () Bool)

(assert (= bs!1136479 (and d!1515644 b!4743656)))

(assert (=> bs!1136479 (= (= lt!1906320 lt!1905850) (= lambda!219710 lambda!219702))))

(assert (=> d!1515644 true))

(declare-fun e!2958944 () ListMap!5379)

(assert (=> b!4743679 (= e!2958944 lt!1906312)))

(declare-fun lt!1906313 () ListMap!5379)

(assert (=> b!4743679 (= lt!1906313 (+!2311 lt!1905850 (h!59350 (Cons!52965 lt!1905830 lt!1905838))))))

(assert (=> b!4743679 (= lt!1906312 (addToMapMapFromBucket!1493 (t!360391 (Cons!52965 lt!1905830 lt!1905838)) (+!2311 lt!1905850 (h!59350 (Cons!52965 lt!1905830 lt!1905838)))))))

(declare-fun lt!1906319 () Unit!133851)

(declare-fun call!331987 () Unit!133851)

(assert (=> b!4743679 (= lt!1906319 call!331987)))

(assert (=> b!4743679 (forall!11694 (toList!6016 lt!1905850) lambda!219708)))

(declare-fun lt!1906323 () Unit!133851)

(assert (=> b!4743679 (= lt!1906323 lt!1906319)))

(assert (=> b!4743679 (forall!11694 (toList!6016 lt!1906313) lambda!219709)))

(declare-fun lt!1906318 () Unit!133851)

(declare-fun Unit!133922 () Unit!133851)

(assert (=> b!4743679 (= lt!1906318 Unit!133922)))

(assert (=> b!4743679 (forall!11694 (t!360391 (Cons!52965 lt!1905830 lt!1905838)) lambda!219709)))

(declare-fun lt!1906306 () Unit!133851)

(declare-fun Unit!133923 () Unit!133851)

(assert (=> b!4743679 (= lt!1906306 Unit!133923)))

(declare-fun lt!1906324 () Unit!133851)

(declare-fun Unit!133924 () Unit!133851)

(assert (=> b!4743679 (= lt!1906324 Unit!133924)))

(declare-fun lt!1906311 () Unit!133851)

(assert (=> b!4743679 (= lt!1906311 (forallContained!3734 (toList!6016 lt!1906313) lambda!219709 (h!59350 (Cons!52965 lt!1905830 lt!1905838))))))

(assert (=> b!4743679 (contains!16383 lt!1906313 (_1!30617 (h!59350 (Cons!52965 lt!1905830 lt!1905838))))))

(declare-fun lt!1906317 () Unit!133851)

(declare-fun Unit!133926 () Unit!133851)

(assert (=> b!4743679 (= lt!1906317 Unit!133926)))

(assert (=> b!4743679 (contains!16383 lt!1906312 (_1!30617 (h!59350 (Cons!52965 lt!1905830 lt!1905838))))))

(declare-fun lt!1906325 () Unit!133851)

(declare-fun Unit!133927 () Unit!133851)

(assert (=> b!4743679 (= lt!1906325 Unit!133927)))

(assert (=> b!4743679 (forall!11694 (Cons!52965 lt!1905830 lt!1905838) lambda!219709)))

(declare-fun lt!1906308 () Unit!133851)

(declare-fun Unit!133928 () Unit!133851)

(assert (=> b!4743679 (= lt!1906308 Unit!133928)))

(assert (=> b!4743679 (forall!11694 (toList!6016 lt!1906313) lambda!219709)))

(declare-fun lt!1906315 () Unit!133851)

(declare-fun Unit!133929 () Unit!133851)

(assert (=> b!4743679 (= lt!1906315 Unit!133929)))

(declare-fun lt!1906307 () Unit!133851)

(declare-fun Unit!133931 () Unit!133851)

(assert (=> b!4743679 (= lt!1906307 Unit!133931)))

(declare-fun lt!1906322 () Unit!133851)

(assert (=> b!4743679 (= lt!1906322 (addForallContainsKeyThenBeforeAdding!832 lt!1905850 lt!1906312 (_1!30617 (h!59350 (Cons!52965 lt!1905830 lt!1905838))) (_2!30617 (h!59350 (Cons!52965 lt!1905830 lt!1905838)))))))

(assert (=> b!4743679 (forall!11694 (toList!6016 lt!1905850) lambda!219709)))

(declare-fun lt!1906305 () Unit!133851)

(assert (=> b!4743679 (= lt!1906305 lt!1906322)))

(declare-fun call!331988 () Bool)

(assert (=> b!4743679 call!331988))

(declare-fun lt!1906316 () Unit!133851)

(declare-fun Unit!133932 () Unit!133851)

(assert (=> b!4743679 (= lt!1906316 Unit!133932)))

(declare-fun res!2010155 () Bool)

(declare-fun call!331986 () Bool)

(assert (=> b!4743679 (= res!2010155 call!331986)))

(declare-fun e!2958945 () Bool)

(assert (=> b!4743679 (=> (not res!2010155) (not e!2958945))))

(assert (=> b!4743679 e!2958945))

(declare-fun lt!1906310 () Unit!133851)

(declare-fun Unit!133933 () Unit!133851)

(assert (=> b!4743679 (= lt!1906310 Unit!133933)))

(declare-fun b!4743680 () Bool)

(assert (=> b!4743680 (= e!2958945 (forall!11694 (toList!6016 lt!1905850) lambda!219709))))

(declare-fun c!810290 () Bool)

(declare-fun bm!331981 () Bool)

(assert (=> bm!331981 (= call!331988 (forall!11694 (toList!6016 lt!1905850) (ite c!810290 lambda!219707 lambda!219709)))))

(declare-fun b!4743681 () Bool)

(declare-fun res!2010156 () Bool)

(declare-fun e!2958943 () Bool)

(assert (=> b!4743681 (=> (not res!2010156) (not e!2958943))))

(assert (=> b!4743681 (= res!2010156 (forall!11694 (toList!6016 lt!1905850) lambda!219710))))

(declare-fun bm!331982 () Bool)

(assert (=> bm!331982 (= call!331986 (forall!11694 (ite c!810290 (toList!6016 lt!1905850) (Cons!52965 lt!1905830 lt!1905838)) (ite c!810290 lambda!219707 lambda!219709)))))

(assert (=> d!1515644 e!2958943))

(declare-fun res!2010154 () Bool)

(assert (=> d!1515644 (=> (not res!2010154) (not e!2958943))))

(assert (=> d!1515644 (= res!2010154 (forall!11694 (Cons!52965 lt!1905830 lt!1905838) lambda!219710))))

(assert (=> d!1515644 (= lt!1906320 e!2958944)))

(assert (=> d!1515644 (= c!810290 (is-Nil!52965 (Cons!52965 lt!1905830 lt!1905838)))))

(assert (=> d!1515644 (noDuplicateKeys!2063 (Cons!52965 lt!1905830 lt!1905838))))

(assert (=> d!1515644 (= (addToMapMapFromBucket!1493 (Cons!52965 lt!1905830 lt!1905838) lt!1905850) lt!1906320)))

(declare-fun bm!331983 () Bool)

(assert (=> bm!331983 (= call!331987 (lemmaContainsAllItsOwnKeys!833 lt!1905850))))

(assert (=> b!4743682 (= e!2958944 lt!1905850)))

(declare-fun lt!1906321 () Unit!133851)

(assert (=> b!4743682 (= lt!1906321 call!331987)))

(assert (=> b!4743682 call!331986))

(declare-fun lt!1906314 () Unit!133851)

(assert (=> b!4743682 (= lt!1906314 lt!1906321)))

(assert (=> b!4743682 call!331988))

(declare-fun lt!1906309 () Unit!133851)

(declare-fun Unit!133934 () Unit!133851)

(assert (=> b!4743682 (= lt!1906309 Unit!133934)))

(declare-fun b!4743683 () Bool)

(assert (=> b!4743683 (= e!2958943 (invariantList!1548 (toList!6016 lt!1906320)))))

(assert (= (and d!1515644 c!810290) b!4743682))

(assert (= (and d!1515644 (not c!810290)) b!4743679))

(assert (= (and b!4743679 res!2010155) b!4743680))

(assert (= (or b!4743682 b!4743679) bm!331983))

(assert (= (or b!4743682 b!4743679) bm!331981))

(assert (= (or b!4743682 b!4743679) bm!331982))

(assert (= (and d!1515644 res!2010154) b!4743681))

(assert (= (and b!4743681 res!2010156) b!4743683))

(declare-fun m!5698671 () Bool)

(assert (=> b!4743680 m!5698671))

(declare-fun m!5698673 () Bool)

(assert (=> b!4743681 m!5698673))

(declare-fun m!5698675 () Bool)

(assert (=> b!4743683 m!5698675))

(declare-fun m!5698677 () Bool)

(assert (=> d!1515644 m!5698677))

(declare-fun m!5698679 () Bool)

(assert (=> d!1515644 m!5698679))

(declare-fun m!5698681 () Bool)

(assert (=> bm!331982 m!5698681))

(assert (=> bm!331983 m!5698185))

(declare-fun m!5698683 () Bool)

(assert (=> b!4743679 m!5698683))

(declare-fun m!5698685 () Bool)

(assert (=> b!4743679 m!5698685))

(declare-fun m!5698687 () Bool)

(assert (=> b!4743679 m!5698687))

(assert (=> b!4743679 m!5698671))

(declare-fun m!5698689 () Bool)

(assert (=> b!4743679 m!5698689))

(declare-fun m!5698691 () Bool)

(assert (=> b!4743679 m!5698691))

(declare-fun m!5698693 () Bool)

(assert (=> b!4743679 m!5698693))

(assert (=> b!4743679 m!5698687))

(declare-fun m!5698695 () Bool)

(assert (=> b!4743679 m!5698695))

(declare-fun m!5698697 () Bool)

(assert (=> b!4743679 m!5698697))

(assert (=> b!4743679 m!5698691))

(declare-fun m!5698699 () Bool)

(assert (=> b!4743679 m!5698699))

(declare-fun m!5698701 () Bool)

(assert (=> b!4743679 m!5698701))

(declare-fun m!5698703 () Bool)

(assert (=> bm!331981 m!5698703))

(assert (=> b!4743291 d!1515644))

(declare-fun d!1515648 () Bool)

(declare-fun e!2958950 () Bool)

(assert (=> d!1515648 e!2958950))

(declare-fun res!2010157 () Bool)

(assert (=> d!1515648 (=> res!2010157 e!2958950)))

(declare-fun e!2958948 () Bool)

(assert (=> d!1515648 (= res!2010157 e!2958948)))

(declare-fun res!2010159 () Bool)

(assert (=> d!1515648 (=> (not res!2010159) (not e!2958948))))

(declare-fun lt!1906326 () Bool)

(assert (=> d!1515648 (= res!2010159 (not lt!1906326))))

(declare-fun lt!1906328 () Bool)

(assert (=> d!1515648 (= lt!1906326 lt!1906328)))

(declare-fun lt!1906327 () Unit!133851)

(declare-fun e!2958951 () Unit!133851)

(assert (=> d!1515648 (= lt!1906327 e!2958951)))

(declare-fun c!810292 () Bool)

(assert (=> d!1515648 (= c!810292 lt!1906328)))

(assert (=> d!1515648 (= lt!1906328 (containsKey!3486 (toList!6016 (extractMap!2089 lt!1905845)) key!4653))))

(assert (=> d!1515648 (= (contains!16383 (extractMap!2089 lt!1905845) key!4653) lt!1906326)))

(declare-fun b!4743684 () Bool)

(assert (=> b!4743684 (= e!2958948 (not (contains!16387 (keys!19062 (extractMap!2089 lt!1905845)) key!4653)))))

(declare-fun b!4743685 () Bool)

(declare-fun e!2958947 () List!53093)

(assert (=> b!4743685 (= e!2958947 (keys!19062 (extractMap!2089 lt!1905845)))))

(declare-fun b!4743686 () Bool)

(declare-fun e!2958949 () Bool)

(assert (=> b!4743686 (= e!2958949 (contains!16387 (keys!19062 (extractMap!2089 lt!1905845)) key!4653))))

(declare-fun b!4743687 () Bool)

(declare-fun e!2958946 () Unit!133851)

(declare-fun Unit!133935 () Unit!133851)

(assert (=> b!4743687 (= e!2958946 Unit!133935)))

(declare-fun b!4743688 () Bool)

(declare-fun lt!1906332 () Unit!133851)

(assert (=> b!4743688 (= e!2958951 lt!1906332)))

(declare-fun lt!1906331 () Unit!133851)

(assert (=> b!4743688 (= lt!1906331 (lemmaContainsKeyImpliesGetValueByKeyDefined!1917 (toList!6016 (extractMap!2089 lt!1905845)) key!4653))))

(assert (=> b!4743688 (isDefined!9726 (getValueByKey!2026 (toList!6016 (extractMap!2089 lt!1905845)) key!4653))))

(declare-fun lt!1906333 () Unit!133851)

(assert (=> b!4743688 (= lt!1906333 lt!1906331)))

(assert (=> b!4743688 (= lt!1906332 (lemmaInListThenGetKeysListContains!982 (toList!6016 (extractMap!2089 lt!1905845)) key!4653))))

(declare-fun call!331989 () Bool)

(assert (=> b!4743688 call!331989))

(declare-fun b!4743689 () Bool)

(assert (=> b!4743689 (= e!2958950 e!2958949)))

(declare-fun res!2010158 () Bool)

(assert (=> b!4743689 (=> (not res!2010158) (not e!2958949))))

(assert (=> b!4743689 (= res!2010158 (isDefined!9726 (getValueByKey!2026 (toList!6016 (extractMap!2089 lt!1905845)) key!4653)))))

(declare-fun bm!331984 () Bool)

(assert (=> bm!331984 (= call!331989 (contains!16387 e!2958947 key!4653))))

(declare-fun c!810291 () Bool)

(assert (=> bm!331984 (= c!810291 c!810292)))

(declare-fun b!4743690 () Bool)

(assert (=> b!4743690 (= e!2958947 (getKeysList!987 (toList!6016 (extractMap!2089 lt!1905845))))))

(declare-fun b!4743691 () Bool)

(assert (=> b!4743691 false))

(declare-fun lt!1906330 () Unit!133851)

(declare-fun lt!1906329 () Unit!133851)

(assert (=> b!4743691 (= lt!1906330 lt!1906329)))

(assert (=> b!4743691 (containsKey!3486 (toList!6016 (extractMap!2089 lt!1905845)) key!4653)))

(assert (=> b!4743691 (= lt!1906329 (lemmaInGetKeysListThenContainsKey!986 (toList!6016 (extractMap!2089 lt!1905845)) key!4653))))

(declare-fun Unit!133938 () Unit!133851)

(assert (=> b!4743691 (= e!2958946 Unit!133938)))

(declare-fun b!4743692 () Bool)

(assert (=> b!4743692 (= e!2958951 e!2958946)))

(declare-fun c!810293 () Bool)

(assert (=> b!4743692 (= c!810293 call!331989)))

(assert (= (and d!1515648 c!810292) b!4743688))

(assert (= (and d!1515648 (not c!810292)) b!4743692))

(assert (= (and b!4743692 c!810293) b!4743691))

(assert (= (and b!4743692 (not c!810293)) b!4743687))

(assert (= (or b!4743688 b!4743692) bm!331984))

(assert (= (and bm!331984 c!810291) b!4743690))

(assert (= (and bm!331984 (not c!810291)) b!4743685))

(assert (= (and d!1515648 res!2010159) b!4743684))

(assert (= (and d!1515648 (not res!2010157)) b!4743689))

(assert (= (and b!4743689 res!2010158) b!4743686))

(declare-fun m!5698705 () Bool)

(assert (=> b!4743688 m!5698705))

(declare-fun m!5698707 () Bool)

(assert (=> b!4743688 m!5698707))

(assert (=> b!4743688 m!5698707))

(declare-fun m!5698709 () Bool)

(assert (=> b!4743688 m!5698709))

(declare-fun m!5698711 () Bool)

(assert (=> b!4743688 m!5698711))

(declare-fun m!5698713 () Bool)

(assert (=> b!4743691 m!5698713))

(declare-fun m!5698715 () Bool)

(assert (=> b!4743691 m!5698715))

(assert (=> b!4743689 m!5698707))

(assert (=> b!4743689 m!5698707))

(assert (=> b!4743689 m!5698709))

(declare-fun m!5698717 () Bool)

(assert (=> b!4743690 m!5698717))

(assert (=> b!4743684 m!5697901))

(declare-fun m!5698719 () Bool)

(assert (=> b!4743684 m!5698719))

(assert (=> b!4743684 m!5698719))

(declare-fun m!5698721 () Bool)

(assert (=> b!4743684 m!5698721))

(assert (=> b!4743685 m!5697901))

(assert (=> b!4743685 m!5698719))

(assert (=> b!4743686 m!5697901))

(assert (=> b!4743686 m!5698719))

(assert (=> b!4743686 m!5698719))

(assert (=> b!4743686 m!5698721))

(declare-fun m!5698723 () Bool)

(assert (=> bm!331984 m!5698723))

(assert (=> d!1515648 m!5698713))

(assert (=> b!4743291 d!1515648))

(declare-fun bs!1136480 () Bool)

(declare-fun b!4743696 () Bool)

(assert (= bs!1136480 (and b!4743696 b!4743474)))

(declare-fun lambda!219713 () Int)

(assert (=> bs!1136480 (= lambda!219713 lambda!219630)))

(declare-fun bs!1136482 () Bool)

(assert (= bs!1136482 (and b!4743696 d!1515644)))

(assert (=> bs!1136482 (= (= lt!1905850 lt!1906320) (= lambda!219713 lambda!219710))))

(declare-fun bs!1136484 () Bool)

(assert (= bs!1136484 (and b!4743696 b!4743471)))

(assert (=> bs!1136484 (= (= lt!1905850 lt!1906002) (= lambda!219713 lambda!219632))))

(declare-fun bs!1136486 () Bool)

(assert (= bs!1136486 (and b!4743696 d!1515584)))

(assert (=> bs!1136486 (not (= lambda!219713 lambda!219679))))

(declare-fun bs!1136488 () Bool)

(assert (= bs!1136488 (and b!4743696 d!1515512)))

(assert (=> bs!1136488 (= (= lt!1905850 lt!1906010) (= lambda!219713 lambda!219633))))

(declare-fun bs!1136489 () Bool)

(assert (= bs!1136489 (and b!4743696 b!4743682)))

(assert (=> bs!1136489 (= lambda!219713 lambda!219707)))

(declare-fun bs!1136490 () Bool)

(assert (= bs!1136490 (and b!4743696 d!1515634)))

(assert (=> bs!1136490 (= (= lt!1905850 lt!1906282) (= lambda!219713 lambda!219705))))

(declare-fun bs!1136491 () Bool)

(assert (= bs!1136491 (and b!4743696 b!4743653)))

(assert (=> bs!1136491 (= (= lt!1905850 lt!1906274) (= lambda!219713 lambda!219704))))

(declare-fun bs!1136493 () Bool)

(assert (= bs!1136493 (and b!4743696 b!4743634)))

(assert (=> bs!1136493 (= lambda!219713 lambda!219699)))

(declare-fun bs!1136494 () Bool)

(assert (= bs!1136494 (and b!4743696 b!4743679)))

(assert (=> bs!1136494 (= (= lt!1905850 lt!1906312) (= lambda!219713 lambda!219709))))

(declare-fun bs!1136495 () Bool)

(assert (= bs!1136495 (and b!4743696 b!4743637)))

(assert (=> bs!1136495 (= lambda!219713 lambda!219698)))

(assert (=> bs!1136484 (= lambda!219713 lambda!219631)))

(declare-fun bs!1136496 () Bool)

(assert (= bs!1136496 (and b!4743696 d!1515532)))

(assert (=> bs!1136496 (not (= lambda!219713 lambda!219635))))

(assert (=> bs!1136493 (= (= lt!1905850 lt!1906233) (= lambda!219713 lambda!219700))))

(assert (=> bs!1136491 (= lambda!219713 lambda!219703)))

(assert (=> bs!1136494 (= lambda!219713 lambda!219708)))

(declare-fun bs!1136497 () Bool)

(assert (= bs!1136497 (and b!4743696 d!1515502)))

(assert (=> bs!1136497 (not (= lambda!219713 lambda!219598))))

(declare-fun bs!1136498 () Bool)

(assert (= bs!1136498 (and b!4743696 d!1515626)))

(assert (=> bs!1136498 (= (= lt!1905850 lt!1906241) (= lambda!219713 lambda!219701))))

(declare-fun bs!1136499 () Bool)

(assert (= bs!1136499 (and b!4743696 d!1515586)))

(assert (=> bs!1136499 (not (= lambda!219713 lambda!219680))))

(declare-fun bs!1136500 () Bool)

(assert (= bs!1136500 (and b!4743696 b!4743656)))

(assert (=> bs!1136500 (= lambda!219713 lambda!219702)))

(assert (=> b!4743696 true))

(declare-fun bs!1136501 () Bool)

(declare-fun b!4743693 () Bool)

(assert (= bs!1136501 (and b!4743693 b!4743474)))

(declare-fun lambda!219715 () Int)

(assert (=> bs!1136501 (= lambda!219715 lambda!219630)))

(declare-fun bs!1136502 () Bool)

(assert (= bs!1136502 (and b!4743693 d!1515644)))

(assert (=> bs!1136502 (= (= lt!1905850 lt!1906320) (= lambda!219715 lambda!219710))))

(declare-fun bs!1136503 () Bool)

(assert (= bs!1136503 (and b!4743693 b!4743471)))

(assert (=> bs!1136503 (= (= lt!1905850 lt!1906002) (= lambda!219715 lambda!219632))))

(declare-fun bs!1136504 () Bool)

(assert (= bs!1136504 (and b!4743693 d!1515584)))

(assert (=> bs!1136504 (not (= lambda!219715 lambda!219679))))

(declare-fun bs!1136505 () Bool)

(assert (= bs!1136505 (and b!4743693 d!1515512)))

(assert (=> bs!1136505 (= (= lt!1905850 lt!1906010) (= lambda!219715 lambda!219633))))

(declare-fun bs!1136506 () Bool)

(assert (= bs!1136506 (and b!4743693 b!4743696)))

(assert (=> bs!1136506 (= lambda!219715 lambda!219713)))

(declare-fun bs!1136507 () Bool)

(assert (= bs!1136507 (and b!4743693 b!4743682)))

(assert (=> bs!1136507 (= lambda!219715 lambda!219707)))

(declare-fun bs!1136508 () Bool)

(assert (= bs!1136508 (and b!4743693 d!1515634)))

(assert (=> bs!1136508 (= (= lt!1905850 lt!1906282) (= lambda!219715 lambda!219705))))

(declare-fun bs!1136509 () Bool)

(assert (= bs!1136509 (and b!4743693 b!4743653)))

(assert (=> bs!1136509 (= (= lt!1905850 lt!1906274) (= lambda!219715 lambda!219704))))

(declare-fun bs!1136510 () Bool)

(assert (= bs!1136510 (and b!4743693 b!4743634)))

(assert (=> bs!1136510 (= lambda!219715 lambda!219699)))

(declare-fun bs!1136511 () Bool)

(assert (= bs!1136511 (and b!4743693 b!4743679)))

(assert (=> bs!1136511 (= (= lt!1905850 lt!1906312) (= lambda!219715 lambda!219709))))

(declare-fun bs!1136512 () Bool)

(assert (= bs!1136512 (and b!4743693 b!4743637)))

(assert (=> bs!1136512 (= lambda!219715 lambda!219698)))

(assert (=> bs!1136503 (= lambda!219715 lambda!219631)))

(declare-fun bs!1136513 () Bool)

(assert (= bs!1136513 (and b!4743693 d!1515532)))

(assert (=> bs!1136513 (not (= lambda!219715 lambda!219635))))

(assert (=> bs!1136510 (= (= lt!1905850 lt!1906233) (= lambda!219715 lambda!219700))))

(assert (=> bs!1136509 (= lambda!219715 lambda!219703)))

(assert (=> bs!1136511 (= lambda!219715 lambda!219708)))

(declare-fun bs!1136514 () Bool)

(assert (= bs!1136514 (and b!4743693 d!1515502)))

(assert (=> bs!1136514 (not (= lambda!219715 lambda!219598))))

(declare-fun bs!1136515 () Bool)

(assert (= bs!1136515 (and b!4743693 d!1515626)))

(assert (=> bs!1136515 (= (= lt!1905850 lt!1906241) (= lambda!219715 lambda!219701))))

(declare-fun bs!1136516 () Bool)

(assert (= bs!1136516 (and b!4743693 d!1515586)))

(assert (=> bs!1136516 (not (= lambda!219715 lambda!219680))))

(declare-fun bs!1136517 () Bool)

(assert (= bs!1136517 (and b!4743693 b!4743656)))

(assert (=> bs!1136517 (= lambda!219715 lambda!219702)))

(assert (=> b!4743693 true))

(declare-fun lambda!219716 () Int)

(declare-fun lt!1906343 () ListMap!5379)

(assert (=> bs!1136501 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219630))))

(assert (=> bs!1136502 (= (= lt!1906343 lt!1906320) (= lambda!219716 lambda!219710))))

(assert (=> bs!1136503 (= (= lt!1906343 lt!1906002) (= lambda!219716 lambda!219632))))

(assert (=> bs!1136504 (not (= lambda!219716 lambda!219679))))

(assert (=> bs!1136505 (= (= lt!1906343 lt!1906010) (= lambda!219716 lambda!219633))))

(assert (=> bs!1136507 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219707))))

(assert (=> bs!1136508 (= (= lt!1906343 lt!1906282) (= lambda!219716 lambda!219705))))

(assert (=> bs!1136509 (= (= lt!1906343 lt!1906274) (= lambda!219716 lambda!219704))))

(assert (=> bs!1136510 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219699))))

(assert (=> bs!1136511 (= (= lt!1906343 lt!1906312) (= lambda!219716 lambda!219709))))

(assert (=> bs!1136512 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219698))))

(assert (=> bs!1136503 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219631))))

(assert (=> bs!1136513 (not (= lambda!219716 lambda!219635))))

(assert (=> bs!1136510 (= (= lt!1906343 lt!1906233) (= lambda!219716 lambda!219700))))

(assert (=> bs!1136509 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219703))))

(assert (=> bs!1136511 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219708))))

(assert (=> bs!1136514 (not (= lambda!219716 lambda!219598))))

(assert (=> bs!1136515 (= (= lt!1906343 lt!1906241) (= lambda!219716 lambda!219701))))

(assert (=> b!4743693 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219715))))

(assert (=> bs!1136506 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219713))))

(assert (=> bs!1136516 (not (= lambda!219716 lambda!219680))))

(assert (=> bs!1136517 (= (= lt!1906343 lt!1905850) (= lambda!219716 lambda!219702))))

(assert (=> b!4743693 true))

(declare-fun bs!1136518 () Bool)

(declare-fun d!1515650 () Bool)

(assert (= bs!1136518 (and d!1515650 b!4743474)))

(declare-fun lambda!219717 () Int)

(declare-fun lt!1906351 () ListMap!5379)

(assert (=> bs!1136518 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219630))))

(declare-fun bs!1136519 () Bool)

(assert (= bs!1136519 (and d!1515650 d!1515644)))

(assert (=> bs!1136519 (= (= lt!1906351 lt!1906320) (= lambda!219717 lambda!219710))))

(declare-fun bs!1136520 () Bool)

(assert (= bs!1136520 (and d!1515650 b!4743471)))

(assert (=> bs!1136520 (= (= lt!1906351 lt!1906002) (= lambda!219717 lambda!219632))))

(declare-fun bs!1136521 () Bool)

(assert (= bs!1136521 (and d!1515650 d!1515584)))

(assert (=> bs!1136521 (not (= lambda!219717 lambda!219679))))

(declare-fun bs!1136522 () Bool)

(assert (= bs!1136522 (and d!1515650 d!1515512)))

(assert (=> bs!1136522 (= (= lt!1906351 lt!1906010) (= lambda!219717 lambda!219633))))

(declare-fun bs!1136523 () Bool)

(assert (= bs!1136523 (and d!1515650 b!4743682)))

(assert (=> bs!1136523 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219707))))

(declare-fun bs!1136524 () Bool)

(assert (= bs!1136524 (and d!1515650 d!1515634)))

(assert (=> bs!1136524 (= (= lt!1906351 lt!1906282) (= lambda!219717 lambda!219705))))

(declare-fun bs!1136525 () Bool)

(assert (= bs!1136525 (and d!1515650 b!4743653)))

(assert (=> bs!1136525 (= (= lt!1906351 lt!1906274) (= lambda!219717 lambda!219704))))

(declare-fun bs!1136526 () Bool)

(assert (= bs!1136526 (and d!1515650 b!4743634)))

(assert (=> bs!1136526 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219699))))

(declare-fun bs!1136527 () Bool)

(assert (= bs!1136527 (and d!1515650 b!4743679)))

(assert (=> bs!1136527 (= (= lt!1906351 lt!1906312) (= lambda!219717 lambda!219709))))

(declare-fun bs!1136528 () Bool)

(assert (= bs!1136528 (and d!1515650 b!4743637)))

(assert (=> bs!1136528 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219698))))

(assert (=> bs!1136520 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219631))))

(declare-fun bs!1136529 () Bool)

(assert (= bs!1136529 (and d!1515650 d!1515532)))

(assert (=> bs!1136529 (not (= lambda!219717 lambda!219635))))

(assert (=> bs!1136526 (= (= lt!1906351 lt!1906233) (= lambda!219717 lambda!219700))))

(declare-fun bs!1136530 () Bool)

(assert (= bs!1136530 (and d!1515650 b!4743693)))

(assert (=> bs!1136530 (= (= lt!1906351 lt!1906343) (= lambda!219717 lambda!219716))))

(assert (=> bs!1136525 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219703))))

(assert (=> bs!1136527 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219708))))

(declare-fun bs!1136531 () Bool)

(assert (= bs!1136531 (and d!1515650 d!1515502)))

(assert (=> bs!1136531 (not (= lambda!219717 lambda!219598))))

(declare-fun bs!1136532 () Bool)

(assert (= bs!1136532 (and d!1515650 d!1515626)))

(assert (=> bs!1136532 (= (= lt!1906351 lt!1906241) (= lambda!219717 lambda!219701))))

(assert (=> bs!1136530 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219715))))

(declare-fun bs!1136533 () Bool)

(assert (= bs!1136533 (and d!1515650 b!4743696)))

(assert (=> bs!1136533 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219713))))

(declare-fun bs!1136534 () Bool)

(assert (= bs!1136534 (and d!1515650 d!1515586)))

(assert (=> bs!1136534 (not (= lambda!219717 lambda!219680))))

(declare-fun bs!1136535 () Bool)

(assert (= bs!1136535 (and d!1515650 b!4743656)))

(assert (=> bs!1136535 (= (= lt!1906351 lt!1905850) (= lambda!219717 lambda!219702))))

(assert (=> d!1515650 true))

(declare-fun e!2958953 () ListMap!5379)

(assert (=> b!4743693 (= e!2958953 lt!1906343)))

(declare-fun lt!1906344 () ListMap!5379)

(assert (=> b!4743693 (= lt!1906344 (+!2311 lt!1905850 (h!59350 lt!1905849)))))

(assert (=> b!4743693 (= lt!1906343 (addToMapMapFromBucket!1493 (t!360391 lt!1905849) (+!2311 lt!1905850 (h!59350 lt!1905849))))))

(declare-fun lt!1906350 () Unit!133851)

(declare-fun call!331991 () Unit!133851)

(assert (=> b!4743693 (= lt!1906350 call!331991)))

(assert (=> b!4743693 (forall!11694 (toList!6016 lt!1905850) lambda!219715)))

(declare-fun lt!1906354 () Unit!133851)

(assert (=> b!4743693 (= lt!1906354 lt!1906350)))

(assert (=> b!4743693 (forall!11694 (toList!6016 lt!1906344) lambda!219716)))

(declare-fun lt!1906349 () Unit!133851)

(declare-fun Unit!133939 () Unit!133851)

(assert (=> b!4743693 (= lt!1906349 Unit!133939)))

(assert (=> b!4743693 (forall!11694 (t!360391 lt!1905849) lambda!219716)))

(declare-fun lt!1906337 () Unit!133851)

(declare-fun Unit!133940 () Unit!133851)

(assert (=> b!4743693 (= lt!1906337 Unit!133940)))

(declare-fun lt!1906355 () Unit!133851)

(declare-fun Unit!133941 () Unit!133851)

(assert (=> b!4743693 (= lt!1906355 Unit!133941)))

(declare-fun lt!1906342 () Unit!133851)

(assert (=> b!4743693 (= lt!1906342 (forallContained!3734 (toList!6016 lt!1906344) lambda!219716 (h!59350 lt!1905849)))))

(assert (=> b!4743693 (contains!16383 lt!1906344 (_1!30617 (h!59350 lt!1905849)))))

(declare-fun lt!1906348 () Unit!133851)

(declare-fun Unit!133942 () Unit!133851)

(assert (=> b!4743693 (= lt!1906348 Unit!133942)))

(assert (=> b!4743693 (contains!16383 lt!1906343 (_1!30617 (h!59350 lt!1905849)))))

(declare-fun lt!1906356 () Unit!133851)

(declare-fun Unit!133943 () Unit!133851)

(assert (=> b!4743693 (= lt!1906356 Unit!133943)))

(assert (=> b!4743693 (forall!11694 lt!1905849 lambda!219716)))

(declare-fun lt!1906339 () Unit!133851)

(declare-fun Unit!133944 () Unit!133851)

(assert (=> b!4743693 (= lt!1906339 Unit!133944)))

(assert (=> b!4743693 (forall!11694 (toList!6016 lt!1906344) lambda!219716)))

(declare-fun lt!1906346 () Unit!133851)

(declare-fun Unit!133945 () Unit!133851)

(assert (=> b!4743693 (= lt!1906346 Unit!133945)))

(declare-fun lt!1906338 () Unit!133851)

(declare-fun Unit!133946 () Unit!133851)

(assert (=> b!4743693 (= lt!1906338 Unit!133946)))

(declare-fun lt!1906353 () Unit!133851)

(assert (=> b!4743693 (= lt!1906353 (addForallContainsKeyThenBeforeAdding!832 lt!1905850 lt!1906343 (_1!30617 (h!59350 lt!1905849)) (_2!30617 (h!59350 lt!1905849))))))

(assert (=> b!4743693 (forall!11694 (toList!6016 lt!1905850) lambda!219716)))

(declare-fun lt!1906336 () Unit!133851)

(assert (=> b!4743693 (= lt!1906336 lt!1906353)))

(declare-fun call!331992 () Bool)

(assert (=> b!4743693 call!331992))

(declare-fun lt!1906347 () Unit!133851)

(declare-fun Unit!133947 () Unit!133851)

(assert (=> b!4743693 (= lt!1906347 Unit!133947)))

(declare-fun res!2010161 () Bool)

(declare-fun call!331990 () Bool)

(assert (=> b!4743693 (= res!2010161 call!331990)))

(declare-fun e!2958954 () Bool)

(assert (=> b!4743693 (=> (not res!2010161) (not e!2958954))))

(assert (=> b!4743693 e!2958954))

(declare-fun lt!1906341 () Unit!133851)

(declare-fun Unit!133948 () Unit!133851)

(assert (=> b!4743693 (= lt!1906341 Unit!133948)))

(declare-fun b!4743694 () Bool)

(assert (=> b!4743694 (= e!2958954 (forall!11694 (toList!6016 lt!1905850) lambda!219716))))

(declare-fun bm!331985 () Bool)

(declare-fun c!810294 () Bool)

(assert (=> bm!331985 (= call!331992 (forall!11694 (toList!6016 lt!1905850) (ite c!810294 lambda!219713 lambda!219716)))))

(declare-fun b!4743695 () Bool)

(declare-fun res!2010162 () Bool)

(declare-fun e!2958952 () Bool)

(assert (=> b!4743695 (=> (not res!2010162) (not e!2958952))))

(assert (=> b!4743695 (= res!2010162 (forall!11694 (toList!6016 lt!1905850) lambda!219717))))

(declare-fun bm!331986 () Bool)

(assert (=> bm!331986 (= call!331990 (forall!11694 (ite c!810294 (toList!6016 lt!1905850) lt!1905849) (ite c!810294 lambda!219713 lambda!219716)))))

(assert (=> d!1515650 e!2958952))

(declare-fun res!2010160 () Bool)

(assert (=> d!1515650 (=> (not res!2010160) (not e!2958952))))

(assert (=> d!1515650 (= res!2010160 (forall!11694 lt!1905849 lambda!219717))))

(assert (=> d!1515650 (= lt!1906351 e!2958953)))

(assert (=> d!1515650 (= c!810294 (is-Nil!52965 lt!1905849))))

(assert (=> d!1515650 (noDuplicateKeys!2063 lt!1905849)))

(assert (=> d!1515650 (= (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1906351)))

(declare-fun bm!331987 () Bool)

(assert (=> bm!331987 (= call!331991 (lemmaContainsAllItsOwnKeys!833 lt!1905850))))

(assert (=> b!4743696 (= e!2958953 lt!1905850)))

(declare-fun lt!1906352 () Unit!133851)

(assert (=> b!4743696 (= lt!1906352 call!331991)))

(assert (=> b!4743696 call!331990))

(declare-fun lt!1906345 () Unit!133851)

(assert (=> b!4743696 (= lt!1906345 lt!1906352)))

(assert (=> b!4743696 call!331992))

(declare-fun lt!1906340 () Unit!133851)

(declare-fun Unit!133949 () Unit!133851)

(assert (=> b!4743696 (= lt!1906340 Unit!133949)))

(declare-fun b!4743697 () Bool)

(assert (=> b!4743697 (= e!2958952 (invariantList!1548 (toList!6016 lt!1906351)))))

(assert (= (and d!1515650 c!810294) b!4743696))

(assert (= (and d!1515650 (not c!810294)) b!4743693))

(assert (= (and b!4743693 res!2010161) b!4743694))

(assert (= (or b!4743696 b!4743693) bm!331987))

(assert (= (or b!4743696 b!4743693) bm!331985))

(assert (= (or b!4743696 b!4743693) bm!331986))

(assert (= (and d!1515650 res!2010160) b!4743695))

(assert (= (and b!4743695 res!2010162) b!4743697))

(declare-fun m!5698733 () Bool)

(assert (=> b!4743694 m!5698733))

(declare-fun m!5698735 () Bool)

(assert (=> b!4743695 m!5698735))

(declare-fun m!5698737 () Bool)

(assert (=> b!4743697 m!5698737))

(declare-fun m!5698739 () Bool)

(assert (=> d!1515650 m!5698739))

(assert (=> d!1515650 m!5698395))

(declare-fun m!5698741 () Bool)

(assert (=> bm!331986 m!5698741))

(assert (=> bm!331987 m!5698185))

(declare-fun m!5698743 () Bool)

(assert (=> b!4743693 m!5698743))

(declare-fun m!5698745 () Bool)

(assert (=> b!4743693 m!5698745))

(declare-fun m!5698747 () Bool)

(assert (=> b!4743693 m!5698747))

(assert (=> b!4743693 m!5698733))

(declare-fun m!5698749 () Bool)

(assert (=> b!4743693 m!5698749))

(declare-fun m!5698751 () Bool)

(assert (=> b!4743693 m!5698751))

(declare-fun m!5698753 () Bool)

(assert (=> b!4743693 m!5698753))

(assert (=> b!4743693 m!5698747))

(declare-fun m!5698755 () Bool)

(assert (=> b!4743693 m!5698755))

(declare-fun m!5698757 () Bool)

(assert (=> b!4743693 m!5698757))

(assert (=> b!4743693 m!5698751))

(declare-fun m!5698759 () Bool)

(assert (=> b!4743693 m!5698759))

(declare-fun m!5698761 () Bool)

(assert (=> b!4743693 m!5698761))

(declare-fun m!5698763 () Bool)

(assert (=> bm!331985 m!5698763))

(assert (=> b!4743291 d!1515650))

(declare-fun d!1515654 () Bool)

(assert (=> d!1515654 (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905836 lt!1905849) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905849 lt!1905850) lt!1905836))))

(declare-fun lt!1906360 () Unit!133851)

(assert (=> d!1515654 (= lt!1906360 (choose!33688 lt!1905836 lt!1905849 lt!1905850))))

(assert (=> d!1515654 (noDuplicateKeys!2063 lt!1905849)))

(assert (=> d!1515654 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!409 lt!1905836 lt!1905849 lt!1905850) lt!1906360)))

(declare-fun bs!1136536 () Bool)

(assert (= bs!1136536 d!1515654))

(assert (=> bs!1136536 m!5697905))

(assert (=> bs!1136536 m!5697905))

(assert (=> bs!1136536 m!5697911))

(assert (=> bs!1136536 m!5697915))

(assert (=> bs!1136536 m!5697915))

(assert (=> bs!1136536 m!5697911))

(assert (=> bs!1136536 m!5697917))

(assert (=> bs!1136536 m!5698395))

(declare-fun m!5698769 () Bool)

(assert (=> bs!1136536 m!5698769))

(assert (=> b!4743291 d!1515654))

(declare-fun d!1515656 () Bool)

(assert (=> d!1515656 (= (eq!1160 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905830 lt!1905838) lt!1905850) (+!2311 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1905830)) (= (content!9475 (toList!6016 (addToMapMapFromBucket!1493 (Cons!52965 lt!1905830 lt!1905838) lt!1905850))) (content!9475 (toList!6016 (+!2311 (addToMapMapFromBucket!1493 lt!1905838 lt!1905850) lt!1905830)))))))

(declare-fun bs!1136538 () Bool)

(assert (= bs!1136538 d!1515656))

(declare-fun m!5698771 () Bool)

(assert (=> bs!1136538 m!5698771))

(declare-fun m!5698773 () Bool)

(assert (=> bs!1136538 m!5698773))

(assert (=> b!4743291 d!1515656))

(declare-fun bs!1136540 () Bool)

(declare-fun d!1515660 () Bool)

(assert (= bs!1136540 (and d!1515660 d!1515544)))

(declare-fun lambda!219719 () Int)

(assert (=> bs!1136540 (= lambda!219719 lambda!219643)))

(declare-fun bs!1136542 () Bool)

(assert (= bs!1136542 (and d!1515660 d!1515526)))

(assert (=> bs!1136542 (= lambda!219719 lambda!219634)))

(declare-fun bs!1136544 () Bool)

(assert (= bs!1136544 (and d!1515660 d!1515500)))

(assert (=> bs!1136544 (not (= lambda!219719 lambda!219595))))

(declare-fun bs!1136546 () Bool)

(assert (= bs!1136546 (and d!1515660 d!1515536)))

(assert (=> bs!1136546 (not (= lambda!219719 lambda!219636))))

(declare-fun bs!1136548 () Bool)

(assert (= bs!1136548 (and d!1515660 d!1515508)))

(assert (=> bs!1136548 (= lambda!219719 lambda!219601)))

(declare-fun bs!1136550 () Bool)

(assert (= bs!1136550 (and d!1515660 d!1515614)))

(assert (=> bs!1136550 (= lambda!219719 lambda!219697)))

(declare-fun bs!1136552 () Bool)

(assert (= bs!1136552 (and d!1515660 d!1515598)))

(assert (=> bs!1136552 (= lambda!219719 lambda!219681)))

(declare-fun bs!1136554 () Bool)

(assert (= bs!1136554 (and d!1515660 d!1515556)))

(assert (=> bs!1136554 (= lambda!219719 lambda!219672)))

(declare-fun bs!1136555 () Bool)

(assert (= bs!1136555 (and d!1515660 d!1515600)))

(assert (=> bs!1136555 (= lambda!219719 lambda!219682)))

(declare-fun bs!1136557 () Bool)

(assert (= bs!1136557 (and d!1515660 start!484058)))

(assert (=> bs!1136557 (= lambda!219719 lambda!219585)))

(declare-fun lt!1906383 () ListMap!5379)

(assert (=> d!1515660 (invariantList!1548 (toList!6016 lt!1906383))))

(declare-fun e!2958958 () ListMap!5379)

(assert (=> d!1515660 (= lt!1906383 e!2958958)))

(declare-fun c!810296 () Bool)

(assert (=> d!1515660 (= c!810296 (is-Cons!52966 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023)))))))

(assert (=> d!1515660 (forall!11692 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023))) lambda!219719)))

(assert (=> d!1515660 (= (extractMap!2089 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023)))) lt!1906383)))

(declare-fun b!4743703 () Bool)

(assert (=> b!4743703 (= e!2958958 (addToMapMapFromBucket!1493 (_2!30618 (h!59351 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023))))) (extractMap!2089 (t!360392 (Cons!52966 (tuple2!54649 hash!405 lt!1905849) (t!360392 (toList!6015 lm!2023)))))))))

(declare-fun b!4743704 () Bool)

(assert (=> b!4743704 (= e!2958958 (ListMap!5380 Nil!52965))))

(assert (= (and d!1515660 c!810296) b!4743703))

(assert (= (and d!1515660 (not c!810296)) b!4743704))

(declare-fun m!5698775 () Bool)

(assert (=> d!1515660 m!5698775))

(declare-fun m!5698777 () Bool)

(assert (=> d!1515660 m!5698777))

(declare-fun m!5698779 () Bool)

(assert (=> b!4743703 m!5698779))

(assert (=> b!4743703 m!5698779))

(declare-fun m!5698781 () Bool)

(assert (=> b!4743703 m!5698781))

(assert (=> b!4743291 d!1515660))

(declare-fun b!4743709 () Bool)

(declare-fun e!2958961 () Bool)

(declare-fun tp!1349344 () Bool)

(declare-fun tp!1349345 () Bool)

(assert (=> b!4743709 (= e!2958961 (and tp!1349344 tp!1349345))))

(assert (=> b!4743283 (= tp!1349328 e!2958961)))

(assert (= (and b!4743283 (is-Cons!52966 (toList!6015 lm!2023))) b!4743709))

(declare-fun e!2958964 () Bool)

(declare-fun tp!1349348 () Bool)

(declare-fun b!4743714 () Bool)

(assert (=> b!4743714 (= e!2958964 (and tp_is_empty!31545 tp_is_empty!31547 tp!1349348))))

(assert (=> b!4743296 (= tp!1349329 e!2958964)))

(assert (= (and b!4743296 (is-Cons!52965 (t!360391 oldBucket!34))) b!4743714))

(declare-fun e!2958965 () Bool)

(declare-fun tp!1349349 () Bool)

(declare-fun b!4743715 () Bool)

(assert (=> b!4743715 (= e!2958965 (and tp_is_empty!31545 tp_is_empty!31547 tp!1349349))))

(assert (=> b!4743285 (= tp!1349330 e!2958965)))

(assert (= (and b!4743285 (is-Cons!52965 (t!360391 newBucket!218))) b!4743715))

(declare-fun b_lambda!182637 () Bool)

(assert (= b_lambda!182633 (or start!484058 b_lambda!182637)))

(declare-fun bs!1136568 () Bool)

(declare-fun d!1515662 () Bool)

(assert (= bs!1136568 (and d!1515662 start!484058)))

(assert (=> bs!1136568 (= (dynLambda!21878 lambda!219585 lt!1905841) (noDuplicateKeys!2063 (_2!30618 lt!1905841)))))

(declare-fun m!5698783 () Bool)

(assert (=> bs!1136568 m!5698783))

(assert (=> d!1515558 d!1515662))

(declare-fun b_lambda!182639 () Bool)

(assert (= b_lambda!182631 (or start!484058 b_lambda!182639)))

(declare-fun bs!1136569 () Bool)

(declare-fun d!1515664 () Bool)

(assert (= bs!1136569 (and d!1515664 start!484058)))

(assert (=> bs!1136569 (= (dynLambda!21878 lambda!219585 (h!59351 lt!1905845)) (noDuplicateKeys!2063 (_2!30618 (h!59351 lt!1905845))))))

(declare-fun m!5698785 () Bool)

(assert (=> bs!1136569 m!5698785))

(assert (=> b!4743484 d!1515664))

(declare-fun b_lambda!182641 () Bool)

(assert (= b_lambda!182635 (or start!484058 b_lambda!182641)))

(declare-fun bs!1136570 () Bool)

(declare-fun d!1515666 () Bool)

(assert (= bs!1136570 (and d!1515666 start!484058)))

(assert (=> bs!1136570 (= (dynLambda!21878 lambda!219585 (h!59351 (toList!6015 lm!2023))) (noDuplicateKeys!2063 (_2!30618 (h!59351 (toList!6015 lm!2023)))))))

(assert (=> bs!1136570 m!5698181))

(assert (=> b!4743598 d!1515666))

(push 1)

(assert (not d!1515534))

(assert (not b!4743510))

(assert (not d!1515548))

(assert (not bm!331982))

(assert (not b!4743606))

(assert (not d!1515556))

(assert (not b!4743612))

(assert (not bm!331986))

(assert (not d!1515624))

(assert (not b!4743634))

(assert (not b!4743690))

(assert (not d!1515512))

(assert (not bs!1136570))

(assert (not b!4743603))

(assert (not d!1515584))

(assert (not b!4743423))

(assert (not b!4743694))

(assert (not d!1515644))

(assert (not bm!331956))

(assert (not b!4743647))

(assert (not b!4743532))

(assert (not b!4743648))

(assert (not b_lambda!182637))

(assert (not b!4743429))

(assert (not d!1515628))

(assert (not b!4743683))

(assert (not b!4743697))

(assert (not bm!331981))

(assert (not b!4743715))

(assert (not b!4743638))

(assert (not bm!331954))

(assert (not bm!331977))

(assert (not d!1515542))

(assert (not bm!331983))

(assert (not b!4743691))

(assert (not b!4743597))

(assert (not b!4743547))

(assert (not d!1515570))

(assert (not d!1515650))

(assert (not bm!331987))

(assert (not b!4743602))

(assert (not d!1515536))

(assert (not d!1515632))

(assert (not b!4743577))

(assert (not b!4743680))

(assert (not b!4743657))

(assert (not b!4743601))

(assert (not b!4743596))

(assert (not b!4743561))

(assert (not bs!1136569))

(assert (not b!4743686))

(assert (not d!1515550))

(assert (not b!4743497))

(assert (not bm!331972))

(assert (not b!4743593))

(assert (not d!1515528))

(assert tp_is_empty!31547)

(assert (not b!4743498))

(assert (not b!4743504))

(assert (not b!4743485))

(assert (not d!1515600))

(assert (not d!1515574))

(assert (not b!4743681))

(assert (not b!4743636))

(assert (not d!1515586))

(assert (not b!4743535))

(assert (not bm!331979))

(assert (not b!4743558))

(assert (not b!4743608))

(assert (not b!4743475))

(assert (not b!4743417))

(assert (not d!1515598))

(assert (not d!1515540))

(assert (not d!1515558))

(assert (not d!1515554))

(assert (not b!4743441))

(assert (not d!1515648))

(assert (not d!1515510))

(assert (not bm!331985))

(assert (not b!4743575))

(assert (not b!4743689))

(assert (not b!4743478))

(assert tp_is_empty!31545)

(assert (not d!1515506))

(assert (not b!4743654))

(assert (not b!4743422))

(assert (not d!1515560))

(assert (not b!4743653))

(assert (not b!4743703))

(assert (not b!4743495))

(assert (not b!4743613))

(assert (not b_lambda!182641))

(assert (not b!4743677))

(assert (not b!4743695))

(assert (not b!4743496))

(assert (not d!1515582))

(assert (not b!4743538))

(assert (not b!4743679))

(assert (not b!4743610))

(assert (not b!4743582))

(assert (not d!1515562))

(assert (not b!4743693))

(assert (not b!4743540))

(assert (not b!4743473))

(assert (not bs!1136568))

(assert (not d!1515654))

(assert (not d!1515614))

(assert (not b!4743714))

(assert (not bm!331978))

(assert (not d!1515626))

(assert (not bm!331984))

(assert (not b!4743583))

(assert (not b!4743684))

(assert (not d!1515604))

(assert (not b!4743655))

(assert (not d!1515660))

(assert (not b!4743537))

(assert (not d!1515500))

(assert (not d!1515656))

(assert (not d!1515526))

(assert (not d!1515642))

(assert (not b!4743688))

(assert (not b!4743600))

(assert (not b!4743709))

(assert (not b!4743472))

(assert (not bm!331973))

(assert (not b!4743421))

(assert (not d!1515508))

(assert (not b!4743685))

(assert (not bm!331974))

(assert (not d!1515544))

(assert (not b!4743592))

(assert (not b!4743635))

(assert (not bm!331947))

(assert (not b!4743549))

(assert (not b!4743418))

(assert (not b!4743416))

(assert (not b!4743534))

(assert (not d!1515606))

(assert (not d!1515592))

(assert (not d!1515532))

(assert (not b!4743420))

(assert (not b_lambda!182639))

(assert (not b!4743471))

(assert (not b!4743599))

(assert (not d!1515538))

(assert (not b!4743678))

(assert (not bm!331955))

(assert (not d!1515634))

(assert (not d!1515502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

