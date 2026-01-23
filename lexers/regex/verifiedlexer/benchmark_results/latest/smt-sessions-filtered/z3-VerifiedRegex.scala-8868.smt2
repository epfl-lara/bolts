; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473808 () Bool)

(assert start!473808)

(declare-fun b!4686885 () Bool)

(declare-fun e!2924007 () Bool)

(declare-fun e!2924011 () Bool)

(assert (=> b!4686885 (= e!2924007 e!2924011)))

(declare-fun res!1976346 () Bool)

(assert (=> b!4686885 (=> res!1976346 e!2924011)))

(declare-datatypes ((K!13745 0))(
  ( (K!13746 (val!19267 Int)) )
))
(declare-datatypes ((V!13991 0))(
  ( (V!13992 (val!19268 Int)) )
))
(declare-datatypes ((tuple2!53746 0))(
  ( (tuple2!53747 (_1!30167 K!13745) (_2!30167 V!13991)) )
))
(declare-datatypes ((List!52491 0))(
  ( (Nil!52367) (Cons!52367 (h!58602 tuple2!53746) (t!359657 List!52491)) )
))
(declare-fun lt!1846035 () List!52491)

(declare-fun lt!1846028 () List!52491)

(declare-fun key!4653 () K!13745)

(declare-fun removePairForKey!1433 (List!52491 K!13745) List!52491)

(assert (=> b!4686885 (= res!1976346 (not (= (removePairForKey!1433 lt!1846028 key!4653) lt!1846035)))))

(declare-fun newBucket!218 () List!52491)

(declare-fun tail!8548 (List!52491) List!52491)

(assert (=> b!4686885 (= lt!1846035 (tail!8548 newBucket!218))))

(declare-fun oldBucket!34 () List!52491)

(assert (=> b!4686885 (= lt!1846028 (tail!8548 oldBucket!34))))

(declare-fun b!4686887 () Bool)

(declare-fun res!1976341 () Bool)

(declare-fun e!2924015 () Bool)

(assert (=> b!4686887 (=> (not res!1976341) (not e!2924015))))

(assert (=> b!4686887 (= res!1976341 (= (removePairForKey!1433 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4686888 () Bool)

(declare-fun res!1976349 () Bool)

(declare-fun e!2924010 () Bool)

(assert (=> b!4686888 (=> (not res!1976349) (not e!2924010))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6207 0))(
  ( (HashableExt!6206 (__x!31910 Int)) )
))
(declare-fun hashF!1323 () Hashable!6207)

(declare-fun allKeysSameHash!1664 (List!52491 (_ BitVec 64) Hashable!6207) Bool)

(assert (=> b!4686888 (= res!1976349 (allKeysSameHash!1664 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4686889 () Bool)

(declare-fun res!1976347 () Bool)

(assert (=> b!4686889 (=> (not res!1976347) (not e!2924015))))

(declare-fun noDuplicateKeys!1838 (List!52491) Bool)

(assert (=> b!4686889 (= res!1976347 (noDuplicateKeys!1838 newBucket!218))))

(declare-fun b!4686890 () Bool)

(declare-fun res!1976337 () Bool)

(assert (=> b!4686890 (=> (not res!1976337) (not e!2924015))))

(assert (=> b!4686890 (= res!1976337 (allKeysSameHash!1664 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4686891 () Bool)

(declare-fun res!1976339 () Bool)

(assert (=> b!4686891 (=> (not res!1976339) (not e!2924015))))

(assert (=> b!4686891 (= res!1976339 (noDuplicateKeys!1838 oldBucket!34))))

(declare-fun res!1976343 () Bool)

(assert (=> start!473808 (=> (not res!1976343) (not e!2924015))))

(declare-datatypes ((tuple2!53748 0))(
  ( (tuple2!53749 (_1!30168 (_ BitVec 64)) (_2!30168 List!52491)) )
))
(declare-datatypes ((List!52492 0))(
  ( (Nil!52368) (Cons!52368 (h!58603 tuple2!53748) (t!359658 List!52492)) )
))
(declare-datatypes ((ListLongMap!4095 0))(
  ( (ListLongMap!4096 (toList!5565 List!52492)) )
))
(declare-fun lm!2023 () ListLongMap!4095)

(declare-fun lambda!206263 () Int)

(declare-fun forall!11295 (List!52492 Int) Bool)

(assert (=> start!473808 (= res!1976343 (forall!11295 (toList!5565 lm!2023) lambda!206263))))

(assert (=> start!473808 e!2924015))

(declare-fun e!2924013 () Bool)

(declare-fun inv!67619 (ListLongMap!4095) Bool)

(assert (=> start!473808 (and (inv!67619 lm!2023) e!2924013)))

(declare-fun tp_is_empty!30645 () Bool)

(assert (=> start!473808 tp_is_empty!30645))

(declare-fun e!2924016 () Bool)

(assert (=> start!473808 e!2924016))

(assert (=> start!473808 true))

(declare-fun e!2924009 () Bool)

(assert (=> start!473808 e!2924009))

(declare-fun b!4686886 () Bool)

(declare-fun e!2924008 () Bool)

(assert (=> b!4686886 (= e!2924010 (not e!2924008))))

(declare-fun res!1976336 () Bool)

(assert (=> b!4686886 (=> res!1976336 e!2924008)))

(get-info :version)

(assert (=> b!4686886 (= res!1976336 (or (and ((_ is Cons!52367) oldBucket!34) (= (_1!30167 (h!58602 oldBucket!34)) key!4653)) (not ((_ is Cons!52367) oldBucket!34)) (= (_1!30167 (h!58602 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4929 0))(
  ( (ListMap!4930 (toList!5566 List!52491)) )
))
(declare-fun lt!1846037 () ListMap!4929)

(declare-fun lt!1846044 () ListMap!4929)

(declare-fun addToMapMapFromBucket!1270 (List!52491 ListMap!4929) ListMap!4929)

(assert (=> b!4686886 (= lt!1846037 (addToMapMapFromBucket!1270 (_2!30168 (h!58603 (toList!5565 lm!2023))) lt!1846044))))

(declare-fun extractMap!1864 (List!52492) ListMap!4929)

(assert (=> b!4686886 (= lt!1846044 (extractMap!1864 (t!359658 (toList!5565 lm!2023))))))

(declare-fun tail!8549 (ListLongMap!4095) ListLongMap!4095)

(assert (=> b!4686886 (= (t!359658 (toList!5565 lm!2023)) (toList!5565 (tail!8549 lm!2023)))))

(declare-fun b!4686892 () Bool)

(declare-fun e!2924014 () Bool)

(assert (=> b!4686892 (= e!2924014 true)))

(declare-fun lt!1846034 () Bool)

(declare-fun head!9939 (List!52491) tuple2!53746)

(assert (=> b!4686892 (= lt!1846034 (noDuplicateKeys!1838 (Cons!52367 (head!9939 newBucket!218) lt!1846035)))))

(declare-fun b!4686893 () Bool)

(declare-fun e!2924012 () Bool)

(assert (=> b!4686893 (= e!2924015 e!2924012)))

(declare-fun res!1976345 () Bool)

(assert (=> b!4686893 (=> (not res!1976345) (not e!2924012))))

(declare-fun contains!15540 (ListMap!4929 K!13745) Bool)

(assert (=> b!4686893 (= res!1976345 (contains!15540 lt!1846037 key!4653))))

(assert (=> b!4686893 (= lt!1846037 (extractMap!1864 (toList!5565 lm!2023)))))

(declare-fun b!4686894 () Bool)

(declare-fun res!1976338 () Bool)

(assert (=> b!4686894 (=> (not res!1976338) (not e!2924010))))

(assert (=> b!4686894 (= res!1976338 ((_ is Cons!52368) (toList!5565 lm!2023)))))

(declare-fun b!4686895 () Bool)

(assert (=> b!4686895 (= e!2924008 e!2924007)))

(declare-fun res!1976344 () Bool)

(assert (=> b!4686895 (=> res!1976344 e!2924007)))

(declare-fun containsKey!3017 (List!52491 K!13745) Bool)

(assert (=> b!4686895 (= res!1976344 (not (containsKey!3017 (t!359657 oldBucket!34) key!4653)))))

(assert (=> b!4686895 (containsKey!3017 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123393 0))(
  ( (Unit!123394) )
))
(declare-fun lt!1846036 () Unit!123393)

(declare-fun lemmaGetPairDefinedThenContainsKey!190 (List!52491 K!13745 Hashable!6207) Unit!123393)

(assert (=> b!4686895 (= lt!1846036 (lemmaGetPairDefinedThenContainsKey!190 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1846042 () List!52491)

(declare-datatypes ((Option!12041 0))(
  ( (None!12040) (Some!12040 (v!46435 tuple2!53746)) )
))
(declare-fun isDefined!9296 (Option!12041) Bool)

(declare-fun getPair!442 (List!52491 K!13745) Option!12041)

(assert (=> b!4686895 (isDefined!9296 (getPair!442 lt!1846042 key!4653))))

(declare-fun lt!1846043 () tuple2!53748)

(declare-fun lt!1846031 () Unit!123393)

(declare-fun forallContained!3402 (List!52492 Int tuple2!53748) Unit!123393)

(assert (=> b!4686895 (= lt!1846031 (forallContained!3402 (toList!5565 lm!2023) lambda!206263 lt!1846043))))

(declare-fun contains!15541 (List!52492 tuple2!53748) Bool)

(assert (=> b!4686895 (contains!15541 (toList!5565 lm!2023) lt!1846043)))

(declare-fun lt!1846032 () (_ BitVec 64))

(assert (=> b!4686895 (= lt!1846043 (tuple2!53749 lt!1846032 lt!1846042))))

(declare-fun lt!1846029 () Unit!123393)

(declare-fun lemmaGetValueImpliesTupleContained!247 (ListLongMap!4095 (_ BitVec 64) List!52491) Unit!123393)

(assert (=> b!4686895 (= lt!1846029 (lemmaGetValueImpliesTupleContained!247 lm!2023 lt!1846032 lt!1846042))))

(declare-fun apply!12321 (ListLongMap!4095 (_ BitVec 64)) List!52491)

(assert (=> b!4686895 (= lt!1846042 (apply!12321 lm!2023 lt!1846032))))

(declare-fun contains!15542 (ListLongMap!4095 (_ BitVec 64)) Bool)

(assert (=> b!4686895 (contains!15542 lm!2023 lt!1846032)))

(declare-fun lt!1846041 () Unit!123393)

(declare-fun lemmaInGenMapThenLongMapContainsHash!648 (ListLongMap!4095 K!13745 Hashable!6207) Unit!123393)

(assert (=> b!4686895 (= lt!1846041 (lemmaInGenMapThenLongMapContainsHash!648 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1846040 () Unit!123393)

(declare-fun lemmaInGenMapThenGetPairDefined!238 (ListLongMap!4095 K!13745 Hashable!6207) Unit!123393)

(assert (=> b!4686895 (= lt!1846040 (lemmaInGenMapThenGetPairDefined!238 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4686896 () Bool)

(declare-fun res!1976334 () Bool)

(assert (=> b!4686896 (=> (not res!1976334) (not e!2924010))))

(declare-fun head!9940 (List!52492) tuple2!53748)

(assert (=> b!4686896 (= res!1976334 (= (head!9940 (toList!5565 lm!2023)) (tuple2!53749 hash!405 oldBucket!34)))))

(declare-fun b!4686897 () Bool)

(declare-fun tp!1345672 () Bool)

(assert (=> b!4686897 (= e!2924013 tp!1345672)))

(declare-fun b!4686898 () Bool)

(declare-fun res!1976348 () Bool)

(assert (=> b!4686898 (=> (not res!1976348) (not e!2924010))))

(declare-fun allKeysSameHashInMap!1752 (ListLongMap!4095 Hashable!6207) Bool)

(assert (=> b!4686898 (= res!1976348 (allKeysSameHashInMap!1752 lm!2023 hashF!1323))))

(declare-fun b!4686899 () Bool)

(declare-fun res!1976342 () Bool)

(assert (=> b!4686899 (=> res!1976342 e!2924011)))

(assert (=> b!4686899 (= res!1976342 (not (= (removePairForKey!1433 (t!359657 oldBucket!34) key!4653) lt!1846035)))))

(declare-fun b!4686900 () Bool)

(assert (=> b!4686900 (= e!2924012 e!2924010)))

(declare-fun res!1976335 () Bool)

(assert (=> b!4686900 (=> (not res!1976335) (not e!2924010))))

(assert (=> b!4686900 (= res!1976335 (= lt!1846032 hash!405))))

(declare-fun hash!4039 (Hashable!6207 K!13745) (_ BitVec 64))

(assert (=> b!4686900 (= lt!1846032 (hash!4039 hashF!1323 key!4653))))

(declare-fun tp_is_empty!30647 () Bool)

(declare-fun tp!1345673 () Bool)

(declare-fun b!4686901 () Bool)

(assert (=> b!4686901 (= e!2924009 (and tp_is_empty!30645 tp_is_empty!30647 tp!1345673))))

(declare-fun tp!1345671 () Bool)

(declare-fun b!4686902 () Bool)

(assert (=> b!4686902 (= e!2924016 (and tp_is_empty!30645 tp_is_empty!30647 tp!1345671))))

(declare-fun b!4686903 () Bool)

(assert (=> b!4686903 (= e!2924011 e!2924014)))

(declare-fun res!1976340 () Bool)

(assert (=> b!4686903 (=> res!1976340 e!2924014)))

(assert (=> b!4686903 (= res!1976340 (not (noDuplicateKeys!1838 lt!1846035)))))

(declare-fun lt!1846038 () tuple2!53746)

(declare-fun eq!997 (ListMap!4929 ListMap!4929) Bool)

(declare-fun +!2122 (ListMap!4929 tuple2!53746) ListMap!4929)

(assert (=> b!4686903 (eq!997 (addToMapMapFromBucket!1270 (Cons!52367 lt!1846038 lt!1846028) lt!1846044) (+!2122 (addToMapMapFromBucket!1270 lt!1846028 lt!1846044) lt!1846038))))

(declare-fun lt!1846039 () Unit!123393)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!246 (tuple2!53746 List!52491 ListMap!4929) Unit!123393)

(assert (=> b!4686903 (= lt!1846039 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!246 lt!1846038 lt!1846028 lt!1846044))))

(assert (=> b!4686903 (= lt!1846038 (head!9939 oldBucket!34))))

(declare-fun lt!1846030 () List!52492)

(assert (=> b!4686903 (contains!15540 (extractMap!1864 lt!1846030) key!4653)))

(declare-fun lt!1846033 () Unit!123393)

(declare-fun lemmaListContainsThenExtractedMapContains!430 (ListLongMap!4095 K!13745 Hashable!6207) Unit!123393)

(assert (=> b!4686903 (= lt!1846033 (lemmaListContainsThenExtractedMapContains!430 (ListLongMap!4096 lt!1846030) key!4653 hashF!1323))))

(assert (=> b!4686903 (= lt!1846030 (Cons!52368 (tuple2!53749 hash!405 (t!359657 oldBucket!34)) (t!359658 (toList!5565 lm!2023))))))

(assert (= (and start!473808 res!1976343) b!4686891))

(assert (= (and b!4686891 res!1976339) b!4686889))

(assert (= (and b!4686889 res!1976347) b!4686887))

(assert (= (and b!4686887 res!1976341) b!4686890))

(assert (= (and b!4686890 res!1976337) b!4686893))

(assert (= (and b!4686893 res!1976345) b!4686900))

(assert (= (and b!4686900 res!1976335) b!4686888))

(assert (= (and b!4686888 res!1976349) b!4686898))

(assert (= (and b!4686898 res!1976348) b!4686896))

(assert (= (and b!4686896 res!1976334) b!4686894))

(assert (= (and b!4686894 res!1976338) b!4686886))

(assert (= (and b!4686886 (not res!1976336)) b!4686895))

(assert (= (and b!4686895 (not res!1976344)) b!4686885))

(assert (= (and b!4686885 (not res!1976346)) b!4686899))

(assert (= (and b!4686899 (not res!1976342)) b!4686903))

(assert (= (and b!4686903 (not res!1976340)) b!4686892))

(assert (= start!473808 b!4686897))

(assert (= (and start!473808 ((_ is Cons!52367) oldBucket!34)) b!4686902))

(assert (= (and start!473808 ((_ is Cons!52367) newBucket!218)) b!4686901))

(declare-fun m!5586303 () Bool)

(assert (=> b!4686900 m!5586303))

(declare-fun m!5586305 () Bool)

(assert (=> b!4686888 m!5586305))

(declare-fun m!5586307 () Bool)

(assert (=> b!4686903 m!5586307))

(declare-fun m!5586309 () Bool)

(assert (=> b!4686903 m!5586309))

(declare-fun m!5586311 () Bool)

(assert (=> b!4686903 m!5586311))

(declare-fun m!5586313 () Bool)

(assert (=> b!4686903 m!5586313))

(declare-fun m!5586315 () Bool)

(assert (=> b!4686903 m!5586315))

(declare-fun m!5586317 () Bool)

(assert (=> b!4686903 m!5586317))

(declare-fun m!5586319 () Bool)

(assert (=> b!4686903 m!5586319))

(assert (=> b!4686903 m!5586309))

(assert (=> b!4686903 m!5586307))

(declare-fun m!5586321 () Bool)

(assert (=> b!4686903 m!5586321))

(assert (=> b!4686903 m!5586315))

(declare-fun m!5586323 () Bool)

(assert (=> b!4686903 m!5586323))

(declare-fun m!5586325 () Bool)

(assert (=> b!4686903 m!5586325))

(assert (=> b!4686903 m!5586319))

(declare-fun m!5586327 () Bool)

(assert (=> b!4686895 m!5586327))

(declare-fun m!5586329 () Bool)

(assert (=> b!4686895 m!5586329))

(declare-fun m!5586331 () Bool)

(assert (=> b!4686895 m!5586331))

(declare-fun m!5586333 () Bool)

(assert (=> b!4686895 m!5586333))

(declare-fun m!5586335 () Bool)

(assert (=> b!4686895 m!5586335))

(declare-fun m!5586337 () Bool)

(assert (=> b!4686895 m!5586337))

(declare-fun m!5586339 () Bool)

(assert (=> b!4686895 m!5586339))

(declare-fun m!5586341 () Bool)

(assert (=> b!4686895 m!5586341))

(declare-fun m!5586343 () Bool)

(assert (=> b!4686895 m!5586343))

(declare-fun m!5586345 () Bool)

(assert (=> b!4686895 m!5586345))

(assert (=> b!4686895 m!5586341))

(declare-fun m!5586347 () Bool)

(assert (=> b!4686895 m!5586347))

(declare-fun m!5586349 () Bool)

(assert (=> b!4686895 m!5586349))

(declare-fun m!5586351 () Bool)

(assert (=> b!4686890 m!5586351))

(declare-fun m!5586353 () Bool)

(assert (=> b!4686885 m!5586353))

(declare-fun m!5586355 () Bool)

(assert (=> b!4686885 m!5586355))

(declare-fun m!5586357 () Bool)

(assert (=> b!4686885 m!5586357))

(declare-fun m!5586359 () Bool)

(assert (=> b!4686892 m!5586359))

(declare-fun m!5586361 () Bool)

(assert (=> b!4686892 m!5586361))

(declare-fun m!5586363 () Bool)

(assert (=> b!4686887 m!5586363))

(declare-fun m!5586365 () Bool)

(assert (=> start!473808 m!5586365))

(declare-fun m!5586367 () Bool)

(assert (=> start!473808 m!5586367))

(declare-fun m!5586369 () Bool)

(assert (=> b!4686889 m!5586369))

(declare-fun m!5586371 () Bool)

(assert (=> b!4686898 m!5586371))

(declare-fun m!5586373 () Bool)

(assert (=> b!4686893 m!5586373))

(declare-fun m!5586375 () Bool)

(assert (=> b!4686893 m!5586375))

(declare-fun m!5586377 () Bool)

(assert (=> b!4686896 m!5586377))

(declare-fun m!5586379 () Bool)

(assert (=> b!4686886 m!5586379))

(declare-fun m!5586381 () Bool)

(assert (=> b!4686886 m!5586381))

(declare-fun m!5586383 () Bool)

(assert (=> b!4686886 m!5586383))

(declare-fun m!5586385 () Bool)

(assert (=> b!4686899 m!5586385))

(declare-fun m!5586387 () Bool)

(assert (=> b!4686891 m!5586387))

(check-sat (not b!4686887) (not b!4686902) (not b!4686888) (not b!4686897) (not b!4686903) (not b!4686896) (not b!4686889) (not b!4686900) (not b!4686901) tp_is_empty!30645 tp_is_empty!30647 (not b!4686886) (not b!4686892) (not b!4686890) (not b!4686895) (not start!473808) (not b!4686899) (not b!4686885) (not b!4686898) (not b!4686893) (not b!4686891))
(check-sat)
