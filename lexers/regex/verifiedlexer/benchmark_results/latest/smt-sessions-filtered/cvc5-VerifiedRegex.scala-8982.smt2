; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484182 () Bool)

(assert start!484182)

(declare-fun b!4743896 () Bool)

(declare-fun res!2010278 () Bool)

(declare-fun e!2959082 () Bool)

(assert (=> b!4743896 (=> (not res!2010278) (not e!2959082))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6434 0))(
  ( (HashableExt!6433 (__x!32137 Int)) )
))
(declare-fun hashF!1323 () Hashable!6434)

(declare-datatypes ((K!14313 0))(
  ( (K!14314 (val!19721 Int)) )
))
(declare-datatypes ((V!14559 0))(
  ( (V!14560 (val!19722 Int)) )
))
(declare-datatypes ((tuple2!54654 0))(
  ( (tuple2!54655 (_1!30621 K!14313) (_2!30621 V!14559)) )
))
(declare-datatypes ((List!53095 0))(
  ( (Nil!52971) (Cons!52971 (h!59358 tuple2!54654) (t!360399 List!53095)) )
))
(declare-fun newBucket!218 () List!53095)

(declare-fun allKeysSameHash!1891 (List!53095 (_ BitVec 64) Hashable!6434) Bool)

(assert (=> b!4743896 (= res!2010278 (allKeysSameHash!1891 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4743897 () Bool)

(declare-fun res!2010280 () Bool)

(assert (=> b!4743897 (=> (not res!2010280) (not e!2959082))))

(declare-datatypes ((tuple2!54656 0))(
  ( (tuple2!54657 (_1!30622 (_ BitVec 64)) (_2!30622 List!53095)) )
))
(declare-datatypes ((List!53096 0))(
  ( (Nil!52972) (Cons!52972 (h!59359 tuple2!54656) (t!360400 List!53096)) )
))
(declare-datatypes ((ListLongMap!4549 0))(
  ( (ListLongMap!4550 (toList!6019 List!53096)) )
))
(declare-fun lm!2023 () ListLongMap!4549)

(declare-fun allKeysSameHashInMap!1979 (ListLongMap!4549 Hashable!6434) Bool)

(assert (=> b!4743897 (= res!2010280 (allKeysSameHashInMap!1979 lm!2023 hashF!1323))))

(declare-fun b!4743898 () Bool)

(declare-fun res!2010290 () Bool)

(declare-fun e!2959085 () Bool)

(assert (=> b!4743898 (=> res!2010290 e!2959085)))

(declare-fun oldBucket!34 () List!53095)

(declare-fun lt!1906551 () tuple2!54654)

(assert (=> b!4743898 (= res!2010290 (not (= (h!59358 oldBucket!34) lt!1906551)))))

(declare-fun b!4743899 () Bool)

(declare-fun res!2010296 () Bool)

(declare-fun e!2959086 () Bool)

(assert (=> b!4743899 (=> (not res!2010296) (not e!2959086))))

(assert (=> b!4743899 (= res!2010296 (allKeysSameHash!1891 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp_is_empty!31553 () Bool)

(declare-fun tp!1349366 () Bool)

(declare-fun tp_is_empty!31555 () Bool)

(declare-fun b!4743900 () Bool)

(declare-fun e!2959077 () Bool)

(assert (=> b!4743900 (= e!2959077 (and tp_is_empty!31553 tp_is_empty!31555 tp!1349366))))

(declare-fun b!4743901 () Bool)

(declare-fun e!2959089 () Bool)

(declare-datatypes ((ListMap!5383 0))(
  ( (ListMap!5384 (toList!6020 List!53095)) )
))
(declare-fun lt!1906548 () ListMap!5383)

(declare-fun lt!1906568 () ListMap!5383)

(declare-fun eq!1162 (ListMap!5383 ListMap!5383) Bool)

(assert (=> b!4743901 (= e!2959089 (eq!1162 lt!1906548 lt!1906568))))

(declare-fun b!4743902 () Bool)

(declare-fun res!2010291 () Bool)

(declare-fun e!2959084 () Bool)

(assert (=> b!4743902 (=> res!2010291 e!2959084)))

(declare-fun key!4653 () K!14313)

(declare-fun lt!1906547 () List!53095)

(declare-fun removePairForKey!1660 (List!53095 K!14313) List!53095)

(assert (=> b!4743902 (= res!2010291 (not (= (removePairForKey!1660 (t!360399 oldBucket!34) key!4653) lt!1906547)))))

(declare-fun b!4743903 () Bool)

(declare-fun e!2959087 () Bool)

(assert (=> b!4743903 (= e!2959085 e!2959087)))

(declare-fun res!2010284 () Bool)

(assert (=> b!4743903 (=> res!2010284 e!2959087)))

(assert (=> b!4743903 (= res!2010284 (not (eq!1162 lt!1906568 lt!1906548)))))

(declare-fun lt!1906560 () ListMap!5383)

(declare-fun -!755 (ListMap!5383 K!14313) ListMap!5383)

(assert (=> b!4743903 (= lt!1906548 (-!755 lt!1906560 key!4653))))

(declare-fun lt!1906562 () tuple2!54656)

(declare-fun extractMap!2091 (List!53096) ListMap!5383)

(assert (=> b!4743903 (= lt!1906568 (extractMap!2091 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023)))))))

(declare-fun lt!1906558 () List!53096)

(declare-fun lt!1906567 () tuple2!54656)

(assert (=> b!4743903 (eq!1162 (extractMap!2091 (Cons!52972 lt!1906562 lt!1906558)) (-!755 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)) key!4653))))

(declare-fun lt!1906556 () List!53096)

(declare-fun tail!9134 (List!53096) List!53096)

(assert (=> b!4743903 (= lt!1906558 (tail!9134 lt!1906556))))

(assert (=> b!4743903 (= lt!1906562 (tuple2!54657 hash!405 lt!1906547))))

(declare-datatypes ((Unit!133975 0))(
  ( (Unit!133976) )
))
(declare-fun lt!1906570 () Unit!133975)

(declare-fun lt!1906564 () ListLongMap!4549)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!115 (ListLongMap!4549 (_ BitVec 64) List!53095 List!53095 K!14313 Hashable!6434) Unit!133975)

(assert (=> b!4743903 (= lt!1906570 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!115 lt!1906564 hash!405 (t!360399 oldBucket!34) lt!1906547 key!4653 hashF!1323))))

(declare-fun b!4743904 () Bool)

(assert (=> b!4743904 (= e!2959087 e!2959089)))

(declare-fun res!2010297 () Bool)

(assert (=> b!4743904 (=> res!2010297 e!2959089)))

(declare-fun lt!1906554 () ListMap!5383)

(declare-fun lt!1906553 () ListMap!5383)

(assert (=> b!4743904 (= res!2010297 (not (= lt!1906554 lt!1906553)))))

(declare-fun +!2313 (ListMap!5383 tuple2!54654) ListMap!5383)

(assert (=> b!4743904 (= lt!1906553 (+!2313 lt!1906548 (h!59358 oldBucket!34)))))

(declare-fun lt!1906578 () ListMap!5383)

(assert (=> b!4743904 (= lt!1906554 (-!755 lt!1906578 key!4653))))

(assert (=> b!4743904 (= lt!1906578 (+!2313 lt!1906560 (h!59358 oldBucket!34)))))

(assert (=> b!4743904 (= (-!755 (+!2313 lt!1906560 (h!59358 oldBucket!34)) key!4653) (+!2313 lt!1906548 (h!59358 oldBucket!34)))))

(declare-fun lt!1906563 () Unit!133975)

(declare-fun addRemoveCommutativeForDiffKeys!144 (ListMap!5383 K!14313 V!14559 K!14313) Unit!133975)

(assert (=> b!4743904 (= lt!1906563 (addRemoveCommutativeForDiffKeys!144 lt!1906560 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34)) key!4653))))

(declare-fun b!4743905 () Bool)

(declare-fun e!2959079 () Bool)

(declare-fun e!2959088 () Bool)

(assert (=> b!4743905 (= e!2959079 (not e!2959088))))

(declare-fun res!2010283 () Bool)

(assert (=> b!4743905 (=> res!2010283 e!2959088)))

(assert (=> b!4743905 (= res!2010283 (or (and (is-Cons!52971 oldBucket!34) (= (_1!30621 (h!59358 oldBucket!34)) key!4653)) (not (is-Cons!52971 oldBucket!34)) (= (_1!30621 (h!59358 oldBucket!34)) key!4653)))))

(declare-fun lt!1906566 () ListMap!5383)

(declare-fun lt!1906552 () ListMap!5383)

(declare-fun addToMapMapFromBucket!1495 (List!53095 ListMap!5383) ListMap!5383)

(assert (=> b!4743905 (= lt!1906566 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (toList!6019 lm!2023))) lt!1906552))))

(assert (=> b!4743905 (= lt!1906552 (extractMap!2091 (t!360400 (toList!6019 lm!2023))))))

(declare-fun tail!9135 (ListLongMap!4549) ListLongMap!4549)

(assert (=> b!4743905 (= (t!360400 (toList!6019 lm!2023)) (toList!6019 (tail!9135 lm!2023)))))

(declare-fun res!2010287 () Bool)

(assert (=> start!484182 (=> (not res!2010287) (not e!2959086))))

(declare-fun lambda!219753 () Int)

(declare-fun forall!11696 (List!53096 Int) Bool)

(assert (=> start!484182 (= res!2010287 (forall!11696 (toList!6019 lm!2023) lambda!219753))))

(assert (=> start!484182 e!2959086))

(declare-fun e!2959081 () Bool)

(declare-fun inv!68188 (ListLongMap!4549) Bool)

(assert (=> start!484182 (and (inv!68188 lm!2023) e!2959081)))

(assert (=> start!484182 tp_is_empty!31553))

(assert (=> start!484182 e!2959077))

(assert (=> start!484182 true))

(declare-fun e!2959078 () Bool)

(assert (=> start!484182 e!2959078))

(declare-fun b!4743906 () Bool)

(declare-fun tp!1349367 () Bool)

(assert (=> b!4743906 (= e!2959078 (and tp_is_empty!31553 tp_is_empty!31555 tp!1349367))))

(declare-fun b!4743907 () Bool)

(declare-fun e!2959080 () Bool)

(assert (=> b!4743907 (= e!2959080 e!2959084)))

(declare-fun res!2010285 () Bool)

(assert (=> b!4743907 (=> res!2010285 e!2959084)))

(declare-fun lt!1906561 () List!53095)

(assert (=> b!4743907 (= res!2010285 (not (= (removePairForKey!1660 lt!1906561 key!4653) lt!1906547)))))

(declare-fun tail!9136 (List!53095) List!53095)

(assert (=> b!4743907 (= lt!1906547 (tail!9136 newBucket!218))))

(assert (=> b!4743907 (= lt!1906561 (tail!9136 oldBucket!34))))

(declare-fun b!4743908 () Bool)

(assert (=> b!4743908 (= e!2959082 e!2959079)))

(declare-fun res!2010276 () Bool)

(assert (=> b!4743908 (=> (not res!2010276) (not e!2959079))))

(declare-fun lt!1906569 () tuple2!54656)

(declare-fun head!10333 (List!53096) tuple2!54656)

(assert (=> b!4743908 (= res!2010276 (= (head!10333 (toList!6019 lm!2023)) lt!1906569))))

(assert (=> b!4743908 (= lt!1906569 (tuple2!54657 hash!405 oldBucket!34))))

(declare-fun b!4743909 () Bool)

(declare-fun res!2010289 () Bool)

(assert (=> b!4743909 (=> res!2010289 e!2959089)))

(assert (=> b!4743909 (= res!2010289 (not (eq!1162 lt!1906554 lt!1906553)))))

(declare-fun b!4743910 () Bool)

(declare-fun res!2010288 () Bool)

(assert (=> b!4743910 (=> (not res!2010288) (not e!2959086))))

(declare-fun noDuplicateKeys!2065 (List!53095) Bool)

(assert (=> b!4743910 (= res!2010288 (noDuplicateKeys!2065 newBucket!218))))

(declare-fun b!4743911 () Bool)

(declare-fun res!2010279 () Bool)

(assert (=> b!4743911 (=> (not res!2010279) (not e!2959079))))

(assert (=> b!4743911 (= res!2010279 (is-Cons!52972 (toList!6019 lm!2023)))))

(declare-fun b!4743912 () Bool)

(declare-fun res!2010286 () Bool)

(assert (=> b!4743912 (=> (not res!2010286) (not e!2959086))))

(assert (=> b!4743912 (= res!2010286 (noDuplicateKeys!2065 oldBucket!34))))

(declare-fun b!4743913 () Bool)

(declare-fun res!2010281 () Bool)

(assert (=> b!4743913 (=> (not res!2010281) (not e!2959086))))

(assert (=> b!4743913 (= res!2010281 (= (removePairForKey!1660 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4743914 () Bool)

(declare-fun res!2010277 () Bool)

(assert (=> b!4743914 (=> res!2010277 e!2959089)))

(declare-fun lt!1906571 () ListMap!5383)

(assert (=> b!4743914 (= res!2010277 (not (eq!1162 lt!1906578 lt!1906571)))))

(declare-fun b!4743915 () Bool)

(declare-fun e!2959083 () Bool)

(assert (=> b!4743915 (= e!2959086 e!2959083)))

(declare-fun res!2010292 () Bool)

(assert (=> b!4743915 (=> (not res!2010292) (not e!2959083))))

(declare-fun contains!16391 (ListMap!5383 K!14313) Bool)

(assert (=> b!4743915 (= res!2010292 (contains!16391 lt!1906566 key!4653))))

(assert (=> b!4743915 (= lt!1906566 (extractMap!2091 (toList!6019 lm!2023)))))

(declare-fun b!4743916 () Bool)

(declare-fun res!2010295 () Bool)

(assert (=> b!4743916 (=> res!2010295 e!2959085)))

(declare-fun lt!1906577 () ListMap!5383)

(assert (=> b!4743916 (= res!2010295 (not (eq!1162 lt!1906571 (+!2313 lt!1906577 lt!1906551))))))

(declare-fun b!4743917 () Bool)

(declare-fun tp!1349368 () Bool)

(assert (=> b!4743917 (= e!2959081 tp!1349368)))

(declare-fun b!4743918 () Bool)

(assert (=> b!4743918 (= e!2959084 e!2959085)))

(declare-fun res!2010294 () Bool)

(assert (=> b!4743918 (=> res!2010294 e!2959085)))

(assert (=> b!4743918 (= res!2010294 (not (eq!1162 lt!1906571 (+!2313 lt!1906577 (h!59358 oldBucket!34)))))))

(assert (=> b!4743918 (= lt!1906577 (extractMap!2091 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023)))))))

(assert (=> b!4743918 (= lt!1906571 (extractMap!2091 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023)))))))

(assert (=> b!4743918 (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906551 lt!1906547) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906551))))

(declare-fun lt!1906546 () Unit!133975)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!411 (tuple2!54654 List!53095 ListMap!5383) Unit!133975)

(assert (=> b!4743918 (= lt!1906546 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!411 lt!1906551 lt!1906547 lt!1906552))))

(declare-fun head!10334 (List!53095) tuple2!54654)

(assert (=> b!4743918 (= lt!1906551 (head!10334 newBucket!218))))

(declare-fun lt!1906550 () tuple2!54654)

(assert (=> b!4743918 (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906550 lt!1906561) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1906550))))

(declare-fun lt!1906549 () Unit!133975)

(assert (=> b!4743918 (= lt!1906549 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!411 lt!1906550 lt!1906561 lt!1906552))))

(assert (=> b!4743918 (= lt!1906550 (head!10334 oldBucket!34))))

(assert (=> b!4743918 (contains!16391 lt!1906560 key!4653)))

(assert (=> b!4743918 (= lt!1906560 (extractMap!2091 lt!1906556))))

(declare-fun lt!1906574 () Unit!133975)

(declare-fun lemmaListContainsThenExtractedMapContains!573 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> b!4743918 (= lt!1906574 (lemmaListContainsThenExtractedMapContains!573 lt!1906564 key!4653 hashF!1323))))

(assert (=> b!4743918 (= lt!1906564 (ListLongMap!4550 lt!1906556))))

(assert (=> b!4743918 (= lt!1906556 (Cons!52972 lt!1906567 (t!360400 (toList!6019 lm!2023))))))

(assert (=> b!4743918 (= lt!1906567 (tuple2!54657 hash!405 (t!360399 oldBucket!34)))))

(declare-fun b!4743919 () Bool)

(assert (=> b!4743919 (= e!2959083 e!2959082)))

(declare-fun res!2010293 () Bool)

(assert (=> b!4743919 (=> (not res!2010293) (not e!2959082))))

(declare-fun lt!1906576 () (_ BitVec 64))

(assert (=> b!4743919 (= res!2010293 (= lt!1906576 hash!405))))

(declare-fun hash!4473 (Hashable!6434 K!14313) (_ BitVec 64))

(assert (=> b!4743919 (= lt!1906576 (hash!4473 hashF!1323 key!4653))))

(declare-fun b!4743920 () Bool)

(assert (=> b!4743920 (= e!2959088 e!2959080)))

(declare-fun res!2010282 () Bool)

(assert (=> b!4743920 (=> res!2010282 e!2959080)))

(declare-fun containsKey!3490 (List!53095 K!14313) Bool)

(assert (=> b!4743920 (= res!2010282 (not (containsKey!3490 (t!360399 oldBucket!34) key!4653)))))

(assert (=> b!4743920 (containsKey!3490 oldBucket!34 key!4653)))

(declare-fun lt!1906575 () Unit!133975)

(declare-fun lemmaGetPairDefinedThenContainsKey!349 (List!53095 K!14313 Hashable!6434) Unit!133975)

(assert (=> b!4743920 (= lt!1906575 (lemmaGetPairDefinedThenContainsKey!349 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1906573 () List!53095)

(declare-datatypes ((Option!12476 0))(
  ( (None!12475) (Some!12475 (v!47156 tuple2!54654)) )
))
(declare-fun isDefined!9730 (Option!12476) Bool)

(declare-fun getPair!605 (List!53095 K!14313) Option!12476)

(assert (=> b!4743920 (isDefined!9730 (getPair!605 lt!1906573 key!4653))))

(declare-fun lt!1906559 () Unit!133975)

(declare-fun lt!1906555 () tuple2!54656)

(declare-fun forallContained!3736 (List!53096 Int tuple2!54656) Unit!133975)

(assert (=> b!4743920 (= lt!1906559 (forallContained!3736 (toList!6019 lm!2023) lambda!219753 lt!1906555))))

(declare-fun contains!16392 (List!53096 tuple2!54656) Bool)

(assert (=> b!4743920 (contains!16392 (toList!6019 lm!2023) lt!1906555)))

(assert (=> b!4743920 (= lt!1906555 (tuple2!54657 lt!1906576 lt!1906573))))

(declare-fun lt!1906557 () Unit!133975)

(declare-fun lemmaGetValueImpliesTupleContained!410 (ListLongMap!4549 (_ BitVec 64) List!53095) Unit!133975)

(assert (=> b!4743920 (= lt!1906557 (lemmaGetValueImpliesTupleContained!410 lm!2023 lt!1906576 lt!1906573))))

(declare-fun apply!12490 (ListLongMap!4549 (_ BitVec 64)) List!53095)

(assert (=> b!4743920 (= lt!1906573 (apply!12490 lm!2023 lt!1906576))))

(declare-fun contains!16393 (ListLongMap!4549 (_ BitVec 64)) Bool)

(assert (=> b!4743920 (contains!16393 lm!2023 lt!1906576)))

(declare-fun lt!1906572 () Unit!133975)

(declare-fun lemmaInGenMapThenLongMapContainsHash!811 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> b!4743920 (= lt!1906572 (lemmaInGenMapThenLongMapContainsHash!811 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1906565 () Unit!133975)

(declare-fun lemmaInGenMapThenGetPairDefined!401 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> b!4743920 (= lt!1906565 (lemmaInGenMapThenGetPairDefined!401 lm!2023 key!4653 hashF!1323))))

(assert (= (and start!484182 res!2010287) b!4743912))

(assert (= (and b!4743912 res!2010286) b!4743910))

(assert (= (and b!4743910 res!2010288) b!4743913))

(assert (= (and b!4743913 res!2010281) b!4743899))

(assert (= (and b!4743899 res!2010296) b!4743915))

(assert (= (and b!4743915 res!2010292) b!4743919))

(assert (= (and b!4743919 res!2010293) b!4743896))

(assert (= (and b!4743896 res!2010278) b!4743897))

(assert (= (and b!4743897 res!2010280) b!4743908))

(assert (= (and b!4743908 res!2010276) b!4743911))

(assert (= (and b!4743911 res!2010279) b!4743905))

(assert (= (and b!4743905 (not res!2010283)) b!4743920))

(assert (= (and b!4743920 (not res!2010282)) b!4743907))

(assert (= (and b!4743907 (not res!2010285)) b!4743902))

(assert (= (and b!4743902 (not res!2010291)) b!4743918))

(assert (= (and b!4743918 (not res!2010294)) b!4743898))

(assert (= (and b!4743898 (not res!2010290)) b!4743916))

(assert (= (and b!4743916 (not res!2010295)) b!4743903))

(assert (= (and b!4743903 (not res!2010284)) b!4743904))

(assert (= (and b!4743904 (not res!2010297)) b!4743909))

(assert (= (and b!4743909 (not res!2010289)) b!4743914))

(assert (= (and b!4743914 (not res!2010277)) b!4743901))

(assert (= start!484182 b!4743917))

(assert (= (and start!484182 (is-Cons!52971 oldBucket!34)) b!4743900))

(assert (= (and start!484182 (is-Cons!52971 newBucket!218)) b!4743906))

(declare-fun m!5699029 () Bool)

(assert (=> b!4743903 m!5699029))

(declare-fun m!5699031 () Bool)

(assert (=> b!4743903 m!5699031))

(declare-fun m!5699033 () Bool)

(assert (=> b!4743903 m!5699033))

(declare-fun m!5699035 () Bool)

(assert (=> b!4743903 m!5699035))

(declare-fun m!5699037 () Bool)

(assert (=> b!4743903 m!5699037))

(declare-fun m!5699039 () Bool)

(assert (=> b!4743903 m!5699039))

(declare-fun m!5699041 () Bool)

(assert (=> b!4743903 m!5699041))

(declare-fun m!5699043 () Bool)

(assert (=> b!4743903 m!5699043))

(assert (=> b!4743903 m!5699037))

(declare-fun m!5699045 () Bool)

(assert (=> b!4743903 m!5699045))

(assert (=> b!4743903 m!5699031))

(assert (=> b!4743903 m!5699039))

(declare-fun m!5699047 () Bool)

(assert (=> b!4743916 m!5699047))

(assert (=> b!4743916 m!5699047))

(declare-fun m!5699049 () Bool)

(assert (=> b!4743916 m!5699049))

(declare-fun m!5699051 () Bool)

(assert (=> b!4743918 m!5699051))

(declare-fun m!5699053 () Bool)

(assert (=> b!4743918 m!5699053))

(declare-fun m!5699055 () Bool)

(assert (=> b!4743918 m!5699055))

(declare-fun m!5699057 () Bool)

(assert (=> b!4743918 m!5699057))

(declare-fun m!5699059 () Bool)

(assert (=> b!4743918 m!5699059))

(assert (=> b!4743918 m!5699053))

(declare-fun m!5699061 () Bool)

(assert (=> b!4743918 m!5699061))

(declare-fun m!5699063 () Bool)

(assert (=> b!4743918 m!5699063))

(declare-fun m!5699065 () Bool)

(assert (=> b!4743918 m!5699065))

(declare-fun m!5699067 () Bool)

(assert (=> b!4743918 m!5699067))

(declare-fun m!5699069 () Bool)

(assert (=> b!4743918 m!5699069))

(declare-fun m!5699071 () Bool)

(assert (=> b!4743918 m!5699071))

(assert (=> b!4743918 m!5699055))

(assert (=> b!4743918 m!5699059))

(declare-fun m!5699073 () Bool)

(assert (=> b!4743918 m!5699073))

(declare-fun m!5699075 () Bool)

(assert (=> b!4743918 m!5699075))

(declare-fun m!5699077 () Bool)

(assert (=> b!4743918 m!5699077))

(declare-fun m!5699079 () Bool)

(assert (=> b!4743918 m!5699079))

(declare-fun m!5699081 () Bool)

(assert (=> b!4743918 m!5699081))

(assert (=> b!4743918 m!5699057))

(declare-fun m!5699083 () Bool)

(assert (=> b!4743918 m!5699083))

(assert (=> b!4743918 m!5699067))

(declare-fun m!5699085 () Bool)

(assert (=> b!4743918 m!5699085))

(declare-fun m!5699087 () Bool)

(assert (=> b!4743918 m!5699087))

(assert (=> b!4743918 m!5699077))

(assert (=> b!4743918 m!5699061))

(declare-fun m!5699089 () Bool)

(assert (=> b!4743914 m!5699089))

(declare-fun m!5699091 () Bool)

(assert (=> b!4743896 m!5699091))

(declare-fun m!5699093 () Bool)

(assert (=> b!4743909 m!5699093))

(declare-fun m!5699095 () Bool)

(assert (=> b!4743912 m!5699095))

(declare-fun m!5699097 () Bool)

(assert (=> b!4743920 m!5699097))

(declare-fun m!5699099 () Bool)

(assert (=> b!4743920 m!5699099))

(declare-fun m!5699101 () Bool)

(assert (=> b!4743920 m!5699101))

(declare-fun m!5699103 () Bool)

(assert (=> b!4743920 m!5699103))

(declare-fun m!5699105 () Bool)

(assert (=> b!4743920 m!5699105))

(declare-fun m!5699107 () Bool)

(assert (=> b!4743920 m!5699107))

(declare-fun m!5699109 () Bool)

(assert (=> b!4743920 m!5699109))

(declare-fun m!5699111 () Bool)

(assert (=> b!4743920 m!5699111))

(assert (=> b!4743920 m!5699111))

(declare-fun m!5699113 () Bool)

(assert (=> b!4743920 m!5699113))

(declare-fun m!5699115 () Bool)

(assert (=> b!4743920 m!5699115))

(declare-fun m!5699117 () Bool)

(assert (=> b!4743920 m!5699117))

(declare-fun m!5699119 () Bool)

(assert (=> b!4743920 m!5699119))

(declare-fun m!5699121 () Bool)

(assert (=> b!4743913 m!5699121))

(declare-fun m!5699123 () Bool)

(assert (=> b!4743919 m!5699123))

(declare-fun m!5699125 () Bool)

(assert (=> b!4743915 m!5699125))

(declare-fun m!5699127 () Bool)

(assert (=> b!4743915 m!5699127))

(declare-fun m!5699129 () Bool)

(assert (=> b!4743901 m!5699129))

(declare-fun m!5699131 () Bool)

(assert (=> b!4743897 m!5699131))

(declare-fun m!5699133 () Bool)

(assert (=> b!4743908 m!5699133))

(declare-fun m!5699135 () Bool)

(assert (=> b!4743907 m!5699135))

(declare-fun m!5699137 () Bool)

(assert (=> b!4743907 m!5699137))

(declare-fun m!5699139 () Bool)

(assert (=> b!4743907 m!5699139))

(declare-fun m!5699141 () Bool)

(assert (=> b!4743905 m!5699141))

(declare-fun m!5699143 () Bool)

(assert (=> b!4743905 m!5699143))

(declare-fun m!5699145 () Bool)

(assert (=> b!4743905 m!5699145))

(declare-fun m!5699147 () Bool)

(assert (=> b!4743904 m!5699147))

(declare-fun m!5699149 () Bool)

(assert (=> b!4743904 m!5699149))

(declare-fun m!5699151 () Bool)

(assert (=> b!4743904 m!5699151))

(declare-fun m!5699153 () Bool)

(assert (=> b!4743904 m!5699153))

(assert (=> b!4743904 m!5699153))

(declare-fun m!5699155 () Bool)

(assert (=> b!4743904 m!5699155))

(declare-fun m!5699157 () Bool)

(assert (=> b!4743910 m!5699157))

(declare-fun m!5699159 () Bool)

(assert (=> start!484182 m!5699159))

(declare-fun m!5699161 () Bool)

(assert (=> start!484182 m!5699161))

(declare-fun m!5699163 () Bool)

(assert (=> b!4743902 m!5699163))

(declare-fun m!5699165 () Bool)

(assert (=> b!4743899 m!5699165))

(push 1)

(assert (not b!4743909))

(assert (not b!4743904))

(assert (not b!4743915))

(assert (not b!4743905))

(assert (not b!4743903))

(assert (not b!4743897))

(assert (not b!4743900))

(assert (not b!4743906))

(assert (not b!4743899))

(assert (not b!4743916))

(assert (not b!4743918))

(assert (not b!4743914))

(assert (not b!4743920))

(assert (not b!4743919))

(assert tp_is_empty!31553)

(assert tp_is_empty!31555)

(assert (not b!4743902))

(assert (not b!4743908))

(assert (not b!4743917))

(assert (not b!4743901))

(assert (not b!4743913))

(assert (not b!4743912))

(assert (not b!4743896))

(assert (not b!4743907))

(assert (not b!4743910))

(assert (not start!484182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1515755 () Bool)

(declare-fun content!9478 (List!53095) (Set tuple2!54654))

(assert (=> d!1515755 (= (eq!1162 lt!1906578 lt!1906571) (= (content!9478 (toList!6020 lt!1906578)) (content!9478 (toList!6020 lt!1906571))))))

(declare-fun bs!1136753 () Bool)

(assert (= bs!1136753 d!1515755))

(declare-fun m!5699305 () Bool)

(assert (=> bs!1136753 m!5699305))

(declare-fun m!5699307 () Bool)

(assert (=> bs!1136753 m!5699307))

(assert (=> b!4743914 d!1515755))

(declare-fun d!1515757 () Bool)

(declare-fun e!2959131 () Bool)

(assert (=> d!1515757 e!2959131))

(declare-fun res!2010366 () Bool)

(assert (=> d!1515757 (=> (not res!2010366) (not e!2959131))))

(declare-fun lt!1906680 () ListMap!5383)

(assert (=> d!1515757 (= res!2010366 (not (contains!16391 lt!1906680 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!402 (List!53095 K!14313) List!53095)

(assert (=> d!1515757 (= lt!1906680 (ListMap!5384 (removePresrvNoDuplicatedKeys!402 (toList!6020 lt!1906578) key!4653)))))

(assert (=> d!1515757 (= (-!755 lt!1906578 key!4653) lt!1906680)))

(declare-fun b!4743998 () Bool)

(declare-datatypes ((List!53099 0))(
  ( (Nil!52975) (Cons!52975 (h!59364 K!14313) (t!360405 List!53099)) )
))
(declare-fun content!9479 (List!53099) (Set K!14313))

(declare-fun keys!19066 (ListMap!5383) List!53099)

(assert (=> b!4743998 (= e!2959131 (= (set.minus (content!9479 (keys!19066 lt!1906578)) (set.insert key!4653 (as set.empty (Set K!14313)))) (content!9479 (keys!19066 lt!1906680))))))

(assert (= (and d!1515757 res!2010366) b!4743998))

(declare-fun m!5699309 () Bool)

(assert (=> d!1515757 m!5699309))

(declare-fun m!5699311 () Bool)

(assert (=> d!1515757 m!5699311))

(declare-fun m!5699313 () Bool)

(assert (=> b!4743998 m!5699313))

(declare-fun m!5699315 () Bool)

(assert (=> b!4743998 m!5699315))

(declare-fun m!5699317 () Bool)

(assert (=> b!4743998 m!5699317))

(declare-fun m!5699319 () Bool)

(assert (=> b!4743998 m!5699319))

(assert (=> b!4743998 m!5699313))

(assert (=> b!4743998 m!5699319))

(declare-fun m!5699321 () Bool)

(assert (=> b!4743998 m!5699321))

(assert (=> b!4743904 d!1515757))

(declare-fun d!1515759 () Bool)

(declare-fun e!2959134 () Bool)

(assert (=> d!1515759 e!2959134))

(declare-fun res!2010371 () Bool)

(assert (=> d!1515759 (=> (not res!2010371) (not e!2959134))))

(declare-fun lt!1906692 () ListMap!5383)

(assert (=> d!1515759 (= res!2010371 (contains!16391 lt!1906692 (_1!30621 (h!59358 oldBucket!34))))))

(declare-fun lt!1906690 () List!53095)

(assert (=> d!1515759 (= lt!1906692 (ListMap!5384 lt!1906690))))

(declare-fun lt!1906689 () Unit!133975)

(declare-fun lt!1906691 () Unit!133975)

(assert (=> d!1515759 (= lt!1906689 lt!1906691)))

(declare-datatypes ((Option!12478 0))(
  ( (None!12477) (Some!12477 (v!47162 V!14559)) )
))
(declare-fun getValueByKey!2030 (List!53095 K!14313) Option!12478)

(assert (=> d!1515759 (= (getValueByKey!2030 lt!1906690 (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1117 (List!53095 K!14313 V!14559) Unit!133975)

(assert (=> d!1515759 (= lt!1906691 (lemmaContainsTupThenGetReturnValue!1117 lt!1906690 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!625 (List!53095 K!14313 V!14559) List!53095)

(assert (=> d!1515759 (= lt!1906690 (insertNoDuplicatedKeys!625 (toList!6020 lt!1906548) (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515759 (= (+!2313 lt!1906548 (h!59358 oldBucket!34)) lt!1906692)))

(declare-fun b!4744003 () Bool)

(declare-fun res!2010372 () Bool)

(assert (=> b!4744003 (=> (not res!2010372) (not e!2959134))))

(assert (=> b!4744003 (= res!2010372 (= (getValueByKey!2030 (toList!6020 lt!1906692) (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34)))))))

(declare-fun b!4744004 () Bool)

(declare-fun contains!16397 (List!53095 tuple2!54654) Bool)

(assert (=> b!4744004 (= e!2959134 (contains!16397 (toList!6020 lt!1906692) (h!59358 oldBucket!34)))))

(assert (= (and d!1515759 res!2010371) b!4744003))

(assert (= (and b!4744003 res!2010372) b!4744004))

(declare-fun m!5699323 () Bool)

(assert (=> d!1515759 m!5699323))

(declare-fun m!5699325 () Bool)

(assert (=> d!1515759 m!5699325))

(declare-fun m!5699327 () Bool)

(assert (=> d!1515759 m!5699327))

(declare-fun m!5699329 () Bool)

(assert (=> d!1515759 m!5699329))

(declare-fun m!5699331 () Bool)

(assert (=> b!4744003 m!5699331))

(declare-fun m!5699333 () Bool)

(assert (=> b!4744004 m!5699333))

(assert (=> b!4743904 d!1515759))

(declare-fun d!1515761 () Bool)

(assert (=> d!1515761 (= (-!755 (+!2313 lt!1906560 (tuple2!54655 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34)))) key!4653) (+!2313 (-!755 lt!1906560 key!4653) (tuple2!54655 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34)))))))

(declare-fun lt!1906695 () Unit!133975)

(declare-fun choose!33697 (ListMap!5383 K!14313 V!14559 K!14313) Unit!133975)

(assert (=> d!1515761 (= lt!1906695 (choose!33697 lt!1906560 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34)) key!4653))))

(assert (=> d!1515761 (not (= (_1!30621 (h!59358 oldBucket!34)) key!4653))))

(assert (=> d!1515761 (= (addRemoveCommutativeForDiffKeys!144 lt!1906560 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34)) key!4653) lt!1906695)))

(declare-fun bs!1136754 () Bool)

(assert (= bs!1136754 d!1515761))

(assert (=> bs!1136754 m!5699045))

(declare-fun m!5699335 () Bool)

(assert (=> bs!1136754 m!5699335))

(assert (=> bs!1136754 m!5699045))

(declare-fun m!5699337 () Bool)

(assert (=> bs!1136754 m!5699337))

(declare-fun m!5699339 () Bool)

(assert (=> bs!1136754 m!5699339))

(assert (=> bs!1136754 m!5699337))

(declare-fun m!5699341 () Bool)

(assert (=> bs!1136754 m!5699341))

(assert (=> b!4743904 d!1515761))

(declare-fun d!1515763 () Bool)

(declare-fun e!2959135 () Bool)

(assert (=> d!1515763 e!2959135))

(declare-fun res!2010373 () Bool)

(assert (=> d!1515763 (=> (not res!2010373) (not e!2959135))))

(declare-fun lt!1906699 () ListMap!5383)

(assert (=> d!1515763 (= res!2010373 (contains!16391 lt!1906699 (_1!30621 (h!59358 oldBucket!34))))))

(declare-fun lt!1906697 () List!53095)

(assert (=> d!1515763 (= lt!1906699 (ListMap!5384 lt!1906697))))

(declare-fun lt!1906696 () Unit!133975)

(declare-fun lt!1906698 () Unit!133975)

(assert (=> d!1515763 (= lt!1906696 lt!1906698)))

(assert (=> d!1515763 (= (getValueByKey!2030 lt!1906697 (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515763 (= lt!1906698 (lemmaContainsTupThenGetReturnValue!1117 lt!1906697 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515763 (= lt!1906697 (insertNoDuplicatedKeys!625 (toList!6020 lt!1906560) (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515763 (= (+!2313 lt!1906560 (h!59358 oldBucket!34)) lt!1906699)))

(declare-fun b!4744005 () Bool)

(declare-fun res!2010374 () Bool)

(assert (=> b!4744005 (=> (not res!2010374) (not e!2959135))))

(assert (=> b!4744005 (= res!2010374 (= (getValueByKey!2030 (toList!6020 lt!1906699) (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34)))))))

(declare-fun b!4744006 () Bool)

(assert (=> b!4744006 (= e!2959135 (contains!16397 (toList!6020 lt!1906699) (h!59358 oldBucket!34)))))

(assert (= (and d!1515763 res!2010373) b!4744005))

(assert (= (and b!4744005 res!2010374) b!4744006))

(declare-fun m!5699343 () Bool)

(assert (=> d!1515763 m!5699343))

(declare-fun m!5699345 () Bool)

(assert (=> d!1515763 m!5699345))

(declare-fun m!5699347 () Bool)

(assert (=> d!1515763 m!5699347))

(declare-fun m!5699349 () Bool)

(assert (=> d!1515763 m!5699349))

(declare-fun m!5699351 () Bool)

(assert (=> b!4744005 m!5699351))

(declare-fun m!5699353 () Bool)

(assert (=> b!4744006 m!5699353))

(assert (=> b!4743904 d!1515763))

(declare-fun d!1515765 () Bool)

(declare-fun e!2959136 () Bool)

(assert (=> d!1515765 e!2959136))

(declare-fun res!2010375 () Bool)

(assert (=> d!1515765 (=> (not res!2010375) (not e!2959136))))

(declare-fun lt!1906700 () ListMap!5383)

(assert (=> d!1515765 (= res!2010375 (not (contains!16391 lt!1906700 key!4653)))))

(assert (=> d!1515765 (= lt!1906700 (ListMap!5384 (removePresrvNoDuplicatedKeys!402 (toList!6020 (+!2313 lt!1906560 (h!59358 oldBucket!34))) key!4653)))))

(assert (=> d!1515765 (= (-!755 (+!2313 lt!1906560 (h!59358 oldBucket!34)) key!4653) lt!1906700)))

(declare-fun b!4744007 () Bool)

(assert (=> b!4744007 (= e!2959136 (= (set.minus (content!9479 (keys!19066 (+!2313 lt!1906560 (h!59358 oldBucket!34)))) (set.insert key!4653 (as set.empty (Set K!14313)))) (content!9479 (keys!19066 lt!1906700))))))

(assert (= (and d!1515765 res!2010375) b!4744007))

(declare-fun m!5699355 () Bool)

(assert (=> d!1515765 m!5699355))

(declare-fun m!5699357 () Bool)

(assert (=> d!1515765 m!5699357))

(declare-fun m!5699359 () Bool)

(assert (=> b!4744007 m!5699359))

(declare-fun m!5699361 () Bool)

(assert (=> b!4744007 m!5699361))

(assert (=> b!4744007 m!5699317))

(declare-fun m!5699363 () Bool)

(assert (=> b!4744007 m!5699363))

(assert (=> b!4744007 m!5699153))

(assert (=> b!4744007 m!5699359))

(assert (=> b!4744007 m!5699363))

(declare-fun m!5699365 () Bool)

(assert (=> b!4744007 m!5699365))

(assert (=> b!4743904 d!1515765))

(declare-fun d!1515767 () Bool)

(declare-fun res!2010380 () Bool)

(declare-fun e!2959141 () Bool)

(assert (=> d!1515767 (=> res!2010380 e!2959141)))

(assert (=> d!1515767 (= res!2010380 (is-Nil!52972 (toList!6019 lm!2023)))))

(assert (=> d!1515767 (= (forall!11696 (toList!6019 lm!2023) lambda!219753) e!2959141)))

(declare-fun b!4744012 () Bool)

(declare-fun e!2959142 () Bool)

(assert (=> b!4744012 (= e!2959141 e!2959142)))

(declare-fun res!2010381 () Bool)

(assert (=> b!4744012 (=> (not res!2010381) (not e!2959142))))

(declare-fun dynLambda!21880 (Int tuple2!54656) Bool)

(assert (=> b!4744012 (= res!2010381 (dynLambda!21880 lambda!219753 (h!59359 (toList!6019 lm!2023))))))

(declare-fun b!4744013 () Bool)

(assert (=> b!4744013 (= e!2959142 (forall!11696 (t!360400 (toList!6019 lm!2023)) lambda!219753))))

(assert (= (and d!1515767 (not res!2010380)) b!4744012))

(assert (= (and b!4744012 res!2010381) b!4744013))

(declare-fun b_lambda!182653 () Bool)

(assert (=> (not b_lambda!182653) (not b!4744012)))

(declare-fun m!5699367 () Bool)

(assert (=> b!4744012 m!5699367))

(declare-fun m!5699369 () Bool)

(assert (=> b!4744013 m!5699369))

(assert (=> start!484182 d!1515767))

(declare-fun d!1515769 () Bool)

(declare-fun isStrictlySorted!787 (List!53096) Bool)

(assert (=> d!1515769 (= (inv!68188 lm!2023) (isStrictlySorted!787 (toList!6019 lm!2023)))))

(declare-fun bs!1136755 () Bool)

(assert (= bs!1136755 d!1515769))

(declare-fun m!5699371 () Bool)

(assert (=> bs!1136755 m!5699371))

(assert (=> start!484182 d!1515769))

(declare-fun b!4744038 () Bool)

(declare-fun e!2959160 () Bool)

(declare-fun contains!16398 (List!53099 K!14313) Bool)

(assert (=> b!4744038 (= e!2959160 (not (contains!16398 (keys!19066 lt!1906566) key!4653)))))

(declare-fun b!4744039 () Bool)

(declare-fun e!2959157 () Unit!133975)

(declare-fun Unit!133979 () Unit!133975)

(assert (=> b!4744039 (= e!2959157 Unit!133979)))

(declare-fun b!4744040 () Bool)

(declare-fun e!2959158 () List!53099)

(declare-fun getKeysList!989 (List!53095) List!53099)

(assert (=> b!4744040 (= e!2959158 (getKeysList!989 (toList!6020 lt!1906566)))))

(declare-fun b!4744041 () Bool)

(assert (=> b!4744041 (= e!2959158 (keys!19066 lt!1906566))))

(declare-fun b!4744042 () Bool)

(declare-fun e!2959159 () Unit!133975)

(assert (=> b!4744042 (= e!2959159 e!2959157)))

(declare-fun c!810328 () Bool)

(declare-fun call!332002 () Bool)

(assert (=> b!4744042 (= c!810328 call!332002)))

(declare-fun b!4744043 () Bool)

(declare-fun e!2959155 () Bool)

(declare-fun e!2959156 () Bool)

(assert (=> b!4744043 (= e!2959155 e!2959156)))

(declare-fun res!2010388 () Bool)

(assert (=> b!4744043 (=> (not res!2010388) (not e!2959156))))

(declare-fun isDefined!9732 (Option!12478) Bool)

(assert (=> b!4744043 (= res!2010388 (isDefined!9732 (getValueByKey!2030 (toList!6020 lt!1906566) key!4653)))))

(declare-fun b!4744044 () Bool)

(assert (=> b!4744044 (= e!2959156 (contains!16398 (keys!19066 lt!1906566) key!4653))))

(declare-fun b!4744045 () Bool)

(assert (=> b!4744045 false))

(declare-fun lt!1906723 () Unit!133975)

(declare-fun lt!1906719 () Unit!133975)

(assert (=> b!4744045 (= lt!1906723 lt!1906719)))

(declare-fun containsKey!3492 (List!53095 K!14313) Bool)

(assert (=> b!4744045 (containsKey!3492 (toList!6020 lt!1906566) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!988 (List!53095 K!14313) Unit!133975)

(assert (=> b!4744045 (= lt!1906719 (lemmaInGetKeysListThenContainsKey!988 (toList!6020 lt!1906566) key!4653))))

(declare-fun Unit!133980 () Unit!133975)

(assert (=> b!4744045 (= e!2959157 Unit!133980)))

(declare-fun b!4744046 () Bool)

(declare-fun lt!1906720 () Unit!133975)

(assert (=> b!4744046 (= e!2959159 lt!1906720)))

(declare-fun lt!1906717 () Unit!133975)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1921 (List!53095 K!14313) Unit!133975)

(assert (=> b!4744046 (= lt!1906717 (lemmaContainsKeyImpliesGetValueByKeyDefined!1921 (toList!6020 lt!1906566) key!4653))))

(assert (=> b!4744046 (isDefined!9732 (getValueByKey!2030 (toList!6020 lt!1906566) key!4653))))

(declare-fun lt!1906722 () Unit!133975)

(assert (=> b!4744046 (= lt!1906722 lt!1906717)))

(declare-fun lemmaInListThenGetKeysListContains!984 (List!53095 K!14313) Unit!133975)

(assert (=> b!4744046 (= lt!1906720 (lemmaInListThenGetKeysListContains!984 (toList!6020 lt!1906566) key!4653))))

(assert (=> b!4744046 call!332002))

(declare-fun bm!331997 () Bool)

(assert (=> bm!331997 (= call!332002 (contains!16398 e!2959158 key!4653))))

(declare-fun c!810326 () Bool)

(declare-fun c!810327 () Bool)

(assert (=> bm!331997 (= c!810326 c!810327)))

(declare-fun d!1515773 () Bool)

(assert (=> d!1515773 e!2959155))

(declare-fun res!2010390 () Bool)

(assert (=> d!1515773 (=> res!2010390 e!2959155)))

(assert (=> d!1515773 (= res!2010390 e!2959160)))

(declare-fun res!2010389 () Bool)

(assert (=> d!1515773 (=> (not res!2010389) (not e!2959160))))

(declare-fun lt!1906724 () Bool)

(assert (=> d!1515773 (= res!2010389 (not lt!1906724))))

(declare-fun lt!1906718 () Bool)

(assert (=> d!1515773 (= lt!1906724 lt!1906718)))

(declare-fun lt!1906721 () Unit!133975)

(assert (=> d!1515773 (= lt!1906721 e!2959159)))

(assert (=> d!1515773 (= c!810327 lt!1906718)))

(assert (=> d!1515773 (= lt!1906718 (containsKey!3492 (toList!6020 lt!1906566) key!4653))))

(assert (=> d!1515773 (= (contains!16391 lt!1906566 key!4653) lt!1906724)))

(assert (= (and d!1515773 c!810327) b!4744046))

(assert (= (and d!1515773 (not c!810327)) b!4744042))

(assert (= (and b!4744042 c!810328) b!4744045))

(assert (= (and b!4744042 (not c!810328)) b!4744039))

(assert (= (or b!4744046 b!4744042) bm!331997))

(assert (= (and bm!331997 c!810326) b!4744040))

(assert (= (and bm!331997 (not c!810326)) b!4744041))

(assert (= (and d!1515773 res!2010389) b!4744038))

(assert (= (and d!1515773 (not res!2010390)) b!4744043))

(assert (= (and b!4744043 res!2010388) b!4744044))

(declare-fun m!5699381 () Bool)

(assert (=> b!4744044 m!5699381))

(assert (=> b!4744044 m!5699381))

(declare-fun m!5699383 () Bool)

(assert (=> b!4744044 m!5699383))

(declare-fun m!5699385 () Bool)

(assert (=> bm!331997 m!5699385))

(assert (=> b!4744038 m!5699381))

(assert (=> b!4744038 m!5699381))

(assert (=> b!4744038 m!5699383))

(declare-fun m!5699387 () Bool)

(assert (=> b!4744040 m!5699387))

(declare-fun m!5699389 () Bool)

(assert (=> b!4744046 m!5699389))

(declare-fun m!5699391 () Bool)

(assert (=> b!4744046 m!5699391))

(assert (=> b!4744046 m!5699391))

(declare-fun m!5699393 () Bool)

(assert (=> b!4744046 m!5699393))

(declare-fun m!5699395 () Bool)

(assert (=> b!4744046 m!5699395))

(assert (=> b!4744041 m!5699381))

(declare-fun m!5699397 () Bool)

(assert (=> b!4744045 m!5699397))

(declare-fun m!5699399 () Bool)

(assert (=> b!4744045 m!5699399))

(assert (=> d!1515773 m!5699397))

(assert (=> b!4744043 m!5699391))

(assert (=> b!4744043 m!5699391))

(assert (=> b!4744043 m!5699393))

(assert (=> b!4743915 d!1515773))

(declare-fun bs!1136762 () Bool)

(declare-fun d!1515781 () Bool)

(assert (= bs!1136762 (and d!1515781 start!484182)))

(declare-fun lambda!219767 () Int)

(assert (=> bs!1136762 (= lambda!219767 lambda!219753)))

(declare-fun lt!1906730 () ListMap!5383)

(declare-fun invariantList!1550 (List!53095) Bool)

(assert (=> d!1515781 (invariantList!1550 (toList!6020 lt!1906730))))

(declare-fun e!2959169 () ListMap!5383)

(assert (=> d!1515781 (= lt!1906730 e!2959169)))

(declare-fun c!810337 () Bool)

(assert (=> d!1515781 (= c!810337 (is-Cons!52972 (toList!6019 lm!2023)))))

(assert (=> d!1515781 (forall!11696 (toList!6019 lm!2023) lambda!219767)))

(assert (=> d!1515781 (= (extractMap!2091 (toList!6019 lm!2023)) lt!1906730)))

(declare-fun b!4744063 () Bool)

(assert (=> b!4744063 (= e!2959169 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (toList!6019 lm!2023))) (extractMap!2091 (t!360400 (toList!6019 lm!2023)))))))

(declare-fun b!4744064 () Bool)

(assert (=> b!4744064 (= e!2959169 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515781 c!810337) b!4744063))

(assert (= (and d!1515781 (not c!810337)) b!4744064))

(declare-fun m!5699413 () Bool)

(assert (=> d!1515781 m!5699413))

(declare-fun m!5699415 () Bool)

(assert (=> d!1515781 m!5699415))

(assert (=> b!4744063 m!5699143))

(assert (=> b!4744063 m!5699143))

(declare-fun m!5699417 () Bool)

(assert (=> b!4744063 m!5699417))

(assert (=> b!4743915 d!1515781))

(declare-fun d!1515793 () Bool)

(declare-fun lt!1906736 () List!53095)

(assert (=> d!1515793 (not (containsKey!3490 lt!1906736 key!4653))))

(declare-fun e!2959175 () List!53095)

(assert (=> d!1515793 (= lt!1906736 e!2959175)))

(declare-fun c!810343 () Bool)

(assert (=> d!1515793 (= c!810343 (and (is-Cons!52971 (t!360399 oldBucket!34)) (= (_1!30621 (h!59358 (t!360399 oldBucket!34))) key!4653)))))

(assert (=> d!1515793 (noDuplicateKeys!2065 (t!360399 oldBucket!34))))

(assert (=> d!1515793 (= (removePairForKey!1660 (t!360399 oldBucket!34) key!4653) lt!1906736)))

(declare-fun b!4744074 () Bool)

(assert (=> b!4744074 (= e!2959175 (t!360399 (t!360399 oldBucket!34)))))

(declare-fun b!4744077 () Bool)

(declare-fun e!2959174 () List!53095)

(assert (=> b!4744077 (= e!2959174 Nil!52971)))

(declare-fun b!4744075 () Bool)

(assert (=> b!4744075 (= e!2959175 e!2959174)))

(declare-fun c!810342 () Bool)

(assert (=> b!4744075 (= c!810342 (is-Cons!52971 (t!360399 oldBucket!34)))))

(declare-fun b!4744076 () Bool)

(assert (=> b!4744076 (= e!2959174 (Cons!52971 (h!59358 (t!360399 oldBucket!34)) (removePairForKey!1660 (t!360399 (t!360399 oldBucket!34)) key!4653)))))

(assert (= (and d!1515793 c!810343) b!4744074))

(assert (= (and d!1515793 (not c!810343)) b!4744075))

(assert (= (and b!4744075 c!810342) b!4744076))

(assert (= (and b!4744075 (not c!810342)) b!4744077))

(declare-fun m!5699423 () Bool)

(assert (=> d!1515793 m!5699423))

(declare-fun m!5699425 () Bool)

(assert (=> d!1515793 m!5699425))

(declare-fun m!5699427 () Bool)

(assert (=> b!4744076 m!5699427))

(assert (=> b!4743902 d!1515793))

(declare-fun d!1515797 () Bool)

(declare-fun lt!1906737 () List!53095)

(assert (=> d!1515797 (not (containsKey!3490 lt!1906737 key!4653))))

(declare-fun e!2959177 () List!53095)

(assert (=> d!1515797 (= lt!1906737 e!2959177)))

(declare-fun c!810345 () Bool)

(assert (=> d!1515797 (= c!810345 (and (is-Cons!52971 oldBucket!34) (= (_1!30621 (h!59358 oldBucket!34)) key!4653)))))

(assert (=> d!1515797 (noDuplicateKeys!2065 oldBucket!34)))

(assert (=> d!1515797 (= (removePairForKey!1660 oldBucket!34 key!4653) lt!1906737)))

(declare-fun b!4744078 () Bool)

(assert (=> b!4744078 (= e!2959177 (t!360399 oldBucket!34))))

(declare-fun b!4744081 () Bool)

(declare-fun e!2959176 () List!53095)

(assert (=> b!4744081 (= e!2959176 Nil!52971)))

(declare-fun b!4744079 () Bool)

(assert (=> b!4744079 (= e!2959177 e!2959176)))

(declare-fun c!810344 () Bool)

(assert (=> b!4744079 (= c!810344 (is-Cons!52971 oldBucket!34))))

(declare-fun b!4744080 () Bool)

(assert (=> b!4744080 (= e!2959176 (Cons!52971 (h!59358 oldBucket!34) (removePairForKey!1660 (t!360399 oldBucket!34) key!4653)))))

(assert (= (and d!1515797 c!810345) b!4744078))

(assert (= (and d!1515797 (not c!810345)) b!4744079))

(assert (= (and b!4744079 c!810344) b!4744080))

(assert (= (and b!4744079 (not c!810344)) b!4744081))

(declare-fun m!5699429 () Bool)

(assert (=> d!1515797 m!5699429))

(assert (=> d!1515797 m!5699095))

(assert (=> b!4744080 m!5699163))

(assert (=> b!4743913 d!1515797))

(declare-fun d!1515799 () Bool)

(assert (=> d!1515799 (= (tail!9134 lt!1906556) (t!360400 lt!1906556))))

(assert (=> b!4743903 d!1515799))

(declare-fun d!1515801 () Bool)

(declare-fun e!2959178 () Bool)

(assert (=> d!1515801 e!2959178))

(declare-fun res!2010391 () Bool)

(assert (=> d!1515801 (=> (not res!2010391) (not e!2959178))))

(declare-fun lt!1906738 () ListMap!5383)

(assert (=> d!1515801 (= res!2010391 (not (contains!16391 lt!1906738 key!4653)))))

(assert (=> d!1515801 (= lt!1906738 (ListMap!5384 (removePresrvNoDuplicatedKeys!402 (toList!6020 lt!1906560) key!4653)))))

(assert (=> d!1515801 (= (-!755 lt!1906560 key!4653) lt!1906738)))

(declare-fun b!4744082 () Bool)

(assert (=> b!4744082 (= e!2959178 (= (set.minus (content!9479 (keys!19066 lt!1906560)) (set.insert key!4653 (as set.empty (Set K!14313)))) (content!9479 (keys!19066 lt!1906738))))))

(assert (= (and d!1515801 res!2010391) b!4744082))

(declare-fun m!5699431 () Bool)

(assert (=> d!1515801 m!5699431))

(declare-fun m!5699433 () Bool)

(assert (=> d!1515801 m!5699433))

(declare-fun m!5699435 () Bool)

(assert (=> b!4744082 m!5699435))

(declare-fun m!5699437 () Bool)

(assert (=> b!4744082 m!5699437))

(assert (=> b!4744082 m!5699317))

(declare-fun m!5699439 () Bool)

(assert (=> b!4744082 m!5699439))

(assert (=> b!4744082 m!5699435))

(assert (=> b!4744082 m!5699439))

(declare-fun m!5699441 () Bool)

(assert (=> b!4744082 m!5699441))

(assert (=> b!4743903 d!1515801))

(declare-fun bs!1136764 () Bool)

(declare-fun d!1515803 () Bool)

(assert (= bs!1136764 (and d!1515803 start!484182)))

(declare-fun lambda!219768 () Int)

(assert (=> bs!1136764 (= lambda!219768 lambda!219753)))

(declare-fun bs!1136765 () Bool)

(assert (= bs!1136765 (and d!1515803 d!1515781)))

(assert (=> bs!1136765 (= lambda!219768 lambda!219767)))

(declare-fun lt!1906739 () ListMap!5383)

(assert (=> d!1515803 (invariantList!1550 (toList!6020 lt!1906739))))

(declare-fun e!2959179 () ListMap!5383)

(assert (=> d!1515803 (= lt!1906739 e!2959179)))

(declare-fun c!810346 () Bool)

(assert (=> d!1515803 (= c!810346 (is-Cons!52972 (Cons!52972 lt!1906562 lt!1906558)))))

(assert (=> d!1515803 (forall!11696 (Cons!52972 lt!1906562 lt!1906558) lambda!219768)))

(assert (=> d!1515803 (= (extractMap!2091 (Cons!52972 lt!1906562 lt!1906558)) lt!1906739)))

(declare-fun b!4744083 () Bool)

(assert (=> b!4744083 (= e!2959179 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (Cons!52972 lt!1906562 lt!1906558))) (extractMap!2091 (t!360400 (Cons!52972 lt!1906562 lt!1906558)))))))

(declare-fun b!4744084 () Bool)

(assert (=> b!4744084 (= e!2959179 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515803 c!810346) b!4744083))

(assert (= (and d!1515803 (not c!810346)) b!4744084))

(declare-fun m!5699443 () Bool)

(assert (=> d!1515803 m!5699443))

(declare-fun m!5699445 () Bool)

(assert (=> d!1515803 m!5699445))

(declare-fun m!5699447 () Bool)

(assert (=> b!4744083 m!5699447))

(assert (=> b!4744083 m!5699447))

(declare-fun m!5699449 () Bool)

(assert (=> b!4744083 m!5699449))

(assert (=> b!4743903 d!1515803))

(declare-fun d!1515805 () Bool)

(assert (=> d!1515805 (= (eq!1162 (extractMap!2091 (Cons!52972 lt!1906562 lt!1906558)) (-!755 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)) key!4653)) (= (content!9478 (toList!6020 (extractMap!2091 (Cons!52972 lt!1906562 lt!1906558)))) (content!9478 (toList!6020 (-!755 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)) key!4653)))))))

(declare-fun bs!1136766 () Bool)

(assert (= bs!1136766 d!1515805))

(declare-fun m!5699451 () Bool)

(assert (=> bs!1136766 m!5699451))

(declare-fun m!5699453 () Bool)

(assert (=> bs!1136766 m!5699453))

(assert (=> b!4743903 d!1515805))

(declare-fun d!1515807 () Bool)

(declare-fun e!2959180 () Bool)

(assert (=> d!1515807 e!2959180))

(declare-fun res!2010392 () Bool)

(assert (=> d!1515807 (=> (not res!2010392) (not e!2959180))))

(declare-fun lt!1906740 () ListMap!5383)

(assert (=> d!1515807 (= res!2010392 (not (contains!16391 lt!1906740 key!4653)))))

(assert (=> d!1515807 (= lt!1906740 (ListMap!5384 (removePresrvNoDuplicatedKeys!402 (toList!6020 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558))) key!4653)))))

(assert (=> d!1515807 (= (-!755 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)) key!4653) lt!1906740)))

(declare-fun b!4744085 () Bool)

(assert (=> b!4744085 (= e!2959180 (= (set.minus (content!9479 (keys!19066 (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)))) (set.insert key!4653 (as set.empty (Set K!14313)))) (content!9479 (keys!19066 lt!1906740))))))

(assert (= (and d!1515807 res!2010392) b!4744085))

(declare-fun m!5699455 () Bool)

(assert (=> d!1515807 m!5699455))

(declare-fun m!5699457 () Bool)

(assert (=> d!1515807 m!5699457))

(declare-fun m!5699459 () Bool)

(assert (=> b!4744085 m!5699459))

(declare-fun m!5699461 () Bool)

(assert (=> b!4744085 m!5699461))

(assert (=> b!4744085 m!5699317))

(declare-fun m!5699463 () Bool)

(assert (=> b!4744085 m!5699463))

(assert (=> b!4744085 m!5699031))

(assert (=> b!4744085 m!5699459))

(assert (=> b!4744085 m!5699463))

(declare-fun m!5699465 () Bool)

(assert (=> b!4744085 m!5699465))

(assert (=> b!4743903 d!1515807))

(declare-fun bs!1136767 () Bool)

(declare-fun d!1515809 () Bool)

(assert (= bs!1136767 (and d!1515809 start!484182)))

(declare-fun lambda!219769 () Int)

(assert (=> bs!1136767 (= lambda!219769 lambda!219753)))

(declare-fun bs!1136768 () Bool)

(assert (= bs!1136768 (and d!1515809 d!1515781)))

(assert (=> bs!1136768 (= lambda!219769 lambda!219767)))

(declare-fun bs!1136769 () Bool)

(assert (= bs!1136769 (and d!1515809 d!1515803)))

(assert (=> bs!1136769 (= lambda!219769 lambda!219768)))

(declare-fun lt!1906741 () ListMap!5383)

(assert (=> d!1515809 (invariantList!1550 (toList!6020 lt!1906741))))

(declare-fun e!2959181 () ListMap!5383)

(assert (=> d!1515809 (= lt!1906741 e!2959181)))

(declare-fun c!810347 () Bool)

(assert (=> d!1515809 (= c!810347 (is-Cons!52972 (Cons!52972 lt!1906567 lt!1906558)))))

(assert (=> d!1515809 (forall!11696 (Cons!52972 lt!1906567 lt!1906558) lambda!219769)))

(assert (=> d!1515809 (= (extractMap!2091 (Cons!52972 lt!1906567 lt!1906558)) lt!1906741)))

(declare-fun b!4744086 () Bool)

(assert (=> b!4744086 (= e!2959181 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (Cons!52972 lt!1906567 lt!1906558))) (extractMap!2091 (t!360400 (Cons!52972 lt!1906567 lt!1906558)))))))

(declare-fun b!4744087 () Bool)

(assert (=> b!4744087 (= e!2959181 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515809 c!810347) b!4744086))

(assert (= (and d!1515809 (not c!810347)) b!4744087))

(declare-fun m!5699467 () Bool)

(assert (=> d!1515809 m!5699467))

(declare-fun m!5699469 () Bool)

(assert (=> d!1515809 m!5699469))

(declare-fun m!5699471 () Bool)

(assert (=> b!4744086 m!5699471))

(assert (=> b!4744086 m!5699471))

(declare-fun m!5699473 () Bool)

(assert (=> b!4744086 m!5699473))

(assert (=> b!4743903 d!1515809))

(declare-fun bs!1136770 () Bool)

(declare-fun d!1515811 () Bool)

(assert (= bs!1136770 (and d!1515811 start!484182)))

(declare-fun lambda!219770 () Int)

(assert (=> bs!1136770 (= lambda!219770 lambda!219753)))

(declare-fun bs!1136771 () Bool)

(assert (= bs!1136771 (and d!1515811 d!1515781)))

(assert (=> bs!1136771 (= lambda!219770 lambda!219767)))

(declare-fun bs!1136772 () Bool)

(assert (= bs!1136772 (and d!1515811 d!1515803)))

(assert (=> bs!1136772 (= lambda!219770 lambda!219768)))

(declare-fun bs!1136773 () Bool)

(assert (= bs!1136773 (and d!1515811 d!1515809)))

(assert (=> bs!1136773 (= lambda!219770 lambda!219769)))

(declare-fun lt!1906742 () ListMap!5383)

(assert (=> d!1515811 (invariantList!1550 (toList!6020 lt!1906742))))

(declare-fun e!2959182 () ListMap!5383)

(assert (=> d!1515811 (= lt!1906742 e!2959182)))

(declare-fun c!810348 () Bool)

(assert (=> d!1515811 (= c!810348 (is-Cons!52972 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023)))))))

(assert (=> d!1515811 (forall!11696 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023))) lambda!219770)))

(assert (=> d!1515811 (= (extractMap!2091 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023)))) lt!1906742)))

(declare-fun b!4744088 () Bool)

(assert (=> b!4744088 (= e!2959182 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023))))) (extractMap!2091 (t!360400 (Cons!52972 lt!1906562 (t!360400 (toList!6019 lm!2023)))))))))

(declare-fun b!4744089 () Bool)

(assert (=> b!4744089 (= e!2959182 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515811 c!810348) b!4744088))

(assert (= (and d!1515811 (not c!810348)) b!4744089))

(declare-fun m!5699475 () Bool)

(assert (=> d!1515811 m!5699475))

(declare-fun m!5699477 () Bool)

(assert (=> d!1515811 m!5699477))

(declare-fun m!5699479 () Bool)

(assert (=> b!4744088 m!5699479))

(assert (=> b!4744088 m!5699479))

(declare-fun m!5699481 () Bool)

(assert (=> b!4744088 m!5699481))

(assert (=> b!4743903 d!1515811))

(declare-fun d!1515813 () Bool)

(assert (=> d!1515813 (= (eq!1162 lt!1906568 lt!1906548) (= (content!9478 (toList!6020 lt!1906568)) (content!9478 (toList!6020 lt!1906548))))))

(declare-fun bs!1136774 () Bool)

(assert (= bs!1136774 d!1515813))

(declare-fun m!5699483 () Bool)

(assert (=> bs!1136774 m!5699483))

(declare-fun m!5699485 () Bool)

(assert (=> bs!1136774 m!5699485))

(assert (=> b!4743903 d!1515813))

(declare-fun bs!1136776 () Bool)

(declare-fun d!1515815 () Bool)

(assert (= bs!1136776 (and d!1515815 d!1515809)))

(declare-fun lambda!219773 () Int)

(assert (=> bs!1136776 (= lambda!219773 lambda!219769)))

(declare-fun bs!1136777 () Bool)

(assert (= bs!1136777 (and d!1515815 d!1515811)))

(assert (=> bs!1136777 (= lambda!219773 lambda!219770)))

(declare-fun bs!1136778 () Bool)

(assert (= bs!1136778 (and d!1515815 d!1515803)))

(assert (=> bs!1136778 (= lambda!219773 lambda!219768)))

(declare-fun bs!1136779 () Bool)

(assert (= bs!1136779 (and d!1515815 start!484182)))

(assert (=> bs!1136779 (= lambda!219773 lambda!219753)))

(declare-fun bs!1136780 () Bool)

(assert (= bs!1136780 (and d!1515815 d!1515781)))

(assert (=> bs!1136780 (= lambda!219773 lambda!219767)))

(assert (=> d!1515815 (eq!1162 (extractMap!2091 (Cons!52972 (tuple2!54657 hash!405 lt!1906547) (tail!9134 (toList!6019 lt!1906564)))) (-!755 (extractMap!2091 (Cons!52972 (tuple2!54657 hash!405 (t!360399 oldBucket!34)) (tail!9134 (toList!6019 lt!1906564)))) key!4653))))

(declare-fun lt!1906748 () Unit!133975)

(declare-fun choose!33698 (ListLongMap!4549 (_ BitVec 64) List!53095 List!53095 K!14313 Hashable!6434) Unit!133975)

(assert (=> d!1515815 (= lt!1906748 (choose!33698 lt!1906564 hash!405 (t!360399 oldBucket!34) lt!1906547 key!4653 hashF!1323))))

(assert (=> d!1515815 (forall!11696 (toList!6019 lt!1906564) lambda!219773)))

(assert (=> d!1515815 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!115 lt!1906564 hash!405 (t!360399 oldBucket!34) lt!1906547 key!4653 hashF!1323) lt!1906748)))

(declare-fun bs!1136781 () Bool)

(assert (= bs!1136781 d!1515815))

(declare-fun m!5699505 () Bool)

(assert (=> bs!1136781 m!5699505))

(declare-fun m!5699507 () Bool)

(assert (=> bs!1136781 m!5699507))

(declare-fun m!5699509 () Bool)

(assert (=> bs!1136781 m!5699509))

(declare-fun m!5699511 () Bool)

(assert (=> bs!1136781 m!5699511))

(assert (=> bs!1136781 m!5699507))

(declare-fun m!5699513 () Bool)

(assert (=> bs!1136781 m!5699513))

(assert (=> bs!1136781 m!5699505))

(assert (=> bs!1136781 m!5699511))

(declare-fun m!5699515 () Bool)

(assert (=> bs!1136781 m!5699515))

(declare-fun m!5699517 () Bool)

(assert (=> bs!1136781 m!5699517))

(assert (=> b!4743903 d!1515815))

(declare-fun d!1515821 () Bool)

(assert (=> d!1515821 true))

(assert (=> d!1515821 true))

(declare-fun lambda!219776 () Int)

(declare-fun forall!11698 (List!53095 Int) Bool)

(assert (=> d!1515821 (= (allKeysSameHash!1891 newBucket!218 hash!405 hashF!1323) (forall!11698 newBucket!218 lambda!219776))))

(declare-fun bs!1136783 () Bool)

(assert (= bs!1136783 d!1515821))

(declare-fun m!5699521 () Bool)

(assert (=> bs!1136783 m!5699521))

(assert (=> b!4743896 d!1515821))

(declare-fun d!1515825 () Bool)

(declare-fun lt!1906752 () List!53095)

(assert (=> d!1515825 (not (containsKey!3490 lt!1906752 key!4653))))

(declare-fun e!2959199 () List!53095)

(assert (=> d!1515825 (= lt!1906752 e!2959199)))

(declare-fun c!810356 () Bool)

(assert (=> d!1515825 (= c!810356 (and (is-Cons!52971 lt!1906561) (= (_1!30621 (h!59358 lt!1906561)) key!4653)))))

(assert (=> d!1515825 (noDuplicateKeys!2065 lt!1906561)))

(assert (=> d!1515825 (= (removePairForKey!1660 lt!1906561 key!4653) lt!1906752)))

(declare-fun b!4744118 () Bool)

(assert (=> b!4744118 (= e!2959199 (t!360399 lt!1906561))))

(declare-fun b!4744121 () Bool)

(declare-fun e!2959198 () List!53095)

(assert (=> b!4744121 (= e!2959198 Nil!52971)))

(declare-fun b!4744119 () Bool)

(assert (=> b!4744119 (= e!2959199 e!2959198)))

(declare-fun c!810355 () Bool)

(assert (=> b!4744119 (= c!810355 (is-Cons!52971 lt!1906561))))

(declare-fun b!4744120 () Bool)

(assert (=> b!4744120 (= e!2959198 (Cons!52971 (h!59358 lt!1906561) (removePairForKey!1660 (t!360399 lt!1906561) key!4653)))))

(assert (= (and d!1515825 c!810356) b!4744118))

(assert (= (and d!1515825 (not c!810356)) b!4744119))

(assert (= (and b!4744119 c!810355) b!4744120))

(assert (= (and b!4744119 (not c!810355)) b!4744121))

(declare-fun m!5699523 () Bool)

(assert (=> d!1515825 m!5699523))

(declare-fun m!5699525 () Bool)

(assert (=> d!1515825 m!5699525))

(declare-fun m!5699527 () Bool)

(assert (=> b!4744120 m!5699527))

(assert (=> b!4743907 d!1515825))

(declare-fun d!1515827 () Bool)

(assert (=> d!1515827 (= (tail!9136 newBucket!218) (t!360399 newBucket!218))))

(assert (=> b!4743907 d!1515827))

(declare-fun d!1515829 () Bool)

(assert (=> d!1515829 (= (tail!9136 oldBucket!34) (t!360399 oldBucket!34))))

(assert (=> b!4743907 d!1515829))

(declare-fun bs!1136791 () Bool)

(declare-fun b!4744171 () Bool)

(assert (= bs!1136791 (and b!4744171 d!1515821)))

(declare-fun lambda!219815 () Int)

(assert (=> bs!1136791 (not (= lambda!219815 lambda!219776))))

(assert (=> b!4744171 true))

(declare-fun bs!1136792 () Bool)

(declare-fun b!4744172 () Bool)

(assert (= bs!1136792 (and b!4744172 d!1515821)))

(declare-fun lambda!219816 () Int)

(assert (=> bs!1136792 (not (= lambda!219816 lambda!219776))))

(declare-fun bs!1136793 () Bool)

(assert (= bs!1136793 (and b!4744172 b!4744171)))

(assert (=> bs!1136793 (= lambda!219816 lambda!219815)))

(assert (=> b!4744172 true))

(declare-fun lambda!219817 () Int)

(assert (=> bs!1136792 (not (= lambda!219817 lambda!219776))))

(declare-fun lt!1906849 () ListMap!5383)

(assert (=> bs!1136793 (= (= lt!1906849 lt!1906552) (= lambda!219817 lambda!219815))))

(assert (=> b!4744172 (= (= lt!1906849 lt!1906552) (= lambda!219817 lambda!219816))))

(assert (=> b!4744172 true))

(declare-fun bs!1136794 () Bool)

(declare-fun d!1515831 () Bool)

(assert (= bs!1136794 (and d!1515831 d!1515821)))

(declare-fun lambda!219818 () Int)

(assert (=> bs!1136794 (not (= lambda!219818 lambda!219776))))

(declare-fun bs!1136795 () Bool)

(assert (= bs!1136795 (and d!1515831 b!4744171)))

(declare-fun lt!1906842 () ListMap!5383)

(assert (=> bs!1136795 (= (= lt!1906842 lt!1906552) (= lambda!219818 lambda!219815))))

(declare-fun bs!1136796 () Bool)

(assert (= bs!1136796 (and d!1515831 b!4744172)))

(assert (=> bs!1136796 (= (= lt!1906842 lt!1906552) (= lambda!219818 lambda!219816))))

(assert (=> bs!1136796 (= (= lt!1906842 lt!1906849) (= lambda!219818 lambda!219817))))

(assert (=> d!1515831 true))

(declare-fun b!4744170 () Bool)

(declare-fun e!2959235 () Bool)

(assert (=> b!4744170 (= e!2959235 (forall!11698 (toList!6020 lt!1906552) lambda!219817))))

(declare-fun e!2959236 () Bool)

(assert (=> d!1515831 e!2959236))

(declare-fun res!2010445 () Bool)

(assert (=> d!1515831 (=> (not res!2010445) (not e!2959236))))

(assert (=> d!1515831 (= res!2010445 (forall!11698 (_2!30622 (h!59359 (toList!6019 lm!2023))) lambda!219818))))

(declare-fun e!2959237 () ListMap!5383)

(assert (=> d!1515831 (= lt!1906842 e!2959237)))

(declare-fun c!810362 () Bool)

(assert (=> d!1515831 (= c!810362 (is-Nil!52971 (_2!30622 (h!59359 (toList!6019 lm!2023)))))))

(assert (=> d!1515831 (noDuplicateKeys!2065 (_2!30622 (h!59359 (toList!6019 lm!2023))))))

(assert (=> d!1515831 (= (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (toList!6019 lm!2023))) lt!1906552) lt!1906842)))

(assert (=> b!4744171 (= e!2959237 lt!1906552)))

(declare-fun lt!1906843 () Unit!133975)

(declare-fun call!332011 () Unit!133975)

(assert (=> b!4744171 (= lt!1906843 call!332011)))

(declare-fun call!332009 () Bool)

(assert (=> b!4744171 call!332009))

(declare-fun lt!1906860 () Unit!133975)

(assert (=> b!4744171 (= lt!1906860 lt!1906843)))

(declare-fun call!332010 () Bool)

(assert (=> b!4744171 call!332010))

(declare-fun lt!1906853 () Unit!133975)

(declare-fun Unit!133981 () Unit!133975)

(assert (=> b!4744171 (= lt!1906853 Unit!133981)))

(assert (=> b!4744172 (= e!2959237 lt!1906849)))

(declare-fun lt!1906840 () ListMap!5383)

(assert (=> b!4744172 (= lt!1906840 (+!2313 lt!1906552 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023))))))))

(assert (=> b!4744172 (= lt!1906849 (addToMapMapFromBucket!1495 (t!360399 (_2!30622 (h!59359 (toList!6019 lm!2023)))) (+!2313 lt!1906552 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023)))))))))

(declare-fun lt!1906850 () Unit!133975)

(assert (=> b!4744172 (= lt!1906850 call!332011)))

(assert (=> b!4744172 (forall!11698 (toList!6020 lt!1906552) lambda!219816)))

(declare-fun lt!1906856 () Unit!133975)

(assert (=> b!4744172 (= lt!1906856 lt!1906850)))

(assert (=> b!4744172 (forall!11698 (toList!6020 lt!1906840) lambda!219817)))

(declare-fun lt!1906844 () Unit!133975)

(declare-fun Unit!133982 () Unit!133975)

(assert (=> b!4744172 (= lt!1906844 Unit!133982)))

(assert (=> b!4744172 (forall!11698 (t!360399 (_2!30622 (h!59359 (toList!6019 lm!2023)))) lambda!219817)))

(declare-fun lt!1906846 () Unit!133975)

(declare-fun Unit!133983 () Unit!133975)

(assert (=> b!4744172 (= lt!1906846 Unit!133983)))

(declare-fun lt!1906847 () Unit!133975)

(declare-fun Unit!133984 () Unit!133975)

(assert (=> b!4744172 (= lt!1906847 Unit!133984)))

(declare-fun lt!1906851 () Unit!133975)

(declare-fun forallContained!3738 (List!53095 Int tuple2!54654) Unit!133975)

(assert (=> b!4744172 (= lt!1906851 (forallContained!3738 (toList!6020 lt!1906840) lambda!219817 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023))))))))

(assert (=> b!4744172 (contains!16391 lt!1906840 (_1!30621 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023))))))))

(declare-fun lt!1906857 () Unit!133975)

(declare-fun Unit!133985 () Unit!133975)

(assert (=> b!4744172 (= lt!1906857 Unit!133985)))

(assert (=> b!4744172 (contains!16391 lt!1906849 (_1!30621 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023))))))))

(declare-fun lt!1906854 () Unit!133975)

(declare-fun Unit!133986 () Unit!133975)

(assert (=> b!4744172 (= lt!1906854 Unit!133986)))

(assert (=> b!4744172 call!332009))

(declare-fun lt!1906852 () Unit!133975)

(declare-fun Unit!133987 () Unit!133975)

(assert (=> b!4744172 (= lt!1906852 Unit!133987)))

(assert (=> b!4744172 (forall!11698 (toList!6020 lt!1906840) lambda!219817)))

(declare-fun lt!1906848 () Unit!133975)

(declare-fun Unit!133988 () Unit!133975)

(assert (=> b!4744172 (= lt!1906848 Unit!133988)))

(declare-fun lt!1906859 () Unit!133975)

(declare-fun Unit!133989 () Unit!133975)

(assert (=> b!4744172 (= lt!1906859 Unit!133989)))

(declare-fun lt!1906845 () Unit!133975)

(declare-fun addForallContainsKeyThenBeforeAdding!834 (ListMap!5383 ListMap!5383 K!14313 V!14559) Unit!133975)

(assert (=> b!4744172 (= lt!1906845 (addForallContainsKeyThenBeforeAdding!834 lt!1906552 lt!1906849 (_1!30621 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023))))) (_2!30621 (h!59358 (_2!30622 (h!59359 (toList!6019 lm!2023)))))))))

(assert (=> b!4744172 (forall!11698 (toList!6020 lt!1906552) lambda!219817)))

(declare-fun lt!1906858 () Unit!133975)

(assert (=> b!4744172 (= lt!1906858 lt!1906845)))

(assert (=> b!4744172 call!332010))

(declare-fun lt!1906841 () Unit!133975)

(declare-fun Unit!133990 () Unit!133975)

(assert (=> b!4744172 (= lt!1906841 Unit!133990)))

(declare-fun res!2010444 () Bool)

(assert (=> b!4744172 (= res!2010444 (forall!11698 (_2!30622 (h!59359 (toList!6019 lm!2023))) lambda!219817))))

(assert (=> b!4744172 (=> (not res!2010444) (not e!2959235))))

(assert (=> b!4744172 e!2959235))

(declare-fun lt!1906855 () Unit!133975)

(declare-fun Unit!133991 () Unit!133975)

(assert (=> b!4744172 (= lt!1906855 Unit!133991)))

(declare-fun bm!332004 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!835 (ListMap!5383) Unit!133975)

(assert (=> bm!332004 (= call!332011 (lemmaContainsAllItsOwnKeys!835 lt!1906552))))

(declare-fun bm!332005 () Bool)

(assert (=> bm!332005 (= call!332010 (forall!11698 (toList!6020 lt!1906552) (ite c!810362 lambda!219815 lambda!219817)))))

(declare-fun b!4744173 () Bool)

(declare-fun res!2010443 () Bool)

(assert (=> b!4744173 (=> (not res!2010443) (not e!2959236))))

(assert (=> b!4744173 (= res!2010443 (forall!11698 (toList!6020 lt!1906552) lambda!219818))))

(declare-fun b!4744174 () Bool)

(assert (=> b!4744174 (= e!2959236 (invariantList!1550 (toList!6020 lt!1906842)))))

(declare-fun bm!332006 () Bool)

(assert (=> bm!332006 (= call!332009 (forall!11698 (ite c!810362 (toList!6020 lt!1906552) (_2!30622 (h!59359 (toList!6019 lm!2023)))) (ite c!810362 lambda!219815 lambda!219817)))))

(assert (= (and d!1515831 c!810362) b!4744171))

(assert (= (and d!1515831 (not c!810362)) b!4744172))

(assert (= (and b!4744172 res!2010444) b!4744170))

(assert (= (or b!4744171 b!4744172) bm!332004))

(assert (= (or b!4744171 b!4744172) bm!332006))

(assert (= (or b!4744171 b!4744172) bm!332005))

(assert (= (and d!1515831 res!2010445) b!4744173))

(assert (= (and b!4744173 res!2010443) b!4744174))

(declare-fun m!5699577 () Bool)

(assert (=> bm!332005 m!5699577))

(declare-fun m!5699579 () Bool)

(assert (=> b!4744172 m!5699579))

(declare-fun m!5699581 () Bool)

(assert (=> b!4744172 m!5699581))

(declare-fun m!5699583 () Bool)

(assert (=> b!4744172 m!5699583))

(declare-fun m!5699585 () Bool)

(assert (=> b!4744172 m!5699585))

(declare-fun m!5699587 () Bool)

(assert (=> b!4744172 m!5699587))

(declare-fun m!5699589 () Bool)

(assert (=> b!4744172 m!5699589))

(assert (=> b!4744172 m!5699579))

(declare-fun m!5699591 () Bool)

(assert (=> b!4744172 m!5699591))

(declare-fun m!5699593 () Bool)

(assert (=> b!4744172 m!5699593))

(declare-fun m!5699595 () Bool)

(assert (=> b!4744172 m!5699595))

(declare-fun m!5699597 () Bool)

(assert (=> b!4744172 m!5699597))

(assert (=> b!4744172 m!5699585))

(declare-fun m!5699599 () Bool)

(assert (=> b!4744172 m!5699599))

(declare-fun m!5699601 () Bool)

(assert (=> bm!332004 m!5699601))

(declare-fun m!5699603 () Bool)

(assert (=> b!4744173 m!5699603))

(declare-fun m!5699605 () Bool)

(assert (=> bm!332006 m!5699605))

(assert (=> b!4744170 m!5699587))

(declare-fun m!5699607 () Bool)

(assert (=> d!1515831 m!5699607))

(declare-fun m!5699609 () Bool)

(assert (=> d!1515831 m!5699609))

(declare-fun m!5699611 () Bool)

(assert (=> b!4744174 m!5699611))

(assert (=> b!4743905 d!1515831))

(declare-fun bs!1136797 () Bool)

(declare-fun d!1515849 () Bool)

(assert (= bs!1136797 (and d!1515849 d!1515809)))

(declare-fun lambda!219819 () Int)

(assert (=> bs!1136797 (= lambda!219819 lambda!219769)))

(declare-fun bs!1136798 () Bool)

(assert (= bs!1136798 (and d!1515849 d!1515811)))

(assert (=> bs!1136798 (= lambda!219819 lambda!219770)))

(declare-fun bs!1136799 () Bool)

(assert (= bs!1136799 (and d!1515849 d!1515803)))

(assert (=> bs!1136799 (= lambda!219819 lambda!219768)))

(declare-fun bs!1136800 () Bool)

(assert (= bs!1136800 (and d!1515849 start!484182)))

(assert (=> bs!1136800 (= lambda!219819 lambda!219753)))

(declare-fun bs!1136801 () Bool)

(assert (= bs!1136801 (and d!1515849 d!1515815)))

(assert (=> bs!1136801 (= lambda!219819 lambda!219773)))

(declare-fun bs!1136802 () Bool)

(assert (= bs!1136802 (and d!1515849 d!1515781)))

(assert (=> bs!1136802 (= lambda!219819 lambda!219767)))

(declare-fun lt!1906861 () ListMap!5383)

(assert (=> d!1515849 (invariantList!1550 (toList!6020 lt!1906861))))

(declare-fun e!2959238 () ListMap!5383)

(assert (=> d!1515849 (= lt!1906861 e!2959238)))

(declare-fun c!810363 () Bool)

(assert (=> d!1515849 (= c!810363 (is-Cons!52972 (t!360400 (toList!6019 lm!2023))))))

(assert (=> d!1515849 (forall!11696 (t!360400 (toList!6019 lm!2023)) lambda!219819)))

(assert (=> d!1515849 (= (extractMap!2091 (t!360400 (toList!6019 lm!2023))) lt!1906861)))

(declare-fun b!4744177 () Bool)

(assert (=> b!4744177 (= e!2959238 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (t!360400 (toList!6019 lm!2023)))) (extractMap!2091 (t!360400 (t!360400 (toList!6019 lm!2023))))))))

(declare-fun b!4744178 () Bool)

(assert (=> b!4744178 (= e!2959238 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515849 c!810363) b!4744177))

(assert (= (and d!1515849 (not c!810363)) b!4744178))

(declare-fun m!5699613 () Bool)

(assert (=> d!1515849 m!5699613))

(declare-fun m!5699615 () Bool)

(assert (=> d!1515849 m!5699615))

(declare-fun m!5699617 () Bool)

(assert (=> b!4744177 m!5699617))

(assert (=> b!4744177 m!5699617))

(declare-fun m!5699619 () Bool)

(assert (=> b!4744177 m!5699619))

(assert (=> b!4743905 d!1515849))

(declare-fun d!1515851 () Bool)

(assert (=> d!1515851 (= (tail!9135 lm!2023) (ListLongMap!4550 (tail!9134 (toList!6019 lm!2023))))))

(declare-fun bs!1136803 () Bool)

(assert (= bs!1136803 d!1515851))

(declare-fun m!5699621 () Bool)

(assert (=> bs!1136803 m!5699621))

(assert (=> b!4743905 d!1515851))

(declare-fun d!1515853 () Bool)

(assert (=> d!1515853 (= (eq!1162 lt!1906571 (+!2313 lt!1906577 lt!1906551)) (= (content!9478 (toList!6020 lt!1906571)) (content!9478 (toList!6020 (+!2313 lt!1906577 lt!1906551)))))))

(declare-fun bs!1136804 () Bool)

(assert (= bs!1136804 d!1515853))

(assert (=> bs!1136804 m!5699307))

(declare-fun m!5699623 () Bool)

(assert (=> bs!1136804 m!5699623))

(assert (=> b!4743916 d!1515853))

(declare-fun d!1515855 () Bool)

(declare-fun e!2959239 () Bool)

(assert (=> d!1515855 e!2959239))

(declare-fun res!2010446 () Bool)

(assert (=> d!1515855 (=> (not res!2010446) (not e!2959239))))

(declare-fun lt!1906865 () ListMap!5383)

(assert (=> d!1515855 (= res!2010446 (contains!16391 lt!1906865 (_1!30621 lt!1906551)))))

(declare-fun lt!1906863 () List!53095)

(assert (=> d!1515855 (= lt!1906865 (ListMap!5384 lt!1906863))))

(declare-fun lt!1906862 () Unit!133975)

(declare-fun lt!1906864 () Unit!133975)

(assert (=> d!1515855 (= lt!1906862 lt!1906864)))

(assert (=> d!1515855 (= (getValueByKey!2030 lt!1906863 (_1!30621 lt!1906551)) (Some!12477 (_2!30621 lt!1906551)))))

(assert (=> d!1515855 (= lt!1906864 (lemmaContainsTupThenGetReturnValue!1117 lt!1906863 (_1!30621 lt!1906551) (_2!30621 lt!1906551)))))

(assert (=> d!1515855 (= lt!1906863 (insertNoDuplicatedKeys!625 (toList!6020 lt!1906577) (_1!30621 lt!1906551) (_2!30621 lt!1906551)))))

(assert (=> d!1515855 (= (+!2313 lt!1906577 lt!1906551) lt!1906865)))

(declare-fun b!4744179 () Bool)

(declare-fun res!2010447 () Bool)

(assert (=> b!4744179 (=> (not res!2010447) (not e!2959239))))

(assert (=> b!4744179 (= res!2010447 (= (getValueByKey!2030 (toList!6020 lt!1906865) (_1!30621 lt!1906551)) (Some!12477 (_2!30621 lt!1906551))))))

(declare-fun b!4744180 () Bool)

(assert (=> b!4744180 (= e!2959239 (contains!16397 (toList!6020 lt!1906865) lt!1906551))))

(assert (= (and d!1515855 res!2010446) b!4744179))

(assert (= (and b!4744179 res!2010447) b!4744180))

(declare-fun m!5699625 () Bool)

(assert (=> d!1515855 m!5699625))

(declare-fun m!5699627 () Bool)

(assert (=> d!1515855 m!5699627))

(declare-fun m!5699629 () Bool)

(assert (=> d!1515855 m!5699629))

(declare-fun m!5699631 () Bool)

(assert (=> d!1515855 m!5699631))

(declare-fun m!5699633 () Bool)

(assert (=> b!4744179 m!5699633))

(declare-fun m!5699635 () Bool)

(assert (=> b!4744180 m!5699635))

(assert (=> b!4743916 d!1515855))

(declare-fun d!1515857 () Bool)

(assert (=> d!1515857 (= (eq!1162 lt!1906554 lt!1906553) (= (content!9478 (toList!6020 lt!1906554)) (content!9478 (toList!6020 lt!1906553))))))

(declare-fun bs!1136805 () Bool)

(assert (= bs!1136805 d!1515857))

(declare-fun m!5699637 () Bool)

(assert (=> bs!1136805 m!5699637))

(declare-fun m!5699639 () Bool)

(assert (=> bs!1136805 m!5699639))

(assert (=> b!4743909 d!1515857))

(declare-fun d!1515859 () Bool)

(assert (=> d!1515859 (contains!16392 (toList!6019 lm!2023) (tuple2!54657 lt!1906576 lt!1906573))))

(declare-fun lt!1906868 () Unit!133975)

(declare-fun choose!33699 (ListLongMap!4549 (_ BitVec 64) List!53095) Unit!133975)

(assert (=> d!1515859 (= lt!1906868 (choose!33699 lm!2023 lt!1906576 lt!1906573))))

(assert (=> d!1515859 (contains!16393 lm!2023 lt!1906576)))

(assert (=> d!1515859 (= (lemmaGetValueImpliesTupleContained!410 lm!2023 lt!1906576 lt!1906573) lt!1906868)))

(declare-fun bs!1136806 () Bool)

(assert (= bs!1136806 d!1515859))

(declare-fun m!5699641 () Bool)

(assert (=> bs!1136806 m!5699641))

(declare-fun m!5699643 () Bool)

(assert (=> bs!1136806 m!5699643))

(assert (=> bs!1136806 m!5699103))

(assert (=> b!4743920 d!1515859))

(declare-fun d!1515861 () Bool)

(assert (=> d!1515861 (dynLambda!21880 lambda!219753 lt!1906555)))

(declare-fun lt!1906871 () Unit!133975)

(declare-fun choose!33700 (List!53096 Int tuple2!54656) Unit!133975)

(assert (=> d!1515861 (= lt!1906871 (choose!33700 (toList!6019 lm!2023) lambda!219753 lt!1906555))))

(declare-fun e!2959242 () Bool)

(assert (=> d!1515861 e!2959242))

(declare-fun res!2010450 () Bool)

(assert (=> d!1515861 (=> (not res!2010450) (not e!2959242))))

(assert (=> d!1515861 (= res!2010450 (forall!11696 (toList!6019 lm!2023) lambda!219753))))

(assert (=> d!1515861 (= (forallContained!3736 (toList!6019 lm!2023) lambda!219753 lt!1906555) lt!1906871)))

(declare-fun b!4744184 () Bool)

(assert (=> b!4744184 (= e!2959242 (contains!16392 (toList!6019 lm!2023) lt!1906555))))

(assert (= (and d!1515861 res!2010450) b!4744184))

(declare-fun b_lambda!182657 () Bool)

(assert (=> (not b_lambda!182657) (not d!1515861)))

(declare-fun m!5699645 () Bool)

(assert (=> d!1515861 m!5699645))

(declare-fun m!5699647 () Bool)

(assert (=> d!1515861 m!5699647))

(assert (=> d!1515861 m!5699159))

(assert (=> b!4744184 m!5699107))

(assert (=> b!4743920 d!1515861))

(declare-fun bs!1136807 () Bool)

(declare-fun d!1515863 () Bool)

(assert (= bs!1136807 (and d!1515863 d!1515809)))

(declare-fun lambda!219822 () Int)

(assert (=> bs!1136807 (= lambda!219822 lambda!219769)))

(declare-fun bs!1136808 () Bool)

(assert (= bs!1136808 (and d!1515863 d!1515811)))

(assert (=> bs!1136808 (= lambda!219822 lambda!219770)))

(declare-fun bs!1136809 () Bool)

(assert (= bs!1136809 (and d!1515863 d!1515803)))

(assert (=> bs!1136809 (= lambda!219822 lambda!219768)))

(declare-fun bs!1136810 () Bool)

(assert (= bs!1136810 (and d!1515863 start!484182)))

(assert (=> bs!1136810 (= lambda!219822 lambda!219753)))

(declare-fun bs!1136811 () Bool)

(assert (= bs!1136811 (and d!1515863 d!1515849)))

(assert (=> bs!1136811 (= lambda!219822 lambda!219819)))

(declare-fun bs!1136812 () Bool)

(assert (= bs!1136812 (and d!1515863 d!1515815)))

(assert (=> bs!1136812 (= lambda!219822 lambda!219773)))

(declare-fun bs!1136813 () Bool)

(assert (= bs!1136813 (and d!1515863 d!1515781)))

(assert (=> bs!1136813 (= lambda!219822 lambda!219767)))

(assert (=> d!1515863 (contains!16393 lm!2023 (hash!4473 hashF!1323 key!4653))))

(declare-fun lt!1906874 () Unit!133975)

(declare-fun choose!33701 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> d!1515863 (= lt!1906874 (choose!33701 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515863 (forall!11696 (toList!6019 lm!2023) lambda!219822)))

(assert (=> d!1515863 (= (lemmaInGenMapThenLongMapContainsHash!811 lm!2023 key!4653 hashF!1323) lt!1906874)))

(declare-fun bs!1136814 () Bool)

(assert (= bs!1136814 d!1515863))

(assert (=> bs!1136814 m!5699123))

(assert (=> bs!1136814 m!5699123))

(declare-fun m!5699649 () Bool)

(assert (=> bs!1136814 m!5699649))

(declare-fun m!5699651 () Bool)

(assert (=> bs!1136814 m!5699651))

(declare-fun m!5699653 () Bool)

(assert (=> bs!1136814 m!5699653))

(assert (=> b!4743920 d!1515863))

(declare-fun bs!1136815 () Bool)

(declare-fun d!1515865 () Bool)

(assert (= bs!1136815 (and d!1515865 d!1515809)))

(declare-fun lambda!219829 () Int)

(assert (=> bs!1136815 (= lambda!219829 lambda!219769)))

(declare-fun bs!1136816 () Bool)

(assert (= bs!1136816 (and d!1515865 d!1515811)))

(assert (=> bs!1136816 (= lambda!219829 lambda!219770)))

(declare-fun bs!1136817 () Bool)

(assert (= bs!1136817 (and d!1515865 d!1515803)))

(assert (=> bs!1136817 (= lambda!219829 lambda!219768)))

(declare-fun bs!1136818 () Bool)

(assert (= bs!1136818 (and d!1515865 start!484182)))

(assert (=> bs!1136818 (= lambda!219829 lambda!219753)))

(declare-fun bs!1136819 () Bool)

(assert (= bs!1136819 (and d!1515865 d!1515863)))

(assert (=> bs!1136819 (= lambda!219829 lambda!219822)))

(declare-fun bs!1136820 () Bool)

(assert (= bs!1136820 (and d!1515865 d!1515849)))

(assert (=> bs!1136820 (= lambda!219829 lambda!219819)))

(declare-fun bs!1136821 () Bool)

(assert (= bs!1136821 (and d!1515865 d!1515815)))

(assert (=> bs!1136821 (= lambda!219829 lambda!219773)))

(declare-fun bs!1136822 () Bool)

(assert (= bs!1136822 (and d!1515865 d!1515781)))

(assert (=> bs!1136822 (= lambda!219829 lambda!219767)))

(declare-fun b!4744194 () Bool)

(declare-fun res!2010462 () Bool)

(declare-fun e!2959247 () Bool)

(assert (=> b!4744194 (=> (not res!2010462) (not e!2959247))))

(assert (=> b!4744194 (= res!2010462 (contains!16391 (extractMap!2091 (toList!6019 lm!2023)) key!4653))))

(declare-fun b!4744195 () Bool)

(assert (=> b!4744195 (= e!2959247 (isDefined!9730 (getPair!605 (apply!12490 lm!2023 (hash!4473 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1906896 () Unit!133975)

(assert (=> b!4744195 (= lt!1906896 (forallContained!3736 (toList!6019 lm!2023) lambda!219829 (tuple2!54657 (hash!4473 hashF!1323 key!4653) (apply!12490 lm!2023 (hash!4473 hashF!1323 key!4653)))))))

(declare-fun lt!1906891 () Unit!133975)

(declare-fun lt!1906893 () Unit!133975)

(assert (=> b!4744195 (= lt!1906891 lt!1906893)))

(declare-fun lt!1906898 () (_ BitVec 64))

(declare-fun lt!1906892 () List!53095)

(assert (=> b!4744195 (contains!16392 (toList!6019 lm!2023) (tuple2!54657 lt!1906898 lt!1906892))))

(assert (=> b!4744195 (= lt!1906893 (lemmaGetValueImpliesTupleContained!410 lm!2023 lt!1906898 lt!1906892))))

(declare-fun e!2959248 () Bool)

(assert (=> b!4744195 e!2959248))

(declare-fun res!2010459 () Bool)

(assert (=> b!4744195 (=> (not res!2010459) (not e!2959248))))

(assert (=> b!4744195 (= res!2010459 (contains!16393 lm!2023 lt!1906898))))

(assert (=> b!4744195 (= lt!1906892 (apply!12490 lm!2023 (hash!4473 hashF!1323 key!4653)))))

(assert (=> b!4744195 (= lt!1906898 (hash!4473 hashF!1323 key!4653))))

(declare-fun lt!1906894 () Unit!133975)

(declare-fun lt!1906895 () Unit!133975)

(assert (=> b!4744195 (= lt!1906894 lt!1906895)))

(assert (=> b!4744195 (contains!16393 lm!2023 (hash!4473 hashF!1323 key!4653))))

(assert (=> b!4744195 (= lt!1906895 (lemmaInGenMapThenLongMapContainsHash!811 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4744196 () Bool)

(declare-datatypes ((Option!12479 0))(
  ( (None!12478) (Some!12478 (v!47163 List!53095)) )
))
(declare-fun getValueByKey!2031 (List!53096 (_ BitVec 64)) Option!12479)

(assert (=> b!4744196 (= e!2959248 (= (getValueByKey!2031 (toList!6019 lm!2023) lt!1906898) (Some!12478 lt!1906892)))))

(assert (=> d!1515865 e!2959247))

(declare-fun res!2010460 () Bool)

(assert (=> d!1515865 (=> (not res!2010460) (not e!2959247))))

(assert (=> d!1515865 (= res!2010460 (forall!11696 (toList!6019 lm!2023) lambda!219829))))

(declare-fun lt!1906897 () Unit!133975)

(declare-fun choose!33703 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> d!1515865 (= lt!1906897 (choose!33703 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515865 (forall!11696 (toList!6019 lm!2023) lambda!219829)))

(assert (=> d!1515865 (= (lemmaInGenMapThenGetPairDefined!401 lm!2023 key!4653 hashF!1323) lt!1906897)))

(declare-fun b!4744193 () Bool)

(declare-fun res!2010461 () Bool)

(assert (=> b!4744193 (=> (not res!2010461) (not e!2959247))))

(assert (=> b!4744193 (= res!2010461 (allKeysSameHashInMap!1979 lm!2023 hashF!1323))))

(assert (= (and d!1515865 res!2010460) b!4744193))

(assert (= (and b!4744193 res!2010461) b!4744194))

(assert (= (and b!4744194 res!2010462) b!4744195))

(assert (= (and b!4744195 res!2010459) b!4744196))

(declare-fun m!5699655 () Bool)

(assert (=> b!4744196 m!5699655))

(assert (=> b!4744193 m!5699131))

(declare-fun m!5699657 () Bool)

(assert (=> b!4744195 m!5699657))

(declare-fun m!5699659 () Bool)

(assert (=> b!4744195 m!5699659))

(assert (=> b!4744195 m!5699123))

(declare-fun m!5699661 () Bool)

(assert (=> b!4744195 m!5699661))

(assert (=> b!4744195 m!5699101))

(declare-fun m!5699663 () Bool)

(assert (=> b!4744195 m!5699663))

(assert (=> b!4744195 m!5699659))

(declare-fun m!5699665 () Bool)

(assert (=> b!4744195 m!5699665))

(assert (=> b!4744195 m!5699123))

(assert (=> b!4744195 m!5699649))

(declare-fun m!5699667 () Bool)

(assert (=> b!4744195 m!5699667))

(declare-fun m!5699669 () Bool)

(assert (=> b!4744195 m!5699669))

(assert (=> b!4744195 m!5699123))

(assert (=> b!4744195 m!5699657))

(assert (=> b!4744194 m!5699127))

(assert (=> b!4744194 m!5699127))

(declare-fun m!5699671 () Bool)

(assert (=> b!4744194 m!5699671))

(declare-fun m!5699673 () Bool)

(assert (=> d!1515865 m!5699673))

(declare-fun m!5699675 () Bool)

(assert (=> d!1515865 m!5699675))

(assert (=> d!1515865 m!5699673))

(assert (=> b!4743920 d!1515865))

(declare-fun d!1515867 () Bool)

(declare-fun get!17817 (Option!12479) List!53095)

(assert (=> d!1515867 (= (apply!12490 lm!2023 lt!1906576) (get!17817 (getValueByKey!2031 (toList!6019 lm!2023) lt!1906576)))))

(declare-fun bs!1136823 () Bool)

(assert (= bs!1136823 d!1515867))

(declare-fun m!5699677 () Bool)

(assert (=> bs!1136823 m!5699677))

(assert (=> bs!1136823 m!5699677))

(declare-fun m!5699679 () Bool)

(assert (=> bs!1136823 m!5699679))

(assert (=> b!4743920 d!1515867))

(declare-fun d!1515869 () Bool)

(assert (=> d!1515869 (containsKey!3490 oldBucket!34 key!4653)))

(declare-fun lt!1906901 () Unit!133975)

(declare-fun choose!33705 (List!53095 K!14313 Hashable!6434) Unit!133975)

(assert (=> d!1515869 (= lt!1906901 (choose!33705 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1515869 (noDuplicateKeys!2065 oldBucket!34)))

(assert (=> d!1515869 (= (lemmaGetPairDefinedThenContainsKey!349 oldBucket!34 key!4653 hashF!1323) lt!1906901)))

(declare-fun bs!1136824 () Bool)

(assert (= bs!1136824 d!1515869))

(assert (=> bs!1136824 m!5699115))

(declare-fun m!5699681 () Bool)

(assert (=> bs!1136824 m!5699681))

(assert (=> bs!1136824 m!5699095))

(assert (=> b!4743920 d!1515869))

(declare-fun d!1515871 () Bool)

(declare-fun res!2010467 () Bool)

(declare-fun e!2959253 () Bool)

(assert (=> d!1515871 (=> res!2010467 e!2959253)))

(assert (=> d!1515871 (= res!2010467 (and (is-Cons!52971 (t!360399 oldBucket!34)) (= (_1!30621 (h!59358 (t!360399 oldBucket!34))) key!4653)))))

(assert (=> d!1515871 (= (containsKey!3490 (t!360399 oldBucket!34) key!4653) e!2959253)))

(declare-fun b!4744201 () Bool)

(declare-fun e!2959254 () Bool)

(assert (=> b!4744201 (= e!2959253 e!2959254)))

(declare-fun res!2010468 () Bool)

(assert (=> b!4744201 (=> (not res!2010468) (not e!2959254))))

(assert (=> b!4744201 (= res!2010468 (is-Cons!52971 (t!360399 oldBucket!34)))))

(declare-fun b!4744202 () Bool)

(assert (=> b!4744202 (= e!2959254 (containsKey!3490 (t!360399 (t!360399 oldBucket!34)) key!4653))))

(assert (= (and d!1515871 (not res!2010467)) b!4744201))

(assert (= (and b!4744201 res!2010468) b!4744202))

(declare-fun m!5699683 () Bool)

(assert (=> b!4744202 m!5699683))

(assert (=> b!4743920 d!1515871))

(declare-fun b!4744219 () Bool)

(declare-fun e!2959269 () Bool)

(assert (=> b!4744219 (= e!2959269 (not (containsKey!3490 lt!1906573 key!4653)))))

(declare-fun b!4744220 () Bool)

(declare-fun e!2959268 () Bool)

(declare-fun e!2959267 () Bool)

(assert (=> b!4744220 (= e!2959268 e!2959267)))

(declare-fun res!2010479 () Bool)

(assert (=> b!4744220 (=> (not res!2010479) (not e!2959267))))

(declare-fun lt!1906904 () Option!12476)

(assert (=> b!4744220 (= res!2010479 (isDefined!9730 lt!1906904))))

(declare-fun b!4744221 () Bool)

(declare-fun e!2959266 () Option!12476)

(assert (=> b!4744221 (= e!2959266 None!12475)))

(declare-fun d!1515873 () Bool)

(assert (=> d!1515873 e!2959268))

(declare-fun res!2010478 () Bool)

(assert (=> d!1515873 (=> res!2010478 e!2959268)))

(assert (=> d!1515873 (= res!2010478 e!2959269)))

(declare-fun res!2010480 () Bool)

(assert (=> d!1515873 (=> (not res!2010480) (not e!2959269))))

(declare-fun isEmpty!29243 (Option!12476) Bool)

(assert (=> d!1515873 (= res!2010480 (isEmpty!29243 lt!1906904))))

(declare-fun e!2959265 () Option!12476)

(assert (=> d!1515873 (= lt!1906904 e!2959265)))

(declare-fun c!810368 () Bool)

(assert (=> d!1515873 (= c!810368 (and (is-Cons!52971 lt!1906573) (= (_1!30621 (h!59358 lt!1906573)) key!4653)))))

(assert (=> d!1515873 (noDuplicateKeys!2065 lt!1906573)))

(assert (=> d!1515873 (= (getPair!605 lt!1906573 key!4653) lt!1906904)))

(declare-fun b!4744222 () Bool)

(assert (=> b!4744222 (= e!2959265 (Some!12475 (h!59358 lt!1906573)))))

(declare-fun b!4744223 () Bool)

(assert (=> b!4744223 (= e!2959266 (getPair!605 (t!360399 lt!1906573) key!4653))))

(declare-fun b!4744224 () Bool)

(assert (=> b!4744224 (= e!2959265 e!2959266)))

(declare-fun c!810369 () Bool)

(assert (=> b!4744224 (= c!810369 (is-Cons!52971 lt!1906573))))

(declare-fun b!4744225 () Bool)

(declare-fun res!2010477 () Bool)

(assert (=> b!4744225 (=> (not res!2010477) (not e!2959267))))

(declare-fun get!17818 (Option!12476) tuple2!54654)

(assert (=> b!4744225 (= res!2010477 (= (_1!30621 (get!17818 lt!1906904)) key!4653))))

(declare-fun b!4744226 () Bool)

(assert (=> b!4744226 (= e!2959267 (contains!16397 lt!1906573 (get!17818 lt!1906904)))))

(assert (= (and d!1515873 c!810368) b!4744222))

(assert (= (and d!1515873 (not c!810368)) b!4744224))

(assert (= (and b!4744224 c!810369) b!4744223))

(assert (= (and b!4744224 (not c!810369)) b!4744221))

(assert (= (and d!1515873 res!2010480) b!4744219))

(assert (= (and d!1515873 (not res!2010478)) b!4744220))

(assert (= (and b!4744220 res!2010479) b!4744225))

(assert (= (and b!4744225 res!2010477) b!4744226))

(declare-fun m!5699685 () Bool)

(assert (=> b!4744226 m!5699685))

(assert (=> b!4744226 m!5699685))

(declare-fun m!5699687 () Bool)

(assert (=> b!4744226 m!5699687))

(declare-fun m!5699689 () Bool)

(assert (=> b!4744220 m!5699689))

(declare-fun m!5699691 () Bool)

(assert (=> d!1515873 m!5699691))

(declare-fun m!5699693 () Bool)

(assert (=> d!1515873 m!5699693))

(assert (=> b!4744225 m!5699685))

(declare-fun m!5699695 () Bool)

(assert (=> b!4744219 m!5699695))

(declare-fun m!5699697 () Bool)

(assert (=> b!4744223 m!5699697))

(assert (=> b!4743920 d!1515873))

(declare-fun d!1515875 () Bool)

(declare-fun res!2010481 () Bool)

(declare-fun e!2959270 () Bool)

(assert (=> d!1515875 (=> res!2010481 e!2959270)))

(assert (=> d!1515875 (= res!2010481 (and (is-Cons!52971 oldBucket!34) (= (_1!30621 (h!59358 oldBucket!34)) key!4653)))))

(assert (=> d!1515875 (= (containsKey!3490 oldBucket!34 key!4653) e!2959270)))

(declare-fun b!4744227 () Bool)

(declare-fun e!2959271 () Bool)

(assert (=> b!4744227 (= e!2959270 e!2959271)))

(declare-fun res!2010482 () Bool)

(assert (=> b!4744227 (=> (not res!2010482) (not e!2959271))))

(assert (=> b!4744227 (= res!2010482 (is-Cons!52971 oldBucket!34))))

(declare-fun b!4744228 () Bool)

(assert (=> b!4744228 (= e!2959271 (containsKey!3490 (t!360399 oldBucket!34) key!4653))))

(assert (= (and d!1515875 (not res!2010481)) b!4744227))

(assert (= (and b!4744227 res!2010482) b!4744228))

(assert (=> b!4744228 m!5699105))

(assert (=> b!4743920 d!1515875))

(declare-fun d!1515877 () Bool)

(declare-fun lt!1906907 () Bool)

(declare-fun content!9481 (List!53096) (Set tuple2!54656))

(assert (=> d!1515877 (= lt!1906907 (set.member lt!1906555 (content!9481 (toList!6019 lm!2023))))))

(declare-fun e!2959277 () Bool)

(assert (=> d!1515877 (= lt!1906907 e!2959277)))

(declare-fun res!2010487 () Bool)

(assert (=> d!1515877 (=> (not res!2010487) (not e!2959277))))

(assert (=> d!1515877 (= res!2010487 (is-Cons!52972 (toList!6019 lm!2023)))))

(assert (=> d!1515877 (= (contains!16392 (toList!6019 lm!2023) lt!1906555) lt!1906907)))

(declare-fun b!4744233 () Bool)

(declare-fun e!2959276 () Bool)

(assert (=> b!4744233 (= e!2959277 e!2959276)))

(declare-fun res!2010488 () Bool)

(assert (=> b!4744233 (=> res!2010488 e!2959276)))

(assert (=> b!4744233 (= res!2010488 (= (h!59359 (toList!6019 lm!2023)) lt!1906555))))

(declare-fun b!4744234 () Bool)

(assert (=> b!4744234 (= e!2959276 (contains!16392 (t!360400 (toList!6019 lm!2023)) lt!1906555))))

(assert (= (and d!1515877 res!2010487) b!4744233))

(assert (= (and b!4744233 (not res!2010488)) b!4744234))

(declare-fun m!5699699 () Bool)

(assert (=> d!1515877 m!5699699))

(declare-fun m!5699701 () Bool)

(assert (=> d!1515877 m!5699701))

(declare-fun m!5699703 () Bool)

(assert (=> b!4744234 m!5699703))

(assert (=> b!4743920 d!1515877))

(declare-fun d!1515879 () Bool)

(assert (=> d!1515879 (= (isDefined!9730 (getPair!605 lt!1906573 key!4653)) (not (isEmpty!29243 (getPair!605 lt!1906573 key!4653))))))

(declare-fun bs!1136825 () Bool)

(assert (= bs!1136825 d!1515879))

(assert (=> bs!1136825 m!5699111))

(declare-fun m!5699705 () Bool)

(assert (=> bs!1136825 m!5699705))

(assert (=> b!4743920 d!1515879))

(declare-fun d!1515881 () Bool)

(declare-fun e!2959284 () Bool)

(assert (=> d!1515881 e!2959284))

(declare-fun res!2010491 () Bool)

(assert (=> d!1515881 (=> res!2010491 e!2959284)))

(declare-fun lt!1906924 () Bool)

(assert (=> d!1515881 (= res!2010491 (not lt!1906924))))

(declare-fun lt!1906922 () Bool)

(assert (=> d!1515881 (= lt!1906924 lt!1906922)))

(declare-fun lt!1906925 () Unit!133975)

(declare-fun e!2959285 () Unit!133975)

(assert (=> d!1515881 (= lt!1906925 e!2959285)))

(declare-fun c!810374 () Bool)

(assert (=> d!1515881 (= c!810374 lt!1906922)))

(declare-fun containsKey!3494 (List!53096 (_ BitVec 64)) Bool)

(assert (=> d!1515881 (= lt!1906922 (containsKey!3494 (toList!6019 lm!2023) lt!1906576))))

(assert (=> d!1515881 (= (contains!16393 lm!2023 lt!1906576) lt!1906924)))

(declare-fun b!4744245 () Bool)

(declare-fun lt!1906923 () Unit!133975)

(assert (=> b!4744245 (= e!2959285 lt!1906923)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1923 (List!53096 (_ BitVec 64)) Unit!133975)

(assert (=> b!4744245 (= lt!1906923 (lemmaContainsKeyImpliesGetValueByKeyDefined!1923 (toList!6019 lm!2023) lt!1906576))))

(declare-fun isDefined!9734 (Option!12479) Bool)

(assert (=> b!4744245 (isDefined!9734 (getValueByKey!2031 (toList!6019 lm!2023) lt!1906576))))

(declare-fun b!4744246 () Bool)

(declare-fun Unit!133993 () Unit!133975)

(assert (=> b!4744246 (= e!2959285 Unit!133993)))

(declare-fun b!4744247 () Bool)

(assert (=> b!4744247 (= e!2959284 (isDefined!9734 (getValueByKey!2031 (toList!6019 lm!2023) lt!1906576)))))

(assert (= (and d!1515881 c!810374) b!4744245))

(assert (= (and d!1515881 (not c!810374)) b!4744246))

(assert (= (and d!1515881 (not res!2010491)) b!4744247))

(declare-fun m!5699707 () Bool)

(assert (=> d!1515881 m!5699707))

(declare-fun m!5699709 () Bool)

(assert (=> b!4744245 m!5699709))

(assert (=> b!4744245 m!5699677))

(assert (=> b!4744245 m!5699677))

(declare-fun m!5699711 () Bool)

(assert (=> b!4744245 m!5699711))

(assert (=> b!4744247 m!5699677))

(assert (=> b!4744247 m!5699677))

(assert (=> b!4744247 m!5699711))

(assert (=> b!4743920 d!1515881))

(declare-fun bs!1136826 () Bool)

(declare-fun d!1515883 () Bool)

(assert (= bs!1136826 (and d!1515883 d!1515821)))

(declare-fun lambda!219834 () Int)

(assert (=> bs!1136826 (= lambda!219834 lambda!219776)))

(declare-fun bs!1136827 () Bool)

(assert (= bs!1136827 (and d!1515883 b!4744172)))

(assert (=> bs!1136827 (not (= lambda!219834 lambda!219816))))

(assert (=> bs!1136827 (not (= lambda!219834 lambda!219817))))

(declare-fun bs!1136828 () Bool)

(assert (= bs!1136828 (and d!1515883 b!4744171)))

(assert (=> bs!1136828 (not (= lambda!219834 lambda!219815))))

(declare-fun bs!1136829 () Bool)

(assert (= bs!1136829 (and d!1515883 d!1515831)))

(assert (=> bs!1136829 (not (= lambda!219834 lambda!219818))))

(assert (=> d!1515883 true))

(assert (=> d!1515883 true))

(assert (=> d!1515883 (= (allKeysSameHash!1891 oldBucket!34 hash!405 hashF!1323) (forall!11698 oldBucket!34 lambda!219834))))

(declare-fun bs!1136830 () Bool)

(assert (= bs!1136830 d!1515883))

(declare-fun m!5699713 () Bool)

(assert (=> bs!1136830 m!5699713))

(assert (=> b!4743899 d!1515883))

(declare-fun bs!1136831 () Bool)

(declare-fun d!1515885 () Bool)

(assert (= bs!1136831 (and d!1515885 d!1515809)))

(declare-fun lambda!219859 () Int)

(assert (=> bs!1136831 (= lambda!219859 lambda!219769)))

(declare-fun bs!1136832 () Bool)

(assert (= bs!1136832 (and d!1515885 d!1515811)))

(assert (=> bs!1136832 (= lambda!219859 lambda!219770)))

(declare-fun bs!1136833 () Bool)

(assert (= bs!1136833 (and d!1515885 d!1515803)))

(assert (=> bs!1136833 (= lambda!219859 lambda!219768)))

(declare-fun bs!1136834 () Bool)

(assert (= bs!1136834 (and d!1515885 start!484182)))

(assert (=> bs!1136834 (= lambda!219859 lambda!219753)))

(declare-fun bs!1136835 () Bool)

(assert (= bs!1136835 (and d!1515885 d!1515863)))

(assert (=> bs!1136835 (= lambda!219859 lambda!219822)))

(declare-fun bs!1136836 () Bool)

(assert (= bs!1136836 (and d!1515885 d!1515849)))

(assert (=> bs!1136836 (= lambda!219859 lambda!219819)))

(declare-fun bs!1136837 () Bool)

(assert (= bs!1136837 (and d!1515885 d!1515815)))

(assert (=> bs!1136837 (= lambda!219859 lambda!219773)))

(declare-fun bs!1136838 () Bool)

(assert (= bs!1136838 (and d!1515885 d!1515865)))

(assert (=> bs!1136838 (= lambda!219859 lambda!219829)))

(declare-fun bs!1136839 () Bool)

(assert (= bs!1136839 (and d!1515885 d!1515781)))

(assert (=> bs!1136839 (= lambda!219859 lambda!219767)))

(assert (=> d!1515885 (contains!16391 (extractMap!2091 (toList!6019 lt!1906564)) key!4653)))

(declare-fun lt!1906964 () Unit!133975)

(declare-fun choose!33708 (ListLongMap!4549 K!14313 Hashable!6434) Unit!133975)

(assert (=> d!1515885 (= lt!1906964 (choose!33708 lt!1906564 key!4653 hashF!1323))))

(assert (=> d!1515885 (forall!11696 (toList!6019 lt!1906564) lambda!219859)))

(assert (=> d!1515885 (= (lemmaListContainsThenExtractedMapContains!573 lt!1906564 key!4653 hashF!1323) lt!1906964)))

(declare-fun bs!1136840 () Bool)

(assert (= bs!1136840 d!1515885))

(declare-fun m!5699715 () Bool)

(assert (=> bs!1136840 m!5699715))

(assert (=> bs!1136840 m!5699715))

(declare-fun m!5699717 () Bool)

(assert (=> bs!1136840 m!5699717))

(declare-fun m!5699719 () Bool)

(assert (=> bs!1136840 m!5699719))

(declare-fun m!5699721 () Bool)

(assert (=> bs!1136840 m!5699721))

(assert (=> b!4743918 d!1515885))

(declare-fun bs!1136841 () Bool)

(declare-fun b!4744255 () Bool)

(assert (= bs!1136841 (and b!4744255 d!1515821)))

(declare-fun lambda!219862 () Int)

(assert (=> bs!1136841 (not (= lambda!219862 lambda!219776))))

(declare-fun bs!1136842 () Bool)

(assert (= bs!1136842 (and b!4744255 b!4744172)))

(assert (=> bs!1136842 (= lambda!219862 lambda!219816)))

(assert (=> bs!1136842 (= (= lt!1906552 lt!1906849) (= lambda!219862 lambda!219817))))

(declare-fun bs!1136843 () Bool)

(assert (= bs!1136843 (and b!4744255 d!1515883)))

(assert (=> bs!1136843 (not (= lambda!219862 lambda!219834))))

(declare-fun bs!1136844 () Bool)

(assert (= bs!1136844 (and b!4744255 b!4744171)))

(assert (=> bs!1136844 (= lambda!219862 lambda!219815)))

(declare-fun bs!1136845 () Bool)

(assert (= bs!1136845 (and b!4744255 d!1515831)))

(assert (=> bs!1136845 (= (= lt!1906552 lt!1906842) (= lambda!219862 lambda!219818))))

(assert (=> b!4744255 true))

(declare-fun bs!1136846 () Bool)

(declare-fun b!4744256 () Bool)

(assert (= bs!1136846 (and b!4744256 d!1515821)))

(declare-fun lambda!219863 () Int)

(assert (=> bs!1136846 (not (= lambda!219863 lambda!219776))))

(declare-fun bs!1136847 () Bool)

(assert (= bs!1136847 (and b!4744256 b!4744255)))

(assert (=> bs!1136847 (= lambda!219863 lambda!219862)))

(declare-fun bs!1136848 () Bool)

(assert (= bs!1136848 (and b!4744256 b!4744172)))

(assert (=> bs!1136848 (= lambda!219863 lambda!219816)))

(assert (=> bs!1136848 (= (= lt!1906552 lt!1906849) (= lambda!219863 lambda!219817))))

(declare-fun bs!1136849 () Bool)

(assert (= bs!1136849 (and b!4744256 d!1515883)))

(assert (=> bs!1136849 (not (= lambda!219863 lambda!219834))))

(declare-fun bs!1136850 () Bool)

(assert (= bs!1136850 (and b!4744256 b!4744171)))

(assert (=> bs!1136850 (= lambda!219863 lambda!219815)))

(declare-fun bs!1136851 () Bool)

(assert (= bs!1136851 (and b!4744256 d!1515831)))

(assert (=> bs!1136851 (= (= lt!1906552 lt!1906842) (= lambda!219863 lambda!219818))))

(assert (=> b!4744256 true))

(declare-fun lambda!219864 () Int)

(assert (=> bs!1136846 (not (= lambda!219864 lambda!219776))))

(declare-fun lt!1906974 () ListMap!5383)

(assert (=> bs!1136847 (= (= lt!1906974 lt!1906552) (= lambda!219864 lambda!219862))))

(assert (=> bs!1136848 (= (= lt!1906974 lt!1906552) (= lambda!219864 lambda!219816))))

(assert (=> b!4744256 (= (= lt!1906974 lt!1906552) (= lambda!219864 lambda!219863))))

(assert (=> bs!1136848 (= (= lt!1906974 lt!1906849) (= lambda!219864 lambda!219817))))

(assert (=> bs!1136849 (not (= lambda!219864 lambda!219834))))

(assert (=> bs!1136850 (= (= lt!1906974 lt!1906552) (= lambda!219864 lambda!219815))))

(assert (=> bs!1136851 (= (= lt!1906974 lt!1906842) (= lambda!219864 lambda!219818))))

(assert (=> b!4744256 true))

(declare-fun bs!1136852 () Bool)

(declare-fun d!1515887 () Bool)

(assert (= bs!1136852 (and d!1515887 d!1515821)))

(declare-fun lambda!219865 () Int)

(assert (=> bs!1136852 (not (= lambda!219865 lambda!219776))))

(declare-fun bs!1136853 () Bool)

(assert (= bs!1136853 (and d!1515887 b!4744255)))

(declare-fun lt!1906967 () ListMap!5383)

(assert (=> bs!1136853 (= (= lt!1906967 lt!1906552) (= lambda!219865 lambda!219862))))

(declare-fun bs!1136854 () Bool)

(assert (= bs!1136854 (and d!1515887 b!4744256)))

(assert (=> bs!1136854 (= (= lt!1906967 lt!1906974) (= lambda!219865 lambda!219864))))

(declare-fun bs!1136855 () Bool)

(assert (= bs!1136855 (and d!1515887 b!4744172)))

(assert (=> bs!1136855 (= (= lt!1906967 lt!1906552) (= lambda!219865 lambda!219816))))

(assert (=> bs!1136854 (= (= lt!1906967 lt!1906552) (= lambda!219865 lambda!219863))))

(assert (=> bs!1136855 (= (= lt!1906967 lt!1906849) (= lambda!219865 lambda!219817))))

(declare-fun bs!1136856 () Bool)

(assert (= bs!1136856 (and d!1515887 d!1515883)))

(assert (=> bs!1136856 (not (= lambda!219865 lambda!219834))))

(declare-fun bs!1136857 () Bool)

(assert (= bs!1136857 (and d!1515887 b!4744171)))

(assert (=> bs!1136857 (= (= lt!1906967 lt!1906552) (= lambda!219865 lambda!219815))))

(declare-fun bs!1136858 () Bool)

(assert (= bs!1136858 (and d!1515887 d!1515831)))

(assert (=> bs!1136858 (= (= lt!1906967 lt!1906842) (= lambda!219865 lambda!219818))))

(assert (=> d!1515887 true))

(declare-fun b!4744254 () Bool)

(declare-fun e!2959290 () Bool)

(assert (=> b!4744254 (= e!2959290 (forall!11698 (toList!6020 lt!1906552) lambda!219864))))

(declare-fun e!2959291 () Bool)

(assert (=> d!1515887 e!2959291))

(declare-fun res!2010500 () Bool)

(assert (=> d!1515887 (=> (not res!2010500) (not e!2959291))))

(assert (=> d!1515887 (= res!2010500 (forall!11698 lt!1906547 lambda!219865))))

(declare-fun e!2959292 () ListMap!5383)

(assert (=> d!1515887 (= lt!1906967 e!2959292)))

(declare-fun c!810375 () Bool)

(assert (=> d!1515887 (= c!810375 (is-Nil!52971 lt!1906547))))

(assert (=> d!1515887 (noDuplicateKeys!2065 lt!1906547)))

(assert (=> d!1515887 (= (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906967)))

(assert (=> b!4744255 (= e!2959292 lt!1906552)))

(declare-fun lt!1906968 () Unit!133975)

(declare-fun call!332020 () Unit!133975)

(assert (=> b!4744255 (= lt!1906968 call!332020)))

(declare-fun call!332018 () Bool)

(assert (=> b!4744255 call!332018))

(declare-fun lt!1906985 () Unit!133975)

(assert (=> b!4744255 (= lt!1906985 lt!1906968)))

(declare-fun call!332019 () Bool)

(assert (=> b!4744255 call!332019))

(declare-fun lt!1906978 () Unit!133975)

(declare-fun Unit!133995 () Unit!133975)

(assert (=> b!4744255 (= lt!1906978 Unit!133995)))

(assert (=> b!4744256 (= e!2959292 lt!1906974)))

(declare-fun lt!1906965 () ListMap!5383)

(assert (=> b!4744256 (= lt!1906965 (+!2313 lt!1906552 (h!59358 lt!1906547)))))

(assert (=> b!4744256 (= lt!1906974 (addToMapMapFromBucket!1495 (t!360399 lt!1906547) (+!2313 lt!1906552 (h!59358 lt!1906547))))))

(declare-fun lt!1906975 () Unit!133975)

(assert (=> b!4744256 (= lt!1906975 call!332020)))

(assert (=> b!4744256 (forall!11698 (toList!6020 lt!1906552) lambda!219863)))

(declare-fun lt!1906981 () Unit!133975)

(assert (=> b!4744256 (= lt!1906981 lt!1906975)))

(assert (=> b!4744256 (forall!11698 (toList!6020 lt!1906965) lambda!219864)))

(declare-fun lt!1906969 () Unit!133975)

(declare-fun Unit!133996 () Unit!133975)

(assert (=> b!4744256 (= lt!1906969 Unit!133996)))

(assert (=> b!4744256 (forall!11698 (t!360399 lt!1906547) lambda!219864)))

(declare-fun lt!1906971 () Unit!133975)

(declare-fun Unit!133997 () Unit!133975)

(assert (=> b!4744256 (= lt!1906971 Unit!133997)))

(declare-fun lt!1906972 () Unit!133975)

(declare-fun Unit!133998 () Unit!133975)

(assert (=> b!4744256 (= lt!1906972 Unit!133998)))

(declare-fun lt!1906976 () Unit!133975)

(assert (=> b!4744256 (= lt!1906976 (forallContained!3738 (toList!6020 lt!1906965) lambda!219864 (h!59358 lt!1906547)))))

(assert (=> b!4744256 (contains!16391 lt!1906965 (_1!30621 (h!59358 lt!1906547)))))

(declare-fun lt!1906982 () Unit!133975)

(declare-fun Unit!134001 () Unit!133975)

(assert (=> b!4744256 (= lt!1906982 Unit!134001)))

(assert (=> b!4744256 (contains!16391 lt!1906974 (_1!30621 (h!59358 lt!1906547)))))

(declare-fun lt!1906979 () Unit!133975)

(declare-fun Unit!134003 () Unit!133975)

(assert (=> b!4744256 (= lt!1906979 Unit!134003)))

(assert (=> b!4744256 call!332018))

(declare-fun lt!1906977 () Unit!133975)

(declare-fun Unit!134004 () Unit!133975)

(assert (=> b!4744256 (= lt!1906977 Unit!134004)))

(assert (=> b!4744256 (forall!11698 (toList!6020 lt!1906965) lambda!219864)))

(declare-fun lt!1906973 () Unit!133975)

(declare-fun Unit!134005 () Unit!133975)

(assert (=> b!4744256 (= lt!1906973 Unit!134005)))

(declare-fun lt!1906984 () Unit!133975)

(declare-fun Unit!134007 () Unit!133975)

(assert (=> b!4744256 (= lt!1906984 Unit!134007)))

(declare-fun lt!1906970 () Unit!133975)

(assert (=> b!4744256 (= lt!1906970 (addForallContainsKeyThenBeforeAdding!834 lt!1906552 lt!1906974 (_1!30621 (h!59358 lt!1906547)) (_2!30621 (h!59358 lt!1906547))))))

(assert (=> b!4744256 (forall!11698 (toList!6020 lt!1906552) lambda!219864)))

(declare-fun lt!1906983 () Unit!133975)

(assert (=> b!4744256 (= lt!1906983 lt!1906970)))

(assert (=> b!4744256 call!332019))

(declare-fun lt!1906966 () Unit!133975)

(declare-fun Unit!134010 () Unit!133975)

(assert (=> b!4744256 (= lt!1906966 Unit!134010)))

(declare-fun res!2010499 () Bool)

(assert (=> b!4744256 (= res!2010499 (forall!11698 lt!1906547 lambda!219864))))

(assert (=> b!4744256 (=> (not res!2010499) (not e!2959290))))

(assert (=> b!4744256 e!2959290))

(declare-fun lt!1906980 () Unit!133975)

(declare-fun Unit!134012 () Unit!133975)

(assert (=> b!4744256 (= lt!1906980 Unit!134012)))

(declare-fun bm!332013 () Bool)

(assert (=> bm!332013 (= call!332020 (lemmaContainsAllItsOwnKeys!835 lt!1906552))))

(declare-fun bm!332014 () Bool)

(assert (=> bm!332014 (= call!332019 (forall!11698 (toList!6020 lt!1906552) (ite c!810375 lambda!219862 lambda!219864)))))

(declare-fun b!4744257 () Bool)

(declare-fun res!2010498 () Bool)

(assert (=> b!4744257 (=> (not res!2010498) (not e!2959291))))

(assert (=> b!4744257 (= res!2010498 (forall!11698 (toList!6020 lt!1906552) lambda!219865))))

(declare-fun b!4744258 () Bool)

(assert (=> b!4744258 (= e!2959291 (invariantList!1550 (toList!6020 lt!1906967)))))

(declare-fun bm!332015 () Bool)

(assert (=> bm!332015 (= call!332018 (forall!11698 (ite c!810375 (toList!6020 lt!1906552) lt!1906547) (ite c!810375 lambda!219862 lambda!219864)))))

(assert (= (and d!1515887 c!810375) b!4744255))

(assert (= (and d!1515887 (not c!810375)) b!4744256))

(assert (= (and b!4744256 res!2010499) b!4744254))

(assert (= (or b!4744255 b!4744256) bm!332013))

(assert (= (or b!4744255 b!4744256) bm!332015))

(assert (= (or b!4744255 b!4744256) bm!332014))

(assert (= (and d!1515887 res!2010500) b!4744257))

(assert (= (and b!4744257 res!2010498) b!4744258))

(declare-fun m!5699723 () Bool)

(assert (=> bm!332014 m!5699723))

(declare-fun m!5699725 () Bool)

(assert (=> b!4744256 m!5699725))

(declare-fun m!5699727 () Bool)

(assert (=> b!4744256 m!5699727))

(declare-fun m!5699729 () Bool)

(assert (=> b!4744256 m!5699729))

(declare-fun m!5699731 () Bool)

(assert (=> b!4744256 m!5699731))

(declare-fun m!5699733 () Bool)

(assert (=> b!4744256 m!5699733))

(declare-fun m!5699735 () Bool)

(assert (=> b!4744256 m!5699735))

(assert (=> b!4744256 m!5699725))

(declare-fun m!5699737 () Bool)

(assert (=> b!4744256 m!5699737))

(declare-fun m!5699739 () Bool)

(assert (=> b!4744256 m!5699739))

(declare-fun m!5699741 () Bool)

(assert (=> b!4744256 m!5699741))

(declare-fun m!5699743 () Bool)

(assert (=> b!4744256 m!5699743))

(assert (=> b!4744256 m!5699731))

(declare-fun m!5699745 () Bool)

(assert (=> b!4744256 m!5699745))

(assert (=> bm!332013 m!5699601))

(declare-fun m!5699747 () Bool)

(assert (=> b!4744257 m!5699747))

(declare-fun m!5699749 () Bool)

(assert (=> bm!332015 m!5699749))

(assert (=> b!4744254 m!5699733))

(declare-fun m!5699751 () Bool)

(assert (=> d!1515887 m!5699751))

(declare-fun m!5699753 () Bool)

(assert (=> d!1515887 m!5699753))

(declare-fun m!5699755 () Bool)

(assert (=> b!4744258 m!5699755))

(assert (=> b!4743918 d!1515887))

(declare-fun bs!1136862 () Bool)

(declare-fun b!4744267 () Bool)

(assert (= bs!1136862 (and b!4744267 d!1515821)))

(declare-fun lambda!219869 () Int)

(assert (=> bs!1136862 (not (= lambda!219869 lambda!219776))))

(declare-fun bs!1136863 () Bool)

(assert (= bs!1136863 (and b!4744267 b!4744255)))

(assert (=> bs!1136863 (= lambda!219869 lambda!219862)))

(declare-fun bs!1136864 () Bool)

(assert (= bs!1136864 (and b!4744267 b!4744256)))

(assert (=> bs!1136864 (= (= lt!1906552 lt!1906974) (= lambda!219869 lambda!219864))))

(declare-fun bs!1136865 () Bool)

(assert (= bs!1136865 (and b!4744267 b!4744172)))

(assert (=> bs!1136865 (= lambda!219869 lambda!219816)))

(declare-fun bs!1136866 () Bool)

(assert (= bs!1136866 (and b!4744267 d!1515887)))

(assert (=> bs!1136866 (= (= lt!1906552 lt!1906967) (= lambda!219869 lambda!219865))))

(assert (=> bs!1136864 (= lambda!219869 lambda!219863)))

(assert (=> bs!1136865 (= (= lt!1906552 lt!1906849) (= lambda!219869 lambda!219817))))

(declare-fun bs!1136867 () Bool)

(assert (= bs!1136867 (and b!4744267 d!1515883)))

(assert (=> bs!1136867 (not (= lambda!219869 lambda!219834))))

(declare-fun bs!1136868 () Bool)

(assert (= bs!1136868 (and b!4744267 b!4744171)))

(assert (=> bs!1136868 (= lambda!219869 lambda!219815)))

(declare-fun bs!1136869 () Bool)

(assert (= bs!1136869 (and b!4744267 d!1515831)))

(assert (=> bs!1136869 (= (= lt!1906552 lt!1906842) (= lambda!219869 lambda!219818))))

(assert (=> b!4744267 true))

(declare-fun bs!1136871 () Bool)

(declare-fun b!4744268 () Bool)

(assert (= bs!1136871 (and b!4744268 d!1515821)))

(declare-fun lambda!219871 () Int)

(assert (=> bs!1136871 (not (= lambda!219871 lambda!219776))))

(declare-fun bs!1136873 () Bool)

(assert (= bs!1136873 (and b!4744268 b!4744255)))

(assert (=> bs!1136873 (= lambda!219871 lambda!219862)))

(declare-fun bs!1136875 () Bool)

(assert (= bs!1136875 (and b!4744268 b!4744256)))

(assert (=> bs!1136875 (= (= lt!1906552 lt!1906974) (= lambda!219871 lambda!219864))))

(declare-fun bs!1136876 () Bool)

(assert (= bs!1136876 (and b!4744268 b!4744172)))

(assert (=> bs!1136876 (= lambda!219871 lambda!219816)))

(declare-fun bs!1136877 () Bool)

(assert (= bs!1136877 (and b!4744268 b!4744267)))

(assert (=> bs!1136877 (= lambda!219871 lambda!219869)))

(declare-fun bs!1136878 () Bool)

(assert (= bs!1136878 (and b!4744268 d!1515887)))

(assert (=> bs!1136878 (= (= lt!1906552 lt!1906967) (= lambda!219871 lambda!219865))))

(assert (=> bs!1136875 (= lambda!219871 lambda!219863)))

(assert (=> bs!1136876 (= (= lt!1906552 lt!1906849) (= lambda!219871 lambda!219817))))

(declare-fun bs!1136879 () Bool)

(assert (= bs!1136879 (and b!4744268 d!1515883)))

(assert (=> bs!1136879 (not (= lambda!219871 lambda!219834))))

(declare-fun bs!1136880 () Bool)

(assert (= bs!1136880 (and b!4744268 b!4744171)))

(assert (=> bs!1136880 (= lambda!219871 lambda!219815)))

(declare-fun bs!1136881 () Bool)

(assert (= bs!1136881 (and b!4744268 d!1515831)))

(assert (=> bs!1136881 (= (= lt!1906552 lt!1906842) (= lambda!219871 lambda!219818))))

(assert (=> b!4744268 true))

(declare-fun lambda!219872 () Int)

(assert (=> bs!1136871 (not (= lambda!219872 lambda!219776))))

(declare-fun lt!1907016 () ListMap!5383)

(assert (=> bs!1136873 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219862))))

(assert (=> b!4744268 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219871))))

(assert (=> bs!1136875 (= (= lt!1907016 lt!1906974) (= lambda!219872 lambda!219864))))

(assert (=> bs!1136876 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219816))))

(assert (=> bs!1136877 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219869))))

(assert (=> bs!1136878 (= (= lt!1907016 lt!1906967) (= lambda!219872 lambda!219865))))

(assert (=> bs!1136875 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219863))))

(assert (=> bs!1136876 (= (= lt!1907016 lt!1906849) (= lambda!219872 lambda!219817))))

(assert (=> bs!1136879 (not (= lambda!219872 lambda!219834))))

(assert (=> bs!1136880 (= (= lt!1907016 lt!1906552) (= lambda!219872 lambda!219815))))

(assert (=> bs!1136881 (= (= lt!1907016 lt!1906842) (= lambda!219872 lambda!219818))))

(assert (=> b!4744268 true))

(declare-fun bs!1136882 () Bool)

(declare-fun d!1515889 () Bool)

(assert (= bs!1136882 (and d!1515889 d!1515821)))

(declare-fun lambda!219873 () Int)

(assert (=> bs!1136882 (not (= lambda!219873 lambda!219776))))

(declare-fun bs!1136883 () Bool)

(assert (= bs!1136883 (and d!1515889 b!4744255)))

(declare-fun lt!1907009 () ListMap!5383)

(assert (=> bs!1136883 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219862))))

(declare-fun bs!1136884 () Bool)

(assert (= bs!1136884 (and d!1515889 b!4744268)))

(assert (=> bs!1136884 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219871))))

(declare-fun bs!1136885 () Bool)

(assert (= bs!1136885 (and d!1515889 b!4744256)))

(assert (=> bs!1136885 (= (= lt!1907009 lt!1906974) (= lambda!219873 lambda!219864))))

(declare-fun bs!1136886 () Bool)

(assert (= bs!1136886 (and d!1515889 b!4744172)))

(assert (=> bs!1136886 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219816))))

(declare-fun bs!1136887 () Bool)

(assert (= bs!1136887 (and d!1515889 d!1515887)))

(assert (=> bs!1136887 (= (= lt!1907009 lt!1906967) (= lambda!219873 lambda!219865))))

(assert (=> bs!1136885 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219863))))

(assert (=> bs!1136886 (= (= lt!1907009 lt!1906849) (= lambda!219873 lambda!219817))))

(declare-fun bs!1136888 () Bool)

(assert (= bs!1136888 (and d!1515889 d!1515883)))

(assert (=> bs!1136888 (not (= lambda!219873 lambda!219834))))

(declare-fun bs!1136889 () Bool)

(assert (= bs!1136889 (and d!1515889 b!4744171)))

(assert (=> bs!1136889 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219815))))

(declare-fun bs!1136890 () Bool)

(assert (= bs!1136890 (and d!1515889 d!1515831)))

(assert (=> bs!1136890 (= (= lt!1907009 lt!1906842) (= lambda!219873 lambda!219818))))

(assert (=> bs!1136884 (= (= lt!1907009 lt!1907016) (= lambda!219873 lambda!219872))))

(declare-fun bs!1136891 () Bool)

(assert (= bs!1136891 (and d!1515889 b!4744267)))

(assert (=> bs!1136891 (= (= lt!1907009 lt!1906552) (= lambda!219873 lambda!219869))))

(assert (=> d!1515889 true))

(declare-fun b!4744266 () Bool)

(declare-fun e!2959296 () Bool)

(assert (=> b!4744266 (= e!2959296 (forall!11698 (toList!6020 lt!1906552) lambda!219872))))

(declare-fun e!2959297 () Bool)

(assert (=> d!1515889 e!2959297))

(declare-fun res!2010506 () Bool)

(assert (=> d!1515889 (=> (not res!2010506) (not e!2959297))))

(assert (=> d!1515889 (= res!2010506 (forall!11698 (Cons!52971 lt!1906550 lt!1906561) lambda!219873))))

(declare-fun e!2959298 () ListMap!5383)

(assert (=> d!1515889 (= lt!1907009 e!2959298)))

(declare-fun c!810377 () Bool)

(assert (=> d!1515889 (= c!810377 (is-Nil!52971 (Cons!52971 lt!1906550 lt!1906561)))))

(assert (=> d!1515889 (noDuplicateKeys!2065 (Cons!52971 lt!1906550 lt!1906561))))

(assert (=> d!1515889 (= (addToMapMapFromBucket!1495 (Cons!52971 lt!1906550 lt!1906561) lt!1906552) lt!1907009)))

(assert (=> b!4744267 (= e!2959298 lt!1906552)))

(declare-fun lt!1907010 () Unit!133975)

(declare-fun call!332026 () Unit!133975)

(assert (=> b!4744267 (= lt!1907010 call!332026)))

(declare-fun call!332024 () Bool)

(assert (=> b!4744267 call!332024))

(declare-fun lt!1907027 () Unit!133975)

(assert (=> b!4744267 (= lt!1907027 lt!1907010)))

(declare-fun call!332025 () Bool)

(assert (=> b!4744267 call!332025))

(declare-fun lt!1907020 () Unit!133975)

(declare-fun Unit!134016 () Unit!133975)

(assert (=> b!4744267 (= lt!1907020 Unit!134016)))

(assert (=> b!4744268 (= e!2959298 lt!1907016)))

(declare-fun lt!1907007 () ListMap!5383)

(assert (=> b!4744268 (= lt!1907007 (+!2313 lt!1906552 (h!59358 (Cons!52971 lt!1906550 lt!1906561))))))

(assert (=> b!4744268 (= lt!1907016 (addToMapMapFromBucket!1495 (t!360399 (Cons!52971 lt!1906550 lt!1906561)) (+!2313 lt!1906552 (h!59358 (Cons!52971 lt!1906550 lt!1906561)))))))

(declare-fun lt!1907017 () Unit!133975)

(assert (=> b!4744268 (= lt!1907017 call!332026)))

(assert (=> b!4744268 (forall!11698 (toList!6020 lt!1906552) lambda!219871)))

(declare-fun lt!1907023 () Unit!133975)

(assert (=> b!4744268 (= lt!1907023 lt!1907017)))

(assert (=> b!4744268 (forall!11698 (toList!6020 lt!1907007) lambda!219872)))

(declare-fun lt!1907011 () Unit!133975)

(declare-fun Unit!134017 () Unit!133975)

(assert (=> b!4744268 (= lt!1907011 Unit!134017)))

(assert (=> b!4744268 (forall!11698 (t!360399 (Cons!52971 lt!1906550 lt!1906561)) lambda!219872)))

(declare-fun lt!1907013 () Unit!133975)

(declare-fun Unit!134018 () Unit!133975)

(assert (=> b!4744268 (= lt!1907013 Unit!134018)))

(declare-fun lt!1907014 () Unit!133975)

(declare-fun Unit!134019 () Unit!133975)

(assert (=> b!4744268 (= lt!1907014 Unit!134019)))

(declare-fun lt!1907018 () Unit!133975)

(assert (=> b!4744268 (= lt!1907018 (forallContained!3738 (toList!6020 lt!1907007) lambda!219872 (h!59358 (Cons!52971 lt!1906550 lt!1906561))))))

(assert (=> b!4744268 (contains!16391 lt!1907007 (_1!30621 (h!59358 (Cons!52971 lt!1906550 lt!1906561))))))

(declare-fun lt!1907024 () Unit!133975)

(declare-fun Unit!134020 () Unit!133975)

(assert (=> b!4744268 (= lt!1907024 Unit!134020)))

(assert (=> b!4744268 (contains!16391 lt!1907016 (_1!30621 (h!59358 (Cons!52971 lt!1906550 lt!1906561))))))

(declare-fun lt!1907021 () Unit!133975)

(declare-fun Unit!134021 () Unit!133975)

(assert (=> b!4744268 (= lt!1907021 Unit!134021)))

(assert (=> b!4744268 call!332024))

(declare-fun lt!1907019 () Unit!133975)

(declare-fun Unit!134022 () Unit!133975)

(assert (=> b!4744268 (= lt!1907019 Unit!134022)))

(assert (=> b!4744268 (forall!11698 (toList!6020 lt!1907007) lambda!219872)))

(declare-fun lt!1907015 () Unit!133975)

(declare-fun Unit!134023 () Unit!133975)

(assert (=> b!4744268 (= lt!1907015 Unit!134023)))

(declare-fun lt!1907026 () Unit!133975)

(declare-fun Unit!134024 () Unit!133975)

(assert (=> b!4744268 (= lt!1907026 Unit!134024)))

(declare-fun lt!1907012 () Unit!133975)

(assert (=> b!4744268 (= lt!1907012 (addForallContainsKeyThenBeforeAdding!834 lt!1906552 lt!1907016 (_1!30621 (h!59358 (Cons!52971 lt!1906550 lt!1906561))) (_2!30621 (h!59358 (Cons!52971 lt!1906550 lt!1906561)))))))

(assert (=> b!4744268 (forall!11698 (toList!6020 lt!1906552) lambda!219872)))

(declare-fun lt!1907025 () Unit!133975)

(assert (=> b!4744268 (= lt!1907025 lt!1907012)))

(assert (=> b!4744268 call!332025))

(declare-fun lt!1907008 () Unit!133975)

(declare-fun Unit!134025 () Unit!133975)

(assert (=> b!4744268 (= lt!1907008 Unit!134025)))

(declare-fun res!2010505 () Bool)

(assert (=> b!4744268 (= res!2010505 (forall!11698 (Cons!52971 lt!1906550 lt!1906561) lambda!219872))))

(assert (=> b!4744268 (=> (not res!2010505) (not e!2959296))))

(assert (=> b!4744268 e!2959296))

(declare-fun lt!1907022 () Unit!133975)

(declare-fun Unit!134026 () Unit!133975)

(assert (=> b!4744268 (= lt!1907022 Unit!134026)))

(declare-fun bm!332019 () Bool)

(assert (=> bm!332019 (= call!332026 (lemmaContainsAllItsOwnKeys!835 lt!1906552))))

(declare-fun bm!332020 () Bool)

(assert (=> bm!332020 (= call!332025 (forall!11698 (toList!6020 lt!1906552) (ite c!810377 lambda!219869 lambda!219872)))))

(declare-fun b!4744269 () Bool)

(declare-fun res!2010504 () Bool)

(assert (=> b!4744269 (=> (not res!2010504) (not e!2959297))))

(assert (=> b!4744269 (= res!2010504 (forall!11698 (toList!6020 lt!1906552) lambda!219873))))

(declare-fun b!4744270 () Bool)

(assert (=> b!4744270 (= e!2959297 (invariantList!1550 (toList!6020 lt!1907009)))))

(declare-fun bm!332021 () Bool)

(assert (=> bm!332021 (= call!332024 (forall!11698 (ite c!810377 (toList!6020 lt!1906552) (Cons!52971 lt!1906550 lt!1906561)) (ite c!810377 lambda!219869 lambda!219872)))))

(assert (= (and d!1515889 c!810377) b!4744267))

(assert (= (and d!1515889 (not c!810377)) b!4744268))

(assert (= (and b!4744268 res!2010505) b!4744266))

(assert (= (or b!4744267 b!4744268) bm!332019))

(assert (= (or b!4744267 b!4744268) bm!332021))

(assert (= (or b!4744267 b!4744268) bm!332020))

(assert (= (and d!1515889 res!2010506) b!4744269))

(assert (= (and b!4744269 res!2010504) b!4744270))

(declare-fun m!5699791 () Bool)

(assert (=> bm!332020 m!5699791))

(declare-fun m!5699793 () Bool)

(assert (=> b!4744268 m!5699793))

(declare-fun m!5699795 () Bool)

(assert (=> b!4744268 m!5699795))

(declare-fun m!5699797 () Bool)

(assert (=> b!4744268 m!5699797))

(declare-fun m!5699799 () Bool)

(assert (=> b!4744268 m!5699799))

(declare-fun m!5699801 () Bool)

(assert (=> b!4744268 m!5699801))

(declare-fun m!5699803 () Bool)

(assert (=> b!4744268 m!5699803))

(assert (=> b!4744268 m!5699793))

(declare-fun m!5699805 () Bool)

(assert (=> b!4744268 m!5699805))

(declare-fun m!5699807 () Bool)

(assert (=> b!4744268 m!5699807))

(declare-fun m!5699809 () Bool)

(assert (=> b!4744268 m!5699809))

(declare-fun m!5699811 () Bool)

(assert (=> b!4744268 m!5699811))

(assert (=> b!4744268 m!5699799))

(declare-fun m!5699813 () Bool)

(assert (=> b!4744268 m!5699813))

(assert (=> bm!332019 m!5699601))

(declare-fun m!5699815 () Bool)

(assert (=> b!4744269 m!5699815))

(declare-fun m!5699817 () Bool)

(assert (=> bm!332021 m!5699817))

(assert (=> b!4744266 m!5699801))

(declare-fun m!5699819 () Bool)

(assert (=> d!1515889 m!5699819))

(declare-fun m!5699821 () Bool)

(assert (=> d!1515889 m!5699821))

(declare-fun m!5699823 () Bool)

(assert (=> b!4744270 m!5699823))

(assert (=> b!4743918 d!1515889))

(declare-fun bs!1136892 () Bool)

(declare-fun d!1515893 () Bool)

(assert (= bs!1136892 (and d!1515893 d!1515809)))

(declare-fun lambda!219874 () Int)

(assert (=> bs!1136892 (= lambda!219874 lambda!219769)))

(declare-fun bs!1136893 () Bool)

(assert (= bs!1136893 (and d!1515893 d!1515811)))

(assert (=> bs!1136893 (= lambda!219874 lambda!219770)))

(declare-fun bs!1136894 () Bool)

(assert (= bs!1136894 (and d!1515893 start!484182)))

(assert (=> bs!1136894 (= lambda!219874 lambda!219753)))

(declare-fun bs!1136895 () Bool)

(assert (= bs!1136895 (and d!1515893 d!1515863)))

(assert (=> bs!1136895 (= lambda!219874 lambda!219822)))

(declare-fun bs!1136896 () Bool)

(assert (= bs!1136896 (and d!1515893 d!1515849)))

(assert (=> bs!1136896 (= lambda!219874 lambda!219819)))

(declare-fun bs!1136897 () Bool)

(assert (= bs!1136897 (and d!1515893 d!1515815)))

(assert (=> bs!1136897 (= lambda!219874 lambda!219773)))

(declare-fun bs!1136898 () Bool)

(assert (= bs!1136898 (and d!1515893 d!1515803)))

(assert (=> bs!1136898 (= lambda!219874 lambda!219768)))

(declare-fun bs!1136899 () Bool)

(assert (= bs!1136899 (and d!1515893 d!1515885)))

(assert (=> bs!1136899 (= lambda!219874 lambda!219859)))

(declare-fun bs!1136900 () Bool)

(assert (= bs!1136900 (and d!1515893 d!1515865)))

(assert (=> bs!1136900 (= lambda!219874 lambda!219829)))

(declare-fun bs!1136901 () Bool)

(assert (= bs!1136901 (and d!1515893 d!1515781)))

(assert (=> bs!1136901 (= lambda!219874 lambda!219767)))

(declare-fun lt!1907028 () ListMap!5383)

(assert (=> d!1515893 (invariantList!1550 (toList!6020 lt!1907028))))

(declare-fun e!2959299 () ListMap!5383)

(assert (=> d!1515893 (= lt!1907028 e!2959299)))

(declare-fun c!810378 () Bool)

(assert (=> d!1515893 (= c!810378 (is-Cons!52972 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023)))))))

(assert (=> d!1515893 (forall!11696 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023))) lambda!219874)))

(assert (=> d!1515893 (= (extractMap!2091 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023)))) lt!1907028)))

(declare-fun b!4744271 () Bool)

(assert (=> b!4744271 (= e!2959299 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023))))) (extractMap!2091 (t!360400 (Cons!52972 (tuple2!54657 hash!405 lt!1906561) (t!360400 (toList!6019 lm!2023)))))))))

(declare-fun b!4744272 () Bool)

(assert (=> b!4744272 (= e!2959299 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515893 c!810378) b!4744271))

(assert (= (and d!1515893 (not c!810378)) b!4744272))

(declare-fun m!5699825 () Bool)

(assert (=> d!1515893 m!5699825))

(declare-fun m!5699827 () Bool)

(assert (=> d!1515893 m!5699827))

(declare-fun m!5699829 () Bool)

(assert (=> b!4744271 m!5699829))

(assert (=> b!4744271 m!5699829))

(declare-fun m!5699831 () Bool)

(assert (=> b!4744271 m!5699831))

(assert (=> b!4743918 d!1515893))

(declare-fun d!1515895 () Bool)

(assert (=> d!1515895 (= (head!10334 newBucket!218) (h!59358 newBucket!218))))

(assert (=> b!4743918 d!1515895))

(declare-fun bs!1136902 () Bool)

(declare-fun b!4744274 () Bool)

(assert (= bs!1136902 (and b!4744274 d!1515821)))

(declare-fun lambda!219875 () Int)

(assert (=> bs!1136902 (not (= lambda!219875 lambda!219776))))

(declare-fun bs!1136903 () Bool)

(assert (= bs!1136903 (and b!4744274 b!4744255)))

(assert (=> bs!1136903 (= lambda!219875 lambda!219862)))

(declare-fun bs!1136904 () Bool)

(assert (= bs!1136904 (and b!4744274 b!4744268)))

(assert (=> bs!1136904 (= lambda!219875 lambda!219871)))

(declare-fun bs!1136905 () Bool)

(assert (= bs!1136905 (and b!4744274 b!4744256)))

(assert (=> bs!1136905 (= (= lt!1906552 lt!1906974) (= lambda!219875 lambda!219864))))

(declare-fun bs!1136906 () Bool)

(assert (= bs!1136906 (and b!4744274 b!4744172)))

(assert (=> bs!1136906 (= lambda!219875 lambda!219816)))

(declare-fun bs!1136907 () Bool)

(assert (= bs!1136907 (and b!4744274 d!1515887)))

(assert (=> bs!1136907 (= (= lt!1906552 lt!1906967) (= lambda!219875 lambda!219865))))

(declare-fun bs!1136908 () Bool)

(assert (= bs!1136908 (and b!4744274 d!1515889)))

(assert (=> bs!1136908 (= (= lt!1906552 lt!1907009) (= lambda!219875 lambda!219873))))

(assert (=> bs!1136905 (= lambda!219875 lambda!219863)))

(assert (=> bs!1136906 (= (= lt!1906552 lt!1906849) (= lambda!219875 lambda!219817))))

(declare-fun bs!1136909 () Bool)

(assert (= bs!1136909 (and b!4744274 d!1515883)))

(assert (=> bs!1136909 (not (= lambda!219875 lambda!219834))))

(declare-fun bs!1136910 () Bool)

(assert (= bs!1136910 (and b!4744274 b!4744171)))

(assert (=> bs!1136910 (= lambda!219875 lambda!219815)))

(declare-fun bs!1136911 () Bool)

(assert (= bs!1136911 (and b!4744274 d!1515831)))

(assert (=> bs!1136911 (= (= lt!1906552 lt!1906842) (= lambda!219875 lambda!219818))))

(assert (=> bs!1136904 (= (= lt!1906552 lt!1907016) (= lambda!219875 lambda!219872))))

(declare-fun bs!1136912 () Bool)

(assert (= bs!1136912 (and b!4744274 b!4744267)))

(assert (=> bs!1136912 (= lambda!219875 lambda!219869)))

(assert (=> b!4744274 true))

(declare-fun bs!1136913 () Bool)

(declare-fun b!4744275 () Bool)

(assert (= bs!1136913 (and b!4744275 b!4744274)))

(declare-fun lambda!219876 () Int)

(assert (=> bs!1136913 (= lambda!219876 lambda!219875)))

(declare-fun bs!1136914 () Bool)

(assert (= bs!1136914 (and b!4744275 d!1515821)))

(assert (=> bs!1136914 (not (= lambda!219876 lambda!219776))))

(declare-fun bs!1136915 () Bool)

(assert (= bs!1136915 (and b!4744275 b!4744255)))

(assert (=> bs!1136915 (= lambda!219876 lambda!219862)))

(declare-fun bs!1136916 () Bool)

(assert (= bs!1136916 (and b!4744275 b!4744268)))

(assert (=> bs!1136916 (= lambda!219876 lambda!219871)))

(declare-fun bs!1136917 () Bool)

(assert (= bs!1136917 (and b!4744275 b!4744256)))

(assert (=> bs!1136917 (= (= lt!1906552 lt!1906974) (= lambda!219876 lambda!219864))))

(declare-fun bs!1136918 () Bool)

(assert (= bs!1136918 (and b!4744275 b!4744172)))

(assert (=> bs!1136918 (= lambda!219876 lambda!219816)))

(declare-fun bs!1136919 () Bool)

(assert (= bs!1136919 (and b!4744275 d!1515887)))

(assert (=> bs!1136919 (= (= lt!1906552 lt!1906967) (= lambda!219876 lambda!219865))))

(declare-fun bs!1136920 () Bool)

(assert (= bs!1136920 (and b!4744275 d!1515889)))

(assert (=> bs!1136920 (= (= lt!1906552 lt!1907009) (= lambda!219876 lambda!219873))))

(assert (=> bs!1136917 (= lambda!219876 lambda!219863)))

(assert (=> bs!1136918 (= (= lt!1906552 lt!1906849) (= lambda!219876 lambda!219817))))

(declare-fun bs!1136921 () Bool)

(assert (= bs!1136921 (and b!4744275 d!1515883)))

(assert (=> bs!1136921 (not (= lambda!219876 lambda!219834))))

(declare-fun bs!1136922 () Bool)

(assert (= bs!1136922 (and b!4744275 b!4744171)))

(assert (=> bs!1136922 (= lambda!219876 lambda!219815)))

(declare-fun bs!1136923 () Bool)

(assert (= bs!1136923 (and b!4744275 d!1515831)))

(assert (=> bs!1136923 (= (= lt!1906552 lt!1906842) (= lambda!219876 lambda!219818))))

(assert (=> bs!1136916 (= (= lt!1906552 lt!1907016) (= lambda!219876 lambda!219872))))

(declare-fun bs!1136924 () Bool)

(assert (= bs!1136924 (and b!4744275 b!4744267)))

(assert (=> bs!1136924 (= lambda!219876 lambda!219869)))

(assert (=> b!4744275 true))

(declare-fun lt!1907038 () ListMap!5383)

(declare-fun lambda!219877 () Int)

(assert (=> bs!1136913 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219875))))

(assert (=> bs!1136914 (not (= lambda!219877 lambda!219776))))

(assert (=> bs!1136916 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219871))))

(assert (=> bs!1136917 (= (= lt!1907038 lt!1906974) (= lambda!219877 lambda!219864))))

(assert (=> bs!1136918 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219816))))

(assert (=> bs!1136919 (= (= lt!1907038 lt!1906967) (= lambda!219877 lambda!219865))))

(assert (=> bs!1136920 (= (= lt!1907038 lt!1907009) (= lambda!219877 lambda!219873))))

(assert (=> bs!1136917 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219863))))

(assert (=> bs!1136918 (= (= lt!1907038 lt!1906849) (= lambda!219877 lambda!219817))))

(assert (=> bs!1136921 (not (= lambda!219877 lambda!219834))))

(assert (=> bs!1136922 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219815))))

(assert (=> bs!1136923 (= (= lt!1907038 lt!1906842) (= lambda!219877 lambda!219818))))

(assert (=> bs!1136915 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219862))))

(assert (=> b!4744275 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219876))))

(assert (=> bs!1136916 (= (= lt!1907038 lt!1907016) (= lambda!219877 lambda!219872))))

(assert (=> bs!1136924 (= (= lt!1907038 lt!1906552) (= lambda!219877 lambda!219869))))

(assert (=> b!4744275 true))

(declare-fun bs!1136925 () Bool)

(declare-fun d!1515897 () Bool)

(assert (= bs!1136925 (and d!1515897 b!4744274)))

(declare-fun lt!1907031 () ListMap!5383)

(declare-fun lambda!219880 () Int)

(assert (=> bs!1136925 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219875))))

(declare-fun bs!1136926 () Bool)

(assert (= bs!1136926 (and d!1515897 d!1515821)))

(assert (=> bs!1136926 (not (= lambda!219880 lambda!219776))))

(declare-fun bs!1136927 () Bool)

(assert (= bs!1136927 (and d!1515897 b!4744268)))

(assert (=> bs!1136927 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219871))))

(declare-fun bs!1136928 () Bool)

(assert (= bs!1136928 (and d!1515897 b!4744256)))

(assert (=> bs!1136928 (= (= lt!1907031 lt!1906974) (= lambda!219880 lambda!219864))))

(declare-fun bs!1136929 () Bool)

(assert (= bs!1136929 (and d!1515897 b!4744172)))

(assert (=> bs!1136929 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219816))))

(declare-fun bs!1136930 () Bool)

(assert (= bs!1136930 (and d!1515897 b!4744275)))

(assert (=> bs!1136930 (= (= lt!1907031 lt!1907038) (= lambda!219880 lambda!219877))))

(declare-fun bs!1136931 () Bool)

(assert (= bs!1136931 (and d!1515897 d!1515887)))

(assert (=> bs!1136931 (= (= lt!1907031 lt!1906967) (= lambda!219880 lambda!219865))))

(declare-fun bs!1136932 () Bool)

(assert (= bs!1136932 (and d!1515897 d!1515889)))

(assert (=> bs!1136932 (= (= lt!1907031 lt!1907009) (= lambda!219880 lambda!219873))))

(assert (=> bs!1136928 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219863))))

(assert (=> bs!1136929 (= (= lt!1907031 lt!1906849) (= lambda!219880 lambda!219817))))

(declare-fun bs!1136933 () Bool)

(assert (= bs!1136933 (and d!1515897 d!1515883)))

(assert (=> bs!1136933 (not (= lambda!219880 lambda!219834))))

(declare-fun bs!1136934 () Bool)

(assert (= bs!1136934 (and d!1515897 b!4744171)))

(assert (=> bs!1136934 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219815))))

(declare-fun bs!1136935 () Bool)

(assert (= bs!1136935 (and d!1515897 d!1515831)))

(assert (=> bs!1136935 (= (= lt!1907031 lt!1906842) (= lambda!219880 lambda!219818))))

(declare-fun bs!1136936 () Bool)

(assert (= bs!1136936 (and d!1515897 b!4744255)))

(assert (=> bs!1136936 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219862))))

(assert (=> bs!1136930 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219876))))

(assert (=> bs!1136927 (= (= lt!1907031 lt!1907016) (= lambda!219880 lambda!219872))))

(declare-fun bs!1136939 () Bool)

(assert (= bs!1136939 (and d!1515897 b!4744267)))

(assert (=> bs!1136939 (= (= lt!1907031 lt!1906552) (= lambda!219880 lambda!219869))))

(assert (=> d!1515897 true))

(declare-fun b!4744273 () Bool)

(declare-fun e!2959300 () Bool)

(assert (=> b!4744273 (= e!2959300 (forall!11698 (toList!6020 lt!1906552) lambda!219877))))

(declare-fun e!2959301 () Bool)

(assert (=> d!1515897 e!2959301))

(declare-fun res!2010509 () Bool)

(assert (=> d!1515897 (=> (not res!2010509) (not e!2959301))))

(assert (=> d!1515897 (= res!2010509 (forall!11698 (Cons!52971 lt!1906551 lt!1906547) lambda!219880))))

(declare-fun e!2959302 () ListMap!5383)

(assert (=> d!1515897 (= lt!1907031 e!2959302)))

(declare-fun c!810379 () Bool)

(assert (=> d!1515897 (= c!810379 (is-Nil!52971 (Cons!52971 lt!1906551 lt!1906547)))))

(assert (=> d!1515897 (noDuplicateKeys!2065 (Cons!52971 lt!1906551 lt!1906547))))

(assert (=> d!1515897 (= (addToMapMapFromBucket!1495 (Cons!52971 lt!1906551 lt!1906547) lt!1906552) lt!1907031)))

(assert (=> b!4744274 (= e!2959302 lt!1906552)))

(declare-fun lt!1907032 () Unit!133975)

(declare-fun call!332029 () Unit!133975)

(assert (=> b!4744274 (= lt!1907032 call!332029)))

(declare-fun call!332027 () Bool)

(assert (=> b!4744274 call!332027))

(declare-fun lt!1907049 () Unit!133975)

(assert (=> b!4744274 (= lt!1907049 lt!1907032)))

(declare-fun call!332028 () Bool)

(assert (=> b!4744274 call!332028))

(declare-fun lt!1907042 () Unit!133975)

(declare-fun Unit!134038 () Unit!133975)

(assert (=> b!4744274 (= lt!1907042 Unit!134038)))

(assert (=> b!4744275 (= e!2959302 lt!1907038)))

(declare-fun lt!1907029 () ListMap!5383)

(assert (=> b!4744275 (= lt!1907029 (+!2313 lt!1906552 (h!59358 (Cons!52971 lt!1906551 lt!1906547))))))

(assert (=> b!4744275 (= lt!1907038 (addToMapMapFromBucket!1495 (t!360399 (Cons!52971 lt!1906551 lt!1906547)) (+!2313 lt!1906552 (h!59358 (Cons!52971 lt!1906551 lt!1906547)))))))

(declare-fun lt!1907039 () Unit!133975)

(assert (=> b!4744275 (= lt!1907039 call!332029)))

(assert (=> b!4744275 (forall!11698 (toList!6020 lt!1906552) lambda!219876)))

(declare-fun lt!1907045 () Unit!133975)

(assert (=> b!4744275 (= lt!1907045 lt!1907039)))

(assert (=> b!4744275 (forall!11698 (toList!6020 lt!1907029) lambda!219877)))

(declare-fun lt!1907033 () Unit!133975)

(declare-fun Unit!134039 () Unit!133975)

(assert (=> b!4744275 (= lt!1907033 Unit!134039)))

(assert (=> b!4744275 (forall!11698 (t!360399 (Cons!52971 lt!1906551 lt!1906547)) lambda!219877)))

(declare-fun lt!1907035 () Unit!133975)

(declare-fun Unit!134040 () Unit!133975)

(assert (=> b!4744275 (= lt!1907035 Unit!134040)))

(declare-fun lt!1907036 () Unit!133975)

(declare-fun Unit!134041 () Unit!133975)

(assert (=> b!4744275 (= lt!1907036 Unit!134041)))

(declare-fun lt!1907040 () Unit!133975)

(assert (=> b!4744275 (= lt!1907040 (forallContained!3738 (toList!6020 lt!1907029) lambda!219877 (h!59358 (Cons!52971 lt!1906551 lt!1906547))))))

(assert (=> b!4744275 (contains!16391 lt!1907029 (_1!30621 (h!59358 (Cons!52971 lt!1906551 lt!1906547))))))

(declare-fun lt!1907046 () Unit!133975)

(declare-fun Unit!134042 () Unit!133975)

(assert (=> b!4744275 (= lt!1907046 Unit!134042)))

(assert (=> b!4744275 (contains!16391 lt!1907038 (_1!30621 (h!59358 (Cons!52971 lt!1906551 lt!1906547))))))

(declare-fun lt!1907043 () Unit!133975)

(declare-fun Unit!134043 () Unit!133975)

(assert (=> b!4744275 (= lt!1907043 Unit!134043)))

(assert (=> b!4744275 call!332027))

(declare-fun lt!1907041 () Unit!133975)

(declare-fun Unit!134044 () Unit!133975)

(assert (=> b!4744275 (= lt!1907041 Unit!134044)))

(assert (=> b!4744275 (forall!11698 (toList!6020 lt!1907029) lambda!219877)))

(declare-fun lt!1907037 () Unit!133975)

(declare-fun Unit!134045 () Unit!133975)

(assert (=> b!4744275 (= lt!1907037 Unit!134045)))

(declare-fun lt!1907048 () Unit!133975)

(declare-fun Unit!134046 () Unit!133975)

(assert (=> b!4744275 (= lt!1907048 Unit!134046)))

(declare-fun lt!1907034 () Unit!133975)

(assert (=> b!4744275 (= lt!1907034 (addForallContainsKeyThenBeforeAdding!834 lt!1906552 lt!1907038 (_1!30621 (h!59358 (Cons!52971 lt!1906551 lt!1906547))) (_2!30621 (h!59358 (Cons!52971 lt!1906551 lt!1906547)))))))

(assert (=> b!4744275 (forall!11698 (toList!6020 lt!1906552) lambda!219877)))

(declare-fun lt!1907047 () Unit!133975)

(assert (=> b!4744275 (= lt!1907047 lt!1907034)))

(assert (=> b!4744275 call!332028))

(declare-fun lt!1907030 () Unit!133975)

(declare-fun Unit!134047 () Unit!133975)

(assert (=> b!4744275 (= lt!1907030 Unit!134047)))

(declare-fun res!2010508 () Bool)

(assert (=> b!4744275 (= res!2010508 (forall!11698 (Cons!52971 lt!1906551 lt!1906547) lambda!219877))))

(assert (=> b!4744275 (=> (not res!2010508) (not e!2959300))))

(assert (=> b!4744275 e!2959300))

(declare-fun lt!1907044 () Unit!133975)

(declare-fun Unit!134048 () Unit!133975)

(assert (=> b!4744275 (= lt!1907044 Unit!134048)))

(declare-fun bm!332022 () Bool)

(assert (=> bm!332022 (= call!332029 (lemmaContainsAllItsOwnKeys!835 lt!1906552))))

(declare-fun bm!332023 () Bool)

(assert (=> bm!332023 (= call!332028 (forall!11698 (toList!6020 lt!1906552) (ite c!810379 lambda!219875 lambda!219877)))))

(declare-fun b!4744276 () Bool)

(declare-fun res!2010507 () Bool)

(assert (=> b!4744276 (=> (not res!2010507) (not e!2959301))))

(assert (=> b!4744276 (= res!2010507 (forall!11698 (toList!6020 lt!1906552) lambda!219880))))

(declare-fun b!4744277 () Bool)

(assert (=> b!4744277 (= e!2959301 (invariantList!1550 (toList!6020 lt!1907031)))))

(declare-fun bm!332024 () Bool)

(assert (=> bm!332024 (= call!332027 (forall!11698 (ite c!810379 (toList!6020 lt!1906552) (Cons!52971 lt!1906551 lt!1906547)) (ite c!810379 lambda!219875 lambda!219877)))))

(assert (= (and d!1515897 c!810379) b!4744274))

(assert (= (and d!1515897 (not c!810379)) b!4744275))

(assert (= (and b!4744275 res!2010508) b!4744273))

(assert (= (or b!4744274 b!4744275) bm!332022))

(assert (= (or b!4744274 b!4744275) bm!332024))

(assert (= (or b!4744274 b!4744275) bm!332023))

(assert (= (and d!1515897 res!2010509) b!4744276))

(assert (= (and b!4744276 res!2010507) b!4744277))

(declare-fun m!5699843 () Bool)

(assert (=> bm!332023 m!5699843))

(declare-fun m!5699845 () Bool)

(assert (=> b!4744275 m!5699845))

(declare-fun m!5699847 () Bool)

(assert (=> b!4744275 m!5699847))

(declare-fun m!5699849 () Bool)

(assert (=> b!4744275 m!5699849))

(declare-fun m!5699851 () Bool)

(assert (=> b!4744275 m!5699851))

(declare-fun m!5699853 () Bool)

(assert (=> b!4744275 m!5699853))

(declare-fun m!5699855 () Bool)

(assert (=> b!4744275 m!5699855))

(assert (=> b!4744275 m!5699845))

(declare-fun m!5699859 () Bool)

(assert (=> b!4744275 m!5699859))

(declare-fun m!5699863 () Bool)

(assert (=> b!4744275 m!5699863))

(declare-fun m!5699865 () Bool)

(assert (=> b!4744275 m!5699865))

(declare-fun m!5699867 () Bool)

(assert (=> b!4744275 m!5699867))

(assert (=> b!4744275 m!5699851))

(declare-fun m!5699869 () Bool)

(assert (=> b!4744275 m!5699869))

(assert (=> bm!332022 m!5699601))

(declare-fun m!5699871 () Bool)

(assert (=> b!4744276 m!5699871))

(declare-fun m!5699873 () Bool)

(assert (=> bm!332024 m!5699873))

(assert (=> b!4744273 m!5699853))

(declare-fun m!5699875 () Bool)

(assert (=> d!1515897 m!5699875))

(declare-fun m!5699877 () Bool)

(assert (=> d!1515897 m!5699877))

(declare-fun m!5699879 () Bool)

(assert (=> b!4744277 m!5699879))

(assert (=> b!4743918 d!1515897))

(declare-fun d!1515905 () Bool)

(assert (=> d!1515905 (= (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906551 lt!1906547) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906551)) (= (content!9478 (toList!6020 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906551 lt!1906547) lt!1906552))) (content!9478 (toList!6020 (+!2313 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906551)))))))

(declare-fun bs!1136948 () Bool)

(assert (= bs!1136948 d!1515905))

(declare-fun m!5699881 () Bool)

(assert (=> bs!1136948 m!5699881))

(declare-fun m!5699883 () Bool)

(assert (=> bs!1136948 m!5699883))

(assert (=> b!4743918 d!1515905))

(declare-fun b!4744286 () Bool)

(declare-fun e!2959312 () Bool)

(assert (=> b!4744286 (= e!2959312 (not (contains!16398 (keys!19066 lt!1906560) key!4653)))))

(declare-fun b!4744287 () Bool)

(declare-fun e!2959309 () Unit!133975)

(declare-fun Unit!134049 () Unit!133975)

(assert (=> b!4744287 (= e!2959309 Unit!134049)))

(declare-fun b!4744288 () Bool)

(declare-fun e!2959310 () List!53099)

(assert (=> b!4744288 (= e!2959310 (getKeysList!989 (toList!6020 lt!1906560)))))

(declare-fun b!4744289 () Bool)

(assert (=> b!4744289 (= e!2959310 (keys!19066 lt!1906560))))

(declare-fun b!4744290 () Bool)

(declare-fun e!2959311 () Unit!133975)

(assert (=> b!4744290 (= e!2959311 e!2959309)))

(declare-fun c!810386 () Bool)

(declare-fun call!332030 () Bool)

(assert (=> b!4744290 (= c!810386 call!332030)))

(declare-fun b!4744291 () Bool)

(declare-fun e!2959307 () Bool)

(declare-fun e!2959308 () Bool)

(assert (=> b!4744291 (= e!2959307 e!2959308)))

(declare-fun res!2010510 () Bool)

(assert (=> b!4744291 (=> (not res!2010510) (not e!2959308))))

(assert (=> b!4744291 (= res!2010510 (isDefined!9732 (getValueByKey!2030 (toList!6020 lt!1906560) key!4653)))))

(declare-fun b!4744292 () Bool)

(assert (=> b!4744292 (= e!2959308 (contains!16398 (keys!19066 lt!1906560) key!4653))))

(declare-fun b!4744293 () Bool)

(assert (=> b!4744293 false))

(declare-fun lt!1907060 () Unit!133975)

(declare-fun lt!1907056 () Unit!133975)

(assert (=> b!4744293 (= lt!1907060 lt!1907056)))

(assert (=> b!4744293 (containsKey!3492 (toList!6020 lt!1906560) key!4653)))

(assert (=> b!4744293 (= lt!1907056 (lemmaInGetKeysListThenContainsKey!988 (toList!6020 lt!1906560) key!4653))))

(declare-fun Unit!134051 () Unit!133975)

(assert (=> b!4744293 (= e!2959309 Unit!134051)))

(declare-fun b!4744294 () Bool)

(declare-fun lt!1907057 () Unit!133975)

(assert (=> b!4744294 (= e!2959311 lt!1907057)))

(declare-fun lt!1907054 () Unit!133975)

(assert (=> b!4744294 (= lt!1907054 (lemmaContainsKeyImpliesGetValueByKeyDefined!1921 (toList!6020 lt!1906560) key!4653))))

(assert (=> b!4744294 (isDefined!9732 (getValueByKey!2030 (toList!6020 lt!1906560) key!4653))))

(declare-fun lt!1907059 () Unit!133975)

(assert (=> b!4744294 (= lt!1907059 lt!1907054)))

(assert (=> b!4744294 (= lt!1907057 (lemmaInListThenGetKeysListContains!984 (toList!6020 lt!1906560) key!4653))))

(assert (=> b!4744294 call!332030))

(declare-fun bm!332025 () Bool)

(assert (=> bm!332025 (= call!332030 (contains!16398 e!2959310 key!4653))))

(declare-fun c!810384 () Bool)

(declare-fun c!810385 () Bool)

(assert (=> bm!332025 (= c!810384 c!810385)))

(declare-fun d!1515907 () Bool)

(assert (=> d!1515907 e!2959307))

(declare-fun res!2010512 () Bool)

(assert (=> d!1515907 (=> res!2010512 e!2959307)))

(assert (=> d!1515907 (= res!2010512 e!2959312)))

(declare-fun res!2010511 () Bool)

(assert (=> d!1515907 (=> (not res!2010511) (not e!2959312))))

(declare-fun lt!1907061 () Bool)

(assert (=> d!1515907 (= res!2010511 (not lt!1907061))))

(declare-fun lt!1907055 () Bool)

(assert (=> d!1515907 (= lt!1907061 lt!1907055)))

(declare-fun lt!1907058 () Unit!133975)

(assert (=> d!1515907 (= lt!1907058 e!2959311)))

(assert (=> d!1515907 (= c!810385 lt!1907055)))

(assert (=> d!1515907 (= lt!1907055 (containsKey!3492 (toList!6020 lt!1906560) key!4653))))

(assert (=> d!1515907 (= (contains!16391 lt!1906560 key!4653) lt!1907061)))

(assert (= (and d!1515907 c!810385) b!4744294))

(assert (= (and d!1515907 (not c!810385)) b!4744290))

(assert (= (and b!4744290 c!810386) b!4744293))

(assert (= (and b!4744290 (not c!810386)) b!4744287))

(assert (= (or b!4744294 b!4744290) bm!332025))

(assert (= (and bm!332025 c!810384) b!4744288))

(assert (= (and bm!332025 (not c!810384)) b!4744289))

(assert (= (and d!1515907 res!2010511) b!4744286))

(assert (= (and d!1515907 (not res!2010512)) b!4744291))

(assert (= (and b!4744291 res!2010510) b!4744292))

(assert (=> b!4744292 m!5699435))

(assert (=> b!4744292 m!5699435))

(declare-fun m!5699893 () Bool)

(assert (=> b!4744292 m!5699893))

(declare-fun m!5699895 () Bool)

(assert (=> bm!332025 m!5699895))

(assert (=> b!4744286 m!5699435))

(assert (=> b!4744286 m!5699435))

(assert (=> b!4744286 m!5699893))

(declare-fun m!5699897 () Bool)

(assert (=> b!4744288 m!5699897))

(declare-fun m!5699899 () Bool)

(assert (=> b!4744294 m!5699899))

(declare-fun m!5699901 () Bool)

(assert (=> b!4744294 m!5699901))

(assert (=> b!4744294 m!5699901))

(declare-fun m!5699903 () Bool)

(assert (=> b!4744294 m!5699903))

(declare-fun m!5699905 () Bool)

(assert (=> b!4744294 m!5699905))

(assert (=> b!4744289 m!5699435))

(declare-fun m!5699907 () Bool)

(assert (=> b!4744293 m!5699907))

(declare-fun m!5699909 () Bool)

(assert (=> b!4744293 m!5699909))

(assert (=> d!1515907 m!5699907))

(assert (=> b!4744291 m!5699901))

(assert (=> b!4744291 m!5699901))

(assert (=> b!4744291 m!5699903))

(assert (=> b!4743918 d!1515907))

(declare-fun d!1515911 () Bool)

(declare-fun e!2959316 () Bool)

(assert (=> d!1515911 e!2959316))

(declare-fun res!2010516 () Bool)

(assert (=> d!1515911 (=> (not res!2010516) (not e!2959316))))

(declare-fun lt!1907086 () ListMap!5383)

(assert (=> d!1515911 (= res!2010516 (contains!16391 lt!1907086 (_1!30621 lt!1906550)))))

(declare-fun lt!1907084 () List!53095)

(assert (=> d!1515911 (= lt!1907086 (ListMap!5384 lt!1907084))))

(declare-fun lt!1907083 () Unit!133975)

(declare-fun lt!1907085 () Unit!133975)

(assert (=> d!1515911 (= lt!1907083 lt!1907085)))

(assert (=> d!1515911 (= (getValueByKey!2030 lt!1907084 (_1!30621 lt!1906550)) (Some!12477 (_2!30621 lt!1906550)))))

(assert (=> d!1515911 (= lt!1907085 (lemmaContainsTupThenGetReturnValue!1117 lt!1907084 (_1!30621 lt!1906550) (_2!30621 lt!1906550)))))

(assert (=> d!1515911 (= lt!1907084 (insertNoDuplicatedKeys!625 (toList!6020 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552)) (_1!30621 lt!1906550) (_2!30621 lt!1906550)))))

(assert (=> d!1515911 (= (+!2313 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1906550) lt!1907086)))

(declare-fun b!4744300 () Bool)

(declare-fun res!2010517 () Bool)

(assert (=> b!4744300 (=> (not res!2010517) (not e!2959316))))

(assert (=> b!4744300 (= res!2010517 (= (getValueByKey!2030 (toList!6020 lt!1907086) (_1!30621 lt!1906550)) (Some!12477 (_2!30621 lt!1906550))))))

(declare-fun b!4744301 () Bool)

(assert (=> b!4744301 (= e!2959316 (contains!16397 (toList!6020 lt!1907086) lt!1906550))))

(assert (= (and d!1515911 res!2010516) b!4744300))

(assert (= (and b!4744300 res!2010517) b!4744301))

(declare-fun m!5699911 () Bool)

(assert (=> d!1515911 m!5699911))

(declare-fun m!5699913 () Bool)

(assert (=> d!1515911 m!5699913))

(declare-fun m!5699915 () Bool)

(assert (=> d!1515911 m!5699915))

(declare-fun m!5699917 () Bool)

(assert (=> d!1515911 m!5699917))

(declare-fun m!5699919 () Bool)

(assert (=> b!4744300 m!5699919))

(declare-fun m!5699921 () Bool)

(assert (=> b!4744301 m!5699921))

(assert (=> b!4743918 d!1515911))

(declare-fun bs!1136959 () Bool)

(declare-fun b!4744303 () Bool)

(assert (= bs!1136959 (and b!4744303 b!4744274)))

(declare-fun lambda!219886 () Int)

(assert (=> bs!1136959 (= lambda!219886 lambda!219875)))

(declare-fun bs!1136960 () Bool)

(assert (= bs!1136960 (and b!4744303 d!1515821)))

(assert (=> bs!1136960 (not (= lambda!219886 lambda!219776))))

(declare-fun bs!1136961 () Bool)

(assert (= bs!1136961 (and b!4744303 b!4744268)))

(assert (=> bs!1136961 (= lambda!219886 lambda!219871)))

(declare-fun bs!1136962 () Bool)

(assert (= bs!1136962 (and b!4744303 b!4744256)))

(assert (=> bs!1136962 (= (= lt!1906552 lt!1906974) (= lambda!219886 lambda!219864))))

(declare-fun bs!1136963 () Bool)

(assert (= bs!1136963 (and b!4744303 b!4744172)))

(assert (=> bs!1136963 (= lambda!219886 lambda!219816)))

(declare-fun bs!1136964 () Bool)

(assert (= bs!1136964 (and b!4744303 b!4744275)))

(assert (=> bs!1136964 (= (= lt!1906552 lt!1907038) (= lambda!219886 lambda!219877))))

(declare-fun bs!1136965 () Bool)

(assert (= bs!1136965 (and b!4744303 d!1515887)))

(assert (=> bs!1136965 (= (= lt!1906552 lt!1906967) (= lambda!219886 lambda!219865))))

(declare-fun bs!1136966 () Bool)

(assert (= bs!1136966 (and b!4744303 d!1515889)))

(assert (=> bs!1136966 (= (= lt!1906552 lt!1907009) (= lambda!219886 lambda!219873))))

(assert (=> bs!1136962 (= lambda!219886 lambda!219863)))

(assert (=> bs!1136963 (= (= lt!1906552 lt!1906849) (= lambda!219886 lambda!219817))))

(declare-fun bs!1136967 () Bool)

(assert (= bs!1136967 (and b!4744303 d!1515883)))

(assert (=> bs!1136967 (not (= lambda!219886 lambda!219834))))

(declare-fun bs!1136968 () Bool)

(assert (= bs!1136968 (and b!4744303 b!4744171)))

(assert (=> bs!1136968 (= lambda!219886 lambda!219815)))

(declare-fun bs!1136969 () Bool)

(assert (= bs!1136969 (and b!4744303 d!1515831)))

(assert (=> bs!1136969 (= (= lt!1906552 lt!1906842) (= lambda!219886 lambda!219818))))

(declare-fun bs!1136970 () Bool)

(assert (= bs!1136970 (and b!4744303 d!1515897)))

(assert (=> bs!1136970 (= (= lt!1906552 lt!1907031) (= lambda!219886 lambda!219880))))

(declare-fun bs!1136971 () Bool)

(assert (= bs!1136971 (and b!4744303 b!4744255)))

(assert (=> bs!1136971 (= lambda!219886 lambda!219862)))

(assert (=> bs!1136964 (= lambda!219886 lambda!219876)))

(assert (=> bs!1136961 (= (= lt!1906552 lt!1907016) (= lambda!219886 lambda!219872))))

(declare-fun bs!1136972 () Bool)

(assert (= bs!1136972 (and b!4744303 b!4744267)))

(assert (=> bs!1136972 (= lambda!219886 lambda!219869)))

(assert (=> b!4744303 true))

(declare-fun bs!1136976 () Bool)

(declare-fun b!4744304 () Bool)

(assert (= bs!1136976 (and b!4744304 b!4744274)))

(declare-fun lambda!219888 () Int)

(assert (=> bs!1136976 (= lambda!219888 lambda!219875)))

(declare-fun bs!1136977 () Bool)

(assert (= bs!1136977 (and b!4744304 d!1515821)))

(assert (=> bs!1136977 (not (= lambda!219888 lambda!219776))))

(declare-fun bs!1136979 () Bool)

(assert (= bs!1136979 (and b!4744304 b!4744268)))

(assert (=> bs!1136979 (= lambda!219888 lambda!219871)))

(declare-fun bs!1136981 () Bool)

(assert (= bs!1136981 (and b!4744304 b!4744256)))

(assert (=> bs!1136981 (= (= lt!1906552 lt!1906974) (= lambda!219888 lambda!219864))))

(declare-fun bs!1136983 () Bool)

(assert (= bs!1136983 (and b!4744304 b!4744275)))

(assert (=> bs!1136983 (= (= lt!1906552 lt!1907038) (= lambda!219888 lambda!219877))))

(declare-fun bs!1136984 () Bool)

(assert (= bs!1136984 (and b!4744304 d!1515887)))

(assert (=> bs!1136984 (= (= lt!1906552 lt!1906967) (= lambda!219888 lambda!219865))))

(declare-fun bs!1136985 () Bool)

(assert (= bs!1136985 (and b!4744304 d!1515889)))

(assert (=> bs!1136985 (= (= lt!1906552 lt!1907009) (= lambda!219888 lambda!219873))))

(assert (=> bs!1136981 (= lambda!219888 lambda!219863)))

(declare-fun bs!1136986 () Bool)

(assert (= bs!1136986 (and b!4744304 b!4744172)))

(assert (=> bs!1136986 (= (= lt!1906552 lt!1906849) (= lambda!219888 lambda!219817))))

(declare-fun bs!1136987 () Bool)

(assert (= bs!1136987 (and b!4744304 d!1515883)))

(assert (=> bs!1136987 (not (= lambda!219888 lambda!219834))))

(declare-fun bs!1136988 () Bool)

(assert (= bs!1136988 (and b!4744304 b!4744171)))

(assert (=> bs!1136988 (= lambda!219888 lambda!219815)))

(declare-fun bs!1136989 () Bool)

(assert (= bs!1136989 (and b!4744304 d!1515831)))

(assert (=> bs!1136989 (= (= lt!1906552 lt!1906842) (= lambda!219888 lambda!219818))))

(declare-fun bs!1136990 () Bool)

(assert (= bs!1136990 (and b!4744304 d!1515897)))

(assert (=> bs!1136990 (= (= lt!1906552 lt!1907031) (= lambda!219888 lambda!219880))))

(declare-fun bs!1136991 () Bool)

(assert (= bs!1136991 (and b!4744304 b!4744255)))

(assert (=> bs!1136991 (= lambda!219888 lambda!219862)))

(assert (=> bs!1136983 (= lambda!219888 lambda!219876)))

(declare-fun bs!1136992 () Bool)

(assert (= bs!1136992 (and b!4744304 b!4744303)))

(assert (=> bs!1136992 (= lambda!219888 lambda!219886)))

(assert (=> bs!1136986 (= lambda!219888 lambda!219816)))

(assert (=> bs!1136979 (= (= lt!1906552 lt!1907016) (= lambda!219888 lambda!219872))))

(declare-fun bs!1136993 () Bool)

(assert (= bs!1136993 (and b!4744304 b!4744267)))

(assert (=> bs!1136993 (= lambda!219888 lambda!219869)))

(assert (=> b!4744304 true))

(declare-fun lambda!219889 () Int)

(declare-fun lt!1907096 () ListMap!5383)

(assert (=> bs!1136976 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219875))))

(assert (=> bs!1136977 (not (= lambda!219889 lambda!219776))))

(assert (=> bs!1136979 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219871))))

(assert (=> bs!1136981 (= (= lt!1907096 lt!1906974) (= lambda!219889 lambda!219864))))

(assert (=> bs!1136983 (= (= lt!1907096 lt!1907038) (= lambda!219889 lambda!219877))))

(assert (=> bs!1136984 (= (= lt!1907096 lt!1906967) (= lambda!219889 lambda!219865))))

(assert (=> bs!1136985 (= (= lt!1907096 lt!1907009) (= lambda!219889 lambda!219873))))

(assert (=> bs!1136981 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219863))))

(assert (=> b!4744304 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219888))))

(assert (=> bs!1136986 (= (= lt!1907096 lt!1906849) (= lambda!219889 lambda!219817))))

(assert (=> bs!1136987 (not (= lambda!219889 lambda!219834))))

(assert (=> bs!1136988 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219815))))

(assert (=> bs!1136989 (= (= lt!1907096 lt!1906842) (= lambda!219889 lambda!219818))))

(assert (=> bs!1136990 (= (= lt!1907096 lt!1907031) (= lambda!219889 lambda!219880))))

(assert (=> bs!1136991 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219862))))

(assert (=> bs!1136983 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219876))))

(assert (=> bs!1136992 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219886))))

(assert (=> bs!1136986 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219816))))

(assert (=> bs!1136979 (= (= lt!1907096 lt!1907016) (= lambda!219889 lambda!219872))))

(assert (=> bs!1136993 (= (= lt!1907096 lt!1906552) (= lambda!219889 lambda!219869))))

(assert (=> b!4744304 true))

(declare-fun bs!1136994 () Bool)

(declare-fun d!1515913 () Bool)

(assert (= bs!1136994 (and d!1515913 b!4744274)))

(declare-fun lambda!219890 () Int)

(declare-fun lt!1907089 () ListMap!5383)

(assert (=> bs!1136994 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219875))))

(declare-fun bs!1136995 () Bool)

(assert (= bs!1136995 (and d!1515913 d!1515821)))

(assert (=> bs!1136995 (not (= lambda!219890 lambda!219776))))

(declare-fun bs!1136996 () Bool)

(assert (= bs!1136996 (and d!1515913 b!4744268)))

(assert (=> bs!1136996 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219871))))

(declare-fun bs!1136997 () Bool)

(assert (= bs!1136997 (and d!1515913 b!4744256)))

(assert (=> bs!1136997 (= (= lt!1907089 lt!1906974) (= lambda!219890 lambda!219864))))

(declare-fun bs!1136998 () Bool)

(assert (= bs!1136998 (and d!1515913 b!4744275)))

(assert (=> bs!1136998 (= (= lt!1907089 lt!1907038) (= lambda!219890 lambda!219877))))

(declare-fun bs!1136999 () Bool)

(assert (= bs!1136999 (and d!1515913 b!4744304)))

(assert (=> bs!1136999 (= (= lt!1907089 lt!1907096) (= lambda!219890 lambda!219889))))

(declare-fun bs!1137000 () Bool)

(assert (= bs!1137000 (and d!1515913 d!1515887)))

(assert (=> bs!1137000 (= (= lt!1907089 lt!1906967) (= lambda!219890 lambda!219865))))

(declare-fun bs!1137001 () Bool)

(assert (= bs!1137001 (and d!1515913 d!1515889)))

(assert (=> bs!1137001 (= (= lt!1907089 lt!1907009) (= lambda!219890 lambda!219873))))

(assert (=> bs!1136997 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219863))))

(assert (=> bs!1136999 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219888))))

(declare-fun bs!1137002 () Bool)

(assert (= bs!1137002 (and d!1515913 b!4744172)))

(assert (=> bs!1137002 (= (= lt!1907089 lt!1906849) (= lambda!219890 lambda!219817))))

(declare-fun bs!1137003 () Bool)

(assert (= bs!1137003 (and d!1515913 d!1515883)))

(assert (=> bs!1137003 (not (= lambda!219890 lambda!219834))))

(declare-fun bs!1137004 () Bool)

(assert (= bs!1137004 (and d!1515913 b!4744171)))

(assert (=> bs!1137004 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219815))))

(declare-fun bs!1137005 () Bool)

(assert (= bs!1137005 (and d!1515913 d!1515831)))

(assert (=> bs!1137005 (= (= lt!1907089 lt!1906842) (= lambda!219890 lambda!219818))))

(declare-fun bs!1137006 () Bool)

(assert (= bs!1137006 (and d!1515913 d!1515897)))

(assert (=> bs!1137006 (= (= lt!1907089 lt!1907031) (= lambda!219890 lambda!219880))))

(declare-fun bs!1137007 () Bool)

(assert (= bs!1137007 (and d!1515913 b!4744255)))

(assert (=> bs!1137007 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219862))))

(assert (=> bs!1136998 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219876))))

(declare-fun bs!1137008 () Bool)

(assert (= bs!1137008 (and d!1515913 b!4744303)))

(assert (=> bs!1137008 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219886))))

(assert (=> bs!1137002 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219816))))

(assert (=> bs!1136996 (= (= lt!1907089 lt!1907016) (= lambda!219890 lambda!219872))))

(declare-fun bs!1137009 () Bool)

(assert (= bs!1137009 (and d!1515913 b!4744267)))

(assert (=> bs!1137009 (= (= lt!1907089 lt!1906552) (= lambda!219890 lambda!219869))))

(assert (=> d!1515913 true))

(declare-fun b!4744302 () Bool)

(declare-fun e!2959317 () Bool)

(assert (=> b!4744302 (= e!2959317 (forall!11698 (toList!6020 lt!1906552) lambda!219889))))

(declare-fun e!2959318 () Bool)

(assert (=> d!1515913 e!2959318))

(declare-fun res!2010520 () Bool)

(assert (=> d!1515913 (=> (not res!2010520) (not e!2959318))))

(assert (=> d!1515913 (= res!2010520 (forall!11698 lt!1906561 lambda!219890))))

(declare-fun e!2959319 () ListMap!5383)

(assert (=> d!1515913 (= lt!1907089 e!2959319)))

(declare-fun c!810388 () Bool)

(assert (=> d!1515913 (= c!810388 (is-Nil!52971 lt!1906561))))

(assert (=> d!1515913 (noDuplicateKeys!2065 lt!1906561)))

(assert (=> d!1515913 (= (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1907089)))

(assert (=> b!4744303 (= e!2959319 lt!1906552)))

(declare-fun lt!1907090 () Unit!133975)

(declare-fun call!332036 () Unit!133975)

(assert (=> b!4744303 (= lt!1907090 call!332036)))

(declare-fun call!332034 () Bool)

(assert (=> b!4744303 call!332034))

(declare-fun lt!1907107 () Unit!133975)

(assert (=> b!4744303 (= lt!1907107 lt!1907090)))

(declare-fun call!332035 () Bool)

(assert (=> b!4744303 call!332035))

(declare-fun lt!1907100 () Unit!133975)

(declare-fun Unit!134062 () Unit!133975)

(assert (=> b!4744303 (= lt!1907100 Unit!134062)))

(assert (=> b!4744304 (= e!2959319 lt!1907096)))

(declare-fun lt!1907087 () ListMap!5383)

(assert (=> b!4744304 (= lt!1907087 (+!2313 lt!1906552 (h!59358 lt!1906561)))))

(assert (=> b!4744304 (= lt!1907096 (addToMapMapFromBucket!1495 (t!360399 lt!1906561) (+!2313 lt!1906552 (h!59358 lt!1906561))))))

(declare-fun lt!1907097 () Unit!133975)

(assert (=> b!4744304 (= lt!1907097 call!332036)))

(assert (=> b!4744304 (forall!11698 (toList!6020 lt!1906552) lambda!219888)))

(declare-fun lt!1907103 () Unit!133975)

(assert (=> b!4744304 (= lt!1907103 lt!1907097)))

(assert (=> b!4744304 (forall!11698 (toList!6020 lt!1907087) lambda!219889)))

(declare-fun lt!1907091 () Unit!133975)

(declare-fun Unit!134063 () Unit!133975)

(assert (=> b!4744304 (= lt!1907091 Unit!134063)))

(assert (=> b!4744304 (forall!11698 (t!360399 lt!1906561) lambda!219889)))

(declare-fun lt!1907093 () Unit!133975)

(declare-fun Unit!134064 () Unit!133975)

(assert (=> b!4744304 (= lt!1907093 Unit!134064)))

(declare-fun lt!1907094 () Unit!133975)

(declare-fun Unit!134065 () Unit!133975)

(assert (=> b!4744304 (= lt!1907094 Unit!134065)))

(declare-fun lt!1907098 () Unit!133975)

(assert (=> b!4744304 (= lt!1907098 (forallContained!3738 (toList!6020 lt!1907087) lambda!219889 (h!59358 lt!1906561)))))

(assert (=> b!4744304 (contains!16391 lt!1907087 (_1!30621 (h!59358 lt!1906561)))))

(declare-fun lt!1907104 () Unit!133975)

(declare-fun Unit!134066 () Unit!133975)

(assert (=> b!4744304 (= lt!1907104 Unit!134066)))

(assert (=> b!4744304 (contains!16391 lt!1907096 (_1!30621 (h!59358 lt!1906561)))))

(declare-fun lt!1907101 () Unit!133975)

(declare-fun Unit!134067 () Unit!133975)

(assert (=> b!4744304 (= lt!1907101 Unit!134067)))

(assert (=> b!4744304 call!332034))

(declare-fun lt!1907099 () Unit!133975)

(declare-fun Unit!134068 () Unit!133975)

(assert (=> b!4744304 (= lt!1907099 Unit!134068)))

(assert (=> b!4744304 (forall!11698 (toList!6020 lt!1907087) lambda!219889)))

(declare-fun lt!1907095 () Unit!133975)

(declare-fun Unit!134069 () Unit!133975)

(assert (=> b!4744304 (= lt!1907095 Unit!134069)))

(declare-fun lt!1907106 () Unit!133975)

(declare-fun Unit!134070 () Unit!133975)

(assert (=> b!4744304 (= lt!1907106 Unit!134070)))

(declare-fun lt!1907092 () Unit!133975)

(assert (=> b!4744304 (= lt!1907092 (addForallContainsKeyThenBeforeAdding!834 lt!1906552 lt!1907096 (_1!30621 (h!59358 lt!1906561)) (_2!30621 (h!59358 lt!1906561))))))

(assert (=> b!4744304 (forall!11698 (toList!6020 lt!1906552) lambda!219889)))

(declare-fun lt!1907105 () Unit!133975)

(assert (=> b!4744304 (= lt!1907105 lt!1907092)))

(assert (=> b!4744304 call!332035))

(declare-fun lt!1907088 () Unit!133975)

(declare-fun Unit!134071 () Unit!133975)

(assert (=> b!4744304 (= lt!1907088 Unit!134071)))

(declare-fun res!2010519 () Bool)

(assert (=> b!4744304 (= res!2010519 (forall!11698 lt!1906561 lambda!219889))))

(assert (=> b!4744304 (=> (not res!2010519) (not e!2959317))))

(assert (=> b!4744304 e!2959317))

(declare-fun lt!1907102 () Unit!133975)

(declare-fun Unit!134072 () Unit!133975)

(assert (=> b!4744304 (= lt!1907102 Unit!134072)))

(declare-fun bm!332029 () Bool)

(assert (=> bm!332029 (= call!332036 (lemmaContainsAllItsOwnKeys!835 lt!1906552))))

(declare-fun bm!332030 () Bool)

(assert (=> bm!332030 (= call!332035 (forall!11698 (toList!6020 lt!1906552) (ite c!810388 lambda!219886 lambda!219889)))))

(declare-fun b!4744305 () Bool)

(declare-fun res!2010518 () Bool)

(assert (=> b!4744305 (=> (not res!2010518) (not e!2959318))))

(assert (=> b!4744305 (= res!2010518 (forall!11698 (toList!6020 lt!1906552) lambda!219890))))

(declare-fun b!4744306 () Bool)

(assert (=> b!4744306 (= e!2959318 (invariantList!1550 (toList!6020 lt!1907089)))))

(declare-fun bm!332031 () Bool)

(assert (=> bm!332031 (= call!332034 (forall!11698 (ite c!810388 (toList!6020 lt!1906552) lt!1906561) (ite c!810388 lambda!219886 lambda!219889)))))

(assert (= (and d!1515913 c!810388) b!4744303))

(assert (= (and d!1515913 (not c!810388)) b!4744304))

(assert (= (and b!4744304 res!2010519) b!4744302))

(assert (= (or b!4744303 b!4744304) bm!332029))

(assert (= (or b!4744303 b!4744304) bm!332031))

(assert (= (or b!4744303 b!4744304) bm!332030))

(assert (= (and d!1515913 res!2010520) b!4744305))

(assert (= (and b!4744305 res!2010518) b!4744306))

(declare-fun m!5699955 () Bool)

(assert (=> bm!332030 m!5699955))

(declare-fun m!5699957 () Bool)

(assert (=> b!4744304 m!5699957))

(declare-fun m!5699959 () Bool)

(assert (=> b!4744304 m!5699959))

(declare-fun m!5699961 () Bool)

(assert (=> b!4744304 m!5699961))

(declare-fun m!5699963 () Bool)

(assert (=> b!4744304 m!5699963))

(declare-fun m!5699965 () Bool)

(assert (=> b!4744304 m!5699965))

(declare-fun m!5699967 () Bool)

(assert (=> b!4744304 m!5699967))

(assert (=> b!4744304 m!5699957))

(declare-fun m!5699969 () Bool)

(assert (=> b!4744304 m!5699969))

(declare-fun m!5699971 () Bool)

(assert (=> b!4744304 m!5699971))

(declare-fun m!5699973 () Bool)

(assert (=> b!4744304 m!5699973))

(declare-fun m!5699975 () Bool)

(assert (=> b!4744304 m!5699975))

(assert (=> b!4744304 m!5699963))

(declare-fun m!5699977 () Bool)

(assert (=> b!4744304 m!5699977))

(assert (=> bm!332029 m!5699601))

(declare-fun m!5699979 () Bool)

(assert (=> b!4744305 m!5699979))

(declare-fun m!5699981 () Bool)

(assert (=> bm!332031 m!5699981))

(assert (=> b!4744302 m!5699965))

(declare-fun m!5699983 () Bool)

(assert (=> d!1515913 m!5699983))

(assert (=> d!1515913 m!5699525))

(declare-fun m!5699985 () Bool)

(assert (=> b!4744306 m!5699985))

(assert (=> b!4743918 d!1515913))

(declare-fun d!1515919 () Bool)

(declare-fun e!2959320 () Bool)

(assert (=> d!1515919 e!2959320))

(declare-fun res!2010521 () Bool)

(assert (=> d!1515919 (=> (not res!2010521) (not e!2959320))))

(declare-fun lt!1907111 () ListMap!5383)

(assert (=> d!1515919 (= res!2010521 (contains!16391 lt!1907111 (_1!30621 lt!1906551)))))

(declare-fun lt!1907109 () List!53095)

(assert (=> d!1515919 (= lt!1907111 (ListMap!5384 lt!1907109))))

(declare-fun lt!1907108 () Unit!133975)

(declare-fun lt!1907110 () Unit!133975)

(assert (=> d!1515919 (= lt!1907108 lt!1907110)))

(assert (=> d!1515919 (= (getValueByKey!2030 lt!1907109 (_1!30621 lt!1906551)) (Some!12477 (_2!30621 lt!1906551)))))

(assert (=> d!1515919 (= lt!1907110 (lemmaContainsTupThenGetReturnValue!1117 lt!1907109 (_1!30621 lt!1906551) (_2!30621 lt!1906551)))))

(assert (=> d!1515919 (= lt!1907109 (insertNoDuplicatedKeys!625 (toList!6020 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552)) (_1!30621 lt!1906551) (_2!30621 lt!1906551)))))

(assert (=> d!1515919 (= (+!2313 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906551) lt!1907111)))

(declare-fun b!4744307 () Bool)

(declare-fun res!2010522 () Bool)

(assert (=> b!4744307 (=> (not res!2010522) (not e!2959320))))

(assert (=> b!4744307 (= res!2010522 (= (getValueByKey!2030 (toList!6020 lt!1907111) (_1!30621 lt!1906551)) (Some!12477 (_2!30621 lt!1906551))))))

(declare-fun b!4744308 () Bool)

(assert (=> b!4744308 (= e!2959320 (contains!16397 (toList!6020 lt!1907111) lt!1906551))))

(assert (= (and d!1515919 res!2010521) b!4744307))

(assert (= (and b!4744307 res!2010522) b!4744308))

(declare-fun m!5699987 () Bool)

(assert (=> d!1515919 m!5699987))

(declare-fun m!5699989 () Bool)

(assert (=> d!1515919 m!5699989))

(declare-fun m!5699991 () Bool)

(assert (=> d!1515919 m!5699991))

(declare-fun m!5699993 () Bool)

(assert (=> d!1515919 m!5699993))

(declare-fun m!5699995 () Bool)

(assert (=> b!4744307 m!5699995))

(declare-fun m!5699997 () Bool)

(assert (=> b!4744308 m!5699997))

(assert (=> b!4743918 d!1515919))

(declare-fun bs!1137010 () Bool)

(declare-fun d!1515921 () Bool)

(assert (= bs!1137010 (and d!1515921 d!1515809)))

(declare-fun lambda!219891 () Int)

(assert (=> bs!1137010 (= lambda!219891 lambda!219769)))

(declare-fun bs!1137011 () Bool)

(assert (= bs!1137011 (and d!1515921 d!1515811)))

(assert (=> bs!1137011 (= lambda!219891 lambda!219770)))

(declare-fun bs!1137012 () Bool)

(assert (= bs!1137012 (and d!1515921 start!484182)))

(assert (=> bs!1137012 (= lambda!219891 lambda!219753)))

(declare-fun bs!1137013 () Bool)

(assert (= bs!1137013 (and d!1515921 d!1515863)))

(assert (=> bs!1137013 (= lambda!219891 lambda!219822)))

(declare-fun bs!1137014 () Bool)

(assert (= bs!1137014 (and d!1515921 d!1515849)))

(assert (=> bs!1137014 (= lambda!219891 lambda!219819)))

(declare-fun bs!1137015 () Bool)

(assert (= bs!1137015 (and d!1515921 d!1515815)))

(assert (=> bs!1137015 (= lambda!219891 lambda!219773)))

(declare-fun bs!1137016 () Bool)

(assert (= bs!1137016 (and d!1515921 d!1515803)))

(assert (=> bs!1137016 (= lambda!219891 lambda!219768)))

(declare-fun bs!1137017 () Bool)

(assert (= bs!1137017 (and d!1515921 d!1515885)))

(assert (=> bs!1137017 (= lambda!219891 lambda!219859)))

(declare-fun bs!1137018 () Bool)

(assert (= bs!1137018 (and d!1515921 d!1515781)))

(assert (=> bs!1137018 (= lambda!219891 lambda!219767)))

(declare-fun bs!1137019 () Bool)

(assert (= bs!1137019 (and d!1515921 d!1515893)))

(assert (=> bs!1137019 (= lambda!219891 lambda!219874)))

(declare-fun bs!1137020 () Bool)

(assert (= bs!1137020 (and d!1515921 d!1515865)))

(assert (=> bs!1137020 (= lambda!219891 lambda!219829)))

(declare-fun lt!1907112 () ListMap!5383)

(assert (=> d!1515921 (invariantList!1550 (toList!6020 lt!1907112))))

(declare-fun e!2959321 () ListMap!5383)

(assert (=> d!1515921 (= lt!1907112 e!2959321)))

(declare-fun c!810389 () Bool)

(assert (=> d!1515921 (= c!810389 (is-Cons!52972 lt!1906556))))

(assert (=> d!1515921 (forall!11696 lt!1906556 lambda!219891)))

(assert (=> d!1515921 (= (extractMap!2091 lt!1906556) lt!1907112)))

(declare-fun b!4744309 () Bool)

(assert (=> b!4744309 (= e!2959321 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 lt!1906556)) (extractMap!2091 (t!360400 lt!1906556))))))

(declare-fun b!4744310 () Bool)

(assert (=> b!4744310 (= e!2959321 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515921 c!810389) b!4744309))

(assert (= (and d!1515921 (not c!810389)) b!4744310))

(declare-fun m!5699999 () Bool)

(assert (=> d!1515921 m!5699999))

(declare-fun m!5700001 () Bool)

(assert (=> d!1515921 m!5700001))

(declare-fun m!5700003 () Bool)

(assert (=> b!4744309 m!5700003))

(assert (=> b!4744309 m!5700003))

(declare-fun m!5700005 () Bool)

(assert (=> b!4744309 m!5700005))

(assert (=> b!4743918 d!1515921))

(declare-fun bs!1137021 () Bool)

(declare-fun d!1515923 () Bool)

(assert (= bs!1137021 (and d!1515923 d!1515809)))

(declare-fun lambda!219892 () Int)

(assert (=> bs!1137021 (= lambda!219892 lambda!219769)))

(declare-fun bs!1137022 () Bool)

(assert (= bs!1137022 (and d!1515923 d!1515811)))

(assert (=> bs!1137022 (= lambda!219892 lambda!219770)))

(declare-fun bs!1137023 () Bool)

(assert (= bs!1137023 (and d!1515923 d!1515863)))

(assert (=> bs!1137023 (= lambda!219892 lambda!219822)))

(declare-fun bs!1137024 () Bool)

(assert (= bs!1137024 (and d!1515923 d!1515849)))

(assert (=> bs!1137024 (= lambda!219892 lambda!219819)))

(declare-fun bs!1137025 () Bool)

(assert (= bs!1137025 (and d!1515923 d!1515815)))

(assert (=> bs!1137025 (= lambda!219892 lambda!219773)))

(declare-fun bs!1137026 () Bool)

(assert (= bs!1137026 (and d!1515923 d!1515803)))

(assert (=> bs!1137026 (= lambda!219892 lambda!219768)))

(declare-fun bs!1137027 () Bool)

(assert (= bs!1137027 (and d!1515923 d!1515885)))

(assert (=> bs!1137027 (= lambda!219892 lambda!219859)))

(declare-fun bs!1137028 () Bool)

(assert (= bs!1137028 (and d!1515923 d!1515921)))

(assert (=> bs!1137028 (= lambda!219892 lambda!219891)))

(declare-fun bs!1137029 () Bool)

(assert (= bs!1137029 (and d!1515923 start!484182)))

(assert (=> bs!1137029 (= lambda!219892 lambda!219753)))

(declare-fun bs!1137030 () Bool)

(assert (= bs!1137030 (and d!1515923 d!1515781)))

(assert (=> bs!1137030 (= lambda!219892 lambda!219767)))

(declare-fun bs!1137031 () Bool)

(assert (= bs!1137031 (and d!1515923 d!1515893)))

(assert (=> bs!1137031 (= lambda!219892 lambda!219874)))

(declare-fun bs!1137032 () Bool)

(assert (= bs!1137032 (and d!1515923 d!1515865)))

(assert (=> bs!1137032 (= lambda!219892 lambda!219829)))

(declare-fun lt!1907113 () ListMap!5383)

(assert (=> d!1515923 (invariantList!1550 (toList!6020 lt!1907113))))

(declare-fun e!2959322 () ListMap!5383)

(assert (=> d!1515923 (= lt!1907113 e!2959322)))

(declare-fun c!810390 () Bool)

(assert (=> d!1515923 (= c!810390 (is-Cons!52972 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023)))))))

(assert (=> d!1515923 (forall!11696 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023))) lambda!219892)))

(assert (=> d!1515923 (= (extractMap!2091 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023)))) lt!1907113)))

(declare-fun b!4744311 () Bool)

(assert (=> b!4744311 (= e!2959322 (addToMapMapFromBucket!1495 (_2!30622 (h!59359 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023))))) (extractMap!2091 (t!360400 (Cons!52972 lt!1906569 (t!360400 (toList!6019 lm!2023)))))))))

(declare-fun b!4744312 () Bool)

(assert (=> b!4744312 (= e!2959322 (ListMap!5384 Nil!52971))))

(assert (= (and d!1515923 c!810390) b!4744311))

(assert (= (and d!1515923 (not c!810390)) b!4744312))

(declare-fun m!5700007 () Bool)

(assert (=> d!1515923 m!5700007))

(declare-fun m!5700009 () Bool)

(assert (=> d!1515923 m!5700009))

(declare-fun m!5700011 () Bool)

(assert (=> b!4744311 m!5700011))

(assert (=> b!4744311 m!5700011))

(declare-fun m!5700013 () Bool)

(assert (=> b!4744311 m!5700013))

(assert (=> b!4743918 d!1515923))

(declare-fun d!1515925 () Bool)

(assert (=> d!1515925 (= (eq!1162 lt!1906571 (+!2313 lt!1906577 (h!59358 oldBucket!34))) (= (content!9478 (toList!6020 lt!1906571)) (content!9478 (toList!6020 (+!2313 lt!1906577 (h!59358 oldBucket!34))))))))

(declare-fun bs!1137033 () Bool)

(assert (= bs!1137033 d!1515925))

(assert (=> bs!1137033 m!5699307))

(declare-fun m!5700015 () Bool)

(assert (=> bs!1137033 m!5700015))

(assert (=> b!4743918 d!1515925))

(declare-fun d!1515927 () Bool)

(declare-fun e!2959323 () Bool)

(assert (=> d!1515927 e!2959323))

(declare-fun res!2010523 () Bool)

(assert (=> d!1515927 (=> (not res!2010523) (not e!2959323))))

(declare-fun lt!1907119 () ListMap!5383)

(assert (=> d!1515927 (= res!2010523 (contains!16391 lt!1907119 (_1!30621 (h!59358 oldBucket!34))))))

(declare-fun lt!1907117 () List!53095)

(assert (=> d!1515927 (= lt!1907119 (ListMap!5384 lt!1907117))))

(declare-fun lt!1907116 () Unit!133975)

(declare-fun lt!1907118 () Unit!133975)

(assert (=> d!1515927 (= lt!1907116 lt!1907118)))

(assert (=> d!1515927 (= (getValueByKey!2030 lt!1907117 (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515927 (= lt!1907118 (lemmaContainsTupThenGetReturnValue!1117 lt!1907117 (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515927 (= lt!1907117 (insertNoDuplicatedKeys!625 (toList!6020 lt!1906577) (_1!30621 (h!59358 oldBucket!34)) (_2!30621 (h!59358 oldBucket!34))))))

(assert (=> d!1515927 (= (+!2313 lt!1906577 (h!59358 oldBucket!34)) lt!1907119)))

(declare-fun b!4744313 () Bool)

(declare-fun res!2010524 () Bool)

(assert (=> b!4744313 (=> (not res!2010524) (not e!2959323))))

(assert (=> b!4744313 (= res!2010524 (= (getValueByKey!2030 (toList!6020 lt!1907119) (_1!30621 (h!59358 oldBucket!34))) (Some!12477 (_2!30621 (h!59358 oldBucket!34)))))))

(declare-fun b!4744314 () Bool)

(assert (=> b!4744314 (= e!2959323 (contains!16397 (toList!6020 lt!1907119) (h!59358 oldBucket!34)))))

(assert (= (and d!1515927 res!2010523) b!4744313))

(assert (= (and b!4744313 res!2010524) b!4744314))

(declare-fun m!5700017 () Bool)

(assert (=> d!1515927 m!5700017))

(declare-fun m!5700019 () Bool)

(assert (=> d!1515927 m!5700019))

(declare-fun m!5700021 () Bool)

(assert (=> d!1515927 m!5700021))

(declare-fun m!5700023 () Bool)

(assert (=> d!1515927 m!5700023))

(declare-fun m!5700025 () Bool)

(assert (=> b!4744313 m!5700025))

(declare-fun m!5700027 () Bool)

(assert (=> b!4744314 m!5700027))

(assert (=> b!4743918 d!1515927))

(declare-fun d!1515929 () Bool)

(assert (=> d!1515929 (= (head!10334 oldBucket!34) (h!59358 oldBucket!34))))

(assert (=> b!4743918 d!1515929))

(declare-fun d!1515931 () Bool)

(assert (=> d!1515931 (= (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906550 lt!1906561) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1906550)) (= (content!9478 (toList!6020 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906550 lt!1906561) lt!1906552))) (content!9478 (toList!6020 (+!2313 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1906550)))))))

(declare-fun bs!1137034 () Bool)

(assert (= bs!1137034 d!1515931))

(declare-fun m!5700029 () Bool)

(assert (=> bs!1137034 m!5700029))

(declare-fun m!5700031 () Bool)

(assert (=> bs!1137034 m!5700031))

(assert (=> b!4743918 d!1515931))

(declare-fun d!1515933 () Bool)

(assert (=> d!1515933 (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906550 lt!1906561) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906561 lt!1906552) lt!1906550))))

(declare-fun lt!1907131 () Unit!133975)

(declare-fun choose!33712 (tuple2!54654 List!53095 ListMap!5383) Unit!133975)

(assert (=> d!1515933 (= lt!1907131 (choose!33712 lt!1906550 lt!1906561 lt!1906552))))

(assert (=> d!1515933 (noDuplicateKeys!2065 lt!1906561)))

(assert (=> d!1515933 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!411 lt!1906550 lt!1906561 lt!1906552) lt!1907131)))

(declare-fun bs!1137036 () Bool)

(assert (= bs!1137036 d!1515933))

(assert (=> bs!1137036 m!5699525))

(declare-fun m!5700035 () Bool)

(assert (=> bs!1137036 m!5700035))

(assert (=> bs!1137036 m!5699077))

(assert (=> bs!1137036 m!5699061))

(assert (=> bs!1137036 m!5699053))

(assert (=> bs!1137036 m!5699077))

(assert (=> bs!1137036 m!5699053))

(assert (=> bs!1137036 m!5699061))

(assert (=> bs!1137036 m!5699063))

(assert (=> b!4743918 d!1515933))

(declare-fun d!1515939 () Bool)

(assert (=> d!1515939 (eq!1162 (addToMapMapFromBucket!1495 (Cons!52971 lt!1906551 lt!1906547) lt!1906552) (+!2313 (addToMapMapFromBucket!1495 lt!1906547 lt!1906552) lt!1906551))))

(declare-fun lt!1907136 () Unit!133975)

(assert (=> d!1515939 (= lt!1907136 (choose!33712 lt!1906551 lt!1906547 lt!1906552))))

(assert (=> d!1515939 (noDuplicateKeys!2065 lt!1906547)))

(assert (=> d!1515939 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!411 lt!1906551 lt!1906547 lt!1906552) lt!1907136)))

(declare-fun bs!1137037 () Bool)

(assert (= bs!1137037 d!1515939))

(assert (=> bs!1137037 m!5699753))

(declare-fun m!5700049 () Bool)

(assert (=> bs!1137037 m!5700049))

(assert (=> bs!1137037 m!5699057))

(assert (=> bs!1137037 m!5699059))

(assert (=> bs!1137037 m!5699055))

(assert (=> bs!1137037 m!5699057))

(assert (=> bs!1137037 m!5699055))

(assert (=> bs!1137037 m!5699059))

(assert (=> bs!1137037 m!5699073))

(assert (=> b!4743918 d!1515939))

(declare-fun bs!1137053 () Bool)

(declare-fun d!1515943 () Bool)

(assert (= bs!1137053 (and d!1515943 d!1515809)))

(declare-fun lambda!219898 () Int)

(assert (=> bs!1137053 (not (= lambda!219898 lambda!219769))))

(declare-fun bs!1137054 () Bool)

(assert (= bs!1137054 (and d!1515943 d!1515811)))

(assert (=> bs!1137054 (not (= lambda!219898 lambda!219770))))

(declare-fun bs!1137055 () Bool)

(assert (= bs!1137055 (and d!1515943 d!1515863)))

(assert (=> bs!1137055 (not (= lambda!219898 lambda!219822))))

(declare-fun bs!1137056 () Bool)

(assert (= bs!1137056 (and d!1515943 d!1515849)))

(assert (=> bs!1137056 (not (= lambda!219898 lambda!219819))))

(declare-fun bs!1137057 () Bool)

(assert (= bs!1137057 (and d!1515943 d!1515815)))

(assert (=> bs!1137057 (not (= lambda!219898 lambda!219773))))

(declare-fun bs!1137058 () Bool)

(assert (= bs!1137058 (and d!1515943 d!1515923)))

(assert (=> bs!1137058 (not (= lambda!219898 lambda!219892))))

(declare-fun bs!1137059 () Bool)

(assert (= bs!1137059 (and d!1515943 d!1515803)))

(assert (=> bs!1137059 (not (= lambda!219898 lambda!219768))))

(declare-fun bs!1137060 () Bool)

(assert (= bs!1137060 (and d!1515943 d!1515885)))

(assert (=> bs!1137060 (not (= lambda!219898 lambda!219859))))

(declare-fun bs!1137061 () Bool)

(assert (= bs!1137061 (and d!1515943 d!1515921)))

(assert (=> bs!1137061 (not (= lambda!219898 lambda!219891))))

(declare-fun bs!1137062 () Bool)

(assert (= bs!1137062 (and d!1515943 start!484182)))

(assert (=> bs!1137062 (not (= lambda!219898 lambda!219753))))

(declare-fun bs!1137063 () Bool)

(assert (= bs!1137063 (and d!1515943 d!1515781)))

(assert (=> bs!1137063 (not (= lambda!219898 lambda!219767))))

(declare-fun bs!1137064 () Bool)

(assert (= bs!1137064 (and d!1515943 d!1515893)))

(assert (=> bs!1137064 (not (= lambda!219898 lambda!219874))))

(declare-fun bs!1137065 () Bool)

(assert (= bs!1137065 (and d!1515943 d!1515865)))

(assert (=> bs!1137065 (not (= lambda!219898 lambda!219829))))

(assert (=> d!1515943 true))

(assert (=> d!1515943 (= (allKeysSameHashInMap!1979 lm!2023 hashF!1323) (forall!11696 (toList!6019 lm!2023) lambda!219898))))

(declare-fun bs!1137066 () Bool)

(assert (= bs!1137066 d!1515943))

(declare-fun m!5700051 () Bool)

(assert (=> bs!1137066 m!5700051))

(assert (=> b!4743897 d!1515943))

(declare-fun d!1515945 () Bool)

(assert (=> d!1515945 (= (head!10333 (toList!6019 lm!2023)) (h!59359 (toList!6019 lm!2023)))))

(assert (=> b!4743908 d!1515945))

(declare-fun d!1515947 () Bool)

(declare-fun hash!4478 (Hashable!6434 K!14313) (_ BitVec 64))

(assert (=> d!1515947 (= (hash!4473 hashF!1323 key!4653) (hash!4478 hashF!1323 key!4653))))

(declare-fun bs!1137075 () Bool)

(assert (= bs!1137075 d!1515947))

(declare-fun m!5700053 () Bool)

(assert (=> bs!1137075 m!5700053))

(assert (=> b!4743919 d!1515947))

(declare-fun d!1515949 () Bool)

(assert (=> d!1515949 (= (eq!1162 lt!1906548 lt!1906568) (= (content!9478 (toList!6020 lt!1906548)) (content!9478 (toList!6020 lt!1906568))))))

(declare-fun bs!1137077 () Bool)

(assert (= bs!1137077 d!1515949))

(assert (=> bs!1137077 m!5699485))

(assert (=> bs!1137077 m!5699483))

(assert (=> b!4743901 d!1515949))

(declare-fun d!1515951 () Bool)

(declare-fun res!2010538 () Bool)

(declare-fun e!2959334 () Bool)

(assert (=> d!1515951 (=> res!2010538 e!2959334)))

(assert (=> d!1515951 (= res!2010538 (not (is-Cons!52971 oldBucket!34)))))

(assert (=> d!1515951 (= (noDuplicateKeys!2065 oldBucket!34) e!2959334)))

(declare-fun b!4744332 () Bool)

(declare-fun e!2959335 () Bool)

(assert (=> b!4744332 (= e!2959334 e!2959335)))

(declare-fun res!2010539 () Bool)

(assert (=> b!4744332 (=> (not res!2010539) (not e!2959335))))

(assert (=> b!4744332 (= res!2010539 (not (containsKey!3490 (t!360399 oldBucket!34) (_1!30621 (h!59358 oldBucket!34)))))))

(declare-fun b!4744333 () Bool)

(assert (=> b!4744333 (= e!2959335 (noDuplicateKeys!2065 (t!360399 oldBucket!34)))))

(assert (= (and d!1515951 (not res!2010538)) b!4744332))

(assert (= (and b!4744332 res!2010539) b!4744333))

(declare-fun m!5700087 () Bool)

(assert (=> b!4744332 m!5700087))

(assert (=> b!4744333 m!5699425))

(assert (=> b!4743912 d!1515951))

(declare-fun d!1515955 () Bool)

(declare-fun res!2010540 () Bool)

(declare-fun e!2959337 () Bool)

(assert (=> d!1515955 (=> res!2010540 e!2959337)))

(assert (=> d!1515955 (= res!2010540 (not (is-Cons!52971 newBucket!218)))))

(assert (=> d!1515955 (= (noDuplicateKeys!2065 newBucket!218) e!2959337)))

(declare-fun b!4744336 () Bool)

(declare-fun e!2959338 () Bool)

(assert (=> b!4744336 (= e!2959337 e!2959338)))

(declare-fun res!2010541 () Bool)

(assert (=> b!4744336 (=> (not res!2010541) (not e!2959338))))

(assert (=> b!4744336 (= res!2010541 (not (containsKey!3490 (t!360399 newBucket!218) (_1!30621 (h!59358 newBucket!218)))))))

(declare-fun b!4744337 () Bool)

(assert (=> b!4744337 (= e!2959338 (noDuplicateKeys!2065 (t!360399 newBucket!218)))))

(assert (= (and d!1515955 (not res!2010540)) b!4744336))

(assert (= (and b!4744336 res!2010541) b!4744337))

(declare-fun m!5700089 () Bool)

(assert (=> b!4744336 m!5700089))

(declare-fun m!5700091 () Bool)

(assert (=> b!4744337 m!5700091))

(assert (=> b!4743910 d!1515955))

(declare-fun e!2959341 () Bool)

(declare-fun b!4744342 () Bool)

(declare-fun tp!1349380 () Bool)

(assert (=> b!4744342 (= e!2959341 (and tp_is_empty!31553 tp_is_empty!31555 tp!1349380))))

(assert (=> b!4743906 (= tp!1349367 e!2959341)))

(assert (= (and b!4743906 (is-Cons!52971 (t!360399 newBucket!218))) b!4744342))

(declare-fun b!4744347 () Bool)

(declare-fun e!2959344 () Bool)

(declare-fun tp!1349385 () Bool)

(declare-fun tp!1349386 () Bool)

(assert (=> b!4744347 (= e!2959344 (and tp!1349385 tp!1349386))))

(assert (=> b!4743917 (= tp!1349368 e!2959344)))

(assert (= (and b!4743917 (is-Cons!52972 (toList!6019 lm!2023))) b!4744347))

(declare-fun b!4744348 () Bool)

(declare-fun e!2959345 () Bool)

(declare-fun tp!1349387 () Bool)

(assert (=> b!4744348 (= e!2959345 (and tp_is_empty!31553 tp_is_empty!31555 tp!1349387))))

(assert (=> b!4743900 (= tp!1349366 e!2959345)))

(assert (= (and b!4743900 (is-Cons!52971 (t!360399 oldBucket!34))) b!4744348))

(declare-fun b_lambda!182659 () Bool)

(assert (= b_lambda!182653 (or start!484182 b_lambda!182659)))

(declare-fun bs!1137085 () Bool)

(declare-fun d!1515961 () Bool)

(assert (= bs!1137085 (and d!1515961 start!484182)))

(assert (=> bs!1137085 (= (dynLambda!21880 lambda!219753 (h!59359 (toList!6019 lm!2023))) (noDuplicateKeys!2065 (_2!30622 (h!59359 (toList!6019 lm!2023)))))))

(assert (=> bs!1137085 m!5699609))

(assert (=> b!4744012 d!1515961))

(declare-fun b_lambda!182661 () Bool)

(assert (= b_lambda!182657 (or start!484182 b_lambda!182661)))

(declare-fun bs!1137086 () Bool)

(declare-fun d!1515963 () Bool)

(assert (= bs!1137086 (and d!1515963 start!484182)))

(assert (=> bs!1137086 (= (dynLambda!21880 lambda!219753 lt!1906555) (noDuplicateKeys!2065 (_2!30622 lt!1906555)))))

(declare-fun m!5700105 () Bool)

(assert (=> bs!1137086 m!5700105))

(assert (=> d!1515861 d!1515963))

(push 1)

(assert (not b!4744174))

(assert (not bm!332025))

(assert (not b!4744180))

(assert (not bm!332029))

(assert (not d!1515873))

(assert (not d!1515763))

(assert (not b!4744311))

(assert (not b!4744177))

(assert (not b!4744254))

(assert (not b!4744234))

(assert (not d!1515765))

(assert (not b!4744294))

(assert (not d!1515855))

(assert (not d!1515773))

(assert (not bs!1137085))

(assert (not b!4744220))

(assert (not b!4744268))

(assert (not b!4744085))

(assert (not b!4744276))

(assert (not b!4744219))

(assert (not b!4744245))

(assert (not d!1515911))

(assert (not b!4744194))

(assert (not d!1515781))

(assert (not d!1515821))

(assert (not b!4744271))

(assert (not d!1515943))

(assert (not b!4744196))

(assert (not d!1515883))

(assert tp_is_empty!31553)

(assert (not d!1515857))

(assert (not b!4744270))

(assert (not b!4744170))

(assert (not b!4744086))

(assert (not bm!332004))

(assert (not b!4744043))

(assert (not b!4744063))

(assert (not d!1515853))

(assert (not d!1515927))

(assert (not d!1515851))

(assert (not bm!332014))

(assert (not b!4744013))

(assert (not b!4744304))

(assert (not d!1515793))

(assert (not d!1515813))

(assert (not b!4744305))

(assert (not b!4744286))

(assert (not b!4744308))

(assert (not b!4744046))

(assert (not d!1515949))

(assert (not d!1515797))

(assert (not b!4744292))

(assert (not b!4744088))

(assert (not b!4744082))

(assert (not b!4744226))

(assert (not b!4744038))

(assert (not b!4744273))

(assert (not b!4743998))

(assert (not bm!332019))

(assert (not b_lambda!182661))

(assert (not d!1515939))

(assert (not b!4744223))

(assert (not bm!332024))

(assert (not bm!331997))

(assert (not d!1515867))

(assert (not d!1515805))

(assert (not bm!332031))

(assert (not b!4744342))

(assert (not d!1515869))

(assert (not b!4744336))

(assert (not b!4744040))

(assert (not b!4744225))

(assert (not b!4744332))

(assert (not bm!332006))

(assert (not d!1515815))

(assert tp_is_empty!31555)

(assert (not d!1515801))

(assert (not d!1515879))

(assert (not b!4744083))

(assert (not b!4744005))

(assert (not b!4744007))

(assert (not b!4744348))

(assert (not b!4744256))

(assert (not bm!332015))

(assert (not b!4744076))

(assert (not d!1515905))

(assert (not b!4744306))

(assert (not d!1515887))

(assert (not b!4744257))

(assert (not b!4744275))

(assert (not d!1515897))

(assert (not d!1515893))

(assert (not b!4744006))

(assert (not b!4744004))

(assert (not bs!1137086))

(assert (not b!4744293))

(assert (not b!4744333))

(assert (not d!1515759))

(assert (not d!1515861))

(assert (not b!4744172))

(assert (not b_lambda!182659))

(assert (not b!4744302))

(assert (not b!4744289))

(assert (not b!4744193))

(assert (not d!1515859))

(assert (not b!4744080))

(assert (not d!1515913))

(assert (not d!1515865))

(assert (not bm!332021))

(assert (not d!1515925))

(assert (not d!1515831))

(assert (not b!4744228))

(assert (not b!4744179))

(assert (not b!4744301))

(assert (not b!4744307))

(assert (not d!1515921))

(assert (not b!4744269))

(assert (not d!1515907))

(assert (not d!1515919))

(assert (not b!4744184))

(assert (not d!1515881))

(assert (not b!4744258))

(assert (not b!4744314))

(assert (not d!1515809))

(assert (not b!4744120))

(assert (not d!1515811))

(assert (not d!1515757))

(assert (not b!4744300))

(assert (not d!1515769))

(assert (not bm!332013))

(assert (not bm!332023))

(assert (not d!1515803))

(assert (not d!1515933))

(assert (not b!4744288))

(assert (not d!1515877))

(assert (not d!1515923))

(assert (not b!4744277))

(assert (not bm!332020))

(assert (not b!4744195))

(assert (not b!4744041))

(assert (not b!4744313))

(assert (not b!4744247))

(assert (not d!1515885))

(assert (not d!1515889))

(assert (not b!4744291))

(assert (not d!1515947))

(assert (not b!4744266))

(assert (not bm!332030))

(assert (not d!1515825))

(assert (not b!4744337))

(assert (not b!4744045))

(assert (not b!4744309))

(assert (not d!1515849))

(assert (not d!1515931))

(assert (not d!1515807))

(assert (not b!4744003))

(assert (not bm!332022))

(assert (not b!4744044))

(assert (not b!4744202))

(assert (not d!1515863))

(assert (not b!4744173))

(assert (not b!4744347))

(assert (not bm!332005))

(assert (not d!1515761))

(assert (not d!1515755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

