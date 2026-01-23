; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474540 () Bool)

(assert start!474540)

(declare-fun b!4690443 () Bool)

(declare-fun res!1978426 () Bool)

(declare-fun e!2926177 () Bool)

(assert (=> b!4690443 (=> (not res!1978426) (not e!2926177))))

(declare-datatypes ((K!13790 0))(
  ( (K!13791 (val!19303 Int)) )
))
(declare-datatypes ((V!14036 0))(
  ( (V!14037 (val!19304 Int)) )
))
(declare-datatypes ((tuple2!53818 0))(
  ( (tuple2!53819 (_1!30203 K!13790) (_2!30203 V!14036)) )
))
(declare-datatypes ((List!52539 0))(
  ( (Nil!52415) (Cons!52415 (h!58662 tuple2!53818) (t!359717 List!52539)) )
))
(declare-fun newBucket!218 () List!52539)

(declare-fun noDuplicateKeys!1856 (List!52539) Bool)

(assert (=> b!4690443 (= res!1978426 (noDuplicateKeys!1856 newBucket!218))))

(declare-fun b!4690444 () Bool)

(declare-fun res!1978430 () Bool)

(declare-fun e!2926178 () Bool)

(assert (=> b!4690444 (=> res!1978430 e!2926178)))

(declare-fun oldBucket!34 () List!52539)

(declare-fun lt!1850339 () tuple2!53818)

(assert (=> b!4690444 (= res!1978430 (not (= (h!58662 oldBucket!34) lt!1850339)))))

(declare-fun b!4690445 () Bool)

(declare-datatypes ((tuple2!53820 0))(
  ( (tuple2!53821 (_1!30204 (_ BitVec 64)) (_2!30204 List!52539)) )
))
(declare-datatypes ((List!52540 0))(
  ( (Nil!52416) (Cons!52416 (h!58663 tuple2!53820) (t!359718 List!52540)) )
))
(declare-fun lt!1850347 () List!52540)

(declare-fun lambda!207267 () Int)

(declare-fun forall!11325 (List!52540 Int) Bool)

(assert (=> b!4690445 (= e!2926178 (forall!11325 lt!1850347 lambda!207267))))

(declare-fun b!4690446 () Bool)

(declare-fun e!2926180 () Bool)

(declare-fun e!2926179 () Bool)

(assert (=> b!4690446 (= e!2926180 e!2926179)))

(declare-fun res!1978432 () Bool)

(assert (=> b!4690446 (=> res!1978432 e!2926179)))

(declare-fun key!4653 () K!13790)

(declare-fun lt!1850342 () List!52539)

(declare-fun lt!1850336 () List!52539)

(declare-fun removePairForKey!1451 (List!52539 K!13790) List!52539)

(assert (=> b!4690446 (= res!1978432 (not (= (removePairForKey!1451 lt!1850342 key!4653) lt!1850336)))))

(declare-fun tail!8596 (List!52539) List!52539)

(assert (=> b!4690446 (= lt!1850336 (tail!8596 newBucket!218))))

(assert (=> b!4690446 (= lt!1850342 (tail!8596 oldBucket!34))))

(declare-fun b!4690447 () Bool)

(assert (=> b!4690447 (= e!2926179 e!2926178)))

(declare-fun res!1978434 () Bool)

(assert (=> b!4690447 (=> res!1978434 e!2926178)))

(declare-datatypes ((ListMap!4965 0))(
  ( (ListMap!4966 (toList!5601 List!52539)) )
))
(declare-fun lt!1850345 () ListMap!4965)

(declare-fun lt!1850341 () ListMap!4965)

(declare-fun eq!1015 (ListMap!4965 ListMap!4965) Bool)

(declare-fun +!2140 (ListMap!4965 tuple2!53818) ListMap!4965)

(assert (=> b!4690447 (= res!1978434 (not (eq!1015 lt!1850345 (+!2140 lt!1850341 (h!58662 oldBucket!34)))))))

(declare-datatypes ((ListLongMap!4131 0))(
  ( (ListLongMap!4132 (toList!5602 List!52540)) )
))
(declare-fun lm!2023 () ListLongMap!4131)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun extractMap!1882 (List!52540) ListMap!4965)

(assert (=> b!4690447 (= lt!1850341 (extractMap!1882 (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023)))))))

(declare-fun lt!1850348 () tuple2!53820)

(assert (=> b!4690447 (= lt!1850345 (extractMap!1882 (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023)))))))

(declare-fun lt!1850333 () ListMap!4965)

(declare-fun addToMapMapFromBucket!1288 (List!52539 ListMap!4965) ListMap!4965)

(assert (=> b!4690447 (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850339 lt!1850336) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850339))))

(declare-datatypes ((Unit!124149 0))(
  ( (Unit!124150) )
))
(declare-fun lt!1850331 () Unit!124149)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!264 (tuple2!53818 List!52539 ListMap!4965) Unit!124149)

(assert (=> b!4690447 (= lt!1850331 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!264 lt!1850339 lt!1850336 lt!1850333))))

(declare-fun head!9975 (List!52539) tuple2!53818)

(assert (=> b!4690447 (= lt!1850339 (head!9975 newBucket!218))))

(declare-fun lt!1850328 () tuple2!53818)

(assert (=> b!4690447 (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850328 lt!1850342) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850328))))

(declare-fun lt!1850343 () Unit!124149)

(assert (=> b!4690447 (= lt!1850343 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!264 lt!1850328 lt!1850342 lt!1850333))))

(assert (=> b!4690447 (= lt!1850328 (head!9975 oldBucket!34))))

(declare-fun contains!15618 (ListMap!4965 K!13790) Bool)

(assert (=> b!4690447 (contains!15618 (extractMap!1882 lt!1850347) key!4653)))

(declare-datatypes ((Hashable!6225 0))(
  ( (HashableExt!6224 (__x!31928 Int)) )
))
(declare-fun hashF!1323 () Hashable!6225)

(declare-fun lt!1850346 () Unit!124149)

(declare-fun lemmaListContainsThenExtractedMapContains!448 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> b!4690447 (= lt!1850346 (lemmaListContainsThenExtractedMapContains!448 (ListLongMap!4132 lt!1850347) key!4653 hashF!1323))))

(assert (=> b!4690447 (= lt!1850347 (Cons!52416 (tuple2!53821 hash!405 (t!359717 oldBucket!34)) (t!359718 (toList!5602 lm!2023))))))

(declare-fun b!4690448 () Bool)

(declare-fun e!2926176 () Bool)

(declare-fun e!2926174 () Bool)

(assert (=> b!4690448 (= e!2926176 (not e!2926174))))

(declare-fun res!1978429 () Bool)

(assert (=> b!4690448 (=> res!1978429 e!2926174)))

(get-info :version)

(assert (=> b!4690448 (= res!1978429 (or (and ((_ is Cons!52415) oldBucket!34) (= (_1!30203 (h!58662 oldBucket!34)) key!4653)) (not ((_ is Cons!52415) oldBucket!34)) (= (_1!30203 (h!58662 oldBucket!34)) key!4653)))))

(declare-fun lt!1850334 () ListMap!4965)

(assert (=> b!4690448 (= lt!1850334 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (toList!5602 lm!2023))) lt!1850333))))

(assert (=> b!4690448 (= lt!1850333 (extractMap!1882 (t!359718 (toList!5602 lm!2023))))))

(declare-fun tail!8597 (ListLongMap!4131) ListLongMap!4131)

(assert (=> b!4690448 (= (t!359718 (toList!5602 lm!2023)) (toList!5602 (tail!8597 lm!2023)))))

(declare-fun b!4690450 () Bool)

(declare-fun res!1978424 () Bool)

(declare-fun e!2926181 () Bool)

(assert (=> b!4690450 (=> (not res!1978424) (not e!2926181))))

(declare-fun allKeysSameHashInMap!1770 (ListLongMap!4131 Hashable!6225) Bool)

(assert (=> b!4690450 (= res!1978424 (allKeysSameHashInMap!1770 lm!2023 hashF!1323))))

(declare-fun b!4690451 () Bool)

(declare-fun e!2926173 () Bool)

(assert (=> b!4690451 (= e!2926177 e!2926173)))

(declare-fun res!1978435 () Bool)

(assert (=> b!4690451 (=> (not res!1978435) (not e!2926173))))

(assert (=> b!4690451 (= res!1978435 (contains!15618 lt!1850334 key!4653))))

(assert (=> b!4690451 (= lt!1850334 (extractMap!1882 (toList!5602 lm!2023)))))

(declare-fun b!4690452 () Bool)

(declare-fun res!1978428 () Bool)

(assert (=> b!4690452 (=> (not res!1978428) (not e!2926176))))

(assert (=> b!4690452 (= res!1978428 ((_ is Cons!52416) (toList!5602 lm!2023)))))

(declare-fun b!4690453 () Bool)

(declare-fun res!1978431 () Bool)

(assert (=> b!4690453 (=> (not res!1978431) (not e!2926177))))

(assert (=> b!4690453 (= res!1978431 (= (removePairForKey!1451 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4690454 () Bool)

(assert (=> b!4690454 (= e!2926174 e!2926180)))

(declare-fun res!1978433 () Bool)

(assert (=> b!4690454 (=> res!1978433 e!2926180)))

(declare-fun containsKey!3059 (List!52539 K!13790) Bool)

(assert (=> b!4690454 (= res!1978433 (not (containsKey!3059 (t!359717 oldBucket!34) key!4653)))))

(assert (=> b!4690454 (containsKey!3059 oldBucket!34 key!4653)))

(declare-fun lt!1850329 () Unit!124149)

(declare-fun lemmaGetPairDefinedThenContainsKey!208 (List!52539 K!13790 Hashable!6225) Unit!124149)

(assert (=> b!4690454 (= lt!1850329 (lemmaGetPairDefinedThenContainsKey!208 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1850330 () List!52539)

(declare-datatypes ((Option!12083 0))(
  ( (None!12082) (Some!12082 (v!46501 tuple2!53818)) )
))
(declare-fun isDefined!9338 (Option!12083) Bool)

(declare-fun getPair!460 (List!52539 K!13790) Option!12083)

(assert (=> b!4690454 (isDefined!9338 (getPair!460 lt!1850330 key!4653))))

(declare-fun lt!1850332 () tuple2!53820)

(declare-fun lt!1850340 () Unit!124149)

(declare-fun forallContained!3432 (List!52540 Int tuple2!53820) Unit!124149)

(assert (=> b!4690454 (= lt!1850340 (forallContained!3432 (toList!5602 lm!2023) lambda!207267 lt!1850332))))

(declare-fun contains!15619 (List!52540 tuple2!53820) Bool)

(assert (=> b!4690454 (contains!15619 (toList!5602 lm!2023) lt!1850332)))

(declare-fun lt!1850335 () (_ BitVec 64))

(assert (=> b!4690454 (= lt!1850332 (tuple2!53821 lt!1850335 lt!1850330))))

(declare-fun lt!1850344 () Unit!124149)

(declare-fun lemmaGetValueImpliesTupleContained!265 (ListLongMap!4131 (_ BitVec 64) List!52539) Unit!124149)

(assert (=> b!4690454 (= lt!1850344 (lemmaGetValueImpliesTupleContained!265 lm!2023 lt!1850335 lt!1850330))))

(declare-fun apply!12339 (ListLongMap!4131 (_ BitVec 64)) List!52539)

(assert (=> b!4690454 (= lt!1850330 (apply!12339 lm!2023 lt!1850335))))

(declare-fun contains!15620 (ListLongMap!4131 (_ BitVec 64)) Bool)

(assert (=> b!4690454 (contains!15620 lm!2023 lt!1850335)))

(declare-fun lt!1850337 () Unit!124149)

(declare-fun lemmaInGenMapThenLongMapContainsHash!666 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> b!4690454 (= lt!1850337 (lemmaInGenMapThenLongMapContainsHash!666 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1850338 () Unit!124149)

(declare-fun lemmaInGenMapThenGetPairDefined!256 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> b!4690454 (= lt!1850338 (lemmaInGenMapThenGetPairDefined!256 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4690455 () Bool)

(declare-fun res!1978437 () Bool)

(assert (=> b!4690455 (=> (not res!1978437) (not e!2926177))))

(assert (=> b!4690455 (= res!1978437 (noDuplicateKeys!1856 oldBucket!34))))

(declare-fun b!4690449 () Bool)

(assert (=> b!4690449 (= e!2926173 e!2926181)))

(declare-fun res!1978423 () Bool)

(assert (=> b!4690449 (=> (not res!1978423) (not e!2926181))))

(assert (=> b!4690449 (= res!1978423 (= lt!1850335 hash!405))))

(declare-fun hash!4069 (Hashable!6225 K!13790) (_ BitVec 64))

(assert (=> b!4690449 (= lt!1850335 (hash!4069 hashF!1323 key!4653))))

(declare-fun res!1978438 () Bool)

(assert (=> start!474540 (=> (not res!1978438) (not e!2926177))))

(assert (=> start!474540 (= res!1978438 (forall!11325 (toList!5602 lm!2023) lambda!207267))))

(assert (=> start!474540 e!2926177))

(declare-fun e!2926182 () Bool)

(declare-fun inv!67664 (ListLongMap!4131) Bool)

(assert (=> start!474540 (and (inv!67664 lm!2023) e!2926182)))

(declare-fun tp_is_empty!30717 () Bool)

(assert (=> start!474540 tp_is_empty!30717))

(declare-fun e!2926175 () Bool)

(assert (=> start!474540 e!2926175))

(assert (=> start!474540 true))

(declare-fun e!2926172 () Bool)

(assert (=> start!474540 e!2926172))

(declare-fun b!4690456 () Bool)

(declare-fun tp!1345955 () Bool)

(declare-fun tp_is_empty!30719 () Bool)

(assert (=> b!4690456 (= e!2926172 (and tp_is_empty!30717 tp_is_empty!30719 tp!1345955))))

(declare-fun b!4690457 () Bool)

(declare-fun tp!1345953 () Bool)

(assert (=> b!4690457 (= e!2926182 tp!1345953)))

(declare-fun b!4690458 () Bool)

(declare-fun res!1978425 () Bool)

(assert (=> b!4690458 (=> res!1978425 e!2926179)))

(assert (=> b!4690458 (= res!1978425 (not (= (removePairForKey!1451 (t!359717 oldBucket!34) key!4653) lt!1850336)))))

(declare-fun b!4690459 () Bool)

(declare-fun res!1978439 () Bool)

(assert (=> b!4690459 (=> res!1978439 e!2926178)))

(assert (=> b!4690459 (= res!1978439 (not (eq!1015 lt!1850345 (+!2140 lt!1850341 lt!1850339))))))

(declare-fun b!4690460 () Bool)

(declare-fun res!1978436 () Bool)

(assert (=> b!4690460 (=> (not res!1978436) (not e!2926177))))

(declare-fun allKeysSameHash!1682 (List!52539 (_ BitVec 64) Hashable!6225) Bool)

(assert (=> b!4690460 (= res!1978436 (allKeysSameHash!1682 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4690461 () Bool)

(declare-fun res!1978427 () Bool)

(assert (=> b!4690461 (=> (not res!1978427) (not e!2926181))))

(assert (=> b!4690461 (= res!1978427 (allKeysSameHash!1682 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4690462 () Bool)

(assert (=> b!4690462 (= e!2926181 e!2926176)))

(declare-fun res!1978422 () Bool)

(assert (=> b!4690462 (=> (not res!1978422) (not e!2926176))))

(declare-fun head!9976 (List!52540) tuple2!53820)

(assert (=> b!4690462 (= res!1978422 (= (head!9976 (toList!5602 lm!2023)) lt!1850348))))

(assert (=> b!4690462 (= lt!1850348 (tuple2!53821 hash!405 oldBucket!34))))

(declare-fun tp!1345954 () Bool)

(declare-fun b!4690463 () Bool)

(assert (=> b!4690463 (= e!2926175 (and tp_is_empty!30717 tp_is_empty!30719 tp!1345954))))

(assert (= (and start!474540 res!1978438) b!4690455))

(assert (= (and b!4690455 res!1978437) b!4690443))

(assert (= (and b!4690443 res!1978426) b!4690453))

(assert (= (and b!4690453 res!1978431) b!4690460))

(assert (= (and b!4690460 res!1978436) b!4690451))

(assert (= (and b!4690451 res!1978435) b!4690449))

(assert (= (and b!4690449 res!1978423) b!4690461))

(assert (= (and b!4690461 res!1978427) b!4690450))

(assert (= (and b!4690450 res!1978424) b!4690462))

(assert (= (and b!4690462 res!1978422) b!4690452))

(assert (= (and b!4690452 res!1978428) b!4690448))

(assert (= (and b!4690448 (not res!1978429)) b!4690454))

(assert (= (and b!4690454 (not res!1978433)) b!4690446))

(assert (= (and b!4690446 (not res!1978432)) b!4690458))

(assert (= (and b!4690458 (not res!1978425)) b!4690447))

(assert (= (and b!4690447 (not res!1978434)) b!4690444))

(assert (= (and b!4690444 (not res!1978430)) b!4690459))

(assert (= (and b!4690459 (not res!1978439)) b!4690445))

(assert (= start!474540 b!4690457))

(assert (= (and start!474540 ((_ is Cons!52415) oldBucket!34)) b!4690463))

(assert (= (and start!474540 ((_ is Cons!52415) newBucket!218)) b!4690456))

(declare-fun m!5592943 () Bool)

(assert (=> b!4690449 m!5592943))

(declare-fun m!5592945 () Bool)

(assert (=> b!4690448 m!5592945))

(declare-fun m!5592947 () Bool)

(assert (=> b!4690448 m!5592947))

(declare-fun m!5592949 () Bool)

(assert (=> b!4690448 m!5592949))

(declare-fun m!5592951 () Bool)

(assert (=> b!4690455 m!5592951))

(declare-fun m!5592953 () Bool)

(assert (=> b!4690458 m!5592953))

(declare-fun m!5592955 () Bool)

(assert (=> b!4690443 m!5592955))

(declare-fun m!5592957 () Bool)

(assert (=> b!4690447 m!5592957))

(declare-fun m!5592959 () Bool)

(assert (=> b!4690447 m!5592959))

(declare-fun m!5592961 () Bool)

(assert (=> b!4690447 m!5592961))

(declare-fun m!5592963 () Bool)

(assert (=> b!4690447 m!5592963))

(declare-fun m!5592965 () Bool)

(assert (=> b!4690447 m!5592965))

(declare-fun m!5592967 () Bool)

(assert (=> b!4690447 m!5592967))

(declare-fun m!5592969 () Bool)

(assert (=> b!4690447 m!5592969))

(declare-fun m!5592971 () Bool)

(assert (=> b!4690447 m!5592971))

(declare-fun m!5592973 () Bool)

(assert (=> b!4690447 m!5592973))

(assert (=> b!4690447 m!5592957))

(declare-fun m!5592975 () Bool)

(assert (=> b!4690447 m!5592975))

(declare-fun m!5592977 () Bool)

(assert (=> b!4690447 m!5592977))

(declare-fun m!5592979 () Bool)

(assert (=> b!4690447 m!5592979))

(declare-fun m!5592981 () Bool)

(assert (=> b!4690447 m!5592981))

(declare-fun m!5592983 () Bool)

(assert (=> b!4690447 m!5592983))

(assert (=> b!4690447 m!5592975))

(assert (=> b!4690447 m!5592981))

(assert (=> b!4690447 m!5592979))

(declare-fun m!5592985 () Bool)

(assert (=> b!4690447 m!5592985))

(declare-fun m!5592987 () Bool)

(assert (=> b!4690447 m!5592987))

(assert (=> b!4690447 m!5592965))

(assert (=> b!4690447 m!5592971))

(declare-fun m!5592989 () Bool)

(assert (=> b!4690447 m!5592989))

(declare-fun m!5592991 () Bool)

(assert (=> b!4690447 m!5592991))

(declare-fun m!5592993 () Bool)

(assert (=> b!4690447 m!5592993))

(assert (=> b!4690447 m!5592963))

(assert (=> b!4690447 m!5592987))

(declare-fun m!5592995 () Bool)

(assert (=> b!4690453 m!5592995))

(declare-fun m!5592997 () Bool)

(assert (=> b!4690451 m!5592997))

(declare-fun m!5592999 () Bool)

(assert (=> b!4690451 m!5592999))

(declare-fun m!5593001 () Bool)

(assert (=> b!4690459 m!5593001))

(assert (=> b!4690459 m!5593001))

(declare-fun m!5593003 () Bool)

(assert (=> b!4690459 m!5593003))

(declare-fun m!5593005 () Bool)

(assert (=> b!4690462 m!5593005))

(declare-fun m!5593007 () Bool)

(assert (=> b!4690450 m!5593007))

(declare-fun m!5593009 () Bool)

(assert (=> b!4690454 m!5593009))

(declare-fun m!5593011 () Bool)

(assert (=> b!4690454 m!5593011))

(assert (=> b!4690454 m!5593009))

(declare-fun m!5593013 () Bool)

(assert (=> b!4690454 m!5593013))

(declare-fun m!5593015 () Bool)

(assert (=> b!4690454 m!5593015))

(declare-fun m!5593017 () Bool)

(assert (=> b!4690454 m!5593017))

(declare-fun m!5593019 () Bool)

(assert (=> b!4690454 m!5593019))

(declare-fun m!5593021 () Bool)

(assert (=> b!4690454 m!5593021))

(declare-fun m!5593023 () Bool)

(assert (=> b!4690454 m!5593023))

(declare-fun m!5593025 () Bool)

(assert (=> b!4690454 m!5593025))

(declare-fun m!5593027 () Bool)

(assert (=> b!4690454 m!5593027))

(declare-fun m!5593029 () Bool)

(assert (=> b!4690454 m!5593029))

(declare-fun m!5593031 () Bool)

(assert (=> b!4690454 m!5593031))

(declare-fun m!5593033 () Bool)

(assert (=> b!4690460 m!5593033))

(declare-fun m!5593035 () Bool)

(assert (=> b!4690446 m!5593035))

(declare-fun m!5593037 () Bool)

(assert (=> b!4690446 m!5593037))

(declare-fun m!5593039 () Bool)

(assert (=> b!4690446 m!5593039))

(declare-fun m!5593041 () Bool)

(assert (=> b!4690445 m!5593041))

(declare-fun m!5593043 () Bool)

(assert (=> b!4690461 m!5593043))

(declare-fun m!5593045 () Bool)

(assert (=> start!474540 m!5593045))

(declare-fun m!5593047 () Bool)

(assert (=> start!474540 m!5593047))

(check-sat (not b!4690463) (not b!4690448) (not b!4690445) (not b!4690457) (not b!4690450) (not b!4690454) (not b!4690459) (not b!4690443) (not b!4690447) tp_is_empty!30717 (not b!4690446) (not b!4690455) (not b!4690461) (not b!4690451) (not b!4690449) (not start!474540) (not b!4690453) (not b!4690462) tp_is_empty!30719 (not b!4690460) (not b!4690458) (not b!4690456))
(check-sat)
(get-model)

(declare-fun d!1490666 () Bool)

(declare-fun res!1978444 () Bool)

(declare-fun e!2926187 () Bool)

(assert (=> d!1490666 (=> res!1978444 e!2926187)))

(assert (=> d!1490666 (= res!1978444 ((_ is Nil!52416) (toList!5602 lm!2023)))))

(assert (=> d!1490666 (= (forall!11325 (toList!5602 lm!2023) lambda!207267) e!2926187)))

(declare-fun b!4690468 () Bool)

(declare-fun e!2926188 () Bool)

(assert (=> b!4690468 (= e!2926187 e!2926188)))

(declare-fun res!1978445 () Bool)

(assert (=> b!4690468 (=> (not res!1978445) (not e!2926188))))

(declare-fun dynLambda!21714 (Int tuple2!53820) Bool)

(assert (=> b!4690468 (= res!1978445 (dynLambda!21714 lambda!207267 (h!58663 (toList!5602 lm!2023))))))

(declare-fun b!4690469 () Bool)

(assert (=> b!4690469 (= e!2926188 (forall!11325 (t!359718 (toList!5602 lm!2023)) lambda!207267))))

(assert (= (and d!1490666 (not res!1978444)) b!4690468))

(assert (= (and b!4690468 res!1978445) b!4690469))

(declare-fun b_lambda!177005 () Bool)

(assert (=> (not b_lambda!177005) (not b!4690468)))

(declare-fun m!5593049 () Bool)

(assert (=> b!4690468 m!5593049))

(declare-fun m!5593051 () Bool)

(assert (=> b!4690469 m!5593051))

(assert (=> start!474540 d!1490666))

(declare-fun d!1490668 () Bool)

(declare-fun isStrictlySorted!651 (List!52540) Bool)

(assert (=> d!1490668 (= (inv!67664 lm!2023) (isStrictlySorted!651 (toList!5602 lm!2023)))))

(declare-fun bs!1086930 () Bool)

(assert (= bs!1086930 d!1490668))

(declare-fun m!5593053 () Bool)

(assert (=> bs!1086930 m!5593053))

(assert (=> start!474540 d!1490668))

(declare-fun d!1490670 () Bool)

(declare-fun res!1978446 () Bool)

(declare-fun e!2926189 () Bool)

(assert (=> d!1490670 (=> res!1978446 e!2926189)))

(assert (=> d!1490670 (= res!1978446 ((_ is Nil!52416) lt!1850347))))

(assert (=> d!1490670 (= (forall!11325 lt!1850347 lambda!207267) e!2926189)))

(declare-fun b!4690470 () Bool)

(declare-fun e!2926190 () Bool)

(assert (=> b!4690470 (= e!2926189 e!2926190)))

(declare-fun res!1978447 () Bool)

(assert (=> b!4690470 (=> (not res!1978447) (not e!2926190))))

(assert (=> b!4690470 (= res!1978447 (dynLambda!21714 lambda!207267 (h!58663 lt!1850347)))))

(declare-fun b!4690471 () Bool)

(assert (=> b!4690471 (= e!2926190 (forall!11325 (t!359718 lt!1850347) lambda!207267))))

(assert (= (and d!1490670 (not res!1978446)) b!4690470))

(assert (= (and b!4690470 res!1978447) b!4690471))

(declare-fun b_lambda!177007 () Bool)

(assert (=> (not b_lambda!177007) (not b!4690470)))

(declare-fun m!5593055 () Bool)

(assert (=> b!4690470 m!5593055))

(declare-fun m!5593057 () Bool)

(assert (=> b!4690471 m!5593057))

(assert (=> b!4690445 d!1490670))

(declare-fun b!4690480 () Bool)

(declare-fun e!2926195 () List!52539)

(assert (=> b!4690480 (= e!2926195 (t!359717 lt!1850342))))

(declare-fun d!1490672 () Bool)

(declare-fun lt!1850351 () List!52539)

(assert (=> d!1490672 (not (containsKey!3059 lt!1850351 key!4653))))

(assert (=> d!1490672 (= lt!1850351 e!2926195)))

(declare-fun c!801966 () Bool)

(assert (=> d!1490672 (= c!801966 (and ((_ is Cons!52415) lt!1850342) (= (_1!30203 (h!58662 lt!1850342)) key!4653)))))

(assert (=> d!1490672 (noDuplicateKeys!1856 lt!1850342)))

(assert (=> d!1490672 (= (removePairForKey!1451 lt!1850342 key!4653) lt!1850351)))

(declare-fun b!4690481 () Bool)

(declare-fun e!2926196 () List!52539)

(assert (=> b!4690481 (= e!2926195 e!2926196)))

(declare-fun c!801967 () Bool)

(assert (=> b!4690481 (= c!801967 ((_ is Cons!52415) lt!1850342))))

(declare-fun b!4690483 () Bool)

(assert (=> b!4690483 (= e!2926196 Nil!52415)))

(declare-fun b!4690482 () Bool)

(assert (=> b!4690482 (= e!2926196 (Cons!52415 (h!58662 lt!1850342) (removePairForKey!1451 (t!359717 lt!1850342) key!4653)))))

(assert (= (and d!1490672 c!801966) b!4690480))

(assert (= (and d!1490672 (not c!801966)) b!4690481))

(assert (= (and b!4690481 c!801967) b!4690482))

(assert (= (and b!4690481 (not c!801967)) b!4690483))

(declare-fun m!5593059 () Bool)

(assert (=> d!1490672 m!5593059))

(declare-fun m!5593061 () Bool)

(assert (=> d!1490672 m!5593061))

(declare-fun m!5593063 () Bool)

(assert (=> b!4690482 m!5593063))

(assert (=> b!4690446 d!1490672))

(declare-fun d!1490674 () Bool)

(assert (=> d!1490674 (= (tail!8596 newBucket!218) (t!359717 newBucket!218))))

(assert (=> b!4690446 d!1490674))

(declare-fun d!1490676 () Bool)

(assert (=> d!1490676 (= (tail!8596 oldBucket!34) (t!359717 oldBucket!34))))

(assert (=> b!4690446 d!1490676))

(declare-fun d!1490678 () Bool)

(declare-fun res!1978452 () Bool)

(declare-fun e!2926201 () Bool)

(assert (=> d!1490678 (=> res!1978452 e!2926201)))

(assert (=> d!1490678 (= res!1978452 (not ((_ is Cons!52415) oldBucket!34)))))

(assert (=> d!1490678 (= (noDuplicateKeys!1856 oldBucket!34) e!2926201)))

(declare-fun b!4690488 () Bool)

(declare-fun e!2926202 () Bool)

(assert (=> b!4690488 (= e!2926201 e!2926202)))

(declare-fun res!1978453 () Bool)

(assert (=> b!4690488 (=> (not res!1978453) (not e!2926202))))

(assert (=> b!4690488 (= res!1978453 (not (containsKey!3059 (t!359717 oldBucket!34) (_1!30203 (h!58662 oldBucket!34)))))))

(declare-fun b!4690489 () Bool)

(assert (=> b!4690489 (= e!2926202 (noDuplicateKeys!1856 (t!359717 oldBucket!34)))))

(assert (= (and d!1490678 (not res!1978452)) b!4690488))

(assert (= (and b!4690488 res!1978453) b!4690489))

(declare-fun m!5593065 () Bool)

(assert (=> b!4690488 m!5593065))

(declare-fun m!5593067 () Bool)

(assert (=> b!4690489 m!5593067))

(assert (=> b!4690455 d!1490678))

(declare-fun b!4690490 () Bool)

(declare-fun e!2926203 () List!52539)

(assert (=> b!4690490 (= e!2926203 (t!359717 oldBucket!34))))

(declare-fun d!1490680 () Bool)

(declare-fun lt!1850352 () List!52539)

(assert (=> d!1490680 (not (containsKey!3059 lt!1850352 key!4653))))

(assert (=> d!1490680 (= lt!1850352 e!2926203)))

(declare-fun c!801968 () Bool)

(assert (=> d!1490680 (= c!801968 (and ((_ is Cons!52415) oldBucket!34) (= (_1!30203 (h!58662 oldBucket!34)) key!4653)))))

(assert (=> d!1490680 (noDuplicateKeys!1856 oldBucket!34)))

(assert (=> d!1490680 (= (removePairForKey!1451 oldBucket!34 key!4653) lt!1850352)))

(declare-fun b!4690491 () Bool)

(declare-fun e!2926204 () List!52539)

(assert (=> b!4690491 (= e!2926203 e!2926204)))

(declare-fun c!801969 () Bool)

(assert (=> b!4690491 (= c!801969 ((_ is Cons!52415) oldBucket!34))))

(declare-fun b!4690493 () Bool)

(assert (=> b!4690493 (= e!2926204 Nil!52415)))

(declare-fun b!4690492 () Bool)

(assert (=> b!4690492 (= e!2926204 (Cons!52415 (h!58662 oldBucket!34) (removePairForKey!1451 (t!359717 oldBucket!34) key!4653)))))

(assert (= (and d!1490680 c!801968) b!4690490))

(assert (= (and d!1490680 (not c!801968)) b!4690491))

(assert (= (and b!4690491 c!801969) b!4690492))

(assert (= (and b!4690491 (not c!801969)) b!4690493))

(declare-fun m!5593069 () Bool)

(assert (=> d!1490680 m!5593069))

(assert (=> d!1490680 m!5592951))

(assert (=> b!4690492 m!5592953))

(assert (=> b!4690453 d!1490680))

(declare-fun d!1490682 () Bool)

(declare-fun res!1978454 () Bool)

(declare-fun e!2926205 () Bool)

(assert (=> d!1490682 (=> res!1978454 e!2926205)))

(assert (=> d!1490682 (= res!1978454 (not ((_ is Cons!52415) newBucket!218)))))

(assert (=> d!1490682 (= (noDuplicateKeys!1856 newBucket!218) e!2926205)))

(declare-fun b!4690494 () Bool)

(declare-fun e!2926206 () Bool)

(assert (=> b!4690494 (= e!2926205 e!2926206)))

(declare-fun res!1978455 () Bool)

(assert (=> b!4690494 (=> (not res!1978455) (not e!2926206))))

(assert (=> b!4690494 (= res!1978455 (not (containsKey!3059 (t!359717 newBucket!218) (_1!30203 (h!58662 newBucket!218)))))))

(declare-fun b!4690495 () Bool)

(assert (=> b!4690495 (= e!2926206 (noDuplicateKeys!1856 (t!359717 newBucket!218)))))

(assert (= (and d!1490682 (not res!1978454)) b!4690494))

(assert (= (and b!4690494 res!1978455) b!4690495))

(declare-fun m!5593071 () Bool)

(assert (=> b!4690494 m!5593071))

(declare-fun m!5593073 () Bool)

(assert (=> b!4690495 m!5593073))

(assert (=> b!4690443 d!1490682))

(declare-fun d!1490684 () Bool)

(declare-fun e!2926212 () Bool)

(assert (=> d!1490684 e!2926212))

(declare-fun res!1978458 () Bool)

(assert (=> d!1490684 (=> res!1978458 e!2926212)))

(declare-fun lt!1850361 () Bool)

(assert (=> d!1490684 (= res!1978458 (not lt!1850361))))

(declare-fun lt!1850363 () Bool)

(assert (=> d!1490684 (= lt!1850361 lt!1850363)))

(declare-fun lt!1850364 () Unit!124149)

(declare-fun e!2926211 () Unit!124149)

(assert (=> d!1490684 (= lt!1850364 e!2926211)))

(declare-fun c!801972 () Bool)

(assert (=> d!1490684 (= c!801972 lt!1850363)))

(declare-fun containsKey!3060 (List!52540 (_ BitVec 64)) Bool)

(assert (=> d!1490684 (= lt!1850363 (containsKey!3060 (toList!5602 lm!2023) lt!1850335))))

(assert (=> d!1490684 (= (contains!15620 lm!2023 lt!1850335) lt!1850361)))

(declare-fun b!4690502 () Bool)

(declare-fun lt!1850362 () Unit!124149)

(assert (=> b!4690502 (= e!2926211 lt!1850362)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1674 (List!52540 (_ BitVec 64)) Unit!124149)

(assert (=> b!4690502 (= lt!1850362 (lemmaContainsKeyImpliesGetValueByKeyDefined!1674 (toList!5602 lm!2023) lt!1850335))))

(declare-datatypes ((Option!12085 0))(
  ( (None!12084) (Some!12084 (v!46507 List!52539)) )
))
(declare-fun isDefined!9339 (Option!12085) Bool)

(declare-fun getValueByKey!1783 (List!52540 (_ BitVec 64)) Option!12085)

(assert (=> b!4690502 (isDefined!9339 (getValueByKey!1783 (toList!5602 lm!2023) lt!1850335))))

(declare-fun b!4690503 () Bool)

(declare-fun Unit!124151 () Unit!124149)

(assert (=> b!4690503 (= e!2926211 Unit!124151)))

(declare-fun b!4690504 () Bool)

(assert (=> b!4690504 (= e!2926212 (isDefined!9339 (getValueByKey!1783 (toList!5602 lm!2023) lt!1850335)))))

(assert (= (and d!1490684 c!801972) b!4690502))

(assert (= (and d!1490684 (not c!801972)) b!4690503))

(assert (= (and d!1490684 (not res!1978458)) b!4690504))

(declare-fun m!5593075 () Bool)

(assert (=> d!1490684 m!5593075))

(declare-fun m!5593077 () Bool)

(assert (=> b!4690502 m!5593077))

(declare-fun m!5593079 () Bool)

(assert (=> b!4690502 m!5593079))

(assert (=> b!4690502 m!5593079))

(declare-fun m!5593081 () Bool)

(assert (=> b!4690502 m!5593081))

(assert (=> b!4690504 m!5593079))

(assert (=> b!4690504 m!5593079))

(assert (=> b!4690504 m!5593081))

(assert (=> b!4690454 d!1490684))

(declare-fun d!1490688 () Bool)

(declare-fun isEmpty!29095 (Option!12083) Bool)

(assert (=> d!1490688 (= (isDefined!9338 (getPair!460 lt!1850330 key!4653)) (not (isEmpty!29095 (getPair!460 lt!1850330 key!4653))))))

(declare-fun bs!1086931 () Bool)

(assert (= bs!1086931 d!1490688))

(assert (=> bs!1086931 m!5593009))

(declare-fun m!5593083 () Bool)

(assert (=> bs!1086931 m!5593083))

(assert (=> b!4690454 d!1490688))

(declare-fun b!4690521 () Bool)

(declare-fun res!1978469 () Bool)

(declare-fun e!2926223 () Bool)

(assert (=> b!4690521 (=> (not res!1978469) (not e!2926223))))

(declare-fun lt!1850367 () Option!12083)

(declare-fun get!17496 (Option!12083) tuple2!53818)

(assert (=> b!4690521 (= res!1978469 (= (_1!30203 (get!17496 lt!1850367)) key!4653))))

(declare-fun b!4690522 () Bool)

(declare-fun contains!15623 (List!52539 tuple2!53818) Bool)

(assert (=> b!4690522 (= e!2926223 (contains!15623 lt!1850330 (get!17496 lt!1850367)))))

(declare-fun b!4690523 () Bool)

(declare-fun e!2926226 () Option!12083)

(assert (=> b!4690523 (= e!2926226 (getPair!460 (t!359717 lt!1850330) key!4653))))

(declare-fun b!4690524 () Bool)

(declare-fun e!2926225 () Option!12083)

(assert (=> b!4690524 (= e!2926225 (Some!12082 (h!58662 lt!1850330)))))

(declare-fun d!1490690 () Bool)

(declare-fun e!2926224 () Bool)

(assert (=> d!1490690 e!2926224))

(declare-fun res!1978467 () Bool)

(assert (=> d!1490690 (=> res!1978467 e!2926224)))

(declare-fun e!2926227 () Bool)

(assert (=> d!1490690 (= res!1978467 e!2926227)))

(declare-fun res!1978470 () Bool)

(assert (=> d!1490690 (=> (not res!1978470) (not e!2926227))))

(assert (=> d!1490690 (= res!1978470 (isEmpty!29095 lt!1850367))))

(assert (=> d!1490690 (= lt!1850367 e!2926225)))

(declare-fun c!801977 () Bool)

(assert (=> d!1490690 (= c!801977 (and ((_ is Cons!52415) lt!1850330) (= (_1!30203 (h!58662 lt!1850330)) key!4653)))))

(assert (=> d!1490690 (noDuplicateKeys!1856 lt!1850330)))

(assert (=> d!1490690 (= (getPair!460 lt!1850330 key!4653) lt!1850367)))

(declare-fun b!4690525 () Bool)

(assert (=> b!4690525 (= e!2926227 (not (containsKey!3059 lt!1850330 key!4653)))))

(declare-fun b!4690526 () Bool)

(assert (=> b!4690526 (= e!2926225 e!2926226)))

(declare-fun c!801978 () Bool)

(assert (=> b!4690526 (= c!801978 ((_ is Cons!52415) lt!1850330))))

(declare-fun b!4690527 () Bool)

(assert (=> b!4690527 (= e!2926226 None!12082)))

(declare-fun b!4690528 () Bool)

(assert (=> b!4690528 (= e!2926224 e!2926223)))

(declare-fun res!1978468 () Bool)

(assert (=> b!4690528 (=> (not res!1978468) (not e!2926223))))

(assert (=> b!4690528 (= res!1978468 (isDefined!9338 lt!1850367))))

(assert (= (and d!1490690 c!801977) b!4690524))

(assert (= (and d!1490690 (not c!801977)) b!4690526))

(assert (= (and b!4690526 c!801978) b!4690523))

(assert (= (and b!4690526 (not c!801978)) b!4690527))

(assert (= (and d!1490690 res!1978470) b!4690525))

(assert (= (and d!1490690 (not res!1978467)) b!4690528))

(assert (= (and b!4690528 res!1978468) b!4690521))

(assert (= (and b!4690521 res!1978469) b!4690522))

(declare-fun m!5593089 () Bool)

(assert (=> d!1490690 m!5593089))

(declare-fun m!5593091 () Bool)

(assert (=> d!1490690 m!5593091))

(declare-fun m!5593093 () Bool)

(assert (=> b!4690523 m!5593093))

(declare-fun m!5593095 () Bool)

(assert (=> b!4690522 m!5593095))

(assert (=> b!4690522 m!5593095))

(declare-fun m!5593097 () Bool)

(assert (=> b!4690522 m!5593097))

(assert (=> b!4690521 m!5593095))

(declare-fun m!5593099 () Bool)

(assert (=> b!4690525 m!5593099))

(declare-fun m!5593101 () Bool)

(assert (=> b!4690528 m!5593101))

(assert (=> b!4690454 d!1490690))

(declare-fun d!1490694 () Bool)

(assert (=> d!1490694 (contains!15619 (toList!5602 lm!2023) (tuple2!53821 lt!1850335 lt!1850330))))

(declare-fun lt!1850378 () Unit!124149)

(declare-fun choose!32592 (ListLongMap!4131 (_ BitVec 64) List!52539) Unit!124149)

(assert (=> d!1490694 (= lt!1850378 (choose!32592 lm!2023 lt!1850335 lt!1850330))))

(assert (=> d!1490694 (contains!15620 lm!2023 lt!1850335)))

(assert (=> d!1490694 (= (lemmaGetValueImpliesTupleContained!265 lm!2023 lt!1850335 lt!1850330) lt!1850378)))

(declare-fun bs!1086933 () Bool)

(assert (= bs!1086933 d!1490694))

(declare-fun m!5593103 () Bool)

(assert (=> bs!1086933 m!5593103))

(declare-fun m!5593105 () Bool)

(assert (=> bs!1086933 m!5593105))

(assert (=> bs!1086933 m!5593017))

(assert (=> b!4690454 d!1490694))

(declare-fun d!1490696 () Bool)

(assert (=> d!1490696 (dynLambda!21714 lambda!207267 lt!1850332)))

(declare-fun lt!1850385 () Unit!124149)

(declare-fun choose!32593 (List!52540 Int tuple2!53820) Unit!124149)

(assert (=> d!1490696 (= lt!1850385 (choose!32593 (toList!5602 lm!2023) lambda!207267 lt!1850332))))

(declare-fun e!2926233 () Bool)

(assert (=> d!1490696 e!2926233))

(declare-fun res!1978479 () Bool)

(assert (=> d!1490696 (=> (not res!1978479) (not e!2926233))))

(assert (=> d!1490696 (= res!1978479 (forall!11325 (toList!5602 lm!2023) lambda!207267))))

(assert (=> d!1490696 (= (forallContained!3432 (toList!5602 lm!2023) lambda!207267 lt!1850332) lt!1850385)))

(declare-fun b!4690538 () Bool)

(assert (=> b!4690538 (= e!2926233 (contains!15619 (toList!5602 lm!2023) lt!1850332))))

(assert (= (and d!1490696 res!1978479) b!4690538))

(declare-fun b_lambda!177009 () Bool)

(assert (=> (not b_lambda!177009) (not d!1490696)))

(declare-fun m!5593119 () Bool)

(assert (=> d!1490696 m!5593119))

(declare-fun m!5593121 () Bool)

(assert (=> d!1490696 m!5593121))

(assert (=> d!1490696 m!5593045))

(assert (=> b!4690538 m!5593027))

(assert (=> b!4690454 d!1490696))

(declare-fun d!1490700 () Bool)

(declare-fun lt!1850388 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9168 (List!52540) (InoxSet tuple2!53820))

(assert (=> d!1490700 (= lt!1850388 (select (content!9168 (toList!5602 lm!2023)) lt!1850332))))

(declare-fun e!2926239 () Bool)

(assert (=> d!1490700 (= lt!1850388 e!2926239)))

(declare-fun res!1978484 () Bool)

(assert (=> d!1490700 (=> (not res!1978484) (not e!2926239))))

(assert (=> d!1490700 (= res!1978484 ((_ is Cons!52416) (toList!5602 lm!2023)))))

(assert (=> d!1490700 (= (contains!15619 (toList!5602 lm!2023) lt!1850332) lt!1850388)))

(declare-fun b!4690543 () Bool)

(declare-fun e!2926238 () Bool)

(assert (=> b!4690543 (= e!2926239 e!2926238)))

(declare-fun res!1978485 () Bool)

(assert (=> b!4690543 (=> res!1978485 e!2926238)))

(assert (=> b!4690543 (= res!1978485 (= (h!58663 (toList!5602 lm!2023)) lt!1850332))))

(declare-fun b!4690544 () Bool)

(assert (=> b!4690544 (= e!2926238 (contains!15619 (t!359718 (toList!5602 lm!2023)) lt!1850332))))

(assert (= (and d!1490700 res!1978484) b!4690543))

(assert (= (and b!4690543 (not res!1978485)) b!4690544))

(declare-fun m!5593123 () Bool)

(assert (=> d!1490700 m!5593123))

(declare-fun m!5593125 () Bool)

(assert (=> d!1490700 m!5593125))

(declare-fun m!5593127 () Bool)

(assert (=> b!4690544 m!5593127))

(assert (=> b!4690454 d!1490700))

(declare-fun bs!1086934 () Bool)

(declare-fun d!1490702 () Bool)

(assert (= bs!1086934 (and d!1490702 start!474540)))

(declare-fun lambda!207270 () Int)

(assert (=> bs!1086934 (= lambda!207270 lambda!207267)))

(assert (=> d!1490702 (contains!15620 lm!2023 (hash!4069 hashF!1323 key!4653))))

(declare-fun lt!1850391 () Unit!124149)

(declare-fun choose!32595 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> d!1490702 (= lt!1850391 (choose!32595 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490702 (forall!11325 (toList!5602 lm!2023) lambda!207270)))

(assert (=> d!1490702 (= (lemmaInGenMapThenLongMapContainsHash!666 lm!2023 key!4653 hashF!1323) lt!1850391)))

(declare-fun bs!1086935 () Bool)

(assert (= bs!1086935 d!1490702))

(assert (=> bs!1086935 m!5592943))

(assert (=> bs!1086935 m!5592943))

(declare-fun m!5593129 () Bool)

(assert (=> bs!1086935 m!5593129))

(declare-fun m!5593131 () Bool)

(assert (=> bs!1086935 m!5593131))

(declare-fun m!5593133 () Bool)

(assert (=> bs!1086935 m!5593133))

(assert (=> b!4690454 d!1490702))

(declare-fun bs!1086943 () Bool)

(declare-fun d!1490704 () Bool)

(assert (= bs!1086943 (and d!1490704 start!474540)))

(declare-fun lambda!207283 () Int)

(assert (=> bs!1086943 (= lambda!207283 lambda!207267)))

(declare-fun bs!1086944 () Bool)

(assert (= bs!1086944 (and d!1490704 d!1490702)))

(assert (=> bs!1086944 (= lambda!207283 lambda!207270)))

(declare-fun b!4690598 () Bool)

(declare-fun e!2926272 () Bool)

(assert (=> b!4690598 (= e!2926272 (isDefined!9338 (getPair!460 (apply!12339 lm!2023 (hash!4069 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1850453 () Unit!124149)

(assert (=> b!4690598 (= lt!1850453 (forallContained!3432 (toList!5602 lm!2023) lambda!207283 (tuple2!53821 (hash!4069 hashF!1323 key!4653) (apply!12339 lm!2023 (hash!4069 hashF!1323 key!4653)))))))

(declare-fun lt!1850459 () Unit!124149)

(declare-fun lt!1850458 () Unit!124149)

(assert (=> b!4690598 (= lt!1850459 lt!1850458)))

(declare-fun lt!1850457 () (_ BitVec 64))

(declare-fun lt!1850454 () List!52539)

(assert (=> b!4690598 (contains!15619 (toList!5602 lm!2023) (tuple2!53821 lt!1850457 lt!1850454))))

(assert (=> b!4690598 (= lt!1850458 (lemmaGetValueImpliesTupleContained!265 lm!2023 lt!1850457 lt!1850454))))

(declare-fun e!2926271 () Bool)

(assert (=> b!4690598 e!2926271))

(declare-fun res!1978509 () Bool)

(assert (=> b!4690598 (=> (not res!1978509) (not e!2926271))))

(assert (=> b!4690598 (= res!1978509 (contains!15620 lm!2023 lt!1850457))))

(assert (=> b!4690598 (= lt!1850454 (apply!12339 lm!2023 (hash!4069 hashF!1323 key!4653)))))

(assert (=> b!4690598 (= lt!1850457 (hash!4069 hashF!1323 key!4653))))

(declare-fun lt!1850456 () Unit!124149)

(declare-fun lt!1850455 () Unit!124149)

(assert (=> b!4690598 (= lt!1850456 lt!1850455)))

(assert (=> b!4690598 (contains!15620 lm!2023 (hash!4069 hashF!1323 key!4653))))

(assert (=> b!4690598 (= lt!1850455 (lemmaInGenMapThenLongMapContainsHash!666 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4690599 () Bool)

(assert (=> b!4690599 (= e!2926271 (= (getValueByKey!1783 (toList!5602 lm!2023) lt!1850457) (Some!12084 lt!1850454)))))

(declare-fun b!4690597 () Bool)

(declare-fun res!1978508 () Bool)

(assert (=> b!4690597 (=> (not res!1978508) (not e!2926272))))

(assert (=> b!4690597 (= res!1978508 (contains!15618 (extractMap!1882 (toList!5602 lm!2023)) key!4653))))

(assert (=> d!1490704 e!2926272))

(declare-fun res!1978507 () Bool)

(assert (=> d!1490704 (=> (not res!1978507) (not e!2926272))))

(assert (=> d!1490704 (= res!1978507 (forall!11325 (toList!5602 lm!2023) lambda!207283))))

(declare-fun lt!1850460 () Unit!124149)

(declare-fun choose!32596 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> d!1490704 (= lt!1850460 (choose!32596 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490704 (forall!11325 (toList!5602 lm!2023) lambda!207283)))

(assert (=> d!1490704 (= (lemmaInGenMapThenGetPairDefined!256 lm!2023 key!4653 hashF!1323) lt!1850460)))

(declare-fun b!4690596 () Bool)

(declare-fun res!1978506 () Bool)

(assert (=> b!4690596 (=> (not res!1978506) (not e!2926272))))

(assert (=> b!4690596 (= res!1978506 (allKeysSameHashInMap!1770 lm!2023 hashF!1323))))

(assert (= (and d!1490704 res!1978507) b!4690596))

(assert (= (and b!4690596 res!1978506) b!4690597))

(assert (= (and b!4690597 res!1978508) b!4690598))

(assert (= (and b!4690598 res!1978509) b!4690599))

(assert (=> b!4690596 m!5593007))

(declare-fun m!5593183 () Bool)

(assert (=> d!1490704 m!5593183))

(declare-fun m!5593185 () Bool)

(assert (=> d!1490704 m!5593185))

(assert (=> d!1490704 m!5593183))

(declare-fun m!5593187 () Bool)

(assert (=> b!4690598 m!5593187))

(declare-fun m!5593189 () Bool)

(assert (=> b!4690598 m!5593189))

(declare-fun m!5593191 () Bool)

(assert (=> b!4690598 m!5593191))

(declare-fun m!5593193 () Bool)

(assert (=> b!4690598 m!5593193))

(declare-fun m!5593195 () Bool)

(assert (=> b!4690598 m!5593195))

(assert (=> b!4690598 m!5592943))

(declare-fun m!5593197 () Bool)

(assert (=> b!4690598 m!5593197))

(assert (=> b!4690598 m!5593023))

(assert (=> b!4690598 m!5592943))

(assert (=> b!4690598 m!5593129))

(assert (=> b!4690598 m!5592943))

(assert (=> b!4690598 m!5593189))

(assert (=> b!4690598 m!5593191))

(declare-fun m!5593199 () Bool)

(assert (=> b!4690598 m!5593199))

(assert (=> b!4690597 m!5592999))

(assert (=> b!4690597 m!5592999))

(declare-fun m!5593201 () Bool)

(assert (=> b!4690597 m!5593201))

(declare-fun m!5593203 () Bool)

(assert (=> b!4690599 m!5593203))

(assert (=> b!4690454 d!1490704))

(declare-fun d!1490720 () Bool)

(assert (=> d!1490720 (containsKey!3059 oldBucket!34 key!4653)))

(declare-fun lt!1850463 () Unit!124149)

(declare-fun choose!32598 (List!52539 K!13790 Hashable!6225) Unit!124149)

(assert (=> d!1490720 (= lt!1850463 (choose!32598 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1490720 (noDuplicateKeys!1856 oldBucket!34)))

(assert (=> d!1490720 (= (lemmaGetPairDefinedThenContainsKey!208 oldBucket!34 key!4653 hashF!1323) lt!1850463)))

(declare-fun bs!1086945 () Bool)

(assert (= bs!1086945 d!1490720))

(assert (=> bs!1086945 m!5593019))

(declare-fun m!5593205 () Bool)

(assert (=> bs!1086945 m!5593205))

(assert (=> bs!1086945 m!5592951))

(assert (=> b!4690454 d!1490720))

(declare-fun d!1490722 () Bool)

(declare-fun res!1978514 () Bool)

(declare-fun e!2926277 () Bool)

(assert (=> d!1490722 (=> res!1978514 e!2926277)))

(assert (=> d!1490722 (= res!1978514 (and ((_ is Cons!52415) (t!359717 oldBucket!34)) (= (_1!30203 (h!58662 (t!359717 oldBucket!34))) key!4653)))))

(assert (=> d!1490722 (= (containsKey!3059 (t!359717 oldBucket!34) key!4653) e!2926277)))

(declare-fun b!4690604 () Bool)

(declare-fun e!2926278 () Bool)

(assert (=> b!4690604 (= e!2926277 e!2926278)))

(declare-fun res!1978515 () Bool)

(assert (=> b!4690604 (=> (not res!1978515) (not e!2926278))))

(assert (=> b!4690604 (= res!1978515 ((_ is Cons!52415) (t!359717 oldBucket!34)))))

(declare-fun b!4690605 () Bool)

(assert (=> b!4690605 (= e!2926278 (containsKey!3059 (t!359717 (t!359717 oldBucket!34)) key!4653))))

(assert (= (and d!1490722 (not res!1978514)) b!4690604))

(assert (= (and b!4690604 res!1978515) b!4690605))

(declare-fun m!5593207 () Bool)

(assert (=> b!4690605 m!5593207))

(assert (=> b!4690454 d!1490722))

(declare-fun d!1490724 () Bool)

(declare-fun get!17498 (Option!12085) List!52539)

(assert (=> d!1490724 (= (apply!12339 lm!2023 lt!1850335) (get!17498 (getValueByKey!1783 (toList!5602 lm!2023) lt!1850335)))))

(declare-fun bs!1086946 () Bool)

(assert (= bs!1086946 d!1490724))

(assert (=> bs!1086946 m!5593079))

(assert (=> bs!1086946 m!5593079))

(declare-fun m!5593209 () Bool)

(assert (=> bs!1086946 m!5593209))

(assert (=> b!4690454 d!1490724))

(declare-fun d!1490726 () Bool)

(declare-fun res!1978516 () Bool)

(declare-fun e!2926279 () Bool)

(assert (=> d!1490726 (=> res!1978516 e!2926279)))

(assert (=> d!1490726 (= res!1978516 (and ((_ is Cons!52415) oldBucket!34) (= (_1!30203 (h!58662 oldBucket!34)) key!4653)))))

(assert (=> d!1490726 (= (containsKey!3059 oldBucket!34 key!4653) e!2926279)))

(declare-fun b!4690606 () Bool)

(declare-fun e!2926280 () Bool)

(assert (=> b!4690606 (= e!2926279 e!2926280)))

(declare-fun res!1978517 () Bool)

(assert (=> b!4690606 (=> (not res!1978517) (not e!2926280))))

(assert (=> b!4690606 (= res!1978517 ((_ is Cons!52415) oldBucket!34))))

(declare-fun b!4690607 () Bool)

(assert (=> b!4690607 (= e!2926280 (containsKey!3059 (t!359717 oldBucket!34) key!4653))))

(assert (= (and d!1490726 (not res!1978516)) b!4690606))

(assert (= (and b!4690606 res!1978517) b!4690607))

(assert (=> b!4690607 m!5593015))

(assert (=> b!4690454 d!1490726))

(declare-fun d!1490728 () Bool)

(assert (=> d!1490728 true))

(assert (=> d!1490728 true))

(declare-fun lambda!207286 () Int)

(declare-fun forall!11326 (List!52539 Int) Bool)

(assert (=> d!1490728 (= (allKeysSameHash!1682 newBucket!218 hash!405 hashF!1323) (forall!11326 newBucket!218 lambda!207286))))

(declare-fun bs!1086947 () Bool)

(assert (= bs!1086947 d!1490728))

(declare-fun m!5593211 () Bool)

(assert (=> bs!1086947 m!5593211))

(assert (=> b!4690461 d!1490728))

(declare-fun d!1490730 () Bool)

(declare-fun e!2926297 () Bool)

(assert (=> d!1490730 e!2926297))

(declare-fun res!1978524 () Bool)

(assert (=> d!1490730 (=> res!1978524 e!2926297)))

(declare-fun e!2926295 () Bool)

(assert (=> d!1490730 (= res!1978524 e!2926295)))

(declare-fun res!1978525 () Bool)

(assert (=> d!1490730 (=> (not res!1978525) (not e!2926295))))

(declare-fun lt!1850482 () Bool)

(assert (=> d!1490730 (= res!1978525 (not lt!1850482))))

(declare-fun lt!1850484 () Bool)

(assert (=> d!1490730 (= lt!1850482 lt!1850484)))

(declare-fun lt!1850487 () Unit!124149)

(declare-fun e!2926296 () Unit!124149)

(assert (=> d!1490730 (= lt!1850487 e!2926296)))

(declare-fun c!802001 () Bool)

(assert (=> d!1490730 (= c!802001 lt!1850484)))

(declare-fun containsKey!3063 (List!52539 K!13790) Bool)

(assert (=> d!1490730 (= lt!1850484 (containsKey!3063 (toList!5601 lt!1850334) key!4653))))

(assert (=> d!1490730 (= (contains!15618 lt!1850334 key!4653) lt!1850482)))

(declare-fun b!4690630 () Bool)

(declare-fun lt!1850486 () Unit!124149)

(assert (=> b!4690630 (= e!2926296 lt!1850486)))

(declare-fun lt!1850485 () Unit!124149)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1677 (List!52539 K!13790) Unit!124149)

(assert (=> b!4690630 (= lt!1850485 (lemmaContainsKeyImpliesGetValueByKeyDefined!1677 (toList!5601 lt!1850334) key!4653))))

(declare-datatypes ((Option!12087 0))(
  ( (None!12086) (Some!12086 (v!46509 V!14036)) )
))
(declare-fun isDefined!9342 (Option!12087) Bool)

(declare-fun getValueByKey!1785 (List!52539 K!13790) Option!12087)

(assert (=> b!4690630 (isDefined!9342 (getValueByKey!1785 (toList!5601 lt!1850334) key!4653))))

(declare-fun lt!1850483 () Unit!124149)

(assert (=> b!4690630 (= lt!1850483 lt!1850485)))

(declare-fun lemmaInListThenGetKeysListContains!847 (List!52539 K!13790) Unit!124149)

(assert (=> b!4690630 (= lt!1850486 (lemmaInListThenGetKeysListContains!847 (toList!5601 lt!1850334) key!4653))))

(declare-fun call!327813 () Bool)

(assert (=> b!4690630 call!327813))

(declare-fun b!4690631 () Bool)

(declare-fun e!2926293 () Bool)

(assert (=> b!4690631 (= e!2926297 e!2926293)))

(declare-fun res!1978526 () Bool)

(assert (=> b!4690631 (=> (not res!1978526) (not e!2926293))))

(assert (=> b!4690631 (= res!1978526 (isDefined!9342 (getValueByKey!1785 (toList!5601 lt!1850334) key!4653)))))

(declare-fun b!4690632 () Bool)

(declare-datatypes ((List!52542 0))(
  ( (Nil!52418) (Cons!52418 (h!58667 K!13790) (t!359722 List!52542)) )
))
(declare-fun e!2926294 () List!52542)

(declare-fun getKeysList!852 (List!52539) List!52542)

(assert (=> b!4690632 (= e!2926294 (getKeysList!852 (toList!5601 lt!1850334)))))

(declare-fun b!4690633 () Bool)

(declare-fun keys!18717 (ListMap!4965) List!52542)

(assert (=> b!4690633 (= e!2926294 (keys!18717 lt!1850334))))

(declare-fun b!4690634 () Bool)

(assert (=> b!4690634 false))

(declare-fun lt!1850480 () Unit!124149)

(declare-fun lt!1850481 () Unit!124149)

(assert (=> b!4690634 (= lt!1850480 lt!1850481)))

(assert (=> b!4690634 (containsKey!3063 (toList!5601 lt!1850334) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!851 (List!52539 K!13790) Unit!124149)

(assert (=> b!4690634 (= lt!1850481 (lemmaInGetKeysListThenContainsKey!851 (toList!5601 lt!1850334) key!4653))))

(declare-fun e!2926298 () Unit!124149)

(declare-fun Unit!124155 () Unit!124149)

(assert (=> b!4690634 (= e!2926298 Unit!124155)))

(declare-fun b!4690635 () Bool)

(declare-fun contains!15624 (List!52542 K!13790) Bool)

(assert (=> b!4690635 (= e!2926293 (contains!15624 (keys!18717 lt!1850334) key!4653))))

(declare-fun b!4690636 () Bool)

(assert (=> b!4690636 (= e!2926295 (not (contains!15624 (keys!18717 lt!1850334) key!4653)))))

(declare-fun b!4690637 () Bool)

(declare-fun Unit!124156 () Unit!124149)

(assert (=> b!4690637 (= e!2926298 Unit!124156)))

(declare-fun bm!327808 () Bool)

(assert (=> bm!327808 (= call!327813 (contains!15624 e!2926294 key!4653))))

(declare-fun c!802000 () Bool)

(assert (=> bm!327808 (= c!802000 c!802001)))

(declare-fun b!4690638 () Bool)

(assert (=> b!4690638 (= e!2926296 e!2926298)))

(declare-fun c!802002 () Bool)

(assert (=> b!4690638 (= c!802002 call!327813)))

(assert (= (and d!1490730 c!802001) b!4690630))

(assert (= (and d!1490730 (not c!802001)) b!4690638))

(assert (= (and b!4690638 c!802002) b!4690634))

(assert (= (and b!4690638 (not c!802002)) b!4690637))

(assert (= (or b!4690630 b!4690638) bm!327808))

(assert (= (and bm!327808 c!802000) b!4690632))

(assert (= (and bm!327808 (not c!802000)) b!4690633))

(assert (= (and d!1490730 res!1978525) b!4690636))

(assert (= (and d!1490730 (not res!1978524)) b!4690631))

(assert (= (and b!4690631 res!1978526) b!4690635))

(declare-fun m!5593213 () Bool)

(assert (=> b!4690630 m!5593213))

(declare-fun m!5593215 () Bool)

(assert (=> b!4690630 m!5593215))

(assert (=> b!4690630 m!5593215))

(declare-fun m!5593217 () Bool)

(assert (=> b!4690630 m!5593217))

(declare-fun m!5593219 () Bool)

(assert (=> b!4690630 m!5593219))

(assert (=> b!4690631 m!5593215))

(assert (=> b!4690631 m!5593215))

(assert (=> b!4690631 m!5593217))

(declare-fun m!5593221 () Bool)

(assert (=> b!4690636 m!5593221))

(assert (=> b!4690636 m!5593221))

(declare-fun m!5593223 () Bool)

(assert (=> b!4690636 m!5593223))

(declare-fun m!5593225 () Bool)

(assert (=> b!4690632 m!5593225))

(assert (=> b!4690635 m!5593221))

(assert (=> b!4690635 m!5593221))

(assert (=> b!4690635 m!5593223))

(declare-fun m!5593227 () Bool)

(assert (=> b!4690634 m!5593227))

(declare-fun m!5593229 () Bool)

(assert (=> b!4690634 m!5593229))

(assert (=> b!4690633 m!5593221))

(assert (=> d!1490730 m!5593227))

(declare-fun m!5593231 () Bool)

(assert (=> bm!327808 m!5593231))

(assert (=> b!4690451 d!1490730))

(declare-fun bs!1086951 () Bool)

(declare-fun d!1490732 () Bool)

(assert (= bs!1086951 (and d!1490732 start!474540)))

(declare-fun lambda!207296 () Int)

(assert (=> bs!1086951 (= lambda!207296 lambda!207267)))

(declare-fun bs!1086952 () Bool)

(assert (= bs!1086952 (and d!1490732 d!1490702)))

(assert (=> bs!1086952 (= lambda!207296 lambda!207270)))

(declare-fun bs!1086953 () Bool)

(assert (= bs!1086953 (and d!1490732 d!1490704)))

(assert (=> bs!1086953 (= lambda!207296 lambda!207283)))

(declare-fun lt!1850514 () ListMap!4965)

(declare-fun invariantList!1412 (List!52539) Bool)

(assert (=> d!1490732 (invariantList!1412 (toList!5601 lt!1850514))))

(declare-fun e!2926307 () ListMap!4965)

(assert (=> d!1490732 (= lt!1850514 e!2926307)))

(declare-fun c!802005 () Bool)

(assert (=> d!1490732 (= c!802005 ((_ is Cons!52416) (toList!5602 lm!2023)))))

(assert (=> d!1490732 (forall!11325 (toList!5602 lm!2023) lambda!207296)))

(assert (=> d!1490732 (= (extractMap!1882 (toList!5602 lm!2023)) lt!1850514)))

(declare-fun b!4690655 () Bool)

(assert (=> b!4690655 (= e!2926307 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (toList!5602 lm!2023))) (extractMap!1882 (t!359718 (toList!5602 lm!2023)))))))

(declare-fun b!4690656 () Bool)

(assert (=> b!4690656 (= e!2926307 (ListMap!4966 Nil!52415))))

(assert (= (and d!1490732 c!802005) b!4690655))

(assert (= (and d!1490732 (not c!802005)) b!4690656))

(declare-fun m!5593255 () Bool)

(assert (=> d!1490732 m!5593255))

(declare-fun m!5593257 () Bool)

(assert (=> d!1490732 m!5593257))

(assert (=> b!4690655 m!5592947))

(assert (=> b!4690655 m!5592947))

(declare-fun m!5593259 () Bool)

(assert (=> b!4690655 m!5593259))

(assert (=> b!4690451 d!1490732))

(declare-fun d!1490736 () Bool)

(assert (=> d!1490736 (= (head!9976 (toList!5602 lm!2023)) (h!58663 (toList!5602 lm!2023)))))

(assert (=> b!4690462 d!1490736))

(declare-fun d!1490738 () Bool)

(declare-fun hash!4070 (Hashable!6225 K!13790) (_ BitVec 64))

(assert (=> d!1490738 (= (hash!4069 hashF!1323 key!4653) (hash!4070 hashF!1323 key!4653))))

(declare-fun bs!1086954 () Bool)

(assert (= bs!1086954 d!1490738))

(declare-fun m!5593261 () Bool)

(assert (=> bs!1086954 m!5593261))

(assert (=> b!4690449 d!1490738))

(declare-fun bs!1086955 () Bool)

(declare-fun d!1490740 () Bool)

(assert (= bs!1086955 (and d!1490740 d!1490728)))

(declare-fun lambda!207297 () Int)

(assert (=> bs!1086955 (= lambda!207297 lambda!207286)))

(assert (=> d!1490740 true))

(assert (=> d!1490740 true))

(assert (=> d!1490740 (= (allKeysSameHash!1682 oldBucket!34 hash!405 hashF!1323) (forall!11326 oldBucket!34 lambda!207297))))

(declare-fun bs!1086956 () Bool)

(assert (= bs!1086956 d!1490740))

(declare-fun m!5593265 () Bool)

(assert (=> bs!1086956 m!5593265))

(assert (=> b!4690460 d!1490740))

(declare-fun bs!1086958 () Bool)

(declare-fun d!1490742 () Bool)

(assert (= bs!1086958 (and d!1490742 start!474540)))

(declare-fun lambda!207300 () Int)

(assert (=> bs!1086958 (not (= lambda!207300 lambda!207267))))

(declare-fun bs!1086959 () Bool)

(assert (= bs!1086959 (and d!1490742 d!1490702)))

(assert (=> bs!1086959 (not (= lambda!207300 lambda!207270))))

(declare-fun bs!1086960 () Bool)

(assert (= bs!1086960 (and d!1490742 d!1490704)))

(assert (=> bs!1086960 (not (= lambda!207300 lambda!207283))))

(declare-fun bs!1086961 () Bool)

(assert (= bs!1086961 (and d!1490742 d!1490732)))

(assert (=> bs!1086961 (not (= lambda!207300 lambda!207296))))

(assert (=> d!1490742 true))

(assert (=> d!1490742 (= (allKeysSameHashInMap!1770 lm!2023 hashF!1323) (forall!11325 (toList!5602 lm!2023) lambda!207300))))

(declare-fun bs!1086962 () Bool)

(assert (= bs!1086962 d!1490742))

(declare-fun m!5593271 () Bool)

(assert (=> bs!1086962 m!5593271))

(assert (=> b!4690450 d!1490742))

(declare-fun bs!1086963 () Bool)

(declare-fun b!4690717 () Bool)

(assert (= bs!1086963 (and b!4690717 d!1490728)))

(declare-fun lambda!207351 () Int)

(assert (=> bs!1086963 (not (= lambda!207351 lambda!207286))))

(declare-fun bs!1086964 () Bool)

(assert (= bs!1086964 (and b!4690717 d!1490740)))

(assert (=> bs!1086964 (not (= lambda!207351 lambda!207297))))

(assert (=> b!4690717 true))

(declare-fun bs!1086965 () Bool)

(declare-fun b!4690714 () Bool)

(assert (= bs!1086965 (and b!4690714 d!1490728)))

(declare-fun lambda!207354 () Int)

(assert (=> bs!1086965 (not (= lambda!207354 lambda!207286))))

(declare-fun bs!1086966 () Bool)

(assert (= bs!1086966 (and b!4690714 d!1490740)))

(assert (=> bs!1086966 (not (= lambda!207354 lambda!207297))))

(declare-fun bs!1086967 () Bool)

(assert (= bs!1086967 (and b!4690714 b!4690717)))

(assert (=> bs!1086967 (= lambda!207354 lambda!207351)))

(assert (=> b!4690714 true))

(declare-fun lambda!207355 () Int)

(assert (=> bs!1086965 (not (= lambda!207355 lambda!207286))))

(assert (=> bs!1086966 (not (= lambda!207355 lambda!207297))))

(declare-fun lt!1850617 () ListMap!4965)

(assert (=> bs!1086967 (= (= lt!1850617 lt!1850333) (= lambda!207355 lambda!207351))))

(assert (=> b!4690714 (= (= lt!1850617 lt!1850333) (= lambda!207355 lambda!207354))))

(assert (=> b!4690714 true))

(declare-fun bs!1086968 () Bool)

(declare-fun d!1490748 () Bool)

(assert (= bs!1086968 (and d!1490748 d!1490740)))

(declare-fun lambda!207356 () Int)

(assert (=> bs!1086968 (not (= lambda!207356 lambda!207297))))

(declare-fun bs!1086969 () Bool)

(assert (= bs!1086969 (and d!1490748 d!1490728)))

(assert (=> bs!1086969 (not (= lambda!207356 lambda!207286))))

(declare-fun bs!1086970 () Bool)

(assert (= bs!1086970 (and d!1490748 b!4690714)))

(declare-fun lt!1850622 () ListMap!4965)

(assert (=> bs!1086970 (= (= lt!1850622 lt!1850617) (= lambda!207356 lambda!207355))))

(declare-fun bs!1086971 () Bool)

(assert (= bs!1086971 (and d!1490748 b!4690717)))

(assert (=> bs!1086971 (= (= lt!1850622 lt!1850333) (= lambda!207356 lambda!207351))))

(assert (=> bs!1086970 (= (= lt!1850622 lt!1850333) (= lambda!207356 lambda!207354))))

(assert (=> d!1490748 true))

(declare-fun bm!327815 () Bool)

(declare-fun call!327821 () Unit!124149)

(declare-fun lemmaContainsAllItsOwnKeys!699 (ListMap!4965) Unit!124149)

(assert (=> bm!327815 (= call!327821 (lemmaContainsAllItsOwnKeys!699 lt!1850333))))

(declare-fun e!2926350 () ListMap!4965)

(assert (=> b!4690714 (= e!2926350 lt!1850617)))

(declare-fun lt!1850627 () ListMap!4965)

(assert (=> b!4690714 (= lt!1850627 (+!2140 lt!1850333 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023))))))))

(assert (=> b!4690714 (= lt!1850617 (addToMapMapFromBucket!1288 (t!359717 (_2!30204 (h!58663 (toList!5602 lm!2023)))) (+!2140 lt!1850333 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023)))))))))

(declare-fun lt!1850616 () Unit!124149)

(assert (=> b!4690714 (= lt!1850616 call!327821)))

(assert (=> b!4690714 (forall!11326 (toList!5601 lt!1850333) lambda!207354)))

(declare-fun lt!1850613 () Unit!124149)

(assert (=> b!4690714 (= lt!1850613 lt!1850616)))

(assert (=> b!4690714 (forall!11326 (toList!5601 lt!1850627) lambda!207355)))

(declare-fun lt!1850614 () Unit!124149)

(declare-fun Unit!124157 () Unit!124149)

(assert (=> b!4690714 (= lt!1850614 Unit!124157)))

(assert (=> b!4690714 (forall!11326 (t!359717 (_2!30204 (h!58663 (toList!5602 lm!2023)))) lambda!207355)))

(declare-fun lt!1850623 () Unit!124149)

(declare-fun Unit!124158 () Unit!124149)

(assert (=> b!4690714 (= lt!1850623 Unit!124158)))

(declare-fun lt!1850631 () Unit!124149)

(declare-fun Unit!124159 () Unit!124149)

(assert (=> b!4690714 (= lt!1850631 Unit!124159)))

(declare-fun lt!1850626 () Unit!124149)

(declare-fun forallContained!3433 (List!52539 Int tuple2!53818) Unit!124149)

(assert (=> b!4690714 (= lt!1850626 (forallContained!3433 (toList!5601 lt!1850627) lambda!207355 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023))))))))

(assert (=> b!4690714 (contains!15618 lt!1850627 (_1!30203 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023))))))))

(declare-fun lt!1850625 () Unit!124149)

(declare-fun Unit!124160 () Unit!124149)

(assert (=> b!4690714 (= lt!1850625 Unit!124160)))

(assert (=> b!4690714 (contains!15618 lt!1850617 (_1!30203 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023))))))))

(declare-fun lt!1850629 () Unit!124149)

(declare-fun Unit!124162 () Unit!124149)

(assert (=> b!4690714 (= lt!1850629 Unit!124162)))

(declare-fun call!327820 () Bool)

(assert (=> b!4690714 call!327820))

(declare-fun lt!1850630 () Unit!124149)

(declare-fun Unit!124164 () Unit!124149)

(assert (=> b!4690714 (= lt!1850630 Unit!124164)))

(assert (=> b!4690714 (forall!11326 (toList!5601 lt!1850627) lambda!207355)))

(declare-fun lt!1850619 () Unit!124149)

(declare-fun Unit!124166 () Unit!124149)

(assert (=> b!4690714 (= lt!1850619 Unit!124166)))

(declare-fun lt!1850611 () Unit!124149)

(declare-fun Unit!124167 () Unit!124149)

(assert (=> b!4690714 (= lt!1850611 Unit!124167)))

(declare-fun lt!1850621 () Unit!124149)

(declare-fun addForallContainsKeyThenBeforeAdding!698 (ListMap!4965 ListMap!4965 K!13790 V!14036) Unit!124149)

(assert (=> b!4690714 (= lt!1850621 (addForallContainsKeyThenBeforeAdding!698 lt!1850333 lt!1850617 (_1!30203 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023))))) (_2!30203 (h!58662 (_2!30204 (h!58663 (toList!5602 lm!2023)))))))))

(declare-fun call!327822 () Bool)

(assert (=> b!4690714 call!327822))

(declare-fun lt!1850620 () Unit!124149)

(assert (=> b!4690714 (= lt!1850620 lt!1850621)))

(assert (=> b!4690714 (forall!11326 (toList!5601 lt!1850333) lambda!207355)))

(declare-fun lt!1850628 () Unit!124149)

(declare-fun Unit!124170 () Unit!124149)

(assert (=> b!4690714 (= lt!1850628 Unit!124170)))

(declare-fun res!1978576 () Bool)

(assert (=> b!4690714 (= res!1978576 (forall!11326 (_2!30204 (h!58663 (toList!5602 lm!2023))) lambda!207355))))

(declare-fun e!2926351 () Bool)

(assert (=> b!4690714 (=> (not res!1978576) (not e!2926351))))

(assert (=> b!4690714 e!2926351))

(declare-fun lt!1850618 () Unit!124149)

(declare-fun Unit!124174 () Unit!124149)

(assert (=> b!4690714 (= lt!1850618 Unit!124174)))

(declare-fun b!4690715 () Bool)

(declare-fun res!1978577 () Bool)

(declare-fun e!2926352 () Bool)

(assert (=> b!4690715 (=> (not res!1978577) (not e!2926352))))

(assert (=> b!4690715 (= res!1978577 (forall!11326 (toList!5601 lt!1850333) lambda!207356))))

(declare-fun bm!327816 () Bool)

(declare-fun c!802016 () Bool)

(assert (=> bm!327816 (= call!327820 (forall!11326 (ite c!802016 (toList!5601 lt!1850333) (_2!30204 (h!58663 (toList!5602 lm!2023)))) (ite c!802016 lambda!207351 lambda!207355)))))

(declare-fun b!4690716 () Bool)

(assert (=> b!4690716 (= e!2926351 (forall!11326 (toList!5601 lt!1850333) lambda!207355))))

(assert (=> b!4690717 (= e!2926350 lt!1850333)))

(declare-fun lt!1850624 () Unit!124149)

(assert (=> b!4690717 (= lt!1850624 call!327821)))

(assert (=> b!4690717 call!327820))

(declare-fun lt!1850615 () Unit!124149)

(assert (=> b!4690717 (= lt!1850615 lt!1850624)))

(assert (=> b!4690717 call!327822))

(declare-fun lt!1850612 () Unit!124149)

(declare-fun Unit!124177 () Unit!124149)

(assert (=> b!4690717 (= lt!1850612 Unit!124177)))

(declare-fun b!4690718 () Bool)

(assert (=> b!4690718 (= e!2926352 (invariantList!1412 (toList!5601 lt!1850622)))))

(declare-fun bm!327817 () Bool)

(assert (=> bm!327817 (= call!327822 (forall!11326 (toList!5601 lt!1850333) (ite c!802016 lambda!207351 lambda!207355)))))

(assert (=> d!1490748 e!2926352))

(declare-fun res!1978578 () Bool)

(assert (=> d!1490748 (=> (not res!1978578) (not e!2926352))))

(assert (=> d!1490748 (= res!1978578 (forall!11326 (_2!30204 (h!58663 (toList!5602 lm!2023))) lambda!207356))))

(assert (=> d!1490748 (= lt!1850622 e!2926350)))

(assert (=> d!1490748 (= c!802016 ((_ is Nil!52415) (_2!30204 (h!58663 (toList!5602 lm!2023)))))))

(assert (=> d!1490748 (noDuplicateKeys!1856 (_2!30204 (h!58663 (toList!5602 lm!2023))))))

(assert (=> d!1490748 (= (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (toList!5602 lm!2023))) lt!1850333) lt!1850622)))

(assert (= (and d!1490748 c!802016) b!4690717))

(assert (= (and d!1490748 (not c!802016)) b!4690714))

(assert (= (and b!4690714 res!1978576) b!4690716))

(assert (= (or b!4690717 b!4690714) bm!327815))

(assert (= (or b!4690717 b!4690714) bm!327816))

(assert (= (or b!4690717 b!4690714) bm!327817))

(assert (= (and d!1490748 res!1978578) b!4690715))

(assert (= (and b!4690715 res!1978577) b!4690718))

(declare-fun m!5593295 () Bool)

(assert (=> b!4690718 m!5593295))

(declare-fun m!5593297 () Bool)

(assert (=> bm!327816 m!5593297))

(declare-fun m!5593299 () Bool)

(assert (=> b!4690715 m!5593299))

(declare-fun m!5593301 () Bool)

(assert (=> b!4690714 m!5593301))

(declare-fun m!5593303 () Bool)

(assert (=> b!4690714 m!5593303))

(assert (=> b!4690714 m!5593301))

(declare-fun m!5593305 () Bool)

(assert (=> b!4690714 m!5593305))

(declare-fun m!5593307 () Bool)

(assert (=> b!4690714 m!5593307))

(declare-fun m!5593309 () Bool)

(assert (=> b!4690714 m!5593309))

(declare-fun m!5593311 () Bool)

(assert (=> b!4690714 m!5593311))

(declare-fun m!5593313 () Bool)

(assert (=> b!4690714 m!5593313))

(declare-fun m!5593315 () Bool)

(assert (=> b!4690714 m!5593315))

(declare-fun m!5593317 () Bool)

(assert (=> b!4690714 m!5593317))

(declare-fun m!5593319 () Bool)

(assert (=> b!4690714 m!5593319))

(assert (=> b!4690714 m!5593305))

(declare-fun m!5593321 () Bool)

(assert (=> b!4690714 m!5593321))

(declare-fun m!5593323 () Bool)

(assert (=> d!1490748 m!5593323))

(declare-fun m!5593325 () Bool)

(assert (=> d!1490748 m!5593325))

(declare-fun m!5593327 () Bool)

(assert (=> bm!327815 m!5593327))

(declare-fun m!5593329 () Bool)

(assert (=> bm!327817 m!5593329))

(assert (=> b!4690716 m!5593311))

(assert (=> b!4690448 d!1490748))

(declare-fun bs!1086972 () Bool)

(declare-fun d!1490758 () Bool)

(assert (= bs!1086972 (and d!1490758 d!1490732)))

(declare-fun lambda!207361 () Int)

(assert (=> bs!1086972 (= lambda!207361 lambda!207296)))

(declare-fun bs!1086973 () Bool)

(assert (= bs!1086973 (and d!1490758 start!474540)))

(assert (=> bs!1086973 (= lambda!207361 lambda!207267)))

(declare-fun bs!1086974 () Bool)

(assert (= bs!1086974 (and d!1490758 d!1490704)))

(assert (=> bs!1086974 (= lambda!207361 lambda!207283)))

(declare-fun bs!1086975 () Bool)

(assert (= bs!1086975 (and d!1490758 d!1490742)))

(assert (=> bs!1086975 (not (= lambda!207361 lambda!207300))))

(declare-fun bs!1086976 () Bool)

(assert (= bs!1086976 (and d!1490758 d!1490702)))

(assert (=> bs!1086976 (= lambda!207361 lambda!207270)))

(declare-fun lt!1850632 () ListMap!4965)

(assert (=> d!1490758 (invariantList!1412 (toList!5601 lt!1850632))))

(declare-fun e!2926355 () ListMap!4965)

(assert (=> d!1490758 (= lt!1850632 e!2926355)))

(declare-fun c!802017 () Bool)

(assert (=> d!1490758 (= c!802017 ((_ is Cons!52416) (t!359718 (toList!5602 lm!2023))))))

(assert (=> d!1490758 (forall!11325 (t!359718 (toList!5602 lm!2023)) lambda!207361)))

(assert (=> d!1490758 (= (extractMap!1882 (t!359718 (toList!5602 lm!2023))) lt!1850632)))

(declare-fun b!4690727 () Bool)

(assert (=> b!4690727 (= e!2926355 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (t!359718 (toList!5602 lm!2023)))) (extractMap!1882 (t!359718 (t!359718 (toList!5602 lm!2023))))))))

(declare-fun b!4690728 () Bool)

(assert (=> b!4690728 (= e!2926355 (ListMap!4966 Nil!52415))))

(assert (= (and d!1490758 c!802017) b!4690727))

(assert (= (and d!1490758 (not c!802017)) b!4690728))

(declare-fun m!5593331 () Bool)

(assert (=> d!1490758 m!5593331))

(declare-fun m!5593333 () Bool)

(assert (=> d!1490758 m!5593333))

(declare-fun m!5593335 () Bool)

(assert (=> b!4690727 m!5593335))

(assert (=> b!4690727 m!5593335))

(declare-fun m!5593337 () Bool)

(assert (=> b!4690727 m!5593337))

(assert (=> b!4690448 d!1490758))

(declare-fun d!1490760 () Bool)

(declare-fun tail!8599 (List!52540) List!52540)

(assert (=> d!1490760 (= (tail!8597 lm!2023) (ListLongMap!4132 (tail!8599 (toList!5602 lm!2023))))))

(declare-fun bs!1086977 () Bool)

(assert (= bs!1086977 d!1490760))

(declare-fun m!5593339 () Bool)

(assert (=> bs!1086977 m!5593339))

(assert (=> b!4690448 d!1490760))

(declare-fun d!1490762 () Bool)

(declare-fun content!9170 (List!52539) (InoxSet tuple2!53818))

(assert (=> d!1490762 (= (eq!1015 lt!1850345 (+!2140 lt!1850341 lt!1850339)) (= (content!9170 (toList!5601 lt!1850345)) (content!9170 (toList!5601 (+!2140 lt!1850341 lt!1850339)))))))

(declare-fun bs!1086978 () Bool)

(assert (= bs!1086978 d!1490762))

(declare-fun m!5593341 () Bool)

(assert (=> bs!1086978 m!5593341))

(declare-fun m!5593343 () Bool)

(assert (=> bs!1086978 m!5593343))

(assert (=> b!4690459 d!1490762))

(declare-fun d!1490764 () Bool)

(declare-fun e!2926362 () Bool)

(assert (=> d!1490764 e!2926362))

(declare-fun res!1978591 () Bool)

(assert (=> d!1490764 (=> (not res!1978591) (not e!2926362))))

(declare-fun lt!1850666 () ListMap!4965)

(assert (=> d!1490764 (= res!1978591 (contains!15618 lt!1850666 (_1!30203 lt!1850339)))))

(declare-fun lt!1850665 () List!52539)

(assert (=> d!1490764 (= lt!1850666 (ListMap!4966 lt!1850665))))

(declare-fun lt!1850663 () Unit!124149)

(declare-fun lt!1850664 () Unit!124149)

(assert (=> d!1490764 (= lt!1850663 lt!1850664)))

(assert (=> d!1490764 (= (getValueByKey!1785 lt!1850665 (_1!30203 lt!1850339)) (Some!12086 (_2!30203 lt!1850339)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1002 (List!52539 K!13790 V!14036) Unit!124149)

(assert (=> d!1490764 (= lt!1850664 (lemmaContainsTupThenGetReturnValue!1002 lt!1850665 (_1!30203 lt!1850339) (_2!30203 lt!1850339)))))

(declare-fun insertNoDuplicatedKeys!510 (List!52539 K!13790 V!14036) List!52539)

(assert (=> d!1490764 (= lt!1850665 (insertNoDuplicatedKeys!510 (toList!5601 lt!1850341) (_1!30203 lt!1850339) (_2!30203 lt!1850339)))))

(assert (=> d!1490764 (= (+!2140 lt!1850341 lt!1850339) lt!1850666)))

(declare-fun b!4690742 () Bool)

(declare-fun res!1978590 () Bool)

(assert (=> b!4690742 (=> (not res!1978590) (not e!2926362))))

(assert (=> b!4690742 (= res!1978590 (= (getValueByKey!1785 (toList!5601 lt!1850666) (_1!30203 lt!1850339)) (Some!12086 (_2!30203 lt!1850339))))))

(declare-fun b!4690743 () Bool)

(assert (=> b!4690743 (= e!2926362 (contains!15623 (toList!5601 lt!1850666) lt!1850339))))

(assert (= (and d!1490764 res!1978591) b!4690742))

(assert (= (and b!4690742 res!1978590) b!4690743))

(declare-fun m!5593389 () Bool)

(assert (=> d!1490764 m!5593389))

(declare-fun m!5593391 () Bool)

(assert (=> d!1490764 m!5593391))

(declare-fun m!5593393 () Bool)

(assert (=> d!1490764 m!5593393))

(declare-fun m!5593395 () Bool)

(assert (=> d!1490764 m!5593395))

(declare-fun m!5593397 () Bool)

(assert (=> b!4690742 m!5593397))

(declare-fun m!5593399 () Bool)

(assert (=> b!4690743 m!5593399))

(assert (=> b!4690459 d!1490764))

(declare-fun d!1490772 () Bool)

(declare-fun e!2926363 () Bool)

(assert (=> d!1490772 e!2926363))

(declare-fun res!1978593 () Bool)

(assert (=> d!1490772 (=> (not res!1978593) (not e!2926363))))

(declare-fun lt!1850670 () ListMap!4965)

(assert (=> d!1490772 (= res!1978593 (contains!15618 lt!1850670 (_1!30203 lt!1850328)))))

(declare-fun lt!1850669 () List!52539)

(assert (=> d!1490772 (= lt!1850670 (ListMap!4966 lt!1850669))))

(declare-fun lt!1850667 () Unit!124149)

(declare-fun lt!1850668 () Unit!124149)

(assert (=> d!1490772 (= lt!1850667 lt!1850668)))

(assert (=> d!1490772 (= (getValueByKey!1785 lt!1850669 (_1!30203 lt!1850328)) (Some!12086 (_2!30203 lt!1850328)))))

(assert (=> d!1490772 (= lt!1850668 (lemmaContainsTupThenGetReturnValue!1002 lt!1850669 (_1!30203 lt!1850328) (_2!30203 lt!1850328)))))

(assert (=> d!1490772 (= lt!1850669 (insertNoDuplicatedKeys!510 (toList!5601 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333)) (_1!30203 lt!1850328) (_2!30203 lt!1850328)))))

(assert (=> d!1490772 (= (+!2140 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850328) lt!1850670)))

(declare-fun b!4690744 () Bool)

(declare-fun res!1978592 () Bool)

(assert (=> b!4690744 (=> (not res!1978592) (not e!2926363))))

(assert (=> b!4690744 (= res!1978592 (= (getValueByKey!1785 (toList!5601 lt!1850670) (_1!30203 lt!1850328)) (Some!12086 (_2!30203 lt!1850328))))))

(declare-fun b!4690745 () Bool)

(assert (=> b!4690745 (= e!2926363 (contains!15623 (toList!5601 lt!1850670) lt!1850328))))

(assert (= (and d!1490772 res!1978593) b!4690744))

(assert (= (and b!4690744 res!1978592) b!4690745))

(declare-fun m!5593401 () Bool)

(assert (=> d!1490772 m!5593401))

(declare-fun m!5593403 () Bool)

(assert (=> d!1490772 m!5593403))

(declare-fun m!5593405 () Bool)

(assert (=> d!1490772 m!5593405))

(declare-fun m!5593407 () Bool)

(assert (=> d!1490772 m!5593407))

(declare-fun m!5593409 () Bool)

(assert (=> b!4690744 m!5593409))

(declare-fun m!5593411 () Bool)

(assert (=> b!4690745 m!5593411))

(assert (=> b!4690447 d!1490772))

(declare-fun d!1490774 () Bool)

(assert (=> d!1490774 (= (eq!1015 lt!1850345 (+!2140 lt!1850341 (h!58662 oldBucket!34))) (= (content!9170 (toList!5601 lt!1850345)) (content!9170 (toList!5601 (+!2140 lt!1850341 (h!58662 oldBucket!34))))))))

(declare-fun bs!1086988 () Bool)

(assert (= bs!1086988 d!1490774))

(assert (=> bs!1086988 m!5593341))

(declare-fun m!5593413 () Bool)

(assert (=> bs!1086988 m!5593413))

(assert (=> b!4690447 d!1490774))

(declare-fun bs!1086994 () Bool)

(declare-fun b!4690751 () Bool)

(assert (= bs!1086994 (and b!4690751 d!1490740)))

(declare-fun lambda!207370 () Int)

(assert (=> bs!1086994 (not (= lambda!207370 lambda!207297))))

(declare-fun bs!1086995 () Bool)

(assert (= bs!1086995 (and b!4690751 d!1490728)))

(assert (=> bs!1086995 (not (= lambda!207370 lambda!207286))))

(declare-fun bs!1086996 () Bool)

(assert (= bs!1086996 (and b!4690751 b!4690714)))

(assert (=> bs!1086996 (= (= lt!1850333 lt!1850617) (= lambda!207370 lambda!207355))))

(declare-fun bs!1086997 () Bool)

(assert (= bs!1086997 (and b!4690751 b!4690717)))

(assert (=> bs!1086997 (= lambda!207370 lambda!207351)))

(assert (=> bs!1086996 (= lambda!207370 lambda!207354)))

(declare-fun bs!1086998 () Bool)

(assert (= bs!1086998 (and b!4690751 d!1490748)))

(assert (=> bs!1086998 (= (= lt!1850333 lt!1850622) (= lambda!207370 lambda!207356))))

(assert (=> b!4690751 true))

(declare-fun bs!1086999 () Bool)

(declare-fun b!4690748 () Bool)

(assert (= bs!1086999 (and b!4690748 d!1490740)))

(declare-fun lambda!207371 () Int)

(assert (=> bs!1086999 (not (= lambda!207371 lambda!207297))))

(declare-fun bs!1087000 () Bool)

(assert (= bs!1087000 (and b!4690748 d!1490728)))

(assert (=> bs!1087000 (not (= lambda!207371 lambda!207286))))

(declare-fun bs!1087001 () Bool)

(assert (= bs!1087001 (and b!4690748 b!4690714)))

(assert (=> bs!1087001 (= (= lt!1850333 lt!1850617) (= lambda!207371 lambda!207355))))

(declare-fun bs!1087002 () Bool)

(assert (= bs!1087002 (and b!4690748 b!4690751)))

(assert (=> bs!1087002 (= lambda!207371 lambda!207370)))

(declare-fun bs!1087003 () Bool)

(assert (= bs!1087003 (and b!4690748 b!4690717)))

(assert (=> bs!1087003 (= lambda!207371 lambda!207351)))

(assert (=> bs!1087001 (= lambda!207371 lambda!207354)))

(declare-fun bs!1087004 () Bool)

(assert (= bs!1087004 (and b!4690748 d!1490748)))

(assert (=> bs!1087004 (= (= lt!1850333 lt!1850622) (= lambda!207371 lambda!207356))))

(assert (=> b!4690748 true))

(declare-fun lambda!207372 () Int)

(assert (=> bs!1086999 (not (= lambda!207372 lambda!207297))))

(assert (=> bs!1087000 (not (= lambda!207372 lambda!207286))))

(declare-fun lt!1850677 () ListMap!4965)

(assert (=> bs!1087001 (= (= lt!1850677 lt!1850617) (= lambda!207372 lambda!207355))))

(assert (=> bs!1087002 (= (= lt!1850677 lt!1850333) (= lambda!207372 lambda!207370))))

(assert (=> bs!1087003 (= (= lt!1850677 lt!1850333) (= lambda!207372 lambda!207351))))

(assert (=> bs!1087001 (= (= lt!1850677 lt!1850333) (= lambda!207372 lambda!207354))))

(assert (=> b!4690748 (= (= lt!1850677 lt!1850333) (= lambda!207372 lambda!207371))))

(assert (=> bs!1087004 (= (= lt!1850677 lt!1850622) (= lambda!207372 lambda!207356))))

(assert (=> b!4690748 true))

(declare-fun bs!1087005 () Bool)

(declare-fun d!1490776 () Bool)

(assert (= bs!1087005 (and d!1490776 b!4690748)))

(declare-fun lambda!207373 () Int)

(declare-fun lt!1850682 () ListMap!4965)

(assert (=> bs!1087005 (= (= lt!1850682 lt!1850677) (= lambda!207373 lambda!207372))))

(declare-fun bs!1087006 () Bool)

(assert (= bs!1087006 (and d!1490776 d!1490740)))

(assert (=> bs!1087006 (not (= lambda!207373 lambda!207297))))

(declare-fun bs!1087007 () Bool)

(assert (= bs!1087007 (and d!1490776 d!1490728)))

(assert (=> bs!1087007 (not (= lambda!207373 lambda!207286))))

(declare-fun bs!1087008 () Bool)

(assert (= bs!1087008 (and d!1490776 b!4690714)))

(assert (=> bs!1087008 (= (= lt!1850682 lt!1850617) (= lambda!207373 lambda!207355))))

(declare-fun bs!1087009 () Bool)

(assert (= bs!1087009 (and d!1490776 b!4690751)))

(assert (=> bs!1087009 (= (= lt!1850682 lt!1850333) (= lambda!207373 lambda!207370))))

(declare-fun bs!1087010 () Bool)

(assert (= bs!1087010 (and d!1490776 b!4690717)))

(assert (=> bs!1087010 (= (= lt!1850682 lt!1850333) (= lambda!207373 lambda!207351))))

(assert (=> bs!1087008 (= (= lt!1850682 lt!1850333) (= lambda!207373 lambda!207354))))

(assert (=> bs!1087005 (= (= lt!1850682 lt!1850333) (= lambda!207373 lambda!207371))))

(declare-fun bs!1087011 () Bool)

(assert (= bs!1087011 (and d!1490776 d!1490748)))

(assert (=> bs!1087011 (= (= lt!1850682 lt!1850622) (= lambda!207373 lambda!207356))))

(assert (=> d!1490776 true))

(declare-fun bm!327827 () Bool)

(declare-fun call!327833 () Unit!124149)

(assert (=> bm!327827 (= call!327833 (lemmaContainsAllItsOwnKeys!699 lt!1850333))))

(declare-fun e!2926364 () ListMap!4965)

(assert (=> b!4690748 (= e!2926364 lt!1850677)))

(declare-fun lt!1850687 () ListMap!4965)

(assert (=> b!4690748 (= lt!1850687 (+!2140 lt!1850333 (h!58662 lt!1850336)))))

(assert (=> b!4690748 (= lt!1850677 (addToMapMapFromBucket!1288 (t!359717 lt!1850336) (+!2140 lt!1850333 (h!58662 lt!1850336))))))

(declare-fun lt!1850676 () Unit!124149)

(assert (=> b!4690748 (= lt!1850676 call!327833)))

(assert (=> b!4690748 (forall!11326 (toList!5601 lt!1850333) lambda!207371)))

(declare-fun lt!1850673 () Unit!124149)

(assert (=> b!4690748 (= lt!1850673 lt!1850676)))

(assert (=> b!4690748 (forall!11326 (toList!5601 lt!1850687) lambda!207372)))

(declare-fun lt!1850674 () Unit!124149)

(declare-fun Unit!124179 () Unit!124149)

(assert (=> b!4690748 (= lt!1850674 Unit!124179)))

(assert (=> b!4690748 (forall!11326 (t!359717 lt!1850336) lambda!207372)))

(declare-fun lt!1850683 () Unit!124149)

(declare-fun Unit!124180 () Unit!124149)

(assert (=> b!4690748 (= lt!1850683 Unit!124180)))

(declare-fun lt!1850691 () Unit!124149)

(declare-fun Unit!124181 () Unit!124149)

(assert (=> b!4690748 (= lt!1850691 Unit!124181)))

(declare-fun lt!1850686 () Unit!124149)

(assert (=> b!4690748 (= lt!1850686 (forallContained!3433 (toList!5601 lt!1850687) lambda!207372 (h!58662 lt!1850336)))))

(assert (=> b!4690748 (contains!15618 lt!1850687 (_1!30203 (h!58662 lt!1850336)))))

(declare-fun lt!1850685 () Unit!124149)

(declare-fun Unit!124182 () Unit!124149)

(assert (=> b!4690748 (= lt!1850685 Unit!124182)))

(assert (=> b!4690748 (contains!15618 lt!1850677 (_1!30203 (h!58662 lt!1850336)))))

(declare-fun lt!1850689 () Unit!124149)

(declare-fun Unit!124183 () Unit!124149)

(assert (=> b!4690748 (= lt!1850689 Unit!124183)))

(declare-fun call!327832 () Bool)

(assert (=> b!4690748 call!327832))

(declare-fun lt!1850690 () Unit!124149)

(declare-fun Unit!124184 () Unit!124149)

(assert (=> b!4690748 (= lt!1850690 Unit!124184)))

(assert (=> b!4690748 (forall!11326 (toList!5601 lt!1850687) lambda!207372)))

(declare-fun lt!1850679 () Unit!124149)

(declare-fun Unit!124185 () Unit!124149)

(assert (=> b!4690748 (= lt!1850679 Unit!124185)))

(declare-fun lt!1850671 () Unit!124149)

(declare-fun Unit!124186 () Unit!124149)

(assert (=> b!4690748 (= lt!1850671 Unit!124186)))

(declare-fun lt!1850681 () Unit!124149)

(assert (=> b!4690748 (= lt!1850681 (addForallContainsKeyThenBeforeAdding!698 lt!1850333 lt!1850677 (_1!30203 (h!58662 lt!1850336)) (_2!30203 (h!58662 lt!1850336))))))

(declare-fun call!327834 () Bool)

(assert (=> b!4690748 call!327834))

(declare-fun lt!1850680 () Unit!124149)

(assert (=> b!4690748 (= lt!1850680 lt!1850681)))

(assert (=> b!4690748 (forall!11326 (toList!5601 lt!1850333) lambda!207372)))

(declare-fun lt!1850688 () Unit!124149)

(declare-fun Unit!124187 () Unit!124149)

(assert (=> b!4690748 (= lt!1850688 Unit!124187)))

(declare-fun res!1978594 () Bool)

(assert (=> b!4690748 (= res!1978594 (forall!11326 lt!1850336 lambda!207372))))

(declare-fun e!2926365 () Bool)

(assert (=> b!4690748 (=> (not res!1978594) (not e!2926365))))

(assert (=> b!4690748 e!2926365))

(declare-fun lt!1850678 () Unit!124149)

(declare-fun Unit!124188 () Unit!124149)

(assert (=> b!4690748 (= lt!1850678 Unit!124188)))

(declare-fun b!4690749 () Bool)

(declare-fun res!1978595 () Bool)

(declare-fun e!2926366 () Bool)

(assert (=> b!4690749 (=> (not res!1978595) (not e!2926366))))

(assert (=> b!4690749 (= res!1978595 (forall!11326 (toList!5601 lt!1850333) lambda!207373))))

(declare-fun bm!327828 () Bool)

(declare-fun c!802020 () Bool)

(assert (=> bm!327828 (= call!327832 (forall!11326 (ite c!802020 (toList!5601 lt!1850333) lt!1850336) (ite c!802020 lambda!207370 lambda!207372)))))

(declare-fun b!4690750 () Bool)

(assert (=> b!4690750 (= e!2926365 (forall!11326 (toList!5601 lt!1850333) lambda!207372))))

(assert (=> b!4690751 (= e!2926364 lt!1850333)))

(declare-fun lt!1850684 () Unit!124149)

(assert (=> b!4690751 (= lt!1850684 call!327833)))

(assert (=> b!4690751 call!327832))

(declare-fun lt!1850675 () Unit!124149)

(assert (=> b!4690751 (= lt!1850675 lt!1850684)))

(assert (=> b!4690751 call!327834))

(declare-fun lt!1850672 () Unit!124149)

(declare-fun Unit!124189 () Unit!124149)

(assert (=> b!4690751 (= lt!1850672 Unit!124189)))

(declare-fun b!4690752 () Bool)

(assert (=> b!4690752 (= e!2926366 (invariantList!1412 (toList!5601 lt!1850682)))))

(declare-fun bm!327829 () Bool)

(assert (=> bm!327829 (= call!327834 (forall!11326 (toList!5601 lt!1850333) (ite c!802020 lambda!207370 lambda!207372)))))

(assert (=> d!1490776 e!2926366))

(declare-fun res!1978596 () Bool)

(assert (=> d!1490776 (=> (not res!1978596) (not e!2926366))))

(assert (=> d!1490776 (= res!1978596 (forall!11326 lt!1850336 lambda!207373))))

(assert (=> d!1490776 (= lt!1850682 e!2926364)))

(assert (=> d!1490776 (= c!802020 ((_ is Nil!52415) lt!1850336))))

(assert (=> d!1490776 (noDuplicateKeys!1856 lt!1850336)))

(assert (=> d!1490776 (= (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850682)))

(assert (= (and d!1490776 c!802020) b!4690751))

(assert (= (and d!1490776 (not c!802020)) b!4690748))

(assert (= (and b!4690748 res!1978594) b!4690750))

(assert (= (or b!4690751 b!4690748) bm!327827))

(assert (= (or b!4690751 b!4690748) bm!327828))

(assert (= (or b!4690751 b!4690748) bm!327829))

(assert (= (and d!1490776 res!1978596) b!4690749))

(assert (= (and b!4690749 res!1978595) b!4690752))

(declare-fun m!5593421 () Bool)

(assert (=> b!4690752 m!5593421))

(declare-fun m!5593423 () Bool)

(assert (=> bm!327828 m!5593423))

(declare-fun m!5593425 () Bool)

(assert (=> b!4690749 m!5593425))

(declare-fun m!5593427 () Bool)

(assert (=> b!4690748 m!5593427))

(declare-fun m!5593429 () Bool)

(assert (=> b!4690748 m!5593429))

(assert (=> b!4690748 m!5593427))

(declare-fun m!5593431 () Bool)

(assert (=> b!4690748 m!5593431))

(declare-fun m!5593433 () Bool)

(assert (=> b!4690748 m!5593433))

(declare-fun m!5593435 () Bool)

(assert (=> b!4690748 m!5593435))

(declare-fun m!5593437 () Bool)

(assert (=> b!4690748 m!5593437))

(declare-fun m!5593439 () Bool)

(assert (=> b!4690748 m!5593439))

(declare-fun m!5593441 () Bool)

(assert (=> b!4690748 m!5593441))

(declare-fun m!5593443 () Bool)

(assert (=> b!4690748 m!5593443))

(declare-fun m!5593445 () Bool)

(assert (=> b!4690748 m!5593445))

(assert (=> b!4690748 m!5593431))

(declare-fun m!5593447 () Bool)

(assert (=> b!4690748 m!5593447))

(declare-fun m!5593449 () Bool)

(assert (=> d!1490776 m!5593449))

(declare-fun m!5593451 () Bool)

(assert (=> d!1490776 m!5593451))

(assert (=> bm!327827 m!5593327))

(declare-fun m!5593453 () Bool)

(assert (=> bm!327829 m!5593453))

(assert (=> b!4690750 m!5593437))

(assert (=> b!4690447 d!1490776))

(declare-fun bs!1087012 () Bool)

(declare-fun b!4690770 () Bool)

(assert (= bs!1087012 (and b!4690770 b!4690748)))

(declare-fun lambda!207374 () Int)

(assert (=> bs!1087012 (= (= lt!1850333 lt!1850677) (= lambda!207374 lambda!207372))))

(declare-fun bs!1087013 () Bool)

(assert (= bs!1087013 (and b!4690770 d!1490740)))

(assert (=> bs!1087013 (not (= lambda!207374 lambda!207297))))

(declare-fun bs!1087014 () Bool)

(assert (= bs!1087014 (and b!4690770 d!1490728)))

(assert (=> bs!1087014 (not (= lambda!207374 lambda!207286))))

(declare-fun bs!1087015 () Bool)

(assert (= bs!1087015 (and b!4690770 b!4690714)))

(assert (=> bs!1087015 (= (= lt!1850333 lt!1850617) (= lambda!207374 lambda!207355))))

(declare-fun bs!1087016 () Bool)

(assert (= bs!1087016 (and b!4690770 b!4690751)))

(assert (=> bs!1087016 (= lambda!207374 lambda!207370)))

(assert (=> bs!1087015 (= lambda!207374 lambda!207354)))

(assert (=> bs!1087012 (= lambda!207374 lambda!207371)))

(declare-fun bs!1087017 () Bool)

(assert (= bs!1087017 (and b!4690770 d!1490748)))

(assert (=> bs!1087017 (= (= lt!1850333 lt!1850622) (= lambda!207374 lambda!207356))))

(declare-fun bs!1087018 () Bool)

(assert (= bs!1087018 (and b!4690770 d!1490776)))

(assert (=> bs!1087018 (= (= lt!1850333 lt!1850682) (= lambda!207374 lambda!207373))))

(declare-fun bs!1087019 () Bool)

(assert (= bs!1087019 (and b!4690770 b!4690717)))

(assert (=> bs!1087019 (= lambda!207374 lambda!207351)))

(assert (=> b!4690770 true))

(declare-fun bs!1087020 () Bool)

(declare-fun b!4690767 () Bool)

(assert (= bs!1087020 (and b!4690767 b!4690748)))

(declare-fun lambda!207375 () Int)

(assert (=> bs!1087020 (= (= lt!1850333 lt!1850677) (= lambda!207375 lambda!207372))))

(declare-fun bs!1087021 () Bool)

(assert (= bs!1087021 (and b!4690767 d!1490740)))

(assert (=> bs!1087021 (not (= lambda!207375 lambda!207297))))

(declare-fun bs!1087022 () Bool)

(assert (= bs!1087022 (and b!4690767 d!1490728)))

(assert (=> bs!1087022 (not (= lambda!207375 lambda!207286))))

(declare-fun bs!1087023 () Bool)

(assert (= bs!1087023 (and b!4690767 b!4690714)))

(assert (=> bs!1087023 (= (= lt!1850333 lt!1850617) (= lambda!207375 lambda!207355))))

(declare-fun bs!1087024 () Bool)

(assert (= bs!1087024 (and b!4690767 b!4690751)))

(assert (=> bs!1087024 (= lambda!207375 lambda!207370)))

(declare-fun bs!1087025 () Bool)

(assert (= bs!1087025 (and b!4690767 b!4690770)))

(assert (=> bs!1087025 (= lambda!207375 lambda!207374)))

(assert (=> bs!1087023 (= lambda!207375 lambda!207354)))

(assert (=> bs!1087020 (= lambda!207375 lambda!207371)))

(declare-fun bs!1087026 () Bool)

(assert (= bs!1087026 (and b!4690767 d!1490748)))

(assert (=> bs!1087026 (= (= lt!1850333 lt!1850622) (= lambda!207375 lambda!207356))))

(declare-fun bs!1087027 () Bool)

(assert (= bs!1087027 (and b!4690767 d!1490776)))

(assert (=> bs!1087027 (= (= lt!1850333 lt!1850682) (= lambda!207375 lambda!207373))))

(declare-fun bs!1087028 () Bool)

(assert (= bs!1087028 (and b!4690767 b!4690717)))

(assert (=> bs!1087028 (= lambda!207375 lambda!207351)))

(assert (=> b!4690767 true))

(declare-fun lambda!207376 () Int)

(declare-fun lt!1850700 () ListMap!4965)

(assert (=> bs!1087020 (= (= lt!1850700 lt!1850677) (= lambda!207376 lambda!207372))))

(assert (=> bs!1087021 (not (= lambda!207376 lambda!207297))))

(assert (=> bs!1087022 (not (= lambda!207376 lambda!207286))))

(assert (=> bs!1087023 (= (= lt!1850700 lt!1850617) (= lambda!207376 lambda!207355))))

(assert (=> bs!1087024 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207370))))

(assert (=> bs!1087025 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207374))))

(assert (=> b!4690767 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207375))))

(assert (=> bs!1087023 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207354))))

(assert (=> bs!1087020 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207371))))

(assert (=> bs!1087026 (= (= lt!1850700 lt!1850622) (= lambda!207376 lambda!207356))))

(assert (=> bs!1087027 (= (= lt!1850700 lt!1850682) (= lambda!207376 lambda!207373))))

(assert (=> bs!1087028 (= (= lt!1850700 lt!1850333) (= lambda!207376 lambda!207351))))

(assert (=> b!4690767 true))

(declare-fun bs!1087029 () Bool)

(declare-fun d!1490782 () Bool)

(assert (= bs!1087029 (and d!1490782 b!4690748)))

(declare-fun lt!1850705 () ListMap!4965)

(declare-fun lambda!207377 () Int)

(assert (=> bs!1087029 (= (= lt!1850705 lt!1850677) (= lambda!207377 lambda!207372))))

(declare-fun bs!1087031 () Bool)

(assert (= bs!1087031 (and d!1490782 d!1490740)))

(assert (=> bs!1087031 (not (= lambda!207377 lambda!207297))))

(declare-fun bs!1087032 () Bool)

(assert (= bs!1087032 (and d!1490782 b!4690714)))

(assert (=> bs!1087032 (= (= lt!1850705 lt!1850617) (= lambda!207377 lambda!207355))))

(declare-fun bs!1087033 () Bool)

(assert (= bs!1087033 (and d!1490782 b!4690751)))

(assert (=> bs!1087033 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207370))))

(declare-fun bs!1087034 () Bool)

(assert (= bs!1087034 (and d!1490782 b!4690770)))

(assert (=> bs!1087034 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207374))))

(declare-fun bs!1087035 () Bool)

(assert (= bs!1087035 (and d!1490782 b!4690767)))

(assert (=> bs!1087035 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207375))))

(assert (=> bs!1087032 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207354))))

(assert (=> bs!1087029 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207371))))

(declare-fun bs!1087036 () Bool)

(assert (= bs!1087036 (and d!1490782 d!1490748)))

(assert (=> bs!1087036 (= (= lt!1850705 lt!1850622) (= lambda!207377 lambda!207356))))

(assert (=> bs!1087035 (= (= lt!1850705 lt!1850700) (= lambda!207377 lambda!207376))))

(declare-fun bs!1087037 () Bool)

(assert (= bs!1087037 (and d!1490782 d!1490728)))

(assert (=> bs!1087037 (not (= lambda!207377 lambda!207286))))

(declare-fun bs!1087038 () Bool)

(assert (= bs!1087038 (and d!1490782 d!1490776)))

(assert (=> bs!1087038 (= (= lt!1850705 lt!1850682) (= lambda!207377 lambda!207373))))

(declare-fun bs!1087039 () Bool)

(assert (= bs!1087039 (and d!1490782 b!4690717)))

(assert (=> bs!1087039 (= (= lt!1850705 lt!1850333) (= lambda!207377 lambda!207351))))

(assert (=> d!1490782 true))

(declare-fun bm!327830 () Bool)

(declare-fun call!327836 () Unit!124149)

(assert (=> bm!327830 (= call!327836 (lemmaContainsAllItsOwnKeys!699 lt!1850333))))

(declare-fun e!2926377 () ListMap!4965)

(assert (=> b!4690767 (= e!2926377 lt!1850700)))

(declare-fun lt!1850710 () ListMap!4965)

(assert (=> b!4690767 (= lt!1850710 (+!2140 lt!1850333 (h!58662 (Cons!52415 lt!1850328 lt!1850342))))))

(assert (=> b!4690767 (= lt!1850700 (addToMapMapFromBucket!1288 (t!359717 (Cons!52415 lt!1850328 lt!1850342)) (+!2140 lt!1850333 (h!58662 (Cons!52415 lt!1850328 lt!1850342)))))))

(declare-fun lt!1850699 () Unit!124149)

(assert (=> b!4690767 (= lt!1850699 call!327836)))

(assert (=> b!4690767 (forall!11326 (toList!5601 lt!1850333) lambda!207375)))

(declare-fun lt!1850696 () Unit!124149)

(assert (=> b!4690767 (= lt!1850696 lt!1850699)))

(assert (=> b!4690767 (forall!11326 (toList!5601 lt!1850710) lambda!207376)))

(declare-fun lt!1850697 () Unit!124149)

(declare-fun Unit!124190 () Unit!124149)

(assert (=> b!4690767 (= lt!1850697 Unit!124190)))

(assert (=> b!4690767 (forall!11326 (t!359717 (Cons!52415 lt!1850328 lt!1850342)) lambda!207376)))

(declare-fun lt!1850706 () Unit!124149)

(declare-fun Unit!124191 () Unit!124149)

(assert (=> b!4690767 (= lt!1850706 Unit!124191)))

(declare-fun lt!1850714 () Unit!124149)

(declare-fun Unit!124192 () Unit!124149)

(assert (=> b!4690767 (= lt!1850714 Unit!124192)))

(declare-fun lt!1850709 () Unit!124149)

(assert (=> b!4690767 (= lt!1850709 (forallContained!3433 (toList!5601 lt!1850710) lambda!207376 (h!58662 (Cons!52415 lt!1850328 lt!1850342))))))

(assert (=> b!4690767 (contains!15618 lt!1850710 (_1!30203 (h!58662 (Cons!52415 lt!1850328 lt!1850342))))))

(declare-fun lt!1850708 () Unit!124149)

(declare-fun Unit!124193 () Unit!124149)

(assert (=> b!4690767 (= lt!1850708 Unit!124193)))

(assert (=> b!4690767 (contains!15618 lt!1850700 (_1!30203 (h!58662 (Cons!52415 lt!1850328 lt!1850342))))))

(declare-fun lt!1850712 () Unit!124149)

(declare-fun Unit!124194 () Unit!124149)

(assert (=> b!4690767 (= lt!1850712 Unit!124194)))

(declare-fun call!327835 () Bool)

(assert (=> b!4690767 call!327835))

(declare-fun lt!1850713 () Unit!124149)

(declare-fun Unit!124195 () Unit!124149)

(assert (=> b!4690767 (= lt!1850713 Unit!124195)))

(assert (=> b!4690767 (forall!11326 (toList!5601 lt!1850710) lambda!207376)))

(declare-fun lt!1850702 () Unit!124149)

(declare-fun Unit!124196 () Unit!124149)

(assert (=> b!4690767 (= lt!1850702 Unit!124196)))

(declare-fun lt!1850694 () Unit!124149)

(declare-fun Unit!124197 () Unit!124149)

(assert (=> b!4690767 (= lt!1850694 Unit!124197)))

(declare-fun lt!1850704 () Unit!124149)

(assert (=> b!4690767 (= lt!1850704 (addForallContainsKeyThenBeforeAdding!698 lt!1850333 lt!1850700 (_1!30203 (h!58662 (Cons!52415 lt!1850328 lt!1850342))) (_2!30203 (h!58662 (Cons!52415 lt!1850328 lt!1850342)))))))

(declare-fun call!327837 () Bool)

(assert (=> b!4690767 call!327837))

(declare-fun lt!1850703 () Unit!124149)

(assert (=> b!4690767 (= lt!1850703 lt!1850704)))

(assert (=> b!4690767 (forall!11326 (toList!5601 lt!1850333) lambda!207376)))

(declare-fun lt!1850711 () Unit!124149)

(declare-fun Unit!124198 () Unit!124149)

(assert (=> b!4690767 (= lt!1850711 Unit!124198)))

(declare-fun res!1978603 () Bool)

(assert (=> b!4690767 (= res!1978603 (forall!11326 (Cons!52415 lt!1850328 lt!1850342) lambda!207376))))

(declare-fun e!2926378 () Bool)

(assert (=> b!4690767 (=> (not res!1978603) (not e!2926378))))

(assert (=> b!4690767 e!2926378))

(declare-fun lt!1850701 () Unit!124149)

(declare-fun Unit!124199 () Unit!124149)

(assert (=> b!4690767 (= lt!1850701 Unit!124199)))

(declare-fun b!4690768 () Bool)

(declare-fun res!1978604 () Bool)

(declare-fun e!2926379 () Bool)

(assert (=> b!4690768 (=> (not res!1978604) (not e!2926379))))

(assert (=> b!4690768 (= res!1978604 (forall!11326 (toList!5601 lt!1850333) lambda!207377))))

(declare-fun bm!327831 () Bool)

(declare-fun c!802025 () Bool)

(assert (=> bm!327831 (= call!327835 (forall!11326 (ite c!802025 (toList!5601 lt!1850333) (Cons!52415 lt!1850328 lt!1850342)) (ite c!802025 lambda!207374 lambda!207376)))))

(declare-fun b!4690769 () Bool)

(assert (=> b!4690769 (= e!2926378 (forall!11326 (toList!5601 lt!1850333) lambda!207376))))

(assert (=> b!4690770 (= e!2926377 lt!1850333)))

(declare-fun lt!1850707 () Unit!124149)

(assert (=> b!4690770 (= lt!1850707 call!327836)))

(assert (=> b!4690770 call!327835))

(declare-fun lt!1850698 () Unit!124149)

(assert (=> b!4690770 (= lt!1850698 lt!1850707)))

(assert (=> b!4690770 call!327837))

(declare-fun lt!1850695 () Unit!124149)

(declare-fun Unit!124200 () Unit!124149)

(assert (=> b!4690770 (= lt!1850695 Unit!124200)))

(declare-fun b!4690771 () Bool)

(assert (=> b!4690771 (= e!2926379 (invariantList!1412 (toList!5601 lt!1850705)))))

(declare-fun bm!327832 () Bool)

(assert (=> bm!327832 (= call!327837 (forall!11326 (toList!5601 lt!1850333) (ite c!802025 lambda!207374 lambda!207376)))))

(assert (=> d!1490782 e!2926379))

(declare-fun res!1978605 () Bool)

(assert (=> d!1490782 (=> (not res!1978605) (not e!2926379))))

(assert (=> d!1490782 (= res!1978605 (forall!11326 (Cons!52415 lt!1850328 lt!1850342) lambda!207377))))

(assert (=> d!1490782 (= lt!1850705 e!2926377)))

(assert (=> d!1490782 (= c!802025 ((_ is Nil!52415) (Cons!52415 lt!1850328 lt!1850342)))))

(assert (=> d!1490782 (noDuplicateKeys!1856 (Cons!52415 lt!1850328 lt!1850342))))

(assert (=> d!1490782 (= (addToMapMapFromBucket!1288 (Cons!52415 lt!1850328 lt!1850342) lt!1850333) lt!1850705)))

(assert (= (and d!1490782 c!802025) b!4690770))

(assert (= (and d!1490782 (not c!802025)) b!4690767))

(assert (= (and b!4690767 res!1978603) b!4690769))

(assert (= (or b!4690770 b!4690767) bm!327830))

(assert (= (or b!4690770 b!4690767) bm!327831))

(assert (= (or b!4690770 b!4690767) bm!327832))

(assert (= (and d!1490782 res!1978605) b!4690768))

(assert (= (and b!4690768 res!1978604) b!4690771))

(declare-fun m!5593473 () Bool)

(assert (=> b!4690771 m!5593473))

(declare-fun m!5593475 () Bool)

(assert (=> bm!327831 m!5593475))

(declare-fun m!5593477 () Bool)

(assert (=> b!4690768 m!5593477))

(declare-fun m!5593479 () Bool)

(assert (=> b!4690767 m!5593479))

(declare-fun m!5593481 () Bool)

(assert (=> b!4690767 m!5593481))

(assert (=> b!4690767 m!5593479))

(declare-fun m!5593483 () Bool)

(assert (=> b!4690767 m!5593483))

(declare-fun m!5593485 () Bool)

(assert (=> b!4690767 m!5593485))

(declare-fun m!5593487 () Bool)

(assert (=> b!4690767 m!5593487))

(declare-fun m!5593489 () Bool)

(assert (=> b!4690767 m!5593489))

(declare-fun m!5593491 () Bool)

(assert (=> b!4690767 m!5593491))

(declare-fun m!5593493 () Bool)

(assert (=> b!4690767 m!5593493))

(declare-fun m!5593495 () Bool)

(assert (=> b!4690767 m!5593495))

(declare-fun m!5593497 () Bool)

(assert (=> b!4690767 m!5593497))

(assert (=> b!4690767 m!5593483))

(declare-fun m!5593499 () Bool)

(assert (=> b!4690767 m!5593499))

(declare-fun m!5593501 () Bool)

(assert (=> d!1490782 m!5593501))

(declare-fun m!5593503 () Bool)

(assert (=> d!1490782 m!5593503))

(assert (=> bm!327830 m!5593327))

(declare-fun m!5593505 () Bool)

(assert (=> bm!327832 m!5593505))

(assert (=> b!4690769 m!5593489))

(assert (=> b!4690447 d!1490782))

(declare-fun d!1490800 () Bool)

(assert (=> d!1490800 (= (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850339 lt!1850336) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850339)) (= (content!9170 (toList!5601 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850339 lt!1850336) lt!1850333))) (content!9170 (toList!5601 (+!2140 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850339)))))))

(declare-fun bs!1087043 () Bool)

(assert (= bs!1087043 d!1490800))

(declare-fun m!5593507 () Bool)

(assert (=> bs!1087043 m!5593507))

(declare-fun m!5593509 () Bool)

(assert (=> bs!1087043 m!5593509))

(assert (=> b!4690447 d!1490800))

(declare-fun bs!1087045 () Bool)

(declare-fun d!1490802 () Bool)

(assert (= bs!1087045 (and d!1490802 d!1490732)))

(declare-fun lambda!207381 () Int)

(assert (=> bs!1087045 (= lambda!207381 lambda!207296)))

(declare-fun bs!1087046 () Bool)

(assert (= bs!1087046 (and d!1490802 d!1490758)))

(assert (=> bs!1087046 (= lambda!207381 lambda!207361)))

(declare-fun bs!1087047 () Bool)

(assert (= bs!1087047 (and d!1490802 start!474540)))

(assert (=> bs!1087047 (= lambda!207381 lambda!207267)))

(declare-fun bs!1087048 () Bool)

(assert (= bs!1087048 (and d!1490802 d!1490704)))

(assert (=> bs!1087048 (= lambda!207381 lambda!207283)))

(declare-fun bs!1087049 () Bool)

(assert (= bs!1087049 (and d!1490802 d!1490742)))

(assert (=> bs!1087049 (not (= lambda!207381 lambda!207300))))

(declare-fun bs!1087050 () Bool)

(assert (= bs!1087050 (and d!1490802 d!1490702)))

(assert (=> bs!1087050 (= lambda!207381 lambda!207270)))

(declare-fun lt!1850718 () ListMap!4965)

(assert (=> d!1490802 (invariantList!1412 (toList!5601 lt!1850718))))

(declare-fun e!2926392 () ListMap!4965)

(assert (=> d!1490802 (= lt!1850718 e!2926392)))

(declare-fun c!802032 () Bool)

(assert (=> d!1490802 (= c!802032 ((_ is Cons!52416) (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023)))))))

(assert (=> d!1490802 (forall!11325 (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023))) lambda!207381)))

(assert (=> d!1490802 (= (extractMap!1882 (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023)))) lt!1850718)))

(declare-fun b!4690794 () Bool)

(assert (=> b!4690794 (= e!2926392 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023))))) (extractMap!1882 (t!359718 (Cons!52416 lt!1850348 (t!359718 (toList!5602 lm!2023)))))))))

(declare-fun b!4690795 () Bool)

(assert (=> b!4690795 (= e!2926392 (ListMap!4966 Nil!52415))))

(assert (= (and d!1490802 c!802032) b!4690794))

(assert (= (and d!1490802 (not c!802032)) b!4690795))

(declare-fun m!5593517 () Bool)

(assert (=> d!1490802 m!5593517))

(declare-fun m!5593519 () Bool)

(assert (=> d!1490802 m!5593519))

(declare-fun m!5593523 () Bool)

(assert (=> b!4690794 m!5593523))

(assert (=> b!4690794 m!5593523))

(declare-fun m!5593525 () Bool)

(assert (=> b!4690794 m!5593525))

(assert (=> b!4690447 d!1490802))

(declare-fun d!1490810 () Bool)

(assert (=> d!1490810 (= (head!9975 newBucket!218) (h!58662 newBucket!218))))

(assert (=> b!4690447 d!1490810))

(declare-fun d!1490814 () Bool)

(assert (=> d!1490814 (= (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850328 lt!1850342) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850328)) (= (content!9170 (toList!5601 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850328 lt!1850342) lt!1850333))) (content!9170 (toList!5601 (+!2140 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850328)))))))

(declare-fun bs!1087055 () Bool)

(assert (= bs!1087055 d!1490814))

(declare-fun m!5593531 () Bool)

(assert (=> bs!1087055 m!5593531))

(declare-fun m!5593533 () Bool)

(assert (=> bs!1087055 m!5593533))

(assert (=> b!4690447 d!1490814))

(declare-fun bs!1087059 () Bool)

(declare-fun d!1490816 () Bool)

(assert (= bs!1087059 (and d!1490816 d!1490732)))

(declare-fun lambda!207383 () Int)

(assert (=> bs!1087059 (= lambda!207383 lambda!207296)))

(declare-fun bs!1087060 () Bool)

(assert (= bs!1087060 (and d!1490816 d!1490758)))

(assert (=> bs!1087060 (= lambda!207383 lambda!207361)))

(declare-fun bs!1087061 () Bool)

(assert (= bs!1087061 (and d!1490816 d!1490704)))

(assert (=> bs!1087061 (= lambda!207383 lambda!207283)))

(declare-fun bs!1087062 () Bool)

(assert (= bs!1087062 (and d!1490816 d!1490742)))

(assert (=> bs!1087062 (not (= lambda!207383 lambda!207300))))

(declare-fun bs!1087063 () Bool)

(assert (= bs!1087063 (and d!1490816 d!1490702)))

(assert (=> bs!1087063 (= lambda!207383 lambda!207270)))

(declare-fun bs!1087064 () Bool)

(assert (= bs!1087064 (and d!1490816 d!1490802)))

(assert (=> bs!1087064 (= lambda!207383 lambda!207381)))

(declare-fun bs!1087065 () Bool)

(assert (= bs!1087065 (and d!1490816 start!474540)))

(assert (=> bs!1087065 (= lambda!207383 lambda!207267)))

(declare-fun lt!1850720 () ListMap!4965)

(assert (=> d!1490816 (invariantList!1412 (toList!5601 lt!1850720))))

(declare-fun e!2926398 () ListMap!4965)

(assert (=> d!1490816 (= lt!1850720 e!2926398)))

(declare-fun c!802034 () Bool)

(assert (=> d!1490816 (= c!802034 ((_ is Cons!52416) (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023)))))))

(assert (=> d!1490816 (forall!11325 (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023))) lambda!207383)))

(assert (=> d!1490816 (= (extractMap!1882 (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023)))) lt!1850720)))

(declare-fun b!4690802 () Bool)

(assert (=> b!4690802 (= e!2926398 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023))))) (extractMap!1882 (t!359718 (Cons!52416 (tuple2!53821 hash!405 lt!1850342) (t!359718 (toList!5602 lm!2023)))))))))

(declare-fun b!4690803 () Bool)

(assert (=> b!4690803 (= e!2926398 (ListMap!4966 Nil!52415))))

(assert (= (and d!1490816 c!802034) b!4690802))

(assert (= (and d!1490816 (not c!802034)) b!4690803))

(declare-fun m!5593543 () Bool)

(assert (=> d!1490816 m!5593543))

(declare-fun m!5593545 () Bool)

(assert (=> d!1490816 m!5593545))

(declare-fun m!5593547 () Bool)

(assert (=> b!4690802 m!5593547))

(assert (=> b!4690802 m!5593547))

(declare-fun m!5593549 () Bool)

(assert (=> b!4690802 m!5593549))

(assert (=> b!4690447 d!1490816))

(declare-fun bs!1087073 () Bool)

(declare-fun b!4690809 () Bool)

(assert (= bs!1087073 (and b!4690809 b!4690748)))

(declare-fun lambda!207385 () Int)

(assert (=> bs!1087073 (= (= lt!1850333 lt!1850677) (= lambda!207385 lambda!207372))))

(declare-fun bs!1087074 () Bool)

(assert (= bs!1087074 (and b!4690809 d!1490740)))

(assert (=> bs!1087074 (not (= lambda!207385 lambda!207297))))

(declare-fun bs!1087075 () Bool)

(assert (= bs!1087075 (and b!4690809 d!1490782)))

(assert (=> bs!1087075 (= (= lt!1850333 lt!1850705) (= lambda!207385 lambda!207377))))

(declare-fun bs!1087076 () Bool)

(assert (= bs!1087076 (and b!4690809 b!4690714)))

(assert (=> bs!1087076 (= (= lt!1850333 lt!1850617) (= lambda!207385 lambda!207355))))

(declare-fun bs!1087077 () Bool)

(assert (= bs!1087077 (and b!4690809 b!4690751)))

(assert (=> bs!1087077 (= lambda!207385 lambda!207370)))

(declare-fun bs!1087078 () Bool)

(assert (= bs!1087078 (and b!4690809 b!4690770)))

(assert (=> bs!1087078 (= lambda!207385 lambda!207374)))

(declare-fun bs!1087079 () Bool)

(assert (= bs!1087079 (and b!4690809 b!4690767)))

(assert (=> bs!1087079 (= lambda!207385 lambda!207375)))

(assert (=> bs!1087076 (= lambda!207385 lambda!207354)))

(assert (=> bs!1087073 (= lambda!207385 lambda!207371)))

(declare-fun bs!1087080 () Bool)

(assert (= bs!1087080 (and b!4690809 d!1490748)))

(assert (=> bs!1087080 (= (= lt!1850333 lt!1850622) (= lambda!207385 lambda!207356))))

(assert (=> bs!1087079 (= (= lt!1850333 lt!1850700) (= lambda!207385 lambda!207376))))

(declare-fun bs!1087081 () Bool)

(assert (= bs!1087081 (and b!4690809 d!1490728)))

(assert (=> bs!1087081 (not (= lambda!207385 lambda!207286))))

(declare-fun bs!1087082 () Bool)

(assert (= bs!1087082 (and b!4690809 d!1490776)))

(assert (=> bs!1087082 (= (= lt!1850333 lt!1850682) (= lambda!207385 lambda!207373))))

(declare-fun bs!1087083 () Bool)

(assert (= bs!1087083 (and b!4690809 b!4690717)))

(assert (=> bs!1087083 (= lambda!207385 lambda!207351)))

(assert (=> b!4690809 true))

(declare-fun bs!1087085 () Bool)

(declare-fun b!4690806 () Bool)

(assert (= bs!1087085 (and b!4690806 b!4690748)))

(declare-fun lambda!207387 () Int)

(assert (=> bs!1087085 (= (= lt!1850333 lt!1850677) (= lambda!207387 lambda!207372))))

(declare-fun bs!1087087 () Bool)

(assert (= bs!1087087 (and b!4690806 d!1490740)))

(assert (=> bs!1087087 (not (= lambda!207387 lambda!207297))))

(declare-fun bs!1087088 () Bool)

(assert (= bs!1087088 (and b!4690806 d!1490782)))

(assert (=> bs!1087088 (= (= lt!1850333 lt!1850705) (= lambda!207387 lambda!207377))))

(declare-fun bs!1087090 () Bool)

(assert (= bs!1087090 (and b!4690806 b!4690714)))

(assert (=> bs!1087090 (= (= lt!1850333 lt!1850617) (= lambda!207387 lambda!207355))))

(declare-fun bs!1087092 () Bool)

(assert (= bs!1087092 (and b!4690806 b!4690751)))

(assert (=> bs!1087092 (= lambda!207387 lambda!207370)))

(declare-fun bs!1087093 () Bool)

(assert (= bs!1087093 (and b!4690806 b!4690770)))

(assert (=> bs!1087093 (= lambda!207387 lambda!207374)))

(declare-fun bs!1087094 () Bool)

(assert (= bs!1087094 (and b!4690806 b!4690767)))

(assert (=> bs!1087094 (= lambda!207387 lambda!207375)))

(declare-fun bs!1087095 () Bool)

(assert (= bs!1087095 (and b!4690806 b!4690809)))

(assert (=> bs!1087095 (= lambda!207387 lambda!207385)))

(assert (=> bs!1087090 (= lambda!207387 lambda!207354)))

(assert (=> bs!1087085 (= lambda!207387 lambda!207371)))

(declare-fun bs!1087097 () Bool)

(assert (= bs!1087097 (and b!4690806 d!1490748)))

(assert (=> bs!1087097 (= (= lt!1850333 lt!1850622) (= lambda!207387 lambda!207356))))

(assert (=> bs!1087094 (= (= lt!1850333 lt!1850700) (= lambda!207387 lambda!207376))))

(declare-fun bs!1087100 () Bool)

(assert (= bs!1087100 (and b!4690806 d!1490728)))

(assert (=> bs!1087100 (not (= lambda!207387 lambda!207286))))

(declare-fun bs!1087101 () Bool)

(assert (= bs!1087101 (and b!4690806 d!1490776)))

(assert (=> bs!1087101 (= (= lt!1850333 lt!1850682) (= lambda!207387 lambda!207373))))

(declare-fun bs!1087103 () Bool)

(assert (= bs!1087103 (and b!4690806 b!4690717)))

(assert (=> bs!1087103 (= lambda!207387 lambda!207351)))

(assert (=> b!4690806 true))

(declare-fun lt!1850728 () ListMap!4965)

(declare-fun lambda!207389 () Int)

(assert (=> bs!1087085 (= (= lt!1850728 lt!1850677) (= lambda!207389 lambda!207372))))

(assert (=> bs!1087087 (not (= lambda!207389 lambda!207297))))

(assert (=> bs!1087088 (= (= lt!1850728 lt!1850705) (= lambda!207389 lambda!207377))))

(assert (=> bs!1087090 (= (= lt!1850728 lt!1850617) (= lambda!207389 lambda!207355))))

(assert (=> bs!1087092 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207370))))

(assert (=> bs!1087093 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207374))))

(assert (=> bs!1087094 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207375))))

(assert (=> bs!1087095 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207385))))

(assert (=> bs!1087090 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207354))))

(assert (=> bs!1087097 (= (= lt!1850728 lt!1850622) (= lambda!207389 lambda!207356))))

(assert (=> bs!1087094 (= (= lt!1850728 lt!1850700) (= lambda!207389 lambda!207376))))

(assert (=> bs!1087100 (not (= lambda!207389 lambda!207286))))

(assert (=> bs!1087101 (= (= lt!1850728 lt!1850682) (= lambda!207389 lambda!207373))))

(assert (=> bs!1087103 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207351))))

(assert (=> b!4690806 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207387))))

(assert (=> bs!1087085 (= (= lt!1850728 lt!1850333) (= lambda!207389 lambda!207371))))

(assert (=> b!4690806 true))

(declare-fun bs!1087111 () Bool)

(declare-fun d!1490820 () Bool)

(assert (= bs!1087111 (and d!1490820 b!4690748)))

(declare-fun lt!1850733 () ListMap!4965)

(declare-fun lambda!207392 () Int)

(assert (=> bs!1087111 (= (= lt!1850733 lt!1850677) (= lambda!207392 lambda!207372))))

(declare-fun bs!1087112 () Bool)

(assert (= bs!1087112 (and d!1490820 d!1490740)))

(assert (=> bs!1087112 (not (= lambda!207392 lambda!207297))))

(declare-fun bs!1087113 () Bool)

(assert (= bs!1087113 (and d!1490820 d!1490782)))

(assert (=> bs!1087113 (= (= lt!1850733 lt!1850705) (= lambda!207392 lambda!207377))))

(declare-fun bs!1087114 () Bool)

(assert (= bs!1087114 (and d!1490820 b!4690714)))

(assert (=> bs!1087114 (= (= lt!1850733 lt!1850617) (= lambda!207392 lambda!207355))))

(declare-fun bs!1087115 () Bool)

(assert (= bs!1087115 (and d!1490820 b!4690751)))

(assert (=> bs!1087115 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207370))))

(declare-fun bs!1087116 () Bool)

(assert (= bs!1087116 (and d!1490820 b!4690770)))

(assert (=> bs!1087116 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207374))))

(declare-fun bs!1087117 () Bool)

(assert (= bs!1087117 (and d!1490820 b!4690767)))

(assert (=> bs!1087117 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207375))))

(declare-fun bs!1087118 () Bool)

(assert (= bs!1087118 (and d!1490820 b!4690809)))

(assert (=> bs!1087118 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207385))))

(declare-fun bs!1087119 () Bool)

(assert (= bs!1087119 (and d!1490820 b!4690806)))

(assert (=> bs!1087119 (= (= lt!1850733 lt!1850728) (= lambda!207392 lambda!207389))))

(assert (=> bs!1087114 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207354))))

(declare-fun bs!1087120 () Bool)

(assert (= bs!1087120 (and d!1490820 d!1490748)))

(assert (=> bs!1087120 (= (= lt!1850733 lt!1850622) (= lambda!207392 lambda!207356))))

(assert (=> bs!1087117 (= (= lt!1850733 lt!1850700) (= lambda!207392 lambda!207376))))

(declare-fun bs!1087121 () Bool)

(assert (= bs!1087121 (and d!1490820 d!1490728)))

(assert (=> bs!1087121 (not (= lambda!207392 lambda!207286))))

(declare-fun bs!1087122 () Bool)

(assert (= bs!1087122 (and d!1490820 d!1490776)))

(assert (=> bs!1087122 (= (= lt!1850733 lt!1850682) (= lambda!207392 lambda!207373))))

(declare-fun bs!1087123 () Bool)

(assert (= bs!1087123 (and d!1490820 b!4690717)))

(assert (=> bs!1087123 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207351))))

(assert (=> bs!1087119 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207387))))

(assert (=> bs!1087111 (= (= lt!1850733 lt!1850333) (= lambda!207392 lambda!207371))))

(assert (=> d!1490820 true))

(declare-fun bm!327833 () Bool)

(declare-fun call!327839 () Unit!124149)

(assert (=> bm!327833 (= call!327839 (lemmaContainsAllItsOwnKeys!699 lt!1850333))))

(declare-fun e!2926400 () ListMap!4965)

(assert (=> b!4690806 (= e!2926400 lt!1850728)))

(declare-fun lt!1850738 () ListMap!4965)

(assert (=> b!4690806 (= lt!1850738 (+!2140 lt!1850333 (h!58662 lt!1850342)))))

(assert (=> b!4690806 (= lt!1850728 (addToMapMapFromBucket!1288 (t!359717 lt!1850342) (+!2140 lt!1850333 (h!58662 lt!1850342))))))

(declare-fun lt!1850727 () Unit!124149)

(assert (=> b!4690806 (= lt!1850727 call!327839)))

(assert (=> b!4690806 (forall!11326 (toList!5601 lt!1850333) lambda!207387)))

(declare-fun lt!1850724 () Unit!124149)

(assert (=> b!4690806 (= lt!1850724 lt!1850727)))

(assert (=> b!4690806 (forall!11326 (toList!5601 lt!1850738) lambda!207389)))

(declare-fun lt!1850725 () Unit!124149)

(declare-fun Unit!124220 () Unit!124149)

(assert (=> b!4690806 (= lt!1850725 Unit!124220)))

(assert (=> b!4690806 (forall!11326 (t!359717 lt!1850342) lambda!207389)))

(declare-fun lt!1850734 () Unit!124149)

(declare-fun Unit!124222 () Unit!124149)

(assert (=> b!4690806 (= lt!1850734 Unit!124222)))

(declare-fun lt!1850742 () Unit!124149)

(declare-fun Unit!124223 () Unit!124149)

(assert (=> b!4690806 (= lt!1850742 Unit!124223)))

(declare-fun lt!1850737 () Unit!124149)

(assert (=> b!4690806 (= lt!1850737 (forallContained!3433 (toList!5601 lt!1850738) lambda!207389 (h!58662 lt!1850342)))))

(assert (=> b!4690806 (contains!15618 lt!1850738 (_1!30203 (h!58662 lt!1850342)))))

(declare-fun lt!1850736 () Unit!124149)

(declare-fun Unit!124225 () Unit!124149)

(assert (=> b!4690806 (= lt!1850736 Unit!124225)))

(assert (=> b!4690806 (contains!15618 lt!1850728 (_1!30203 (h!58662 lt!1850342)))))

(declare-fun lt!1850740 () Unit!124149)

(declare-fun Unit!124226 () Unit!124149)

(assert (=> b!4690806 (= lt!1850740 Unit!124226)))

(declare-fun call!327838 () Bool)

(assert (=> b!4690806 call!327838))

(declare-fun lt!1850741 () Unit!124149)

(declare-fun Unit!124228 () Unit!124149)

(assert (=> b!4690806 (= lt!1850741 Unit!124228)))

(assert (=> b!4690806 (forall!11326 (toList!5601 lt!1850738) lambda!207389)))

(declare-fun lt!1850730 () Unit!124149)

(declare-fun Unit!124229 () Unit!124149)

(assert (=> b!4690806 (= lt!1850730 Unit!124229)))

(declare-fun lt!1850722 () Unit!124149)

(declare-fun Unit!124230 () Unit!124149)

(assert (=> b!4690806 (= lt!1850722 Unit!124230)))

(declare-fun lt!1850732 () Unit!124149)

(assert (=> b!4690806 (= lt!1850732 (addForallContainsKeyThenBeforeAdding!698 lt!1850333 lt!1850728 (_1!30203 (h!58662 lt!1850342)) (_2!30203 (h!58662 lt!1850342))))))

(declare-fun call!327840 () Bool)

(assert (=> b!4690806 call!327840))

(declare-fun lt!1850731 () Unit!124149)

(assert (=> b!4690806 (= lt!1850731 lt!1850732)))

(assert (=> b!4690806 (forall!11326 (toList!5601 lt!1850333) lambda!207389)))

(declare-fun lt!1850739 () Unit!124149)

(declare-fun Unit!124231 () Unit!124149)

(assert (=> b!4690806 (= lt!1850739 Unit!124231)))

(declare-fun res!1978616 () Bool)

(assert (=> b!4690806 (= res!1978616 (forall!11326 lt!1850342 lambda!207389))))

(declare-fun e!2926401 () Bool)

(assert (=> b!4690806 (=> (not res!1978616) (not e!2926401))))

(assert (=> b!4690806 e!2926401))

(declare-fun lt!1850729 () Unit!124149)

(declare-fun Unit!124232 () Unit!124149)

(assert (=> b!4690806 (= lt!1850729 Unit!124232)))

(declare-fun b!4690807 () Bool)

(declare-fun res!1978617 () Bool)

(declare-fun e!2926402 () Bool)

(assert (=> b!4690807 (=> (not res!1978617) (not e!2926402))))

(assert (=> b!4690807 (= res!1978617 (forall!11326 (toList!5601 lt!1850333) lambda!207392))))

(declare-fun c!802036 () Bool)

(declare-fun bm!327834 () Bool)

(assert (=> bm!327834 (= call!327838 (forall!11326 (ite c!802036 (toList!5601 lt!1850333) lt!1850342) (ite c!802036 lambda!207385 lambda!207389)))))

(declare-fun b!4690808 () Bool)

(assert (=> b!4690808 (= e!2926401 (forall!11326 (toList!5601 lt!1850333) lambda!207389))))

(assert (=> b!4690809 (= e!2926400 lt!1850333)))

(declare-fun lt!1850735 () Unit!124149)

(assert (=> b!4690809 (= lt!1850735 call!327839)))

(assert (=> b!4690809 call!327838))

(declare-fun lt!1850726 () Unit!124149)

(assert (=> b!4690809 (= lt!1850726 lt!1850735)))

(assert (=> b!4690809 call!327840))

(declare-fun lt!1850723 () Unit!124149)

(declare-fun Unit!124233 () Unit!124149)

(assert (=> b!4690809 (= lt!1850723 Unit!124233)))

(declare-fun b!4690810 () Bool)

(assert (=> b!4690810 (= e!2926402 (invariantList!1412 (toList!5601 lt!1850733)))))

(declare-fun bm!327835 () Bool)

(assert (=> bm!327835 (= call!327840 (forall!11326 (toList!5601 lt!1850333) (ite c!802036 lambda!207385 lambda!207389)))))

(assert (=> d!1490820 e!2926402))

(declare-fun res!1978618 () Bool)

(assert (=> d!1490820 (=> (not res!1978618) (not e!2926402))))

(assert (=> d!1490820 (= res!1978618 (forall!11326 lt!1850342 lambda!207392))))

(assert (=> d!1490820 (= lt!1850733 e!2926400)))

(assert (=> d!1490820 (= c!802036 ((_ is Nil!52415) lt!1850342))))

(assert (=> d!1490820 (noDuplicateKeys!1856 lt!1850342)))

(assert (=> d!1490820 (= (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850733)))

(assert (= (and d!1490820 c!802036) b!4690809))

(assert (= (and d!1490820 (not c!802036)) b!4690806))

(assert (= (and b!4690806 res!1978616) b!4690808))

(assert (= (or b!4690809 b!4690806) bm!327833))

(assert (= (or b!4690809 b!4690806) bm!327834))

(assert (= (or b!4690809 b!4690806) bm!327835))

(assert (= (and d!1490820 res!1978618) b!4690807))

(assert (= (and b!4690807 res!1978617) b!4690810))

(declare-fun m!5593603 () Bool)

(assert (=> b!4690810 m!5593603))

(declare-fun m!5593605 () Bool)

(assert (=> bm!327834 m!5593605))

(declare-fun m!5593607 () Bool)

(assert (=> b!4690807 m!5593607))

(declare-fun m!5593609 () Bool)

(assert (=> b!4690806 m!5593609))

(declare-fun m!5593611 () Bool)

(assert (=> b!4690806 m!5593611))

(assert (=> b!4690806 m!5593609))

(declare-fun m!5593613 () Bool)

(assert (=> b!4690806 m!5593613))

(declare-fun m!5593615 () Bool)

(assert (=> b!4690806 m!5593615))

(declare-fun m!5593617 () Bool)

(assert (=> b!4690806 m!5593617))

(declare-fun m!5593619 () Bool)

(assert (=> b!4690806 m!5593619))

(declare-fun m!5593621 () Bool)

(assert (=> b!4690806 m!5593621))

(declare-fun m!5593623 () Bool)

(assert (=> b!4690806 m!5593623))

(declare-fun m!5593625 () Bool)

(assert (=> b!4690806 m!5593625))

(declare-fun m!5593627 () Bool)

(assert (=> b!4690806 m!5593627))

(assert (=> b!4690806 m!5593613))

(declare-fun m!5593629 () Bool)

(assert (=> b!4690806 m!5593629))

(declare-fun m!5593631 () Bool)

(assert (=> d!1490820 m!5593631))

(assert (=> d!1490820 m!5593061))

(assert (=> bm!327833 m!5593327))

(declare-fun m!5593633 () Bool)

(assert (=> bm!327835 m!5593633))

(assert (=> b!4690808 m!5593619))

(assert (=> b!4690447 d!1490820))

(declare-fun d!1490830 () Bool)

(assert (=> d!1490830 (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850328 lt!1850342) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850342 lt!1850333) lt!1850328))))

(declare-fun lt!1850773 () Unit!124149)

(declare-fun choose!32603 (tuple2!53818 List!52539 ListMap!4965) Unit!124149)

(assert (=> d!1490830 (= lt!1850773 (choose!32603 lt!1850328 lt!1850342 lt!1850333))))

(assert (=> d!1490830 (noDuplicateKeys!1856 lt!1850342)))

(assert (=> d!1490830 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!264 lt!1850328 lt!1850342 lt!1850333) lt!1850773)))

(declare-fun bs!1087126 () Bool)

(assert (= bs!1087126 d!1490830))

(assert (=> bs!1087126 m!5592979))

(assert (=> bs!1087126 m!5592981))

(assert (=> bs!1087126 m!5592983))

(assert (=> bs!1087126 m!5592979))

(declare-fun m!5593641 () Bool)

(assert (=> bs!1087126 m!5593641))

(assert (=> bs!1087126 m!5593061))

(assert (=> bs!1087126 m!5592975))

(assert (=> bs!1087126 m!5592975))

(assert (=> bs!1087126 m!5592981))

(assert (=> b!4690447 d!1490830))

(declare-fun d!1490836 () Bool)

(declare-fun e!2926410 () Bool)

(assert (=> d!1490836 e!2926410))

(declare-fun res!1978628 () Bool)

(assert (=> d!1490836 (=> (not res!1978628) (not e!2926410))))

(declare-fun lt!1850798 () ListMap!4965)

(assert (=> d!1490836 (= res!1978628 (contains!15618 lt!1850798 (_1!30203 lt!1850339)))))

(declare-fun lt!1850797 () List!52539)

(assert (=> d!1490836 (= lt!1850798 (ListMap!4966 lt!1850797))))

(declare-fun lt!1850795 () Unit!124149)

(declare-fun lt!1850796 () Unit!124149)

(assert (=> d!1490836 (= lt!1850795 lt!1850796)))

(assert (=> d!1490836 (= (getValueByKey!1785 lt!1850797 (_1!30203 lt!1850339)) (Some!12086 (_2!30203 lt!1850339)))))

(assert (=> d!1490836 (= lt!1850796 (lemmaContainsTupThenGetReturnValue!1002 lt!1850797 (_1!30203 lt!1850339) (_2!30203 lt!1850339)))))

(assert (=> d!1490836 (= lt!1850797 (insertNoDuplicatedKeys!510 (toList!5601 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333)) (_1!30203 lt!1850339) (_2!30203 lt!1850339)))))

(assert (=> d!1490836 (= (+!2140 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850339) lt!1850798)))

(declare-fun b!4690823 () Bool)

(declare-fun res!1978627 () Bool)

(assert (=> b!4690823 (=> (not res!1978627) (not e!2926410))))

(assert (=> b!4690823 (= res!1978627 (= (getValueByKey!1785 (toList!5601 lt!1850798) (_1!30203 lt!1850339)) (Some!12086 (_2!30203 lt!1850339))))))

(declare-fun b!4690824 () Bool)

(assert (=> b!4690824 (= e!2926410 (contains!15623 (toList!5601 lt!1850798) lt!1850339))))

(assert (= (and d!1490836 res!1978628) b!4690823))

(assert (= (and b!4690823 res!1978627) b!4690824))

(declare-fun m!5593643 () Bool)

(assert (=> d!1490836 m!5593643))

(declare-fun m!5593645 () Bool)

(assert (=> d!1490836 m!5593645))

(declare-fun m!5593647 () Bool)

(assert (=> d!1490836 m!5593647))

(declare-fun m!5593649 () Bool)

(assert (=> d!1490836 m!5593649))

(declare-fun m!5593651 () Bool)

(assert (=> b!4690823 m!5593651))

(declare-fun m!5593653 () Bool)

(assert (=> b!4690824 m!5593653))

(assert (=> b!4690447 d!1490836))

(declare-fun d!1490838 () Bool)

(assert (=> d!1490838 (= (head!9975 oldBucket!34) (h!58662 oldBucket!34))))

(assert (=> b!4690447 d!1490838))

(declare-fun d!1490840 () Bool)

(declare-fun e!2926411 () Bool)

(assert (=> d!1490840 e!2926411))

(declare-fun res!1978630 () Bool)

(assert (=> d!1490840 (=> (not res!1978630) (not e!2926411))))

(declare-fun lt!1850802 () ListMap!4965)

(assert (=> d!1490840 (= res!1978630 (contains!15618 lt!1850802 (_1!30203 (h!58662 oldBucket!34))))))

(declare-fun lt!1850801 () List!52539)

(assert (=> d!1490840 (= lt!1850802 (ListMap!4966 lt!1850801))))

(declare-fun lt!1850799 () Unit!124149)

(declare-fun lt!1850800 () Unit!124149)

(assert (=> d!1490840 (= lt!1850799 lt!1850800)))

(assert (=> d!1490840 (= (getValueByKey!1785 lt!1850801 (_1!30203 (h!58662 oldBucket!34))) (Some!12086 (_2!30203 (h!58662 oldBucket!34))))))

(assert (=> d!1490840 (= lt!1850800 (lemmaContainsTupThenGetReturnValue!1002 lt!1850801 (_1!30203 (h!58662 oldBucket!34)) (_2!30203 (h!58662 oldBucket!34))))))

(assert (=> d!1490840 (= lt!1850801 (insertNoDuplicatedKeys!510 (toList!5601 lt!1850341) (_1!30203 (h!58662 oldBucket!34)) (_2!30203 (h!58662 oldBucket!34))))))

(assert (=> d!1490840 (= (+!2140 lt!1850341 (h!58662 oldBucket!34)) lt!1850802)))

(declare-fun b!4690825 () Bool)

(declare-fun res!1978629 () Bool)

(assert (=> b!4690825 (=> (not res!1978629) (not e!2926411))))

(assert (=> b!4690825 (= res!1978629 (= (getValueByKey!1785 (toList!5601 lt!1850802) (_1!30203 (h!58662 oldBucket!34))) (Some!12086 (_2!30203 (h!58662 oldBucket!34)))))))

(declare-fun b!4690826 () Bool)

(assert (=> b!4690826 (= e!2926411 (contains!15623 (toList!5601 lt!1850802) (h!58662 oldBucket!34)))))

(assert (= (and d!1490840 res!1978630) b!4690825))

(assert (= (and b!4690825 res!1978629) b!4690826))

(declare-fun m!5593655 () Bool)

(assert (=> d!1490840 m!5593655))

(declare-fun m!5593657 () Bool)

(assert (=> d!1490840 m!5593657))

(declare-fun m!5593659 () Bool)

(assert (=> d!1490840 m!5593659))

(declare-fun m!5593661 () Bool)

(assert (=> d!1490840 m!5593661))

(declare-fun m!5593663 () Bool)

(assert (=> b!4690825 m!5593663))

(declare-fun m!5593665 () Bool)

(assert (=> b!4690826 m!5593665))

(assert (=> b!4690447 d!1490840))

(declare-fun d!1490842 () Bool)

(assert (=> d!1490842 (eq!1015 (addToMapMapFromBucket!1288 (Cons!52415 lt!1850339 lt!1850336) lt!1850333) (+!2140 (addToMapMapFromBucket!1288 lt!1850336 lt!1850333) lt!1850339))))

(declare-fun lt!1850803 () Unit!124149)

(assert (=> d!1490842 (= lt!1850803 (choose!32603 lt!1850339 lt!1850336 lt!1850333))))

(assert (=> d!1490842 (noDuplicateKeys!1856 lt!1850336)))

(assert (=> d!1490842 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!264 lt!1850339 lt!1850336 lt!1850333) lt!1850803)))

(declare-fun bs!1087141 () Bool)

(assert (= bs!1087141 d!1490842))

(assert (=> bs!1087141 m!5592963))

(assert (=> bs!1087141 m!5592965))

(assert (=> bs!1087141 m!5592967))

(assert (=> bs!1087141 m!5592963))

(declare-fun m!5593667 () Bool)

(assert (=> bs!1087141 m!5593667))

(assert (=> bs!1087141 m!5593451))

(assert (=> bs!1087141 m!5592987))

(assert (=> bs!1087141 m!5592987))

(assert (=> bs!1087141 m!5592965))

(assert (=> b!4690447 d!1490842))

(declare-fun bs!1087143 () Bool)

(declare-fun d!1490844 () Bool)

(assert (= bs!1087143 (and d!1490844 d!1490732)))

(declare-fun lambda!207396 () Int)

(assert (=> bs!1087143 (= lambda!207396 lambda!207296)))

(declare-fun bs!1087144 () Bool)

(assert (= bs!1087144 (and d!1490844 d!1490816)))

(assert (=> bs!1087144 (= lambda!207396 lambda!207383)))

(declare-fun bs!1087145 () Bool)

(assert (= bs!1087145 (and d!1490844 d!1490758)))

(assert (=> bs!1087145 (= lambda!207396 lambda!207361)))

(declare-fun bs!1087146 () Bool)

(assert (= bs!1087146 (and d!1490844 d!1490704)))

(assert (=> bs!1087146 (= lambda!207396 lambda!207283)))

(declare-fun bs!1087147 () Bool)

(assert (= bs!1087147 (and d!1490844 d!1490742)))

(assert (=> bs!1087147 (not (= lambda!207396 lambda!207300))))

(declare-fun bs!1087148 () Bool)

(assert (= bs!1087148 (and d!1490844 d!1490702)))

(assert (=> bs!1087148 (= lambda!207396 lambda!207270)))

(declare-fun bs!1087149 () Bool)

(assert (= bs!1087149 (and d!1490844 d!1490802)))

(assert (=> bs!1087149 (= lambda!207396 lambda!207381)))

(declare-fun bs!1087150 () Bool)

(assert (= bs!1087150 (and d!1490844 start!474540)))

(assert (=> bs!1087150 (= lambda!207396 lambda!207267)))

(declare-fun lt!1850804 () ListMap!4965)

(assert (=> d!1490844 (invariantList!1412 (toList!5601 lt!1850804))))

(declare-fun e!2926412 () ListMap!4965)

(assert (=> d!1490844 (= lt!1850804 e!2926412)))

(declare-fun c!802039 () Bool)

(assert (=> d!1490844 (= c!802039 ((_ is Cons!52416) lt!1850347))))

(assert (=> d!1490844 (forall!11325 lt!1850347 lambda!207396)))

(assert (=> d!1490844 (= (extractMap!1882 lt!1850347) lt!1850804)))

(declare-fun b!4690827 () Bool)

(assert (=> b!4690827 (= e!2926412 (addToMapMapFromBucket!1288 (_2!30204 (h!58663 lt!1850347)) (extractMap!1882 (t!359718 lt!1850347))))))

(declare-fun b!4690828 () Bool)

(assert (=> b!4690828 (= e!2926412 (ListMap!4966 Nil!52415))))

(assert (= (and d!1490844 c!802039) b!4690827))

(assert (= (and d!1490844 (not c!802039)) b!4690828))

(declare-fun m!5593669 () Bool)

(assert (=> d!1490844 m!5593669))

(declare-fun m!5593671 () Bool)

(assert (=> d!1490844 m!5593671))

(declare-fun m!5593673 () Bool)

(assert (=> b!4690827 m!5593673))

(assert (=> b!4690827 m!5593673))

(declare-fun m!5593675 () Bool)

(assert (=> b!4690827 m!5593675))

(assert (=> b!4690447 d!1490844))

(declare-fun d!1490846 () Bool)

(declare-fun e!2926417 () Bool)

(assert (=> d!1490846 e!2926417))

(declare-fun res!1978631 () Bool)

(assert (=> d!1490846 (=> res!1978631 e!2926417)))

(declare-fun e!2926415 () Bool)

(assert (=> d!1490846 (= res!1978631 e!2926415)))

(declare-fun res!1978632 () Bool)

(assert (=> d!1490846 (=> (not res!1978632) (not e!2926415))))

(declare-fun lt!1850807 () Bool)

(assert (=> d!1490846 (= res!1978632 (not lt!1850807))))

(declare-fun lt!1850809 () Bool)

(assert (=> d!1490846 (= lt!1850807 lt!1850809)))

(declare-fun lt!1850812 () Unit!124149)

(declare-fun e!2926416 () Unit!124149)

(assert (=> d!1490846 (= lt!1850812 e!2926416)))

(declare-fun c!802041 () Bool)

(assert (=> d!1490846 (= c!802041 lt!1850809)))

(assert (=> d!1490846 (= lt!1850809 (containsKey!3063 (toList!5601 (extractMap!1882 lt!1850347)) key!4653))))

(assert (=> d!1490846 (= (contains!15618 (extractMap!1882 lt!1850347) key!4653) lt!1850807)))

(declare-fun b!4690829 () Bool)

(declare-fun lt!1850811 () Unit!124149)

(assert (=> b!4690829 (= e!2926416 lt!1850811)))

(declare-fun lt!1850810 () Unit!124149)

(assert (=> b!4690829 (= lt!1850810 (lemmaContainsKeyImpliesGetValueByKeyDefined!1677 (toList!5601 (extractMap!1882 lt!1850347)) key!4653))))

(assert (=> b!4690829 (isDefined!9342 (getValueByKey!1785 (toList!5601 (extractMap!1882 lt!1850347)) key!4653))))

(declare-fun lt!1850808 () Unit!124149)

(assert (=> b!4690829 (= lt!1850808 lt!1850810)))

(assert (=> b!4690829 (= lt!1850811 (lemmaInListThenGetKeysListContains!847 (toList!5601 (extractMap!1882 lt!1850347)) key!4653))))

(declare-fun call!327847 () Bool)

(assert (=> b!4690829 call!327847))

(declare-fun b!4690830 () Bool)

(declare-fun e!2926413 () Bool)

(assert (=> b!4690830 (= e!2926417 e!2926413)))

(declare-fun res!1978633 () Bool)

(assert (=> b!4690830 (=> (not res!1978633) (not e!2926413))))

(assert (=> b!4690830 (= res!1978633 (isDefined!9342 (getValueByKey!1785 (toList!5601 (extractMap!1882 lt!1850347)) key!4653)))))

(declare-fun b!4690831 () Bool)

(declare-fun e!2926414 () List!52542)

(assert (=> b!4690831 (= e!2926414 (getKeysList!852 (toList!5601 (extractMap!1882 lt!1850347))))))

(declare-fun b!4690832 () Bool)

(assert (=> b!4690832 (= e!2926414 (keys!18717 (extractMap!1882 lt!1850347)))))

(declare-fun b!4690833 () Bool)

(assert (=> b!4690833 false))

(declare-fun lt!1850805 () Unit!124149)

(declare-fun lt!1850806 () Unit!124149)

(assert (=> b!4690833 (= lt!1850805 lt!1850806)))

(assert (=> b!4690833 (containsKey!3063 (toList!5601 (extractMap!1882 lt!1850347)) key!4653)))

(assert (=> b!4690833 (= lt!1850806 (lemmaInGetKeysListThenContainsKey!851 (toList!5601 (extractMap!1882 lt!1850347)) key!4653))))

(declare-fun e!2926418 () Unit!124149)

(declare-fun Unit!124234 () Unit!124149)

(assert (=> b!4690833 (= e!2926418 Unit!124234)))

(declare-fun b!4690834 () Bool)

(assert (=> b!4690834 (= e!2926413 (contains!15624 (keys!18717 (extractMap!1882 lt!1850347)) key!4653))))

(declare-fun b!4690835 () Bool)

(assert (=> b!4690835 (= e!2926415 (not (contains!15624 (keys!18717 (extractMap!1882 lt!1850347)) key!4653)))))

(declare-fun b!4690836 () Bool)

(declare-fun Unit!124235 () Unit!124149)

(assert (=> b!4690836 (= e!2926418 Unit!124235)))

(declare-fun bm!327842 () Bool)

(assert (=> bm!327842 (= call!327847 (contains!15624 e!2926414 key!4653))))

(declare-fun c!802040 () Bool)

(assert (=> bm!327842 (= c!802040 c!802041)))

(declare-fun b!4690837 () Bool)

(assert (=> b!4690837 (= e!2926416 e!2926418)))

(declare-fun c!802042 () Bool)

(assert (=> b!4690837 (= c!802042 call!327847)))

(assert (= (and d!1490846 c!802041) b!4690829))

(assert (= (and d!1490846 (not c!802041)) b!4690837))

(assert (= (and b!4690837 c!802042) b!4690833))

(assert (= (and b!4690837 (not c!802042)) b!4690836))

(assert (= (or b!4690829 b!4690837) bm!327842))

(assert (= (and bm!327842 c!802040) b!4690831))

(assert (= (and bm!327842 (not c!802040)) b!4690832))

(assert (= (and d!1490846 res!1978632) b!4690835))

(assert (= (and d!1490846 (not res!1978631)) b!4690830))

(assert (= (and b!4690830 res!1978633) b!4690834))

(declare-fun m!5593677 () Bool)

(assert (=> b!4690829 m!5593677))

(declare-fun m!5593679 () Bool)

(assert (=> b!4690829 m!5593679))

(assert (=> b!4690829 m!5593679))

(declare-fun m!5593681 () Bool)

(assert (=> b!4690829 m!5593681))

(declare-fun m!5593683 () Bool)

(assert (=> b!4690829 m!5593683))

(assert (=> b!4690830 m!5593679))

(assert (=> b!4690830 m!5593679))

(assert (=> b!4690830 m!5593681))

(assert (=> b!4690835 m!5592971))

(declare-fun m!5593685 () Bool)

(assert (=> b!4690835 m!5593685))

(assert (=> b!4690835 m!5593685))

(declare-fun m!5593687 () Bool)

(assert (=> b!4690835 m!5593687))

(declare-fun m!5593689 () Bool)

(assert (=> b!4690831 m!5593689))

(assert (=> b!4690834 m!5592971))

(assert (=> b!4690834 m!5593685))

(assert (=> b!4690834 m!5593685))

(assert (=> b!4690834 m!5593687))

(declare-fun m!5593691 () Bool)

(assert (=> b!4690833 m!5593691))

(declare-fun m!5593693 () Bool)

(assert (=> b!4690833 m!5593693))

(assert (=> b!4690832 m!5592971))

(assert (=> b!4690832 m!5593685))

(assert (=> d!1490846 m!5593691))

(declare-fun m!5593695 () Bool)

(assert (=> bm!327842 m!5593695))

(assert (=> b!4690447 d!1490846))

(declare-fun bs!1087160 () Bool)

(declare-fun b!4690841 () Bool)

(assert (= bs!1087160 (and b!4690841 b!4690748)))

(declare-fun lambda!207398 () Int)

(assert (=> bs!1087160 (= (= lt!1850333 lt!1850677) (= lambda!207398 lambda!207372))))

(declare-fun bs!1087161 () Bool)

(assert (= bs!1087161 (and b!4690841 d!1490740)))

(assert (=> bs!1087161 (not (= lambda!207398 lambda!207297))))

(declare-fun bs!1087162 () Bool)

(assert (= bs!1087162 (and b!4690841 d!1490782)))

(assert (=> bs!1087162 (= (= lt!1850333 lt!1850705) (= lambda!207398 lambda!207377))))

(declare-fun bs!1087163 () Bool)

(assert (= bs!1087163 (and b!4690841 b!4690714)))

(assert (=> bs!1087163 (= (= lt!1850333 lt!1850617) (= lambda!207398 lambda!207355))))

(declare-fun bs!1087164 () Bool)

(assert (= bs!1087164 (and b!4690841 b!4690751)))

(assert (=> bs!1087164 (= lambda!207398 lambda!207370)))

(declare-fun bs!1087165 () Bool)

(assert (= bs!1087165 (and b!4690841 b!4690770)))

(assert (=> bs!1087165 (= lambda!207398 lambda!207374)))

(declare-fun bs!1087166 () Bool)

(assert (= bs!1087166 (and b!4690841 b!4690767)))

(assert (=> bs!1087166 (= lambda!207398 lambda!207375)))

(declare-fun bs!1087167 () Bool)

(assert (= bs!1087167 (and b!4690841 b!4690809)))

(assert (=> bs!1087167 (= lambda!207398 lambda!207385)))

(declare-fun bs!1087168 () Bool)

(assert (= bs!1087168 (and b!4690841 b!4690806)))

(assert (=> bs!1087168 (= (= lt!1850333 lt!1850728) (= lambda!207398 lambda!207389))))

(assert (=> bs!1087163 (= lambda!207398 lambda!207354)))

(declare-fun bs!1087169 () Bool)

(assert (= bs!1087169 (and b!4690841 d!1490748)))

(assert (=> bs!1087169 (= (= lt!1850333 lt!1850622) (= lambda!207398 lambda!207356))))

(declare-fun bs!1087170 () Bool)

(assert (= bs!1087170 (and b!4690841 d!1490820)))

(assert (=> bs!1087170 (= (= lt!1850333 lt!1850733) (= lambda!207398 lambda!207392))))

(assert (=> bs!1087166 (= (= lt!1850333 lt!1850700) (= lambda!207398 lambda!207376))))

(declare-fun bs!1087171 () Bool)

(assert (= bs!1087171 (and b!4690841 d!1490728)))

(assert (=> bs!1087171 (not (= lambda!207398 lambda!207286))))

(declare-fun bs!1087172 () Bool)

(assert (= bs!1087172 (and b!4690841 d!1490776)))

(assert (=> bs!1087172 (= (= lt!1850333 lt!1850682) (= lambda!207398 lambda!207373))))

(declare-fun bs!1087173 () Bool)

(assert (= bs!1087173 (and b!4690841 b!4690717)))

(assert (=> bs!1087173 (= lambda!207398 lambda!207351)))

(assert (=> bs!1087168 (= lambda!207398 lambda!207387)))

(assert (=> bs!1087160 (= lambda!207398 lambda!207371)))

(assert (=> b!4690841 true))

(declare-fun bs!1087175 () Bool)

(declare-fun b!4690838 () Bool)

(assert (= bs!1087175 (and b!4690838 b!4690748)))

(declare-fun lambda!207399 () Int)

(assert (=> bs!1087175 (= (= lt!1850333 lt!1850677) (= lambda!207399 lambda!207372))))

(declare-fun bs!1087176 () Bool)

(assert (= bs!1087176 (and b!4690838 d!1490740)))

(assert (=> bs!1087176 (not (= lambda!207399 lambda!207297))))

(declare-fun bs!1087177 () Bool)

(assert (= bs!1087177 (and b!4690838 d!1490782)))

(assert (=> bs!1087177 (= (= lt!1850333 lt!1850705) (= lambda!207399 lambda!207377))))

(declare-fun bs!1087178 () Bool)

(assert (= bs!1087178 (and b!4690838 b!4690841)))

(assert (=> bs!1087178 (= lambda!207399 lambda!207398)))

(declare-fun bs!1087179 () Bool)

(assert (= bs!1087179 (and b!4690838 b!4690714)))

(assert (=> bs!1087179 (= (= lt!1850333 lt!1850617) (= lambda!207399 lambda!207355))))

(declare-fun bs!1087180 () Bool)

(assert (= bs!1087180 (and b!4690838 b!4690751)))

(assert (=> bs!1087180 (= lambda!207399 lambda!207370)))

(declare-fun bs!1087181 () Bool)

(assert (= bs!1087181 (and b!4690838 b!4690770)))

(assert (=> bs!1087181 (= lambda!207399 lambda!207374)))

(declare-fun bs!1087182 () Bool)

(assert (= bs!1087182 (and b!4690838 b!4690767)))

(assert (=> bs!1087182 (= lambda!207399 lambda!207375)))

(declare-fun bs!1087183 () Bool)

(assert (= bs!1087183 (and b!4690838 b!4690809)))

(assert (=> bs!1087183 (= lambda!207399 lambda!207385)))

(declare-fun bs!1087184 () Bool)

(assert (= bs!1087184 (and b!4690838 b!4690806)))

(assert (=> bs!1087184 (= (= lt!1850333 lt!1850728) (= lambda!207399 lambda!207389))))

(assert (=> bs!1087179 (= lambda!207399 lambda!207354)))

(declare-fun bs!1087185 () Bool)

(assert (= bs!1087185 (and b!4690838 d!1490748)))

(assert (=> bs!1087185 (= (= lt!1850333 lt!1850622) (= lambda!207399 lambda!207356))))

(declare-fun bs!1087186 () Bool)

(assert (= bs!1087186 (and b!4690838 d!1490820)))

(assert (=> bs!1087186 (= (= lt!1850333 lt!1850733) (= lambda!207399 lambda!207392))))

(assert (=> bs!1087182 (= (= lt!1850333 lt!1850700) (= lambda!207399 lambda!207376))))

(declare-fun bs!1087187 () Bool)

(assert (= bs!1087187 (and b!4690838 d!1490728)))

(assert (=> bs!1087187 (not (= lambda!207399 lambda!207286))))

(declare-fun bs!1087188 () Bool)

(assert (= bs!1087188 (and b!4690838 d!1490776)))

(assert (=> bs!1087188 (= (= lt!1850333 lt!1850682) (= lambda!207399 lambda!207373))))

(declare-fun bs!1087189 () Bool)

(assert (= bs!1087189 (and b!4690838 b!4690717)))

(assert (=> bs!1087189 (= lambda!207399 lambda!207351)))

(assert (=> bs!1087184 (= lambda!207399 lambda!207387)))

(assert (=> bs!1087175 (= lambda!207399 lambda!207371)))

(assert (=> b!4690838 true))

(declare-fun lt!1850819 () ListMap!4965)

(declare-fun lambda!207400 () Int)

(assert (=> bs!1087175 (= (= lt!1850819 lt!1850677) (= lambda!207400 lambda!207372))))

(assert (=> bs!1087176 (not (= lambda!207400 lambda!207297))))

(assert (=> bs!1087177 (= (= lt!1850819 lt!1850705) (= lambda!207400 lambda!207377))))

(assert (=> bs!1087178 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207398))))

(assert (=> bs!1087180 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207370))))

(assert (=> bs!1087181 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207374))))

(assert (=> bs!1087182 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207375))))

(assert (=> bs!1087183 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207385))))

(assert (=> bs!1087184 (= (= lt!1850819 lt!1850728) (= lambda!207400 lambda!207389))))

(assert (=> bs!1087179 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207354))))

(assert (=> bs!1087185 (= (= lt!1850819 lt!1850622) (= lambda!207400 lambda!207356))))

(assert (=> bs!1087186 (= (= lt!1850819 lt!1850733) (= lambda!207400 lambda!207392))))

(assert (=> bs!1087182 (= (= lt!1850819 lt!1850700) (= lambda!207400 lambda!207376))))

(assert (=> bs!1087187 (not (= lambda!207400 lambda!207286))))

(assert (=> b!4690838 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207399))))

(assert (=> bs!1087179 (= (= lt!1850819 lt!1850617) (= lambda!207400 lambda!207355))))

(assert (=> bs!1087188 (= (= lt!1850819 lt!1850682) (= lambda!207400 lambda!207373))))

(assert (=> bs!1087189 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207351))))

(assert (=> bs!1087184 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207387))))

(assert (=> bs!1087175 (= (= lt!1850819 lt!1850333) (= lambda!207400 lambda!207371))))

(assert (=> b!4690838 true))

(declare-fun bs!1087204 () Bool)

(declare-fun d!1490848 () Bool)

(assert (= bs!1087204 (and d!1490848 b!4690748)))

(declare-fun lt!1850824 () ListMap!4965)

(declare-fun lambda!207403 () Int)

(assert (=> bs!1087204 (= (= lt!1850824 lt!1850677) (= lambda!207403 lambda!207372))))

(declare-fun bs!1087205 () Bool)

(assert (= bs!1087205 (and d!1490848 d!1490740)))

(assert (=> bs!1087205 (not (= lambda!207403 lambda!207297))))

(declare-fun bs!1087207 () Bool)

(assert (= bs!1087207 (and d!1490848 d!1490782)))

(assert (=> bs!1087207 (= (= lt!1850824 lt!1850705) (= lambda!207403 lambda!207377))))

(declare-fun bs!1087208 () Bool)

(assert (= bs!1087208 (and d!1490848 b!4690841)))

(assert (=> bs!1087208 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207398))))

(declare-fun bs!1087210 () Bool)

(assert (= bs!1087210 (and d!1490848 b!4690751)))

(assert (=> bs!1087210 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207370))))

(declare-fun bs!1087212 () Bool)

(assert (= bs!1087212 (and d!1490848 b!4690770)))

(assert (=> bs!1087212 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207374))))

(declare-fun bs!1087214 () Bool)

(assert (= bs!1087214 (and d!1490848 b!4690767)))

(assert (=> bs!1087214 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207375))))

(declare-fun bs!1087216 () Bool)

(assert (= bs!1087216 (and d!1490848 b!4690809)))

(assert (=> bs!1087216 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207385))))

(declare-fun bs!1087218 () Bool)

(assert (= bs!1087218 (and d!1490848 b!4690806)))

(assert (=> bs!1087218 (= (= lt!1850824 lt!1850728) (= lambda!207403 lambda!207389))))

(declare-fun bs!1087219 () Bool)

(assert (= bs!1087219 (and d!1490848 b!4690714)))

(assert (=> bs!1087219 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207354))))

(declare-fun bs!1087220 () Bool)

(assert (= bs!1087220 (and d!1490848 d!1490748)))

(assert (=> bs!1087220 (= (= lt!1850824 lt!1850622) (= lambda!207403 lambda!207356))))

(declare-fun bs!1087221 () Bool)

(assert (= bs!1087221 (and d!1490848 d!1490820)))

(assert (=> bs!1087221 (= (= lt!1850824 lt!1850733) (= lambda!207403 lambda!207392))))

(assert (=> bs!1087214 (= (= lt!1850824 lt!1850700) (= lambda!207403 lambda!207376))))

(declare-fun bs!1087222 () Bool)

(assert (= bs!1087222 (and d!1490848 d!1490728)))

(assert (=> bs!1087222 (not (= lambda!207403 lambda!207286))))

(declare-fun bs!1087224 () Bool)

(assert (= bs!1087224 (and d!1490848 b!4690838)))

(assert (=> bs!1087224 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207399))))

(assert (=> bs!1087219 (= (= lt!1850824 lt!1850617) (= lambda!207403 lambda!207355))))

(assert (=> bs!1087224 (= (= lt!1850824 lt!1850819) (= lambda!207403 lambda!207400))))

(declare-fun bs!1087227 () Bool)

(assert (= bs!1087227 (and d!1490848 d!1490776)))

(assert (=> bs!1087227 (= (= lt!1850824 lt!1850682) (= lambda!207403 lambda!207373))))

(declare-fun bs!1087229 () Bool)

(assert (= bs!1087229 (and d!1490848 b!4690717)))

(assert (=> bs!1087229 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207351))))

(assert (=> bs!1087218 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207387))))

(assert (=> bs!1087204 (= (= lt!1850824 lt!1850333) (= lambda!207403 lambda!207371))))

(assert (=> d!1490848 true))

(declare-fun bm!327843 () Bool)

(declare-fun call!327849 () Unit!124149)

(assert (=> bm!327843 (= call!327849 (lemmaContainsAllItsOwnKeys!699 lt!1850333))))

(declare-fun e!2926419 () ListMap!4965)

(assert (=> b!4690838 (= e!2926419 lt!1850819)))

(declare-fun lt!1850829 () ListMap!4965)

(assert (=> b!4690838 (= lt!1850829 (+!2140 lt!1850333 (h!58662 (Cons!52415 lt!1850339 lt!1850336))))))

(assert (=> b!4690838 (= lt!1850819 (addToMapMapFromBucket!1288 (t!359717 (Cons!52415 lt!1850339 lt!1850336)) (+!2140 lt!1850333 (h!58662 (Cons!52415 lt!1850339 lt!1850336)))))))

(declare-fun lt!1850818 () Unit!124149)

(assert (=> b!4690838 (= lt!1850818 call!327849)))

(assert (=> b!4690838 (forall!11326 (toList!5601 lt!1850333) lambda!207399)))

(declare-fun lt!1850815 () Unit!124149)

(assert (=> b!4690838 (= lt!1850815 lt!1850818)))

(assert (=> b!4690838 (forall!11326 (toList!5601 lt!1850829) lambda!207400)))

(declare-fun lt!1850816 () Unit!124149)

(declare-fun Unit!124248 () Unit!124149)

(assert (=> b!4690838 (= lt!1850816 Unit!124248)))

(assert (=> b!4690838 (forall!11326 (t!359717 (Cons!52415 lt!1850339 lt!1850336)) lambda!207400)))

(declare-fun lt!1850825 () Unit!124149)

(declare-fun Unit!124249 () Unit!124149)

(assert (=> b!4690838 (= lt!1850825 Unit!124249)))

(declare-fun lt!1850833 () Unit!124149)

(declare-fun Unit!124250 () Unit!124149)

(assert (=> b!4690838 (= lt!1850833 Unit!124250)))

(declare-fun lt!1850828 () Unit!124149)

(assert (=> b!4690838 (= lt!1850828 (forallContained!3433 (toList!5601 lt!1850829) lambda!207400 (h!58662 (Cons!52415 lt!1850339 lt!1850336))))))

(assert (=> b!4690838 (contains!15618 lt!1850829 (_1!30203 (h!58662 (Cons!52415 lt!1850339 lt!1850336))))))

(declare-fun lt!1850827 () Unit!124149)

(declare-fun Unit!124251 () Unit!124149)

(assert (=> b!4690838 (= lt!1850827 Unit!124251)))

(assert (=> b!4690838 (contains!15618 lt!1850819 (_1!30203 (h!58662 (Cons!52415 lt!1850339 lt!1850336))))))

(declare-fun lt!1850831 () Unit!124149)

(declare-fun Unit!124252 () Unit!124149)

(assert (=> b!4690838 (= lt!1850831 Unit!124252)))

(declare-fun call!327848 () Bool)

(assert (=> b!4690838 call!327848))

(declare-fun lt!1850832 () Unit!124149)

(declare-fun Unit!124254 () Unit!124149)

(assert (=> b!4690838 (= lt!1850832 Unit!124254)))

(assert (=> b!4690838 (forall!11326 (toList!5601 lt!1850829) lambda!207400)))

(declare-fun lt!1850821 () Unit!124149)

(declare-fun Unit!124255 () Unit!124149)

(assert (=> b!4690838 (= lt!1850821 Unit!124255)))

(declare-fun lt!1850813 () Unit!124149)

(declare-fun Unit!124256 () Unit!124149)

(assert (=> b!4690838 (= lt!1850813 Unit!124256)))

(declare-fun lt!1850823 () Unit!124149)

(assert (=> b!4690838 (= lt!1850823 (addForallContainsKeyThenBeforeAdding!698 lt!1850333 lt!1850819 (_1!30203 (h!58662 (Cons!52415 lt!1850339 lt!1850336))) (_2!30203 (h!58662 (Cons!52415 lt!1850339 lt!1850336)))))))

(declare-fun call!327850 () Bool)

(assert (=> b!4690838 call!327850))

(declare-fun lt!1850822 () Unit!124149)

(assert (=> b!4690838 (= lt!1850822 lt!1850823)))

(assert (=> b!4690838 (forall!11326 (toList!5601 lt!1850333) lambda!207400)))

(declare-fun lt!1850830 () Unit!124149)

(declare-fun Unit!124257 () Unit!124149)

(assert (=> b!4690838 (= lt!1850830 Unit!124257)))

(declare-fun res!1978634 () Bool)

(assert (=> b!4690838 (= res!1978634 (forall!11326 (Cons!52415 lt!1850339 lt!1850336) lambda!207400))))

(declare-fun e!2926420 () Bool)

(assert (=> b!4690838 (=> (not res!1978634) (not e!2926420))))

(assert (=> b!4690838 e!2926420))

(declare-fun lt!1850820 () Unit!124149)

(declare-fun Unit!124258 () Unit!124149)

(assert (=> b!4690838 (= lt!1850820 Unit!124258)))

(declare-fun b!4690839 () Bool)

(declare-fun res!1978635 () Bool)

(declare-fun e!2926421 () Bool)

(assert (=> b!4690839 (=> (not res!1978635) (not e!2926421))))

(assert (=> b!4690839 (= res!1978635 (forall!11326 (toList!5601 lt!1850333) lambda!207403))))

(declare-fun bm!327844 () Bool)

(declare-fun c!802043 () Bool)

(assert (=> bm!327844 (= call!327848 (forall!11326 (ite c!802043 (toList!5601 lt!1850333) (Cons!52415 lt!1850339 lt!1850336)) (ite c!802043 lambda!207398 lambda!207400)))))

(declare-fun b!4690840 () Bool)

(assert (=> b!4690840 (= e!2926420 (forall!11326 (toList!5601 lt!1850333) lambda!207400))))

(assert (=> b!4690841 (= e!2926419 lt!1850333)))

(declare-fun lt!1850826 () Unit!124149)

(assert (=> b!4690841 (= lt!1850826 call!327849)))

(assert (=> b!4690841 call!327848))

(declare-fun lt!1850817 () Unit!124149)

(assert (=> b!4690841 (= lt!1850817 lt!1850826)))

(assert (=> b!4690841 call!327850))

(declare-fun lt!1850814 () Unit!124149)

(declare-fun Unit!124259 () Unit!124149)

(assert (=> b!4690841 (= lt!1850814 Unit!124259)))

(declare-fun b!4690842 () Bool)

(assert (=> b!4690842 (= e!2926421 (invariantList!1412 (toList!5601 lt!1850824)))))

(declare-fun bm!327845 () Bool)

(assert (=> bm!327845 (= call!327850 (forall!11326 (toList!5601 lt!1850333) (ite c!802043 lambda!207398 lambda!207400)))))

(assert (=> d!1490848 e!2926421))

(declare-fun res!1978636 () Bool)

(assert (=> d!1490848 (=> (not res!1978636) (not e!2926421))))

(assert (=> d!1490848 (= res!1978636 (forall!11326 (Cons!52415 lt!1850339 lt!1850336) lambda!207403))))

(assert (=> d!1490848 (= lt!1850824 e!2926419)))

(assert (=> d!1490848 (= c!802043 ((_ is Nil!52415) (Cons!52415 lt!1850339 lt!1850336)))))

(assert (=> d!1490848 (noDuplicateKeys!1856 (Cons!52415 lt!1850339 lt!1850336))))

(assert (=> d!1490848 (= (addToMapMapFromBucket!1288 (Cons!52415 lt!1850339 lt!1850336) lt!1850333) lt!1850824)))

(assert (= (and d!1490848 c!802043) b!4690841))

(assert (= (and d!1490848 (not c!802043)) b!4690838))

(assert (= (and b!4690838 res!1978634) b!4690840))

(assert (= (or b!4690841 b!4690838) bm!327843))

(assert (= (or b!4690841 b!4690838) bm!327844))

(assert (= (or b!4690841 b!4690838) bm!327845))

(assert (= (and d!1490848 res!1978636) b!4690839))

(assert (= (and b!4690839 res!1978635) b!4690842))

(declare-fun m!5593767 () Bool)

(assert (=> b!4690842 m!5593767))

(declare-fun m!5593769 () Bool)

(assert (=> bm!327844 m!5593769))

(declare-fun m!5593771 () Bool)

(assert (=> b!4690839 m!5593771))

(declare-fun m!5593773 () Bool)

(assert (=> b!4690838 m!5593773))

(declare-fun m!5593775 () Bool)

(assert (=> b!4690838 m!5593775))

(assert (=> b!4690838 m!5593773))

(declare-fun m!5593777 () Bool)

(assert (=> b!4690838 m!5593777))

(declare-fun m!5593779 () Bool)

(assert (=> b!4690838 m!5593779))

(declare-fun m!5593781 () Bool)

(assert (=> b!4690838 m!5593781))

(declare-fun m!5593783 () Bool)

(assert (=> b!4690838 m!5593783))

(declare-fun m!5593785 () Bool)

(assert (=> b!4690838 m!5593785))

(declare-fun m!5593787 () Bool)

(assert (=> b!4690838 m!5593787))

(declare-fun m!5593789 () Bool)

(assert (=> b!4690838 m!5593789))

(declare-fun m!5593791 () Bool)

(assert (=> b!4690838 m!5593791))

(assert (=> b!4690838 m!5593777))

(declare-fun m!5593793 () Bool)

(assert (=> b!4690838 m!5593793))

(declare-fun m!5593795 () Bool)

(assert (=> d!1490848 m!5593795))

(declare-fun m!5593797 () Bool)

(assert (=> d!1490848 m!5593797))

(assert (=> bm!327843 m!5593327))

(declare-fun m!5593799 () Bool)

(assert (=> bm!327845 m!5593799))

(assert (=> b!4690840 m!5593783))

(assert (=> b!4690447 d!1490848))

(declare-fun bs!1087277 () Bool)

(declare-fun d!1490866 () Bool)

(assert (= bs!1087277 (and d!1490866 d!1490732)))

(declare-fun lambda!207413 () Int)

(assert (=> bs!1087277 (= lambda!207413 lambda!207296)))

(declare-fun bs!1087280 () Bool)

(assert (= bs!1087280 (and d!1490866 d!1490816)))

(assert (=> bs!1087280 (= lambda!207413 lambda!207383)))

(declare-fun bs!1087282 () Bool)

(assert (= bs!1087282 (and d!1490866 d!1490844)))

(assert (=> bs!1087282 (= lambda!207413 lambda!207396)))

(declare-fun bs!1087285 () Bool)

(assert (= bs!1087285 (and d!1490866 d!1490758)))

(assert (=> bs!1087285 (= lambda!207413 lambda!207361)))

(declare-fun bs!1087286 () Bool)

(assert (= bs!1087286 (and d!1490866 d!1490704)))

(assert (=> bs!1087286 (= lambda!207413 lambda!207283)))

(declare-fun bs!1087288 () Bool)

(assert (= bs!1087288 (and d!1490866 d!1490742)))

(assert (=> bs!1087288 (not (= lambda!207413 lambda!207300))))

(declare-fun bs!1087291 () Bool)

(assert (= bs!1087291 (and d!1490866 d!1490702)))

(assert (=> bs!1087291 (= lambda!207413 lambda!207270)))

(declare-fun bs!1087292 () Bool)

(assert (= bs!1087292 (and d!1490866 d!1490802)))

(assert (=> bs!1087292 (= lambda!207413 lambda!207381)))

(declare-fun bs!1087294 () Bool)

(assert (= bs!1087294 (and d!1490866 start!474540)))

(assert (=> bs!1087294 (= lambda!207413 lambda!207267)))

(assert (=> d!1490866 (contains!15618 (extractMap!1882 (toList!5602 (ListLongMap!4132 lt!1850347))) key!4653)))

(declare-fun lt!1850896 () Unit!124149)

(declare-fun choose!32604 (ListLongMap!4131 K!13790 Hashable!6225) Unit!124149)

(assert (=> d!1490866 (= lt!1850896 (choose!32604 (ListLongMap!4132 lt!1850347) key!4653 hashF!1323))))

(assert (=> d!1490866 (forall!11325 (toList!5602 (ListLongMap!4132 lt!1850347)) lambda!207413)))

(assert (=> d!1490866 (= (lemmaListContainsThenExtractedMapContains!448 (ListLongMap!4132 lt!1850347) key!4653 hashF!1323) lt!1850896)))

(declare-fun bs!1087298 () Bool)

(assert (= bs!1087298 d!1490866))

(declare-fun m!5593853 () Bool)

(assert (=> bs!1087298 m!5593853))

(assert (=> bs!1087298 m!5593853))

(declare-fun m!5593855 () Bool)

(assert (=> bs!1087298 m!5593855))

(declare-fun m!5593857 () Bool)

(assert (=> bs!1087298 m!5593857))

(declare-fun m!5593859 () Bool)

(assert (=> bs!1087298 m!5593859))

(assert (=> b!4690447 d!1490866))

(declare-fun b!4690868 () Bool)

(declare-fun e!2926437 () List!52539)

(assert (=> b!4690868 (= e!2926437 (t!359717 (t!359717 oldBucket!34)))))

(declare-fun d!1490872 () Bool)

(declare-fun lt!1850897 () List!52539)

(assert (=> d!1490872 (not (containsKey!3059 lt!1850897 key!4653))))

(assert (=> d!1490872 (= lt!1850897 e!2926437)))

(declare-fun c!802050 () Bool)

(assert (=> d!1490872 (= c!802050 (and ((_ is Cons!52415) (t!359717 oldBucket!34)) (= (_1!30203 (h!58662 (t!359717 oldBucket!34))) key!4653)))))

(assert (=> d!1490872 (noDuplicateKeys!1856 (t!359717 oldBucket!34))))

(assert (=> d!1490872 (= (removePairForKey!1451 (t!359717 oldBucket!34) key!4653) lt!1850897)))

(declare-fun b!4690869 () Bool)

(declare-fun e!2926438 () List!52539)

(assert (=> b!4690869 (= e!2926437 e!2926438)))

(declare-fun c!802051 () Bool)

(assert (=> b!4690869 (= c!802051 ((_ is Cons!52415) (t!359717 oldBucket!34)))))

(declare-fun b!4690871 () Bool)

(assert (=> b!4690871 (= e!2926438 Nil!52415)))

(declare-fun b!4690870 () Bool)

(assert (=> b!4690870 (= e!2926438 (Cons!52415 (h!58662 (t!359717 oldBucket!34)) (removePairForKey!1451 (t!359717 (t!359717 oldBucket!34)) key!4653)))))

(assert (= (and d!1490872 c!802050) b!4690868))

(assert (= (and d!1490872 (not c!802050)) b!4690869))

(assert (= (and b!4690869 c!802051) b!4690870))

(assert (= (and b!4690869 (not c!802051)) b!4690871))

(declare-fun m!5593861 () Bool)

(assert (=> d!1490872 m!5593861))

(assert (=> d!1490872 m!5593067))

(declare-fun m!5593863 () Bool)

(assert (=> b!4690870 m!5593863))

(assert (=> b!4690458 d!1490872))

(declare-fun b!4690876 () Bool)

(declare-fun tp!1345958 () Bool)

(declare-fun e!2926441 () Bool)

(assert (=> b!4690876 (= e!2926441 (and tp_is_empty!30717 tp_is_empty!30719 tp!1345958))))

(assert (=> b!4690456 (= tp!1345955 e!2926441)))

(assert (= (and b!4690456 ((_ is Cons!52415) (t!359717 newBucket!218))) b!4690876))

(declare-fun b!4690881 () Bool)

(declare-fun e!2926444 () Bool)

(declare-fun tp!1345963 () Bool)

(declare-fun tp!1345964 () Bool)

(assert (=> b!4690881 (= e!2926444 (and tp!1345963 tp!1345964))))

(assert (=> b!4690457 (= tp!1345953 e!2926444)))

(assert (= (and b!4690457 ((_ is Cons!52416) (toList!5602 lm!2023))) b!4690881))

(declare-fun b!4690882 () Bool)

(declare-fun tp!1345965 () Bool)

(declare-fun e!2926445 () Bool)

(assert (=> b!4690882 (= e!2926445 (and tp_is_empty!30717 tp_is_empty!30719 tp!1345965))))

(assert (=> b!4690463 (= tp!1345954 e!2926445)))

(assert (= (and b!4690463 ((_ is Cons!52415) (t!359717 oldBucket!34))) b!4690882))

(declare-fun b_lambda!177017 () Bool)

(assert (= b_lambda!177007 (or start!474540 b_lambda!177017)))

(declare-fun bs!1087301 () Bool)

(declare-fun d!1490876 () Bool)

(assert (= bs!1087301 (and d!1490876 start!474540)))

(assert (=> bs!1087301 (= (dynLambda!21714 lambda!207267 (h!58663 lt!1850347)) (noDuplicateKeys!1856 (_2!30204 (h!58663 lt!1850347))))))

(declare-fun m!5593897 () Bool)

(assert (=> bs!1087301 m!5593897))

(assert (=> b!4690470 d!1490876))

(declare-fun b_lambda!177019 () Bool)

(assert (= b_lambda!177005 (or start!474540 b_lambda!177019)))

(declare-fun bs!1087302 () Bool)

(declare-fun d!1490878 () Bool)

(assert (= bs!1087302 (and d!1490878 start!474540)))

(assert (=> bs!1087302 (= (dynLambda!21714 lambda!207267 (h!58663 (toList!5602 lm!2023))) (noDuplicateKeys!1856 (_2!30204 (h!58663 (toList!5602 lm!2023)))))))

(assert (=> bs!1087302 m!5593325))

(assert (=> b!4690468 d!1490878))

(declare-fun b_lambda!177021 () Bool)

(assert (= b_lambda!177009 (or start!474540 b_lambda!177021)))

(declare-fun bs!1087303 () Bool)

(declare-fun d!1490880 () Bool)

(assert (= bs!1087303 (and d!1490880 start!474540)))

(assert (=> bs!1087303 (= (dynLambda!21714 lambda!207267 lt!1850332) (noDuplicateKeys!1856 (_2!30204 lt!1850332)))))

(declare-fun m!5593899 () Bool)

(assert (=> bs!1087303 m!5593899))

(assert (=> d!1490696 d!1490880))

(check-sat (not d!1490830) (not d!1490776) (not b!4690807) (not b!4690522) (not d!1490872) (not bs!1087301) (not bs!1087302) (not b!4690632) (not b!4690825) (not d!1490816) (not b!4690831) (not b!4690832) (not b!4690607) (not d!1490820) (not b!4690634) (not d!1490688) (not d!1490844) (not b!4690834) (not b!4690769) (not d!1490680) (not b!4690655) (not d!1490728) (not bm!327832) (not d!1490802) (not b!4690881) (not b!4690489) (not b!4690471) (not d!1490740) (not b!4690824) (not b_lambda!177017) (not bm!327816) (not b!4690876) (not b!4690635) (not d!1490672) (not b!4690525) (not d!1490702) (not b!4690636) (not b!4690633) (not b_lambda!177021) (not bm!327834) (not b!4690727) (not b!4690523) (not b!4690597) (not b!4690745) (not b!4690488) (not b!4690829) (not d!1490732) (not b!4690840) (not b!4690750) (not d!1490848) (not bm!327843) (not bm!327833) (not b!4690810) (not b!4690495) (not b_lambda!177019) (not d!1490760) (not b!4690469) (not b!4690494) (not d!1490724) (not b!4690631) (not b!4690823) (not b!4690630) (not d!1490774) (not d!1490772) (not bm!327815) (not bm!327831) (not d!1490814) (not d!1490846) (not bm!327842) (not b!4690596) (not b!4690528) (not b!4690826) (not d!1490836) (not d!1490730) (not bm!327830) (not d!1490738) (not b!4690538) (not b!4690827) (not bm!327817) (not d!1490668) (not b!4690492) (not b!4690544) (not d!1490758) (not b!4690744) (not d!1490762) (not b!4690771) (not d!1490800) (not b!4690748) (not d!1490694) (not d!1490742) (not b!4690715) (not b!4690718) (not b!4690767) (not b!4690752) (not b!4690870) (not d!1490704) (not b!4690482) (not d!1490782) (not b!4690749) (not b!4690768) (not b!4690808) (not b!4690830) (not d!1490840) (not d!1490842) (not d!1490720) (not b!4690502) (not b!4690598) (not b!4690838) (not b!4690802) (not b!4690742) (not b!4690714) (not b!4690842) (not d!1490696) tp_is_empty!30717 (not b!4690835) (not bm!327845) (not d!1490748) (not b!4690743) (not bm!327828) (not b!4690794) (not b!4690833) (not b!4690806) (not bs!1087303) (not d!1490690) (not b!4690882) tp_is_empty!30719 (not bm!327827) (not bm!327844) (not d!1490700) (not d!1490684) (not b!4690605) (not bm!327808) (not b!4690716) (not bm!327829) (not b!4690504) (not d!1490764) (not b!4690839) (not bm!327835) (not b!4690599) (not b!4690521) (not d!1490866))
(check-sat)
