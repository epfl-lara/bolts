; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479760 () Bool)

(assert start!479760)

(declare-fun b!4716558 () Bool)

(declare-fun e!2941629 () Bool)

(assert (=> b!4716558 (= e!2941629 true)))

(declare-datatypes ((K!14125 0))(
  ( (K!14126 (val!19571 Int)) )
))
(declare-datatypes ((V!14371 0))(
  ( (V!14372 (val!19572 Int)) )
))
(declare-datatypes ((tuple2!54354 0))(
  ( (tuple2!54355 (_1!30471 K!14125) (_2!30471 V!14371)) )
))
(declare-datatypes ((List!52889 0))(
  ( (Nil!52765) (Cons!52765 (h!59094 tuple2!54354) (t!360141 List!52889)) )
))
(declare-datatypes ((ListMap!5233 0))(
  ( (ListMap!5234 (toList!5869 List!52889)) )
))
(declare-fun lt!1881858 () ListMap!5233)

(declare-fun lt!1881874 () ListMap!5233)

(declare-fun key!4653 () K!14125)

(declare-fun eq!1117 (ListMap!5233 ListMap!5233) Bool)

(declare-fun -!746 (ListMap!5233 K!14125) ListMap!5233)

(assert (=> b!4716558 (eq!1117 lt!1881858 (-!746 lt!1881874 key!4653))))

(declare-fun lt!1881856 () ListMap!5233)

(declare-datatypes ((Unit!128861 0))(
  ( (Unit!128862) )
))
(declare-fun lt!1881845 () Unit!128861)

(declare-fun lemmaRemovePreservesEq!114 (ListMap!5233 ListMap!5233 K!14125) Unit!128861)

(assert (=> b!4716558 (= lt!1881845 (lemmaRemovePreservesEq!114 lt!1881856 lt!1881874 key!4653))))

(declare-fun tp_is_empty!31253 () Bool)

(declare-fun tp!1347981 () Bool)

(declare-fun b!4716559 () Bool)

(declare-fun tp_is_empty!31255 () Bool)

(declare-fun e!2941634 () Bool)

(assert (=> b!4716559 (= e!2941634 (and tp_is_empty!31253 tp_is_empty!31255 tp!1347981))))

(declare-fun b!4716560 () Bool)

(declare-fun tp!1347979 () Bool)

(declare-fun e!2941638 () Bool)

(assert (=> b!4716560 (= e!2941638 (and tp_is_empty!31253 tp_is_empty!31255 tp!1347979))))

(declare-fun res!1994506 () Bool)

(declare-fun e!2941636 () Bool)

(assert (=> start!479760 (=> (not res!1994506) (not e!2941636))))

(declare-datatypes ((tuple2!54356 0))(
  ( (tuple2!54357 (_1!30472 (_ BitVec 64)) (_2!30472 List!52889)) )
))
(declare-datatypes ((List!52890 0))(
  ( (Nil!52766) (Cons!52766 (h!59095 tuple2!54356) (t!360142 List!52890)) )
))
(declare-datatypes ((ListLongMap!4399 0))(
  ( (ListLongMap!4400 (toList!5870 List!52890)) )
))
(declare-fun lm!2023 () ListLongMap!4399)

(declare-fun lambda!214149 () Int)

(declare-fun forall!11541 (List!52890 Int) Bool)

(assert (=> start!479760 (= res!1994506 (forall!11541 (toList!5870 lm!2023) lambda!214149))))

(assert (=> start!479760 e!2941636))

(declare-fun e!2941635 () Bool)

(declare-fun inv!67999 (ListLongMap!4399) Bool)

(assert (=> start!479760 (and (inv!67999 lm!2023) e!2941635)))

(assert (=> start!479760 tp_is_empty!31253))

(assert (=> start!479760 e!2941634))

(assert (=> start!479760 true))

(assert (=> start!479760 e!2941638))

(declare-fun b!4716561 () Bool)

(declare-fun e!2941631 () Bool)

(declare-fun e!2941632 () Bool)

(assert (=> b!4716561 (= e!2941631 e!2941632)))

(declare-fun res!1994508 () Bool)

(assert (=> b!4716561 (=> res!1994508 e!2941632)))

(declare-fun lt!1881838 () ListMap!5233)

(declare-fun oldBucket!34 () List!52889)

(declare-fun +!2250 (ListMap!5233 tuple2!54354) ListMap!5233)

(assert (=> b!4716561 (= res!1994508 (not (eq!1117 lt!1881874 (+!2250 lt!1881838 (h!59094 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1881871 () List!52889)

(declare-fun extractMap!2016 (List!52890) ListMap!5233)

(assert (=> b!4716561 (= lt!1881838 (extractMap!2016 (Cons!52766 (tuple2!54357 hash!405 lt!1881871) (t!360142 (toList!5870 lm!2023)))))))

(declare-fun lt!1881866 () tuple2!54356)

(assert (=> b!4716561 (= lt!1881874 (extractMap!2016 (Cons!52766 lt!1881866 (t!360142 (toList!5870 lm!2023)))))))

(declare-fun lt!1881848 () tuple2!54354)

(declare-fun lt!1881859 () List!52889)

(declare-fun lt!1881846 () ListMap!5233)

(declare-fun addToMapMapFromBucket!1420 (List!52889 ListMap!5233) ListMap!5233)

(assert (=> b!4716561 (eq!1117 (addToMapMapFromBucket!1420 (Cons!52765 lt!1881848 lt!1881859) lt!1881846) (+!2250 (addToMapMapFromBucket!1420 lt!1881859 lt!1881846) lt!1881848))))

(declare-fun lt!1881842 () Unit!128861)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!366 (tuple2!54354 List!52889 ListMap!5233) Unit!128861)

(assert (=> b!4716561 (= lt!1881842 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!366 lt!1881848 lt!1881859 lt!1881846))))

(declare-fun newBucket!218 () List!52889)

(declare-fun head!10209 (List!52889) tuple2!54354)

(assert (=> b!4716561 (= lt!1881848 (head!10209 newBucket!218))))

(declare-fun lt!1881867 () tuple2!54354)

(assert (=> b!4716561 (eq!1117 (addToMapMapFromBucket!1420 (Cons!52765 lt!1881867 lt!1881871) lt!1881846) (+!2250 (addToMapMapFromBucket!1420 lt!1881871 lt!1881846) lt!1881867))))

(declare-fun lt!1881851 () Unit!128861)

(assert (=> b!4716561 (= lt!1881851 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!366 lt!1881867 lt!1881871 lt!1881846))))

(assert (=> b!4716561 (= lt!1881867 (head!10209 oldBucket!34))))

(declare-fun lt!1881864 () ListMap!5233)

(declare-fun contains!16109 (ListMap!5233 K!14125) Bool)

(assert (=> b!4716561 (contains!16109 lt!1881864 key!4653)))

(declare-fun lt!1881865 () List!52890)

(assert (=> b!4716561 (= lt!1881864 (extractMap!2016 lt!1881865))))

(declare-datatypes ((Hashable!6359 0))(
  ( (HashableExt!6358 (__x!32062 Int)) )
))
(declare-fun hashF!1323 () Hashable!6359)

(declare-fun lt!1881847 () ListLongMap!4399)

(declare-fun lt!1881870 () Unit!128861)

(declare-fun lemmaListContainsThenExtractedMapContains!536 (ListLongMap!4399 K!14125 Hashable!6359) Unit!128861)

(assert (=> b!4716561 (= lt!1881870 (lemmaListContainsThenExtractedMapContains!536 lt!1881847 key!4653 hashF!1323))))

(assert (=> b!4716561 (= lt!1881847 (ListLongMap!4400 lt!1881865))))

(declare-fun lt!1881844 () tuple2!54356)

(assert (=> b!4716561 (= lt!1881865 (Cons!52766 lt!1881844 (t!360142 (toList!5870 lm!2023))))))

(assert (=> b!4716561 (= lt!1881844 (tuple2!54357 hash!405 (t!360141 oldBucket!34)))))

(declare-fun b!4716562 () Bool)

(declare-fun res!1994513 () Bool)

(assert (=> b!4716562 (=> (not res!1994513) (not e!2941636))))

(declare-fun noDuplicateKeys!1990 (List!52889) Bool)

(assert (=> b!4716562 (= res!1994513 (noDuplicateKeys!1990 newBucket!218))))

(declare-fun b!4716563 () Bool)

(declare-fun res!1994498 () Bool)

(declare-fun e!2941628 () Bool)

(assert (=> b!4716563 (=> res!1994498 e!2941628)))

(declare-fun lt!1881839 () ListMap!5233)

(assert (=> b!4716563 (= res!1994498 (not (eq!1117 lt!1881858 lt!1881839)))))

(declare-fun b!4716564 () Bool)

(declare-fun e!2941627 () Bool)

(declare-fun e!2941626 () Bool)

(assert (=> b!4716564 (= e!2941627 (not e!2941626))))

(declare-fun res!1994499 () Bool)

(assert (=> b!4716564 (=> res!1994499 e!2941626)))

(get-info :version)

(assert (=> b!4716564 (= res!1994499 (or (and ((_ is Cons!52765) oldBucket!34) (= (_1!30471 (h!59094 oldBucket!34)) key!4653)) (not ((_ is Cons!52765) oldBucket!34)) (= (_1!30471 (h!59094 oldBucket!34)) key!4653)))))

(declare-fun lt!1881872 () ListMap!5233)

(assert (=> b!4716564 (= lt!1881872 (addToMapMapFromBucket!1420 (_2!30472 (h!59095 (toList!5870 lm!2023))) lt!1881846))))

(assert (=> b!4716564 (= lt!1881846 (extractMap!2016 (t!360142 (toList!5870 lm!2023))))))

(declare-fun tail!8944 (ListLongMap!4399) ListLongMap!4399)

(assert (=> b!4716564 (= (t!360142 (toList!5870 lm!2023)) (toList!5870 (tail!8944 lm!2023)))))

(declare-fun b!4716565 () Bool)

(declare-fun res!1994503 () Bool)

(assert (=> b!4716565 (=> (not res!1994503) (not e!2941627))))

(assert (=> b!4716565 (= res!1994503 ((_ is Cons!52766) (toList!5870 lm!2023)))))

(declare-fun b!4716566 () Bool)

(declare-fun e!2941625 () Bool)

(assert (=> b!4716566 (= e!2941625 e!2941628)))

(declare-fun res!1994502 () Bool)

(assert (=> b!4716566 (=> res!1994502 e!2941628)))

(assert (=> b!4716566 (= res!1994502 (not (= lt!1881858 lt!1881839)))))

(declare-fun lt!1881855 () ListMap!5233)

(assert (=> b!4716566 (= lt!1881839 (+!2250 lt!1881855 (h!59094 oldBucket!34)))))

(assert (=> b!4716566 (= lt!1881858 (-!746 lt!1881856 key!4653))))

(assert (=> b!4716566 (= lt!1881856 (+!2250 lt!1881864 (h!59094 oldBucket!34)))))

(declare-fun lt!1881849 () ListMap!5233)

(declare-fun lt!1881868 () ListMap!5233)

(assert (=> b!4716566 (= lt!1881849 lt!1881868)))

(assert (=> b!4716566 (= lt!1881868 (+!2250 lt!1881855 (h!59094 oldBucket!34)))))

(assert (=> b!4716566 (= lt!1881849 (-!746 (+!2250 lt!1881864 (h!59094 oldBucket!34)) key!4653))))

(declare-fun lt!1881852 () Unit!128861)

(declare-fun addRemoveCommutativeForDiffKeys!137 (ListMap!5233 K!14125 V!14371 K!14125) Unit!128861)

(assert (=> b!4716566 (= lt!1881852 (addRemoveCommutativeForDiffKeys!137 lt!1881864 (_1!30471 (h!59094 oldBucket!34)) (_2!30471 (h!59094 oldBucket!34)) key!4653))))

(declare-fun b!4716567 () Bool)

(declare-fun res!1994496 () Bool)

(assert (=> b!4716567 (=> (not res!1994496) (not e!2941636))))

(assert (=> b!4716567 (= res!1994496 (noDuplicateKeys!1990 oldBucket!34))))

(declare-fun b!4716568 () Bool)

(declare-fun e!2941637 () Bool)

(declare-fun e!2941633 () Bool)

(assert (=> b!4716568 (= e!2941637 e!2941633)))

(declare-fun res!1994515 () Bool)

(assert (=> b!4716568 (=> (not res!1994515) (not e!2941633))))

(declare-fun lt!1881869 () (_ BitVec 64))

(assert (=> b!4716568 (= res!1994515 (= lt!1881869 hash!405))))

(declare-fun hash!4339 (Hashable!6359 K!14125) (_ BitVec 64))

(assert (=> b!4716568 (= lt!1881869 (hash!4339 hashF!1323 key!4653))))

(declare-fun b!4716569 () Bool)

(declare-fun tp!1347980 () Bool)

(assert (=> b!4716569 (= e!2941635 tp!1347980)))

(declare-fun b!4716570 () Bool)

(declare-fun res!1994507 () Bool)

(assert (=> b!4716570 (=> (not res!1994507) (not e!2941636))))

(declare-fun allKeysSameHash!1816 (List!52889 (_ BitVec 64) Hashable!6359) Bool)

(assert (=> b!4716570 (= res!1994507 (allKeysSameHash!1816 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4716571 () Bool)

(assert (=> b!4716571 (= e!2941633 e!2941627)))

(declare-fun res!1994511 () Bool)

(assert (=> b!4716571 (=> (not res!1994511) (not e!2941627))))

(declare-fun head!10210 (List!52890) tuple2!54356)

(assert (=> b!4716571 (= res!1994511 (= (head!10210 (toList!5870 lm!2023)) lt!1881866))))

(assert (=> b!4716571 (= lt!1881866 (tuple2!54357 hash!405 oldBucket!34))))

(declare-fun b!4716572 () Bool)

(assert (=> b!4716572 (= e!2941636 e!2941637)))

(declare-fun res!1994512 () Bool)

(assert (=> b!4716572 (=> (not res!1994512) (not e!2941637))))

(assert (=> b!4716572 (= res!1994512 (contains!16109 lt!1881872 key!4653))))

(assert (=> b!4716572 (= lt!1881872 (extractMap!2016 (toList!5870 lm!2023)))))

(declare-fun b!4716573 () Bool)

(declare-fun res!1994516 () Bool)

(assert (=> b!4716573 (=> res!1994516 e!2941632)))

(assert (=> b!4716573 (= res!1994516 (not (eq!1117 lt!1881874 (+!2250 lt!1881838 lt!1881848))))))

(declare-fun b!4716574 () Bool)

(declare-fun e!2941630 () Bool)

(assert (=> b!4716574 (= e!2941626 e!2941630)))

(declare-fun res!1994509 () Bool)

(assert (=> b!4716574 (=> res!1994509 e!2941630)))

(declare-fun containsKey!3327 (List!52889 K!14125) Bool)

(assert (=> b!4716574 (= res!1994509 (not (containsKey!3327 (t!360141 oldBucket!34) key!4653)))))

(assert (=> b!4716574 (containsKey!3327 oldBucket!34 key!4653)))

(declare-fun lt!1881854 () Unit!128861)

(declare-fun lemmaGetPairDefinedThenContainsKey!304 (List!52889 K!14125 Hashable!6359) Unit!128861)

(assert (=> b!4716574 (= lt!1881854 (lemmaGetPairDefinedThenContainsKey!304 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1881843 () List!52889)

(declare-datatypes ((Option!12330 0))(
  ( (None!12329) (Some!12329 (v!46888 tuple2!54354)) )
))
(declare-fun isDefined!9584 (Option!12330) Bool)

(declare-fun getPair!556 (List!52889 K!14125) Option!12330)

(assert (=> b!4716574 (isDefined!9584 (getPair!556 lt!1881843 key!4653))))

(declare-fun lt!1881857 () Unit!128861)

(declare-fun lt!1881850 () tuple2!54356)

(declare-fun forallContained!3610 (List!52890 Int tuple2!54356) Unit!128861)

(assert (=> b!4716574 (= lt!1881857 (forallContained!3610 (toList!5870 lm!2023) lambda!214149 lt!1881850))))

(declare-fun contains!16110 (List!52890 tuple2!54356) Bool)

(assert (=> b!4716574 (contains!16110 (toList!5870 lm!2023) lt!1881850)))

(assert (=> b!4716574 (= lt!1881850 (tuple2!54357 lt!1881869 lt!1881843))))

(declare-fun lt!1881862 () Unit!128861)

(declare-fun lemmaGetValueImpliesTupleContained!361 (ListLongMap!4399 (_ BitVec 64) List!52889) Unit!128861)

(assert (=> b!4716574 (= lt!1881862 (lemmaGetValueImpliesTupleContained!361 lm!2023 lt!1881869 lt!1881843))))

(declare-fun apply!12439 (ListLongMap!4399 (_ BitVec 64)) List!52889)

(assert (=> b!4716574 (= lt!1881843 (apply!12439 lm!2023 lt!1881869))))

(declare-fun contains!16111 (ListLongMap!4399 (_ BitVec 64)) Bool)

(assert (=> b!4716574 (contains!16111 lm!2023 lt!1881869)))

(declare-fun lt!1881863 () Unit!128861)

(declare-fun lemmaInGenMapThenLongMapContainsHash!762 (ListLongMap!4399 K!14125 Hashable!6359) Unit!128861)

(assert (=> b!4716574 (= lt!1881863 (lemmaInGenMapThenLongMapContainsHash!762 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1881873 () Unit!128861)

(declare-fun lemmaInGenMapThenGetPairDefined!352 (ListLongMap!4399 K!14125 Hashable!6359) Unit!128861)

(assert (=> b!4716574 (= lt!1881873 (lemmaInGenMapThenGetPairDefined!352 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716575 () Bool)

(declare-fun res!1994500 () Bool)

(assert (=> b!4716575 (=> (not res!1994500) (not e!2941633))))

(assert (=> b!4716575 (= res!1994500 (allKeysSameHash!1816 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4716576 () Bool)

(declare-fun res!1994497 () Bool)

(assert (=> b!4716576 (=> (not res!1994497) (not e!2941636))))

(declare-fun removePairForKey!1585 (List!52889 K!14125) List!52889)

(assert (=> b!4716576 (= res!1994497 (= (removePairForKey!1585 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4716577 () Bool)

(declare-fun res!1994505 () Bool)

(assert (=> b!4716577 (=> res!1994505 e!2941631)))

(assert (=> b!4716577 (= res!1994505 (not (= (removePairForKey!1585 (t!360141 oldBucket!34) key!4653) lt!1881859)))))

(declare-fun b!4716578 () Bool)

(declare-fun res!1994501 () Bool)

(assert (=> b!4716578 (=> res!1994501 e!2941628)))

(assert (=> b!4716578 (= res!1994501 (not (eq!1117 lt!1881856 lt!1881874)))))

(declare-fun b!4716579 () Bool)

(assert (=> b!4716579 (= e!2941630 e!2941631)))

(declare-fun res!1994510 () Bool)

(assert (=> b!4716579 (=> res!1994510 e!2941631)))

(assert (=> b!4716579 (= res!1994510 (not (= (removePairForKey!1585 lt!1881871 key!4653) lt!1881859)))))

(declare-fun tail!8945 (List!52889) List!52889)

(assert (=> b!4716579 (= lt!1881859 (tail!8945 newBucket!218))))

(assert (=> b!4716579 (= lt!1881871 (tail!8945 oldBucket!34))))

(declare-fun b!4716580 () Bool)

(declare-fun res!1994495 () Bool)

(assert (=> b!4716580 (=> (not res!1994495) (not e!2941633))))

(declare-fun allKeysSameHashInMap!1904 (ListLongMap!4399 Hashable!6359) Bool)

(assert (=> b!4716580 (= res!1994495 (allKeysSameHashInMap!1904 lm!2023 hashF!1323))))

(declare-fun b!4716581 () Bool)

(assert (=> b!4716581 (= e!2941632 e!2941625)))

(declare-fun res!1994504 () Bool)

(assert (=> b!4716581 (=> res!1994504 e!2941625)))

(declare-fun lt!1881840 () ListMap!5233)

(assert (=> b!4716581 (= res!1994504 (not (eq!1117 lt!1881840 lt!1881855)))))

(assert (=> b!4716581 (= lt!1881855 (-!746 lt!1881864 key!4653))))

(declare-fun lt!1881853 () tuple2!54356)

(assert (=> b!4716581 (= lt!1881840 (extractMap!2016 (Cons!52766 lt!1881853 (t!360142 (toList!5870 lm!2023)))))))

(declare-fun lt!1881861 () List!52890)

(assert (=> b!4716581 (eq!1117 (extractMap!2016 (Cons!52766 lt!1881853 lt!1881861)) (-!746 (extractMap!2016 (Cons!52766 lt!1881844 lt!1881861)) key!4653))))

(declare-fun tail!8946 (List!52890) List!52890)

(assert (=> b!4716581 (= lt!1881861 (tail!8946 lt!1881865))))

(assert (=> b!4716581 (= lt!1881853 (tuple2!54357 hash!405 lt!1881859))))

(declare-fun lt!1881860 () Unit!128861)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!108 (ListLongMap!4399 (_ BitVec 64) List!52889 List!52889 K!14125 Hashable!6359) Unit!128861)

(assert (=> b!4716581 (= lt!1881860 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!108 lt!1881847 hash!405 (t!360141 oldBucket!34) lt!1881859 key!4653 hashF!1323))))

(declare-fun b!4716582 () Bool)

(declare-fun res!1994517 () Bool)

(assert (=> b!4716582 (=> res!1994517 e!2941632)))

(assert (=> b!4716582 (= res!1994517 (not (= (h!59094 oldBucket!34) lt!1881848)))))

(declare-fun b!4716583 () Bool)

(assert (=> b!4716583 (= e!2941628 e!2941629)))

(declare-fun res!1994514 () Bool)

(assert (=> b!4716583 (=> res!1994514 e!2941629)))

(assert (=> b!4716583 (= res!1994514 (not (eq!1117 lt!1881839 (+!2250 lt!1881840 (h!59094 oldBucket!34)))))))

(assert (=> b!4716583 (eq!1117 lt!1881868 (+!2250 lt!1881840 (h!59094 oldBucket!34)))))

(declare-fun lt!1881841 () Unit!128861)

(declare-fun lemmaAddToEqMapsPreservesEq!108 (ListMap!5233 ListMap!5233 K!14125 V!14371) Unit!128861)

(assert (=> b!4716583 (= lt!1881841 (lemmaAddToEqMapsPreservesEq!108 lt!1881855 lt!1881840 (_1!30471 (h!59094 oldBucket!34)) (_2!30471 (h!59094 oldBucket!34))))))

(assert (= (and start!479760 res!1994506) b!4716567))

(assert (= (and b!4716567 res!1994496) b!4716562))

(assert (= (and b!4716562 res!1994513) b!4716576))

(assert (= (and b!4716576 res!1994497) b!4716570))

(assert (= (and b!4716570 res!1994507) b!4716572))

(assert (= (and b!4716572 res!1994512) b!4716568))

(assert (= (and b!4716568 res!1994515) b!4716575))

(assert (= (and b!4716575 res!1994500) b!4716580))

(assert (= (and b!4716580 res!1994495) b!4716571))

(assert (= (and b!4716571 res!1994511) b!4716565))

(assert (= (and b!4716565 res!1994503) b!4716564))

(assert (= (and b!4716564 (not res!1994499)) b!4716574))

(assert (= (and b!4716574 (not res!1994509)) b!4716579))

(assert (= (and b!4716579 (not res!1994510)) b!4716577))

(assert (= (and b!4716577 (not res!1994505)) b!4716561))

(assert (= (and b!4716561 (not res!1994508)) b!4716582))

(assert (= (and b!4716582 (not res!1994517)) b!4716573))

(assert (= (and b!4716573 (not res!1994516)) b!4716581))

(assert (= (and b!4716581 (not res!1994504)) b!4716566))

(assert (= (and b!4716566 (not res!1994502)) b!4716563))

(assert (= (and b!4716563 (not res!1994498)) b!4716578))

(assert (= (and b!4716578 (not res!1994501)) b!4716583))

(assert (= (and b!4716583 (not res!1994514)) b!4716558))

(assert (= start!479760 b!4716569))

(assert (= (and start!479760 ((_ is Cons!52765) oldBucket!34)) b!4716559))

(assert (= (and start!479760 ((_ is Cons!52765) newBucket!218)) b!4716560))

(declare-fun m!5646549 () Bool)

(assert (=> b!4716577 m!5646549))

(declare-fun m!5646551 () Bool)

(assert (=> b!4716561 m!5646551))

(declare-fun m!5646553 () Bool)

(assert (=> b!4716561 m!5646553))

(declare-fun m!5646555 () Bool)

(assert (=> b!4716561 m!5646555))

(declare-fun m!5646557 () Bool)

(assert (=> b!4716561 m!5646557))

(declare-fun m!5646559 () Bool)

(assert (=> b!4716561 m!5646559))

(declare-fun m!5646561 () Bool)

(assert (=> b!4716561 m!5646561))

(declare-fun m!5646563 () Bool)

(assert (=> b!4716561 m!5646563))

(declare-fun m!5646565 () Bool)

(assert (=> b!4716561 m!5646565))

(declare-fun m!5646567 () Bool)

(assert (=> b!4716561 m!5646567))

(declare-fun m!5646569 () Bool)

(assert (=> b!4716561 m!5646569))

(declare-fun m!5646571 () Bool)

(assert (=> b!4716561 m!5646571))

(declare-fun m!5646573 () Bool)

(assert (=> b!4716561 m!5646573))

(declare-fun m!5646575 () Bool)

(assert (=> b!4716561 m!5646575))

(assert (=> b!4716561 m!5646553))

(assert (=> b!4716561 m!5646571))

(declare-fun m!5646577 () Bool)

(assert (=> b!4716561 m!5646577))

(assert (=> b!4716561 m!5646569))

(assert (=> b!4716561 m!5646573))

(assert (=> b!4716561 m!5646557))

(assert (=> b!4716561 m!5646565))

(declare-fun m!5646579 () Bool)

(assert (=> b!4716561 m!5646579))

(assert (=> b!4716561 m!5646563))

(declare-fun m!5646581 () Bool)

(assert (=> b!4716561 m!5646581))

(declare-fun m!5646583 () Bool)

(assert (=> b!4716561 m!5646583))

(declare-fun m!5646585 () Bool)

(assert (=> b!4716561 m!5646585))

(declare-fun m!5646587 () Bool)

(assert (=> b!4716561 m!5646587))

(declare-fun m!5646589 () Bool)

(assert (=> b!4716581 m!5646589))

(declare-fun m!5646591 () Bool)

(assert (=> b!4716581 m!5646591))

(declare-fun m!5646593 () Bool)

(assert (=> b!4716581 m!5646593))

(declare-fun m!5646595 () Bool)

(assert (=> b!4716581 m!5646595))

(assert (=> b!4716581 m!5646589))

(declare-fun m!5646597 () Bool)

(assert (=> b!4716581 m!5646597))

(declare-fun m!5646599 () Bool)

(assert (=> b!4716581 m!5646599))

(assert (=> b!4716581 m!5646599))

(assert (=> b!4716581 m!5646591))

(declare-fun m!5646601 () Bool)

(assert (=> b!4716581 m!5646601))

(declare-fun m!5646603 () Bool)

(assert (=> b!4716581 m!5646603))

(declare-fun m!5646605 () Bool)

(assert (=> b!4716581 m!5646605))

(declare-fun m!5646607 () Bool)

(assert (=> b!4716568 m!5646607))

(declare-fun m!5646609 () Bool)

(assert (=> b!4716566 m!5646609))

(declare-fun m!5646611 () Bool)

(assert (=> b!4716566 m!5646611))

(declare-fun m!5646613 () Bool)

(assert (=> b!4716566 m!5646613))

(declare-fun m!5646615 () Bool)

(assert (=> b!4716566 m!5646615))

(declare-fun m!5646617 () Bool)

(assert (=> b!4716566 m!5646617))

(assert (=> b!4716566 m!5646613))

(declare-fun m!5646619 () Bool)

(assert (=> b!4716574 m!5646619))

(declare-fun m!5646621 () Bool)

(assert (=> b!4716574 m!5646621))

(declare-fun m!5646623 () Bool)

(assert (=> b!4716574 m!5646623))

(declare-fun m!5646625 () Bool)

(assert (=> b!4716574 m!5646625))

(declare-fun m!5646627 () Bool)

(assert (=> b!4716574 m!5646627))

(declare-fun m!5646629 () Bool)

(assert (=> b!4716574 m!5646629))

(declare-fun m!5646631 () Bool)

(assert (=> b!4716574 m!5646631))

(declare-fun m!5646633 () Bool)

(assert (=> b!4716574 m!5646633))

(declare-fun m!5646635 () Bool)

(assert (=> b!4716574 m!5646635))

(declare-fun m!5646637 () Bool)

(assert (=> b!4716574 m!5646637))

(declare-fun m!5646639 () Bool)

(assert (=> b!4716574 m!5646639))

(assert (=> b!4716574 m!5646635))

(declare-fun m!5646641 () Bool)

(assert (=> b!4716574 m!5646641))

(declare-fun m!5646643 () Bool)

(assert (=> b!4716571 m!5646643))

(declare-fun m!5646645 () Bool)

(assert (=> b!4716576 m!5646645))

(declare-fun m!5646647 () Bool)

(assert (=> b!4716578 m!5646647))

(declare-fun m!5646649 () Bool)

(assert (=> b!4716564 m!5646649))

(declare-fun m!5646651 () Bool)

(assert (=> b!4716564 m!5646651))

(declare-fun m!5646653 () Bool)

(assert (=> b!4716564 m!5646653))

(declare-fun m!5646655 () Bool)

(assert (=> b!4716583 m!5646655))

(assert (=> b!4716583 m!5646655))

(declare-fun m!5646657 () Bool)

(assert (=> b!4716583 m!5646657))

(assert (=> b!4716583 m!5646655))

(declare-fun m!5646659 () Bool)

(assert (=> b!4716583 m!5646659))

(declare-fun m!5646661 () Bool)

(assert (=> b!4716583 m!5646661))

(declare-fun m!5646663 () Bool)

(assert (=> b!4716558 m!5646663))

(assert (=> b!4716558 m!5646663))

(declare-fun m!5646665 () Bool)

(assert (=> b!4716558 m!5646665))

(declare-fun m!5646667 () Bool)

(assert (=> b!4716558 m!5646667))

(declare-fun m!5646669 () Bool)

(assert (=> b!4716575 m!5646669))

(declare-fun m!5646671 () Bool)

(assert (=> b!4716572 m!5646671))

(declare-fun m!5646673 () Bool)

(assert (=> b!4716572 m!5646673))

(declare-fun m!5646675 () Bool)

(assert (=> b!4716567 m!5646675))

(declare-fun m!5646677 () Bool)

(assert (=> b!4716573 m!5646677))

(assert (=> b!4716573 m!5646677))

(declare-fun m!5646679 () Bool)

(assert (=> b!4716573 m!5646679))

(declare-fun m!5646681 () Bool)

(assert (=> start!479760 m!5646681))

(declare-fun m!5646683 () Bool)

(assert (=> start!479760 m!5646683))

(declare-fun m!5646685 () Bool)

(assert (=> b!4716579 m!5646685))

(declare-fun m!5646687 () Bool)

(assert (=> b!4716579 m!5646687))

(declare-fun m!5646689 () Bool)

(assert (=> b!4716579 m!5646689))

(declare-fun m!5646691 () Bool)

(assert (=> b!4716580 m!5646691))

(declare-fun m!5646693 () Bool)

(assert (=> b!4716562 m!5646693))

(declare-fun m!5646695 () Bool)

(assert (=> b!4716570 m!5646695))

(declare-fun m!5646697 () Bool)

(assert (=> b!4716563 m!5646697))

(check-sat (not b!4716580) (not b!4716572) (not b!4716558) (not b!4716568) (not b!4716566) (not b!4716571) (not start!479760) (not b!4716577) (not b!4716562) (not b!4716579) (not b!4716574) (not b!4716578) (not b!4716561) (not b!4716564) (not b!4716559) (not b!4716569) tp_is_empty!31253 (not b!4716575) (not b!4716583) (not b!4716560) (not b!4716576) (not b!4716563) tp_is_empty!31255 (not b!4716570) (not b!4716567) (not b!4716581) (not b!4716573))
(check-sat)
