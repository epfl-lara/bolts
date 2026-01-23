; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476416 () Bool)

(assert start!476416)

(declare-fun b!4699315 () Bool)

(declare-fun e!2931462 () Bool)

(declare-fun e!2931471 () Bool)

(assert (=> b!4699315 (= e!2931462 e!2931471)))

(declare-fun res!1983765 () Bool)

(assert (=> b!4699315 (=> res!1983765 e!2931471)))

(declare-datatypes ((K!13880 0))(
  ( (K!13881 (val!19375 Int)) )
))
(declare-datatypes ((V!14126 0))(
  ( (V!14127 (val!19376 Int)) )
))
(declare-datatypes ((tuple2!53962 0))(
  ( (tuple2!53963 (_1!30275 K!13880) (_2!30275 V!14126)) )
))
(declare-datatypes ((List!52639 0))(
  ( (Nil!52515) (Cons!52515 (h!58790 tuple2!53962) (t!359845 List!52639)) )
))
(declare-fun oldBucket!34 () List!52639)

(declare-fun key!4653 () K!13880)

(declare-fun containsKey!3151 (List!52639 K!13880) Bool)

(assert (=> b!4699315 (= res!1983765 (not (containsKey!3151 (t!359845 oldBucket!34) key!4653)))))

(assert (=> b!4699315 (containsKey!3151 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6261 0))(
  ( (HashableExt!6260 (__x!31964 Int)) )
))
(declare-fun hashF!1323 () Hashable!6261)

(declare-datatypes ((Unit!125868 0))(
  ( (Unit!125869) )
))
(declare-fun lt!1861673 () Unit!125868)

(declare-fun lemmaGetPairDefinedThenContainsKey!244 (List!52639 K!13880 Hashable!6261) Unit!125868)

(assert (=> b!4699315 (= lt!1861673 (lemmaGetPairDefinedThenContainsKey!244 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1861669 () List!52639)

(declare-datatypes ((Option!12175 0))(
  ( (None!12174) (Some!12174 (v!46649 tuple2!53962)) )
))
(declare-fun isDefined!9430 (Option!12175) Bool)

(declare-fun getPair!496 (List!52639 K!13880) Option!12175)

(assert (=> b!4699315 (isDefined!9430 (getPair!496 lt!1861669 key!4653))))

(declare-datatypes ((tuple2!53964 0))(
  ( (tuple2!53965 (_1!30276 (_ BitVec 64)) (_2!30276 List!52639)) )
))
(declare-fun lt!1861695 () tuple2!53964)

(declare-datatypes ((List!52640 0))(
  ( (Nil!52516) (Cons!52516 (h!58791 tuple2!53964) (t!359846 List!52640)) )
))
(declare-datatypes ((ListLongMap!4203 0))(
  ( (ListLongMap!4204 (toList!5673 List!52640)) )
))
(declare-fun lm!2023 () ListLongMap!4203)

(declare-fun lambda!209739 () Int)

(declare-fun lt!1861681 () Unit!125868)

(declare-fun forallContained!3496 (List!52640 Int tuple2!53964) Unit!125868)

(assert (=> b!4699315 (= lt!1861681 (forallContained!3496 (toList!5673 lm!2023) lambda!209739 lt!1861695))))

(declare-fun contains!15782 (List!52640 tuple2!53964) Bool)

(assert (=> b!4699315 (contains!15782 (toList!5673 lm!2023) lt!1861695)))

(declare-fun lt!1861698 () (_ BitVec 64))

(assert (=> b!4699315 (= lt!1861695 (tuple2!53965 lt!1861698 lt!1861669))))

(declare-fun lt!1861687 () Unit!125868)

(declare-fun lemmaGetValueImpliesTupleContained!301 (ListLongMap!4203 (_ BitVec 64) List!52639) Unit!125868)

(assert (=> b!4699315 (= lt!1861687 (lemmaGetValueImpliesTupleContained!301 lm!2023 lt!1861698 lt!1861669))))

(declare-fun apply!12375 (ListLongMap!4203 (_ BitVec 64)) List!52639)

(assert (=> b!4699315 (= lt!1861669 (apply!12375 lm!2023 lt!1861698))))

(declare-fun contains!15783 (ListLongMap!4203 (_ BitVec 64)) Bool)

(assert (=> b!4699315 (contains!15783 lm!2023 lt!1861698)))

(declare-fun lt!1861676 () Unit!125868)

(declare-fun lemmaInGenMapThenLongMapContainsHash!702 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> b!4699315 (= lt!1861676 (lemmaInGenMapThenLongMapContainsHash!702 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1861690 () Unit!125868)

(declare-fun lemmaInGenMapThenGetPairDefined!292 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> b!4699315 (= lt!1861690 (lemmaInGenMapThenGetPairDefined!292 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4699316 () Bool)

(declare-fun e!2931467 () Bool)

(declare-fun tp!1346558 () Bool)

(assert (=> b!4699316 (= e!2931467 tp!1346558)))

(declare-fun b!4699317 () Bool)

(declare-fun res!1983772 () Bool)

(declare-fun e!2931474 () Bool)

(assert (=> b!4699317 (=> (not res!1983772) (not e!2931474))))

(get-info :version)

(assert (=> b!4699317 (= res!1983772 ((_ is Cons!52516) (toList!5673 lm!2023)))))

(declare-fun b!4699318 () Bool)

(declare-fun res!1983764 () Bool)

(declare-fun e!2931465 () Bool)

(assert (=> b!4699318 (=> res!1983764 e!2931465)))

(declare-fun lt!1861680 () tuple2!53962)

(assert (=> b!4699318 (= res!1983764 (not (= (h!58790 oldBucket!34) lt!1861680)))))

(declare-fun b!4699319 () Bool)

(declare-fun e!2931472 () Bool)

(assert (=> b!4699319 (= e!2931472 e!2931465)))

(declare-fun res!1983769 () Bool)

(assert (=> b!4699319 (=> res!1983769 e!2931465)))

(declare-datatypes ((ListMap!5037 0))(
  ( (ListMap!5038 (toList!5674 List!52639)) )
))
(declare-fun lt!1861697 () ListMap!5037)

(declare-fun lt!1861678 () ListMap!5037)

(declare-fun eq!1051 (ListMap!5037 ListMap!5037) Bool)

(declare-fun +!2176 (ListMap!5037 tuple2!53962) ListMap!5037)

(assert (=> b!4699319 (= res!1983769 (not (eq!1051 lt!1861678 (+!2176 lt!1861697 (h!58790 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1861682 () List!52639)

(declare-fun extractMap!1918 (List!52640) ListMap!5037)

(assert (=> b!4699319 (= lt!1861697 (extractMap!1918 (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023)))))))

(declare-fun lt!1861684 () tuple2!53964)

(assert (=> b!4699319 (= lt!1861678 (extractMap!1918 (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023)))))))

(declare-fun lt!1861683 () List!52639)

(declare-fun lt!1861670 () ListMap!5037)

(declare-fun addToMapMapFromBucket!1324 (List!52639 ListMap!5037) ListMap!5037)

(assert (=> b!4699319 (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861680 lt!1861683) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1861680))))

(declare-fun lt!1861685 () Unit!125868)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!300 (tuple2!53962 List!52639 ListMap!5037) Unit!125868)

(assert (=> b!4699319 (= lt!1861685 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!300 lt!1861680 lt!1861683 lt!1861670))))

(declare-fun newBucket!218 () List!52639)

(declare-fun head!10047 (List!52639) tuple2!53962)

(assert (=> b!4699319 (= lt!1861680 (head!10047 newBucket!218))))

(declare-fun lt!1861674 () tuple2!53962)

(assert (=> b!4699319 (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861674 lt!1861682) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1861674))))

(declare-fun lt!1861696 () Unit!125868)

(assert (=> b!4699319 (= lt!1861696 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!300 lt!1861674 lt!1861682 lt!1861670))))

(assert (=> b!4699319 (= lt!1861674 (head!10047 oldBucket!34))))

(declare-fun lt!1861675 () ListMap!5037)

(declare-fun contains!15784 (ListMap!5037 K!13880) Bool)

(assert (=> b!4699319 (contains!15784 lt!1861675 key!4653)))

(declare-fun lt!1861671 () List!52640)

(assert (=> b!4699319 (= lt!1861675 (extractMap!1918 lt!1861671))))

(declare-fun lt!1861677 () ListLongMap!4203)

(declare-fun lt!1861667 () Unit!125868)

(declare-fun lemmaListContainsThenExtractedMapContains!484 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> b!4699319 (= lt!1861667 (lemmaListContainsThenExtractedMapContains!484 lt!1861677 key!4653 hashF!1323))))

(assert (=> b!4699319 (= lt!1861677 (ListLongMap!4204 lt!1861671))))

(declare-fun lt!1861679 () tuple2!53964)

(assert (=> b!4699319 (= lt!1861671 (Cons!52516 lt!1861679 (t!359846 (toList!5673 lm!2023))))))

(assert (=> b!4699319 (= lt!1861679 (tuple2!53965 hash!405 (t!359845 oldBucket!34)))))

(declare-fun b!4699320 () Bool)

(declare-fun res!1983756 () Bool)

(declare-fun e!2931464 () Bool)

(assert (=> b!4699320 (=> (not res!1983756) (not e!2931464))))

(declare-fun removePairForKey!1487 (List!52639 K!13880) List!52639)

(assert (=> b!4699320 (= res!1983756 (= (removePairForKey!1487 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4699321 () Bool)

(declare-fun e!2931469 () Bool)

(assert (=> b!4699321 (= e!2931469 e!2931474)))

(declare-fun res!1983761 () Bool)

(assert (=> b!4699321 (=> (not res!1983761) (not e!2931474))))

(declare-fun head!10048 (List!52640) tuple2!53964)

(assert (=> b!4699321 (= res!1983761 (= (head!10048 (toList!5673 lm!2023)) lt!1861684))))

(assert (=> b!4699321 (= lt!1861684 (tuple2!53965 hash!405 oldBucket!34))))

(declare-fun b!4699322 () Bool)

(declare-fun res!1983773 () Bool)

(declare-fun e!2931468 () Bool)

(assert (=> b!4699322 (=> res!1983773 e!2931468)))

(declare-fun lt!1861672 () ListMap!5037)

(declare-fun lt!1861689 () ListMap!5037)

(assert (=> b!4699322 (= res!1983773 (not (eq!1051 lt!1861672 lt!1861689)))))

(declare-fun tp_is_empty!30861 () Bool)

(declare-fun b!4699323 () Bool)

(declare-fun tp_is_empty!30863 () Bool)

(declare-fun tp!1346559 () Bool)

(declare-fun e!2931463 () Bool)

(assert (=> b!4699323 (= e!2931463 (and tp_is_empty!30861 tp_is_empty!30863 tp!1346559))))

(declare-fun b!4699324 () Bool)

(assert (=> b!4699324 (= e!2931468 (not (= newBucket!218 Nil!52515)))))

(declare-fun lt!1861688 () ListMap!5037)

(declare-fun lt!1861668 () ListMap!5037)

(assert (=> b!4699324 (eq!1051 lt!1861688 (+!2176 lt!1861668 (h!58790 oldBucket!34)))))

(declare-fun lt!1861666 () Unit!125868)

(declare-fun lt!1861693 () ListMap!5037)

(declare-fun lemmaAddToEqMapsPreservesEq!74 (ListMap!5037 ListMap!5037 K!13880 V!14126) Unit!125868)

(assert (=> b!4699324 (= lt!1861666 (lemmaAddToEqMapsPreservesEq!74 lt!1861693 lt!1861668 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(declare-fun b!4699325 () Bool)

(declare-fun res!1983763 () Bool)

(assert (=> b!4699325 (=> (not res!1983763) (not e!2931464))))

(declare-fun noDuplicateKeys!1892 (List!52639) Bool)

(assert (=> b!4699325 (= res!1983763 (noDuplicateKeys!1892 newBucket!218))))

(declare-fun b!4699327 () Bool)

(declare-fun res!1983767 () Bool)

(assert (=> b!4699327 (=> (not res!1983767) (not e!2931469))))

(declare-fun allKeysSameHashInMap!1806 (ListLongMap!4203 Hashable!6261) Bool)

(assert (=> b!4699327 (= res!1983767 (allKeysSameHashInMap!1806 lm!2023 hashF!1323))))

(declare-fun b!4699328 () Bool)

(declare-fun e!2931466 () Bool)

(assert (=> b!4699328 (= e!2931466 e!2931469)))

(declare-fun res!1983768 () Bool)

(assert (=> b!4699328 (=> (not res!1983768) (not e!2931469))))

(assert (=> b!4699328 (= res!1983768 (= lt!1861698 hash!405))))

(declare-fun hash!4156 (Hashable!6261 K!13880) (_ BitVec 64))

(assert (=> b!4699328 (= lt!1861698 (hash!4156 hashF!1323 key!4653))))

(declare-fun b!4699329 () Bool)

(assert (=> b!4699329 (= e!2931474 (not e!2931462))))

(declare-fun res!1983766 () Bool)

(assert (=> b!4699329 (=> res!1983766 e!2931462)))

(assert (=> b!4699329 (= res!1983766 (or (and ((_ is Cons!52515) oldBucket!34) (= (_1!30275 (h!58790 oldBucket!34)) key!4653)) (not ((_ is Cons!52515) oldBucket!34)) (= (_1!30275 (h!58790 oldBucket!34)) key!4653)))))

(declare-fun lt!1861699 () ListMap!5037)

(assert (=> b!4699329 (= lt!1861699 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (toList!5673 lm!2023))) lt!1861670))))

(assert (=> b!4699329 (= lt!1861670 (extractMap!1918 (t!359846 (toList!5673 lm!2023))))))

(declare-fun tail!8701 (ListLongMap!4203) ListLongMap!4203)

(assert (=> b!4699329 (= (t!359846 (toList!5673 lm!2023)) (toList!5673 (tail!8701 lm!2023)))))

(declare-fun b!4699330 () Bool)

(declare-fun res!1983757 () Bool)

(assert (=> b!4699330 (=> res!1983757 e!2931468)))

(declare-fun lt!1861665 () ListMap!5037)

(assert (=> b!4699330 (= res!1983757 (not (eq!1051 lt!1861665 lt!1861678)))))

(declare-fun b!4699331 () Bool)

(declare-fun res!1983754 () Bool)

(assert (=> b!4699331 (=> res!1983754 e!2931472)))

(assert (=> b!4699331 (= res!1983754 (not (= (removePairForKey!1487 (t!359845 oldBucket!34) key!4653) lt!1861683)))))

(declare-fun b!4699332 () Bool)

(declare-fun res!1983760 () Bool)

(assert (=> b!4699332 (=> res!1983760 e!2931465)))

(assert (=> b!4699332 (= res!1983760 (not (eq!1051 lt!1861678 (+!2176 lt!1861697 lt!1861680))))))

(declare-fun b!4699333 () Bool)

(declare-fun res!1983771 () Bool)

(assert (=> b!4699333 (=> (not res!1983771) (not e!2931464))))

(assert (=> b!4699333 (= res!1983771 (noDuplicateKeys!1892 oldBucket!34))))

(declare-fun b!4699334 () Bool)

(assert (=> b!4699334 (= e!2931471 e!2931472)))

(declare-fun res!1983770 () Bool)

(assert (=> b!4699334 (=> res!1983770 e!2931472)))

(assert (=> b!4699334 (= res!1983770 (not (= (removePairForKey!1487 lt!1861682 key!4653) lt!1861683)))))

(declare-fun tail!8702 (List!52639) List!52639)

(assert (=> b!4699334 (= lt!1861683 (tail!8702 newBucket!218))))

(assert (=> b!4699334 (= lt!1861682 (tail!8702 oldBucket!34))))

(declare-fun b!4699335 () Bool)

(declare-fun e!2931473 () Bool)

(assert (=> b!4699335 (= e!2931473 e!2931468)))

(declare-fun res!1983755 () Bool)

(assert (=> b!4699335 (=> res!1983755 e!2931468)))

(assert (=> b!4699335 (= res!1983755 (not (= lt!1861672 lt!1861689)))))

(assert (=> b!4699335 (= lt!1861689 (+!2176 lt!1861693 (h!58790 oldBucket!34)))))

(declare-fun -!696 (ListMap!5037 K!13880) ListMap!5037)

(assert (=> b!4699335 (= lt!1861672 (-!696 lt!1861665 key!4653))))

(assert (=> b!4699335 (= lt!1861665 (+!2176 lt!1861675 (h!58790 oldBucket!34)))))

(declare-fun lt!1861686 () ListMap!5037)

(assert (=> b!4699335 (= lt!1861686 lt!1861688)))

(assert (=> b!4699335 (= lt!1861688 (+!2176 lt!1861693 (h!58790 oldBucket!34)))))

(assert (=> b!4699335 (= lt!1861686 (-!696 (+!2176 lt!1861675 (h!58790 oldBucket!34)) key!4653))))

(declare-fun lt!1861700 () Unit!125868)

(declare-fun addRemoveCommutativeForDiffKeys!97 (ListMap!5037 K!13880 V!14126 K!13880) Unit!125868)

(assert (=> b!4699335 (= lt!1861700 (addRemoveCommutativeForDiffKeys!97 lt!1861675 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)) key!4653))))

(declare-fun b!4699336 () Bool)

(assert (=> b!4699336 (= e!2931464 e!2931466)))

(declare-fun res!1983762 () Bool)

(assert (=> b!4699336 (=> (not res!1983762) (not e!2931466))))

(assert (=> b!4699336 (= res!1983762 (contains!15784 lt!1861699 key!4653))))

(assert (=> b!4699336 (= lt!1861699 (extractMap!1918 (toList!5673 lm!2023)))))

(declare-fun e!2931470 () Bool)

(declare-fun tp!1346557 () Bool)

(declare-fun b!4699326 () Bool)

(assert (=> b!4699326 (= e!2931470 (and tp_is_empty!30861 tp_is_empty!30863 tp!1346557))))

(declare-fun res!1983775 () Bool)

(assert (=> start!476416 (=> (not res!1983775) (not e!2931464))))

(declare-fun forall!11389 (List!52640 Int) Bool)

(assert (=> start!476416 (= res!1983775 (forall!11389 (toList!5673 lm!2023) lambda!209739))))

(assert (=> start!476416 e!2931464))

(declare-fun inv!67754 (ListLongMap!4203) Bool)

(assert (=> start!476416 (and (inv!67754 lm!2023) e!2931467)))

(assert (=> start!476416 tp_is_empty!30861))

(assert (=> start!476416 e!2931470))

(assert (=> start!476416 true))

(assert (=> start!476416 e!2931463))

(declare-fun b!4699337 () Bool)

(declare-fun res!1983758 () Bool)

(assert (=> b!4699337 (=> (not res!1983758) (not e!2931469))))

(declare-fun allKeysSameHash!1718 (List!52639 (_ BitVec 64) Hashable!6261) Bool)

(assert (=> b!4699337 (= res!1983758 (allKeysSameHash!1718 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4699338 () Bool)

(declare-fun res!1983774 () Bool)

(assert (=> b!4699338 (=> (not res!1983774) (not e!2931464))))

(assert (=> b!4699338 (= res!1983774 (allKeysSameHash!1718 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4699339 () Bool)

(assert (=> b!4699339 (= e!2931465 e!2931473)))

(declare-fun res!1983759 () Bool)

(assert (=> b!4699339 (=> res!1983759 e!2931473)))

(assert (=> b!4699339 (= res!1983759 (not (eq!1051 lt!1861668 lt!1861693)))))

(assert (=> b!4699339 (= lt!1861693 (-!696 lt!1861675 key!4653))))

(declare-fun lt!1861691 () tuple2!53964)

(assert (=> b!4699339 (= lt!1861668 (extractMap!1918 (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023)))))))

(declare-fun lt!1861694 () List!52640)

(assert (=> b!4699339 (eq!1051 (extractMap!1918 (Cons!52516 lt!1861691 lt!1861694)) (-!696 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)) key!4653))))

(declare-fun tail!8703 (List!52640) List!52640)

(assert (=> b!4699339 (= lt!1861694 (tail!8703 lt!1861671))))

(assert (=> b!4699339 (= lt!1861691 (tuple2!53965 hash!405 lt!1861683))))

(declare-fun lt!1861692 () Unit!125868)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!66 (ListLongMap!4203 (_ BitVec 64) List!52639 List!52639 K!13880 Hashable!6261) Unit!125868)

(assert (=> b!4699339 (= lt!1861692 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!66 lt!1861677 hash!405 (t!359845 oldBucket!34) lt!1861683 key!4653 hashF!1323))))

(assert (= (and start!476416 res!1983775) b!4699333))

(assert (= (and b!4699333 res!1983771) b!4699325))

(assert (= (and b!4699325 res!1983763) b!4699320))

(assert (= (and b!4699320 res!1983756) b!4699338))

(assert (= (and b!4699338 res!1983774) b!4699336))

(assert (= (and b!4699336 res!1983762) b!4699328))

(assert (= (and b!4699328 res!1983768) b!4699337))

(assert (= (and b!4699337 res!1983758) b!4699327))

(assert (= (and b!4699327 res!1983767) b!4699321))

(assert (= (and b!4699321 res!1983761) b!4699317))

(assert (= (and b!4699317 res!1983772) b!4699329))

(assert (= (and b!4699329 (not res!1983766)) b!4699315))

(assert (= (and b!4699315 (not res!1983765)) b!4699334))

(assert (= (and b!4699334 (not res!1983770)) b!4699331))

(assert (= (and b!4699331 (not res!1983754)) b!4699319))

(assert (= (and b!4699319 (not res!1983769)) b!4699318))

(assert (= (and b!4699318 (not res!1983764)) b!4699332))

(assert (= (and b!4699332 (not res!1983760)) b!4699339))

(assert (= (and b!4699339 (not res!1983759)) b!4699335))

(assert (= (and b!4699335 (not res!1983755)) b!4699322))

(assert (= (and b!4699322 (not res!1983773)) b!4699330))

(assert (= (and b!4699330 (not res!1983757)) b!4699324))

(assert (= start!476416 b!4699316))

(assert (= (and start!476416 ((_ is Cons!52515) oldBucket!34)) b!4699326))

(assert (= (and start!476416 ((_ is Cons!52515) newBucket!218)) b!4699323))

(declare-fun m!5612077 () Bool)

(assert (=> b!4699333 m!5612077))

(declare-fun m!5612079 () Bool)

(assert (=> b!4699324 m!5612079))

(assert (=> b!4699324 m!5612079))

(declare-fun m!5612081 () Bool)

(assert (=> b!4699324 m!5612081))

(declare-fun m!5612083 () Bool)

(assert (=> b!4699324 m!5612083))

(declare-fun m!5612085 () Bool)

(assert (=> b!4699320 m!5612085))

(declare-fun m!5612087 () Bool)

(assert (=> b!4699339 m!5612087))

(declare-fun m!5612089 () Bool)

(assert (=> b!4699339 m!5612089))

(declare-fun m!5612091 () Bool)

(assert (=> b!4699339 m!5612091))

(declare-fun m!5612093 () Bool)

(assert (=> b!4699339 m!5612093))

(declare-fun m!5612095 () Bool)

(assert (=> b!4699339 m!5612095))

(declare-fun m!5612097 () Bool)

(assert (=> b!4699339 m!5612097))

(declare-fun m!5612099 () Bool)

(assert (=> b!4699339 m!5612099))

(declare-fun m!5612101 () Bool)

(assert (=> b!4699339 m!5612101))

(assert (=> b!4699339 m!5612093))

(declare-fun m!5612103 () Bool)

(assert (=> b!4699339 m!5612103))

(assert (=> b!4699339 m!5612101))

(assert (=> b!4699339 m!5612095))

(declare-fun m!5612105 () Bool)

(assert (=> b!4699336 m!5612105))

(declare-fun m!5612107 () Bool)

(assert (=> b!4699336 m!5612107))

(declare-fun m!5612109 () Bool)

(assert (=> b!4699338 m!5612109))

(declare-fun m!5612111 () Bool)

(assert (=> b!4699325 m!5612111))

(declare-fun m!5612113 () Bool)

(assert (=> b!4699322 m!5612113))

(declare-fun m!5612115 () Bool)

(assert (=> b!4699332 m!5612115))

(assert (=> b!4699332 m!5612115))

(declare-fun m!5612117 () Bool)

(assert (=> b!4699332 m!5612117))

(declare-fun m!5612119 () Bool)

(assert (=> start!476416 m!5612119))

(declare-fun m!5612121 () Bool)

(assert (=> start!476416 m!5612121))

(declare-fun m!5612123 () Bool)

(assert (=> b!4699321 m!5612123))

(declare-fun m!5612125 () Bool)

(assert (=> b!4699319 m!5612125))

(declare-fun m!5612127 () Bool)

(assert (=> b!4699319 m!5612127))

(declare-fun m!5612129 () Bool)

(assert (=> b!4699319 m!5612129))

(declare-fun m!5612131 () Bool)

(assert (=> b!4699319 m!5612131))

(declare-fun m!5612133 () Bool)

(assert (=> b!4699319 m!5612133))

(declare-fun m!5612135 () Bool)

(assert (=> b!4699319 m!5612135))

(declare-fun m!5612137 () Bool)

(assert (=> b!4699319 m!5612137))

(declare-fun m!5612139 () Bool)

(assert (=> b!4699319 m!5612139))

(declare-fun m!5612141 () Bool)

(assert (=> b!4699319 m!5612141))

(assert (=> b!4699319 m!5612127))

(declare-fun m!5612143 () Bool)

(assert (=> b!4699319 m!5612143))

(declare-fun m!5612145 () Bool)

(assert (=> b!4699319 m!5612145))

(declare-fun m!5612147 () Bool)

(assert (=> b!4699319 m!5612147))

(assert (=> b!4699319 m!5612141))

(declare-fun m!5612149 () Bool)

(assert (=> b!4699319 m!5612149))

(declare-fun m!5612151 () Bool)

(assert (=> b!4699319 m!5612151))

(declare-fun m!5612153 () Bool)

(assert (=> b!4699319 m!5612153))

(assert (=> b!4699319 m!5612137))

(declare-fun m!5612155 () Bool)

(assert (=> b!4699319 m!5612155))

(declare-fun m!5612157 () Bool)

(assert (=> b!4699319 m!5612157))

(assert (=> b!4699319 m!5612133))

(assert (=> b!4699319 m!5612155))

(assert (=> b!4699319 m!5612147))

(declare-fun m!5612159 () Bool)

(assert (=> b!4699319 m!5612159))

(assert (=> b!4699319 m!5612125))

(declare-fun m!5612161 () Bool)

(assert (=> b!4699319 m!5612161))

(declare-fun m!5612163 () Bool)

(assert (=> b!4699334 m!5612163))

(declare-fun m!5612165 () Bool)

(assert (=> b!4699334 m!5612165))

(declare-fun m!5612167 () Bool)

(assert (=> b!4699334 m!5612167))

(declare-fun m!5612169 () Bool)

(assert (=> b!4699328 m!5612169))

(declare-fun m!5612171 () Bool)

(assert (=> b!4699329 m!5612171))

(declare-fun m!5612173 () Bool)

(assert (=> b!4699329 m!5612173))

(declare-fun m!5612175 () Bool)

(assert (=> b!4699329 m!5612175))

(declare-fun m!5612177 () Bool)

(assert (=> b!4699315 m!5612177))

(declare-fun m!5612179 () Bool)

(assert (=> b!4699315 m!5612179))

(declare-fun m!5612181 () Bool)

(assert (=> b!4699315 m!5612181))

(declare-fun m!5612183 () Bool)

(assert (=> b!4699315 m!5612183))

(declare-fun m!5612185 () Bool)

(assert (=> b!4699315 m!5612185))

(declare-fun m!5612187 () Bool)

(assert (=> b!4699315 m!5612187))

(declare-fun m!5612189 () Bool)

(assert (=> b!4699315 m!5612189))

(declare-fun m!5612191 () Bool)

(assert (=> b!4699315 m!5612191))

(assert (=> b!4699315 m!5612187))

(declare-fun m!5612193 () Bool)

(assert (=> b!4699315 m!5612193))

(declare-fun m!5612195 () Bool)

(assert (=> b!4699315 m!5612195))

(declare-fun m!5612197 () Bool)

(assert (=> b!4699315 m!5612197))

(declare-fun m!5612199 () Bool)

(assert (=> b!4699315 m!5612199))

(declare-fun m!5612201 () Bool)

(assert (=> b!4699335 m!5612201))

(declare-fun m!5612203 () Bool)

(assert (=> b!4699335 m!5612203))

(declare-fun m!5612205 () Bool)

(assert (=> b!4699335 m!5612205))

(declare-fun m!5612207 () Bool)

(assert (=> b!4699335 m!5612207))

(assert (=> b!4699335 m!5612203))

(declare-fun m!5612209 () Bool)

(assert (=> b!4699335 m!5612209))

(declare-fun m!5612211 () Bool)

(assert (=> b!4699327 m!5612211))

(declare-fun m!5612213 () Bool)

(assert (=> b!4699331 m!5612213))

(declare-fun m!5612215 () Bool)

(assert (=> b!4699337 m!5612215))

(declare-fun m!5612217 () Bool)

(assert (=> b!4699330 m!5612217))

(check-sat (not b!4699319) tp_is_empty!30861 (not b!4699325) (not b!4699327) (not b!4699335) (not b!4699338) (not b!4699315) (not b!4699323) (not b!4699316) (not b!4699326) (not b!4699322) (not b!4699339) (not b!4699321) (not b!4699336) (not b!4699324) (not b!4699331) (not b!4699333) (not b!4699320) (not b!4699330) (not b!4699329) (not b!4699337) tp_is_empty!30863 (not b!4699334) (not start!476416) (not b!4699328) (not b!4699332))
(check-sat)
(get-model)

(declare-fun b!4699368 () Bool)

(declare-fun e!2931492 () List!52639)

(assert (=> b!4699368 (= e!2931492 (Cons!52515 (h!58790 lt!1861682) (removePairForKey!1487 (t!359845 lt!1861682) key!4653)))))

(declare-fun d!1494396 () Bool)

(declare-fun lt!1861719 () List!52639)

(assert (=> d!1494396 (not (containsKey!3151 lt!1861719 key!4653))))

(declare-fun e!2931491 () List!52639)

(assert (=> d!1494396 (= lt!1861719 e!2931491)))

(declare-fun c!803300 () Bool)

(assert (=> d!1494396 (= c!803300 (and ((_ is Cons!52515) lt!1861682) (= (_1!30275 (h!58790 lt!1861682)) key!4653)))))

(assert (=> d!1494396 (noDuplicateKeys!1892 lt!1861682)))

(assert (=> d!1494396 (= (removePairForKey!1487 lt!1861682 key!4653) lt!1861719)))

(declare-fun b!4699367 () Bool)

(assert (=> b!4699367 (= e!2931491 e!2931492)))

(declare-fun c!803301 () Bool)

(assert (=> b!4699367 (= c!803301 ((_ is Cons!52515) lt!1861682))))

(declare-fun b!4699366 () Bool)

(assert (=> b!4699366 (= e!2931491 (t!359845 lt!1861682))))

(declare-fun b!4699369 () Bool)

(assert (=> b!4699369 (= e!2931492 Nil!52515)))

(assert (= (and d!1494396 c!803300) b!4699366))

(assert (= (and d!1494396 (not c!803300)) b!4699367))

(assert (= (and b!4699367 c!803301) b!4699368))

(assert (= (and b!4699367 (not c!803301)) b!4699369))

(declare-fun m!5612223 () Bool)

(assert (=> b!4699368 m!5612223))

(declare-fun m!5612225 () Bool)

(assert (=> d!1494396 m!5612225))

(declare-fun m!5612227 () Bool)

(assert (=> d!1494396 m!5612227))

(assert (=> b!4699334 d!1494396))

(declare-fun d!1494398 () Bool)

(assert (=> d!1494398 (= (tail!8702 newBucket!218) (t!359845 newBucket!218))))

(assert (=> b!4699334 d!1494398))

(declare-fun d!1494402 () Bool)

(assert (=> d!1494402 (= (tail!8702 oldBucket!34) (t!359845 oldBucket!34))))

(assert (=> b!4699334 d!1494402))

(declare-fun d!1494404 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9249 (List!52639) (InoxSet tuple2!53962))

(assert (=> d!1494404 (= (eq!1051 lt!1861688 (+!2176 lt!1861668 (h!58790 oldBucket!34))) (= (content!9249 (toList!5674 lt!1861688)) (content!9249 (toList!5674 (+!2176 lt!1861668 (h!58790 oldBucket!34))))))))

(declare-fun bs!1093775 () Bool)

(assert (= bs!1093775 d!1494404))

(declare-fun m!5612249 () Bool)

(assert (=> bs!1093775 m!5612249))

(declare-fun m!5612251 () Bool)

(assert (=> bs!1093775 m!5612251))

(assert (=> b!4699324 d!1494404))

(declare-fun d!1494406 () Bool)

(declare-fun e!2931513 () Bool)

(assert (=> d!1494406 e!2931513))

(declare-fun res!1983802 () Bool)

(assert (=> d!1494406 (=> (not res!1983802) (not e!2931513))))

(declare-fun lt!1861753 () ListMap!5037)

(assert (=> d!1494406 (= res!1983802 (contains!15784 lt!1861753 (_1!30275 (h!58790 oldBucket!34))))))

(declare-fun lt!1861751 () List!52639)

(assert (=> d!1494406 (= lt!1861753 (ListMap!5038 lt!1861751))))

(declare-fun lt!1861754 () Unit!125868)

(declare-fun lt!1861752 () Unit!125868)

(assert (=> d!1494406 (= lt!1861754 lt!1861752)))

(declare-datatypes ((Option!12177 0))(
  ( (None!12176) (Some!12176 (v!46655 V!14126)) )
))
(declare-fun getValueByKey!1839 (List!52639 K!13880) Option!12177)

(assert (=> d!1494406 (= (getValueByKey!1839 lt!1861751 (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1030 (List!52639 K!13880 V!14126) Unit!125868)

(assert (=> d!1494406 (= lt!1861752 (lemmaContainsTupThenGetReturnValue!1030 lt!1861751 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!538 (List!52639 K!13880 V!14126) List!52639)

(assert (=> d!1494406 (= lt!1861751 (insertNoDuplicatedKeys!538 (toList!5674 lt!1861668) (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494406 (= (+!2176 lt!1861668 (h!58790 oldBucket!34)) lt!1861753)))

(declare-fun b!4699401 () Bool)

(declare-fun res!1983801 () Bool)

(assert (=> b!4699401 (=> (not res!1983801) (not e!2931513))))

(assert (=> b!4699401 (= res!1983801 (= (getValueByKey!1839 (toList!5674 lt!1861753) (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun b!4699402 () Bool)

(declare-fun contains!15787 (List!52639 tuple2!53962) Bool)

(assert (=> b!4699402 (= e!2931513 (contains!15787 (toList!5674 lt!1861753) (h!58790 oldBucket!34)))))

(assert (= (and d!1494406 res!1983802) b!4699401))

(assert (= (and b!4699401 res!1983801) b!4699402))

(declare-fun m!5612279 () Bool)

(assert (=> d!1494406 m!5612279))

(declare-fun m!5612281 () Bool)

(assert (=> d!1494406 m!5612281))

(declare-fun m!5612283 () Bool)

(assert (=> d!1494406 m!5612283))

(declare-fun m!5612285 () Bool)

(assert (=> d!1494406 m!5612285))

(declare-fun m!5612287 () Bool)

(assert (=> b!4699401 m!5612287))

(declare-fun m!5612289 () Bool)

(assert (=> b!4699402 m!5612289))

(assert (=> b!4699324 d!1494406))

(declare-fun d!1494416 () Bool)

(assert (=> d!1494416 (eq!1051 (+!2176 lt!1861693 (tuple2!53963 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)))) (+!2176 lt!1861668 (tuple2!53963 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun lt!1861775 () Unit!125868)

(declare-fun choose!32833 (ListMap!5037 ListMap!5037 K!13880 V!14126) Unit!125868)

(assert (=> d!1494416 (= lt!1861775 (choose!32833 lt!1861693 lt!1861668 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494416 (eq!1051 lt!1861693 lt!1861668)))

(assert (=> d!1494416 (= (lemmaAddToEqMapsPreservesEq!74 lt!1861693 lt!1861668 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))) lt!1861775)))

(declare-fun bs!1093780 () Bool)

(assert (= bs!1093780 d!1494416))

(declare-fun m!5612361 () Bool)

(assert (=> bs!1093780 m!5612361))

(declare-fun m!5612363 () Bool)

(assert (=> bs!1093780 m!5612363))

(declare-fun m!5612365 () Bool)

(assert (=> bs!1093780 m!5612365))

(declare-fun m!5612367 () Bool)

(assert (=> bs!1093780 m!5612367))

(declare-fun m!5612369 () Bool)

(assert (=> bs!1093780 m!5612369))

(assert (=> bs!1093780 m!5612365))

(assert (=> bs!1093780 m!5612367))

(assert (=> b!4699324 d!1494416))

(declare-fun d!1494436 () Bool)

(declare-fun e!2931526 () Bool)

(assert (=> d!1494436 e!2931526))

(declare-fun res!1983812 () Bool)

(assert (=> d!1494436 (=> (not res!1983812) (not e!2931526))))

(declare-fun lt!1861778 () ListMap!5037)

(assert (=> d!1494436 (= res!1983812 (contains!15784 lt!1861778 (_1!30275 (h!58790 oldBucket!34))))))

(declare-fun lt!1861776 () List!52639)

(assert (=> d!1494436 (= lt!1861778 (ListMap!5038 lt!1861776))))

(declare-fun lt!1861779 () Unit!125868)

(declare-fun lt!1861777 () Unit!125868)

(assert (=> d!1494436 (= lt!1861779 lt!1861777)))

(assert (=> d!1494436 (= (getValueByKey!1839 lt!1861776 (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494436 (= lt!1861777 (lemmaContainsTupThenGetReturnValue!1030 lt!1861776 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494436 (= lt!1861776 (insertNoDuplicatedKeys!538 (toList!5674 lt!1861693) (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494436 (= (+!2176 lt!1861693 (h!58790 oldBucket!34)) lt!1861778)))

(declare-fun b!4699423 () Bool)

(declare-fun res!1983811 () Bool)

(assert (=> b!4699423 (=> (not res!1983811) (not e!2931526))))

(assert (=> b!4699423 (= res!1983811 (= (getValueByKey!1839 (toList!5674 lt!1861778) (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun b!4699424 () Bool)

(assert (=> b!4699424 (= e!2931526 (contains!15787 (toList!5674 lt!1861778) (h!58790 oldBucket!34)))))

(assert (= (and d!1494436 res!1983812) b!4699423))

(assert (= (and b!4699423 res!1983811) b!4699424))

(declare-fun m!5612371 () Bool)

(assert (=> d!1494436 m!5612371))

(declare-fun m!5612373 () Bool)

(assert (=> d!1494436 m!5612373))

(declare-fun m!5612375 () Bool)

(assert (=> d!1494436 m!5612375))

(declare-fun m!5612377 () Bool)

(assert (=> d!1494436 m!5612377))

(declare-fun m!5612379 () Bool)

(assert (=> b!4699423 m!5612379))

(declare-fun m!5612381 () Bool)

(assert (=> b!4699424 m!5612381))

(assert (=> b!4699335 d!1494436))

(declare-fun d!1494438 () Bool)

(declare-fun e!2931540 () Bool)

(assert (=> d!1494438 e!2931540))

(declare-fun res!1983824 () Bool)

(assert (=> d!1494438 (=> (not res!1983824) (not e!2931540))))

(declare-fun lt!1861788 () ListMap!5037)

(assert (=> d!1494438 (= res!1983824 (not (contains!15784 lt!1861788 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!361 (List!52639 K!13880) List!52639)

(assert (=> d!1494438 (= lt!1861788 (ListMap!5038 (removePresrvNoDuplicatedKeys!361 (toList!5674 lt!1861665) key!4653)))))

(assert (=> d!1494438 (= (-!696 lt!1861665 key!4653) lt!1861788)))

(declare-fun b!4699440 () Bool)

(declare-datatypes ((List!52642 0))(
  ( (Nil!52518) (Cons!52518 (h!58795 K!13880) (t!359850 List!52642)) )
))
(declare-fun content!9250 (List!52642) (InoxSet K!13880))

(declare-fun keys!18781 (ListMap!5037) List!52642)

(assert (=> b!4699440 (= e!2931540 (= ((_ map and) (content!9250 (keys!18781 lt!1861665)) ((_ map not) (store ((as const (Array K!13880 Bool)) false) key!4653 true))) (content!9250 (keys!18781 lt!1861788))))))

(assert (= (and d!1494438 res!1983824) b!4699440))

(declare-fun m!5612429 () Bool)

(assert (=> d!1494438 m!5612429))

(declare-fun m!5612431 () Bool)

(assert (=> d!1494438 m!5612431))

(declare-fun m!5612433 () Bool)

(assert (=> b!4699440 m!5612433))

(declare-fun m!5612435 () Bool)

(assert (=> b!4699440 m!5612435))

(declare-fun m!5612437 () Bool)

(assert (=> b!4699440 m!5612437))

(declare-fun m!5612439 () Bool)

(assert (=> b!4699440 m!5612439))

(declare-fun m!5612441 () Bool)

(assert (=> b!4699440 m!5612441))

(assert (=> b!4699440 m!5612437))

(assert (=> b!4699440 m!5612433))

(assert (=> b!4699335 d!1494438))

(declare-fun d!1494458 () Bool)

(declare-fun e!2931541 () Bool)

(assert (=> d!1494458 e!2931541))

(declare-fun res!1983825 () Bool)

(assert (=> d!1494458 (=> (not res!1983825) (not e!2931541))))

(declare-fun lt!1861789 () ListMap!5037)

(assert (=> d!1494458 (= res!1983825 (not (contains!15784 lt!1861789 key!4653)))))

(assert (=> d!1494458 (= lt!1861789 (ListMap!5038 (removePresrvNoDuplicatedKeys!361 (toList!5674 (+!2176 lt!1861675 (h!58790 oldBucket!34))) key!4653)))))

(assert (=> d!1494458 (= (-!696 (+!2176 lt!1861675 (h!58790 oldBucket!34)) key!4653) lt!1861789)))

(declare-fun b!4699441 () Bool)

(assert (=> b!4699441 (= e!2931541 (= ((_ map and) (content!9250 (keys!18781 (+!2176 lt!1861675 (h!58790 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13880 Bool)) false) key!4653 true))) (content!9250 (keys!18781 lt!1861789))))))

(assert (= (and d!1494458 res!1983825) b!4699441))

(declare-fun m!5612443 () Bool)

(assert (=> d!1494458 m!5612443))

(declare-fun m!5612445 () Bool)

(assert (=> d!1494458 m!5612445))

(declare-fun m!5612447 () Bool)

(assert (=> b!4699441 m!5612447))

(declare-fun m!5612449 () Bool)

(assert (=> b!4699441 m!5612449))

(declare-fun m!5612451 () Bool)

(assert (=> b!4699441 m!5612451))

(declare-fun m!5612453 () Bool)

(assert (=> b!4699441 m!5612453))

(assert (=> b!4699441 m!5612441))

(assert (=> b!4699441 m!5612451))

(assert (=> b!4699441 m!5612203))

(assert (=> b!4699441 m!5612447))

(assert (=> b!4699335 d!1494458))

(declare-fun d!1494460 () Bool)

(assert (=> d!1494460 (= (-!696 (+!2176 lt!1861675 (tuple2!53963 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)))) key!4653) (+!2176 (-!696 lt!1861675 key!4653) (tuple2!53963 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun lt!1861798 () Unit!125868)

(declare-fun choose!32834 (ListMap!5037 K!13880 V!14126 K!13880) Unit!125868)

(assert (=> d!1494460 (= lt!1861798 (choose!32834 lt!1861675 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)) key!4653))))

(assert (=> d!1494460 (not (= (_1!30275 (h!58790 oldBucket!34)) key!4653))))

(assert (=> d!1494460 (= (addRemoveCommutativeForDiffKeys!97 lt!1861675 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34)) key!4653) lt!1861798)))

(declare-fun bs!1093800 () Bool)

(assert (= bs!1093800 d!1494460))

(declare-fun m!5612499 () Bool)

(assert (=> bs!1093800 m!5612499))

(assert (=> bs!1093800 m!5612091))

(declare-fun m!5612501 () Bool)

(assert (=> bs!1093800 m!5612501))

(assert (=> bs!1093800 m!5612091))

(declare-fun m!5612503 () Bool)

(assert (=> bs!1093800 m!5612503))

(assert (=> bs!1093800 m!5612501))

(declare-fun m!5612505 () Bool)

(assert (=> bs!1093800 m!5612505))

(assert (=> b!4699335 d!1494460))

(declare-fun d!1494474 () Bool)

(declare-fun e!2931546 () Bool)

(assert (=> d!1494474 e!2931546))

(declare-fun res!1983828 () Bool)

(assert (=> d!1494474 (=> (not res!1983828) (not e!2931546))))

(declare-fun lt!1861801 () ListMap!5037)

(assert (=> d!1494474 (= res!1983828 (contains!15784 lt!1861801 (_1!30275 (h!58790 oldBucket!34))))))

(declare-fun lt!1861799 () List!52639)

(assert (=> d!1494474 (= lt!1861801 (ListMap!5038 lt!1861799))))

(declare-fun lt!1861802 () Unit!125868)

(declare-fun lt!1861800 () Unit!125868)

(assert (=> d!1494474 (= lt!1861802 lt!1861800)))

(assert (=> d!1494474 (= (getValueByKey!1839 lt!1861799 (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494474 (= lt!1861800 (lemmaContainsTupThenGetReturnValue!1030 lt!1861799 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494474 (= lt!1861799 (insertNoDuplicatedKeys!538 (toList!5674 lt!1861675) (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494474 (= (+!2176 lt!1861675 (h!58790 oldBucket!34)) lt!1861801)))

(declare-fun b!4699449 () Bool)

(declare-fun res!1983827 () Bool)

(assert (=> b!4699449 (=> (not res!1983827) (not e!2931546))))

(assert (=> b!4699449 (= res!1983827 (= (getValueByKey!1839 (toList!5674 lt!1861801) (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun b!4699450 () Bool)

(assert (=> b!4699450 (= e!2931546 (contains!15787 (toList!5674 lt!1861801) (h!58790 oldBucket!34)))))

(assert (= (and d!1494474 res!1983828) b!4699449))

(assert (= (and b!4699449 res!1983827) b!4699450))

(declare-fun m!5612507 () Bool)

(assert (=> d!1494474 m!5612507))

(declare-fun m!5612509 () Bool)

(assert (=> d!1494474 m!5612509))

(declare-fun m!5612511 () Bool)

(assert (=> d!1494474 m!5612511))

(declare-fun m!5612513 () Bool)

(assert (=> d!1494474 m!5612513))

(declare-fun m!5612515 () Bool)

(assert (=> b!4699449 m!5612515))

(declare-fun m!5612517 () Bool)

(assert (=> b!4699450 m!5612517))

(assert (=> b!4699335 d!1494474))

(declare-fun d!1494476 () Bool)

(declare-fun res!1983833 () Bool)

(declare-fun e!2931551 () Bool)

(assert (=> d!1494476 (=> res!1983833 e!2931551)))

(assert (=> d!1494476 (= res!1983833 ((_ is Nil!52516) (toList!5673 lm!2023)))))

(assert (=> d!1494476 (= (forall!11389 (toList!5673 lm!2023) lambda!209739) e!2931551)))

(declare-fun b!4699455 () Bool)

(declare-fun e!2931552 () Bool)

(assert (=> b!4699455 (= e!2931551 e!2931552)))

(declare-fun res!1983834 () Bool)

(assert (=> b!4699455 (=> (not res!1983834) (not e!2931552))))

(declare-fun dynLambda!21743 (Int tuple2!53964) Bool)

(assert (=> b!4699455 (= res!1983834 (dynLambda!21743 lambda!209739 (h!58791 (toList!5673 lm!2023))))))

(declare-fun b!4699456 () Bool)

(assert (=> b!4699456 (= e!2931552 (forall!11389 (t!359846 (toList!5673 lm!2023)) lambda!209739))))

(assert (= (and d!1494476 (not res!1983833)) b!4699455))

(assert (= (and b!4699455 res!1983834) b!4699456))

(declare-fun b_lambda!177319 () Bool)

(assert (=> (not b_lambda!177319) (not b!4699455)))

(declare-fun m!5612519 () Bool)

(assert (=> b!4699455 m!5612519))

(declare-fun m!5612521 () Bool)

(assert (=> b!4699456 m!5612521))

(assert (=> start!476416 d!1494476))

(declare-fun d!1494478 () Bool)

(declare-fun isStrictlySorted!679 (List!52640) Bool)

(assert (=> d!1494478 (= (inv!67754 lm!2023) (isStrictlySorted!679 (toList!5673 lm!2023)))))

(declare-fun bs!1093801 () Bool)

(assert (= bs!1093801 d!1494478))

(declare-fun m!5612523 () Bool)

(assert (=> bs!1093801 m!5612523))

(assert (=> start!476416 d!1494478))

(declare-fun d!1494480 () Bool)

(declare-fun res!1983839 () Bool)

(declare-fun e!2931557 () Bool)

(assert (=> d!1494480 (=> res!1983839 e!2931557)))

(assert (=> d!1494480 (= res!1983839 (not ((_ is Cons!52515) newBucket!218)))))

(assert (=> d!1494480 (= (noDuplicateKeys!1892 newBucket!218) e!2931557)))

(declare-fun b!4699461 () Bool)

(declare-fun e!2931558 () Bool)

(assert (=> b!4699461 (= e!2931557 e!2931558)))

(declare-fun res!1983840 () Bool)

(assert (=> b!4699461 (=> (not res!1983840) (not e!2931558))))

(assert (=> b!4699461 (= res!1983840 (not (containsKey!3151 (t!359845 newBucket!218) (_1!30275 (h!58790 newBucket!218)))))))

(declare-fun b!4699462 () Bool)

(assert (=> b!4699462 (= e!2931558 (noDuplicateKeys!1892 (t!359845 newBucket!218)))))

(assert (= (and d!1494480 (not res!1983839)) b!4699461))

(assert (= (and b!4699461 res!1983840) b!4699462))

(declare-fun m!5612525 () Bool)

(assert (=> b!4699461 m!5612525))

(declare-fun m!5612527 () Bool)

(assert (=> b!4699462 m!5612527))

(assert (=> b!4699325 d!1494480))

(declare-fun b!4699481 () Bool)

(declare-fun e!2931572 () Bool)

(declare-fun contains!15788 (List!52642 K!13880) Bool)

(assert (=> b!4699481 (= e!2931572 (contains!15788 (keys!18781 lt!1861699) key!4653))))

(declare-fun b!4699482 () Bool)

(declare-fun e!2931575 () Bool)

(assert (=> b!4699482 (= e!2931575 (not (contains!15788 (keys!18781 lt!1861699) key!4653)))))

(declare-fun b!4699483 () Bool)

(declare-fun e!2931574 () Unit!125868)

(declare-fun Unit!125883 () Unit!125868)

(assert (=> b!4699483 (= e!2931574 Unit!125883)))

(declare-fun b!4699484 () Bool)

(declare-fun e!2931573 () Unit!125868)

(declare-fun lt!1861826 () Unit!125868)

(assert (=> b!4699484 (= e!2931573 lt!1861826)))

(declare-fun lt!1861824 () Unit!125868)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1731 (List!52639 K!13880) Unit!125868)

(assert (=> b!4699484 (= lt!1861824 (lemmaContainsKeyImpliesGetValueByKeyDefined!1731 (toList!5674 lt!1861699) key!4653))))

(declare-fun isDefined!9432 (Option!12177) Bool)

(assert (=> b!4699484 (isDefined!9432 (getValueByKey!1839 (toList!5674 lt!1861699) key!4653))))

(declare-fun lt!1861820 () Unit!125868)

(assert (=> b!4699484 (= lt!1861820 lt!1861824)))

(declare-fun lemmaInListThenGetKeysListContains!875 (List!52639 K!13880) Unit!125868)

(assert (=> b!4699484 (= lt!1861826 (lemmaInListThenGetKeysListContains!875 (toList!5674 lt!1861699) key!4653))))

(declare-fun call!328513 () Bool)

(assert (=> b!4699484 call!328513))

(declare-fun b!4699485 () Bool)

(declare-fun e!2931571 () List!52642)

(assert (=> b!4699485 (= e!2931571 (keys!18781 lt!1861699))))

(declare-fun b!4699486 () Bool)

(assert (=> b!4699486 (= e!2931573 e!2931574)))

(declare-fun c!803325 () Bool)

(assert (=> b!4699486 (= c!803325 call!328513)))

(declare-fun b!4699487 () Bool)

(declare-fun getKeysList!880 (List!52639) List!52642)

(assert (=> b!4699487 (= e!2931571 (getKeysList!880 (toList!5674 lt!1861699)))))

(declare-fun d!1494482 () Bool)

(declare-fun e!2931576 () Bool)

(assert (=> d!1494482 e!2931576))

(declare-fun res!1983847 () Bool)

(assert (=> d!1494482 (=> res!1983847 e!2931576)))

(assert (=> d!1494482 (= res!1983847 e!2931575)))

(declare-fun res!1983849 () Bool)

(assert (=> d!1494482 (=> (not res!1983849) (not e!2931575))))

(declare-fun lt!1861825 () Bool)

(assert (=> d!1494482 (= res!1983849 (not lt!1861825))))

(declare-fun lt!1861823 () Bool)

(assert (=> d!1494482 (= lt!1861825 lt!1861823)))

(declare-fun lt!1861822 () Unit!125868)

(assert (=> d!1494482 (= lt!1861822 e!2931573)))

(declare-fun c!803327 () Bool)

(assert (=> d!1494482 (= c!803327 lt!1861823)))

(declare-fun containsKey!3153 (List!52639 K!13880) Bool)

(assert (=> d!1494482 (= lt!1861823 (containsKey!3153 (toList!5674 lt!1861699) key!4653))))

(assert (=> d!1494482 (= (contains!15784 lt!1861699 key!4653) lt!1861825)))

(declare-fun b!4699488 () Bool)

(assert (=> b!4699488 (= e!2931576 e!2931572)))

(declare-fun res!1983848 () Bool)

(assert (=> b!4699488 (=> (not res!1983848) (not e!2931572))))

(assert (=> b!4699488 (= res!1983848 (isDefined!9432 (getValueByKey!1839 (toList!5674 lt!1861699) key!4653)))))

(declare-fun bm!328508 () Bool)

(assert (=> bm!328508 (= call!328513 (contains!15788 e!2931571 key!4653))))

(declare-fun c!803326 () Bool)

(assert (=> bm!328508 (= c!803326 c!803327)))

(declare-fun b!4699489 () Bool)

(assert (=> b!4699489 false))

(declare-fun lt!1861819 () Unit!125868)

(declare-fun lt!1861821 () Unit!125868)

(assert (=> b!4699489 (= lt!1861819 lt!1861821)))

(assert (=> b!4699489 (containsKey!3153 (toList!5674 lt!1861699) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!879 (List!52639 K!13880) Unit!125868)

(assert (=> b!4699489 (= lt!1861821 (lemmaInGetKeysListThenContainsKey!879 (toList!5674 lt!1861699) key!4653))))

(declare-fun Unit!125884 () Unit!125868)

(assert (=> b!4699489 (= e!2931574 Unit!125884)))

(assert (= (and d!1494482 c!803327) b!4699484))

(assert (= (and d!1494482 (not c!803327)) b!4699486))

(assert (= (and b!4699486 c!803325) b!4699489))

(assert (= (and b!4699486 (not c!803325)) b!4699483))

(assert (= (or b!4699484 b!4699486) bm!328508))

(assert (= (and bm!328508 c!803326) b!4699487))

(assert (= (and bm!328508 (not c!803326)) b!4699485))

(assert (= (and d!1494482 res!1983849) b!4699482))

(assert (= (and d!1494482 (not res!1983847)) b!4699488))

(assert (= (and b!4699488 res!1983848) b!4699481))

(declare-fun m!5612529 () Bool)

(assert (=> b!4699482 m!5612529))

(assert (=> b!4699482 m!5612529))

(declare-fun m!5612531 () Bool)

(assert (=> b!4699482 m!5612531))

(declare-fun m!5612533 () Bool)

(assert (=> b!4699487 m!5612533))

(assert (=> b!4699485 m!5612529))

(declare-fun m!5612535 () Bool)

(assert (=> b!4699484 m!5612535))

(declare-fun m!5612537 () Bool)

(assert (=> b!4699484 m!5612537))

(assert (=> b!4699484 m!5612537))

(declare-fun m!5612539 () Bool)

(assert (=> b!4699484 m!5612539))

(declare-fun m!5612541 () Bool)

(assert (=> b!4699484 m!5612541))

(declare-fun m!5612543 () Bool)

(assert (=> b!4699489 m!5612543))

(declare-fun m!5612545 () Bool)

(assert (=> b!4699489 m!5612545))

(declare-fun m!5612547 () Bool)

(assert (=> bm!328508 m!5612547))

(assert (=> d!1494482 m!5612543))

(assert (=> b!4699481 m!5612529))

(assert (=> b!4699481 m!5612529))

(assert (=> b!4699481 m!5612531))

(assert (=> b!4699488 m!5612537))

(assert (=> b!4699488 m!5612537))

(assert (=> b!4699488 m!5612539))

(assert (=> b!4699336 d!1494482))

(declare-fun bs!1093802 () Bool)

(declare-fun d!1494484 () Bool)

(assert (= bs!1093802 (and d!1494484 start!476416)))

(declare-fun lambda!209751 () Int)

(assert (=> bs!1093802 (= lambda!209751 lambda!209739)))

(declare-fun lt!1861829 () ListMap!5037)

(declare-fun invariantList!1440 (List!52639) Bool)

(assert (=> d!1494484 (invariantList!1440 (toList!5674 lt!1861829))))

(declare-fun e!2931579 () ListMap!5037)

(assert (=> d!1494484 (= lt!1861829 e!2931579)))

(declare-fun c!803330 () Bool)

(assert (=> d!1494484 (= c!803330 ((_ is Cons!52516) (toList!5673 lm!2023)))))

(assert (=> d!1494484 (forall!11389 (toList!5673 lm!2023) lambda!209751)))

(assert (=> d!1494484 (= (extractMap!1918 (toList!5673 lm!2023)) lt!1861829)))

(declare-fun b!4699494 () Bool)

(assert (=> b!4699494 (= e!2931579 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (toList!5673 lm!2023))) (extractMap!1918 (t!359846 (toList!5673 lm!2023)))))))

(declare-fun b!4699495 () Bool)

(assert (=> b!4699495 (= e!2931579 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494484 c!803330) b!4699494))

(assert (= (and d!1494484 (not c!803330)) b!4699495))

(declare-fun m!5612549 () Bool)

(assert (=> d!1494484 m!5612549))

(declare-fun m!5612551 () Bool)

(assert (=> d!1494484 m!5612551))

(assert (=> b!4699494 m!5612173))

(assert (=> b!4699494 m!5612173))

(declare-fun m!5612553 () Bool)

(assert (=> b!4699494 m!5612553))

(assert (=> b!4699336 d!1494484))

(declare-fun d!1494486 () Bool)

(assert (=> d!1494486 (dynLambda!21743 lambda!209739 lt!1861695)))

(declare-fun lt!1861838 () Unit!125868)

(declare-fun choose!32837 (List!52640 Int tuple2!53964) Unit!125868)

(assert (=> d!1494486 (= lt!1861838 (choose!32837 (toList!5673 lm!2023) lambda!209739 lt!1861695))))

(declare-fun e!2931584 () Bool)

(assert (=> d!1494486 e!2931584))

(declare-fun res!1983852 () Bool)

(assert (=> d!1494486 (=> (not res!1983852) (not e!2931584))))

(assert (=> d!1494486 (= res!1983852 (forall!11389 (toList!5673 lm!2023) lambda!209739))))

(assert (=> d!1494486 (= (forallContained!3496 (toList!5673 lm!2023) lambda!209739 lt!1861695) lt!1861838)))

(declare-fun b!4699502 () Bool)

(assert (=> b!4699502 (= e!2931584 (contains!15782 (toList!5673 lm!2023) lt!1861695))))

(assert (= (and d!1494486 res!1983852) b!4699502))

(declare-fun b_lambda!177321 () Bool)

(assert (=> (not b_lambda!177321) (not d!1494486)))

(declare-fun m!5612555 () Bool)

(assert (=> d!1494486 m!5612555))

(declare-fun m!5612557 () Bool)

(assert (=> d!1494486 m!5612557))

(assert (=> d!1494486 m!5612119))

(assert (=> b!4699502 m!5612199))

(assert (=> b!4699315 d!1494486))

(declare-fun d!1494488 () Bool)

(declare-fun isEmpty!29123 (Option!12175) Bool)

(assert (=> d!1494488 (= (isDefined!9430 (getPair!496 lt!1861669 key!4653)) (not (isEmpty!29123 (getPair!496 lt!1861669 key!4653))))))

(declare-fun bs!1093803 () Bool)

(assert (= bs!1093803 d!1494488))

(assert (=> bs!1093803 m!5612187))

(declare-fun m!5612559 () Bool)

(assert (=> bs!1093803 m!5612559))

(assert (=> b!4699315 d!1494488))

(declare-fun d!1494490 () Bool)

(declare-datatypes ((Option!12179 0))(
  ( (None!12178) (Some!12178 (v!46657 List!52639)) )
))
(declare-fun get!17571 (Option!12179) List!52639)

(declare-fun getValueByKey!1841 (List!52640 (_ BitVec 64)) Option!12179)

(assert (=> d!1494490 (= (apply!12375 lm!2023 lt!1861698) (get!17571 (getValueByKey!1841 (toList!5673 lm!2023) lt!1861698)))))

(declare-fun bs!1093804 () Bool)

(assert (= bs!1093804 d!1494490))

(declare-fun m!5612561 () Bool)

(assert (=> bs!1093804 m!5612561))

(assert (=> bs!1093804 m!5612561))

(declare-fun m!5612563 () Bool)

(assert (=> bs!1093804 m!5612563))

(assert (=> b!4699315 d!1494490))

(declare-fun d!1494492 () Bool)

(declare-fun lt!1861865 () Bool)

(declare-fun content!9252 (List!52640) (InoxSet tuple2!53964))

(assert (=> d!1494492 (= lt!1861865 (select (content!9252 (toList!5673 lm!2023)) lt!1861695))))

(declare-fun e!2931590 () Bool)

(assert (=> d!1494492 (= lt!1861865 e!2931590)))

(declare-fun res!1983858 () Bool)

(assert (=> d!1494492 (=> (not res!1983858) (not e!2931590))))

(assert (=> d!1494492 (= res!1983858 ((_ is Cons!52516) (toList!5673 lm!2023)))))

(assert (=> d!1494492 (= (contains!15782 (toList!5673 lm!2023) lt!1861695) lt!1861865)))

(declare-fun b!4699507 () Bool)

(declare-fun e!2931589 () Bool)

(assert (=> b!4699507 (= e!2931590 e!2931589)))

(declare-fun res!1983857 () Bool)

(assert (=> b!4699507 (=> res!1983857 e!2931589)))

(assert (=> b!4699507 (= res!1983857 (= (h!58791 (toList!5673 lm!2023)) lt!1861695))))

(declare-fun b!4699508 () Bool)

(assert (=> b!4699508 (= e!2931589 (contains!15782 (t!359846 (toList!5673 lm!2023)) lt!1861695))))

(assert (= (and d!1494492 res!1983858) b!4699507))

(assert (= (and b!4699507 (not res!1983857)) b!4699508))

(declare-fun m!5612565 () Bool)

(assert (=> d!1494492 m!5612565))

(declare-fun m!5612567 () Bool)

(assert (=> d!1494492 m!5612567))

(declare-fun m!5612569 () Bool)

(assert (=> b!4699508 m!5612569))

(assert (=> b!4699315 d!1494492))

(declare-fun bs!1093805 () Bool)

(declare-fun d!1494494 () Bool)

(assert (= bs!1093805 (and d!1494494 start!476416)))

(declare-fun lambda!209778 () Int)

(assert (=> bs!1093805 (= lambda!209778 lambda!209739)))

(declare-fun bs!1093806 () Bool)

(assert (= bs!1093806 (and d!1494494 d!1494484)))

(assert (=> bs!1093806 (= lambda!209778 lambda!209751)))

(assert (=> d!1494494 (contains!15783 lm!2023 (hash!4156 hashF!1323 key!4653))))

(declare-fun lt!1861880 () Unit!125868)

(declare-fun choose!32839 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> d!1494494 (= lt!1861880 (choose!32839 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494494 (forall!11389 (toList!5673 lm!2023) lambda!209778)))

(assert (=> d!1494494 (= (lemmaInGenMapThenLongMapContainsHash!702 lm!2023 key!4653 hashF!1323) lt!1861880)))

(declare-fun bs!1093807 () Bool)

(assert (= bs!1093807 d!1494494))

(assert (=> bs!1093807 m!5612169))

(assert (=> bs!1093807 m!5612169))

(declare-fun m!5612571 () Bool)

(assert (=> bs!1093807 m!5612571))

(declare-fun m!5612573 () Bool)

(assert (=> bs!1093807 m!5612573))

(declare-fun m!5612575 () Bool)

(assert (=> bs!1093807 m!5612575))

(assert (=> b!4699315 d!1494494))

(declare-fun b!4699531 () Bool)

(declare-fun e!2931606 () Option!12175)

(assert (=> b!4699531 (= e!2931606 None!12174)))

(declare-fun b!4699533 () Bool)

(declare-fun res!1983873 () Bool)

(declare-fun e!2931607 () Bool)

(assert (=> b!4699533 (=> (not res!1983873) (not e!2931607))))

(declare-fun lt!1861883 () Option!12175)

(declare-fun get!17572 (Option!12175) tuple2!53962)

(assert (=> b!4699533 (= res!1983873 (= (_1!30275 (get!17572 lt!1861883)) key!4653))))

(declare-fun b!4699534 () Bool)

(assert (=> b!4699534 (= e!2931606 (getPair!496 (t!359845 lt!1861669) key!4653))))

(declare-fun b!4699532 () Bool)

(declare-fun e!2931605 () Bool)

(assert (=> b!4699532 (= e!2931605 (not (containsKey!3151 lt!1861669 key!4653)))))

(declare-fun d!1494496 () Bool)

(declare-fun e!2931608 () Bool)

(assert (=> d!1494496 e!2931608))

(declare-fun res!1983875 () Bool)

(assert (=> d!1494496 (=> res!1983875 e!2931608)))

(assert (=> d!1494496 (= res!1983875 e!2931605)))

(declare-fun res!1983876 () Bool)

(assert (=> d!1494496 (=> (not res!1983876) (not e!2931605))))

(assert (=> d!1494496 (= res!1983876 (isEmpty!29123 lt!1861883))))

(declare-fun e!2931609 () Option!12175)

(assert (=> d!1494496 (= lt!1861883 e!2931609)))

(declare-fun c!803338 () Bool)

(assert (=> d!1494496 (= c!803338 (and ((_ is Cons!52515) lt!1861669) (= (_1!30275 (h!58790 lt!1861669)) key!4653)))))

(assert (=> d!1494496 (noDuplicateKeys!1892 lt!1861669)))

(assert (=> d!1494496 (= (getPair!496 lt!1861669 key!4653) lt!1861883)))

(declare-fun b!4699535 () Bool)

(assert (=> b!4699535 (= e!2931609 (Some!12174 (h!58790 lt!1861669)))))

(declare-fun b!4699536 () Bool)

(assert (=> b!4699536 (= e!2931608 e!2931607)))

(declare-fun res!1983874 () Bool)

(assert (=> b!4699536 (=> (not res!1983874) (not e!2931607))))

(assert (=> b!4699536 (= res!1983874 (isDefined!9430 lt!1861883))))

(declare-fun b!4699537 () Bool)

(assert (=> b!4699537 (= e!2931607 (contains!15787 lt!1861669 (get!17572 lt!1861883)))))

(declare-fun b!4699538 () Bool)

(assert (=> b!4699538 (= e!2931609 e!2931606)))

(declare-fun c!803337 () Bool)

(assert (=> b!4699538 (= c!803337 ((_ is Cons!52515) lt!1861669))))

(assert (= (and d!1494496 c!803338) b!4699535))

(assert (= (and d!1494496 (not c!803338)) b!4699538))

(assert (= (and b!4699538 c!803337) b!4699534))

(assert (= (and b!4699538 (not c!803337)) b!4699531))

(assert (= (and d!1494496 res!1983876) b!4699532))

(assert (= (and d!1494496 (not res!1983875)) b!4699536))

(assert (= (and b!4699536 res!1983874) b!4699533))

(assert (= (and b!4699533 res!1983873) b!4699537))

(declare-fun m!5612577 () Bool)

(assert (=> b!4699536 m!5612577))

(declare-fun m!5612579 () Bool)

(assert (=> b!4699537 m!5612579))

(assert (=> b!4699537 m!5612579))

(declare-fun m!5612581 () Bool)

(assert (=> b!4699537 m!5612581))

(declare-fun m!5612583 () Bool)

(assert (=> b!4699532 m!5612583))

(assert (=> b!4699533 m!5612579))

(declare-fun m!5612585 () Bool)

(assert (=> d!1494496 m!5612585))

(declare-fun m!5612587 () Bool)

(assert (=> d!1494496 m!5612587))

(declare-fun m!5612589 () Bool)

(assert (=> b!4699534 m!5612589))

(assert (=> b!4699315 d!1494496))

(declare-fun d!1494498 () Bool)

(assert (=> d!1494498 (containsKey!3151 oldBucket!34 key!4653)))

(declare-fun lt!1861907 () Unit!125868)

(declare-fun choose!32841 (List!52639 K!13880 Hashable!6261) Unit!125868)

(assert (=> d!1494498 (= lt!1861907 (choose!32841 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1494498 (noDuplicateKeys!1892 oldBucket!34)))

(assert (=> d!1494498 (= (lemmaGetPairDefinedThenContainsKey!244 oldBucket!34 key!4653 hashF!1323) lt!1861907)))

(declare-fun bs!1093808 () Bool)

(assert (= bs!1093808 d!1494498))

(assert (=> bs!1093808 m!5612197))

(declare-fun m!5612591 () Bool)

(assert (=> bs!1093808 m!5612591))

(assert (=> bs!1093808 m!5612077))

(assert (=> b!4699315 d!1494498))

(declare-fun d!1494500 () Bool)

(declare-fun e!2931619 () Bool)

(assert (=> d!1494500 e!2931619))

(declare-fun res!1983882 () Bool)

(assert (=> d!1494500 (=> res!1983882 e!2931619)))

(declare-fun lt!1861918 () Bool)

(assert (=> d!1494500 (= res!1983882 (not lt!1861918))))

(declare-fun lt!1861920 () Bool)

(assert (=> d!1494500 (= lt!1861918 lt!1861920)))

(declare-fun lt!1861917 () Unit!125868)

(declare-fun e!2931618 () Unit!125868)

(assert (=> d!1494500 (= lt!1861917 e!2931618)))

(declare-fun c!803343 () Bool)

(assert (=> d!1494500 (= c!803343 lt!1861920)))

(declare-fun containsKey!3154 (List!52640 (_ BitVec 64)) Bool)

(assert (=> d!1494500 (= lt!1861920 (containsKey!3154 (toList!5673 lm!2023) lt!1861698))))

(assert (=> d!1494500 (= (contains!15783 lm!2023 lt!1861698) lt!1861918)))

(declare-fun b!4699554 () Bool)

(declare-fun lt!1861919 () Unit!125868)

(assert (=> b!4699554 (= e!2931618 lt!1861919)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1732 (List!52640 (_ BitVec 64)) Unit!125868)

(assert (=> b!4699554 (= lt!1861919 (lemmaContainsKeyImpliesGetValueByKeyDefined!1732 (toList!5673 lm!2023) lt!1861698))))

(declare-fun isDefined!9433 (Option!12179) Bool)

(assert (=> b!4699554 (isDefined!9433 (getValueByKey!1841 (toList!5673 lm!2023) lt!1861698))))

(declare-fun b!4699555 () Bool)

(declare-fun Unit!125885 () Unit!125868)

(assert (=> b!4699555 (= e!2931618 Unit!125885)))

(declare-fun b!4699556 () Bool)

(assert (=> b!4699556 (= e!2931619 (isDefined!9433 (getValueByKey!1841 (toList!5673 lm!2023) lt!1861698)))))

(assert (= (and d!1494500 c!803343) b!4699554))

(assert (= (and d!1494500 (not c!803343)) b!4699555))

(assert (= (and d!1494500 (not res!1983882)) b!4699556))

(declare-fun m!5612633 () Bool)

(assert (=> d!1494500 m!5612633))

(declare-fun m!5612635 () Bool)

(assert (=> b!4699554 m!5612635))

(assert (=> b!4699554 m!5612561))

(assert (=> b!4699554 m!5612561))

(declare-fun m!5612637 () Bool)

(assert (=> b!4699554 m!5612637))

(assert (=> b!4699556 m!5612561))

(assert (=> b!4699556 m!5612561))

(assert (=> b!4699556 m!5612637))

(assert (=> b!4699315 d!1494500))

(declare-fun d!1494508 () Bool)

(declare-fun res!1983887 () Bool)

(declare-fun e!2931624 () Bool)

(assert (=> d!1494508 (=> res!1983887 e!2931624)))

(assert (=> d!1494508 (= res!1983887 (and ((_ is Cons!52515) (t!359845 oldBucket!34)) (= (_1!30275 (h!58790 (t!359845 oldBucket!34))) key!4653)))))

(assert (=> d!1494508 (= (containsKey!3151 (t!359845 oldBucket!34) key!4653) e!2931624)))

(declare-fun b!4699561 () Bool)

(declare-fun e!2931625 () Bool)

(assert (=> b!4699561 (= e!2931624 e!2931625)))

(declare-fun res!1983888 () Bool)

(assert (=> b!4699561 (=> (not res!1983888) (not e!2931625))))

(assert (=> b!4699561 (= res!1983888 ((_ is Cons!52515) (t!359845 oldBucket!34)))))

(declare-fun b!4699562 () Bool)

(assert (=> b!4699562 (= e!2931625 (containsKey!3151 (t!359845 (t!359845 oldBucket!34)) key!4653))))

(assert (= (and d!1494508 (not res!1983887)) b!4699561))

(assert (= (and b!4699561 res!1983888) b!4699562))

(declare-fun m!5612641 () Bool)

(assert (=> b!4699562 m!5612641))

(assert (=> b!4699315 d!1494508))

(declare-fun d!1494510 () Bool)

(declare-fun res!1983889 () Bool)

(declare-fun e!2931626 () Bool)

(assert (=> d!1494510 (=> res!1983889 e!2931626)))

(assert (=> d!1494510 (= res!1983889 (and ((_ is Cons!52515) oldBucket!34) (= (_1!30275 (h!58790 oldBucket!34)) key!4653)))))

(assert (=> d!1494510 (= (containsKey!3151 oldBucket!34 key!4653) e!2931626)))

(declare-fun b!4699563 () Bool)

(declare-fun e!2931627 () Bool)

(assert (=> b!4699563 (= e!2931626 e!2931627)))

(declare-fun res!1983890 () Bool)

(assert (=> b!4699563 (=> (not res!1983890) (not e!2931627))))

(assert (=> b!4699563 (= res!1983890 ((_ is Cons!52515) oldBucket!34))))

(declare-fun b!4699564 () Bool)

(assert (=> b!4699564 (= e!2931627 (containsKey!3151 (t!359845 oldBucket!34) key!4653))))

(assert (= (and d!1494510 (not res!1983889)) b!4699563))

(assert (= (and b!4699563 res!1983890) b!4699564))

(assert (=> b!4699564 m!5612183))

(assert (=> b!4699315 d!1494510))

(declare-fun d!1494512 () Bool)

(assert (=> d!1494512 (contains!15782 (toList!5673 lm!2023) (tuple2!53965 lt!1861698 lt!1861669))))

(declare-fun lt!1861928 () Unit!125868)

(declare-fun choose!32842 (ListLongMap!4203 (_ BitVec 64) List!52639) Unit!125868)

(assert (=> d!1494512 (= lt!1861928 (choose!32842 lm!2023 lt!1861698 lt!1861669))))

(assert (=> d!1494512 (contains!15783 lm!2023 lt!1861698)))

(assert (=> d!1494512 (= (lemmaGetValueImpliesTupleContained!301 lm!2023 lt!1861698 lt!1861669) lt!1861928)))

(declare-fun bs!1093820 () Bool)

(assert (= bs!1093820 d!1494512))

(declare-fun m!5612647 () Bool)

(assert (=> bs!1093820 m!5612647))

(declare-fun m!5612649 () Bool)

(assert (=> bs!1093820 m!5612649))

(assert (=> bs!1093820 m!5612191))

(assert (=> b!4699315 d!1494512))

(declare-fun bs!1093830 () Bool)

(declare-fun d!1494516 () Bool)

(assert (= bs!1093830 (and d!1494516 start!476416)))

(declare-fun lambda!209797 () Int)

(assert (=> bs!1093830 (= lambda!209797 lambda!209739)))

(declare-fun bs!1093831 () Bool)

(assert (= bs!1093831 (and d!1494516 d!1494484)))

(assert (=> bs!1093831 (= lambda!209797 lambda!209751)))

(declare-fun bs!1093832 () Bool)

(assert (= bs!1093832 (and d!1494516 d!1494494)))

(assert (=> bs!1093832 (= lambda!209797 lambda!209778)))

(declare-fun e!2931639 () Bool)

(declare-fun b!4699583 () Bool)

(assert (=> b!4699583 (= e!2931639 (isDefined!9430 (getPair!496 (apply!12375 lm!2023 (hash!4156 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1861949 () Unit!125868)

(assert (=> b!4699583 (= lt!1861949 (forallContained!3496 (toList!5673 lm!2023) lambda!209797 (tuple2!53965 (hash!4156 hashF!1323 key!4653) (apply!12375 lm!2023 (hash!4156 hashF!1323 key!4653)))))))

(declare-fun lt!1861955 () Unit!125868)

(declare-fun lt!1861956 () Unit!125868)

(assert (=> b!4699583 (= lt!1861955 lt!1861956)))

(declare-fun lt!1861950 () (_ BitVec 64))

(declare-fun lt!1861953 () List!52639)

(assert (=> b!4699583 (contains!15782 (toList!5673 lm!2023) (tuple2!53965 lt!1861950 lt!1861953))))

(assert (=> b!4699583 (= lt!1861956 (lemmaGetValueImpliesTupleContained!301 lm!2023 lt!1861950 lt!1861953))))

(declare-fun e!2931638 () Bool)

(assert (=> b!4699583 e!2931638))

(declare-fun res!1983907 () Bool)

(assert (=> b!4699583 (=> (not res!1983907) (not e!2931638))))

(assert (=> b!4699583 (= res!1983907 (contains!15783 lm!2023 lt!1861950))))

(assert (=> b!4699583 (= lt!1861953 (apply!12375 lm!2023 (hash!4156 hashF!1323 key!4653)))))

(assert (=> b!4699583 (= lt!1861950 (hash!4156 hashF!1323 key!4653))))

(declare-fun lt!1861952 () Unit!125868)

(declare-fun lt!1861954 () Unit!125868)

(assert (=> b!4699583 (= lt!1861952 lt!1861954)))

(assert (=> b!4699583 (contains!15783 lm!2023 (hash!4156 hashF!1323 key!4653))))

(assert (=> b!4699583 (= lt!1861954 (lemmaInGenMapThenLongMapContainsHash!702 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4699581 () Bool)

(declare-fun res!1983908 () Bool)

(assert (=> b!4699581 (=> (not res!1983908) (not e!2931639))))

(assert (=> b!4699581 (= res!1983908 (allKeysSameHashInMap!1806 lm!2023 hashF!1323))))

(declare-fun b!4699584 () Bool)

(assert (=> b!4699584 (= e!2931638 (= (getValueByKey!1841 (toList!5673 lm!2023) lt!1861950) (Some!12178 lt!1861953)))))

(declare-fun b!4699582 () Bool)

(declare-fun res!1983905 () Bool)

(assert (=> b!4699582 (=> (not res!1983905) (not e!2931639))))

(assert (=> b!4699582 (= res!1983905 (contains!15784 (extractMap!1918 (toList!5673 lm!2023)) key!4653))))

(assert (=> d!1494516 e!2931639))

(declare-fun res!1983906 () Bool)

(assert (=> d!1494516 (=> (not res!1983906) (not e!2931639))))

(assert (=> d!1494516 (= res!1983906 (forall!11389 (toList!5673 lm!2023) lambda!209797))))

(declare-fun lt!1861951 () Unit!125868)

(declare-fun choose!32844 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> d!1494516 (= lt!1861951 (choose!32844 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494516 (forall!11389 (toList!5673 lm!2023) lambda!209797)))

(assert (=> d!1494516 (= (lemmaInGenMapThenGetPairDefined!292 lm!2023 key!4653 hashF!1323) lt!1861951)))

(assert (= (and d!1494516 res!1983906) b!4699581))

(assert (= (and b!4699581 res!1983908) b!4699582))

(assert (= (and b!4699582 res!1983905) b!4699583))

(assert (= (and b!4699583 res!1983907) b!4699584))

(declare-fun m!5612667 () Bool)

(assert (=> d!1494516 m!5612667))

(declare-fun m!5612669 () Bool)

(assert (=> d!1494516 m!5612669))

(assert (=> d!1494516 m!5612667))

(declare-fun m!5612671 () Bool)

(assert (=> b!4699584 m!5612671))

(assert (=> b!4699581 m!5612211))

(declare-fun m!5612673 () Bool)

(assert (=> b!4699583 m!5612673))

(declare-fun m!5612675 () Bool)

(assert (=> b!4699583 m!5612675))

(declare-fun m!5612677 () Bool)

(assert (=> b!4699583 m!5612677))

(assert (=> b!4699583 m!5612169))

(assert (=> b!4699583 m!5612571))

(assert (=> b!4699583 m!5612169))

(declare-fun m!5612679 () Bool)

(assert (=> b!4699583 m!5612679))

(declare-fun m!5612681 () Bool)

(assert (=> b!4699583 m!5612681))

(assert (=> b!4699583 m!5612169))

(declare-fun m!5612683 () Bool)

(assert (=> b!4699583 m!5612683))

(assert (=> b!4699583 m!5612679))

(assert (=> b!4699583 m!5612673))

(assert (=> b!4699583 m!5612193))

(declare-fun m!5612685 () Bool)

(assert (=> b!4699583 m!5612685))

(assert (=> b!4699582 m!5612107))

(assert (=> b!4699582 m!5612107))

(declare-fun m!5612687 () Bool)

(assert (=> b!4699582 m!5612687))

(assert (=> b!4699315 d!1494516))

(declare-fun d!1494524 () Bool)

(assert (=> d!1494524 true))

(assert (=> d!1494524 true))

(declare-fun lambda!209806 () Int)

(declare-fun forall!11391 (List!52639 Int) Bool)

(assert (=> d!1494524 (= (allKeysSameHash!1718 newBucket!218 hash!405 hashF!1323) (forall!11391 newBucket!218 lambda!209806))))

(declare-fun bs!1093833 () Bool)

(assert (= bs!1093833 d!1494524))

(declare-fun m!5612689 () Bool)

(assert (=> bs!1093833 m!5612689))

(assert (=> b!4699337 d!1494524))

(declare-fun bs!1093834 () Bool)

(declare-fun d!1494526 () Bool)

(assert (= bs!1093834 (and d!1494526 start!476416)))

(declare-fun lambda!209809 () Int)

(assert (=> bs!1093834 (not (= lambda!209809 lambda!209739))))

(declare-fun bs!1093835 () Bool)

(assert (= bs!1093835 (and d!1494526 d!1494484)))

(assert (=> bs!1093835 (not (= lambda!209809 lambda!209751))))

(declare-fun bs!1093836 () Bool)

(assert (= bs!1093836 (and d!1494526 d!1494494)))

(assert (=> bs!1093836 (not (= lambda!209809 lambda!209778))))

(declare-fun bs!1093837 () Bool)

(assert (= bs!1093837 (and d!1494526 d!1494516)))

(assert (=> bs!1093837 (not (= lambda!209809 lambda!209797))))

(assert (=> d!1494526 true))

(assert (=> d!1494526 (= (allKeysSameHashInMap!1806 lm!2023 hashF!1323) (forall!11389 (toList!5673 lm!2023) lambda!209809))))

(declare-fun bs!1093838 () Bool)

(assert (= bs!1093838 d!1494526))

(declare-fun m!5612691 () Bool)

(assert (=> bs!1093838 m!5612691))

(assert (=> b!4699327 d!1494526))

(declare-fun bs!1093839 () Bool)

(declare-fun d!1494528 () Bool)

(assert (= bs!1093839 (and d!1494528 d!1494524)))

(declare-fun lambda!209810 () Int)

(assert (=> bs!1093839 (= lambda!209810 lambda!209806)))

(assert (=> d!1494528 true))

(assert (=> d!1494528 true))

(assert (=> d!1494528 (= (allKeysSameHash!1718 oldBucket!34 hash!405 hashF!1323) (forall!11391 oldBucket!34 lambda!209810))))

(declare-fun bs!1093840 () Bool)

(assert (= bs!1093840 d!1494528))

(declare-fun m!5612693 () Bool)

(assert (=> bs!1093840 m!5612693))

(assert (=> b!4699338 d!1494528))

(declare-fun d!1494530 () Bool)

(declare-fun hash!4160 (Hashable!6261 K!13880) (_ BitVec 64))

(assert (=> d!1494530 (= (hash!4156 hashF!1323 key!4653) (hash!4160 hashF!1323 key!4653))))

(declare-fun bs!1093845 () Bool)

(assert (= bs!1093845 d!1494530))

(declare-fun m!5612695 () Bool)

(assert (=> bs!1093845 m!5612695))

(assert (=> b!4699328 d!1494530))

(declare-fun d!1494532 () Bool)

(declare-fun e!2931646 () Bool)

(assert (=> d!1494532 e!2931646))

(declare-fun res!1983921 () Bool)

(assert (=> d!1494532 (=> (not res!1983921) (not e!2931646))))

(declare-fun lt!1861981 () ListMap!5037)

(assert (=> d!1494532 (= res!1983921 (not (contains!15784 lt!1861981 key!4653)))))

(assert (=> d!1494532 (= lt!1861981 (ListMap!5038 (removePresrvNoDuplicatedKeys!361 (toList!5674 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694))) key!4653)))))

(assert (=> d!1494532 (= (-!696 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)) key!4653) lt!1861981)))

(declare-fun b!4699603 () Bool)

(assert (=> b!4699603 (= e!2931646 (= ((_ map and) (content!9250 (keys!18781 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)))) ((_ map not) (store ((as const (Array K!13880 Bool)) false) key!4653 true))) (content!9250 (keys!18781 lt!1861981))))))

(assert (= (and d!1494532 res!1983921) b!4699603))

(declare-fun m!5612697 () Bool)

(assert (=> d!1494532 m!5612697))

(declare-fun m!5612699 () Bool)

(assert (=> d!1494532 m!5612699))

(declare-fun m!5612701 () Bool)

(assert (=> b!4699603 m!5612701))

(declare-fun m!5612703 () Bool)

(assert (=> b!4699603 m!5612703))

(declare-fun m!5612705 () Bool)

(assert (=> b!4699603 m!5612705))

(declare-fun m!5612707 () Bool)

(assert (=> b!4699603 m!5612707))

(assert (=> b!4699603 m!5612441))

(assert (=> b!4699603 m!5612705))

(assert (=> b!4699603 m!5612101))

(assert (=> b!4699603 m!5612701))

(assert (=> b!4699339 d!1494532))

(declare-fun d!1494534 () Bool)

(assert (=> d!1494534 (= (tail!8703 lt!1861671) (t!359846 lt!1861671))))

(assert (=> b!4699339 d!1494534))

(declare-fun bs!1093850 () Bool)

(declare-fun d!1494536 () Bool)

(assert (= bs!1093850 (and d!1494536 start!476416)))

(declare-fun lambda!209812 () Int)

(assert (=> bs!1093850 (= lambda!209812 lambda!209739)))

(declare-fun bs!1093851 () Bool)

(assert (= bs!1093851 (and d!1494536 d!1494484)))

(assert (=> bs!1093851 (= lambda!209812 lambda!209751)))

(declare-fun bs!1093852 () Bool)

(assert (= bs!1093852 (and d!1494536 d!1494494)))

(assert (=> bs!1093852 (= lambda!209812 lambda!209778)))

(declare-fun bs!1093853 () Bool)

(assert (= bs!1093853 (and d!1494536 d!1494516)))

(assert (=> bs!1093853 (= lambda!209812 lambda!209797)))

(declare-fun bs!1093854 () Bool)

(assert (= bs!1093854 (and d!1494536 d!1494526)))

(assert (=> bs!1093854 (not (= lambda!209812 lambda!209809))))

(declare-fun lt!1861982 () ListMap!5037)

(assert (=> d!1494536 (invariantList!1440 (toList!5674 lt!1861982))))

(declare-fun e!2931647 () ListMap!5037)

(assert (=> d!1494536 (= lt!1861982 e!2931647)))

(declare-fun c!803344 () Bool)

(assert (=> d!1494536 (= c!803344 ((_ is Cons!52516) (Cons!52516 lt!1861679 lt!1861694)))))

(assert (=> d!1494536 (forall!11389 (Cons!52516 lt!1861679 lt!1861694) lambda!209812)))

(assert (=> d!1494536 (= (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)) lt!1861982)))

(declare-fun b!4699604 () Bool)

(assert (=> b!4699604 (= e!2931647 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (Cons!52516 lt!1861679 lt!1861694))) (extractMap!1918 (t!359846 (Cons!52516 lt!1861679 lt!1861694)))))))

(declare-fun b!4699605 () Bool)

(assert (=> b!4699605 (= e!2931647 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494536 c!803344) b!4699604))

(assert (= (and d!1494536 (not c!803344)) b!4699605))

(declare-fun m!5612725 () Bool)

(assert (=> d!1494536 m!5612725))

(declare-fun m!5612729 () Bool)

(assert (=> d!1494536 m!5612729))

(declare-fun m!5612733 () Bool)

(assert (=> b!4699604 m!5612733))

(assert (=> b!4699604 m!5612733))

(declare-fun m!5612737 () Bool)

(assert (=> b!4699604 m!5612737))

(assert (=> b!4699339 d!1494536))

(declare-fun bs!1093855 () Bool)

(declare-fun d!1494540 () Bool)

(assert (= bs!1093855 (and d!1494540 start!476416)))

(declare-fun lambda!209813 () Int)

(assert (=> bs!1093855 (= lambda!209813 lambda!209739)))

(declare-fun bs!1093856 () Bool)

(assert (= bs!1093856 (and d!1494540 d!1494484)))

(assert (=> bs!1093856 (= lambda!209813 lambda!209751)))

(declare-fun bs!1093857 () Bool)

(assert (= bs!1093857 (and d!1494540 d!1494536)))

(assert (=> bs!1093857 (= lambda!209813 lambda!209812)))

(declare-fun bs!1093858 () Bool)

(assert (= bs!1093858 (and d!1494540 d!1494494)))

(assert (=> bs!1093858 (= lambda!209813 lambda!209778)))

(declare-fun bs!1093859 () Bool)

(assert (= bs!1093859 (and d!1494540 d!1494516)))

(assert (=> bs!1093859 (= lambda!209813 lambda!209797)))

(declare-fun bs!1093860 () Bool)

(assert (= bs!1093860 (and d!1494540 d!1494526)))

(assert (=> bs!1093860 (not (= lambda!209813 lambda!209809))))

(declare-fun lt!1861983 () ListMap!5037)

(assert (=> d!1494540 (invariantList!1440 (toList!5674 lt!1861983))))

(declare-fun e!2931648 () ListMap!5037)

(assert (=> d!1494540 (= lt!1861983 e!2931648)))

(declare-fun c!803345 () Bool)

(assert (=> d!1494540 (= c!803345 ((_ is Cons!52516) (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023)))))))

(assert (=> d!1494540 (forall!11389 (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023))) lambda!209813)))

(assert (=> d!1494540 (= (extractMap!1918 (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023)))) lt!1861983)))

(declare-fun b!4699606 () Bool)

(assert (=> b!4699606 (= e!2931648 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023))))) (extractMap!1918 (t!359846 (Cons!52516 lt!1861691 (t!359846 (toList!5673 lm!2023)))))))))

(declare-fun b!4699607 () Bool)

(assert (=> b!4699607 (= e!2931648 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494540 c!803345) b!4699606))

(assert (= (and d!1494540 (not c!803345)) b!4699607))

(declare-fun m!5612739 () Bool)

(assert (=> d!1494540 m!5612739))

(declare-fun m!5612741 () Bool)

(assert (=> d!1494540 m!5612741))

(declare-fun m!5612743 () Bool)

(assert (=> b!4699606 m!5612743))

(assert (=> b!4699606 m!5612743))

(declare-fun m!5612745 () Bool)

(assert (=> b!4699606 m!5612745))

(assert (=> b!4699339 d!1494540))

(declare-fun d!1494542 () Bool)

(assert (=> d!1494542 (= (eq!1051 lt!1861668 lt!1861693) (= (content!9249 (toList!5674 lt!1861668)) (content!9249 (toList!5674 lt!1861693))))))

(declare-fun bs!1093861 () Bool)

(assert (= bs!1093861 d!1494542))

(declare-fun m!5612747 () Bool)

(assert (=> bs!1093861 m!5612747))

(declare-fun m!5612749 () Bool)

(assert (=> bs!1093861 m!5612749))

(assert (=> b!4699339 d!1494542))

(declare-fun bs!1093862 () Bool)

(declare-fun d!1494544 () Bool)

(assert (= bs!1093862 (and d!1494544 start!476416)))

(declare-fun lambda!209814 () Int)

(assert (=> bs!1093862 (= lambda!209814 lambda!209739)))

(declare-fun bs!1093863 () Bool)

(assert (= bs!1093863 (and d!1494544 d!1494484)))

(assert (=> bs!1093863 (= lambda!209814 lambda!209751)))

(declare-fun bs!1093864 () Bool)

(assert (= bs!1093864 (and d!1494544 d!1494536)))

(assert (=> bs!1093864 (= lambda!209814 lambda!209812)))

(declare-fun bs!1093866 () Bool)

(assert (= bs!1093866 (and d!1494544 d!1494540)))

(assert (=> bs!1093866 (= lambda!209814 lambda!209813)))

(declare-fun bs!1093867 () Bool)

(assert (= bs!1093867 (and d!1494544 d!1494494)))

(assert (=> bs!1093867 (= lambda!209814 lambda!209778)))

(declare-fun bs!1093868 () Bool)

(assert (= bs!1093868 (and d!1494544 d!1494516)))

(assert (=> bs!1093868 (= lambda!209814 lambda!209797)))

(declare-fun bs!1093869 () Bool)

(assert (= bs!1093869 (and d!1494544 d!1494526)))

(assert (=> bs!1093869 (not (= lambda!209814 lambda!209809))))

(declare-fun lt!1861986 () ListMap!5037)

(assert (=> d!1494544 (invariantList!1440 (toList!5674 lt!1861986))))

(declare-fun e!2931649 () ListMap!5037)

(assert (=> d!1494544 (= lt!1861986 e!2931649)))

(declare-fun c!803346 () Bool)

(assert (=> d!1494544 (= c!803346 ((_ is Cons!52516) (Cons!52516 lt!1861691 lt!1861694)))))

(assert (=> d!1494544 (forall!11389 (Cons!52516 lt!1861691 lt!1861694) lambda!209814)))

(assert (=> d!1494544 (= (extractMap!1918 (Cons!52516 lt!1861691 lt!1861694)) lt!1861986)))

(declare-fun b!4699608 () Bool)

(assert (=> b!4699608 (= e!2931649 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (Cons!52516 lt!1861691 lt!1861694))) (extractMap!1918 (t!359846 (Cons!52516 lt!1861691 lt!1861694)))))))

(declare-fun b!4699609 () Bool)

(assert (=> b!4699609 (= e!2931649 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494544 c!803346) b!4699608))

(assert (= (and d!1494544 (not c!803346)) b!4699609))

(declare-fun m!5612753 () Bool)

(assert (=> d!1494544 m!5612753))

(declare-fun m!5612755 () Bool)

(assert (=> d!1494544 m!5612755))

(declare-fun m!5612757 () Bool)

(assert (=> b!4699608 m!5612757))

(assert (=> b!4699608 m!5612757))

(declare-fun m!5612761 () Bool)

(assert (=> b!4699608 m!5612761))

(assert (=> b!4699339 d!1494544))

(declare-fun bs!1093871 () Bool)

(declare-fun d!1494550 () Bool)

(assert (= bs!1093871 (and d!1494550 start!476416)))

(declare-fun lambda!209817 () Int)

(assert (=> bs!1093871 (= lambda!209817 lambda!209739)))

(declare-fun bs!1093872 () Bool)

(assert (= bs!1093872 (and d!1494550 d!1494484)))

(assert (=> bs!1093872 (= lambda!209817 lambda!209751)))

(declare-fun bs!1093873 () Bool)

(assert (= bs!1093873 (and d!1494550 d!1494536)))

(assert (=> bs!1093873 (= lambda!209817 lambda!209812)))

(declare-fun bs!1093874 () Bool)

(assert (= bs!1093874 (and d!1494550 d!1494540)))

(assert (=> bs!1093874 (= lambda!209817 lambda!209813)))

(declare-fun bs!1093875 () Bool)

(assert (= bs!1093875 (and d!1494550 d!1494516)))

(assert (=> bs!1093875 (= lambda!209817 lambda!209797)))

(declare-fun bs!1093876 () Bool)

(assert (= bs!1093876 (and d!1494550 d!1494526)))

(assert (=> bs!1093876 (not (= lambda!209817 lambda!209809))))

(declare-fun bs!1093877 () Bool)

(assert (= bs!1093877 (and d!1494550 d!1494544)))

(assert (=> bs!1093877 (= lambda!209817 lambda!209814)))

(declare-fun bs!1093878 () Bool)

(assert (= bs!1093878 (and d!1494550 d!1494494)))

(assert (=> bs!1093878 (= lambda!209817 lambda!209778)))

(assert (=> d!1494550 (eq!1051 (extractMap!1918 (Cons!52516 (tuple2!53965 hash!405 lt!1861683) (tail!8703 (toList!5673 lt!1861677)))) (-!696 (extractMap!1918 (Cons!52516 (tuple2!53965 hash!405 (t!359845 oldBucket!34)) (tail!8703 (toList!5673 lt!1861677)))) key!4653))))

(declare-fun lt!1862005 () Unit!125868)

(declare-fun choose!32846 (ListLongMap!4203 (_ BitVec 64) List!52639 List!52639 K!13880 Hashable!6261) Unit!125868)

(assert (=> d!1494550 (= lt!1862005 (choose!32846 lt!1861677 hash!405 (t!359845 oldBucket!34) lt!1861683 key!4653 hashF!1323))))

(assert (=> d!1494550 (forall!11389 (toList!5673 lt!1861677) lambda!209817)))

(assert (=> d!1494550 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!66 lt!1861677 hash!405 (t!359845 oldBucket!34) lt!1861683 key!4653 hashF!1323) lt!1862005)))

(declare-fun bs!1093879 () Bool)

(assert (= bs!1093879 d!1494550))

(declare-fun m!5612785 () Bool)

(assert (=> bs!1093879 m!5612785))

(declare-fun m!5612787 () Bool)

(assert (=> bs!1093879 m!5612787))

(declare-fun m!5612789 () Bool)

(assert (=> bs!1093879 m!5612789))

(assert (=> bs!1093879 m!5612785))

(declare-fun m!5612791 () Bool)

(assert (=> bs!1093879 m!5612791))

(declare-fun m!5612793 () Bool)

(assert (=> bs!1093879 m!5612793))

(declare-fun m!5612795 () Bool)

(assert (=> bs!1093879 m!5612795))

(assert (=> bs!1093879 m!5612789))

(assert (=> bs!1093879 m!5612791))

(declare-fun m!5612797 () Bool)

(assert (=> bs!1093879 m!5612797))

(assert (=> b!4699339 d!1494550))

(declare-fun d!1494560 () Bool)

(assert (=> d!1494560 (= (eq!1051 (extractMap!1918 (Cons!52516 lt!1861691 lt!1861694)) (-!696 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)) key!4653)) (= (content!9249 (toList!5674 (extractMap!1918 (Cons!52516 lt!1861691 lt!1861694)))) (content!9249 (toList!5674 (-!696 (extractMap!1918 (Cons!52516 lt!1861679 lt!1861694)) key!4653)))))))

(declare-fun bs!1093880 () Bool)

(assert (= bs!1093880 d!1494560))

(declare-fun m!5612799 () Bool)

(assert (=> bs!1093880 m!5612799))

(declare-fun m!5612801 () Bool)

(assert (=> bs!1093880 m!5612801))

(assert (=> b!4699339 d!1494560))

(declare-fun d!1494562 () Bool)

(declare-fun e!2931681 () Bool)

(assert (=> d!1494562 e!2931681))

(declare-fun res!1983947 () Bool)

(assert (=> d!1494562 (=> (not res!1983947) (not e!2931681))))

(declare-fun lt!1862008 () ListMap!5037)

(assert (=> d!1494562 (= res!1983947 (not (contains!15784 lt!1862008 key!4653)))))

(assert (=> d!1494562 (= lt!1862008 (ListMap!5038 (removePresrvNoDuplicatedKeys!361 (toList!5674 lt!1861675) key!4653)))))

(assert (=> d!1494562 (= (-!696 lt!1861675 key!4653) lt!1862008)))

(declare-fun b!4699653 () Bool)

(assert (=> b!4699653 (= e!2931681 (= ((_ map and) (content!9250 (keys!18781 lt!1861675)) ((_ map not) (store ((as const (Array K!13880 Bool)) false) key!4653 true))) (content!9250 (keys!18781 lt!1862008))))))

(assert (= (and d!1494562 res!1983947) b!4699653))

(declare-fun m!5612803 () Bool)

(assert (=> d!1494562 m!5612803))

(declare-fun m!5612805 () Bool)

(assert (=> d!1494562 m!5612805))

(declare-fun m!5612807 () Bool)

(assert (=> b!4699653 m!5612807))

(declare-fun m!5612809 () Bool)

(assert (=> b!4699653 m!5612809))

(declare-fun m!5612811 () Bool)

(assert (=> b!4699653 m!5612811))

(declare-fun m!5612813 () Bool)

(assert (=> b!4699653 m!5612813))

(assert (=> b!4699653 m!5612441))

(assert (=> b!4699653 m!5612811))

(assert (=> b!4699653 m!5612807))

(assert (=> b!4699339 d!1494562))

(declare-fun bs!1094082 () Bool)

(declare-fun b!4699729 () Bool)

(assert (= bs!1094082 (and b!4699729 d!1494524)))

(declare-fun lambda!209875 () Int)

(assert (=> bs!1094082 (not (= lambda!209875 lambda!209806))))

(declare-fun bs!1094083 () Bool)

(assert (= bs!1094083 (and b!4699729 d!1494528)))

(assert (=> bs!1094083 (not (= lambda!209875 lambda!209810))))

(assert (=> b!4699729 true))

(declare-fun bs!1094084 () Bool)

(declare-fun b!4699733 () Bool)

(assert (= bs!1094084 (and b!4699733 d!1494524)))

(declare-fun lambda!209876 () Int)

(assert (=> bs!1094084 (not (= lambda!209876 lambda!209806))))

(declare-fun bs!1094085 () Bool)

(assert (= bs!1094085 (and b!4699733 d!1494528)))

(assert (=> bs!1094085 (not (= lambda!209876 lambda!209810))))

(declare-fun bs!1094086 () Bool)

(assert (= bs!1094086 (and b!4699733 b!4699729)))

(assert (=> bs!1094086 (= lambda!209876 lambda!209875)))

(assert (=> b!4699733 true))

(declare-fun lambda!209877 () Int)

(assert (=> bs!1094084 (not (= lambda!209877 lambda!209806))))

(assert (=> bs!1094085 (not (= lambda!209877 lambda!209810))))

(declare-fun lt!1862184 () ListMap!5037)

(assert (=> bs!1094086 (= (= lt!1862184 lt!1861670) (= lambda!209877 lambda!209875))))

(assert (=> b!4699733 (= (= lt!1862184 lt!1861670) (= lambda!209877 lambda!209876))))

(assert (=> b!4699733 true))

(declare-fun bs!1094087 () Bool)

(declare-fun d!1494564 () Bool)

(assert (= bs!1094087 (and d!1494564 d!1494528)))

(declare-fun lambda!209878 () Int)

(assert (=> bs!1094087 (not (= lambda!209878 lambda!209810))))

(declare-fun bs!1094088 () Bool)

(assert (= bs!1094088 (and d!1494564 b!4699733)))

(declare-fun lt!1862176 () ListMap!5037)

(assert (=> bs!1094088 (= (= lt!1862176 lt!1862184) (= lambda!209878 lambda!209877))))

(declare-fun bs!1094089 () Bool)

(assert (= bs!1094089 (and d!1494564 b!4699729)))

(assert (=> bs!1094089 (= (= lt!1862176 lt!1861670) (= lambda!209878 lambda!209875))))

(declare-fun bs!1094090 () Bool)

(assert (= bs!1094090 (and d!1494564 d!1494524)))

(assert (=> bs!1094090 (not (= lambda!209878 lambda!209806))))

(assert (=> bs!1094088 (= (= lt!1862176 lt!1861670) (= lambda!209878 lambda!209876))))

(assert (=> d!1494564 true))

(declare-fun e!2931723 () ListMap!5037)

(assert (=> b!4699729 (= e!2931723 lt!1861670)))

(declare-fun lt!1862185 () Unit!125868)

(declare-fun call!328543 () Unit!125868)

(assert (=> b!4699729 (= lt!1862185 call!328543)))

(declare-fun call!328542 () Bool)

(assert (=> b!4699729 call!328542))

(declare-fun lt!1862182 () Unit!125868)

(assert (=> b!4699729 (= lt!1862182 lt!1862185)))

(declare-fun call!328544 () Bool)

(assert (=> b!4699729 call!328544))

(declare-fun lt!1862181 () Unit!125868)

(declare-fun Unit!125887 () Unit!125868)

(assert (=> b!4699729 (= lt!1862181 Unit!125887)))

(declare-fun bm!328537 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!728 (ListMap!5037) Unit!125868)

(assert (=> bm!328537 (= call!328543 (lemmaContainsAllItsOwnKeys!728 lt!1861670))))

(declare-fun b!4699730 () Bool)

(declare-fun res!1983980 () Bool)

(declare-fun e!2931725 () Bool)

(assert (=> b!4699730 (=> (not res!1983980) (not e!2931725))))

(assert (=> b!4699730 (= res!1983980 (forall!11391 (toList!5674 lt!1861670) lambda!209878))))

(declare-fun b!4699731 () Bool)

(declare-fun e!2931724 () Bool)

(assert (=> b!4699731 (= e!2931724 (forall!11391 (toList!5674 lt!1861670) lambda!209877))))

(declare-fun c!803370 () Bool)

(declare-fun bm!328538 () Bool)

(assert (=> bm!328538 (= call!328542 (forall!11391 (toList!5674 lt!1861670) (ite c!803370 lambda!209875 lambda!209876)))))

(assert (=> b!4699733 (= e!2931723 lt!1862184)))

(declare-fun lt!1862186 () ListMap!5037)

(assert (=> b!4699733 (= lt!1862186 (+!2176 lt!1861670 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023))))))))

(assert (=> b!4699733 (= lt!1862184 (addToMapMapFromBucket!1324 (t!359845 (_2!30276 (h!58791 (toList!5673 lm!2023)))) (+!2176 lt!1861670 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023)))))))))

(declare-fun lt!1862189 () Unit!125868)

(assert (=> b!4699733 (= lt!1862189 call!328543)))

(assert (=> b!4699733 call!328542))

(declare-fun lt!1862177 () Unit!125868)

(assert (=> b!4699733 (= lt!1862177 lt!1862189)))

(assert (=> b!4699733 (forall!11391 (toList!5674 lt!1862186) lambda!209877)))

(declare-fun lt!1862173 () Unit!125868)

(declare-fun Unit!125888 () Unit!125868)

(assert (=> b!4699733 (= lt!1862173 Unit!125888)))

(assert (=> b!4699733 (forall!11391 (t!359845 (_2!30276 (h!58791 (toList!5673 lm!2023)))) lambda!209877)))

(declare-fun lt!1862191 () Unit!125868)

(declare-fun Unit!125889 () Unit!125868)

(assert (=> b!4699733 (= lt!1862191 Unit!125889)))

(declare-fun lt!1862172 () Unit!125868)

(declare-fun Unit!125890 () Unit!125868)

(assert (=> b!4699733 (= lt!1862172 Unit!125890)))

(declare-fun lt!1862188 () Unit!125868)

(declare-fun forallContained!3498 (List!52639 Int tuple2!53962) Unit!125868)

(assert (=> b!4699733 (= lt!1862188 (forallContained!3498 (toList!5674 lt!1862186) lambda!209877 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023))))))))

(assert (=> b!4699733 (contains!15784 lt!1862186 (_1!30275 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023))))))))

(declare-fun lt!1862183 () Unit!125868)

(declare-fun Unit!125891 () Unit!125868)

(assert (=> b!4699733 (= lt!1862183 Unit!125891)))

(assert (=> b!4699733 (contains!15784 lt!1862184 (_1!30275 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023))))))))

(declare-fun lt!1862179 () Unit!125868)

(declare-fun Unit!125892 () Unit!125868)

(assert (=> b!4699733 (= lt!1862179 Unit!125892)))

(assert (=> b!4699733 call!328544))

(declare-fun lt!1862190 () Unit!125868)

(declare-fun Unit!125893 () Unit!125868)

(assert (=> b!4699733 (= lt!1862190 Unit!125893)))

(assert (=> b!4699733 (forall!11391 (toList!5674 lt!1862186) lambda!209877)))

(declare-fun lt!1862174 () Unit!125868)

(declare-fun Unit!125895 () Unit!125868)

(assert (=> b!4699733 (= lt!1862174 Unit!125895)))

(declare-fun lt!1862180 () Unit!125868)

(declare-fun Unit!125896 () Unit!125868)

(assert (=> b!4699733 (= lt!1862180 Unit!125896)))

(declare-fun lt!1862171 () Unit!125868)

(declare-fun addForallContainsKeyThenBeforeAdding!727 (ListMap!5037 ListMap!5037 K!13880 V!14126) Unit!125868)

(assert (=> b!4699733 (= lt!1862171 (addForallContainsKeyThenBeforeAdding!727 lt!1861670 lt!1862184 (_1!30275 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023))))) (_2!30275 (h!58790 (_2!30276 (h!58791 (toList!5673 lm!2023)))))))))

(assert (=> b!4699733 (forall!11391 (toList!5674 lt!1861670) lambda!209877)))

(declare-fun lt!1862175 () Unit!125868)

(assert (=> b!4699733 (= lt!1862175 lt!1862171)))

(assert (=> b!4699733 (forall!11391 (toList!5674 lt!1861670) lambda!209877)))

(declare-fun lt!1862178 () Unit!125868)

(declare-fun Unit!125897 () Unit!125868)

(assert (=> b!4699733 (= lt!1862178 Unit!125897)))

(declare-fun res!1983978 () Bool)

(assert (=> b!4699733 (= res!1983978 (forall!11391 (_2!30276 (h!58791 (toList!5673 lm!2023))) lambda!209877))))

(assert (=> b!4699733 (=> (not res!1983978) (not e!2931724))))

(assert (=> b!4699733 e!2931724))

(declare-fun lt!1862187 () Unit!125868)

(declare-fun Unit!125898 () Unit!125868)

(assert (=> b!4699733 (= lt!1862187 Unit!125898)))

(declare-fun bm!328539 () Bool)

(assert (=> bm!328539 (= call!328544 (forall!11391 (ite c!803370 (toList!5674 lt!1861670) (_2!30276 (h!58791 (toList!5673 lm!2023)))) (ite c!803370 lambda!209875 lambda!209877)))))

(assert (=> d!1494564 e!2931725))

(declare-fun res!1983979 () Bool)

(assert (=> d!1494564 (=> (not res!1983979) (not e!2931725))))

(assert (=> d!1494564 (= res!1983979 (forall!11391 (_2!30276 (h!58791 (toList!5673 lm!2023))) lambda!209878))))

(assert (=> d!1494564 (= lt!1862176 e!2931723)))

(assert (=> d!1494564 (= c!803370 ((_ is Nil!52515) (_2!30276 (h!58791 (toList!5673 lm!2023)))))))

(assert (=> d!1494564 (noDuplicateKeys!1892 (_2!30276 (h!58791 (toList!5673 lm!2023))))))

(assert (=> d!1494564 (= (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (toList!5673 lm!2023))) lt!1861670) lt!1862176)))

(declare-fun b!4699732 () Bool)

(assert (=> b!4699732 (= e!2931725 (invariantList!1440 (toList!5674 lt!1862176)))))

(assert (= (and d!1494564 c!803370) b!4699729))

(assert (= (and d!1494564 (not c!803370)) b!4699733))

(assert (= (and b!4699733 res!1983978) b!4699731))

(assert (= (or b!4699729 b!4699733) bm!328537))

(assert (= (or b!4699729 b!4699733) bm!328539))

(assert (= (or b!4699729 b!4699733) bm!328538))

(assert (= (and d!1494564 res!1983979) b!4699730))

(assert (= (and b!4699730 res!1983980) b!4699732))

(declare-fun m!5613065 () Bool)

(assert (=> b!4699731 m!5613065))

(declare-fun m!5613067 () Bool)

(assert (=> bm!328539 m!5613067))

(declare-fun m!5613069 () Bool)

(assert (=> bm!328537 m!5613069))

(declare-fun m!5613071 () Bool)

(assert (=> b!4699732 m!5613071))

(declare-fun m!5613073 () Bool)

(assert (=> b!4699730 m!5613073))

(declare-fun m!5613075 () Bool)

(assert (=> b!4699733 m!5613075))

(declare-fun m!5613077 () Bool)

(assert (=> b!4699733 m!5613077))

(declare-fun m!5613079 () Bool)

(assert (=> b!4699733 m!5613079))

(assert (=> b!4699733 m!5613075))

(assert (=> b!4699733 m!5613065))

(declare-fun m!5613081 () Bool)

(assert (=> b!4699733 m!5613081))

(assert (=> b!4699733 m!5613065))

(declare-fun m!5613083 () Bool)

(assert (=> b!4699733 m!5613083))

(declare-fun m!5613085 () Bool)

(assert (=> b!4699733 m!5613085))

(declare-fun m!5613087 () Bool)

(assert (=> b!4699733 m!5613087))

(declare-fun m!5613089 () Bool)

(assert (=> b!4699733 m!5613089))

(assert (=> b!4699733 m!5613089))

(declare-fun m!5613091 () Bool)

(assert (=> b!4699733 m!5613091))

(declare-fun m!5613093 () Bool)

(assert (=> d!1494564 m!5613093))

(declare-fun m!5613095 () Bool)

(assert (=> d!1494564 m!5613095))

(declare-fun m!5613097 () Bool)

(assert (=> bm!328538 m!5613097))

(assert (=> b!4699329 d!1494564))

(declare-fun bs!1094091 () Bool)

(declare-fun d!1494622 () Bool)

(assert (= bs!1094091 (and d!1494622 start!476416)))

(declare-fun lambda!209879 () Int)

(assert (=> bs!1094091 (= lambda!209879 lambda!209739)))

(declare-fun bs!1094092 () Bool)

(assert (= bs!1094092 (and d!1494622 d!1494550)))

(assert (=> bs!1094092 (= lambda!209879 lambda!209817)))

(declare-fun bs!1094093 () Bool)

(assert (= bs!1094093 (and d!1494622 d!1494484)))

(assert (=> bs!1094093 (= lambda!209879 lambda!209751)))

(declare-fun bs!1094094 () Bool)

(assert (= bs!1094094 (and d!1494622 d!1494536)))

(assert (=> bs!1094094 (= lambda!209879 lambda!209812)))

(declare-fun bs!1094095 () Bool)

(assert (= bs!1094095 (and d!1494622 d!1494540)))

(assert (=> bs!1094095 (= lambda!209879 lambda!209813)))

(declare-fun bs!1094096 () Bool)

(assert (= bs!1094096 (and d!1494622 d!1494516)))

(assert (=> bs!1094096 (= lambda!209879 lambda!209797)))

(declare-fun bs!1094097 () Bool)

(assert (= bs!1094097 (and d!1494622 d!1494526)))

(assert (=> bs!1094097 (not (= lambda!209879 lambda!209809))))

(declare-fun bs!1094098 () Bool)

(assert (= bs!1094098 (and d!1494622 d!1494544)))

(assert (=> bs!1094098 (= lambda!209879 lambda!209814)))

(declare-fun bs!1094099 () Bool)

(assert (= bs!1094099 (and d!1494622 d!1494494)))

(assert (=> bs!1094099 (= lambda!209879 lambda!209778)))

(declare-fun lt!1862192 () ListMap!5037)

(assert (=> d!1494622 (invariantList!1440 (toList!5674 lt!1862192))))

(declare-fun e!2931726 () ListMap!5037)

(assert (=> d!1494622 (= lt!1862192 e!2931726)))

(declare-fun c!803371 () Bool)

(assert (=> d!1494622 (= c!803371 ((_ is Cons!52516) (t!359846 (toList!5673 lm!2023))))))

(assert (=> d!1494622 (forall!11389 (t!359846 (toList!5673 lm!2023)) lambda!209879)))

(assert (=> d!1494622 (= (extractMap!1918 (t!359846 (toList!5673 lm!2023))) lt!1862192)))

(declare-fun b!4699736 () Bool)

(assert (=> b!4699736 (= e!2931726 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (t!359846 (toList!5673 lm!2023)))) (extractMap!1918 (t!359846 (t!359846 (toList!5673 lm!2023))))))))

(declare-fun b!4699737 () Bool)

(assert (=> b!4699737 (= e!2931726 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494622 c!803371) b!4699736))

(assert (= (and d!1494622 (not c!803371)) b!4699737))

(declare-fun m!5613099 () Bool)

(assert (=> d!1494622 m!5613099))

(declare-fun m!5613101 () Bool)

(assert (=> d!1494622 m!5613101))

(declare-fun m!5613103 () Bool)

(assert (=> b!4699736 m!5613103))

(assert (=> b!4699736 m!5613103))

(declare-fun m!5613105 () Bool)

(assert (=> b!4699736 m!5613105))

(assert (=> b!4699329 d!1494622))

(declare-fun d!1494624 () Bool)

(assert (=> d!1494624 (= (tail!8701 lm!2023) (ListLongMap!4204 (tail!8703 (toList!5673 lm!2023))))))

(declare-fun bs!1094100 () Bool)

(assert (= bs!1094100 d!1494624))

(declare-fun m!5613107 () Bool)

(assert (=> bs!1094100 m!5613107))

(assert (=> b!4699329 d!1494624))

(declare-fun d!1494626 () Bool)

(assert (=> d!1494626 (= (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861680 lt!1861683) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1861680)) (= (content!9249 (toList!5674 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861680 lt!1861683) lt!1861670))) (content!9249 (toList!5674 (+!2176 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1861680)))))))

(declare-fun bs!1094101 () Bool)

(assert (= bs!1094101 d!1494626))

(declare-fun m!5613109 () Bool)

(assert (=> bs!1094101 m!5613109))

(declare-fun m!5613111 () Bool)

(assert (=> bs!1094101 m!5613111))

(assert (=> b!4699319 d!1494626))

(declare-fun bs!1094102 () Bool)

(declare-fun d!1494628 () Bool)

(assert (= bs!1094102 (and d!1494628 start!476416)))

(declare-fun lambda!209880 () Int)

(assert (=> bs!1094102 (= lambda!209880 lambda!209739)))

(declare-fun bs!1094103 () Bool)

(assert (= bs!1094103 (and d!1494628 d!1494550)))

(assert (=> bs!1094103 (= lambda!209880 lambda!209817)))

(declare-fun bs!1094104 () Bool)

(assert (= bs!1094104 (and d!1494628 d!1494484)))

(assert (=> bs!1094104 (= lambda!209880 lambda!209751)))

(declare-fun bs!1094105 () Bool)

(assert (= bs!1094105 (and d!1494628 d!1494622)))

(assert (=> bs!1094105 (= lambda!209880 lambda!209879)))

(declare-fun bs!1094106 () Bool)

(assert (= bs!1094106 (and d!1494628 d!1494536)))

(assert (=> bs!1094106 (= lambda!209880 lambda!209812)))

(declare-fun bs!1094107 () Bool)

(assert (= bs!1094107 (and d!1494628 d!1494540)))

(assert (=> bs!1094107 (= lambda!209880 lambda!209813)))

(declare-fun bs!1094108 () Bool)

(assert (= bs!1094108 (and d!1494628 d!1494516)))

(assert (=> bs!1094108 (= lambda!209880 lambda!209797)))

(declare-fun bs!1094109 () Bool)

(assert (= bs!1094109 (and d!1494628 d!1494526)))

(assert (=> bs!1094109 (not (= lambda!209880 lambda!209809))))

(declare-fun bs!1094110 () Bool)

(assert (= bs!1094110 (and d!1494628 d!1494544)))

(assert (=> bs!1094110 (= lambda!209880 lambda!209814)))

(declare-fun bs!1094111 () Bool)

(assert (= bs!1094111 (and d!1494628 d!1494494)))

(assert (=> bs!1094111 (= lambda!209880 lambda!209778)))

(declare-fun lt!1862193 () ListMap!5037)

(assert (=> d!1494628 (invariantList!1440 (toList!5674 lt!1862193))))

(declare-fun e!2931727 () ListMap!5037)

(assert (=> d!1494628 (= lt!1862193 e!2931727)))

(declare-fun c!803372 () Bool)

(assert (=> d!1494628 (= c!803372 ((_ is Cons!52516) (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023)))))))

(assert (=> d!1494628 (forall!11389 (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023))) lambda!209880)))

(assert (=> d!1494628 (= (extractMap!1918 (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023)))) lt!1862193)))

(declare-fun b!4699738 () Bool)

(assert (=> b!4699738 (= e!2931727 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023))))) (extractMap!1918 (t!359846 (Cons!52516 (tuple2!53965 hash!405 lt!1861682) (t!359846 (toList!5673 lm!2023)))))))))

(declare-fun b!4699739 () Bool)

(assert (=> b!4699739 (= e!2931727 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494628 c!803372) b!4699738))

(assert (= (and d!1494628 (not c!803372)) b!4699739))

(declare-fun m!5613113 () Bool)

(assert (=> d!1494628 m!5613113))

(declare-fun m!5613115 () Bool)

(assert (=> d!1494628 m!5613115))

(declare-fun m!5613117 () Bool)

(assert (=> b!4699738 m!5613117))

(assert (=> b!4699738 m!5613117))

(declare-fun m!5613119 () Bool)

(assert (=> b!4699738 m!5613119))

(assert (=> b!4699319 d!1494628))

(declare-fun d!1494630 () Bool)

(assert (=> d!1494630 (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861680 lt!1861683) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1861680))))

(declare-fun lt!1862196 () Unit!125868)

(declare-fun choose!32847 (tuple2!53962 List!52639 ListMap!5037) Unit!125868)

(assert (=> d!1494630 (= lt!1862196 (choose!32847 lt!1861680 lt!1861683 lt!1861670))))

(assert (=> d!1494630 (noDuplicateKeys!1892 lt!1861683)))

(assert (=> d!1494630 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!300 lt!1861680 lt!1861683 lt!1861670) lt!1862196)))

(declare-fun bs!1094112 () Bool)

(assert (= bs!1094112 d!1494630))

(declare-fun m!5613121 () Bool)

(assert (=> bs!1094112 m!5613121))

(assert (=> bs!1094112 m!5612141))

(declare-fun m!5613123 () Bool)

(assert (=> bs!1094112 m!5613123))

(assert (=> bs!1094112 m!5612125))

(assert (=> bs!1094112 m!5612141))

(assert (=> bs!1094112 m!5612127))

(assert (=> bs!1094112 m!5612125))

(assert (=> bs!1094112 m!5612127))

(assert (=> bs!1094112 m!5612129))

(assert (=> b!4699319 d!1494630))

(declare-fun d!1494632 () Bool)

(assert (=> d!1494632 (= (head!10047 oldBucket!34) (h!58790 oldBucket!34))))

(assert (=> b!4699319 d!1494632))

(declare-fun bs!1094113 () Bool)

(declare-fun d!1494634 () Bool)

(assert (= bs!1094113 (and d!1494634 start!476416)))

(declare-fun lambda!209881 () Int)

(assert (=> bs!1094113 (= lambda!209881 lambda!209739)))

(declare-fun bs!1094114 () Bool)

(assert (= bs!1094114 (and d!1494634 d!1494550)))

(assert (=> bs!1094114 (= lambda!209881 lambda!209817)))

(declare-fun bs!1094115 () Bool)

(assert (= bs!1094115 (and d!1494634 d!1494484)))

(assert (=> bs!1094115 (= lambda!209881 lambda!209751)))

(declare-fun bs!1094116 () Bool)

(assert (= bs!1094116 (and d!1494634 d!1494536)))

(assert (=> bs!1094116 (= lambda!209881 lambda!209812)))

(declare-fun bs!1094117 () Bool)

(assert (= bs!1094117 (and d!1494634 d!1494540)))

(assert (=> bs!1094117 (= lambda!209881 lambda!209813)))

(declare-fun bs!1094118 () Bool)

(assert (= bs!1094118 (and d!1494634 d!1494628)))

(assert (=> bs!1094118 (= lambda!209881 lambda!209880)))

(declare-fun bs!1094119 () Bool)

(assert (= bs!1094119 (and d!1494634 d!1494622)))

(assert (=> bs!1094119 (= lambda!209881 lambda!209879)))

(declare-fun bs!1094120 () Bool)

(assert (= bs!1094120 (and d!1494634 d!1494516)))

(assert (=> bs!1094120 (= lambda!209881 lambda!209797)))

(declare-fun bs!1094121 () Bool)

(assert (= bs!1094121 (and d!1494634 d!1494526)))

(assert (=> bs!1094121 (not (= lambda!209881 lambda!209809))))

(declare-fun bs!1094122 () Bool)

(assert (= bs!1094122 (and d!1494634 d!1494544)))

(assert (=> bs!1094122 (= lambda!209881 lambda!209814)))

(declare-fun bs!1094123 () Bool)

(assert (= bs!1094123 (and d!1494634 d!1494494)))

(assert (=> bs!1094123 (= lambda!209881 lambda!209778)))

(declare-fun lt!1862197 () ListMap!5037)

(assert (=> d!1494634 (invariantList!1440 (toList!5674 lt!1862197))))

(declare-fun e!2931728 () ListMap!5037)

(assert (=> d!1494634 (= lt!1862197 e!2931728)))

(declare-fun c!803373 () Bool)

(assert (=> d!1494634 (= c!803373 ((_ is Cons!52516) (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023)))))))

(assert (=> d!1494634 (forall!11389 (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023))) lambda!209881)))

(assert (=> d!1494634 (= (extractMap!1918 (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023)))) lt!1862197)))

(declare-fun b!4699740 () Bool)

(assert (=> b!4699740 (= e!2931728 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023))))) (extractMap!1918 (t!359846 (Cons!52516 lt!1861684 (t!359846 (toList!5673 lm!2023)))))))))

(declare-fun b!4699741 () Bool)

(assert (=> b!4699741 (= e!2931728 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494634 c!803373) b!4699740))

(assert (= (and d!1494634 (not c!803373)) b!4699741))

(declare-fun m!5613125 () Bool)

(assert (=> d!1494634 m!5613125))

(declare-fun m!5613127 () Bool)

(assert (=> d!1494634 m!5613127))

(declare-fun m!5613129 () Bool)

(assert (=> b!4699740 m!5613129))

(assert (=> b!4699740 m!5613129))

(declare-fun m!5613131 () Bool)

(assert (=> b!4699740 m!5613131))

(assert (=> b!4699319 d!1494634))

(declare-fun d!1494636 () Bool)

(declare-fun e!2931729 () Bool)

(assert (=> d!1494636 e!2931729))

(declare-fun res!1983982 () Bool)

(assert (=> d!1494636 (=> (not res!1983982) (not e!2931729))))

(declare-fun lt!1862200 () ListMap!5037)

(assert (=> d!1494636 (= res!1983982 (contains!15784 lt!1862200 (_1!30275 lt!1861680)))))

(declare-fun lt!1862198 () List!52639)

(assert (=> d!1494636 (= lt!1862200 (ListMap!5038 lt!1862198))))

(declare-fun lt!1862201 () Unit!125868)

(declare-fun lt!1862199 () Unit!125868)

(assert (=> d!1494636 (= lt!1862201 lt!1862199)))

(assert (=> d!1494636 (= (getValueByKey!1839 lt!1862198 (_1!30275 lt!1861680)) (Some!12176 (_2!30275 lt!1861680)))))

(assert (=> d!1494636 (= lt!1862199 (lemmaContainsTupThenGetReturnValue!1030 lt!1862198 (_1!30275 lt!1861680) (_2!30275 lt!1861680)))))

(assert (=> d!1494636 (= lt!1862198 (insertNoDuplicatedKeys!538 (toList!5674 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670)) (_1!30275 lt!1861680) (_2!30275 lt!1861680)))))

(assert (=> d!1494636 (= (+!2176 (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1861680) lt!1862200)))

(declare-fun b!4699742 () Bool)

(declare-fun res!1983981 () Bool)

(assert (=> b!4699742 (=> (not res!1983981) (not e!2931729))))

(assert (=> b!4699742 (= res!1983981 (= (getValueByKey!1839 (toList!5674 lt!1862200) (_1!30275 lt!1861680)) (Some!12176 (_2!30275 lt!1861680))))))

(declare-fun b!4699743 () Bool)

(assert (=> b!4699743 (= e!2931729 (contains!15787 (toList!5674 lt!1862200) lt!1861680))))

(assert (= (and d!1494636 res!1983982) b!4699742))

(assert (= (and b!4699742 res!1983981) b!4699743))

(declare-fun m!5613133 () Bool)

(assert (=> d!1494636 m!5613133))

(declare-fun m!5613135 () Bool)

(assert (=> d!1494636 m!5613135))

(declare-fun m!5613137 () Bool)

(assert (=> d!1494636 m!5613137))

(declare-fun m!5613139 () Bool)

(assert (=> d!1494636 m!5613139))

(declare-fun m!5613141 () Bool)

(assert (=> b!4699742 m!5613141))

(declare-fun m!5613143 () Bool)

(assert (=> b!4699743 m!5613143))

(assert (=> b!4699319 d!1494636))

(declare-fun d!1494638 () Bool)

(declare-fun e!2931730 () Bool)

(assert (=> d!1494638 e!2931730))

(declare-fun res!1983984 () Bool)

(assert (=> d!1494638 (=> (not res!1983984) (not e!2931730))))

(declare-fun lt!1862204 () ListMap!5037)

(assert (=> d!1494638 (= res!1983984 (contains!15784 lt!1862204 (_1!30275 lt!1861674)))))

(declare-fun lt!1862202 () List!52639)

(assert (=> d!1494638 (= lt!1862204 (ListMap!5038 lt!1862202))))

(declare-fun lt!1862205 () Unit!125868)

(declare-fun lt!1862203 () Unit!125868)

(assert (=> d!1494638 (= lt!1862205 lt!1862203)))

(assert (=> d!1494638 (= (getValueByKey!1839 lt!1862202 (_1!30275 lt!1861674)) (Some!12176 (_2!30275 lt!1861674)))))

(assert (=> d!1494638 (= lt!1862203 (lemmaContainsTupThenGetReturnValue!1030 lt!1862202 (_1!30275 lt!1861674) (_2!30275 lt!1861674)))))

(assert (=> d!1494638 (= lt!1862202 (insertNoDuplicatedKeys!538 (toList!5674 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670)) (_1!30275 lt!1861674) (_2!30275 lt!1861674)))))

(assert (=> d!1494638 (= (+!2176 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1861674) lt!1862204)))

(declare-fun b!4699744 () Bool)

(declare-fun res!1983983 () Bool)

(assert (=> b!4699744 (=> (not res!1983983) (not e!2931730))))

(assert (=> b!4699744 (= res!1983983 (= (getValueByKey!1839 (toList!5674 lt!1862204) (_1!30275 lt!1861674)) (Some!12176 (_2!30275 lt!1861674))))))

(declare-fun b!4699745 () Bool)

(assert (=> b!4699745 (= e!2931730 (contains!15787 (toList!5674 lt!1862204) lt!1861674))))

(assert (= (and d!1494638 res!1983984) b!4699744))

(assert (= (and b!4699744 res!1983983) b!4699745))

(declare-fun m!5613145 () Bool)

(assert (=> d!1494638 m!5613145))

(declare-fun m!5613147 () Bool)

(assert (=> d!1494638 m!5613147))

(declare-fun m!5613149 () Bool)

(assert (=> d!1494638 m!5613149))

(declare-fun m!5613151 () Bool)

(assert (=> d!1494638 m!5613151))

(declare-fun m!5613153 () Bool)

(assert (=> b!4699744 m!5613153))

(declare-fun m!5613155 () Bool)

(assert (=> b!4699745 m!5613155))

(assert (=> b!4699319 d!1494638))

(declare-fun d!1494640 () Bool)

(declare-fun e!2931731 () Bool)

(assert (=> d!1494640 e!2931731))

(declare-fun res!1983986 () Bool)

(assert (=> d!1494640 (=> (not res!1983986) (not e!2931731))))

(declare-fun lt!1862208 () ListMap!5037)

(assert (=> d!1494640 (= res!1983986 (contains!15784 lt!1862208 (_1!30275 (h!58790 oldBucket!34))))))

(declare-fun lt!1862206 () List!52639)

(assert (=> d!1494640 (= lt!1862208 (ListMap!5038 lt!1862206))))

(declare-fun lt!1862209 () Unit!125868)

(declare-fun lt!1862207 () Unit!125868)

(assert (=> d!1494640 (= lt!1862209 lt!1862207)))

(assert (=> d!1494640 (= (getValueByKey!1839 lt!1862206 (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494640 (= lt!1862207 (lemmaContainsTupThenGetReturnValue!1030 lt!1862206 (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494640 (= lt!1862206 (insertNoDuplicatedKeys!538 (toList!5674 lt!1861697) (_1!30275 (h!58790 oldBucket!34)) (_2!30275 (h!58790 oldBucket!34))))))

(assert (=> d!1494640 (= (+!2176 lt!1861697 (h!58790 oldBucket!34)) lt!1862208)))

(declare-fun b!4699746 () Bool)

(declare-fun res!1983985 () Bool)

(assert (=> b!4699746 (=> (not res!1983985) (not e!2931731))))

(assert (=> b!4699746 (= res!1983985 (= (getValueByKey!1839 (toList!5674 lt!1862208) (_1!30275 (h!58790 oldBucket!34))) (Some!12176 (_2!30275 (h!58790 oldBucket!34)))))))

(declare-fun b!4699747 () Bool)

(assert (=> b!4699747 (= e!2931731 (contains!15787 (toList!5674 lt!1862208) (h!58790 oldBucket!34)))))

(assert (= (and d!1494640 res!1983986) b!4699746))

(assert (= (and b!4699746 res!1983985) b!4699747))

(declare-fun m!5613157 () Bool)

(assert (=> d!1494640 m!5613157))

(declare-fun m!5613159 () Bool)

(assert (=> d!1494640 m!5613159))

(declare-fun m!5613161 () Bool)

(assert (=> d!1494640 m!5613161))

(declare-fun m!5613163 () Bool)

(assert (=> d!1494640 m!5613163))

(declare-fun m!5613165 () Bool)

(assert (=> b!4699746 m!5613165))

(declare-fun m!5613167 () Bool)

(assert (=> b!4699747 m!5613167))

(assert (=> b!4699319 d!1494640))

(declare-fun d!1494642 () Bool)

(assert (=> d!1494642 (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861674 lt!1861682) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1861674))))

(declare-fun lt!1862210 () Unit!125868)

(assert (=> d!1494642 (= lt!1862210 (choose!32847 lt!1861674 lt!1861682 lt!1861670))))

(assert (=> d!1494642 (noDuplicateKeys!1892 lt!1861682)))

(assert (=> d!1494642 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!300 lt!1861674 lt!1861682 lt!1861670) lt!1862210)))

(declare-fun bs!1094124 () Bool)

(assert (= bs!1094124 d!1494642))

(assert (=> bs!1094124 m!5612227))

(assert (=> bs!1094124 m!5612133))

(declare-fun m!5613169 () Bool)

(assert (=> bs!1094124 m!5613169))

(assert (=> bs!1094124 m!5612137))

(assert (=> bs!1094124 m!5612133))

(assert (=> bs!1094124 m!5612155))

(assert (=> bs!1094124 m!5612137))

(assert (=> bs!1094124 m!5612155))

(assert (=> bs!1094124 m!5612157))

(assert (=> b!4699319 d!1494642))

(declare-fun bs!1094125 () Bool)

(declare-fun d!1494644 () Bool)

(assert (= bs!1094125 (and d!1494644 start!476416)))

(declare-fun lambda!209882 () Int)

(assert (=> bs!1094125 (= lambda!209882 lambda!209739)))

(declare-fun bs!1094126 () Bool)

(assert (= bs!1094126 (and d!1494644 d!1494550)))

(assert (=> bs!1094126 (= lambda!209882 lambda!209817)))

(declare-fun bs!1094127 () Bool)

(assert (= bs!1094127 (and d!1494644 d!1494484)))

(assert (=> bs!1094127 (= lambda!209882 lambda!209751)))

(declare-fun bs!1094128 () Bool)

(assert (= bs!1094128 (and d!1494644 d!1494536)))

(assert (=> bs!1094128 (= lambda!209882 lambda!209812)))

(declare-fun bs!1094129 () Bool)

(assert (= bs!1094129 (and d!1494644 d!1494540)))

(assert (=> bs!1094129 (= lambda!209882 lambda!209813)))

(declare-fun bs!1094130 () Bool)

(assert (= bs!1094130 (and d!1494644 d!1494634)))

(assert (=> bs!1094130 (= lambda!209882 lambda!209881)))

(declare-fun bs!1094131 () Bool)

(assert (= bs!1094131 (and d!1494644 d!1494628)))

(assert (=> bs!1094131 (= lambda!209882 lambda!209880)))

(declare-fun bs!1094132 () Bool)

(assert (= bs!1094132 (and d!1494644 d!1494622)))

(assert (=> bs!1094132 (= lambda!209882 lambda!209879)))

(declare-fun bs!1094133 () Bool)

(assert (= bs!1094133 (and d!1494644 d!1494516)))

(assert (=> bs!1094133 (= lambda!209882 lambda!209797)))

(declare-fun bs!1094134 () Bool)

(assert (= bs!1094134 (and d!1494644 d!1494526)))

(assert (=> bs!1094134 (not (= lambda!209882 lambda!209809))))

(declare-fun bs!1094135 () Bool)

(assert (= bs!1094135 (and d!1494644 d!1494544)))

(assert (=> bs!1094135 (= lambda!209882 lambda!209814)))

(declare-fun bs!1094136 () Bool)

(assert (= bs!1094136 (and d!1494644 d!1494494)))

(assert (=> bs!1094136 (= lambda!209882 lambda!209778)))

(declare-fun lt!1862211 () ListMap!5037)

(assert (=> d!1494644 (invariantList!1440 (toList!5674 lt!1862211))))

(declare-fun e!2931732 () ListMap!5037)

(assert (=> d!1494644 (= lt!1862211 e!2931732)))

(declare-fun c!803374 () Bool)

(assert (=> d!1494644 (= c!803374 ((_ is Cons!52516) lt!1861671))))

(assert (=> d!1494644 (forall!11389 lt!1861671 lambda!209882)))

(assert (=> d!1494644 (= (extractMap!1918 lt!1861671) lt!1862211)))

(declare-fun b!4699748 () Bool)

(assert (=> b!4699748 (= e!2931732 (addToMapMapFromBucket!1324 (_2!30276 (h!58791 lt!1861671)) (extractMap!1918 (t!359846 lt!1861671))))))

(declare-fun b!4699749 () Bool)

(assert (=> b!4699749 (= e!2931732 (ListMap!5038 Nil!52515))))

(assert (= (and d!1494644 c!803374) b!4699748))

(assert (= (and d!1494644 (not c!803374)) b!4699749))

(declare-fun m!5613171 () Bool)

(assert (=> d!1494644 m!5613171))

(declare-fun m!5613173 () Bool)

(assert (=> d!1494644 m!5613173))

(declare-fun m!5613175 () Bool)

(assert (=> b!4699748 m!5613175))

(assert (=> b!4699748 m!5613175))

(declare-fun m!5613177 () Bool)

(assert (=> b!4699748 m!5613177))

(assert (=> b!4699319 d!1494644))

(declare-fun bs!1094137 () Bool)

(declare-fun b!4699750 () Bool)

(assert (= bs!1094137 (and b!4699750 d!1494528)))

(declare-fun lambda!209883 () Int)

(assert (=> bs!1094137 (not (= lambda!209883 lambda!209810))))

(declare-fun bs!1094138 () Bool)

(assert (= bs!1094138 (and b!4699750 b!4699733)))

(assert (=> bs!1094138 (= (= lt!1861670 lt!1862184) (= lambda!209883 lambda!209877))))

(declare-fun bs!1094139 () Bool)

(assert (= bs!1094139 (and b!4699750 b!4699729)))

(assert (=> bs!1094139 (= lambda!209883 lambda!209875)))

(declare-fun bs!1094140 () Bool)

(assert (= bs!1094140 (and b!4699750 d!1494524)))

(assert (=> bs!1094140 (not (= lambda!209883 lambda!209806))))

(assert (=> bs!1094138 (= lambda!209883 lambda!209876)))

(declare-fun bs!1094141 () Bool)

(assert (= bs!1094141 (and b!4699750 d!1494564)))

(assert (=> bs!1094141 (= (= lt!1861670 lt!1862176) (= lambda!209883 lambda!209878))))

(assert (=> b!4699750 true))

(declare-fun bs!1094142 () Bool)

(declare-fun b!4699754 () Bool)

(assert (= bs!1094142 (and b!4699754 d!1494528)))

(declare-fun lambda!209884 () Int)

(assert (=> bs!1094142 (not (= lambda!209884 lambda!209810))))

(declare-fun bs!1094143 () Bool)

(assert (= bs!1094143 (and b!4699754 b!4699750)))

(assert (=> bs!1094143 (= lambda!209884 lambda!209883)))

(declare-fun bs!1094144 () Bool)

(assert (= bs!1094144 (and b!4699754 b!4699733)))

(assert (=> bs!1094144 (= (= lt!1861670 lt!1862184) (= lambda!209884 lambda!209877))))

(declare-fun bs!1094145 () Bool)

(assert (= bs!1094145 (and b!4699754 b!4699729)))

(assert (=> bs!1094145 (= lambda!209884 lambda!209875)))

(declare-fun bs!1094146 () Bool)

(assert (= bs!1094146 (and b!4699754 d!1494524)))

(assert (=> bs!1094146 (not (= lambda!209884 lambda!209806))))

(assert (=> bs!1094144 (= lambda!209884 lambda!209876)))

(declare-fun bs!1094147 () Bool)

(assert (= bs!1094147 (and b!4699754 d!1494564)))

(assert (=> bs!1094147 (= (= lt!1861670 lt!1862176) (= lambda!209884 lambda!209878))))

(assert (=> b!4699754 true))

(declare-fun lambda!209885 () Int)

(assert (=> bs!1094142 (not (= lambda!209885 lambda!209810))))

(declare-fun lt!1862225 () ListMap!5037)

(assert (=> b!4699754 (= (= lt!1862225 lt!1861670) (= lambda!209885 lambda!209884))))

(assert (=> bs!1094143 (= (= lt!1862225 lt!1861670) (= lambda!209885 lambda!209883))))

(assert (=> bs!1094144 (= (= lt!1862225 lt!1862184) (= lambda!209885 lambda!209877))))

(assert (=> bs!1094145 (= (= lt!1862225 lt!1861670) (= lambda!209885 lambda!209875))))

(assert (=> bs!1094146 (not (= lambda!209885 lambda!209806))))

(assert (=> bs!1094144 (= (= lt!1862225 lt!1861670) (= lambda!209885 lambda!209876))))

(assert (=> bs!1094147 (= (= lt!1862225 lt!1862176) (= lambda!209885 lambda!209878))))

(assert (=> b!4699754 true))

(declare-fun bs!1094148 () Bool)

(declare-fun d!1494646 () Bool)

(assert (= bs!1094148 (and d!1494646 d!1494528)))

(declare-fun lambda!209886 () Int)

(assert (=> bs!1094148 (not (= lambda!209886 lambda!209810))))

(declare-fun bs!1094149 () Bool)

(assert (= bs!1094149 (and d!1494646 b!4699754)))

(declare-fun lt!1862217 () ListMap!5037)

(assert (=> bs!1094149 (= (= lt!1862217 lt!1862225) (= lambda!209886 lambda!209885))))

(assert (=> bs!1094149 (= (= lt!1862217 lt!1861670) (= lambda!209886 lambda!209884))))

(declare-fun bs!1094150 () Bool)

(assert (= bs!1094150 (and d!1494646 b!4699750)))

(assert (=> bs!1094150 (= (= lt!1862217 lt!1861670) (= lambda!209886 lambda!209883))))

(declare-fun bs!1094151 () Bool)

(assert (= bs!1094151 (and d!1494646 b!4699733)))

(assert (=> bs!1094151 (= (= lt!1862217 lt!1862184) (= lambda!209886 lambda!209877))))

(declare-fun bs!1094152 () Bool)

(assert (= bs!1094152 (and d!1494646 b!4699729)))

(assert (=> bs!1094152 (= (= lt!1862217 lt!1861670) (= lambda!209886 lambda!209875))))

(declare-fun bs!1094153 () Bool)

(assert (= bs!1094153 (and d!1494646 d!1494524)))

(assert (=> bs!1094153 (not (= lambda!209886 lambda!209806))))

(assert (=> bs!1094151 (= (= lt!1862217 lt!1861670) (= lambda!209886 lambda!209876))))

(declare-fun bs!1094154 () Bool)

(assert (= bs!1094154 (and d!1494646 d!1494564)))

(assert (=> bs!1094154 (= (= lt!1862217 lt!1862176) (= lambda!209886 lambda!209878))))

(assert (=> d!1494646 true))

(declare-fun e!2931733 () ListMap!5037)

(assert (=> b!4699750 (= e!2931733 lt!1861670)))

(declare-fun lt!1862226 () Unit!125868)

(declare-fun call!328546 () Unit!125868)

(assert (=> b!4699750 (= lt!1862226 call!328546)))

(declare-fun call!328545 () Bool)

(assert (=> b!4699750 call!328545))

(declare-fun lt!1862223 () Unit!125868)

(assert (=> b!4699750 (= lt!1862223 lt!1862226)))

(declare-fun call!328547 () Bool)

(assert (=> b!4699750 call!328547))

(declare-fun lt!1862222 () Unit!125868)

(declare-fun Unit!125920 () Unit!125868)

(assert (=> b!4699750 (= lt!1862222 Unit!125920)))

(declare-fun bm!328540 () Bool)

(assert (=> bm!328540 (= call!328546 (lemmaContainsAllItsOwnKeys!728 lt!1861670))))

(declare-fun b!4699751 () Bool)

(declare-fun res!1983989 () Bool)

(declare-fun e!2931735 () Bool)

(assert (=> b!4699751 (=> (not res!1983989) (not e!2931735))))

(assert (=> b!4699751 (= res!1983989 (forall!11391 (toList!5674 lt!1861670) lambda!209886))))

(declare-fun b!4699752 () Bool)

(declare-fun e!2931734 () Bool)

(assert (=> b!4699752 (= e!2931734 (forall!11391 (toList!5674 lt!1861670) lambda!209885))))

(declare-fun bm!328541 () Bool)

(declare-fun c!803375 () Bool)

(assert (=> bm!328541 (= call!328545 (forall!11391 (toList!5674 lt!1861670) (ite c!803375 lambda!209883 lambda!209884)))))

(assert (=> b!4699754 (= e!2931733 lt!1862225)))

(declare-fun lt!1862227 () ListMap!5037)

(assert (=> b!4699754 (= lt!1862227 (+!2176 lt!1861670 (h!58790 (Cons!52515 lt!1861674 lt!1861682))))))

(assert (=> b!4699754 (= lt!1862225 (addToMapMapFromBucket!1324 (t!359845 (Cons!52515 lt!1861674 lt!1861682)) (+!2176 lt!1861670 (h!58790 (Cons!52515 lt!1861674 lt!1861682)))))))

(declare-fun lt!1862230 () Unit!125868)

(assert (=> b!4699754 (= lt!1862230 call!328546)))

(assert (=> b!4699754 call!328545))

(declare-fun lt!1862218 () Unit!125868)

(assert (=> b!4699754 (= lt!1862218 lt!1862230)))

(assert (=> b!4699754 (forall!11391 (toList!5674 lt!1862227) lambda!209885)))

(declare-fun lt!1862214 () Unit!125868)

(declare-fun Unit!125921 () Unit!125868)

(assert (=> b!4699754 (= lt!1862214 Unit!125921)))

(assert (=> b!4699754 (forall!11391 (t!359845 (Cons!52515 lt!1861674 lt!1861682)) lambda!209885)))

(declare-fun lt!1862232 () Unit!125868)

(declare-fun Unit!125922 () Unit!125868)

(assert (=> b!4699754 (= lt!1862232 Unit!125922)))

(declare-fun lt!1862213 () Unit!125868)

(declare-fun Unit!125923 () Unit!125868)

(assert (=> b!4699754 (= lt!1862213 Unit!125923)))

(declare-fun lt!1862229 () Unit!125868)

(assert (=> b!4699754 (= lt!1862229 (forallContained!3498 (toList!5674 lt!1862227) lambda!209885 (h!58790 (Cons!52515 lt!1861674 lt!1861682))))))

(assert (=> b!4699754 (contains!15784 lt!1862227 (_1!30275 (h!58790 (Cons!52515 lt!1861674 lt!1861682))))))

(declare-fun lt!1862224 () Unit!125868)

(declare-fun Unit!125924 () Unit!125868)

(assert (=> b!4699754 (= lt!1862224 Unit!125924)))

(assert (=> b!4699754 (contains!15784 lt!1862225 (_1!30275 (h!58790 (Cons!52515 lt!1861674 lt!1861682))))))

(declare-fun lt!1862220 () Unit!125868)

(declare-fun Unit!125925 () Unit!125868)

(assert (=> b!4699754 (= lt!1862220 Unit!125925)))

(assert (=> b!4699754 call!328547))

(declare-fun lt!1862231 () Unit!125868)

(declare-fun Unit!125926 () Unit!125868)

(assert (=> b!4699754 (= lt!1862231 Unit!125926)))

(assert (=> b!4699754 (forall!11391 (toList!5674 lt!1862227) lambda!209885)))

(declare-fun lt!1862215 () Unit!125868)

(declare-fun Unit!125927 () Unit!125868)

(assert (=> b!4699754 (= lt!1862215 Unit!125927)))

(declare-fun lt!1862221 () Unit!125868)

(declare-fun Unit!125928 () Unit!125868)

(assert (=> b!4699754 (= lt!1862221 Unit!125928)))

(declare-fun lt!1862212 () Unit!125868)

(assert (=> b!4699754 (= lt!1862212 (addForallContainsKeyThenBeforeAdding!727 lt!1861670 lt!1862225 (_1!30275 (h!58790 (Cons!52515 lt!1861674 lt!1861682))) (_2!30275 (h!58790 (Cons!52515 lt!1861674 lt!1861682)))))))

(assert (=> b!4699754 (forall!11391 (toList!5674 lt!1861670) lambda!209885)))

(declare-fun lt!1862216 () Unit!125868)

(assert (=> b!4699754 (= lt!1862216 lt!1862212)))

(assert (=> b!4699754 (forall!11391 (toList!5674 lt!1861670) lambda!209885)))

(declare-fun lt!1862219 () Unit!125868)

(declare-fun Unit!125929 () Unit!125868)

(assert (=> b!4699754 (= lt!1862219 Unit!125929)))

(declare-fun res!1983987 () Bool)

(assert (=> b!4699754 (= res!1983987 (forall!11391 (Cons!52515 lt!1861674 lt!1861682) lambda!209885))))

(assert (=> b!4699754 (=> (not res!1983987) (not e!2931734))))

(assert (=> b!4699754 e!2931734))

(declare-fun lt!1862228 () Unit!125868)

(declare-fun Unit!125930 () Unit!125868)

(assert (=> b!4699754 (= lt!1862228 Unit!125930)))

(declare-fun bm!328542 () Bool)

(assert (=> bm!328542 (= call!328547 (forall!11391 (ite c!803375 (toList!5674 lt!1861670) (Cons!52515 lt!1861674 lt!1861682)) (ite c!803375 lambda!209883 lambda!209885)))))

(assert (=> d!1494646 e!2931735))

(declare-fun res!1983988 () Bool)

(assert (=> d!1494646 (=> (not res!1983988) (not e!2931735))))

(assert (=> d!1494646 (= res!1983988 (forall!11391 (Cons!52515 lt!1861674 lt!1861682) lambda!209886))))

(assert (=> d!1494646 (= lt!1862217 e!2931733)))

(assert (=> d!1494646 (= c!803375 ((_ is Nil!52515) (Cons!52515 lt!1861674 lt!1861682)))))

(assert (=> d!1494646 (noDuplicateKeys!1892 (Cons!52515 lt!1861674 lt!1861682))))

(assert (=> d!1494646 (= (addToMapMapFromBucket!1324 (Cons!52515 lt!1861674 lt!1861682) lt!1861670) lt!1862217)))

(declare-fun b!4699753 () Bool)

(assert (=> b!4699753 (= e!2931735 (invariantList!1440 (toList!5674 lt!1862217)))))

(assert (= (and d!1494646 c!803375) b!4699750))

(assert (= (and d!1494646 (not c!803375)) b!4699754))

(assert (= (and b!4699754 res!1983987) b!4699752))

(assert (= (or b!4699750 b!4699754) bm!328540))

(assert (= (or b!4699750 b!4699754) bm!328542))

(assert (= (or b!4699750 b!4699754) bm!328541))

(assert (= (and d!1494646 res!1983988) b!4699751))

(assert (= (and b!4699751 res!1983989) b!4699753))

(declare-fun m!5613179 () Bool)

(assert (=> b!4699752 m!5613179))

(declare-fun m!5613181 () Bool)

(assert (=> bm!328542 m!5613181))

(assert (=> bm!328540 m!5613069))

(declare-fun m!5613183 () Bool)

(assert (=> b!4699753 m!5613183))

(declare-fun m!5613185 () Bool)

(assert (=> b!4699751 m!5613185))

(declare-fun m!5613187 () Bool)

(assert (=> b!4699754 m!5613187))

(declare-fun m!5613189 () Bool)

(assert (=> b!4699754 m!5613189))

(declare-fun m!5613191 () Bool)

(assert (=> b!4699754 m!5613191))

(assert (=> b!4699754 m!5613187))

(assert (=> b!4699754 m!5613179))

(declare-fun m!5613193 () Bool)

(assert (=> b!4699754 m!5613193))

(assert (=> b!4699754 m!5613179))

(declare-fun m!5613195 () Bool)

(assert (=> b!4699754 m!5613195))

(declare-fun m!5613197 () Bool)

(assert (=> b!4699754 m!5613197))

(declare-fun m!5613199 () Bool)

(assert (=> b!4699754 m!5613199))

(declare-fun m!5613201 () Bool)

(assert (=> b!4699754 m!5613201))

(assert (=> b!4699754 m!5613201))

(declare-fun m!5613203 () Bool)

(assert (=> b!4699754 m!5613203))

(declare-fun m!5613205 () Bool)

(assert (=> d!1494646 m!5613205))

(declare-fun m!5613207 () Bool)

(assert (=> d!1494646 m!5613207))

(declare-fun m!5613209 () Bool)

(assert (=> bm!328541 m!5613209))

(assert (=> b!4699319 d!1494646))

(declare-fun bs!1094155 () Bool)

(declare-fun b!4699755 () Bool)

(assert (= bs!1094155 (and b!4699755 d!1494528)))

(declare-fun lambda!209887 () Int)

(assert (=> bs!1094155 (not (= lambda!209887 lambda!209810))))

(declare-fun bs!1094156 () Bool)

(assert (= bs!1094156 (and b!4699755 b!4699754)))

(assert (=> bs!1094156 (= (= lt!1861670 lt!1862225) (= lambda!209887 lambda!209885))))

(assert (=> bs!1094156 (= lambda!209887 lambda!209884)))

(declare-fun bs!1094157 () Bool)

(assert (= bs!1094157 (and b!4699755 b!4699750)))

(assert (=> bs!1094157 (= lambda!209887 lambda!209883)))

(declare-fun bs!1094158 () Bool)

(assert (= bs!1094158 (and b!4699755 b!4699733)))

(assert (=> bs!1094158 (= (= lt!1861670 lt!1862184) (= lambda!209887 lambda!209877))))

(declare-fun bs!1094159 () Bool)

(assert (= bs!1094159 (and b!4699755 b!4699729)))

(assert (=> bs!1094159 (= lambda!209887 lambda!209875)))

(declare-fun bs!1094160 () Bool)

(assert (= bs!1094160 (and b!4699755 d!1494646)))

(assert (=> bs!1094160 (= (= lt!1861670 lt!1862217) (= lambda!209887 lambda!209886))))

(declare-fun bs!1094161 () Bool)

(assert (= bs!1094161 (and b!4699755 d!1494524)))

(assert (=> bs!1094161 (not (= lambda!209887 lambda!209806))))

(assert (=> bs!1094158 (= lambda!209887 lambda!209876)))

(declare-fun bs!1094162 () Bool)

(assert (= bs!1094162 (and b!4699755 d!1494564)))

(assert (=> bs!1094162 (= (= lt!1861670 lt!1862176) (= lambda!209887 lambda!209878))))

(assert (=> b!4699755 true))

(declare-fun bs!1094163 () Bool)

(declare-fun b!4699759 () Bool)

(assert (= bs!1094163 (and b!4699759 d!1494528)))

(declare-fun lambda!209888 () Int)

(assert (=> bs!1094163 (not (= lambda!209888 lambda!209810))))

(declare-fun bs!1094164 () Bool)

(assert (= bs!1094164 (and b!4699759 b!4699754)))

(assert (=> bs!1094164 (= (= lt!1861670 lt!1862225) (= lambda!209888 lambda!209885))))

(assert (=> bs!1094164 (= lambda!209888 lambda!209884)))

(declare-fun bs!1094165 () Bool)

(assert (= bs!1094165 (and b!4699759 b!4699750)))

(assert (=> bs!1094165 (= lambda!209888 lambda!209883)))

(declare-fun bs!1094166 () Bool)

(assert (= bs!1094166 (and b!4699759 b!4699733)))

(assert (=> bs!1094166 (= (= lt!1861670 lt!1862184) (= lambda!209888 lambda!209877))))

(declare-fun bs!1094167 () Bool)

(assert (= bs!1094167 (and b!4699759 b!4699729)))

(assert (=> bs!1094167 (= lambda!209888 lambda!209875)))

(declare-fun bs!1094168 () Bool)

(assert (= bs!1094168 (and b!4699759 d!1494646)))

(assert (=> bs!1094168 (= (= lt!1861670 lt!1862217) (= lambda!209888 lambda!209886))))

(declare-fun bs!1094169 () Bool)

(assert (= bs!1094169 (and b!4699759 d!1494524)))

(assert (=> bs!1094169 (not (= lambda!209888 lambda!209806))))

(declare-fun bs!1094170 () Bool)

(assert (= bs!1094170 (and b!4699759 d!1494564)))

(assert (=> bs!1094170 (= (= lt!1861670 lt!1862176) (= lambda!209888 lambda!209878))))

(declare-fun bs!1094171 () Bool)

(assert (= bs!1094171 (and b!4699759 b!4699755)))

(assert (=> bs!1094171 (= lambda!209888 lambda!209887)))

(assert (=> bs!1094166 (= lambda!209888 lambda!209876)))

(assert (=> b!4699759 true))

(declare-fun lambda!209889 () Int)

(assert (=> bs!1094163 (not (= lambda!209889 lambda!209810))))

(declare-fun lt!1862246 () ListMap!5037)

(assert (=> bs!1094164 (= (= lt!1862246 lt!1862225) (= lambda!209889 lambda!209885))))

(assert (=> b!4699759 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209888))))

(assert (=> bs!1094164 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209884))))

(assert (=> bs!1094165 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209883))))

(assert (=> bs!1094166 (= (= lt!1862246 lt!1862184) (= lambda!209889 lambda!209877))))

(assert (=> bs!1094167 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209875))))

(assert (=> bs!1094168 (= (= lt!1862246 lt!1862217) (= lambda!209889 lambda!209886))))

(assert (=> bs!1094169 (not (= lambda!209889 lambda!209806))))

(assert (=> bs!1094170 (= (= lt!1862246 lt!1862176) (= lambda!209889 lambda!209878))))

(assert (=> bs!1094171 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209887))))

(assert (=> bs!1094166 (= (= lt!1862246 lt!1861670) (= lambda!209889 lambda!209876))))

(assert (=> b!4699759 true))

(declare-fun bs!1094172 () Bool)

(declare-fun d!1494648 () Bool)

(assert (= bs!1094172 (and d!1494648 d!1494528)))

(declare-fun lambda!209890 () Int)

(assert (=> bs!1094172 (not (= lambda!209890 lambda!209810))))

(declare-fun bs!1094173 () Bool)

(assert (= bs!1094173 (and d!1494648 b!4699754)))

(declare-fun lt!1862238 () ListMap!5037)

(assert (=> bs!1094173 (= (= lt!1862238 lt!1862225) (= lambda!209890 lambda!209885))))

(declare-fun bs!1094174 () Bool)

(assert (= bs!1094174 (and d!1494648 b!4699759)))

(assert (=> bs!1094174 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209888))))

(assert (=> bs!1094173 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209884))))

(declare-fun bs!1094175 () Bool)

(assert (= bs!1094175 (and d!1494648 b!4699750)))

(assert (=> bs!1094175 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209883))))

(declare-fun bs!1094176 () Bool)

(assert (= bs!1094176 (and d!1494648 b!4699733)))

(assert (=> bs!1094176 (= (= lt!1862238 lt!1862184) (= lambda!209890 lambda!209877))))

(assert (=> bs!1094174 (= (= lt!1862238 lt!1862246) (= lambda!209890 lambda!209889))))

(declare-fun bs!1094177 () Bool)

(assert (= bs!1094177 (and d!1494648 b!4699729)))

(assert (=> bs!1094177 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209875))))

(declare-fun bs!1094178 () Bool)

(assert (= bs!1094178 (and d!1494648 d!1494646)))

(assert (=> bs!1094178 (= (= lt!1862238 lt!1862217) (= lambda!209890 lambda!209886))))

(declare-fun bs!1094179 () Bool)

(assert (= bs!1094179 (and d!1494648 d!1494524)))

(assert (=> bs!1094179 (not (= lambda!209890 lambda!209806))))

(declare-fun bs!1094180 () Bool)

(assert (= bs!1094180 (and d!1494648 d!1494564)))

(assert (=> bs!1094180 (= (= lt!1862238 lt!1862176) (= lambda!209890 lambda!209878))))

(declare-fun bs!1094181 () Bool)

(assert (= bs!1094181 (and d!1494648 b!4699755)))

(assert (=> bs!1094181 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209887))))

(assert (=> bs!1094176 (= (= lt!1862238 lt!1861670) (= lambda!209890 lambda!209876))))

(assert (=> d!1494648 true))

(declare-fun e!2931736 () ListMap!5037)

(assert (=> b!4699755 (= e!2931736 lt!1861670)))

(declare-fun lt!1862247 () Unit!125868)

(declare-fun call!328549 () Unit!125868)

(assert (=> b!4699755 (= lt!1862247 call!328549)))

(declare-fun call!328548 () Bool)

(assert (=> b!4699755 call!328548))

(declare-fun lt!1862244 () Unit!125868)

(assert (=> b!4699755 (= lt!1862244 lt!1862247)))

(declare-fun call!328550 () Bool)

(assert (=> b!4699755 call!328550))

(declare-fun lt!1862243 () Unit!125868)

(declare-fun Unit!125942 () Unit!125868)

(assert (=> b!4699755 (= lt!1862243 Unit!125942)))

(declare-fun bm!328543 () Bool)

(assert (=> bm!328543 (= call!328549 (lemmaContainsAllItsOwnKeys!728 lt!1861670))))

(declare-fun b!4699756 () Bool)

(declare-fun res!1983992 () Bool)

(declare-fun e!2931738 () Bool)

(assert (=> b!4699756 (=> (not res!1983992) (not e!2931738))))

(assert (=> b!4699756 (= res!1983992 (forall!11391 (toList!5674 lt!1861670) lambda!209890))))

(declare-fun b!4699757 () Bool)

(declare-fun e!2931737 () Bool)

(assert (=> b!4699757 (= e!2931737 (forall!11391 (toList!5674 lt!1861670) lambda!209889))))

(declare-fun c!803376 () Bool)

(declare-fun bm!328544 () Bool)

(assert (=> bm!328544 (= call!328548 (forall!11391 (toList!5674 lt!1861670) (ite c!803376 lambda!209887 lambda!209888)))))

(assert (=> b!4699759 (= e!2931736 lt!1862246)))

(declare-fun lt!1862248 () ListMap!5037)

(assert (=> b!4699759 (= lt!1862248 (+!2176 lt!1861670 (h!58790 (Cons!52515 lt!1861680 lt!1861683))))))

(assert (=> b!4699759 (= lt!1862246 (addToMapMapFromBucket!1324 (t!359845 (Cons!52515 lt!1861680 lt!1861683)) (+!2176 lt!1861670 (h!58790 (Cons!52515 lt!1861680 lt!1861683)))))))

(declare-fun lt!1862251 () Unit!125868)

(assert (=> b!4699759 (= lt!1862251 call!328549)))

(assert (=> b!4699759 call!328548))

(declare-fun lt!1862239 () Unit!125868)

(assert (=> b!4699759 (= lt!1862239 lt!1862251)))

(assert (=> b!4699759 (forall!11391 (toList!5674 lt!1862248) lambda!209889)))

(declare-fun lt!1862235 () Unit!125868)

(declare-fun Unit!125943 () Unit!125868)

(assert (=> b!4699759 (= lt!1862235 Unit!125943)))

(assert (=> b!4699759 (forall!11391 (t!359845 (Cons!52515 lt!1861680 lt!1861683)) lambda!209889)))

(declare-fun lt!1862253 () Unit!125868)

(declare-fun Unit!125944 () Unit!125868)

(assert (=> b!4699759 (= lt!1862253 Unit!125944)))

(declare-fun lt!1862234 () Unit!125868)

(declare-fun Unit!125945 () Unit!125868)

(assert (=> b!4699759 (= lt!1862234 Unit!125945)))

(declare-fun lt!1862250 () Unit!125868)

(assert (=> b!4699759 (= lt!1862250 (forallContained!3498 (toList!5674 lt!1862248) lambda!209889 (h!58790 (Cons!52515 lt!1861680 lt!1861683))))))

(assert (=> b!4699759 (contains!15784 lt!1862248 (_1!30275 (h!58790 (Cons!52515 lt!1861680 lt!1861683))))))

(declare-fun lt!1862245 () Unit!125868)

(declare-fun Unit!125946 () Unit!125868)

(assert (=> b!4699759 (= lt!1862245 Unit!125946)))

(assert (=> b!4699759 (contains!15784 lt!1862246 (_1!30275 (h!58790 (Cons!52515 lt!1861680 lt!1861683))))))

(declare-fun lt!1862241 () Unit!125868)

(declare-fun Unit!125947 () Unit!125868)

(assert (=> b!4699759 (= lt!1862241 Unit!125947)))

(assert (=> b!4699759 call!328550))

(declare-fun lt!1862252 () Unit!125868)

(declare-fun Unit!125948 () Unit!125868)

(assert (=> b!4699759 (= lt!1862252 Unit!125948)))

(assert (=> b!4699759 (forall!11391 (toList!5674 lt!1862248) lambda!209889)))

(declare-fun lt!1862236 () Unit!125868)

(declare-fun Unit!125949 () Unit!125868)

(assert (=> b!4699759 (= lt!1862236 Unit!125949)))

(declare-fun lt!1862242 () Unit!125868)

(declare-fun Unit!125950 () Unit!125868)

(assert (=> b!4699759 (= lt!1862242 Unit!125950)))

(declare-fun lt!1862233 () Unit!125868)

(assert (=> b!4699759 (= lt!1862233 (addForallContainsKeyThenBeforeAdding!727 lt!1861670 lt!1862246 (_1!30275 (h!58790 (Cons!52515 lt!1861680 lt!1861683))) (_2!30275 (h!58790 (Cons!52515 lt!1861680 lt!1861683)))))))

(assert (=> b!4699759 (forall!11391 (toList!5674 lt!1861670) lambda!209889)))

(declare-fun lt!1862237 () Unit!125868)

(assert (=> b!4699759 (= lt!1862237 lt!1862233)))

(assert (=> b!4699759 (forall!11391 (toList!5674 lt!1861670) lambda!209889)))

(declare-fun lt!1862240 () Unit!125868)

(declare-fun Unit!125951 () Unit!125868)

(assert (=> b!4699759 (= lt!1862240 Unit!125951)))

(declare-fun res!1983990 () Bool)

(assert (=> b!4699759 (= res!1983990 (forall!11391 (Cons!52515 lt!1861680 lt!1861683) lambda!209889))))

(assert (=> b!4699759 (=> (not res!1983990) (not e!2931737))))

(assert (=> b!4699759 e!2931737))

(declare-fun lt!1862249 () Unit!125868)

(declare-fun Unit!125952 () Unit!125868)

(assert (=> b!4699759 (= lt!1862249 Unit!125952)))

(declare-fun bm!328545 () Bool)

(assert (=> bm!328545 (= call!328550 (forall!11391 (ite c!803376 (toList!5674 lt!1861670) (Cons!52515 lt!1861680 lt!1861683)) (ite c!803376 lambda!209887 lambda!209889)))))

(assert (=> d!1494648 e!2931738))

(declare-fun res!1983991 () Bool)

(assert (=> d!1494648 (=> (not res!1983991) (not e!2931738))))

(assert (=> d!1494648 (= res!1983991 (forall!11391 (Cons!52515 lt!1861680 lt!1861683) lambda!209890))))

(assert (=> d!1494648 (= lt!1862238 e!2931736)))

(assert (=> d!1494648 (= c!803376 ((_ is Nil!52515) (Cons!52515 lt!1861680 lt!1861683)))))

(assert (=> d!1494648 (noDuplicateKeys!1892 (Cons!52515 lt!1861680 lt!1861683))))

(assert (=> d!1494648 (= (addToMapMapFromBucket!1324 (Cons!52515 lt!1861680 lt!1861683) lt!1861670) lt!1862238)))

(declare-fun b!4699758 () Bool)

(assert (=> b!4699758 (= e!2931738 (invariantList!1440 (toList!5674 lt!1862238)))))

(assert (= (and d!1494648 c!803376) b!4699755))

(assert (= (and d!1494648 (not c!803376)) b!4699759))

(assert (= (and b!4699759 res!1983990) b!4699757))

(assert (= (or b!4699755 b!4699759) bm!328543))

(assert (= (or b!4699755 b!4699759) bm!328545))

(assert (= (or b!4699755 b!4699759) bm!328544))

(assert (= (and d!1494648 res!1983991) b!4699756))

(assert (= (and b!4699756 res!1983992) b!4699758))

(declare-fun m!5613211 () Bool)

(assert (=> b!4699757 m!5613211))

(declare-fun m!5613213 () Bool)

(assert (=> bm!328545 m!5613213))

(assert (=> bm!328543 m!5613069))

(declare-fun m!5613215 () Bool)

(assert (=> b!4699758 m!5613215))

(declare-fun m!5613217 () Bool)

(assert (=> b!4699756 m!5613217))

(declare-fun m!5613219 () Bool)

(assert (=> b!4699759 m!5613219))

(declare-fun m!5613221 () Bool)

(assert (=> b!4699759 m!5613221))

(declare-fun m!5613223 () Bool)

(assert (=> b!4699759 m!5613223))

(assert (=> b!4699759 m!5613219))

(assert (=> b!4699759 m!5613211))

(declare-fun m!5613225 () Bool)

(assert (=> b!4699759 m!5613225))

(assert (=> b!4699759 m!5613211))

(declare-fun m!5613227 () Bool)

(assert (=> b!4699759 m!5613227))

(declare-fun m!5613229 () Bool)

(assert (=> b!4699759 m!5613229))

(declare-fun m!5613231 () Bool)

(assert (=> b!4699759 m!5613231))

(declare-fun m!5613233 () Bool)

(assert (=> b!4699759 m!5613233))

(assert (=> b!4699759 m!5613233))

(declare-fun m!5613235 () Bool)

(assert (=> b!4699759 m!5613235))

(declare-fun m!5613237 () Bool)

(assert (=> d!1494648 m!5613237))

(declare-fun m!5613239 () Bool)

(assert (=> d!1494648 m!5613239))

(declare-fun m!5613241 () Bool)

(assert (=> bm!328544 m!5613241))

(assert (=> b!4699319 d!1494648))

(declare-fun bs!1094182 () Bool)

(declare-fun b!4699760 () Bool)

(assert (= bs!1094182 (and b!4699760 d!1494528)))

(declare-fun lambda!209891 () Int)

(assert (=> bs!1094182 (not (= lambda!209891 lambda!209810))))

(declare-fun bs!1094183 () Bool)

(assert (= bs!1094183 (and b!4699760 b!4699754)))

(assert (=> bs!1094183 (= (= lt!1861670 lt!1862225) (= lambda!209891 lambda!209885))))

(declare-fun bs!1094184 () Bool)

(assert (= bs!1094184 (and b!4699760 b!4699759)))

(assert (=> bs!1094184 (= lambda!209891 lambda!209888)))

(assert (=> bs!1094183 (= lambda!209891 lambda!209884)))

(declare-fun bs!1094185 () Bool)

(assert (= bs!1094185 (and b!4699760 b!4699750)))

(assert (=> bs!1094185 (= lambda!209891 lambda!209883)))

(declare-fun bs!1094186 () Bool)

(assert (= bs!1094186 (and b!4699760 d!1494648)))

(assert (=> bs!1094186 (= (= lt!1861670 lt!1862238) (= lambda!209891 lambda!209890))))

(declare-fun bs!1094187 () Bool)

(assert (= bs!1094187 (and b!4699760 b!4699733)))

(assert (=> bs!1094187 (= (= lt!1861670 lt!1862184) (= lambda!209891 lambda!209877))))

(assert (=> bs!1094184 (= (= lt!1861670 lt!1862246) (= lambda!209891 lambda!209889))))

(declare-fun bs!1094188 () Bool)

(assert (= bs!1094188 (and b!4699760 b!4699729)))

(assert (=> bs!1094188 (= lambda!209891 lambda!209875)))

(declare-fun bs!1094189 () Bool)

(assert (= bs!1094189 (and b!4699760 d!1494646)))

(assert (=> bs!1094189 (= (= lt!1861670 lt!1862217) (= lambda!209891 lambda!209886))))

(declare-fun bs!1094190 () Bool)

(assert (= bs!1094190 (and b!4699760 d!1494524)))

(assert (=> bs!1094190 (not (= lambda!209891 lambda!209806))))

(declare-fun bs!1094191 () Bool)

(assert (= bs!1094191 (and b!4699760 d!1494564)))

(assert (=> bs!1094191 (= (= lt!1861670 lt!1862176) (= lambda!209891 lambda!209878))))

(declare-fun bs!1094192 () Bool)

(assert (= bs!1094192 (and b!4699760 b!4699755)))

(assert (=> bs!1094192 (= lambda!209891 lambda!209887)))

(assert (=> bs!1094187 (= lambda!209891 lambda!209876)))

(assert (=> b!4699760 true))

(declare-fun bs!1094193 () Bool)

(declare-fun b!4699764 () Bool)

(assert (= bs!1094193 (and b!4699764 d!1494528)))

(declare-fun lambda!209892 () Int)

(assert (=> bs!1094193 (not (= lambda!209892 lambda!209810))))

(declare-fun bs!1094194 () Bool)

(assert (= bs!1094194 (and b!4699764 b!4699754)))

(assert (=> bs!1094194 (= (= lt!1861670 lt!1862225) (= lambda!209892 lambda!209885))))

(declare-fun bs!1094195 () Bool)

(assert (= bs!1094195 (and b!4699764 b!4699759)))

(assert (=> bs!1094195 (= lambda!209892 lambda!209888)))

(assert (=> bs!1094194 (= lambda!209892 lambda!209884)))

(declare-fun bs!1094196 () Bool)

(assert (= bs!1094196 (and b!4699764 b!4699750)))

(assert (=> bs!1094196 (= lambda!209892 lambda!209883)))

(declare-fun bs!1094197 () Bool)

(assert (= bs!1094197 (and b!4699764 d!1494648)))

(assert (=> bs!1094197 (= (= lt!1861670 lt!1862238) (= lambda!209892 lambda!209890))))

(declare-fun bs!1094198 () Bool)

(assert (= bs!1094198 (and b!4699764 b!4699733)))

(assert (=> bs!1094198 (= (= lt!1861670 lt!1862184) (= lambda!209892 lambda!209877))))

(assert (=> bs!1094195 (= (= lt!1861670 lt!1862246) (= lambda!209892 lambda!209889))))

(declare-fun bs!1094199 () Bool)

(assert (= bs!1094199 (and b!4699764 b!4699729)))

(assert (=> bs!1094199 (= lambda!209892 lambda!209875)))

(declare-fun bs!1094200 () Bool)

(assert (= bs!1094200 (and b!4699764 d!1494646)))

(assert (=> bs!1094200 (= (= lt!1861670 lt!1862217) (= lambda!209892 lambda!209886))))

(declare-fun bs!1094201 () Bool)

(assert (= bs!1094201 (and b!4699764 d!1494524)))

(assert (=> bs!1094201 (not (= lambda!209892 lambda!209806))))

(declare-fun bs!1094202 () Bool)

(assert (= bs!1094202 (and b!4699764 d!1494564)))

(assert (=> bs!1094202 (= (= lt!1861670 lt!1862176) (= lambda!209892 lambda!209878))))

(declare-fun bs!1094203 () Bool)

(assert (= bs!1094203 (and b!4699764 b!4699760)))

(assert (=> bs!1094203 (= lambda!209892 lambda!209891)))

(declare-fun bs!1094204 () Bool)

(assert (= bs!1094204 (and b!4699764 b!4699755)))

(assert (=> bs!1094204 (= lambda!209892 lambda!209887)))

(assert (=> bs!1094198 (= lambda!209892 lambda!209876)))

(assert (=> b!4699764 true))

(declare-fun lambda!209893 () Int)

(assert (=> bs!1094193 (not (= lambda!209893 lambda!209810))))

(declare-fun lt!1862267 () ListMap!5037)

(assert (=> b!4699764 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209892))))

(assert (=> bs!1094194 (= (= lt!1862267 lt!1862225) (= lambda!209893 lambda!209885))))

(assert (=> bs!1094195 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209888))))

(assert (=> bs!1094194 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209884))))

(assert (=> bs!1094196 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209883))))

(assert (=> bs!1094197 (= (= lt!1862267 lt!1862238) (= lambda!209893 lambda!209890))))

(assert (=> bs!1094198 (= (= lt!1862267 lt!1862184) (= lambda!209893 lambda!209877))))

(assert (=> bs!1094195 (= (= lt!1862267 lt!1862246) (= lambda!209893 lambda!209889))))

(assert (=> bs!1094199 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209875))))

(assert (=> bs!1094200 (= (= lt!1862267 lt!1862217) (= lambda!209893 lambda!209886))))

(assert (=> bs!1094201 (not (= lambda!209893 lambda!209806))))

(assert (=> bs!1094202 (= (= lt!1862267 lt!1862176) (= lambda!209893 lambda!209878))))

(assert (=> bs!1094203 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209891))))

(assert (=> bs!1094204 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209887))))

(assert (=> bs!1094198 (= (= lt!1862267 lt!1861670) (= lambda!209893 lambda!209876))))

(assert (=> b!4699764 true))

(declare-fun bs!1094205 () Bool)

(declare-fun d!1494650 () Bool)

(assert (= bs!1094205 (and d!1494650 b!4699764)))

(declare-fun lt!1862259 () ListMap!5037)

(declare-fun lambda!209894 () Int)

(assert (=> bs!1094205 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209892))))

(declare-fun bs!1094206 () Bool)

(assert (= bs!1094206 (and d!1494650 b!4699754)))

(assert (=> bs!1094206 (= (= lt!1862259 lt!1862225) (= lambda!209894 lambda!209885))))

(declare-fun bs!1094207 () Bool)

(assert (= bs!1094207 (and d!1494650 b!4699759)))

(assert (=> bs!1094207 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209888))))

(assert (=> bs!1094206 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209884))))

(declare-fun bs!1094208 () Bool)

(assert (= bs!1094208 (and d!1494650 b!4699750)))

(assert (=> bs!1094208 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209883))))

(declare-fun bs!1094209 () Bool)

(assert (= bs!1094209 (and d!1494650 d!1494648)))

(assert (=> bs!1094209 (= (= lt!1862259 lt!1862238) (= lambda!209894 lambda!209890))))

(declare-fun bs!1094210 () Bool)

(assert (= bs!1094210 (and d!1494650 b!4699733)))

(assert (=> bs!1094210 (= (= lt!1862259 lt!1862184) (= lambda!209894 lambda!209877))))

(assert (=> bs!1094207 (= (= lt!1862259 lt!1862246) (= lambda!209894 lambda!209889))))

(declare-fun bs!1094211 () Bool)

(assert (= bs!1094211 (and d!1494650 b!4699729)))

(assert (=> bs!1094211 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209875))))

(declare-fun bs!1094212 () Bool)

(assert (= bs!1094212 (and d!1494650 d!1494646)))

(assert (=> bs!1094212 (= (= lt!1862259 lt!1862217) (= lambda!209894 lambda!209886))))

(declare-fun bs!1094213 () Bool)

(assert (= bs!1094213 (and d!1494650 d!1494524)))

(assert (=> bs!1094213 (not (= lambda!209894 lambda!209806))))

(declare-fun bs!1094214 () Bool)

(assert (= bs!1094214 (and d!1494650 d!1494564)))

(assert (=> bs!1094214 (= (= lt!1862259 lt!1862176) (= lambda!209894 lambda!209878))))

(declare-fun bs!1094215 () Bool)

(assert (= bs!1094215 (and d!1494650 b!4699760)))

(assert (=> bs!1094215 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209891))))

(assert (=> bs!1094205 (= (= lt!1862259 lt!1862267) (= lambda!209894 lambda!209893))))

(declare-fun bs!1094216 () Bool)

(assert (= bs!1094216 (and d!1494650 d!1494528)))

(assert (=> bs!1094216 (not (= lambda!209894 lambda!209810))))

(declare-fun bs!1094217 () Bool)

(assert (= bs!1094217 (and d!1494650 b!4699755)))

(assert (=> bs!1094217 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209887))))

(assert (=> bs!1094210 (= (= lt!1862259 lt!1861670) (= lambda!209894 lambda!209876))))

(assert (=> d!1494650 true))

(declare-fun e!2931739 () ListMap!5037)

(assert (=> b!4699760 (= e!2931739 lt!1861670)))

(declare-fun lt!1862268 () Unit!125868)

(declare-fun call!328552 () Unit!125868)

(assert (=> b!4699760 (= lt!1862268 call!328552)))

(declare-fun call!328551 () Bool)

(assert (=> b!4699760 call!328551))

(declare-fun lt!1862265 () Unit!125868)

(assert (=> b!4699760 (= lt!1862265 lt!1862268)))

(declare-fun call!328553 () Bool)

(assert (=> b!4699760 call!328553))

(declare-fun lt!1862264 () Unit!125868)

(declare-fun Unit!125955 () Unit!125868)

(assert (=> b!4699760 (= lt!1862264 Unit!125955)))

(declare-fun bm!328546 () Bool)

(assert (=> bm!328546 (= call!328552 (lemmaContainsAllItsOwnKeys!728 lt!1861670))))

(declare-fun b!4699761 () Bool)

(declare-fun res!1983995 () Bool)

(declare-fun e!2931741 () Bool)

(assert (=> b!4699761 (=> (not res!1983995) (not e!2931741))))

(assert (=> b!4699761 (= res!1983995 (forall!11391 (toList!5674 lt!1861670) lambda!209894))))

(declare-fun b!4699762 () Bool)

(declare-fun e!2931740 () Bool)

(assert (=> b!4699762 (= e!2931740 (forall!11391 (toList!5674 lt!1861670) lambda!209893))))

(declare-fun c!803377 () Bool)

(declare-fun bm!328547 () Bool)

(assert (=> bm!328547 (= call!328551 (forall!11391 (toList!5674 lt!1861670) (ite c!803377 lambda!209891 lambda!209892)))))

(assert (=> b!4699764 (= e!2931739 lt!1862267)))

(declare-fun lt!1862269 () ListMap!5037)

(assert (=> b!4699764 (= lt!1862269 (+!2176 lt!1861670 (h!58790 lt!1861683)))))

(assert (=> b!4699764 (= lt!1862267 (addToMapMapFromBucket!1324 (t!359845 lt!1861683) (+!2176 lt!1861670 (h!58790 lt!1861683))))))

(declare-fun lt!1862272 () Unit!125868)

(assert (=> b!4699764 (= lt!1862272 call!328552)))

(assert (=> b!4699764 call!328551))

(declare-fun lt!1862260 () Unit!125868)

(assert (=> b!4699764 (= lt!1862260 lt!1862272)))

(assert (=> b!4699764 (forall!11391 (toList!5674 lt!1862269) lambda!209893)))

(declare-fun lt!1862256 () Unit!125868)

(declare-fun Unit!125956 () Unit!125868)

(assert (=> b!4699764 (= lt!1862256 Unit!125956)))

(assert (=> b!4699764 (forall!11391 (t!359845 lt!1861683) lambda!209893)))

(declare-fun lt!1862274 () Unit!125868)

(declare-fun Unit!125957 () Unit!125868)

(assert (=> b!4699764 (= lt!1862274 Unit!125957)))

(declare-fun lt!1862255 () Unit!125868)

(declare-fun Unit!125958 () Unit!125868)

(assert (=> b!4699764 (= lt!1862255 Unit!125958)))

(declare-fun lt!1862271 () Unit!125868)

(assert (=> b!4699764 (= lt!1862271 (forallContained!3498 (toList!5674 lt!1862269) lambda!209893 (h!58790 lt!1861683)))))

(assert (=> b!4699764 (contains!15784 lt!1862269 (_1!30275 (h!58790 lt!1861683)))))

(declare-fun lt!1862266 () Unit!125868)

(declare-fun Unit!125959 () Unit!125868)

(assert (=> b!4699764 (= lt!1862266 Unit!125959)))

(assert (=> b!4699764 (contains!15784 lt!1862267 (_1!30275 (h!58790 lt!1861683)))))

(declare-fun lt!1862262 () Unit!125868)

(declare-fun Unit!125960 () Unit!125868)

(assert (=> b!4699764 (= lt!1862262 Unit!125960)))

(assert (=> b!4699764 call!328553))

(declare-fun lt!1862273 () Unit!125868)

(declare-fun Unit!125961 () Unit!125868)

(assert (=> b!4699764 (= lt!1862273 Unit!125961)))

(assert (=> b!4699764 (forall!11391 (toList!5674 lt!1862269) lambda!209893)))

(declare-fun lt!1862257 () Unit!125868)

(declare-fun Unit!125962 () Unit!125868)

(assert (=> b!4699764 (= lt!1862257 Unit!125962)))

(declare-fun lt!1862263 () Unit!125868)

(declare-fun Unit!125963 () Unit!125868)

(assert (=> b!4699764 (= lt!1862263 Unit!125963)))

(declare-fun lt!1862254 () Unit!125868)

(assert (=> b!4699764 (= lt!1862254 (addForallContainsKeyThenBeforeAdding!727 lt!1861670 lt!1862267 (_1!30275 (h!58790 lt!1861683)) (_2!30275 (h!58790 lt!1861683))))))

(assert (=> b!4699764 (forall!11391 (toList!5674 lt!1861670) lambda!209893)))

(declare-fun lt!1862258 () Unit!125868)

(assert (=> b!4699764 (= lt!1862258 lt!1862254)))

(assert (=> b!4699764 (forall!11391 (toList!5674 lt!1861670) lambda!209893)))

(declare-fun lt!1862261 () Unit!125868)

(declare-fun Unit!125964 () Unit!125868)

(assert (=> b!4699764 (= lt!1862261 Unit!125964)))

(declare-fun res!1983993 () Bool)

(assert (=> b!4699764 (= res!1983993 (forall!11391 lt!1861683 lambda!209893))))

(assert (=> b!4699764 (=> (not res!1983993) (not e!2931740))))

(assert (=> b!4699764 e!2931740))

(declare-fun lt!1862270 () Unit!125868)

(declare-fun Unit!125965 () Unit!125868)

(assert (=> b!4699764 (= lt!1862270 Unit!125965)))

(declare-fun bm!328548 () Bool)

(assert (=> bm!328548 (= call!328553 (forall!11391 (ite c!803377 (toList!5674 lt!1861670) lt!1861683) (ite c!803377 lambda!209891 lambda!209893)))))

(assert (=> d!1494650 e!2931741))

(declare-fun res!1983994 () Bool)

(assert (=> d!1494650 (=> (not res!1983994) (not e!2931741))))

(assert (=> d!1494650 (= res!1983994 (forall!11391 lt!1861683 lambda!209894))))

(assert (=> d!1494650 (= lt!1862259 e!2931739)))

(assert (=> d!1494650 (= c!803377 ((_ is Nil!52515) lt!1861683))))

(assert (=> d!1494650 (noDuplicateKeys!1892 lt!1861683)))

(assert (=> d!1494650 (= (addToMapMapFromBucket!1324 lt!1861683 lt!1861670) lt!1862259)))

(declare-fun b!4699763 () Bool)

(assert (=> b!4699763 (= e!2931741 (invariantList!1440 (toList!5674 lt!1862259)))))

(assert (= (and d!1494650 c!803377) b!4699760))

(assert (= (and d!1494650 (not c!803377)) b!4699764))

(assert (= (and b!4699764 res!1983993) b!4699762))

(assert (= (or b!4699760 b!4699764) bm!328546))

(assert (= (or b!4699760 b!4699764) bm!328548))

(assert (= (or b!4699760 b!4699764) bm!328547))

(assert (= (and d!1494650 res!1983994) b!4699761))

(assert (= (and b!4699761 res!1983995) b!4699763))

(declare-fun m!5613243 () Bool)

(assert (=> b!4699762 m!5613243))

(declare-fun m!5613245 () Bool)

(assert (=> bm!328548 m!5613245))

(assert (=> bm!328546 m!5613069))

(declare-fun m!5613247 () Bool)

(assert (=> b!4699763 m!5613247))

(declare-fun m!5613249 () Bool)

(assert (=> b!4699761 m!5613249))

(declare-fun m!5613251 () Bool)

(assert (=> b!4699764 m!5613251))

(declare-fun m!5613253 () Bool)

(assert (=> b!4699764 m!5613253))

(declare-fun m!5613255 () Bool)

(assert (=> b!4699764 m!5613255))

(assert (=> b!4699764 m!5613251))

(assert (=> b!4699764 m!5613243))

(declare-fun m!5613257 () Bool)

(assert (=> b!4699764 m!5613257))

(assert (=> b!4699764 m!5613243))

(declare-fun m!5613259 () Bool)

(assert (=> b!4699764 m!5613259))

(declare-fun m!5613261 () Bool)

(assert (=> b!4699764 m!5613261))

(declare-fun m!5613263 () Bool)

(assert (=> b!4699764 m!5613263))

(declare-fun m!5613265 () Bool)

(assert (=> b!4699764 m!5613265))

(assert (=> b!4699764 m!5613265))

(declare-fun m!5613267 () Bool)

(assert (=> b!4699764 m!5613267))

(declare-fun m!5613269 () Bool)

(assert (=> d!1494650 m!5613269))

(assert (=> d!1494650 m!5613121))

(declare-fun m!5613271 () Bool)

(assert (=> bm!328547 m!5613271))

(assert (=> b!4699319 d!1494650))

(declare-fun d!1494652 () Bool)

(assert (=> d!1494652 (= (head!10047 newBucket!218) (h!58790 newBucket!218))))

(assert (=> b!4699319 d!1494652))

(declare-fun bs!1094218 () Bool)

(declare-fun d!1494654 () Bool)

(assert (= bs!1094218 (and d!1494654 start!476416)))

(declare-fun lambda!209897 () Int)

(assert (=> bs!1094218 (= lambda!209897 lambda!209739)))

(declare-fun bs!1094219 () Bool)

(assert (= bs!1094219 (and d!1494654 d!1494550)))

(assert (=> bs!1094219 (= lambda!209897 lambda!209817)))

(declare-fun bs!1094220 () Bool)

(assert (= bs!1094220 (and d!1494654 d!1494484)))

(assert (=> bs!1094220 (= lambda!209897 lambda!209751)))

(declare-fun bs!1094221 () Bool)

(assert (= bs!1094221 (and d!1494654 d!1494644)))

(assert (=> bs!1094221 (= lambda!209897 lambda!209882)))

(declare-fun bs!1094222 () Bool)

(assert (= bs!1094222 (and d!1494654 d!1494536)))

(assert (=> bs!1094222 (= lambda!209897 lambda!209812)))

(declare-fun bs!1094223 () Bool)

(assert (= bs!1094223 (and d!1494654 d!1494540)))

(assert (=> bs!1094223 (= lambda!209897 lambda!209813)))

(declare-fun bs!1094224 () Bool)

(assert (= bs!1094224 (and d!1494654 d!1494634)))

(assert (=> bs!1094224 (= lambda!209897 lambda!209881)))

(declare-fun bs!1094225 () Bool)

(assert (= bs!1094225 (and d!1494654 d!1494628)))

(assert (=> bs!1094225 (= lambda!209897 lambda!209880)))

(declare-fun bs!1094226 () Bool)

(assert (= bs!1094226 (and d!1494654 d!1494622)))

(assert (=> bs!1094226 (= lambda!209897 lambda!209879)))

(declare-fun bs!1094227 () Bool)

(assert (= bs!1094227 (and d!1494654 d!1494516)))

(assert (=> bs!1094227 (= lambda!209897 lambda!209797)))

(declare-fun bs!1094228 () Bool)

(assert (= bs!1094228 (and d!1494654 d!1494526)))

(assert (=> bs!1094228 (not (= lambda!209897 lambda!209809))))

(declare-fun bs!1094229 () Bool)

(assert (= bs!1094229 (and d!1494654 d!1494544)))

(assert (=> bs!1094229 (= lambda!209897 lambda!209814)))

(declare-fun bs!1094230 () Bool)

(assert (= bs!1094230 (and d!1494654 d!1494494)))

(assert (=> bs!1094230 (= lambda!209897 lambda!209778)))

(assert (=> d!1494654 (contains!15784 (extractMap!1918 (toList!5673 lt!1861677)) key!4653)))

(declare-fun lt!1862277 () Unit!125868)

(declare-fun choose!32849 (ListLongMap!4203 K!13880 Hashable!6261) Unit!125868)

(assert (=> d!1494654 (= lt!1862277 (choose!32849 lt!1861677 key!4653 hashF!1323))))

(assert (=> d!1494654 (forall!11389 (toList!5673 lt!1861677) lambda!209897)))

(assert (=> d!1494654 (= (lemmaListContainsThenExtractedMapContains!484 lt!1861677 key!4653 hashF!1323) lt!1862277)))

(declare-fun bs!1094231 () Bool)

(assert (= bs!1094231 d!1494654))

(declare-fun m!5613273 () Bool)

(assert (=> bs!1094231 m!5613273))

(assert (=> bs!1094231 m!5613273))

(declare-fun m!5613275 () Bool)

(assert (=> bs!1094231 m!5613275))

(declare-fun m!5613277 () Bool)

(assert (=> bs!1094231 m!5613277))

(declare-fun m!5613279 () Bool)

(assert (=> bs!1094231 m!5613279))

(assert (=> b!4699319 d!1494654))

(declare-fun d!1494656 () Bool)

(assert (=> d!1494656 (= (eq!1051 lt!1861678 (+!2176 lt!1861697 (h!58790 oldBucket!34))) (= (content!9249 (toList!5674 lt!1861678)) (content!9249 (toList!5674 (+!2176 lt!1861697 (h!58790 oldBucket!34))))))))

(declare-fun bs!1094232 () Bool)

(assert (= bs!1094232 d!1494656))

(declare-fun m!5613281 () Bool)

(assert (=> bs!1094232 m!5613281))

(declare-fun m!5613283 () Bool)

(assert (=> bs!1094232 m!5613283))

(assert (=> b!4699319 d!1494656))

(declare-fun bs!1094233 () Bool)

(declare-fun b!4699765 () Bool)

(assert (= bs!1094233 (and b!4699765 b!4699764)))

(declare-fun lambda!209898 () Int)

(assert (=> bs!1094233 (= lambda!209898 lambda!209892)))

(declare-fun bs!1094234 () Bool)

(assert (= bs!1094234 (and b!4699765 b!4699754)))

(assert (=> bs!1094234 (= (= lt!1861670 lt!1862225) (= lambda!209898 lambda!209885))))

(declare-fun bs!1094235 () Bool)

(assert (= bs!1094235 (and b!4699765 b!4699759)))

(assert (=> bs!1094235 (= lambda!209898 lambda!209888)))

(assert (=> bs!1094234 (= lambda!209898 lambda!209884)))

(declare-fun bs!1094236 () Bool)

(assert (= bs!1094236 (and b!4699765 b!4699750)))

(assert (=> bs!1094236 (= lambda!209898 lambda!209883)))

(declare-fun bs!1094237 () Bool)

(assert (= bs!1094237 (and b!4699765 d!1494648)))

(assert (=> bs!1094237 (= (= lt!1861670 lt!1862238) (= lambda!209898 lambda!209890))))

(declare-fun bs!1094238 () Bool)

(assert (= bs!1094238 (and b!4699765 b!4699733)))

(assert (=> bs!1094238 (= (= lt!1861670 lt!1862184) (= lambda!209898 lambda!209877))))

(assert (=> bs!1094235 (= (= lt!1861670 lt!1862246) (= lambda!209898 lambda!209889))))

(declare-fun bs!1094239 () Bool)

(assert (= bs!1094239 (and b!4699765 b!4699729)))

(assert (=> bs!1094239 (= lambda!209898 lambda!209875)))

(declare-fun bs!1094240 () Bool)

(assert (= bs!1094240 (and b!4699765 d!1494646)))

(assert (=> bs!1094240 (= (= lt!1861670 lt!1862217) (= lambda!209898 lambda!209886))))

(declare-fun bs!1094241 () Bool)

(assert (= bs!1094241 (and b!4699765 d!1494524)))

(assert (=> bs!1094241 (not (= lambda!209898 lambda!209806))))

(declare-fun bs!1094242 () Bool)

(assert (= bs!1094242 (and b!4699765 d!1494564)))

(assert (=> bs!1094242 (= (= lt!1861670 lt!1862176) (= lambda!209898 lambda!209878))))

(declare-fun bs!1094243 () Bool)

(assert (= bs!1094243 (and b!4699765 d!1494650)))

(assert (=> bs!1094243 (= (= lt!1861670 lt!1862259) (= lambda!209898 lambda!209894))))

(declare-fun bs!1094244 () Bool)

(assert (= bs!1094244 (and b!4699765 b!4699760)))

(assert (=> bs!1094244 (= lambda!209898 lambda!209891)))

(assert (=> bs!1094233 (= (= lt!1861670 lt!1862267) (= lambda!209898 lambda!209893))))

(declare-fun bs!1094245 () Bool)

(assert (= bs!1094245 (and b!4699765 d!1494528)))

(assert (=> bs!1094245 (not (= lambda!209898 lambda!209810))))

(declare-fun bs!1094246 () Bool)

(assert (= bs!1094246 (and b!4699765 b!4699755)))

(assert (=> bs!1094246 (= lambda!209898 lambda!209887)))

(assert (=> bs!1094238 (= lambda!209898 lambda!209876)))

(assert (=> b!4699765 true))

(declare-fun bs!1094247 () Bool)

(declare-fun b!4699769 () Bool)

(assert (= bs!1094247 (and b!4699769 b!4699764)))

(declare-fun lambda!209899 () Int)

(assert (=> bs!1094247 (= lambda!209899 lambda!209892)))

(declare-fun bs!1094248 () Bool)

(assert (= bs!1094248 (and b!4699769 b!4699754)))

(assert (=> bs!1094248 (= (= lt!1861670 lt!1862225) (= lambda!209899 lambda!209885))))

(declare-fun bs!1094249 () Bool)

(assert (= bs!1094249 (and b!4699769 b!4699759)))

(assert (=> bs!1094249 (= lambda!209899 lambda!209888)))

(assert (=> bs!1094248 (= lambda!209899 lambda!209884)))

(declare-fun bs!1094250 () Bool)

(assert (= bs!1094250 (and b!4699769 b!4699750)))

(assert (=> bs!1094250 (= lambda!209899 lambda!209883)))

(declare-fun bs!1094251 () Bool)

(assert (= bs!1094251 (and b!4699769 d!1494648)))

(assert (=> bs!1094251 (= (= lt!1861670 lt!1862238) (= lambda!209899 lambda!209890))))

(declare-fun bs!1094252 () Bool)

(assert (= bs!1094252 (and b!4699769 b!4699733)))

(assert (=> bs!1094252 (= (= lt!1861670 lt!1862184) (= lambda!209899 lambda!209877))))

(declare-fun bs!1094253 () Bool)

(assert (= bs!1094253 (and b!4699769 b!4699729)))

(assert (=> bs!1094253 (= lambda!209899 lambda!209875)))

(declare-fun bs!1094254 () Bool)

(assert (= bs!1094254 (and b!4699769 d!1494646)))

(assert (=> bs!1094254 (= (= lt!1861670 lt!1862217) (= lambda!209899 lambda!209886))))

(declare-fun bs!1094255 () Bool)

(assert (= bs!1094255 (and b!4699769 d!1494524)))

(assert (=> bs!1094255 (not (= lambda!209899 lambda!209806))))

(declare-fun bs!1094256 () Bool)

(assert (= bs!1094256 (and b!4699769 d!1494564)))

(assert (=> bs!1094256 (= (= lt!1861670 lt!1862176) (= lambda!209899 lambda!209878))))

(declare-fun bs!1094257 () Bool)

(assert (= bs!1094257 (and b!4699769 d!1494650)))

(assert (=> bs!1094257 (= (= lt!1861670 lt!1862259) (= lambda!209899 lambda!209894))))

(declare-fun bs!1094258 () Bool)

(assert (= bs!1094258 (and b!4699769 b!4699760)))

(assert (=> bs!1094258 (= lambda!209899 lambda!209891)))

(assert (=> bs!1094247 (= (= lt!1861670 lt!1862267) (= lambda!209899 lambda!209893))))

(declare-fun bs!1094259 () Bool)

(assert (= bs!1094259 (and b!4699769 d!1494528)))

(assert (=> bs!1094259 (not (= lambda!209899 lambda!209810))))

(declare-fun bs!1094260 () Bool)

(assert (= bs!1094260 (and b!4699769 b!4699765)))

(assert (=> bs!1094260 (= lambda!209899 lambda!209898)))

(assert (=> bs!1094249 (= (= lt!1861670 lt!1862246) (= lambda!209899 lambda!209889))))

(declare-fun bs!1094261 () Bool)

(assert (= bs!1094261 (and b!4699769 b!4699755)))

(assert (=> bs!1094261 (= lambda!209899 lambda!209887)))

(assert (=> bs!1094252 (= lambda!209899 lambda!209876)))

(assert (=> b!4699769 true))

(declare-fun lambda!209900 () Int)

(declare-fun lt!1862291 () ListMap!5037)

(assert (=> bs!1094247 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209892))))

(assert (=> bs!1094248 (= (= lt!1862291 lt!1862225) (= lambda!209900 lambda!209885))))

(assert (=> bs!1094249 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209888))))

(assert (=> bs!1094248 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209884))))

(assert (=> bs!1094250 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209883))))

(assert (=> b!4699769 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209899))))

(assert (=> bs!1094251 (= (= lt!1862291 lt!1862238) (= lambda!209900 lambda!209890))))

(assert (=> bs!1094252 (= (= lt!1862291 lt!1862184) (= lambda!209900 lambda!209877))))

(assert (=> bs!1094253 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209875))))

(assert (=> bs!1094254 (= (= lt!1862291 lt!1862217) (= lambda!209900 lambda!209886))))

(assert (=> bs!1094255 (not (= lambda!209900 lambda!209806))))

(assert (=> bs!1094256 (= (= lt!1862291 lt!1862176) (= lambda!209900 lambda!209878))))

(assert (=> bs!1094257 (= (= lt!1862291 lt!1862259) (= lambda!209900 lambda!209894))))

(assert (=> bs!1094258 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209891))))

(assert (=> bs!1094247 (= (= lt!1862291 lt!1862267) (= lambda!209900 lambda!209893))))

(assert (=> bs!1094259 (not (= lambda!209900 lambda!209810))))

(assert (=> bs!1094260 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209898))))

(assert (=> bs!1094249 (= (= lt!1862291 lt!1862246) (= lambda!209900 lambda!209889))))

(assert (=> bs!1094261 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209887))))

(assert (=> bs!1094252 (= (= lt!1862291 lt!1861670) (= lambda!209900 lambda!209876))))

(assert (=> b!4699769 true))

(declare-fun bs!1094262 () Bool)

(declare-fun d!1494658 () Bool)

(assert (= bs!1094262 (and d!1494658 b!4699764)))

(declare-fun lambda!209901 () Int)

(declare-fun lt!1862283 () ListMap!5037)

(assert (=> bs!1094262 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209892))))

(declare-fun bs!1094263 () Bool)

(assert (= bs!1094263 (and d!1494658 b!4699754)))

(assert (=> bs!1094263 (= (= lt!1862283 lt!1862225) (= lambda!209901 lambda!209885))))

(declare-fun bs!1094264 () Bool)

(assert (= bs!1094264 (and d!1494658 b!4699759)))

(assert (=> bs!1094264 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209888))))

(assert (=> bs!1094263 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209884))))

(declare-fun bs!1094265 () Bool)

(assert (= bs!1094265 (and d!1494658 b!4699750)))

(assert (=> bs!1094265 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209883))))

(declare-fun bs!1094266 () Bool)

(assert (= bs!1094266 (and d!1494658 b!4699769)))

(assert (=> bs!1094266 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209899))))

(declare-fun bs!1094267 () Bool)

(assert (= bs!1094267 (and d!1494658 d!1494648)))

(assert (=> bs!1094267 (= (= lt!1862283 lt!1862238) (= lambda!209901 lambda!209890))))

(declare-fun bs!1094268 () Bool)

(assert (= bs!1094268 (and d!1494658 b!4699733)))

(assert (=> bs!1094268 (= (= lt!1862283 lt!1862184) (= lambda!209901 lambda!209877))))

(declare-fun bs!1094269 () Bool)

(assert (= bs!1094269 (and d!1494658 b!4699729)))

(assert (=> bs!1094269 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209875))))

(declare-fun bs!1094270 () Bool)

(assert (= bs!1094270 (and d!1494658 d!1494646)))

(assert (=> bs!1094270 (= (= lt!1862283 lt!1862217) (= lambda!209901 lambda!209886))))

(assert (=> bs!1094266 (= (= lt!1862283 lt!1862291) (= lambda!209901 lambda!209900))))

(declare-fun bs!1094271 () Bool)

(assert (= bs!1094271 (and d!1494658 d!1494524)))

(assert (=> bs!1094271 (not (= lambda!209901 lambda!209806))))

(declare-fun bs!1094272 () Bool)

(assert (= bs!1094272 (and d!1494658 d!1494564)))

(assert (=> bs!1094272 (= (= lt!1862283 lt!1862176) (= lambda!209901 lambda!209878))))

(declare-fun bs!1094273 () Bool)

(assert (= bs!1094273 (and d!1494658 d!1494650)))

(assert (=> bs!1094273 (= (= lt!1862283 lt!1862259) (= lambda!209901 lambda!209894))))

(declare-fun bs!1094274 () Bool)

(assert (= bs!1094274 (and d!1494658 b!4699760)))

(assert (=> bs!1094274 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209891))))

(assert (=> bs!1094262 (= (= lt!1862283 lt!1862267) (= lambda!209901 lambda!209893))))

(declare-fun bs!1094275 () Bool)

(assert (= bs!1094275 (and d!1494658 d!1494528)))

(assert (=> bs!1094275 (not (= lambda!209901 lambda!209810))))

(declare-fun bs!1094276 () Bool)

(assert (= bs!1094276 (and d!1494658 b!4699765)))

(assert (=> bs!1094276 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209898))))

(assert (=> bs!1094264 (= (= lt!1862283 lt!1862246) (= lambda!209901 lambda!209889))))

(declare-fun bs!1094277 () Bool)

(assert (= bs!1094277 (and d!1494658 b!4699755)))

(assert (=> bs!1094277 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209887))))

(assert (=> bs!1094268 (= (= lt!1862283 lt!1861670) (= lambda!209901 lambda!209876))))

(assert (=> d!1494658 true))

(declare-fun e!2931742 () ListMap!5037)

(assert (=> b!4699765 (= e!2931742 lt!1861670)))

(declare-fun lt!1862292 () Unit!125868)

(declare-fun call!328555 () Unit!125868)

(assert (=> b!4699765 (= lt!1862292 call!328555)))

(declare-fun call!328554 () Bool)

(assert (=> b!4699765 call!328554))

(declare-fun lt!1862289 () Unit!125868)

(assert (=> b!4699765 (= lt!1862289 lt!1862292)))

(declare-fun call!328556 () Bool)

(assert (=> b!4699765 call!328556))

(declare-fun lt!1862288 () Unit!125868)

(declare-fun Unit!125977 () Unit!125868)

(assert (=> b!4699765 (= lt!1862288 Unit!125977)))

(declare-fun bm!328549 () Bool)

(assert (=> bm!328549 (= call!328555 (lemmaContainsAllItsOwnKeys!728 lt!1861670))))

(declare-fun b!4699766 () Bool)

(declare-fun res!1983998 () Bool)

(declare-fun e!2931744 () Bool)

(assert (=> b!4699766 (=> (not res!1983998) (not e!2931744))))

(assert (=> b!4699766 (= res!1983998 (forall!11391 (toList!5674 lt!1861670) lambda!209901))))

(declare-fun b!4699767 () Bool)

(declare-fun e!2931743 () Bool)

(assert (=> b!4699767 (= e!2931743 (forall!11391 (toList!5674 lt!1861670) lambda!209900))))

(declare-fun bm!328550 () Bool)

(declare-fun c!803378 () Bool)

(assert (=> bm!328550 (= call!328554 (forall!11391 (toList!5674 lt!1861670) (ite c!803378 lambda!209898 lambda!209899)))))

(assert (=> b!4699769 (= e!2931742 lt!1862291)))

(declare-fun lt!1862293 () ListMap!5037)

(assert (=> b!4699769 (= lt!1862293 (+!2176 lt!1861670 (h!58790 lt!1861682)))))

(assert (=> b!4699769 (= lt!1862291 (addToMapMapFromBucket!1324 (t!359845 lt!1861682) (+!2176 lt!1861670 (h!58790 lt!1861682))))))

(declare-fun lt!1862296 () Unit!125868)

(assert (=> b!4699769 (= lt!1862296 call!328555)))

(assert (=> b!4699769 call!328554))

(declare-fun lt!1862284 () Unit!125868)

(assert (=> b!4699769 (= lt!1862284 lt!1862296)))

(assert (=> b!4699769 (forall!11391 (toList!5674 lt!1862293) lambda!209900)))

(declare-fun lt!1862280 () Unit!125868)

(declare-fun Unit!125978 () Unit!125868)

(assert (=> b!4699769 (= lt!1862280 Unit!125978)))

(assert (=> b!4699769 (forall!11391 (t!359845 lt!1861682) lambda!209900)))

(declare-fun lt!1862298 () Unit!125868)

(declare-fun Unit!125979 () Unit!125868)

(assert (=> b!4699769 (= lt!1862298 Unit!125979)))

(declare-fun lt!1862279 () Unit!125868)

(declare-fun Unit!125980 () Unit!125868)

(assert (=> b!4699769 (= lt!1862279 Unit!125980)))

(declare-fun lt!1862295 () Unit!125868)

(assert (=> b!4699769 (= lt!1862295 (forallContained!3498 (toList!5674 lt!1862293) lambda!209900 (h!58790 lt!1861682)))))

(assert (=> b!4699769 (contains!15784 lt!1862293 (_1!30275 (h!58790 lt!1861682)))))

(declare-fun lt!1862290 () Unit!125868)

(declare-fun Unit!125981 () Unit!125868)

(assert (=> b!4699769 (= lt!1862290 Unit!125981)))

(assert (=> b!4699769 (contains!15784 lt!1862291 (_1!30275 (h!58790 lt!1861682)))))

(declare-fun lt!1862286 () Unit!125868)

(declare-fun Unit!125982 () Unit!125868)

(assert (=> b!4699769 (= lt!1862286 Unit!125982)))

(assert (=> b!4699769 call!328556))

(declare-fun lt!1862297 () Unit!125868)

(declare-fun Unit!125983 () Unit!125868)

(assert (=> b!4699769 (= lt!1862297 Unit!125983)))

(assert (=> b!4699769 (forall!11391 (toList!5674 lt!1862293) lambda!209900)))

(declare-fun lt!1862281 () Unit!125868)

(declare-fun Unit!125984 () Unit!125868)

(assert (=> b!4699769 (= lt!1862281 Unit!125984)))

(declare-fun lt!1862287 () Unit!125868)

(declare-fun Unit!125985 () Unit!125868)

(assert (=> b!4699769 (= lt!1862287 Unit!125985)))

(declare-fun lt!1862278 () Unit!125868)

(assert (=> b!4699769 (= lt!1862278 (addForallContainsKeyThenBeforeAdding!727 lt!1861670 lt!1862291 (_1!30275 (h!58790 lt!1861682)) (_2!30275 (h!58790 lt!1861682))))))

(assert (=> b!4699769 (forall!11391 (toList!5674 lt!1861670) lambda!209900)))

(declare-fun lt!1862282 () Unit!125868)

(assert (=> b!4699769 (= lt!1862282 lt!1862278)))

(assert (=> b!4699769 (forall!11391 (toList!5674 lt!1861670) lambda!209900)))

(declare-fun lt!1862285 () Unit!125868)

(declare-fun Unit!125986 () Unit!125868)

(assert (=> b!4699769 (= lt!1862285 Unit!125986)))

(declare-fun res!1983996 () Bool)

(assert (=> b!4699769 (= res!1983996 (forall!11391 lt!1861682 lambda!209900))))

(assert (=> b!4699769 (=> (not res!1983996) (not e!2931743))))

(assert (=> b!4699769 e!2931743))

(declare-fun lt!1862294 () Unit!125868)

(declare-fun Unit!125987 () Unit!125868)

(assert (=> b!4699769 (= lt!1862294 Unit!125987)))

(declare-fun bm!328551 () Bool)

(assert (=> bm!328551 (= call!328556 (forall!11391 (ite c!803378 (toList!5674 lt!1861670) lt!1861682) (ite c!803378 lambda!209898 lambda!209900)))))

(assert (=> d!1494658 e!2931744))

(declare-fun res!1983997 () Bool)

(assert (=> d!1494658 (=> (not res!1983997) (not e!2931744))))

(assert (=> d!1494658 (= res!1983997 (forall!11391 lt!1861682 lambda!209901))))

(assert (=> d!1494658 (= lt!1862283 e!2931742)))

(assert (=> d!1494658 (= c!803378 ((_ is Nil!52515) lt!1861682))))

(assert (=> d!1494658 (noDuplicateKeys!1892 lt!1861682)))

(assert (=> d!1494658 (= (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1862283)))

(declare-fun b!4699768 () Bool)

(assert (=> b!4699768 (= e!2931744 (invariantList!1440 (toList!5674 lt!1862283)))))

(assert (= (and d!1494658 c!803378) b!4699765))

(assert (= (and d!1494658 (not c!803378)) b!4699769))

(assert (= (and b!4699769 res!1983996) b!4699767))

(assert (= (or b!4699765 b!4699769) bm!328549))

(assert (= (or b!4699765 b!4699769) bm!328551))

(assert (= (or b!4699765 b!4699769) bm!328550))

(assert (= (and d!1494658 res!1983997) b!4699766))

(assert (= (and b!4699766 res!1983998) b!4699768))

(declare-fun m!5613285 () Bool)

(assert (=> b!4699767 m!5613285))

(declare-fun m!5613287 () Bool)

(assert (=> bm!328551 m!5613287))

(assert (=> bm!328549 m!5613069))

(declare-fun m!5613289 () Bool)

(assert (=> b!4699768 m!5613289))

(declare-fun m!5613291 () Bool)

(assert (=> b!4699766 m!5613291))

(declare-fun m!5613293 () Bool)

(assert (=> b!4699769 m!5613293))

(declare-fun m!5613295 () Bool)

(assert (=> b!4699769 m!5613295))

(declare-fun m!5613297 () Bool)

(assert (=> b!4699769 m!5613297))

(assert (=> b!4699769 m!5613293))

(assert (=> b!4699769 m!5613285))

(declare-fun m!5613299 () Bool)

(assert (=> b!4699769 m!5613299))

(assert (=> b!4699769 m!5613285))

(declare-fun m!5613301 () Bool)

(assert (=> b!4699769 m!5613301))

(declare-fun m!5613303 () Bool)

(assert (=> b!4699769 m!5613303))

(declare-fun m!5613305 () Bool)

(assert (=> b!4699769 m!5613305))

(declare-fun m!5613307 () Bool)

(assert (=> b!4699769 m!5613307))

(assert (=> b!4699769 m!5613307))

(declare-fun m!5613309 () Bool)

(assert (=> b!4699769 m!5613309))

(declare-fun m!5613311 () Bool)

(assert (=> d!1494658 m!5613311))

(assert (=> d!1494658 m!5612227))

(declare-fun m!5613313 () Bool)

(assert (=> bm!328550 m!5613313))

(assert (=> b!4699319 d!1494658))

(declare-fun d!1494660 () Bool)

(assert (=> d!1494660 (= (eq!1051 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861674 lt!1861682) lt!1861670) (+!2176 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1861674)) (= (content!9249 (toList!5674 (addToMapMapFromBucket!1324 (Cons!52515 lt!1861674 lt!1861682) lt!1861670))) (content!9249 (toList!5674 (+!2176 (addToMapMapFromBucket!1324 lt!1861682 lt!1861670) lt!1861674)))))))

(declare-fun bs!1094278 () Bool)

(assert (= bs!1094278 d!1494660))

(declare-fun m!5613315 () Bool)

(assert (=> bs!1094278 m!5613315))

(declare-fun m!5613317 () Bool)

(assert (=> bs!1094278 m!5613317))

(assert (=> b!4699319 d!1494660))

(declare-fun b!4699770 () Bool)

(declare-fun e!2931746 () Bool)

(assert (=> b!4699770 (= e!2931746 (contains!15788 (keys!18781 lt!1861675) key!4653))))

(declare-fun b!4699771 () Bool)

(declare-fun e!2931749 () Bool)

(assert (=> b!4699771 (= e!2931749 (not (contains!15788 (keys!18781 lt!1861675) key!4653)))))

(declare-fun b!4699772 () Bool)

(declare-fun e!2931748 () Unit!125868)

(declare-fun Unit!125988 () Unit!125868)

(assert (=> b!4699772 (= e!2931748 Unit!125988)))

(declare-fun b!4699773 () Bool)

(declare-fun e!2931747 () Unit!125868)

(declare-fun lt!1862306 () Unit!125868)

(assert (=> b!4699773 (= e!2931747 lt!1862306)))

(declare-fun lt!1862304 () Unit!125868)

(assert (=> b!4699773 (= lt!1862304 (lemmaContainsKeyImpliesGetValueByKeyDefined!1731 (toList!5674 lt!1861675) key!4653))))

(assert (=> b!4699773 (isDefined!9432 (getValueByKey!1839 (toList!5674 lt!1861675) key!4653))))

(declare-fun lt!1862300 () Unit!125868)

(assert (=> b!4699773 (= lt!1862300 lt!1862304)))

(assert (=> b!4699773 (= lt!1862306 (lemmaInListThenGetKeysListContains!875 (toList!5674 lt!1861675) key!4653))))

(declare-fun call!328557 () Bool)

(assert (=> b!4699773 call!328557))

(declare-fun b!4699774 () Bool)

(declare-fun e!2931745 () List!52642)

(assert (=> b!4699774 (= e!2931745 (keys!18781 lt!1861675))))

(declare-fun b!4699775 () Bool)

(assert (=> b!4699775 (= e!2931747 e!2931748)))

(declare-fun c!803379 () Bool)

(assert (=> b!4699775 (= c!803379 call!328557)))

(declare-fun b!4699776 () Bool)

(assert (=> b!4699776 (= e!2931745 (getKeysList!880 (toList!5674 lt!1861675)))))

(declare-fun d!1494662 () Bool)

(declare-fun e!2931750 () Bool)

(assert (=> d!1494662 e!2931750))

(declare-fun res!1983999 () Bool)

(assert (=> d!1494662 (=> res!1983999 e!2931750)))

(assert (=> d!1494662 (= res!1983999 e!2931749)))

(declare-fun res!1984001 () Bool)

(assert (=> d!1494662 (=> (not res!1984001) (not e!2931749))))

(declare-fun lt!1862305 () Bool)

(assert (=> d!1494662 (= res!1984001 (not lt!1862305))))

(declare-fun lt!1862303 () Bool)

(assert (=> d!1494662 (= lt!1862305 lt!1862303)))

(declare-fun lt!1862302 () Unit!125868)

(assert (=> d!1494662 (= lt!1862302 e!2931747)))

(declare-fun c!803381 () Bool)

(assert (=> d!1494662 (= c!803381 lt!1862303)))

(assert (=> d!1494662 (= lt!1862303 (containsKey!3153 (toList!5674 lt!1861675) key!4653))))

(assert (=> d!1494662 (= (contains!15784 lt!1861675 key!4653) lt!1862305)))

(declare-fun b!4699777 () Bool)

(assert (=> b!4699777 (= e!2931750 e!2931746)))

(declare-fun res!1984000 () Bool)

(assert (=> b!4699777 (=> (not res!1984000) (not e!2931746))))

(assert (=> b!4699777 (= res!1984000 (isDefined!9432 (getValueByKey!1839 (toList!5674 lt!1861675) key!4653)))))

(declare-fun bm!328552 () Bool)

(assert (=> bm!328552 (= call!328557 (contains!15788 e!2931745 key!4653))))

(declare-fun c!803380 () Bool)

(assert (=> bm!328552 (= c!803380 c!803381)))

(declare-fun b!4699778 () Bool)

(assert (=> b!4699778 false))

(declare-fun lt!1862299 () Unit!125868)

(declare-fun lt!1862301 () Unit!125868)

(assert (=> b!4699778 (= lt!1862299 lt!1862301)))

(assert (=> b!4699778 (containsKey!3153 (toList!5674 lt!1861675) key!4653)))

(assert (=> b!4699778 (= lt!1862301 (lemmaInGetKeysListThenContainsKey!879 (toList!5674 lt!1861675) key!4653))))

(declare-fun Unit!125989 () Unit!125868)

(assert (=> b!4699778 (= e!2931748 Unit!125989)))

(assert (= (and d!1494662 c!803381) b!4699773))

(assert (= (and d!1494662 (not c!803381)) b!4699775))

(assert (= (and b!4699775 c!803379) b!4699778))

(assert (= (and b!4699775 (not c!803379)) b!4699772))

(assert (= (or b!4699773 b!4699775) bm!328552))

(assert (= (and bm!328552 c!803380) b!4699776))

(assert (= (and bm!328552 (not c!803380)) b!4699774))

(assert (= (and d!1494662 res!1984001) b!4699771))

(assert (= (and d!1494662 (not res!1983999)) b!4699777))

(assert (= (and b!4699777 res!1984000) b!4699770))

(assert (=> b!4699771 m!5612807))

(assert (=> b!4699771 m!5612807))

(declare-fun m!5613319 () Bool)

(assert (=> b!4699771 m!5613319))

(declare-fun m!5613321 () Bool)

(assert (=> b!4699776 m!5613321))

(assert (=> b!4699774 m!5612807))

(declare-fun m!5613323 () Bool)

(assert (=> b!4699773 m!5613323))

(declare-fun m!5613325 () Bool)

(assert (=> b!4699773 m!5613325))

(assert (=> b!4699773 m!5613325))

(declare-fun m!5613327 () Bool)

(assert (=> b!4699773 m!5613327))

(declare-fun m!5613329 () Bool)

(assert (=> b!4699773 m!5613329))

(declare-fun m!5613331 () Bool)

(assert (=> b!4699778 m!5613331))

(declare-fun m!5613333 () Bool)

(assert (=> b!4699778 m!5613333))

(declare-fun m!5613335 () Bool)

(assert (=> bm!328552 m!5613335))

(assert (=> d!1494662 m!5613331))

(assert (=> b!4699770 m!5612807))

(assert (=> b!4699770 m!5612807))

(assert (=> b!4699770 m!5613319))

(assert (=> b!4699777 m!5613325))

(assert (=> b!4699777 m!5613325))

(assert (=> b!4699777 m!5613327))

(assert (=> b!4699319 d!1494662))

(declare-fun d!1494664 () Bool)

(assert (=> d!1494664 (= (eq!1051 lt!1861665 lt!1861678) (= (content!9249 (toList!5674 lt!1861665)) (content!9249 (toList!5674 lt!1861678))))))

(declare-fun bs!1094279 () Bool)

(assert (= bs!1094279 d!1494664))

(declare-fun m!5613337 () Bool)

(assert (=> bs!1094279 m!5613337))

(assert (=> bs!1094279 m!5613281))

(assert (=> b!4699330 d!1494664))

(declare-fun b!4699781 () Bool)

(declare-fun e!2931752 () List!52639)

(assert (=> b!4699781 (= e!2931752 (Cons!52515 (h!58790 oldBucket!34) (removePairForKey!1487 (t!359845 oldBucket!34) key!4653)))))

(declare-fun d!1494666 () Bool)

(declare-fun lt!1862307 () List!52639)

(assert (=> d!1494666 (not (containsKey!3151 lt!1862307 key!4653))))

(declare-fun e!2931751 () List!52639)

(assert (=> d!1494666 (= lt!1862307 e!2931751)))

(declare-fun c!803382 () Bool)

(assert (=> d!1494666 (= c!803382 (and ((_ is Cons!52515) oldBucket!34) (= (_1!30275 (h!58790 oldBucket!34)) key!4653)))))

(assert (=> d!1494666 (noDuplicateKeys!1892 oldBucket!34)))

(assert (=> d!1494666 (= (removePairForKey!1487 oldBucket!34 key!4653) lt!1862307)))

(declare-fun b!4699780 () Bool)

(assert (=> b!4699780 (= e!2931751 e!2931752)))

(declare-fun c!803383 () Bool)

(assert (=> b!4699780 (= c!803383 ((_ is Cons!52515) oldBucket!34))))

(declare-fun b!4699779 () Bool)

(assert (=> b!4699779 (= e!2931751 (t!359845 oldBucket!34))))

(declare-fun b!4699782 () Bool)

(assert (=> b!4699782 (= e!2931752 Nil!52515)))

(assert (= (and d!1494666 c!803382) b!4699779))

(assert (= (and d!1494666 (not c!803382)) b!4699780))

(assert (= (and b!4699780 c!803383) b!4699781))

(assert (= (and b!4699780 (not c!803383)) b!4699782))

(assert (=> b!4699781 m!5612213))

(declare-fun m!5613339 () Bool)

(assert (=> d!1494666 m!5613339))

(assert (=> d!1494666 m!5612077))

(assert (=> b!4699320 d!1494666))

(declare-fun b!4699785 () Bool)

(declare-fun e!2931754 () List!52639)

(assert (=> b!4699785 (= e!2931754 (Cons!52515 (h!58790 (t!359845 oldBucket!34)) (removePairForKey!1487 (t!359845 (t!359845 oldBucket!34)) key!4653)))))

(declare-fun d!1494668 () Bool)

(declare-fun lt!1862308 () List!52639)

(assert (=> d!1494668 (not (containsKey!3151 lt!1862308 key!4653))))

(declare-fun e!2931753 () List!52639)

(assert (=> d!1494668 (= lt!1862308 e!2931753)))

(declare-fun c!803384 () Bool)

(assert (=> d!1494668 (= c!803384 (and ((_ is Cons!52515) (t!359845 oldBucket!34)) (= (_1!30275 (h!58790 (t!359845 oldBucket!34))) key!4653)))))

(assert (=> d!1494668 (noDuplicateKeys!1892 (t!359845 oldBucket!34))))

(assert (=> d!1494668 (= (removePairForKey!1487 (t!359845 oldBucket!34) key!4653) lt!1862308)))

(declare-fun b!4699784 () Bool)

(assert (=> b!4699784 (= e!2931753 e!2931754)))

(declare-fun c!803385 () Bool)

(assert (=> b!4699784 (= c!803385 ((_ is Cons!52515) (t!359845 oldBucket!34)))))

(declare-fun b!4699783 () Bool)

(assert (=> b!4699783 (= e!2931753 (t!359845 (t!359845 oldBucket!34)))))

(declare-fun b!4699786 () Bool)

(assert (=> b!4699786 (= e!2931754 Nil!52515)))

(assert (= (and d!1494668 c!803384) b!4699783))

(assert (= (and d!1494668 (not c!803384)) b!4699784))

(assert (= (and b!4699784 c!803385) b!4699785))

(assert (= (and b!4699784 (not c!803385)) b!4699786))

(declare-fun m!5613341 () Bool)

(assert (=> b!4699785 m!5613341))

(declare-fun m!5613343 () Bool)

(assert (=> d!1494668 m!5613343))

(declare-fun m!5613345 () Bool)

(assert (=> d!1494668 m!5613345))

(assert (=> b!4699331 d!1494668))

(declare-fun d!1494670 () Bool)

(assert (=> d!1494670 (= (head!10048 (toList!5673 lm!2023)) (h!58791 (toList!5673 lm!2023)))))

(assert (=> b!4699321 d!1494670))

(declare-fun d!1494672 () Bool)

(assert (=> d!1494672 (= (eq!1051 lt!1861678 (+!2176 lt!1861697 lt!1861680)) (= (content!9249 (toList!5674 lt!1861678)) (content!9249 (toList!5674 (+!2176 lt!1861697 lt!1861680)))))))

(declare-fun bs!1094280 () Bool)

(assert (= bs!1094280 d!1494672))

(assert (=> bs!1094280 m!5613281))

(declare-fun m!5613347 () Bool)

(assert (=> bs!1094280 m!5613347))

(assert (=> b!4699332 d!1494672))

(declare-fun d!1494674 () Bool)

(declare-fun e!2931755 () Bool)

(assert (=> d!1494674 e!2931755))

(declare-fun res!1984003 () Bool)

(assert (=> d!1494674 (=> (not res!1984003) (not e!2931755))))

(declare-fun lt!1862311 () ListMap!5037)

(assert (=> d!1494674 (= res!1984003 (contains!15784 lt!1862311 (_1!30275 lt!1861680)))))

(declare-fun lt!1862309 () List!52639)

(assert (=> d!1494674 (= lt!1862311 (ListMap!5038 lt!1862309))))

(declare-fun lt!1862312 () Unit!125868)

(declare-fun lt!1862310 () Unit!125868)

(assert (=> d!1494674 (= lt!1862312 lt!1862310)))

(assert (=> d!1494674 (= (getValueByKey!1839 lt!1862309 (_1!30275 lt!1861680)) (Some!12176 (_2!30275 lt!1861680)))))

(assert (=> d!1494674 (= lt!1862310 (lemmaContainsTupThenGetReturnValue!1030 lt!1862309 (_1!30275 lt!1861680) (_2!30275 lt!1861680)))))

(assert (=> d!1494674 (= lt!1862309 (insertNoDuplicatedKeys!538 (toList!5674 lt!1861697) (_1!30275 lt!1861680) (_2!30275 lt!1861680)))))

(assert (=> d!1494674 (= (+!2176 lt!1861697 lt!1861680) lt!1862311)))

(declare-fun b!4699787 () Bool)

(declare-fun res!1984002 () Bool)

(assert (=> b!4699787 (=> (not res!1984002) (not e!2931755))))

(assert (=> b!4699787 (= res!1984002 (= (getValueByKey!1839 (toList!5674 lt!1862311) (_1!30275 lt!1861680)) (Some!12176 (_2!30275 lt!1861680))))))

(declare-fun b!4699788 () Bool)

(assert (=> b!4699788 (= e!2931755 (contains!15787 (toList!5674 lt!1862311) lt!1861680))))

(assert (= (and d!1494674 res!1984003) b!4699787))

(assert (= (and b!4699787 res!1984002) b!4699788))

(declare-fun m!5613349 () Bool)

(assert (=> d!1494674 m!5613349))

(declare-fun m!5613351 () Bool)

(assert (=> d!1494674 m!5613351))

(declare-fun m!5613353 () Bool)

(assert (=> d!1494674 m!5613353))

(declare-fun m!5613355 () Bool)

(assert (=> d!1494674 m!5613355))

(declare-fun m!5613357 () Bool)

(assert (=> b!4699787 m!5613357))

(declare-fun m!5613359 () Bool)

(assert (=> b!4699788 m!5613359))

(assert (=> b!4699332 d!1494674))

(declare-fun d!1494676 () Bool)

(assert (=> d!1494676 (= (eq!1051 lt!1861672 lt!1861689) (= (content!9249 (toList!5674 lt!1861672)) (content!9249 (toList!5674 lt!1861689))))))

(declare-fun bs!1094281 () Bool)

(assert (= bs!1094281 d!1494676))

(declare-fun m!5613361 () Bool)

(assert (=> bs!1094281 m!5613361))

(declare-fun m!5613363 () Bool)

(assert (=> bs!1094281 m!5613363))

(assert (=> b!4699322 d!1494676))

(declare-fun d!1494678 () Bool)

(declare-fun res!1984004 () Bool)

(declare-fun e!2931756 () Bool)

(assert (=> d!1494678 (=> res!1984004 e!2931756)))

(assert (=> d!1494678 (= res!1984004 (not ((_ is Cons!52515) oldBucket!34)))))

(assert (=> d!1494678 (= (noDuplicateKeys!1892 oldBucket!34) e!2931756)))

(declare-fun b!4699789 () Bool)

(declare-fun e!2931757 () Bool)

(assert (=> b!4699789 (= e!2931756 e!2931757)))

(declare-fun res!1984005 () Bool)

(assert (=> b!4699789 (=> (not res!1984005) (not e!2931757))))

(assert (=> b!4699789 (= res!1984005 (not (containsKey!3151 (t!359845 oldBucket!34) (_1!30275 (h!58790 oldBucket!34)))))))

(declare-fun b!4699790 () Bool)

(assert (=> b!4699790 (= e!2931757 (noDuplicateKeys!1892 (t!359845 oldBucket!34)))))

(assert (= (and d!1494678 (not res!1984004)) b!4699789))

(assert (= (and b!4699789 res!1984005) b!4699790))

(declare-fun m!5613365 () Bool)

(assert (=> b!4699789 m!5613365))

(assert (=> b!4699790 m!5613345))

(assert (=> b!4699333 d!1494678))

(declare-fun b!4699795 () Bool)

(declare-fun e!2931760 () Bool)

(declare-fun tp!1346572 () Bool)

(assert (=> b!4699795 (= e!2931760 (and tp_is_empty!30861 tp_is_empty!30863 tp!1346572))))

(assert (=> b!4699323 (= tp!1346559 e!2931760)))

(assert (= (and b!4699323 ((_ is Cons!52515) (t!359845 newBucket!218))) b!4699795))

(declare-fun e!2931761 () Bool)

(declare-fun tp!1346573 () Bool)

(declare-fun b!4699796 () Bool)

(assert (=> b!4699796 (= e!2931761 (and tp_is_empty!30861 tp_is_empty!30863 tp!1346573))))

(assert (=> b!4699326 (= tp!1346557 e!2931761)))

(assert (= (and b!4699326 ((_ is Cons!52515) (t!359845 oldBucket!34))) b!4699796))

(declare-fun b!4699801 () Bool)

(declare-fun e!2931764 () Bool)

(declare-fun tp!1346578 () Bool)

(declare-fun tp!1346579 () Bool)

(assert (=> b!4699801 (= e!2931764 (and tp!1346578 tp!1346579))))

(assert (=> b!4699316 (= tp!1346558 e!2931764)))

(assert (= (and b!4699316 ((_ is Cons!52516) (toList!5673 lm!2023))) b!4699801))

(declare-fun b_lambda!177329 () Bool)

(assert (= b_lambda!177319 (or start!476416 b_lambda!177329)))

(declare-fun bs!1094282 () Bool)

(declare-fun d!1494680 () Bool)

(assert (= bs!1094282 (and d!1494680 start!476416)))

(assert (=> bs!1094282 (= (dynLambda!21743 lambda!209739 (h!58791 (toList!5673 lm!2023))) (noDuplicateKeys!1892 (_2!30276 (h!58791 (toList!5673 lm!2023)))))))

(assert (=> bs!1094282 m!5613095))

(assert (=> b!4699455 d!1494680))

(declare-fun b_lambda!177331 () Bool)

(assert (= b_lambda!177321 (or start!476416 b_lambda!177331)))

(declare-fun bs!1094283 () Bool)

(declare-fun d!1494682 () Bool)

(assert (= bs!1094283 (and d!1494682 start!476416)))

(assert (=> bs!1094283 (= (dynLambda!21743 lambda!209739 lt!1861695) (noDuplicateKeys!1892 (_2!30276 lt!1861695)))))

(declare-fun m!5613367 () Bool)

(assert (=> bs!1094283 m!5613367))

(assert (=> d!1494486 d!1494682))

(check-sat (not b!4699759) (not d!1494524) (not b!4699440) (not d!1494494) (not b!4699756) (not b!4699481) (not b!4699554) (not b!4699787) (not bm!328539) (not d!1494438) (not b!4699742) (not d!1494656) (not d!1494674) (not d!1494644) (not d!1494528) (not d!1494436) tp_is_empty!30861 (not b!4699487) (not b!4699745) (not b!4699744) (not d!1494676) (not b!4699606) (not d!1494488) (not b!4699789) (not b!4699753) (not b!4699423) (not d!1494498) (not d!1494668) (not d!1494626) (not d!1494660) (not d!1494536) (not bm!328540) (not d!1494484) (not b!4699733) (not b!4699766) (not d!1494628) (not b!4699564) (not b!4699758) (not bm!328545) (not d!1494666) (not b!4699482) (not d!1494526) (not b!4699730) (not b!4699790) (not b!4699608) (not bm!328547) (not b!4699740) (not b!4699746) (not b!4699795) (not b!4699768) (not d!1494532) (not b!4699532) (not d!1494624) (not d!1494492) (not b!4699461) (not bm!328546) (not b!4699771) (not b!4699781) (not d!1494630) (not b!4699757) (not b_lambda!177331) (not bm!328550) (not b!4699582) (not bm!328544) (not b!4699485) (not bm!328549) (not d!1494642) (not b!4699534) (not d!1494416) (not d!1494512) (not d!1494560) (not b!4699449) (not b!4699778) (not b!4699732) (not b!4699456) (not d!1494404) (not d!1494406) (not d!1494658) (not d!1494486) (not b!4699764) (not bm!328508) (not b!4699777) (not d!1494482) (not d!1494640) (not b!4699489) (not bm!328552) (not b!4699537) (not d!1494460) (not d!1494550) (not b!4699402) (not b!4699653) (not b!4699494) (not d!1494516) (not d!1494650) (not b!4699581) (not b!4699603) (not b!4699776) (not b!4699788) (not b_lambda!177329) (not bm!328543) (not b!4699751) (not d!1494496) (not d!1494562) (not d!1494500) (not d!1494540) (not b!4699450) (not d!1494530) (not b!4699769) (not b!4699773) (not b!4699556) (not bm!328548) (not b!4699801) (not b!4699536) tp_is_empty!30863 (not d!1494396) (not d!1494544) (not b!4699368) (not b!4699738) (not bs!1094283) (not d!1494474) (not b!4699502) (not d!1494564) (not b!4699770) (not bm!328537) (not d!1494654) (not b!4699462) (not d!1494634) (not b!4699488) (not b!4699604) (not b!4699401) (not b!4699774) (not b!4699743) (not d!1494638) (not bm!328541) (not b!4699762) (not b!4699748) (not b!4699763) (not bm!328538) (not d!1494542) (not b!4699747) (not b!4699533) (not b!4699736) (not b!4699484) (not b!4699583) (not d!1494458) (not b!4699761) (not b!4699785) (not d!1494662) (not bm!328551) (not d!1494478) (not d!1494648) (not bm!328542) (not d!1494622) (not b!4699752) (not b!4699441) (not d!1494636) (not d!1494664) (not b!4699562) (not d!1494490) (not b!4699508) (not b!4699754) (not b!4699767) (not d!1494646) (not b!4699424) (not b!4699731) (not b!4699796) (not b!4699584) (not bs!1094282) (not d!1494672))
(check-sat)
