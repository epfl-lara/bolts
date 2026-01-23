; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476272 () Bool)

(assert start!476272)

(declare-fun b!4698549 () Bool)

(declare-fun res!1983275 () Bool)

(declare-fun e!2931021 () Bool)

(assert (=> b!4698549 (=> res!1983275 e!2931021)))

(declare-datatypes ((K!13870 0))(
  ( (K!13871 (val!19367 Int)) )
))
(declare-datatypes ((V!14116 0))(
  ( (V!14117 (val!19368 Int)) )
))
(declare-datatypes ((tuple2!53946 0))(
  ( (tuple2!53947 (_1!30267 K!13870) (_2!30267 V!14116)) )
))
(declare-datatypes ((List!52629 0))(
  ( (Nil!52505) (Cons!52505 (h!58778 tuple2!53946) (t!359833 List!52629)) )
))
(declare-datatypes ((ListMap!5029 0))(
  ( (ListMap!5030 (toList!5665 List!52629)) )
))
(declare-fun lt!1860631 () ListMap!5029)

(declare-fun lt!1860655 () ListMap!5029)

(declare-fun lt!1860639 () tuple2!53946)

(declare-fun eq!1047 (ListMap!5029 ListMap!5029) Bool)

(declare-fun +!2172 (ListMap!5029 tuple2!53946) ListMap!5029)

(assert (=> b!4698549 (= res!1983275 (not (eq!1047 lt!1860631 (+!2172 lt!1860655 lt!1860639))))))

(declare-fun b!4698550 () Bool)

(declare-fun e!2931016 () Bool)

(declare-fun e!2931013 () Bool)

(assert (=> b!4698550 (= e!2931016 e!2931013)))

(declare-fun res!1983267 () Bool)

(assert (=> b!4698550 (=> (not res!1983267) (not e!2931013))))

(declare-datatypes ((tuple2!53948 0))(
  ( (tuple2!53949 (_1!30268 (_ BitVec 64)) (_2!30268 List!52629)) )
))
(declare-datatypes ((List!52630 0))(
  ( (Nil!52506) (Cons!52506 (h!58779 tuple2!53948) (t!359834 List!52630)) )
))
(declare-datatypes ((ListLongMap!4195 0))(
  ( (ListLongMap!4196 (toList!5666 List!52630)) )
))
(declare-fun lm!2023 () ListLongMap!4195)

(declare-fun lt!1860629 () tuple2!53948)

(declare-fun head!10039 (List!52630) tuple2!53948)

(assert (=> b!4698550 (= res!1983267 (= (head!10039 (toList!5666 lm!2023)) lt!1860629))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52629)

(assert (=> b!4698550 (= lt!1860629 (tuple2!53949 hash!405 oldBucket!34))))

(declare-fun res!1983266 () Bool)

(declare-fun e!2931024 () Bool)

(assert (=> start!476272 (=> (not res!1983266) (not e!2931024))))

(declare-fun lambda!209553 () Int)

(declare-fun forall!11383 (List!52630 Int) Bool)

(assert (=> start!476272 (= res!1983266 (forall!11383 (toList!5666 lm!2023) lambda!209553))))

(assert (=> start!476272 e!2931024))

(declare-fun e!2931018 () Bool)

(declare-fun inv!67744 (ListLongMap!4195) Bool)

(assert (=> start!476272 (and (inv!67744 lm!2023) e!2931018)))

(declare-fun tp_is_empty!30845 () Bool)

(assert (=> start!476272 tp_is_empty!30845))

(declare-fun e!2931019 () Bool)

(assert (=> start!476272 e!2931019))

(assert (=> start!476272 true))

(declare-fun e!2931022 () Bool)

(assert (=> start!476272 e!2931022))

(declare-fun b!4698551 () Bool)

(declare-fun res!1983257 () Bool)

(assert (=> b!4698551 (=> res!1983257 e!2931021)))

(assert (=> b!4698551 (= res!1983257 (not (= (h!58778 oldBucket!34) lt!1860639)))))

(declare-fun b!4698552 () Bool)

(declare-fun res!1983268 () Bool)

(declare-fun e!2931020 () Bool)

(assert (=> b!4698552 (=> res!1983268 e!2931020)))

(declare-fun key!4653 () K!13870)

(declare-fun lt!1860651 () List!52629)

(declare-fun removePairForKey!1483 (List!52629 K!13870) List!52629)

(assert (=> b!4698552 (= res!1983268 (not (= (removePairForKey!1483 (t!359833 oldBucket!34) key!4653) lt!1860651)))))

(declare-fun b!4698553 () Bool)

(declare-fun res!1983262 () Bool)

(assert (=> b!4698553 (=> (not res!1983262) (not e!2931024))))

(declare-datatypes ((Hashable!6257 0))(
  ( (HashableExt!6256 (__x!31960 Int)) )
))
(declare-fun hashF!1323 () Hashable!6257)

(declare-fun allKeysSameHash!1714 (List!52629 (_ BitVec 64) Hashable!6257) Bool)

(assert (=> b!4698553 (= res!1983262 (allKeysSameHash!1714 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4698554 () Bool)

(declare-fun res!1983260 () Bool)

(assert (=> b!4698554 (=> (not res!1983260) (not e!2931024))))

(declare-fun noDuplicateKeys!1888 (List!52629) Bool)

(assert (=> b!4698554 (= res!1983260 (noDuplicateKeys!1888 oldBucket!34))))

(declare-fun b!4698555 () Bool)

(declare-fun tp!1346502 () Bool)

(assert (=> b!4698555 (= e!2931018 tp!1346502)))

(declare-fun b!4698556 () Bool)

(declare-fun e!2931017 () Bool)

(assert (=> b!4698556 (= e!2931017 e!2931020)))

(declare-fun res!1983261 () Bool)

(assert (=> b!4698556 (=> res!1983261 e!2931020)))

(declare-fun lt!1860625 () List!52629)

(assert (=> b!4698556 (= res!1983261 (not (= (removePairForKey!1483 lt!1860625 key!4653) lt!1860651)))))

(declare-fun newBucket!218 () List!52629)

(declare-fun tail!8689 (List!52629) List!52629)

(assert (=> b!4698556 (= lt!1860651 (tail!8689 newBucket!218))))

(assert (=> b!4698556 (= lt!1860625 (tail!8689 oldBucket!34))))

(declare-fun b!4698557 () Bool)

(declare-fun res!1983259 () Bool)

(assert (=> b!4698557 (=> (not res!1983259) (not e!2931013))))

(get-info :version)

(assert (=> b!4698557 (= res!1983259 ((_ is Cons!52506) (toList!5666 lm!2023)))))

(declare-fun b!4698558 () Bool)

(declare-fun e!2931023 () Bool)

(assert (=> b!4698558 (= e!2931013 (not e!2931023))))

(declare-fun res!1983276 () Bool)

(assert (=> b!4698558 (=> res!1983276 e!2931023)))

(assert (=> b!4698558 (= res!1983276 (or (and ((_ is Cons!52505) oldBucket!34) (= (_1!30267 (h!58778 oldBucket!34)) key!4653)) (not ((_ is Cons!52505) oldBucket!34)) (= (_1!30267 (h!58778 oldBucket!34)) key!4653)))))

(declare-fun lt!1860628 () ListMap!5029)

(declare-fun lt!1860632 () ListMap!5029)

(declare-fun addToMapMapFromBucket!1320 (List!52629 ListMap!5029) ListMap!5029)

(assert (=> b!4698558 (= lt!1860628 (addToMapMapFromBucket!1320 (_2!30268 (h!58779 (toList!5666 lm!2023))) lt!1860632))))

(declare-fun extractMap!1914 (List!52630) ListMap!5029)

(assert (=> b!4698558 (= lt!1860632 (extractMap!1914 (t!359834 (toList!5666 lm!2023))))))

(declare-fun tail!8690 (ListLongMap!4195) ListLongMap!4195)

(assert (=> b!4698558 (= (t!359834 (toList!5666 lm!2023)) (toList!5666 (tail!8690 lm!2023)))))

(declare-fun b!4698559 () Bool)

(declare-fun res!1983269 () Bool)

(assert (=> b!4698559 (=> (not res!1983269) (not e!2931024))))

(assert (=> b!4698559 (= res!1983269 (= (removePairForKey!1483 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4698560 () Bool)

(declare-fun res!1983258 () Bool)

(assert (=> b!4698560 (=> (not res!1983258) (not e!2931016))))

(declare-fun allKeysSameHashInMap!1802 (ListLongMap!4195 Hashable!6257) Bool)

(assert (=> b!4698560 (= res!1983258 (allKeysSameHashInMap!1802 lm!2023 hashF!1323))))

(declare-fun b!4698561 () Bool)

(declare-fun res!1983277 () Bool)

(assert (=> b!4698561 (=> (not res!1983277) (not e!2931024))))

(assert (=> b!4698561 (= res!1983277 (noDuplicateKeys!1888 newBucket!218))))

(declare-fun b!4698562 () Bool)

(declare-fun e!2931012 () Bool)

(assert (=> b!4698562 (= e!2931021 e!2931012)))

(declare-fun res!1983271 () Bool)

(assert (=> b!4698562 (=> res!1983271 e!2931012)))

(declare-fun lt!1860654 () ListMap!5029)

(declare-fun lt!1860652 () ListMap!5029)

(assert (=> b!4698562 (= res!1983271 (not (eq!1047 lt!1860654 lt!1860652)))))

(declare-fun lt!1860645 () ListMap!5029)

(declare-fun -!692 (ListMap!5029 K!13870) ListMap!5029)

(assert (=> b!4698562 (= lt!1860652 (-!692 lt!1860645 key!4653))))

(declare-fun lt!1860643 () tuple2!53948)

(assert (=> b!4698562 (= lt!1860654 (extractMap!1914 (Cons!52506 lt!1860643 (t!359834 (toList!5666 lm!2023)))))))

(declare-fun lt!1860647 () tuple2!53948)

(declare-fun lt!1860650 () List!52630)

(assert (=> b!4698562 (eq!1047 (extractMap!1914 (Cons!52506 lt!1860643 lt!1860650)) (-!692 (extractMap!1914 (Cons!52506 lt!1860647 lt!1860650)) key!4653))))

(declare-fun lt!1860637 () List!52630)

(declare-fun tail!8691 (List!52630) List!52630)

(assert (=> b!4698562 (= lt!1860650 (tail!8691 lt!1860637))))

(assert (=> b!4698562 (= lt!1860643 (tuple2!53949 hash!405 lt!1860651))))

(declare-fun lt!1860626 () ListLongMap!4195)

(declare-datatypes ((Unit!125740 0))(
  ( (Unit!125741) )
))
(declare-fun lt!1860634 () Unit!125740)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!62 (ListLongMap!4195 (_ BitVec 64) List!52629 List!52629 K!13870 Hashable!6257) Unit!125740)

(assert (=> b!4698562 (= lt!1860634 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!62 lt!1860626 hash!405 (t!359833 oldBucket!34) lt!1860651 key!4653 hashF!1323))))

(declare-fun b!4698563 () Bool)

(assert (=> b!4698563 (= e!2931023 e!2931017)))

(declare-fun res!1983264 () Bool)

(assert (=> b!4698563 (=> res!1983264 e!2931017)))

(declare-fun containsKey!3143 (List!52629 K!13870) Bool)

(assert (=> b!4698563 (= res!1983264 (not (containsKey!3143 (t!359833 oldBucket!34) key!4653)))))

(assert (=> b!4698563 (containsKey!3143 oldBucket!34 key!4653)))

(declare-fun lt!1860624 () Unit!125740)

(declare-fun lemmaGetPairDefinedThenContainsKey!240 (List!52629 K!13870 Hashable!6257) Unit!125740)

(assert (=> b!4698563 (= lt!1860624 (lemmaGetPairDefinedThenContainsKey!240 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1860636 () List!52629)

(declare-datatypes ((Option!12167 0))(
  ( (None!12166) (Some!12166 (v!46637 tuple2!53946)) )
))
(declare-fun isDefined!9422 (Option!12167) Bool)

(declare-fun getPair!492 (List!52629 K!13870) Option!12167)

(assert (=> b!4698563 (isDefined!9422 (getPair!492 lt!1860636 key!4653))))

(declare-fun lt!1860641 () tuple2!53948)

(declare-fun lt!1860648 () Unit!125740)

(declare-fun forallContained!3490 (List!52630 Int tuple2!53948) Unit!125740)

(assert (=> b!4698563 (= lt!1860648 (forallContained!3490 (toList!5666 lm!2023) lambda!209553 lt!1860641))))

(declare-fun contains!15766 (List!52630 tuple2!53948) Bool)

(assert (=> b!4698563 (contains!15766 (toList!5666 lm!2023) lt!1860641)))

(declare-fun lt!1860644 () (_ BitVec 64))

(assert (=> b!4698563 (= lt!1860641 (tuple2!53949 lt!1860644 lt!1860636))))

(declare-fun lt!1860646 () Unit!125740)

(declare-fun lemmaGetValueImpliesTupleContained!297 (ListLongMap!4195 (_ BitVec 64) List!52629) Unit!125740)

(assert (=> b!4698563 (= lt!1860646 (lemmaGetValueImpliesTupleContained!297 lm!2023 lt!1860644 lt!1860636))))

(declare-fun apply!12371 (ListLongMap!4195 (_ BitVec 64)) List!52629)

(assert (=> b!4698563 (= lt!1860636 (apply!12371 lm!2023 lt!1860644))))

(declare-fun contains!15767 (ListLongMap!4195 (_ BitVec 64)) Bool)

(assert (=> b!4698563 (contains!15767 lm!2023 lt!1860644)))

(declare-fun lt!1860633 () Unit!125740)

(declare-fun lemmaInGenMapThenLongMapContainsHash!698 (ListLongMap!4195 K!13870 Hashable!6257) Unit!125740)

(assert (=> b!4698563 (= lt!1860633 (lemmaInGenMapThenLongMapContainsHash!698 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1860640 () Unit!125740)

(declare-fun lemmaInGenMapThenGetPairDefined!288 (ListLongMap!4195 K!13870 Hashable!6257) Unit!125740)

(assert (=> b!4698563 (= lt!1860640 (lemmaInGenMapThenGetPairDefined!288 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4698564 () Bool)

(declare-fun tp!1346503 () Bool)

(declare-fun tp_is_empty!30847 () Bool)

(assert (=> b!4698564 (= e!2931022 (and tp_is_empty!30845 tp_is_empty!30847 tp!1346503))))

(declare-fun b!4698565 () Bool)

(declare-fun res!1983274 () Bool)

(assert (=> b!4698565 (=> (not res!1983274) (not e!2931016))))

(assert (=> b!4698565 (= res!1983274 (allKeysSameHash!1714 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1346501 () Bool)

(declare-fun b!4698566 () Bool)

(assert (=> b!4698566 (= e!2931019 (and tp_is_empty!30845 tp_is_empty!30847 tp!1346501))))

(declare-fun b!4698567 () Bool)

(assert (=> b!4698567 (= e!2931020 e!2931021)))

(declare-fun res!1983256 () Bool)

(assert (=> b!4698567 (=> res!1983256 e!2931021)))

(assert (=> b!4698567 (= res!1983256 (not (eq!1047 lt!1860631 (+!2172 lt!1860655 (h!58778 oldBucket!34)))))))

(assert (=> b!4698567 (= lt!1860655 (extractMap!1914 (Cons!52506 (tuple2!53949 hash!405 lt!1860625) (t!359834 (toList!5666 lm!2023)))))))

(assert (=> b!4698567 (= lt!1860631 (extractMap!1914 (Cons!52506 lt!1860629 (t!359834 (toList!5666 lm!2023)))))))

(assert (=> b!4698567 (eq!1047 (addToMapMapFromBucket!1320 (Cons!52505 lt!1860639 lt!1860651) lt!1860632) (+!2172 (addToMapMapFromBucket!1320 lt!1860651 lt!1860632) lt!1860639))))

(declare-fun lt!1860656 () Unit!125740)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!296 (tuple2!53946 List!52629 ListMap!5029) Unit!125740)

(assert (=> b!4698567 (= lt!1860656 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!296 lt!1860639 lt!1860651 lt!1860632))))

(declare-fun head!10040 (List!52629) tuple2!53946)

(assert (=> b!4698567 (= lt!1860639 (head!10040 newBucket!218))))

(declare-fun lt!1860623 () tuple2!53946)

(assert (=> b!4698567 (eq!1047 (addToMapMapFromBucket!1320 (Cons!52505 lt!1860623 lt!1860625) lt!1860632) (+!2172 (addToMapMapFromBucket!1320 lt!1860625 lt!1860632) lt!1860623))))

(declare-fun lt!1860649 () Unit!125740)

(assert (=> b!4698567 (= lt!1860649 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!296 lt!1860623 lt!1860625 lt!1860632))))

(assert (=> b!4698567 (= lt!1860623 (head!10040 oldBucket!34))))

(declare-fun contains!15768 (ListMap!5029 K!13870) Bool)

(assert (=> b!4698567 (contains!15768 lt!1860645 key!4653)))

(assert (=> b!4698567 (= lt!1860645 (extractMap!1914 lt!1860637))))

(declare-fun lt!1860642 () Unit!125740)

(declare-fun lemmaListContainsThenExtractedMapContains!480 (ListLongMap!4195 K!13870 Hashable!6257) Unit!125740)

(assert (=> b!4698567 (= lt!1860642 (lemmaListContainsThenExtractedMapContains!480 lt!1860626 key!4653 hashF!1323))))

(assert (=> b!4698567 (= lt!1860626 (ListLongMap!4196 lt!1860637))))

(assert (=> b!4698567 (= lt!1860637 (Cons!52506 lt!1860647 (t!359834 (toList!5666 lm!2023))))))

(assert (=> b!4698567 (= lt!1860647 (tuple2!53949 hash!405 (t!359833 oldBucket!34)))))

(declare-fun b!4698568 () Bool)

(declare-fun e!2931015 () Bool)

(assert (=> b!4698568 (= e!2931015 e!2931016)))

(declare-fun res!1983270 () Bool)

(assert (=> b!4698568 (=> (not res!1983270) (not e!2931016))))

(assert (=> b!4698568 (= res!1983270 (= lt!1860644 hash!405))))

(declare-fun hash!4148 (Hashable!6257 K!13870) (_ BitVec 64))

(assert (=> b!4698568 (= lt!1860644 (hash!4148 hashF!1323 key!4653))))

(declare-fun b!4698569 () Bool)

(declare-fun res!1983263 () Bool)

(declare-fun e!2931014 () Bool)

(assert (=> b!4698569 (=> res!1983263 e!2931014)))

(declare-fun lt!1860630 () ListMap!5029)

(declare-fun lt!1860627 () ListMap!5029)

(assert (=> b!4698569 (= res!1983263 (not (eq!1047 lt!1860630 lt!1860627)))))

(declare-fun b!4698570 () Bool)

(assert (=> b!4698570 (= e!2931012 e!2931014)))

(declare-fun res!1983265 () Bool)

(assert (=> b!4698570 (=> res!1983265 e!2931014)))

(assert (=> b!4698570 (= res!1983265 (not (= lt!1860630 lt!1860627)))))

(assert (=> b!4698570 (= lt!1860627 (+!2172 lt!1860652 (h!58778 oldBucket!34)))))

(declare-fun lt!1860638 () ListMap!5029)

(assert (=> b!4698570 (= lt!1860630 (-!692 lt!1860638 key!4653))))

(assert (=> b!4698570 (= lt!1860638 (+!2172 lt!1860645 (h!58778 oldBucket!34)))))

(assert (=> b!4698570 (= (-!692 (+!2172 lt!1860645 (h!58778 oldBucket!34)) key!4653) (+!2172 lt!1860652 (h!58778 oldBucket!34)))))

(declare-fun lt!1860635 () Unit!125740)

(declare-fun addRemoveCommutativeForDiffKeys!93 (ListMap!5029 K!13870 V!14116 K!13870) Unit!125740)

(assert (=> b!4698570 (= lt!1860635 (addRemoveCommutativeForDiffKeys!93 lt!1860645 (_1!30267 (h!58778 oldBucket!34)) (_2!30267 (h!58778 oldBucket!34)) key!4653))))

(declare-fun b!4698571 () Bool)

(assert (=> b!4698571 (= e!2931014 true)))

(declare-fun lt!1860653 () Bool)

(assert (=> b!4698571 (= lt!1860653 (eq!1047 lt!1860652 lt!1860654))))

(declare-fun b!4698572 () Bool)

(assert (=> b!4698572 (= e!2931024 e!2931015)))

(declare-fun res!1983272 () Bool)

(assert (=> b!4698572 (=> (not res!1983272) (not e!2931015))))

(assert (=> b!4698572 (= res!1983272 (contains!15768 lt!1860628 key!4653))))

(assert (=> b!4698572 (= lt!1860628 (extractMap!1914 (toList!5666 lm!2023)))))

(declare-fun b!4698573 () Bool)

(declare-fun res!1983273 () Bool)

(assert (=> b!4698573 (=> res!1983273 e!2931014)))

(assert (=> b!4698573 (= res!1983273 (not (eq!1047 lt!1860638 lt!1860631)))))

(assert (= (and start!476272 res!1983266) b!4698554))

(assert (= (and b!4698554 res!1983260) b!4698561))

(assert (= (and b!4698561 res!1983277) b!4698559))

(assert (= (and b!4698559 res!1983269) b!4698553))

(assert (= (and b!4698553 res!1983262) b!4698572))

(assert (= (and b!4698572 res!1983272) b!4698568))

(assert (= (and b!4698568 res!1983270) b!4698565))

(assert (= (and b!4698565 res!1983274) b!4698560))

(assert (= (and b!4698560 res!1983258) b!4698550))

(assert (= (and b!4698550 res!1983267) b!4698557))

(assert (= (and b!4698557 res!1983259) b!4698558))

(assert (= (and b!4698558 (not res!1983276)) b!4698563))

(assert (= (and b!4698563 (not res!1983264)) b!4698556))

(assert (= (and b!4698556 (not res!1983261)) b!4698552))

(assert (= (and b!4698552 (not res!1983268)) b!4698567))

(assert (= (and b!4698567 (not res!1983256)) b!4698551))

(assert (= (and b!4698551 (not res!1983257)) b!4698549))

(assert (= (and b!4698549 (not res!1983275)) b!4698562))

(assert (= (and b!4698562 (not res!1983271)) b!4698570))

(assert (= (and b!4698570 (not res!1983265)) b!4698569))

(assert (= (and b!4698569 (not res!1983263)) b!4698573))

(assert (= (and b!4698573 (not res!1983273)) b!4698571))

(assert (= start!476272 b!4698555))

(assert (= (and start!476272 ((_ is Cons!52505) oldBucket!34)) b!4698566))

(assert (= (and start!476272 ((_ is Cons!52505) newBucket!218)) b!4698564))

(declare-fun m!5610337 () Bool)

(assert (=> b!4698573 m!5610337))

(declare-fun m!5610339 () Bool)

(assert (=> b!4698569 m!5610339))

(declare-fun m!5610341 () Bool)

(assert (=> b!4698562 m!5610341))

(declare-fun m!5610343 () Bool)

(assert (=> b!4698562 m!5610343))

(declare-fun m!5610345 () Bool)

(assert (=> b!4698562 m!5610345))

(assert (=> b!4698562 m!5610343))

(declare-fun m!5610347 () Bool)

(assert (=> b!4698562 m!5610347))

(assert (=> b!4698562 m!5610345))

(declare-fun m!5610349 () Bool)

(assert (=> b!4698562 m!5610349))

(declare-fun m!5610351 () Bool)

(assert (=> b!4698562 m!5610351))

(declare-fun m!5610353 () Bool)

(assert (=> b!4698562 m!5610353))

(assert (=> b!4698562 m!5610347))

(declare-fun m!5610355 () Bool)

(assert (=> b!4698562 m!5610355))

(declare-fun m!5610357 () Bool)

(assert (=> b!4698562 m!5610357))

(declare-fun m!5610359 () Bool)

(assert (=> b!4698550 m!5610359))

(declare-fun m!5610361 () Bool)

(assert (=> b!4698554 m!5610361))

(declare-fun m!5610363 () Bool)

(assert (=> b!4698561 m!5610363))

(declare-fun m!5610365 () Bool)

(assert (=> b!4698565 m!5610365))

(declare-fun m!5610367 () Bool)

(assert (=> b!4698568 m!5610367))

(declare-fun m!5610369 () Bool)

(assert (=> b!4698549 m!5610369))

(assert (=> b!4698549 m!5610369))

(declare-fun m!5610371 () Bool)

(assert (=> b!4698549 m!5610371))

(declare-fun m!5610373 () Bool)

(assert (=> b!4698558 m!5610373))

(declare-fun m!5610375 () Bool)

(assert (=> b!4698558 m!5610375))

(declare-fun m!5610377 () Bool)

(assert (=> b!4698558 m!5610377))

(declare-fun m!5610379 () Bool)

(assert (=> b!4698567 m!5610379))

(declare-fun m!5610381 () Bool)

(assert (=> b!4698567 m!5610381))

(declare-fun m!5610383 () Bool)

(assert (=> b!4698567 m!5610383))

(declare-fun m!5610385 () Bool)

(assert (=> b!4698567 m!5610385))

(declare-fun m!5610387 () Bool)

(assert (=> b!4698567 m!5610387))

(assert (=> b!4698567 m!5610381))

(declare-fun m!5610389 () Bool)

(assert (=> b!4698567 m!5610389))

(assert (=> b!4698567 m!5610383))

(declare-fun m!5610391 () Bool)

(assert (=> b!4698567 m!5610391))

(declare-fun m!5610393 () Bool)

(assert (=> b!4698567 m!5610393))

(declare-fun m!5610395 () Bool)

(assert (=> b!4698567 m!5610395))

(declare-fun m!5610397 () Bool)

(assert (=> b!4698567 m!5610397))

(assert (=> b!4698567 m!5610389))

(declare-fun m!5610399 () Bool)

(assert (=> b!4698567 m!5610399))

(assert (=> b!4698567 m!5610395))

(declare-fun m!5610401 () Bool)

(assert (=> b!4698567 m!5610401))

(declare-fun m!5610403 () Bool)

(assert (=> b!4698567 m!5610403))

(declare-fun m!5610405 () Bool)

(assert (=> b!4698567 m!5610405))

(declare-fun m!5610407 () Bool)

(assert (=> b!4698567 m!5610407))

(assert (=> b!4698567 m!5610407))

(assert (=> b!4698567 m!5610401))

(declare-fun m!5610409 () Bool)

(assert (=> b!4698567 m!5610409))

(declare-fun m!5610411 () Bool)

(assert (=> b!4698567 m!5610411))

(declare-fun m!5610413 () Bool)

(assert (=> b!4698567 m!5610413))

(assert (=> b!4698567 m!5610399))

(declare-fun m!5610415 () Bool)

(assert (=> b!4698567 m!5610415))

(declare-fun m!5610417 () Bool)

(assert (=> b!4698553 m!5610417))

(declare-fun m!5610419 () Bool)

(assert (=> b!4698552 m!5610419))

(declare-fun m!5610421 () Bool)

(assert (=> b!4698570 m!5610421))

(declare-fun m!5610423 () Bool)

(assert (=> b!4698570 m!5610423))

(declare-fun m!5610425 () Bool)

(assert (=> b!4698570 m!5610425))

(declare-fun m!5610427 () Bool)

(assert (=> b!4698570 m!5610427))

(assert (=> b!4698570 m!5610423))

(declare-fun m!5610429 () Bool)

(assert (=> b!4698570 m!5610429))

(declare-fun m!5610431 () Bool)

(assert (=> b!4698571 m!5610431))

(declare-fun m!5610433 () Bool)

(assert (=> b!4698556 m!5610433))

(declare-fun m!5610435 () Bool)

(assert (=> b!4698556 m!5610435))

(declare-fun m!5610437 () Bool)

(assert (=> b!4698556 m!5610437))

(declare-fun m!5610439 () Bool)

(assert (=> start!476272 m!5610439))

(declare-fun m!5610441 () Bool)

(assert (=> start!476272 m!5610441))

(declare-fun m!5610443 () Bool)

(assert (=> b!4698560 m!5610443))

(declare-fun m!5610445 () Bool)

(assert (=> b!4698563 m!5610445))

(declare-fun m!5610447 () Bool)

(assert (=> b!4698563 m!5610447))

(declare-fun m!5610449 () Bool)

(assert (=> b!4698563 m!5610449))

(declare-fun m!5610451 () Bool)

(assert (=> b!4698563 m!5610451))

(declare-fun m!5610453 () Bool)

(assert (=> b!4698563 m!5610453))

(declare-fun m!5610455 () Bool)

(assert (=> b!4698563 m!5610455))

(declare-fun m!5610457 () Bool)

(assert (=> b!4698563 m!5610457))

(declare-fun m!5610459 () Bool)

(assert (=> b!4698563 m!5610459))

(declare-fun m!5610461 () Bool)

(assert (=> b!4698563 m!5610461))

(declare-fun m!5610463 () Bool)

(assert (=> b!4698563 m!5610463))

(declare-fun m!5610465 () Bool)

(assert (=> b!4698563 m!5610465))

(assert (=> b!4698563 m!5610453))

(declare-fun m!5610467 () Bool)

(assert (=> b!4698563 m!5610467))

(declare-fun m!5610469 () Bool)

(assert (=> b!4698559 m!5610469))

(declare-fun m!5610471 () Bool)

(assert (=> b!4698572 m!5610471))

(declare-fun m!5610473 () Bool)

(assert (=> b!4698572 m!5610473))

(check-sat (not b!4698572) (not b!4698560) (not b!4698561) (not b!4698555) (not b!4698573) (not b!4698565) (not b!4698558) (not b!4698562) (not b!4698571) (not b!4698550) (not b!4698556) tp_is_empty!30845 (not b!4698567) (not b!4698549) (not b!4698552) (not b!4698553) (not b!4698568) (not b!4698570) (not b!4698569) (not b!4698559) (not b!4698554) (not start!476272) (not b!4698564) (not b!4698566) (not b!4698563) tp_is_empty!30847)
(check-sat)
