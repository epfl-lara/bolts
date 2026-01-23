; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477700 () Bool)

(assert start!477700)

(declare-fun b!4705086 () Bool)

(declare-fun e!2934970 () Bool)

(declare-fun e!2934973 () Bool)

(assert (=> b!4705086 (= e!2934970 e!2934973)))

(declare-fun res!1987273 () Bool)

(assert (=> b!4705086 (=> res!1987273 e!2934973)))

(declare-datatypes ((K!13930 0))(
  ( (K!13931 (val!19415 Int)) )
))
(declare-datatypes ((V!14176 0))(
  ( (V!14177 (val!19416 Int)) )
))
(declare-datatypes ((tuple2!54042 0))(
  ( (tuple2!54043 (_1!30315 K!13930) (_2!30315 V!14176)) )
))
(declare-datatypes ((List!52697 0))(
  ( (Nil!52573) (Cons!52573 (h!58866 tuple2!54042) (t!359921 List!52697)) )
))
(declare-datatypes ((ListMap!5077 0))(
  ( (ListMap!5078 (toList!5713 List!52697)) )
))
(declare-fun lt!1869479 () ListMap!5077)

(declare-datatypes ((tuple2!54044 0))(
  ( (tuple2!54045 (_1!30316 (_ BitVec 64)) (_2!30316 List!52697)) )
))
(declare-datatypes ((List!52698 0))(
  ( (Nil!52574) (Cons!52574 (h!58867 tuple2!54044) (t!359922 List!52698)) )
))
(declare-fun lt!1869484 () List!52698)

(declare-fun eq!1071 (ListMap!5077 ListMap!5077) Bool)

(declare-fun extractMap!1938 (List!52698) ListMap!5077)

(assert (=> b!4705086 (= res!1987273 (not (eq!1071 lt!1869479 (extractMap!1938 lt!1869484))))))

(declare-datatypes ((ListLongMap!4243 0))(
  ( (ListLongMap!4244 (toList!5714 List!52698)) )
))
(declare-fun lm!2023 () ListLongMap!4243)

(declare-fun newBucket!218 () List!52697)

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4705086 (= lt!1869484 (Cons!52574 (tuple2!54045 hash!405 newBucket!218) (t!359922 (toList!5714 lm!2023))))))

(declare-fun b!4705087 () Bool)

(declare-fun res!1987272 () Bool)

(declare-fun e!2934974 () Bool)

(assert (=> b!4705087 (=> res!1987272 e!2934974)))

(declare-fun oldBucket!34 () List!52697)

(declare-fun lt!1869497 () tuple2!54042)

(assert (=> b!4705087 (= res!1987272 (not (= (h!58866 oldBucket!34) lt!1869497)))))

(declare-fun b!4705088 () Bool)

(declare-fun lambda!211329 () Int)

(declare-fun forall!11427 (List!52698 Int) Bool)

(assert (=> b!4705088 (= e!2934973 (forall!11427 lt!1869484 lambda!211329))))

(declare-fun e!2934971 () Bool)

(declare-fun tp!1346918 () Bool)

(declare-fun b!4705089 () Bool)

(declare-fun tp_is_empty!30941 () Bool)

(declare-fun tp_is_empty!30943 () Bool)

(assert (=> b!4705089 (= e!2934971 (and tp_is_empty!30941 tp_is_empty!30943 tp!1346918))))

(declare-fun b!4705090 () Bool)

(declare-fun res!1987281 () Bool)

(declare-fun e!2934980 () Bool)

(assert (=> b!4705090 (=> (not res!1987281) (not e!2934980))))

(declare-datatypes ((Hashable!6281 0))(
  ( (HashableExt!6280 (__x!31984 Int)) )
))
(declare-fun hashF!1323 () Hashable!6281)

(declare-fun allKeysSameHash!1738 (List!52697 (_ BitVec 64) Hashable!6281) Bool)

(assert (=> b!4705090 (= res!1987281 (allKeysSameHash!1738 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4705091 () Bool)

(declare-fun res!1987257 () Bool)

(declare-fun e!2934968 () Bool)

(assert (=> b!4705091 (=> res!1987257 e!2934968)))

(declare-fun lt!1869501 () ListMap!5077)

(declare-fun lt!1869500 () ListMap!5077)

(assert (=> b!4705091 (= res!1987257 (not (eq!1071 lt!1869501 lt!1869500)))))

(declare-fun b!4705092 () Bool)

(declare-fun res!1987266 () Bool)

(assert (=> b!4705092 (=> (not res!1987266) (not e!2934980))))

(declare-fun key!4653 () K!13930)

(declare-fun removePairForKey!1507 (List!52697 K!13930) List!52697)

(assert (=> b!4705092 (= res!1987266 (= (removePairForKey!1507 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4705093 () Bool)

(declare-fun e!2934976 () Bool)

(assert (=> b!4705093 (= e!2934976 e!2934970)))

(declare-fun res!1987260 () Bool)

(assert (=> b!4705093 (=> res!1987260 e!2934970)))

(declare-fun lt!1869492 () ListMap!5077)

(declare-fun lt!1869476 () ListMap!5077)

(assert (=> b!4705093 (= res!1987260 (not (eq!1071 lt!1869492 lt!1869476)))))

(declare-fun lt!1869485 () ListMap!5077)

(assert (=> b!4705093 (eq!1071 lt!1869485 lt!1869476)))

(declare-fun -!716 (ListMap!5077 K!13930) ListMap!5077)

(assert (=> b!4705093 (= lt!1869476 (-!716 lt!1869500 key!4653))))

(declare-datatypes ((Unit!126988 0))(
  ( (Unit!126989) )
))
(declare-fun lt!1869471 () Unit!126988)

(declare-fun lemmaRemovePreservesEq!98 (ListMap!5077 ListMap!5077 K!13930) Unit!126988)

(assert (=> b!4705093 (= lt!1869471 (lemmaRemovePreservesEq!98 lt!1869501 lt!1869500 key!4653))))

(declare-fun b!4705094 () Bool)

(declare-fun e!2934977 () Bool)

(assert (=> b!4705094 (= e!2934977 e!2934968)))

(declare-fun res!1987275 () Bool)

(assert (=> b!4705094 (=> res!1987275 e!2934968)))

(assert (=> b!4705094 (= res!1987275 (not (= lt!1869485 lt!1869492)))))

(declare-fun lt!1869495 () ListMap!5077)

(declare-fun +!2196 (ListMap!5077 tuple2!54042) ListMap!5077)

(assert (=> b!4705094 (= lt!1869492 (+!2196 lt!1869495 (h!58866 oldBucket!34)))))

(assert (=> b!4705094 (= lt!1869485 (-!716 lt!1869501 key!4653))))

(declare-fun lt!1869477 () ListMap!5077)

(assert (=> b!4705094 (= lt!1869501 (+!2196 lt!1869477 (h!58866 oldBucket!34)))))

(declare-fun lt!1869482 () ListMap!5077)

(declare-fun lt!1869503 () ListMap!5077)

(assert (=> b!4705094 (= lt!1869482 lt!1869503)))

(assert (=> b!4705094 (= lt!1869503 (+!2196 lt!1869495 (h!58866 oldBucket!34)))))

(assert (=> b!4705094 (= lt!1869482 (-!716 (+!2196 lt!1869477 (h!58866 oldBucket!34)) key!4653))))

(declare-fun lt!1869494 () Unit!126988)

(declare-fun addRemoveCommutativeForDiffKeys!117 (ListMap!5077 K!13930 V!14176 K!13930) Unit!126988)

(assert (=> b!4705094 (= lt!1869494 (addRemoveCommutativeForDiffKeys!117 lt!1869477 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)) key!4653))))

(declare-fun b!4705095 () Bool)

(declare-fun e!2934972 () Bool)

(declare-fun e!2934966 () Bool)

(assert (=> b!4705095 (= e!2934972 e!2934966)))

(declare-fun res!1987269 () Bool)

(assert (=> b!4705095 (=> res!1987269 e!2934966)))

(declare-fun lt!1869480 () List!52697)

(declare-fun lt!1869508 () List!52697)

(assert (=> b!4705095 (= res!1987269 (not (= (removePairForKey!1507 lt!1869480 key!4653) lt!1869508)))))

(declare-fun tail!8761 (List!52697) List!52697)

(assert (=> b!4705095 (= lt!1869508 (tail!8761 newBucket!218))))

(assert (=> b!4705095 (= lt!1869480 (tail!8761 oldBucket!34))))

(declare-fun b!4705096 () Bool)

(declare-fun res!1987263 () Bool)

(declare-fun e!2934967 () Bool)

(assert (=> b!4705096 (=> (not res!1987263) (not e!2934967))))

(assert (=> b!4705096 (= res!1987263 (allKeysSameHash!1738 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4705097 () Bool)

(declare-fun e!2934975 () Bool)

(assert (=> b!4705097 (= e!2934967 e!2934975)))

(declare-fun res!1987259 () Bool)

(assert (=> b!4705097 (=> (not res!1987259) (not e!2934975))))

(declare-fun lt!1869475 () tuple2!54044)

(declare-fun head!10087 (List!52698) tuple2!54044)

(assert (=> b!4705097 (= res!1987259 (= (head!10087 (toList!5714 lm!2023)) lt!1869475))))

(assert (=> b!4705097 (= lt!1869475 (tuple2!54045 hash!405 oldBucket!34))))

(declare-fun res!1987258 () Bool)

(assert (=> start!477700 (=> (not res!1987258) (not e!2934980))))

(assert (=> start!477700 (= res!1987258 (forall!11427 (toList!5714 lm!2023) lambda!211329))))

(assert (=> start!477700 e!2934980))

(declare-fun e!2934978 () Bool)

(declare-fun inv!67804 (ListLongMap!4243) Bool)

(assert (=> start!477700 (and (inv!67804 lm!2023) e!2934978)))

(assert (=> start!477700 tp_is_empty!30941))

(declare-fun e!2934979 () Bool)

(assert (=> start!477700 e!2934979))

(assert (=> start!477700 true))

(assert (=> start!477700 e!2934971))

(declare-fun b!4705098 () Bool)

(declare-fun e!2934969 () Bool)

(assert (=> b!4705098 (= e!2934969 e!2934972)))

(declare-fun res!1987274 () Bool)

(assert (=> b!4705098 (=> res!1987274 e!2934972)))

(declare-fun containsKey!3207 (List!52697 K!13930) Bool)

(assert (=> b!4705098 (= res!1987274 (not (containsKey!3207 (t!359921 oldBucket!34) key!4653)))))

(assert (=> b!4705098 (containsKey!3207 oldBucket!34 key!4653)))

(declare-fun lt!1869472 () Unit!126988)

(declare-fun lemmaGetPairDefinedThenContainsKey!264 (List!52697 K!13930 Hashable!6281) Unit!126988)

(assert (=> b!4705098 (= lt!1869472 (lemmaGetPairDefinedThenContainsKey!264 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1869489 () List!52697)

(declare-datatypes ((Option!12231 0))(
  ( (None!12230) (Some!12230 (v!46741 tuple2!54042)) )
))
(declare-fun isDefined!9486 (Option!12231) Bool)

(declare-fun getPair!516 (List!52697 K!13930) Option!12231)

(assert (=> b!4705098 (isDefined!9486 (getPair!516 lt!1869489 key!4653))))

(declare-fun lt!1869488 () Unit!126988)

(declare-fun lt!1869505 () tuple2!54044)

(declare-fun forallContained!3534 (List!52698 Int tuple2!54044) Unit!126988)

(assert (=> b!4705098 (= lt!1869488 (forallContained!3534 (toList!5714 lm!2023) lambda!211329 lt!1869505))))

(declare-fun contains!15878 (List!52698 tuple2!54044) Bool)

(assert (=> b!4705098 (contains!15878 (toList!5714 lm!2023) lt!1869505)))

(declare-fun lt!1869491 () (_ BitVec 64))

(assert (=> b!4705098 (= lt!1869505 (tuple2!54045 lt!1869491 lt!1869489))))

(declare-fun lt!1869507 () Unit!126988)

(declare-fun lemmaGetValueImpliesTupleContained!321 (ListLongMap!4243 (_ BitVec 64) List!52697) Unit!126988)

(assert (=> b!4705098 (= lt!1869507 (lemmaGetValueImpliesTupleContained!321 lm!2023 lt!1869491 lt!1869489))))

(declare-fun apply!12395 (ListLongMap!4243 (_ BitVec 64)) List!52697)

(assert (=> b!4705098 (= lt!1869489 (apply!12395 lm!2023 lt!1869491))))

(declare-fun contains!15879 (ListLongMap!4243 (_ BitVec 64)) Bool)

(assert (=> b!4705098 (contains!15879 lm!2023 lt!1869491)))

(declare-fun lt!1869486 () Unit!126988)

(declare-fun lemmaInGenMapThenLongMapContainsHash!722 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> b!4705098 (= lt!1869486 (lemmaInGenMapThenLongMapContainsHash!722 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1869499 () Unit!126988)

(declare-fun lemmaInGenMapThenGetPairDefined!312 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> b!4705098 (= lt!1869499 (lemmaInGenMapThenGetPairDefined!312 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4705099 () Bool)

(declare-fun res!1987280 () Bool)

(assert (=> b!4705099 (=> (not res!1987280) (not e!2934980))))

(declare-fun noDuplicateKeys!1912 (List!52697) Bool)

(assert (=> b!4705099 (= res!1987280 (noDuplicateKeys!1912 newBucket!218))))

(declare-fun b!4705100 () Bool)

(declare-fun res!1987261 () Bool)

(assert (=> b!4705100 (=> res!1987261 e!2934968)))

(assert (=> b!4705100 (= res!1987261 (not (eq!1071 lt!1869485 lt!1869492)))))

(declare-fun b!4705101 () Bool)

(assert (=> b!4705101 (= e!2934975 (not e!2934969))))

(declare-fun res!1987277 () Bool)

(assert (=> b!4705101 (=> res!1987277 e!2934969)))

(get-info :version)

(assert (=> b!4705101 (= res!1987277 (or (and ((_ is Cons!52573) oldBucket!34) (= (_1!30315 (h!58866 oldBucket!34)) key!4653)) (not ((_ is Cons!52573) oldBucket!34)) (= (_1!30315 (h!58866 oldBucket!34)) key!4653)))))

(declare-fun lt!1869490 () ListMap!5077)

(declare-fun lt!1869496 () ListMap!5077)

(declare-fun addToMapMapFromBucket!1344 (List!52697 ListMap!5077) ListMap!5077)

(assert (=> b!4705101 (= lt!1869490 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (toList!5714 lm!2023))) lt!1869496))))

(assert (=> b!4705101 (= lt!1869496 (extractMap!1938 (t!359922 (toList!5714 lm!2023))))))

(declare-fun tail!8762 (ListLongMap!4243) ListLongMap!4243)

(assert (=> b!4705101 (= (t!359922 (toList!5714 lm!2023)) (toList!5714 (tail!8762 lm!2023)))))

(declare-fun b!4705102 () Bool)

(declare-fun e!2934965 () Bool)

(assert (=> b!4705102 (= e!2934965 e!2934967)))

(declare-fun res!1987265 () Bool)

(assert (=> b!4705102 (=> (not res!1987265) (not e!2934967))))

(assert (=> b!4705102 (= res!1987265 (= lt!1869491 hash!405))))

(declare-fun hash!4212 (Hashable!6281 K!13930) (_ BitVec 64))

(assert (=> b!4705102 (= lt!1869491 (hash!4212 hashF!1323 key!4653))))

(declare-fun b!4705103 () Bool)

(declare-fun res!1987279 () Bool)

(assert (=> b!4705103 (=> res!1987279 e!2934974)))

(declare-fun lt!1869502 () ListMap!5077)

(assert (=> b!4705103 (= res!1987279 (not (eq!1071 lt!1869500 (+!2196 lt!1869502 lt!1869497))))))

(declare-fun b!4705104 () Bool)

(assert (=> b!4705104 (= e!2934968 e!2934976)))

(declare-fun res!1987264 () Bool)

(assert (=> b!4705104 (=> res!1987264 e!2934976)))

(assert (=> b!4705104 (= res!1987264 (not (eq!1071 lt!1869492 lt!1869479)))))

(declare-fun lt!1869509 () ListMap!5077)

(assert (=> b!4705104 (= lt!1869479 (+!2196 lt!1869509 (h!58866 oldBucket!34)))))

(assert (=> b!4705104 (eq!1071 lt!1869503 (+!2196 lt!1869509 (h!58866 oldBucket!34)))))

(declare-fun lt!1869487 () Unit!126988)

(declare-fun lemmaAddToEqMapsPreservesEq!94 (ListMap!5077 ListMap!5077 K!13930 V!14176) Unit!126988)

(assert (=> b!4705104 (= lt!1869487 (lemmaAddToEqMapsPreservesEq!94 lt!1869495 lt!1869509 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(declare-fun b!4705105 () Bool)

(assert (=> b!4705105 (= e!2934966 e!2934974)))

(declare-fun res!1987267 () Bool)

(assert (=> b!4705105 (=> res!1987267 e!2934974)))

(assert (=> b!4705105 (= res!1987267 (not (eq!1071 lt!1869500 (+!2196 lt!1869502 (h!58866 oldBucket!34)))))))

(assert (=> b!4705105 (= lt!1869502 (extractMap!1938 (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023)))))))

(assert (=> b!4705105 (= lt!1869500 (extractMap!1938 (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023)))))))

(assert (=> b!4705105 (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869497 lt!1869508) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1869497))))

(declare-fun lt!1869504 () Unit!126988)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!320 (tuple2!54042 List!52697 ListMap!5077) Unit!126988)

(assert (=> b!4705105 (= lt!1869504 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!320 lt!1869497 lt!1869508 lt!1869496))))

(declare-fun head!10088 (List!52697) tuple2!54042)

(assert (=> b!4705105 (= lt!1869497 (head!10088 newBucket!218))))

(declare-fun lt!1869473 () tuple2!54042)

(assert (=> b!4705105 (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869473 lt!1869480) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1869473))))

(declare-fun lt!1869481 () Unit!126988)

(assert (=> b!4705105 (= lt!1869481 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!320 lt!1869473 lt!1869480 lt!1869496))))

(assert (=> b!4705105 (= lt!1869473 (head!10088 oldBucket!34))))

(declare-fun contains!15880 (ListMap!5077 K!13930) Bool)

(assert (=> b!4705105 (contains!15880 lt!1869477 key!4653)))

(declare-fun lt!1869474 () List!52698)

(assert (=> b!4705105 (= lt!1869477 (extractMap!1938 lt!1869474))))

(declare-fun lt!1869510 () ListLongMap!4243)

(declare-fun lt!1869498 () Unit!126988)

(declare-fun lemmaListContainsThenExtractedMapContains!504 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> b!4705105 (= lt!1869498 (lemmaListContainsThenExtractedMapContains!504 lt!1869510 key!4653 hashF!1323))))

(assert (=> b!4705105 (= lt!1869510 (ListLongMap!4244 lt!1869474))))

(declare-fun lt!1869506 () tuple2!54044)

(assert (=> b!4705105 (= lt!1869474 (Cons!52574 lt!1869506 (t!359922 (toList!5714 lm!2023))))))

(assert (=> b!4705105 (= lt!1869506 (tuple2!54045 hash!405 (t!359921 oldBucket!34)))))

(declare-fun b!4705106 () Bool)

(declare-fun res!1987270 () Bool)

(assert (=> b!4705106 (=> (not res!1987270) (not e!2934980))))

(assert (=> b!4705106 (= res!1987270 (noDuplicateKeys!1912 oldBucket!34))))

(declare-fun b!4705107 () Bool)

(declare-fun res!1987262 () Bool)

(assert (=> b!4705107 (=> (not res!1987262) (not e!2934967))))

(declare-fun allKeysSameHashInMap!1826 (ListLongMap!4243 Hashable!6281) Bool)

(assert (=> b!4705107 (= res!1987262 (allKeysSameHashInMap!1826 lm!2023 hashF!1323))))

(declare-fun b!4705108 () Bool)

(assert (=> b!4705108 (= e!2934980 e!2934965)))

(declare-fun res!1987271 () Bool)

(assert (=> b!4705108 (=> (not res!1987271) (not e!2934965))))

(assert (=> b!4705108 (= res!1987271 (contains!15880 lt!1869490 key!4653))))

(assert (=> b!4705108 (= lt!1869490 (extractMap!1938 (toList!5714 lm!2023)))))

(declare-fun b!4705109 () Bool)

(declare-fun res!1987268 () Bool)

(assert (=> b!4705109 (=> res!1987268 e!2934966)))

(assert (=> b!4705109 (= res!1987268 (not (= (removePairForKey!1507 (t!359921 oldBucket!34) key!4653) lt!1869508)))))

(declare-fun b!4705110 () Bool)

(assert (=> b!4705110 (= e!2934974 e!2934977)))

(declare-fun res!1987278 () Bool)

(assert (=> b!4705110 (=> res!1987278 e!2934977)))

(assert (=> b!4705110 (= res!1987278 (not (eq!1071 lt!1869509 lt!1869495)))))

(assert (=> b!4705110 (= lt!1869495 (-!716 lt!1869477 key!4653))))

(declare-fun lt!1869493 () tuple2!54044)

(assert (=> b!4705110 (= lt!1869509 (extractMap!1938 (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023)))))))

(declare-fun lt!1869478 () List!52698)

(assert (=> b!4705110 (eq!1071 (extractMap!1938 (Cons!52574 lt!1869493 lt!1869478)) (-!716 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)) key!4653))))

(declare-fun tail!8763 (List!52698) List!52698)

(assert (=> b!4705110 (= lt!1869478 (tail!8763 lt!1869474))))

(assert (=> b!4705110 (= lt!1869493 (tuple2!54045 hash!405 lt!1869508))))

(declare-fun lt!1869483 () Unit!126988)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!86 (ListLongMap!4243 (_ BitVec 64) List!52697 List!52697 K!13930 Hashable!6281) Unit!126988)

(assert (=> b!4705110 (= lt!1869483 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!86 lt!1869510 hash!405 (t!359921 oldBucket!34) lt!1869508 key!4653 hashF!1323))))

(declare-fun b!4705111 () Bool)

(declare-fun tp!1346917 () Bool)

(assert (=> b!4705111 (= e!2934979 (and tp_is_empty!30941 tp_is_empty!30943 tp!1346917))))

(declare-fun b!4705112 () Bool)

(declare-fun tp!1346919 () Bool)

(assert (=> b!4705112 (= e!2934978 tp!1346919)))

(declare-fun b!4705113 () Bool)

(declare-fun res!1987276 () Bool)

(assert (=> b!4705113 (=> (not res!1987276) (not e!2934975))))

(assert (=> b!4705113 (= res!1987276 ((_ is Cons!52574) (toList!5714 lm!2023)))))

(assert (= (and start!477700 res!1987258) b!4705106))

(assert (= (and b!4705106 res!1987270) b!4705099))

(assert (= (and b!4705099 res!1987280) b!4705092))

(assert (= (and b!4705092 res!1987266) b!4705090))

(assert (= (and b!4705090 res!1987281) b!4705108))

(assert (= (and b!4705108 res!1987271) b!4705102))

(assert (= (and b!4705102 res!1987265) b!4705096))

(assert (= (and b!4705096 res!1987263) b!4705107))

(assert (= (and b!4705107 res!1987262) b!4705097))

(assert (= (and b!4705097 res!1987259) b!4705113))

(assert (= (and b!4705113 res!1987276) b!4705101))

(assert (= (and b!4705101 (not res!1987277)) b!4705098))

(assert (= (and b!4705098 (not res!1987274)) b!4705095))

(assert (= (and b!4705095 (not res!1987269)) b!4705109))

(assert (= (and b!4705109 (not res!1987268)) b!4705105))

(assert (= (and b!4705105 (not res!1987267)) b!4705087))

(assert (= (and b!4705087 (not res!1987272)) b!4705103))

(assert (= (and b!4705103 (not res!1987279)) b!4705110))

(assert (= (and b!4705110 (not res!1987278)) b!4705094))

(assert (= (and b!4705094 (not res!1987275)) b!4705100))

(assert (= (and b!4705100 (not res!1987261)) b!4705091))

(assert (= (and b!4705091 (not res!1987257)) b!4705104))

(assert (= (and b!4705104 (not res!1987264)) b!4705093))

(assert (= (and b!4705093 (not res!1987260)) b!4705086))

(assert (= (and b!4705086 (not res!1987273)) b!4705088))

(assert (= start!477700 b!4705112))

(assert (= (and start!477700 ((_ is Cons!52573) oldBucket!34)) b!4705111))

(assert (= (and start!477700 ((_ is Cons!52573) newBucket!218)) b!4705089))

(declare-fun m!5625799 () Bool)

(assert (=> b!4705091 m!5625799))

(declare-fun m!5625801 () Bool)

(assert (=> b!4705102 m!5625801))

(declare-fun m!5625803 () Bool)

(assert (=> b!4705099 m!5625803))

(declare-fun m!5625805 () Bool)

(assert (=> b!4705110 m!5625805))

(declare-fun m!5625807 () Bool)

(assert (=> b!4705110 m!5625807))

(declare-fun m!5625809 () Bool)

(assert (=> b!4705110 m!5625809))

(declare-fun m!5625811 () Bool)

(assert (=> b!4705110 m!5625811))

(declare-fun m!5625813 () Bool)

(assert (=> b!4705110 m!5625813))

(declare-fun m!5625815 () Bool)

(assert (=> b!4705110 m!5625815))

(declare-fun m!5625817 () Bool)

(assert (=> b!4705110 m!5625817))

(assert (=> b!4705110 m!5625811))

(assert (=> b!4705110 m!5625807))

(assert (=> b!4705110 m!5625805))

(declare-fun m!5625819 () Bool)

(assert (=> b!4705110 m!5625819))

(declare-fun m!5625821 () Bool)

(assert (=> b!4705110 m!5625821))

(declare-fun m!5625823 () Bool)

(assert (=> b!4705094 m!5625823))

(declare-fun m!5625825 () Bool)

(assert (=> b!4705094 m!5625825))

(assert (=> b!4705094 m!5625823))

(declare-fun m!5625827 () Bool)

(assert (=> b!4705094 m!5625827))

(declare-fun m!5625829 () Bool)

(assert (=> b!4705094 m!5625829))

(declare-fun m!5625831 () Bool)

(assert (=> b!4705094 m!5625831))

(declare-fun m!5625833 () Bool)

(assert (=> b!4705107 m!5625833))

(declare-fun m!5625835 () Bool)

(assert (=> b!4705105 m!5625835))

(declare-fun m!5625837 () Bool)

(assert (=> b!4705105 m!5625837))

(declare-fun m!5625839 () Bool)

(assert (=> b!4705105 m!5625839))

(declare-fun m!5625841 () Bool)

(assert (=> b!4705105 m!5625841))

(declare-fun m!5625843 () Bool)

(assert (=> b!4705105 m!5625843))

(declare-fun m!5625845 () Bool)

(assert (=> b!4705105 m!5625845))

(declare-fun m!5625847 () Bool)

(assert (=> b!4705105 m!5625847))

(declare-fun m!5625849 () Bool)

(assert (=> b!4705105 m!5625849))

(assert (=> b!4705105 m!5625835))

(declare-fun m!5625851 () Bool)

(assert (=> b!4705105 m!5625851))

(declare-fun m!5625853 () Bool)

(assert (=> b!4705105 m!5625853))

(declare-fun m!5625855 () Bool)

(assert (=> b!4705105 m!5625855))

(declare-fun m!5625857 () Bool)

(assert (=> b!4705105 m!5625857))

(declare-fun m!5625859 () Bool)

(assert (=> b!4705105 m!5625859))

(assert (=> b!4705105 m!5625839))

(declare-fun m!5625861 () Bool)

(assert (=> b!4705105 m!5625861))

(declare-fun m!5625863 () Bool)

(assert (=> b!4705105 m!5625863))

(assert (=> b!4705105 m!5625841))

(assert (=> b!4705105 m!5625863))

(assert (=> b!4705105 m!5625847))

(declare-fun m!5625865 () Bool)

(assert (=> b!4705105 m!5625865))

(declare-fun m!5625867 () Bool)

(assert (=> b!4705105 m!5625867))

(declare-fun m!5625869 () Bool)

(assert (=> b!4705105 m!5625869))

(declare-fun m!5625871 () Bool)

(assert (=> b!4705105 m!5625871))

(assert (=> b!4705105 m!5625861))

(assert (=> b!4705105 m!5625865))

(declare-fun m!5625873 () Bool)

(assert (=> b!4705095 m!5625873))

(declare-fun m!5625875 () Bool)

(assert (=> b!4705095 m!5625875))

(declare-fun m!5625877 () Bool)

(assert (=> b!4705095 m!5625877))

(declare-fun m!5625879 () Bool)

(assert (=> b!4705103 m!5625879))

(assert (=> b!4705103 m!5625879))

(declare-fun m!5625881 () Bool)

(assert (=> b!4705103 m!5625881))

(declare-fun m!5625883 () Bool)

(assert (=> b!4705088 m!5625883))

(declare-fun m!5625885 () Bool)

(assert (=> b!4705098 m!5625885))

(declare-fun m!5625887 () Bool)

(assert (=> b!4705098 m!5625887))

(declare-fun m!5625889 () Bool)

(assert (=> b!4705098 m!5625889))

(declare-fun m!5625891 () Bool)

(assert (=> b!4705098 m!5625891))

(declare-fun m!5625893 () Bool)

(assert (=> b!4705098 m!5625893))

(declare-fun m!5625895 () Bool)

(assert (=> b!4705098 m!5625895))

(declare-fun m!5625897 () Bool)

(assert (=> b!4705098 m!5625897))

(declare-fun m!5625899 () Bool)

(assert (=> b!4705098 m!5625899))

(assert (=> b!4705098 m!5625897))

(declare-fun m!5625901 () Bool)

(assert (=> b!4705098 m!5625901))

(declare-fun m!5625903 () Bool)

(assert (=> b!4705098 m!5625903))

(declare-fun m!5625905 () Bool)

(assert (=> b!4705098 m!5625905))

(declare-fun m!5625907 () Bool)

(assert (=> b!4705098 m!5625907))

(declare-fun m!5625909 () Bool)

(assert (=> b!4705086 m!5625909))

(assert (=> b!4705086 m!5625909))

(declare-fun m!5625911 () Bool)

(assert (=> b!4705086 m!5625911))

(declare-fun m!5625913 () Bool)

(assert (=> b!4705106 m!5625913))

(declare-fun m!5625915 () Bool)

(assert (=> b!4705090 m!5625915))

(declare-fun m!5625917 () Bool)

(assert (=> b!4705092 m!5625917))

(declare-fun m!5625919 () Bool)

(assert (=> b!4705104 m!5625919))

(declare-fun m!5625921 () Bool)

(assert (=> b!4705104 m!5625921))

(assert (=> b!4705104 m!5625921))

(declare-fun m!5625923 () Bool)

(assert (=> b!4705104 m!5625923))

(declare-fun m!5625925 () Bool)

(assert (=> b!4705104 m!5625925))

(declare-fun m!5625927 () Bool)

(assert (=> b!4705109 m!5625927))

(declare-fun m!5625929 () Bool)

(assert (=> b!4705093 m!5625929))

(declare-fun m!5625931 () Bool)

(assert (=> b!4705093 m!5625931))

(declare-fun m!5625933 () Bool)

(assert (=> b!4705093 m!5625933))

(declare-fun m!5625935 () Bool)

(assert (=> b!4705093 m!5625935))

(declare-fun m!5625937 () Bool)

(assert (=> b!4705108 m!5625937))

(declare-fun m!5625939 () Bool)

(assert (=> b!4705108 m!5625939))

(declare-fun m!5625941 () Bool)

(assert (=> b!4705100 m!5625941))

(declare-fun m!5625943 () Bool)

(assert (=> b!4705101 m!5625943))

(declare-fun m!5625945 () Bool)

(assert (=> b!4705101 m!5625945))

(declare-fun m!5625947 () Bool)

(assert (=> b!4705101 m!5625947))

(declare-fun m!5625949 () Bool)

(assert (=> b!4705097 m!5625949))

(declare-fun m!5625951 () Bool)

(assert (=> start!477700 m!5625951))

(declare-fun m!5625953 () Bool)

(assert (=> start!477700 m!5625953))

(declare-fun m!5625955 () Bool)

(assert (=> b!4705096 m!5625955))

(check-sat (not b!4705088) (not b!4705095) (not b!4705098) (not b!4705100) (not b!4705109) (not b!4705096) (not b!4705086) tp_is_empty!30941 (not b!4705092) (not b!4705105) (not b!4705094) (not b!4705093) (not b!4705108) (not b!4705104) (not start!477700) (not b!4705099) (not b!4705090) (not b!4705101) (not b!4705111) (not b!4705110) (not b!4705112) (not b!4705091) (not b!4705089) tp_is_empty!30943 (not b!4705107) (not b!4705102) (not b!4705097) (not b!4705103) (not b!4705106))
(check-sat)
(get-model)

(declare-fun d!1497206 () Bool)

(assert (=> d!1497206 true))

(assert (=> d!1497206 true))

(declare-fun lambda!211342 () Int)

(declare-fun forall!11429 (List!52697 Int) Bool)

(assert (=> d!1497206 (= (allKeysSameHash!1738 oldBucket!34 hash!405 hashF!1323) (forall!11429 oldBucket!34 lambda!211342))))

(declare-fun bs!1098447 () Bool)

(assert (= bs!1098447 d!1497206))

(declare-fun m!5626005 () Bool)

(assert (=> bs!1098447 m!5626005))

(assert (=> b!4705090 d!1497206))

(declare-fun bs!1098460 () Bool)

(declare-fun d!1497208 () Bool)

(assert (= bs!1098460 (and d!1497208 start!477700)))

(declare-fun lambda!211351 () Int)

(assert (=> bs!1098460 (= lambda!211351 lambda!211329)))

(assert (=> d!1497208 (eq!1071 (extractMap!1938 (Cons!52574 (tuple2!54045 hash!405 lt!1869508) (tail!8763 (toList!5714 lt!1869510)))) (-!716 (extractMap!1938 (Cons!52574 (tuple2!54045 hash!405 (t!359921 oldBucket!34)) (tail!8763 (toList!5714 lt!1869510)))) key!4653))))

(declare-fun lt!1869597 () Unit!126988)

(declare-fun choose!33028 (ListLongMap!4243 (_ BitVec 64) List!52697 List!52697 K!13930 Hashable!6281) Unit!126988)

(assert (=> d!1497208 (= lt!1869597 (choose!33028 lt!1869510 hash!405 (t!359921 oldBucket!34) lt!1869508 key!4653 hashF!1323))))

(assert (=> d!1497208 (forall!11427 (toList!5714 lt!1869510) lambda!211351)))

(assert (=> d!1497208 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!86 lt!1869510 hash!405 (t!359921 oldBucket!34) lt!1869508 key!4653 hashF!1323) lt!1869597)))

(declare-fun bs!1098461 () Bool)

(assert (= bs!1098461 d!1497208))

(declare-fun m!5626127 () Bool)

(assert (=> bs!1098461 m!5626127))

(declare-fun m!5626129 () Bool)

(assert (=> bs!1098461 m!5626129))

(declare-fun m!5626131 () Bool)

(assert (=> bs!1098461 m!5626131))

(declare-fun m!5626133 () Bool)

(assert (=> bs!1098461 m!5626133))

(declare-fun m!5626135 () Bool)

(assert (=> bs!1098461 m!5626135))

(assert (=> bs!1098461 m!5626133))

(assert (=> bs!1098461 m!5626129))

(declare-fun m!5626137 () Bool)

(assert (=> bs!1098461 m!5626137))

(declare-fun m!5626139 () Bool)

(assert (=> bs!1098461 m!5626139))

(assert (=> bs!1098461 m!5626127))

(assert (=> b!4705110 d!1497208))

(declare-fun d!1497248 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9303 (List!52697) (InoxSet tuple2!54042))

(assert (=> d!1497248 (= (eq!1071 lt!1869509 lt!1869495) (= (content!9303 (toList!5713 lt!1869509)) (content!9303 (toList!5713 lt!1869495))))))

(declare-fun bs!1098462 () Bool)

(assert (= bs!1098462 d!1497248))

(declare-fun m!5626141 () Bool)

(assert (=> bs!1098462 m!5626141))

(declare-fun m!5626143 () Bool)

(assert (=> bs!1098462 m!5626143))

(assert (=> b!4705110 d!1497248))

(declare-fun bs!1098475 () Bool)

(declare-fun d!1497250 () Bool)

(assert (= bs!1098475 (and d!1497250 start!477700)))

(declare-fun lambda!211358 () Int)

(assert (=> bs!1098475 (= lambda!211358 lambda!211329)))

(declare-fun bs!1098476 () Bool)

(assert (= bs!1098476 (and d!1497250 d!1497208)))

(assert (=> bs!1098476 (= lambda!211358 lambda!211351)))

(declare-fun lt!1869608 () ListMap!5077)

(declare-fun invariantList!1458 (List!52697) Bool)

(assert (=> d!1497250 (invariantList!1458 (toList!5713 lt!1869608))))

(declare-fun e!2935043 () ListMap!5077)

(assert (=> d!1497250 (= lt!1869608 e!2935043)))

(declare-fun c!804169 () Bool)

(assert (=> d!1497250 (= c!804169 ((_ is Cons!52574) (Cons!52574 lt!1869493 lt!1869478)))))

(assert (=> d!1497250 (forall!11427 (Cons!52574 lt!1869493 lt!1869478) lambda!211358)))

(assert (=> d!1497250 (= (extractMap!1938 (Cons!52574 lt!1869493 lt!1869478)) lt!1869608)))

(declare-fun b!4705215 () Bool)

(assert (=> b!4705215 (= e!2935043 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (Cons!52574 lt!1869493 lt!1869478))) (extractMap!1938 (t!359922 (Cons!52574 lt!1869493 lt!1869478)))))))

(declare-fun b!4705216 () Bool)

(assert (=> b!4705216 (= e!2935043 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497250 c!804169) b!4705215))

(assert (= (and d!1497250 (not c!804169)) b!4705216))

(declare-fun m!5626169 () Bool)

(assert (=> d!1497250 m!5626169))

(declare-fun m!5626171 () Bool)

(assert (=> d!1497250 m!5626171))

(declare-fun m!5626173 () Bool)

(assert (=> b!4705215 m!5626173))

(assert (=> b!4705215 m!5626173))

(declare-fun m!5626175 () Bool)

(assert (=> b!4705215 m!5626175))

(assert (=> b!4705110 d!1497250))

(declare-fun d!1497262 () Bool)

(assert (=> d!1497262 (= (eq!1071 (extractMap!1938 (Cons!52574 lt!1869493 lt!1869478)) (-!716 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)) key!4653)) (= (content!9303 (toList!5713 (extractMap!1938 (Cons!52574 lt!1869493 lt!1869478)))) (content!9303 (toList!5713 (-!716 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)) key!4653)))))))

(declare-fun bs!1098477 () Bool)

(assert (= bs!1098477 d!1497262))

(declare-fun m!5626177 () Bool)

(assert (=> bs!1098477 m!5626177))

(declare-fun m!5626179 () Bool)

(assert (=> bs!1098477 m!5626179))

(assert (=> b!4705110 d!1497262))

(declare-fun bs!1098478 () Bool)

(declare-fun d!1497264 () Bool)

(assert (= bs!1098478 (and d!1497264 start!477700)))

(declare-fun lambda!211359 () Int)

(assert (=> bs!1098478 (= lambda!211359 lambda!211329)))

(declare-fun bs!1098479 () Bool)

(assert (= bs!1098479 (and d!1497264 d!1497208)))

(assert (=> bs!1098479 (= lambda!211359 lambda!211351)))

(declare-fun bs!1098480 () Bool)

(assert (= bs!1098480 (and d!1497264 d!1497250)))

(assert (=> bs!1098480 (= lambda!211359 lambda!211358)))

(declare-fun lt!1869609 () ListMap!5077)

(assert (=> d!1497264 (invariantList!1458 (toList!5713 lt!1869609))))

(declare-fun e!2935044 () ListMap!5077)

(assert (=> d!1497264 (= lt!1869609 e!2935044)))

(declare-fun c!804170 () Bool)

(assert (=> d!1497264 (= c!804170 ((_ is Cons!52574) (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023)))))))

(assert (=> d!1497264 (forall!11427 (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023))) lambda!211359)))

(assert (=> d!1497264 (= (extractMap!1938 (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023)))) lt!1869609)))

(declare-fun b!4705217 () Bool)

(assert (=> b!4705217 (= e!2935044 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023))))) (extractMap!1938 (t!359922 (Cons!52574 lt!1869493 (t!359922 (toList!5714 lm!2023)))))))))

(declare-fun b!4705218 () Bool)

(assert (=> b!4705218 (= e!2935044 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497264 c!804170) b!4705217))

(assert (= (and d!1497264 (not c!804170)) b!4705218))

(declare-fun m!5626181 () Bool)

(assert (=> d!1497264 m!5626181))

(declare-fun m!5626183 () Bool)

(assert (=> d!1497264 m!5626183))

(declare-fun m!5626185 () Bool)

(assert (=> b!4705217 m!5626185))

(assert (=> b!4705217 m!5626185))

(declare-fun m!5626187 () Bool)

(assert (=> b!4705217 m!5626187))

(assert (=> b!4705110 d!1497264))

(declare-fun d!1497266 () Bool)

(assert (=> d!1497266 (= (tail!8763 lt!1869474) (t!359922 lt!1869474))))

(assert (=> b!4705110 d!1497266))

(declare-fun d!1497268 () Bool)

(declare-fun e!2935047 () Bool)

(assert (=> d!1497268 e!2935047))

(declare-fun res!1987346 () Bool)

(assert (=> d!1497268 (=> (not res!1987346) (not e!2935047))))

(declare-fun lt!1869612 () ListMap!5077)

(assert (=> d!1497268 (= res!1987346 (not (contains!15880 lt!1869612 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!378 (List!52697 K!13930) List!52697)

(assert (=> d!1497268 (= lt!1869612 (ListMap!5078 (removePresrvNoDuplicatedKeys!378 (toList!5713 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478))) key!4653)))))

(assert (=> d!1497268 (= (-!716 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)) key!4653) lt!1869612)))

(declare-fun b!4705221 () Bool)

(declare-datatypes ((List!52700 0))(
  ( (Nil!52576) (Cons!52576 (h!58871 K!13930) (t!359926 List!52700)) )
))
(declare-fun content!9304 (List!52700) (InoxSet K!13930))

(declare-fun keys!18819 (ListMap!5077) List!52700)

(assert (=> b!4705221 (= e!2935047 (= ((_ map and) (content!9304 (keys!18819 (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)))) ((_ map not) (store ((as const (Array K!13930 Bool)) false) key!4653 true))) (content!9304 (keys!18819 lt!1869612))))))

(assert (= (and d!1497268 res!1987346) b!4705221))

(declare-fun m!5626189 () Bool)

(assert (=> d!1497268 m!5626189))

(declare-fun m!5626191 () Bool)

(assert (=> d!1497268 m!5626191))

(declare-fun m!5626193 () Bool)

(assert (=> b!4705221 m!5626193))

(declare-fun m!5626195 () Bool)

(assert (=> b!4705221 m!5626195))

(declare-fun m!5626197 () Bool)

(assert (=> b!4705221 m!5626197))

(assert (=> b!4705221 m!5625811))

(assert (=> b!4705221 m!5626195))

(assert (=> b!4705221 m!5626193))

(declare-fun m!5626199 () Bool)

(assert (=> b!4705221 m!5626199))

(declare-fun m!5626201 () Bool)

(assert (=> b!4705221 m!5626201))

(assert (=> b!4705110 d!1497268))

(declare-fun d!1497270 () Bool)

(declare-fun e!2935048 () Bool)

(assert (=> d!1497270 e!2935048))

(declare-fun res!1987347 () Bool)

(assert (=> d!1497270 (=> (not res!1987347) (not e!2935048))))

(declare-fun lt!1869613 () ListMap!5077)

(assert (=> d!1497270 (= res!1987347 (not (contains!15880 lt!1869613 key!4653)))))

(assert (=> d!1497270 (= lt!1869613 (ListMap!5078 (removePresrvNoDuplicatedKeys!378 (toList!5713 lt!1869477) key!4653)))))

(assert (=> d!1497270 (= (-!716 lt!1869477 key!4653) lt!1869613)))

(declare-fun b!4705222 () Bool)

(assert (=> b!4705222 (= e!2935048 (= ((_ map and) (content!9304 (keys!18819 lt!1869477)) ((_ map not) (store ((as const (Array K!13930 Bool)) false) key!4653 true))) (content!9304 (keys!18819 lt!1869613))))))

(assert (= (and d!1497270 res!1987347) b!4705222))

(declare-fun m!5626203 () Bool)

(assert (=> d!1497270 m!5626203))

(declare-fun m!5626205 () Bool)

(assert (=> d!1497270 m!5626205))

(declare-fun m!5626207 () Bool)

(assert (=> b!4705222 m!5626207))

(declare-fun m!5626209 () Bool)

(assert (=> b!4705222 m!5626209))

(declare-fun m!5626211 () Bool)

(assert (=> b!4705222 m!5626211))

(assert (=> b!4705222 m!5626209))

(assert (=> b!4705222 m!5626207))

(declare-fun m!5626213 () Bool)

(assert (=> b!4705222 m!5626213))

(assert (=> b!4705222 m!5626201))

(assert (=> b!4705110 d!1497270))

(declare-fun bs!1098481 () Bool)

(declare-fun d!1497272 () Bool)

(assert (= bs!1098481 (and d!1497272 start!477700)))

(declare-fun lambda!211360 () Int)

(assert (=> bs!1098481 (= lambda!211360 lambda!211329)))

(declare-fun bs!1098482 () Bool)

(assert (= bs!1098482 (and d!1497272 d!1497208)))

(assert (=> bs!1098482 (= lambda!211360 lambda!211351)))

(declare-fun bs!1098483 () Bool)

(assert (= bs!1098483 (and d!1497272 d!1497250)))

(assert (=> bs!1098483 (= lambda!211360 lambda!211358)))

(declare-fun bs!1098484 () Bool)

(assert (= bs!1098484 (and d!1497272 d!1497264)))

(assert (=> bs!1098484 (= lambda!211360 lambda!211359)))

(declare-fun lt!1869614 () ListMap!5077)

(assert (=> d!1497272 (invariantList!1458 (toList!5713 lt!1869614))))

(declare-fun e!2935049 () ListMap!5077)

(assert (=> d!1497272 (= lt!1869614 e!2935049)))

(declare-fun c!804171 () Bool)

(assert (=> d!1497272 (= c!804171 ((_ is Cons!52574) (Cons!52574 lt!1869506 lt!1869478)))))

(assert (=> d!1497272 (forall!11427 (Cons!52574 lt!1869506 lt!1869478) lambda!211360)))

(assert (=> d!1497272 (= (extractMap!1938 (Cons!52574 lt!1869506 lt!1869478)) lt!1869614)))

(declare-fun b!4705223 () Bool)

(assert (=> b!4705223 (= e!2935049 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (Cons!52574 lt!1869506 lt!1869478))) (extractMap!1938 (t!359922 (Cons!52574 lt!1869506 lt!1869478)))))))

(declare-fun b!4705224 () Bool)

(assert (=> b!4705224 (= e!2935049 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497272 c!804171) b!4705223))

(assert (= (and d!1497272 (not c!804171)) b!4705224))

(declare-fun m!5626215 () Bool)

(assert (=> d!1497272 m!5626215))

(declare-fun m!5626217 () Bool)

(assert (=> d!1497272 m!5626217))

(declare-fun m!5626219 () Bool)

(assert (=> b!4705223 m!5626219))

(assert (=> b!4705223 m!5626219))

(declare-fun m!5626221 () Bool)

(assert (=> b!4705223 m!5626221))

(assert (=> b!4705110 d!1497272))

(declare-fun b!4705236 () Bool)

(declare-fun e!2935055 () List!52697)

(assert (=> b!4705236 (= e!2935055 Nil!52573)))

(declare-fun b!4705235 () Bool)

(assert (=> b!4705235 (= e!2935055 (Cons!52573 (h!58866 (t!359921 oldBucket!34)) (removePairForKey!1507 (t!359921 (t!359921 oldBucket!34)) key!4653)))))

(declare-fun b!4705234 () Bool)

(declare-fun e!2935054 () List!52697)

(assert (=> b!4705234 (= e!2935054 e!2935055)))

(declare-fun c!804176 () Bool)

(assert (=> b!4705234 (= c!804176 ((_ is Cons!52573) (t!359921 oldBucket!34)))))

(declare-fun d!1497274 () Bool)

(declare-fun lt!1869617 () List!52697)

(assert (=> d!1497274 (not (containsKey!3207 lt!1869617 key!4653))))

(assert (=> d!1497274 (= lt!1869617 e!2935054)))

(declare-fun c!804177 () Bool)

(assert (=> d!1497274 (= c!804177 (and ((_ is Cons!52573) (t!359921 oldBucket!34)) (= (_1!30315 (h!58866 (t!359921 oldBucket!34))) key!4653)))))

(assert (=> d!1497274 (noDuplicateKeys!1912 (t!359921 oldBucket!34))))

(assert (=> d!1497274 (= (removePairForKey!1507 (t!359921 oldBucket!34) key!4653) lt!1869617)))

(declare-fun b!4705233 () Bool)

(assert (=> b!4705233 (= e!2935054 (t!359921 (t!359921 oldBucket!34)))))

(assert (= (and d!1497274 c!804177) b!4705233))

(assert (= (and d!1497274 (not c!804177)) b!4705234))

(assert (= (and b!4705234 c!804176) b!4705235))

(assert (= (and b!4705234 (not c!804176)) b!4705236))

(declare-fun m!5626223 () Bool)

(assert (=> b!4705235 m!5626223))

(declare-fun m!5626225 () Bool)

(assert (=> d!1497274 m!5626225))

(declare-fun m!5626227 () Bool)

(assert (=> d!1497274 m!5626227))

(assert (=> b!4705109 d!1497274))

(declare-fun d!1497276 () Bool)

(declare-fun res!1987352 () Bool)

(declare-fun e!2935060 () Bool)

(assert (=> d!1497276 (=> res!1987352 e!2935060)))

(assert (=> d!1497276 (= res!1987352 ((_ is Nil!52574) lt!1869484))))

(assert (=> d!1497276 (= (forall!11427 lt!1869484 lambda!211329) e!2935060)))

(declare-fun b!4705241 () Bool)

(declare-fun e!2935061 () Bool)

(assert (=> b!4705241 (= e!2935060 e!2935061)))

(declare-fun res!1987353 () Bool)

(assert (=> b!4705241 (=> (not res!1987353) (not e!2935061))))

(declare-fun dynLambda!21761 (Int tuple2!54044) Bool)

(assert (=> b!4705241 (= res!1987353 (dynLambda!21761 lambda!211329 (h!58867 lt!1869484)))))

(declare-fun b!4705242 () Bool)

(assert (=> b!4705242 (= e!2935061 (forall!11427 (t!359922 lt!1869484) lambda!211329))))

(assert (= (and d!1497276 (not res!1987352)) b!4705241))

(assert (= (and b!4705241 res!1987353) b!4705242))

(declare-fun b_lambda!177519 () Bool)

(assert (=> (not b_lambda!177519) (not b!4705241)))

(declare-fun m!5626229 () Bool)

(assert (=> b!4705241 m!5626229))

(declare-fun m!5626231 () Bool)

(assert (=> b!4705242 m!5626231))

(assert (=> b!4705088 d!1497276))

(declare-fun bs!1098485 () Bool)

(declare-fun d!1497278 () Bool)

(assert (= bs!1098485 (and d!1497278 start!477700)))

(declare-fun lambda!211363 () Int)

(assert (=> bs!1098485 (not (= lambda!211363 lambda!211329))))

(declare-fun bs!1098486 () Bool)

(assert (= bs!1098486 (and d!1497278 d!1497250)))

(assert (=> bs!1098486 (not (= lambda!211363 lambda!211358))))

(declare-fun bs!1098487 () Bool)

(assert (= bs!1098487 (and d!1497278 d!1497208)))

(assert (=> bs!1098487 (not (= lambda!211363 lambda!211351))))

(declare-fun bs!1098488 () Bool)

(assert (= bs!1098488 (and d!1497278 d!1497264)))

(assert (=> bs!1098488 (not (= lambda!211363 lambda!211359))))

(declare-fun bs!1098489 () Bool)

(assert (= bs!1098489 (and d!1497278 d!1497272)))

(assert (=> bs!1098489 (not (= lambda!211363 lambda!211360))))

(assert (=> d!1497278 true))

(assert (=> d!1497278 (= (allKeysSameHashInMap!1826 lm!2023 hashF!1323) (forall!11427 (toList!5714 lm!2023) lambda!211363))))

(declare-fun bs!1098490 () Bool)

(assert (= bs!1098490 d!1497278))

(declare-fun m!5626233 () Bool)

(assert (=> bs!1098490 m!5626233))

(assert (=> b!4705107 d!1497278))

(declare-fun d!1497280 () Bool)

(assert (=> d!1497280 (= (eq!1071 lt!1869479 (extractMap!1938 lt!1869484)) (= (content!9303 (toList!5713 lt!1869479)) (content!9303 (toList!5713 (extractMap!1938 lt!1869484)))))))

(declare-fun bs!1098491 () Bool)

(assert (= bs!1098491 d!1497280))

(declare-fun m!5626235 () Bool)

(assert (=> bs!1098491 m!5626235))

(declare-fun m!5626237 () Bool)

(assert (=> bs!1098491 m!5626237))

(assert (=> b!4705086 d!1497280))

(declare-fun bs!1098492 () Bool)

(declare-fun d!1497282 () Bool)

(assert (= bs!1098492 (and d!1497282 start!477700)))

(declare-fun lambda!211364 () Int)

(assert (=> bs!1098492 (= lambda!211364 lambda!211329)))

(declare-fun bs!1098493 () Bool)

(assert (= bs!1098493 (and d!1497282 d!1497250)))

(assert (=> bs!1098493 (= lambda!211364 lambda!211358)))

(declare-fun bs!1098494 () Bool)

(assert (= bs!1098494 (and d!1497282 d!1497278)))

(assert (=> bs!1098494 (not (= lambda!211364 lambda!211363))))

(declare-fun bs!1098495 () Bool)

(assert (= bs!1098495 (and d!1497282 d!1497208)))

(assert (=> bs!1098495 (= lambda!211364 lambda!211351)))

(declare-fun bs!1098496 () Bool)

(assert (= bs!1098496 (and d!1497282 d!1497264)))

(assert (=> bs!1098496 (= lambda!211364 lambda!211359)))

(declare-fun bs!1098497 () Bool)

(assert (= bs!1098497 (and d!1497282 d!1497272)))

(assert (=> bs!1098497 (= lambda!211364 lambda!211360)))

(declare-fun lt!1869618 () ListMap!5077)

(assert (=> d!1497282 (invariantList!1458 (toList!5713 lt!1869618))))

(declare-fun e!2935062 () ListMap!5077)

(assert (=> d!1497282 (= lt!1869618 e!2935062)))

(declare-fun c!804178 () Bool)

(assert (=> d!1497282 (= c!804178 ((_ is Cons!52574) lt!1869484))))

(assert (=> d!1497282 (forall!11427 lt!1869484 lambda!211364)))

(assert (=> d!1497282 (= (extractMap!1938 lt!1869484) lt!1869618)))

(declare-fun b!4705245 () Bool)

(assert (=> b!4705245 (= e!2935062 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 lt!1869484)) (extractMap!1938 (t!359922 lt!1869484))))))

(declare-fun b!4705246 () Bool)

(assert (=> b!4705246 (= e!2935062 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497282 c!804178) b!4705245))

(assert (= (and d!1497282 (not c!804178)) b!4705246))

(declare-fun m!5626239 () Bool)

(assert (=> d!1497282 m!5626239))

(declare-fun m!5626241 () Bool)

(assert (=> d!1497282 m!5626241))

(declare-fun m!5626243 () Bool)

(assert (=> b!4705245 m!5626243))

(assert (=> b!4705245 m!5626243))

(declare-fun m!5626245 () Bool)

(assert (=> b!4705245 m!5626245))

(assert (=> b!4705086 d!1497282))

(declare-fun b!4705270 () Bool)

(declare-fun e!2935079 () Bool)

(declare-fun e!2935081 () Bool)

(assert (=> b!4705270 (= e!2935079 e!2935081)))

(declare-fun res!1987362 () Bool)

(assert (=> b!4705270 (=> (not res!1987362) (not e!2935081))))

(declare-datatypes ((Option!12234 0))(
  ( (None!12233) (Some!12233 (v!46748 V!14176)) )
))
(declare-fun isDefined!9489 (Option!12234) Bool)

(declare-fun getValueByKey!1876 (List!52697 K!13930) Option!12234)

(assert (=> b!4705270 (= res!1987362 (isDefined!9489 (getValueByKey!1876 (toList!5713 lt!1869490) key!4653)))))

(declare-fun b!4705271 () Bool)

(declare-fun e!2935083 () Unit!126988)

(declare-fun e!2935080 () Unit!126988)

(assert (=> b!4705271 (= e!2935083 e!2935080)))

(declare-fun c!804189 () Bool)

(declare-fun call!328960 () Bool)

(assert (=> b!4705271 (= c!804189 call!328960)))

(declare-fun b!4705272 () Bool)

(declare-fun Unit!127015 () Unit!126988)

(assert (=> b!4705272 (= e!2935080 Unit!127015)))

(declare-fun b!4705273 () Bool)

(declare-fun lt!1869682 () Unit!126988)

(assert (=> b!4705273 (= e!2935083 lt!1869682)))

(declare-fun lt!1869684 () Unit!126988)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1768 (List!52697 K!13930) Unit!126988)

(assert (=> b!4705273 (= lt!1869684 (lemmaContainsKeyImpliesGetValueByKeyDefined!1768 (toList!5713 lt!1869490) key!4653))))

(assert (=> b!4705273 (isDefined!9489 (getValueByKey!1876 (toList!5713 lt!1869490) key!4653))))

(declare-fun lt!1869681 () Unit!126988)

(assert (=> b!4705273 (= lt!1869681 lt!1869684)))

(declare-fun lemmaInListThenGetKeysListContains!893 (List!52697 K!13930) Unit!126988)

(assert (=> b!4705273 (= lt!1869682 (lemmaInListThenGetKeysListContains!893 (toList!5713 lt!1869490) key!4653))))

(assert (=> b!4705273 call!328960))

(declare-fun b!4705274 () Bool)

(declare-fun e!2935082 () List!52700)

(declare-fun getKeysList!898 (List!52697) List!52700)

(assert (=> b!4705274 (= e!2935082 (getKeysList!898 (toList!5713 lt!1869490)))))

(declare-fun bm!328955 () Bool)

(declare-fun contains!15883 (List!52700 K!13930) Bool)

(assert (=> bm!328955 (= call!328960 (contains!15883 e!2935082 key!4653))))

(declare-fun c!804188 () Bool)

(declare-fun c!804187 () Bool)

(assert (=> bm!328955 (= c!804188 c!804187)))

(declare-fun b!4705275 () Bool)

(assert (=> b!4705275 (= e!2935082 (keys!18819 lt!1869490))))

(declare-fun b!4705276 () Bool)

(declare-fun e!2935084 () Bool)

(assert (=> b!4705276 (= e!2935084 (not (contains!15883 (keys!18819 lt!1869490) key!4653)))))

(declare-fun b!4705277 () Bool)

(assert (=> b!4705277 false))

(declare-fun lt!1869677 () Unit!126988)

(declare-fun lt!1869678 () Unit!126988)

(assert (=> b!4705277 (= lt!1869677 lt!1869678)))

(declare-fun containsKey!3210 (List!52697 K!13930) Bool)

(assert (=> b!4705277 (containsKey!3210 (toList!5713 lt!1869490) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!897 (List!52697 K!13930) Unit!126988)

(assert (=> b!4705277 (= lt!1869678 (lemmaInGetKeysListThenContainsKey!897 (toList!5713 lt!1869490) key!4653))))

(declare-fun Unit!127019 () Unit!126988)

(assert (=> b!4705277 (= e!2935080 Unit!127019)))

(declare-fun b!4705269 () Bool)

(assert (=> b!4705269 (= e!2935081 (contains!15883 (keys!18819 lt!1869490) key!4653))))

(declare-fun d!1497284 () Bool)

(assert (=> d!1497284 e!2935079))

(declare-fun res!1987363 () Bool)

(assert (=> d!1497284 (=> res!1987363 e!2935079)))

(assert (=> d!1497284 (= res!1987363 e!2935084)))

(declare-fun res!1987364 () Bool)

(assert (=> d!1497284 (=> (not res!1987364) (not e!2935084))))

(declare-fun lt!1869683 () Bool)

(assert (=> d!1497284 (= res!1987364 (not lt!1869683))))

(declare-fun lt!1869679 () Bool)

(assert (=> d!1497284 (= lt!1869683 lt!1869679)))

(declare-fun lt!1869680 () Unit!126988)

(assert (=> d!1497284 (= lt!1869680 e!2935083)))

(assert (=> d!1497284 (= c!804187 lt!1869679)))

(assert (=> d!1497284 (= lt!1869679 (containsKey!3210 (toList!5713 lt!1869490) key!4653))))

(assert (=> d!1497284 (= (contains!15880 lt!1869490 key!4653) lt!1869683)))

(assert (= (and d!1497284 c!804187) b!4705273))

(assert (= (and d!1497284 (not c!804187)) b!4705271))

(assert (= (and b!4705271 c!804189) b!4705277))

(assert (= (and b!4705271 (not c!804189)) b!4705272))

(assert (= (or b!4705273 b!4705271) bm!328955))

(assert (= (and bm!328955 c!804188) b!4705274))

(assert (= (and bm!328955 (not c!804188)) b!4705275))

(assert (= (and d!1497284 res!1987364) b!4705276))

(assert (= (and d!1497284 (not res!1987363)) b!4705270))

(assert (= (and b!4705270 res!1987362) b!4705269))

(declare-fun m!5626247 () Bool)

(assert (=> b!4705275 m!5626247))

(declare-fun m!5626249 () Bool)

(assert (=> b!4705270 m!5626249))

(assert (=> b!4705270 m!5626249))

(declare-fun m!5626251 () Bool)

(assert (=> b!4705270 m!5626251))

(assert (=> b!4705269 m!5626247))

(assert (=> b!4705269 m!5626247))

(declare-fun m!5626253 () Bool)

(assert (=> b!4705269 m!5626253))

(declare-fun m!5626255 () Bool)

(assert (=> bm!328955 m!5626255))

(declare-fun m!5626257 () Bool)

(assert (=> b!4705274 m!5626257))

(declare-fun m!5626259 () Bool)

(assert (=> b!4705273 m!5626259))

(assert (=> b!4705273 m!5626249))

(assert (=> b!4705273 m!5626249))

(assert (=> b!4705273 m!5626251))

(declare-fun m!5626261 () Bool)

(assert (=> b!4705273 m!5626261))

(assert (=> b!4705276 m!5626247))

(assert (=> b!4705276 m!5626247))

(assert (=> b!4705276 m!5626253))

(declare-fun m!5626263 () Bool)

(assert (=> d!1497284 m!5626263))

(assert (=> b!4705277 m!5626263))

(declare-fun m!5626265 () Bool)

(assert (=> b!4705277 m!5626265))

(assert (=> b!4705108 d!1497284))

(declare-fun bs!1098498 () Bool)

(declare-fun d!1497286 () Bool)

(assert (= bs!1098498 (and d!1497286 d!1497282)))

(declare-fun lambda!211389 () Int)

(assert (=> bs!1098498 (= lambda!211389 lambda!211364)))

(declare-fun bs!1098499 () Bool)

(assert (= bs!1098499 (and d!1497286 start!477700)))

(assert (=> bs!1098499 (= lambda!211389 lambda!211329)))

(declare-fun bs!1098500 () Bool)

(assert (= bs!1098500 (and d!1497286 d!1497250)))

(assert (=> bs!1098500 (= lambda!211389 lambda!211358)))

(declare-fun bs!1098501 () Bool)

(assert (= bs!1098501 (and d!1497286 d!1497278)))

(assert (=> bs!1098501 (not (= lambda!211389 lambda!211363))))

(declare-fun bs!1098502 () Bool)

(assert (= bs!1098502 (and d!1497286 d!1497208)))

(assert (=> bs!1098502 (= lambda!211389 lambda!211351)))

(declare-fun bs!1098503 () Bool)

(assert (= bs!1098503 (and d!1497286 d!1497264)))

(assert (=> bs!1098503 (= lambda!211389 lambda!211359)))

(declare-fun bs!1098504 () Bool)

(assert (= bs!1098504 (and d!1497286 d!1497272)))

(assert (=> bs!1098504 (= lambda!211389 lambda!211360)))

(declare-fun lt!1869685 () ListMap!5077)

(assert (=> d!1497286 (invariantList!1458 (toList!5713 lt!1869685))))

(declare-fun e!2935085 () ListMap!5077)

(assert (=> d!1497286 (= lt!1869685 e!2935085)))

(declare-fun c!804190 () Bool)

(assert (=> d!1497286 (= c!804190 ((_ is Cons!52574) (toList!5714 lm!2023)))))

(assert (=> d!1497286 (forall!11427 (toList!5714 lm!2023) lambda!211389)))

(assert (=> d!1497286 (= (extractMap!1938 (toList!5714 lm!2023)) lt!1869685)))

(declare-fun b!4705280 () Bool)

(assert (=> b!4705280 (= e!2935085 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (toList!5714 lm!2023))) (extractMap!1938 (t!359922 (toList!5714 lm!2023)))))))

(declare-fun b!4705281 () Bool)

(assert (=> b!4705281 (= e!2935085 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497286 c!804190) b!4705280))

(assert (= (and d!1497286 (not c!804190)) b!4705281))

(declare-fun m!5626267 () Bool)

(assert (=> d!1497286 m!5626267))

(declare-fun m!5626269 () Bool)

(assert (=> d!1497286 m!5626269))

(assert (=> b!4705280 m!5625945))

(assert (=> b!4705280 m!5625945))

(declare-fun m!5626271 () Bool)

(assert (=> b!4705280 m!5626271))

(assert (=> b!4705108 d!1497286))

(declare-fun b!4705285 () Bool)

(declare-fun e!2935087 () List!52697)

(assert (=> b!4705285 (= e!2935087 Nil!52573)))

(declare-fun b!4705284 () Bool)

(assert (=> b!4705284 (= e!2935087 (Cons!52573 (h!58866 lt!1869480) (removePairForKey!1507 (t!359921 lt!1869480) key!4653)))))

(declare-fun b!4705283 () Bool)

(declare-fun e!2935086 () List!52697)

(assert (=> b!4705283 (= e!2935086 e!2935087)))

(declare-fun c!804191 () Bool)

(assert (=> b!4705283 (= c!804191 ((_ is Cons!52573) lt!1869480))))

(declare-fun d!1497288 () Bool)

(declare-fun lt!1869686 () List!52697)

(assert (=> d!1497288 (not (containsKey!3207 lt!1869686 key!4653))))

(assert (=> d!1497288 (= lt!1869686 e!2935086)))

(declare-fun c!804192 () Bool)

(assert (=> d!1497288 (= c!804192 (and ((_ is Cons!52573) lt!1869480) (= (_1!30315 (h!58866 lt!1869480)) key!4653)))))

(assert (=> d!1497288 (noDuplicateKeys!1912 lt!1869480)))

(assert (=> d!1497288 (= (removePairForKey!1507 lt!1869480 key!4653) lt!1869686)))

(declare-fun b!4705282 () Bool)

(assert (=> b!4705282 (= e!2935086 (t!359921 lt!1869480))))

(assert (= (and d!1497288 c!804192) b!4705282))

(assert (= (and d!1497288 (not c!804192)) b!4705283))

(assert (= (and b!4705283 c!804191) b!4705284))

(assert (= (and b!4705283 (not c!804191)) b!4705285))

(declare-fun m!5626273 () Bool)

(assert (=> b!4705284 m!5626273))

(declare-fun m!5626275 () Bool)

(assert (=> d!1497288 m!5626275))

(declare-fun m!5626277 () Bool)

(assert (=> d!1497288 m!5626277))

(assert (=> b!4705095 d!1497288))

(declare-fun d!1497290 () Bool)

(assert (=> d!1497290 (= (tail!8761 newBucket!218) (t!359921 newBucket!218))))

(assert (=> b!4705095 d!1497290))

(declare-fun d!1497292 () Bool)

(assert (=> d!1497292 (= (tail!8761 oldBucket!34) (t!359921 oldBucket!34))))

(assert (=> b!4705095 d!1497292))

(declare-fun bs!1098505 () Bool)

(declare-fun d!1497294 () Bool)

(assert (= bs!1098505 (and d!1497294 d!1497206)))

(declare-fun lambda!211392 () Int)

(assert (=> bs!1098505 (= lambda!211392 lambda!211342)))

(assert (=> d!1497294 true))

(assert (=> d!1497294 true))

(assert (=> d!1497294 (= (allKeysSameHash!1738 newBucket!218 hash!405 hashF!1323) (forall!11429 newBucket!218 lambda!211392))))

(declare-fun bs!1098506 () Bool)

(assert (= bs!1098506 d!1497294))

(declare-fun m!5626279 () Bool)

(assert (=> bs!1098506 m!5626279))

(assert (=> b!4705096 d!1497294))

(declare-fun d!1497296 () Bool)

(assert (=> d!1497296 (= (-!716 (+!2196 lt!1869477 (tuple2!54043 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)))) key!4653) (+!2196 (-!716 lt!1869477 key!4653) (tuple2!54043 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun lt!1869710 () Unit!126988)

(declare-fun choose!33029 (ListMap!5077 K!13930 V!14176 K!13930) Unit!126988)

(assert (=> d!1497296 (= lt!1869710 (choose!33029 lt!1869477 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)) key!4653))))

(assert (=> d!1497296 (not (= (_1!30315 (h!58866 oldBucket!34)) key!4653))))

(assert (=> d!1497296 (= (addRemoveCommutativeForDiffKeys!117 lt!1869477 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)) key!4653) lt!1869710)))

(declare-fun bs!1098513 () Bool)

(assert (= bs!1098513 d!1497296))

(assert (=> bs!1098513 m!5625819))

(declare-fun m!5626281 () Bool)

(assert (=> bs!1098513 m!5626281))

(declare-fun m!5626283 () Bool)

(assert (=> bs!1098513 m!5626283))

(assert (=> bs!1098513 m!5626281))

(declare-fun m!5626285 () Bool)

(assert (=> bs!1098513 m!5626285))

(assert (=> bs!1098513 m!5625819))

(declare-fun m!5626287 () Bool)

(assert (=> bs!1098513 m!5626287))

(assert (=> b!4705094 d!1497296))

(declare-fun d!1497298 () Bool)

(declare-fun e!2935093 () Bool)

(assert (=> d!1497298 e!2935093))

(declare-fun res!1987372 () Bool)

(assert (=> d!1497298 (=> (not res!1987372) (not e!2935093))))

(declare-fun lt!1869711 () ListMap!5077)

(assert (=> d!1497298 (= res!1987372 (not (contains!15880 lt!1869711 key!4653)))))

(assert (=> d!1497298 (= lt!1869711 (ListMap!5078 (removePresrvNoDuplicatedKeys!378 (toList!5713 (+!2196 lt!1869477 (h!58866 oldBucket!34))) key!4653)))))

(assert (=> d!1497298 (= (-!716 (+!2196 lt!1869477 (h!58866 oldBucket!34)) key!4653) lt!1869711)))

(declare-fun b!4705297 () Bool)

(assert (=> b!4705297 (= e!2935093 (= ((_ map and) (content!9304 (keys!18819 (+!2196 lt!1869477 (h!58866 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13930 Bool)) false) key!4653 true))) (content!9304 (keys!18819 lt!1869711))))))

(assert (= (and d!1497298 res!1987372) b!4705297))

(declare-fun m!5626289 () Bool)

(assert (=> d!1497298 m!5626289))

(declare-fun m!5626291 () Bool)

(assert (=> d!1497298 m!5626291))

(declare-fun m!5626293 () Bool)

(assert (=> b!4705297 m!5626293))

(declare-fun m!5626295 () Bool)

(assert (=> b!4705297 m!5626295))

(declare-fun m!5626297 () Bool)

(assert (=> b!4705297 m!5626297))

(assert (=> b!4705297 m!5625823))

(assert (=> b!4705297 m!5626295))

(assert (=> b!4705297 m!5626293))

(declare-fun m!5626299 () Bool)

(assert (=> b!4705297 m!5626299))

(assert (=> b!4705297 m!5626201))

(assert (=> b!4705094 d!1497298))

(declare-fun d!1497300 () Bool)

(declare-fun e!2935094 () Bool)

(assert (=> d!1497300 e!2935094))

(declare-fun res!1987373 () Bool)

(assert (=> d!1497300 (=> (not res!1987373) (not e!2935094))))

(declare-fun lt!1869712 () ListMap!5077)

(assert (=> d!1497300 (= res!1987373 (not (contains!15880 lt!1869712 key!4653)))))

(assert (=> d!1497300 (= lt!1869712 (ListMap!5078 (removePresrvNoDuplicatedKeys!378 (toList!5713 lt!1869501) key!4653)))))

(assert (=> d!1497300 (= (-!716 lt!1869501 key!4653) lt!1869712)))

(declare-fun b!4705298 () Bool)

(assert (=> b!4705298 (= e!2935094 (= ((_ map and) (content!9304 (keys!18819 lt!1869501)) ((_ map not) (store ((as const (Array K!13930 Bool)) false) key!4653 true))) (content!9304 (keys!18819 lt!1869712))))))

(assert (= (and d!1497300 res!1987373) b!4705298))

(declare-fun m!5626303 () Bool)

(assert (=> d!1497300 m!5626303))

(declare-fun m!5626305 () Bool)

(assert (=> d!1497300 m!5626305))

(declare-fun m!5626309 () Bool)

(assert (=> b!4705298 m!5626309))

(declare-fun m!5626313 () Bool)

(assert (=> b!4705298 m!5626313))

(declare-fun m!5626315 () Bool)

(assert (=> b!4705298 m!5626315))

(assert (=> b!4705298 m!5626313))

(assert (=> b!4705298 m!5626309))

(declare-fun m!5626319 () Bool)

(assert (=> b!4705298 m!5626319))

(assert (=> b!4705298 m!5626201))

(assert (=> b!4705094 d!1497300))

(declare-fun d!1497302 () Bool)

(declare-fun e!2935097 () Bool)

(assert (=> d!1497302 e!2935097))

(declare-fun res!1987379 () Bool)

(assert (=> d!1497302 (=> (not res!1987379) (not e!2935097))))

(declare-fun lt!1869721 () ListMap!5077)

(assert (=> d!1497302 (= res!1987379 (contains!15880 lt!1869721 (_1!30315 (h!58866 oldBucket!34))))))

(declare-fun lt!1869723 () List!52697)

(assert (=> d!1497302 (= lt!1869721 (ListMap!5078 lt!1869723))))

(declare-fun lt!1869722 () Unit!126988)

(declare-fun lt!1869724 () Unit!126988)

(assert (=> d!1497302 (= lt!1869722 lt!1869724)))

(assert (=> d!1497302 (= (getValueByKey!1876 lt!1869723 (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1048 (List!52697 K!13930 V!14176) Unit!126988)

(assert (=> d!1497302 (= lt!1869724 (lemmaContainsTupThenGetReturnValue!1048 lt!1869723 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!556 (List!52697 K!13930 V!14176) List!52697)

(assert (=> d!1497302 (= lt!1869723 (insertNoDuplicatedKeys!556 (toList!5713 lt!1869477) (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497302 (= (+!2196 lt!1869477 (h!58866 oldBucket!34)) lt!1869721)))

(declare-fun b!4705303 () Bool)

(declare-fun res!1987378 () Bool)

(assert (=> b!4705303 (=> (not res!1987378) (not e!2935097))))

(assert (=> b!4705303 (= res!1987378 (= (getValueByKey!1876 (toList!5713 lt!1869721) (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun b!4705304 () Bool)

(declare-fun contains!15884 (List!52697 tuple2!54042) Bool)

(assert (=> b!4705304 (= e!2935097 (contains!15884 (toList!5713 lt!1869721) (h!58866 oldBucket!34)))))

(assert (= (and d!1497302 res!1987379) b!4705303))

(assert (= (and b!4705303 res!1987378) b!4705304))

(declare-fun m!5626345 () Bool)

(assert (=> d!1497302 m!5626345))

(declare-fun m!5626347 () Bool)

(assert (=> d!1497302 m!5626347))

(declare-fun m!5626349 () Bool)

(assert (=> d!1497302 m!5626349))

(declare-fun m!5626351 () Bool)

(assert (=> d!1497302 m!5626351))

(declare-fun m!5626353 () Bool)

(assert (=> b!4705303 m!5626353))

(declare-fun m!5626355 () Bool)

(assert (=> b!4705304 m!5626355))

(assert (=> b!4705094 d!1497302))

(declare-fun d!1497306 () Bool)

(declare-fun e!2935098 () Bool)

(assert (=> d!1497306 e!2935098))

(declare-fun res!1987381 () Bool)

(assert (=> d!1497306 (=> (not res!1987381) (not e!2935098))))

(declare-fun lt!1869725 () ListMap!5077)

(assert (=> d!1497306 (= res!1987381 (contains!15880 lt!1869725 (_1!30315 (h!58866 oldBucket!34))))))

(declare-fun lt!1869727 () List!52697)

(assert (=> d!1497306 (= lt!1869725 (ListMap!5078 lt!1869727))))

(declare-fun lt!1869726 () Unit!126988)

(declare-fun lt!1869728 () Unit!126988)

(assert (=> d!1497306 (= lt!1869726 lt!1869728)))

(assert (=> d!1497306 (= (getValueByKey!1876 lt!1869727 (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497306 (= lt!1869728 (lemmaContainsTupThenGetReturnValue!1048 lt!1869727 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497306 (= lt!1869727 (insertNoDuplicatedKeys!556 (toList!5713 lt!1869495) (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497306 (= (+!2196 lt!1869495 (h!58866 oldBucket!34)) lt!1869725)))

(declare-fun b!4705305 () Bool)

(declare-fun res!1987380 () Bool)

(assert (=> b!4705305 (=> (not res!1987380) (not e!2935098))))

(assert (=> b!4705305 (= res!1987380 (= (getValueByKey!1876 (toList!5713 lt!1869725) (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun b!4705306 () Bool)

(assert (=> b!4705306 (= e!2935098 (contains!15884 (toList!5713 lt!1869725) (h!58866 oldBucket!34)))))

(assert (= (and d!1497306 res!1987381) b!4705305))

(assert (= (and b!4705305 res!1987380) b!4705306))

(declare-fun m!5626357 () Bool)

(assert (=> d!1497306 m!5626357))

(declare-fun m!5626359 () Bool)

(assert (=> d!1497306 m!5626359))

(declare-fun m!5626361 () Bool)

(assert (=> d!1497306 m!5626361))

(declare-fun m!5626363 () Bool)

(assert (=> d!1497306 m!5626363))

(declare-fun m!5626365 () Bool)

(assert (=> b!4705305 m!5626365))

(declare-fun m!5626367 () Bool)

(assert (=> b!4705306 m!5626367))

(assert (=> b!4705094 d!1497306))

(declare-fun d!1497308 () Bool)

(assert (=> d!1497308 (= (eq!1071 lt!1869492 lt!1869476) (= (content!9303 (toList!5713 lt!1869492)) (content!9303 (toList!5713 lt!1869476))))))

(declare-fun bs!1098514 () Bool)

(assert (= bs!1098514 d!1497308))

(declare-fun m!5626369 () Bool)

(assert (=> bs!1098514 m!5626369))

(declare-fun m!5626371 () Bool)

(assert (=> bs!1098514 m!5626371))

(assert (=> b!4705093 d!1497308))

(declare-fun d!1497310 () Bool)

(assert (=> d!1497310 (= (eq!1071 lt!1869485 lt!1869476) (= (content!9303 (toList!5713 lt!1869485)) (content!9303 (toList!5713 lt!1869476))))))

(declare-fun bs!1098515 () Bool)

(assert (= bs!1098515 d!1497310))

(declare-fun m!5626373 () Bool)

(assert (=> bs!1098515 m!5626373))

(assert (=> bs!1098515 m!5626371))

(assert (=> b!4705093 d!1497310))

(declare-fun d!1497312 () Bool)

(declare-fun e!2935099 () Bool)

(assert (=> d!1497312 e!2935099))

(declare-fun res!1987382 () Bool)

(assert (=> d!1497312 (=> (not res!1987382) (not e!2935099))))

(declare-fun lt!1869729 () ListMap!5077)

(assert (=> d!1497312 (= res!1987382 (not (contains!15880 lt!1869729 key!4653)))))

(assert (=> d!1497312 (= lt!1869729 (ListMap!5078 (removePresrvNoDuplicatedKeys!378 (toList!5713 lt!1869500) key!4653)))))

(assert (=> d!1497312 (= (-!716 lt!1869500 key!4653) lt!1869729)))

(declare-fun b!4705307 () Bool)

(assert (=> b!4705307 (= e!2935099 (= ((_ map and) (content!9304 (keys!18819 lt!1869500)) ((_ map not) (store ((as const (Array K!13930 Bool)) false) key!4653 true))) (content!9304 (keys!18819 lt!1869729))))))

(assert (= (and d!1497312 res!1987382) b!4705307))

(declare-fun m!5626375 () Bool)

(assert (=> d!1497312 m!5626375))

(declare-fun m!5626377 () Bool)

(assert (=> d!1497312 m!5626377))

(declare-fun m!5626379 () Bool)

(assert (=> b!4705307 m!5626379))

(declare-fun m!5626381 () Bool)

(assert (=> b!4705307 m!5626381))

(declare-fun m!5626383 () Bool)

(assert (=> b!4705307 m!5626383))

(assert (=> b!4705307 m!5626381))

(assert (=> b!4705307 m!5626379))

(declare-fun m!5626385 () Bool)

(assert (=> b!4705307 m!5626385))

(assert (=> b!4705307 m!5626201))

(assert (=> b!4705093 d!1497312))

(declare-fun d!1497314 () Bool)

(assert (=> d!1497314 (eq!1071 (-!716 lt!1869501 key!4653) (-!716 lt!1869500 key!4653))))

(declare-fun lt!1869748 () Unit!126988)

(declare-fun choose!33030 (ListMap!5077 ListMap!5077 K!13930) Unit!126988)

(assert (=> d!1497314 (= lt!1869748 (choose!33030 lt!1869501 lt!1869500 key!4653))))

(assert (=> d!1497314 (eq!1071 lt!1869501 lt!1869500)))

(assert (=> d!1497314 (= (lemmaRemovePreservesEq!98 lt!1869501 lt!1869500 key!4653) lt!1869748)))

(declare-fun bs!1098516 () Bool)

(assert (= bs!1098516 d!1497314))

(declare-fun m!5626387 () Bool)

(assert (=> bs!1098516 m!5626387))

(assert (=> bs!1098516 m!5625933))

(assert (=> bs!1098516 m!5625825))

(assert (=> bs!1098516 m!5625933))

(declare-fun m!5626389 () Bool)

(assert (=> bs!1098516 m!5626389))

(assert (=> bs!1098516 m!5625825))

(assert (=> bs!1098516 m!5625799))

(assert (=> b!4705093 d!1497314))

(declare-fun d!1497316 () Bool)

(assert (=> d!1497316 (= (eq!1071 lt!1869501 lt!1869500) (= (content!9303 (toList!5713 lt!1869501)) (content!9303 (toList!5713 lt!1869500))))))

(declare-fun bs!1098517 () Bool)

(assert (= bs!1098517 d!1497316))

(declare-fun m!5626391 () Bool)

(assert (=> bs!1098517 m!5626391))

(declare-fun m!5626393 () Bool)

(assert (=> bs!1098517 m!5626393))

(assert (=> b!4705091 d!1497316))

(declare-fun b!4705329 () Bool)

(declare-fun e!2935113 () List!52697)

(assert (=> b!4705329 (= e!2935113 Nil!52573)))

(declare-fun b!4705328 () Bool)

(assert (=> b!4705328 (= e!2935113 (Cons!52573 (h!58866 oldBucket!34) (removePairForKey!1507 (t!359921 oldBucket!34) key!4653)))))

(declare-fun b!4705327 () Bool)

(declare-fun e!2935112 () List!52697)

(assert (=> b!4705327 (= e!2935112 e!2935113)))

(declare-fun c!804200 () Bool)

(assert (=> b!4705327 (= c!804200 ((_ is Cons!52573) oldBucket!34))))

(declare-fun d!1497318 () Bool)

(declare-fun lt!1869749 () List!52697)

(assert (=> d!1497318 (not (containsKey!3207 lt!1869749 key!4653))))

(assert (=> d!1497318 (= lt!1869749 e!2935112)))

(declare-fun c!804201 () Bool)

(assert (=> d!1497318 (= c!804201 (and ((_ is Cons!52573) oldBucket!34) (= (_1!30315 (h!58866 oldBucket!34)) key!4653)))))

(assert (=> d!1497318 (noDuplicateKeys!1912 oldBucket!34)))

(assert (=> d!1497318 (= (removePairForKey!1507 oldBucket!34 key!4653) lt!1869749)))

(declare-fun b!4705326 () Bool)

(assert (=> b!4705326 (= e!2935112 (t!359921 oldBucket!34))))

(assert (= (and d!1497318 c!804201) b!4705326))

(assert (= (and d!1497318 (not c!804201)) b!4705327))

(assert (= (and b!4705327 c!804200) b!4705328))

(assert (= (and b!4705327 (not c!804200)) b!4705329))

(assert (=> b!4705328 m!5625927))

(declare-fun m!5626395 () Bool)

(assert (=> d!1497318 m!5626395))

(assert (=> d!1497318 m!5625913))

(assert (=> b!4705092 d!1497318))

(declare-fun bs!1098747 () Bool)

(declare-fun b!4705430 () Bool)

(assert (= bs!1098747 (and b!4705430 d!1497206)))

(declare-fun lambda!211457 () Int)

(assert (=> bs!1098747 (not (= lambda!211457 lambda!211342))))

(declare-fun bs!1098748 () Bool)

(assert (= bs!1098748 (and b!4705430 d!1497294)))

(assert (=> bs!1098748 (not (= lambda!211457 lambda!211392))))

(assert (=> b!4705430 true))

(declare-fun bs!1098749 () Bool)

(declare-fun b!4705428 () Bool)

(assert (= bs!1098749 (and b!4705428 d!1497206)))

(declare-fun lambda!211458 () Int)

(assert (=> bs!1098749 (not (= lambda!211458 lambda!211342))))

(declare-fun bs!1098750 () Bool)

(assert (= bs!1098750 (and b!4705428 d!1497294)))

(assert (=> bs!1098750 (not (= lambda!211458 lambda!211392))))

(declare-fun bs!1098751 () Bool)

(assert (= bs!1098751 (and b!4705428 b!4705430)))

(assert (=> bs!1098751 (= lambda!211458 lambda!211457)))

(assert (=> b!4705428 true))

(declare-fun lambda!211459 () Int)

(assert (=> bs!1098749 (not (= lambda!211459 lambda!211342))))

(assert (=> bs!1098750 (not (= lambda!211459 lambda!211392))))

(declare-fun lt!1869926 () ListMap!5077)

(assert (=> bs!1098751 (= (= lt!1869926 lt!1869496) (= lambda!211459 lambda!211457))))

(assert (=> b!4705428 (= (= lt!1869926 lt!1869496) (= lambda!211459 lambda!211458))))

(assert (=> b!4705428 true))

(declare-fun bs!1098752 () Bool)

(declare-fun d!1497320 () Bool)

(assert (= bs!1098752 (and d!1497320 b!4705428)))

(declare-fun lambda!211460 () Int)

(declare-fun lt!1869918 () ListMap!5077)

(assert (=> bs!1098752 (= (= lt!1869918 lt!1869496) (= lambda!211460 lambda!211458))))

(declare-fun bs!1098753 () Bool)

(assert (= bs!1098753 (and d!1497320 b!4705430)))

(assert (=> bs!1098753 (= (= lt!1869918 lt!1869496) (= lambda!211460 lambda!211457))))

(declare-fun bs!1098754 () Bool)

(assert (= bs!1098754 (and d!1497320 d!1497294)))

(assert (=> bs!1098754 (not (= lambda!211460 lambda!211392))))

(assert (=> bs!1098752 (= (= lt!1869918 lt!1869926) (= lambda!211460 lambda!211459))))

(declare-fun bs!1098755 () Bool)

(assert (= bs!1098755 (and d!1497320 d!1497206)))

(assert (=> bs!1098755 (not (= lambda!211460 lambda!211342))))

(assert (=> d!1497320 true))

(declare-fun e!2935174 () Bool)

(assert (=> d!1497320 e!2935174))

(declare-fun res!1987429 () Bool)

(assert (=> d!1497320 (=> (not res!1987429) (not e!2935174))))

(assert (=> d!1497320 (= res!1987429 (forall!11429 (_2!30316 (h!58867 (toList!5714 lm!2023))) lambda!211460))))

(declare-fun e!2935175 () ListMap!5077)

(assert (=> d!1497320 (= lt!1869918 e!2935175)))

(declare-fun c!804231 () Bool)

(assert (=> d!1497320 (= c!804231 ((_ is Nil!52573) (_2!30316 (h!58867 (toList!5714 lm!2023)))))))

(assert (=> d!1497320 (noDuplicateKeys!1912 (_2!30316 (h!58867 (toList!5714 lm!2023))))))

(assert (=> d!1497320 (= (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (toList!5714 lm!2023))) lt!1869496) lt!1869918)))

(assert (=> b!4705428 (= e!2935175 lt!1869926)))

(declare-fun lt!1869928 () ListMap!5077)

(assert (=> b!4705428 (= lt!1869928 (+!2196 lt!1869496 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023))))))))

(assert (=> b!4705428 (= lt!1869926 (addToMapMapFromBucket!1344 (t!359921 (_2!30316 (h!58867 (toList!5714 lm!2023)))) (+!2196 lt!1869496 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023)))))))))

(declare-fun lt!1869933 () Unit!126988)

(declare-fun call!328994 () Unit!126988)

(assert (=> b!4705428 (= lt!1869933 call!328994)))

(assert (=> b!4705428 (forall!11429 (toList!5713 lt!1869496) lambda!211458)))

(declare-fun lt!1869932 () Unit!126988)

(assert (=> b!4705428 (= lt!1869932 lt!1869933)))

(declare-fun call!328993 () Bool)

(assert (=> b!4705428 call!328993))

(declare-fun lt!1869924 () Unit!126988)

(declare-fun Unit!127036 () Unit!126988)

(assert (=> b!4705428 (= lt!1869924 Unit!127036)))

(assert (=> b!4705428 (forall!11429 (t!359921 (_2!30316 (h!58867 (toList!5714 lm!2023)))) lambda!211459)))

(declare-fun lt!1869925 () Unit!126988)

(declare-fun Unit!127038 () Unit!126988)

(assert (=> b!4705428 (= lt!1869925 Unit!127038)))

(declare-fun lt!1869930 () Unit!126988)

(declare-fun Unit!127039 () Unit!126988)

(assert (=> b!4705428 (= lt!1869930 Unit!127039)))

(declare-fun lt!1869934 () Unit!126988)

(declare-fun forallContained!3536 (List!52697 Int tuple2!54042) Unit!126988)

(assert (=> b!4705428 (= lt!1869934 (forallContained!3536 (toList!5713 lt!1869928) lambda!211459 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023))))))))

(assert (=> b!4705428 (contains!15880 lt!1869928 (_1!30315 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023))))))))

(declare-fun lt!1869916 () Unit!126988)

(declare-fun Unit!127041 () Unit!126988)

(assert (=> b!4705428 (= lt!1869916 Unit!127041)))

(assert (=> b!4705428 (contains!15880 lt!1869926 (_1!30315 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023))))))))

(declare-fun lt!1869927 () Unit!126988)

(declare-fun Unit!127042 () Unit!126988)

(assert (=> b!4705428 (= lt!1869927 Unit!127042)))

(assert (=> b!4705428 (forall!11429 (_2!30316 (h!58867 (toList!5714 lm!2023))) lambda!211459)))

(declare-fun lt!1869921 () Unit!126988)

(declare-fun Unit!127043 () Unit!126988)

(assert (=> b!4705428 (= lt!1869921 Unit!127043)))

(assert (=> b!4705428 (forall!11429 (toList!5713 lt!1869928) lambda!211459)))

(declare-fun lt!1869922 () Unit!126988)

(declare-fun Unit!127045 () Unit!126988)

(assert (=> b!4705428 (= lt!1869922 Unit!127045)))

(declare-fun lt!1869915 () Unit!126988)

(declare-fun Unit!127046 () Unit!126988)

(assert (=> b!4705428 (= lt!1869915 Unit!127046)))

(declare-fun lt!1869931 () Unit!126988)

(declare-fun addForallContainsKeyThenBeforeAdding!745 (ListMap!5077 ListMap!5077 K!13930 V!14176) Unit!126988)

(assert (=> b!4705428 (= lt!1869931 (addForallContainsKeyThenBeforeAdding!745 lt!1869496 lt!1869926 (_1!30315 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023))))) (_2!30315 (h!58866 (_2!30316 (h!58867 (toList!5714 lm!2023)))))))))

(assert (=> b!4705428 (forall!11429 (toList!5713 lt!1869496) lambda!211459)))

(declare-fun lt!1869917 () Unit!126988)

(assert (=> b!4705428 (= lt!1869917 lt!1869931)))

(assert (=> b!4705428 (forall!11429 (toList!5713 lt!1869496) lambda!211459)))

(declare-fun lt!1869923 () Unit!126988)

(declare-fun Unit!127047 () Unit!126988)

(assert (=> b!4705428 (= lt!1869923 Unit!127047)))

(declare-fun res!1987428 () Bool)

(declare-fun call!328992 () Bool)

(assert (=> b!4705428 (= res!1987428 call!328992)))

(declare-fun e!2935176 () Bool)

(assert (=> b!4705428 (=> (not res!1987428) (not e!2935176))))

(assert (=> b!4705428 e!2935176))

(declare-fun lt!1869920 () Unit!126988)

(declare-fun Unit!127048 () Unit!126988)

(assert (=> b!4705428 (= lt!1869920 Unit!127048)))

(declare-fun bm!328987 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!746 (ListMap!5077) Unit!126988)

(assert (=> bm!328987 (= call!328994 (lemmaContainsAllItsOwnKeys!746 lt!1869496))))

(declare-fun bm!328988 () Bool)

(assert (=> bm!328988 (= call!328993 (forall!11429 (ite c!804231 (toList!5713 lt!1869496) (toList!5713 lt!1869928)) (ite c!804231 lambda!211457 lambda!211459)))))

(declare-fun b!4705429 () Bool)

(declare-fun res!1987427 () Bool)

(assert (=> b!4705429 (=> (not res!1987427) (not e!2935174))))

(assert (=> b!4705429 (= res!1987427 (forall!11429 (toList!5713 lt!1869496) lambda!211460))))

(assert (=> b!4705430 (= e!2935175 lt!1869496)))

(declare-fun lt!1869919 () Unit!126988)

(assert (=> b!4705430 (= lt!1869919 call!328994)))

(assert (=> b!4705430 call!328993))

(declare-fun lt!1869935 () Unit!126988)

(assert (=> b!4705430 (= lt!1869935 lt!1869919)))

(assert (=> b!4705430 call!328992))

(declare-fun lt!1869929 () Unit!126988)

(declare-fun Unit!127049 () Unit!126988)

(assert (=> b!4705430 (= lt!1869929 Unit!127049)))

(declare-fun b!4705431 () Bool)

(assert (=> b!4705431 (= e!2935174 (invariantList!1458 (toList!5713 lt!1869918)))))

(declare-fun bm!328989 () Bool)

(assert (=> bm!328989 (= call!328992 (forall!11429 (ite c!804231 (toList!5713 lt!1869496) (_2!30316 (h!58867 (toList!5714 lm!2023)))) (ite c!804231 lambda!211457 lambda!211459)))))

(declare-fun b!4705432 () Bool)

(assert (=> b!4705432 (= e!2935176 (forall!11429 (toList!5713 lt!1869496) lambda!211459))))

(assert (= (and d!1497320 c!804231) b!4705430))

(assert (= (and d!1497320 (not c!804231)) b!4705428))

(assert (= (and b!4705428 res!1987428) b!4705432))

(assert (= (or b!4705430 b!4705428) bm!328987))

(assert (= (or b!4705430 b!4705428) bm!328988))

(assert (= (or b!4705430 b!4705428) bm!328989))

(assert (= (and d!1497320 res!1987429) b!4705429))

(assert (= (and b!4705429 res!1987427) b!4705431))

(declare-fun m!5626733 () Bool)

(assert (=> b!4705428 m!5626733))

(declare-fun m!5626739 () Bool)

(assert (=> b!4705428 m!5626739))

(declare-fun m!5626741 () Bool)

(assert (=> b!4705428 m!5626741))

(declare-fun m!5626745 () Bool)

(assert (=> b!4705428 m!5626745))

(declare-fun m!5626749 () Bool)

(assert (=> b!4705428 m!5626749))

(assert (=> b!4705428 m!5626741))

(declare-fun m!5626751 () Bool)

(assert (=> b!4705428 m!5626751))

(declare-fun m!5626753 () Bool)

(assert (=> b!4705428 m!5626753))

(declare-fun m!5626755 () Bool)

(assert (=> b!4705428 m!5626755))

(assert (=> b!4705428 m!5626745))

(declare-fun m!5626757 () Bool)

(assert (=> b!4705428 m!5626757))

(declare-fun m!5626759 () Bool)

(assert (=> b!4705428 m!5626759))

(declare-fun m!5626763 () Bool)

(assert (=> b!4705428 m!5626763))

(declare-fun m!5626767 () Bool)

(assert (=> d!1497320 m!5626767))

(declare-fun m!5626769 () Bool)

(assert (=> d!1497320 m!5626769))

(declare-fun m!5626773 () Bool)

(assert (=> bm!328987 m!5626773))

(declare-fun m!5626777 () Bool)

(assert (=> b!4705429 m!5626777))

(declare-fun m!5626781 () Bool)

(assert (=> b!4705431 m!5626781))

(declare-fun m!5626785 () Bool)

(assert (=> bm!328989 m!5626785))

(assert (=> b!4705432 m!5626741))

(declare-fun m!5626787 () Bool)

(assert (=> bm!328988 m!5626787))

(assert (=> b!4705101 d!1497320))

(declare-fun bs!1098759 () Bool)

(declare-fun d!1497404 () Bool)

(assert (= bs!1098759 (and d!1497404 d!1497282)))

(declare-fun lambda!211461 () Int)

(assert (=> bs!1098759 (= lambda!211461 lambda!211364)))

(declare-fun bs!1098760 () Bool)

(assert (= bs!1098760 (and d!1497404 start!477700)))

(assert (=> bs!1098760 (= lambda!211461 lambda!211329)))

(declare-fun bs!1098761 () Bool)

(assert (= bs!1098761 (and d!1497404 d!1497286)))

(assert (=> bs!1098761 (= lambda!211461 lambda!211389)))

(declare-fun bs!1098762 () Bool)

(assert (= bs!1098762 (and d!1497404 d!1497250)))

(assert (=> bs!1098762 (= lambda!211461 lambda!211358)))

(declare-fun bs!1098763 () Bool)

(assert (= bs!1098763 (and d!1497404 d!1497278)))

(assert (=> bs!1098763 (not (= lambda!211461 lambda!211363))))

(declare-fun bs!1098764 () Bool)

(assert (= bs!1098764 (and d!1497404 d!1497208)))

(assert (=> bs!1098764 (= lambda!211461 lambda!211351)))

(declare-fun bs!1098765 () Bool)

(assert (= bs!1098765 (and d!1497404 d!1497264)))

(assert (=> bs!1098765 (= lambda!211461 lambda!211359)))

(declare-fun bs!1098766 () Bool)

(assert (= bs!1098766 (and d!1497404 d!1497272)))

(assert (=> bs!1098766 (= lambda!211461 lambda!211360)))

(declare-fun lt!1869949 () ListMap!5077)

(assert (=> d!1497404 (invariantList!1458 (toList!5713 lt!1869949))))

(declare-fun e!2935181 () ListMap!5077)

(assert (=> d!1497404 (= lt!1869949 e!2935181)))

(declare-fun c!804232 () Bool)

(assert (=> d!1497404 (= c!804232 ((_ is Cons!52574) (t!359922 (toList!5714 lm!2023))))))

(assert (=> d!1497404 (forall!11427 (t!359922 (toList!5714 lm!2023)) lambda!211461)))

(assert (=> d!1497404 (= (extractMap!1938 (t!359922 (toList!5714 lm!2023))) lt!1869949)))

(declare-fun b!4705441 () Bool)

(assert (=> b!4705441 (= e!2935181 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (t!359922 (toList!5714 lm!2023)))) (extractMap!1938 (t!359922 (t!359922 (toList!5714 lm!2023))))))))

(declare-fun b!4705442 () Bool)

(assert (=> b!4705442 (= e!2935181 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497404 c!804232) b!4705441))

(assert (= (and d!1497404 (not c!804232)) b!4705442))

(declare-fun m!5626803 () Bool)

(assert (=> d!1497404 m!5626803))

(declare-fun m!5626805 () Bool)

(assert (=> d!1497404 m!5626805))

(declare-fun m!5626807 () Bool)

(assert (=> b!4705441 m!5626807))

(assert (=> b!4705441 m!5626807))

(declare-fun m!5626809 () Bool)

(assert (=> b!4705441 m!5626809))

(assert (=> b!4705101 d!1497404))

(declare-fun d!1497410 () Bool)

(assert (=> d!1497410 (= (tail!8762 lm!2023) (ListLongMap!4244 (tail!8763 (toList!5714 lm!2023))))))

(declare-fun bs!1098767 () Bool)

(assert (= bs!1098767 d!1497410))

(declare-fun m!5626811 () Bool)

(assert (=> bs!1098767 m!5626811))

(assert (=> b!4705101 d!1497410))

(declare-fun d!1497412 () Bool)

(declare-fun res!1987441 () Bool)

(declare-fun e!2935187 () Bool)

(assert (=> d!1497412 (=> res!1987441 e!2935187)))

(assert (=> d!1497412 (= res!1987441 (not ((_ is Cons!52573) newBucket!218)))))

(assert (=> d!1497412 (= (noDuplicateKeys!1912 newBucket!218) e!2935187)))

(declare-fun b!4705448 () Bool)

(declare-fun e!2935188 () Bool)

(assert (=> b!4705448 (= e!2935187 e!2935188)))

(declare-fun res!1987442 () Bool)

(assert (=> b!4705448 (=> (not res!1987442) (not e!2935188))))

(assert (=> b!4705448 (= res!1987442 (not (containsKey!3207 (t!359921 newBucket!218) (_1!30315 (h!58866 newBucket!218)))))))

(declare-fun b!4705449 () Bool)

(assert (=> b!4705449 (= e!2935188 (noDuplicateKeys!1912 (t!359921 newBucket!218)))))

(assert (= (and d!1497412 (not res!1987441)) b!4705448))

(assert (= (and b!4705448 res!1987442) b!4705449))

(declare-fun m!5626813 () Bool)

(assert (=> b!4705448 m!5626813))

(declare-fun m!5626815 () Bool)

(assert (=> b!4705449 m!5626815))

(assert (=> b!4705099 d!1497412))

(declare-fun d!1497414 () Bool)

(assert (=> d!1497414 (= (eq!1071 lt!1869485 lt!1869492) (= (content!9303 (toList!5713 lt!1869485)) (content!9303 (toList!5713 lt!1869492))))))

(declare-fun bs!1098768 () Bool)

(assert (= bs!1098768 d!1497414))

(assert (=> bs!1098768 m!5626373))

(assert (=> bs!1098768 m!5626369))

(assert (=> b!4705100 d!1497414))

(declare-fun d!1497416 () Bool)

(assert (=> d!1497416 (contains!15878 (toList!5714 lm!2023) (tuple2!54045 lt!1869491 lt!1869489))))

(declare-fun lt!1869956 () Unit!126988)

(declare-fun choose!33031 (ListLongMap!4243 (_ BitVec 64) List!52697) Unit!126988)

(assert (=> d!1497416 (= lt!1869956 (choose!33031 lm!2023 lt!1869491 lt!1869489))))

(assert (=> d!1497416 (contains!15879 lm!2023 lt!1869491)))

(assert (=> d!1497416 (= (lemmaGetValueImpliesTupleContained!321 lm!2023 lt!1869491 lt!1869489) lt!1869956)))

(declare-fun bs!1098770 () Bool)

(assert (= bs!1098770 d!1497416))

(declare-fun m!5626825 () Bool)

(assert (=> bs!1098770 m!5626825))

(declare-fun m!5626827 () Bool)

(assert (=> bs!1098770 m!5626827))

(assert (=> bs!1098770 m!5625907))

(assert (=> b!4705098 d!1497416))

(declare-fun b!4705480 () Bool)

(declare-fun e!2935210 () Bool)

(assert (=> b!4705480 (= e!2935210 (not (containsKey!3207 lt!1869489 key!4653)))))

(declare-fun b!4705481 () Bool)

(declare-fun e!2935211 () Bool)

(declare-fun e!2935208 () Bool)

(assert (=> b!4705481 (= e!2935211 e!2935208)))

(declare-fun res!1987453 () Bool)

(assert (=> b!4705481 (=> (not res!1987453) (not e!2935208))))

(declare-fun lt!1869959 () Option!12231)

(assert (=> b!4705481 (= res!1987453 (isDefined!9486 lt!1869959))))

(declare-fun b!4705482 () Bool)

(declare-fun e!2935209 () Option!12231)

(assert (=> b!4705482 (= e!2935209 (Some!12230 (h!58866 lt!1869489)))))

(declare-fun b!4705483 () Bool)

(declare-fun e!2935212 () Option!12231)

(assert (=> b!4705483 (= e!2935212 None!12230)))

(declare-fun d!1497420 () Bool)

(assert (=> d!1497420 e!2935211))

(declare-fun res!1987454 () Bool)

(assert (=> d!1497420 (=> res!1987454 e!2935211)))

(assert (=> d!1497420 (= res!1987454 e!2935210)))

(declare-fun res!1987455 () Bool)

(assert (=> d!1497420 (=> (not res!1987455) (not e!2935210))))

(declare-fun isEmpty!29142 (Option!12231) Bool)

(assert (=> d!1497420 (= res!1987455 (isEmpty!29142 lt!1869959))))

(assert (=> d!1497420 (= lt!1869959 e!2935209)))

(declare-fun c!804238 () Bool)

(assert (=> d!1497420 (= c!804238 (and ((_ is Cons!52573) lt!1869489) (= (_1!30315 (h!58866 lt!1869489)) key!4653)))))

(assert (=> d!1497420 (noDuplicateKeys!1912 lt!1869489)))

(assert (=> d!1497420 (= (getPair!516 lt!1869489 key!4653) lt!1869959)))

(declare-fun b!4705484 () Bool)

(declare-fun res!1987456 () Bool)

(assert (=> b!4705484 (=> (not res!1987456) (not e!2935208))))

(declare-fun get!17618 (Option!12231) tuple2!54042)

(assert (=> b!4705484 (= res!1987456 (= (_1!30315 (get!17618 lt!1869959)) key!4653))))

(declare-fun b!4705485 () Bool)

(assert (=> b!4705485 (= e!2935208 (contains!15884 lt!1869489 (get!17618 lt!1869959)))))

(declare-fun b!4705486 () Bool)

(assert (=> b!4705486 (= e!2935209 e!2935212)))

(declare-fun c!804237 () Bool)

(assert (=> b!4705486 (= c!804237 ((_ is Cons!52573) lt!1869489))))

(declare-fun b!4705487 () Bool)

(assert (=> b!4705487 (= e!2935212 (getPair!516 (t!359921 lt!1869489) key!4653))))

(assert (= (and d!1497420 c!804238) b!4705482))

(assert (= (and d!1497420 (not c!804238)) b!4705486))

(assert (= (and b!4705486 c!804237) b!4705487))

(assert (= (and b!4705486 (not c!804237)) b!4705483))

(assert (= (and d!1497420 res!1987455) b!4705480))

(assert (= (and d!1497420 (not res!1987454)) b!4705481))

(assert (= (and b!4705481 res!1987453) b!4705484))

(assert (= (and b!4705484 res!1987456) b!4705485))

(declare-fun m!5626833 () Bool)

(assert (=> d!1497420 m!5626833))

(declare-fun m!5626835 () Bool)

(assert (=> d!1497420 m!5626835))

(declare-fun m!5626837 () Bool)

(assert (=> b!4705481 m!5626837))

(declare-fun m!5626839 () Bool)

(assert (=> b!4705485 m!5626839))

(assert (=> b!4705485 m!5626839))

(declare-fun m!5626841 () Bool)

(assert (=> b!4705485 m!5626841))

(assert (=> b!4705484 m!5626839))

(declare-fun m!5626843 () Bool)

(assert (=> b!4705487 m!5626843))

(declare-fun m!5626845 () Bool)

(assert (=> b!4705480 m!5626845))

(assert (=> b!4705098 d!1497420))

(declare-fun d!1497428 () Bool)

(declare-fun e!2935218 () Bool)

(assert (=> d!1497428 e!2935218))

(declare-fun res!1987459 () Bool)

(assert (=> d!1497428 (=> res!1987459 e!2935218)))

(declare-fun lt!1869969 () Bool)

(assert (=> d!1497428 (= res!1987459 (not lt!1869969))))

(declare-fun lt!1869971 () Bool)

(assert (=> d!1497428 (= lt!1869969 lt!1869971)))

(declare-fun lt!1869968 () Unit!126988)

(declare-fun e!2935217 () Unit!126988)

(assert (=> d!1497428 (= lt!1869968 e!2935217)))

(declare-fun c!804241 () Bool)

(assert (=> d!1497428 (= c!804241 lt!1869971)))

(declare-fun containsKey!3211 (List!52698 (_ BitVec 64)) Bool)

(assert (=> d!1497428 (= lt!1869971 (containsKey!3211 (toList!5714 lm!2023) lt!1869491))))

(assert (=> d!1497428 (= (contains!15879 lm!2023 lt!1869491) lt!1869969)))

(declare-fun b!4705494 () Bool)

(declare-fun lt!1869970 () Unit!126988)

(assert (=> b!4705494 (= e!2935217 lt!1869970)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1769 (List!52698 (_ BitVec 64)) Unit!126988)

(assert (=> b!4705494 (= lt!1869970 (lemmaContainsKeyImpliesGetValueByKeyDefined!1769 (toList!5714 lm!2023) lt!1869491))))

(declare-datatypes ((Option!12235 0))(
  ( (None!12234) (Some!12234 (v!46749 List!52697)) )
))
(declare-fun isDefined!9490 (Option!12235) Bool)

(declare-fun getValueByKey!1877 (List!52698 (_ BitVec 64)) Option!12235)

(assert (=> b!4705494 (isDefined!9490 (getValueByKey!1877 (toList!5714 lm!2023) lt!1869491))))

(declare-fun b!4705495 () Bool)

(declare-fun Unit!127050 () Unit!126988)

(assert (=> b!4705495 (= e!2935217 Unit!127050)))

(declare-fun b!4705496 () Bool)

(assert (=> b!4705496 (= e!2935218 (isDefined!9490 (getValueByKey!1877 (toList!5714 lm!2023) lt!1869491)))))

(assert (= (and d!1497428 c!804241) b!4705494))

(assert (= (and d!1497428 (not c!804241)) b!4705495))

(assert (= (and d!1497428 (not res!1987459)) b!4705496))

(declare-fun m!5626847 () Bool)

(assert (=> d!1497428 m!5626847))

(declare-fun m!5626849 () Bool)

(assert (=> b!4705494 m!5626849))

(declare-fun m!5626851 () Bool)

(assert (=> b!4705494 m!5626851))

(assert (=> b!4705494 m!5626851))

(declare-fun m!5626853 () Bool)

(assert (=> b!4705494 m!5626853))

(assert (=> b!4705496 m!5626851))

(assert (=> b!4705496 m!5626851))

(assert (=> b!4705496 m!5626853))

(assert (=> b!4705098 d!1497428))

(declare-fun d!1497430 () Bool)

(declare-fun get!17619 (Option!12235) List!52697)

(assert (=> d!1497430 (= (apply!12395 lm!2023 lt!1869491) (get!17619 (getValueByKey!1877 (toList!5714 lm!2023) lt!1869491)))))

(declare-fun bs!1098774 () Bool)

(assert (= bs!1098774 d!1497430))

(assert (=> bs!1098774 m!5626851))

(assert (=> bs!1098774 m!5626851))

(declare-fun m!5626855 () Bool)

(assert (=> bs!1098774 m!5626855))

(assert (=> b!4705098 d!1497430))

(declare-fun d!1497432 () Bool)

(assert (=> d!1497432 (dynLambda!21761 lambda!211329 lt!1869505)))

(declare-fun lt!1869974 () Unit!126988)

(declare-fun choose!33032 (List!52698 Int tuple2!54044) Unit!126988)

(assert (=> d!1497432 (= lt!1869974 (choose!33032 (toList!5714 lm!2023) lambda!211329 lt!1869505))))

(declare-fun e!2935221 () Bool)

(assert (=> d!1497432 e!2935221))

(declare-fun res!1987462 () Bool)

(assert (=> d!1497432 (=> (not res!1987462) (not e!2935221))))

(assert (=> d!1497432 (= res!1987462 (forall!11427 (toList!5714 lm!2023) lambda!211329))))

(assert (=> d!1497432 (= (forallContained!3534 (toList!5714 lm!2023) lambda!211329 lt!1869505) lt!1869974)))

(declare-fun b!4705499 () Bool)

(assert (=> b!4705499 (= e!2935221 (contains!15878 (toList!5714 lm!2023) lt!1869505))))

(assert (= (and d!1497432 res!1987462) b!4705499))

(declare-fun b_lambda!177531 () Bool)

(assert (=> (not b_lambda!177531) (not d!1497432)))

(declare-fun m!5626857 () Bool)

(assert (=> d!1497432 m!5626857))

(declare-fun m!5626859 () Bool)

(assert (=> d!1497432 m!5626859))

(assert (=> d!1497432 m!5625951))

(assert (=> b!4705499 m!5625887))

(assert (=> b!4705098 d!1497432))

(declare-fun bs!1098775 () Bool)

(declare-fun d!1497434 () Bool)

(assert (= bs!1098775 (and d!1497434 d!1497282)))

(declare-fun lambda!211468 () Int)

(assert (=> bs!1098775 (= lambda!211468 lambda!211364)))

(declare-fun bs!1098776 () Bool)

(assert (= bs!1098776 (and d!1497434 start!477700)))

(assert (=> bs!1098776 (= lambda!211468 lambda!211329)))

(declare-fun bs!1098777 () Bool)

(assert (= bs!1098777 (and d!1497434 d!1497286)))

(assert (=> bs!1098777 (= lambda!211468 lambda!211389)))

(declare-fun bs!1098778 () Bool)

(assert (= bs!1098778 (and d!1497434 d!1497404)))

(assert (=> bs!1098778 (= lambda!211468 lambda!211461)))

(declare-fun bs!1098779 () Bool)

(assert (= bs!1098779 (and d!1497434 d!1497250)))

(assert (=> bs!1098779 (= lambda!211468 lambda!211358)))

(declare-fun bs!1098780 () Bool)

(assert (= bs!1098780 (and d!1497434 d!1497278)))

(assert (=> bs!1098780 (not (= lambda!211468 lambda!211363))))

(declare-fun bs!1098781 () Bool)

(assert (= bs!1098781 (and d!1497434 d!1497208)))

(assert (=> bs!1098781 (= lambda!211468 lambda!211351)))

(declare-fun bs!1098782 () Bool)

(assert (= bs!1098782 (and d!1497434 d!1497264)))

(assert (=> bs!1098782 (= lambda!211468 lambda!211359)))

(declare-fun bs!1098783 () Bool)

(assert (= bs!1098783 (and d!1497434 d!1497272)))

(assert (=> bs!1098783 (= lambda!211468 lambda!211360)))

(declare-fun e!2935227 () Bool)

(declare-fun lt!1869997 () List!52697)

(declare-fun b!4705511 () Bool)

(declare-fun lt!1869992 () (_ BitVec 64))

(assert (=> b!4705511 (= e!2935227 (= (getValueByKey!1877 (toList!5714 lm!2023) lt!1869992) (Some!12234 lt!1869997)))))

(declare-fun b!4705510 () Bool)

(declare-fun e!2935226 () Bool)

(assert (=> b!4705510 (= e!2935226 (isDefined!9486 (getPair!516 (apply!12395 lm!2023 (hash!4212 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1869996 () Unit!126988)

(assert (=> b!4705510 (= lt!1869996 (forallContained!3534 (toList!5714 lm!2023) lambda!211468 (tuple2!54045 (hash!4212 hashF!1323 key!4653) (apply!12395 lm!2023 (hash!4212 hashF!1323 key!4653)))))))

(declare-fun lt!1869998 () Unit!126988)

(declare-fun lt!1869995 () Unit!126988)

(assert (=> b!4705510 (= lt!1869998 lt!1869995)))

(assert (=> b!4705510 (contains!15878 (toList!5714 lm!2023) (tuple2!54045 lt!1869992 lt!1869997))))

(assert (=> b!4705510 (= lt!1869995 (lemmaGetValueImpliesTupleContained!321 lm!2023 lt!1869992 lt!1869997))))

(assert (=> b!4705510 e!2935227))

(declare-fun res!1987473 () Bool)

(assert (=> b!4705510 (=> (not res!1987473) (not e!2935227))))

(assert (=> b!4705510 (= res!1987473 (contains!15879 lm!2023 lt!1869992))))

(assert (=> b!4705510 (= lt!1869997 (apply!12395 lm!2023 (hash!4212 hashF!1323 key!4653)))))

(assert (=> b!4705510 (= lt!1869992 (hash!4212 hashF!1323 key!4653))))

(declare-fun lt!1869993 () Unit!126988)

(declare-fun lt!1869994 () Unit!126988)

(assert (=> b!4705510 (= lt!1869993 lt!1869994)))

(assert (=> b!4705510 (contains!15879 lm!2023 (hash!4212 hashF!1323 key!4653))))

(assert (=> b!4705510 (= lt!1869994 (lemmaInGenMapThenLongMapContainsHash!722 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4705509 () Bool)

(declare-fun res!1987474 () Bool)

(assert (=> b!4705509 (=> (not res!1987474) (not e!2935226))))

(assert (=> b!4705509 (= res!1987474 (contains!15880 (extractMap!1938 (toList!5714 lm!2023)) key!4653))))

(declare-fun b!4705508 () Bool)

(declare-fun res!1987471 () Bool)

(assert (=> b!4705508 (=> (not res!1987471) (not e!2935226))))

(assert (=> b!4705508 (= res!1987471 (allKeysSameHashInMap!1826 lm!2023 hashF!1323))))

(assert (=> d!1497434 e!2935226))

(declare-fun res!1987472 () Bool)

(assert (=> d!1497434 (=> (not res!1987472) (not e!2935226))))

(assert (=> d!1497434 (= res!1987472 (forall!11427 (toList!5714 lm!2023) lambda!211468))))

(declare-fun lt!1869991 () Unit!126988)

(declare-fun choose!33033 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> d!1497434 (= lt!1869991 (choose!33033 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497434 (forall!11427 (toList!5714 lm!2023) lambda!211468)))

(assert (=> d!1497434 (= (lemmaInGenMapThenGetPairDefined!312 lm!2023 key!4653 hashF!1323) lt!1869991)))

(assert (= (and d!1497434 res!1987472) b!4705508))

(assert (= (and b!4705508 res!1987471) b!4705509))

(assert (= (and b!4705509 res!1987474) b!4705510))

(assert (= (and b!4705510 res!1987473) b!4705511))

(declare-fun m!5626861 () Bool)

(assert (=> b!4705510 m!5626861))

(assert (=> b!4705510 m!5625903))

(declare-fun m!5626863 () Bool)

(assert (=> b!4705510 m!5626863))

(declare-fun m!5626865 () Bool)

(assert (=> b!4705510 m!5626865))

(assert (=> b!4705510 m!5625801))

(declare-fun m!5626867 () Bool)

(assert (=> b!4705510 m!5626867))

(declare-fun m!5626869 () Bool)

(assert (=> b!4705510 m!5626869))

(declare-fun m!5626871 () Bool)

(assert (=> b!4705510 m!5626871))

(declare-fun m!5626873 () Bool)

(assert (=> b!4705510 m!5626873))

(assert (=> b!4705510 m!5626863))

(declare-fun m!5626875 () Bool)

(assert (=> b!4705510 m!5626875))

(assert (=> b!4705510 m!5625801))

(assert (=> b!4705510 m!5625801))

(assert (=> b!4705510 m!5626873))

(assert (=> b!4705508 m!5625833))

(assert (=> b!4705509 m!5625939))

(assert (=> b!4705509 m!5625939))

(declare-fun m!5626877 () Bool)

(assert (=> b!4705509 m!5626877))

(declare-fun m!5626879 () Bool)

(assert (=> b!4705511 m!5626879))

(declare-fun m!5626881 () Bool)

(assert (=> d!1497434 m!5626881))

(declare-fun m!5626883 () Bool)

(assert (=> d!1497434 m!5626883))

(assert (=> d!1497434 m!5626881))

(assert (=> b!4705098 d!1497434))

(declare-fun d!1497436 () Bool)

(assert (=> d!1497436 (containsKey!3207 oldBucket!34 key!4653)))

(declare-fun lt!1870001 () Unit!126988)

(declare-fun choose!33034 (List!52697 K!13930 Hashable!6281) Unit!126988)

(assert (=> d!1497436 (= lt!1870001 (choose!33034 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1497436 (noDuplicateKeys!1912 oldBucket!34)))

(assert (=> d!1497436 (= (lemmaGetPairDefinedThenContainsKey!264 oldBucket!34 key!4653 hashF!1323) lt!1870001)))

(declare-fun bs!1098784 () Bool)

(assert (= bs!1098784 d!1497436))

(assert (=> bs!1098784 m!5625895))

(declare-fun m!5626885 () Bool)

(assert (=> bs!1098784 m!5626885))

(assert (=> bs!1098784 m!5625913))

(assert (=> b!4705098 d!1497436))

(declare-fun d!1497438 () Bool)

(declare-fun res!1987479 () Bool)

(declare-fun e!2935232 () Bool)

(assert (=> d!1497438 (=> res!1987479 e!2935232)))

(assert (=> d!1497438 (= res!1987479 (and ((_ is Cons!52573) (t!359921 oldBucket!34)) (= (_1!30315 (h!58866 (t!359921 oldBucket!34))) key!4653)))))

(assert (=> d!1497438 (= (containsKey!3207 (t!359921 oldBucket!34) key!4653) e!2935232)))

(declare-fun b!4705516 () Bool)

(declare-fun e!2935233 () Bool)

(assert (=> b!4705516 (= e!2935232 e!2935233)))

(declare-fun res!1987480 () Bool)

(assert (=> b!4705516 (=> (not res!1987480) (not e!2935233))))

(assert (=> b!4705516 (= res!1987480 ((_ is Cons!52573) (t!359921 oldBucket!34)))))

(declare-fun b!4705517 () Bool)

(assert (=> b!4705517 (= e!2935233 (containsKey!3207 (t!359921 (t!359921 oldBucket!34)) key!4653))))

(assert (= (and d!1497438 (not res!1987479)) b!4705516))

(assert (= (and b!4705516 res!1987480) b!4705517))

(declare-fun m!5626887 () Bool)

(assert (=> b!4705517 m!5626887))

(assert (=> b!4705098 d!1497438))

(declare-fun bs!1098785 () Bool)

(declare-fun d!1497440 () Bool)

(assert (= bs!1098785 (and d!1497440 d!1497282)))

(declare-fun lambda!211471 () Int)

(assert (=> bs!1098785 (= lambda!211471 lambda!211364)))

(declare-fun bs!1098786 () Bool)

(assert (= bs!1098786 (and d!1497440 start!477700)))

(assert (=> bs!1098786 (= lambda!211471 lambda!211329)))

(declare-fun bs!1098787 () Bool)

(assert (= bs!1098787 (and d!1497440 d!1497286)))

(assert (=> bs!1098787 (= lambda!211471 lambda!211389)))

(declare-fun bs!1098788 () Bool)

(assert (= bs!1098788 (and d!1497440 d!1497404)))

(assert (=> bs!1098788 (= lambda!211471 lambda!211461)))

(declare-fun bs!1098789 () Bool)

(assert (= bs!1098789 (and d!1497440 d!1497250)))

(assert (=> bs!1098789 (= lambda!211471 lambda!211358)))

(declare-fun bs!1098790 () Bool)

(assert (= bs!1098790 (and d!1497440 d!1497278)))

(assert (=> bs!1098790 (not (= lambda!211471 lambda!211363))))

(declare-fun bs!1098791 () Bool)

(assert (= bs!1098791 (and d!1497440 d!1497208)))

(assert (=> bs!1098791 (= lambda!211471 lambda!211351)))

(declare-fun bs!1098792 () Bool)

(assert (= bs!1098792 (and d!1497440 d!1497434)))

(assert (=> bs!1098792 (= lambda!211471 lambda!211468)))

(declare-fun bs!1098793 () Bool)

(assert (= bs!1098793 (and d!1497440 d!1497264)))

(assert (=> bs!1098793 (= lambda!211471 lambda!211359)))

(declare-fun bs!1098794 () Bool)

(assert (= bs!1098794 (and d!1497440 d!1497272)))

(assert (=> bs!1098794 (= lambda!211471 lambda!211360)))

(assert (=> d!1497440 (contains!15879 lm!2023 (hash!4212 hashF!1323 key!4653))))

(declare-fun lt!1870004 () Unit!126988)

(declare-fun choose!33035 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> d!1497440 (= lt!1870004 (choose!33035 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497440 (forall!11427 (toList!5714 lm!2023) lambda!211471)))

(assert (=> d!1497440 (= (lemmaInGenMapThenLongMapContainsHash!722 lm!2023 key!4653 hashF!1323) lt!1870004)))

(declare-fun bs!1098795 () Bool)

(assert (= bs!1098795 d!1497440))

(assert (=> bs!1098795 m!5625801))

(assert (=> bs!1098795 m!5625801))

(assert (=> bs!1098795 m!5626867))

(declare-fun m!5626889 () Bool)

(assert (=> bs!1098795 m!5626889))

(declare-fun m!5626891 () Bool)

(assert (=> bs!1098795 m!5626891))

(assert (=> b!4705098 d!1497440))

(declare-fun d!1497442 () Bool)

(declare-fun lt!1870007 () Bool)

(declare-fun content!9306 (List!52698) (InoxSet tuple2!54044))

(assert (=> d!1497442 (= lt!1870007 (select (content!9306 (toList!5714 lm!2023)) lt!1869505))))

(declare-fun e!2935238 () Bool)

(assert (=> d!1497442 (= lt!1870007 e!2935238)))

(declare-fun res!1987485 () Bool)

(assert (=> d!1497442 (=> (not res!1987485) (not e!2935238))))

(assert (=> d!1497442 (= res!1987485 ((_ is Cons!52574) (toList!5714 lm!2023)))))

(assert (=> d!1497442 (= (contains!15878 (toList!5714 lm!2023) lt!1869505) lt!1870007)))

(declare-fun b!4705522 () Bool)

(declare-fun e!2935239 () Bool)

(assert (=> b!4705522 (= e!2935238 e!2935239)))

(declare-fun res!1987486 () Bool)

(assert (=> b!4705522 (=> res!1987486 e!2935239)))

(assert (=> b!4705522 (= res!1987486 (= (h!58867 (toList!5714 lm!2023)) lt!1869505))))

(declare-fun b!4705523 () Bool)

(assert (=> b!4705523 (= e!2935239 (contains!15878 (t!359922 (toList!5714 lm!2023)) lt!1869505))))

(assert (= (and d!1497442 res!1987485) b!4705522))

(assert (= (and b!4705522 (not res!1987486)) b!4705523))

(declare-fun m!5626893 () Bool)

(assert (=> d!1497442 m!5626893))

(declare-fun m!5626895 () Bool)

(assert (=> d!1497442 m!5626895))

(declare-fun m!5626897 () Bool)

(assert (=> b!4705523 m!5626897))

(assert (=> b!4705098 d!1497442))

(declare-fun d!1497444 () Bool)

(assert (=> d!1497444 (= (isDefined!9486 (getPair!516 lt!1869489 key!4653)) (not (isEmpty!29142 (getPair!516 lt!1869489 key!4653))))))

(declare-fun bs!1098796 () Bool)

(assert (= bs!1098796 d!1497444))

(assert (=> bs!1098796 m!5625897))

(declare-fun m!5626899 () Bool)

(assert (=> bs!1098796 m!5626899))

(assert (=> b!4705098 d!1497444))

(declare-fun d!1497446 () Bool)

(declare-fun res!1987487 () Bool)

(declare-fun e!2935240 () Bool)

(assert (=> d!1497446 (=> res!1987487 e!2935240)))

(assert (=> d!1497446 (= res!1987487 (and ((_ is Cons!52573) oldBucket!34) (= (_1!30315 (h!58866 oldBucket!34)) key!4653)))))

(assert (=> d!1497446 (= (containsKey!3207 oldBucket!34 key!4653) e!2935240)))

(declare-fun b!4705524 () Bool)

(declare-fun e!2935241 () Bool)

(assert (=> b!4705524 (= e!2935240 e!2935241)))

(declare-fun res!1987488 () Bool)

(assert (=> b!4705524 (=> (not res!1987488) (not e!2935241))))

(assert (=> b!4705524 (= res!1987488 ((_ is Cons!52573) oldBucket!34))))

(declare-fun b!4705525 () Bool)

(assert (=> b!4705525 (= e!2935241 (containsKey!3207 (t!359921 oldBucket!34) key!4653))))

(assert (= (and d!1497446 (not res!1987487)) b!4705524))

(assert (= (and b!4705524 res!1987488) b!4705525))

(assert (=> b!4705525 m!5625891))

(assert (=> b!4705098 d!1497446))

(declare-fun d!1497448 () Bool)

(declare-fun res!1987489 () Bool)

(declare-fun e!2935242 () Bool)

(assert (=> d!1497448 (=> res!1987489 e!2935242)))

(assert (=> d!1497448 (= res!1987489 ((_ is Nil!52574) (toList!5714 lm!2023)))))

(assert (=> d!1497448 (= (forall!11427 (toList!5714 lm!2023) lambda!211329) e!2935242)))

(declare-fun b!4705526 () Bool)

(declare-fun e!2935243 () Bool)

(assert (=> b!4705526 (= e!2935242 e!2935243)))

(declare-fun res!1987490 () Bool)

(assert (=> b!4705526 (=> (not res!1987490) (not e!2935243))))

(assert (=> b!4705526 (= res!1987490 (dynLambda!21761 lambda!211329 (h!58867 (toList!5714 lm!2023))))))

(declare-fun b!4705527 () Bool)

(assert (=> b!4705527 (= e!2935243 (forall!11427 (t!359922 (toList!5714 lm!2023)) lambda!211329))))

(assert (= (and d!1497448 (not res!1987489)) b!4705526))

(assert (= (and b!4705526 res!1987490) b!4705527))

(declare-fun b_lambda!177533 () Bool)

(assert (=> (not b_lambda!177533) (not b!4705526)))

(declare-fun m!5626901 () Bool)

(assert (=> b!4705526 m!5626901))

(declare-fun m!5626903 () Bool)

(assert (=> b!4705527 m!5626903))

(assert (=> start!477700 d!1497448))

(declare-fun d!1497450 () Bool)

(declare-fun isStrictlySorted!696 (List!52698) Bool)

(assert (=> d!1497450 (= (inv!67804 lm!2023) (isStrictlySorted!696 (toList!5714 lm!2023)))))

(declare-fun bs!1098797 () Bool)

(assert (= bs!1098797 d!1497450))

(declare-fun m!5626905 () Bool)

(assert (=> bs!1098797 m!5626905))

(assert (=> start!477700 d!1497450))

(declare-fun d!1497452 () Bool)

(assert (=> d!1497452 (= (head!10087 (toList!5714 lm!2023)) (h!58867 (toList!5714 lm!2023)))))

(assert (=> b!4705097 d!1497452))

(declare-fun d!1497454 () Bool)

(declare-fun res!1987491 () Bool)

(declare-fun e!2935244 () Bool)

(assert (=> d!1497454 (=> res!1987491 e!2935244)))

(assert (=> d!1497454 (= res!1987491 (not ((_ is Cons!52573) oldBucket!34)))))

(assert (=> d!1497454 (= (noDuplicateKeys!1912 oldBucket!34) e!2935244)))

(declare-fun b!4705528 () Bool)

(declare-fun e!2935245 () Bool)

(assert (=> b!4705528 (= e!2935244 e!2935245)))

(declare-fun res!1987492 () Bool)

(assert (=> b!4705528 (=> (not res!1987492) (not e!2935245))))

(assert (=> b!4705528 (= res!1987492 (not (containsKey!3207 (t!359921 oldBucket!34) (_1!30315 (h!58866 oldBucket!34)))))))

(declare-fun b!4705529 () Bool)

(assert (=> b!4705529 (= e!2935245 (noDuplicateKeys!1912 (t!359921 oldBucket!34)))))

(assert (= (and d!1497454 (not res!1987491)) b!4705528))

(assert (= (and b!4705528 res!1987492) b!4705529))

(declare-fun m!5626907 () Bool)

(assert (=> b!4705528 m!5626907))

(assert (=> b!4705529 m!5626227))

(assert (=> b!4705106 d!1497454))

(declare-fun bs!1098798 () Bool)

(declare-fun b!4705532 () Bool)

(assert (= bs!1098798 (and b!4705532 d!1497320)))

(declare-fun lambda!211472 () Int)

(assert (=> bs!1098798 (= (= lt!1869496 lt!1869918) (= lambda!211472 lambda!211460))))

(declare-fun bs!1098799 () Bool)

(assert (= bs!1098799 (and b!4705532 b!4705428)))

(assert (=> bs!1098799 (= lambda!211472 lambda!211458)))

(declare-fun bs!1098800 () Bool)

(assert (= bs!1098800 (and b!4705532 b!4705430)))

(assert (=> bs!1098800 (= lambda!211472 lambda!211457)))

(declare-fun bs!1098801 () Bool)

(assert (= bs!1098801 (and b!4705532 d!1497294)))

(assert (=> bs!1098801 (not (= lambda!211472 lambda!211392))))

(assert (=> bs!1098799 (= (= lt!1869496 lt!1869926) (= lambda!211472 lambda!211459))))

(declare-fun bs!1098802 () Bool)

(assert (= bs!1098802 (and b!4705532 d!1497206)))

(assert (=> bs!1098802 (not (= lambda!211472 lambda!211342))))

(assert (=> b!4705532 true))

(declare-fun bs!1098803 () Bool)

(declare-fun b!4705530 () Bool)

(assert (= bs!1098803 (and b!4705530 b!4705532)))

(declare-fun lambda!211473 () Int)

(assert (=> bs!1098803 (= lambda!211473 lambda!211472)))

(declare-fun bs!1098804 () Bool)

(assert (= bs!1098804 (and b!4705530 d!1497320)))

(assert (=> bs!1098804 (= (= lt!1869496 lt!1869918) (= lambda!211473 lambda!211460))))

(declare-fun bs!1098805 () Bool)

(assert (= bs!1098805 (and b!4705530 b!4705428)))

(assert (=> bs!1098805 (= lambda!211473 lambda!211458)))

(declare-fun bs!1098806 () Bool)

(assert (= bs!1098806 (and b!4705530 b!4705430)))

(assert (=> bs!1098806 (= lambda!211473 lambda!211457)))

(declare-fun bs!1098807 () Bool)

(assert (= bs!1098807 (and b!4705530 d!1497294)))

(assert (=> bs!1098807 (not (= lambda!211473 lambda!211392))))

(assert (=> bs!1098805 (= (= lt!1869496 lt!1869926) (= lambda!211473 lambda!211459))))

(declare-fun bs!1098808 () Bool)

(assert (= bs!1098808 (and b!4705530 d!1497206)))

(assert (=> bs!1098808 (not (= lambda!211473 lambda!211342))))

(assert (=> b!4705530 true))

(declare-fun lambda!211474 () Int)

(declare-fun lt!1870019 () ListMap!5077)

(assert (=> bs!1098803 (= (= lt!1870019 lt!1869496) (= lambda!211474 lambda!211472))))

(assert (=> bs!1098804 (= (= lt!1870019 lt!1869918) (= lambda!211474 lambda!211460))))

(assert (=> bs!1098805 (= (= lt!1870019 lt!1869496) (= lambda!211474 lambda!211458))))

(assert (=> bs!1098806 (= (= lt!1870019 lt!1869496) (= lambda!211474 lambda!211457))))

(assert (=> bs!1098807 (not (= lambda!211474 lambda!211392))))

(assert (=> b!4705530 (= (= lt!1870019 lt!1869496) (= lambda!211474 lambda!211473))))

(assert (=> bs!1098805 (= (= lt!1870019 lt!1869926) (= lambda!211474 lambda!211459))))

(assert (=> bs!1098808 (not (= lambda!211474 lambda!211342))))

(assert (=> b!4705530 true))

(declare-fun bs!1098809 () Bool)

(declare-fun d!1497456 () Bool)

(assert (= bs!1098809 (and d!1497456 b!4705532)))

(declare-fun lt!1870011 () ListMap!5077)

(declare-fun lambda!211475 () Int)

(assert (=> bs!1098809 (= (= lt!1870011 lt!1869496) (= lambda!211475 lambda!211472))))

(declare-fun bs!1098810 () Bool)

(assert (= bs!1098810 (and d!1497456 d!1497320)))

(assert (=> bs!1098810 (= (= lt!1870011 lt!1869918) (= lambda!211475 lambda!211460))))

(declare-fun bs!1098811 () Bool)

(assert (= bs!1098811 (and d!1497456 b!4705530)))

(assert (=> bs!1098811 (= (= lt!1870011 lt!1870019) (= lambda!211475 lambda!211474))))

(declare-fun bs!1098812 () Bool)

(assert (= bs!1098812 (and d!1497456 b!4705428)))

(assert (=> bs!1098812 (= (= lt!1870011 lt!1869496) (= lambda!211475 lambda!211458))))

(declare-fun bs!1098813 () Bool)

(assert (= bs!1098813 (and d!1497456 b!4705430)))

(assert (=> bs!1098813 (= (= lt!1870011 lt!1869496) (= lambda!211475 lambda!211457))))

(declare-fun bs!1098814 () Bool)

(assert (= bs!1098814 (and d!1497456 d!1497294)))

(assert (=> bs!1098814 (not (= lambda!211475 lambda!211392))))

(assert (=> bs!1098811 (= (= lt!1870011 lt!1869496) (= lambda!211475 lambda!211473))))

(assert (=> bs!1098812 (= (= lt!1870011 lt!1869926) (= lambda!211475 lambda!211459))))

(declare-fun bs!1098815 () Bool)

(assert (= bs!1098815 (and d!1497456 d!1497206)))

(assert (=> bs!1098815 (not (= lambda!211475 lambda!211342))))

(assert (=> d!1497456 true))

(declare-fun e!2935246 () Bool)

(assert (=> d!1497456 e!2935246))

(declare-fun res!1987495 () Bool)

(assert (=> d!1497456 (=> (not res!1987495) (not e!2935246))))

(assert (=> d!1497456 (= res!1987495 (forall!11429 lt!1869480 lambda!211475))))

(declare-fun e!2935247 () ListMap!5077)

(assert (=> d!1497456 (= lt!1870011 e!2935247)))

(declare-fun c!804242 () Bool)

(assert (=> d!1497456 (= c!804242 ((_ is Nil!52573) lt!1869480))))

(assert (=> d!1497456 (noDuplicateKeys!1912 lt!1869480)))

(assert (=> d!1497456 (= (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1870011)))

(assert (=> b!4705530 (= e!2935247 lt!1870019)))

(declare-fun lt!1870021 () ListMap!5077)

(assert (=> b!4705530 (= lt!1870021 (+!2196 lt!1869496 (h!58866 lt!1869480)))))

(assert (=> b!4705530 (= lt!1870019 (addToMapMapFromBucket!1344 (t!359921 lt!1869480) (+!2196 lt!1869496 (h!58866 lt!1869480))))))

(declare-fun lt!1870026 () Unit!126988)

(declare-fun call!328997 () Unit!126988)

(assert (=> b!4705530 (= lt!1870026 call!328997)))

(assert (=> b!4705530 (forall!11429 (toList!5713 lt!1869496) lambda!211473)))

(declare-fun lt!1870025 () Unit!126988)

(assert (=> b!4705530 (= lt!1870025 lt!1870026)))

(declare-fun call!328996 () Bool)

(assert (=> b!4705530 call!328996))

(declare-fun lt!1870017 () Unit!126988)

(declare-fun Unit!127062 () Unit!126988)

(assert (=> b!4705530 (= lt!1870017 Unit!127062)))

(assert (=> b!4705530 (forall!11429 (t!359921 lt!1869480) lambda!211474)))

(declare-fun lt!1870018 () Unit!126988)

(declare-fun Unit!127063 () Unit!126988)

(assert (=> b!4705530 (= lt!1870018 Unit!127063)))

(declare-fun lt!1870023 () Unit!126988)

(declare-fun Unit!127064 () Unit!126988)

(assert (=> b!4705530 (= lt!1870023 Unit!127064)))

(declare-fun lt!1870027 () Unit!126988)

(assert (=> b!4705530 (= lt!1870027 (forallContained!3536 (toList!5713 lt!1870021) lambda!211474 (h!58866 lt!1869480)))))

(assert (=> b!4705530 (contains!15880 lt!1870021 (_1!30315 (h!58866 lt!1869480)))))

(declare-fun lt!1870009 () Unit!126988)

(declare-fun Unit!127065 () Unit!126988)

(assert (=> b!4705530 (= lt!1870009 Unit!127065)))

(assert (=> b!4705530 (contains!15880 lt!1870019 (_1!30315 (h!58866 lt!1869480)))))

(declare-fun lt!1870020 () Unit!126988)

(declare-fun Unit!127066 () Unit!126988)

(assert (=> b!4705530 (= lt!1870020 Unit!127066)))

(assert (=> b!4705530 (forall!11429 lt!1869480 lambda!211474)))

(declare-fun lt!1870014 () Unit!126988)

(declare-fun Unit!127067 () Unit!126988)

(assert (=> b!4705530 (= lt!1870014 Unit!127067)))

(assert (=> b!4705530 (forall!11429 (toList!5713 lt!1870021) lambda!211474)))

(declare-fun lt!1870015 () Unit!126988)

(declare-fun Unit!127068 () Unit!126988)

(assert (=> b!4705530 (= lt!1870015 Unit!127068)))

(declare-fun lt!1870008 () Unit!126988)

(declare-fun Unit!127069 () Unit!126988)

(assert (=> b!4705530 (= lt!1870008 Unit!127069)))

(declare-fun lt!1870024 () Unit!126988)

(assert (=> b!4705530 (= lt!1870024 (addForallContainsKeyThenBeforeAdding!745 lt!1869496 lt!1870019 (_1!30315 (h!58866 lt!1869480)) (_2!30315 (h!58866 lt!1869480))))))

(assert (=> b!4705530 (forall!11429 (toList!5713 lt!1869496) lambda!211474)))

(declare-fun lt!1870010 () Unit!126988)

(assert (=> b!4705530 (= lt!1870010 lt!1870024)))

(assert (=> b!4705530 (forall!11429 (toList!5713 lt!1869496) lambda!211474)))

(declare-fun lt!1870016 () Unit!126988)

(declare-fun Unit!127070 () Unit!126988)

(assert (=> b!4705530 (= lt!1870016 Unit!127070)))

(declare-fun res!1987494 () Bool)

(declare-fun call!328995 () Bool)

(assert (=> b!4705530 (= res!1987494 call!328995)))

(declare-fun e!2935248 () Bool)

(assert (=> b!4705530 (=> (not res!1987494) (not e!2935248))))

(assert (=> b!4705530 e!2935248))

(declare-fun lt!1870013 () Unit!126988)

(declare-fun Unit!127071 () Unit!126988)

(assert (=> b!4705530 (= lt!1870013 Unit!127071)))

(declare-fun bm!328990 () Bool)

(assert (=> bm!328990 (= call!328997 (lemmaContainsAllItsOwnKeys!746 lt!1869496))))

(declare-fun bm!328991 () Bool)

(assert (=> bm!328991 (= call!328996 (forall!11429 (ite c!804242 (toList!5713 lt!1869496) (toList!5713 lt!1870021)) (ite c!804242 lambda!211472 lambda!211474)))))

(declare-fun b!4705531 () Bool)

(declare-fun res!1987493 () Bool)

(assert (=> b!4705531 (=> (not res!1987493) (not e!2935246))))

(assert (=> b!4705531 (= res!1987493 (forall!11429 (toList!5713 lt!1869496) lambda!211475))))

(assert (=> b!4705532 (= e!2935247 lt!1869496)))

(declare-fun lt!1870012 () Unit!126988)

(assert (=> b!4705532 (= lt!1870012 call!328997)))

(assert (=> b!4705532 call!328996))

(declare-fun lt!1870028 () Unit!126988)

(assert (=> b!4705532 (= lt!1870028 lt!1870012)))

(assert (=> b!4705532 call!328995))

(declare-fun lt!1870022 () Unit!126988)

(declare-fun Unit!127072 () Unit!126988)

(assert (=> b!4705532 (= lt!1870022 Unit!127072)))

(declare-fun b!4705533 () Bool)

(assert (=> b!4705533 (= e!2935246 (invariantList!1458 (toList!5713 lt!1870011)))))

(declare-fun bm!328992 () Bool)

(assert (=> bm!328992 (= call!328995 (forall!11429 (ite c!804242 (toList!5713 lt!1869496) lt!1869480) (ite c!804242 lambda!211472 lambda!211474)))))

(declare-fun b!4705534 () Bool)

(assert (=> b!4705534 (= e!2935248 (forall!11429 (toList!5713 lt!1869496) lambda!211474))))

(assert (= (and d!1497456 c!804242) b!4705532))

(assert (= (and d!1497456 (not c!804242)) b!4705530))

(assert (= (and b!4705530 res!1987494) b!4705534))

(assert (= (or b!4705532 b!4705530) bm!328990))

(assert (= (or b!4705532 b!4705530) bm!328991))

(assert (= (or b!4705532 b!4705530) bm!328992))

(assert (= (and d!1497456 res!1987495) b!4705531))

(assert (= (and b!4705531 res!1987493) b!4705533))

(declare-fun m!5626909 () Bool)

(assert (=> b!4705530 m!5626909))

(declare-fun m!5626911 () Bool)

(assert (=> b!4705530 m!5626911))

(declare-fun m!5626913 () Bool)

(assert (=> b!4705530 m!5626913))

(declare-fun m!5626915 () Bool)

(assert (=> b!4705530 m!5626915))

(declare-fun m!5626917 () Bool)

(assert (=> b!4705530 m!5626917))

(assert (=> b!4705530 m!5626913))

(declare-fun m!5626919 () Bool)

(assert (=> b!4705530 m!5626919))

(declare-fun m!5626921 () Bool)

(assert (=> b!4705530 m!5626921))

(declare-fun m!5626923 () Bool)

(assert (=> b!4705530 m!5626923))

(assert (=> b!4705530 m!5626915))

(declare-fun m!5626925 () Bool)

(assert (=> b!4705530 m!5626925))

(declare-fun m!5626927 () Bool)

(assert (=> b!4705530 m!5626927))

(declare-fun m!5626929 () Bool)

(assert (=> b!4705530 m!5626929))

(declare-fun m!5626931 () Bool)

(assert (=> d!1497456 m!5626931))

(assert (=> d!1497456 m!5626277))

(assert (=> bm!328990 m!5626773))

(declare-fun m!5626933 () Bool)

(assert (=> b!4705531 m!5626933))

(declare-fun m!5626935 () Bool)

(assert (=> b!4705533 m!5626935))

(declare-fun m!5626937 () Bool)

(assert (=> bm!328992 m!5626937))

(assert (=> b!4705534 m!5626913))

(declare-fun m!5626939 () Bool)

(assert (=> bm!328991 m!5626939))

(assert (=> b!4705105 d!1497456))

(declare-fun bs!1098816 () Bool)

(declare-fun d!1497458 () Bool)

(assert (= bs!1098816 (and d!1497458 d!1497282)))

(declare-fun lambda!211478 () Int)

(assert (=> bs!1098816 (= lambda!211478 lambda!211364)))

(declare-fun bs!1098817 () Bool)

(assert (= bs!1098817 (and d!1497458 start!477700)))

(assert (=> bs!1098817 (= lambda!211478 lambda!211329)))

(declare-fun bs!1098818 () Bool)

(assert (= bs!1098818 (and d!1497458 d!1497286)))

(assert (=> bs!1098818 (= lambda!211478 lambda!211389)))

(declare-fun bs!1098819 () Bool)

(assert (= bs!1098819 (and d!1497458 d!1497404)))

(assert (=> bs!1098819 (= lambda!211478 lambda!211461)))

(declare-fun bs!1098820 () Bool)

(assert (= bs!1098820 (and d!1497458 d!1497440)))

(assert (=> bs!1098820 (= lambda!211478 lambda!211471)))

(declare-fun bs!1098821 () Bool)

(assert (= bs!1098821 (and d!1497458 d!1497250)))

(assert (=> bs!1098821 (= lambda!211478 lambda!211358)))

(declare-fun bs!1098822 () Bool)

(assert (= bs!1098822 (and d!1497458 d!1497278)))

(assert (=> bs!1098822 (not (= lambda!211478 lambda!211363))))

(declare-fun bs!1098823 () Bool)

(assert (= bs!1098823 (and d!1497458 d!1497208)))

(assert (=> bs!1098823 (= lambda!211478 lambda!211351)))

(declare-fun bs!1098824 () Bool)

(assert (= bs!1098824 (and d!1497458 d!1497434)))

(assert (=> bs!1098824 (= lambda!211478 lambda!211468)))

(declare-fun bs!1098825 () Bool)

(assert (= bs!1098825 (and d!1497458 d!1497264)))

(assert (=> bs!1098825 (= lambda!211478 lambda!211359)))

(declare-fun bs!1098826 () Bool)

(assert (= bs!1098826 (and d!1497458 d!1497272)))

(assert (=> bs!1098826 (= lambda!211478 lambda!211360)))

(assert (=> d!1497458 (contains!15880 (extractMap!1938 (toList!5714 lt!1869510)) key!4653)))

(declare-fun lt!1870031 () Unit!126988)

(declare-fun choose!33037 (ListLongMap!4243 K!13930 Hashable!6281) Unit!126988)

(assert (=> d!1497458 (= lt!1870031 (choose!33037 lt!1869510 key!4653 hashF!1323))))

(assert (=> d!1497458 (forall!11427 (toList!5714 lt!1869510) lambda!211478)))

(assert (=> d!1497458 (= (lemmaListContainsThenExtractedMapContains!504 lt!1869510 key!4653 hashF!1323) lt!1870031)))

(declare-fun bs!1098827 () Bool)

(assert (= bs!1098827 d!1497458))

(declare-fun m!5626941 () Bool)

(assert (=> bs!1098827 m!5626941))

(assert (=> bs!1098827 m!5626941))

(declare-fun m!5626943 () Bool)

(assert (=> bs!1098827 m!5626943))

(declare-fun m!5626945 () Bool)

(assert (=> bs!1098827 m!5626945))

(declare-fun m!5626947 () Bool)

(assert (=> bs!1098827 m!5626947))

(assert (=> b!4705105 d!1497458))

(declare-fun bs!1098828 () Bool)

(declare-fun d!1497460 () Bool)

(assert (= bs!1098828 (and d!1497460 d!1497282)))

(declare-fun lambda!211479 () Int)

(assert (=> bs!1098828 (= lambda!211479 lambda!211364)))

(declare-fun bs!1098829 () Bool)

(assert (= bs!1098829 (and d!1497460 start!477700)))

(assert (=> bs!1098829 (= lambda!211479 lambda!211329)))

(declare-fun bs!1098830 () Bool)

(assert (= bs!1098830 (and d!1497460 d!1497286)))

(assert (=> bs!1098830 (= lambda!211479 lambda!211389)))

(declare-fun bs!1098831 () Bool)

(assert (= bs!1098831 (and d!1497460 d!1497404)))

(assert (=> bs!1098831 (= lambda!211479 lambda!211461)))

(declare-fun bs!1098832 () Bool)

(assert (= bs!1098832 (and d!1497460 d!1497440)))

(assert (=> bs!1098832 (= lambda!211479 lambda!211471)))

(declare-fun bs!1098833 () Bool)

(assert (= bs!1098833 (and d!1497460 d!1497250)))

(assert (=> bs!1098833 (= lambda!211479 lambda!211358)))

(declare-fun bs!1098834 () Bool)

(assert (= bs!1098834 (and d!1497460 d!1497278)))

(assert (=> bs!1098834 (not (= lambda!211479 lambda!211363))))

(declare-fun bs!1098835 () Bool)

(assert (= bs!1098835 (and d!1497460 d!1497458)))

(assert (=> bs!1098835 (= lambda!211479 lambda!211478)))

(declare-fun bs!1098836 () Bool)

(assert (= bs!1098836 (and d!1497460 d!1497208)))

(assert (=> bs!1098836 (= lambda!211479 lambda!211351)))

(declare-fun bs!1098837 () Bool)

(assert (= bs!1098837 (and d!1497460 d!1497434)))

(assert (=> bs!1098837 (= lambda!211479 lambda!211468)))

(declare-fun bs!1098838 () Bool)

(assert (= bs!1098838 (and d!1497460 d!1497264)))

(assert (=> bs!1098838 (= lambda!211479 lambda!211359)))

(declare-fun bs!1098839 () Bool)

(assert (= bs!1098839 (and d!1497460 d!1497272)))

(assert (=> bs!1098839 (= lambda!211479 lambda!211360)))

(declare-fun lt!1870032 () ListMap!5077)

(assert (=> d!1497460 (invariantList!1458 (toList!5713 lt!1870032))))

(declare-fun e!2935249 () ListMap!5077)

(assert (=> d!1497460 (= lt!1870032 e!2935249)))

(declare-fun c!804243 () Bool)

(assert (=> d!1497460 (= c!804243 ((_ is Cons!52574) (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023)))))))

(assert (=> d!1497460 (forall!11427 (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023))) lambda!211479)))

(assert (=> d!1497460 (= (extractMap!1938 (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023)))) lt!1870032)))

(declare-fun b!4705535 () Bool)

(assert (=> b!4705535 (= e!2935249 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023))))) (extractMap!1938 (t!359922 (Cons!52574 lt!1869475 (t!359922 (toList!5714 lm!2023)))))))))

(declare-fun b!4705536 () Bool)

(assert (=> b!4705536 (= e!2935249 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497460 c!804243) b!4705535))

(assert (= (and d!1497460 (not c!804243)) b!4705536))

(declare-fun m!5626949 () Bool)

(assert (=> d!1497460 m!5626949))

(declare-fun m!5626951 () Bool)

(assert (=> d!1497460 m!5626951))

(declare-fun m!5626953 () Bool)

(assert (=> b!4705535 m!5626953))

(assert (=> b!4705535 m!5626953))

(declare-fun m!5626955 () Bool)

(assert (=> b!4705535 m!5626955))

(assert (=> b!4705105 d!1497460))

(declare-fun d!1497462 () Bool)

(assert (=> d!1497462 (= (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869497 lt!1869508) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1869497)) (= (content!9303 (toList!5713 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869497 lt!1869508) lt!1869496))) (content!9303 (toList!5713 (+!2196 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1869497)))))))

(declare-fun bs!1098840 () Bool)

(assert (= bs!1098840 d!1497462))

(declare-fun m!5626957 () Bool)

(assert (=> bs!1098840 m!5626957))

(declare-fun m!5626959 () Bool)

(assert (=> bs!1098840 m!5626959))

(assert (=> b!4705105 d!1497462))

(declare-fun d!1497464 () Bool)

(assert (=> d!1497464 (= (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869473 lt!1869480) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1869473)) (= (content!9303 (toList!5713 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869473 lt!1869480) lt!1869496))) (content!9303 (toList!5713 (+!2196 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1869473)))))))

(declare-fun bs!1098841 () Bool)

(assert (= bs!1098841 d!1497464))

(declare-fun m!5626961 () Bool)

(assert (=> bs!1098841 m!5626961))

(declare-fun m!5626963 () Bool)

(assert (=> bs!1098841 m!5626963))

(assert (=> b!4705105 d!1497464))

(declare-fun d!1497466 () Bool)

(assert (=> d!1497466 (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869473 lt!1869480) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1869473))))

(declare-fun lt!1870035 () Unit!126988)

(declare-fun choose!33038 (tuple2!54042 List!52697 ListMap!5077) Unit!126988)

(assert (=> d!1497466 (= lt!1870035 (choose!33038 lt!1869473 lt!1869480 lt!1869496))))

(assert (=> d!1497466 (noDuplicateKeys!1912 lt!1869480)))

(assert (=> d!1497466 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!320 lt!1869473 lt!1869480 lt!1869496) lt!1870035)))

(declare-fun bs!1098842 () Bool)

(assert (= bs!1098842 d!1497466))

(assert (=> bs!1098842 m!5626277))

(assert (=> bs!1098842 m!5625847))

(assert (=> bs!1098842 m!5625865))

(assert (=> bs!1098842 m!5625867))

(assert (=> bs!1098842 m!5625847))

(assert (=> bs!1098842 m!5625861))

(assert (=> bs!1098842 m!5625865))

(assert (=> bs!1098842 m!5625861))

(declare-fun m!5626965 () Bool)

(assert (=> bs!1098842 m!5626965))

(assert (=> b!4705105 d!1497466))

(declare-fun bs!1098843 () Bool)

(declare-fun b!4705539 () Bool)

(assert (= bs!1098843 (and b!4705539 b!4705532)))

(declare-fun lambda!211480 () Int)

(assert (=> bs!1098843 (= lambda!211480 lambda!211472)))

(declare-fun bs!1098844 () Bool)

(assert (= bs!1098844 (and b!4705539 d!1497320)))

(assert (=> bs!1098844 (= (= lt!1869496 lt!1869918) (= lambda!211480 lambda!211460))))

(declare-fun bs!1098845 () Bool)

(assert (= bs!1098845 (and b!4705539 b!4705530)))

(assert (=> bs!1098845 (= (= lt!1869496 lt!1870019) (= lambda!211480 lambda!211474))))

(declare-fun bs!1098846 () Bool)

(assert (= bs!1098846 (and b!4705539 d!1497456)))

(assert (=> bs!1098846 (= (= lt!1869496 lt!1870011) (= lambda!211480 lambda!211475))))

(declare-fun bs!1098847 () Bool)

(assert (= bs!1098847 (and b!4705539 b!4705428)))

(assert (=> bs!1098847 (= lambda!211480 lambda!211458)))

(declare-fun bs!1098848 () Bool)

(assert (= bs!1098848 (and b!4705539 b!4705430)))

(assert (=> bs!1098848 (= lambda!211480 lambda!211457)))

(declare-fun bs!1098849 () Bool)

(assert (= bs!1098849 (and b!4705539 d!1497294)))

(assert (=> bs!1098849 (not (= lambda!211480 lambda!211392))))

(assert (=> bs!1098845 (= lambda!211480 lambda!211473)))

(assert (=> bs!1098847 (= (= lt!1869496 lt!1869926) (= lambda!211480 lambda!211459))))

(declare-fun bs!1098850 () Bool)

(assert (= bs!1098850 (and b!4705539 d!1497206)))

(assert (=> bs!1098850 (not (= lambda!211480 lambda!211342))))

(assert (=> b!4705539 true))

(declare-fun bs!1098851 () Bool)

(declare-fun b!4705537 () Bool)

(assert (= bs!1098851 (and b!4705537 d!1497320)))

(declare-fun lambda!211481 () Int)

(assert (=> bs!1098851 (= (= lt!1869496 lt!1869918) (= lambda!211481 lambda!211460))))

(declare-fun bs!1098852 () Bool)

(assert (= bs!1098852 (and b!4705537 b!4705530)))

(assert (=> bs!1098852 (= (= lt!1869496 lt!1870019) (= lambda!211481 lambda!211474))))

(declare-fun bs!1098853 () Bool)

(assert (= bs!1098853 (and b!4705537 d!1497456)))

(assert (=> bs!1098853 (= (= lt!1869496 lt!1870011) (= lambda!211481 lambda!211475))))

(declare-fun bs!1098854 () Bool)

(assert (= bs!1098854 (and b!4705537 b!4705428)))

(assert (=> bs!1098854 (= lambda!211481 lambda!211458)))

(declare-fun bs!1098855 () Bool)

(assert (= bs!1098855 (and b!4705537 b!4705430)))

(assert (=> bs!1098855 (= lambda!211481 lambda!211457)))

(declare-fun bs!1098856 () Bool)

(assert (= bs!1098856 (and b!4705537 d!1497294)))

(assert (=> bs!1098856 (not (= lambda!211481 lambda!211392))))

(declare-fun bs!1098857 () Bool)

(assert (= bs!1098857 (and b!4705537 b!4705532)))

(assert (=> bs!1098857 (= lambda!211481 lambda!211472)))

(declare-fun bs!1098858 () Bool)

(assert (= bs!1098858 (and b!4705537 b!4705539)))

(assert (=> bs!1098858 (= lambda!211481 lambda!211480)))

(assert (=> bs!1098852 (= lambda!211481 lambda!211473)))

(assert (=> bs!1098854 (= (= lt!1869496 lt!1869926) (= lambda!211481 lambda!211459))))

(declare-fun bs!1098859 () Bool)

(assert (= bs!1098859 (and b!4705537 d!1497206)))

(assert (=> bs!1098859 (not (= lambda!211481 lambda!211342))))

(assert (=> b!4705537 true))

(declare-fun lt!1870047 () ListMap!5077)

(declare-fun lambda!211482 () Int)

(assert (=> b!4705537 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211481))))

(assert (=> bs!1098851 (= (= lt!1870047 lt!1869918) (= lambda!211482 lambda!211460))))

(assert (=> bs!1098852 (= (= lt!1870047 lt!1870019) (= lambda!211482 lambda!211474))))

(assert (=> bs!1098853 (= (= lt!1870047 lt!1870011) (= lambda!211482 lambda!211475))))

(assert (=> bs!1098854 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211458))))

(assert (=> bs!1098855 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211457))))

(assert (=> bs!1098856 (not (= lambda!211482 lambda!211392))))

(assert (=> bs!1098857 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211472))))

(assert (=> bs!1098858 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211480))))

(assert (=> bs!1098852 (= (= lt!1870047 lt!1869496) (= lambda!211482 lambda!211473))))

(assert (=> bs!1098854 (= (= lt!1870047 lt!1869926) (= lambda!211482 lambda!211459))))

(assert (=> bs!1098859 (not (= lambda!211482 lambda!211342))))

(assert (=> b!4705537 true))

(declare-fun bs!1098860 () Bool)

(declare-fun d!1497468 () Bool)

(assert (= bs!1098860 (and d!1497468 b!4705537)))

(declare-fun lt!1870039 () ListMap!5077)

(declare-fun lambda!211483 () Int)

(assert (=> bs!1098860 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211481))))

(declare-fun bs!1098861 () Bool)

(assert (= bs!1098861 (and d!1497468 d!1497320)))

(assert (=> bs!1098861 (= (= lt!1870039 lt!1869918) (= lambda!211483 lambda!211460))))

(declare-fun bs!1098862 () Bool)

(assert (= bs!1098862 (and d!1497468 b!4705530)))

(assert (=> bs!1098862 (= (= lt!1870039 lt!1870019) (= lambda!211483 lambda!211474))))

(declare-fun bs!1098863 () Bool)

(assert (= bs!1098863 (and d!1497468 d!1497456)))

(assert (=> bs!1098863 (= (= lt!1870039 lt!1870011) (= lambda!211483 lambda!211475))))

(declare-fun bs!1098864 () Bool)

(assert (= bs!1098864 (and d!1497468 b!4705428)))

(assert (=> bs!1098864 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211458))))

(declare-fun bs!1098865 () Bool)

(assert (= bs!1098865 (and d!1497468 b!4705430)))

(assert (=> bs!1098865 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211457))))

(assert (=> bs!1098860 (= (= lt!1870039 lt!1870047) (= lambda!211483 lambda!211482))))

(declare-fun bs!1098866 () Bool)

(assert (= bs!1098866 (and d!1497468 d!1497294)))

(assert (=> bs!1098866 (not (= lambda!211483 lambda!211392))))

(declare-fun bs!1098867 () Bool)

(assert (= bs!1098867 (and d!1497468 b!4705532)))

(assert (=> bs!1098867 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211472))))

(declare-fun bs!1098868 () Bool)

(assert (= bs!1098868 (and d!1497468 b!4705539)))

(assert (=> bs!1098868 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211480))))

(assert (=> bs!1098862 (= (= lt!1870039 lt!1869496) (= lambda!211483 lambda!211473))))

(assert (=> bs!1098864 (= (= lt!1870039 lt!1869926) (= lambda!211483 lambda!211459))))

(declare-fun bs!1098869 () Bool)

(assert (= bs!1098869 (and d!1497468 d!1497206)))

(assert (=> bs!1098869 (not (= lambda!211483 lambda!211342))))

(assert (=> d!1497468 true))

(declare-fun e!2935250 () Bool)

(assert (=> d!1497468 e!2935250))

(declare-fun res!1987498 () Bool)

(assert (=> d!1497468 (=> (not res!1987498) (not e!2935250))))

(assert (=> d!1497468 (= res!1987498 (forall!11429 (Cons!52573 lt!1869473 lt!1869480) lambda!211483))))

(declare-fun e!2935251 () ListMap!5077)

(assert (=> d!1497468 (= lt!1870039 e!2935251)))

(declare-fun c!804244 () Bool)

(assert (=> d!1497468 (= c!804244 ((_ is Nil!52573) (Cons!52573 lt!1869473 lt!1869480)))))

(assert (=> d!1497468 (noDuplicateKeys!1912 (Cons!52573 lt!1869473 lt!1869480))))

(assert (=> d!1497468 (= (addToMapMapFromBucket!1344 (Cons!52573 lt!1869473 lt!1869480) lt!1869496) lt!1870039)))

(assert (=> b!4705537 (= e!2935251 lt!1870047)))

(declare-fun lt!1870049 () ListMap!5077)

(assert (=> b!4705537 (= lt!1870049 (+!2196 lt!1869496 (h!58866 (Cons!52573 lt!1869473 lt!1869480))))))

(assert (=> b!4705537 (= lt!1870047 (addToMapMapFromBucket!1344 (t!359921 (Cons!52573 lt!1869473 lt!1869480)) (+!2196 lt!1869496 (h!58866 (Cons!52573 lt!1869473 lt!1869480)))))))

(declare-fun lt!1870054 () Unit!126988)

(declare-fun call!329000 () Unit!126988)

(assert (=> b!4705537 (= lt!1870054 call!329000)))

(assert (=> b!4705537 (forall!11429 (toList!5713 lt!1869496) lambda!211481)))

(declare-fun lt!1870053 () Unit!126988)

(assert (=> b!4705537 (= lt!1870053 lt!1870054)))

(declare-fun call!328999 () Bool)

(assert (=> b!4705537 call!328999))

(declare-fun lt!1870045 () Unit!126988)

(declare-fun Unit!127075 () Unit!126988)

(assert (=> b!4705537 (= lt!1870045 Unit!127075)))

(assert (=> b!4705537 (forall!11429 (t!359921 (Cons!52573 lt!1869473 lt!1869480)) lambda!211482)))

(declare-fun lt!1870046 () Unit!126988)

(declare-fun Unit!127076 () Unit!126988)

(assert (=> b!4705537 (= lt!1870046 Unit!127076)))

(declare-fun lt!1870051 () Unit!126988)

(declare-fun Unit!127077 () Unit!126988)

(assert (=> b!4705537 (= lt!1870051 Unit!127077)))

(declare-fun lt!1870055 () Unit!126988)

(assert (=> b!4705537 (= lt!1870055 (forallContained!3536 (toList!5713 lt!1870049) lambda!211482 (h!58866 (Cons!52573 lt!1869473 lt!1869480))))))

(assert (=> b!4705537 (contains!15880 lt!1870049 (_1!30315 (h!58866 (Cons!52573 lt!1869473 lt!1869480))))))

(declare-fun lt!1870037 () Unit!126988)

(declare-fun Unit!127078 () Unit!126988)

(assert (=> b!4705537 (= lt!1870037 Unit!127078)))

(assert (=> b!4705537 (contains!15880 lt!1870047 (_1!30315 (h!58866 (Cons!52573 lt!1869473 lt!1869480))))))

(declare-fun lt!1870048 () Unit!126988)

(declare-fun Unit!127079 () Unit!126988)

(assert (=> b!4705537 (= lt!1870048 Unit!127079)))

(assert (=> b!4705537 (forall!11429 (Cons!52573 lt!1869473 lt!1869480) lambda!211482)))

(declare-fun lt!1870042 () Unit!126988)

(declare-fun Unit!127080 () Unit!126988)

(assert (=> b!4705537 (= lt!1870042 Unit!127080)))

(assert (=> b!4705537 (forall!11429 (toList!5713 lt!1870049) lambda!211482)))

(declare-fun lt!1870043 () Unit!126988)

(declare-fun Unit!127081 () Unit!126988)

(assert (=> b!4705537 (= lt!1870043 Unit!127081)))

(declare-fun lt!1870036 () Unit!126988)

(declare-fun Unit!127082 () Unit!126988)

(assert (=> b!4705537 (= lt!1870036 Unit!127082)))

(declare-fun lt!1870052 () Unit!126988)

(assert (=> b!4705537 (= lt!1870052 (addForallContainsKeyThenBeforeAdding!745 lt!1869496 lt!1870047 (_1!30315 (h!58866 (Cons!52573 lt!1869473 lt!1869480))) (_2!30315 (h!58866 (Cons!52573 lt!1869473 lt!1869480)))))))

(assert (=> b!4705537 (forall!11429 (toList!5713 lt!1869496) lambda!211482)))

(declare-fun lt!1870038 () Unit!126988)

(assert (=> b!4705537 (= lt!1870038 lt!1870052)))

(assert (=> b!4705537 (forall!11429 (toList!5713 lt!1869496) lambda!211482)))

(declare-fun lt!1870044 () Unit!126988)

(declare-fun Unit!127083 () Unit!126988)

(assert (=> b!4705537 (= lt!1870044 Unit!127083)))

(declare-fun res!1987497 () Bool)

(declare-fun call!328998 () Bool)

(assert (=> b!4705537 (= res!1987497 call!328998)))

(declare-fun e!2935252 () Bool)

(assert (=> b!4705537 (=> (not res!1987497) (not e!2935252))))

(assert (=> b!4705537 e!2935252))

(declare-fun lt!1870041 () Unit!126988)

(declare-fun Unit!127084 () Unit!126988)

(assert (=> b!4705537 (= lt!1870041 Unit!127084)))

(declare-fun bm!328993 () Bool)

(assert (=> bm!328993 (= call!329000 (lemmaContainsAllItsOwnKeys!746 lt!1869496))))

(declare-fun bm!328994 () Bool)

(assert (=> bm!328994 (= call!328999 (forall!11429 (ite c!804244 (toList!5713 lt!1869496) (toList!5713 lt!1870049)) (ite c!804244 lambda!211480 lambda!211482)))))

(declare-fun b!4705538 () Bool)

(declare-fun res!1987496 () Bool)

(assert (=> b!4705538 (=> (not res!1987496) (not e!2935250))))

(assert (=> b!4705538 (= res!1987496 (forall!11429 (toList!5713 lt!1869496) lambda!211483))))

(assert (=> b!4705539 (= e!2935251 lt!1869496)))

(declare-fun lt!1870040 () Unit!126988)

(assert (=> b!4705539 (= lt!1870040 call!329000)))

(assert (=> b!4705539 call!328999))

(declare-fun lt!1870056 () Unit!126988)

(assert (=> b!4705539 (= lt!1870056 lt!1870040)))

(assert (=> b!4705539 call!328998))

(declare-fun lt!1870050 () Unit!126988)

(declare-fun Unit!127085 () Unit!126988)

(assert (=> b!4705539 (= lt!1870050 Unit!127085)))

(declare-fun b!4705540 () Bool)

(assert (=> b!4705540 (= e!2935250 (invariantList!1458 (toList!5713 lt!1870039)))))

(declare-fun bm!328995 () Bool)

(assert (=> bm!328995 (= call!328998 (forall!11429 (ite c!804244 (toList!5713 lt!1869496) (Cons!52573 lt!1869473 lt!1869480)) (ite c!804244 lambda!211480 lambda!211482)))))

(declare-fun b!4705541 () Bool)

(assert (=> b!4705541 (= e!2935252 (forall!11429 (toList!5713 lt!1869496) lambda!211482))))

(assert (= (and d!1497468 c!804244) b!4705539))

(assert (= (and d!1497468 (not c!804244)) b!4705537))

(assert (= (and b!4705537 res!1987497) b!4705541))

(assert (= (or b!4705539 b!4705537) bm!328993))

(assert (= (or b!4705539 b!4705537) bm!328994))

(assert (= (or b!4705539 b!4705537) bm!328995))

(assert (= (and d!1497468 res!1987498) b!4705538))

(assert (= (and b!4705538 res!1987496) b!4705540))

(declare-fun m!5626967 () Bool)

(assert (=> b!4705537 m!5626967))

(declare-fun m!5626969 () Bool)

(assert (=> b!4705537 m!5626969))

(declare-fun m!5626971 () Bool)

(assert (=> b!4705537 m!5626971))

(declare-fun m!5626973 () Bool)

(assert (=> b!4705537 m!5626973))

(declare-fun m!5626975 () Bool)

(assert (=> b!4705537 m!5626975))

(assert (=> b!4705537 m!5626971))

(declare-fun m!5626977 () Bool)

(assert (=> b!4705537 m!5626977))

(declare-fun m!5626979 () Bool)

(assert (=> b!4705537 m!5626979))

(declare-fun m!5626981 () Bool)

(assert (=> b!4705537 m!5626981))

(assert (=> b!4705537 m!5626973))

(declare-fun m!5626983 () Bool)

(assert (=> b!4705537 m!5626983))

(declare-fun m!5626985 () Bool)

(assert (=> b!4705537 m!5626985))

(declare-fun m!5626987 () Bool)

(assert (=> b!4705537 m!5626987))

(declare-fun m!5626989 () Bool)

(assert (=> d!1497468 m!5626989))

(declare-fun m!5626991 () Bool)

(assert (=> d!1497468 m!5626991))

(assert (=> bm!328993 m!5626773))

(declare-fun m!5626993 () Bool)

(assert (=> b!4705538 m!5626993))

(declare-fun m!5626995 () Bool)

(assert (=> b!4705540 m!5626995))

(declare-fun m!5626997 () Bool)

(assert (=> bm!328995 m!5626997))

(assert (=> b!4705541 m!5626971))

(declare-fun m!5626999 () Bool)

(assert (=> bm!328994 m!5626999))

(assert (=> b!4705105 d!1497468))

(declare-fun d!1497470 () Bool)

(declare-fun e!2935253 () Bool)

(assert (=> d!1497470 e!2935253))

(declare-fun res!1987500 () Bool)

(assert (=> d!1497470 (=> (not res!1987500) (not e!2935253))))

(declare-fun lt!1870057 () ListMap!5077)

(assert (=> d!1497470 (= res!1987500 (contains!15880 lt!1870057 (_1!30315 lt!1869497)))))

(declare-fun lt!1870059 () List!52697)

(assert (=> d!1497470 (= lt!1870057 (ListMap!5078 lt!1870059))))

(declare-fun lt!1870058 () Unit!126988)

(declare-fun lt!1870060 () Unit!126988)

(assert (=> d!1497470 (= lt!1870058 lt!1870060)))

(assert (=> d!1497470 (= (getValueByKey!1876 lt!1870059 (_1!30315 lt!1869497)) (Some!12233 (_2!30315 lt!1869497)))))

(assert (=> d!1497470 (= lt!1870060 (lemmaContainsTupThenGetReturnValue!1048 lt!1870059 (_1!30315 lt!1869497) (_2!30315 lt!1869497)))))

(assert (=> d!1497470 (= lt!1870059 (insertNoDuplicatedKeys!556 (toList!5713 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496)) (_1!30315 lt!1869497) (_2!30315 lt!1869497)))))

(assert (=> d!1497470 (= (+!2196 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1869497) lt!1870057)))

(declare-fun b!4705542 () Bool)

(declare-fun res!1987499 () Bool)

(assert (=> b!4705542 (=> (not res!1987499) (not e!2935253))))

(assert (=> b!4705542 (= res!1987499 (= (getValueByKey!1876 (toList!5713 lt!1870057) (_1!30315 lt!1869497)) (Some!12233 (_2!30315 lt!1869497))))))

(declare-fun b!4705543 () Bool)

(assert (=> b!4705543 (= e!2935253 (contains!15884 (toList!5713 lt!1870057) lt!1869497))))

(assert (= (and d!1497470 res!1987500) b!4705542))

(assert (= (and b!4705542 res!1987499) b!4705543))

(declare-fun m!5627001 () Bool)

(assert (=> d!1497470 m!5627001))

(declare-fun m!5627003 () Bool)

(assert (=> d!1497470 m!5627003))

(declare-fun m!5627005 () Bool)

(assert (=> d!1497470 m!5627005))

(declare-fun m!5627007 () Bool)

(assert (=> d!1497470 m!5627007))

(declare-fun m!5627009 () Bool)

(assert (=> b!4705542 m!5627009))

(declare-fun m!5627011 () Bool)

(assert (=> b!4705543 m!5627011))

(assert (=> b!4705105 d!1497470))

(declare-fun d!1497472 () Bool)

(assert (=> d!1497472 (= (head!10088 newBucket!218) (h!58866 newBucket!218))))

(assert (=> b!4705105 d!1497472))

(declare-fun bs!1098870 () Bool)

(declare-fun d!1497474 () Bool)

(assert (= bs!1098870 (and d!1497474 d!1497282)))

(declare-fun lambda!211484 () Int)

(assert (=> bs!1098870 (= lambda!211484 lambda!211364)))

(declare-fun bs!1098871 () Bool)

(assert (= bs!1098871 (and d!1497474 start!477700)))

(assert (=> bs!1098871 (= lambda!211484 lambda!211329)))

(declare-fun bs!1098872 () Bool)

(assert (= bs!1098872 (and d!1497474 d!1497286)))

(assert (=> bs!1098872 (= lambda!211484 lambda!211389)))

(declare-fun bs!1098873 () Bool)

(assert (= bs!1098873 (and d!1497474 d!1497404)))

(assert (=> bs!1098873 (= lambda!211484 lambda!211461)))

(declare-fun bs!1098874 () Bool)

(assert (= bs!1098874 (and d!1497474 d!1497440)))

(assert (=> bs!1098874 (= lambda!211484 lambda!211471)))

(declare-fun bs!1098875 () Bool)

(assert (= bs!1098875 (and d!1497474 d!1497250)))

(assert (=> bs!1098875 (= lambda!211484 lambda!211358)))

(declare-fun bs!1098876 () Bool)

(assert (= bs!1098876 (and d!1497474 d!1497278)))

(assert (=> bs!1098876 (not (= lambda!211484 lambda!211363))))

(declare-fun bs!1098877 () Bool)

(assert (= bs!1098877 (and d!1497474 d!1497458)))

(assert (=> bs!1098877 (= lambda!211484 lambda!211478)))

(declare-fun bs!1098878 () Bool)

(assert (= bs!1098878 (and d!1497474 d!1497208)))

(assert (=> bs!1098878 (= lambda!211484 lambda!211351)))

(declare-fun bs!1098879 () Bool)

(assert (= bs!1098879 (and d!1497474 d!1497434)))

(assert (=> bs!1098879 (= lambda!211484 lambda!211468)))

(declare-fun bs!1098880 () Bool)

(assert (= bs!1098880 (and d!1497474 d!1497264)))

(assert (=> bs!1098880 (= lambda!211484 lambda!211359)))

(declare-fun bs!1098881 () Bool)

(assert (= bs!1098881 (and d!1497474 d!1497272)))

(assert (=> bs!1098881 (= lambda!211484 lambda!211360)))

(declare-fun bs!1098882 () Bool)

(assert (= bs!1098882 (and d!1497474 d!1497460)))

(assert (=> bs!1098882 (= lambda!211484 lambda!211479)))

(declare-fun lt!1870061 () ListMap!5077)

(assert (=> d!1497474 (invariantList!1458 (toList!5713 lt!1870061))))

(declare-fun e!2935254 () ListMap!5077)

(assert (=> d!1497474 (= lt!1870061 e!2935254)))

(declare-fun c!804245 () Bool)

(assert (=> d!1497474 (= c!804245 ((_ is Cons!52574) lt!1869474))))

(assert (=> d!1497474 (forall!11427 lt!1869474 lambda!211484)))

(assert (=> d!1497474 (= (extractMap!1938 lt!1869474) lt!1870061)))

(declare-fun b!4705544 () Bool)

(assert (=> b!4705544 (= e!2935254 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 lt!1869474)) (extractMap!1938 (t!359922 lt!1869474))))))

(declare-fun b!4705545 () Bool)

(assert (=> b!4705545 (= e!2935254 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497474 c!804245) b!4705544))

(assert (= (and d!1497474 (not c!804245)) b!4705545))

(declare-fun m!5627013 () Bool)

(assert (=> d!1497474 m!5627013))

(declare-fun m!5627015 () Bool)

(assert (=> d!1497474 m!5627015))

(declare-fun m!5627017 () Bool)

(assert (=> b!4705544 m!5627017))

(assert (=> b!4705544 m!5627017))

(declare-fun m!5627019 () Bool)

(assert (=> b!4705544 m!5627019))

(assert (=> b!4705105 d!1497474))

(declare-fun bs!1098883 () Bool)

(declare-fun b!4705548 () Bool)

(assert (= bs!1098883 (and b!4705548 d!1497468)))

(declare-fun lambda!211485 () Int)

(assert (=> bs!1098883 (= (= lt!1869496 lt!1870039) (= lambda!211485 lambda!211483))))

(declare-fun bs!1098884 () Bool)

(assert (= bs!1098884 (and b!4705548 b!4705537)))

(assert (=> bs!1098884 (= lambda!211485 lambda!211481)))

(declare-fun bs!1098885 () Bool)

(assert (= bs!1098885 (and b!4705548 d!1497320)))

(assert (=> bs!1098885 (= (= lt!1869496 lt!1869918) (= lambda!211485 lambda!211460))))

(declare-fun bs!1098886 () Bool)

(assert (= bs!1098886 (and b!4705548 b!4705530)))

(assert (=> bs!1098886 (= (= lt!1869496 lt!1870019) (= lambda!211485 lambda!211474))))

(declare-fun bs!1098887 () Bool)

(assert (= bs!1098887 (and b!4705548 d!1497456)))

(assert (=> bs!1098887 (= (= lt!1869496 lt!1870011) (= lambda!211485 lambda!211475))))

(declare-fun bs!1098888 () Bool)

(assert (= bs!1098888 (and b!4705548 b!4705428)))

(assert (=> bs!1098888 (= lambda!211485 lambda!211458)))

(declare-fun bs!1098889 () Bool)

(assert (= bs!1098889 (and b!4705548 b!4705430)))

(assert (=> bs!1098889 (= lambda!211485 lambda!211457)))

(assert (=> bs!1098884 (= (= lt!1869496 lt!1870047) (= lambda!211485 lambda!211482))))

(declare-fun bs!1098890 () Bool)

(assert (= bs!1098890 (and b!4705548 d!1497294)))

(assert (=> bs!1098890 (not (= lambda!211485 lambda!211392))))

(declare-fun bs!1098891 () Bool)

(assert (= bs!1098891 (and b!4705548 b!4705532)))

(assert (=> bs!1098891 (= lambda!211485 lambda!211472)))

(declare-fun bs!1098892 () Bool)

(assert (= bs!1098892 (and b!4705548 b!4705539)))

(assert (=> bs!1098892 (= lambda!211485 lambda!211480)))

(assert (=> bs!1098886 (= lambda!211485 lambda!211473)))

(assert (=> bs!1098888 (= (= lt!1869496 lt!1869926) (= lambda!211485 lambda!211459))))

(declare-fun bs!1098893 () Bool)

(assert (= bs!1098893 (and b!4705548 d!1497206)))

(assert (=> bs!1098893 (not (= lambda!211485 lambda!211342))))

(assert (=> b!4705548 true))

(declare-fun bs!1098894 () Bool)

(declare-fun b!4705546 () Bool)

(assert (= bs!1098894 (and b!4705546 d!1497468)))

(declare-fun lambda!211486 () Int)

(assert (=> bs!1098894 (= (= lt!1869496 lt!1870039) (= lambda!211486 lambda!211483))))

(declare-fun bs!1098895 () Bool)

(assert (= bs!1098895 (and b!4705546 b!4705537)))

(assert (=> bs!1098895 (= lambda!211486 lambda!211481)))

(declare-fun bs!1098896 () Bool)

(assert (= bs!1098896 (and b!4705546 b!4705548)))

(assert (=> bs!1098896 (= lambda!211486 lambda!211485)))

(declare-fun bs!1098897 () Bool)

(assert (= bs!1098897 (and b!4705546 d!1497320)))

(assert (=> bs!1098897 (= (= lt!1869496 lt!1869918) (= lambda!211486 lambda!211460))))

(declare-fun bs!1098898 () Bool)

(assert (= bs!1098898 (and b!4705546 b!4705530)))

(assert (=> bs!1098898 (= (= lt!1869496 lt!1870019) (= lambda!211486 lambda!211474))))

(declare-fun bs!1098899 () Bool)

(assert (= bs!1098899 (and b!4705546 d!1497456)))

(assert (=> bs!1098899 (= (= lt!1869496 lt!1870011) (= lambda!211486 lambda!211475))))

(declare-fun bs!1098900 () Bool)

(assert (= bs!1098900 (and b!4705546 b!4705428)))

(assert (=> bs!1098900 (= lambda!211486 lambda!211458)))

(declare-fun bs!1098901 () Bool)

(assert (= bs!1098901 (and b!4705546 b!4705430)))

(assert (=> bs!1098901 (= lambda!211486 lambda!211457)))

(assert (=> bs!1098895 (= (= lt!1869496 lt!1870047) (= lambda!211486 lambda!211482))))

(declare-fun bs!1098902 () Bool)

(assert (= bs!1098902 (and b!4705546 d!1497294)))

(assert (=> bs!1098902 (not (= lambda!211486 lambda!211392))))

(declare-fun bs!1098903 () Bool)

(assert (= bs!1098903 (and b!4705546 b!4705532)))

(assert (=> bs!1098903 (= lambda!211486 lambda!211472)))

(declare-fun bs!1098904 () Bool)

(assert (= bs!1098904 (and b!4705546 b!4705539)))

(assert (=> bs!1098904 (= lambda!211486 lambda!211480)))

(assert (=> bs!1098898 (= lambda!211486 lambda!211473)))

(assert (=> bs!1098900 (= (= lt!1869496 lt!1869926) (= lambda!211486 lambda!211459))))

(declare-fun bs!1098905 () Bool)

(assert (= bs!1098905 (and b!4705546 d!1497206)))

(assert (=> bs!1098905 (not (= lambda!211486 lambda!211342))))

(assert (=> b!4705546 true))

(declare-fun lt!1870073 () ListMap!5077)

(declare-fun lambda!211487 () Int)

(assert (=> bs!1098894 (= (= lt!1870073 lt!1870039) (= lambda!211487 lambda!211483))))

(assert (=> bs!1098895 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211481))))

(assert (=> b!4705546 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211486))))

(assert (=> bs!1098896 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211485))))

(assert (=> bs!1098897 (= (= lt!1870073 lt!1869918) (= lambda!211487 lambda!211460))))

(assert (=> bs!1098898 (= (= lt!1870073 lt!1870019) (= lambda!211487 lambda!211474))))

(assert (=> bs!1098899 (= (= lt!1870073 lt!1870011) (= lambda!211487 lambda!211475))))

(assert (=> bs!1098900 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211458))))

(assert (=> bs!1098901 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211457))))

(assert (=> bs!1098895 (= (= lt!1870073 lt!1870047) (= lambda!211487 lambda!211482))))

(assert (=> bs!1098902 (not (= lambda!211487 lambda!211392))))

(assert (=> bs!1098903 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211472))))

(assert (=> bs!1098904 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211480))))

(assert (=> bs!1098898 (= (= lt!1870073 lt!1869496) (= lambda!211487 lambda!211473))))

(assert (=> bs!1098900 (= (= lt!1870073 lt!1869926) (= lambda!211487 lambda!211459))))

(assert (=> bs!1098905 (not (= lambda!211487 lambda!211342))))

(assert (=> b!4705546 true))

(declare-fun bs!1098906 () Bool)

(declare-fun d!1497476 () Bool)

(assert (= bs!1098906 (and d!1497476 d!1497468)))

(declare-fun lt!1870065 () ListMap!5077)

(declare-fun lambda!211488 () Int)

(assert (=> bs!1098906 (= (= lt!1870065 lt!1870039) (= lambda!211488 lambda!211483))))

(declare-fun bs!1098907 () Bool)

(assert (= bs!1098907 (and d!1497476 b!4705537)))

(assert (=> bs!1098907 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211481))))

(declare-fun bs!1098908 () Bool)

(assert (= bs!1098908 (and d!1497476 b!4705546)))

(assert (=> bs!1098908 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211486))))

(declare-fun bs!1098909 () Bool)

(assert (= bs!1098909 (and d!1497476 b!4705548)))

(assert (=> bs!1098909 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211485))))

(declare-fun bs!1098910 () Bool)

(assert (= bs!1098910 (and d!1497476 d!1497320)))

(assert (=> bs!1098910 (= (= lt!1870065 lt!1869918) (= lambda!211488 lambda!211460))))

(declare-fun bs!1098911 () Bool)

(assert (= bs!1098911 (and d!1497476 b!4705530)))

(assert (=> bs!1098911 (= (= lt!1870065 lt!1870019) (= lambda!211488 lambda!211474))))

(assert (=> bs!1098908 (= (= lt!1870065 lt!1870073) (= lambda!211488 lambda!211487))))

(declare-fun bs!1098912 () Bool)

(assert (= bs!1098912 (and d!1497476 d!1497456)))

(assert (=> bs!1098912 (= (= lt!1870065 lt!1870011) (= lambda!211488 lambda!211475))))

(declare-fun bs!1098913 () Bool)

(assert (= bs!1098913 (and d!1497476 b!4705428)))

(assert (=> bs!1098913 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211458))))

(declare-fun bs!1098914 () Bool)

(assert (= bs!1098914 (and d!1497476 b!4705430)))

(assert (=> bs!1098914 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211457))))

(assert (=> bs!1098907 (= (= lt!1870065 lt!1870047) (= lambda!211488 lambda!211482))))

(declare-fun bs!1098915 () Bool)

(assert (= bs!1098915 (and d!1497476 d!1497294)))

(assert (=> bs!1098915 (not (= lambda!211488 lambda!211392))))

(declare-fun bs!1098916 () Bool)

(assert (= bs!1098916 (and d!1497476 b!4705532)))

(assert (=> bs!1098916 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211472))))

(declare-fun bs!1098917 () Bool)

(assert (= bs!1098917 (and d!1497476 b!4705539)))

(assert (=> bs!1098917 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211480))))

(assert (=> bs!1098911 (= (= lt!1870065 lt!1869496) (= lambda!211488 lambda!211473))))

(assert (=> bs!1098913 (= (= lt!1870065 lt!1869926) (= lambda!211488 lambda!211459))))

(declare-fun bs!1098918 () Bool)

(assert (= bs!1098918 (and d!1497476 d!1497206)))

(assert (=> bs!1098918 (not (= lambda!211488 lambda!211342))))

(assert (=> d!1497476 true))

(declare-fun e!2935255 () Bool)

(assert (=> d!1497476 e!2935255))

(declare-fun res!1987503 () Bool)

(assert (=> d!1497476 (=> (not res!1987503) (not e!2935255))))

(assert (=> d!1497476 (= res!1987503 (forall!11429 (Cons!52573 lt!1869497 lt!1869508) lambda!211488))))

(declare-fun e!2935256 () ListMap!5077)

(assert (=> d!1497476 (= lt!1870065 e!2935256)))

(declare-fun c!804246 () Bool)

(assert (=> d!1497476 (= c!804246 ((_ is Nil!52573) (Cons!52573 lt!1869497 lt!1869508)))))

(assert (=> d!1497476 (noDuplicateKeys!1912 (Cons!52573 lt!1869497 lt!1869508))))

(assert (=> d!1497476 (= (addToMapMapFromBucket!1344 (Cons!52573 lt!1869497 lt!1869508) lt!1869496) lt!1870065)))

(assert (=> b!4705546 (= e!2935256 lt!1870073)))

(declare-fun lt!1870075 () ListMap!5077)

(assert (=> b!4705546 (= lt!1870075 (+!2196 lt!1869496 (h!58866 (Cons!52573 lt!1869497 lt!1869508))))))

(assert (=> b!4705546 (= lt!1870073 (addToMapMapFromBucket!1344 (t!359921 (Cons!52573 lt!1869497 lt!1869508)) (+!2196 lt!1869496 (h!58866 (Cons!52573 lt!1869497 lt!1869508)))))))

(declare-fun lt!1870080 () Unit!126988)

(declare-fun call!329003 () Unit!126988)

(assert (=> b!4705546 (= lt!1870080 call!329003)))

(assert (=> b!4705546 (forall!11429 (toList!5713 lt!1869496) lambda!211486)))

(declare-fun lt!1870079 () Unit!126988)

(assert (=> b!4705546 (= lt!1870079 lt!1870080)))

(declare-fun call!329002 () Bool)

(assert (=> b!4705546 call!329002))

(declare-fun lt!1870071 () Unit!126988)

(declare-fun Unit!127086 () Unit!126988)

(assert (=> b!4705546 (= lt!1870071 Unit!127086)))

(assert (=> b!4705546 (forall!11429 (t!359921 (Cons!52573 lt!1869497 lt!1869508)) lambda!211487)))

(declare-fun lt!1870072 () Unit!126988)

(declare-fun Unit!127087 () Unit!126988)

(assert (=> b!4705546 (= lt!1870072 Unit!127087)))

(declare-fun lt!1870077 () Unit!126988)

(declare-fun Unit!127088 () Unit!126988)

(assert (=> b!4705546 (= lt!1870077 Unit!127088)))

(declare-fun lt!1870081 () Unit!126988)

(assert (=> b!4705546 (= lt!1870081 (forallContained!3536 (toList!5713 lt!1870075) lambda!211487 (h!58866 (Cons!52573 lt!1869497 lt!1869508))))))

(assert (=> b!4705546 (contains!15880 lt!1870075 (_1!30315 (h!58866 (Cons!52573 lt!1869497 lt!1869508))))))

(declare-fun lt!1870063 () Unit!126988)

(declare-fun Unit!127089 () Unit!126988)

(assert (=> b!4705546 (= lt!1870063 Unit!127089)))

(assert (=> b!4705546 (contains!15880 lt!1870073 (_1!30315 (h!58866 (Cons!52573 lt!1869497 lt!1869508))))))

(declare-fun lt!1870074 () Unit!126988)

(declare-fun Unit!127090 () Unit!126988)

(assert (=> b!4705546 (= lt!1870074 Unit!127090)))

(assert (=> b!4705546 (forall!11429 (Cons!52573 lt!1869497 lt!1869508) lambda!211487)))

(declare-fun lt!1870068 () Unit!126988)

(declare-fun Unit!127091 () Unit!126988)

(assert (=> b!4705546 (= lt!1870068 Unit!127091)))

(assert (=> b!4705546 (forall!11429 (toList!5713 lt!1870075) lambda!211487)))

(declare-fun lt!1870069 () Unit!126988)

(declare-fun Unit!127092 () Unit!126988)

(assert (=> b!4705546 (= lt!1870069 Unit!127092)))

(declare-fun lt!1870062 () Unit!126988)

(declare-fun Unit!127093 () Unit!126988)

(assert (=> b!4705546 (= lt!1870062 Unit!127093)))

(declare-fun lt!1870078 () Unit!126988)

(assert (=> b!4705546 (= lt!1870078 (addForallContainsKeyThenBeforeAdding!745 lt!1869496 lt!1870073 (_1!30315 (h!58866 (Cons!52573 lt!1869497 lt!1869508))) (_2!30315 (h!58866 (Cons!52573 lt!1869497 lt!1869508)))))))

(assert (=> b!4705546 (forall!11429 (toList!5713 lt!1869496) lambda!211487)))

(declare-fun lt!1870064 () Unit!126988)

(assert (=> b!4705546 (= lt!1870064 lt!1870078)))

(assert (=> b!4705546 (forall!11429 (toList!5713 lt!1869496) lambda!211487)))

(declare-fun lt!1870070 () Unit!126988)

(declare-fun Unit!127094 () Unit!126988)

(assert (=> b!4705546 (= lt!1870070 Unit!127094)))

(declare-fun res!1987502 () Bool)

(declare-fun call!329001 () Bool)

(assert (=> b!4705546 (= res!1987502 call!329001)))

(declare-fun e!2935257 () Bool)

(assert (=> b!4705546 (=> (not res!1987502) (not e!2935257))))

(assert (=> b!4705546 e!2935257))

(declare-fun lt!1870067 () Unit!126988)

(declare-fun Unit!127095 () Unit!126988)

(assert (=> b!4705546 (= lt!1870067 Unit!127095)))

(declare-fun bm!328996 () Bool)

(assert (=> bm!328996 (= call!329003 (lemmaContainsAllItsOwnKeys!746 lt!1869496))))

(declare-fun bm!328997 () Bool)

(assert (=> bm!328997 (= call!329002 (forall!11429 (ite c!804246 (toList!5713 lt!1869496) (toList!5713 lt!1870075)) (ite c!804246 lambda!211485 lambda!211487)))))

(declare-fun b!4705547 () Bool)

(declare-fun res!1987501 () Bool)

(assert (=> b!4705547 (=> (not res!1987501) (not e!2935255))))

(assert (=> b!4705547 (= res!1987501 (forall!11429 (toList!5713 lt!1869496) lambda!211488))))

(assert (=> b!4705548 (= e!2935256 lt!1869496)))

(declare-fun lt!1870066 () Unit!126988)

(assert (=> b!4705548 (= lt!1870066 call!329003)))

(assert (=> b!4705548 call!329002))

(declare-fun lt!1870082 () Unit!126988)

(assert (=> b!4705548 (= lt!1870082 lt!1870066)))

(assert (=> b!4705548 call!329001))

(declare-fun lt!1870076 () Unit!126988)

(declare-fun Unit!127096 () Unit!126988)

(assert (=> b!4705548 (= lt!1870076 Unit!127096)))

(declare-fun b!4705549 () Bool)

(assert (=> b!4705549 (= e!2935255 (invariantList!1458 (toList!5713 lt!1870065)))))

(declare-fun bm!328998 () Bool)

(assert (=> bm!328998 (= call!329001 (forall!11429 (ite c!804246 (toList!5713 lt!1869496) (Cons!52573 lt!1869497 lt!1869508)) (ite c!804246 lambda!211485 lambda!211487)))))

(declare-fun b!4705550 () Bool)

(assert (=> b!4705550 (= e!2935257 (forall!11429 (toList!5713 lt!1869496) lambda!211487))))

(assert (= (and d!1497476 c!804246) b!4705548))

(assert (= (and d!1497476 (not c!804246)) b!4705546))

(assert (= (and b!4705546 res!1987502) b!4705550))

(assert (= (or b!4705548 b!4705546) bm!328996))

(assert (= (or b!4705548 b!4705546) bm!328997))

(assert (= (or b!4705548 b!4705546) bm!328998))

(assert (= (and d!1497476 res!1987503) b!4705547))

(assert (= (and b!4705547 res!1987501) b!4705549))

(declare-fun m!5627021 () Bool)

(assert (=> b!4705546 m!5627021))

(declare-fun m!5627023 () Bool)

(assert (=> b!4705546 m!5627023))

(declare-fun m!5627025 () Bool)

(assert (=> b!4705546 m!5627025))

(declare-fun m!5627027 () Bool)

(assert (=> b!4705546 m!5627027))

(declare-fun m!5627029 () Bool)

(assert (=> b!4705546 m!5627029))

(assert (=> b!4705546 m!5627025))

(declare-fun m!5627031 () Bool)

(assert (=> b!4705546 m!5627031))

(declare-fun m!5627033 () Bool)

(assert (=> b!4705546 m!5627033))

(declare-fun m!5627035 () Bool)

(assert (=> b!4705546 m!5627035))

(assert (=> b!4705546 m!5627027))

(declare-fun m!5627037 () Bool)

(assert (=> b!4705546 m!5627037))

(declare-fun m!5627039 () Bool)

(assert (=> b!4705546 m!5627039))

(declare-fun m!5627041 () Bool)

(assert (=> b!4705546 m!5627041))

(declare-fun m!5627043 () Bool)

(assert (=> d!1497476 m!5627043))

(declare-fun m!5627045 () Bool)

(assert (=> d!1497476 m!5627045))

(assert (=> bm!328996 m!5626773))

(declare-fun m!5627047 () Bool)

(assert (=> b!4705547 m!5627047))

(declare-fun m!5627049 () Bool)

(assert (=> b!4705549 m!5627049))

(declare-fun m!5627051 () Bool)

(assert (=> bm!328998 m!5627051))

(assert (=> b!4705550 m!5627025))

(declare-fun m!5627053 () Bool)

(assert (=> bm!328997 m!5627053))

(assert (=> b!4705105 d!1497476))

(declare-fun bs!1098919 () Bool)

(declare-fun b!4705553 () Bool)

(assert (= bs!1098919 (and b!4705553 b!4705537)))

(declare-fun lambda!211489 () Int)

(assert (=> bs!1098919 (= lambda!211489 lambda!211481)))

(declare-fun bs!1098920 () Bool)

(assert (= bs!1098920 (and b!4705553 b!4705546)))

(assert (=> bs!1098920 (= lambda!211489 lambda!211486)))

(declare-fun bs!1098921 () Bool)

(assert (= bs!1098921 (and b!4705553 b!4705548)))

(assert (=> bs!1098921 (= lambda!211489 lambda!211485)))

(declare-fun bs!1098922 () Bool)

(assert (= bs!1098922 (and b!4705553 d!1497320)))

(assert (=> bs!1098922 (= (= lt!1869496 lt!1869918) (= lambda!211489 lambda!211460))))

(declare-fun bs!1098923 () Bool)

(assert (= bs!1098923 (and b!4705553 b!4705530)))

(assert (=> bs!1098923 (= (= lt!1869496 lt!1870019) (= lambda!211489 lambda!211474))))

(assert (=> bs!1098920 (= (= lt!1869496 lt!1870073) (= lambda!211489 lambda!211487))))

(declare-fun bs!1098924 () Bool)

(assert (= bs!1098924 (and b!4705553 d!1497456)))

(assert (=> bs!1098924 (= (= lt!1869496 lt!1870011) (= lambda!211489 lambda!211475))))

(declare-fun bs!1098925 () Bool)

(assert (= bs!1098925 (and b!4705553 b!4705428)))

(assert (=> bs!1098925 (= lambda!211489 lambda!211458)))

(declare-fun bs!1098926 () Bool)

(assert (= bs!1098926 (and b!4705553 b!4705430)))

(assert (=> bs!1098926 (= lambda!211489 lambda!211457)))

(assert (=> bs!1098919 (= (= lt!1869496 lt!1870047) (= lambda!211489 lambda!211482))))

(declare-fun bs!1098927 () Bool)

(assert (= bs!1098927 (and b!4705553 d!1497294)))

(assert (=> bs!1098927 (not (= lambda!211489 lambda!211392))))

(declare-fun bs!1098928 () Bool)

(assert (= bs!1098928 (and b!4705553 d!1497476)))

(assert (=> bs!1098928 (= (= lt!1869496 lt!1870065) (= lambda!211489 lambda!211488))))

(declare-fun bs!1098929 () Bool)

(assert (= bs!1098929 (and b!4705553 d!1497468)))

(assert (=> bs!1098929 (= (= lt!1869496 lt!1870039) (= lambda!211489 lambda!211483))))

(declare-fun bs!1098930 () Bool)

(assert (= bs!1098930 (and b!4705553 b!4705532)))

(assert (=> bs!1098930 (= lambda!211489 lambda!211472)))

(declare-fun bs!1098931 () Bool)

(assert (= bs!1098931 (and b!4705553 b!4705539)))

(assert (=> bs!1098931 (= lambda!211489 lambda!211480)))

(assert (=> bs!1098923 (= lambda!211489 lambda!211473)))

(assert (=> bs!1098925 (= (= lt!1869496 lt!1869926) (= lambda!211489 lambda!211459))))

(declare-fun bs!1098932 () Bool)

(assert (= bs!1098932 (and b!4705553 d!1497206)))

(assert (=> bs!1098932 (not (= lambda!211489 lambda!211342))))

(assert (=> b!4705553 true))

(declare-fun bs!1098933 () Bool)

(declare-fun b!4705551 () Bool)

(assert (= bs!1098933 (and b!4705551 b!4705537)))

(declare-fun lambda!211490 () Int)

(assert (=> bs!1098933 (= lambda!211490 lambda!211481)))

(declare-fun bs!1098934 () Bool)

(assert (= bs!1098934 (and b!4705551 b!4705546)))

(assert (=> bs!1098934 (= lambda!211490 lambda!211486)))

(declare-fun bs!1098935 () Bool)

(assert (= bs!1098935 (and b!4705551 b!4705548)))

(assert (=> bs!1098935 (= lambda!211490 lambda!211485)))

(declare-fun bs!1098936 () Bool)

(assert (= bs!1098936 (and b!4705551 d!1497320)))

(assert (=> bs!1098936 (= (= lt!1869496 lt!1869918) (= lambda!211490 lambda!211460))))

(declare-fun bs!1098937 () Bool)

(assert (= bs!1098937 (and b!4705551 b!4705530)))

(assert (=> bs!1098937 (= (= lt!1869496 lt!1870019) (= lambda!211490 lambda!211474))))

(declare-fun bs!1098938 () Bool)

(assert (= bs!1098938 (and b!4705551 d!1497456)))

(assert (=> bs!1098938 (= (= lt!1869496 lt!1870011) (= lambda!211490 lambda!211475))))

(declare-fun bs!1098939 () Bool)

(assert (= bs!1098939 (and b!4705551 b!4705428)))

(assert (=> bs!1098939 (= lambda!211490 lambda!211458)))

(declare-fun bs!1098940 () Bool)

(assert (= bs!1098940 (and b!4705551 b!4705430)))

(assert (=> bs!1098940 (= lambda!211490 lambda!211457)))

(assert (=> bs!1098933 (= (= lt!1869496 lt!1870047) (= lambda!211490 lambda!211482))))

(declare-fun bs!1098941 () Bool)

(assert (= bs!1098941 (and b!4705551 d!1497294)))

(assert (=> bs!1098941 (not (= lambda!211490 lambda!211392))))

(declare-fun bs!1098942 () Bool)

(assert (= bs!1098942 (and b!4705551 d!1497476)))

(assert (=> bs!1098942 (= (= lt!1869496 lt!1870065) (= lambda!211490 lambda!211488))))

(declare-fun bs!1098943 () Bool)

(assert (= bs!1098943 (and b!4705551 d!1497468)))

(assert (=> bs!1098943 (= (= lt!1869496 lt!1870039) (= lambda!211490 lambda!211483))))

(declare-fun bs!1098944 () Bool)

(assert (= bs!1098944 (and b!4705551 b!4705532)))

(assert (=> bs!1098944 (= lambda!211490 lambda!211472)))

(declare-fun bs!1098945 () Bool)

(assert (= bs!1098945 (and b!4705551 b!4705539)))

(assert (=> bs!1098945 (= lambda!211490 lambda!211480)))

(assert (=> bs!1098934 (= (= lt!1869496 lt!1870073) (= lambda!211490 lambda!211487))))

(declare-fun bs!1098946 () Bool)

(assert (= bs!1098946 (and b!4705551 b!4705553)))

(assert (=> bs!1098946 (= lambda!211490 lambda!211489)))

(assert (=> bs!1098937 (= lambda!211490 lambda!211473)))

(assert (=> bs!1098939 (= (= lt!1869496 lt!1869926) (= lambda!211490 lambda!211459))))

(declare-fun bs!1098947 () Bool)

(assert (= bs!1098947 (and b!4705551 d!1497206)))

(assert (=> bs!1098947 (not (= lambda!211490 lambda!211342))))

(assert (=> b!4705551 true))

(declare-fun lt!1870094 () ListMap!5077)

(declare-fun lambda!211491 () Int)

(assert (=> bs!1098933 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211481))))

(assert (=> bs!1098934 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211486))))

(assert (=> bs!1098935 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211485))))

(assert (=> bs!1098936 (= (= lt!1870094 lt!1869918) (= lambda!211491 lambda!211460))))

(assert (=> bs!1098937 (= (= lt!1870094 lt!1870019) (= lambda!211491 lambda!211474))))

(assert (=> bs!1098938 (= (= lt!1870094 lt!1870011) (= lambda!211491 lambda!211475))))

(assert (=> bs!1098939 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211458))))

(assert (=> bs!1098940 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211457))))

(assert (=> bs!1098933 (= (= lt!1870094 lt!1870047) (= lambda!211491 lambda!211482))))

(assert (=> bs!1098941 (not (= lambda!211491 lambda!211392))))

(assert (=> b!4705551 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211490))))

(assert (=> bs!1098942 (= (= lt!1870094 lt!1870065) (= lambda!211491 lambda!211488))))

(assert (=> bs!1098943 (= (= lt!1870094 lt!1870039) (= lambda!211491 lambda!211483))))

(assert (=> bs!1098944 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211472))))

(assert (=> bs!1098945 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211480))))

(assert (=> bs!1098934 (= (= lt!1870094 lt!1870073) (= lambda!211491 lambda!211487))))

(assert (=> bs!1098946 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211489))))

(assert (=> bs!1098937 (= (= lt!1870094 lt!1869496) (= lambda!211491 lambda!211473))))

(assert (=> bs!1098939 (= (= lt!1870094 lt!1869926) (= lambda!211491 lambda!211459))))

(assert (=> bs!1098947 (not (= lambda!211491 lambda!211342))))

(assert (=> b!4705551 true))

(declare-fun bs!1098948 () Bool)

(declare-fun d!1497478 () Bool)

(assert (= bs!1098948 (and d!1497478 b!4705537)))

(declare-fun lt!1870086 () ListMap!5077)

(declare-fun lambda!211492 () Int)

(assert (=> bs!1098948 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211481))))

(declare-fun bs!1098949 () Bool)

(assert (= bs!1098949 (and d!1497478 b!4705546)))

(assert (=> bs!1098949 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211486))))

(declare-fun bs!1098950 () Bool)

(assert (= bs!1098950 (and d!1497478 b!4705548)))

(assert (=> bs!1098950 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211485))))

(declare-fun bs!1098951 () Bool)

(assert (= bs!1098951 (and d!1497478 b!4705551)))

(assert (=> bs!1098951 (= (= lt!1870086 lt!1870094) (= lambda!211492 lambda!211491))))

(declare-fun bs!1098952 () Bool)

(assert (= bs!1098952 (and d!1497478 d!1497320)))

(assert (=> bs!1098952 (= (= lt!1870086 lt!1869918) (= lambda!211492 lambda!211460))))

(declare-fun bs!1098953 () Bool)

(assert (= bs!1098953 (and d!1497478 b!4705530)))

(assert (=> bs!1098953 (= (= lt!1870086 lt!1870019) (= lambda!211492 lambda!211474))))

(declare-fun bs!1098954 () Bool)

(assert (= bs!1098954 (and d!1497478 d!1497456)))

(assert (=> bs!1098954 (= (= lt!1870086 lt!1870011) (= lambda!211492 lambda!211475))))

(declare-fun bs!1098955 () Bool)

(assert (= bs!1098955 (and d!1497478 b!4705428)))

(assert (=> bs!1098955 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211458))))

(declare-fun bs!1098956 () Bool)

(assert (= bs!1098956 (and d!1497478 b!4705430)))

(assert (=> bs!1098956 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211457))))

(assert (=> bs!1098948 (= (= lt!1870086 lt!1870047) (= lambda!211492 lambda!211482))))

(declare-fun bs!1098957 () Bool)

(assert (= bs!1098957 (and d!1497478 d!1497294)))

(assert (=> bs!1098957 (not (= lambda!211492 lambda!211392))))

(assert (=> bs!1098951 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211490))))

(declare-fun bs!1098958 () Bool)

(assert (= bs!1098958 (and d!1497478 d!1497476)))

(assert (=> bs!1098958 (= (= lt!1870086 lt!1870065) (= lambda!211492 lambda!211488))))

(declare-fun bs!1098959 () Bool)

(assert (= bs!1098959 (and d!1497478 d!1497468)))

(assert (=> bs!1098959 (= (= lt!1870086 lt!1870039) (= lambda!211492 lambda!211483))))

(declare-fun bs!1098960 () Bool)

(assert (= bs!1098960 (and d!1497478 b!4705532)))

(assert (=> bs!1098960 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211472))))

(declare-fun bs!1098961 () Bool)

(assert (= bs!1098961 (and d!1497478 b!4705539)))

(assert (=> bs!1098961 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211480))))

(assert (=> bs!1098949 (= (= lt!1870086 lt!1870073) (= lambda!211492 lambda!211487))))

(declare-fun bs!1098962 () Bool)

(assert (= bs!1098962 (and d!1497478 b!4705553)))

(assert (=> bs!1098962 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211489))))

(assert (=> bs!1098953 (= (= lt!1870086 lt!1869496) (= lambda!211492 lambda!211473))))

(assert (=> bs!1098955 (= (= lt!1870086 lt!1869926) (= lambda!211492 lambda!211459))))

(declare-fun bs!1098963 () Bool)

(assert (= bs!1098963 (and d!1497478 d!1497206)))

(assert (=> bs!1098963 (not (= lambda!211492 lambda!211342))))

(assert (=> d!1497478 true))

(declare-fun e!2935258 () Bool)

(assert (=> d!1497478 e!2935258))

(declare-fun res!1987506 () Bool)

(assert (=> d!1497478 (=> (not res!1987506) (not e!2935258))))

(assert (=> d!1497478 (= res!1987506 (forall!11429 lt!1869508 lambda!211492))))

(declare-fun e!2935259 () ListMap!5077)

(assert (=> d!1497478 (= lt!1870086 e!2935259)))

(declare-fun c!804247 () Bool)

(assert (=> d!1497478 (= c!804247 ((_ is Nil!52573) lt!1869508))))

(assert (=> d!1497478 (noDuplicateKeys!1912 lt!1869508)))

(assert (=> d!1497478 (= (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1870086)))

(assert (=> b!4705551 (= e!2935259 lt!1870094)))

(declare-fun lt!1870096 () ListMap!5077)

(assert (=> b!4705551 (= lt!1870096 (+!2196 lt!1869496 (h!58866 lt!1869508)))))

(assert (=> b!4705551 (= lt!1870094 (addToMapMapFromBucket!1344 (t!359921 lt!1869508) (+!2196 lt!1869496 (h!58866 lt!1869508))))))

(declare-fun lt!1870101 () Unit!126988)

(declare-fun call!329006 () Unit!126988)

(assert (=> b!4705551 (= lt!1870101 call!329006)))

(assert (=> b!4705551 (forall!11429 (toList!5713 lt!1869496) lambda!211490)))

(declare-fun lt!1870100 () Unit!126988)

(assert (=> b!4705551 (= lt!1870100 lt!1870101)))

(declare-fun call!329005 () Bool)

(assert (=> b!4705551 call!329005))

(declare-fun lt!1870092 () Unit!126988)

(declare-fun Unit!127097 () Unit!126988)

(assert (=> b!4705551 (= lt!1870092 Unit!127097)))

(assert (=> b!4705551 (forall!11429 (t!359921 lt!1869508) lambda!211491)))

(declare-fun lt!1870093 () Unit!126988)

(declare-fun Unit!127098 () Unit!126988)

(assert (=> b!4705551 (= lt!1870093 Unit!127098)))

(declare-fun lt!1870098 () Unit!126988)

(declare-fun Unit!127099 () Unit!126988)

(assert (=> b!4705551 (= lt!1870098 Unit!127099)))

(declare-fun lt!1870102 () Unit!126988)

(assert (=> b!4705551 (= lt!1870102 (forallContained!3536 (toList!5713 lt!1870096) lambda!211491 (h!58866 lt!1869508)))))

(assert (=> b!4705551 (contains!15880 lt!1870096 (_1!30315 (h!58866 lt!1869508)))))

(declare-fun lt!1870084 () Unit!126988)

(declare-fun Unit!127100 () Unit!126988)

(assert (=> b!4705551 (= lt!1870084 Unit!127100)))

(assert (=> b!4705551 (contains!15880 lt!1870094 (_1!30315 (h!58866 lt!1869508)))))

(declare-fun lt!1870095 () Unit!126988)

(declare-fun Unit!127101 () Unit!126988)

(assert (=> b!4705551 (= lt!1870095 Unit!127101)))

(assert (=> b!4705551 (forall!11429 lt!1869508 lambda!211491)))

(declare-fun lt!1870089 () Unit!126988)

(declare-fun Unit!127102 () Unit!126988)

(assert (=> b!4705551 (= lt!1870089 Unit!127102)))

(assert (=> b!4705551 (forall!11429 (toList!5713 lt!1870096) lambda!211491)))

(declare-fun lt!1870090 () Unit!126988)

(declare-fun Unit!127103 () Unit!126988)

(assert (=> b!4705551 (= lt!1870090 Unit!127103)))

(declare-fun lt!1870083 () Unit!126988)

(declare-fun Unit!127104 () Unit!126988)

(assert (=> b!4705551 (= lt!1870083 Unit!127104)))

(declare-fun lt!1870099 () Unit!126988)

(assert (=> b!4705551 (= lt!1870099 (addForallContainsKeyThenBeforeAdding!745 lt!1869496 lt!1870094 (_1!30315 (h!58866 lt!1869508)) (_2!30315 (h!58866 lt!1869508))))))

(assert (=> b!4705551 (forall!11429 (toList!5713 lt!1869496) lambda!211491)))

(declare-fun lt!1870085 () Unit!126988)

(assert (=> b!4705551 (= lt!1870085 lt!1870099)))

(assert (=> b!4705551 (forall!11429 (toList!5713 lt!1869496) lambda!211491)))

(declare-fun lt!1870091 () Unit!126988)

(declare-fun Unit!127105 () Unit!126988)

(assert (=> b!4705551 (= lt!1870091 Unit!127105)))

(declare-fun res!1987505 () Bool)

(declare-fun call!329004 () Bool)

(assert (=> b!4705551 (= res!1987505 call!329004)))

(declare-fun e!2935260 () Bool)

(assert (=> b!4705551 (=> (not res!1987505) (not e!2935260))))

(assert (=> b!4705551 e!2935260))

(declare-fun lt!1870088 () Unit!126988)

(declare-fun Unit!127106 () Unit!126988)

(assert (=> b!4705551 (= lt!1870088 Unit!127106)))

(declare-fun bm!328999 () Bool)

(assert (=> bm!328999 (= call!329006 (lemmaContainsAllItsOwnKeys!746 lt!1869496))))

(declare-fun bm!329000 () Bool)

(assert (=> bm!329000 (= call!329005 (forall!11429 (ite c!804247 (toList!5713 lt!1869496) (toList!5713 lt!1870096)) (ite c!804247 lambda!211489 lambda!211491)))))

(declare-fun b!4705552 () Bool)

(declare-fun res!1987504 () Bool)

(assert (=> b!4705552 (=> (not res!1987504) (not e!2935258))))

(assert (=> b!4705552 (= res!1987504 (forall!11429 (toList!5713 lt!1869496) lambda!211492))))

(assert (=> b!4705553 (= e!2935259 lt!1869496)))

(declare-fun lt!1870087 () Unit!126988)

(assert (=> b!4705553 (= lt!1870087 call!329006)))

(assert (=> b!4705553 call!329005))

(declare-fun lt!1870103 () Unit!126988)

(assert (=> b!4705553 (= lt!1870103 lt!1870087)))

(assert (=> b!4705553 call!329004))

(declare-fun lt!1870097 () Unit!126988)

(declare-fun Unit!127107 () Unit!126988)

(assert (=> b!4705553 (= lt!1870097 Unit!127107)))

(declare-fun b!4705554 () Bool)

(assert (=> b!4705554 (= e!2935258 (invariantList!1458 (toList!5713 lt!1870086)))))

(declare-fun bm!329001 () Bool)

(assert (=> bm!329001 (= call!329004 (forall!11429 (ite c!804247 (toList!5713 lt!1869496) lt!1869508) (ite c!804247 lambda!211489 lambda!211491)))))

(declare-fun b!4705555 () Bool)

(assert (=> b!4705555 (= e!2935260 (forall!11429 (toList!5713 lt!1869496) lambda!211491))))

(assert (= (and d!1497478 c!804247) b!4705553))

(assert (= (and d!1497478 (not c!804247)) b!4705551))

(assert (= (and b!4705551 res!1987505) b!4705555))

(assert (= (or b!4705553 b!4705551) bm!328999))

(assert (= (or b!4705553 b!4705551) bm!329000))

(assert (= (or b!4705553 b!4705551) bm!329001))

(assert (= (and d!1497478 res!1987506) b!4705552))

(assert (= (and b!4705552 res!1987504) b!4705554))

(declare-fun m!5627055 () Bool)

(assert (=> b!4705551 m!5627055))

(declare-fun m!5627057 () Bool)

(assert (=> b!4705551 m!5627057))

(declare-fun m!5627059 () Bool)

(assert (=> b!4705551 m!5627059))

(declare-fun m!5627061 () Bool)

(assert (=> b!4705551 m!5627061))

(declare-fun m!5627063 () Bool)

(assert (=> b!4705551 m!5627063))

(assert (=> b!4705551 m!5627059))

(declare-fun m!5627065 () Bool)

(assert (=> b!4705551 m!5627065))

(declare-fun m!5627067 () Bool)

(assert (=> b!4705551 m!5627067))

(declare-fun m!5627069 () Bool)

(assert (=> b!4705551 m!5627069))

(assert (=> b!4705551 m!5627061))

(declare-fun m!5627071 () Bool)

(assert (=> b!4705551 m!5627071))

(declare-fun m!5627073 () Bool)

(assert (=> b!4705551 m!5627073))

(declare-fun m!5627075 () Bool)

(assert (=> b!4705551 m!5627075))

(declare-fun m!5627077 () Bool)

(assert (=> d!1497478 m!5627077))

(declare-fun m!5627079 () Bool)

(assert (=> d!1497478 m!5627079))

(assert (=> bm!328999 m!5626773))

(declare-fun m!5627081 () Bool)

(assert (=> b!4705552 m!5627081))

(declare-fun m!5627083 () Bool)

(assert (=> b!4705554 m!5627083))

(declare-fun m!5627085 () Bool)

(assert (=> bm!329001 m!5627085))

(assert (=> b!4705555 m!5627059))

(declare-fun m!5627087 () Bool)

(assert (=> bm!329000 m!5627087))

(assert (=> b!4705105 d!1497478))

(declare-fun b!4705557 () Bool)

(declare-fun e!2935261 () Bool)

(declare-fun e!2935263 () Bool)

(assert (=> b!4705557 (= e!2935261 e!2935263)))

(declare-fun res!1987507 () Bool)

(assert (=> b!4705557 (=> (not res!1987507) (not e!2935263))))

(assert (=> b!4705557 (= res!1987507 (isDefined!9489 (getValueByKey!1876 (toList!5713 lt!1869477) key!4653)))))

(declare-fun b!4705558 () Bool)

(declare-fun e!2935265 () Unit!126988)

(declare-fun e!2935262 () Unit!126988)

(assert (=> b!4705558 (= e!2935265 e!2935262)))

(declare-fun c!804250 () Bool)

(declare-fun call!329007 () Bool)

(assert (=> b!4705558 (= c!804250 call!329007)))

(declare-fun b!4705559 () Bool)

(declare-fun Unit!127108 () Unit!126988)

(assert (=> b!4705559 (= e!2935262 Unit!127108)))

(declare-fun b!4705560 () Bool)

(declare-fun lt!1870109 () Unit!126988)

(assert (=> b!4705560 (= e!2935265 lt!1870109)))

(declare-fun lt!1870111 () Unit!126988)

(assert (=> b!4705560 (= lt!1870111 (lemmaContainsKeyImpliesGetValueByKeyDefined!1768 (toList!5713 lt!1869477) key!4653))))

(assert (=> b!4705560 (isDefined!9489 (getValueByKey!1876 (toList!5713 lt!1869477) key!4653))))

(declare-fun lt!1870108 () Unit!126988)

(assert (=> b!4705560 (= lt!1870108 lt!1870111)))

(assert (=> b!4705560 (= lt!1870109 (lemmaInListThenGetKeysListContains!893 (toList!5713 lt!1869477) key!4653))))

(assert (=> b!4705560 call!329007))

(declare-fun b!4705561 () Bool)

(declare-fun e!2935264 () List!52700)

(assert (=> b!4705561 (= e!2935264 (getKeysList!898 (toList!5713 lt!1869477)))))

(declare-fun bm!329002 () Bool)

(assert (=> bm!329002 (= call!329007 (contains!15883 e!2935264 key!4653))))

(declare-fun c!804249 () Bool)

(declare-fun c!804248 () Bool)

(assert (=> bm!329002 (= c!804249 c!804248)))

(declare-fun b!4705562 () Bool)

(assert (=> b!4705562 (= e!2935264 (keys!18819 lt!1869477))))

(declare-fun b!4705563 () Bool)

(declare-fun e!2935266 () Bool)

(assert (=> b!4705563 (= e!2935266 (not (contains!15883 (keys!18819 lt!1869477) key!4653)))))

(declare-fun b!4705564 () Bool)

(assert (=> b!4705564 false))

(declare-fun lt!1870104 () Unit!126988)

(declare-fun lt!1870105 () Unit!126988)

(assert (=> b!4705564 (= lt!1870104 lt!1870105)))

(assert (=> b!4705564 (containsKey!3210 (toList!5713 lt!1869477) key!4653)))

(assert (=> b!4705564 (= lt!1870105 (lemmaInGetKeysListThenContainsKey!897 (toList!5713 lt!1869477) key!4653))))

(declare-fun Unit!127109 () Unit!126988)

(assert (=> b!4705564 (= e!2935262 Unit!127109)))

(declare-fun b!4705556 () Bool)

(assert (=> b!4705556 (= e!2935263 (contains!15883 (keys!18819 lt!1869477) key!4653))))

(declare-fun d!1497480 () Bool)

(assert (=> d!1497480 e!2935261))

(declare-fun res!1987508 () Bool)

(assert (=> d!1497480 (=> res!1987508 e!2935261)))

(assert (=> d!1497480 (= res!1987508 e!2935266)))

(declare-fun res!1987509 () Bool)

(assert (=> d!1497480 (=> (not res!1987509) (not e!2935266))))

(declare-fun lt!1870110 () Bool)

(assert (=> d!1497480 (= res!1987509 (not lt!1870110))))

(declare-fun lt!1870106 () Bool)

(assert (=> d!1497480 (= lt!1870110 lt!1870106)))

(declare-fun lt!1870107 () Unit!126988)

(assert (=> d!1497480 (= lt!1870107 e!2935265)))

(assert (=> d!1497480 (= c!804248 lt!1870106)))

(assert (=> d!1497480 (= lt!1870106 (containsKey!3210 (toList!5713 lt!1869477) key!4653))))

(assert (=> d!1497480 (= (contains!15880 lt!1869477 key!4653) lt!1870110)))

(assert (= (and d!1497480 c!804248) b!4705560))

(assert (= (and d!1497480 (not c!804248)) b!4705558))

(assert (= (and b!4705558 c!804250) b!4705564))

(assert (= (and b!4705558 (not c!804250)) b!4705559))

(assert (= (or b!4705560 b!4705558) bm!329002))

(assert (= (and bm!329002 c!804249) b!4705561))

(assert (= (and bm!329002 (not c!804249)) b!4705562))

(assert (= (and d!1497480 res!1987509) b!4705563))

(assert (= (and d!1497480 (not res!1987508)) b!4705557))

(assert (= (and b!4705557 res!1987507) b!4705556))

(assert (=> b!4705562 m!5626209))

(declare-fun m!5627089 () Bool)

(assert (=> b!4705557 m!5627089))

(assert (=> b!4705557 m!5627089))

(declare-fun m!5627091 () Bool)

(assert (=> b!4705557 m!5627091))

(assert (=> b!4705556 m!5626209))

(assert (=> b!4705556 m!5626209))

(declare-fun m!5627093 () Bool)

(assert (=> b!4705556 m!5627093))

(declare-fun m!5627095 () Bool)

(assert (=> bm!329002 m!5627095))

(declare-fun m!5627097 () Bool)

(assert (=> b!4705561 m!5627097))

(declare-fun m!5627099 () Bool)

(assert (=> b!4705560 m!5627099))

(assert (=> b!4705560 m!5627089))

(assert (=> b!4705560 m!5627089))

(assert (=> b!4705560 m!5627091))

(declare-fun m!5627101 () Bool)

(assert (=> b!4705560 m!5627101))

(assert (=> b!4705563 m!5626209))

(assert (=> b!4705563 m!5626209))

(assert (=> b!4705563 m!5627093))

(declare-fun m!5627103 () Bool)

(assert (=> d!1497480 m!5627103))

(assert (=> b!4705564 m!5627103))

(declare-fun m!5627105 () Bool)

(assert (=> b!4705564 m!5627105))

(assert (=> b!4705105 d!1497480))

(declare-fun d!1497482 () Bool)

(assert (=> d!1497482 (= (eq!1071 lt!1869500 (+!2196 lt!1869502 (h!58866 oldBucket!34))) (= (content!9303 (toList!5713 lt!1869500)) (content!9303 (toList!5713 (+!2196 lt!1869502 (h!58866 oldBucket!34))))))))

(declare-fun bs!1098964 () Bool)

(assert (= bs!1098964 d!1497482))

(assert (=> bs!1098964 m!5626393))

(declare-fun m!5627107 () Bool)

(assert (=> bs!1098964 m!5627107))

(assert (=> b!4705105 d!1497482))

(declare-fun d!1497484 () Bool)

(assert (=> d!1497484 (eq!1071 (addToMapMapFromBucket!1344 (Cons!52573 lt!1869497 lt!1869508) lt!1869496) (+!2196 (addToMapMapFromBucket!1344 lt!1869508 lt!1869496) lt!1869497))))

(declare-fun lt!1870112 () Unit!126988)

(assert (=> d!1497484 (= lt!1870112 (choose!33038 lt!1869497 lt!1869508 lt!1869496))))

(assert (=> d!1497484 (noDuplicateKeys!1912 lt!1869508)))

(assert (=> d!1497484 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!320 lt!1869497 lt!1869508 lt!1869496) lt!1870112)))

(declare-fun bs!1098965 () Bool)

(assert (= bs!1098965 d!1497484))

(assert (=> bs!1098965 m!5627079))

(assert (=> bs!1098965 m!5625839))

(assert (=> bs!1098965 m!5625841))

(assert (=> bs!1098965 m!5625843))

(assert (=> bs!1098965 m!5625839))

(assert (=> bs!1098965 m!5625863))

(assert (=> bs!1098965 m!5625841))

(assert (=> bs!1098965 m!5625863))

(declare-fun m!5627109 () Bool)

(assert (=> bs!1098965 m!5627109))

(assert (=> b!4705105 d!1497484))

(declare-fun d!1497486 () Bool)

(declare-fun e!2935267 () Bool)

(assert (=> d!1497486 e!2935267))

(declare-fun res!1987511 () Bool)

(assert (=> d!1497486 (=> (not res!1987511) (not e!2935267))))

(declare-fun lt!1870113 () ListMap!5077)

(assert (=> d!1497486 (= res!1987511 (contains!15880 lt!1870113 (_1!30315 lt!1869473)))))

(declare-fun lt!1870115 () List!52697)

(assert (=> d!1497486 (= lt!1870113 (ListMap!5078 lt!1870115))))

(declare-fun lt!1870114 () Unit!126988)

(declare-fun lt!1870116 () Unit!126988)

(assert (=> d!1497486 (= lt!1870114 lt!1870116)))

(assert (=> d!1497486 (= (getValueByKey!1876 lt!1870115 (_1!30315 lt!1869473)) (Some!12233 (_2!30315 lt!1869473)))))

(assert (=> d!1497486 (= lt!1870116 (lemmaContainsTupThenGetReturnValue!1048 lt!1870115 (_1!30315 lt!1869473) (_2!30315 lt!1869473)))))

(assert (=> d!1497486 (= lt!1870115 (insertNoDuplicatedKeys!556 (toList!5713 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496)) (_1!30315 lt!1869473) (_2!30315 lt!1869473)))))

(assert (=> d!1497486 (= (+!2196 (addToMapMapFromBucket!1344 lt!1869480 lt!1869496) lt!1869473) lt!1870113)))

(declare-fun b!4705565 () Bool)

(declare-fun res!1987510 () Bool)

(assert (=> b!4705565 (=> (not res!1987510) (not e!2935267))))

(assert (=> b!4705565 (= res!1987510 (= (getValueByKey!1876 (toList!5713 lt!1870113) (_1!30315 lt!1869473)) (Some!12233 (_2!30315 lt!1869473))))))

(declare-fun b!4705566 () Bool)

(assert (=> b!4705566 (= e!2935267 (contains!15884 (toList!5713 lt!1870113) lt!1869473))))

(assert (= (and d!1497486 res!1987511) b!4705565))

(assert (= (and b!4705565 res!1987510) b!4705566))

(declare-fun m!5627111 () Bool)

(assert (=> d!1497486 m!5627111))

(declare-fun m!5627113 () Bool)

(assert (=> d!1497486 m!5627113))

(declare-fun m!5627115 () Bool)

(assert (=> d!1497486 m!5627115))

(declare-fun m!5627117 () Bool)

(assert (=> d!1497486 m!5627117))

(declare-fun m!5627119 () Bool)

(assert (=> b!4705565 m!5627119))

(declare-fun m!5627121 () Bool)

(assert (=> b!4705566 m!5627121))

(assert (=> b!4705105 d!1497486))

(declare-fun d!1497488 () Bool)

(declare-fun e!2935268 () Bool)

(assert (=> d!1497488 e!2935268))

(declare-fun res!1987513 () Bool)

(assert (=> d!1497488 (=> (not res!1987513) (not e!2935268))))

(declare-fun lt!1870117 () ListMap!5077)

(assert (=> d!1497488 (= res!1987513 (contains!15880 lt!1870117 (_1!30315 (h!58866 oldBucket!34))))))

(declare-fun lt!1870119 () List!52697)

(assert (=> d!1497488 (= lt!1870117 (ListMap!5078 lt!1870119))))

(declare-fun lt!1870118 () Unit!126988)

(declare-fun lt!1870120 () Unit!126988)

(assert (=> d!1497488 (= lt!1870118 lt!1870120)))

(assert (=> d!1497488 (= (getValueByKey!1876 lt!1870119 (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497488 (= lt!1870120 (lemmaContainsTupThenGetReturnValue!1048 lt!1870119 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497488 (= lt!1870119 (insertNoDuplicatedKeys!556 (toList!5713 lt!1869502) (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497488 (= (+!2196 lt!1869502 (h!58866 oldBucket!34)) lt!1870117)))

(declare-fun b!4705567 () Bool)

(declare-fun res!1987512 () Bool)

(assert (=> b!4705567 (=> (not res!1987512) (not e!2935268))))

(assert (=> b!4705567 (= res!1987512 (= (getValueByKey!1876 (toList!5713 lt!1870117) (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun b!4705568 () Bool)

(assert (=> b!4705568 (= e!2935268 (contains!15884 (toList!5713 lt!1870117) (h!58866 oldBucket!34)))))

(assert (= (and d!1497488 res!1987513) b!4705567))

(assert (= (and b!4705567 res!1987512) b!4705568))

(declare-fun m!5627123 () Bool)

(assert (=> d!1497488 m!5627123))

(declare-fun m!5627125 () Bool)

(assert (=> d!1497488 m!5627125))

(declare-fun m!5627127 () Bool)

(assert (=> d!1497488 m!5627127))

(declare-fun m!5627129 () Bool)

(assert (=> d!1497488 m!5627129))

(declare-fun m!5627131 () Bool)

(assert (=> b!4705567 m!5627131))

(declare-fun m!5627133 () Bool)

(assert (=> b!4705568 m!5627133))

(assert (=> b!4705105 d!1497488))

(declare-fun bs!1098966 () Bool)

(declare-fun d!1497490 () Bool)

(assert (= bs!1098966 (and d!1497490 d!1497282)))

(declare-fun lambda!211493 () Int)

(assert (=> bs!1098966 (= lambda!211493 lambda!211364)))

(declare-fun bs!1098967 () Bool)

(assert (= bs!1098967 (and d!1497490 start!477700)))

(assert (=> bs!1098967 (= lambda!211493 lambda!211329)))

(declare-fun bs!1098968 () Bool)

(assert (= bs!1098968 (and d!1497490 d!1497286)))

(assert (=> bs!1098968 (= lambda!211493 lambda!211389)))

(declare-fun bs!1098969 () Bool)

(assert (= bs!1098969 (and d!1497490 d!1497404)))

(assert (=> bs!1098969 (= lambda!211493 lambda!211461)))

(declare-fun bs!1098970 () Bool)

(assert (= bs!1098970 (and d!1497490 d!1497440)))

(assert (=> bs!1098970 (= lambda!211493 lambda!211471)))

(declare-fun bs!1098971 () Bool)

(assert (= bs!1098971 (and d!1497490 d!1497250)))

(assert (=> bs!1098971 (= lambda!211493 lambda!211358)))

(declare-fun bs!1098972 () Bool)

(assert (= bs!1098972 (and d!1497490 d!1497278)))

(assert (=> bs!1098972 (not (= lambda!211493 lambda!211363))))

(declare-fun bs!1098973 () Bool)

(assert (= bs!1098973 (and d!1497490 d!1497458)))

(assert (=> bs!1098973 (= lambda!211493 lambda!211478)))

(declare-fun bs!1098974 () Bool)

(assert (= bs!1098974 (and d!1497490 d!1497208)))

(assert (=> bs!1098974 (= lambda!211493 lambda!211351)))

(declare-fun bs!1098975 () Bool)

(assert (= bs!1098975 (and d!1497490 d!1497434)))

(assert (=> bs!1098975 (= lambda!211493 lambda!211468)))

(declare-fun bs!1098976 () Bool)

(assert (= bs!1098976 (and d!1497490 d!1497264)))

(assert (=> bs!1098976 (= lambda!211493 lambda!211359)))

(declare-fun bs!1098977 () Bool)

(assert (= bs!1098977 (and d!1497490 d!1497474)))

(assert (=> bs!1098977 (= lambda!211493 lambda!211484)))

(declare-fun bs!1098978 () Bool)

(assert (= bs!1098978 (and d!1497490 d!1497272)))

(assert (=> bs!1098978 (= lambda!211493 lambda!211360)))

(declare-fun bs!1098979 () Bool)

(assert (= bs!1098979 (and d!1497490 d!1497460)))

(assert (=> bs!1098979 (= lambda!211493 lambda!211479)))

(declare-fun lt!1870121 () ListMap!5077)

(assert (=> d!1497490 (invariantList!1458 (toList!5713 lt!1870121))))

(declare-fun e!2935269 () ListMap!5077)

(assert (=> d!1497490 (= lt!1870121 e!2935269)))

(declare-fun c!804251 () Bool)

(assert (=> d!1497490 (= c!804251 ((_ is Cons!52574) (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023)))))))

(assert (=> d!1497490 (forall!11427 (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023))) lambda!211493)))

(assert (=> d!1497490 (= (extractMap!1938 (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023)))) lt!1870121)))

(declare-fun b!4705569 () Bool)

(assert (=> b!4705569 (= e!2935269 (addToMapMapFromBucket!1344 (_2!30316 (h!58867 (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023))))) (extractMap!1938 (t!359922 (Cons!52574 (tuple2!54045 hash!405 lt!1869480) (t!359922 (toList!5714 lm!2023)))))))))

(declare-fun b!4705570 () Bool)

(assert (=> b!4705570 (= e!2935269 (ListMap!5078 Nil!52573))))

(assert (= (and d!1497490 c!804251) b!4705569))

(assert (= (and d!1497490 (not c!804251)) b!4705570))

(declare-fun m!5627135 () Bool)

(assert (=> d!1497490 m!5627135))

(declare-fun m!5627137 () Bool)

(assert (=> d!1497490 m!5627137))

(declare-fun m!5627139 () Bool)

(assert (=> b!4705569 m!5627139))

(assert (=> b!4705569 m!5627139))

(declare-fun m!5627141 () Bool)

(assert (=> b!4705569 m!5627141))

(assert (=> b!4705105 d!1497490))

(declare-fun d!1497492 () Bool)

(assert (=> d!1497492 (= (head!10088 oldBucket!34) (h!58866 oldBucket!34))))

(assert (=> b!4705105 d!1497492))

(declare-fun d!1497494 () Bool)

(assert (=> d!1497494 (= (eq!1071 lt!1869500 (+!2196 lt!1869502 lt!1869497)) (= (content!9303 (toList!5713 lt!1869500)) (content!9303 (toList!5713 (+!2196 lt!1869502 lt!1869497)))))))

(declare-fun bs!1098980 () Bool)

(assert (= bs!1098980 d!1497494))

(assert (=> bs!1098980 m!5626393))

(declare-fun m!5627143 () Bool)

(assert (=> bs!1098980 m!5627143))

(assert (=> b!4705103 d!1497494))

(declare-fun d!1497496 () Bool)

(declare-fun e!2935270 () Bool)

(assert (=> d!1497496 e!2935270))

(declare-fun res!1987515 () Bool)

(assert (=> d!1497496 (=> (not res!1987515) (not e!2935270))))

(declare-fun lt!1870122 () ListMap!5077)

(assert (=> d!1497496 (= res!1987515 (contains!15880 lt!1870122 (_1!30315 lt!1869497)))))

(declare-fun lt!1870124 () List!52697)

(assert (=> d!1497496 (= lt!1870122 (ListMap!5078 lt!1870124))))

(declare-fun lt!1870123 () Unit!126988)

(declare-fun lt!1870125 () Unit!126988)

(assert (=> d!1497496 (= lt!1870123 lt!1870125)))

(assert (=> d!1497496 (= (getValueByKey!1876 lt!1870124 (_1!30315 lt!1869497)) (Some!12233 (_2!30315 lt!1869497)))))

(assert (=> d!1497496 (= lt!1870125 (lemmaContainsTupThenGetReturnValue!1048 lt!1870124 (_1!30315 lt!1869497) (_2!30315 lt!1869497)))))

(assert (=> d!1497496 (= lt!1870124 (insertNoDuplicatedKeys!556 (toList!5713 lt!1869502) (_1!30315 lt!1869497) (_2!30315 lt!1869497)))))

(assert (=> d!1497496 (= (+!2196 lt!1869502 lt!1869497) lt!1870122)))

(declare-fun b!4705571 () Bool)

(declare-fun res!1987514 () Bool)

(assert (=> b!4705571 (=> (not res!1987514) (not e!2935270))))

(assert (=> b!4705571 (= res!1987514 (= (getValueByKey!1876 (toList!5713 lt!1870122) (_1!30315 lt!1869497)) (Some!12233 (_2!30315 lt!1869497))))))

(declare-fun b!4705572 () Bool)

(assert (=> b!4705572 (= e!2935270 (contains!15884 (toList!5713 lt!1870122) lt!1869497))))

(assert (= (and d!1497496 res!1987515) b!4705571))

(assert (= (and b!4705571 res!1987514) b!4705572))

(declare-fun m!5627145 () Bool)

(assert (=> d!1497496 m!5627145))

(declare-fun m!5627147 () Bool)

(assert (=> d!1497496 m!5627147))

(declare-fun m!5627149 () Bool)

(assert (=> d!1497496 m!5627149))

(declare-fun m!5627151 () Bool)

(assert (=> d!1497496 m!5627151))

(declare-fun m!5627153 () Bool)

(assert (=> b!4705571 m!5627153))

(declare-fun m!5627155 () Bool)

(assert (=> b!4705572 m!5627155))

(assert (=> b!4705103 d!1497496))

(declare-fun d!1497498 () Bool)

(assert (=> d!1497498 (= (eq!1071 lt!1869492 lt!1869479) (= (content!9303 (toList!5713 lt!1869492)) (content!9303 (toList!5713 lt!1869479))))))

(declare-fun bs!1098981 () Bool)

(assert (= bs!1098981 d!1497498))

(assert (=> bs!1098981 m!5626369))

(assert (=> bs!1098981 m!5626235))

(assert (=> b!4705104 d!1497498))

(declare-fun d!1497500 () Bool)

(declare-fun e!2935271 () Bool)

(assert (=> d!1497500 e!2935271))

(declare-fun res!1987517 () Bool)

(assert (=> d!1497500 (=> (not res!1987517) (not e!2935271))))

(declare-fun lt!1870126 () ListMap!5077)

(assert (=> d!1497500 (= res!1987517 (contains!15880 lt!1870126 (_1!30315 (h!58866 oldBucket!34))))))

(declare-fun lt!1870128 () List!52697)

(assert (=> d!1497500 (= lt!1870126 (ListMap!5078 lt!1870128))))

(declare-fun lt!1870127 () Unit!126988)

(declare-fun lt!1870129 () Unit!126988)

(assert (=> d!1497500 (= lt!1870127 lt!1870129)))

(assert (=> d!1497500 (= (getValueByKey!1876 lt!1870128 (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497500 (= lt!1870129 (lemmaContainsTupThenGetReturnValue!1048 lt!1870128 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497500 (= lt!1870128 (insertNoDuplicatedKeys!556 (toList!5713 lt!1869509) (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497500 (= (+!2196 lt!1869509 (h!58866 oldBucket!34)) lt!1870126)))

(declare-fun b!4705573 () Bool)

(declare-fun res!1987516 () Bool)

(assert (=> b!4705573 (=> (not res!1987516) (not e!2935271))))

(assert (=> b!4705573 (= res!1987516 (= (getValueByKey!1876 (toList!5713 lt!1870126) (_1!30315 (h!58866 oldBucket!34))) (Some!12233 (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun b!4705574 () Bool)

(assert (=> b!4705574 (= e!2935271 (contains!15884 (toList!5713 lt!1870126) (h!58866 oldBucket!34)))))

(assert (= (and d!1497500 res!1987517) b!4705573))

(assert (= (and b!4705573 res!1987516) b!4705574))

(declare-fun m!5627157 () Bool)

(assert (=> d!1497500 m!5627157))

(declare-fun m!5627159 () Bool)

(assert (=> d!1497500 m!5627159))

(declare-fun m!5627161 () Bool)

(assert (=> d!1497500 m!5627161))

(declare-fun m!5627163 () Bool)

(assert (=> d!1497500 m!5627163))

(declare-fun m!5627165 () Bool)

(assert (=> b!4705573 m!5627165))

(declare-fun m!5627167 () Bool)

(assert (=> b!4705574 m!5627167))

(assert (=> b!4705104 d!1497500))

(declare-fun d!1497502 () Bool)

(assert (=> d!1497502 (= (eq!1071 lt!1869503 (+!2196 lt!1869509 (h!58866 oldBucket!34))) (= (content!9303 (toList!5713 lt!1869503)) (content!9303 (toList!5713 (+!2196 lt!1869509 (h!58866 oldBucket!34))))))))

(declare-fun bs!1098982 () Bool)

(assert (= bs!1098982 d!1497502))

(declare-fun m!5627169 () Bool)

(assert (=> bs!1098982 m!5627169))

(declare-fun m!5627171 () Bool)

(assert (=> bs!1098982 m!5627171))

(assert (=> b!4705104 d!1497502))

(declare-fun d!1497504 () Bool)

(assert (=> d!1497504 (eq!1071 (+!2196 lt!1869495 (tuple2!54043 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)))) (+!2196 lt!1869509 (tuple2!54043 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34)))))))

(declare-fun lt!1870132 () Unit!126988)

(declare-fun choose!33041 (ListMap!5077 ListMap!5077 K!13930 V!14176) Unit!126988)

(assert (=> d!1497504 (= lt!1870132 (choose!33041 lt!1869495 lt!1869509 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))))))

(assert (=> d!1497504 (eq!1071 lt!1869495 lt!1869509)))

(assert (=> d!1497504 (= (lemmaAddToEqMapsPreservesEq!94 lt!1869495 lt!1869509 (_1!30315 (h!58866 oldBucket!34)) (_2!30315 (h!58866 oldBucket!34))) lt!1870132)))

(declare-fun bs!1098983 () Bool)

(assert (= bs!1098983 d!1497504))

(declare-fun m!5627173 () Bool)

(assert (=> bs!1098983 m!5627173))

(declare-fun m!5627175 () Bool)

(assert (=> bs!1098983 m!5627175))

(declare-fun m!5627177 () Bool)

(assert (=> bs!1098983 m!5627177))

(assert (=> bs!1098983 m!5627175))

(declare-fun m!5627179 () Bool)

(assert (=> bs!1098983 m!5627179))

(assert (=> bs!1098983 m!5627173))

(declare-fun m!5627181 () Bool)

(assert (=> bs!1098983 m!5627181))

(assert (=> b!4705104 d!1497504))

(declare-fun d!1497506 () Bool)

(declare-fun hash!4216 (Hashable!6281 K!13930) (_ BitVec 64))

(assert (=> d!1497506 (= (hash!4212 hashF!1323 key!4653) (hash!4216 hashF!1323 key!4653))))

(declare-fun bs!1098984 () Bool)

(assert (= bs!1098984 d!1497506))

(declare-fun m!5627183 () Bool)

(assert (=> bs!1098984 m!5627183))

(assert (=> b!4705102 d!1497506))

(declare-fun e!2935274 () Bool)

(declare-fun tp!1346932 () Bool)

(declare-fun b!4705579 () Bool)

(assert (=> b!4705579 (= e!2935274 (and tp_is_empty!30941 tp_is_empty!30943 tp!1346932))))

(assert (=> b!4705111 (= tp!1346917 e!2935274)))

(assert (= (and b!4705111 ((_ is Cons!52573) (t!359921 oldBucket!34))) b!4705579))

(declare-fun b!4705584 () Bool)

(declare-fun e!2935277 () Bool)

(declare-fun tp!1346937 () Bool)

(declare-fun tp!1346938 () Bool)

(assert (=> b!4705584 (= e!2935277 (and tp!1346937 tp!1346938))))

(assert (=> b!4705112 (= tp!1346919 e!2935277)))

(assert (= (and b!4705112 ((_ is Cons!52574) (toList!5714 lm!2023))) b!4705584))

(declare-fun tp!1346939 () Bool)

(declare-fun b!4705585 () Bool)

(declare-fun e!2935278 () Bool)

(assert (=> b!4705585 (= e!2935278 (and tp_is_empty!30941 tp_is_empty!30943 tp!1346939))))

(assert (=> b!4705089 (= tp!1346918 e!2935278)))

(assert (= (and b!4705089 ((_ is Cons!52573) (t!359921 newBucket!218))) b!4705585))

(declare-fun b_lambda!177535 () Bool)

(assert (= b_lambda!177519 (or start!477700 b_lambda!177535)))

(declare-fun bs!1098985 () Bool)

(declare-fun d!1497508 () Bool)

(assert (= bs!1098985 (and d!1497508 start!477700)))

(assert (=> bs!1098985 (= (dynLambda!21761 lambda!211329 (h!58867 lt!1869484)) (noDuplicateKeys!1912 (_2!30316 (h!58867 lt!1869484))))))

(declare-fun m!5627185 () Bool)

(assert (=> bs!1098985 m!5627185))

(assert (=> b!4705241 d!1497508))

(declare-fun b_lambda!177537 () Bool)

(assert (= b_lambda!177533 (or start!477700 b_lambda!177537)))

(declare-fun bs!1098986 () Bool)

(declare-fun d!1497510 () Bool)

(assert (= bs!1098986 (and d!1497510 start!477700)))

(assert (=> bs!1098986 (= (dynLambda!21761 lambda!211329 (h!58867 (toList!5714 lm!2023))) (noDuplicateKeys!1912 (_2!30316 (h!58867 (toList!5714 lm!2023)))))))

(assert (=> bs!1098986 m!5626769))

(assert (=> b!4705526 d!1497510))

(declare-fun b_lambda!177539 () Bool)

(assert (= b_lambda!177531 (or start!477700 b_lambda!177539)))

(declare-fun bs!1098987 () Bool)

(declare-fun d!1497512 () Bool)

(assert (= bs!1098987 (and d!1497512 start!477700)))

(assert (=> bs!1098987 (= (dynLambda!21761 lambda!211329 lt!1869505) (noDuplicateKeys!1912 (_2!30316 lt!1869505)))))

(declare-fun m!5627187 () Bool)

(assert (=> bs!1098987 m!5627187))

(assert (=> d!1497432 d!1497512))

(check-sat (not d!1497286) (not b!4705298) (not b!4705428) (not d!1497436) (not d!1497298) (not d!1497474) (not b!4705542) (not d!1497268) (not b!4705242) (not b!4705480) (not b!4705484) (not d!1497460) (not d!1497450) (not bm!328991) (not b!4705551) (not d!1497272) (not b!4705273) (not b!4705448) (not b!4705481) (not b!4705538) (not b!4705547) (not b!4705277) (not bm!328987) (not d!1497482) (not d!1497458) (not d!1497302) (not d!1497440) (not d!1497480) (not bm!328996) (not b!4705543) (not b!4705217) (not bm!328995) (not d!1497442) (not b!4705561) (not b!4705245) (not b!4705585) (not d!1497248) (not d!1497428) (not b!4705572) (not b!4705535) (not bm!328955) (not b!4705235) (not d!1497308) (not b!4705533) (not b!4705562) (not b!4705565) (not b!4705328) (not b!4705429) (not d!1497464) (not d!1497312) (not b!4705304) (not b!4705306) (not b!4705307) (not d!1497320) (not d!1497430) (not b!4705215) (not b!4705550) (not b!4705269) (not bm!328994) (not d!1497316) (not d!1497294) (not b!4705560) (not b!4705568) (not d!1497490) (not b!4705584) (not b!4705531) (not b!4705275) (not b!4705432) (not d!1497488) (not d!1497300) (not b!4705510) (not d!1497306) (not d!1497434) (not b!4705564) (not b!4705557) (not b!4705567) (not d!1497416) (not b!4705509) (not d!1497404) (not bm!328988) (not b!4705274) (not d!1497496) (not d!1497206) (not b_lambda!177539) (not bm!328992) tp_is_empty!30941 (not b!4705523) (not b!4705549) (not d!1497462) (not d!1497250) (not d!1497274) (not b!4705528) (not d!1497466) (not b!4705305) (not d!1497296) (not d!1497486) tp_is_empty!30943 (not d!1497318) (not d!1497498) (not b!4705554) (not b!4705508) (not b!4705566) (not d!1497456) (not bm!328993) (not bs!1098985) (not b!4705544) (not d!1497278) (not b!4705579) (not b!4705487) (not d!1497504) (not b!4705223) (not b!4705571) (not bs!1098987) (not b!4705496) (not b!4705431) (not d!1497484) (not b!4705573) (not d!1497470) (not bm!329002) (not bm!328989) (not d!1497288) (not d!1497420) (not b!4705270) (not b!4705449) (not d!1497506) (not b!4705546) (not d!1497432) (not b!4705280) (not b!4705485) (not b!4705276) (not bm!328990) (not b!4705540) (not bm!328997) (not d!1497262) (not b!4705303) (not b_lambda!177535) (not bm!328998) (not b!4705499) (not d!1497468) (not d!1497270) (not b!4705574) (not bm!329000) (not d!1497208) (not b!4705511) (not b!4705527) (not b!4705284) (not d!1497494) (not b!4705541) (not bm!329001) (not bs!1098986) (not d!1497478) (not b!4705552) (not d!1497280) (not d!1497282) (not b!4705556) (not b_lambda!177537) (not b!4705525) (not d!1497500) (not b!4705569) (not bm!328999) (not b!4705563) (not b!4705537) (not b!4705555) (not d!1497264) (not b!4705441) (not d!1497310) (not d!1497410) (not b!4705530) (not b!4705222) (not d!1497444) (not b!4705297) (not d!1497284) (not b!4705517) (not b!4705221) (not d!1497314) (not b!4705529) (not b!4705534) (not b!4705494) (not d!1497502) (not d!1497476) (not d!1497414))
(check-sat)
