; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475592 () Bool)

(assert start!475592)

(declare-fun b!4695504 () Bool)

(declare-fun res!1981474 () Bool)

(declare-fun e!2929179 () Bool)

(assert (=> b!4695504 (=> res!1981474 e!2929179)))

(declare-datatypes ((K!13845 0))(
  ( (K!13846 (val!19347 Int)) )
))
(declare-datatypes ((V!14091 0))(
  ( (V!14092 (val!19348 Int)) )
))
(declare-datatypes ((tuple2!53906 0))(
  ( (tuple2!53907 (_1!30247 K!13845) (_2!30247 V!14091)) )
))
(declare-datatypes ((List!52599 0))(
  ( (Nil!52475) (Cons!52475 (h!58738 tuple2!53906) (t!359793 List!52599)) )
))
(declare-fun lt!1856657 () List!52599)

(declare-fun key!4653 () K!13845)

(declare-fun oldBucket!34 () List!52599)

(declare-fun removePairForKey!1473 (List!52599 K!13845) List!52599)

(assert (=> b!4695504 (= res!1981474 (not (= (removePairForKey!1473 (t!359793 oldBucket!34) key!4653) lt!1856657)))))

(declare-fun b!4695505 () Bool)

(declare-fun e!2929176 () Bool)

(assert (=> b!4695505 (= e!2929179 e!2929176)))

(declare-fun res!1981475 () Bool)

(assert (=> b!4695505 (=> res!1981475 e!2929176)))

(declare-datatypes ((ListMap!5009 0))(
  ( (ListMap!5010 (toList!5645 List!52599)) )
))
(declare-fun lt!1856656 () ListMap!5009)

(declare-fun lt!1856663 () ListMap!5009)

(declare-fun eq!1037 (ListMap!5009 ListMap!5009) Bool)

(declare-fun +!2162 (ListMap!5009 tuple2!53906) ListMap!5009)

(assert (=> b!4695505 (= res!1981475 (not (eq!1037 lt!1856663 (+!2162 lt!1856656 (h!58738 oldBucket!34)))))))

(declare-datatypes ((tuple2!53908 0))(
  ( (tuple2!53909 (_1!30248 (_ BitVec 64)) (_2!30248 List!52599)) )
))
(declare-datatypes ((List!52600 0))(
  ( (Nil!52476) (Cons!52476 (h!58739 tuple2!53908) (t!359794 List!52600)) )
))
(declare-datatypes ((ListLongMap!4175 0))(
  ( (ListLongMap!4176 (toList!5646 List!52600)) )
))
(declare-fun lm!2023 () ListLongMap!4175)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1856664 () List!52599)

(declare-fun extractMap!1904 (List!52600) ListMap!5009)

(assert (=> b!4695505 (= lt!1856656 (extractMap!1904 (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023)))))))

(declare-fun lt!1856655 () tuple2!53908)

(assert (=> b!4695505 (= lt!1856663 (extractMap!1904 (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023)))))))

(declare-fun lt!1856639 () tuple2!53906)

(declare-fun lt!1856644 () ListMap!5009)

(declare-fun addToMapMapFromBucket!1310 (List!52599 ListMap!5009) ListMap!5009)

(assert (=> b!4695505 (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856639 lt!1856657) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1856639))))

(declare-datatypes ((Unit!125153 0))(
  ( (Unit!125154) )
))
(declare-fun lt!1856662 () Unit!125153)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!286 (tuple2!53906 List!52599 ListMap!5009) Unit!125153)

(assert (=> b!4695505 (= lt!1856662 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!286 lt!1856639 lt!1856657 lt!1856644))))

(declare-fun newBucket!218 () List!52599)

(declare-fun head!10019 (List!52599) tuple2!53906)

(assert (=> b!4695505 (= lt!1856639 (head!10019 newBucket!218))))

(declare-fun lt!1856653 () tuple2!53906)

(assert (=> b!4695505 (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856653 lt!1856664) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1856653))))

(declare-fun lt!1856667 () Unit!125153)

(assert (=> b!4695505 (= lt!1856667 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!286 lt!1856653 lt!1856664 lt!1856644))))

(assert (=> b!4695505 (= lt!1856653 (head!10019 oldBucket!34))))

(declare-fun lt!1856660 () ListMap!5009)

(declare-fun contains!15716 (ListMap!5009 K!13845) Bool)

(assert (=> b!4695505 (contains!15716 lt!1856660 key!4653)))

(declare-fun lt!1856651 () List!52600)

(assert (=> b!4695505 (= lt!1856660 (extractMap!1904 lt!1856651))))

(declare-datatypes ((Hashable!6247 0))(
  ( (HashableExt!6246 (__x!31950 Int)) )
))
(declare-fun hashF!1323 () Hashable!6247)

(declare-fun lt!1856637 () Unit!125153)

(declare-fun lt!1856640 () ListLongMap!4175)

(declare-fun lemmaListContainsThenExtractedMapContains!470 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> b!4695505 (= lt!1856637 (lemmaListContainsThenExtractedMapContains!470 lt!1856640 key!4653 hashF!1323))))

(assert (=> b!4695505 (= lt!1856640 (ListLongMap!4176 lt!1856651))))

(declare-fun lt!1856659 () tuple2!53908)

(assert (=> b!4695505 (= lt!1856651 (Cons!52476 lt!1856659 (t!359794 (toList!5646 lm!2023))))))

(assert (=> b!4695505 (= lt!1856659 (tuple2!53909 hash!405 (t!359793 oldBucket!34)))))

(declare-fun b!4695506 () Bool)

(declare-fun res!1981477 () Bool)

(declare-fun e!2929170 () Bool)

(assert (=> b!4695506 (=> (not res!1981477) (not e!2929170))))

(declare-fun noDuplicateKeys!1878 (List!52599) Bool)

(assert (=> b!4695506 (= res!1981477 (noDuplicateKeys!1878 newBucket!218))))

(declare-fun b!4695507 () Bool)

(declare-fun e!2929172 () Bool)

(declare-fun lambda!208681 () Int)

(declare-fun forall!11363 (List!52600 Int) Bool)

(assert (=> b!4695507 (= e!2929172 (forall!11363 lt!1856651 lambda!208681))))

(declare-fun b!4695508 () Bool)

(declare-fun res!1981467 () Bool)

(assert (=> b!4695508 (=> (not res!1981467) (not e!2929170))))

(declare-fun allKeysSameHash!1704 (List!52599 (_ BitVec 64) Hashable!6247) Bool)

(assert (=> b!4695508 (= res!1981467 (allKeysSameHash!1704 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4695509 () Bool)

(declare-fun e!2929177 () Bool)

(assert (=> b!4695509 (= e!2929177 e!2929172)))

(declare-fun res!1981481 () Bool)

(assert (=> b!4695509 (=> res!1981481 e!2929172)))

(declare-fun lt!1856646 () ListMap!5009)

(declare-fun lt!1856649 () ListMap!5009)

(assert (=> b!4695509 (= res!1981481 (not (= lt!1856646 lt!1856649)))))

(declare-fun lt!1856668 () ListMap!5009)

(assert (=> b!4695509 (= lt!1856649 (+!2162 lt!1856668 (h!58738 oldBucket!34)))))

(declare-fun -!682 (ListMap!5009 K!13845) ListMap!5009)

(assert (=> b!4695509 (= lt!1856646 (-!682 (+!2162 lt!1856660 (h!58738 oldBucket!34)) key!4653))))

(assert (=> b!4695509 (= (-!682 (+!2162 lt!1856660 (h!58738 oldBucket!34)) key!4653) (+!2162 lt!1856668 (h!58738 oldBucket!34)))))

(declare-fun lt!1856641 () Unit!125153)

(declare-fun addRemoveCommutativeForDiffKeys!83 (ListMap!5009 K!13845 V!14091 K!13845) Unit!125153)

(assert (=> b!4695509 (= lt!1856641 (addRemoveCommutativeForDiffKeys!83 lt!1856660 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34)) key!4653))))

(declare-fun b!4695510 () Bool)

(declare-fun res!1981469 () Bool)

(declare-fun e!2929178 () Bool)

(assert (=> b!4695510 (=> (not res!1981469) (not e!2929178))))

(declare-fun allKeysSameHashInMap!1792 (ListLongMap!4175 Hashable!6247) Bool)

(assert (=> b!4695510 (= res!1981469 (allKeysSameHashInMap!1792 lm!2023 hashF!1323))))

(declare-fun b!4695511 () Bool)

(declare-fun e!2929180 () Bool)

(declare-fun e!2929173 () Bool)

(assert (=> b!4695511 (= e!2929180 (not e!2929173))))

(declare-fun res!1981464 () Bool)

(assert (=> b!4695511 (=> res!1981464 e!2929173)))

(get-info :version)

(assert (=> b!4695511 (= res!1981464 (or (and ((_ is Cons!52475) oldBucket!34) (= (_1!30247 (h!58738 oldBucket!34)) key!4653)) (not ((_ is Cons!52475) oldBucket!34)) (= (_1!30247 (h!58738 oldBucket!34)) key!4653)))))

(declare-fun lt!1856652 () ListMap!5009)

(assert (=> b!4695511 (= lt!1856652 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (toList!5646 lm!2023))) lt!1856644))))

(assert (=> b!4695511 (= lt!1856644 (extractMap!1904 (t!359794 (toList!5646 lm!2023))))))

(declare-fun tail!8659 (ListLongMap!4175) ListLongMap!4175)

(assert (=> b!4695511 (= (t!359794 (toList!5646 lm!2023)) (toList!5646 (tail!8659 lm!2023)))))

(declare-fun b!4695512 () Bool)

(declare-fun res!1981476 () Bool)

(assert (=> b!4695512 (=> (not res!1981476) (not e!2929180))))

(assert (=> b!4695512 (= res!1981476 ((_ is Cons!52476) (toList!5646 lm!2023)))))

(declare-fun b!4695513 () Bool)

(declare-fun res!1981470 () Bool)

(assert (=> b!4695513 (=> (not res!1981470) (not e!2929170))))

(assert (=> b!4695513 (= res!1981470 (= (removePairForKey!1473 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1981478 () Bool)

(assert (=> start!475592 (=> (not res!1981478) (not e!2929170))))

(assert (=> start!475592 (= res!1981478 (forall!11363 (toList!5646 lm!2023) lambda!208681))))

(assert (=> start!475592 e!2929170))

(declare-fun e!2929175 () Bool)

(declare-fun inv!67719 (ListLongMap!4175) Bool)

(assert (=> start!475592 (and (inv!67719 lm!2023) e!2929175)))

(declare-fun tp_is_empty!30805 () Bool)

(assert (=> start!475592 tp_is_empty!30805))

(declare-fun e!2929174 () Bool)

(assert (=> start!475592 e!2929174))

(assert (=> start!475592 true))

(declare-fun e!2929171 () Bool)

(assert (=> start!475592 e!2929171))

(declare-fun b!4695514 () Bool)

(declare-fun e!2929182 () Bool)

(assert (=> b!4695514 (= e!2929182 e!2929179)))

(declare-fun res!1981468 () Bool)

(assert (=> b!4695514 (=> res!1981468 e!2929179)))

(assert (=> b!4695514 (= res!1981468 (not (= (removePairForKey!1473 lt!1856664 key!4653) lt!1856657)))))

(declare-fun tail!8660 (List!52599) List!52599)

(assert (=> b!4695514 (= lt!1856657 (tail!8660 newBucket!218))))

(assert (=> b!4695514 (= lt!1856664 (tail!8660 oldBucket!34))))

(declare-fun b!4695515 () Bool)

(declare-fun tp_is_empty!30807 () Bool)

(declare-fun tp!1346312 () Bool)

(assert (=> b!4695515 (= e!2929174 (and tp_is_empty!30805 tp_is_empty!30807 tp!1346312))))

(declare-fun b!4695516 () Bool)

(assert (=> b!4695516 (= e!2929176 e!2929177)))

(declare-fun res!1981466 () Bool)

(assert (=> b!4695516 (=> res!1981466 e!2929177)))

(declare-fun lt!1856648 () ListMap!5009)

(assert (=> b!4695516 (= res!1981466 (not (eq!1037 lt!1856648 lt!1856668)))))

(assert (=> b!4695516 (= lt!1856668 (-!682 lt!1856660 key!4653))))

(declare-fun lt!1856658 () tuple2!53908)

(assert (=> b!4695516 (= lt!1856648 (extractMap!1904 (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023)))))))

(declare-fun lt!1856647 () List!52600)

(assert (=> b!4695516 (eq!1037 (extractMap!1904 (Cons!52476 lt!1856658 lt!1856647)) (-!682 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)) key!4653))))

(declare-fun tail!8661 (List!52600) List!52600)

(assert (=> b!4695516 (= lt!1856647 (tail!8661 lt!1856651))))

(assert (=> b!4695516 (= lt!1856658 (tuple2!53909 hash!405 lt!1856657))))

(declare-fun lt!1856638 () Unit!125153)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!52 (ListLongMap!4175 (_ BitVec 64) List!52599 List!52599 K!13845 Hashable!6247) Unit!125153)

(assert (=> b!4695516 (= lt!1856638 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!52 lt!1856640 hash!405 (t!359793 oldBucket!34) lt!1856657 key!4653 hashF!1323))))

(declare-fun b!4695517 () Bool)

(declare-fun res!1981463 () Bool)

(assert (=> b!4695517 (=> (not res!1981463) (not e!2929178))))

(assert (=> b!4695517 (= res!1981463 (allKeysSameHash!1704 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4695518 () Bool)

(declare-fun e!2929181 () Bool)

(assert (=> b!4695518 (= e!2929170 e!2929181)))

(declare-fun res!1981480 () Bool)

(assert (=> b!4695518 (=> (not res!1981480) (not e!2929181))))

(assert (=> b!4695518 (= res!1981480 (contains!15716 lt!1856652 key!4653))))

(assert (=> b!4695518 (= lt!1856652 (extractMap!1904 (toList!5646 lm!2023)))))

(declare-fun b!4695519 () Bool)

(assert (=> b!4695519 (= e!2929181 e!2929178)))

(declare-fun res!1981465 () Bool)

(assert (=> b!4695519 (=> (not res!1981465) (not e!2929178))))

(declare-fun lt!1856650 () (_ BitVec 64))

(assert (=> b!4695519 (= res!1981465 (= lt!1856650 hash!405))))

(declare-fun hash!4119 (Hashable!6247 K!13845) (_ BitVec 64))

(assert (=> b!4695519 (= lt!1856650 (hash!4119 hashF!1323 key!4653))))

(declare-fun b!4695520 () Bool)

(declare-fun res!1981462 () Bool)

(assert (=> b!4695520 (=> res!1981462 e!2929176)))

(assert (=> b!4695520 (= res!1981462 (not (eq!1037 lt!1856663 (+!2162 lt!1856656 lt!1856639))))))

(declare-fun tp!1346311 () Bool)

(declare-fun b!4695521 () Bool)

(assert (=> b!4695521 (= e!2929171 (and tp_is_empty!30805 tp_is_empty!30807 tp!1346311))))

(declare-fun b!4695522 () Bool)

(declare-fun tp!1346313 () Bool)

(assert (=> b!4695522 (= e!2929175 tp!1346313)))

(declare-fun b!4695523 () Bool)

(assert (=> b!4695523 (= e!2929173 e!2929182)))

(declare-fun res!1981471 () Bool)

(assert (=> b!4695523 (=> res!1981471 e!2929182)))

(declare-fun containsKey!3113 (List!52599 K!13845) Bool)

(assert (=> b!4695523 (= res!1981471 (not (containsKey!3113 (t!359793 oldBucket!34) key!4653)))))

(assert (=> b!4695523 (containsKey!3113 oldBucket!34 key!4653)))

(declare-fun lt!1856642 () Unit!125153)

(declare-fun lemmaGetPairDefinedThenContainsKey!230 (List!52599 K!13845 Hashable!6247) Unit!125153)

(assert (=> b!4695523 (= lt!1856642 (lemmaGetPairDefinedThenContainsKey!230 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1856643 () List!52599)

(declare-datatypes ((Option!12137 0))(
  ( (None!12136) (Some!12136 (v!46587 tuple2!53906)) )
))
(declare-fun isDefined!9392 (Option!12137) Bool)

(declare-fun getPair!482 (List!52599 K!13845) Option!12137)

(assert (=> b!4695523 (isDefined!9392 (getPair!482 lt!1856643 key!4653))))

(declare-fun lt!1856661 () Unit!125153)

(declare-fun lt!1856666 () tuple2!53908)

(declare-fun forallContained!3470 (List!52600 Int tuple2!53908) Unit!125153)

(assert (=> b!4695523 (= lt!1856661 (forallContained!3470 (toList!5646 lm!2023) lambda!208681 lt!1856666))))

(declare-fun contains!15717 (List!52600 tuple2!53908) Bool)

(assert (=> b!4695523 (contains!15717 (toList!5646 lm!2023) lt!1856666)))

(assert (=> b!4695523 (= lt!1856666 (tuple2!53909 lt!1856650 lt!1856643))))

(declare-fun lt!1856665 () Unit!125153)

(declare-fun lemmaGetValueImpliesTupleContained!287 (ListLongMap!4175 (_ BitVec 64) List!52599) Unit!125153)

(assert (=> b!4695523 (= lt!1856665 (lemmaGetValueImpliesTupleContained!287 lm!2023 lt!1856650 lt!1856643))))

(declare-fun apply!12361 (ListLongMap!4175 (_ BitVec 64)) List!52599)

(assert (=> b!4695523 (= lt!1856643 (apply!12361 lm!2023 lt!1856650))))

(declare-fun contains!15718 (ListLongMap!4175 (_ BitVec 64)) Bool)

(assert (=> b!4695523 (contains!15718 lm!2023 lt!1856650)))

(declare-fun lt!1856645 () Unit!125153)

(declare-fun lemmaInGenMapThenLongMapContainsHash!688 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> b!4695523 (= lt!1856645 (lemmaInGenMapThenLongMapContainsHash!688 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1856654 () Unit!125153)

(declare-fun lemmaInGenMapThenGetPairDefined!278 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> b!4695523 (= lt!1856654 (lemmaInGenMapThenGetPairDefined!278 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4695524 () Bool)

(declare-fun res!1981461 () Bool)

(assert (=> b!4695524 (=> (not res!1981461) (not e!2929170))))

(assert (=> b!4695524 (= res!1981461 (noDuplicateKeys!1878 oldBucket!34))))

(declare-fun b!4695525 () Bool)

(declare-fun res!1981479 () Bool)

(assert (=> b!4695525 (=> res!1981479 e!2929172)))

(assert (=> b!4695525 (= res!1981479 (not (eq!1037 lt!1856646 lt!1856649)))))

(declare-fun b!4695526 () Bool)

(declare-fun res!1981472 () Bool)

(assert (=> b!4695526 (=> res!1981472 e!2929176)))

(assert (=> b!4695526 (= res!1981472 (not (= (h!58738 oldBucket!34) lt!1856639)))))

(declare-fun b!4695527 () Bool)

(assert (=> b!4695527 (= e!2929178 e!2929180)))

(declare-fun res!1981473 () Bool)

(assert (=> b!4695527 (=> (not res!1981473) (not e!2929180))))

(declare-fun head!10020 (List!52600) tuple2!53908)

(assert (=> b!4695527 (= res!1981473 (= (head!10020 (toList!5646 lm!2023)) lt!1856655))))

(assert (=> b!4695527 (= lt!1856655 (tuple2!53909 hash!405 oldBucket!34))))

(assert (= (and start!475592 res!1981478) b!4695524))

(assert (= (and b!4695524 res!1981461) b!4695506))

(assert (= (and b!4695506 res!1981477) b!4695513))

(assert (= (and b!4695513 res!1981470) b!4695508))

(assert (= (and b!4695508 res!1981467) b!4695518))

(assert (= (and b!4695518 res!1981480) b!4695519))

(assert (= (and b!4695519 res!1981465) b!4695517))

(assert (= (and b!4695517 res!1981463) b!4695510))

(assert (= (and b!4695510 res!1981469) b!4695527))

(assert (= (and b!4695527 res!1981473) b!4695512))

(assert (= (and b!4695512 res!1981476) b!4695511))

(assert (= (and b!4695511 (not res!1981464)) b!4695523))

(assert (= (and b!4695523 (not res!1981471)) b!4695514))

(assert (= (and b!4695514 (not res!1981468)) b!4695504))

(assert (= (and b!4695504 (not res!1981474)) b!4695505))

(assert (= (and b!4695505 (not res!1981475)) b!4695526))

(assert (= (and b!4695526 (not res!1981472)) b!4695520))

(assert (= (and b!4695520 (not res!1981462)) b!4695516))

(assert (= (and b!4695516 (not res!1981466)) b!4695509))

(assert (= (and b!4695509 (not res!1981481)) b!4695525))

(assert (= (and b!4695525 (not res!1981479)) b!4695507))

(assert (= start!475592 b!4695522))

(assert (= (and start!475592 ((_ is Cons!52475) oldBucket!34)) b!4695515))

(assert (= (and start!475592 ((_ is Cons!52475) newBucket!218)) b!4695521))

(declare-fun m!5603391 () Bool)

(assert (=> b!4695506 m!5603391))

(declare-fun m!5603393 () Bool)

(assert (=> b!4695507 m!5603393))

(declare-fun m!5603395 () Bool)

(assert (=> b!4695510 m!5603395))

(declare-fun m!5603397 () Bool)

(assert (=> b!4695524 m!5603397))

(declare-fun m!5603399 () Bool)

(assert (=> b!4695523 m!5603399))

(declare-fun m!5603401 () Bool)

(assert (=> b!4695523 m!5603401))

(declare-fun m!5603403 () Bool)

(assert (=> b!4695523 m!5603403))

(assert (=> b!4695523 m!5603399))

(declare-fun m!5603405 () Bool)

(assert (=> b!4695523 m!5603405))

(declare-fun m!5603407 () Bool)

(assert (=> b!4695523 m!5603407))

(declare-fun m!5603409 () Bool)

(assert (=> b!4695523 m!5603409))

(declare-fun m!5603411 () Bool)

(assert (=> b!4695523 m!5603411))

(declare-fun m!5603413 () Bool)

(assert (=> b!4695523 m!5603413))

(declare-fun m!5603415 () Bool)

(assert (=> b!4695523 m!5603415))

(declare-fun m!5603417 () Bool)

(assert (=> b!4695523 m!5603417))

(declare-fun m!5603419 () Bool)

(assert (=> b!4695523 m!5603419))

(declare-fun m!5603421 () Bool)

(assert (=> b!4695523 m!5603421))

(declare-fun m!5603423 () Bool)

(assert (=> b!4695511 m!5603423))

(declare-fun m!5603425 () Bool)

(assert (=> b!4695511 m!5603425))

(declare-fun m!5603427 () Bool)

(assert (=> b!4695511 m!5603427))

(declare-fun m!5603429 () Bool)

(assert (=> b!4695514 m!5603429))

(declare-fun m!5603431 () Bool)

(assert (=> b!4695514 m!5603431))

(declare-fun m!5603433 () Bool)

(assert (=> b!4695514 m!5603433))

(declare-fun m!5603435 () Bool)

(assert (=> b!4695505 m!5603435))

(declare-fun m!5603437 () Bool)

(assert (=> b!4695505 m!5603437))

(declare-fun m!5603439 () Bool)

(assert (=> b!4695505 m!5603439))

(declare-fun m!5603441 () Bool)

(assert (=> b!4695505 m!5603441))

(declare-fun m!5603443 () Bool)

(assert (=> b!4695505 m!5603443))

(declare-fun m!5603445 () Bool)

(assert (=> b!4695505 m!5603445))

(assert (=> b!4695505 m!5603445))

(declare-fun m!5603447 () Bool)

(assert (=> b!4695505 m!5603447))

(declare-fun m!5603449 () Bool)

(assert (=> b!4695505 m!5603449))

(declare-fun m!5603451 () Bool)

(assert (=> b!4695505 m!5603451))

(declare-fun m!5603453 () Bool)

(assert (=> b!4695505 m!5603453))

(declare-fun m!5603455 () Bool)

(assert (=> b!4695505 m!5603455))

(declare-fun m!5603457 () Bool)

(assert (=> b!4695505 m!5603457))

(declare-fun m!5603459 () Bool)

(assert (=> b!4695505 m!5603459))

(assert (=> b!4695505 m!5603457))

(assert (=> b!4695505 m!5603437))

(assert (=> b!4695505 m!5603449))

(declare-fun m!5603461 () Bool)

(assert (=> b!4695505 m!5603461))

(assert (=> b!4695505 m!5603435))

(declare-fun m!5603463 () Bool)

(assert (=> b!4695505 m!5603463))

(declare-fun m!5603465 () Bool)

(assert (=> b!4695505 m!5603465))

(declare-fun m!5603467 () Bool)

(assert (=> b!4695505 m!5603467))

(assert (=> b!4695505 m!5603451))

(declare-fun m!5603469 () Bool)

(assert (=> b!4695505 m!5603469))

(declare-fun m!5603471 () Bool)

(assert (=> b!4695505 m!5603471))

(assert (=> b!4695505 m!5603467))

(declare-fun m!5603473 () Bool)

(assert (=> start!475592 m!5603473))

(declare-fun m!5603475 () Bool)

(assert (=> start!475592 m!5603475))

(declare-fun m!5603477 () Bool)

(assert (=> b!4695509 m!5603477))

(declare-fun m!5603479 () Bool)

(assert (=> b!4695509 m!5603479))

(assert (=> b!4695509 m!5603479))

(declare-fun m!5603481 () Bool)

(assert (=> b!4695509 m!5603481))

(declare-fun m!5603483 () Bool)

(assert (=> b!4695509 m!5603483))

(declare-fun m!5603485 () Bool)

(assert (=> b!4695520 m!5603485))

(assert (=> b!4695520 m!5603485))

(declare-fun m!5603487 () Bool)

(assert (=> b!4695520 m!5603487))

(declare-fun m!5603489 () Bool)

(assert (=> b!4695525 m!5603489))

(declare-fun m!5603491 () Bool)

(assert (=> b!4695504 m!5603491))

(declare-fun m!5603493 () Bool)

(assert (=> b!4695527 m!5603493))

(declare-fun m!5603495 () Bool)

(assert (=> b!4695508 m!5603495))

(declare-fun m!5603497 () Bool)

(assert (=> b!4695513 m!5603497))

(declare-fun m!5603499 () Bool)

(assert (=> b!4695517 m!5603499))

(declare-fun m!5603501 () Bool)

(assert (=> b!4695516 m!5603501))

(declare-fun m!5603503 () Bool)

(assert (=> b!4695516 m!5603503))

(declare-fun m!5603505 () Bool)

(assert (=> b!4695516 m!5603505))

(declare-fun m!5603507 () Bool)

(assert (=> b!4695516 m!5603507))

(declare-fun m!5603509 () Bool)

(assert (=> b!4695516 m!5603509))

(declare-fun m!5603511 () Bool)

(assert (=> b!4695516 m!5603511))

(declare-fun m!5603513 () Bool)

(assert (=> b!4695516 m!5603513))

(declare-fun m!5603515 () Bool)

(assert (=> b!4695516 m!5603515))

(assert (=> b!4695516 m!5603509))

(assert (=> b!4695516 m!5603505))

(assert (=> b!4695516 m!5603511))

(declare-fun m!5603517 () Bool)

(assert (=> b!4695516 m!5603517))

(declare-fun m!5603519 () Bool)

(assert (=> b!4695519 m!5603519))

(declare-fun m!5603521 () Bool)

(assert (=> b!4695518 m!5603521))

(declare-fun m!5603523 () Bool)

(assert (=> b!4695518 m!5603523))

(check-sat (not b!4695513) (not b!4695515) (not b!4695520) (not b!4695521) (not b!4695523) (not b!4695507) (not b!4695519) (not b!4695524) (not b!4695508) (not b!4695509) tp_is_empty!30805 (not start!475592) tp_is_empty!30807 (not b!4695517) (not b!4695510) (not b!4695516) (not b!4695511) (not b!4695506) (not b!4695518) (not b!4695505) (not b!4695525) (not b!4695514) (not b!4695504) (not b!4695522) (not b!4695527))
(check-sat)
(get-model)

(declare-fun b!4695645 () Bool)

(assert (=> b!4695645 true))

(declare-fun bs!1090774 () Bool)

(declare-fun b!4695647 () Bool)

(assert (= bs!1090774 (and b!4695647 b!4695645)))

(declare-fun lambda!208762 () Int)

(declare-fun lambda!208760 () Int)

(assert (=> bs!1090774 (= lambda!208762 lambda!208760)))

(assert (=> b!4695647 true))

(declare-fun lambda!208763 () Int)

(declare-fun lt!1856876 () ListMap!5009)

(assert (=> bs!1090774 (= (= lt!1856876 lt!1856644) (= lambda!208763 lambda!208760))))

(assert (=> b!4695647 (= (= lt!1856876 lt!1856644) (= lambda!208763 lambda!208762))))

(assert (=> b!4695647 true))

(declare-fun bs!1090776 () Bool)

(declare-fun d!1492675 () Bool)

(assert (= bs!1090776 (and d!1492675 b!4695645)))

(declare-fun lambda!208765 () Int)

(declare-fun lt!1856881 () ListMap!5009)

(assert (=> bs!1090776 (= (= lt!1856881 lt!1856644) (= lambda!208765 lambda!208760))))

(declare-fun bs!1090778 () Bool)

(assert (= bs!1090778 (and d!1492675 b!4695647)))

(assert (=> bs!1090778 (= (= lt!1856881 lt!1856644) (= lambda!208765 lambda!208762))))

(assert (=> bs!1090778 (= (= lt!1856881 lt!1856876) (= lambda!208765 lambda!208763))))

(assert (=> d!1492675 true))

(declare-fun c!802744 () Bool)

(declare-fun call!328234 () Bool)

(declare-fun bm!328227 () Bool)

(declare-fun forall!11365 (List!52599 Int) Bool)

(assert (=> bm!328227 (= call!328234 (forall!11365 (toList!5645 lt!1856644) (ite c!802744 lambda!208760 lambda!208763)))))

(declare-fun b!4695644 () Bool)

(declare-fun res!1981532 () Bool)

(declare-fun e!2929254 () Bool)

(assert (=> b!4695644 (=> (not res!1981532) (not e!2929254))))

(assert (=> b!4695644 (= res!1981532 (forall!11365 (toList!5645 lt!1856644) lambda!208765))))

(declare-fun e!2929253 () ListMap!5009)

(assert (=> b!4695645 (= e!2929253 lt!1856644)))

(declare-fun lt!1856889 () Unit!125153)

(declare-fun call!328233 () Unit!125153)

(assert (=> b!4695645 (= lt!1856889 call!328233)))

(assert (=> b!4695645 call!328234))

(declare-fun lt!1856890 () Unit!125153)

(assert (=> b!4695645 (= lt!1856890 lt!1856889)))

(declare-fun call!328232 () Bool)

(assert (=> b!4695645 call!328232))

(declare-fun lt!1856879 () Unit!125153)

(declare-fun Unit!125168 () Unit!125153)

(assert (=> b!4695645 (= lt!1856879 Unit!125168)))

(declare-fun b!4695646 () Bool)

(declare-fun invariantList!1428 (List!52599) Bool)

(assert (=> b!4695646 (= e!2929254 (invariantList!1428 (toList!5645 lt!1856881)))))

(assert (=> b!4695647 (= e!2929253 lt!1856876)))

(declare-fun lt!1856892 () ListMap!5009)

(assert (=> b!4695647 (= lt!1856892 (+!2162 lt!1856644 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023))))))))

(assert (=> b!4695647 (= lt!1856876 (addToMapMapFromBucket!1310 (t!359793 (_2!30248 (h!58739 (toList!5646 lm!2023)))) (+!2162 lt!1856644 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023)))))))))

(declare-fun lt!1856885 () Unit!125153)

(assert (=> b!4695647 (= lt!1856885 call!328233)))

(assert (=> b!4695647 (forall!11365 (toList!5645 lt!1856644) lambda!208762)))

(declare-fun lt!1856894 () Unit!125153)

(assert (=> b!4695647 (= lt!1856894 lt!1856885)))

(assert (=> b!4695647 (forall!11365 (toList!5645 lt!1856892) lambda!208763)))

(declare-fun lt!1856877 () Unit!125153)

(declare-fun Unit!125169 () Unit!125153)

(assert (=> b!4695647 (= lt!1856877 Unit!125169)))

(assert (=> b!4695647 (forall!11365 (t!359793 (_2!30248 (h!58739 (toList!5646 lm!2023)))) lambda!208763)))

(declare-fun lt!1856887 () Unit!125153)

(declare-fun Unit!125170 () Unit!125153)

(assert (=> b!4695647 (= lt!1856887 Unit!125170)))

(declare-fun lt!1856878 () Unit!125153)

(declare-fun Unit!125171 () Unit!125153)

(assert (=> b!4695647 (= lt!1856878 Unit!125171)))

(declare-fun lt!1856888 () Unit!125153)

(declare-fun forallContained!3472 (List!52599 Int tuple2!53906) Unit!125153)

(assert (=> b!4695647 (= lt!1856888 (forallContained!3472 (toList!5645 lt!1856892) lambda!208763 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023))))))))

(assert (=> b!4695647 (contains!15716 lt!1856892 (_1!30247 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023))))))))

(declare-fun lt!1856895 () Unit!125153)

(declare-fun Unit!125172 () Unit!125153)

(assert (=> b!4695647 (= lt!1856895 Unit!125172)))

(assert (=> b!4695647 (contains!15716 lt!1856876 (_1!30247 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023))))))))

(declare-fun lt!1856880 () Unit!125153)

(declare-fun Unit!125173 () Unit!125153)

(assert (=> b!4695647 (= lt!1856880 Unit!125173)))

(assert (=> b!4695647 call!328232))

(declare-fun lt!1856886 () Unit!125153)

(declare-fun Unit!125174 () Unit!125153)

(assert (=> b!4695647 (= lt!1856886 Unit!125174)))

(assert (=> b!4695647 (forall!11365 (toList!5645 lt!1856892) lambda!208763)))

(declare-fun lt!1856884 () Unit!125153)

(declare-fun Unit!125175 () Unit!125153)

(assert (=> b!4695647 (= lt!1856884 Unit!125175)))

(declare-fun lt!1856891 () Unit!125153)

(declare-fun Unit!125176 () Unit!125153)

(assert (=> b!4695647 (= lt!1856891 Unit!125176)))

(declare-fun lt!1856896 () Unit!125153)

(declare-fun addForallContainsKeyThenBeforeAdding!715 (ListMap!5009 ListMap!5009 K!13845 V!14091) Unit!125153)

(assert (=> b!4695647 (= lt!1856896 (addForallContainsKeyThenBeforeAdding!715 lt!1856644 lt!1856876 (_1!30247 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023))))) (_2!30247 (h!58738 (_2!30248 (h!58739 (toList!5646 lm!2023)))))))))

(assert (=> b!4695647 call!328234))

(declare-fun lt!1856893 () Unit!125153)

(assert (=> b!4695647 (= lt!1856893 lt!1856896)))

(assert (=> b!4695647 (forall!11365 (toList!5645 lt!1856644) lambda!208763)))

(declare-fun lt!1856882 () Unit!125153)

(declare-fun Unit!125177 () Unit!125153)

(assert (=> b!4695647 (= lt!1856882 Unit!125177)))

(declare-fun res!1981533 () Bool)

(assert (=> b!4695647 (= res!1981533 (forall!11365 (_2!30248 (h!58739 (toList!5646 lm!2023))) lambda!208763))))

(declare-fun e!2929252 () Bool)

(assert (=> b!4695647 (=> (not res!1981533) (not e!2929252))))

(assert (=> b!4695647 e!2929252))

(declare-fun lt!1856883 () Unit!125153)

(declare-fun Unit!125179 () Unit!125153)

(assert (=> b!4695647 (= lt!1856883 Unit!125179)))

(declare-fun b!4695648 () Bool)

(assert (=> b!4695648 (= e!2929252 (forall!11365 (toList!5645 lt!1856644) lambda!208763))))

(assert (=> d!1492675 e!2929254))

(declare-fun res!1981534 () Bool)

(assert (=> d!1492675 (=> (not res!1981534) (not e!2929254))))

(assert (=> d!1492675 (= res!1981534 (forall!11365 (_2!30248 (h!58739 (toList!5646 lm!2023))) lambda!208765))))

(assert (=> d!1492675 (= lt!1856881 e!2929253)))

(assert (=> d!1492675 (= c!802744 ((_ is Nil!52475) (_2!30248 (h!58739 (toList!5646 lm!2023)))))))

(assert (=> d!1492675 (noDuplicateKeys!1878 (_2!30248 (h!58739 (toList!5646 lm!2023))))))

(assert (=> d!1492675 (= (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (toList!5646 lm!2023))) lt!1856644) lt!1856881)))

(declare-fun bm!328228 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!716 (ListMap!5009) Unit!125153)

(assert (=> bm!328228 (= call!328233 (lemmaContainsAllItsOwnKeys!716 lt!1856644))))

(declare-fun bm!328229 () Bool)

(assert (=> bm!328229 (= call!328232 (forall!11365 (ite c!802744 (toList!5645 lt!1856644) (_2!30248 (h!58739 (toList!5646 lm!2023)))) (ite c!802744 lambda!208760 lambda!208763)))))

(assert (= (and d!1492675 c!802744) b!4695645))

(assert (= (and d!1492675 (not c!802744)) b!4695647))

(assert (= (and b!4695647 res!1981533) b!4695648))

(assert (= (or b!4695645 b!4695647) bm!328228))

(assert (= (or b!4695645 b!4695647) bm!328229))

(assert (= (or b!4695645 b!4695647) bm!328227))

(assert (= (and d!1492675 res!1981534) b!4695644))

(assert (= (and b!4695644 res!1981532) b!4695646))

(declare-fun m!5603743 () Bool)

(assert (=> bm!328228 m!5603743))

(declare-fun m!5603745 () Bool)

(assert (=> b!4695647 m!5603745))

(declare-fun m!5603747 () Bool)

(assert (=> b!4695647 m!5603747))

(declare-fun m!5603749 () Bool)

(assert (=> b!4695647 m!5603749))

(declare-fun m!5603751 () Bool)

(assert (=> b!4695647 m!5603751))

(declare-fun m!5603753 () Bool)

(assert (=> b!4695647 m!5603753))

(declare-fun m!5603755 () Bool)

(assert (=> b!4695647 m!5603755))

(declare-fun m!5603757 () Bool)

(assert (=> b!4695647 m!5603757))

(declare-fun m!5603759 () Bool)

(assert (=> b!4695647 m!5603759))

(assert (=> b!4695647 m!5603757))

(declare-fun m!5603761 () Bool)

(assert (=> b!4695647 m!5603761))

(assert (=> b!4695647 m!5603749))

(declare-fun m!5603763 () Bool)

(assert (=> b!4695647 m!5603763))

(declare-fun m!5603765 () Bool)

(assert (=> b!4695647 m!5603765))

(declare-fun m!5603767 () Bool)

(assert (=> d!1492675 m!5603767))

(declare-fun m!5603769 () Bool)

(assert (=> d!1492675 m!5603769))

(declare-fun m!5603775 () Bool)

(assert (=> bm!328229 m!5603775))

(declare-fun m!5603779 () Bool)

(assert (=> b!4695644 m!5603779))

(declare-fun m!5603783 () Bool)

(assert (=> b!4695646 m!5603783))

(declare-fun m!5603787 () Bool)

(assert (=> bm!328227 m!5603787))

(assert (=> b!4695648 m!5603765))

(assert (=> b!4695511 d!1492675))

(declare-fun bs!1090833 () Bool)

(declare-fun d!1492723 () Bool)

(assert (= bs!1090833 (and d!1492723 start!475592)))

(declare-fun lambda!208774 () Int)

(assert (=> bs!1090833 (= lambda!208774 lambda!208681)))

(declare-fun lt!1856926 () ListMap!5009)

(assert (=> d!1492723 (invariantList!1428 (toList!5645 lt!1856926))))

(declare-fun e!2929263 () ListMap!5009)

(assert (=> d!1492723 (= lt!1856926 e!2929263)))

(declare-fun c!802750 () Bool)

(assert (=> d!1492723 (= c!802750 ((_ is Cons!52476) (t!359794 (toList!5646 lm!2023))))))

(assert (=> d!1492723 (forall!11363 (t!359794 (toList!5646 lm!2023)) lambda!208774)))

(assert (=> d!1492723 (= (extractMap!1904 (t!359794 (toList!5646 lm!2023))) lt!1856926)))

(declare-fun b!4695666 () Bool)

(assert (=> b!4695666 (= e!2929263 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (t!359794 (toList!5646 lm!2023)))) (extractMap!1904 (t!359794 (t!359794 (toList!5646 lm!2023))))))))

(declare-fun b!4695667 () Bool)

(assert (=> b!4695667 (= e!2929263 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492723 c!802750) b!4695666))

(assert (= (and d!1492723 (not c!802750)) b!4695667))

(declare-fun m!5603853 () Bool)

(assert (=> d!1492723 m!5603853))

(declare-fun m!5603857 () Bool)

(assert (=> d!1492723 m!5603857))

(declare-fun m!5603861 () Bool)

(assert (=> b!4695666 m!5603861))

(assert (=> b!4695666 m!5603861))

(declare-fun m!5603867 () Bool)

(assert (=> b!4695666 m!5603867))

(assert (=> b!4695511 d!1492723))

(declare-fun d!1492737 () Bool)

(assert (=> d!1492737 (= (tail!8659 lm!2023) (ListLongMap!4176 (tail!8661 (toList!5646 lm!2023))))))

(declare-fun bs!1090835 () Bool)

(assert (= bs!1090835 d!1492737))

(declare-fun m!5603883 () Bool)

(assert (=> bs!1090835 m!5603883))

(assert (=> b!4695511 d!1492737))

(declare-fun d!1492741 () Bool)

(declare-datatypes ((Option!12139 0))(
  ( (None!12138) (Some!12138 (v!46593 List!52599)) )
))
(declare-fun get!17539 (Option!12139) List!52599)

(declare-fun getValueByKey!1815 (List!52600 (_ BitVec 64)) Option!12139)

(assert (=> d!1492741 (= (apply!12361 lm!2023 lt!1856650) (get!17539 (getValueByKey!1815 (toList!5646 lm!2023) lt!1856650)))))

(declare-fun bs!1090845 () Bool)

(assert (= bs!1090845 d!1492741))

(declare-fun m!5603895 () Bool)

(assert (=> bs!1090845 m!5603895))

(assert (=> bs!1090845 m!5603895))

(declare-fun m!5603899 () Bool)

(assert (=> bs!1090845 m!5603899))

(assert (=> b!4695523 d!1492741))

(declare-fun d!1492747 () Bool)

(assert (=> d!1492747 (contains!15717 (toList!5646 lm!2023) (tuple2!53909 lt!1856650 lt!1856643))))

(declare-fun lt!1856952 () Unit!125153)

(declare-fun choose!32721 (ListLongMap!4175 (_ BitVec 64) List!52599) Unit!125153)

(assert (=> d!1492747 (= lt!1856952 (choose!32721 lm!2023 lt!1856650 lt!1856643))))

(assert (=> d!1492747 (contains!15718 lm!2023 lt!1856650)))

(assert (=> d!1492747 (= (lemmaGetValueImpliesTupleContained!287 lm!2023 lt!1856650 lt!1856643) lt!1856952)))

(declare-fun bs!1090871 () Bool)

(assert (= bs!1090871 d!1492747))

(declare-fun m!5603903 () Bool)

(assert (=> bs!1090871 m!5603903))

(declare-fun m!5603905 () Bool)

(assert (=> bs!1090871 m!5603905))

(assert (=> bs!1090871 m!5603413))

(assert (=> b!4695523 d!1492747))

(declare-fun d!1492751 () Bool)

(declare-fun lt!1856955 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9213 (List!52600) (InoxSet tuple2!53908))

(assert (=> d!1492751 (= lt!1856955 (select (content!9213 (toList!5646 lm!2023)) lt!1856666))))

(declare-fun e!2929273 () Bool)

(assert (=> d!1492751 (= lt!1856955 e!2929273)))

(declare-fun res!1981547 () Bool)

(assert (=> d!1492751 (=> (not res!1981547) (not e!2929273))))

(assert (=> d!1492751 (= res!1981547 ((_ is Cons!52476) (toList!5646 lm!2023)))))

(assert (=> d!1492751 (= (contains!15717 (toList!5646 lm!2023) lt!1856666) lt!1856955)))

(declare-fun b!4695680 () Bool)

(declare-fun e!2929272 () Bool)

(assert (=> b!4695680 (= e!2929273 e!2929272)))

(declare-fun res!1981548 () Bool)

(assert (=> b!4695680 (=> res!1981548 e!2929272)))

(assert (=> b!4695680 (= res!1981548 (= (h!58739 (toList!5646 lm!2023)) lt!1856666))))

(declare-fun b!4695681 () Bool)

(assert (=> b!4695681 (= e!2929272 (contains!15717 (t!359794 (toList!5646 lm!2023)) lt!1856666))))

(assert (= (and d!1492751 res!1981547) b!4695680))

(assert (= (and b!4695680 (not res!1981548)) b!4695681))

(declare-fun m!5603907 () Bool)

(assert (=> d!1492751 m!5603907))

(declare-fun m!5603909 () Bool)

(assert (=> d!1492751 m!5603909))

(declare-fun m!5603911 () Bool)

(assert (=> b!4695681 m!5603911))

(assert (=> b!4695523 d!1492751))

(declare-fun d!1492753 () Bool)

(declare-fun e!2929278 () Bool)

(assert (=> d!1492753 e!2929278))

(declare-fun res!1981551 () Bool)

(assert (=> d!1492753 (=> res!1981551 e!2929278)))

(declare-fun lt!1856966 () Bool)

(assert (=> d!1492753 (= res!1981551 (not lt!1856966))))

(declare-fun lt!1856967 () Bool)

(assert (=> d!1492753 (= lt!1856966 lt!1856967)))

(declare-fun lt!1856964 () Unit!125153)

(declare-fun e!2929279 () Unit!125153)

(assert (=> d!1492753 (= lt!1856964 e!2929279)))

(declare-fun c!802755 () Bool)

(assert (=> d!1492753 (= c!802755 lt!1856967)))

(declare-fun containsKey!3115 (List!52600 (_ BitVec 64)) Bool)

(assert (=> d!1492753 (= lt!1856967 (containsKey!3115 (toList!5646 lm!2023) lt!1856650))))

(assert (=> d!1492753 (= (contains!15718 lm!2023 lt!1856650) lt!1856966)))

(declare-fun b!4695688 () Bool)

(declare-fun lt!1856965 () Unit!125153)

(assert (=> b!4695688 (= e!2929279 lt!1856965)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1707 (List!52600 (_ BitVec 64)) Unit!125153)

(assert (=> b!4695688 (= lt!1856965 (lemmaContainsKeyImpliesGetValueByKeyDefined!1707 (toList!5646 lm!2023) lt!1856650))))

(declare-fun isDefined!9394 (Option!12139) Bool)

(assert (=> b!4695688 (isDefined!9394 (getValueByKey!1815 (toList!5646 lm!2023) lt!1856650))))

(declare-fun b!4695689 () Bool)

(declare-fun Unit!125190 () Unit!125153)

(assert (=> b!4695689 (= e!2929279 Unit!125190)))

(declare-fun b!4695690 () Bool)

(assert (=> b!4695690 (= e!2929278 (isDefined!9394 (getValueByKey!1815 (toList!5646 lm!2023) lt!1856650)))))

(assert (= (and d!1492753 c!802755) b!4695688))

(assert (= (and d!1492753 (not c!802755)) b!4695689))

(assert (= (and d!1492753 (not res!1981551)) b!4695690))

(declare-fun m!5603943 () Bool)

(assert (=> d!1492753 m!5603943))

(declare-fun m!5603945 () Bool)

(assert (=> b!4695688 m!5603945))

(assert (=> b!4695688 m!5603895))

(assert (=> b!4695688 m!5603895))

(declare-fun m!5603947 () Bool)

(assert (=> b!4695688 m!5603947))

(assert (=> b!4695690 m!5603895))

(assert (=> b!4695690 m!5603895))

(assert (=> b!4695690 m!5603947))

(assert (=> b!4695523 d!1492753))

(declare-fun bs!1090889 () Bool)

(declare-fun d!1492759 () Bool)

(assert (= bs!1090889 (and d!1492759 start!475592)))

(declare-fun lambda!208782 () Int)

(assert (=> bs!1090889 (= lambda!208782 lambda!208681)))

(declare-fun bs!1090890 () Bool)

(assert (= bs!1090890 (and d!1492759 d!1492723)))

(assert (=> bs!1090890 (= lambda!208782 lambda!208774)))

(assert (=> d!1492759 (contains!15718 lm!2023 (hash!4119 hashF!1323 key!4653))))

(declare-fun lt!1856970 () Unit!125153)

(declare-fun choose!32723 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> d!1492759 (= lt!1856970 (choose!32723 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492759 (forall!11363 (toList!5646 lm!2023) lambda!208782)))

(assert (=> d!1492759 (= (lemmaInGenMapThenLongMapContainsHash!688 lm!2023 key!4653 hashF!1323) lt!1856970)))

(declare-fun bs!1090891 () Bool)

(assert (= bs!1090891 d!1492759))

(assert (=> bs!1090891 m!5603519))

(assert (=> bs!1090891 m!5603519))

(declare-fun m!5603949 () Bool)

(assert (=> bs!1090891 m!5603949))

(declare-fun m!5603951 () Bool)

(assert (=> bs!1090891 m!5603951))

(declare-fun m!5603953 () Bool)

(assert (=> bs!1090891 m!5603953))

(assert (=> b!4695523 d!1492759))

(declare-fun bs!1090926 () Bool)

(declare-fun d!1492761 () Bool)

(assert (= bs!1090926 (and d!1492761 start!475592)))

(declare-fun lambda!208796 () Int)

(assert (=> bs!1090926 (= lambda!208796 lambda!208681)))

(declare-fun bs!1090927 () Bool)

(assert (= bs!1090927 (and d!1492761 d!1492723)))

(assert (=> bs!1090927 (= lambda!208796 lambda!208774)))

(declare-fun bs!1090928 () Bool)

(assert (= bs!1090928 (and d!1492761 d!1492759)))

(assert (=> bs!1090928 (= lambda!208796 lambda!208782)))

(declare-fun b!4695754 () Bool)

(declare-fun res!1981590 () Bool)

(declare-fun e!2929322 () Bool)

(assert (=> b!4695754 (=> (not res!1981590) (not e!2929322))))

(assert (=> b!4695754 (= res!1981590 (allKeysSameHashInMap!1792 lm!2023 hashF!1323))))

(assert (=> d!1492761 e!2929322))

(declare-fun res!1981592 () Bool)

(assert (=> d!1492761 (=> (not res!1981592) (not e!2929322))))

(assert (=> d!1492761 (= res!1981592 (forall!11363 (toList!5646 lm!2023) lambda!208796))))

(declare-fun lt!1857031 () Unit!125153)

(declare-fun choose!32724 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> d!1492761 (= lt!1857031 (choose!32724 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492761 (forall!11363 (toList!5646 lm!2023) lambda!208796)))

(assert (=> d!1492761 (= (lemmaInGenMapThenGetPairDefined!278 lm!2023 key!4653 hashF!1323) lt!1857031)))

(declare-fun e!2929323 () Bool)

(declare-fun b!4695757 () Bool)

(declare-fun lt!1857034 () List!52599)

(declare-fun lt!1857033 () (_ BitVec 64))

(assert (=> b!4695757 (= e!2929323 (= (getValueByKey!1815 (toList!5646 lm!2023) lt!1857033) (Some!12138 lt!1857034)))))

(declare-fun b!4695756 () Bool)

(assert (=> b!4695756 (= e!2929322 (isDefined!9392 (getPair!482 (apply!12361 lm!2023 (hash!4119 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1857030 () Unit!125153)

(assert (=> b!4695756 (= lt!1857030 (forallContained!3470 (toList!5646 lm!2023) lambda!208796 (tuple2!53909 (hash!4119 hashF!1323 key!4653) (apply!12361 lm!2023 (hash!4119 hashF!1323 key!4653)))))))

(declare-fun lt!1857029 () Unit!125153)

(declare-fun lt!1857027 () Unit!125153)

(assert (=> b!4695756 (= lt!1857029 lt!1857027)))

(assert (=> b!4695756 (contains!15717 (toList!5646 lm!2023) (tuple2!53909 lt!1857033 lt!1857034))))

(assert (=> b!4695756 (= lt!1857027 (lemmaGetValueImpliesTupleContained!287 lm!2023 lt!1857033 lt!1857034))))

(assert (=> b!4695756 e!2929323))

(declare-fun res!1981591 () Bool)

(assert (=> b!4695756 (=> (not res!1981591) (not e!2929323))))

(assert (=> b!4695756 (= res!1981591 (contains!15718 lm!2023 lt!1857033))))

(assert (=> b!4695756 (= lt!1857034 (apply!12361 lm!2023 (hash!4119 hashF!1323 key!4653)))))

(assert (=> b!4695756 (= lt!1857033 (hash!4119 hashF!1323 key!4653))))

(declare-fun lt!1857032 () Unit!125153)

(declare-fun lt!1857028 () Unit!125153)

(assert (=> b!4695756 (= lt!1857032 lt!1857028)))

(assert (=> b!4695756 (contains!15718 lm!2023 (hash!4119 hashF!1323 key!4653))))

(assert (=> b!4695756 (= lt!1857028 (lemmaInGenMapThenLongMapContainsHash!688 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4695755 () Bool)

(declare-fun res!1981589 () Bool)

(assert (=> b!4695755 (=> (not res!1981589) (not e!2929322))))

(assert (=> b!4695755 (= res!1981589 (contains!15716 (extractMap!1904 (toList!5646 lm!2023)) key!4653))))

(assert (= (and d!1492761 res!1981592) b!4695754))

(assert (= (and b!4695754 res!1981590) b!4695755))

(assert (= (and b!4695755 res!1981589) b!4695756))

(assert (= (and b!4695756 res!1981591) b!4695757))

(declare-fun m!5604043 () Bool)

(assert (=> d!1492761 m!5604043))

(declare-fun m!5604045 () Bool)

(assert (=> d!1492761 m!5604045))

(assert (=> d!1492761 m!5604043))

(declare-fun m!5604047 () Bool)

(assert (=> b!4695757 m!5604047))

(assert (=> b!4695754 m!5603395))

(assert (=> b!4695756 m!5603519))

(assert (=> b!4695756 m!5603949))

(declare-fun m!5604049 () Bool)

(assert (=> b!4695756 m!5604049))

(declare-fun m!5604051 () Bool)

(assert (=> b!4695756 m!5604051))

(declare-fun m!5604053 () Bool)

(assert (=> b!4695756 m!5604053))

(assert (=> b!4695756 m!5603519))

(declare-fun m!5604055 () Bool)

(assert (=> b!4695756 m!5604055))

(declare-fun m!5604057 () Bool)

(assert (=> b!4695756 m!5604057))

(assert (=> b!4695756 m!5604055))

(declare-fun m!5604059 () Bool)

(assert (=> b!4695756 m!5604059))

(assert (=> b!4695756 m!5603519))

(assert (=> b!4695756 m!5603421))

(assert (=> b!4695756 m!5604059))

(declare-fun m!5604063 () Bool)

(assert (=> b!4695756 m!5604063))

(assert (=> b!4695755 m!5603523))

(assert (=> b!4695755 m!5603523))

(declare-fun m!5604065 () Bool)

(assert (=> b!4695755 m!5604065))

(assert (=> b!4695523 d!1492761))

(declare-fun d!1492791 () Bool)

(declare-fun dynLambda!21730 (Int tuple2!53908) Bool)

(assert (=> d!1492791 (dynLambda!21730 lambda!208681 lt!1856666)))

(declare-fun lt!1857040 () Unit!125153)

(declare-fun choose!32725 (List!52600 Int tuple2!53908) Unit!125153)

(assert (=> d!1492791 (= lt!1857040 (choose!32725 (toList!5646 lm!2023) lambda!208681 lt!1856666))))

(declare-fun e!2929340 () Bool)

(assert (=> d!1492791 e!2929340))

(declare-fun res!1981609 () Bool)

(assert (=> d!1492791 (=> (not res!1981609) (not e!2929340))))

(assert (=> d!1492791 (= res!1981609 (forall!11363 (toList!5646 lm!2023) lambda!208681))))

(assert (=> d!1492791 (= (forallContained!3470 (toList!5646 lm!2023) lambda!208681 lt!1856666) lt!1857040)))

(declare-fun b!4695774 () Bool)

(assert (=> b!4695774 (= e!2929340 (contains!15717 (toList!5646 lm!2023) lt!1856666))))

(assert (= (and d!1492791 res!1981609) b!4695774))

(declare-fun b_lambda!177185 () Bool)

(assert (=> (not b_lambda!177185) (not d!1492791)))

(declare-fun m!5604073 () Bool)

(assert (=> d!1492791 m!5604073))

(declare-fun m!5604075 () Bool)

(assert (=> d!1492791 m!5604075))

(assert (=> d!1492791 m!5603473))

(assert (=> b!4695774 m!5603415))

(assert (=> b!4695523 d!1492791))

(declare-fun d!1492797 () Bool)

(assert (=> d!1492797 (containsKey!3113 oldBucket!34 key!4653)))

(declare-fun lt!1857043 () Unit!125153)

(declare-fun choose!32726 (List!52599 K!13845 Hashable!6247) Unit!125153)

(assert (=> d!1492797 (= lt!1857043 (choose!32726 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1492797 (noDuplicateKeys!1878 oldBucket!34)))

(assert (=> d!1492797 (= (lemmaGetPairDefinedThenContainsKey!230 oldBucket!34 key!4653 hashF!1323) lt!1857043)))

(declare-fun bs!1090930 () Bool)

(assert (= bs!1090930 d!1492797))

(assert (=> bs!1090930 m!5603411))

(declare-fun m!5604077 () Bool)

(assert (=> bs!1090930 m!5604077))

(assert (=> bs!1090930 m!5603397))

(assert (=> b!4695523 d!1492797))

(declare-fun d!1492799 () Bool)

(declare-fun res!1981614 () Bool)

(declare-fun e!2929345 () Bool)

(assert (=> d!1492799 (=> res!1981614 e!2929345)))

(assert (=> d!1492799 (= res!1981614 (and ((_ is Cons!52475) oldBucket!34) (= (_1!30247 (h!58738 oldBucket!34)) key!4653)))))

(assert (=> d!1492799 (= (containsKey!3113 oldBucket!34 key!4653) e!2929345)))

(declare-fun b!4695780 () Bool)

(declare-fun e!2929346 () Bool)

(assert (=> b!4695780 (= e!2929345 e!2929346)))

(declare-fun res!1981615 () Bool)

(assert (=> b!4695780 (=> (not res!1981615) (not e!2929346))))

(assert (=> b!4695780 (= res!1981615 ((_ is Cons!52475) oldBucket!34))))

(declare-fun b!4695781 () Bool)

(assert (=> b!4695781 (= e!2929346 (containsKey!3113 (t!359793 oldBucket!34) key!4653))))

(assert (= (and d!1492799 (not res!1981614)) b!4695780))

(assert (= (and b!4695780 res!1981615) b!4695781))

(assert (=> b!4695781 m!5603407))

(assert (=> b!4695523 d!1492799))

(declare-fun b!4695798 () Bool)

(declare-fun e!2929361 () Bool)

(declare-fun e!2929360 () Bool)

(assert (=> b!4695798 (= e!2929361 e!2929360)))

(declare-fun res!1981624 () Bool)

(assert (=> b!4695798 (=> (not res!1981624) (not e!2929360))))

(declare-fun lt!1857049 () Option!12137)

(assert (=> b!4695798 (= res!1981624 (isDefined!9392 lt!1857049))))

(declare-fun b!4695799 () Bool)

(declare-fun e!2929358 () Option!12137)

(assert (=> b!4695799 (= e!2929358 (getPair!482 (t!359793 lt!1856643) key!4653))))

(declare-fun b!4695800 () Bool)

(declare-fun e!2929357 () Bool)

(assert (=> b!4695800 (= e!2929357 (not (containsKey!3113 lt!1856643 key!4653)))))

(declare-fun b!4695801 () Bool)

(declare-fun contains!15721 (List!52599 tuple2!53906) Bool)

(declare-fun get!17540 (Option!12137) tuple2!53906)

(assert (=> b!4695801 (= e!2929360 (contains!15721 lt!1856643 (get!17540 lt!1857049)))))

(declare-fun b!4695802 () Bool)

(declare-fun e!2929359 () Option!12137)

(assert (=> b!4695802 (= e!2929359 (Some!12136 (h!58738 lt!1856643)))))

(declare-fun d!1492803 () Bool)

(assert (=> d!1492803 e!2929361))

(declare-fun res!1981626 () Bool)

(assert (=> d!1492803 (=> res!1981626 e!2929361)))

(assert (=> d!1492803 (= res!1981626 e!2929357)))

(declare-fun res!1981627 () Bool)

(assert (=> d!1492803 (=> (not res!1981627) (not e!2929357))))

(declare-fun isEmpty!29111 (Option!12137) Bool)

(assert (=> d!1492803 (= res!1981627 (isEmpty!29111 lt!1857049))))

(assert (=> d!1492803 (= lt!1857049 e!2929359)))

(declare-fun c!802774 () Bool)

(assert (=> d!1492803 (= c!802774 (and ((_ is Cons!52475) lt!1856643) (= (_1!30247 (h!58738 lt!1856643)) key!4653)))))

(assert (=> d!1492803 (noDuplicateKeys!1878 lt!1856643)))

(assert (=> d!1492803 (= (getPair!482 lt!1856643 key!4653) lt!1857049)))

(declare-fun b!4695803 () Bool)

(declare-fun res!1981625 () Bool)

(assert (=> b!4695803 (=> (not res!1981625) (not e!2929360))))

(assert (=> b!4695803 (= res!1981625 (= (_1!30247 (get!17540 lt!1857049)) key!4653))))

(declare-fun b!4695804 () Bool)

(assert (=> b!4695804 (= e!2929359 e!2929358)))

(declare-fun c!802773 () Bool)

(assert (=> b!4695804 (= c!802773 ((_ is Cons!52475) lt!1856643))))

(declare-fun b!4695805 () Bool)

(assert (=> b!4695805 (= e!2929358 None!12136)))

(assert (= (and d!1492803 c!802774) b!4695802))

(assert (= (and d!1492803 (not c!802774)) b!4695804))

(assert (= (and b!4695804 c!802773) b!4695799))

(assert (= (and b!4695804 (not c!802773)) b!4695805))

(assert (= (and d!1492803 res!1981627) b!4695800))

(assert (= (and d!1492803 (not res!1981626)) b!4695798))

(assert (= (and b!4695798 res!1981624) b!4695803))

(assert (= (and b!4695803 res!1981625) b!4695801))

(declare-fun m!5604083 () Bool)

(assert (=> d!1492803 m!5604083))

(declare-fun m!5604085 () Bool)

(assert (=> d!1492803 m!5604085))

(declare-fun m!5604087 () Bool)

(assert (=> b!4695798 m!5604087))

(declare-fun m!5604089 () Bool)

(assert (=> b!4695799 m!5604089))

(declare-fun m!5604091 () Bool)

(assert (=> b!4695803 m!5604091))

(declare-fun m!5604093 () Bool)

(assert (=> b!4695800 m!5604093))

(assert (=> b!4695801 m!5604091))

(assert (=> b!4695801 m!5604091))

(declare-fun m!5604095 () Bool)

(assert (=> b!4695801 m!5604095))

(assert (=> b!4695523 d!1492803))

(declare-fun d!1492805 () Bool)

(declare-fun res!1981628 () Bool)

(declare-fun e!2929362 () Bool)

(assert (=> d!1492805 (=> res!1981628 e!2929362)))

(assert (=> d!1492805 (= res!1981628 (and ((_ is Cons!52475) (t!359793 oldBucket!34)) (= (_1!30247 (h!58738 (t!359793 oldBucket!34))) key!4653)))))

(assert (=> d!1492805 (= (containsKey!3113 (t!359793 oldBucket!34) key!4653) e!2929362)))

(declare-fun b!4695806 () Bool)

(declare-fun e!2929363 () Bool)

(assert (=> b!4695806 (= e!2929362 e!2929363)))

(declare-fun res!1981629 () Bool)

(assert (=> b!4695806 (=> (not res!1981629) (not e!2929363))))

(assert (=> b!4695806 (= res!1981629 ((_ is Cons!52475) (t!359793 oldBucket!34)))))

(declare-fun b!4695807 () Bool)

(assert (=> b!4695807 (= e!2929363 (containsKey!3113 (t!359793 (t!359793 oldBucket!34)) key!4653))))

(assert (= (and d!1492805 (not res!1981628)) b!4695806))

(assert (= (and b!4695806 res!1981629) b!4695807))

(declare-fun m!5604097 () Bool)

(assert (=> b!4695807 m!5604097))

(assert (=> b!4695523 d!1492805))

(declare-fun d!1492807 () Bool)

(assert (=> d!1492807 (= (isDefined!9392 (getPair!482 lt!1856643 key!4653)) (not (isEmpty!29111 (getPair!482 lt!1856643 key!4653))))))

(declare-fun bs!1090932 () Bool)

(assert (= bs!1090932 d!1492807))

(assert (=> bs!1090932 m!5603399))

(declare-fun m!5604099 () Bool)

(assert (=> bs!1090932 m!5604099))

(assert (=> b!4695523 d!1492807))

(declare-fun d!1492809 () Bool)

(declare-fun res!1981634 () Bool)

(declare-fun e!2929368 () Bool)

(assert (=> d!1492809 (=> res!1981634 e!2929368)))

(assert (=> d!1492809 (= res!1981634 (not ((_ is Cons!52475) oldBucket!34)))))

(assert (=> d!1492809 (= (noDuplicateKeys!1878 oldBucket!34) e!2929368)))

(declare-fun b!4695812 () Bool)

(declare-fun e!2929369 () Bool)

(assert (=> b!4695812 (= e!2929368 e!2929369)))

(declare-fun res!1981635 () Bool)

(assert (=> b!4695812 (=> (not res!1981635) (not e!2929369))))

(assert (=> b!4695812 (= res!1981635 (not (containsKey!3113 (t!359793 oldBucket!34) (_1!30247 (h!58738 oldBucket!34)))))))

(declare-fun b!4695813 () Bool)

(assert (=> b!4695813 (= e!2929369 (noDuplicateKeys!1878 (t!359793 oldBucket!34)))))

(assert (= (and d!1492809 (not res!1981634)) b!4695812))

(assert (= (and b!4695812 res!1981635) b!4695813))

(declare-fun m!5604101 () Bool)

(assert (=> b!4695812 m!5604101))

(declare-fun m!5604103 () Bool)

(assert (=> b!4695813 m!5604103))

(assert (=> b!4695524 d!1492809))

(declare-fun b!4695822 () Bool)

(declare-fun e!2929375 () List!52599)

(assert (=> b!4695822 (= e!2929375 (t!359793 oldBucket!34))))

(declare-fun b!4695823 () Bool)

(declare-fun e!2929374 () List!52599)

(assert (=> b!4695823 (= e!2929375 e!2929374)))

(declare-fun c!802779 () Bool)

(assert (=> b!4695823 (= c!802779 ((_ is Cons!52475) oldBucket!34))))

(declare-fun b!4695825 () Bool)

(assert (=> b!4695825 (= e!2929374 Nil!52475)))

(declare-fun b!4695824 () Bool)

(assert (=> b!4695824 (= e!2929374 (Cons!52475 (h!58738 oldBucket!34) (removePairForKey!1473 (t!359793 oldBucket!34) key!4653)))))

(declare-fun d!1492811 () Bool)

(declare-fun lt!1857052 () List!52599)

(assert (=> d!1492811 (not (containsKey!3113 lt!1857052 key!4653))))

(assert (=> d!1492811 (= lt!1857052 e!2929375)))

(declare-fun c!802780 () Bool)

(assert (=> d!1492811 (= c!802780 (and ((_ is Cons!52475) oldBucket!34) (= (_1!30247 (h!58738 oldBucket!34)) key!4653)))))

(assert (=> d!1492811 (noDuplicateKeys!1878 oldBucket!34)))

(assert (=> d!1492811 (= (removePairForKey!1473 oldBucket!34 key!4653) lt!1857052)))

(assert (= (and d!1492811 c!802780) b!4695822))

(assert (= (and d!1492811 (not c!802780)) b!4695823))

(assert (= (and b!4695823 c!802779) b!4695824))

(assert (= (and b!4695823 (not c!802779)) b!4695825))

(assert (=> b!4695824 m!5603491))

(declare-fun m!5604105 () Bool)

(assert (=> d!1492811 m!5604105))

(assert (=> d!1492811 m!5603397))

(assert (=> b!4695513 d!1492811))

(declare-fun b!4695826 () Bool)

(declare-fun e!2929377 () List!52599)

(assert (=> b!4695826 (= e!2929377 (t!359793 lt!1856664))))

(declare-fun b!4695827 () Bool)

(declare-fun e!2929376 () List!52599)

(assert (=> b!4695827 (= e!2929377 e!2929376)))

(declare-fun c!802781 () Bool)

(assert (=> b!4695827 (= c!802781 ((_ is Cons!52475) lt!1856664))))

(declare-fun b!4695829 () Bool)

(assert (=> b!4695829 (= e!2929376 Nil!52475)))

(declare-fun b!4695828 () Bool)

(assert (=> b!4695828 (= e!2929376 (Cons!52475 (h!58738 lt!1856664) (removePairForKey!1473 (t!359793 lt!1856664) key!4653)))))

(declare-fun d!1492813 () Bool)

(declare-fun lt!1857053 () List!52599)

(assert (=> d!1492813 (not (containsKey!3113 lt!1857053 key!4653))))

(assert (=> d!1492813 (= lt!1857053 e!2929377)))

(declare-fun c!802782 () Bool)

(assert (=> d!1492813 (= c!802782 (and ((_ is Cons!52475) lt!1856664) (= (_1!30247 (h!58738 lt!1856664)) key!4653)))))

(assert (=> d!1492813 (noDuplicateKeys!1878 lt!1856664)))

(assert (=> d!1492813 (= (removePairForKey!1473 lt!1856664 key!4653) lt!1857053)))

(assert (= (and d!1492813 c!802782) b!4695826))

(assert (= (and d!1492813 (not c!802782)) b!4695827))

(assert (= (and b!4695827 c!802781) b!4695828))

(assert (= (and b!4695827 (not c!802781)) b!4695829))

(declare-fun m!5604107 () Bool)

(assert (=> b!4695828 m!5604107))

(declare-fun m!5604109 () Bool)

(assert (=> d!1492813 m!5604109))

(declare-fun m!5604111 () Bool)

(assert (=> d!1492813 m!5604111))

(assert (=> b!4695514 d!1492813))

(declare-fun d!1492815 () Bool)

(assert (=> d!1492815 (= (tail!8660 newBucket!218) (t!359793 newBucket!218))))

(assert (=> b!4695514 d!1492815))

(declare-fun d!1492817 () Bool)

(assert (=> d!1492817 (= (tail!8660 oldBucket!34) (t!359793 oldBucket!34))))

(assert (=> b!4695514 d!1492817))

(declare-fun b!4695830 () Bool)

(declare-fun e!2929379 () List!52599)

(assert (=> b!4695830 (= e!2929379 (t!359793 (t!359793 oldBucket!34)))))

(declare-fun b!4695831 () Bool)

(declare-fun e!2929378 () List!52599)

(assert (=> b!4695831 (= e!2929379 e!2929378)))

(declare-fun c!802783 () Bool)

(assert (=> b!4695831 (= c!802783 ((_ is Cons!52475) (t!359793 oldBucket!34)))))

(declare-fun b!4695833 () Bool)

(assert (=> b!4695833 (= e!2929378 Nil!52475)))

(declare-fun b!4695832 () Bool)

(assert (=> b!4695832 (= e!2929378 (Cons!52475 (h!58738 (t!359793 oldBucket!34)) (removePairForKey!1473 (t!359793 (t!359793 oldBucket!34)) key!4653)))))

(declare-fun d!1492819 () Bool)

(declare-fun lt!1857054 () List!52599)

(assert (=> d!1492819 (not (containsKey!3113 lt!1857054 key!4653))))

(assert (=> d!1492819 (= lt!1857054 e!2929379)))

(declare-fun c!802784 () Bool)

(assert (=> d!1492819 (= c!802784 (and ((_ is Cons!52475) (t!359793 oldBucket!34)) (= (_1!30247 (h!58738 (t!359793 oldBucket!34))) key!4653)))))

(assert (=> d!1492819 (noDuplicateKeys!1878 (t!359793 oldBucket!34))))

(assert (=> d!1492819 (= (removePairForKey!1473 (t!359793 oldBucket!34) key!4653) lt!1857054)))

(assert (= (and d!1492819 c!802784) b!4695830))

(assert (= (and d!1492819 (not c!802784)) b!4695831))

(assert (= (and b!4695831 c!802783) b!4695832))

(assert (= (and b!4695831 (not c!802783)) b!4695833))

(declare-fun m!5604113 () Bool)

(assert (=> b!4695832 m!5604113))

(declare-fun m!5604115 () Bool)

(assert (=> d!1492819 m!5604115))

(assert (=> d!1492819 m!5604103))

(assert (=> b!4695504 d!1492819))

(declare-fun d!1492821 () Bool)

(declare-fun content!9214 (List!52599) (InoxSet tuple2!53906))

(assert (=> d!1492821 (= (eq!1037 lt!1856646 lt!1856649) (= (content!9214 (toList!5645 lt!1856646)) (content!9214 (toList!5645 lt!1856649))))))

(declare-fun bs!1090933 () Bool)

(assert (= bs!1090933 d!1492821))

(declare-fun m!5604117 () Bool)

(assert (=> bs!1090933 m!5604117))

(declare-fun m!5604119 () Bool)

(assert (=> bs!1090933 m!5604119))

(assert (=> b!4695525 d!1492821))

(declare-fun d!1492823 () Bool)

(assert (=> d!1492823 (= (eq!1037 lt!1856648 lt!1856668) (= (content!9214 (toList!5645 lt!1856648)) (content!9214 (toList!5645 lt!1856668))))))

(declare-fun bs!1090934 () Bool)

(assert (= bs!1090934 d!1492823))

(declare-fun m!5604121 () Bool)

(assert (=> bs!1090934 m!5604121))

(declare-fun m!5604123 () Bool)

(assert (=> bs!1090934 m!5604123))

(assert (=> b!4695516 d!1492823))

(declare-fun d!1492825 () Bool)

(declare-fun e!2929382 () Bool)

(assert (=> d!1492825 e!2929382))

(declare-fun res!1981638 () Bool)

(assert (=> d!1492825 (=> (not res!1981638) (not e!2929382))))

(declare-fun lt!1857057 () ListMap!5009)

(assert (=> d!1492825 (= res!1981638 (not (contains!15716 lt!1857057 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!349 (List!52599 K!13845) List!52599)

(assert (=> d!1492825 (= lt!1857057 (ListMap!5010 (removePresrvNoDuplicatedKeys!349 (toList!5645 lt!1856660) key!4653)))))

(assert (=> d!1492825 (= (-!682 lt!1856660 key!4653) lt!1857057)))

(declare-fun b!4695836 () Bool)

(declare-datatypes ((List!52602 0))(
  ( (Nil!52478) (Cons!52478 (h!58743 K!13845) (t!359798 List!52602)) )
))
(declare-fun content!9215 (List!52602) (InoxSet K!13845))

(declare-fun keys!18755 (ListMap!5009) List!52602)

(assert (=> b!4695836 (= e!2929382 (= ((_ map and) (content!9215 (keys!18755 lt!1856660)) ((_ map not) (store ((as const (Array K!13845 Bool)) false) key!4653 true))) (content!9215 (keys!18755 lt!1857057))))))

(assert (= (and d!1492825 res!1981638) b!4695836))

(declare-fun m!5604125 () Bool)

(assert (=> d!1492825 m!5604125))

(declare-fun m!5604127 () Bool)

(assert (=> d!1492825 m!5604127))

(declare-fun m!5604129 () Bool)

(assert (=> b!4695836 m!5604129))

(declare-fun m!5604131 () Bool)

(assert (=> b!4695836 m!5604131))

(assert (=> b!4695836 m!5604129))

(declare-fun m!5604133 () Bool)

(assert (=> b!4695836 m!5604133))

(declare-fun m!5604135 () Bool)

(assert (=> b!4695836 m!5604135))

(assert (=> b!4695836 m!5604131))

(declare-fun m!5604137 () Bool)

(assert (=> b!4695836 m!5604137))

(assert (=> b!4695516 d!1492825))

(declare-fun bs!1090935 () Bool)

(declare-fun d!1492827 () Bool)

(assert (= bs!1090935 (and d!1492827 start!475592)))

(declare-fun lambda!208797 () Int)

(assert (=> bs!1090935 (= lambda!208797 lambda!208681)))

(declare-fun bs!1090936 () Bool)

(assert (= bs!1090936 (and d!1492827 d!1492723)))

(assert (=> bs!1090936 (= lambda!208797 lambda!208774)))

(declare-fun bs!1090937 () Bool)

(assert (= bs!1090937 (and d!1492827 d!1492759)))

(assert (=> bs!1090937 (= lambda!208797 lambda!208782)))

(declare-fun bs!1090938 () Bool)

(assert (= bs!1090938 (and d!1492827 d!1492761)))

(assert (=> bs!1090938 (= lambda!208797 lambda!208796)))

(declare-fun lt!1857058 () ListMap!5009)

(assert (=> d!1492827 (invariantList!1428 (toList!5645 lt!1857058))))

(declare-fun e!2929383 () ListMap!5009)

(assert (=> d!1492827 (= lt!1857058 e!2929383)))

(declare-fun c!802785 () Bool)

(assert (=> d!1492827 (= c!802785 ((_ is Cons!52476) (Cons!52476 lt!1856658 lt!1856647)))))

(assert (=> d!1492827 (forall!11363 (Cons!52476 lt!1856658 lt!1856647) lambda!208797)))

(assert (=> d!1492827 (= (extractMap!1904 (Cons!52476 lt!1856658 lt!1856647)) lt!1857058)))

(declare-fun b!4695837 () Bool)

(assert (=> b!4695837 (= e!2929383 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (Cons!52476 lt!1856658 lt!1856647))) (extractMap!1904 (t!359794 (Cons!52476 lt!1856658 lt!1856647)))))))

(declare-fun b!4695838 () Bool)

(assert (=> b!4695838 (= e!2929383 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492827 c!802785) b!4695837))

(assert (= (and d!1492827 (not c!802785)) b!4695838))

(declare-fun m!5604139 () Bool)

(assert (=> d!1492827 m!5604139))

(declare-fun m!5604141 () Bool)

(assert (=> d!1492827 m!5604141))

(declare-fun m!5604143 () Bool)

(assert (=> b!4695837 m!5604143))

(assert (=> b!4695837 m!5604143))

(declare-fun m!5604145 () Bool)

(assert (=> b!4695837 m!5604145))

(assert (=> b!4695516 d!1492827))

(declare-fun bs!1090939 () Bool)

(declare-fun d!1492829 () Bool)

(assert (= bs!1090939 (and d!1492829 start!475592)))

(declare-fun lambda!208798 () Int)

(assert (=> bs!1090939 (= lambda!208798 lambda!208681)))

(declare-fun bs!1090940 () Bool)

(assert (= bs!1090940 (and d!1492829 d!1492723)))

(assert (=> bs!1090940 (= lambda!208798 lambda!208774)))

(declare-fun bs!1090941 () Bool)

(assert (= bs!1090941 (and d!1492829 d!1492759)))

(assert (=> bs!1090941 (= lambda!208798 lambda!208782)))

(declare-fun bs!1090942 () Bool)

(assert (= bs!1090942 (and d!1492829 d!1492827)))

(assert (=> bs!1090942 (= lambda!208798 lambda!208797)))

(declare-fun bs!1090943 () Bool)

(assert (= bs!1090943 (and d!1492829 d!1492761)))

(assert (=> bs!1090943 (= lambda!208798 lambda!208796)))

(declare-fun lt!1857059 () ListMap!5009)

(assert (=> d!1492829 (invariantList!1428 (toList!5645 lt!1857059))))

(declare-fun e!2929384 () ListMap!5009)

(assert (=> d!1492829 (= lt!1857059 e!2929384)))

(declare-fun c!802786 () Bool)

(assert (=> d!1492829 (= c!802786 ((_ is Cons!52476) (Cons!52476 lt!1856659 lt!1856647)))))

(assert (=> d!1492829 (forall!11363 (Cons!52476 lt!1856659 lt!1856647) lambda!208798)))

(assert (=> d!1492829 (= (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)) lt!1857059)))

(declare-fun b!4695839 () Bool)

(assert (=> b!4695839 (= e!2929384 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (Cons!52476 lt!1856659 lt!1856647))) (extractMap!1904 (t!359794 (Cons!52476 lt!1856659 lt!1856647)))))))

(declare-fun b!4695840 () Bool)

(assert (=> b!4695840 (= e!2929384 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492829 c!802786) b!4695839))

(assert (= (and d!1492829 (not c!802786)) b!4695840))

(declare-fun m!5604147 () Bool)

(assert (=> d!1492829 m!5604147))

(declare-fun m!5604149 () Bool)

(assert (=> d!1492829 m!5604149))

(declare-fun m!5604151 () Bool)

(assert (=> b!4695839 m!5604151))

(assert (=> b!4695839 m!5604151))

(declare-fun m!5604153 () Bool)

(assert (=> b!4695839 m!5604153))

(assert (=> b!4695516 d!1492829))

(declare-fun bs!1090956 () Bool)

(declare-fun d!1492831 () Bool)

(assert (= bs!1090956 (and d!1492831 start!475592)))

(declare-fun lambda!208808 () Int)

(assert (=> bs!1090956 (= lambda!208808 lambda!208681)))

(declare-fun bs!1090957 () Bool)

(assert (= bs!1090957 (and d!1492831 d!1492829)))

(assert (=> bs!1090957 (= lambda!208808 lambda!208798)))

(declare-fun bs!1090958 () Bool)

(assert (= bs!1090958 (and d!1492831 d!1492723)))

(assert (=> bs!1090958 (= lambda!208808 lambda!208774)))

(declare-fun bs!1090959 () Bool)

(assert (= bs!1090959 (and d!1492831 d!1492759)))

(assert (=> bs!1090959 (= lambda!208808 lambda!208782)))

(declare-fun bs!1090960 () Bool)

(assert (= bs!1090960 (and d!1492831 d!1492827)))

(assert (=> bs!1090960 (= lambda!208808 lambda!208797)))

(declare-fun bs!1090961 () Bool)

(assert (= bs!1090961 (and d!1492831 d!1492761)))

(assert (=> bs!1090961 (= lambda!208808 lambda!208796)))

(assert (=> d!1492831 (eq!1037 (extractMap!1904 (Cons!52476 (tuple2!53909 hash!405 lt!1856657) (tail!8661 (toList!5646 lt!1856640)))) (-!682 (extractMap!1904 (Cons!52476 (tuple2!53909 hash!405 (t!359793 oldBucket!34)) (tail!8661 (toList!5646 lt!1856640)))) key!4653))))

(declare-fun lt!1857095 () Unit!125153)

(declare-fun choose!32727 (ListLongMap!4175 (_ BitVec 64) List!52599 List!52599 K!13845 Hashable!6247) Unit!125153)

(assert (=> d!1492831 (= lt!1857095 (choose!32727 lt!1856640 hash!405 (t!359793 oldBucket!34) lt!1856657 key!4653 hashF!1323))))

(assert (=> d!1492831 (forall!11363 (toList!5646 lt!1856640) lambda!208808)))

(assert (=> d!1492831 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!52 lt!1856640 hash!405 (t!359793 oldBucket!34) lt!1856657 key!4653 hashF!1323) lt!1857095)))

(declare-fun bs!1090962 () Bool)

(assert (= bs!1090962 d!1492831))

(declare-fun m!5604213 () Bool)

(assert (=> bs!1090962 m!5604213))

(declare-fun m!5604215 () Bool)

(assert (=> bs!1090962 m!5604215))

(declare-fun m!5604217 () Bool)

(assert (=> bs!1090962 m!5604217))

(assert (=> bs!1090962 m!5604215))

(declare-fun m!5604219 () Bool)

(assert (=> bs!1090962 m!5604219))

(assert (=> bs!1090962 m!5604213))

(declare-fun m!5604221 () Bool)

(assert (=> bs!1090962 m!5604221))

(assert (=> bs!1090962 m!5604217))

(declare-fun m!5604223 () Bool)

(assert (=> bs!1090962 m!5604223))

(declare-fun m!5604225 () Bool)

(assert (=> bs!1090962 m!5604225))

(assert (=> b!4695516 d!1492831))

(declare-fun bs!1090963 () Bool)

(declare-fun d!1492841 () Bool)

(assert (= bs!1090963 (and d!1492841 start!475592)))

(declare-fun lambda!208809 () Int)

(assert (=> bs!1090963 (= lambda!208809 lambda!208681)))

(declare-fun bs!1090964 () Bool)

(assert (= bs!1090964 (and d!1492841 d!1492723)))

(assert (=> bs!1090964 (= lambda!208809 lambda!208774)))

(declare-fun bs!1090965 () Bool)

(assert (= bs!1090965 (and d!1492841 d!1492759)))

(assert (=> bs!1090965 (= lambda!208809 lambda!208782)))

(declare-fun bs!1090966 () Bool)

(assert (= bs!1090966 (and d!1492841 d!1492827)))

(assert (=> bs!1090966 (= lambda!208809 lambda!208797)))

(declare-fun bs!1090967 () Bool)

(assert (= bs!1090967 (and d!1492841 d!1492761)))

(assert (=> bs!1090967 (= lambda!208809 lambda!208796)))

(declare-fun bs!1090968 () Bool)

(assert (= bs!1090968 (and d!1492841 d!1492831)))

(assert (=> bs!1090968 (= lambda!208809 lambda!208808)))

(declare-fun bs!1090969 () Bool)

(assert (= bs!1090969 (and d!1492841 d!1492829)))

(assert (=> bs!1090969 (= lambda!208809 lambda!208798)))

(declare-fun lt!1857096 () ListMap!5009)

(assert (=> d!1492841 (invariantList!1428 (toList!5645 lt!1857096))))

(declare-fun e!2929394 () ListMap!5009)

(assert (=> d!1492841 (= lt!1857096 e!2929394)))

(declare-fun c!802787 () Bool)

(assert (=> d!1492841 (= c!802787 ((_ is Cons!52476) (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023)))))))

(assert (=> d!1492841 (forall!11363 (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023))) lambda!208809)))

(assert (=> d!1492841 (= (extractMap!1904 (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023)))) lt!1857096)))

(declare-fun b!4695858 () Bool)

(assert (=> b!4695858 (= e!2929394 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023))))) (extractMap!1904 (t!359794 (Cons!52476 lt!1856658 (t!359794 (toList!5646 lm!2023)))))))))

(declare-fun b!4695859 () Bool)

(assert (=> b!4695859 (= e!2929394 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492841 c!802787) b!4695858))

(assert (= (and d!1492841 (not c!802787)) b!4695859))

(declare-fun m!5604227 () Bool)

(assert (=> d!1492841 m!5604227))

(declare-fun m!5604229 () Bool)

(assert (=> d!1492841 m!5604229))

(declare-fun m!5604231 () Bool)

(assert (=> b!4695858 m!5604231))

(assert (=> b!4695858 m!5604231))

(declare-fun m!5604233 () Bool)

(assert (=> b!4695858 m!5604233))

(assert (=> b!4695516 d!1492841))

(declare-fun d!1492843 () Bool)

(assert (=> d!1492843 (= (tail!8661 lt!1856651) (t!359794 lt!1856651))))

(assert (=> b!4695516 d!1492843))

(declare-fun d!1492845 () Bool)

(declare-fun e!2929395 () Bool)

(assert (=> d!1492845 e!2929395))

(declare-fun res!1981656 () Bool)

(assert (=> d!1492845 (=> (not res!1981656) (not e!2929395))))

(declare-fun lt!1857097 () ListMap!5009)

(assert (=> d!1492845 (= res!1981656 (not (contains!15716 lt!1857097 key!4653)))))

(assert (=> d!1492845 (= lt!1857097 (ListMap!5010 (removePresrvNoDuplicatedKeys!349 (toList!5645 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647))) key!4653)))))

(assert (=> d!1492845 (= (-!682 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)) key!4653) lt!1857097)))

(declare-fun b!4695860 () Bool)

(assert (=> b!4695860 (= e!2929395 (= ((_ map and) (content!9215 (keys!18755 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)))) ((_ map not) (store ((as const (Array K!13845 Bool)) false) key!4653 true))) (content!9215 (keys!18755 lt!1857097))))))

(assert (= (and d!1492845 res!1981656) b!4695860))

(declare-fun m!5604235 () Bool)

(assert (=> d!1492845 m!5604235))

(declare-fun m!5604237 () Bool)

(assert (=> d!1492845 m!5604237))

(assert (=> b!4695860 m!5603509))

(declare-fun m!5604239 () Bool)

(assert (=> b!4695860 m!5604239))

(declare-fun m!5604241 () Bool)

(assert (=> b!4695860 m!5604241))

(assert (=> b!4695860 m!5604239))

(declare-fun m!5604243 () Bool)

(assert (=> b!4695860 m!5604243))

(assert (=> b!4695860 m!5604135))

(assert (=> b!4695860 m!5604241))

(declare-fun m!5604245 () Bool)

(assert (=> b!4695860 m!5604245))

(assert (=> b!4695516 d!1492845))

(declare-fun d!1492847 () Bool)

(assert (=> d!1492847 (= (eq!1037 (extractMap!1904 (Cons!52476 lt!1856658 lt!1856647)) (-!682 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)) key!4653)) (= (content!9214 (toList!5645 (extractMap!1904 (Cons!52476 lt!1856658 lt!1856647)))) (content!9214 (toList!5645 (-!682 (extractMap!1904 (Cons!52476 lt!1856659 lt!1856647)) key!4653)))))))

(declare-fun bs!1090970 () Bool)

(assert (= bs!1090970 d!1492847))

(declare-fun m!5604247 () Bool)

(assert (=> bs!1090970 m!5604247))

(declare-fun m!5604249 () Bool)

(assert (=> bs!1090970 m!5604249))

(assert (=> b!4695516 d!1492847))

(declare-fun d!1492849 () Bool)

(declare-fun res!1981661 () Bool)

(declare-fun e!2929400 () Bool)

(assert (=> d!1492849 (=> res!1981661 e!2929400)))

(assert (=> d!1492849 (= res!1981661 ((_ is Nil!52476) (toList!5646 lm!2023)))))

(assert (=> d!1492849 (= (forall!11363 (toList!5646 lm!2023) lambda!208681) e!2929400)))

(declare-fun b!4695865 () Bool)

(declare-fun e!2929401 () Bool)

(assert (=> b!4695865 (= e!2929400 e!2929401)))

(declare-fun res!1981662 () Bool)

(assert (=> b!4695865 (=> (not res!1981662) (not e!2929401))))

(assert (=> b!4695865 (= res!1981662 (dynLambda!21730 lambda!208681 (h!58739 (toList!5646 lm!2023))))))

(declare-fun b!4695866 () Bool)

(assert (=> b!4695866 (= e!2929401 (forall!11363 (t!359794 (toList!5646 lm!2023)) lambda!208681))))

(assert (= (and d!1492849 (not res!1981661)) b!4695865))

(assert (= (and b!4695865 res!1981662) b!4695866))

(declare-fun b_lambda!177187 () Bool)

(assert (=> (not b_lambda!177187) (not b!4695865)))

(declare-fun m!5604251 () Bool)

(assert (=> b!4695865 m!5604251))

(declare-fun m!5604253 () Bool)

(assert (=> b!4695866 m!5604253))

(assert (=> start!475592 d!1492849))

(declare-fun d!1492851 () Bool)

(declare-fun isStrictlySorted!667 (List!52600) Bool)

(assert (=> d!1492851 (= (inv!67719 lm!2023) (isStrictlySorted!667 (toList!5646 lm!2023)))))

(declare-fun bs!1090971 () Bool)

(assert (= bs!1090971 d!1492851))

(declare-fun m!5604255 () Bool)

(assert (=> bs!1090971 m!5604255))

(assert (=> start!475592 d!1492851))

(declare-fun b!4695904 () Bool)

(declare-fun e!2929427 () Bool)

(declare-fun e!2929429 () Bool)

(assert (=> b!4695904 (= e!2929427 e!2929429)))

(declare-fun res!1981672 () Bool)

(assert (=> b!4695904 (=> (not res!1981672) (not e!2929429))))

(declare-datatypes ((Option!12140 0))(
  ( (None!12139) (Some!12139 (v!46594 V!14091)) )
))
(declare-fun isDefined!9395 (Option!12140) Bool)

(declare-fun getValueByKey!1816 (List!52599 K!13845) Option!12140)

(assert (=> b!4695904 (= res!1981672 (isDefined!9395 (getValueByKey!1816 (toList!5645 lt!1856660) key!4653)))))

(declare-fun b!4695905 () Bool)

(declare-fun e!2929428 () Unit!125153)

(declare-fun e!2929430 () Unit!125153)

(assert (=> b!4695905 (= e!2929428 e!2929430)))

(declare-fun c!802796 () Bool)

(declare-fun call!328244 () Bool)

(assert (=> b!4695905 (= c!802796 call!328244)))

(declare-fun b!4695906 () Bool)

(declare-fun e!2929426 () List!52602)

(assert (=> b!4695906 (= e!2929426 (keys!18755 lt!1856660))))

(declare-fun b!4695907 () Bool)

(declare-fun lt!1857124 () Unit!125153)

(assert (=> b!4695907 (= e!2929428 lt!1857124)))

(declare-fun lt!1857120 () Unit!125153)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1708 (List!52599 K!13845) Unit!125153)

(assert (=> b!4695907 (= lt!1857120 (lemmaContainsKeyImpliesGetValueByKeyDefined!1708 (toList!5645 lt!1856660) key!4653))))

(assert (=> b!4695907 (isDefined!9395 (getValueByKey!1816 (toList!5645 lt!1856660) key!4653))))

(declare-fun lt!1857125 () Unit!125153)

(assert (=> b!4695907 (= lt!1857125 lt!1857120)))

(declare-fun lemmaInListThenGetKeysListContains!863 (List!52599 K!13845) Unit!125153)

(assert (=> b!4695907 (= lt!1857124 (lemmaInListThenGetKeysListContains!863 (toList!5645 lt!1856660) key!4653))))

(assert (=> b!4695907 call!328244))

(declare-fun b!4695908 () Bool)

(declare-fun e!2929425 () Bool)

(declare-fun contains!15722 (List!52602 K!13845) Bool)

(assert (=> b!4695908 (= e!2929425 (not (contains!15722 (keys!18755 lt!1856660) key!4653)))))

(declare-fun bm!328239 () Bool)

(assert (=> bm!328239 (= call!328244 (contains!15722 e!2929426 key!4653))))

(declare-fun c!802797 () Bool)

(declare-fun c!802798 () Bool)

(assert (=> bm!328239 (= c!802797 c!802798)))

(declare-fun d!1492853 () Bool)

(assert (=> d!1492853 e!2929427))

(declare-fun res!1981673 () Bool)

(assert (=> d!1492853 (=> res!1981673 e!2929427)))

(assert (=> d!1492853 (= res!1981673 e!2929425)))

(declare-fun res!1981671 () Bool)

(assert (=> d!1492853 (=> (not res!1981671) (not e!2929425))))

(declare-fun lt!1857122 () Bool)

(assert (=> d!1492853 (= res!1981671 (not lt!1857122))))

(declare-fun lt!1857121 () Bool)

(assert (=> d!1492853 (= lt!1857122 lt!1857121)))

(declare-fun lt!1857119 () Unit!125153)

(assert (=> d!1492853 (= lt!1857119 e!2929428)))

(assert (=> d!1492853 (= c!802798 lt!1857121)))

(declare-fun containsKey!3116 (List!52599 K!13845) Bool)

(assert (=> d!1492853 (= lt!1857121 (containsKey!3116 (toList!5645 lt!1856660) key!4653))))

(assert (=> d!1492853 (= (contains!15716 lt!1856660 key!4653) lt!1857122)))

(declare-fun b!4695909 () Bool)

(declare-fun getKeysList!868 (List!52599) List!52602)

(assert (=> b!4695909 (= e!2929426 (getKeysList!868 (toList!5645 lt!1856660)))))

(declare-fun b!4695910 () Bool)

(assert (=> b!4695910 false))

(declare-fun lt!1857123 () Unit!125153)

(declare-fun lt!1857118 () Unit!125153)

(assert (=> b!4695910 (= lt!1857123 lt!1857118)))

(assert (=> b!4695910 (containsKey!3116 (toList!5645 lt!1856660) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!867 (List!52599 K!13845) Unit!125153)

(assert (=> b!4695910 (= lt!1857118 (lemmaInGetKeysListThenContainsKey!867 (toList!5645 lt!1856660) key!4653))))

(declare-fun Unit!125203 () Unit!125153)

(assert (=> b!4695910 (= e!2929430 Unit!125203)))

(declare-fun b!4695911 () Bool)

(declare-fun Unit!125204 () Unit!125153)

(assert (=> b!4695911 (= e!2929430 Unit!125204)))

(declare-fun b!4695912 () Bool)

(assert (=> b!4695912 (= e!2929429 (contains!15722 (keys!18755 lt!1856660) key!4653))))

(assert (= (and d!1492853 c!802798) b!4695907))

(assert (= (and d!1492853 (not c!802798)) b!4695905))

(assert (= (and b!4695905 c!802796) b!4695910))

(assert (= (and b!4695905 (not c!802796)) b!4695911))

(assert (= (or b!4695907 b!4695905) bm!328239))

(assert (= (and bm!328239 c!802797) b!4695909))

(assert (= (and bm!328239 (not c!802797)) b!4695906))

(assert (= (and d!1492853 res!1981671) b!4695908))

(assert (= (and d!1492853 (not res!1981673)) b!4695904))

(assert (= (and b!4695904 res!1981672) b!4695912))

(assert (=> b!4695912 m!5604129))

(assert (=> b!4695912 m!5604129))

(declare-fun m!5604287 () Bool)

(assert (=> b!4695912 m!5604287))

(declare-fun m!5604289 () Bool)

(assert (=> b!4695910 m!5604289))

(declare-fun m!5604291 () Bool)

(assert (=> b!4695910 m!5604291))

(declare-fun m!5604293 () Bool)

(assert (=> b!4695904 m!5604293))

(assert (=> b!4695904 m!5604293))

(declare-fun m!5604295 () Bool)

(assert (=> b!4695904 m!5604295))

(assert (=> b!4695906 m!5604129))

(declare-fun m!5604297 () Bool)

(assert (=> b!4695909 m!5604297))

(assert (=> d!1492853 m!5604289))

(declare-fun m!5604299 () Bool)

(assert (=> b!4695907 m!5604299))

(assert (=> b!4695907 m!5604293))

(assert (=> b!4695907 m!5604293))

(assert (=> b!4695907 m!5604295))

(declare-fun m!5604301 () Bool)

(assert (=> b!4695907 m!5604301))

(assert (=> b!4695908 m!5604129))

(assert (=> b!4695908 m!5604129))

(assert (=> b!4695908 m!5604287))

(declare-fun m!5604303 () Bool)

(assert (=> bm!328239 m!5604303))

(assert (=> b!4695505 d!1492853))

(declare-fun bs!1091009 () Bool)

(declare-fun b!4695914 () Bool)

(assert (= bs!1091009 (and b!4695914 b!4695645)))

(declare-fun lambda!208814 () Int)

(assert (=> bs!1091009 (= lambda!208814 lambda!208760)))

(declare-fun bs!1091010 () Bool)

(assert (= bs!1091010 (and b!4695914 b!4695647)))

(assert (=> bs!1091010 (= lambda!208814 lambda!208762)))

(assert (=> bs!1091010 (= (= lt!1856644 lt!1856876) (= lambda!208814 lambda!208763))))

(declare-fun bs!1091011 () Bool)

(assert (= bs!1091011 (and b!4695914 d!1492675)))

(assert (=> bs!1091011 (= (= lt!1856644 lt!1856881) (= lambda!208814 lambda!208765))))

(assert (=> b!4695914 true))

(declare-fun bs!1091012 () Bool)

(declare-fun b!4695916 () Bool)

(assert (= bs!1091012 (and b!4695916 b!4695645)))

(declare-fun lambda!208815 () Int)

(assert (=> bs!1091012 (= lambda!208815 lambda!208760)))

(declare-fun bs!1091013 () Bool)

(assert (= bs!1091013 (and b!4695916 b!4695647)))

(assert (=> bs!1091013 (= lambda!208815 lambda!208762)))

(declare-fun bs!1091014 () Bool)

(assert (= bs!1091014 (and b!4695916 d!1492675)))

(assert (=> bs!1091014 (= (= lt!1856644 lt!1856881) (= lambda!208815 lambda!208765))))

(assert (=> bs!1091013 (= (= lt!1856644 lt!1856876) (= lambda!208815 lambda!208763))))

(declare-fun bs!1091015 () Bool)

(assert (= bs!1091015 (and b!4695916 b!4695914)))

(assert (=> bs!1091015 (= lambda!208815 lambda!208814)))

(assert (=> b!4695916 true))

(declare-fun lambda!208816 () Int)

(declare-fun lt!1857126 () ListMap!5009)

(assert (=> bs!1091012 (= (= lt!1857126 lt!1856644) (= lambda!208816 lambda!208760))))

(assert (=> bs!1091014 (= (= lt!1857126 lt!1856881) (= lambda!208816 lambda!208765))))

(assert (=> bs!1091013 (= (= lt!1857126 lt!1856876) (= lambda!208816 lambda!208763))))

(assert (=> bs!1091015 (= (= lt!1857126 lt!1856644) (= lambda!208816 lambda!208814))))

(assert (=> bs!1091013 (= (= lt!1857126 lt!1856644) (= lambda!208816 lambda!208762))))

(assert (=> b!4695916 (= (= lt!1857126 lt!1856644) (= lambda!208816 lambda!208815))))

(assert (=> b!4695916 true))

(declare-fun bs!1091016 () Bool)

(declare-fun d!1492877 () Bool)

(assert (= bs!1091016 (and d!1492877 b!4695645)))

(declare-fun lt!1857131 () ListMap!5009)

(declare-fun lambda!208817 () Int)

(assert (=> bs!1091016 (= (= lt!1857131 lt!1856644) (= lambda!208817 lambda!208760))))

(declare-fun bs!1091017 () Bool)

(assert (= bs!1091017 (and d!1492877 d!1492675)))

(assert (=> bs!1091017 (= (= lt!1857131 lt!1856881) (= lambda!208817 lambda!208765))))

(declare-fun bs!1091018 () Bool)

(assert (= bs!1091018 (and d!1492877 b!4695647)))

(assert (=> bs!1091018 (= (= lt!1857131 lt!1856876) (= lambda!208817 lambda!208763))))

(declare-fun bs!1091019 () Bool)

(assert (= bs!1091019 (and d!1492877 b!4695916)))

(assert (=> bs!1091019 (= (= lt!1857131 lt!1857126) (= lambda!208817 lambda!208816))))

(declare-fun bs!1091020 () Bool)

(assert (= bs!1091020 (and d!1492877 b!4695914)))

(assert (=> bs!1091020 (= (= lt!1857131 lt!1856644) (= lambda!208817 lambda!208814))))

(assert (=> bs!1091018 (= (= lt!1857131 lt!1856644) (= lambda!208817 lambda!208762))))

(assert (=> bs!1091019 (= (= lt!1857131 lt!1856644) (= lambda!208817 lambda!208815))))

(assert (=> d!1492877 true))

(declare-fun c!802799 () Bool)

(declare-fun call!328247 () Bool)

(declare-fun bm!328240 () Bool)

(assert (=> bm!328240 (= call!328247 (forall!11365 (toList!5645 lt!1856644) (ite c!802799 lambda!208814 lambda!208816)))))

(declare-fun b!4695913 () Bool)

(declare-fun res!1981674 () Bool)

(declare-fun e!2929433 () Bool)

(assert (=> b!4695913 (=> (not res!1981674) (not e!2929433))))

(assert (=> b!4695913 (= res!1981674 (forall!11365 (toList!5645 lt!1856644) lambda!208817))))

(declare-fun e!2929432 () ListMap!5009)

(assert (=> b!4695914 (= e!2929432 lt!1856644)))

(declare-fun lt!1857139 () Unit!125153)

(declare-fun call!328246 () Unit!125153)

(assert (=> b!4695914 (= lt!1857139 call!328246)))

(assert (=> b!4695914 call!328247))

(declare-fun lt!1857140 () Unit!125153)

(assert (=> b!4695914 (= lt!1857140 lt!1857139)))

(declare-fun call!328245 () Bool)

(assert (=> b!4695914 call!328245))

(declare-fun lt!1857129 () Unit!125153)

(declare-fun Unit!125215 () Unit!125153)

(assert (=> b!4695914 (= lt!1857129 Unit!125215)))

(declare-fun b!4695915 () Bool)

(assert (=> b!4695915 (= e!2929433 (invariantList!1428 (toList!5645 lt!1857131)))))

(assert (=> b!4695916 (= e!2929432 lt!1857126)))

(declare-fun lt!1857142 () ListMap!5009)

(assert (=> b!4695916 (= lt!1857142 (+!2162 lt!1856644 (h!58738 (Cons!52475 lt!1856653 lt!1856664))))))

(assert (=> b!4695916 (= lt!1857126 (addToMapMapFromBucket!1310 (t!359793 (Cons!52475 lt!1856653 lt!1856664)) (+!2162 lt!1856644 (h!58738 (Cons!52475 lt!1856653 lt!1856664)))))))

(declare-fun lt!1857135 () Unit!125153)

(assert (=> b!4695916 (= lt!1857135 call!328246)))

(assert (=> b!4695916 (forall!11365 (toList!5645 lt!1856644) lambda!208815)))

(declare-fun lt!1857144 () Unit!125153)

(assert (=> b!4695916 (= lt!1857144 lt!1857135)))

(assert (=> b!4695916 (forall!11365 (toList!5645 lt!1857142) lambda!208816)))

(declare-fun lt!1857127 () Unit!125153)

(declare-fun Unit!125216 () Unit!125153)

(assert (=> b!4695916 (= lt!1857127 Unit!125216)))

(assert (=> b!4695916 (forall!11365 (t!359793 (Cons!52475 lt!1856653 lt!1856664)) lambda!208816)))

(declare-fun lt!1857137 () Unit!125153)

(declare-fun Unit!125217 () Unit!125153)

(assert (=> b!4695916 (= lt!1857137 Unit!125217)))

(declare-fun lt!1857128 () Unit!125153)

(declare-fun Unit!125218 () Unit!125153)

(assert (=> b!4695916 (= lt!1857128 Unit!125218)))

(declare-fun lt!1857138 () Unit!125153)

(assert (=> b!4695916 (= lt!1857138 (forallContained!3472 (toList!5645 lt!1857142) lambda!208816 (h!58738 (Cons!52475 lt!1856653 lt!1856664))))))

(assert (=> b!4695916 (contains!15716 lt!1857142 (_1!30247 (h!58738 (Cons!52475 lt!1856653 lt!1856664))))))

(declare-fun lt!1857145 () Unit!125153)

(declare-fun Unit!125219 () Unit!125153)

(assert (=> b!4695916 (= lt!1857145 Unit!125219)))

(assert (=> b!4695916 (contains!15716 lt!1857126 (_1!30247 (h!58738 (Cons!52475 lt!1856653 lt!1856664))))))

(declare-fun lt!1857130 () Unit!125153)

(declare-fun Unit!125220 () Unit!125153)

(assert (=> b!4695916 (= lt!1857130 Unit!125220)))

(assert (=> b!4695916 call!328245))

(declare-fun lt!1857136 () Unit!125153)

(declare-fun Unit!125221 () Unit!125153)

(assert (=> b!4695916 (= lt!1857136 Unit!125221)))

(assert (=> b!4695916 (forall!11365 (toList!5645 lt!1857142) lambda!208816)))

(declare-fun lt!1857134 () Unit!125153)

(declare-fun Unit!125222 () Unit!125153)

(assert (=> b!4695916 (= lt!1857134 Unit!125222)))

(declare-fun lt!1857141 () Unit!125153)

(declare-fun Unit!125223 () Unit!125153)

(assert (=> b!4695916 (= lt!1857141 Unit!125223)))

(declare-fun lt!1857146 () Unit!125153)

(assert (=> b!4695916 (= lt!1857146 (addForallContainsKeyThenBeforeAdding!715 lt!1856644 lt!1857126 (_1!30247 (h!58738 (Cons!52475 lt!1856653 lt!1856664))) (_2!30247 (h!58738 (Cons!52475 lt!1856653 lt!1856664)))))))

(assert (=> b!4695916 call!328247))

(declare-fun lt!1857143 () Unit!125153)

(assert (=> b!4695916 (= lt!1857143 lt!1857146)))

(assert (=> b!4695916 (forall!11365 (toList!5645 lt!1856644) lambda!208816)))

(declare-fun lt!1857132 () Unit!125153)

(declare-fun Unit!125224 () Unit!125153)

(assert (=> b!4695916 (= lt!1857132 Unit!125224)))

(declare-fun res!1981675 () Bool)

(assert (=> b!4695916 (= res!1981675 (forall!11365 (Cons!52475 lt!1856653 lt!1856664) lambda!208816))))

(declare-fun e!2929431 () Bool)

(assert (=> b!4695916 (=> (not res!1981675) (not e!2929431))))

(assert (=> b!4695916 e!2929431))

(declare-fun lt!1857133 () Unit!125153)

(declare-fun Unit!125225 () Unit!125153)

(assert (=> b!4695916 (= lt!1857133 Unit!125225)))

(declare-fun b!4695917 () Bool)

(assert (=> b!4695917 (= e!2929431 (forall!11365 (toList!5645 lt!1856644) lambda!208816))))

(assert (=> d!1492877 e!2929433))

(declare-fun res!1981676 () Bool)

(assert (=> d!1492877 (=> (not res!1981676) (not e!2929433))))

(assert (=> d!1492877 (= res!1981676 (forall!11365 (Cons!52475 lt!1856653 lt!1856664) lambda!208817))))

(assert (=> d!1492877 (= lt!1857131 e!2929432)))

(assert (=> d!1492877 (= c!802799 ((_ is Nil!52475) (Cons!52475 lt!1856653 lt!1856664)))))

(assert (=> d!1492877 (noDuplicateKeys!1878 (Cons!52475 lt!1856653 lt!1856664))))

(assert (=> d!1492877 (= (addToMapMapFromBucket!1310 (Cons!52475 lt!1856653 lt!1856664) lt!1856644) lt!1857131)))

(declare-fun bm!328241 () Bool)

(assert (=> bm!328241 (= call!328246 (lemmaContainsAllItsOwnKeys!716 lt!1856644))))

(declare-fun bm!328242 () Bool)

(assert (=> bm!328242 (= call!328245 (forall!11365 (ite c!802799 (toList!5645 lt!1856644) (Cons!52475 lt!1856653 lt!1856664)) (ite c!802799 lambda!208814 lambda!208816)))))

(assert (= (and d!1492877 c!802799) b!4695914))

(assert (= (and d!1492877 (not c!802799)) b!4695916))

(assert (= (and b!4695916 res!1981675) b!4695917))

(assert (= (or b!4695914 b!4695916) bm!328241))

(assert (= (or b!4695914 b!4695916) bm!328242))

(assert (= (or b!4695914 b!4695916) bm!328240))

(assert (= (and d!1492877 res!1981676) b!4695913))

(assert (= (and b!4695913 res!1981674) b!4695915))

(assert (=> bm!328241 m!5603743))

(declare-fun m!5604305 () Bool)

(assert (=> b!4695916 m!5604305))

(declare-fun m!5604307 () Bool)

(assert (=> b!4695916 m!5604307))

(declare-fun m!5604309 () Bool)

(assert (=> b!4695916 m!5604309))

(declare-fun m!5604311 () Bool)

(assert (=> b!4695916 m!5604311))

(declare-fun m!5604313 () Bool)

(assert (=> b!4695916 m!5604313))

(declare-fun m!5604315 () Bool)

(assert (=> b!4695916 m!5604315))

(declare-fun m!5604317 () Bool)

(assert (=> b!4695916 m!5604317))

(declare-fun m!5604319 () Bool)

(assert (=> b!4695916 m!5604319))

(assert (=> b!4695916 m!5604317))

(declare-fun m!5604321 () Bool)

(assert (=> b!4695916 m!5604321))

(assert (=> b!4695916 m!5604309))

(declare-fun m!5604323 () Bool)

(assert (=> b!4695916 m!5604323))

(declare-fun m!5604325 () Bool)

(assert (=> b!4695916 m!5604325))

(declare-fun m!5604327 () Bool)

(assert (=> d!1492877 m!5604327))

(declare-fun m!5604329 () Bool)

(assert (=> d!1492877 m!5604329))

(declare-fun m!5604331 () Bool)

(assert (=> bm!328242 m!5604331))

(declare-fun m!5604333 () Bool)

(assert (=> b!4695913 m!5604333))

(declare-fun m!5604335 () Bool)

(assert (=> b!4695915 m!5604335))

(declare-fun m!5604337 () Bool)

(assert (=> bm!328240 m!5604337))

(assert (=> b!4695917 m!5604325))

(assert (=> b!4695505 d!1492877))

(declare-fun d!1492879 () Bool)

(declare-fun e!2929436 () Bool)

(assert (=> d!1492879 e!2929436))

(declare-fun res!1981682 () Bool)

(assert (=> d!1492879 (=> (not res!1981682) (not e!2929436))))

(declare-fun lt!1857158 () ListMap!5009)

(assert (=> d!1492879 (= res!1981682 (contains!15716 lt!1857158 (_1!30247 lt!1856653)))))

(declare-fun lt!1857157 () List!52599)

(assert (=> d!1492879 (= lt!1857158 (ListMap!5010 lt!1857157))))

(declare-fun lt!1857156 () Unit!125153)

(declare-fun lt!1857155 () Unit!125153)

(assert (=> d!1492879 (= lt!1857156 lt!1857155)))

(assert (=> d!1492879 (= (getValueByKey!1816 lt!1857157 (_1!30247 lt!1856653)) (Some!12139 (_2!30247 lt!1856653)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1018 (List!52599 K!13845 V!14091) Unit!125153)

(assert (=> d!1492879 (= lt!1857155 (lemmaContainsTupThenGetReturnValue!1018 lt!1857157 (_1!30247 lt!1856653) (_2!30247 lt!1856653)))))

(declare-fun insertNoDuplicatedKeys!526 (List!52599 K!13845 V!14091) List!52599)

(assert (=> d!1492879 (= lt!1857157 (insertNoDuplicatedKeys!526 (toList!5645 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644)) (_1!30247 lt!1856653) (_2!30247 lt!1856653)))))

(assert (=> d!1492879 (= (+!2162 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1856653) lt!1857158)))

(declare-fun b!4695922 () Bool)

(declare-fun res!1981681 () Bool)

(assert (=> b!4695922 (=> (not res!1981681) (not e!2929436))))

(assert (=> b!4695922 (= res!1981681 (= (getValueByKey!1816 (toList!5645 lt!1857158) (_1!30247 lt!1856653)) (Some!12139 (_2!30247 lt!1856653))))))

(declare-fun b!4695923 () Bool)

(assert (=> b!4695923 (= e!2929436 (contains!15721 (toList!5645 lt!1857158) lt!1856653))))

(assert (= (and d!1492879 res!1981682) b!4695922))

(assert (= (and b!4695922 res!1981681) b!4695923))

(declare-fun m!5604339 () Bool)

(assert (=> d!1492879 m!5604339))

(declare-fun m!5604341 () Bool)

(assert (=> d!1492879 m!5604341))

(declare-fun m!5604343 () Bool)

(assert (=> d!1492879 m!5604343))

(declare-fun m!5604345 () Bool)

(assert (=> d!1492879 m!5604345))

(declare-fun m!5604347 () Bool)

(assert (=> b!4695922 m!5604347))

(declare-fun m!5604349 () Bool)

(assert (=> b!4695923 m!5604349))

(assert (=> b!4695505 d!1492879))

(declare-fun d!1492881 () Bool)

(assert (=> d!1492881 (= (eq!1037 lt!1856663 (+!2162 lt!1856656 (h!58738 oldBucket!34))) (= (content!9214 (toList!5645 lt!1856663)) (content!9214 (toList!5645 (+!2162 lt!1856656 (h!58738 oldBucket!34))))))))

(declare-fun bs!1091021 () Bool)

(assert (= bs!1091021 d!1492881))

(declare-fun m!5604351 () Bool)

(assert (=> bs!1091021 m!5604351))

(declare-fun m!5604353 () Bool)

(assert (=> bs!1091021 m!5604353))

(assert (=> b!4695505 d!1492881))

(declare-fun bs!1091022 () Bool)

(declare-fun b!4695925 () Bool)

(assert (= bs!1091022 (and b!4695925 b!4695645)))

(declare-fun lambda!208818 () Int)

(assert (=> bs!1091022 (= lambda!208818 lambda!208760)))

(declare-fun bs!1091023 () Bool)

(assert (= bs!1091023 (and b!4695925 d!1492675)))

(assert (=> bs!1091023 (= (= lt!1856644 lt!1856881) (= lambda!208818 lambda!208765))))

(declare-fun bs!1091024 () Bool)

(assert (= bs!1091024 (and b!4695925 b!4695647)))

(assert (=> bs!1091024 (= (= lt!1856644 lt!1856876) (= lambda!208818 lambda!208763))))

(declare-fun bs!1091025 () Bool)

(assert (= bs!1091025 (and b!4695925 d!1492877)))

(assert (=> bs!1091025 (= (= lt!1856644 lt!1857131) (= lambda!208818 lambda!208817))))

(declare-fun bs!1091026 () Bool)

(assert (= bs!1091026 (and b!4695925 b!4695916)))

(assert (=> bs!1091026 (= (= lt!1856644 lt!1857126) (= lambda!208818 lambda!208816))))

(declare-fun bs!1091027 () Bool)

(assert (= bs!1091027 (and b!4695925 b!4695914)))

(assert (=> bs!1091027 (= lambda!208818 lambda!208814)))

(assert (=> bs!1091024 (= lambda!208818 lambda!208762)))

(assert (=> bs!1091026 (= lambda!208818 lambda!208815)))

(assert (=> b!4695925 true))

(declare-fun bs!1091028 () Bool)

(declare-fun b!4695927 () Bool)

(assert (= bs!1091028 (and b!4695927 b!4695645)))

(declare-fun lambda!208819 () Int)

(assert (=> bs!1091028 (= lambda!208819 lambda!208760)))

(declare-fun bs!1091029 () Bool)

(assert (= bs!1091029 (and b!4695927 d!1492675)))

(assert (=> bs!1091029 (= (= lt!1856644 lt!1856881) (= lambda!208819 lambda!208765))))

(declare-fun bs!1091030 () Bool)

(assert (= bs!1091030 (and b!4695927 b!4695647)))

(assert (=> bs!1091030 (= (= lt!1856644 lt!1856876) (= lambda!208819 lambda!208763))))

(declare-fun bs!1091031 () Bool)

(assert (= bs!1091031 (and b!4695927 b!4695916)))

(assert (=> bs!1091031 (= (= lt!1856644 lt!1857126) (= lambda!208819 lambda!208816))))

(declare-fun bs!1091032 () Bool)

(assert (= bs!1091032 (and b!4695927 b!4695914)))

(assert (=> bs!1091032 (= lambda!208819 lambda!208814)))

(assert (=> bs!1091030 (= lambda!208819 lambda!208762)))

(assert (=> bs!1091031 (= lambda!208819 lambda!208815)))

(declare-fun bs!1091033 () Bool)

(assert (= bs!1091033 (and b!4695927 d!1492877)))

(assert (=> bs!1091033 (= (= lt!1856644 lt!1857131) (= lambda!208819 lambda!208817))))

(declare-fun bs!1091034 () Bool)

(assert (= bs!1091034 (and b!4695927 b!4695925)))

(assert (=> bs!1091034 (= lambda!208819 lambda!208818)))

(assert (=> b!4695927 true))

(declare-fun lambda!208820 () Int)

(declare-fun lt!1857159 () ListMap!5009)

(assert (=> bs!1091028 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208760))))

(assert (=> bs!1091029 (= (= lt!1857159 lt!1856881) (= lambda!208820 lambda!208765))))

(assert (=> bs!1091030 (= (= lt!1857159 lt!1856876) (= lambda!208820 lambda!208763))))

(assert (=> b!4695927 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208819))))

(assert (=> bs!1091031 (= (= lt!1857159 lt!1857126) (= lambda!208820 lambda!208816))))

(assert (=> bs!1091032 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208814))))

(assert (=> bs!1091030 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208762))))

(assert (=> bs!1091031 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208815))))

(assert (=> bs!1091033 (= (= lt!1857159 lt!1857131) (= lambda!208820 lambda!208817))))

(assert (=> bs!1091034 (= (= lt!1857159 lt!1856644) (= lambda!208820 lambda!208818))))

(assert (=> b!4695927 true))

(declare-fun bs!1091035 () Bool)

(declare-fun d!1492883 () Bool)

(assert (= bs!1091035 (and d!1492883 b!4695645)))

(declare-fun lt!1857164 () ListMap!5009)

(declare-fun lambda!208821 () Int)

(assert (=> bs!1091035 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208760))))

(declare-fun bs!1091036 () Bool)

(assert (= bs!1091036 (and d!1492883 b!4695927)))

(assert (=> bs!1091036 (= (= lt!1857164 lt!1857159) (= lambda!208821 lambda!208820))))

(declare-fun bs!1091037 () Bool)

(assert (= bs!1091037 (and d!1492883 d!1492675)))

(assert (=> bs!1091037 (= (= lt!1857164 lt!1856881) (= lambda!208821 lambda!208765))))

(declare-fun bs!1091038 () Bool)

(assert (= bs!1091038 (and d!1492883 b!4695647)))

(assert (=> bs!1091038 (= (= lt!1857164 lt!1856876) (= lambda!208821 lambda!208763))))

(assert (=> bs!1091036 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208819))))

(declare-fun bs!1091039 () Bool)

(assert (= bs!1091039 (and d!1492883 b!4695916)))

(assert (=> bs!1091039 (= (= lt!1857164 lt!1857126) (= lambda!208821 lambda!208816))))

(declare-fun bs!1091040 () Bool)

(assert (= bs!1091040 (and d!1492883 b!4695914)))

(assert (=> bs!1091040 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208814))))

(assert (=> bs!1091038 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208762))))

(assert (=> bs!1091039 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208815))))

(declare-fun bs!1091041 () Bool)

(assert (= bs!1091041 (and d!1492883 d!1492877)))

(assert (=> bs!1091041 (= (= lt!1857164 lt!1857131) (= lambda!208821 lambda!208817))))

(declare-fun bs!1091042 () Bool)

(assert (= bs!1091042 (and d!1492883 b!4695925)))

(assert (=> bs!1091042 (= (= lt!1857164 lt!1856644) (= lambda!208821 lambda!208818))))

(assert (=> d!1492883 true))

(declare-fun call!328250 () Bool)

(declare-fun c!802800 () Bool)

(declare-fun bm!328243 () Bool)

(assert (=> bm!328243 (= call!328250 (forall!11365 (toList!5645 lt!1856644) (ite c!802800 lambda!208818 lambda!208820)))))

(declare-fun b!4695924 () Bool)

(declare-fun res!1981683 () Bool)

(declare-fun e!2929439 () Bool)

(assert (=> b!4695924 (=> (not res!1981683) (not e!2929439))))

(assert (=> b!4695924 (= res!1981683 (forall!11365 (toList!5645 lt!1856644) lambda!208821))))

(declare-fun e!2929438 () ListMap!5009)

(assert (=> b!4695925 (= e!2929438 lt!1856644)))

(declare-fun lt!1857172 () Unit!125153)

(declare-fun call!328249 () Unit!125153)

(assert (=> b!4695925 (= lt!1857172 call!328249)))

(assert (=> b!4695925 call!328250))

(declare-fun lt!1857173 () Unit!125153)

(assert (=> b!4695925 (= lt!1857173 lt!1857172)))

(declare-fun call!328248 () Bool)

(assert (=> b!4695925 call!328248))

(declare-fun lt!1857162 () Unit!125153)

(declare-fun Unit!125226 () Unit!125153)

(assert (=> b!4695925 (= lt!1857162 Unit!125226)))

(declare-fun b!4695926 () Bool)

(assert (=> b!4695926 (= e!2929439 (invariantList!1428 (toList!5645 lt!1857164)))))

(assert (=> b!4695927 (= e!2929438 lt!1857159)))

(declare-fun lt!1857175 () ListMap!5009)

(assert (=> b!4695927 (= lt!1857175 (+!2162 lt!1856644 (h!58738 (Cons!52475 lt!1856639 lt!1856657))))))

(assert (=> b!4695927 (= lt!1857159 (addToMapMapFromBucket!1310 (t!359793 (Cons!52475 lt!1856639 lt!1856657)) (+!2162 lt!1856644 (h!58738 (Cons!52475 lt!1856639 lt!1856657)))))))

(declare-fun lt!1857168 () Unit!125153)

(assert (=> b!4695927 (= lt!1857168 call!328249)))

(assert (=> b!4695927 (forall!11365 (toList!5645 lt!1856644) lambda!208819)))

(declare-fun lt!1857177 () Unit!125153)

(assert (=> b!4695927 (= lt!1857177 lt!1857168)))

(assert (=> b!4695927 (forall!11365 (toList!5645 lt!1857175) lambda!208820)))

(declare-fun lt!1857160 () Unit!125153)

(declare-fun Unit!125227 () Unit!125153)

(assert (=> b!4695927 (= lt!1857160 Unit!125227)))

(assert (=> b!4695927 (forall!11365 (t!359793 (Cons!52475 lt!1856639 lt!1856657)) lambda!208820)))

(declare-fun lt!1857170 () Unit!125153)

(declare-fun Unit!125228 () Unit!125153)

(assert (=> b!4695927 (= lt!1857170 Unit!125228)))

(declare-fun lt!1857161 () Unit!125153)

(declare-fun Unit!125229 () Unit!125153)

(assert (=> b!4695927 (= lt!1857161 Unit!125229)))

(declare-fun lt!1857171 () Unit!125153)

(assert (=> b!4695927 (= lt!1857171 (forallContained!3472 (toList!5645 lt!1857175) lambda!208820 (h!58738 (Cons!52475 lt!1856639 lt!1856657))))))

(assert (=> b!4695927 (contains!15716 lt!1857175 (_1!30247 (h!58738 (Cons!52475 lt!1856639 lt!1856657))))))

(declare-fun lt!1857178 () Unit!125153)

(declare-fun Unit!125230 () Unit!125153)

(assert (=> b!4695927 (= lt!1857178 Unit!125230)))

(assert (=> b!4695927 (contains!15716 lt!1857159 (_1!30247 (h!58738 (Cons!52475 lt!1856639 lt!1856657))))))

(declare-fun lt!1857163 () Unit!125153)

(declare-fun Unit!125231 () Unit!125153)

(assert (=> b!4695927 (= lt!1857163 Unit!125231)))

(assert (=> b!4695927 call!328248))

(declare-fun lt!1857169 () Unit!125153)

(declare-fun Unit!125232 () Unit!125153)

(assert (=> b!4695927 (= lt!1857169 Unit!125232)))

(assert (=> b!4695927 (forall!11365 (toList!5645 lt!1857175) lambda!208820)))

(declare-fun lt!1857167 () Unit!125153)

(declare-fun Unit!125233 () Unit!125153)

(assert (=> b!4695927 (= lt!1857167 Unit!125233)))

(declare-fun lt!1857174 () Unit!125153)

(declare-fun Unit!125234 () Unit!125153)

(assert (=> b!4695927 (= lt!1857174 Unit!125234)))

(declare-fun lt!1857179 () Unit!125153)

(assert (=> b!4695927 (= lt!1857179 (addForallContainsKeyThenBeforeAdding!715 lt!1856644 lt!1857159 (_1!30247 (h!58738 (Cons!52475 lt!1856639 lt!1856657))) (_2!30247 (h!58738 (Cons!52475 lt!1856639 lt!1856657)))))))

(assert (=> b!4695927 call!328250))

(declare-fun lt!1857176 () Unit!125153)

(assert (=> b!4695927 (= lt!1857176 lt!1857179)))

(assert (=> b!4695927 (forall!11365 (toList!5645 lt!1856644) lambda!208820)))

(declare-fun lt!1857165 () Unit!125153)

(declare-fun Unit!125235 () Unit!125153)

(assert (=> b!4695927 (= lt!1857165 Unit!125235)))

(declare-fun res!1981684 () Bool)

(assert (=> b!4695927 (= res!1981684 (forall!11365 (Cons!52475 lt!1856639 lt!1856657) lambda!208820))))

(declare-fun e!2929437 () Bool)

(assert (=> b!4695927 (=> (not res!1981684) (not e!2929437))))

(assert (=> b!4695927 e!2929437))

(declare-fun lt!1857166 () Unit!125153)

(declare-fun Unit!125236 () Unit!125153)

(assert (=> b!4695927 (= lt!1857166 Unit!125236)))

(declare-fun b!4695928 () Bool)

(assert (=> b!4695928 (= e!2929437 (forall!11365 (toList!5645 lt!1856644) lambda!208820))))

(assert (=> d!1492883 e!2929439))

(declare-fun res!1981685 () Bool)

(assert (=> d!1492883 (=> (not res!1981685) (not e!2929439))))

(assert (=> d!1492883 (= res!1981685 (forall!11365 (Cons!52475 lt!1856639 lt!1856657) lambda!208821))))

(assert (=> d!1492883 (= lt!1857164 e!2929438)))

(assert (=> d!1492883 (= c!802800 ((_ is Nil!52475) (Cons!52475 lt!1856639 lt!1856657)))))

(assert (=> d!1492883 (noDuplicateKeys!1878 (Cons!52475 lt!1856639 lt!1856657))))

(assert (=> d!1492883 (= (addToMapMapFromBucket!1310 (Cons!52475 lt!1856639 lt!1856657) lt!1856644) lt!1857164)))

(declare-fun bm!328244 () Bool)

(assert (=> bm!328244 (= call!328249 (lemmaContainsAllItsOwnKeys!716 lt!1856644))))

(declare-fun bm!328245 () Bool)

(assert (=> bm!328245 (= call!328248 (forall!11365 (ite c!802800 (toList!5645 lt!1856644) (Cons!52475 lt!1856639 lt!1856657)) (ite c!802800 lambda!208818 lambda!208820)))))

(assert (= (and d!1492883 c!802800) b!4695925))

(assert (= (and d!1492883 (not c!802800)) b!4695927))

(assert (= (and b!4695927 res!1981684) b!4695928))

(assert (= (or b!4695925 b!4695927) bm!328244))

(assert (= (or b!4695925 b!4695927) bm!328245))

(assert (= (or b!4695925 b!4695927) bm!328243))

(assert (= (and d!1492883 res!1981685) b!4695924))

(assert (= (and b!4695924 res!1981683) b!4695926))

(assert (=> bm!328244 m!5603743))

(declare-fun m!5604355 () Bool)

(assert (=> b!4695927 m!5604355))

(declare-fun m!5604357 () Bool)

(assert (=> b!4695927 m!5604357))

(declare-fun m!5604359 () Bool)

(assert (=> b!4695927 m!5604359))

(declare-fun m!5604361 () Bool)

(assert (=> b!4695927 m!5604361))

(declare-fun m!5604363 () Bool)

(assert (=> b!4695927 m!5604363))

(declare-fun m!5604365 () Bool)

(assert (=> b!4695927 m!5604365))

(declare-fun m!5604367 () Bool)

(assert (=> b!4695927 m!5604367))

(declare-fun m!5604369 () Bool)

(assert (=> b!4695927 m!5604369))

(assert (=> b!4695927 m!5604367))

(declare-fun m!5604371 () Bool)

(assert (=> b!4695927 m!5604371))

(assert (=> b!4695927 m!5604359))

(declare-fun m!5604373 () Bool)

(assert (=> b!4695927 m!5604373))

(declare-fun m!5604375 () Bool)

(assert (=> b!4695927 m!5604375))

(declare-fun m!5604377 () Bool)

(assert (=> d!1492883 m!5604377))

(declare-fun m!5604379 () Bool)

(assert (=> d!1492883 m!5604379))

(declare-fun m!5604381 () Bool)

(assert (=> bm!328245 m!5604381))

(declare-fun m!5604383 () Bool)

(assert (=> b!4695924 m!5604383))

(declare-fun m!5604385 () Bool)

(assert (=> b!4695926 m!5604385))

(declare-fun m!5604387 () Bool)

(assert (=> bm!328243 m!5604387))

(assert (=> b!4695928 m!5604375))

(assert (=> b!4695505 d!1492883))

(declare-fun d!1492885 () Bool)

(assert (=> d!1492885 (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856653 lt!1856664) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1856653))))

(declare-fun lt!1857182 () Unit!125153)

(declare-fun choose!32728 (tuple2!53906 List!52599 ListMap!5009) Unit!125153)

(assert (=> d!1492885 (= lt!1857182 (choose!32728 lt!1856653 lt!1856664 lt!1856644))))

(assert (=> d!1492885 (noDuplicateKeys!1878 lt!1856664)))

(assert (=> d!1492885 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!286 lt!1856653 lt!1856664 lt!1856644) lt!1857182)))

(declare-fun bs!1091043 () Bool)

(assert (= bs!1091043 d!1492885))

(assert (=> bs!1091043 m!5603457))

(assert (=> bs!1091043 m!5603437))

(declare-fun m!5604389 () Bool)

(assert (=> bs!1091043 m!5604389))

(assert (=> bs!1091043 m!5603435))

(assert (=> bs!1091043 m!5603437))

(assert (=> bs!1091043 m!5603439))

(assert (=> bs!1091043 m!5603457))

(assert (=> bs!1091043 m!5604111))

(assert (=> bs!1091043 m!5603435))

(assert (=> b!4695505 d!1492885))

(declare-fun bs!1091044 () Bool)

(declare-fun b!4695930 () Bool)

(assert (= bs!1091044 (and b!4695930 b!4695645)))

(declare-fun lambda!208822 () Int)

(assert (=> bs!1091044 (= lambda!208822 lambda!208760)))

(declare-fun bs!1091045 () Bool)

(assert (= bs!1091045 (and b!4695930 b!4695927)))

(assert (=> bs!1091045 (= (= lt!1856644 lt!1857159) (= lambda!208822 lambda!208820))))

(declare-fun bs!1091046 () Bool)

(assert (= bs!1091046 (and b!4695930 d!1492675)))

(assert (=> bs!1091046 (= (= lt!1856644 lt!1856881) (= lambda!208822 lambda!208765))))

(declare-fun bs!1091047 () Bool)

(assert (= bs!1091047 (and b!4695930 b!4695647)))

(assert (=> bs!1091047 (= (= lt!1856644 lt!1856876) (= lambda!208822 lambda!208763))))

(assert (=> bs!1091045 (= lambda!208822 lambda!208819)))

(declare-fun bs!1091048 () Bool)

(assert (= bs!1091048 (and b!4695930 b!4695916)))

(assert (=> bs!1091048 (= (= lt!1856644 lt!1857126) (= lambda!208822 lambda!208816))))

(declare-fun bs!1091049 () Bool)

(assert (= bs!1091049 (and b!4695930 b!4695914)))

(assert (=> bs!1091049 (= lambda!208822 lambda!208814)))

(declare-fun bs!1091050 () Bool)

(assert (= bs!1091050 (and b!4695930 d!1492883)))

(assert (=> bs!1091050 (= (= lt!1856644 lt!1857164) (= lambda!208822 lambda!208821))))

(assert (=> bs!1091047 (= lambda!208822 lambda!208762)))

(assert (=> bs!1091048 (= lambda!208822 lambda!208815)))

(declare-fun bs!1091051 () Bool)

(assert (= bs!1091051 (and b!4695930 d!1492877)))

(assert (=> bs!1091051 (= (= lt!1856644 lt!1857131) (= lambda!208822 lambda!208817))))

(declare-fun bs!1091052 () Bool)

(assert (= bs!1091052 (and b!4695930 b!4695925)))

(assert (=> bs!1091052 (= lambda!208822 lambda!208818)))

(assert (=> b!4695930 true))

(declare-fun bs!1091053 () Bool)

(declare-fun b!4695932 () Bool)

(assert (= bs!1091053 (and b!4695932 b!4695645)))

(declare-fun lambda!208823 () Int)

(assert (=> bs!1091053 (= lambda!208823 lambda!208760)))

(declare-fun bs!1091054 () Bool)

(assert (= bs!1091054 (and b!4695932 b!4695927)))

(assert (=> bs!1091054 (= (= lt!1856644 lt!1857159) (= lambda!208823 lambda!208820))))

(declare-fun bs!1091055 () Bool)

(assert (= bs!1091055 (and b!4695932 d!1492675)))

(assert (=> bs!1091055 (= (= lt!1856644 lt!1856881) (= lambda!208823 lambda!208765))))

(declare-fun bs!1091056 () Bool)

(assert (= bs!1091056 (and b!4695932 b!4695647)))

(assert (=> bs!1091056 (= (= lt!1856644 lt!1856876) (= lambda!208823 lambda!208763))))

(assert (=> bs!1091054 (= lambda!208823 lambda!208819)))

(declare-fun bs!1091057 () Bool)

(assert (= bs!1091057 (and b!4695932 b!4695930)))

(assert (=> bs!1091057 (= lambda!208823 lambda!208822)))

(declare-fun bs!1091058 () Bool)

(assert (= bs!1091058 (and b!4695932 b!4695916)))

(assert (=> bs!1091058 (= (= lt!1856644 lt!1857126) (= lambda!208823 lambda!208816))))

(declare-fun bs!1091059 () Bool)

(assert (= bs!1091059 (and b!4695932 b!4695914)))

(assert (=> bs!1091059 (= lambda!208823 lambda!208814)))

(declare-fun bs!1091060 () Bool)

(assert (= bs!1091060 (and b!4695932 d!1492883)))

(assert (=> bs!1091060 (= (= lt!1856644 lt!1857164) (= lambda!208823 lambda!208821))))

(assert (=> bs!1091056 (= lambda!208823 lambda!208762)))

(assert (=> bs!1091058 (= lambda!208823 lambda!208815)))

(declare-fun bs!1091061 () Bool)

(assert (= bs!1091061 (and b!4695932 d!1492877)))

(assert (=> bs!1091061 (= (= lt!1856644 lt!1857131) (= lambda!208823 lambda!208817))))

(declare-fun bs!1091062 () Bool)

(assert (= bs!1091062 (and b!4695932 b!4695925)))

(assert (=> bs!1091062 (= lambda!208823 lambda!208818)))

(assert (=> b!4695932 true))

(declare-fun lt!1857183 () ListMap!5009)

(declare-fun lambda!208824 () Int)

(assert (=> bs!1091053 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208760))))

(assert (=> bs!1091054 (= (= lt!1857183 lt!1857159) (= lambda!208824 lambda!208820))))

(assert (=> bs!1091055 (= (= lt!1857183 lt!1856881) (= lambda!208824 lambda!208765))))

(assert (=> bs!1091056 (= (= lt!1857183 lt!1856876) (= lambda!208824 lambda!208763))))

(assert (=> bs!1091054 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208819))))

(assert (=> bs!1091057 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208822))))

(assert (=> bs!1091058 (= (= lt!1857183 lt!1857126) (= lambda!208824 lambda!208816))))

(assert (=> bs!1091059 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208814))))

(assert (=> bs!1091060 (= (= lt!1857183 lt!1857164) (= lambda!208824 lambda!208821))))

(assert (=> b!4695932 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208823))))

(assert (=> bs!1091056 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208762))))

(assert (=> bs!1091058 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208815))))

(assert (=> bs!1091061 (= (= lt!1857183 lt!1857131) (= lambda!208824 lambda!208817))))

(assert (=> bs!1091062 (= (= lt!1857183 lt!1856644) (= lambda!208824 lambda!208818))))

(assert (=> b!4695932 true))

(declare-fun bs!1091063 () Bool)

(declare-fun d!1492887 () Bool)

(assert (= bs!1091063 (and d!1492887 b!4695645)))

(declare-fun lt!1857188 () ListMap!5009)

(declare-fun lambda!208825 () Int)

(assert (=> bs!1091063 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208760))))

(declare-fun bs!1091064 () Bool)

(assert (= bs!1091064 (and d!1492887 b!4695927)))

(assert (=> bs!1091064 (= (= lt!1857188 lt!1857159) (= lambda!208825 lambda!208820))))

(declare-fun bs!1091065 () Bool)

(assert (= bs!1091065 (and d!1492887 d!1492675)))

(assert (=> bs!1091065 (= (= lt!1857188 lt!1856881) (= lambda!208825 lambda!208765))))

(declare-fun bs!1091066 () Bool)

(assert (= bs!1091066 (and d!1492887 b!4695647)))

(assert (=> bs!1091066 (= (= lt!1857188 lt!1856876) (= lambda!208825 lambda!208763))))

(assert (=> bs!1091064 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208819))))

(declare-fun bs!1091067 () Bool)

(assert (= bs!1091067 (and d!1492887 b!4695930)))

(assert (=> bs!1091067 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208822))))

(declare-fun bs!1091068 () Bool)

(assert (= bs!1091068 (and d!1492887 b!4695916)))

(assert (=> bs!1091068 (= (= lt!1857188 lt!1857126) (= lambda!208825 lambda!208816))))

(declare-fun bs!1091069 () Bool)

(assert (= bs!1091069 (and d!1492887 b!4695914)))

(assert (=> bs!1091069 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208814))))

(declare-fun bs!1091070 () Bool)

(assert (= bs!1091070 (and d!1492887 d!1492883)))

(assert (=> bs!1091070 (= (= lt!1857188 lt!1857164) (= lambda!208825 lambda!208821))))

(declare-fun bs!1091071 () Bool)

(assert (= bs!1091071 (and d!1492887 b!4695932)))

(assert (=> bs!1091071 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208823))))

(assert (=> bs!1091066 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208762))))

(assert (=> bs!1091068 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208815))))

(declare-fun bs!1091072 () Bool)

(assert (= bs!1091072 (and d!1492887 d!1492877)))

(assert (=> bs!1091072 (= (= lt!1857188 lt!1857131) (= lambda!208825 lambda!208817))))

(assert (=> bs!1091071 (= (= lt!1857188 lt!1857183) (= lambda!208825 lambda!208824))))

(declare-fun bs!1091073 () Bool)

(assert (= bs!1091073 (and d!1492887 b!4695925)))

(assert (=> bs!1091073 (= (= lt!1857188 lt!1856644) (= lambda!208825 lambda!208818))))

(assert (=> d!1492887 true))

(declare-fun call!328253 () Bool)

(declare-fun bm!328246 () Bool)

(declare-fun c!802801 () Bool)

(assert (=> bm!328246 (= call!328253 (forall!11365 (toList!5645 lt!1856644) (ite c!802801 lambda!208822 lambda!208824)))))

(declare-fun b!4695929 () Bool)

(declare-fun res!1981686 () Bool)

(declare-fun e!2929442 () Bool)

(assert (=> b!4695929 (=> (not res!1981686) (not e!2929442))))

(assert (=> b!4695929 (= res!1981686 (forall!11365 (toList!5645 lt!1856644) lambda!208825))))

(declare-fun e!2929441 () ListMap!5009)

(assert (=> b!4695930 (= e!2929441 lt!1856644)))

(declare-fun lt!1857196 () Unit!125153)

(declare-fun call!328252 () Unit!125153)

(assert (=> b!4695930 (= lt!1857196 call!328252)))

(assert (=> b!4695930 call!328253))

(declare-fun lt!1857197 () Unit!125153)

(assert (=> b!4695930 (= lt!1857197 lt!1857196)))

(declare-fun call!328251 () Bool)

(assert (=> b!4695930 call!328251))

(declare-fun lt!1857186 () Unit!125153)

(declare-fun Unit!125248 () Unit!125153)

(assert (=> b!4695930 (= lt!1857186 Unit!125248)))

(declare-fun b!4695931 () Bool)

(assert (=> b!4695931 (= e!2929442 (invariantList!1428 (toList!5645 lt!1857188)))))

(assert (=> b!4695932 (= e!2929441 lt!1857183)))

(declare-fun lt!1857199 () ListMap!5009)

(assert (=> b!4695932 (= lt!1857199 (+!2162 lt!1856644 (h!58738 lt!1856657)))))

(assert (=> b!4695932 (= lt!1857183 (addToMapMapFromBucket!1310 (t!359793 lt!1856657) (+!2162 lt!1856644 (h!58738 lt!1856657))))))

(declare-fun lt!1857192 () Unit!125153)

(assert (=> b!4695932 (= lt!1857192 call!328252)))

(assert (=> b!4695932 (forall!11365 (toList!5645 lt!1856644) lambda!208823)))

(declare-fun lt!1857201 () Unit!125153)

(assert (=> b!4695932 (= lt!1857201 lt!1857192)))

(assert (=> b!4695932 (forall!11365 (toList!5645 lt!1857199) lambda!208824)))

(declare-fun lt!1857184 () Unit!125153)

(declare-fun Unit!125249 () Unit!125153)

(assert (=> b!4695932 (= lt!1857184 Unit!125249)))

(assert (=> b!4695932 (forall!11365 (t!359793 lt!1856657) lambda!208824)))

(declare-fun lt!1857194 () Unit!125153)

(declare-fun Unit!125250 () Unit!125153)

(assert (=> b!4695932 (= lt!1857194 Unit!125250)))

(declare-fun lt!1857185 () Unit!125153)

(declare-fun Unit!125251 () Unit!125153)

(assert (=> b!4695932 (= lt!1857185 Unit!125251)))

(declare-fun lt!1857195 () Unit!125153)

(assert (=> b!4695932 (= lt!1857195 (forallContained!3472 (toList!5645 lt!1857199) lambda!208824 (h!58738 lt!1856657)))))

(assert (=> b!4695932 (contains!15716 lt!1857199 (_1!30247 (h!58738 lt!1856657)))))

(declare-fun lt!1857202 () Unit!125153)

(declare-fun Unit!125252 () Unit!125153)

(assert (=> b!4695932 (= lt!1857202 Unit!125252)))

(assert (=> b!4695932 (contains!15716 lt!1857183 (_1!30247 (h!58738 lt!1856657)))))

(declare-fun lt!1857187 () Unit!125153)

(declare-fun Unit!125253 () Unit!125153)

(assert (=> b!4695932 (= lt!1857187 Unit!125253)))

(assert (=> b!4695932 call!328251))

(declare-fun lt!1857193 () Unit!125153)

(declare-fun Unit!125254 () Unit!125153)

(assert (=> b!4695932 (= lt!1857193 Unit!125254)))

(assert (=> b!4695932 (forall!11365 (toList!5645 lt!1857199) lambda!208824)))

(declare-fun lt!1857191 () Unit!125153)

(declare-fun Unit!125255 () Unit!125153)

(assert (=> b!4695932 (= lt!1857191 Unit!125255)))

(declare-fun lt!1857198 () Unit!125153)

(declare-fun Unit!125256 () Unit!125153)

(assert (=> b!4695932 (= lt!1857198 Unit!125256)))

(declare-fun lt!1857203 () Unit!125153)

(assert (=> b!4695932 (= lt!1857203 (addForallContainsKeyThenBeforeAdding!715 lt!1856644 lt!1857183 (_1!30247 (h!58738 lt!1856657)) (_2!30247 (h!58738 lt!1856657))))))

(assert (=> b!4695932 call!328253))

(declare-fun lt!1857200 () Unit!125153)

(assert (=> b!4695932 (= lt!1857200 lt!1857203)))

(assert (=> b!4695932 (forall!11365 (toList!5645 lt!1856644) lambda!208824)))

(declare-fun lt!1857189 () Unit!125153)

(declare-fun Unit!125257 () Unit!125153)

(assert (=> b!4695932 (= lt!1857189 Unit!125257)))

(declare-fun res!1981687 () Bool)

(assert (=> b!4695932 (= res!1981687 (forall!11365 lt!1856657 lambda!208824))))

(declare-fun e!2929440 () Bool)

(assert (=> b!4695932 (=> (not res!1981687) (not e!2929440))))

(assert (=> b!4695932 e!2929440))

(declare-fun lt!1857190 () Unit!125153)

(declare-fun Unit!125258 () Unit!125153)

(assert (=> b!4695932 (= lt!1857190 Unit!125258)))

(declare-fun b!4695933 () Bool)

(assert (=> b!4695933 (= e!2929440 (forall!11365 (toList!5645 lt!1856644) lambda!208824))))

(assert (=> d!1492887 e!2929442))

(declare-fun res!1981688 () Bool)

(assert (=> d!1492887 (=> (not res!1981688) (not e!2929442))))

(assert (=> d!1492887 (= res!1981688 (forall!11365 lt!1856657 lambda!208825))))

(assert (=> d!1492887 (= lt!1857188 e!2929441)))

(assert (=> d!1492887 (= c!802801 ((_ is Nil!52475) lt!1856657))))

(assert (=> d!1492887 (noDuplicateKeys!1878 lt!1856657)))

(assert (=> d!1492887 (= (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1857188)))

(declare-fun bm!328247 () Bool)

(assert (=> bm!328247 (= call!328252 (lemmaContainsAllItsOwnKeys!716 lt!1856644))))

(declare-fun bm!328248 () Bool)

(assert (=> bm!328248 (= call!328251 (forall!11365 (ite c!802801 (toList!5645 lt!1856644) lt!1856657) (ite c!802801 lambda!208822 lambda!208824)))))

(assert (= (and d!1492887 c!802801) b!4695930))

(assert (= (and d!1492887 (not c!802801)) b!4695932))

(assert (= (and b!4695932 res!1981687) b!4695933))

(assert (= (or b!4695930 b!4695932) bm!328247))

(assert (= (or b!4695930 b!4695932) bm!328248))

(assert (= (or b!4695930 b!4695932) bm!328246))

(assert (= (and d!1492887 res!1981688) b!4695929))

(assert (= (and b!4695929 res!1981686) b!4695931))

(assert (=> bm!328247 m!5603743))

(declare-fun m!5604391 () Bool)

(assert (=> b!4695932 m!5604391))

(declare-fun m!5604393 () Bool)

(assert (=> b!4695932 m!5604393))

(declare-fun m!5604395 () Bool)

(assert (=> b!4695932 m!5604395))

(declare-fun m!5604397 () Bool)

(assert (=> b!4695932 m!5604397))

(declare-fun m!5604399 () Bool)

(assert (=> b!4695932 m!5604399))

(declare-fun m!5604401 () Bool)

(assert (=> b!4695932 m!5604401))

(declare-fun m!5604403 () Bool)

(assert (=> b!4695932 m!5604403))

(declare-fun m!5604405 () Bool)

(assert (=> b!4695932 m!5604405))

(assert (=> b!4695932 m!5604403))

(declare-fun m!5604407 () Bool)

(assert (=> b!4695932 m!5604407))

(assert (=> b!4695932 m!5604395))

(declare-fun m!5604409 () Bool)

(assert (=> b!4695932 m!5604409))

(declare-fun m!5604411 () Bool)

(assert (=> b!4695932 m!5604411))

(declare-fun m!5604413 () Bool)

(assert (=> d!1492887 m!5604413))

(declare-fun m!5604415 () Bool)

(assert (=> d!1492887 m!5604415))

(declare-fun m!5604417 () Bool)

(assert (=> bm!328248 m!5604417))

(declare-fun m!5604419 () Bool)

(assert (=> b!4695929 m!5604419))

(declare-fun m!5604421 () Bool)

(assert (=> b!4695931 m!5604421))

(declare-fun m!5604423 () Bool)

(assert (=> bm!328246 m!5604423))

(assert (=> b!4695933 m!5604411))

(assert (=> b!4695505 d!1492887))

(declare-fun d!1492889 () Bool)

(assert (=> d!1492889 (= (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856653 lt!1856664) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1856653)) (= (content!9214 (toList!5645 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856653 lt!1856664) lt!1856644))) (content!9214 (toList!5645 (+!2162 (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1856653)))))))

(declare-fun bs!1091074 () Bool)

(assert (= bs!1091074 d!1492889))

(declare-fun m!5604425 () Bool)

(assert (=> bs!1091074 m!5604425))

(declare-fun m!5604427 () Bool)

(assert (=> bs!1091074 m!5604427))

(assert (=> b!4695505 d!1492889))

(declare-fun bs!1091075 () Bool)

(declare-fun d!1492891 () Bool)

(assert (= bs!1091075 (and d!1492891 start!475592)))

(declare-fun lambda!208826 () Int)

(assert (=> bs!1091075 (= lambda!208826 lambda!208681)))

(declare-fun bs!1091076 () Bool)

(assert (= bs!1091076 (and d!1492891 d!1492723)))

(assert (=> bs!1091076 (= lambda!208826 lambda!208774)))

(declare-fun bs!1091077 () Bool)

(assert (= bs!1091077 (and d!1492891 d!1492841)))

(assert (=> bs!1091077 (= lambda!208826 lambda!208809)))

(declare-fun bs!1091078 () Bool)

(assert (= bs!1091078 (and d!1492891 d!1492759)))

(assert (=> bs!1091078 (= lambda!208826 lambda!208782)))

(declare-fun bs!1091079 () Bool)

(assert (= bs!1091079 (and d!1492891 d!1492827)))

(assert (=> bs!1091079 (= lambda!208826 lambda!208797)))

(declare-fun bs!1091080 () Bool)

(assert (= bs!1091080 (and d!1492891 d!1492761)))

(assert (=> bs!1091080 (= lambda!208826 lambda!208796)))

(declare-fun bs!1091081 () Bool)

(assert (= bs!1091081 (and d!1492891 d!1492831)))

(assert (=> bs!1091081 (= lambda!208826 lambda!208808)))

(declare-fun bs!1091082 () Bool)

(assert (= bs!1091082 (and d!1492891 d!1492829)))

(assert (=> bs!1091082 (= lambda!208826 lambda!208798)))

(declare-fun lt!1857204 () ListMap!5009)

(assert (=> d!1492891 (invariantList!1428 (toList!5645 lt!1857204))))

(declare-fun e!2929443 () ListMap!5009)

(assert (=> d!1492891 (= lt!1857204 e!2929443)))

(declare-fun c!802802 () Bool)

(assert (=> d!1492891 (= c!802802 ((_ is Cons!52476) lt!1856651))))

(assert (=> d!1492891 (forall!11363 lt!1856651 lambda!208826)))

(assert (=> d!1492891 (= (extractMap!1904 lt!1856651) lt!1857204)))

(declare-fun b!4695934 () Bool)

(assert (=> b!4695934 (= e!2929443 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 lt!1856651)) (extractMap!1904 (t!359794 lt!1856651))))))

(declare-fun b!4695935 () Bool)

(assert (=> b!4695935 (= e!2929443 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492891 c!802802) b!4695934))

(assert (= (and d!1492891 (not c!802802)) b!4695935))

(declare-fun m!5604429 () Bool)

(assert (=> d!1492891 m!5604429))

(declare-fun m!5604431 () Bool)

(assert (=> d!1492891 m!5604431))

(declare-fun m!5604433 () Bool)

(assert (=> b!4695934 m!5604433))

(assert (=> b!4695934 m!5604433))

(declare-fun m!5604435 () Bool)

(assert (=> b!4695934 m!5604435))

(assert (=> b!4695505 d!1492891))

(declare-fun d!1492893 () Bool)

(assert (=> d!1492893 (= (head!10019 newBucket!218) (h!58738 newBucket!218))))

(assert (=> b!4695505 d!1492893))

(declare-fun bs!1091083 () Bool)

(declare-fun d!1492895 () Bool)

(assert (= bs!1091083 (and d!1492895 start!475592)))

(declare-fun lambda!208829 () Int)

(assert (=> bs!1091083 (= lambda!208829 lambda!208681)))

(declare-fun bs!1091084 () Bool)

(assert (= bs!1091084 (and d!1492895 d!1492841)))

(assert (=> bs!1091084 (= lambda!208829 lambda!208809)))

(declare-fun bs!1091085 () Bool)

(assert (= bs!1091085 (and d!1492895 d!1492759)))

(assert (=> bs!1091085 (= lambda!208829 lambda!208782)))

(declare-fun bs!1091086 () Bool)

(assert (= bs!1091086 (and d!1492895 d!1492827)))

(assert (=> bs!1091086 (= lambda!208829 lambda!208797)))

(declare-fun bs!1091087 () Bool)

(assert (= bs!1091087 (and d!1492895 d!1492761)))

(assert (=> bs!1091087 (= lambda!208829 lambda!208796)))

(declare-fun bs!1091088 () Bool)

(assert (= bs!1091088 (and d!1492895 d!1492831)))

(assert (=> bs!1091088 (= lambda!208829 lambda!208808)))

(declare-fun bs!1091089 () Bool)

(assert (= bs!1091089 (and d!1492895 d!1492829)))

(assert (=> bs!1091089 (= lambda!208829 lambda!208798)))

(declare-fun bs!1091090 () Bool)

(assert (= bs!1091090 (and d!1492895 d!1492723)))

(assert (=> bs!1091090 (= lambda!208829 lambda!208774)))

(declare-fun bs!1091091 () Bool)

(assert (= bs!1091091 (and d!1492895 d!1492891)))

(assert (=> bs!1091091 (= lambda!208829 lambda!208826)))

(assert (=> d!1492895 (contains!15716 (extractMap!1904 (toList!5646 lt!1856640)) key!4653)))

(declare-fun lt!1857207 () Unit!125153)

(declare-fun choose!32730 (ListLongMap!4175 K!13845 Hashable!6247) Unit!125153)

(assert (=> d!1492895 (= lt!1857207 (choose!32730 lt!1856640 key!4653 hashF!1323))))

(assert (=> d!1492895 (forall!11363 (toList!5646 lt!1856640) lambda!208829)))

(assert (=> d!1492895 (= (lemmaListContainsThenExtractedMapContains!470 lt!1856640 key!4653 hashF!1323) lt!1857207)))

(declare-fun bs!1091092 () Bool)

(assert (= bs!1091092 d!1492895))

(declare-fun m!5604437 () Bool)

(assert (=> bs!1091092 m!5604437))

(assert (=> bs!1091092 m!5604437))

(declare-fun m!5604439 () Bool)

(assert (=> bs!1091092 m!5604439))

(declare-fun m!5604441 () Bool)

(assert (=> bs!1091092 m!5604441))

(declare-fun m!5604443 () Bool)

(assert (=> bs!1091092 m!5604443))

(assert (=> b!4695505 d!1492895))

(declare-fun bs!1091093 () Bool)

(declare-fun d!1492897 () Bool)

(assert (= bs!1091093 (and d!1492897 start!475592)))

(declare-fun lambda!208830 () Int)

(assert (=> bs!1091093 (= lambda!208830 lambda!208681)))

(declare-fun bs!1091094 () Bool)

(assert (= bs!1091094 (and d!1492897 d!1492895)))

(assert (=> bs!1091094 (= lambda!208830 lambda!208829)))

(declare-fun bs!1091095 () Bool)

(assert (= bs!1091095 (and d!1492897 d!1492841)))

(assert (=> bs!1091095 (= lambda!208830 lambda!208809)))

(declare-fun bs!1091096 () Bool)

(assert (= bs!1091096 (and d!1492897 d!1492759)))

(assert (=> bs!1091096 (= lambda!208830 lambda!208782)))

(declare-fun bs!1091097 () Bool)

(assert (= bs!1091097 (and d!1492897 d!1492827)))

(assert (=> bs!1091097 (= lambda!208830 lambda!208797)))

(declare-fun bs!1091098 () Bool)

(assert (= bs!1091098 (and d!1492897 d!1492761)))

(assert (=> bs!1091098 (= lambda!208830 lambda!208796)))

(declare-fun bs!1091099 () Bool)

(assert (= bs!1091099 (and d!1492897 d!1492831)))

(assert (=> bs!1091099 (= lambda!208830 lambda!208808)))

(declare-fun bs!1091100 () Bool)

(assert (= bs!1091100 (and d!1492897 d!1492829)))

(assert (=> bs!1091100 (= lambda!208830 lambda!208798)))

(declare-fun bs!1091101 () Bool)

(assert (= bs!1091101 (and d!1492897 d!1492723)))

(assert (=> bs!1091101 (= lambda!208830 lambda!208774)))

(declare-fun bs!1091102 () Bool)

(assert (= bs!1091102 (and d!1492897 d!1492891)))

(assert (=> bs!1091102 (= lambda!208830 lambda!208826)))

(declare-fun lt!1857208 () ListMap!5009)

(assert (=> d!1492897 (invariantList!1428 (toList!5645 lt!1857208))))

(declare-fun e!2929444 () ListMap!5009)

(assert (=> d!1492897 (= lt!1857208 e!2929444)))

(declare-fun c!802803 () Bool)

(assert (=> d!1492897 (= c!802803 ((_ is Cons!52476) (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023)))))))

(assert (=> d!1492897 (forall!11363 (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023))) lambda!208830)))

(assert (=> d!1492897 (= (extractMap!1904 (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023)))) lt!1857208)))

(declare-fun b!4695936 () Bool)

(assert (=> b!4695936 (= e!2929444 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023))))) (extractMap!1904 (t!359794 (Cons!52476 lt!1856655 (t!359794 (toList!5646 lm!2023)))))))))

(declare-fun b!4695937 () Bool)

(assert (=> b!4695937 (= e!2929444 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492897 c!802803) b!4695936))

(assert (= (and d!1492897 (not c!802803)) b!4695937))

(declare-fun m!5604445 () Bool)

(assert (=> d!1492897 m!5604445))

(declare-fun m!5604447 () Bool)

(assert (=> d!1492897 m!5604447))

(declare-fun m!5604449 () Bool)

(assert (=> b!4695936 m!5604449))

(assert (=> b!4695936 m!5604449))

(declare-fun m!5604451 () Bool)

(assert (=> b!4695936 m!5604451))

(assert (=> b!4695505 d!1492897))

(declare-fun bs!1091103 () Bool)

(declare-fun d!1492899 () Bool)

(assert (= bs!1091103 (and d!1492899 start!475592)))

(declare-fun lambda!208831 () Int)

(assert (=> bs!1091103 (= lambda!208831 lambda!208681)))

(declare-fun bs!1091104 () Bool)

(assert (= bs!1091104 (and d!1492899 d!1492895)))

(assert (=> bs!1091104 (= lambda!208831 lambda!208829)))

(declare-fun bs!1091105 () Bool)

(assert (= bs!1091105 (and d!1492899 d!1492841)))

(assert (=> bs!1091105 (= lambda!208831 lambda!208809)))

(declare-fun bs!1091106 () Bool)

(assert (= bs!1091106 (and d!1492899 d!1492897)))

(assert (=> bs!1091106 (= lambda!208831 lambda!208830)))

(declare-fun bs!1091107 () Bool)

(assert (= bs!1091107 (and d!1492899 d!1492759)))

(assert (=> bs!1091107 (= lambda!208831 lambda!208782)))

(declare-fun bs!1091108 () Bool)

(assert (= bs!1091108 (and d!1492899 d!1492827)))

(assert (=> bs!1091108 (= lambda!208831 lambda!208797)))

(declare-fun bs!1091109 () Bool)

(assert (= bs!1091109 (and d!1492899 d!1492761)))

(assert (=> bs!1091109 (= lambda!208831 lambda!208796)))

(declare-fun bs!1091110 () Bool)

(assert (= bs!1091110 (and d!1492899 d!1492831)))

(assert (=> bs!1091110 (= lambda!208831 lambda!208808)))

(declare-fun bs!1091111 () Bool)

(assert (= bs!1091111 (and d!1492899 d!1492829)))

(assert (=> bs!1091111 (= lambda!208831 lambda!208798)))

(declare-fun bs!1091112 () Bool)

(assert (= bs!1091112 (and d!1492899 d!1492723)))

(assert (=> bs!1091112 (= lambda!208831 lambda!208774)))

(declare-fun bs!1091113 () Bool)

(assert (= bs!1091113 (and d!1492899 d!1492891)))

(assert (=> bs!1091113 (= lambda!208831 lambda!208826)))

(declare-fun lt!1857209 () ListMap!5009)

(assert (=> d!1492899 (invariantList!1428 (toList!5645 lt!1857209))))

(declare-fun e!2929445 () ListMap!5009)

(assert (=> d!1492899 (= lt!1857209 e!2929445)))

(declare-fun c!802804 () Bool)

(assert (=> d!1492899 (= c!802804 ((_ is Cons!52476) (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023)))))))

(assert (=> d!1492899 (forall!11363 (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023))) lambda!208831)))

(assert (=> d!1492899 (= (extractMap!1904 (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023)))) lt!1857209)))

(declare-fun b!4695938 () Bool)

(assert (=> b!4695938 (= e!2929445 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023))))) (extractMap!1904 (t!359794 (Cons!52476 (tuple2!53909 hash!405 lt!1856664) (t!359794 (toList!5646 lm!2023)))))))))

(declare-fun b!4695939 () Bool)

(assert (=> b!4695939 (= e!2929445 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492899 c!802804) b!4695938))

(assert (= (and d!1492899 (not c!802804)) b!4695939))

(declare-fun m!5604453 () Bool)

(assert (=> d!1492899 m!5604453))

(declare-fun m!5604455 () Bool)

(assert (=> d!1492899 m!5604455))

(declare-fun m!5604457 () Bool)

(assert (=> b!4695938 m!5604457))

(assert (=> b!4695938 m!5604457))

(declare-fun m!5604459 () Bool)

(assert (=> b!4695938 m!5604459))

(assert (=> b!4695505 d!1492899))

(declare-fun d!1492901 () Bool)

(assert (=> d!1492901 (= (head!10019 oldBucket!34) (h!58738 oldBucket!34))))

(assert (=> b!4695505 d!1492901))

(declare-fun d!1492903 () Bool)

(assert (=> d!1492903 (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856639 lt!1856657) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1856639))))

(declare-fun lt!1857210 () Unit!125153)

(assert (=> d!1492903 (= lt!1857210 (choose!32728 lt!1856639 lt!1856657 lt!1856644))))

(assert (=> d!1492903 (noDuplicateKeys!1878 lt!1856657)))

(assert (=> d!1492903 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!286 lt!1856639 lt!1856657 lt!1856644) lt!1857210)))

(declare-fun bs!1091114 () Bool)

(assert (= bs!1091114 d!1492903))

(assert (=> bs!1091114 m!5603467))

(assert (=> bs!1091114 m!5603451))

(declare-fun m!5604461 () Bool)

(assert (=> bs!1091114 m!5604461))

(assert (=> bs!1091114 m!5603449))

(assert (=> bs!1091114 m!5603451))

(assert (=> bs!1091114 m!5603453))

(assert (=> bs!1091114 m!5603467))

(assert (=> bs!1091114 m!5604415))

(assert (=> bs!1091114 m!5603449))

(assert (=> b!4695505 d!1492903))

(declare-fun bs!1091115 () Bool)

(declare-fun b!4695941 () Bool)

(assert (= bs!1091115 (and b!4695941 b!4695645)))

(declare-fun lambda!208832 () Int)

(assert (=> bs!1091115 (= lambda!208832 lambda!208760)))

(declare-fun bs!1091116 () Bool)

(assert (= bs!1091116 (and b!4695941 b!4695927)))

(assert (=> bs!1091116 (= (= lt!1856644 lt!1857159) (= lambda!208832 lambda!208820))))

(declare-fun bs!1091117 () Bool)

(assert (= bs!1091117 (and b!4695941 d!1492675)))

(assert (=> bs!1091117 (= (= lt!1856644 lt!1856881) (= lambda!208832 lambda!208765))))

(declare-fun bs!1091118 () Bool)

(assert (= bs!1091118 (and b!4695941 b!4695647)))

(assert (=> bs!1091118 (= (= lt!1856644 lt!1856876) (= lambda!208832 lambda!208763))))

(assert (=> bs!1091116 (= lambda!208832 lambda!208819)))

(declare-fun bs!1091119 () Bool)

(assert (= bs!1091119 (and b!4695941 b!4695930)))

(assert (=> bs!1091119 (= lambda!208832 lambda!208822)))

(declare-fun bs!1091120 () Bool)

(assert (= bs!1091120 (and b!4695941 b!4695916)))

(assert (=> bs!1091120 (= (= lt!1856644 lt!1857126) (= lambda!208832 lambda!208816))))

(declare-fun bs!1091121 () Bool)

(assert (= bs!1091121 (and b!4695941 d!1492887)))

(assert (=> bs!1091121 (= (= lt!1856644 lt!1857188) (= lambda!208832 lambda!208825))))

(declare-fun bs!1091122 () Bool)

(assert (= bs!1091122 (and b!4695941 b!4695914)))

(assert (=> bs!1091122 (= lambda!208832 lambda!208814)))

(declare-fun bs!1091123 () Bool)

(assert (= bs!1091123 (and b!4695941 d!1492883)))

(assert (=> bs!1091123 (= (= lt!1856644 lt!1857164) (= lambda!208832 lambda!208821))))

(declare-fun bs!1091124 () Bool)

(assert (= bs!1091124 (and b!4695941 b!4695932)))

(assert (=> bs!1091124 (= lambda!208832 lambda!208823)))

(assert (=> bs!1091118 (= lambda!208832 lambda!208762)))

(assert (=> bs!1091120 (= lambda!208832 lambda!208815)))

(declare-fun bs!1091125 () Bool)

(assert (= bs!1091125 (and b!4695941 d!1492877)))

(assert (=> bs!1091125 (= (= lt!1856644 lt!1857131) (= lambda!208832 lambda!208817))))

(assert (=> bs!1091124 (= (= lt!1856644 lt!1857183) (= lambda!208832 lambda!208824))))

(declare-fun bs!1091126 () Bool)

(assert (= bs!1091126 (and b!4695941 b!4695925)))

(assert (=> bs!1091126 (= lambda!208832 lambda!208818)))

(assert (=> b!4695941 true))

(declare-fun bs!1091127 () Bool)

(declare-fun b!4695943 () Bool)

(assert (= bs!1091127 (and b!4695943 b!4695645)))

(declare-fun lambda!208833 () Int)

(assert (=> bs!1091127 (= lambda!208833 lambda!208760)))

(declare-fun bs!1091128 () Bool)

(assert (= bs!1091128 (and b!4695943 b!4695927)))

(assert (=> bs!1091128 (= (= lt!1856644 lt!1857159) (= lambda!208833 lambda!208820))))

(declare-fun bs!1091129 () Bool)

(assert (= bs!1091129 (and b!4695943 b!4695941)))

(assert (=> bs!1091129 (= lambda!208833 lambda!208832)))

(declare-fun bs!1091130 () Bool)

(assert (= bs!1091130 (and b!4695943 d!1492675)))

(assert (=> bs!1091130 (= (= lt!1856644 lt!1856881) (= lambda!208833 lambda!208765))))

(declare-fun bs!1091131 () Bool)

(assert (= bs!1091131 (and b!4695943 b!4695647)))

(assert (=> bs!1091131 (= (= lt!1856644 lt!1856876) (= lambda!208833 lambda!208763))))

(assert (=> bs!1091128 (= lambda!208833 lambda!208819)))

(declare-fun bs!1091132 () Bool)

(assert (= bs!1091132 (and b!4695943 b!4695930)))

(assert (=> bs!1091132 (= lambda!208833 lambda!208822)))

(declare-fun bs!1091133 () Bool)

(assert (= bs!1091133 (and b!4695943 b!4695916)))

(assert (=> bs!1091133 (= (= lt!1856644 lt!1857126) (= lambda!208833 lambda!208816))))

(declare-fun bs!1091134 () Bool)

(assert (= bs!1091134 (and b!4695943 d!1492887)))

(assert (=> bs!1091134 (= (= lt!1856644 lt!1857188) (= lambda!208833 lambda!208825))))

(declare-fun bs!1091135 () Bool)

(assert (= bs!1091135 (and b!4695943 b!4695914)))

(assert (=> bs!1091135 (= lambda!208833 lambda!208814)))

(declare-fun bs!1091136 () Bool)

(assert (= bs!1091136 (and b!4695943 d!1492883)))

(assert (=> bs!1091136 (= (= lt!1856644 lt!1857164) (= lambda!208833 lambda!208821))))

(declare-fun bs!1091137 () Bool)

(assert (= bs!1091137 (and b!4695943 b!4695932)))

(assert (=> bs!1091137 (= lambda!208833 lambda!208823)))

(assert (=> bs!1091131 (= lambda!208833 lambda!208762)))

(assert (=> bs!1091133 (= lambda!208833 lambda!208815)))

(declare-fun bs!1091138 () Bool)

(assert (= bs!1091138 (and b!4695943 d!1492877)))

(assert (=> bs!1091138 (= (= lt!1856644 lt!1857131) (= lambda!208833 lambda!208817))))

(assert (=> bs!1091137 (= (= lt!1856644 lt!1857183) (= lambda!208833 lambda!208824))))

(declare-fun bs!1091139 () Bool)

(assert (= bs!1091139 (and b!4695943 b!4695925)))

(assert (=> bs!1091139 (= lambda!208833 lambda!208818)))

(assert (=> b!4695943 true))

(declare-fun lambda!208834 () Int)

(declare-fun lt!1857211 () ListMap!5009)

(assert (=> bs!1091127 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208760))))

(assert (=> bs!1091128 (= (= lt!1857211 lt!1857159) (= lambda!208834 lambda!208820))))

(assert (=> bs!1091129 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208832))))

(assert (=> b!4695943 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208833))))

(assert (=> bs!1091130 (= (= lt!1857211 lt!1856881) (= lambda!208834 lambda!208765))))

(assert (=> bs!1091131 (= (= lt!1857211 lt!1856876) (= lambda!208834 lambda!208763))))

(assert (=> bs!1091128 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208819))))

(assert (=> bs!1091132 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208822))))

(assert (=> bs!1091133 (= (= lt!1857211 lt!1857126) (= lambda!208834 lambda!208816))))

(assert (=> bs!1091134 (= (= lt!1857211 lt!1857188) (= lambda!208834 lambda!208825))))

(assert (=> bs!1091135 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208814))))

(assert (=> bs!1091136 (= (= lt!1857211 lt!1857164) (= lambda!208834 lambda!208821))))

(assert (=> bs!1091137 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208823))))

(assert (=> bs!1091131 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208762))))

(assert (=> bs!1091133 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208815))))

(assert (=> bs!1091138 (= (= lt!1857211 lt!1857131) (= lambda!208834 lambda!208817))))

(assert (=> bs!1091137 (= (= lt!1857211 lt!1857183) (= lambda!208834 lambda!208824))))

(assert (=> bs!1091139 (= (= lt!1857211 lt!1856644) (= lambda!208834 lambda!208818))))

(assert (=> b!4695943 true))

(declare-fun bs!1091140 () Bool)

(declare-fun d!1492905 () Bool)

(assert (= bs!1091140 (and d!1492905 b!4695645)))

(declare-fun lambda!208835 () Int)

(declare-fun lt!1857216 () ListMap!5009)

(assert (=> bs!1091140 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208760))))

(declare-fun bs!1091141 () Bool)

(assert (= bs!1091141 (and d!1492905 b!4695927)))

(assert (=> bs!1091141 (= (= lt!1857216 lt!1857159) (= lambda!208835 lambda!208820))))

(declare-fun bs!1091142 () Bool)

(assert (= bs!1091142 (and d!1492905 b!4695941)))

(assert (=> bs!1091142 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208832))))

(declare-fun bs!1091143 () Bool)

(assert (= bs!1091143 (and d!1492905 b!4695943)))

(assert (=> bs!1091143 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208833))))

(declare-fun bs!1091144 () Bool)

(assert (= bs!1091144 (and d!1492905 d!1492675)))

(assert (=> bs!1091144 (= (= lt!1857216 lt!1856881) (= lambda!208835 lambda!208765))))

(declare-fun bs!1091145 () Bool)

(assert (= bs!1091145 (and d!1492905 b!4695647)))

(assert (=> bs!1091145 (= (= lt!1857216 lt!1856876) (= lambda!208835 lambda!208763))))

(assert (=> bs!1091141 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208819))))

(declare-fun bs!1091146 () Bool)

(assert (= bs!1091146 (and d!1492905 b!4695930)))

(assert (=> bs!1091146 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208822))))

(declare-fun bs!1091147 () Bool)

(assert (= bs!1091147 (and d!1492905 b!4695916)))

(assert (=> bs!1091147 (= (= lt!1857216 lt!1857126) (= lambda!208835 lambda!208816))))

(declare-fun bs!1091148 () Bool)

(assert (= bs!1091148 (and d!1492905 d!1492887)))

(assert (=> bs!1091148 (= (= lt!1857216 lt!1857188) (= lambda!208835 lambda!208825))))

(declare-fun bs!1091149 () Bool)

(assert (= bs!1091149 (and d!1492905 b!4695914)))

(assert (=> bs!1091149 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208814))))

(declare-fun bs!1091150 () Bool)

(assert (= bs!1091150 (and d!1492905 d!1492883)))

(assert (=> bs!1091150 (= (= lt!1857216 lt!1857164) (= lambda!208835 lambda!208821))))

(declare-fun bs!1091151 () Bool)

(assert (= bs!1091151 (and d!1492905 b!4695932)))

(assert (=> bs!1091151 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208823))))

(assert (=> bs!1091145 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208762))))

(assert (=> bs!1091147 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208815))))

(assert (=> bs!1091143 (= (= lt!1857216 lt!1857211) (= lambda!208835 lambda!208834))))

(declare-fun bs!1091152 () Bool)

(assert (= bs!1091152 (and d!1492905 d!1492877)))

(assert (=> bs!1091152 (= (= lt!1857216 lt!1857131) (= lambda!208835 lambda!208817))))

(assert (=> bs!1091151 (= (= lt!1857216 lt!1857183) (= lambda!208835 lambda!208824))))

(declare-fun bs!1091153 () Bool)

(assert (= bs!1091153 (and d!1492905 b!4695925)))

(assert (=> bs!1091153 (= (= lt!1857216 lt!1856644) (= lambda!208835 lambda!208818))))

(assert (=> d!1492905 true))

(declare-fun call!328256 () Bool)

(declare-fun c!802805 () Bool)

(declare-fun bm!328249 () Bool)

(assert (=> bm!328249 (= call!328256 (forall!11365 (toList!5645 lt!1856644) (ite c!802805 lambda!208832 lambda!208834)))))

(declare-fun b!4695940 () Bool)

(declare-fun res!1981689 () Bool)

(declare-fun e!2929448 () Bool)

(assert (=> b!4695940 (=> (not res!1981689) (not e!2929448))))

(assert (=> b!4695940 (= res!1981689 (forall!11365 (toList!5645 lt!1856644) lambda!208835))))

(declare-fun e!2929447 () ListMap!5009)

(assert (=> b!4695941 (= e!2929447 lt!1856644)))

(declare-fun lt!1857224 () Unit!125153)

(declare-fun call!328255 () Unit!125153)

(assert (=> b!4695941 (= lt!1857224 call!328255)))

(assert (=> b!4695941 call!328256))

(declare-fun lt!1857225 () Unit!125153)

(assert (=> b!4695941 (= lt!1857225 lt!1857224)))

(declare-fun call!328254 () Bool)

(assert (=> b!4695941 call!328254))

(declare-fun lt!1857214 () Unit!125153)

(declare-fun Unit!125262 () Unit!125153)

(assert (=> b!4695941 (= lt!1857214 Unit!125262)))

(declare-fun b!4695942 () Bool)

(assert (=> b!4695942 (= e!2929448 (invariantList!1428 (toList!5645 lt!1857216)))))

(assert (=> b!4695943 (= e!2929447 lt!1857211)))

(declare-fun lt!1857227 () ListMap!5009)

(assert (=> b!4695943 (= lt!1857227 (+!2162 lt!1856644 (h!58738 lt!1856664)))))

(assert (=> b!4695943 (= lt!1857211 (addToMapMapFromBucket!1310 (t!359793 lt!1856664) (+!2162 lt!1856644 (h!58738 lt!1856664))))))

(declare-fun lt!1857220 () Unit!125153)

(assert (=> b!4695943 (= lt!1857220 call!328255)))

(assert (=> b!4695943 (forall!11365 (toList!5645 lt!1856644) lambda!208833)))

(declare-fun lt!1857229 () Unit!125153)

(assert (=> b!4695943 (= lt!1857229 lt!1857220)))

(assert (=> b!4695943 (forall!11365 (toList!5645 lt!1857227) lambda!208834)))

(declare-fun lt!1857212 () Unit!125153)

(declare-fun Unit!125263 () Unit!125153)

(assert (=> b!4695943 (= lt!1857212 Unit!125263)))

(assert (=> b!4695943 (forall!11365 (t!359793 lt!1856664) lambda!208834)))

(declare-fun lt!1857222 () Unit!125153)

(declare-fun Unit!125264 () Unit!125153)

(assert (=> b!4695943 (= lt!1857222 Unit!125264)))

(declare-fun lt!1857213 () Unit!125153)

(declare-fun Unit!125265 () Unit!125153)

(assert (=> b!4695943 (= lt!1857213 Unit!125265)))

(declare-fun lt!1857223 () Unit!125153)

(assert (=> b!4695943 (= lt!1857223 (forallContained!3472 (toList!5645 lt!1857227) lambda!208834 (h!58738 lt!1856664)))))

(assert (=> b!4695943 (contains!15716 lt!1857227 (_1!30247 (h!58738 lt!1856664)))))

(declare-fun lt!1857230 () Unit!125153)

(declare-fun Unit!125266 () Unit!125153)

(assert (=> b!4695943 (= lt!1857230 Unit!125266)))

(assert (=> b!4695943 (contains!15716 lt!1857211 (_1!30247 (h!58738 lt!1856664)))))

(declare-fun lt!1857215 () Unit!125153)

(declare-fun Unit!125267 () Unit!125153)

(assert (=> b!4695943 (= lt!1857215 Unit!125267)))

(assert (=> b!4695943 call!328254))

(declare-fun lt!1857221 () Unit!125153)

(declare-fun Unit!125268 () Unit!125153)

(assert (=> b!4695943 (= lt!1857221 Unit!125268)))

(assert (=> b!4695943 (forall!11365 (toList!5645 lt!1857227) lambda!208834)))

(declare-fun lt!1857219 () Unit!125153)

(declare-fun Unit!125269 () Unit!125153)

(assert (=> b!4695943 (= lt!1857219 Unit!125269)))

(declare-fun lt!1857226 () Unit!125153)

(declare-fun Unit!125270 () Unit!125153)

(assert (=> b!4695943 (= lt!1857226 Unit!125270)))

(declare-fun lt!1857231 () Unit!125153)

(assert (=> b!4695943 (= lt!1857231 (addForallContainsKeyThenBeforeAdding!715 lt!1856644 lt!1857211 (_1!30247 (h!58738 lt!1856664)) (_2!30247 (h!58738 lt!1856664))))))

(assert (=> b!4695943 call!328256))

(declare-fun lt!1857228 () Unit!125153)

(assert (=> b!4695943 (= lt!1857228 lt!1857231)))

(assert (=> b!4695943 (forall!11365 (toList!5645 lt!1856644) lambda!208834)))

(declare-fun lt!1857217 () Unit!125153)

(declare-fun Unit!125271 () Unit!125153)

(assert (=> b!4695943 (= lt!1857217 Unit!125271)))

(declare-fun res!1981690 () Bool)

(assert (=> b!4695943 (= res!1981690 (forall!11365 lt!1856664 lambda!208834))))

(declare-fun e!2929446 () Bool)

(assert (=> b!4695943 (=> (not res!1981690) (not e!2929446))))

(assert (=> b!4695943 e!2929446))

(declare-fun lt!1857218 () Unit!125153)

(declare-fun Unit!125272 () Unit!125153)

(assert (=> b!4695943 (= lt!1857218 Unit!125272)))

(declare-fun b!4695944 () Bool)

(assert (=> b!4695944 (= e!2929446 (forall!11365 (toList!5645 lt!1856644) lambda!208834))))

(assert (=> d!1492905 e!2929448))

(declare-fun res!1981691 () Bool)

(assert (=> d!1492905 (=> (not res!1981691) (not e!2929448))))

(assert (=> d!1492905 (= res!1981691 (forall!11365 lt!1856664 lambda!208835))))

(assert (=> d!1492905 (= lt!1857216 e!2929447)))

(assert (=> d!1492905 (= c!802805 ((_ is Nil!52475) lt!1856664))))

(assert (=> d!1492905 (noDuplicateKeys!1878 lt!1856664)))

(assert (=> d!1492905 (= (addToMapMapFromBucket!1310 lt!1856664 lt!1856644) lt!1857216)))

(declare-fun bm!328250 () Bool)

(assert (=> bm!328250 (= call!328255 (lemmaContainsAllItsOwnKeys!716 lt!1856644))))

(declare-fun bm!328251 () Bool)

(assert (=> bm!328251 (= call!328254 (forall!11365 (ite c!802805 (toList!5645 lt!1856644) lt!1856664) (ite c!802805 lambda!208832 lambda!208834)))))

(assert (= (and d!1492905 c!802805) b!4695941))

(assert (= (and d!1492905 (not c!802805)) b!4695943))

(assert (= (and b!4695943 res!1981690) b!4695944))

(assert (= (or b!4695941 b!4695943) bm!328250))

(assert (= (or b!4695941 b!4695943) bm!328251))

(assert (= (or b!4695941 b!4695943) bm!328249))

(assert (= (and d!1492905 res!1981691) b!4695940))

(assert (= (and b!4695940 res!1981689) b!4695942))

(assert (=> bm!328250 m!5603743))

(declare-fun m!5604463 () Bool)

(assert (=> b!4695943 m!5604463))

(declare-fun m!5604465 () Bool)

(assert (=> b!4695943 m!5604465))

(declare-fun m!5604467 () Bool)

(assert (=> b!4695943 m!5604467))

(declare-fun m!5604469 () Bool)

(assert (=> b!4695943 m!5604469))

(declare-fun m!5604471 () Bool)

(assert (=> b!4695943 m!5604471))

(declare-fun m!5604473 () Bool)

(assert (=> b!4695943 m!5604473))

(declare-fun m!5604475 () Bool)

(assert (=> b!4695943 m!5604475))

(declare-fun m!5604477 () Bool)

(assert (=> b!4695943 m!5604477))

(assert (=> b!4695943 m!5604475))

(declare-fun m!5604479 () Bool)

(assert (=> b!4695943 m!5604479))

(assert (=> b!4695943 m!5604467))

(declare-fun m!5604481 () Bool)

(assert (=> b!4695943 m!5604481))

(declare-fun m!5604483 () Bool)

(assert (=> b!4695943 m!5604483))

(declare-fun m!5604485 () Bool)

(assert (=> d!1492905 m!5604485))

(assert (=> d!1492905 m!5604111))

(declare-fun m!5604487 () Bool)

(assert (=> bm!328251 m!5604487))

(declare-fun m!5604489 () Bool)

(assert (=> b!4695940 m!5604489))

(declare-fun m!5604491 () Bool)

(assert (=> b!4695942 m!5604491))

(declare-fun m!5604493 () Bool)

(assert (=> bm!328249 m!5604493))

(assert (=> b!4695944 m!5604483))

(assert (=> b!4695505 d!1492905))

(declare-fun d!1492907 () Bool)

(assert (=> d!1492907 (= (eq!1037 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856639 lt!1856657) lt!1856644) (+!2162 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1856639)) (= (content!9214 (toList!5645 (addToMapMapFromBucket!1310 (Cons!52475 lt!1856639 lt!1856657) lt!1856644))) (content!9214 (toList!5645 (+!2162 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1856639)))))))

(declare-fun bs!1091154 () Bool)

(assert (= bs!1091154 d!1492907))

(declare-fun m!5604495 () Bool)

(assert (=> bs!1091154 m!5604495))

(declare-fun m!5604497 () Bool)

(assert (=> bs!1091154 m!5604497))

(assert (=> b!4695505 d!1492907))

(declare-fun d!1492909 () Bool)

(declare-fun e!2929449 () Bool)

(assert (=> d!1492909 e!2929449))

(declare-fun res!1981693 () Bool)

(assert (=> d!1492909 (=> (not res!1981693) (not e!2929449))))

(declare-fun lt!1857235 () ListMap!5009)

(assert (=> d!1492909 (= res!1981693 (contains!15716 lt!1857235 (_1!30247 (h!58738 oldBucket!34))))))

(declare-fun lt!1857234 () List!52599)

(assert (=> d!1492909 (= lt!1857235 (ListMap!5010 lt!1857234))))

(declare-fun lt!1857233 () Unit!125153)

(declare-fun lt!1857232 () Unit!125153)

(assert (=> d!1492909 (= lt!1857233 lt!1857232)))

(assert (=> d!1492909 (= (getValueByKey!1816 lt!1857234 (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492909 (= lt!1857232 (lemmaContainsTupThenGetReturnValue!1018 lt!1857234 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492909 (= lt!1857234 (insertNoDuplicatedKeys!526 (toList!5645 lt!1856656) (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492909 (= (+!2162 lt!1856656 (h!58738 oldBucket!34)) lt!1857235)))

(declare-fun b!4695945 () Bool)

(declare-fun res!1981692 () Bool)

(assert (=> b!4695945 (=> (not res!1981692) (not e!2929449))))

(assert (=> b!4695945 (= res!1981692 (= (getValueByKey!1816 (toList!5645 lt!1857235) (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34)))))))

(declare-fun b!4695946 () Bool)

(assert (=> b!4695946 (= e!2929449 (contains!15721 (toList!5645 lt!1857235) (h!58738 oldBucket!34)))))

(assert (= (and d!1492909 res!1981693) b!4695945))

(assert (= (and b!4695945 res!1981692) b!4695946))

(declare-fun m!5604499 () Bool)

(assert (=> d!1492909 m!5604499))

(declare-fun m!5604501 () Bool)

(assert (=> d!1492909 m!5604501))

(declare-fun m!5604503 () Bool)

(assert (=> d!1492909 m!5604503))

(declare-fun m!5604505 () Bool)

(assert (=> d!1492909 m!5604505))

(declare-fun m!5604507 () Bool)

(assert (=> b!4695945 m!5604507))

(declare-fun m!5604509 () Bool)

(assert (=> b!4695946 m!5604509))

(assert (=> b!4695505 d!1492909))

(declare-fun d!1492911 () Bool)

(declare-fun e!2929450 () Bool)

(assert (=> d!1492911 e!2929450))

(declare-fun res!1981695 () Bool)

(assert (=> d!1492911 (=> (not res!1981695) (not e!2929450))))

(declare-fun lt!1857239 () ListMap!5009)

(assert (=> d!1492911 (= res!1981695 (contains!15716 lt!1857239 (_1!30247 lt!1856639)))))

(declare-fun lt!1857238 () List!52599)

(assert (=> d!1492911 (= lt!1857239 (ListMap!5010 lt!1857238))))

(declare-fun lt!1857237 () Unit!125153)

(declare-fun lt!1857236 () Unit!125153)

(assert (=> d!1492911 (= lt!1857237 lt!1857236)))

(assert (=> d!1492911 (= (getValueByKey!1816 lt!1857238 (_1!30247 lt!1856639)) (Some!12139 (_2!30247 lt!1856639)))))

(assert (=> d!1492911 (= lt!1857236 (lemmaContainsTupThenGetReturnValue!1018 lt!1857238 (_1!30247 lt!1856639) (_2!30247 lt!1856639)))))

(assert (=> d!1492911 (= lt!1857238 (insertNoDuplicatedKeys!526 (toList!5645 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644)) (_1!30247 lt!1856639) (_2!30247 lt!1856639)))))

(assert (=> d!1492911 (= (+!2162 (addToMapMapFromBucket!1310 lt!1856657 lt!1856644) lt!1856639) lt!1857239)))

(declare-fun b!4695947 () Bool)

(declare-fun res!1981694 () Bool)

(assert (=> b!4695947 (=> (not res!1981694) (not e!2929450))))

(assert (=> b!4695947 (= res!1981694 (= (getValueByKey!1816 (toList!5645 lt!1857239) (_1!30247 lt!1856639)) (Some!12139 (_2!30247 lt!1856639))))))

(declare-fun b!4695948 () Bool)

(assert (=> b!4695948 (= e!2929450 (contains!15721 (toList!5645 lt!1857239) lt!1856639))))

(assert (= (and d!1492911 res!1981695) b!4695947))

(assert (= (and b!4695947 res!1981694) b!4695948))

(declare-fun m!5604511 () Bool)

(assert (=> d!1492911 m!5604511))

(declare-fun m!5604513 () Bool)

(assert (=> d!1492911 m!5604513))

(declare-fun m!5604515 () Bool)

(assert (=> d!1492911 m!5604515))

(declare-fun m!5604517 () Bool)

(assert (=> d!1492911 m!5604517))

(declare-fun m!5604519 () Bool)

(assert (=> b!4695947 m!5604519))

(declare-fun m!5604521 () Bool)

(assert (=> b!4695948 m!5604521))

(assert (=> b!4695505 d!1492911))

(declare-fun d!1492913 () Bool)

(declare-fun res!1981696 () Bool)

(declare-fun e!2929451 () Bool)

(assert (=> d!1492913 (=> res!1981696 e!2929451)))

(assert (=> d!1492913 (= res!1981696 (not ((_ is Cons!52475) newBucket!218)))))

(assert (=> d!1492913 (= (noDuplicateKeys!1878 newBucket!218) e!2929451)))

(declare-fun b!4695949 () Bool)

(declare-fun e!2929452 () Bool)

(assert (=> b!4695949 (= e!2929451 e!2929452)))

(declare-fun res!1981697 () Bool)

(assert (=> b!4695949 (=> (not res!1981697) (not e!2929452))))

(assert (=> b!4695949 (= res!1981697 (not (containsKey!3113 (t!359793 newBucket!218) (_1!30247 (h!58738 newBucket!218)))))))

(declare-fun b!4695950 () Bool)

(assert (=> b!4695950 (= e!2929452 (noDuplicateKeys!1878 (t!359793 newBucket!218)))))

(assert (= (and d!1492913 (not res!1981696)) b!4695949))

(assert (= (and b!4695949 res!1981697) b!4695950))

(declare-fun m!5604523 () Bool)

(assert (=> b!4695949 m!5604523))

(declare-fun m!5604525 () Bool)

(assert (=> b!4695950 m!5604525))

(assert (=> b!4695506 d!1492913))

(declare-fun d!1492915 () Bool)

(assert (=> d!1492915 (= (head!10020 (toList!5646 lm!2023)) (h!58739 (toList!5646 lm!2023)))))

(assert (=> b!4695527 d!1492915))

(declare-fun bs!1091155 () Bool)

(declare-fun d!1492917 () Bool)

(assert (= bs!1091155 (and d!1492917 b!4695645)))

(declare-fun lambda!208838 () Int)

(assert (=> bs!1091155 (not (= lambda!208838 lambda!208760))))

(declare-fun bs!1091156 () Bool)

(assert (= bs!1091156 (and d!1492917 b!4695927)))

(assert (=> bs!1091156 (not (= lambda!208838 lambda!208820))))

(declare-fun bs!1091157 () Bool)

(assert (= bs!1091157 (and d!1492917 b!4695941)))

(assert (=> bs!1091157 (not (= lambda!208838 lambda!208832))))

(declare-fun bs!1091158 () Bool)

(assert (= bs!1091158 (and d!1492917 b!4695943)))

(assert (=> bs!1091158 (not (= lambda!208838 lambda!208833))))

(declare-fun bs!1091159 () Bool)

(assert (= bs!1091159 (and d!1492917 d!1492675)))

(assert (=> bs!1091159 (not (= lambda!208838 lambda!208765))))

(declare-fun bs!1091160 () Bool)

(assert (= bs!1091160 (and d!1492917 b!4695647)))

(assert (=> bs!1091160 (not (= lambda!208838 lambda!208763))))

(assert (=> bs!1091156 (not (= lambda!208838 lambda!208819))))

(declare-fun bs!1091161 () Bool)

(assert (= bs!1091161 (and d!1492917 b!4695930)))

(assert (=> bs!1091161 (not (= lambda!208838 lambda!208822))))

(declare-fun bs!1091162 () Bool)

(assert (= bs!1091162 (and d!1492917 b!4695916)))

(assert (=> bs!1091162 (not (= lambda!208838 lambda!208816))))

(declare-fun bs!1091163 () Bool)

(assert (= bs!1091163 (and d!1492917 d!1492887)))

(assert (=> bs!1091163 (not (= lambda!208838 lambda!208825))))

(declare-fun bs!1091164 () Bool)

(assert (= bs!1091164 (and d!1492917 b!4695914)))

(assert (=> bs!1091164 (not (= lambda!208838 lambda!208814))))

(declare-fun bs!1091165 () Bool)

(assert (= bs!1091165 (and d!1492917 d!1492883)))

(assert (=> bs!1091165 (not (= lambda!208838 lambda!208821))))

(declare-fun bs!1091166 () Bool)

(assert (= bs!1091166 (and d!1492917 b!4695932)))

(assert (=> bs!1091166 (not (= lambda!208838 lambda!208823))))

(declare-fun bs!1091167 () Bool)

(assert (= bs!1091167 (and d!1492917 d!1492905)))

(assert (=> bs!1091167 (not (= lambda!208838 lambda!208835))))

(assert (=> bs!1091160 (not (= lambda!208838 lambda!208762))))

(assert (=> bs!1091162 (not (= lambda!208838 lambda!208815))))

(assert (=> bs!1091158 (not (= lambda!208838 lambda!208834))))

(declare-fun bs!1091168 () Bool)

(assert (= bs!1091168 (and d!1492917 d!1492877)))

(assert (=> bs!1091168 (not (= lambda!208838 lambda!208817))))

(assert (=> bs!1091166 (not (= lambda!208838 lambda!208824))))

(declare-fun bs!1091169 () Bool)

(assert (= bs!1091169 (and d!1492917 b!4695925)))

(assert (=> bs!1091169 (not (= lambda!208838 lambda!208818))))

(assert (=> d!1492917 true))

(assert (=> d!1492917 true))

(assert (=> d!1492917 (= (allKeysSameHash!1704 newBucket!218 hash!405 hashF!1323) (forall!11365 newBucket!218 lambda!208838))))

(declare-fun bs!1091170 () Bool)

(assert (= bs!1091170 d!1492917))

(declare-fun m!5604527 () Bool)

(assert (=> bs!1091170 m!5604527))

(assert (=> b!4695517 d!1492917))

(declare-fun b!4695955 () Bool)

(declare-fun e!2929455 () Bool)

(declare-fun e!2929457 () Bool)

(assert (=> b!4695955 (= e!2929455 e!2929457)))

(declare-fun res!1981699 () Bool)

(assert (=> b!4695955 (=> (not res!1981699) (not e!2929457))))

(assert (=> b!4695955 (= res!1981699 (isDefined!9395 (getValueByKey!1816 (toList!5645 lt!1856652) key!4653)))))

(declare-fun b!4695956 () Bool)

(declare-fun e!2929456 () Unit!125153)

(declare-fun e!2929458 () Unit!125153)

(assert (=> b!4695956 (= e!2929456 e!2929458)))

(declare-fun c!802806 () Bool)

(declare-fun call!328257 () Bool)

(assert (=> b!4695956 (= c!802806 call!328257)))

(declare-fun b!4695957 () Bool)

(declare-fun e!2929454 () List!52602)

(assert (=> b!4695957 (= e!2929454 (keys!18755 lt!1856652))))

(declare-fun b!4695958 () Bool)

(declare-fun lt!1857246 () Unit!125153)

(assert (=> b!4695958 (= e!2929456 lt!1857246)))

(declare-fun lt!1857242 () Unit!125153)

(assert (=> b!4695958 (= lt!1857242 (lemmaContainsKeyImpliesGetValueByKeyDefined!1708 (toList!5645 lt!1856652) key!4653))))

(assert (=> b!4695958 (isDefined!9395 (getValueByKey!1816 (toList!5645 lt!1856652) key!4653))))

(declare-fun lt!1857247 () Unit!125153)

(assert (=> b!4695958 (= lt!1857247 lt!1857242)))

(assert (=> b!4695958 (= lt!1857246 (lemmaInListThenGetKeysListContains!863 (toList!5645 lt!1856652) key!4653))))

(assert (=> b!4695958 call!328257))

(declare-fun b!4695959 () Bool)

(declare-fun e!2929453 () Bool)

(assert (=> b!4695959 (= e!2929453 (not (contains!15722 (keys!18755 lt!1856652) key!4653)))))

(declare-fun bm!328252 () Bool)

(assert (=> bm!328252 (= call!328257 (contains!15722 e!2929454 key!4653))))

(declare-fun c!802807 () Bool)

(declare-fun c!802808 () Bool)

(assert (=> bm!328252 (= c!802807 c!802808)))

(declare-fun d!1492919 () Bool)

(assert (=> d!1492919 e!2929455))

(declare-fun res!1981700 () Bool)

(assert (=> d!1492919 (=> res!1981700 e!2929455)))

(assert (=> d!1492919 (= res!1981700 e!2929453)))

(declare-fun res!1981698 () Bool)

(assert (=> d!1492919 (=> (not res!1981698) (not e!2929453))))

(declare-fun lt!1857244 () Bool)

(assert (=> d!1492919 (= res!1981698 (not lt!1857244))))

(declare-fun lt!1857243 () Bool)

(assert (=> d!1492919 (= lt!1857244 lt!1857243)))

(declare-fun lt!1857241 () Unit!125153)

(assert (=> d!1492919 (= lt!1857241 e!2929456)))

(assert (=> d!1492919 (= c!802808 lt!1857243)))

(assert (=> d!1492919 (= lt!1857243 (containsKey!3116 (toList!5645 lt!1856652) key!4653))))

(assert (=> d!1492919 (= (contains!15716 lt!1856652 key!4653) lt!1857244)))

(declare-fun b!4695960 () Bool)

(assert (=> b!4695960 (= e!2929454 (getKeysList!868 (toList!5645 lt!1856652)))))

(declare-fun b!4695961 () Bool)

(assert (=> b!4695961 false))

(declare-fun lt!1857245 () Unit!125153)

(declare-fun lt!1857240 () Unit!125153)

(assert (=> b!4695961 (= lt!1857245 lt!1857240)))

(assert (=> b!4695961 (containsKey!3116 (toList!5645 lt!1856652) key!4653)))

(assert (=> b!4695961 (= lt!1857240 (lemmaInGetKeysListThenContainsKey!867 (toList!5645 lt!1856652) key!4653))))

(declare-fun Unit!125273 () Unit!125153)

(assert (=> b!4695961 (= e!2929458 Unit!125273)))

(declare-fun b!4695962 () Bool)

(declare-fun Unit!125274 () Unit!125153)

(assert (=> b!4695962 (= e!2929458 Unit!125274)))

(declare-fun b!4695963 () Bool)

(assert (=> b!4695963 (= e!2929457 (contains!15722 (keys!18755 lt!1856652) key!4653))))

(assert (= (and d!1492919 c!802808) b!4695958))

(assert (= (and d!1492919 (not c!802808)) b!4695956))

(assert (= (and b!4695956 c!802806) b!4695961))

(assert (= (and b!4695956 (not c!802806)) b!4695962))

(assert (= (or b!4695958 b!4695956) bm!328252))

(assert (= (and bm!328252 c!802807) b!4695960))

(assert (= (and bm!328252 (not c!802807)) b!4695957))

(assert (= (and d!1492919 res!1981698) b!4695959))

(assert (= (and d!1492919 (not res!1981700)) b!4695955))

(assert (= (and b!4695955 res!1981699) b!4695963))

(declare-fun m!5604529 () Bool)

(assert (=> b!4695963 m!5604529))

(assert (=> b!4695963 m!5604529))

(declare-fun m!5604531 () Bool)

(assert (=> b!4695963 m!5604531))

(declare-fun m!5604533 () Bool)

(assert (=> b!4695961 m!5604533))

(declare-fun m!5604535 () Bool)

(assert (=> b!4695961 m!5604535))

(declare-fun m!5604537 () Bool)

(assert (=> b!4695955 m!5604537))

(assert (=> b!4695955 m!5604537))

(declare-fun m!5604539 () Bool)

(assert (=> b!4695955 m!5604539))

(assert (=> b!4695957 m!5604529))

(declare-fun m!5604541 () Bool)

(assert (=> b!4695960 m!5604541))

(assert (=> d!1492919 m!5604533))

(declare-fun m!5604543 () Bool)

(assert (=> b!4695958 m!5604543))

(assert (=> b!4695958 m!5604537))

(assert (=> b!4695958 m!5604537))

(assert (=> b!4695958 m!5604539))

(declare-fun m!5604545 () Bool)

(assert (=> b!4695958 m!5604545))

(assert (=> b!4695959 m!5604529))

(assert (=> b!4695959 m!5604529))

(assert (=> b!4695959 m!5604531))

(declare-fun m!5604547 () Bool)

(assert (=> bm!328252 m!5604547))

(assert (=> b!4695518 d!1492919))

(declare-fun bs!1091171 () Bool)

(declare-fun d!1492921 () Bool)

(assert (= bs!1091171 (and d!1492921 start!475592)))

(declare-fun lambda!208839 () Int)

(assert (=> bs!1091171 (= lambda!208839 lambda!208681)))

(declare-fun bs!1091172 () Bool)

(assert (= bs!1091172 (and d!1492921 d!1492895)))

(assert (=> bs!1091172 (= lambda!208839 lambda!208829)))

(declare-fun bs!1091173 () Bool)

(assert (= bs!1091173 (and d!1492921 d!1492841)))

(assert (=> bs!1091173 (= lambda!208839 lambda!208809)))

(declare-fun bs!1091174 () Bool)

(assert (= bs!1091174 (and d!1492921 d!1492897)))

(assert (=> bs!1091174 (= lambda!208839 lambda!208830)))

(declare-fun bs!1091175 () Bool)

(assert (= bs!1091175 (and d!1492921 d!1492759)))

(assert (=> bs!1091175 (= lambda!208839 lambda!208782)))

(declare-fun bs!1091176 () Bool)

(assert (= bs!1091176 (and d!1492921 d!1492827)))

(assert (=> bs!1091176 (= lambda!208839 lambda!208797)))

(declare-fun bs!1091177 () Bool)

(assert (= bs!1091177 (and d!1492921 d!1492899)))

(assert (=> bs!1091177 (= lambda!208839 lambda!208831)))

(declare-fun bs!1091178 () Bool)

(assert (= bs!1091178 (and d!1492921 d!1492761)))

(assert (=> bs!1091178 (= lambda!208839 lambda!208796)))

(declare-fun bs!1091179 () Bool)

(assert (= bs!1091179 (and d!1492921 d!1492831)))

(assert (=> bs!1091179 (= lambda!208839 lambda!208808)))

(declare-fun bs!1091180 () Bool)

(assert (= bs!1091180 (and d!1492921 d!1492829)))

(assert (=> bs!1091180 (= lambda!208839 lambda!208798)))

(declare-fun bs!1091181 () Bool)

(assert (= bs!1091181 (and d!1492921 d!1492723)))

(assert (=> bs!1091181 (= lambda!208839 lambda!208774)))

(declare-fun bs!1091182 () Bool)

(assert (= bs!1091182 (and d!1492921 d!1492891)))

(assert (=> bs!1091182 (= lambda!208839 lambda!208826)))

(declare-fun lt!1857248 () ListMap!5009)

(assert (=> d!1492921 (invariantList!1428 (toList!5645 lt!1857248))))

(declare-fun e!2929459 () ListMap!5009)

(assert (=> d!1492921 (= lt!1857248 e!2929459)))

(declare-fun c!802809 () Bool)

(assert (=> d!1492921 (= c!802809 ((_ is Cons!52476) (toList!5646 lm!2023)))))

(assert (=> d!1492921 (forall!11363 (toList!5646 lm!2023) lambda!208839)))

(assert (=> d!1492921 (= (extractMap!1904 (toList!5646 lm!2023)) lt!1857248)))

(declare-fun b!4695964 () Bool)

(assert (=> b!4695964 (= e!2929459 (addToMapMapFromBucket!1310 (_2!30248 (h!58739 (toList!5646 lm!2023))) (extractMap!1904 (t!359794 (toList!5646 lm!2023)))))))

(declare-fun b!4695965 () Bool)

(assert (=> b!4695965 (= e!2929459 (ListMap!5010 Nil!52475))))

(assert (= (and d!1492921 c!802809) b!4695964))

(assert (= (and d!1492921 (not c!802809)) b!4695965))

(declare-fun m!5604549 () Bool)

(assert (=> d!1492921 m!5604549))

(declare-fun m!5604551 () Bool)

(assert (=> d!1492921 m!5604551))

(assert (=> b!4695964 m!5603425))

(assert (=> b!4695964 m!5603425))

(declare-fun m!5604553 () Bool)

(assert (=> b!4695964 m!5604553))

(assert (=> b!4695518 d!1492921))

(declare-fun d!1492923 () Bool)

(declare-fun res!1981701 () Bool)

(declare-fun e!2929460 () Bool)

(assert (=> d!1492923 (=> res!1981701 e!2929460)))

(assert (=> d!1492923 (= res!1981701 ((_ is Nil!52476) lt!1856651))))

(assert (=> d!1492923 (= (forall!11363 lt!1856651 lambda!208681) e!2929460)))

(declare-fun b!4695966 () Bool)

(declare-fun e!2929461 () Bool)

(assert (=> b!4695966 (= e!2929460 e!2929461)))

(declare-fun res!1981702 () Bool)

(assert (=> b!4695966 (=> (not res!1981702) (not e!2929461))))

(assert (=> b!4695966 (= res!1981702 (dynLambda!21730 lambda!208681 (h!58739 lt!1856651)))))

(declare-fun b!4695967 () Bool)

(assert (=> b!4695967 (= e!2929461 (forall!11363 (t!359794 lt!1856651) lambda!208681))))

(assert (= (and d!1492923 (not res!1981701)) b!4695966))

(assert (= (and b!4695966 res!1981702) b!4695967))

(declare-fun b_lambda!177197 () Bool)

(assert (=> (not b_lambda!177197) (not b!4695966)))

(declare-fun m!5604555 () Bool)

(assert (=> b!4695966 m!5604555))

(declare-fun m!5604557 () Bool)

(assert (=> b!4695967 m!5604557))

(assert (=> b!4695507 d!1492923))

(declare-fun bs!1091183 () Bool)

(declare-fun d!1492925 () Bool)

(assert (= bs!1091183 (and d!1492925 b!4695645)))

(declare-fun lambda!208840 () Int)

(assert (=> bs!1091183 (not (= lambda!208840 lambda!208760))))

(declare-fun bs!1091184 () Bool)

(assert (= bs!1091184 (and d!1492925 b!4695927)))

(assert (=> bs!1091184 (not (= lambda!208840 lambda!208820))))

(declare-fun bs!1091185 () Bool)

(assert (= bs!1091185 (and d!1492925 b!4695941)))

(assert (=> bs!1091185 (not (= lambda!208840 lambda!208832))))

(declare-fun bs!1091186 () Bool)

(assert (= bs!1091186 (and d!1492925 b!4695943)))

(assert (=> bs!1091186 (not (= lambda!208840 lambda!208833))))

(declare-fun bs!1091187 () Bool)

(assert (= bs!1091187 (and d!1492925 d!1492675)))

(assert (=> bs!1091187 (not (= lambda!208840 lambda!208765))))

(assert (=> bs!1091184 (not (= lambda!208840 lambda!208819))))

(declare-fun bs!1091188 () Bool)

(assert (= bs!1091188 (and d!1492925 b!4695930)))

(assert (=> bs!1091188 (not (= lambda!208840 lambda!208822))))

(declare-fun bs!1091189 () Bool)

(assert (= bs!1091189 (and d!1492925 b!4695916)))

(assert (=> bs!1091189 (not (= lambda!208840 lambda!208816))))

(declare-fun bs!1091190 () Bool)

(assert (= bs!1091190 (and d!1492925 d!1492887)))

(assert (=> bs!1091190 (not (= lambda!208840 lambda!208825))))

(declare-fun bs!1091191 () Bool)

(assert (= bs!1091191 (and d!1492925 b!4695914)))

(assert (=> bs!1091191 (not (= lambda!208840 lambda!208814))))

(declare-fun bs!1091192 () Bool)

(assert (= bs!1091192 (and d!1492925 d!1492883)))

(assert (=> bs!1091192 (not (= lambda!208840 lambda!208821))))

(declare-fun bs!1091193 () Bool)

(assert (= bs!1091193 (and d!1492925 b!4695932)))

(assert (=> bs!1091193 (not (= lambda!208840 lambda!208823))))

(declare-fun bs!1091194 () Bool)

(assert (= bs!1091194 (and d!1492925 d!1492905)))

(assert (=> bs!1091194 (not (= lambda!208840 lambda!208835))))

(declare-fun bs!1091195 () Bool)

(assert (= bs!1091195 (and d!1492925 b!4695647)))

(assert (=> bs!1091195 (not (= lambda!208840 lambda!208762))))

(assert (=> bs!1091189 (not (= lambda!208840 lambda!208815))))

(declare-fun bs!1091196 () Bool)

(assert (= bs!1091196 (and d!1492925 d!1492917)))

(assert (=> bs!1091196 (= lambda!208840 lambda!208838)))

(assert (=> bs!1091195 (not (= lambda!208840 lambda!208763))))

(assert (=> bs!1091186 (not (= lambda!208840 lambda!208834))))

(declare-fun bs!1091197 () Bool)

(assert (= bs!1091197 (and d!1492925 d!1492877)))

(assert (=> bs!1091197 (not (= lambda!208840 lambda!208817))))

(assert (=> bs!1091193 (not (= lambda!208840 lambda!208824))))

(declare-fun bs!1091198 () Bool)

(assert (= bs!1091198 (and d!1492925 b!4695925)))

(assert (=> bs!1091198 (not (= lambda!208840 lambda!208818))))

(assert (=> d!1492925 true))

(assert (=> d!1492925 true))

(assert (=> d!1492925 (= (allKeysSameHash!1704 oldBucket!34 hash!405 hashF!1323) (forall!11365 oldBucket!34 lambda!208840))))

(declare-fun bs!1091199 () Bool)

(assert (= bs!1091199 d!1492925))

(declare-fun m!5604559 () Bool)

(assert (=> bs!1091199 m!5604559))

(assert (=> b!4695508 d!1492925))

(declare-fun d!1492927 () Bool)

(declare-fun hash!4123 (Hashable!6247 K!13845) (_ BitVec 64))

(assert (=> d!1492927 (= (hash!4119 hashF!1323 key!4653) (hash!4123 hashF!1323 key!4653))))

(declare-fun bs!1091200 () Bool)

(assert (= bs!1091200 d!1492927))

(declare-fun m!5604561 () Bool)

(assert (=> bs!1091200 m!5604561))

(assert (=> b!4695519 d!1492927))

(declare-fun d!1492929 () Bool)

(assert (=> d!1492929 (= (eq!1037 lt!1856663 (+!2162 lt!1856656 lt!1856639)) (= (content!9214 (toList!5645 lt!1856663)) (content!9214 (toList!5645 (+!2162 lt!1856656 lt!1856639)))))))

(declare-fun bs!1091201 () Bool)

(assert (= bs!1091201 d!1492929))

(assert (=> bs!1091201 m!5604351))

(declare-fun m!5604563 () Bool)

(assert (=> bs!1091201 m!5604563))

(assert (=> b!4695520 d!1492929))

(declare-fun d!1492931 () Bool)

(declare-fun e!2929462 () Bool)

(assert (=> d!1492931 e!2929462))

(declare-fun res!1981704 () Bool)

(assert (=> d!1492931 (=> (not res!1981704) (not e!2929462))))

(declare-fun lt!1857252 () ListMap!5009)

(assert (=> d!1492931 (= res!1981704 (contains!15716 lt!1857252 (_1!30247 lt!1856639)))))

(declare-fun lt!1857251 () List!52599)

(assert (=> d!1492931 (= lt!1857252 (ListMap!5010 lt!1857251))))

(declare-fun lt!1857250 () Unit!125153)

(declare-fun lt!1857249 () Unit!125153)

(assert (=> d!1492931 (= lt!1857250 lt!1857249)))

(assert (=> d!1492931 (= (getValueByKey!1816 lt!1857251 (_1!30247 lt!1856639)) (Some!12139 (_2!30247 lt!1856639)))))

(assert (=> d!1492931 (= lt!1857249 (lemmaContainsTupThenGetReturnValue!1018 lt!1857251 (_1!30247 lt!1856639) (_2!30247 lt!1856639)))))

(assert (=> d!1492931 (= lt!1857251 (insertNoDuplicatedKeys!526 (toList!5645 lt!1856656) (_1!30247 lt!1856639) (_2!30247 lt!1856639)))))

(assert (=> d!1492931 (= (+!2162 lt!1856656 lt!1856639) lt!1857252)))

(declare-fun b!4695968 () Bool)

(declare-fun res!1981703 () Bool)

(assert (=> b!4695968 (=> (not res!1981703) (not e!2929462))))

(assert (=> b!4695968 (= res!1981703 (= (getValueByKey!1816 (toList!5645 lt!1857252) (_1!30247 lt!1856639)) (Some!12139 (_2!30247 lt!1856639))))))

(declare-fun b!4695969 () Bool)

(assert (=> b!4695969 (= e!2929462 (contains!15721 (toList!5645 lt!1857252) lt!1856639))))

(assert (= (and d!1492931 res!1981704) b!4695968))

(assert (= (and b!4695968 res!1981703) b!4695969))

(declare-fun m!5604565 () Bool)

(assert (=> d!1492931 m!5604565))

(declare-fun m!5604567 () Bool)

(assert (=> d!1492931 m!5604567))

(declare-fun m!5604569 () Bool)

(assert (=> d!1492931 m!5604569))

(declare-fun m!5604571 () Bool)

(assert (=> d!1492931 m!5604571))

(declare-fun m!5604573 () Bool)

(assert (=> b!4695968 m!5604573))

(declare-fun m!5604575 () Bool)

(assert (=> b!4695969 m!5604575))

(assert (=> b!4695520 d!1492931))

(declare-fun d!1492933 () Bool)

(declare-fun e!2929463 () Bool)

(assert (=> d!1492933 e!2929463))

(declare-fun res!1981706 () Bool)

(assert (=> d!1492933 (=> (not res!1981706) (not e!2929463))))

(declare-fun lt!1857256 () ListMap!5009)

(assert (=> d!1492933 (= res!1981706 (contains!15716 lt!1857256 (_1!30247 (h!58738 oldBucket!34))))))

(declare-fun lt!1857255 () List!52599)

(assert (=> d!1492933 (= lt!1857256 (ListMap!5010 lt!1857255))))

(declare-fun lt!1857254 () Unit!125153)

(declare-fun lt!1857253 () Unit!125153)

(assert (=> d!1492933 (= lt!1857254 lt!1857253)))

(assert (=> d!1492933 (= (getValueByKey!1816 lt!1857255 (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492933 (= lt!1857253 (lemmaContainsTupThenGetReturnValue!1018 lt!1857255 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492933 (= lt!1857255 (insertNoDuplicatedKeys!526 (toList!5645 lt!1856668) (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492933 (= (+!2162 lt!1856668 (h!58738 oldBucket!34)) lt!1857256)))

(declare-fun b!4695970 () Bool)

(declare-fun res!1981705 () Bool)

(assert (=> b!4695970 (=> (not res!1981705) (not e!2929463))))

(assert (=> b!4695970 (= res!1981705 (= (getValueByKey!1816 (toList!5645 lt!1857256) (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34)))))))

(declare-fun b!4695971 () Bool)

(assert (=> b!4695971 (= e!2929463 (contains!15721 (toList!5645 lt!1857256) (h!58738 oldBucket!34)))))

(assert (= (and d!1492933 res!1981706) b!4695970))

(assert (= (and b!4695970 res!1981705) b!4695971))

(declare-fun m!5604577 () Bool)

(assert (=> d!1492933 m!5604577))

(declare-fun m!5604579 () Bool)

(assert (=> d!1492933 m!5604579))

(declare-fun m!5604581 () Bool)

(assert (=> d!1492933 m!5604581))

(declare-fun m!5604583 () Bool)

(assert (=> d!1492933 m!5604583))

(declare-fun m!5604585 () Bool)

(assert (=> b!4695970 m!5604585))

(declare-fun m!5604587 () Bool)

(assert (=> b!4695971 m!5604587))

(assert (=> b!4695509 d!1492933))

(declare-fun d!1492935 () Bool)

(declare-fun e!2929464 () Bool)

(assert (=> d!1492935 e!2929464))

(declare-fun res!1981707 () Bool)

(assert (=> d!1492935 (=> (not res!1981707) (not e!2929464))))

(declare-fun lt!1857257 () ListMap!5009)

(assert (=> d!1492935 (= res!1981707 (not (contains!15716 lt!1857257 key!4653)))))

(assert (=> d!1492935 (= lt!1857257 (ListMap!5010 (removePresrvNoDuplicatedKeys!349 (toList!5645 (+!2162 lt!1856660 (h!58738 oldBucket!34))) key!4653)))))

(assert (=> d!1492935 (= (-!682 (+!2162 lt!1856660 (h!58738 oldBucket!34)) key!4653) lt!1857257)))

(declare-fun b!4695972 () Bool)

(assert (=> b!4695972 (= e!2929464 (= ((_ map and) (content!9215 (keys!18755 (+!2162 lt!1856660 (h!58738 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13845 Bool)) false) key!4653 true))) (content!9215 (keys!18755 lt!1857257))))))

(assert (= (and d!1492935 res!1981707) b!4695972))

(declare-fun m!5604589 () Bool)

(assert (=> d!1492935 m!5604589))

(declare-fun m!5604591 () Bool)

(assert (=> d!1492935 m!5604591))

(assert (=> b!4695972 m!5603479))

(declare-fun m!5604593 () Bool)

(assert (=> b!4695972 m!5604593))

(declare-fun m!5604595 () Bool)

(assert (=> b!4695972 m!5604595))

(assert (=> b!4695972 m!5604593))

(declare-fun m!5604597 () Bool)

(assert (=> b!4695972 m!5604597))

(assert (=> b!4695972 m!5604135))

(assert (=> b!4695972 m!5604595))

(declare-fun m!5604599 () Bool)

(assert (=> b!4695972 m!5604599))

(assert (=> b!4695509 d!1492935))

(declare-fun d!1492937 () Bool)

(declare-fun e!2929465 () Bool)

(assert (=> d!1492937 e!2929465))

(declare-fun res!1981709 () Bool)

(assert (=> d!1492937 (=> (not res!1981709) (not e!2929465))))

(declare-fun lt!1857261 () ListMap!5009)

(assert (=> d!1492937 (= res!1981709 (contains!15716 lt!1857261 (_1!30247 (h!58738 oldBucket!34))))))

(declare-fun lt!1857260 () List!52599)

(assert (=> d!1492937 (= lt!1857261 (ListMap!5010 lt!1857260))))

(declare-fun lt!1857259 () Unit!125153)

(declare-fun lt!1857258 () Unit!125153)

(assert (=> d!1492937 (= lt!1857259 lt!1857258)))

(assert (=> d!1492937 (= (getValueByKey!1816 lt!1857260 (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492937 (= lt!1857258 (lemmaContainsTupThenGetReturnValue!1018 lt!1857260 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492937 (= lt!1857260 (insertNoDuplicatedKeys!526 (toList!5645 lt!1856660) (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34))))))

(assert (=> d!1492937 (= (+!2162 lt!1856660 (h!58738 oldBucket!34)) lt!1857261)))

(declare-fun b!4695973 () Bool)

(declare-fun res!1981708 () Bool)

(assert (=> b!4695973 (=> (not res!1981708) (not e!2929465))))

(assert (=> b!4695973 (= res!1981708 (= (getValueByKey!1816 (toList!5645 lt!1857261) (_1!30247 (h!58738 oldBucket!34))) (Some!12139 (_2!30247 (h!58738 oldBucket!34)))))))

(declare-fun b!4695974 () Bool)

(assert (=> b!4695974 (= e!2929465 (contains!15721 (toList!5645 lt!1857261) (h!58738 oldBucket!34)))))

(assert (= (and d!1492937 res!1981709) b!4695973))

(assert (= (and b!4695973 res!1981708) b!4695974))

(declare-fun m!5604601 () Bool)

(assert (=> d!1492937 m!5604601))

(declare-fun m!5604603 () Bool)

(assert (=> d!1492937 m!5604603))

(declare-fun m!5604605 () Bool)

(assert (=> d!1492937 m!5604605))

(declare-fun m!5604607 () Bool)

(assert (=> d!1492937 m!5604607))

(declare-fun m!5604609 () Bool)

(assert (=> b!4695973 m!5604609))

(declare-fun m!5604611 () Bool)

(assert (=> b!4695974 m!5604611))

(assert (=> b!4695509 d!1492937))

(declare-fun d!1492939 () Bool)

(assert (=> d!1492939 (= (-!682 (+!2162 lt!1856660 (tuple2!53907 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34)))) key!4653) (+!2162 (-!682 lt!1856660 key!4653) (tuple2!53907 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34)))))))

(declare-fun lt!1857264 () Unit!125153)

(declare-fun choose!32737 (ListMap!5009 K!13845 V!14091 K!13845) Unit!125153)

(assert (=> d!1492939 (= lt!1857264 (choose!32737 lt!1856660 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34)) key!4653))))

(assert (=> d!1492939 (not (= (_1!30247 (h!58738 oldBucket!34)) key!4653))))

(assert (=> d!1492939 (= (addRemoveCommutativeForDiffKeys!83 lt!1856660 (_1!30247 (h!58738 oldBucket!34)) (_2!30247 (h!58738 oldBucket!34)) key!4653) lt!1857264)))

(declare-fun bs!1091202 () Bool)

(assert (= bs!1091202 d!1492939))

(declare-fun m!5604613 () Bool)

(assert (=> bs!1091202 m!5604613))

(assert (=> bs!1091202 m!5603515))

(declare-fun m!5604615 () Bool)

(assert (=> bs!1091202 m!5604615))

(declare-fun m!5604617 () Bool)

(assert (=> bs!1091202 m!5604617))

(assert (=> bs!1091202 m!5604615))

(assert (=> bs!1091202 m!5603515))

(declare-fun m!5604619 () Bool)

(assert (=> bs!1091202 m!5604619))

(assert (=> b!4695509 d!1492939))

(declare-fun bs!1091203 () Bool)

(declare-fun d!1492941 () Bool)

(assert (= bs!1091203 (and d!1492941 start!475592)))

(declare-fun lambda!208843 () Int)

(assert (=> bs!1091203 (not (= lambda!208843 lambda!208681))))

(declare-fun bs!1091204 () Bool)

(assert (= bs!1091204 (and d!1492941 d!1492921)))

(assert (=> bs!1091204 (not (= lambda!208843 lambda!208839))))

(declare-fun bs!1091205 () Bool)

(assert (= bs!1091205 (and d!1492941 d!1492895)))

(assert (=> bs!1091205 (not (= lambda!208843 lambda!208829))))

(declare-fun bs!1091206 () Bool)

(assert (= bs!1091206 (and d!1492941 d!1492841)))

(assert (=> bs!1091206 (not (= lambda!208843 lambda!208809))))

(declare-fun bs!1091207 () Bool)

(assert (= bs!1091207 (and d!1492941 d!1492897)))

(assert (=> bs!1091207 (not (= lambda!208843 lambda!208830))))

(declare-fun bs!1091208 () Bool)

(assert (= bs!1091208 (and d!1492941 d!1492759)))

(assert (=> bs!1091208 (not (= lambda!208843 lambda!208782))))

(declare-fun bs!1091209 () Bool)

(assert (= bs!1091209 (and d!1492941 d!1492827)))

(assert (=> bs!1091209 (not (= lambda!208843 lambda!208797))))

(declare-fun bs!1091210 () Bool)

(assert (= bs!1091210 (and d!1492941 d!1492899)))

(assert (=> bs!1091210 (not (= lambda!208843 lambda!208831))))

(declare-fun bs!1091211 () Bool)

(assert (= bs!1091211 (and d!1492941 d!1492761)))

(assert (=> bs!1091211 (not (= lambda!208843 lambda!208796))))

(declare-fun bs!1091212 () Bool)

(assert (= bs!1091212 (and d!1492941 d!1492831)))

(assert (=> bs!1091212 (not (= lambda!208843 lambda!208808))))

(declare-fun bs!1091213 () Bool)

(assert (= bs!1091213 (and d!1492941 d!1492829)))

(assert (=> bs!1091213 (not (= lambda!208843 lambda!208798))))

(declare-fun bs!1091214 () Bool)

(assert (= bs!1091214 (and d!1492941 d!1492723)))

(assert (=> bs!1091214 (not (= lambda!208843 lambda!208774))))

(declare-fun bs!1091215 () Bool)

(assert (= bs!1091215 (and d!1492941 d!1492891)))

(assert (=> bs!1091215 (not (= lambda!208843 lambda!208826))))

(assert (=> d!1492941 true))

(assert (=> d!1492941 (= (allKeysSameHashInMap!1792 lm!2023 hashF!1323) (forall!11363 (toList!5646 lm!2023) lambda!208843))))

(declare-fun bs!1091216 () Bool)

(assert (= bs!1091216 d!1492941))

(declare-fun m!5604621 () Bool)

(assert (=> bs!1091216 m!5604621))

(assert (=> b!4695510 d!1492941))

(declare-fun tp!1346326 () Bool)

(declare-fun e!2929468 () Bool)

(declare-fun b!4695981 () Bool)

(assert (=> b!4695981 (= e!2929468 (and tp_is_empty!30805 tp_is_empty!30807 tp!1346326))))

(assert (=> b!4695521 (= tp!1346311 e!2929468)))

(assert (= (and b!4695521 ((_ is Cons!52475) (t!359793 newBucket!218))) b!4695981))

(declare-fun b!4695986 () Bool)

(declare-fun e!2929471 () Bool)

(declare-fun tp!1346331 () Bool)

(declare-fun tp!1346332 () Bool)

(assert (=> b!4695986 (= e!2929471 (and tp!1346331 tp!1346332))))

(assert (=> b!4695522 (= tp!1346313 e!2929471)))

(assert (= (and b!4695522 ((_ is Cons!52476) (toList!5646 lm!2023))) b!4695986))

(declare-fun b!4695987 () Bool)

(declare-fun tp!1346333 () Bool)

(declare-fun e!2929472 () Bool)

(assert (=> b!4695987 (= e!2929472 (and tp_is_empty!30805 tp_is_empty!30807 tp!1346333))))

(assert (=> b!4695515 (= tp!1346312 e!2929472)))

(assert (= (and b!4695515 ((_ is Cons!52475) (t!359793 oldBucket!34))) b!4695987))

(declare-fun b_lambda!177199 () Bool)

(assert (= b_lambda!177187 (or start!475592 b_lambda!177199)))

(declare-fun bs!1091217 () Bool)

(declare-fun d!1492943 () Bool)

(assert (= bs!1091217 (and d!1492943 start!475592)))

(assert (=> bs!1091217 (= (dynLambda!21730 lambda!208681 (h!58739 (toList!5646 lm!2023))) (noDuplicateKeys!1878 (_2!30248 (h!58739 (toList!5646 lm!2023)))))))

(assert (=> bs!1091217 m!5603769))

(assert (=> b!4695865 d!1492943))

(declare-fun b_lambda!177201 () Bool)

(assert (= b_lambda!177185 (or start!475592 b_lambda!177201)))

(declare-fun bs!1091218 () Bool)

(declare-fun d!1492945 () Bool)

(assert (= bs!1091218 (and d!1492945 start!475592)))

(assert (=> bs!1091218 (= (dynLambda!21730 lambda!208681 lt!1856666) (noDuplicateKeys!1878 (_2!30248 lt!1856666)))))

(declare-fun m!5604623 () Bool)

(assert (=> bs!1091218 m!5604623))

(assert (=> d!1492791 d!1492945))

(declare-fun b_lambda!177203 () Bool)

(assert (= b_lambda!177197 (or start!475592 b_lambda!177203)))

(declare-fun bs!1091219 () Bool)

(declare-fun d!1492947 () Bool)

(assert (= bs!1091219 (and d!1492947 start!475592)))

(assert (=> bs!1091219 (= (dynLambda!21730 lambda!208681 (h!58739 lt!1856651)) (noDuplicateKeys!1878 (_2!30248 (h!58739 lt!1856651))))))

(declare-fun m!5604625 () Bool)

(assert (=> bs!1091219 m!5604625))

(assert (=> b!4695966 d!1492947))

(check-sat (not b!4695928) (not bm!328247) (not b!4695932) (not bm!328252) (not b!4695688) (not b!4695974) (not b_lambda!177199) (not b!4695950) (not d!1492885) (not b!4695987) (not d!1492803) (not b!4695907) (not d!1492747) (not b!4695832) (not b!4695866) (not bm!328243) (not bm!328240) (not b!4695858) (not d!1492741) (not b!4695949) (not d!1492887) (not d!1492829) (not b!4695756) (not b!4695781) (not b!4695812) tp_is_empty!30805 (not d!1492919) (not b!4695917) (not d!1492675) (not d!1492935) (not b!4695931) (not d!1492905) (not bm!328246) (not d!1492825) (not d!1492931) (not b!4695959) (not d!1492881) (not bm!328228) (not d!1492807) (not b!4695963) (not d!1492933) (not d!1492937) (not b!4695946) (not bm!328250) (not d!1492879) (not b!4695933) (not b!4695940) (not b!4695755) (not b!4695904) (not b!4695934) (not b!4695813) (not d!1492897) (not d!1492761) (not b!4695909) (not d!1492811) (not b!4695860) (not b!4695929) (not d!1492847) (not b!4695807) (not b!4695960) (not d!1492903) (not b!4695973) (not b!4695912) (not b!4695828) (not b!4695757) (not d!1492917) (not d!1492823) (not b_lambda!177203) (not b!4695971) (not b!4695945) (not b!4695943) (not b!4695916) (not b!4695681) (not b!4695957) (not d!1492891) (not b!4695981) (not d!1492845) (not b!4695910) (not b!4695915) (not b!4695836) (not b!4695648) (not d!1492791) (not d!1492927) (not bm!328244) (not b!4695906) (not b!4695927) (not b!4695798) (not d!1492821) (not b!4695754) (not bm!328251) (not d!1492925) (not b!4695824) (not bs!1091218) (not d!1492941) (not b!4695666) (not b!4695947) (not b!4695801) (not d!1492883) (not b!4695972) (not b!4695646) (not d!1492827) (not d!1492889) (not bs!1091219) (not b!4695955) (not d!1492907) (not d!1492895) (not bm!328241) (not bm!328229) (not d!1492831) (not bm!328248) (not b!4695969) (not b!4695644) (not b!4695970) (not b!4695924) (not b!4695647) (not d!1492877) (not d!1492909) (not d!1492723) (not b!4695839) (not d!1492737) (not bs!1091217) tp_is_empty!30807 (not b!4695926) (not bm!328245) (not b!4695923) (not b!4695837) (not b!4695967) (not b!4695922) (not b!4695690) (not b_lambda!177201) (not d!1492921) (not d!1492853) (not d!1492759) (not bm!328239) (not b!4695964) (not d!1492851) (not b!4695774) (not b!4695908) (not b!4695913) (not b!4695986) (not d!1492899) (not d!1492841) (not bm!328227) (not b!4695968) (not b!4695944) (not d!1492911) (not b!4695958) (not bm!328249) (not d!1492753) (not b!4695936) (not d!1492929) (not b!4695803) (not d!1492797) (not b!4695938) (not b!4695799) (not d!1492813) (not b!4695942) (not d!1492751) (not b!4695800) (not b!4695961) (not bm!328242) (not d!1492939) (not b!4695948) (not d!1492819))
(check-sat)
