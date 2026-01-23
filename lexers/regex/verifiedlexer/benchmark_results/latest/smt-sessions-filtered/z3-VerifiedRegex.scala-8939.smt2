; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479348 () Bool)

(assert start!479348)

(declare-fun b!4714483 () Bool)

(declare-fun res!1993206 () Bool)

(declare-fun e!2940384 () Bool)

(assert (=> b!4714483 (=> (not res!1993206) (not e!2940384))))

(declare-datatypes ((K!14100 0))(
  ( (K!14101 (val!19551 Int)) )
))
(declare-datatypes ((V!14346 0))(
  ( (V!14347 (val!19552 Int)) )
))
(declare-datatypes ((tuple2!54314 0))(
  ( (tuple2!54315 (_1!30451 K!14100) (_2!30451 V!14346)) )
))
(declare-datatypes ((List!52863 0))(
  ( (Nil!52739) (Cons!52739 (h!59062 tuple2!54314) (t!360109 List!52863)) )
))
(declare-fun oldBucket!34 () List!52863)

(declare-fun noDuplicateKeys!1980 (List!52863) Bool)

(assert (=> b!4714483 (= res!1993206 (noDuplicateKeys!1980 oldBucket!34))))

(declare-fun b!4714484 () Bool)

(declare-fun res!1993209 () Bool)

(declare-fun e!2940385 () Bool)

(assert (=> b!4714484 (=> res!1993209 e!2940385)))

(declare-fun lt!1879080 () tuple2!54314)

(assert (=> b!4714484 (= res!1993209 (not (= (h!59062 oldBucket!34) lt!1879080)))))

(declare-fun b!4714485 () Bool)

(declare-fun e!2940389 () Bool)

(declare-fun tp!1347831 () Bool)

(assert (=> b!4714485 (= e!2940389 tp!1347831)))

(declare-fun b!4714486 () Bool)

(declare-fun e!2940392 () Bool)

(assert (=> b!4714486 (= e!2940384 e!2940392)))

(declare-fun res!1993216 () Bool)

(assert (=> b!4714486 (=> (not res!1993216) (not e!2940392))))

(declare-datatypes ((ListMap!5213 0))(
  ( (ListMap!5214 (toList!5849 List!52863)) )
))
(declare-fun lt!1879078 () ListMap!5213)

(declare-fun key!4653 () K!14100)

(declare-fun contains!16067 (ListMap!5213 K!14100) Bool)

(assert (=> b!4714486 (= res!1993216 (contains!16067 lt!1879078 key!4653))))

(declare-datatypes ((tuple2!54316 0))(
  ( (tuple2!54317 (_1!30452 (_ BitVec 64)) (_2!30452 List!52863)) )
))
(declare-datatypes ((List!52864 0))(
  ( (Nil!52740) (Cons!52740 (h!59063 tuple2!54316) (t!360110 List!52864)) )
))
(declare-datatypes ((ListLongMap!4379 0))(
  ( (ListLongMap!4380 (toList!5850 List!52864)) )
))
(declare-fun lm!2023 () ListLongMap!4379)

(declare-fun extractMap!2006 (List!52864) ListMap!5213)

(assert (=> b!4714486 (= lt!1879078 (extractMap!2006 (toList!5850 lm!2023)))))

(declare-fun lt!1879099 () tuple2!54316)

(declare-fun b!4714487 () Bool)

(declare-fun lt!1879094 () ListMap!5213)

(declare-fun eq!1107 (ListMap!5213 ListMap!5213) Bool)

(declare-fun -!736 (ListMap!5213 K!14100) ListMap!5213)

(assert (=> b!4714487 (= e!2940385 (eq!1107 (extractMap!2006 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))) (-!736 lt!1879094 key!4653)))))

(declare-fun lt!1879092 () List!52864)

(declare-fun lt!1879090 () tuple2!54316)

(assert (=> b!4714487 (eq!1107 (extractMap!2006 (Cons!52740 lt!1879099 lt!1879092)) (-!736 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)) key!4653))))

(declare-fun lt!1879075 () List!52864)

(declare-fun tail!8914 (List!52864) List!52864)

(assert (=> b!4714487 (= lt!1879092 (tail!8914 lt!1879075))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1879100 () List!52863)

(assert (=> b!4714487 (= lt!1879099 (tuple2!54317 hash!405 lt!1879100))))

(declare-datatypes ((Unit!128492 0))(
  ( (Unit!128493) )
))
(declare-fun lt!1879088 () Unit!128492)

(declare-fun lt!1879079 () ListLongMap!4379)

(declare-datatypes ((Hashable!6349 0))(
  ( (HashableExt!6348 (__x!32052 Int)) )
))
(declare-fun hashF!1323 () Hashable!6349)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!98 (ListLongMap!4379 (_ BitVec 64) List!52863 List!52863 K!14100 Hashable!6349) Unit!128492)

(assert (=> b!4714487 (= lt!1879088 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!98 lt!1879079 hash!405 (t!360109 oldBucket!34) lt!1879100 key!4653 hashF!1323))))

(declare-fun b!4714488 () Bool)

(declare-fun res!1993219 () Bool)

(assert (=> b!4714488 (=> (not res!1993219) (not e!2940384))))

(declare-fun newBucket!218 () List!52863)

(assert (=> b!4714488 (= res!1993219 (noDuplicateKeys!1980 newBucket!218))))

(declare-fun b!4714489 () Bool)

(declare-fun res!1993213 () Bool)

(assert (=> b!4714489 (=> (not res!1993213) (not e!2940384))))

(declare-fun removePairForKey!1575 (List!52863 K!14100) List!52863)

(assert (=> b!4714489 (= res!1993213 (= (removePairForKey!1575 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4714490 () Bool)

(declare-fun e!2940386 () Bool)

(assert (=> b!4714490 (= e!2940386 e!2940385)))

(declare-fun res!1993215 () Bool)

(assert (=> b!4714490 (=> res!1993215 e!2940385)))

(declare-fun lt!1879097 () ListMap!5213)

(declare-fun lt!1879081 () ListMap!5213)

(declare-fun +!2240 (ListMap!5213 tuple2!54314) ListMap!5213)

(assert (=> b!4714490 (= res!1993215 (not (eq!1107 lt!1879097 (+!2240 lt!1879081 (h!59062 oldBucket!34)))))))

(declare-fun lt!1879087 () List!52863)

(assert (=> b!4714490 (= lt!1879081 (extractMap!2006 (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023)))))))

(declare-fun lt!1879076 () tuple2!54316)

(assert (=> b!4714490 (= lt!1879097 (extractMap!2006 (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023)))))))

(declare-fun lt!1879091 () ListMap!5213)

(declare-fun addToMapMapFromBucket!1410 (List!52863 ListMap!5213) ListMap!5213)

(assert (=> b!4714490 (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879080 lt!1879100) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879080))))

(declare-fun lt!1879085 () Unit!128492)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!356 (tuple2!54314 List!52863 ListMap!5213) Unit!128492)

(assert (=> b!4714490 (= lt!1879085 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!356 lt!1879080 lt!1879100 lt!1879091))))

(declare-fun head!10189 (List!52863) tuple2!54314)

(assert (=> b!4714490 (= lt!1879080 (head!10189 newBucket!218))))

(declare-fun lt!1879086 () tuple2!54314)

(assert (=> b!4714490 (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879086 lt!1879087) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879086))))

(declare-fun lt!1879074 () Unit!128492)

(assert (=> b!4714490 (= lt!1879074 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!356 lt!1879086 lt!1879087 lt!1879091))))

(assert (=> b!4714490 (= lt!1879086 (head!10189 oldBucket!34))))

(assert (=> b!4714490 (contains!16067 lt!1879094 key!4653)))

(assert (=> b!4714490 (= lt!1879094 (extractMap!2006 lt!1879075))))

(declare-fun lt!1879098 () Unit!128492)

(declare-fun lemmaListContainsThenExtractedMapContains!526 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> b!4714490 (= lt!1879098 (lemmaListContainsThenExtractedMapContains!526 lt!1879079 key!4653 hashF!1323))))

(assert (=> b!4714490 (= lt!1879079 (ListLongMap!4380 lt!1879075))))

(assert (=> b!4714490 (= lt!1879075 (Cons!52740 lt!1879090 (t!360110 (toList!5850 lm!2023))))))

(assert (=> b!4714490 (= lt!1879090 (tuple2!54317 hash!405 (t!360109 oldBucket!34)))))

(declare-fun b!4714491 () Bool)

(declare-fun res!1993217 () Bool)

(declare-fun e!2940390 () Bool)

(assert (=> b!4714491 (=> (not res!1993217) (not e!2940390))))

(declare-fun allKeysSameHashInMap!1894 (ListLongMap!4379 Hashable!6349) Bool)

(assert (=> b!4714491 (= res!1993217 (allKeysSameHashInMap!1894 lm!2023 hashF!1323))))

(declare-fun b!4714492 () Bool)

(declare-fun res!1993208 () Bool)

(assert (=> b!4714492 (=> res!1993208 e!2940385)))

(assert (=> b!4714492 (= res!1993208 (not (eq!1107 lt!1879097 (+!2240 lt!1879081 lt!1879080))))))

(declare-fun tp!1347829 () Bool)

(declare-fun tp_is_empty!31215 () Bool)

(declare-fun b!4714493 () Bool)

(declare-fun e!2940391 () Bool)

(declare-fun tp_is_empty!31213 () Bool)

(assert (=> b!4714493 (= e!2940391 (and tp_is_empty!31213 tp_is_empty!31215 tp!1347829))))

(declare-fun b!4714494 () Bool)

(declare-fun res!1993210 () Bool)

(assert (=> b!4714494 (=> res!1993210 e!2940386)))

(assert (=> b!4714494 (= res!1993210 (not (= (removePairForKey!1575 (t!360109 oldBucket!34) key!4653) lt!1879100)))))

(declare-fun b!4714495 () Bool)

(declare-fun e!2940387 () Bool)

(declare-fun e!2940388 () Bool)

(assert (=> b!4714495 (= e!2940387 e!2940388)))

(declare-fun res!1993207 () Bool)

(assert (=> b!4714495 (=> res!1993207 e!2940388)))

(declare-fun containsKey!3305 (List!52863 K!14100) Bool)

(assert (=> b!4714495 (= res!1993207 (not (containsKey!3305 (t!360109 oldBucket!34) key!4653)))))

(assert (=> b!4714495 (containsKey!3305 oldBucket!34 key!4653)))

(declare-fun lt!1879089 () Unit!128492)

(declare-fun lemmaGetPairDefinedThenContainsKey!294 (List!52863 K!14100 Hashable!6349) Unit!128492)

(assert (=> b!4714495 (= lt!1879089 (lemmaGetPairDefinedThenContainsKey!294 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1879077 () List!52863)

(declare-datatypes ((Option!12308 0))(
  ( (None!12307) (Some!12307 (v!46854 tuple2!54314)) )
))
(declare-fun isDefined!9562 (Option!12308) Bool)

(declare-fun getPair!546 (List!52863 K!14100) Option!12308)

(assert (=> b!4714495 (isDefined!9562 (getPair!546 lt!1879077 key!4653))))

(declare-fun lambda!213613 () Int)

(declare-fun lt!1879082 () tuple2!54316)

(declare-fun lt!1879096 () Unit!128492)

(declare-fun forallContained!3594 (List!52864 Int tuple2!54316) Unit!128492)

(assert (=> b!4714495 (= lt!1879096 (forallContained!3594 (toList!5850 lm!2023) lambda!213613 lt!1879082))))

(declare-fun contains!16068 (List!52864 tuple2!54316) Bool)

(assert (=> b!4714495 (contains!16068 (toList!5850 lm!2023) lt!1879082)))

(declare-fun lt!1879083 () (_ BitVec 64))

(assert (=> b!4714495 (= lt!1879082 (tuple2!54317 lt!1879083 lt!1879077))))

(declare-fun lt!1879084 () Unit!128492)

(declare-fun lemmaGetValueImpliesTupleContained!351 (ListLongMap!4379 (_ BitVec 64) List!52863) Unit!128492)

(assert (=> b!4714495 (= lt!1879084 (lemmaGetValueImpliesTupleContained!351 lm!2023 lt!1879083 lt!1879077))))

(declare-fun apply!12429 (ListLongMap!4379 (_ BitVec 64)) List!52863)

(assert (=> b!4714495 (= lt!1879077 (apply!12429 lm!2023 lt!1879083))))

(declare-fun contains!16069 (ListLongMap!4379 (_ BitVec 64)) Bool)

(assert (=> b!4714495 (contains!16069 lm!2023 lt!1879083)))

(declare-fun lt!1879095 () Unit!128492)

(declare-fun lemmaInGenMapThenLongMapContainsHash!752 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> b!4714495 (= lt!1879095 (lemmaInGenMapThenLongMapContainsHash!752 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1879093 () Unit!128492)

(declare-fun lemmaInGenMapThenGetPairDefined!342 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> b!4714495 (= lt!1879093 (lemmaInGenMapThenGetPairDefined!342 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4714496 () Bool)

(declare-fun res!1993214 () Bool)

(assert (=> b!4714496 (=> (not res!1993214) (not e!2940384))))

(declare-fun allKeysSameHash!1806 (List!52863 (_ BitVec 64) Hashable!6349) Bool)

(assert (=> b!4714496 (= res!1993214 (allKeysSameHash!1806 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1347830 () Bool)

(declare-fun b!4714497 () Bool)

(declare-fun e!2940394 () Bool)

(assert (=> b!4714497 (= e!2940394 (and tp_is_empty!31213 tp_is_empty!31215 tp!1347830))))

(declare-fun b!4714498 () Bool)

(declare-fun e!2940393 () Bool)

(assert (=> b!4714498 (= e!2940393 (not e!2940387))))

(declare-fun res!1993222 () Bool)

(assert (=> b!4714498 (=> res!1993222 e!2940387)))

(get-info :version)

(assert (=> b!4714498 (= res!1993222 (or (and ((_ is Cons!52739) oldBucket!34) (= (_1!30451 (h!59062 oldBucket!34)) key!4653)) (not ((_ is Cons!52739) oldBucket!34)) (= (_1!30451 (h!59062 oldBucket!34)) key!4653)))))

(assert (=> b!4714498 (= lt!1879078 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (toList!5850 lm!2023))) lt!1879091))))

(assert (=> b!4714498 (= lt!1879091 (extractMap!2006 (t!360110 (toList!5850 lm!2023))))))

(declare-fun tail!8915 (ListLongMap!4379) ListLongMap!4379)

(assert (=> b!4714498 (= (t!360110 (toList!5850 lm!2023)) (toList!5850 (tail!8915 lm!2023)))))

(declare-fun b!4714499 () Bool)

(assert (=> b!4714499 (= e!2940390 e!2940393)))

(declare-fun res!1993223 () Bool)

(assert (=> b!4714499 (=> (not res!1993223) (not e!2940393))))

(declare-fun head!10190 (List!52864) tuple2!54316)

(assert (=> b!4714499 (= res!1993223 (= (head!10190 (toList!5850 lm!2023)) lt!1879076))))

(assert (=> b!4714499 (= lt!1879076 (tuple2!54317 hash!405 oldBucket!34))))

(declare-fun b!4714500 () Bool)

(declare-fun res!1993218 () Bool)

(assert (=> b!4714500 (=> (not res!1993218) (not e!2940393))))

(assert (=> b!4714500 (= res!1993218 ((_ is Cons!52740) (toList!5850 lm!2023)))))

(declare-fun b!4714501 () Bool)

(assert (=> b!4714501 (= e!2940392 e!2940390)))

(declare-fun res!1993220 () Bool)

(assert (=> b!4714501 (=> (not res!1993220) (not e!2940390))))

(assert (=> b!4714501 (= res!1993220 (= lt!1879083 hash!405))))

(declare-fun hash!4318 (Hashable!6349 K!14100) (_ BitVec 64))

(assert (=> b!4714501 (= lt!1879083 (hash!4318 hashF!1323 key!4653))))

(declare-fun b!4714502 () Bool)

(assert (=> b!4714502 (= e!2940388 e!2940386)))

(declare-fun res!1993221 () Bool)

(assert (=> b!4714502 (=> res!1993221 e!2940386)))

(assert (=> b!4714502 (= res!1993221 (not (= (removePairForKey!1575 lt!1879087 key!4653) lt!1879100)))))

(declare-fun tail!8916 (List!52863) List!52863)

(assert (=> b!4714502 (= lt!1879100 (tail!8916 newBucket!218))))

(assert (=> b!4714502 (= lt!1879087 (tail!8916 oldBucket!34))))

(declare-fun res!1993212 () Bool)

(assert (=> start!479348 (=> (not res!1993212) (not e!2940384))))

(declare-fun forall!11525 (List!52864 Int) Bool)

(assert (=> start!479348 (= res!1993212 (forall!11525 (toList!5850 lm!2023) lambda!213613))))

(assert (=> start!479348 e!2940384))

(declare-fun inv!67974 (ListLongMap!4379) Bool)

(assert (=> start!479348 (and (inv!67974 lm!2023) e!2940389)))

(assert (=> start!479348 tp_is_empty!31213))

(assert (=> start!479348 e!2940394))

(assert (=> start!479348 true))

(assert (=> start!479348 e!2940391))

(declare-fun b!4714503 () Bool)

(declare-fun res!1993211 () Bool)

(assert (=> b!4714503 (=> (not res!1993211) (not e!2940390))))

(assert (=> b!4714503 (= res!1993211 (allKeysSameHash!1806 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!479348 res!1993212) b!4714483))

(assert (= (and b!4714483 res!1993206) b!4714488))

(assert (= (and b!4714488 res!1993219) b!4714489))

(assert (= (and b!4714489 res!1993213) b!4714496))

(assert (= (and b!4714496 res!1993214) b!4714486))

(assert (= (and b!4714486 res!1993216) b!4714501))

(assert (= (and b!4714501 res!1993220) b!4714503))

(assert (= (and b!4714503 res!1993211) b!4714491))

(assert (= (and b!4714491 res!1993217) b!4714499))

(assert (= (and b!4714499 res!1993223) b!4714500))

(assert (= (and b!4714500 res!1993218) b!4714498))

(assert (= (and b!4714498 (not res!1993222)) b!4714495))

(assert (= (and b!4714495 (not res!1993207)) b!4714502))

(assert (= (and b!4714502 (not res!1993221)) b!4714494))

(assert (= (and b!4714494 (not res!1993210)) b!4714490))

(assert (= (and b!4714490 (not res!1993215)) b!4714484))

(assert (= (and b!4714484 (not res!1993209)) b!4714492))

(assert (= (and b!4714492 (not res!1993208)) b!4714487))

(assert (= start!479348 b!4714485))

(assert (= (and start!479348 ((_ is Cons!52739) oldBucket!34)) b!4714497))

(assert (= (and start!479348 ((_ is Cons!52739) newBucket!218)) b!4714493))

(declare-fun m!5641991 () Bool)

(assert (=> b!4714483 m!5641991))

(declare-fun m!5641993 () Bool)

(assert (=> b!4714489 m!5641993))

(declare-fun m!5641995 () Bool)

(assert (=> b!4714487 m!5641995))

(declare-fun m!5641997 () Bool)

(assert (=> b!4714487 m!5641997))

(assert (=> b!4714487 m!5641995))

(declare-fun m!5641999 () Bool)

(assert (=> b!4714487 m!5641999))

(assert (=> b!4714487 m!5641997))

(declare-fun m!5642001 () Bool)

(assert (=> b!4714487 m!5642001))

(declare-fun m!5642003 () Bool)

(assert (=> b!4714487 m!5642003))

(declare-fun m!5642005 () Bool)

(assert (=> b!4714487 m!5642005))

(declare-fun m!5642007 () Bool)

(assert (=> b!4714487 m!5642007))

(declare-fun m!5642009 () Bool)

(assert (=> b!4714487 m!5642009))

(declare-fun m!5642011 () Bool)

(assert (=> b!4714487 m!5642011))

(assert (=> b!4714487 m!5642007))

(assert (=> b!4714487 m!5641999))

(assert (=> b!4714487 m!5642009))

(declare-fun m!5642013 () Bool)

(assert (=> b!4714491 m!5642013))

(declare-fun m!5642015 () Bool)

(assert (=> b!4714499 m!5642015))

(declare-fun m!5642017 () Bool)

(assert (=> b!4714490 m!5642017))

(declare-fun m!5642019 () Bool)

(assert (=> b!4714490 m!5642019))

(declare-fun m!5642021 () Bool)

(assert (=> b!4714490 m!5642021))

(declare-fun m!5642023 () Bool)

(assert (=> b!4714490 m!5642023))

(declare-fun m!5642025 () Bool)

(assert (=> b!4714490 m!5642025))

(declare-fun m!5642027 () Bool)

(assert (=> b!4714490 m!5642027))

(assert (=> b!4714490 m!5642025))

(declare-fun m!5642029 () Bool)

(assert (=> b!4714490 m!5642029))

(declare-fun m!5642031 () Bool)

(assert (=> b!4714490 m!5642031))

(declare-fun m!5642033 () Bool)

(assert (=> b!4714490 m!5642033))

(declare-fun m!5642035 () Bool)

(assert (=> b!4714490 m!5642035))

(declare-fun m!5642037 () Bool)

(assert (=> b!4714490 m!5642037))

(assert (=> b!4714490 m!5642029))

(assert (=> b!4714490 m!5642037))

(assert (=> b!4714490 m!5642019))

(declare-fun m!5642039 () Bool)

(assert (=> b!4714490 m!5642039))

(declare-fun m!5642041 () Bool)

(assert (=> b!4714490 m!5642041))

(declare-fun m!5642043 () Bool)

(assert (=> b!4714490 m!5642043))

(declare-fun m!5642045 () Bool)

(assert (=> b!4714490 m!5642045))

(declare-fun m!5642047 () Bool)

(assert (=> b!4714490 m!5642047))

(declare-fun m!5642049 () Bool)

(assert (=> b!4714490 m!5642049))

(declare-fun m!5642051 () Bool)

(assert (=> b!4714490 m!5642051))

(declare-fun m!5642053 () Bool)

(assert (=> b!4714490 m!5642053))

(assert (=> b!4714490 m!5642045))

(assert (=> b!4714490 m!5642051))

(assert (=> b!4714490 m!5642039))

(declare-fun m!5642055 () Bool)

(assert (=> b!4714502 m!5642055))

(declare-fun m!5642057 () Bool)

(assert (=> b!4714502 m!5642057))

(declare-fun m!5642059 () Bool)

(assert (=> b!4714502 m!5642059))

(declare-fun m!5642061 () Bool)

(assert (=> b!4714503 m!5642061))

(declare-fun m!5642063 () Bool)

(assert (=> b!4714488 m!5642063))

(declare-fun m!5642065 () Bool)

(assert (=> b!4714498 m!5642065))

(declare-fun m!5642067 () Bool)

(assert (=> b!4714498 m!5642067))

(declare-fun m!5642069 () Bool)

(assert (=> b!4714498 m!5642069))

(declare-fun m!5642071 () Bool)

(assert (=> b!4714495 m!5642071))

(declare-fun m!5642073 () Bool)

(assert (=> b!4714495 m!5642073))

(declare-fun m!5642075 () Bool)

(assert (=> b!4714495 m!5642075))

(declare-fun m!5642077 () Bool)

(assert (=> b!4714495 m!5642077))

(declare-fun m!5642079 () Bool)

(assert (=> b!4714495 m!5642079))

(declare-fun m!5642081 () Bool)

(assert (=> b!4714495 m!5642081))

(declare-fun m!5642083 () Bool)

(assert (=> b!4714495 m!5642083))

(declare-fun m!5642085 () Bool)

(assert (=> b!4714495 m!5642085))

(declare-fun m!5642087 () Bool)

(assert (=> b!4714495 m!5642087))

(declare-fun m!5642089 () Bool)

(assert (=> b!4714495 m!5642089))

(assert (=> b!4714495 m!5642077))

(declare-fun m!5642091 () Bool)

(assert (=> b!4714495 m!5642091))

(declare-fun m!5642093 () Bool)

(assert (=> b!4714495 m!5642093))

(declare-fun m!5642095 () Bool)

(assert (=> start!479348 m!5642095))

(declare-fun m!5642097 () Bool)

(assert (=> start!479348 m!5642097))

(declare-fun m!5642099 () Bool)

(assert (=> b!4714494 m!5642099))

(declare-fun m!5642101 () Bool)

(assert (=> b!4714486 m!5642101))

(declare-fun m!5642103 () Bool)

(assert (=> b!4714486 m!5642103))

(declare-fun m!5642105 () Bool)

(assert (=> b!4714501 m!5642105))

(declare-fun m!5642107 () Bool)

(assert (=> b!4714496 m!5642107))

(declare-fun m!5642109 () Bool)

(assert (=> b!4714492 m!5642109))

(assert (=> b!4714492 m!5642109))

(declare-fun m!5642111 () Bool)

(assert (=> b!4714492 m!5642111))

(check-sat (not b!4714491) (not b!4714499) (not b!4714503) (not b!4714501) tp_is_empty!31213 tp_is_empty!31215 (not b!4714490) (not b!4714496) (not b!4714495) (not b!4714485) (not b!4714497) (not b!4714492) (not b!4714502) (not start!479348) (not b!4714483) (not b!4714487) (not b!4714488) (not b!4714498) (not b!4714486) (not b!4714489) (not b!4714493) (not b!4714494))
(check-sat)
(get-model)

(declare-fun b!4714602 () Bool)

(assert (=> b!4714602 true))

(declare-fun bs!1103504 () Bool)

(declare-fun b!4714604 () Bool)

(assert (= bs!1103504 (and b!4714604 b!4714602)))

(declare-fun lambda!213653 () Int)

(declare-fun lambda!213652 () Int)

(assert (=> bs!1103504 (= lambda!213653 lambda!213652)))

(assert (=> b!4714604 true))

(declare-fun lambda!213654 () Int)

(declare-fun lt!1879234 () ListMap!5213)

(assert (=> bs!1103504 (= (= lt!1879234 lt!1879091) (= lambda!213654 lambda!213652))))

(assert (=> b!4714604 (= (= lt!1879234 lt!1879091) (= lambda!213654 lambda!213653))))

(assert (=> b!4714604 true))

(declare-fun bs!1103505 () Bool)

(declare-fun d!1500102 () Bool)

(assert (= bs!1103505 (and d!1500102 b!4714602)))

(declare-fun lambda!213655 () Int)

(declare-fun lt!1879232 () ListMap!5213)

(assert (=> bs!1103505 (= (= lt!1879232 lt!1879091) (= lambda!213655 lambda!213652))))

(declare-fun bs!1103506 () Bool)

(assert (= bs!1103506 (and d!1500102 b!4714604)))

(assert (=> bs!1103506 (= (= lt!1879232 lt!1879091) (= lambda!213655 lambda!213653))))

(assert (=> bs!1103506 (= (= lt!1879232 lt!1879234) (= lambda!213655 lambda!213654))))

(assert (=> d!1500102 true))

(declare-fun b!4714601 () Bool)

(declare-fun res!1993286 () Bool)

(declare-fun e!2940462 () Bool)

(assert (=> b!4714601 (=> (not res!1993286) (not e!2940462))))

(declare-fun forall!11527 (List!52863 Int) Bool)

(assert (=> b!4714601 (= res!1993286 (forall!11527 (toList!5849 lt!1879091) lambda!213655))))

(declare-fun e!2940461 () ListMap!5213)

(assert (=> b!4714602 (= e!2940461 lt!1879091)))

(declare-fun lt!1879219 () Unit!128492)

(declare-fun call!329608 () Unit!128492)

(assert (=> b!4714602 (= lt!1879219 call!329608)))

(declare-fun call!329609 () Bool)

(assert (=> b!4714602 call!329609))

(declare-fun lt!1879220 () Unit!128492)

(assert (=> b!4714602 (= lt!1879220 lt!1879219)))

(declare-fun call!329610 () Bool)

(assert (=> b!4714602 call!329610))

(declare-fun lt!1879216 () Unit!128492)

(declare-fun Unit!128496 () Unit!128492)

(assert (=> b!4714602 (= lt!1879216 Unit!128496)))

(declare-fun b!4714603 () Bool)

(declare-fun e!2940460 () Bool)

(assert (=> b!4714603 (= e!2940460 (forall!11527 (toList!5849 lt!1879091) lambda!213654))))

(declare-fun bm!329603 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!776 (ListMap!5213) Unit!128492)

(assert (=> bm!329603 (= call!329608 (lemmaContainsAllItsOwnKeys!776 lt!1879091))))

(assert (=> b!4714604 (= e!2940461 lt!1879234)))

(declare-fun lt!1879230 () ListMap!5213)

(assert (=> b!4714604 (= lt!1879230 (+!2240 lt!1879091 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023))))))))

(assert (=> b!4714604 (= lt!1879234 (addToMapMapFromBucket!1410 (t!360109 (_2!30452 (h!59063 (toList!5850 lm!2023)))) (+!2240 lt!1879091 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023)))))))))

(declare-fun lt!1879227 () Unit!128492)

(assert (=> b!4714604 (= lt!1879227 call!329608)))

(assert (=> b!4714604 call!329610))

(declare-fun lt!1879228 () Unit!128492)

(assert (=> b!4714604 (= lt!1879228 lt!1879227)))

(assert (=> b!4714604 call!329609))

(declare-fun lt!1879229 () Unit!128492)

(declare-fun Unit!128497 () Unit!128492)

(assert (=> b!4714604 (= lt!1879229 Unit!128497)))

(assert (=> b!4714604 (forall!11527 (t!360109 (_2!30452 (h!59063 (toList!5850 lm!2023)))) lambda!213654)))

(declare-fun lt!1879215 () Unit!128492)

(declare-fun Unit!128499 () Unit!128492)

(assert (=> b!4714604 (= lt!1879215 Unit!128499)))

(declare-fun lt!1879231 () Unit!128492)

(declare-fun Unit!128500 () Unit!128492)

(assert (=> b!4714604 (= lt!1879231 Unit!128500)))

(declare-fun lt!1879225 () Unit!128492)

(declare-fun forallContained!3595 (List!52863 Int tuple2!54314) Unit!128492)

(assert (=> b!4714604 (= lt!1879225 (forallContained!3595 (toList!5849 lt!1879230) lambda!213654 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023))))))))

(assert (=> b!4714604 (contains!16067 lt!1879230 (_1!30451 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023))))))))

(declare-fun lt!1879218 () Unit!128492)

(declare-fun Unit!128503 () Unit!128492)

(assert (=> b!4714604 (= lt!1879218 Unit!128503)))

(assert (=> b!4714604 (contains!16067 lt!1879234 (_1!30451 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023))))))))

(declare-fun lt!1879226 () Unit!128492)

(declare-fun Unit!128504 () Unit!128492)

(assert (=> b!4714604 (= lt!1879226 Unit!128504)))

(assert (=> b!4714604 (forall!11527 (_2!30452 (h!59063 (toList!5850 lm!2023))) lambda!213654)))

(declare-fun lt!1879235 () Unit!128492)

(declare-fun Unit!128506 () Unit!128492)

(assert (=> b!4714604 (= lt!1879235 Unit!128506)))

(assert (=> b!4714604 (forall!11527 (toList!5849 lt!1879230) lambda!213654)))

(declare-fun lt!1879222 () Unit!128492)

(declare-fun Unit!128507 () Unit!128492)

(assert (=> b!4714604 (= lt!1879222 Unit!128507)))

(declare-fun lt!1879233 () Unit!128492)

(declare-fun Unit!128509 () Unit!128492)

(assert (=> b!4714604 (= lt!1879233 Unit!128509)))

(declare-fun lt!1879223 () Unit!128492)

(declare-fun addForallContainsKeyThenBeforeAdding!774 (ListMap!5213 ListMap!5213 K!14100 V!14346) Unit!128492)

(assert (=> b!4714604 (= lt!1879223 (addForallContainsKeyThenBeforeAdding!774 lt!1879091 lt!1879234 (_1!30451 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023))))) (_2!30451 (h!59062 (_2!30452 (h!59063 (toList!5850 lm!2023)))))))))

(assert (=> b!4714604 (forall!11527 (toList!5849 lt!1879091) lambda!213654)))

(declare-fun lt!1879224 () Unit!128492)

(assert (=> b!4714604 (= lt!1879224 lt!1879223)))

(assert (=> b!4714604 (forall!11527 (toList!5849 lt!1879091) lambda!213654)))

(declare-fun lt!1879217 () Unit!128492)

(declare-fun Unit!128512 () Unit!128492)

(assert (=> b!4714604 (= lt!1879217 Unit!128512)))

(declare-fun res!1993287 () Bool)

(assert (=> b!4714604 (= res!1993287 (forall!11527 (_2!30452 (h!59063 (toList!5850 lm!2023))) lambda!213654))))

(assert (=> b!4714604 (=> (not res!1993287) (not e!2940460))))

(assert (=> b!4714604 e!2940460))

(declare-fun lt!1879221 () Unit!128492)

(declare-fun Unit!128514 () Unit!128492)

(assert (=> b!4714604 (= lt!1879221 Unit!128514)))

(declare-fun bm!329604 () Bool)

(declare-fun c!805295 () Bool)

(assert (=> bm!329604 (= call!329609 (forall!11527 (ite c!805295 (toList!5849 lt!1879091) (toList!5849 lt!1879230)) (ite c!805295 lambda!213652 lambda!213654)))))

(declare-fun bm!329605 () Bool)

(assert (=> bm!329605 (= call!329610 (forall!11527 (toList!5849 lt!1879091) (ite c!805295 lambda!213652 lambda!213653)))))

(assert (=> d!1500102 e!2940462))

(declare-fun res!1993288 () Bool)

(assert (=> d!1500102 (=> (not res!1993288) (not e!2940462))))

(assert (=> d!1500102 (= res!1993288 (forall!11527 (_2!30452 (h!59063 (toList!5850 lm!2023))) lambda!213655))))

(assert (=> d!1500102 (= lt!1879232 e!2940461)))

(assert (=> d!1500102 (= c!805295 ((_ is Nil!52739) (_2!30452 (h!59063 (toList!5850 lm!2023)))))))

(assert (=> d!1500102 (noDuplicateKeys!1980 (_2!30452 (h!59063 (toList!5850 lm!2023))))))

(assert (=> d!1500102 (= (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (toList!5850 lm!2023))) lt!1879091) lt!1879232)))

(declare-fun b!4714605 () Bool)

(declare-fun invariantList!1488 (List!52863) Bool)

(assert (=> b!4714605 (= e!2940462 (invariantList!1488 (toList!5849 lt!1879232)))))

(assert (= (and d!1500102 c!805295) b!4714602))

(assert (= (and d!1500102 (not c!805295)) b!4714604))

(assert (= (and b!4714604 res!1993287) b!4714603))

(assert (= (or b!4714602 b!4714604) bm!329603))

(assert (= (or b!4714602 b!4714604) bm!329604))

(assert (= (or b!4714602 b!4714604) bm!329605))

(assert (= (and d!1500102 res!1993288) b!4714601))

(assert (= (and b!4714601 res!1993286) b!4714605))

(declare-fun m!5642213 () Bool)

(assert (=> bm!329605 m!5642213))

(declare-fun m!5642215 () Bool)

(assert (=> b!4714603 m!5642215))

(declare-fun m!5642217 () Bool)

(assert (=> b!4714601 m!5642217))

(declare-fun m!5642219 () Bool)

(assert (=> bm!329604 m!5642219))

(assert (=> b!4714604 m!5642215))

(declare-fun m!5642221 () Bool)

(assert (=> b!4714604 m!5642221))

(declare-fun m!5642223 () Bool)

(assert (=> b!4714604 m!5642223))

(declare-fun m!5642225 () Bool)

(assert (=> b!4714604 m!5642225))

(declare-fun m!5642227 () Bool)

(assert (=> b!4714604 m!5642227))

(assert (=> b!4714604 m!5642215))

(declare-fun m!5642229 () Bool)

(assert (=> b!4714604 m!5642229))

(declare-fun m!5642231 () Bool)

(assert (=> b!4714604 m!5642231))

(assert (=> b!4714604 m!5642227))

(declare-fun m!5642233 () Bool)

(assert (=> b!4714604 m!5642233))

(declare-fun m!5642235 () Bool)

(assert (=> b!4714604 m!5642235))

(declare-fun m!5642237 () Bool)

(assert (=> b!4714604 m!5642237))

(assert (=> b!4714604 m!5642223))

(declare-fun m!5642239 () Bool)

(assert (=> b!4714605 m!5642239))

(declare-fun m!5642241 () Bool)

(assert (=> bm!329603 m!5642241))

(declare-fun m!5642243 () Bool)

(assert (=> d!1500102 m!5642243))

(declare-fun m!5642245 () Bool)

(assert (=> d!1500102 m!5642245))

(assert (=> b!4714498 d!1500102))

(declare-fun bs!1103507 () Bool)

(declare-fun d!1500134 () Bool)

(assert (= bs!1103507 (and d!1500134 start!479348)))

(declare-fun lambda!213684 () Int)

(assert (=> bs!1103507 (= lambda!213684 lambda!213613)))

(declare-fun lt!1879280 () ListMap!5213)

(assert (=> d!1500134 (invariantList!1488 (toList!5849 lt!1879280))))

(declare-fun e!2940471 () ListMap!5213)

(assert (=> d!1500134 (= lt!1879280 e!2940471)))

(declare-fun c!805300 () Bool)

(assert (=> d!1500134 (= c!805300 ((_ is Cons!52740) (t!360110 (toList!5850 lm!2023))))))

(assert (=> d!1500134 (forall!11525 (t!360110 (toList!5850 lm!2023)) lambda!213684)))

(assert (=> d!1500134 (= (extractMap!2006 (t!360110 (toList!5850 lm!2023))) lt!1879280)))

(declare-fun b!4714618 () Bool)

(assert (=> b!4714618 (= e!2940471 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (t!360110 (toList!5850 lm!2023)))) (extractMap!2006 (t!360110 (t!360110 (toList!5850 lm!2023))))))))

(declare-fun b!4714619 () Bool)

(assert (=> b!4714619 (= e!2940471 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500134 c!805300) b!4714618))

(assert (= (and d!1500134 (not c!805300)) b!4714619))

(declare-fun m!5642247 () Bool)

(assert (=> d!1500134 m!5642247))

(declare-fun m!5642249 () Bool)

(assert (=> d!1500134 m!5642249))

(declare-fun m!5642251 () Bool)

(assert (=> b!4714618 m!5642251))

(assert (=> b!4714618 m!5642251))

(declare-fun m!5642253 () Bool)

(assert (=> b!4714618 m!5642253))

(assert (=> b!4714498 d!1500134))

(declare-fun d!1500136 () Bool)

(assert (=> d!1500136 (= (tail!8915 lm!2023) (ListLongMap!4380 (tail!8914 (toList!5850 lm!2023))))))

(declare-fun bs!1103508 () Bool)

(assert (= bs!1103508 d!1500136))

(declare-fun m!5642255 () Bool)

(assert (=> bs!1103508 m!5642255))

(assert (=> b!4714498 d!1500136))

(declare-fun d!1500138 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9354 (List!52863) (InoxSet tuple2!54314))

(assert (=> d!1500138 (= (eq!1107 (extractMap!2006 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))) (-!736 lt!1879094 key!4653)) (= (content!9354 (toList!5849 (extractMap!2006 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))))) (content!9354 (toList!5849 (-!736 lt!1879094 key!4653)))))))

(declare-fun bs!1103509 () Bool)

(assert (= bs!1103509 d!1500138))

(declare-fun m!5642257 () Bool)

(assert (=> bs!1103509 m!5642257))

(declare-fun m!5642259 () Bool)

(assert (=> bs!1103509 m!5642259))

(assert (=> b!4714487 d!1500138))

(declare-fun bs!1103510 () Bool)

(declare-fun d!1500140 () Bool)

(assert (= bs!1103510 (and d!1500140 start!479348)))

(declare-fun lambda!213687 () Int)

(assert (=> bs!1103510 (= lambda!213687 lambda!213613)))

(declare-fun bs!1103511 () Bool)

(assert (= bs!1103511 (and d!1500140 d!1500134)))

(assert (=> bs!1103511 (= lambda!213687 lambda!213684)))

(declare-fun lt!1879281 () ListMap!5213)

(assert (=> d!1500140 (invariantList!1488 (toList!5849 lt!1879281))))

(declare-fun e!2940472 () ListMap!5213)

(assert (=> d!1500140 (= lt!1879281 e!2940472)))

(declare-fun c!805301 () Bool)

(assert (=> d!1500140 (= c!805301 ((_ is Cons!52740) (Cons!52740 lt!1879090 lt!1879092)))))

(assert (=> d!1500140 (forall!11525 (Cons!52740 lt!1879090 lt!1879092) lambda!213687)))

(assert (=> d!1500140 (= (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)) lt!1879281)))

(declare-fun b!4714624 () Bool)

(assert (=> b!4714624 (= e!2940472 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (Cons!52740 lt!1879090 lt!1879092))) (extractMap!2006 (t!360110 (Cons!52740 lt!1879090 lt!1879092)))))))

(declare-fun b!4714625 () Bool)

(assert (=> b!4714625 (= e!2940472 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500140 c!805301) b!4714624))

(assert (= (and d!1500140 (not c!805301)) b!4714625))

(declare-fun m!5642261 () Bool)

(assert (=> d!1500140 m!5642261))

(declare-fun m!5642263 () Bool)

(assert (=> d!1500140 m!5642263))

(declare-fun m!5642265 () Bool)

(assert (=> b!4714624 m!5642265))

(assert (=> b!4714624 m!5642265))

(declare-fun m!5642267 () Bool)

(assert (=> b!4714624 m!5642267))

(assert (=> b!4714487 d!1500140))

(declare-fun d!1500142 () Bool)

(assert (=> d!1500142 (= (eq!1107 (extractMap!2006 (Cons!52740 lt!1879099 lt!1879092)) (-!736 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)) key!4653)) (= (content!9354 (toList!5849 (extractMap!2006 (Cons!52740 lt!1879099 lt!1879092)))) (content!9354 (toList!5849 (-!736 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)) key!4653)))))))

(declare-fun bs!1103512 () Bool)

(assert (= bs!1103512 d!1500142))

(declare-fun m!5642269 () Bool)

(assert (=> bs!1103512 m!5642269))

(declare-fun m!5642271 () Bool)

(assert (=> bs!1103512 m!5642271))

(assert (=> b!4714487 d!1500142))

(declare-fun bs!1103513 () Bool)

(declare-fun d!1500144 () Bool)

(assert (= bs!1103513 (and d!1500144 start!479348)))

(declare-fun lambda!213688 () Int)

(assert (=> bs!1103513 (= lambda!213688 lambda!213613)))

(declare-fun bs!1103514 () Bool)

(assert (= bs!1103514 (and d!1500144 d!1500134)))

(assert (=> bs!1103514 (= lambda!213688 lambda!213684)))

(declare-fun bs!1103515 () Bool)

(assert (= bs!1103515 (and d!1500144 d!1500140)))

(assert (=> bs!1103515 (= lambda!213688 lambda!213687)))

(declare-fun lt!1879282 () ListMap!5213)

(assert (=> d!1500144 (invariantList!1488 (toList!5849 lt!1879282))))

(declare-fun e!2940473 () ListMap!5213)

(assert (=> d!1500144 (= lt!1879282 e!2940473)))

(declare-fun c!805302 () Bool)

(assert (=> d!1500144 (= c!805302 ((_ is Cons!52740) (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))))))

(assert (=> d!1500144 (forall!11525 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023))) lambda!213688)))

(assert (=> d!1500144 (= (extractMap!2006 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))) lt!1879282)))

(declare-fun b!4714626 () Bool)

(assert (=> b!4714626 (= e!2940473 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023))))) (extractMap!2006 (t!360110 (Cons!52740 lt!1879099 (t!360110 (toList!5850 lm!2023)))))))))

(declare-fun b!4714627 () Bool)

(assert (=> b!4714627 (= e!2940473 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500144 c!805302) b!4714626))

(assert (= (and d!1500144 (not c!805302)) b!4714627))

(declare-fun m!5642273 () Bool)

(assert (=> d!1500144 m!5642273))

(declare-fun m!5642275 () Bool)

(assert (=> d!1500144 m!5642275))

(declare-fun m!5642277 () Bool)

(assert (=> b!4714626 m!5642277))

(assert (=> b!4714626 m!5642277))

(declare-fun m!5642279 () Bool)

(assert (=> b!4714626 m!5642279))

(assert (=> b!4714487 d!1500144))

(declare-fun bs!1103516 () Bool)

(declare-fun d!1500146 () Bool)

(assert (= bs!1103516 (and d!1500146 start!479348)))

(declare-fun lambda!213689 () Int)

(assert (=> bs!1103516 (= lambda!213689 lambda!213613)))

(declare-fun bs!1103517 () Bool)

(assert (= bs!1103517 (and d!1500146 d!1500134)))

(assert (=> bs!1103517 (= lambda!213689 lambda!213684)))

(declare-fun bs!1103518 () Bool)

(assert (= bs!1103518 (and d!1500146 d!1500140)))

(assert (=> bs!1103518 (= lambda!213689 lambda!213687)))

(declare-fun bs!1103519 () Bool)

(assert (= bs!1103519 (and d!1500146 d!1500144)))

(assert (=> bs!1103519 (= lambda!213689 lambda!213688)))

(declare-fun lt!1879283 () ListMap!5213)

(assert (=> d!1500146 (invariantList!1488 (toList!5849 lt!1879283))))

(declare-fun e!2940474 () ListMap!5213)

(assert (=> d!1500146 (= lt!1879283 e!2940474)))

(declare-fun c!805303 () Bool)

(assert (=> d!1500146 (= c!805303 ((_ is Cons!52740) (Cons!52740 lt!1879099 lt!1879092)))))

(assert (=> d!1500146 (forall!11525 (Cons!52740 lt!1879099 lt!1879092) lambda!213689)))

(assert (=> d!1500146 (= (extractMap!2006 (Cons!52740 lt!1879099 lt!1879092)) lt!1879283)))

(declare-fun b!4714628 () Bool)

(assert (=> b!4714628 (= e!2940474 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (Cons!52740 lt!1879099 lt!1879092))) (extractMap!2006 (t!360110 (Cons!52740 lt!1879099 lt!1879092)))))))

(declare-fun b!4714629 () Bool)

(assert (=> b!4714629 (= e!2940474 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500146 c!805303) b!4714628))

(assert (= (and d!1500146 (not c!805303)) b!4714629))

(declare-fun m!5642281 () Bool)

(assert (=> d!1500146 m!5642281))

(declare-fun m!5642283 () Bool)

(assert (=> d!1500146 m!5642283))

(declare-fun m!5642285 () Bool)

(assert (=> b!4714628 m!5642285))

(assert (=> b!4714628 m!5642285))

(declare-fun m!5642287 () Bool)

(assert (=> b!4714628 m!5642287))

(assert (=> b!4714487 d!1500146))

(declare-fun d!1500148 () Bool)

(assert (=> d!1500148 (= (tail!8914 lt!1879075) (t!360110 lt!1879075))))

(assert (=> b!4714487 d!1500148))

(declare-fun d!1500150 () Bool)

(declare-fun e!2940480 () Bool)

(assert (=> d!1500150 e!2940480))

(declare-fun res!1993300 () Bool)

(assert (=> d!1500150 (=> (not res!1993300) (not e!2940480))))

(declare-fun lt!1879307 () ListMap!5213)

(assert (=> d!1500150 (= res!1993300 (not (contains!16067 lt!1879307 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!390 (List!52863 K!14100) List!52863)

(assert (=> d!1500150 (= lt!1879307 (ListMap!5214 (removePresrvNoDuplicatedKeys!390 (toList!5849 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092))) key!4653)))))

(assert (=> d!1500150 (= (-!736 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)) key!4653) lt!1879307)))

(declare-fun b!4714639 () Bool)

(declare-datatypes ((List!52865 0))(
  ( (Nil!52741) (Cons!52741 (h!59066 K!14100) (t!360113 List!52865)) )
))
(declare-fun content!9355 (List!52865) (InoxSet K!14100))

(declare-fun keys!18916 (ListMap!5213) List!52865)

(assert (=> b!4714639 (= e!2940480 (= ((_ map and) (content!9355 (keys!18916 (extractMap!2006 (Cons!52740 lt!1879090 lt!1879092)))) ((_ map not) (store ((as const (Array K!14100 Bool)) false) key!4653 true))) (content!9355 (keys!18916 lt!1879307))))))

(assert (= (and d!1500150 res!1993300) b!4714639))

(declare-fun m!5642325 () Bool)

(assert (=> d!1500150 m!5642325))

(declare-fun m!5642327 () Bool)

(assert (=> d!1500150 m!5642327))

(declare-fun m!5642329 () Bool)

(assert (=> b!4714639 m!5642329))

(declare-fun m!5642331 () Bool)

(assert (=> b!4714639 m!5642331))

(declare-fun m!5642333 () Bool)

(assert (=> b!4714639 m!5642333))

(declare-fun m!5642335 () Bool)

(assert (=> b!4714639 m!5642335))

(declare-fun m!5642337 () Bool)

(assert (=> b!4714639 m!5642337))

(assert (=> b!4714639 m!5642335))

(assert (=> b!4714639 m!5641995))

(assert (=> b!4714639 m!5642329))

(assert (=> b!4714487 d!1500150))

(declare-fun d!1500156 () Bool)

(declare-fun e!2940481 () Bool)

(assert (=> d!1500156 e!2940481))

(declare-fun res!1993301 () Bool)

(assert (=> d!1500156 (=> (not res!1993301) (not e!2940481))))

(declare-fun lt!1879308 () ListMap!5213)

(assert (=> d!1500156 (= res!1993301 (not (contains!16067 lt!1879308 key!4653)))))

(assert (=> d!1500156 (= lt!1879308 (ListMap!5214 (removePresrvNoDuplicatedKeys!390 (toList!5849 lt!1879094) key!4653)))))

(assert (=> d!1500156 (= (-!736 lt!1879094 key!4653) lt!1879308)))

(declare-fun b!4714640 () Bool)

(assert (=> b!4714640 (= e!2940481 (= ((_ map and) (content!9355 (keys!18916 lt!1879094)) ((_ map not) (store ((as const (Array K!14100 Bool)) false) key!4653 true))) (content!9355 (keys!18916 lt!1879308))))))

(assert (= (and d!1500156 res!1993301) b!4714640))

(declare-fun m!5642339 () Bool)

(assert (=> d!1500156 m!5642339))

(declare-fun m!5642341 () Bool)

(assert (=> d!1500156 m!5642341))

(declare-fun m!5642343 () Bool)

(assert (=> b!4714640 m!5642343))

(declare-fun m!5642345 () Bool)

(assert (=> b!4714640 m!5642345))

(assert (=> b!4714640 m!5642333))

(declare-fun m!5642347 () Bool)

(assert (=> b!4714640 m!5642347))

(declare-fun m!5642349 () Bool)

(assert (=> b!4714640 m!5642349))

(assert (=> b!4714640 m!5642347))

(assert (=> b!4714640 m!5642343))

(assert (=> b!4714487 d!1500156))

(declare-fun bs!1103531 () Bool)

(declare-fun d!1500158 () Bool)

(assert (= bs!1103531 (and d!1500158 start!479348)))

(declare-fun lambda!213700 () Int)

(assert (=> bs!1103531 (= lambda!213700 lambda!213613)))

(declare-fun bs!1103532 () Bool)

(assert (= bs!1103532 (and d!1500158 d!1500146)))

(assert (=> bs!1103532 (= lambda!213700 lambda!213689)))

(declare-fun bs!1103533 () Bool)

(assert (= bs!1103533 (and d!1500158 d!1500140)))

(assert (=> bs!1103533 (= lambda!213700 lambda!213687)))

(declare-fun bs!1103534 () Bool)

(assert (= bs!1103534 (and d!1500158 d!1500144)))

(assert (=> bs!1103534 (= lambda!213700 lambda!213688)))

(declare-fun bs!1103535 () Bool)

(assert (= bs!1103535 (and d!1500158 d!1500134)))

(assert (=> bs!1103535 (= lambda!213700 lambda!213684)))

(assert (=> d!1500158 (eq!1107 (extractMap!2006 (Cons!52740 (tuple2!54317 hash!405 lt!1879100) (tail!8914 (toList!5850 lt!1879079)))) (-!736 (extractMap!2006 (Cons!52740 (tuple2!54317 hash!405 (t!360109 oldBucket!34)) (tail!8914 (toList!5850 lt!1879079)))) key!4653))))

(declare-fun lt!1879323 () Unit!128492)

(declare-fun choose!33185 (ListLongMap!4379 (_ BitVec 64) List!52863 List!52863 K!14100 Hashable!6349) Unit!128492)

(assert (=> d!1500158 (= lt!1879323 (choose!33185 lt!1879079 hash!405 (t!360109 oldBucket!34) lt!1879100 key!4653 hashF!1323))))

(assert (=> d!1500158 (forall!11525 (toList!5850 lt!1879079) lambda!213700)))

(assert (=> d!1500158 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!98 lt!1879079 hash!405 (t!360109 oldBucket!34) lt!1879100 key!4653 hashF!1323) lt!1879323)))

(declare-fun bs!1103536 () Bool)

(assert (= bs!1103536 d!1500158))

(declare-fun m!5642395 () Bool)

(assert (=> bs!1103536 m!5642395))

(declare-fun m!5642397 () Bool)

(assert (=> bs!1103536 m!5642397))

(declare-fun m!5642399 () Bool)

(assert (=> bs!1103536 m!5642399))

(declare-fun m!5642401 () Bool)

(assert (=> bs!1103536 m!5642401))

(declare-fun m!5642403 () Bool)

(assert (=> bs!1103536 m!5642403))

(assert (=> bs!1103536 m!5642399))

(assert (=> bs!1103536 m!5642397))

(declare-fun m!5642405 () Bool)

(assert (=> bs!1103536 m!5642405))

(assert (=> bs!1103536 m!5642395))

(declare-fun m!5642407 () Bool)

(assert (=> bs!1103536 m!5642407))

(assert (=> b!4714487 d!1500158))

(declare-fun bs!1103537 () Bool)

(declare-fun d!1500170 () Bool)

(assert (= bs!1103537 (and d!1500170 b!4714602)))

(declare-fun lambda!213703 () Int)

(assert (=> bs!1103537 (not (= lambda!213703 lambda!213652))))

(declare-fun bs!1103538 () Bool)

(assert (= bs!1103538 (and d!1500170 b!4714604)))

(assert (=> bs!1103538 (not (= lambda!213703 lambda!213653))))

(assert (=> bs!1103538 (not (= lambda!213703 lambda!213654))))

(declare-fun bs!1103539 () Bool)

(assert (= bs!1103539 (and d!1500170 d!1500102)))

(assert (=> bs!1103539 (not (= lambda!213703 lambda!213655))))

(assert (=> d!1500170 true))

(assert (=> d!1500170 true))

(assert (=> d!1500170 (= (allKeysSameHash!1806 oldBucket!34 hash!405 hashF!1323) (forall!11527 oldBucket!34 lambda!213703))))

(declare-fun bs!1103540 () Bool)

(assert (= bs!1103540 d!1500170))

(declare-fun m!5642409 () Bool)

(assert (=> bs!1103540 m!5642409))

(assert (=> b!4714496 d!1500170))

(declare-fun d!1500172 () Bool)

(declare-fun e!2940506 () Bool)

(assert (=> d!1500172 e!2940506))

(declare-fun res!1993317 () Bool)

(assert (=> d!1500172 (=> res!1993317 e!2940506)))

(declare-fun e!2940507 () Bool)

(assert (=> d!1500172 (= res!1993317 e!2940507)))

(declare-fun res!1993316 () Bool)

(assert (=> d!1500172 (=> (not res!1993316) (not e!2940507))))

(declare-fun lt!1879366 () Bool)

(assert (=> d!1500172 (= res!1993316 (not lt!1879366))))

(declare-fun lt!1879372 () Bool)

(assert (=> d!1500172 (= lt!1879366 lt!1879372)))

(declare-fun lt!1879365 () Unit!128492)

(declare-fun e!2940503 () Unit!128492)

(assert (=> d!1500172 (= lt!1879365 e!2940503)))

(declare-fun c!805316 () Bool)

(assert (=> d!1500172 (= c!805316 lt!1879372)))

(declare-fun containsKey!3307 (List!52863 K!14100) Bool)

(assert (=> d!1500172 (= lt!1879372 (containsKey!3307 (toList!5849 lt!1879078) key!4653))))

(assert (=> d!1500172 (= (contains!16067 lt!1879078 key!4653) lt!1879366)))

(declare-fun b!4714680 () Bool)

(declare-fun e!2940505 () Bool)

(assert (=> b!4714680 (= e!2940506 e!2940505)))

(declare-fun res!1993315 () Bool)

(assert (=> b!4714680 (=> (not res!1993315) (not e!2940505))))

(declare-datatypes ((Option!12311 0))(
  ( (None!12310) (Some!12310 (v!46861 V!14346)) )
))
(declare-fun isDefined!9564 (Option!12311) Bool)

(declare-fun getValueByKey!1923 (List!52863 K!14100) Option!12311)

(assert (=> b!4714680 (= res!1993315 (isDefined!9564 (getValueByKey!1923 (toList!5849 lt!1879078) key!4653)))))

(declare-fun b!4714681 () Bool)

(declare-fun e!2940504 () Unit!128492)

(assert (=> b!4714681 (= e!2940503 e!2940504)))

(declare-fun c!805317 () Bool)

(declare-fun call!329625 () Bool)

(assert (=> b!4714681 (= c!805317 call!329625)))

(declare-fun b!4714682 () Bool)

(declare-fun contains!16071 (List!52865 K!14100) Bool)

(assert (=> b!4714682 (= e!2940505 (contains!16071 (keys!18916 lt!1879078) key!4653))))

(declare-fun b!4714683 () Bool)

(assert (=> b!4714683 false))

(declare-fun lt!1879370 () Unit!128492)

(declare-fun lt!1879369 () Unit!128492)

(assert (=> b!4714683 (= lt!1879370 lt!1879369)))

(assert (=> b!4714683 (containsKey!3307 (toList!5849 lt!1879078) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!926 (List!52863 K!14100) Unit!128492)

(assert (=> b!4714683 (= lt!1879369 (lemmaInGetKeysListThenContainsKey!926 (toList!5849 lt!1879078) key!4653))))

(declare-fun Unit!128517 () Unit!128492)

(assert (=> b!4714683 (= e!2940504 Unit!128517)))

(declare-fun bm!329620 () Bool)

(declare-fun e!2940508 () List!52865)

(assert (=> bm!329620 (= call!329625 (contains!16071 e!2940508 key!4653))))

(declare-fun c!805318 () Bool)

(assert (=> bm!329620 (= c!805318 c!805316)))

(declare-fun b!4714684 () Bool)

(assert (=> b!4714684 (= e!2940508 (keys!18916 lt!1879078))))

(declare-fun b!4714685 () Bool)

(assert (=> b!4714685 (= e!2940507 (not (contains!16071 (keys!18916 lt!1879078) key!4653)))))

(declare-fun b!4714686 () Bool)

(declare-fun lt!1879371 () Unit!128492)

(assert (=> b!4714686 (= e!2940503 lt!1879371)))

(declare-fun lt!1879367 () Unit!128492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1813 (List!52863 K!14100) Unit!128492)

(assert (=> b!4714686 (= lt!1879367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1813 (toList!5849 lt!1879078) key!4653))))

(assert (=> b!4714686 (isDefined!9564 (getValueByKey!1923 (toList!5849 lt!1879078) key!4653))))

(declare-fun lt!1879368 () Unit!128492)

(assert (=> b!4714686 (= lt!1879368 lt!1879367)))

(declare-fun lemmaInListThenGetKeysListContains!922 (List!52863 K!14100) Unit!128492)

(assert (=> b!4714686 (= lt!1879371 (lemmaInListThenGetKeysListContains!922 (toList!5849 lt!1879078) key!4653))))

(assert (=> b!4714686 call!329625))

(declare-fun b!4714687 () Bool)

(declare-fun getKeysList!927 (List!52863) List!52865)

(assert (=> b!4714687 (= e!2940508 (getKeysList!927 (toList!5849 lt!1879078)))))

(declare-fun b!4714688 () Bool)

(declare-fun Unit!128518 () Unit!128492)

(assert (=> b!4714688 (= e!2940504 Unit!128518)))

(assert (= (and d!1500172 c!805316) b!4714686))

(assert (= (and d!1500172 (not c!805316)) b!4714681))

(assert (= (and b!4714681 c!805317) b!4714683))

(assert (= (and b!4714681 (not c!805317)) b!4714688))

(assert (= (or b!4714686 b!4714681) bm!329620))

(assert (= (and bm!329620 c!805318) b!4714687))

(assert (= (and bm!329620 (not c!805318)) b!4714684))

(assert (= (and d!1500172 res!1993316) b!4714685))

(assert (= (and d!1500172 (not res!1993317)) b!4714680))

(assert (= (and b!4714680 res!1993315) b!4714682))

(declare-fun m!5642459 () Bool)

(assert (=> b!4714686 m!5642459))

(declare-fun m!5642461 () Bool)

(assert (=> b!4714686 m!5642461))

(assert (=> b!4714686 m!5642461))

(declare-fun m!5642463 () Bool)

(assert (=> b!4714686 m!5642463))

(declare-fun m!5642465 () Bool)

(assert (=> b!4714686 m!5642465))

(declare-fun m!5642467 () Bool)

(assert (=> bm!329620 m!5642467))

(assert (=> b!4714680 m!5642461))

(assert (=> b!4714680 m!5642461))

(assert (=> b!4714680 m!5642463))

(declare-fun m!5642469 () Bool)

(assert (=> d!1500172 m!5642469))

(assert (=> b!4714683 m!5642469))

(declare-fun m!5642471 () Bool)

(assert (=> b!4714683 m!5642471))

(declare-fun m!5642473 () Bool)

(assert (=> b!4714684 m!5642473))

(declare-fun m!5642475 () Bool)

(assert (=> b!4714687 m!5642475))

(assert (=> b!4714685 m!5642473))

(assert (=> b!4714685 m!5642473))

(declare-fun m!5642477 () Bool)

(assert (=> b!4714685 m!5642477))

(assert (=> b!4714682 m!5642473))

(assert (=> b!4714682 m!5642473))

(assert (=> b!4714682 m!5642477))

(assert (=> b!4714486 d!1500172))

(declare-fun bs!1103561 () Bool)

(declare-fun d!1500184 () Bool)

(assert (= bs!1103561 (and d!1500184 start!479348)))

(declare-fun lambda!213711 () Int)

(assert (=> bs!1103561 (= lambda!213711 lambda!213613)))

(declare-fun bs!1103562 () Bool)

(assert (= bs!1103562 (and d!1500184 d!1500146)))

(assert (=> bs!1103562 (= lambda!213711 lambda!213689)))

(declare-fun bs!1103563 () Bool)

(assert (= bs!1103563 (and d!1500184 d!1500158)))

(assert (=> bs!1103563 (= lambda!213711 lambda!213700)))

(declare-fun bs!1103564 () Bool)

(assert (= bs!1103564 (and d!1500184 d!1500140)))

(assert (=> bs!1103564 (= lambda!213711 lambda!213687)))

(declare-fun bs!1103565 () Bool)

(assert (= bs!1103565 (and d!1500184 d!1500144)))

(assert (=> bs!1103565 (= lambda!213711 lambda!213688)))

(declare-fun bs!1103566 () Bool)

(assert (= bs!1103566 (and d!1500184 d!1500134)))

(assert (=> bs!1103566 (= lambda!213711 lambda!213684)))

(declare-fun lt!1879373 () ListMap!5213)

(assert (=> d!1500184 (invariantList!1488 (toList!5849 lt!1879373))))

(declare-fun e!2940509 () ListMap!5213)

(assert (=> d!1500184 (= lt!1879373 e!2940509)))

(declare-fun c!805319 () Bool)

(assert (=> d!1500184 (= c!805319 ((_ is Cons!52740) (toList!5850 lm!2023)))))

(assert (=> d!1500184 (forall!11525 (toList!5850 lm!2023) lambda!213711)))

(assert (=> d!1500184 (= (extractMap!2006 (toList!5850 lm!2023)) lt!1879373)))

(declare-fun b!4714689 () Bool)

(assert (=> b!4714689 (= e!2940509 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (toList!5850 lm!2023))) (extractMap!2006 (t!360110 (toList!5850 lm!2023)))))))

(declare-fun b!4714690 () Bool)

(assert (=> b!4714690 (= e!2940509 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500184 c!805319) b!4714689))

(assert (= (and d!1500184 (not c!805319)) b!4714690))

(declare-fun m!5642479 () Bool)

(assert (=> d!1500184 m!5642479))

(declare-fun m!5642481 () Bool)

(assert (=> d!1500184 m!5642481))

(assert (=> b!4714689 m!5642067))

(assert (=> b!4714689 m!5642067))

(declare-fun m!5642483 () Bool)

(assert (=> b!4714689 m!5642483))

(assert (=> b!4714486 d!1500184))

(declare-fun b!4714702 () Bool)

(declare-fun e!2940515 () List!52863)

(assert (=> b!4714702 (= e!2940515 Nil!52739)))

(declare-fun d!1500186 () Bool)

(declare-fun lt!1879376 () List!52863)

(assert (=> d!1500186 (not (containsKey!3305 lt!1879376 key!4653))))

(declare-fun e!2940514 () List!52863)

(assert (=> d!1500186 (= lt!1879376 e!2940514)))

(declare-fun c!805325 () Bool)

(assert (=> d!1500186 (= c!805325 (and ((_ is Cons!52739) oldBucket!34) (= (_1!30451 (h!59062 oldBucket!34)) key!4653)))))

(assert (=> d!1500186 (noDuplicateKeys!1980 oldBucket!34)))

(assert (=> d!1500186 (= (removePairForKey!1575 oldBucket!34 key!4653) lt!1879376)))

(declare-fun b!4714700 () Bool)

(assert (=> b!4714700 (= e!2940514 e!2940515)))

(declare-fun c!805324 () Bool)

(assert (=> b!4714700 (= c!805324 ((_ is Cons!52739) oldBucket!34))))

(declare-fun b!4714699 () Bool)

(assert (=> b!4714699 (= e!2940514 (t!360109 oldBucket!34))))

(declare-fun b!4714701 () Bool)

(assert (=> b!4714701 (= e!2940515 (Cons!52739 (h!59062 oldBucket!34) (removePairForKey!1575 (t!360109 oldBucket!34) key!4653)))))

(assert (= (and d!1500186 c!805325) b!4714699))

(assert (= (and d!1500186 (not c!805325)) b!4714700))

(assert (= (and b!4714700 c!805324) b!4714701))

(assert (= (and b!4714700 (not c!805324)) b!4714702))

(declare-fun m!5642485 () Bool)

(assert (=> d!1500186 m!5642485))

(assert (=> d!1500186 m!5641991))

(assert (=> b!4714701 m!5642099))

(assert (=> b!4714489 d!1500186))

(declare-fun bs!1103567 () Bool)

(declare-fun b!4714708 () Bool)

(assert (= bs!1103567 (and b!4714708 b!4714604)))

(declare-fun lambda!213712 () Int)

(assert (=> bs!1103567 (= (= lt!1879091 lt!1879234) (= lambda!213712 lambda!213654))))

(declare-fun bs!1103568 () Bool)

(assert (= bs!1103568 (and b!4714708 d!1500102)))

(assert (=> bs!1103568 (= (= lt!1879091 lt!1879232) (= lambda!213712 lambda!213655))))

(assert (=> bs!1103567 (= lambda!213712 lambda!213653)))

(declare-fun bs!1103569 () Bool)

(assert (= bs!1103569 (and b!4714708 b!4714602)))

(assert (=> bs!1103569 (= lambda!213712 lambda!213652)))

(declare-fun bs!1103570 () Bool)

(assert (= bs!1103570 (and b!4714708 d!1500170)))

(assert (=> bs!1103570 (not (= lambda!213712 lambda!213703))))

(assert (=> b!4714708 true))

(declare-fun bs!1103571 () Bool)

(declare-fun b!4714710 () Bool)

(assert (= bs!1103571 (and b!4714710 b!4714604)))

(declare-fun lambda!213713 () Int)

(assert (=> bs!1103571 (= (= lt!1879091 lt!1879234) (= lambda!213713 lambda!213654))))

(declare-fun bs!1103572 () Bool)

(assert (= bs!1103572 (and b!4714710 d!1500102)))

(assert (=> bs!1103572 (= (= lt!1879091 lt!1879232) (= lambda!213713 lambda!213655))))

(declare-fun bs!1103573 () Bool)

(assert (= bs!1103573 (and b!4714710 b!4714708)))

(assert (=> bs!1103573 (= lambda!213713 lambda!213712)))

(assert (=> bs!1103571 (= lambda!213713 lambda!213653)))

(declare-fun bs!1103574 () Bool)

(assert (= bs!1103574 (and b!4714710 b!4714602)))

(assert (=> bs!1103574 (= lambda!213713 lambda!213652)))

(declare-fun bs!1103575 () Bool)

(assert (= bs!1103575 (and b!4714710 d!1500170)))

(assert (=> bs!1103575 (not (= lambda!213713 lambda!213703))))

(assert (=> b!4714710 true))

(declare-fun lambda!213714 () Int)

(declare-fun lt!1879406 () ListMap!5213)

(assert (=> b!4714710 (= (= lt!1879406 lt!1879091) (= lambda!213714 lambda!213713))))

(assert (=> bs!1103571 (= (= lt!1879406 lt!1879234) (= lambda!213714 lambda!213654))))

(assert (=> bs!1103572 (= (= lt!1879406 lt!1879232) (= lambda!213714 lambda!213655))))

(assert (=> bs!1103573 (= (= lt!1879406 lt!1879091) (= lambda!213714 lambda!213712))))

(assert (=> bs!1103571 (= (= lt!1879406 lt!1879091) (= lambda!213714 lambda!213653))))

(assert (=> bs!1103574 (= (= lt!1879406 lt!1879091) (= lambda!213714 lambda!213652))))

(assert (=> bs!1103575 (not (= lambda!213714 lambda!213703))))

(assert (=> b!4714710 true))

(declare-fun bs!1103576 () Bool)

(declare-fun d!1500188 () Bool)

(assert (= bs!1103576 (and d!1500188 b!4714710)))

(declare-fun lambda!213715 () Int)

(declare-fun lt!1879404 () ListMap!5213)

(assert (=> bs!1103576 (= (= lt!1879404 lt!1879091) (= lambda!213715 lambda!213713))))

(assert (=> bs!1103576 (= (= lt!1879404 lt!1879406) (= lambda!213715 lambda!213714))))

(declare-fun bs!1103577 () Bool)

(assert (= bs!1103577 (and d!1500188 b!4714604)))

(assert (=> bs!1103577 (= (= lt!1879404 lt!1879234) (= lambda!213715 lambda!213654))))

(declare-fun bs!1103578 () Bool)

(assert (= bs!1103578 (and d!1500188 d!1500102)))

(assert (=> bs!1103578 (= (= lt!1879404 lt!1879232) (= lambda!213715 lambda!213655))))

(declare-fun bs!1103579 () Bool)

(assert (= bs!1103579 (and d!1500188 b!4714708)))

(assert (=> bs!1103579 (= (= lt!1879404 lt!1879091) (= lambda!213715 lambda!213712))))

(assert (=> bs!1103577 (= (= lt!1879404 lt!1879091) (= lambda!213715 lambda!213653))))

(declare-fun bs!1103580 () Bool)

(assert (= bs!1103580 (and d!1500188 b!4714602)))

(assert (=> bs!1103580 (= (= lt!1879404 lt!1879091) (= lambda!213715 lambda!213652))))

(declare-fun bs!1103581 () Bool)

(assert (= bs!1103581 (and d!1500188 d!1500170)))

(assert (=> bs!1103581 (not (= lambda!213715 lambda!213703))))

(assert (=> d!1500188 true))

(declare-fun b!4714707 () Bool)

(declare-fun res!1993318 () Bool)

(declare-fun e!2940520 () Bool)

(assert (=> b!4714707 (=> (not res!1993318) (not e!2940520))))

(assert (=> b!4714707 (= res!1993318 (forall!11527 (toList!5849 lt!1879091) lambda!213715))))

(declare-fun e!2940519 () ListMap!5213)

(assert (=> b!4714708 (= e!2940519 lt!1879091)))

(declare-fun lt!1879387 () Unit!128492)

(declare-fun call!329626 () Unit!128492)

(assert (=> b!4714708 (= lt!1879387 call!329626)))

(declare-fun call!329627 () Bool)

(assert (=> b!4714708 call!329627))

(declare-fun lt!1879388 () Unit!128492)

(assert (=> b!4714708 (= lt!1879388 lt!1879387)))

(declare-fun call!329628 () Bool)

(assert (=> b!4714708 call!329628))

(declare-fun lt!1879384 () Unit!128492)

(declare-fun Unit!128525 () Unit!128492)

(assert (=> b!4714708 (= lt!1879384 Unit!128525)))

(declare-fun b!4714709 () Bool)

(declare-fun e!2940518 () Bool)

(assert (=> b!4714709 (= e!2940518 (forall!11527 (toList!5849 lt!1879091) lambda!213714))))

(declare-fun bm!329621 () Bool)

(assert (=> bm!329621 (= call!329626 (lemmaContainsAllItsOwnKeys!776 lt!1879091))))

(assert (=> b!4714710 (= e!2940519 lt!1879406)))

(declare-fun lt!1879402 () ListMap!5213)

(assert (=> b!4714710 (= lt!1879402 (+!2240 lt!1879091 (h!59062 (Cons!52739 lt!1879080 lt!1879100))))))

(assert (=> b!4714710 (= lt!1879406 (addToMapMapFromBucket!1410 (t!360109 (Cons!52739 lt!1879080 lt!1879100)) (+!2240 lt!1879091 (h!59062 (Cons!52739 lt!1879080 lt!1879100)))))))

(declare-fun lt!1879399 () Unit!128492)

(assert (=> b!4714710 (= lt!1879399 call!329626)))

(assert (=> b!4714710 call!329628))

(declare-fun lt!1879400 () Unit!128492)

(assert (=> b!4714710 (= lt!1879400 lt!1879399)))

(assert (=> b!4714710 call!329627))

(declare-fun lt!1879401 () Unit!128492)

(declare-fun Unit!128529 () Unit!128492)

(assert (=> b!4714710 (= lt!1879401 Unit!128529)))

(assert (=> b!4714710 (forall!11527 (t!360109 (Cons!52739 lt!1879080 lt!1879100)) lambda!213714)))

(declare-fun lt!1879383 () Unit!128492)

(declare-fun Unit!128530 () Unit!128492)

(assert (=> b!4714710 (= lt!1879383 Unit!128530)))

(declare-fun lt!1879403 () Unit!128492)

(declare-fun Unit!128531 () Unit!128492)

(assert (=> b!4714710 (= lt!1879403 Unit!128531)))

(declare-fun lt!1879397 () Unit!128492)

(assert (=> b!4714710 (= lt!1879397 (forallContained!3595 (toList!5849 lt!1879402) lambda!213714 (h!59062 (Cons!52739 lt!1879080 lt!1879100))))))

(assert (=> b!4714710 (contains!16067 lt!1879402 (_1!30451 (h!59062 (Cons!52739 lt!1879080 lt!1879100))))))

(declare-fun lt!1879386 () Unit!128492)

(declare-fun Unit!128533 () Unit!128492)

(assert (=> b!4714710 (= lt!1879386 Unit!128533)))

(assert (=> b!4714710 (contains!16067 lt!1879406 (_1!30451 (h!59062 (Cons!52739 lt!1879080 lt!1879100))))))

(declare-fun lt!1879398 () Unit!128492)

(declare-fun Unit!128534 () Unit!128492)

(assert (=> b!4714710 (= lt!1879398 Unit!128534)))

(assert (=> b!4714710 (forall!11527 (Cons!52739 lt!1879080 lt!1879100) lambda!213714)))

(declare-fun lt!1879407 () Unit!128492)

(declare-fun Unit!128536 () Unit!128492)

(assert (=> b!4714710 (= lt!1879407 Unit!128536)))

(assert (=> b!4714710 (forall!11527 (toList!5849 lt!1879402) lambda!213714)))

(declare-fun lt!1879394 () Unit!128492)

(declare-fun Unit!128537 () Unit!128492)

(assert (=> b!4714710 (= lt!1879394 Unit!128537)))

(declare-fun lt!1879405 () Unit!128492)

(declare-fun Unit!128538 () Unit!128492)

(assert (=> b!4714710 (= lt!1879405 Unit!128538)))

(declare-fun lt!1879395 () Unit!128492)

(assert (=> b!4714710 (= lt!1879395 (addForallContainsKeyThenBeforeAdding!774 lt!1879091 lt!1879406 (_1!30451 (h!59062 (Cons!52739 lt!1879080 lt!1879100))) (_2!30451 (h!59062 (Cons!52739 lt!1879080 lt!1879100)))))))

(assert (=> b!4714710 (forall!11527 (toList!5849 lt!1879091) lambda!213714)))

(declare-fun lt!1879396 () Unit!128492)

(assert (=> b!4714710 (= lt!1879396 lt!1879395)))

(assert (=> b!4714710 (forall!11527 (toList!5849 lt!1879091) lambda!213714)))

(declare-fun lt!1879385 () Unit!128492)

(declare-fun Unit!128539 () Unit!128492)

(assert (=> b!4714710 (= lt!1879385 Unit!128539)))

(declare-fun res!1993319 () Bool)

(assert (=> b!4714710 (= res!1993319 (forall!11527 (Cons!52739 lt!1879080 lt!1879100) lambda!213714))))

(assert (=> b!4714710 (=> (not res!1993319) (not e!2940518))))

(assert (=> b!4714710 e!2940518))

(declare-fun lt!1879393 () Unit!128492)

(declare-fun Unit!128540 () Unit!128492)

(assert (=> b!4714710 (= lt!1879393 Unit!128540)))

(declare-fun c!805328 () Bool)

(declare-fun bm!329622 () Bool)

(assert (=> bm!329622 (= call!329627 (forall!11527 (ite c!805328 (toList!5849 lt!1879091) (toList!5849 lt!1879402)) (ite c!805328 lambda!213712 lambda!213714)))))

(declare-fun bm!329623 () Bool)

(assert (=> bm!329623 (= call!329628 (forall!11527 (toList!5849 lt!1879091) (ite c!805328 lambda!213712 lambda!213713)))))

(assert (=> d!1500188 e!2940520))

(declare-fun res!1993320 () Bool)

(assert (=> d!1500188 (=> (not res!1993320) (not e!2940520))))

(assert (=> d!1500188 (= res!1993320 (forall!11527 (Cons!52739 lt!1879080 lt!1879100) lambda!213715))))

(assert (=> d!1500188 (= lt!1879404 e!2940519)))

(assert (=> d!1500188 (= c!805328 ((_ is Nil!52739) (Cons!52739 lt!1879080 lt!1879100)))))

(assert (=> d!1500188 (noDuplicateKeys!1980 (Cons!52739 lt!1879080 lt!1879100))))

(assert (=> d!1500188 (= (addToMapMapFromBucket!1410 (Cons!52739 lt!1879080 lt!1879100) lt!1879091) lt!1879404)))

(declare-fun b!4714711 () Bool)

(assert (=> b!4714711 (= e!2940520 (invariantList!1488 (toList!5849 lt!1879404)))))

(assert (= (and d!1500188 c!805328) b!4714708))

(assert (= (and d!1500188 (not c!805328)) b!4714710))

(assert (= (and b!4714710 res!1993319) b!4714709))

(assert (= (or b!4714708 b!4714710) bm!329621))

(assert (= (or b!4714708 b!4714710) bm!329622))

(assert (= (or b!4714708 b!4714710) bm!329623))

(assert (= (and d!1500188 res!1993320) b!4714707))

(assert (= (and b!4714707 res!1993318) b!4714711))

(declare-fun m!5642487 () Bool)

(assert (=> bm!329623 m!5642487))

(declare-fun m!5642489 () Bool)

(assert (=> b!4714709 m!5642489))

(declare-fun m!5642491 () Bool)

(assert (=> b!4714707 m!5642491))

(declare-fun m!5642493 () Bool)

(assert (=> bm!329622 m!5642493))

(assert (=> b!4714710 m!5642489))

(declare-fun m!5642495 () Bool)

(assert (=> b!4714710 m!5642495))

(declare-fun m!5642497 () Bool)

(assert (=> b!4714710 m!5642497))

(declare-fun m!5642499 () Bool)

(assert (=> b!4714710 m!5642499))

(declare-fun m!5642501 () Bool)

(assert (=> b!4714710 m!5642501))

(assert (=> b!4714710 m!5642489))

(declare-fun m!5642503 () Bool)

(assert (=> b!4714710 m!5642503))

(declare-fun m!5642505 () Bool)

(assert (=> b!4714710 m!5642505))

(assert (=> b!4714710 m!5642501))

(declare-fun m!5642509 () Bool)

(assert (=> b!4714710 m!5642509))

(declare-fun m!5642513 () Bool)

(assert (=> b!4714710 m!5642513))

(declare-fun m!5642519 () Bool)

(assert (=> b!4714710 m!5642519))

(assert (=> b!4714710 m!5642497))

(declare-fun m!5642525 () Bool)

(assert (=> b!4714711 m!5642525))

(assert (=> bm!329621 m!5642241))

(declare-fun m!5642527 () Bool)

(assert (=> d!1500188 m!5642527))

(declare-fun m!5642531 () Bool)

(assert (=> d!1500188 m!5642531))

(assert (=> b!4714490 d!1500188))

(declare-fun d!1500190 () Bool)

(declare-fun e!2940546 () Bool)

(assert (=> d!1500190 e!2940546))

(declare-fun res!1993341 () Bool)

(assert (=> d!1500190 (=> (not res!1993341) (not e!2940546))))

(declare-fun lt!1879474 () ListMap!5213)

(assert (=> d!1500190 (= res!1993341 (contains!16067 lt!1879474 (_1!30451 lt!1879086)))))

(declare-fun lt!1879475 () List!52863)

(assert (=> d!1500190 (= lt!1879474 (ListMap!5214 lt!1879475))))

(declare-fun lt!1879476 () Unit!128492)

(declare-fun lt!1879473 () Unit!128492)

(assert (=> d!1500190 (= lt!1879476 lt!1879473)))

(assert (=> d!1500190 (= (getValueByKey!1923 lt!1879475 (_1!30451 lt!1879086)) (Some!12310 (_2!30451 lt!1879086)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1070 (List!52863 K!14100 V!14346) Unit!128492)

(assert (=> d!1500190 (= lt!1879473 (lemmaContainsTupThenGetReturnValue!1070 lt!1879475 (_1!30451 lt!1879086) (_2!30451 lt!1879086)))))

(declare-fun insertNoDuplicatedKeys!578 (List!52863 K!14100 V!14346) List!52863)

(assert (=> d!1500190 (= lt!1879475 (insertNoDuplicatedKeys!578 (toList!5849 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091)) (_1!30451 lt!1879086) (_2!30451 lt!1879086)))))

(assert (=> d!1500190 (= (+!2240 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879086) lt!1879474)))

(declare-fun b!4714751 () Bool)

(declare-fun res!1993340 () Bool)

(assert (=> b!4714751 (=> (not res!1993340) (not e!2940546))))

(assert (=> b!4714751 (= res!1993340 (= (getValueByKey!1923 (toList!5849 lt!1879474) (_1!30451 lt!1879086)) (Some!12310 (_2!30451 lt!1879086))))))

(declare-fun b!4714752 () Bool)

(declare-fun contains!16073 (List!52863 tuple2!54314) Bool)

(assert (=> b!4714752 (= e!2940546 (contains!16073 (toList!5849 lt!1879474) lt!1879086))))

(assert (= (and d!1500190 res!1993341) b!4714751))

(assert (= (and b!4714751 res!1993340) b!4714752))

(declare-fun m!5642581 () Bool)

(assert (=> d!1500190 m!5642581))

(declare-fun m!5642583 () Bool)

(assert (=> d!1500190 m!5642583))

(declare-fun m!5642585 () Bool)

(assert (=> d!1500190 m!5642585))

(declare-fun m!5642587 () Bool)

(assert (=> d!1500190 m!5642587))

(declare-fun m!5642589 () Bool)

(assert (=> b!4714751 m!5642589))

(declare-fun m!5642591 () Bool)

(assert (=> b!4714752 m!5642591))

(assert (=> b!4714490 d!1500190))

(declare-fun bs!1103619 () Bool)

(declare-fun d!1500198 () Bool)

(assert (= bs!1103619 (and d!1500198 start!479348)))

(declare-fun lambda!213723 () Int)

(assert (=> bs!1103619 (= lambda!213723 lambda!213613)))

(declare-fun bs!1103622 () Bool)

(assert (= bs!1103622 (and d!1500198 d!1500158)))

(assert (=> bs!1103622 (= lambda!213723 lambda!213700)))

(declare-fun bs!1103624 () Bool)

(assert (= bs!1103624 (and d!1500198 d!1500140)))

(assert (=> bs!1103624 (= lambda!213723 lambda!213687)))

(declare-fun bs!1103626 () Bool)

(assert (= bs!1103626 (and d!1500198 d!1500144)))

(assert (=> bs!1103626 (= lambda!213723 lambda!213688)))

(declare-fun bs!1103627 () Bool)

(assert (= bs!1103627 (and d!1500198 d!1500134)))

(assert (=> bs!1103627 (= lambda!213723 lambda!213684)))

(declare-fun bs!1103629 () Bool)

(assert (= bs!1103629 (and d!1500198 d!1500184)))

(assert (=> bs!1103629 (= lambda!213723 lambda!213711)))

(declare-fun bs!1103630 () Bool)

(assert (= bs!1103630 (and d!1500198 d!1500146)))

(assert (=> bs!1103630 (= lambda!213723 lambda!213689)))

(declare-fun lt!1879477 () ListMap!5213)

(assert (=> d!1500198 (invariantList!1488 (toList!5849 lt!1879477))))

(declare-fun e!2940547 () ListMap!5213)

(assert (=> d!1500198 (= lt!1879477 e!2940547)))

(declare-fun c!805339 () Bool)

(assert (=> d!1500198 (= c!805339 ((_ is Cons!52740) lt!1879075))))

(assert (=> d!1500198 (forall!11525 lt!1879075 lambda!213723)))

(assert (=> d!1500198 (= (extractMap!2006 lt!1879075) lt!1879477)))

(declare-fun b!4714753 () Bool)

(assert (=> b!4714753 (= e!2940547 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 lt!1879075)) (extractMap!2006 (t!360110 lt!1879075))))))

(declare-fun b!4714754 () Bool)

(assert (=> b!4714754 (= e!2940547 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500198 c!805339) b!4714753))

(assert (= (and d!1500198 (not c!805339)) b!4714754))

(declare-fun m!5642593 () Bool)

(assert (=> d!1500198 m!5642593))

(declare-fun m!5642595 () Bool)

(assert (=> d!1500198 m!5642595))

(declare-fun m!5642597 () Bool)

(assert (=> b!4714753 m!5642597))

(assert (=> b!4714753 m!5642597))

(declare-fun m!5642599 () Bool)

(assert (=> b!4714753 m!5642599))

(assert (=> b!4714490 d!1500198))

(declare-fun bs!1103635 () Bool)

(declare-fun b!4714756 () Bool)

(assert (= bs!1103635 (and b!4714756 b!4714710)))

(declare-fun lambda!213725 () Int)

(assert (=> bs!1103635 (= lambda!213725 lambda!213713)))

(assert (=> bs!1103635 (= (= lt!1879091 lt!1879406) (= lambda!213725 lambda!213714))))

(declare-fun bs!1103636 () Bool)

(assert (= bs!1103636 (and b!4714756 d!1500102)))

(assert (=> bs!1103636 (= (= lt!1879091 lt!1879232) (= lambda!213725 lambda!213655))))

(declare-fun bs!1103637 () Bool)

(assert (= bs!1103637 (and b!4714756 b!4714708)))

(assert (=> bs!1103637 (= lambda!213725 lambda!213712)))

(declare-fun bs!1103638 () Bool)

(assert (= bs!1103638 (and b!4714756 b!4714604)))

(assert (=> bs!1103638 (= lambda!213725 lambda!213653)))

(declare-fun bs!1103639 () Bool)

(assert (= bs!1103639 (and b!4714756 b!4714602)))

(assert (=> bs!1103639 (= lambda!213725 lambda!213652)))

(declare-fun bs!1103640 () Bool)

(assert (= bs!1103640 (and b!4714756 d!1500170)))

(assert (=> bs!1103640 (not (= lambda!213725 lambda!213703))))

(assert (=> bs!1103638 (= (= lt!1879091 lt!1879234) (= lambda!213725 lambda!213654))))

(declare-fun bs!1103641 () Bool)

(assert (= bs!1103641 (and b!4714756 d!1500188)))

(assert (=> bs!1103641 (= (= lt!1879091 lt!1879404) (= lambda!213725 lambda!213715))))

(assert (=> b!4714756 true))

(declare-fun bs!1103642 () Bool)

(declare-fun b!4714758 () Bool)

(assert (= bs!1103642 (and b!4714758 b!4714756)))

(declare-fun lambda!213726 () Int)

(assert (=> bs!1103642 (= lambda!213726 lambda!213725)))

(declare-fun bs!1103643 () Bool)

(assert (= bs!1103643 (and b!4714758 b!4714710)))

(assert (=> bs!1103643 (= lambda!213726 lambda!213713)))

(assert (=> bs!1103643 (= (= lt!1879091 lt!1879406) (= lambda!213726 lambda!213714))))

(declare-fun bs!1103644 () Bool)

(assert (= bs!1103644 (and b!4714758 d!1500102)))

(assert (=> bs!1103644 (= (= lt!1879091 lt!1879232) (= lambda!213726 lambda!213655))))

(declare-fun bs!1103645 () Bool)

(assert (= bs!1103645 (and b!4714758 b!4714708)))

(assert (=> bs!1103645 (= lambda!213726 lambda!213712)))

(declare-fun bs!1103646 () Bool)

(assert (= bs!1103646 (and b!4714758 b!4714604)))

(assert (=> bs!1103646 (= lambda!213726 lambda!213653)))

(declare-fun bs!1103647 () Bool)

(assert (= bs!1103647 (and b!4714758 b!4714602)))

(assert (=> bs!1103647 (= lambda!213726 lambda!213652)))

(declare-fun bs!1103648 () Bool)

(assert (= bs!1103648 (and b!4714758 d!1500170)))

(assert (=> bs!1103648 (not (= lambda!213726 lambda!213703))))

(assert (=> bs!1103646 (= (= lt!1879091 lt!1879234) (= lambda!213726 lambda!213654))))

(declare-fun bs!1103650 () Bool)

(assert (= bs!1103650 (and b!4714758 d!1500188)))

(assert (=> bs!1103650 (= (= lt!1879091 lt!1879404) (= lambda!213726 lambda!213715))))

(assert (=> b!4714758 true))

(declare-fun lambda!213728 () Int)

(declare-fun lt!1879497 () ListMap!5213)

(assert (=> bs!1103642 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213725))))

(assert (=> bs!1103643 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213713))))

(assert (=> bs!1103643 (= (= lt!1879497 lt!1879406) (= lambda!213728 lambda!213714))))

(assert (=> bs!1103644 (= (= lt!1879497 lt!1879232) (= lambda!213728 lambda!213655))))

(assert (=> b!4714758 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213726))))

(assert (=> bs!1103645 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213712))))

(assert (=> bs!1103646 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213653))))

(assert (=> bs!1103647 (= (= lt!1879497 lt!1879091) (= lambda!213728 lambda!213652))))

(assert (=> bs!1103648 (not (= lambda!213728 lambda!213703))))

(assert (=> bs!1103646 (= (= lt!1879497 lt!1879234) (= lambda!213728 lambda!213654))))

(assert (=> bs!1103650 (= (= lt!1879497 lt!1879404) (= lambda!213728 lambda!213715))))

(assert (=> b!4714758 true))

(declare-fun bs!1103661 () Bool)

(declare-fun d!1500200 () Bool)

(assert (= bs!1103661 (and d!1500200 b!4714756)))

(declare-fun lambda!213729 () Int)

(declare-fun lt!1879495 () ListMap!5213)

(assert (=> bs!1103661 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213725))))

(declare-fun bs!1103662 () Bool)

(assert (= bs!1103662 (and d!1500200 b!4714710)))

(assert (=> bs!1103662 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213713))))

(assert (=> bs!1103662 (= (= lt!1879495 lt!1879406) (= lambda!213729 lambda!213714))))

(declare-fun bs!1103663 () Bool)

(assert (= bs!1103663 (and d!1500200 d!1500102)))

(assert (=> bs!1103663 (= (= lt!1879495 lt!1879232) (= lambda!213729 lambda!213655))))

(declare-fun bs!1103664 () Bool)

(assert (= bs!1103664 (and d!1500200 b!4714758)))

(assert (=> bs!1103664 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213726))))

(declare-fun bs!1103665 () Bool)

(assert (= bs!1103665 (and d!1500200 b!4714708)))

(assert (=> bs!1103665 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213712))))

(declare-fun bs!1103666 () Bool)

(assert (= bs!1103666 (and d!1500200 b!4714604)))

(assert (=> bs!1103666 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213653))))

(declare-fun bs!1103667 () Bool)

(assert (= bs!1103667 (and d!1500200 b!4714602)))

(assert (=> bs!1103667 (= (= lt!1879495 lt!1879091) (= lambda!213729 lambda!213652))))

(declare-fun bs!1103668 () Bool)

(assert (= bs!1103668 (and d!1500200 d!1500170)))

(assert (=> bs!1103668 (not (= lambda!213729 lambda!213703))))

(assert (=> bs!1103664 (= (= lt!1879495 lt!1879497) (= lambda!213729 lambda!213728))))

(assert (=> bs!1103666 (= (= lt!1879495 lt!1879234) (= lambda!213729 lambda!213654))))

(declare-fun bs!1103670 () Bool)

(assert (= bs!1103670 (and d!1500200 d!1500188)))

(assert (=> bs!1103670 (= (= lt!1879495 lt!1879404) (= lambda!213729 lambda!213715))))

(assert (=> d!1500200 true))

(declare-fun b!4714755 () Bool)

(declare-fun res!1993342 () Bool)

(declare-fun e!2940550 () Bool)

(assert (=> b!4714755 (=> (not res!1993342) (not e!2940550))))

(assert (=> b!4714755 (= res!1993342 (forall!11527 (toList!5849 lt!1879091) lambda!213729))))

(declare-fun e!2940549 () ListMap!5213)

(assert (=> b!4714756 (= e!2940549 lt!1879091)))

(declare-fun lt!1879482 () Unit!128492)

(declare-fun call!329638 () Unit!128492)

(assert (=> b!4714756 (= lt!1879482 call!329638)))

(declare-fun call!329639 () Bool)

(assert (=> b!4714756 call!329639))

(declare-fun lt!1879483 () Unit!128492)

(assert (=> b!4714756 (= lt!1879483 lt!1879482)))

(declare-fun call!329640 () Bool)

(assert (=> b!4714756 call!329640))

(declare-fun lt!1879479 () Unit!128492)

(declare-fun Unit!128543 () Unit!128492)

(assert (=> b!4714756 (= lt!1879479 Unit!128543)))

(declare-fun b!4714757 () Bool)

(declare-fun e!2940548 () Bool)

(assert (=> b!4714757 (= e!2940548 (forall!11527 (toList!5849 lt!1879091) lambda!213728))))

(declare-fun bm!329633 () Bool)

(assert (=> bm!329633 (= call!329638 (lemmaContainsAllItsOwnKeys!776 lt!1879091))))

(assert (=> b!4714758 (= e!2940549 lt!1879497)))

(declare-fun lt!1879493 () ListMap!5213)

(assert (=> b!4714758 (= lt!1879493 (+!2240 lt!1879091 (h!59062 lt!1879100)))))

(assert (=> b!4714758 (= lt!1879497 (addToMapMapFromBucket!1410 (t!360109 lt!1879100) (+!2240 lt!1879091 (h!59062 lt!1879100))))))

(declare-fun lt!1879490 () Unit!128492)

(assert (=> b!4714758 (= lt!1879490 call!329638)))

(assert (=> b!4714758 call!329640))

(declare-fun lt!1879491 () Unit!128492)

(assert (=> b!4714758 (= lt!1879491 lt!1879490)))

(assert (=> b!4714758 call!329639))

(declare-fun lt!1879492 () Unit!128492)

(declare-fun Unit!128544 () Unit!128492)

(assert (=> b!4714758 (= lt!1879492 Unit!128544)))

(assert (=> b!4714758 (forall!11527 (t!360109 lt!1879100) lambda!213728)))

(declare-fun lt!1879478 () Unit!128492)

(declare-fun Unit!128545 () Unit!128492)

(assert (=> b!4714758 (= lt!1879478 Unit!128545)))

(declare-fun lt!1879494 () Unit!128492)

(declare-fun Unit!128546 () Unit!128492)

(assert (=> b!4714758 (= lt!1879494 Unit!128546)))

(declare-fun lt!1879488 () Unit!128492)

(assert (=> b!4714758 (= lt!1879488 (forallContained!3595 (toList!5849 lt!1879493) lambda!213728 (h!59062 lt!1879100)))))

(assert (=> b!4714758 (contains!16067 lt!1879493 (_1!30451 (h!59062 lt!1879100)))))

(declare-fun lt!1879481 () Unit!128492)

(declare-fun Unit!128547 () Unit!128492)

(assert (=> b!4714758 (= lt!1879481 Unit!128547)))

(assert (=> b!4714758 (contains!16067 lt!1879497 (_1!30451 (h!59062 lt!1879100)))))

(declare-fun lt!1879489 () Unit!128492)

(declare-fun Unit!128548 () Unit!128492)

(assert (=> b!4714758 (= lt!1879489 Unit!128548)))

(assert (=> b!4714758 (forall!11527 lt!1879100 lambda!213728)))

(declare-fun lt!1879498 () Unit!128492)

(declare-fun Unit!128549 () Unit!128492)

(assert (=> b!4714758 (= lt!1879498 Unit!128549)))

(assert (=> b!4714758 (forall!11527 (toList!5849 lt!1879493) lambda!213728)))

(declare-fun lt!1879485 () Unit!128492)

(declare-fun Unit!128550 () Unit!128492)

(assert (=> b!4714758 (= lt!1879485 Unit!128550)))

(declare-fun lt!1879496 () Unit!128492)

(declare-fun Unit!128551 () Unit!128492)

(assert (=> b!4714758 (= lt!1879496 Unit!128551)))

(declare-fun lt!1879486 () Unit!128492)

(assert (=> b!4714758 (= lt!1879486 (addForallContainsKeyThenBeforeAdding!774 lt!1879091 lt!1879497 (_1!30451 (h!59062 lt!1879100)) (_2!30451 (h!59062 lt!1879100))))))

(assert (=> b!4714758 (forall!11527 (toList!5849 lt!1879091) lambda!213728)))

(declare-fun lt!1879487 () Unit!128492)

(assert (=> b!4714758 (= lt!1879487 lt!1879486)))

(assert (=> b!4714758 (forall!11527 (toList!5849 lt!1879091) lambda!213728)))

(declare-fun lt!1879480 () Unit!128492)

(declare-fun Unit!128552 () Unit!128492)

(assert (=> b!4714758 (= lt!1879480 Unit!128552)))

(declare-fun res!1993343 () Bool)

(assert (=> b!4714758 (= res!1993343 (forall!11527 lt!1879100 lambda!213728))))

(assert (=> b!4714758 (=> (not res!1993343) (not e!2940548))))

(assert (=> b!4714758 e!2940548))

(declare-fun lt!1879484 () Unit!128492)

(declare-fun Unit!128553 () Unit!128492)

(assert (=> b!4714758 (= lt!1879484 Unit!128553)))

(declare-fun bm!329634 () Bool)

(declare-fun c!805340 () Bool)

(assert (=> bm!329634 (= call!329639 (forall!11527 (ite c!805340 (toList!5849 lt!1879091) (toList!5849 lt!1879493)) (ite c!805340 lambda!213725 lambda!213728)))))

(declare-fun bm!329635 () Bool)

(assert (=> bm!329635 (= call!329640 (forall!11527 (toList!5849 lt!1879091) (ite c!805340 lambda!213725 lambda!213726)))))

(assert (=> d!1500200 e!2940550))

(declare-fun res!1993344 () Bool)

(assert (=> d!1500200 (=> (not res!1993344) (not e!2940550))))

(assert (=> d!1500200 (= res!1993344 (forall!11527 lt!1879100 lambda!213729))))

(assert (=> d!1500200 (= lt!1879495 e!2940549)))

(assert (=> d!1500200 (= c!805340 ((_ is Nil!52739) lt!1879100))))

(assert (=> d!1500200 (noDuplicateKeys!1980 lt!1879100)))

(assert (=> d!1500200 (= (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879495)))

(declare-fun b!4714759 () Bool)

(assert (=> b!4714759 (= e!2940550 (invariantList!1488 (toList!5849 lt!1879495)))))

(assert (= (and d!1500200 c!805340) b!4714756))

(assert (= (and d!1500200 (not c!805340)) b!4714758))

(assert (= (and b!4714758 res!1993343) b!4714757))

(assert (= (or b!4714756 b!4714758) bm!329633))

(assert (= (or b!4714756 b!4714758) bm!329634))

(assert (= (or b!4714756 b!4714758) bm!329635))

(assert (= (and d!1500200 res!1993344) b!4714755))

(assert (= (and b!4714755 res!1993342) b!4714759))

(declare-fun m!5642667 () Bool)

(assert (=> bm!329635 m!5642667))

(declare-fun m!5642669 () Bool)

(assert (=> b!4714757 m!5642669))

(declare-fun m!5642671 () Bool)

(assert (=> b!4714755 m!5642671))

(declare-fun m!5642673 () Bool)

(assert (=> bm!329634 m!5642673))

(assert (=> b!4714758 m!5642669))

(declare-fun m!5642675 () Bool)

(assert (=> b!4714758 m!5642675))

(declare-fun m!5642677 () Bool)

(assert (=> b!4714758 m!5642677))

(declare-fun m!5642679 () Bool)

(assert (=> b!4714758 m!5642679))

(declare-fun m!5642681 () Bool)

(assert (=> b!4714758 m!5642681))

(assert (=> b!4714758 m!5642669))

(declare-fun m!5642683 () Bool)

(assert (=> b!4714758 m!5642683))

(declare-fun m!5642685 () Bool)

(assert (=> b!4714758 m!5642685))

(assert (=> b!4714758 m!5642681))

(declare-fun m!5642687 () Bool)

(assert (=> b!4714758 m!5642687))

(declare-fun m!5642689 () Bool)

(assert (=> b!4714758 m!5642689))

(declare-fun m!5642691 () Bool)

(assert (=> b!4714758 m!5642691))

(assert (=> b!4714758 m!5642677))

(declare-fun m!5642693 () Bool)

(assert (=> b!4714759 m!5642693))

(assert (=> bm!329633 m!5642241))

(declare-fun m!5642695 () Bool)

(assert (=> d!1500200 m!5642695))

(declare-fun m!5642697 () Bool)

(assert (=> d!1500200 m!5642697))

(assert (=> b!4714490 d!1500200))

(declare-fun bs!1103678 () Bool)

(declare-fun b!4714774 () Bool)

(assert (= bs!1103678 (and b!4714774 b!4714756)))

(declare-fun lambda!213731 () Int)

(assert (=> bs!1103678 (= lambda!213731 lambda!213725)))

(declare-fun bs!1103679 () Bool)

(assert (= bs!1103679 (and b!4714774 b!4714710)))

(assert (=> bs!1103679 (= lambda!213731 lambda!213713)))

(assert (=> bs!1103679 (= (= lt!1879091 lt!1879406) (= lambda!213731 lambda!213714))))

(declare-fun bs!1103680 () Bool)

(assert (= bs!1103680 (and b!4714774 d!1500102)))

(assert (=> bs!1103680 (= (= lt!1879091 lt!1879232) (= lambda!213731 lambda!213655))))

(declare-fun bs!1103681 () Bool)

(assert (= bs!1103681 (and b!4714774 b!4714758)))

(assert (=> bs!1103681 (= lambda!213731 lambda!213726)))

(declare-fun bs!1103682 () Bool)

(assert (= bs!1103682 (and b!4714774 b!4714708)))

(assert (=> bs!1103682 (= lambda!213731 lambda!213712)))

(declare-fun bs!1103683 () Bool)

(assert (= bs!1103683 (and b!4714774 b!4714604)))

(assert (=> bs!1103683 (= lambda!213731 lambda!213653)))

(declare-fun bs!1103684 () Bool)

(assert (= bs!1103684 (and b!4714774 d!1500200)))

(assert (=> bs!1103684 (= (= lt!1879091 lt!1879495) (= lambda!213731 lambda!213729))))

(declare-fun bs!1103685 () Bool)

(assert (= bs!1103685 (and b!4714774 b!4714602)))

(assert (=> bs!1103685 (= lambda!213731 lambda!213652)))

(declare-fun bs!1103686 () Bool)

(assert (= bs!1103686 (and b!4714774 d!1500170)))

(assert (=> bs!1103686 (not (= lambda!213731 lambda!213703))))

(assert (=> bs!1103681 (= (= lt!1879091 lt!1879497) (= lambda!213731 lambda!213728))))

(assert (=> bs!1103683 (= (= lt!1879091 lt!1879234) (= lambda!213731 lambda!213654))))

(declare-fun bs!1103687 () Bool)

(assert (= bs!1103687 (and b!4714774 d!1500188)))

(assert (=> bs!1103687 (= (= lt!1879091 lt!1879404) (= lambda!213731 lambda!213715))))

(assert (=> b!4714774 true))

(declare-fun bs!1103688 () Bool)

(declare-fun b!4714776 () Bool)

(assert (= bs!1103688 (and b!4714776 b!4714756)))

(declare-fun lambda!213732 () Int)

(assert (=> bs!1103688 (= lambda!213732 lambda!213725)))

(declare-fun bs!1103689 () Bool)

(assert (= bs!1103689 (and b!4714776 b!4714710)))

(assert (=> bs!1103689 (= lambda!213732 lambda!213713)))

(assert (=> bs!1103689 (= (= lt!1879091 lt!1879406) (= lambda!213732 lambda!213714))))

(declare-fun bs!1103690 () Bool)

(assert (= bs!1103690 (and b!4714776 b!4714758)))

(assert (=> bs!1103690 (= lambda!213732 lambda!213726)))

(declare-fun bs!1103691 () Bool)

(assert (= bs!1103691 (and b!4714776 b!4714708)))

(assert (=> bs!1103691 (= lambda!213732 lambda!213712)))

(declare-fun bs!1103692 () Bool)

(assert (= bs!1103692 (and b!4714776 b!4714604)))

(assert (=> bs!1103692 (= lambda!213732 lambda!213653)))

(declare-fun bs!1103693 () Bool)

(assert (= bs!1103693 (and b!4714776 d!1500200)))

(assert (=> bs!1103693 (= (= lt!1879091 lt!1879495) (= lambda!213732 lambda!213729))))

(declare-fun bs!1103694 () Bool)

(assert (= bs!1103694 (and b!4714776 b!4714602)))

(assert (=> bs!1103694 (= lambda!213732 lambda!213652)))

(declare-fun bs!1103695 () Bool)

(assert (= bs!1103695 (and b!4714776 d!1500170)))

(assert (=> bs!1103695 (not (= lambda!213732 lambda!213703))))

(assert (=> bs!1103690 (= (= lt!1879091 lt!1879497) (= lambda!213732 lambda!213728))))

(assert (=> bs!1103692 (= (= lt!1879091 lt!1879234) (= lambda!213732 lambda!213654))))

(declare-fun bs!1103696 () Bool)

(assert (= bs!1103696 (and b!4714776 d!1500188)))

(assert (=> bs!1103696 (= (= lt!1879091 lt!1879404) (= lambda!213732 lambda!213715))))

(declare-fun bs!1103697 () Bool)

(assert (= bs!1103697 (and b!4714776 b!4714774)))

(assert (=> bs!1103697 (= lambda!213732 lambda!213731)))

(declare-fun bs!1103698 () Bool)

(assert (= bs!1103698 (and b!4714776 d!1500102)))

(assert (=> bs!1103698 (= (= lt!1879091 lt!1879232) (= lambda!213732 lambda!213655))))

(assert (=> b!4714776 true))

(declare-fun lt!1879531 () ListMap!5213)

(declare-fun lambda!213736 () Int)

(assert (=> bs!1103688 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213725))))

(assert (=> b!4714776 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213732))))

(assert (=> bs!1103689 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213713))))

(assert (=> bs!1103689 (= (= lt!1879531 lt!1879406) (= lambda!213736 lambda!213714))))

(assert (=> bs!1103690 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213726))))

(assert (=> bs!1103691 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213712))))

(assert (=> bs!1103692 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213653))))

(assert (=> bs!1103693 (= (= lt!1879531 lt!1879495) (= lambda!213736 lambda!213729))))

(assert (=> bs!1103694 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213652))))

(assert (=> bs!1103695 (not (= lambda!213736 lambda!213703))))

(assert (=> bs!1103690 (= (= lt!1879531 lt!1879497) (= lambda!213736 lambda!213728))))

(assert (=> bs!1103692 (= (= lt!1879531 lt!1879234) (= lambda!213736 lambda!213654))))

(assert (=> bs!1103696 (= (= lt!1879531 lt!1879404) (= lambda!213736 lambda!213715))))

(assert (=> bs!1103697 (= (= lt!1879531 lt!1879091) (= lambda!213736 lambda!213731))))

(assert (=> bs!1103698 (= (= lt!1879531 lt!1879232) (= lambda!213736 lambda!213655))))

(assert (=> b!4714776 true))

(declare-fun bs!1103712 () Bool)

(declare-fun d!1500210 () Bool)

(assert (= bs!1103712 (and d!1500210 b!4714756)))

(declare-fun lt!1879529 () ListMap!5213)

(declare-fun lambda!213737 () Int)

(assert (=> bs!1103712 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213725))))

(declare-fun bs!1103713 () Bool)

(assert (= bs!1103713 (and d!1500210 b!4714776)))

(assert (=> bs!1103713 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213732))))

(declare-fun bs!1103714 () Bool)

(assert (= bs!1103714 (and d!1500210 b!4714710)))

(assert (=> bs!1103714 (= (= lt!1879529 lt!1879406) (= lambda!213737 lambda!213714))))

(declare-fun bs!1103715 () Bool)

(assert (= bs!1103715 (and d!1500210 b!4714758)))

(assert (=> bs!1103715 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213726))))

(declare-fun bs!1103716 () Bool)

(assert (= bs!1103716 (and d!1500210 b!4714708)))

(assert (=> bs!1103716 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213712))))

(declare-fun bs!1103717 () Bool)

(assert (= bs!1103717 (and d!1500210 b!4714604)))

(assert (=> bs!1103717 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213653))))

(declare-fun bs!1103718 () Bool)

(assert (= bs!1103718 (and d!1500210 d!1500200)))

(assert (=> bs!1103718 (= (= lt!1879529 lt!1879495) (= lambda!213737 lambda!213729))))

(declare-fun bs!1103719 () Bool)

(assert (= bs!1103719 (and d!1500210 b!4714602)))

(assert (=> bs!1103719 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213652))))

(declare-fun bs!1103720 () Bool)

(assert (= bs!1103720 (and d!1500210 d!1500170)))

(assert (=> bs!1103720 (not (= lambda!213737 lambda!213703))))

(assert (=> bs!1103714 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213713))))

(assert (=> bs!1103713 (= (= lt!1879529 lt!1879531) (= lambda!213737 lambda!213736))))

(assert (=> bs!1103715 (= (= lt!1879529 lt!1879497) (= lambda!213737 lambda!213728))))

(assert (=> bs!1103717 (= (= lt!1879529 lt!1879234) (= lambda!213737 lambda!213654))))

(declare-fun bs!1103721 () Bool)

(assert (= bs!1103721 (and d!1500210 d!1500188)))

(assert (=> bs!1103721 (= (= lt!1879529 lt!1879404) (= lambda!213737 lambda!213715))))

(declare-fun bs!1103722 () Bool)

(assert (= bs!1103722 (and d!1500210 b!4714774)))

(assert (=> bs!1103722 (= (= lt!1879529 lt!1879091) (= lambda!213737 lambda!213731))))

(declare-fun bs!1103723 () Bool)

(assert (= bs!1103723 (and d!1500210 d!1500102)))

(assert (=> bs!1103723 (= (= lt!1879529 lt!1879232) (= lambda!213737 lambda!213655))))

(assert (=> d!1500210 true))

(declare-fun b!4714773 () Bool)

(declare-fun res!1993350 () Bool)

(declare-fun e!2940561 () Bool)

(assert (=> b!4714773 (=> (not res!1993350) (not e!2940561))))

(assert (=> b!4714773 (= res!1993350 (forall!11527 (toList!5849 lt!1879091) lambda!213737))))

(declare-fun e!2940560 () ListMap!5213)

(assert (=> b!4714774 (= e!2940560 lt!1879091)))

(declare-fun lt!1879516 () Unit!128492)

(declare-fun call!329642 () Unit!128492)

(assert (=> b!4714774 (= lt!1879516 call!329642)))

(declare-fun call!329643 () Bool)

(assert (=> b!4714774 call!329643))

(declare-fun lt!1879517 () Unit!128492)

(assert (=> b!4714774 (= lt!1879517 lt!1879516)))

(declare-fun call!329644 () Bool)

(assert (=> b!4714774 call!329644))

(declare-fun lt!1879513 () Unit!128492)

(declare-fun Unit!128565 () Unit!128492)

(assert (=> b!4714774 (= lt!1879513 Unit!128565)))

(declare-fun b!4714775 () Bool)

(declare-fun e!2940559 () Bool)

(assert (=> b!4714775 (= e!2940559 (forall!11527 (toList!5849 lt!1879091) lambda!213736))))

(declare-fun bm!329637 () Bool)

(assert (=> bm!329637 (= call!329642 (lemmaContainsAllItsOwnKeys!776 lt!1879091))))

(assert (=> b!4714776 (= e!2940560 lt!1879531)))

(declare-fun lt!1879527 () ListMap!5213)

(assert (=> b!4714776 (= lt!1879527 (+!2240 lt!1879091 (h!59062 (Cons!52739 lt!1879086 lt!1879087))))))

(assert (=> b!4714776 (= lt!1879531 (addToMapMapFromBucket!1410 (t!360109 (Cons!52739 lt!1879086 lt!1879087)) (+!2240 lt!1879091 (h!59062 (Cons!52739 lt!1879086 lt!1879087)))))))

(declare-fun lt!1879524 () Unit!128492)

(assert (=> b!4714776 (= lt!1879524 call!329642)))

(assert (=> b!4714776 call!329644))

(declare-fun lt!1879525 () Unit!128492)

(assert (=> b!4714776 (= lt!1879525 lt!1879524)))

(assert (=> b!4714776 call!329643))

(declare-fun lt!1879526 () Unit!128492)

(declare-fun Unit!128566 () Unit!128492)

(assert (=> b!4714776 (= lt!1879526 Unit!128566)))

(assert (=> b!4714776 (forall!11527 (t!360109 (Cons!52739 lt!1879086 lt!1879087)) lambda!213736)))

(declare-fun lt!1879512 () Unit!128492)

(declare-fun Unit!128567 () Unit!128492)

(assert (=> b!4714776 (= lt!1879512 Unit!128567)))

(declare-fun lt!1879528 () Unit!128492)

(declare-fun Unit!128568 () Unit!128492)

(assert (=> b!4714776 (= lt!1879528 Unit!128568)))

(declare-fun lt!1879522 () Unit!128492)

(assert (=> b!4714776 (= lt!1879522 (forallContained!3595 (toList!5849 lt!1879527) lambda!213736 (h!59062 (Cons!52739 lt!1879086 lt!1879087))))))

(assert (=> b!4714776 (contains!16067 lt!1879527 (_1!30451 (h!59062 (Cons!52739 lt!1879086 lt!1879087))))))

(declare-fun lt!1879515 () Unit!128492)

(declare-fun Unit!128569 () Unit!128492)

(assert (=> b!4714776 (= lt!1879515 Unit!128569)))

(assert (=> b!4714776 (contains!16067 lt!1879531 (_1!30451 (h!59062 (Cons!52739 lt!1879086 lt!1879087))))))

(declare-fun lt!1879523 () Unit!128492)

(declare-fun Unit!128570 () Unit!128492)

(assert (=> b!4714776 (= lt!1879523 Unit!128570)))

(assert (=> b!4714776 (forall!11527 (Cons!52739 lt!1879086 lt!1879087) lambda!213736)))

(declare-fun lt!1879532 () Unit!128492)

(declare-fun Unit!128571 () Unit!128492)

(assert (=> b!4714776 (= lt!1879532 Unit!128571)))

(assert (=> b!4714776 (forall!11527 (toList!5849 lt!1879527) lambda!213736)))

(declare-fun lt!1879519 () Unit!128492)

(declare-fun Unit!128572 () Unit!128492)

(assert (=> b!4714776 (= lt!1879519 Unit!128572)))

(declare-fun lt!1879530 () Unit!128492)

(declare-fun Unit!128573 () Unit!128492)

(assert (=> b!4714776 (= lt!1879530 Unit!128573)))

(declare-fun lt!1879520 () Unit!128492)

(assert (=> b!4714776 (= lt!1879520 (addForallContainsKeyThenBeforeAdding!774 lt!1879091 lt!1879531 (_1!30451 (h!59062 (Cons!52739 lt!1879086 lt!1879087))) (_2!30451 (h!59062 (Cons!52739 lt!1879086 lt!1879087)))))))

(assert (=> b!4714776 (forall!11527 (toList!5849 lt!1879091) lambda!213736)))

(declare-fun lt!1879521 () Unit!128492)

(assert (=> b!4714776 (= lt!1879521 lt!1879520)))

(assert (=> b!4714776 (forall!11527 (toList!5849 lt!1879091) lambda!213736)))

(declare-fun lt!1879514 () Unit!128492)

(declare-fun Unit!128574 () Unit!128492)

(assert (=> b!4714776 (= lt!1879514 Unit!128574)))

(declare-fun res!1993351 () Bool)

(assert (=> b!4714776 (= res!1993351 (forall!11527 (Cons!52739 lt!1879086 lt!1879087) lambda!213736))))

(assert (=> b!4714776 (=> (not res!1993351) (not e!2940559))))

(assert (=> b!4714776 e!2940559))

(declare-fun lt!1879518 () Unit!128492)

(declare-fun Unit!128575 () Unit!128492)

(assert (=> b!4714776 (= lt!1879518 Unit!128575)))

(declare-fun c!805345 () Bool)

(declare-fun bm!329638 () Bool)

(assert (=> bm!329638 (= call!329643 (forall!11527 (ite c!805345 (toList!5849 lt!1879091) (toList!5849 lt!1879527)) (ite c!805345 lambda!213731 lambda!213736)))))

(declare-fun bm!329639 () Bool)

(assert (=> bm!329639 (= call!329644 (forall!11527 (toList!5849 lt!1879091) (ite c!805345 lambda!213731 lambda!213732)))))

(assert (=> d!1500210 e!2940561))

(declare-fun res!1993352 () Bool)

(assert (=> d!1500210 (=> (not res!1993352) (not e!2940561))))

(assert (=> d!1500210 (= res!1993352 (forall!11527 (Cons!52739 lt!1879086 lt!1879087) lambda!213737))))

(assert (=> d!1500210 (= lt!1879529 e!2940560)))

(assert (=> d!1500210 (= c!805345 ((_ is Nil!52739) (Cons!52739 lt!1879086 lt!1879087)))))

(assert (=> d!1500210 (noDuplicateKeys!1980 (Cons!52739 lt!1879086 lt!1879087))))

(assert (=> d!1500210 (= (addToMapMapFromBucket!1410 (Cons!52739 lt!1879086 lt!1879087) lt!1879091) lt!1879529)))

(declare-fun b!4714777 () Bool)

(assert (=> b!4714777 (= e!2940561 (invariantList!1488 (toList!5849 lt!1879529)))))

(assert (= (and d!1500210 c!805345) b!4714774))

(assert (= (and d!1500210 (not c!805345)) b!4714776))

(assert (= (and b!4714776 res!1993351) b!4714775))

(assert (= (or b!4714774 b!4714776) bm!329637))

(assert (= (or b!4714774 b!4714776) bm!329638))

(assert (= (or b!4714774 b!4714776) bm!329639))

(assert (= (and d!1500210 res!1993352) b!4714773))

(assert (= (and b!4714773 res!1993350) b!4714777))

(declare-fun m!5642707 () Bool)

(assert (=> bm!329639 m!5642707))

(declare-fun m!5642709 () Bool)

(assert (=> b!4714775 m!5642709))

(declare-fun m!5642711 () Bool)

(assert (=> b!4714773 m!5642711))

(declare-fun m!5642713 () Bool)

(assert (=> bm!329638 m!5642713))

(assert (=> b!4714776 m!5642709))

(declare-fun m!5642717 () Bool)

(assert (=> b!4714776 m!5642717))

(declare-fun m!5642719 () Bool)

(assert (=> b!4714776 m!5642719))

(declare-fun m!5642721 () Bool)

(assert (=> b!4714776 m!5642721))

(declare-fun m!5642723 () Bool)

(assert (=> b!4714776 m!5642723))

(assert (=> b!4714776 m!5642709))

(declare-fun m!5642725 () Bool)

(assert (=> b!4714776 m!5642725))

(declare-fun m!5642727 () Bool)

(assert (=> b!4714776 m!5642727))

(assert (=> b!4714776 m!5642723))

(declare-fun m!5642729 () Bool)

(assert (=> b!4714776 m!5642729))

(declare-fun m!5642735 () Bool)

(assert (=> b!4714776 m!5642735))

(declare-fun m!5642737 () Bool)

(assert (=> b!4714776 m!5642737))

(assert (=> b!4714776 m!5642719))

(declare-fun m!5642739 () Bool)

(assert (=> b!4714777 m!5642739))

(assert (=> bm!329637 m!5642241))

(declare-fun m!5642741 () Bool)

(assert (=> d!1500210 m!5642741))

(declare-fun m!5642743 () Bool)

(assert (=> d!1500210 m!5642743))

(assert (=> b!4714490 d!1500210))

(declare-fun bs!1103739 () Bool)

(declare-fun b!4714787 () Bool)

(assert (= bs!1103739 (and b!4714787 b!4714756)))

(declare-fun lambda!213742 () Int)

(assert (=> bs!1103739 (= lambda!213742 lambda!213725)))

(declare-fun bs!1103741 () Bool)

(assert (= bs!1103741 (and b!4714787 b!4714776)))

(assert (=> bs!1103741 (= lambda!213742 lambda!213732)))

(declare-fun bs!1103743 () Bool)

(assert (= bs!1103743 (and b!4714787 b!4714710)))

(assert (=> bs!1103743 (= (= lt!1879091 lt!1879406) (= lambda!213742 lambda!213714))))

(declare-fun bs!1103745 () Bool)

(assert (= bs!1103745 (and b!4714787 b!4714758)))

(assert (=> bs!1103745 (= lambda!213742 lambda!213726)))

(declare-fun bs!1103747 () Bool)

(assert (= bs!1103747 (and b!4714787 b!4714708)))

(assert (=> bs!1103747 (= lambda!213742 lambda!213712)))

(declare-fun bs!1103748 () Bool)

(assert (= bs!1103748 (and b!4714787 b!4714604)))

(assert (=> bs!1103748 (= lambda!213742 lambda!213653)))

(declare-fun bs!1103749 () Bool)

(assert (= bs!1103749 (and b!4714787 d!1500200)))

(assert (=> bs!1103749 (= (= lt!1879091 lt!1879495) (= lambda!213742 lambda!213729))))

(declare-fun bs!1103750 () Bool)

(assert (= bs!1103750 (and b!4714787 b!4714602)))

(assert (=> bs!1103750 (= lambda!213742 lambda!213652)))

(declare-fun bs!1103751 () Bool)

(assert (= bs!1103751 (and b!4714787 d!1500170)))

(assert (=> bs!1103751 (not (= lambda!213742 lambda!213703))))

(declare-fun bs!1103752 () Bool)

(assert (= bs!1103752 (and b!4714787 d!1500210)))

(assert (=> bs!1103752 (= (= lt!1879091 lt!1879529) (= lambda!213742 lambda!213737))))

(assert (=> bs!1103743 (= lambda!213742 lambda!213713)))

(assert (=> bs!1103741 (= (= lt!1879091 lt!1879531) (= lambda!213742 lambda!213736))))

(assert (=> bs!1103745 (= (= lt!1879091 lt!1879497) (= lambda!213742 lambda!213728))))

(assert (=> bs!1103748 (= (= lt!1879091 lt!1879234) (= lambda!213742 lambda!213654))))

(declare-fun bs!1103753 () Bool)

(assert (= bs!1103753 (and b!4714787 d!1500188)))

(assert (=> bs!1103753 (= (= lt!1879091 lt!1879404) (= lambda!213742 lambda!213715))))

(declare-fun bs!1103754 () Bool)

(assert (= bs!1103754 (and b!4714787 b!4714774)))

(assert (=> bs!1103754 (= lambda!213742 lambda!213731)))

(declare-fun bs!1103755 () Bool)

(assert (= bs!1103755 (and b!4714787 d!1500102)))

(assert (=> bs!1103755 (= (= lt!1879091 lt!1879232) (= lambda!213742 lambda!213655))))

(assert (=> b!4714787 true))

(declare-fun bs!1103756 () Bool)

(declare-fun b!4714789 () Bool)

(assert (= bs!1103756 (and b!4714789 b!4714756)))

(declare-fun lambda!213743 () Int)

(assert (=> bs!1103756 (= lambda!213743 lambda!213725)))

(declare-fun bs!1103757 () Bool)

(assert (= bs!1103757 (and b!4714789 b!4714776)))

(assert (=> bs!1103757 (= lambda!213743 lambda!213732)))

(declare-fun bs!1103758 () Bool)

(assert (= bs!1103758 (and b!4714789 b!4714710)))

(assert (=> bs!1103758 (= (= lt!1879091 lt!1879406) (= lambda!213743 lambda!213714))))

(declare-fun bs!1103759 () Bool)

(assert (= bs!1103759 (and b!4714789 b!4714758)))

(assert (=> bs!1103759 (= lambda!213743 lambda!213726)))

(declare-fun bs!1103760 () Bool)

(assert (= bs!1103760 (and b!4714789 b!4714708)))

(assert (=> bs!1103760 (= lambda!213743 lambda!213712)))

(declare-fun bs!1103761 () Bool)

(assert (= bs!1103761 (and b!4714789 b!4714787)))

(assert (=> bs!1103761 (= lambda!213743 lambda!213742)))

(declare-fun bs!1103762 () Bool)

(assert (= bs!1103762 (and b!4714789 b!4714604)))

(assert (=> bs!1103762 (= lambda!213743 lambda!213653)))

(declare-fun bs!1103763 () Bool)

(assert (= bs!1103763 (and b!4714789 d!1500200)))

(assert (=> bs!1103763 (= (= lt!1879091 lt!1879495) (= lambda!213743 lambda!213729))))

(declare-fun bs!1103764 () Bool)

(assert (= bs!1103764 (and b!4714789 b!4714602)))

(assert (=> bs!1103764 (= lambda!213743 lambda!213652)))

(declare-fun bs!1103765 () Bool)

(assert (= bs!1103765 (and b!4714789 d!1500170)))

(assert (=> bs!1103765 (not (= lambda!213743 lambda!213703))))

(declare-fun bs!1103766 () Bool)

(assert (= bs!1103766 (and b!4714789 d!1500210)))

(assert (=> bs!1103766 (= (= lt!1879091 lt!1879529) (= lambda!213743 lambda!213737))))

(assert (=> bs!1103758 (= lambda!213743 lambda!213713)))

(assert (=> bs!1103757 (= (= lt!1879091 lt!1879531) (= lambda!213743 lambda!213736))))

(assert (=> bs!1103759 (= (= lt!1879091 lt!1879497) (= lambda!213743 lambda!213728))))

(assert (=> bs!1103762 (= (= lt!1879091 lt!1879234) (= lambda!213743 lambda!213654))))

(declare-fun bs!1103767 () Bool)

(assert (= bs!1103767 (and b!4714789 d!1500188)))

(assert (=> bs!1103767 (= (= lt!1879091 lt!1879404) (= lambda!213743 lambda!213715))))

(declare-fun bs!1103768 () Bool)

(assert (= bs!1103768 (and b!4714789 b!4714774)))

(assert (=> bs!1103768 (= lambda!213743 lambda!213731)))

(declare-fun bs!1103769 () Bool)

(assert (= bs!1103769 (and b!4714789 d!1500102)))

(assert (=> bs!1103769 (= (= lt!1879091 lt!1879232) (= lambda!213743 lambda!213655))))

(assert (=> b!4714789 true))

(declare-fun lt!1879553 () ListMap!5213)

(declare-fun lambda!213744 () Int)

(assert (=> bs!1103756 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213725))))

(assert (=> bs!1103757 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213732))))

(assert (=> bs!1103758 (= (= lt!1879553 lt!1879406) (= lambda!213744 lambda!213714))))

(assert (=> bs!1103759 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213726))))

(assert (=> b!4714789 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213743))))

(assert (=> bs!1103760 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213712))))

(assert (=> bs!1103761 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213742))))

(assert (=> bs!1103762 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213653))))

(assert (=> bs!1103763 (= (= lt!1879553 lt!1879495) (= lambda!213744 lambda!213729))))

(assert (=> bs!1103764 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213652))))

(assert (=> bs!1103765 (not (= lambda!213744 lambda!213703))))

(assert (=> bs!1103766 (= (= lt!1879553 lt!1879529) (= lambda!213744 lambda!213737))))

(assert (=> bs!1103758 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213713))))

(assert (=> bs!1103757 (= (= lt!1879553 lt!1879531) (= lambda!213744 lambda!213736))))

(assert (=> bs!1103759 (= (= lt!1879553 lt!1879497) (= lambda!213744 lambda!213728))))

(assert (=> bs!1103762 (= (= lt!1879553 lt!1879234) (= lambda!213744 lambda!213654))))

(assert (=> bs!1103767 (= (= lt!1879553 lt!1879404) (= lambda!213744 lambda!213715))))

(assert (=> bs!1103768 (= (= lt!1879553 lt!1879091) (= lambda!213744 lambda!213731))))

(assert (=> bs!1103769 (= (= lt!1879553 lt!1879232) (= lambda!213744 lambda!213655))))

(assert (=> b!4714789 true))

(declare-fun bs!1103770 () Bool)

(declare-fun d!1500220 () Bool)

(assert (= bs!1103770 (and d!1500220 b!4714756)))

(declare-fun lambda!213745 () Int)

(declare-fun lt!1879551 () ListMap!5213)

(assert (=> bs!1103770 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213725))))

(declare-fun bs!1103771 () Bool)

(assert (= bs!1103771 (and d!1500220 b!4714776)))

(assert (=> bs!1103771 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213732))))

(declare-fun bs!1103772 () Bool)

(assert (= bs!1103772 (and d!1500220 b!4714710)))

(assert (=> bs!1103772 (= (= lt!1879551 lt!1879406) (= lambda!213745 lambda!213714))))

(declare-fun bs!1103773 () Bool)

(assert (= bs!1103773 (and d!1500220 b!4714789)))

(assert (=> bs!1103773 (= (= lt!1879551 lt!1879553) (= lambda!213745 lambda!213744))))

(declare-fun bs!1103774 () Bool)

(assert (= bs!1103774 (and d!1500220 b!4714758)))

(assert (=> bs!1103774 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213726))))

(assert (=> bs!1103773 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213743))))

(declare-fun bs!1103775 () Bool)

(assert (= bs!1103775 (and d!1500220 b!4714708)))

(assert (=> bs!1103775 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213712))))

(declare-fun bs!1103776 () Bool)

(assert (= bs!1103776 (and d!1500220 b!4714787)))

(assert (=> bs!1103776 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213742))))

(declare-fun bs!1103777 () Bool)

(assert (= bs!1103777 (and d!1500220 b!4714604)))

(assert (=> bs!1103777 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213653))))

(declare-fun bs!1103778 () Bool)

(assert (= bs!1103778 (and d!1500220 d!1500200)))

(assert (=> bs!1103778 (= (= lt!1879551 lt!1879495) (= lambda!213745 lambda!213729))))

(declare-fun bs!1103779 () Bool)

(assert (= bs!1103779 (and d!1500220 b!4714602)))

(assert (=> bs!1103779 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213652))))

(declare-fun bs!1103780 () Bool)

(assert (= bs!1103780 (and d!1500220 d!1500170)))

(assert (=> bs!1103780 (not (= lambda!213745 lambda!213703))))

(declare-fun bs!1103781 () Bool)

(assert (= bs!1103781 (and d!1500220 d!1500210)))

(assert (=> bs!1103781 (= (= lt!1879551 lt!1879529) (= lambda!213745 lambda!213737))))

(assert (=> bs!1103772 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213713))))

(assert (=> bs!1103771 (= (= lt!1879551 lt!1879531) (= lambda!213745 lambda!213736))))

(assert (=> bs!1103774 (= (= lt!1879551 lt!1879497) (= lambda!213745 lambda!213728))))

(assert (=> bs!1103777 (= (= lt!1879551 lt!1879234) (= lambda!213745 lambda!213654))))

(declare-fun bs!1103782 () Bool)

(assert (= bs!1103782 (and d!1500220 d!1500188)))

(assert (=> bs!1103782 (= (= lt!1879551 lt!1879404) (= lambda!213745 lambda!213715))))

(declare-fun bs!1103783 () Bool)

(assert (= bs!1103783 (and d!1500220 b!4714774)))

(assert (=> bs!1103783 (= (= lt!1879551 lt!1879091) (= lambda!213745 lambda!213731))))

(declare-fun bs!1103784 () Bool)

(assert (= bs!1103784 (and d!1500220 d!1500102)))

(assert (=> bs!1103784 (= (= lt!1879551 lt!1879232) (= lambda!213745 lambda!213655))))

(assert (=> d!1500220 true))

(declare-fun b!4714786 () Bool)

(declare-fun res!1993353 () Bool)

(declare-fun e!2940565 () Bool)

(assert (=> b!4714786 (=> (not res!1993353) (not e!2940565))))

(assert (=> b!4714786 (= res!1993353 (forall!11527 (toList!5849 lt!1879091) lambda!213745))))

(declare-fun e!2940564 () ListMap!5213)

(assert (=> b!4714787 (= e!2940564 lt!1879091)))

(declare-fun lt!1879538 () Unit!128492)

(declare-fun call!329645 () Unit!128492)

(assert (=> b!4714787 (= lt!1879538 call!329645)))

(declare-fun call!329646 () Bool)

(assert (=> b!4714787 call!329646))

(declare-fun lt!1879539 () Unit!128492)

(assert (=> b!4714787 (= lt!1879539 lt!1879538)))

(declare-fun call!329647 () Bool)

(assert (=> b!4714787 call!329647))

(declare-fun lt!1879535 () Unit!128492)

(declare-fun Unit!128576 () Unit!128492)

(assert (=> b!4714787 (= lt!1879535 Unit!128576)))

(declare-fun b!4714788 () Bool)

(declare-fun e!2940563 () Bool)

(assert (=> b!4714788 (= e!2940563 (forall!11527 (toList!5849 lt!1879091) lambda!213744))))

(declare-fun bm!329640 () Bool)

(assert (=> bm!329640 (= call!329645 (lemmaContainsAllItsOwnKeys!776 lt!1879091))))

(assert (=> b!4714789 (= e!2940564 lt!1879553)))

(declare-fun lt!1879549 () ListMap!5213)

(assert (=> b!4714789 (= lt!1879549 (+!2240 lt!1879091 (h!59062 lt!1879087)))))

(assert (=> b!4714789 (= lt!1879553 (addToMapMapFromBucket!1410 (t!360109 lt!1879087) (+!2240 lt!1879091 (h!59062 lt!1879087))))))

(declare-fun lt!1879546 () Unit!128492)

(assert (=> b!4714789 (= lt!1879546 call!329645)))

(assert (=> b!4714789 call!329647))

(declare-fun lt!1879547 () Unit!128492)

(assert (=> b!4714789 (= lt!1879547 lt!1879546)))

(assert (=> b!4714789 call!329646))

(declare-fun lt!1879548 () Unit!128492)

(declare-fun Unit!128578 () Unit!128492)

(assert (=> b!4714789 (= lt!1879548 Unit!128578)))

(assert (=> b!4714789 (forall!11527 (t!360109 lt!1879087) lambda!213744)))

(declare-fun lt!1879534 () Unit!128492)

(declare-fun Unit!128579 () Unit!128492)

(assert (=> b!4714789 (= lt!1879534 Unit!128579)))

(declare-fun lt!1879550 () Unit!128492)

(declare-fun Unit!128580 () Unit!128492)

(assert (=> b!4714789 (= lt!1879550 Unit!128580)))

(declare-fun lt!1879544 () Unit!128492)

(assert (=> b!4714789 (= lt!1879544 (forallContained!3595 (toList!5849 lt!1879549) lambda!213744 (h!59062 lt!1879087)))))

(assert (=> b!4714789 (contains!16067 lt!1879549 (_1!30451 (h!59062 lt!1879087)))))

(declare-fun lt!1879537 () Unit!128492)

(declare-fun Unit!128581 () Unit!128492)

(assert (=> b!4714789 (= lt!1879537 Unit!128581)))

(assert (=> b!4714789 (contains!16067 lt!1879553 (_1!30451 (h!59062 lt!1879087)))))

(declare-fun lt!1879545 () Unit!128492)

(declare-fun Unit!128582 () Unit!128492)

(assert (=> b!4714789 (= lt!1879545 Unit!128582)))

(assert (=> b!4714789 (forall!11527 lt!1879087 lambda!213744)))

(declare-fun lt!1879554 () Unit!128492)

(declare-fun Unit!128583 () Unit!128492)

(assert (=> b!4714789 (= lt!1879554 Unit!128583)))

(assert (=> b!4714789 (forall!11527 (toList!5849 lt!1879549) lambda!213744)))

(declare-fun lt!1879541 () Unit!128492)

(declare-fun Unit!128584 () Unit!128492)

(assert (=> b!4714789 (= lt!1879541 Unit!128584)))

(declare-fun lt!1879552 () Unit!128492)

(declare-fun Unit!128585 () Unit!128492)

(assert (=> b!4714789 (= lt!1879552 Unit!128585)))

(declare-fun lt!1879542 () Unit!128492)

(assert (=> b!4714789 (= lt!1879542 (addForallContainsKeyThenBeforeAdding!774 lt!1879091 lt!1879553 (_1!30451 (h!59062 lt!1879087)) (_2!30451 (h!59062 lt!1879087))))))

(assert (=> b!4714789 (forall!11527 (toList!5849 lt!1879091) lambda!213744)))

(declare-fun lt!1879543 () Unit!128492)

(assert (=> b!4714789 (= lt!1879543 lt!1879542)))

(assert (=> b!4714789 (forall!11527 (toList!5849 lt!1879091) lambda!213744)))

(declare-fun lt!1879536 () Unit!128492)

(declare-fun Unit!128586 () Unit!128492)

(assert (=> b!4714789 (= lt!1879536 Unit!128586)))

(declare-fun res!1993354 () Bool)

(assert (=> b!4714789 (= res!1993354 (forall!11527 lt!1879087 lambda!213744))))

(assert (=> b!4714789 (=> (not res!1993354) (not e!2940563))))

(assert (=> b!4714789 e!2940563))

(declare-fun lt!1879540 () Unit!128492)

(declare-fun Unit!128587 () Unit!128492)

(assert (=> b!4714789 (= lt!1879540 Unit!128587)))

(declare-fun c!805347 () Bool)

(declare-fun bm!329641 () Bool)

(assert (=> bm!329641 (= call!329646 (forall!11527 (ite c!805347 (toList!5849 lt!1879091) (toList!5849 lt!1879549)) (ite c!805347 lambda!213742 lambda!213744)))))

(declare-fun bm!329642 () Bool)

(assert (=> bm!329642 (= call!329647 (forall!11527 (toList!5849 lt!1879091) (ite c!805347 lambda!213742 lambda!213743)))))

(assert (=> d!1500220 e!2940565))

(declare-fun res!1993355 () Bool)

(assert (=> d!1500220 (=> (not res!1993355) (not e!2940565))))

(assert (=> d!1500220 (= res!1993355 (forall!11527 lt!1879087 lambda!213745))))

(assert (=> d!1500220 (= lt!1879551 e!2940564)))

(assert (=> d!1500220 (= c!805347 ((_ is Nil!52739) lt!1879087))))

(assert (=> d!1500220 (noDuplicateKeys!1980 lt!1879087)))

(assert (=> d!1500220 (= (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879551)))

(declare-fun b!4714790 () Bool)

(assert (=> b!4714790 (= e!2940565 (invariantList!1488 (toList!5849 lt!1879551)))))

(assert (= (and d!1500220 c!805347) b!4714787))

(assert (= (and d!1500220 (not c!805347)) b!4714789))

(assert (= (and b!4714789 res!1993354) b!4714788))

(assert (= (or b!4714787 b!4714789) bm!329640))

(assert (= (or b!4714787 b!4714789) bm!329641))

(assert (= (or b!4714787 b!4714789) bm!329642))

(assert (= (and d!1500220 res!1993355) b!4714786))

(assert (= (and b!4714786 res!1993353) b!4714790))

(declare-fun m!5642753 () Bool)

(assert (=> bm!329642 m!5642753))

(declare-fun m!5642755 () Bool)

(assert (=> b!4714788 m!5642755))

(declare-fun m!5642757 () Bool)

(assert (=> b!4714786 m!5642757))

(declare-fun m!5642759 () Bool)

(assert (=> bm!329641 m!5642759))

(assert (=> b!4714789 m!5642755))

(declare-fun m!5642761 () Bool)

(assert (=> b!4714789 m!5642761))

(declare-fun m!5642763 () Bool)

(assert (=> b!4714789 m!5642763))

(declare-fun m!5642765 () Bool)

(assert (=> b!4714789 m!5642765))

(declare-fun m!5642767 () Bool)

(assert (=> b!4714789 m!5642767))

(assert (=> b!4714789 m!5642755))

(declare-fun m!5642769 () Bool)

(assert (=> b!4714789 m!5642769))

(declare-fun m!5642773 () Bool)

(assert (=> b!4714789 m!5642773))

(assert (=> b!4714789 m!5642767))

(declare-fun m!5642777 () Bool)

(assert (=> b!4714789 m!5642777))

(declare-fun m!5642781 () Bool)

(assert (=> b!4714789 m!5642781))

(declare-fun m!5642785 () Bool)

(assert (=> b!4714789 m!5642785))

(assert (=> b!4714789 m!5642763))

(declare-fun m!5642789 () Bool)

(assert (=> b!4714790 m!5642789))

(assert (=> bm!329640 m!5642241))

(declare-fun m!5642793 () Bool)

(assert (=> d!1500220 m!5642793))

(declare-fun m!5642795 () Bool)

(assert (=> d!1500220 m!5642795))

(assert (=> b!4714490 d!1500220))

(declare-fun d!1500226 () Bool)

(assert (=> d!1500226 (= (head!10189 newBucket!218) (h!59062 newBucket!218))))

(assert (=> b!4714490 d!1500226))

(declare-fun d!1500228 () Bool)

(declare-fun e!2940573 () Bool)

(assert (=> d!1500228 e!2940573))

(declare-fun res!1993361 () Bool)

(assert (=> d!1500228 (=> res!1993361 e!2940573)))

(declare-fun e!2940574 () Bool)

(assert (=> d!1500228 (= res!1993361 e!2940574)))

(declare-fun res!1993360 () Bool)

(assert (=> d!1500228 (=> (not res!1993360) (not e!2940574))))

(declare-fun lt!1879560 () Bool)

(assert (=> d!1500228 (= res!1993360 (not lt!1879560))))

(declare-fun lt!1879566 () Bool)

(assert (=> d!1500228 (= lt!1879560 lt!1879566)))

(declare-fun lt!1879559 () Unit!128492)

(declare-fun e!2940570 () Unit!128492)

(assert (=> d!1500228 (= lt!1879559 e!2940570)))

(declare-fun c!805349 () Bool)

(assert (=> d!1500228 (= c!805349 lt!1879566)))

(assert (=> d!1500228 (= lt!1879566 (containsKey!3307 (toList!5849 lt!1879094) key!4653))))

(assert (=> d!1500228 (= (contains!16067 lt!1879094 key!4653) lt!1879560)))

(declare-fun b!4714796 () Bool)

(declare-fun e!2940572 () Bool)

(assert (=> b!4714796 (= e!2940573 e!2940572)))

(declare-fun res!1993359 () Bool)

(assert (=> b!4714796 (=> (not res!1993359) (not e!2940572))))

(assert (=> b!4714796 (= res!1993359 (isDefined!9564 (getValueByKey!1923 (toList!5849 lt!1879094) key!4653)))))

(declare-fun b!4714797 () Bool)

(declare-fun e!2940571 () Unit!128492)

(assert (=> b!4714797 (= e!2940570 e!2940571)))

(declare-fun c!805350 () Bool)

(declare-fun call!329648 () Bool)

(assert (=> b!4714797 (= c!805350 call!329648)))

(declare-fun b!4714798 () Bool)

(assert (=> b!4714798 (= e!2940572 (contains!16071 (keys!18916 lt!1879094) key!4653))))

(declare-fun b!4714799 () Bool)

(assert (=> b!4714799 false))

(declare-fun lt!1879564 () Unit!128492)

(declare-fun lt!1879563 () Unit!128492)

(assert (=> b!4714799 (= lt!1879564 lt!1879563)))

(assert (=> b!4714799 (containsKey!3307 (toList!5849 lt!1879094) key!4653)))

(assert (=> b!4714799 (= lt!1879563 (lemmaInGetKeysListThenContainsKey!926 (toList!5849 lt!1879094) key!4653))))

(declare-fun Unit!128598 () Unit!128492)

(assert (=> b!4714799 (= e!2940571 Unit!128598)))

(declare-fun bm!329643 () Bool)

(declare-fun e!2940575 () List!52865)

(assert (=> bm!329643 (= call!329648 (contains!16071 e!2940575 key!4653))))

(declare-fun c!805351 () Bool)

(assert (=> bm!329643 (= c!805351 c!805349)))

(declare-fun b!4714800 () Bool)

(assert (=> b!4714800 (= e!2940575 (keys!18916 lt!1879094))))

(declare-fun b!4714801 () Bool)

(assert (=> b!4714801 (= e!2940574 (not (contains!16071 (keys!18916 lt!1879094) key!4653)))))

(declare-fun b!4714802 () Bool)

(declare-fun lt!1879565 () Unit!128492)

(assert (=> b!4714802 (= e!2940570 lt!1879565)))

(declare-fun lt!1879561 () Unit!128492)

(assert (=> b!4714802 (= lt!1879561 (lemmaContainsKeyImpliesGetValueByKeyDefined!1813 (toList!5849 lt!1879094) key!4653))))

(assert (=> b!4714802 (isDefined!9564 (getValueByKey!1923 (toList!5849 lt!1879094) key!4653))))

(declare-fun lt!1879562 () Unit!128492)

(assert (=> b!4714802 (= lt!1879562 lt!1879561)))

(assert (=> b!4714802 (= lt!1879565 (lemmaInListThenGetKeysListContains!922 (toList!5849 lt!1879094) key!4653))))

(assert (=> b!4714802 call!329648))

(declare-fun b!4714803 () Bool)

(assert (=> b!4714803 (= e!2940575 (getKeysList!927 (toList!5849 lt!1879094)))))

(declare-fun b!4714804 () Bool)

(declare-fun Unit!128599 () Unit!128492)

(assert (=> b!4714804 (= e!2940571 Unit!128599)))

(assert (= (and d!1500228 c!805349) b!4714802))

(assert (= (and d!1500228 (not c!805349)) b!4714797))

(assert (= (and b!4714797 c!805350) b!4714799))

(assert (= (and b!4714797 (not c!805350)) b!4714804))

(assert (= (or b!4714802 b!4714797) bm!329643))

(assert (= (and bm!329643 c!805351) b!4714803))

(assert (= (and bm!329643 (not c!805351)) b!4714800))

(assert (= (and d!1500228 res!1993360) b!4714801))

(assert (= (and d!1500228 (not res!1993361)) b!4714796))

(assert (= (and b!4714796 res!1993359) b!4714798))

(declare-fun m!5642807 () Bool)

(assert (=> b!4714802 m!5642807))

(declare-fun m!5642809 () Bool)

(assert (=> b!4714802 m!5642809))

(assert (=> b!4714802 m!5642809))

(declare-fun m!5642811 () Bool)

(assert (=> b!4714802 m!5642811))

(declare-fun m!5642813 () Bool)

(assert (=> b!4714802 m!5642813))

(declare-fun m!5642815 () Bool)

(assert (=> bm!329643 m!5642815))

(assert (=> b!4714796 m!5642809))

(assert (=> b!4714796 m!5642809))

(assert (=> b!4714796 m!5642811))

(declare-fun m!5642817 () Bool)

(assert (=> d!1500228 m!5642817))

(assert (=> b!4714799 m!5642817))

(declare-fun m!5642819 () Bool)

(assert (=> b!4714799 m!5642819))

(assert (=> b!4714800 m!5642343))

(declare-fun m!5642821 () Bool)

(assert (=> b!4714803 m!5642821))

(assert (=> b!4714801 m!5642343))

(assert (=> b!4714801 m!5642343))

(declare-fun m!5642823 () Bool)

(assert (=> b!4714801 m!5642823))

(assert (=> b!4714798 m!5642343))

(assert (=> b!4714798 m!5642343))

(assert (=> b!4714798 m!5642823))

(assert (=> b!4714490 d!1500228))

(declare-fun d!1500232 () Bool)

(assert (=> d!1500232 (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879086 lt!1879087) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879086))))

(declare-fun lt!1879570 () Unit!128492)

(declare-fun choose!33187 (tuple2!54314 List!52863 ListMap!5213) Unit!128492)

(assert (=> d!1500232 (= lt!1879570 (choose!33187 lt!1879086 lt!1879087 lt!1879091))))

(assert (=> d!1500232 (noDuplicateKeys!1980 lt!1879087)))

(assert (=> d!1500232 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!356 lt!1879086 lt!1879087 lt!1879091) lt!1879570)))

(declare-fun bs!1103807 () Bool)

(assert (= bs!1103807 d!1500232))

(assert (=> bs!1103807 m!5642025))

(assert (=> bs!1103807 m!5642037))

(assert (=> bs!1103807 m!5642029))

(assert (=> bs!1103807 m!5642025))

(assert (=> bs!1103807 m!5642029))

(assert (=> bs!1103807 m!5642031))

(declare-fun m!5642837 () Bool)

(assert (=> bs!1103807 m!5642837))

(assert (=> bs!1103807 m!5642037))

(assert (=> bs!1103807 m!5642795))

(assert (=> b!4714490 d!1500232))

(declare-fun d!1500240 () Bool)

(assert (=> d!1500240 (= (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879080 lt!1879100) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879080)) (= (content!9354 (toList!5849 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879080 lt!1879100) lt!1879091))) (content!9354 (toList!5849 (+!2240 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879080)))))))

(declare-fun bs!1103808 () Bool)

(assert (= bs!1103808 d!1500240))

(declare-fun m!5642839 () Bool)

(assert (=> bs!1103808 m!5642839))

(declare-fun m!5642841 () Bool)

(assert (=> bs!1103808 m!5642841))

(assert (=> b!4714490 d!1500240))

(declare-fun d!1500242 () Bool)

(assert (=> d!1500242 (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879080 lt!1879100) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879080))))

(declare-fun lt!1879571 () Unit!128492)

(assert (=> d!1500242 (= lt!1879571 (choose!33187 lt!1879080 lt!1879100 lt!1879091))))

(assert (=> d!1500242 (noDuplicateKeys!1980 lt!1879100)))

(assert (=> d!1500242 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!356 lt!1879080 lt!1879100 lt!1879091) lt!1879571)))

(declare-fun bs!1103809 () Bool)

(assert (= bs!1103809 d!1500242))

(assert (=> bs!1103809 m!5642019))

(assert (=> bs!1103809 m!5642051))

(assert (=> bs!1103809 m!5642039))

(assert (=> bs!1103809 m!5642019))

(assert (=> bs!1103809 m!5642039))

(assert (=> bs!1103809 m!5642041))

(declare-fun m!5642843 () Bool)

(assert (=> bs!1103809 m!5642843))

(assert (=> bs!1103809 m!5642051))

(assert (=> bs!1103809 m!5642697))

(assert (=> b!4714490 d!1500242))

(declare-fun bs!1103810 () Bool)

(declare-fun d!1500244 () Bool)

(assert (= bs!1103810 (and d!1500244 start!479348)))

(declare-fun lambda!213748 () Int)

(assert (=> bs!1103810 (= lambda!213748 lambda!213613)))

(declare-fun bs!1103811 () Bool)

(assert (= bs!1103811 (and d!1500244 d!1500158)))

(assert (=> bs!1103811 (= lambda!213748 lambda!213700)))

(declare-fun bs!1103812 () Bool)

(assert (= bs!1103812 (and d!1500244 d!1500140)))

(assert (=> bs!1103812 (= lambda!213748 lambda!213687)))

(declare-fun bs!1103813 () Bool)

(assert (= bs!1103813 (and d!1500244 d!1500144)))

(assert (=> bs!1103813 (= lambda!213748 lambda!213688)))

(declare-fun bs!1103814 () Bool)

(assert (= bs!1103814 (and d!1500244 d!1500184)))

(assert (=> bs!1103814 (= lambda!213748 lambda!213711)))

(declare-fun bs!1103815 () Bool)

(assert (= bs!1103815 (and d!1500244 d!1500146)))

(assert (=> bs!1103815 (= lambda!213748 lambda!213689)))

(declare-fun bs!1103816 () Bool)

(assert (= bs!1103816 (and d!1500244 d!1500198)))

(assert (=> bs!1103816 (= lambda!213748 lambda!213723)))

(declare-fun bs!1103817 () Bool)

(assert (= bs!1103817 (and d!1500244 d!1500134)))

(assert (=> bs!1103817 (= lambda!213748 lambda!213684)))

(declare-fun lt!1879572 () ListMap!5213)

(assert (=> d!1500244 (invariantList!1488 (toList!5849 lt!1879572))))

(declare-fun e!2940577 () ListMap!5213)

(assert (=> d!1500244 (= lt!1879572 e!2940577)))

(declare-fun c!805353 () Bool)

(assert (=> d!1500244 (= c!805353 ((_ is Cons!52740) (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023)))))))

(assert (=> d!1500244 (forall!11525 (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023))) lambda!213748)))

(assert (=> d!1500244 (= (extractMap!2006 (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023)))) lt!1879572)))

(declare-fun b!4714807 () Bool)

(assert (=> b!4714807 (= e!2940577 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023))))) (extractMap!2006 (t!360110 (Cons!52740 lt!1879076 (t!360110 (toList!5850 lm!2023)))))))))

(declare-fun b!4714808 () Bool)

(assert (=> b!4714808 (= e!2940577 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500244 c!805353) b!4714807))

(assert (= (and d!1500244 (not c!805353)) b!4714808))

(declare-fun m!5642845 () Bool)

(assert (=> d!1500244 m!5642845))

(declare-fun m!5642847 () Bool)

(assert (=> d!1500244 m!5642847))

(declare-fun m!5642849 () Bool)

(assert (=> b!4714807 m!5642849))

(assert (=> b!4714807 m!5642849))

(declare-fun m!5642851 () Bool)

(assert (=> b!4714807 m!5642851))

(assert (=> b!4714490 d!1500244))

(declare-fun bs!1103832 () Bool)

(declare-fun d!1500246 () Bool)

(assert (= bs!1103832 (and d!1500246 start!479348)))

(declare-fun lambda!213754 () Int)

(assert (=> bs!1103832 (= lambda!213754 lambda!213613)))

(declare-fun bs!1103833 () Bool)

(assert (= bs!1103833 (and d!1500246 d!1500158)))

(assert (=> bs!1103833 (= lambda!213754 lambda!213700)))

(declare-fun bs!1103834 () Bool)

(assert (= bs!1103834 (and d!1500246 d!1500140)))

(assert (=> bs!1103834 (= lambda!213754 lambda!213687)))

(declare-fun bs!1103835 () Bool)

(assert (= bs!1103835 (and d!1500246 d!1500244)))

(assert (=> bs!1103835 (= lambda!213754 lambda!213748)))

(declare-fun bs!1103836 () Bool)

(assert (= bs!1103836 (and d!1500246 d!1500144)))

(assert (=> bs!1103836 (= lambda!213754 lambda!213688)))

(declare-fun bs!1103837 () Bool)

(assert (= bs!1103837 (and d!1500246 d!1500184)))

(assert (=> bs!1103837 (= lambda!213754 lambda!213711)))

(declare-fun bs!1103838 () Bool)

(assert (= bs!1103838 (and d!1500246 d!1500146)))

(assert (=> bs!1103838 (= lambda!213754 lambda!213689)))

(declare-fun bs!1103839 () Bool)

(assert (= bs!1103839 (and d!1500246 d!1500198)))

(assert (=> bs!1103839 (= lambda!213754 lambda!213723)))

(declare-fun bs!1103840 () Bool)

(assert (= bs!1103840 (and d!1500246 d!1500134)))

(assert (=> bs!1103840 (= lambda!213754 lambda!213684)))

(assert (=> d!1500246 (contains!16067 (extractMap!2006 (toList!5850 lt!1879079)) key!4653)))

(declare-fun lt!1879580 () Unit!128492)

(declare-fun choose!33188 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> d!1500246 (= lt!1879580 (choose!33188 lt!1879079 key!4653 hashF!1323))))

(assert (=> d!1500246 (forall!11525 (toList!5850 lt!1879079) lambda!213754)))

(assert (=> d!1500246 (= (lemmaListContainsThenExtractedMapContains!526 lt!1879079 key!4653 hashF!1323) lt!1879580)))

(declare-fun bs!1103841 () Bool)

(assert (= bs!1103841 d!1500246))

(declare-fun m!5642889 () Bool)

(assert (=> bs!1103841 m!5642889))

(assert (=> bs!1103841 m!5642889))

(declare-fun m!5642891 () Bool)

(assert (=> bs!1103841 m!5642891))

(declare-fun m!5642893 () Bool)

(assert (=> bs!1103841 m!5642893))

(declare-fun m!5642895 () Bool)

(assert (=> bs!1103841 m!5642895))

(assert (=> b!4714490 d!1500246))

(declare-fun d!1500264 () Bool)

(declare-fun e!2940589 () Bool)

(assert (=> d!1500264 e!2940589))

(declare-fun res!1993370 () Bool)

(assert (=> d!1500264 (=> (not res!1993370) (not e!2940589))))

(declare-fun lt!1879583 () ListMap!5213)

(assert (=> d!1500264 (= res!1993370 (contains!16067 lt!1879583 (_1!30451 lt!1879080)))))

(declare-fun lt!1879584 () List!52863)

(assert (=> d!1500264 (= lt!1879583 (ListMap!5214 lt!1879584))))

(declare-fun lt!1879585 () Unit!128492)

(declare-fun lt!1879582 () Unit!128492)

(assert (=> d!1500264 (= lt!1879585 lt!1879582)))

(assert (=> d!1500264 (= (getValueByKey!1923 lt!1879584 (_1!30451 lt!1879080)) (Some!12310 (_2!30451 lt!1879080)))))

(assert (=> d!1500264 (= lt!1879582 (lemmaContainsTupThenGetReturnValue!1070 lt!1879584 (_1!30451 lt!1879080) (_2!30451 lt!1879080)))))

(assert (=> d!1500264 (= lt!1879584 (insertNoDuplicatedKeys!578 (toList!5849 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091)) (_1!30451 lt!1879080) (_2!30451 lt!1879080)))))

(assert (=> d!1500264 (= (+!2240 (addToMapMapFromBucket!1410 lt!1879100 lt!1879091) lt!1879080) lt!1879583)))

(declare-fun b!4714824 () Bool)

(declare-fun res!1993369 () Bool)

(assert (=> b!4714824 (=> (not res!1993369) (not e!2940589))))

(assert (=> b!4714824 (= res!1993369 (= (getValueByKey!1923 (toList!5849 lt!1879583) (_1!30451 lt!1879080)) (Some!12310 (_2!30451 lt!1879080))))))

(declare-fun b!4714825 () Bool)

(assert (=> b!4714825 (= e!2940589 (contains!16073 (toList!5849 lt!1879583) lt!1879080))))

(assert (= (and d!1500264 res!1993370) b!4714824))

(assert (= (and b!4714824 res!1993369) b!4714825))

(declare-fun m!5642897 () Bool)

(assert (=> d!1500264 m!5642897))

(declare-fun m!5642899 () Bool)

(assert (=> d!1500264 m!5642899))

(declare-fun m!5642901 () Bool)

(assert (=> d!1500264 m!5642901))

(declare-fun m!5642903 () Bool)

(assert (=> d!1500264 m!5642903))

(declare-fun m!5642905 () Bool)

(assert (=> b!4714824 m!5642905))

(declare-fun m!5642907 () Bool)

(assert (=> b!4714825 m!5642907))

(assert (=> b!4714490 d!1500264))

(declare-fun d!1500266 () Bool)

(assert (=> d!1500266 (= (head!10189 oldBucket!34) (h!59062 oldBucket!34))))

(assert (=> b!4714490 d!1500266))

(declare-fun d!1500268 () Bool)

(declare-fun e!2940590 () Bool)

(assert (=> d!1500268 e!2940590))

(declare-fun res!1993372 () Bool)

(assert (=> d!1500268 (=> (not res!1993372) (not e!2940590))))

(declare-fun lt!1879587 () ListMap!5213)

(assert (=> d!1500268 (= res!1993372 (contains!16067 lt!1879587 (_1!30451 (h!59062 oldBucket!34))))))

(declare-fun lt!1879588 () List!52863)

(assert (=> d!1500268 (= lt!1879587 (ListMap!5214 lt!1879588))))

(declare-fun lt!1879589 () Unit!128492)

(declare-fun lt!1879586 () Unit!128492)

(assert (=> d!1500268 (= lt!1879589 lt!1879586)))

(assert (=> d!1500268 (= (getValueByKey!1923 lt!1879588 (_1!30451 (h!59062 oldBucket!34))) (Some!12310 (_2!30451 (h!59062 oldBucket!34))))))

(assert (=> d!1500268 (= lt!1879586 (lemmaContainsTupThenGetReturnValue!1070 lt!1879588 (_1!30451 (h!59062 oldBucket!34)) (_2!30451 (h!59062 oldBucket!34))))))

(assert (=> d!1500268 (= lt!1879588 (insertNoDuplicatedKeys!578 (toList!5849 lt!1879081) (_1!30451 (h!59062 oldBucket!34)) (_2!30451 (h!59062 oldBucket!34))))))

(assert (=> d!1500268 (= (+!2240 lt!1879081 (h!59062 oldBucket!34)) lt!1879587)))

(declare-fun b!4714826 () Bool)

(declare-fun res!1993371 () Bool)

(assert (=> b!4714826 (=> (not res!1993371) (not e!2940590))))

(assert (=> b!4714826 (= res!1993371 (= (getValueByKey!1923 (toList!5849 lt!1879587) (_1!30451 (h!59062 oldBucket!34))) (Some!12310 (_2!30451 (h!59062 oldBucket!34)))))))

(declare-fun b!4714827 () Bool)

(assert (=> b!4714827 (= e!2940590 (contains!16073 (toList!5849 lt!1879587) (h!59062 oldBucket!34)))))

(assert (= (and d!1500268 res!1993372) b!4714826))

(assert (= (and b!4714826 res!1993371) b!4714827))

(declare-fun m!5642909 () Bool)

(assert (=> d!1500268 m!5642909))

(declare-fun m!5642911 () Bool)

(assert (=> d!1500268 m!5642911))

(declare-fun m!5642913 () Bool)

(assert (=> d!1500268 m!5642913))

(declare-fun m!5642915 () Bool)

(assert (=> d!1500268 m!5642915))

(declare-fun m!5642917 () Bool)

(assert (=> b!4714826 m!5642917))

(declare-fun m!5642919 () Bool)

(assert (=> b!4714827 m!5642919))

(assert (=> b!4714490 d!1500268))

(declare-fun bs!1103856 () Bool)

(declare-fun d!1500270 () Bool)

(assert (= bs!1103856 (and d!1500270 start!479348)))

(declare-fun lambda!213756 () Int)

(assert (=> bs!1103856 (= lambda!213756 lambda!213613)))

(declare-fun bs!1103857 () Bool)

(assert (= bs!1103857 (and d!1500270 d!1500158)))

(assert (=> bs!1103857 (= lambda!213756 lambda!213700)))

(declare-fun bs!1103858 () Bool)

(assert (= bs!1103858 (and d!1500270 d!1500140)))

(assert (=> bs!1103858 (= lambda!213756 lambda!213687)))

(declare-fun bs!1103859 () Bool)

(assert (= bs!1103859 (and d!1500270 d!1500244)))

(assert (=> bs!1103859 (= lambda!213756 lambda!213748)))

(declare-fun bs!1103860 () Bool)

(assert (= bs!1103860 (and d!1500270 d!1500246)))

(assert (=> bs!1103860 (= lambda!213756 lambda!213754)))

(declare-fun bs!1103861 () Bool)

(assert (= bs!1103861 (and d!1500270 d!1500144)))

(assert (=> bs!1103861 (= lambda!213756 lambda!213688)))

(declare-fun bs!1103862 () Bool)

(assert (= bs!1103862 (and d!1500270 d!1500184)))

(assert (=> bs!1103862 (= lambda!213756 lambda!213711)))

(declare-fun bs!1103863 () Bool)

(assert (= bs!1103863 (and d!1500270 d!1500146)))

(assert (=> bs!1103863 (= lambda!213756 lambda!213689)))

(declare-fun bs!1103864 () Bool)

(assert (= bs!1103864 (and d!1500270 d!1500198)))

(assert (=> bs!1103864 (= lambda!213756 lambda!213723)))

(declare-fun bs!1103865 () Bool)

(assert (= bs!1103865 (and d!1500270 d!1500134)))

(assert (=> bs!1103865 (= lambda!213756 lambda!213684)))

(declare-fun lt!1879590 () ListMap!5213)

(assert (=> d!1500270 (invariantList!1488 (toList!5849 lt!1879590))))

(declare-fun e!2940591 () ListMap!5213)

(assert (=> d!1500270 (= lt!1879590 e!2940591)))

(declare-fun c!805358 () Bool)

(assert (=> d!1500270 (= c!805358 ((_ is Cons!52740) (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023)))))))

(assert (=> d!1500270 (forall!11525 (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023))) lambda!213756)))

(assert (=> d!1500270 (= (extractMap!2006 (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023)))) lt!1879590)))

(declare-fun b!4714828 () Bool)

(assert (=> b!4714828 (= e!2940591 (addToMapMapFromBucket!1410 (_2!30452 (h!59063 (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023))))) (extractMap!2006 (t!360110 (Cons!52740 (tuple2!54317 hash!405 lt!1879087) (t!360110 (toList!5850 lm!2023)))))))))

(declare-fun b!4714829 () Bool)

(assert (=> b!4714829 (= e!2940591 (ListMap!5214 Nil!52739))))

(assert (= (and d!1500270 c!805358) b!4714828))

(assert (= (and d!1500270 (not c!805358)) b!4714829))

(declare-fun m!5642925 () Bool)

(assert (=> d!1500270 m!5642925))

(declare-fun m!5642927 () Bool)

(assert (=> d!1500270 m!5642927))

(declare-fun m!5642929 () Bool)

(assert (=> b!4714828 m!5642929))

(assert (=> b!4714828 m!5642929))

(declare-fun m!5642935 () Bool)

(assert (=> b!4714828 m!5642935))

(assert (=> b!4714490 d!1500270))

(declare-fun d!1500280 () Bool)

(assert (=> d!1500280 (= (eq!1107 lt!1879097 (+!2240 lt!1879081 (h!59062 oldBucket!34))) (= (content!9354 (toList!5849 lt!1879097)) (content!9354 (toList!5849 (+!2240 lt!1879081 (h!59062 oldBucket!34))))))))

(declare-fun bs!1103867 () Bool)

(assert (= bs!1103867 d!1500280))

(declare-fun m!5642937 () Bool)

(assert (=> bs!1103867 m!5642937))

(declare-fun m!5642939 () Bool)

(assert (=> bs!1103867 m!5642939))

(assert (=> b!4714490 d!1500280))

(declare-fun d!1500282 () Bool)

(assert (=> d!1500282 (= (eq!1107 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879086 lt!1879087) lt!1879091) (+!2240 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879086)) (= (content!9354 (toList!5849 (addToMapMapFromBucket!1410 (Cons!52739 lt!1879086 lt!1879087) lt!1879091))) (content!9354 (toList!5849 (+!2240 (addToMapMapFromBucket!1410 lt!1879087 lt!1879091) lt!1879086)))))))

(declare-fun bs!1103868 () Bool)

(assert (= bs!1103868 d!1500282))

(declare-fun m!5642941 () Bool)

(assert (=> bs!1103868 m!5642941))

(declare-fun m!5642943 () Bool)

(assert (=> bs!1103868 m!5642943))

(assert (=> b!4714490 d!1500282))

(declare-fun d!1500284 () Bool)

(declare-fun res!1993382 () Bool)

(declare-fun e!2940601 () Bool)

(assert (=> d!1500284 (=> res!1993382 e!2940601)))

(assert (=> d!1500284 (= res!1993382 (not ((_ is Cons!52739) newBucket!218)))))

(assert (=> d!1500284 (= (noDuplicateKeys!1980 newBucket!218) e!2940601)))

(declare-fun b!4714841 () Bool)

(declare-fun e!2940602 () Bool)

(assert (=> b!4714841 (= e!2940601 e!2940602)))

(declare-fun res!1993383 () Bool)

(assert (=> b!4714841 (=> (not res!1993383) (not e!2940602))))

(assert (=> b!4714841 (= res!1993383 (not (containsKey!3305 (t!360109 newBucket!218) (_1!30451 (h!59062 newBucket!218)))))))

(declare-fun b!4714842 () Bool)

(assert (=> b!4714842 (= e!2940602 (noDuplicateKeys!1980 (t!360109 newBucket!218)))))

(assert (= (and d!1500284 (not res!1993382)) b!4714841))

(assert (= (and b!4714841 res!1993383) b!4714842))

(declare-fun m!5642945 () Bool)

(assert (=> b!4714841 m!5642945))

(declare-fun m!5642947 () Bool)

(assert (=> b!4714842 m!5642947))

(assert (=> b!4714488 d!1500284))

(declare-fun d!1500286 () Bool)

(assert (=> d!1500286 (= (head!10190 (toList!5850 lm!2023)) (h!59063 (toList!5850 lm!2023)))))

(assert (=> b!4714499 d!1500286))

(declare-fun d!1500288 () Bool)

(assert (=> d!1500288 (= (eq!1107 lt!1879097 (+!2240 lt!1879081 lt!1879080)) (= (content!9354 (toList!5849 lt!1879097)) (content!9354 (toList!5849 (+!2240 lt!1879081 lt!1879080)))))))

(declare-fun bs!1103895 () Bool)

(assert (= bs!1103895 d!1500288))

(assert (=> bs!1103895 m!5642937))

(declare-fun m!5642949 () Bool)

(assert (=> bs!1103895 m!5642949))

(assert (=> b!4714492 d!1500288))

(declare-fun d!1500290 () Bool)

(declare-fun e!2940603 () Bool)

(assert (=> d!1500290 e!2940603))

(declare-fun res!1993385 () Bool)

(assert (=> d!1500290 (=> (not res!1993385) (not e!2940603))))

(declare-fun lt!1879613 () ListMap!5213)

(assert (=> d!1500290 (= res!1993385 (contains!16067 lt!1879613 (_1!30451 lt!1879080)))))

(declare-fun lt!1879614 () List!52863)

(assert (=> d!1500290 (= lt!1879613 (ListMap!5214 lt!1879614))))

(declare-fun lt!1879615 () Unit!128492)

(declare-fun lt!1879612 () Unit!128492)

(assert (=> d!1500290 (= lt!1879615 lt!1879612)))

(assert (=> d!1500290 (= (getValueByKey!1923 lt!1879614 (_1!30451 lt!1879080)) (Some!12310 (_2!30451 lt!1879080)))))

(assert (=> d!1500290 (= lt!1879612 (lemmaContainsTupThenGetReturnValue!1070 lt!1879614 (_1!30451 lt!1879080) (_2!30451 lt!1879080)))))

(assert (=> d!1500290 (= lt!1879614 (insertNoDuplicatedKeys!578 (toList!5849 lt!1879081) (_1!30451 lt!1879080) (_2!30451 lt!1879080)))))

(assert (=> d!1500290 (= (+!2240 lt!1879081 lt!1879080) lt!1879613)))

(declare-fun b!4714843 () Bool)

(declare-fun res!1993384 () Bool)

(assert (=> b!4714843 (=> (not res!1993384) (not e!2940603))))

(assert (=> b!4714843 (= res!1993384 (= (getValueByKey!1923 (toList!5849 lt!1879613) (_1!30451 lt!1879080)) (Some!12310 (_2!30451 lt!1879080))))))

(declare-fun b!4714844 () Bool)

(assert (=> b!4714844 (= e!2940603 (contains!16073 (toList!5849 lt!1879613) lt!1879080))))

(assert (= (and d!1500290 res!1993385) b!4714843))

(assert (= (and b!4714843 res!1993384) b!4714844))

(declare-fun m!5642951 () Bool)

(assert (=> d!1500290 m!5642951))

(declare-fun m!5642953 () Bool)

(assert (=> d!1500290 m!5642953))

(declare-fun m!5642955 () Bool)

(assert (=> d!1500290 m!5642955))

(declare-fun m!5642957 () Bool)

(assert (=> d!1500290 m!5642957))

(declare-fun m!5642959 () Bool)

(assert (=> b!4714843 m!5642959))

(declare-fun m!5642961 () Bool)

(assert (=> b!4714844 m!5642961))

(assert (=> b!4714492 d!1500290))

(declare-fun bs!1103899 () Bool)

(declare-fun d!1500292 () Bool)

(assert (= bs!1103899 (and d!1500292 b!4714756)))

(declare-fun lambda!213760 () Int)

(assert (=> bs!1103899 (not (= lambda!213760 lambda!213725))))

(declare-fun bs!1103900 () Bool)

(assert (= bs!1103900 (and d!1500292 b!4714776)))

(assert (=> bs!1103900 (not (= lambda!213760 lambda!213732))))

(declare-fun bs!1103901 () Bool)

(assert (= bs!1103901 (and d!1500292 b!4714710)))

(assert (=> bs!1103901 (not (= lambda!213760 lambda!213714))))

(declare-fun bs!1103902 () Bool)

(assert (= bs!1103902 (and d!1500292 b!4714789)))

(assert (=> bs!1103902 (not (= lambda!213760 lambda!213744))))

(declare-fun bs!1103903 () Bool)

(assert (= bs!1103903 (and d!1500292 b!4714758)))

(assert (=> bs!1103903 (not (= lambda!213760 lambda!213726))))

(assert (=> bs!1103902 (not (= lambda!213760 lambda!213743))))

(declare-fun bs!1103904 () Bool)

(assert (= bs!1103904 (and d!1500292 b!4714708)))

(assert (=> bs!1103904 (not (= lambda!213760 lambda!213712))))

(declare-fun bs!1103905 () Bool)

(assert (= bs!1103905 (and d!1500292 b!4714787)))

(assert (=> bs!1103905 (not (= lambda!213760 lambda!213742))))

(declare-fun bs!1103906 () Bool)

(assert (= bs!1103906 (and d!1500292 d!1500220)))

(assert (=> bs!1103906 (not (= lambda!213760 lambda!213745))))

(declare-fun bs!1103907 () Bool)

(assert (= bs!1103907 (and d!1500292 b!4714604)))

(assert (=> bs!1103907 (not (= lambda!213760 lambda!213653))))

(declare-fun bs!1103908 () Bool)

(assert (= bs!1103908 (and d!1500292 d!1500200)))

(assert (=> bs!1103908 (not (= lambda!213760 lambda!213729))))

(declare-fun bs!1103909 () Bool)

(assert (= bs!1103909 (and d!1500292 b!4714602)))

(assert (=> bs!1103909 (not (= lambda!213760 lambda!213652))))

(declare-fun bs!1103910 () Bool)

(assert (= bs!1103910 (and d!1500292 d!1500170)))

(assert (=> bs!1103910 (= lambda!213760 lambda!213703)))

(declare-fun bs!1103911 () Bool)

(assert (= bs!1103911 (and d!1500292 d!1500210)))

(assert (=> bs!1103911 (not (= lambda!213760 lambda!213737))))

(assert (=> bs!1103901 (not (= lambda!213760 lambda!213713))))

(assert (=> bs!1103900 (not (= lambda!213760 lambda!213736))))

(assert (=> bs!1103903 (not (= lambda!213760 lambda!213728))))

(assert (=> bs!1103907 (not (= lambda!213760 lambda!213654))))

(declare-fun bs!1103912 () Bool)

(assert (= bs!1103912 (and d!1500292 d!1500188)))

(assert (=> bs!1103912 (not (= lambda!213760 lambda!213715))))

(declare-fun bs!1103913 () Bool)

(assert (= bs!1103913 (and d!1500292 b!4714774)))

(assert (=> bs!1103913 (not (= lambda!213760 lambda!213731))))

(declare-fun bs!1103914 () Bool)

(assert (= bs!1103914 (and d!1500292 d!1500102)))

(assert (=> bs!1103914 (not (= lambda!213760 lambda!213655))))

(assert (=> d!1500292 true))

(assert (=> d!1500292 true))

(assert (=> d!1500292 (= (allKeysSameHash!1806 newBucket!218 hash!405 hashF!1323) (forall!11527 newBucket!218 lambda!213760))))

(declare-fun bs!1103915 () Bool)

(assert (= bs!1103915 d!1500292))

(declare-fun m!5642963 () Bool)

(assert (=> bs!1103915 m!5642963))

(assert (=> b!4714503 d!1500292))

(declare-fun d!1500294 () Bool)

(declare-fun res!1993390 () Bool)

(declare-fun e!2940608 () Bool)

(assert (=> d!1500294 (=> res!1993390 e!2940608)))

(assert (=> d!1500294 (= res!1993390 ((_ is Nil!52740) (toList!5850 lm!2023)))))

(assert (=> d!1500294 (= (forall!11525 (toList!5850 lm!2023) lambda!213613) e!2940608)))

(declare-fun b!4714849 () Bool)

(declare-fun e!2940609 () Bool)

(assert (=> b!4714849 (= e!2940608 e!2940609)))

(declare-fun res!1993391 () Bool)

(assert (=> b!4714849 (=> (not res!1993391) (not e!2940609))))

(declare-fun dynLambda!21791 (Int tuple2!54316) Bool)

(assert (=> b!4714849 (= res!1993391 (dynLambda!21791 lambda!213613 (h!59063 (toList!5850 lm!2023))))))

(declare-fun b!4714850 () Bool)

(assert (=> b!4714850 (= e!2940609 (forall!11525 (t!360110 (toList!5850 lm!2023)) lambda!213613))))

(assert (= (and d!1500294 (not res!1993390)) b!4714849))

(assert (= (and b!4714849 res!1993391) b!4714850))

(declare-fun b_lambda!177745 () Bool)

(assert (=> (not b_lambda!177745) (not b!4714849)))

(declare-fun m!5642965 () Bool)

(assert (=> b!4714849 m!5642965))

(declare-fun m!5642967 () Bool)

(assert (=> b!4714850 m!5642967))

(assert (=> start!479348 d!1500294))

(declare-fun d!1500296 () Bool)

(declare-fun isStrictlySorted!726 (List!52864) Bool)

(assert (=> d!1500296 (= (inv!67974 lm!2023) (isStrictlySorted!726 (toList!5850 lm!2023)))))

(declare-fun bs!1103932 () Bool)

(assert (= bs!1103932 d!1500296))

(declare-fun m!5642993 () Bool)

(assert (=> bs!1103932 m!5642993))

(assert (=> start!479348 d!1500296))

(declare-fun d!1500298 () Bool)

(declare-fun hash!4321 (Hashable!6349 K!14100) (_ BitVec 64))

(assert (=> d!1500298 (= (hash!4318 hashF!1323 key!4653) (hash!4321 hashF!1323 key!4653))))

(declare-fun bs!1103935 () Bool)

(assert (= bs!1103935 d!1500298))

(declare-fun m!5643005 () Bool)

(assert (=> bs!1103935 m!5643005))

(assert (=> b!4714501 d!1500298))

(declare-fun b!4714856 () Bool)

(declare-fun e!2940612 () List!52863)

(assert (=> b!4714856 (= e!2940612 Nil!52739)))

(declare-fun d!1500302 () Bool)

(declare-fun lt!1879617 () List!52863)

(assert (=> d!1500302 (not (containsKey!3305 lt!1879617 key!4653))))

(declare-fun e!2940611 () List!52863)

(assert (=> d!1500302 (= lt!1879617 e!2940611)))

(declare-fun c!805362 () Bool)

(assert (=> d!1500302 (= c!805362 (and ((_ is Cons!52739) lt!1879087) (= (_1!30451 (h!59062 lt!1879087)) key!4653)))))

(assert (=> d!1500302 (noDuplicateKeys!1980 lt!1879087)))

(assert (=> d!1500302 (= (removePairForKey!1575 lt!1879087 key!4653) lt!1879617)))

(declare-fun b!4714854 () Bool)

(assert (=> b!4714854 (= e!2940611 e!2940612)))

(declare-fun c!805361 () Bool)

(assert (=> b!4714854 (= c!805361 ((_ is Cons!52739) lt!1879087))))

(declare-fun b!4714853 () Bool)

(assert (=> b!4714853 (= e!2940611 (t!360109 lt!1879087))))

(declare-fun b!4714855 () Bool)

(assert (=> b!4714855 (= e!2940612 (Cons!52739 (h!59062 lt!1879087) (removePairForKey!1575 (t!360109 lt!1879087) key!4653)))))

(assert (= (and d!1500302 c!805362) b!4714853))

(assert (= (and d!1500302 (not c!805362)) b!4714854))

(assert (= (and b!4714854 c!805361) b!4714855))

(assert (= (and b!4714854 (not c!805361)) b!4714856))

(declare-fun m!5643007 () Bool)

(assert (=> d!1500302 m!5643007))

(assert (=> d!1500302 m!5642795))

(declare-fun m!5643009 () Bool)

(assert (=> b!4714855 m!5643009))

(assert (=> b!4714502 d!1500302))

(declare-fun d!1500304 () Bool)

(assert (=> d!1500304 (= (tail!8916 newBucket!218) (t!360109 newBucket!218))))

(assert (=> b!4714502 d!1500304))

(declare-fun d!1500306 () Bool)

(assert (=> d!1500306 (= (tail!8916 oldBucket!34) (t!360109 oldBucket!34))))

(assert (=> b!4714502 d!1500306))

(declare-fun bs!1103948 () Bool)

(declare-fun d!1500308 () Bool)

(assert (= bs!1103948 (and d!1500308 start!479348)))

(declare-fun lambda!213765 () Int)

(assert (=> bs!1103948 (not (= lambda!213765 lambda!213613))))

(declare-fun bs!1103949 () Bool)

(assert (= bs!1103949 (and d!1500308 d!1500270)))

(assert (=> bs!1103949 (not (= lambda!213765 lambda!213756))))

(declare-fun bs!1103950 () Bool)

(assert (= bs!1103950 (and d!1500308 d!1500158)))

(assert (=> bs!1103950 (not (= lambda!213765 lambda!213700))))

(declare-fun bs!1103951 () Bool)

(assert (= bs!1103951 (and d!1500308 d!1500140)))

(assert (=> bs!1103951 (not (= lambda!213765 lambda!213687))))

(declare-fun bs!1103952 () Bool)

(assert (= bs!1103952 (and d!1500308 d!1500244)))

(assert (=> bs!1103952 (not (= lambda!213765 lambda!213748))))

(declare-fun bs!1103953 () Bool)

(assert (= bs!1103953 (and d!1500308 d!1500246)))

(assert (=> bs!1103953 (not (= lambda!213765 lambda!213754))))

(declare-fun bs!1103954 () Bool)

(assert (= bs!1103954 (and d!1500308 d!1500144)))

(assert (=> bs!1103954 (not (= lambda!213765 lambda!213688))))

(declare-fun bs!1103955 () Bool)

(assert (= bs!1103955 (and d!1500308 d!1500184)))

(assert (=> bs!1103955 (not (= lambda!213765 lambda!213711))))

(declare-fun bs!1103956 () Bool)

(assert (= bs!1103956 (and d!1500308 d!1500146)))

(assert (=> bs!1103956 (not (= lambda!213765 lambda!213689))))

(declare-fun bs!1103957 () Bool)

(assert (= bs!1103957 (and d!1500308 d!1500198)))

(assert (=> bs!1103957 (not (= lambda!213765 lambda!213723))))

(declare-fun bs!1103959 () Bool)

(assert (= bs!1103959 (and d!1500308 d!1500134)))

(assert (=> bs!1103959 (not (= lambda!213765 lambda!213684))))

(assert (=> d!1500308 true))

(assert (=> d!1500308 (= (allKeysSameHashInMap!1894 lm!2023 hashF!1323) (forall!11525 (toList!5850 lm!2023) lambda!213765))))

(declare-fun bs!1103961 () Bool)

(assert (= bs!1103961 d!1500308))

(declare-fun m!5643023 () Bool)

(assert (=> bs!1103961 m!5643023))

(assert (=> b!4714491 d!1500308))

(declare-fun d!1500316 () Bool)

(declare-datatypes ((Option!12312 0))(
  ( (None!12311) (Some!12311 (v!46862 List!52863)) )
))
(declare-fun get!17686 (Option!12312) List!52863)

(declare-fun getValueByKey!1924 (List!52864 (_ BitVec 64)) Option!12312)

(assert (=> d!1500316 (= (apply!12429 lm!2023 lt!1879083) (get!17686 (getValueByKey!1924 (toList!5850 lm!2023) lt!1879083)))))

(declare-fun bs!1103962 () Bool)

(assert (= bs!1103962 d!1500316))

(declare-fun m!5643025 () Bool)

(assert (=> bs!1103962 m!5643025))

(assert (=> bs!1103962 m!5643025))

(declare-fun m!5643027 () Bool)

(assert (=> bs!1103962 m!5643027))

(assert (=> b!4714495 d!1500316))

(declare-fun d!1500318 () Bool)

(declare-fun isEmpty!29159 (Option!12308) Bool)

(assert (=> d!1500318 (= (isDefined!9562 (getPair!546 lt!1879077 key!4653)) (not (isEmpty!29159 (getPair!546 lt!1879077 key!4653))))))

(declare-fun bs!1103963 () Bool)

(assert (= bs!1103963 d!1500318))

(assert (=> bs!1103963 m!5642077))

(declare-fun m!5643029 () Bool)

(assert (=> bs!1103963 m!5643029))

(assert (=> b!4714495 d!1500318))

(declare-fun bs!1103964 () Bool)

(declare-fun d!1500320 () Bool)

(assert (= bs!1103964 (and d!1500320 start!479348)))

(declare-fun lambda!213768 () Int)

(assert (=> bs!1103964 (= lambda!213768 lambda!213613)))

(declare-fun bs!1103965 () Bool)

(assert (= bs!1103965 (and d!1500320 d!1500270)))

(assert (=> bs!1103965 (= lambda!213768 lambda!213756)))

(declare-fun bs!1103966 () Bool)

(assert (= bs!1103966 (and d!1500320 d!1500158)))

(assert (=> bs!1103966 (= lambda!213768 lambda!213700)))

(declare-fun bs!1103967 () Bool)

(assert (= bs!1103967 (and d!1500320 d!1500140)))

(assert (=> bs!1103967 (= lambda!213768 lambda!213687)))

(declare-fun bs!1103968 () Bool)

(assert (= bs!1103968 (and d!1500320 d!1500244)))

(assert (=> bs!1103968 (= lambda!213768 lambda!213748)))

(declare-fun bs!1103969 () Bool)

(assert (= bs!1103969 (and d!1500320 d!1500246)))

(assert (=> bs!1103969 (= lambda!213768 lambda!213754)))

(declare-fun bs!1103970 () Bool)

(assert (= bs!1103970 (and d!1500320 d!1500308)))

(assert (=> bs!1103970 (not (= lambda!213768 lambda!213765))))

(declare-fun bs!1103971 () Bool)

(assert (= bs!1103971 (and d!1500320 d!1500144)))

(assert (=> bs!1103971 (= lambda!213768 lambda!213688)))

(declare-fun bs!1103972 () Bool)

(assert (= bs!1103972 (and d!1500320 d!1500184)))

(assert (=> bs!1103972 (= lambda!213768 lambda!213711)))

(declare-fun bs!1103973 () Bool)

(assert (= bs!1103973 (and d!1500320 d!1500146)))

(assert (=> bs!1103973 (= lambda!213768 lambda!213689)))

(declare-fun bs!1103974 () Bool)

(assert (= bs!1103974 (and d!1500320 d!1500198)))

(assert (=> bs!1103974 (= lambda!213768 lambda!213723)))

(declare-fun bs!1103975 () Bool)

(assert (= bs!1103975 (and d!1500320 d!1500134)))

(assert (=> bs!1103975 (= lambda!213768 lambda!213684)))

(assert (=> d!1500320 (contains!16069 lm!2023 (hash!4318 hashF!1323 key!4653))))

(declare-fun lt!1879620 () Unit!128492)

(declare-fun choose!33189 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> d!1500320 (= lt!1879620 (choose!33189 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500320 (forall!11525 (toList!5850 lm!2023) lambda!213768)))

(assert (=> d!1500320 (= (lemmaInGenMapThenLongMapContainsHash!752 lm!2023 key!4653 hashF!1323) lt!1879620)))

(declare-fun bs!1103976 () Bool)

(assert (= bs!1103976 d!1500320))

(assert (=> bs!1103976 m!5642105))

(assert (=> bs!1103976 m!5642105))

(declare-fun m!5643031 () Bool)

(assert (=> bs!1103976 m!5643031))

(declare-fun m!5643033 () Bool)

(assert (=> bs!1103976 m!5643033))

(declare-fun m!5643035 () Bool)

(assert (=> bs!1103976 m!5643035))

(assert (=> b!4714495 d!1500320))

(declare-fun d!1500322 () Bool)

(assert (=> d!1500322 (dynLambda!21791 lambda!213613 lt!1879082)))

(declare-fun lt!1879623 () Unit!128492)

(declare-fun choose!33190 (List!52864 Int tuple2!54316) Unit!128492)

(assert (=> d!1500322 (= lt!1879623 (choose!33190 (toList!5850 lm!2023) lambda!213613 lt!1879082))))

(declare-fun e!2940622 () Bool)

(assert (=> d!1500322 e!2940622))

(declare-fun res!1993394 () Bool)

(assert (=> d!1500322 (=> (not res!1993394) (not e!2940622))))

(assert (=> d!1500322 (= res!1993394 (forall!11525 (toList!5850 lm!2023) lambda!213613))))

(assert (=> d!1500322 (= (forallContained!3594 (toList!5850 lm!2023) lambda!213613 lt!1879082) lt!1879623)))

(declare-fun b!4714872 () Bool)

(assert (=> b!4714872 (= e!2940622 (contains!16068 (toList!5850 lm!2023) lt!1879082))))

(assert (= (and d!1500322 res!1993394) b!4714872))

(declare-fun b_lambda!177751 () Bool)

(assert (=> (not b_lambda!177751) (not d!1500322)))

(declare-fun m!5643037 () Bool)

(assert (=> d!1500322 m!5643037))

(declare-fun m!5643039 () Bool)

(assert (=> d!1500322 m!5643039))

(assert (=> d!1500322 m!5642095))

(assert (=> b!4714872 m!5642085))

(assert (=> b!4714495 d!1500322))

(declare-fun d!1500324 () Bool)

(assert (=> d!1500324 (containsKey!3305 oldBucket!34 key!4653)))

(declare-fun lt!1879626 () Unit!128492)

(declare-fun choose!33191 (List!52863 K!14100 Hashable!6349) Unit!128492)

(assert (=> d!1500324 (= lt!1879626 (choose!33191 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1500324 (noDuplicateKeys!1980 oldBucket!34)))

(assert (=> d!1500324 (= (lemmaGetPairDefinedThenContainsKey!294 oldBucket!34 key!4653 hashF!1323) lt!1879626)))

(declare-fun bs!1103977 () Bool)

(assert (= bs!1103977 d!1500324))

(assert (=> bs!1103977 m!5642083))

(declare-fun m!5643041 () Bool)

(assert (=> bs!1103977 m!5643041))

(assert (=> bs!1103977 m!5641991))

(assert (=> b!4714495 d!1500324))

(declare-fun d!1500326 () Bool)

(declare-fun res!1993399 () Bool)

(declare-fun e!2940627 () Bool)

(assert (=> d!1500326 (=> res!1993399 e!2940627)))

(assert (=> d!1500326 (= res!1993399 (and ((_ is Cons!52739) (t!360109 oldBucket!34)) (= (_1!30451 (h!59062 (t!360109 oldBucket!34))) key!4653)))))

(assert (=> d!1500326 (= (containsKey!3305 (t!360109 oldBucket!34) key!4653) e!2940627)))

(declare-fun b!4714877 () Bool)

(declare-fun e!2940628 () Bool)

(assert (=> b!4714877 (= e!2940627 e!2940628)))

(declare-fun res!1993400 () Bool)

(assert (=> b!4714877 (=> (not res!1993400) (not e!2940628))))

(assert (=> b!4714877 (= res!1993400 ((_ is Cons!52739) (t!360109 oldBucket!34)))))

(declare-fun b!4714878 () Bool)

(assert (=> b!4714878 (= e!2940628 (containsKey!3305 (t!360109 (t!360109 oldBucket!34)) key!4653))))

(assert (= (and d!1500326 (not res!1993399)) b!4714877))

(assert (= (and b!4714877 res!1993400) b!4714878))

(declare-fun m!5643043 () Bool)

(assert (=> b!4714878 m!5643043))

(assert (=> b!4714495 d!1500326))

(declare-fun d!1500328 () Bool)

(declare-fun res!1993401 () Bool)

(declare-fun e!2940629 () Bool)

(assert (=> d!1500328 (=> res!1993401 e!2940629)))

(assert (=> d!1500328 (= res!1993401 (and ((_ is Cons!52739) oldBucket!34) (= (_1!30451 (h!59062 oldBucket!34)) key!4653)))))

(assert (=> d!1500328 (= (containsKey!3305 oldBucket!34 key!4653) e!2940629)))

(declare-fun b!4714879 () Bool)

(declare-fun e!2940630 () Bool)

(assert (=> b!4714879 (= e!2940629 e!2940630)))

(declare-fun res!1993402 () Bool)

(assert (=> b!4714879 (=> (not res!1993402) (not e!2940630))))

(assert (=> b!4714879 (= res!1993402 ((_ is Cons!52739) oldBucket!34))))

(declare-fun b!4714880 () Bool)

(assert (=> b!4714880 (= e!2940630 (containsKey!3305 (t!360109 oldBucket!34) key!4653))))

(assert (= (and d!1500328 (not res!1993401)) b!4714879))

(assert (= (and b!4714879 res!1993402) b!4714880))

(assert (=> b!4714880 m!5642079))

(assert (=> b!4714495 d!1500328))

(declare-fun d!1500330 () Bool)

(declare-fun lt!1879629 () Bool)

(declare-fun content!9357 (List!52864) (InoxSet tuple2!54316))

(assert (=> d!1500330 (= lt!1879629 (select (content!9357 (toList!5850 lm!2023)) lt!1879082))))

(declare-fun e!2940635 () Bool)

(assert (=> d!1500330 (= lt!1879629 e!2940635)))

(declare-fun res!1993407 () Bool)

(assert (=> d!1500330 (=> (not res!1993407) (not e!2940635))))

(assert (=> d!1500330 (= res!1993407 ((_ is Cons!52740) (toList!5850 lm!2023)))))

(assert (=> d!1500330 (= (contains!16068 (toList!5850 lm!2023) lt!1879082) lt!1879629)))

(declare-fun b!4714885 () Bool)

(declare-fun e!2940636 () Bool)

(assert (=> b!4714885 (= e!2940635 e!2940636)))

(declare-fun res!1993408 () Bool)

(assert (=> b!4714885 (=> res!1993408 e!2940636)))

(assert (=> b!4714885 (= res!1993408 (= (h!59063 (toList!5850 lm!2023)) lt!1879082))))

(declare-fun b!4714886 () Bool)

(assert (=> b!4714886 (= e!2940636 (contains!16068 (t!360110 (toList!5850 lm!2023)) lt!1879082))))

(assert (= (and d!1500330 res!1993407) b!4714885))

(assert (= (and b!4714885 (not res!1993408)) b!4714886))

(declare-fun m!5643045 () Bool)

(assert (=> d!1500330 m!5643045))

(declare-fun m!5643047 () Bool)

(assert (=> d!1500330 m!5643047))

(declare-fun m!5643049 () Bool)

(assert (=> b!4714886 m!5643049))

(assert (=> b!4714495 d!1500330))

(declare-fun b!4714903 () Bool)

(declare-fun e!2940650 () Option!12308)

(assert (=> b!4714903 (= e!2940650 (Some!12307 (h!59062 lt!1879077)))))

(declare-fun b!4714904 () Bool)

(declare-fun e!2940649 () Bool)

(declare-fun lt!1879632 () Option!12308)

(declare-fun get!17687 (Option!12308) tuple2!54314)

(assert (=> b!4714904 (= e!2940649 (contains!16073 lt!1879077 (get!17687 lt!1879632)))))

(declare-fun d!1500332 () Bool)

(declare-fun e!2940651 () Bool)

(assert (=> d!1500332 e!2940651))

(declare-fun res!1993419 () Bool)

(assert (=> d!1500332 (=> res!1993419 e!2940651)))

(declare-fun e!2940647 () Bool)

(assert (=> d!1500332 (= res!1993419 e!2940647)))

(declare-fun res!1993420 () Bool)

(assert (=> d!1500332 (=> (not res!1993420) (not e!2940647))))

(assert (=> d!1500332 (= res!1993420 (isEmpty!29159 lt!1879632))))

(assert (=> d!1500332 (= lt!1879632 e!2940650)))

(declare-fun c!805368 () Bool)

(assert (=> d!1500332 (= c!805368 (and ((_ is Cons!52739) lt!1879077) (= (_1!30451 (h!59062 lt!1879077)) key!4653)))))

(assert (=> d!1500332 (noDuplicateKeys!1980 lt!1879077)))

(assert (=> d!1500332 (= (getPair!546 lt!1879077 key!4653) lt!1879632)))

(declare-fun b!4714905 () Bool)

(declare-fun res!1993418 () Bool)

(assert (=> b!4714905 (=> (not res!1993418) (not e!2940649))))

(assert (=> b!4714905 (= res!1993418 (= (_1!30451 (get!17687 lt!1879632)) key!4653))))

(declare-fun b!4714906 () Bool)

(declare-fun e!2940648 () Option!12308)

(assert (=> b!4714906 (= e!2940650 e!2940648)))

(declare-fun c!805367 () Bool)

(assert (=> b!4714906 (= c!805367 ((_ is Cons!52739) lt!1879077))))

(declare-fun b!4714907 () Bool)

(assert (=> b!4714907 (= e!2940651 e!2940649)))

(declare-fun res!1993417 () Bool)

(assert (=> b!4714907 (=> (not res!1993417) (not e!2940649))))

(assert (=> b!4714907 (= res!1993417 (isDefined!9562 lt!1879632))))

(declare-fun b!4714908 () Bool)

(assert (=> b!4714908 (= e!2940648 None!12307)))

(declare-fun b!4714909 () Bool)

(assert (=> b!4714909 (= e!2940647 (not (containsKey!3305 lt!1879077 key!4653)))))

(declare-fun b!4714910 () Bool)

(assert (=> b!4714910 (= e!2940648 (getPair!546 (t!360109 lt!1879077) key!4653))))

(assert (= (and d!1500332 c!805368) b!4714903))

(assert (= (and d!1500332 (not c!805368)) b!4714906))

(assert (= (and b!4714906 c!805367) b!4714910))

(assert (= (and b!4714906 (not c!805367)) b!4714908))

(assert (= (and d!1500332 res!1993420) b!4714909))

(assert (= (and d!1500332 (not res!1993419)) b!4714907))

(assert (= (and b!4714907 res!1993417) b!4714905))

(assert (= (and b!4714905 res!1993418) b!4714904))

(declare-fun m!5643051 () Bool)

(assert (=> d!1500332 m!5643051))

(declare-fun m!5643053 () Bool)

(assert (=> d!1500332 m!5643053))

(declare-fun m!5643055 () Bool)

(assert (=> b!4714910 m!5643055))

(declare-fun m!5643057 () Bool)

(assert (=> b!4714904 m!5643057))

(assert (=> b!4714904 m!5643057))

(declare-fun m!5643059 () Bool)

(assert (=> b!4714904 m!5643059))

(declare-fun m!5643061 () Bool)

(assert (=> b!4714907 m!5643061))

(declare-fun m!5643063 () Bool)

(assert (=> b!4714909 m!5643063))

(assert (=> b!4714905 m!5643057))

(assert (=> b!4714495 d!1500332))

(declare-fun d!1500334 () Bool)

(declare-fun e!2940657 () Bool)

(assert (=> d!1500334 e!2940657))

(declare-fun res!1993423 () Bool)

(assert (=> d!1500334 (=> res!1993423 e!2940657)))

(declare-fun lt!1879642 () Bool)

(assert (=> d!1500334 (= res!1993423 (not lt!1879642))))

(declare-fun lt!1879641 () Bool)

(assert (=> d!1500334 (= lt!1879642 lt!1879641)))

(declare-fun lt!1879643 () Unit!128492)

(declare-fun e!2940656 () Unit!128492)

(assert (=> d!1500334 (= lt!1879643 e!2940656)))

(declare-fun c!805371 () Bool)

(assert (=> d!1500334 (= c!805371 lt!1879641)))

(declare-fun containsKey!3309 (List!52864 (_ BitVec 64)) Bool)

(assert (=> d!1500334 (= lt!1879641 (containsKey!3309 (toList!5850 lm!2023) lt!1879083))))

(assert (=> d!1500334 (= (contains!16069 lm!2023 lt!1879083) lt!1879642)))

(declare-fun b!4714917 () Bool)

(declare-fun lt!1879644 () Unit!128492)

(assert (=> b!4714917 (= e!2940656 lt!1879644)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1815 (List!52864 (_ BitVec 64)) Unit!128492)

(assert (=> b!4714917 (= lt!1879644 (lemmaContainsKeyImpliesGetValueByKeyDefined!1815 (toList!5850 lm!2023) lt!1879083))))

(declare-fun isDefined!9566 (Option!12312) Bool)

(assert (=> b!4714917 (isDefined!9566 (getValueByKey!1924 (toList!5850 lm!2023) lt!1879083))))

(declare-fun b!4714918 () Bool)

(declare-fun Unit!128602 () Unit!128492)

(assert (=> b!4714918 (= e!2940656 Unit!128602)))

(declare-fun b!4714919 () Bool)

(assert (=> b!4714919 (= e!2940657 (isDefined!9566 (getValueByKey!1924 (toList!5850 lm!2023) lt!1879083)))))

(assert (= (and d!1500334 c!805371) b!4714917))

(assert (= (and d!1500334 (not c!805371)) b!4714918))

(assert (= (and d!1500334 (not res!1993423)) b!4714919))

(declare-fun m!5643065 () Bool)

(assert (=> d!1500334 m!5643065))

(declare-fun m!5643067 () Bool)

(assert (=> b!4714917 m!5643067))

(assert (=> b!4714917 m!5643025))

(assert (=> b!4714917 m!5643025))

(declare-fun m!5643069 () Bool)

(assert (=> b!4714917 m!5643069))

(assert (=> b!4714919 m!5643025))

(assert (=> b!4714919 m!5643025))

(assert (=> b!4714919 m!5643069))

(assert (=> b!4714495 d!1500334))

(declare-fun d!1500336 () Bool)

(assert (=> d!1500336 (contains!16068 (toList!5850 lm!2023) (tuple2!54317 lt!1879083 lt!1879077))))

(declare-fun lt!1879647 () Unit!128492)

(declare-fun choose!33193 (ListLongMap!4379 (_ BitVec 64) List!52863) Unit!128492)

(assert (=> d!1500336 (= lt!1879647 (choose!33193 lm!2023 lt!1879083 lt!1879077))))

(assert (=> d!1500336 (contains!16069 lm!2023 lt!1879083)))

(assert (=> d!1500336 (= (lemmaGetValueImpliesTupleContained!351 lm!2023 lt!1879083 lt!1879077) lt!1879647)))

(declare-fun bs!1103978 () Bool)

(assert (= bs!1103978 d!1500336))

(declare-fun m!5643071 () Bool)

(assert (=> bs!1103978 m!5643071))

(declare-fun m!5643073 () Bool)

(assert (=> bs!1103978 m!5643073))

(assert (=> bs!1103978 m!5642093))

(assert (=> b!4714495 d!1500336))

(declare-fun bs!1103979 () Bool)

(declare-fun d!1500338 () Bool)

(assert (= bs!1103979 (and d!1500338 start!479348)))

(declare-fun lambda!213775 () Int)

(assert (=> bs!1103979 (= lambda!213775 lambda!213613)))

(declare-fun bs!1103980 () Bool)

(assert (= bs!1103980 (and d!1500338 d!1500270)))

(assert (=> bs!1103980 (= lambda!213775 lambda!213756)))

(declare-fun bs!1103981 () Bool)

(assert (= bs!1103981 (and d!1500338 d!1500158)))

(assert (=> bs!1103981 (= lambda!213775 lambda!213700)))

(declare-fun bs!1103982 () Bool)

(assert (= bs!1103982 (and d!1500338 d!1500140)))

(assert (=> bs!1103982 (= lambda!213775 lambda!213687)))

(declare-fun bs!1103983 () Bool)

(assert (= bs!1103983 (and d!1500338 d!1500244)))

(assert (=> bs!1103983 (= lambda!213775 lambda!213748)))

(declare-fun bs!1103984 () Bool)

(assert (= bs!1103984 (and d!1500338 d!1500320)))

(assert (=> bs!1103984 (= lambda!213775 lambda!213768)))

(declare-fun bs!1103985 () Bool)

(assert (= bs!1103985 (and d!1500338 d!1500246)))

(assert (=> bs!1103985 (= lambda!213775 lambda!213754)))

(declare-fun bs!1103986 () Bool)

(assert (= bs!1103986 (and d!1500338 d!1500308)))

(assert (=> bs!1103986 (not (= lambda!213775 lambda!213765))))

(declare-fun bs!1103987 () Bool)

(assert (= bs!1103987 (and d!1500338 d!1500144)))

(assert (=> bs!1103987 (= lambda!213775 lambda!213688)))

(declare-fun bs!1103988 () Bool)

(assert (= bs!1103988 (and d!1500338 d!1500184)))

(assert (=> bs!1103988 (= lambda!213775 lambda!213711)))

(declare-fun bs!1103989 () Bool)

(assert (= bs!1103989 (and d!1500338 d!1500146)))

(assert (=> bs!1103989 (= lambda!213775 lambda!213689)))

(declare-fun bs!1103990 () Bool)

(assert (= bs!1103990 (and d!1500338 d!1500198)))

(assert (=> bs!1103990 (= lambda!213775 lambda!213723)))

(declare-fun bs!1103991 () Bool)

(assert (= bs!1103991 (and d!1500338 d!1500134)))

(assert (=> bs!1103991 (= lambda!213775 lambda!213684)))

(declare-fun e!2940662 () Bool)

(declare-fun b!4714931 () Bool)

(assert (=> b!4714931 (= e!2940662 (isDefined!9562 (getPair!546 (apply!12429 lm!2023 (hash!4318 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1879669 () Unit!128492)

(assert (=> b!4714931 (= lt!1879669 (forallContained!3594 (toList!5850 lm!2023) lambda!213775 (tuple2!54317 (hash!4318 hashF!1323 key!4653) (apply!12429 lm!2023 (hash!4318 hashF!1323 key!4653)))))))

(declare-fun lt!1879666 () Unit!128492)

(declare-fun lt!1879668 () Unit!128492)

(assert (=> b!4714931 (= lt!1879666 lt!1879668)))

(declare-fun lt!1879664 () (_ BitVec 64))

(declare-fun lt!1879667 () List!52863)

(assert (=> b!4714931 (contains!16068 (toList!5850 lm!2023) (tuple2!54317 lt!1879664 lt!1879667))))

(assert (=> b!4714931 (= lt!1879668 (lemmaGetValueImpliesTupleContained!351 lm!2023 lt!1879664 lt!1879667))))

(declare-fun e!2940663 () Bool)

(assert (=> b!4714931 e!2940663))

(declare-fun res!1993433 () Bool)

(assert (=> b!4714931 (=> (not res!1993433) (not e!2940663))))

(assert (=> b!4714931 (= res!1993433 (contains!16069 lm!2023 lt!1879664))))

(assert (=> b!4714931 (= lt!1879667 (apply!12429 lm!2023 (hash!4318 hashF!1323 key!4653)))))

(assert (=> b!4714931 (= lt!1879664 (hash!4318 hashF!1323 key!4653))))

(declare-fun lt!1879670 () Unit!128492)

(declare-fun lt!1879665 () Unit!128492)

(assert (=> b!4714931 (= lt!1879670 lt!1879665)))

(assert (=> b!4714931 (contains!16069 lm!2023 (hash!4318 hashF!1323 key!4653))))

(assert (=> b!4714931 (= lt!1879665 (lemmaInGenMapThenLongMapContainsHash!752 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500338 e!2940662))

(declare-fun res!1993432 () Bool)

(assert (=> d!1500338 (=> (not res!1993432) (not e!2940662))))

(assert (=> d!1500338 (= res!1993432 (forall!11525 (toList!5850 lm!2023) lambda!213775))))

(declare-fun lt!1879671 () Unit!128492)

(declare-fun choose!33194 (ListLongMap!4379 K!14100 Hashable!6349) Unit!128492)

(assert (=> d!1500338 (= lt!1879671 (choose!33194 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500338 (forall!11525 (toList!5850 lm!2023) lambda!213775)))

(assert (=> d!1500338 (= (lemmaInGenMapThenGetPairDefined!342 lm!2023 key!4653 hashF!1323) lt!1879671)))

(declare-fun b!4714930 () Bool)

(declare-fun res!1993434 () Bool)

(assert (=> b!4714930 (=> (not res!1993434) (not e!2940662))))

(assert (=> b!4714930 (= res!1993434 (contains!16067 (extractMap!2006 (toList!5850 lm!2023)) key!4653))))

(declare-fun b!4714932 () Bool)

(assert (=> b!4714932 (= e!2940663 (= (getValueByKey!1924 (toList!5850 lm!2023) lt!1879664) (Some!12311 lt!1879667)))))

(declare-fun b!4714929 () Bool)

(declare-fun res!1993435 () Bool)

(assert (=> b!4714929 (=> (not res!1993435) (not e!2940662))))

(assert (=> b!4714929 (= res!1993435 (allKeysSameHashInMap!1894 lm!2023 hashF!1323))))

(assert (= (and d!1500338 res!1993432) b!4714929))

(assert (= (and b!4714929 res!1993435) b!4714930))

(assert (= (and b!4714930 res!1993434) b!4714931))

(assert (= (and b!4714931 res!1993433) b!4714932))

(assert (=> b!4714931 m!5642105))

(declare-fun m!5643075 () Bool)

(assert (=> b!4714931 m!5643075))

(assert (=> b!4714931 m!5642089))

(assert (=> b!4714931 m!5642105))

(assert (=> b!4714931 m!5643031))

(declare-fun m!5643077 () Bool)

(assert (=> b!4714931 m!5643077))

(assert (=> b!4714931 m!5642105))

(declare-fun m!5643079 () Bool)

(assert (=> b!4714931 m!5643079))

(assert (=> b!4714931 m!5643075))

(declare-fun m!5643081 () Bool)

(assert (=> b!4714931 m!5643081))

(declare-fun m!5643083 () Bool)

(assert (=> b!4714931 m!5643083))

(assert (=> b!4714931 m!5643081))

(declare-fun m!5643085 () Bool)

(assert (=> b!4714931 m!5643085))

(declare-fun m!5643087 () Bool)

(assert (=> b!4714931 m!5643087))

(declare-fun m!5643089 () Bool)

(assert (=> d!1500338 m!5643089))

(declare-fun m!5643091 () Bool)

(assert (=> d!1500338 m!5643091))

(assert (=> d!1500338 m!5643089))

(assert (=> b!4714930 m!5642103))

(assert (=> b!4714930 m!5642103))

(declare-fun m!5643093 () Bool)

(assert (=> b!4714930 m!5643093))

(declare-fun m!5643095 () Bool)

(assert (=> b!4714932 m!5643095))

(assert (=> b!4714929 m!5642013))

(assert (=> b!4714495 d!1500338))

(declare-fun b!4714936 () Bool)

(declare-fun e!2940665 () List!52863)

(assert (=> b!4714936 (= e!2940665 Nil!52739)))

(declare-fun d!1500340 () Bool)

(declare-fun lt!1879672 () List!52863)

(assert (=> d!1500340 (not (containsKey!3305 lt!1879672 key!4653))))

(declare-fun e!2940664 () List!52863)

(assert (=> d!1500340 (= lt!1879672 e!2940664)))

(declare-fun c!805373 () Bool)

(assert (=> d!1500340 (= c!805373 (and ((_ is Cons!52739) (t!360109 oldBucket!34)) (= (_1!30451 (h!59062 (t!360109 oldBucket!34))) key!4653)))))

(assert (=> d!1500340 (noDuplicateKeys!1980 (t!360109 oldBucket!34))))

(assert (=> d!1500340 (= (removePairForKey!1575 (t!360109 oldBucket!34) key!4653) lt!1879672)))

(declare-fun b!4714934 () Bool)

(assert (=> b!4714934 (= e!2940664 e!2940665)))

(declare-fun c!805372 () Bool)

(assert (=> b!4714934 (= c!805372 ((_ is Cons!52739) (t!360109 oldBucket!34)))))

(declare-fun b!4714933 () Bool)

(assert (=> b!4714933 (= e!2940664 (t!360109 (t!360109 oldBucket!34)))))

(declare-fun b!4714935 () Bool)

(assert (=> b!4714935 (= e!2940665 (Cons!52739 (h!59062 (t!360109 oldBucket!34)) (removePairForKey!1575 (t!360109 (t!360109 oldBucket!34)) key!4653)))))

(assert (= (and d!1500340 c!805373) b!4714933))

(assert (= (and d!1500340 (not c!805373)) b!4714934))

(assert (= (and b!4714934 c!805372) b!4714935))

(assert (= (and b!4714934 (not c!805372)) b!4714936))

(declare-fun m!5643097 () Bool)

(assert (=> d!1500340 m!5643097))

(declare-fun m!5643099 () Bool)

(assert (=> d!1500340 m!5643099))

(declare-fun m!5643101 () Bool)

(assert (=> b!4714935 m!5643101))

(assert (=> b!4714494 d!1500340))

(declare-fun d!1500342 () Bool)

(declare-fun res!1993436 () Bool)

(declare-fun e!2940666 () Bool)

(assert (=> d!1500342 (=> res!1993436 e!2940666)))

(assert (=> d!1500342 (= res!1993436 (not ((_ is Cons!52739) oldBucket!34)))))

(assert (=> d!1500342 (= (noDuplicateKeys!1980 oldBucket!34) e!2940666)))

(declare-fun b!4714937 () Bool)

(declare-fun e!2940667 () Bool)

(assert (=> b!4714937 (= e!2940666 e!2940667)))

(declare-fun res!1993437 () Bool)

(assert (=> b!4714937 (=> (not res!1993437) (not e!2940667))))

(assert (=> b!4714937 (= res!1993437 (not (containsKey!3305 (t!360109 oldBucket!34) (_1!30451 (h!59062 oldBucket!34)))))))

(declare-fun b!4714938 () Bool)

(assert (=> b!4714938 (= e!2940667 (noDuplicateKeys!1980 (t!360109 oldBucket!34)))))

(assert (= (and d!1500342 (not res!1993436)) b!4714937))

(assert (= (and b!4714937 res!1993437) b!4714938))

(declare-fun m!5643103 () Bool)

(assert (=> b!4714937 m!5643103))

(assert (=> b!4714938 m!5643099))

(assert (=> b!4714483 d!1500342))

(declare-fun tp!1347844 () Bool)

(declare-fun b!4714943 () Bool)

(declare-fun e!2940670 () Bool)

(assert (=> b!4714943 (= e!2940670 (and tp_is_empty!31213 tp_is_empty!31215 tp!1347844))))

(assert (=> b!4714497 (= tp!1347830 e!2940670)))

(assert (= (and b!4714497 ((_ is Cons!52739) (t!360109 oldBucket!34))) b!4714943))

(declare-fun b!4714948 () Bool)

(declare-fun e!2940673 () Bool)

(declare-fun tp!1347849 () Bool)

(declare-fun tp!1347850 () Bool)

(assert (=> b!4714948 (= e!2940673 (and tp!1347849 tp!1347850))))

(assert (=> b!4714485 (= tp!1347831 e!2940673)))

(assert (= (and b!4714485 ((_ is Cons!52740) (toList!5850 lm!2023))) b!4714948))

(declare-fun e!2940674 () Bool)

(declare-fun tp!1347851 () Bool)

(declare-fun b!4714949 () Bool)

(assert (=> b!4714949 (= e!2940674 (and tp_is_empty!31213 tp_is_empty!31215 tp!1347851))))

(assert (=> b!4714493 (= tp!1347829 e!2940674)))

(assert (= (and b!4714493 ((_ is Cons!52739) (t!360109 newBucket!218))) b!4714949))

(declare-fun b_lambda!177753 () Bool)

(assert (= b_lambda!177745 (or start!479348 b_lambda!177753)))

(declare-fun bs!1103992 () Bool)

(declare-fun d!1500344 () Bool)

(assert (= bs!1103992 (and d!1500344 start!479348)))

(assert (=> bs!1103992 (= (dynLambda!21791 lambda!213613 (h!59063 (toList!5850 lm!2023))) (noDuplicateKeys!1980 (_2!30452 (h!59063 (toList!5850 lm!2023)))))))

(assert (=> bs!1103992 m!5642245))

(assert (=> b!4714849 d!1500344))

(declare-fun b_lambda!177755 () Bool)

(assert (= b_lambda!177751 (or start!479348 b_lambda!177755)))

(declare-fun bs!1103993 () Bool)

(declare-fun d!1500346 () Bool)

(assert (= bs!1103993 (and d!1500346 start!479348)))

(assert (=> bs!1103993 (= (dynLambda!21791 lambda!213613 lt!1879082) (noDuplicateKeys!1980 (_2!30452 lt!1879082)))))

(declare-fun m!5643105 () Bool)

(assert (=> bs!1103993 m!5643105))

(assert (=> d!1500322 d!1500346))

(check-sat (not b!4714603) (not d!1500220) (not b!4714618) (not b!4714687) (not bm!329639) (not b!4714948) (not b!4714786) (not b!4714799) (not b!4714798) (not bs!1103993) (not b!4714709) (not d!1500316) (not b!4714938) (not d!1500308) (not d!1500270) (not bm!329622) (not b!4714685) (not d!1500158) (not bm!329641) (not b!4714844) (not d!1500172) (not d!1500136) (not b!4714680) (not b!4714878) (not b!4714711) (not b!4714604) (not bm!329603) (not b!4714827) (not d!1500268) (not d!1500210) (not b!4714753) (not d!1500190) (not d!1500246) (not d!1500184) (not b!4714640) (not b!4714930) (not d!1500140) (not b!4714605) (not b!4714707) (not b!4714776) (not d!1500336) (not b!4714825) (not b!4714759) (not d!1500264) (not b_lambda!177753) tp_is_empty!31213 (not b!4714931) (not b!4714757) (not bm!329605) (not b!4714686) (not bm!329643) tp_is_empty!31215 (not b!4714943) (not b!4714842) (not b!4714872) (not b!4714802) (not d!1500150) (not b!4714775) (not bs!1103992) (not b!4714949) (not d!1500318) (not d!1500290) (not d!1500302) (not b!4714710) (not b!4714910) (not b!4714937) (not d!1500298) (not b!4714790) (not b!4714601) (not d!1500170) (not b!4714684) (not b!4714682) (not b!4714751) (not d!1500188) (not bm!329638) (not d!1500138) (not b!4714904) (not d!1500334) (not d!1500244) (not b!4714683) (not d!1500156) (not d!1500296) (not b!4714796) (not bm!329620) (not b!4714909) (not d!1500242) (not d!1500288) (not b!4714843) (not b!4714773) (not bm!329637) (not b!4714932) (not b!4714777) (not b!4714907) (not b!4714855) (not d!1500232) (not b!4714929) (not d!1500200) (not b!4714935) (not b!4714624) (not b!4714807) (not bm!329642) (not b!4714905) (not b!4714752) (not b!4714886) (not d!1500282) (not d!1500144) (not d!1500330) (not d!1500146) (not d!1500142) (not d!1500102) (not b!4714919) (not d!1500340) (not d!1500332) (not bm!329633) (not bm!329623) (not d!1500320) (not d!1500186) (not d!1500280) (not b!4714626) (not d!1500322) (not b!4714803) (not bm!329604) (not b!4714850) (not b!4714689) (not b!4714841) (not d!1500292) (not b!4714788) (not b!4714755) (not d!1500134) (not b!4714628) (not b!4714824) (not b!4714826) (not b_lambda!177755) (not d!1500338) (not d!1500240) (not b!4714917) (not b!4714758) (not d!1500198) (not d!1500228) (not b!4714828) (not b!4714800) (not bm!329621) (not b!4714801) (not bm!329635) (not b!4714701) (not bm!329634) (not b!4714880) (not bm!329640) (not b!4714639) (not d!1500324) (not b!4714789))
(check-sat)
