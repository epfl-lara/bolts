; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!446664 () Bool)

(assert start!446664)

(declare-fun b!4514554 () Bool)

(declare-fun e!2812532 () Bool)

(declare-fun e!2812541 () Bool)

(assert (=> b!4514554 (= e!2812532 e!2812541)))

(declare-fun res!1878368 () Bool)

(assert (=> b!4514554 (=> res!1878368 e!2812541)))

(declare-datatypes ((K!12025 0))(
  ( (K!12026 (val!17891 Int)) )
))
(declare-datatypes ((V!12271 0))(
  ( (V!12272 (val!17892 Int)) )
))
(declare-datatypes ((tuple2!51050 0))(
  ( (tuple2!51051 (_1!28819 K!12025) (_2!28819 V!12271)) )
))
(declare-datatypes ((List!50752 0))(
  ( (Nil!50628) (Cons!50628 (h!56475 tuple2!51050) (t!357714 List!50752)) )
))
(declare-datatypes ((ListMap!3577 0))(
  ( (ListMap!3578 (toList!4315 List!50752)) )
))
(declare-fun lt!1692727 () ListMap!3577)

(declare-fun lt!1692724 () ListMap!3577)

(declare-fun eq!611 (ListMap!3577 ListMap!3577) Bool)

(assert (=> b!4514554 (= res!1878368 (not (eq!611 lt!1692727 lt!1692724)))))

(declare-datatypes ((tuple2!51052 0))(
  ( (tuple2!51053 (_1!28820 (_ BitVec 64)) (_2!28820 List!50752)) )
))
(declare-datatypes ((List!50753 0))(
  ( (Nil!50629) (Cons!50629 (h!56476 tuple2!51052) (t!357715 List!50753)) )
))
(declare-datatypes ((ListLongMap!2947 0))(
  ( (ListLongMap!2948 (toList!4316 List!50753)) )
))
(declare-fun lt!1692730 () ListLongMap!2947)

(declare-fun lt!1692742 () tuple2!51052)

(declare-fun extractMap!1210 (List!50753) ListMap!3577)

(declare-fun +!1526 (ListLongMap!2947 tuple2!51052) ListLongMap!2947)

(assert (=> b!4514554 (= lt!1692727 (extractMap!1210 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))

(declare-fun lm!1477 () ListLongMap!2947)

(declare-fun head!9400 (ListLongMap!2947) tuple2!51052)

(assert (=> b!4514554 (= lt!1692742 (head!9400 lm!1477))))

(declare-fun lt!1692734 () ListMap!3577)

(declare-fun lt!1692722 () ListMap!3577)

(assert (=> b!4514554 (eq!611 lt!1692734 lt!1692722)))

(declare-fun lt!1692728 () ListMap!3577)

(declare-fun key!3287 () K!12025)

(declare-fun -!380 (ListMap!3577 K!12025) ListMap!3577)

(assert (=> b!4514554 (= lt!1692722 (-!380 lt!1692728 key!3287))))

(declare-fun lt!1692737 () ListLongMap!2947)

(assert (=> b!4514554 (= lt!1692734 (extractMap!1210 (toList!4316 lt!1692737)))))

(declare-fun lt!1692726 () tuple2!51052)

(assert (=> b!4514554 (= lt!1692737 (+!1526 lt!1692730 lt!1692726))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50752)

(assert (=> b!4514554 (= lt!1692726 (tuple2!51053 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5549 0))(
  ( (HashableExt!5548 (__x!31252 Int)) )
))
(declare-fun hashF!1107 () Hashable!5549)

(declare-datatypes ((Unit!94076 0))(
  ( (Unit!94077) )
))
(declare-fun lt!1692720 () Unit!94076)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!139 (ListLongMap!2947 (_ BitVec 64) List!50752 K!12025 Hashable!5549) Unit!94076)

(assert (=> b!4514554 (= lt!1692720 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!139 lt!1692730 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4514555 () Bool)

(declare-fun res!1878374 () Bool)

(assert (=> b!4514555 (=> res!1878374 e!2812541)))

(assert (=> b!4514555 (= res!1878374 (not (eq!611 lt!1692724 lt!1692727)))))

(declare-fun b!4514556 () Bool)

(declare-fun e!2812531 () Bool)

(declare-fun e!2812530 () Bool)

(assert (=> b!4514556 (= e!2812531 (not e!2812530))))

(declare-fun res!1878383 () Bool)

(assert (=> b!4514556 (=> res!1878383 e!2812530)))

(declare-fun lt!1692723 () List!50752)

(declare-fun removePairForKey!781 (List!50752 K!12025) List!50752)

(assert (=> b!4514556 (= res!1878383 (not (= newBucket!178 (removePairForKey!781 lt!1692723 key!3287))))))

(declare-fun lt!1692739 () Unit!94076)

(declare-fun lambda!171413 () Int)

(declare-fun lt!1692740 () tuple2!51052)

(declare-fun forallContained!2497 (List!50753 Int tuple2!51052) Unit!94076)

(assert (=> b!4514556 (= lt!1692739 (forallContained!2497 (toList!4316 lm!1477) lambda!171413 lt!1692740))))

(declare-fun contains!13341 (List!50753 tuple2!51052) Bool)

(assert (=> b!4514556 (contains!13341 (toList!4316 lm!1477) lt!1692740)))

(assert (=> b!4514556 (= lt!1692740 (tuple2!51053 hash!344 lt!1692723))))

(declare-fun lt!1692738 () Unit!94076)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!666 (List!50753 (_ BitVec 64) List!50752) Unit!94076)

(assert (=> b!4514556 (= lt!1692738 (lemmaGetValueByKeyImpliesContainsTuple!666 (toList!4316 lm!1477) hash!344 lt!1692723))))

(declare-fun apply!11891 (ListLongMap!2947 (_ BitVec 64)) List!50752)

(assert (=> b!4514556 (= lt!1692723 (apply!11891 lm!1477 hash!344))))

(declare-fun lt!1692744 () (_ BitVec 64))

(declare-fun contains!13342 (ListLongMap!2947 (_ BitVec 64)) Bool)

(assert (=> b!4514556 (contains!13342 lm!1477 lt!1692744)))

(declare-fun lt!1692746 () Unit!94076)

(declare-fun lemmaInGenMapThenLongMapContainsHash!228 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> b!4514556 (= lt!1692746 (lemmaInGenMapThenLongMapContainsHash!228 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4514557 () Bool)

(declare-fun e!2812539 () Bool)

(declare-fun e!2812540 () Bool)

(assert (=> b!4514557 (= e!2812539 e!2812540)))

(declare-fun res!1878378 () Bool)

(assert (=> b!4514557 (=> (not res!1878378) (not e!2812540))))

(declare-fun contains!13343 (ListMap!3577 K!12025) Bool)

(assert (=> b!4514557 (= res!1878378 (contains!13343 lt!1692724 key!3287))))

(assert (=> b!4514557 (= lt!1692724 (extractMap!1210 (toList!4316 lm!1477)))))

(declare-fun b!4514558 () Bool)

(declare-fun res!1878387 () Bool)

(declare-fun e!2812538 () Bool)

(assert (=> b!4514558 (=> res!1878387 e!2812538)))

(assert (=> b!4514558 (= res!1878387 (not (contains!13341 (t!357715 (toList!4316 lm!1477)) lt!1692740)))))

(declare-fun b!4514559 () Bool)

(declare-fun res!1878377 () Bool)

(assert (=> b!4514559 (=> res!1878377 e!2812541)))

(assert (=> b!4514559 (= res!1878377 (bvsge (_1!28820 lt!1692742) hash!344))))

(declare-fun b!4514560 () Bool)

(declare-fun res!1878370 () Bool)

(assert (=> b!4514560 (=> res!1878370 e!2812530)))

(declare-fun noDuplicateKeys!1154 (List!50752) Bool)

(assert (=> b!4514560 (= res!1878370 (not (noDuplicateKeys!1154 newBucket!178)))))

(declare-fun b!4514561 () Bool)

(declare-fun e!2812543 () Bool)

(declare-fun isEmpty!28643 (ListLongMap!2947) Bool)

(assert (=> b!4514561 (= e!2812543 (not (isEmpty!28643 lm!1477)))))

(declare-fun lt!1692745 () Unit!94076)

(assert (=> b!4514561 (= lt!1692745 (forallContained!2497 (toList!4316 lm!1477) lambda!171413 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4514562 () Bool)

(declare-fun e!2812535 () Bool)

(declare-fun e!2812533 () Bool)

(assert (=> b!4514562 (= e!2812535 e!2812533)))

(declare-fun res!1878371 () Bool)

(assert (=> b!4514562 (=> res!1878371 e!2812533)))

(declare-fun lt!1692731 () ListMap!3577)

(declare-fun lt!1692736 () ListMap!3577)

(assert (=> b!4514562 (= res!1878371 (not (eq!611 lt!1692731 lt!1692736)))))

(declare-fun addToMapMapFromBucket!681 (List!50752 ListMap!3577) ListMap!3577)

(assert (=> b!4514562 (= lt!1692736 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734))))

(declare-fun lt!1692725 () ListLongMap!2947)

(assert (=> b!4514562 (= lt!1692731 (extractMap!1210 (toList!4316 lt!1692725)))))

(declare-fun b!4514563 () Bool)

(declare-fun e!2812542 () Bool)

(assert (=> b!4514563 (= e!2812538 e!2812542)))

(declare-fun res!1878376 () Bool)

(assert (=> b!4514563 (=> res!1878376 e!2812542)))

(declare-fun lt!1692729 () Bool)

(assert (=> b!4514563 (= res!1878376 lt!1692729)))

(declare-fun lt!1692741 () Unit!94076)

(declare-fun e!2812536 () Unit!94076)

(assert (=> b!4514563 (= lt!1692741 e!2812536)))

(declare-fun c!770135 () Bool)

(assert (=> b!4514563 (= c!770135 lt!1692729)))

(declare-fun containsKey!1762 (List!50752 K!12025) Bool)

(assert (=> b!4514563 (= lt!1692729 (not (containsKey!1762 lt!1692723 key!3287)))))

(declare-fun b!4514564 () Bool)

(declare-fun res!1878380 () Bool)

(assert (=> b!4514564 (=> res!1878380 e!2812530)))

(get-info :version)

(assert (=> b!4514564 (= res!1878380 (or ((_ is Nil!50629) (toList!4316 lm!1477)) (= (_1!28820 (h!56476 (toList!4316 lm!1477))) hash!344)))))

(declare-fun b!4514565 () Bool)

(assert (=> b!4514565 (= e!2812540 e!2812531)))

(declare-fun res!1878375 () Bool)

(assert (=> b!4514565 (=> (not res!1878375) (not e!2812531))))

(assert (=> b!4514565 (= res!1878375 (= lt!1692744 hash!344))))

(declare-fun hash!2783 (Hashable!5549 K!12025) (_ BitVec 64))

(assert (=> b!4514565 (= lt!1692744 (hash!2783 hashF!1107 key!3287))))

(declare-fun b!4514566 () Bool)

(declare-fun Unit!94078 () Unit!94076)

(assert (=> b!4514566 (= e!2812536 Unit!94078)))

(declare-fun b!4514567 () Bool)

(declare-fun e!2812529 () Bool)

(declare-fun tp!1337966 () Bool)

(assert (=> b!4514567 (= e!2812529 tp!1337966)))

(declare-fun b!4514568 () Bool)

(assert (=> b!4514568 (= e!2812533 e!2812543)))

(declare-fun res!1878384 () Bool)

(assert (=> b!4514568 (=> res!1878384 e!2812543)))

(declare-fun lt!1692732 () ListMap!3577)

(assert (=> b!4514568 (= res!1878384 (not (eq!611 lt!1692731 lt!1692732)))))

(assert (=> b!4514568 (eq!611 lt!1692736 lt!1692732)))

(assert (=> b!4514568 (= lt!1692732 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722))))

(declare-fun lt!1692733 () Unit!94076)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!30 (ListMap!3577 ListMap!3577 List!50752) Unit!94076)

(assert (=> b!4514568 (= lt!1692733 (lemmaAddToMapFromBucketPreservesEquivalence!30 lt!1692734 lt!1692722 (_2!28820 lt!1692742)))))

(declare-fun b!4514569 () Bool)

(assert (=> b!4514569 (= e!2812530 e!2812538)))

(declare-fun res!1878373 () Bool)

(assert (=> b!4514569 (=> res!1878373 e!2812538)))

(assert (=> b!4514569 (= res!1878373 (not (contains!13342 lt!1692730 hash!344)))))

(declare-fun tail!7722 (ListLongMap!2947) ListLongMap!2947)

(assert (=> b!4514569 (= lt!1692730 (tail!7722 lm!1477))))

(declare-fun b!4514571 () Bool)

(declare-fun res!1878381 () Bool)

(assert (=> b!4514571 (=> res!1878381 e!2812538)))

(assert (=> b!4514571 (= res!1878381 (not (= (apply!11891 lt!1692730 hash!344) lt!1692723)))))

(declare-fun b!4514572 () Bool)

(assert (=> b!4514572 (= e!2812541 e!2812535)))

(declare-fun res!1878369 () Bool)

(assert (=> b!4514572 (=> res!1878369 e!2812535)))

(assert (=> b!4514572 (= res!1878369 (not (= lt!1692725 (+!1526 lm!1477 lt!1692726))))))

(assert (=> b!4514572 (= lt!1692725 (+!1526 lt!1692737 lt!1692742))))

(declare-fun tp!1337967 () Bool)

(declare-fun e!2812537 () Bool)

(declare-fun tp_is_empty!27893 () Bool)

(declare-fun tp_is_empty!27895 () Bool)

(declare-fun b!4514573 () Bool)

(assert (=> b!4514573 (= e!2812537 (and tp_is_empty!27893 tp_is_empty!27895 tp!1337967))))

(declare-fun b!4514574 () Bool)

(declare-fun e!2812534 () Bool)

(assert (=> b!4514574 (= e!2812542 e!2812534)))

(declare-fun res!1878372 () Bool)

(assert (=> b!4514574 (=> res!1878372 e!2812534)))

(declare-fun containsKeyBiggerList!134 (List!50753 K!12025) Bool)

(assert (=> b!4514574 (= res!1878372 (not (containsKeyBiggerList!134 (t!357715 (toList!4316 lm!1477)) key!3287)))))

(assert (=> b!4514574 (containsKeyBiggerList!134 (toList!4316 lt!1692730) key!3287)))

(declare-fun lt!1692743 () Unit!94076)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!70 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> b!4514574 (= lt!1692743 (lemmaInLongMapThenContainsKeyBiggerList!70 lt!1692730 key!3287 hashF!1107))))

(declare-fun b!4514575 () Bool)

(declare-fun res!1878382 () Bool)

(assert (=> b!4514575 (=> (not res!1878382) (not e!2812539))))

(declare-fun allKeysSameHashInMap!1261 (ListLongMap!2947 Hashable!5549) Bool)

(assert (=> b!4514575 (= res!1878382 (allKeysSameHashInMap!1261 lm!1477 hashF!1107))))

(declare-fun b!4514576 () Bool)

(assert (=> b!4514576 (= e!2812534 e!2812532)))

(declare-fun res!1878379 () Bool)

(assert (=> b!4514576 (=> res!1878379 e!2812532)))

(assert (=> b!4514576 (= res!1878379 (not (contains!13343 (extractMap!1210 (t!357715 (toList!4316 lm!1477))) key!3287)))))

(assert (=> b!4514576 (contains!13343 lt!1692728 key!3287)))

(assert (=> b!4514576 (= lt!1692728 (extractMap!1210 (toList!4316 lt!1692730)))))

(declare-fun lt!1692735 () Unit!94076)

(declare-fun lemmaListContainsThenExtractedMapContains!124 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> b!4514576 (= lt!1692735 (lemmaListContainsThenExtractedMapContains!124 lt!1692730 key!3287 hashF!1107))))

(declare-fun b!4514577 () Bool)

(declare-fun res!1878386 () Bool)

(assert (=> b!4514577 (=> res!1878386 e!2812535)))

(assert (=> b!4514577 (= res!1878386 (not (= (head!9400 lt!1692725) lt!1692742)))))

(declare-fun b!4514578 () Bool)

(declare-fun Unit!94079 () Unit!94076)

(assert (=> b!4514578 (= e!2812536 Unit!94079)))

(declare-fun lt!1692721 () Unit!94076)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!142 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> b!4514578 (= lt!1692721 (lemmaNotInItsHashBucketThenNotInMap!142 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4514578 false))

(declare-fun b!4514570 () Bool)

(declare-fun res!1878388 () Bool)

(assert (=> b!4514570 (=> (not res!1878388) (not e!2812531))))

(declare-fun allKeysSameHash!1008 (List!50752 (_ BitVec 64) Hashable!5549) Bool)

(assert (=> b!4514570 (= res!1878388 (allKeysSameHash!1008 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1878385 () Bool)

(assert (=> start!446664 (=> (not res!1878385) (not e!2812539))))

(declare-fun forall!10245 (List!50753 Int) Bool)

(assert (=> start!446664 (= res!1878385 (forall!10245 (toList!4316 lm!1477) lambda!171413))))

(assert (=> start!446664 e!2812539))

(assert (=> start!446664 true))

(declare-fun inv!66209 (ListLongMap!2947) Bool)

(assert (=> start!446664 (and (inv!66209 lm!1477) e!2812529)))

(assert (=> start!446664 tp_is_empty!27893))

(assert (=> start!446664 e!2812537))

(assert (= (and start!446664 res!1878385) b!4514575))

(assert (= (and b!4514575 res!1878382) b!4514557))

(assert (= (and b!4514557 res!1878378) b!4514565))

(assert (= (and b!4514565 res!1878375) b!4514570))

(assert (= (and b!4514570 res!1878388) b!4514556))

(assert (= (and b!4514556 (not res!1878383)) b!4514560))

(assert (= (and b!4514560 (not res!1878370)) b!4514564))

(assert (= (and b!4514564 (not res!1878380)) b!4514569))

(assert (= (and b!4514569 (not res!1878373)) b!4514571))

(assert (= (and b!4514571 (not res!1878381)) b!4514558))

(assert (= (and b!4514558 (not res!1878387)) b!4514563))

(assert (= (and b!4514563 c!770135) b!4514578))

(assert (= (and b!4514563 (not c!770135)) b!4514566))

(assert (= (and b!4514563 (not res!1878376)) b!4514574))

(assert (= (and b!4514574 (not res!1878372)) b!4514576))

(assert (= (and b!4514576 (not res!1878379)) b!4514554))

(assert (= (and b!4514554 (not res!1878368)) b!4514555))

(assert (= (and b!4514555 (not res!1878374)) b!4514559))

(assert (= (and b!4514559 (not res!1878377)) b!4514572))

(assert (= (and b!4514572 (not res!1878369)) b!4514577))

(assert (= (and b!4514577 (not res!1878386)) b!4514562))

(assert (= (and b!4514562 (not res!1878371)) b!4514568))

(assert (= (and b!4514568 (not res!1878384)) b!4514561))

(assert (= start!446664 b!4514567))

(assert (= (and start!446664 ((_ is Cons!50628) newBucket!178)) b!4514573))

(declare-fun m!5257323 () Bool)

(assert (=> b!4514570 m!5257323))

(declare-fun m!5257325 () Bool)

(assert (=> start!446664 m!5257325))

(declare-fun m!5257327 () Bool)

(assert (=> start!446664 m!5257327))

(declare-fun m!5257329 () Bool)

(assert (=> b!4514555 m!5257329))

(declare-fun m!5257331 () Bool)

(assert (=> b!4514562 m!5257331))

(declare-fun m!5257333 () Bool)

(assert (=> b!4514562 m!5257333))

(declare-fun m!5257335 () Bool)

(assert (=> b!4514562 m!5257335))

(declare-fun m!5257337 () Bool)

(assert (=> b!4514572 m!5257337))

(declare-fun m!5257339 () Bool)

(assert (=> b!4514572 m!5257339))

(declare-fun m!5257341 () Bool)

(assert (=> b!4514557 m!5257341))

(declare-fun m!5257343 () Bool)

(assert (=> b!4514557 m!5257343))

(declare-fun m!5257345 () Bool)

(assert (=> b!4514558 m!5257345))

(declare-fun m!5257347 () Bool)

(assert (=> b!4514575 m!5257347))

(declare-fun m!5257349 () Bool)

(assert (=> b!4514576 m!5257349))

(declare-fun m!5257351 () Bool)

(assert (=> b!4514576 m!5257351))

(declare-fun m!5257353 () Bool)

(assert (=> b!4514576 m!5257353))

(assert (=> b!4514576 m!5257351))

(declare-fun m!5257355 () Bool)

(assert (=> b!4514576 m!5257355))

(declare-fun m!5257357 () Bool)

(assert (=> b!4514576 m!5257357))

(declare-fun m!5257359 () Bool)

(assert (=> b!4514577 m!5257359))

(declare-fun m!5257361 () Bool)

(assert (=> b!4514563 m!5257361))

(declare-fun m!5257363 () Bool)

(assert (=> b!4514556 m!5257363))

(declare-fun m!5257365 () Bool)

(assert (=> b!4514556 m!5257365))

(declare-fun m!5257367 () Bool)

(assert (=> b!4514556 m!5257367))

(declare-fun m!5257369 () Bool)

(assert (=> b!4514556 m!5257369))

(declare-fun m!5257371 () Bool)

(assert (=> b!4514556 m!5257371))

(declare-fun m!5257373 () Bool)

(assert (=> b!4514556 m!5257373))

(declare-fun m!5257375 () Bool)

(assert (=> b!4514556 m!5257375))

(declare-fun m!5257377 () Bool)

(assert (=> b!4514578 m!5257377))

(declare-fun m!5257379 () Bool)

(assert (=> b!4514568 m!5257379))

(declare-fun m!5257381 () Bool)

(assert (=> b!4514568 m!5257381))

(declare-fun m!5257383 () Bool)

(assert (=> b!4514568 m!5257383))

(declare-fun m!5257385 () Bool)

(assert (=> b!4514568 m!5257385))

(declare-fun m!5257387 () Bool)

(assert (=> b!4514560 m!5257387))

(declare-fun m!5257389 () Bool)

(assert (=> b!4514554 m!5257389))

(declare-fun m!5257391 () Bool)

(assert (=> b!4514554 m!5257391))

(declare-fun m!5257393 () Bool)

(assert (=> b!4514554 m!5257393))

(declare-fun m!5257395 () Bool)

(assert (=> b!4514554 m!5257395))

(declare-fun m!5257397 () Bool)

(assert (=> b!4514554 m!5257397))

(declare-fun m!5257399 () Bool)

(assert (=> b!4514554 m!5257399))

(declare-fun m!5257401 () Bool)

(assert (=> b!4514554 m!5257401))

(declare-fun m!5257403 () Bool)

(assert (=> b!4514554 m!5257403))

(declare-fun m!5257405 () Bool)

(assert (=> b!4514554 m!5257405))

(declare-fun m!5257407 () Bool)

(assert (=> b!4514574 m!5257407))

(declare-fun m!5257409 () Bool)

(assert (=> b!4514574 m!5257409))

(declare-fun m!5257411 () Bool)

(assert (=> b!4514574 m!5257411))

(declare-fun m!5257413 () Bool)

(assert (=> b!4514569 m!5257413))

(declare-fun m!5257415 () Bool)

(assert (=> b!4514569 m!5257415))

(declare-fun m!5257417 () Bool)

(assert (=> b!4514565 m!5257417))

(declare-fun m!5257419 () Bool)

(assert (=> b!4514571 m!5257419))

(declare-fun m!5257421 () Bool)

(assert (=> b!4514561 m!5257421))

(declare-fun m!5257423 () Bool)

(assert (=> b!4514561 m!5257423))

(check-sat tp_is_empty!27895 (not b!4514556) (not b!4514555) (not b!4514577) (not b!4514571) (not b!4514574) (not b!4514570) (not start!446664) (not b!4514578) (not b!4514560) tp_is_empty!27893 (not b!4514563) (not b!4514572) (not b!4514554) (not b!4514568) (not b!4514576) (not b!4514567) (not b!4514558) (not b!4514557) (not b!4514565) (not b!4514573) (not b!4514561) (not b!4514569) (not b!4514575) (not b!4514562))
(check-sat)
(get-model)

(declare-fun d!1389225 () Bool)

(declare-fun e!2812549 () Bool)

(assert (=> d!1389225 e!2812549))

(declare-fun res!1878391 () Bool)

(assert (=> d!1389225 (=> res!1878391 e!2812549)))

(declare-fun lt!1692757 () Bool)

(assert (=> d!1389225 (= res!1878391 (not lt!1692757))))

(declare-fun lt!1692756 () Bool)

(assert (=> d!1389225 (= lt!1692757 lt!1692756)))

(declare-fun lt!1692758 () Unit!94076)

(declare-fun e!2812548 () Unit!94076)

(assert (=> d!1389225 (= lt!1692758 e!2812548)))

(declare-fun c!770138 () Bool)

(assert (=> d!1389225 (= c!770138 lt!1692756)))

(declare-fun containsKey!1763 (List!50753 (_ BitVec 64)) Bool)

(assert (=> d!1389225 (= lt!1692756 (containsKey!1763 (toList!4316 lt!1692730) hash!344))))

(assert (=> d!1389225 (= (contains!13342 lt!1692730 hash!344) lt!1692757)))

(declare-fun b!4514585 () Bool)

(declare-fun lt!1692755 () Unit!94076)

(assert (=> b!4514585 (= e!2812548 lt!1692755)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!982 (List!50753 (_ BitVec 64)) Unit!94076)

(assert (=> b!4514585 (= lt!1692755 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1692730) hash!344))))

(declare-datatypes ((Option!11099 0))(
  ( (None!11098) (Some!11098 (v!44674 List!50752)) )
))
(declare-fun isDefined!8385 (Option!11099) Bool)

(declare-fun getValueByKey!1079 (List!50753 (_ BitVec 64)) Option!11099)

(assert (=> b!4514585 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344))))

(declare-fun b!4514586 () Bool)

(declare-fun Unit!94080 () Unit!94076)

(assert (=> b!4514586 (= e!2812548 Unit!94080)))

(declare-fun b!4514587 () Bool)

(assert (=> b!4514587 (= e!2812549 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344)))))

(assert (= (and d!1389225 c!770138) b!4514585))

(assert (= (and d!1389225 (not c!770138)) b!4514586))

(assert (= (and d!1389225 (not res!1878391)) b!4514587))

(declare-fun m!5257425 () Bool)

(assert (=> d!1389225 m!5257425))

(declare-fun m!5257427 () Bool)

(assert (=> b!4514585 m!5257427))

(declare-fun m!5257429 () Bool)

(assert (=> b!4514585 m!5257429))

(assert (=> b!4514585 m!5257429))

(declare-fun m!5257431 () Bool)

(assert (=> b!4514585 m!5257431))

(assert (=> b!4514587 m!5257429))

(assert (=> b!4514587 m!5257429))

(assert (=> b!4514587 m!5257431))

(assert (=> b!4514569 d!1389225))

(declare-fun d!1389227 () Bool)

(declare-fun tail!7723 (List!50753) List!50753)

(assert (=> d!1389227 (= (tail!7722 lm!1477) (ListLongMap!2948 (tail!7723 (toList!4316 lm!1477))))))

(declare-fun bs!849737 () Bool)

(assert (= bs!849737 d!1389227))

(declare-fun m!5257433 () Bool)

(assert (=> bs!849737 m!5257433))

(assert (=> b!4514569 d!1389227))

(declare-fun d!1389229 () Bool)

(declare-fun lt!1692761 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8338 (List!50753) (InoxSet tuple2!51052))

(assert (=> d!1389229 (= lt!1692761 (select (content!8338 (t!357715 (toList!4316 lm!1477))) lt!1692740))))

(declare-fun e!2812555 () Bool)

(assert (=> d!1389229 (= lt!1692761 e!2812555)))

(declare-fun res!1878396 () Bool)

(assert (=> d!1389229 (=> (not res!1878396) (not e!2812555))))

(assert (=> d!1389229 (= res!1878396 ((_ is Cons!50629) (t!357715 (toList!4316 lm!1477))))))

(assert (=> d!1389229 (= (contains!13341 (t!357715 (toList!4316 lm!1477)) lt!1692740) lt!1692761)))

(declare-fun b!4514592 () Bool)

(declare-fun e!2812554 () Bool)

(assert (=> b!4514592 (= e!2812555 e!2812554)))

(declare-fun res!1878397 () Bool)

(assert (=> b!4514592 (=> res!1878397 e!2812554)))

(assert (=> b!4514592 (= res!1878397 (= (h!56476 (t!357715 (toList!4316 lm!1477))) lt!1692740))))

(declare-fun b!4514593 () Bool)

(assert (=> b!4514593 (= e!2812554 (contains!13341 (t!357715 (t!357715 (toList!4316 lm!1477))) lt!1692740))))

(assert (= (and d!1389229 res!1878396) b!4514592))

(assert (= (and b!4514592 (not res!1878397)) b!4514593))

(declare-fun m!5257435 () Bool)

(assert (=> d!1389229 m!5257435))

(declare-fun m!5257437 () Bool)

(assert (=> d!1389229 m!5257437))

(declare-fun m!5257439 () Bool)

(assert (=> b!4514593 m!5257439))

(assert (=> b!4514558 d!1389229))

(declare-fun d!1389231 () Bool)

(declare-fun res!1878402 () Bool)

(declare-fun e!2812560 () Bool)

(assert (=> d!1389231 (=> res!1878402 e!2812560)))

(assert (=> d!1389231 (= res!1878402 (not ((_ is Cons!50628) newBucket!178)))))

(assert (=> d!1389231 (= (noDuplicateKeys!1154 newBucket!178) e!2812560)))

(declare-fun b!4514598 () Bool)

(declare-fun e!2812561 () Bool)

(assert (=> b!4514598 (= e!2812560 e!2812561)))

(declare-fun res!1878403 () Bool)

(assert (=> b!4514598 (=> (not res!1878403) (not e!2812561))))

(assert (=> b!4514598 (= res!1878403 (not (containsKey!1762 (t!357714 newBucket!178) (_1!28819 (h!56475 newBucket!178)))))))

(declare-fun b!4514599 () Bool)

(assert (=> b!4514599 (= e!2812561 (noDuplicateKeys!1154 (t!357714 newBucket!178)))))

(assert (= (and d!1389231 (not res!1878402)) b!4514598))

(assert (= (and b!4514598 res!1878403) b!4514599))

(declare-fun m!5257441 () Bool)

(assert (=> b!4514598 m!5257441))

(declare-fun m!5257443 () Bool)

(assert (=> b!4514599 m!5257443))

(assert (=> b!4514560 d!1389231))

(declare-fun d!1389235 () Bool)

(assert (=> d!1389235 true))

(assert (=> d!1389235 true))

(declare-fun lambda!171416 () Int)

(declare-fun forall!10247 (List!50752 Int) Bool)

(assert (=> d!1389235 (= (allKeysSameHash!1008 newBucket!178 hash!344 hashF!1107) (forall!10247 newBucket!178 lambda!171416))))

(declare-fun bs!849738 () Bool)

(assert (= bs!849738 d!1389235))

(declare-fun m!5257469 () Bool)

(assert (=> bs!849738 m!5257469))

(assert (=> b!4514570 d!1389235))

(declare-fun d!1389241 () Bool)

(declare-fun isEmpty!28644 (List!50753) Bool)

(assert (=> d!1389241 (= (isEmpty!28643 lm!1477) (isEmpty!28644 (toList!4316 lm!1477)))))

(declare-fun bs!849740 () Bool)

(assert (= bs!849740 d!1389241))

(declare-fun m!5257475 () Bool)

(assert (=> bs!849740 m!5257475))

(assert (=> b!4514561 d!1389241))

(declare-fun d!1389245 () Bool)

(declare-fun dynLambda!21150 (Int tuple2!51052) Bool)

(assert (=> d!1389245 (dynLambda!21150 lambda!171413 (h!56476 (toList!4316 lm!1477)))))

(declare-fun lt!1692780 () Unit!94076)

(declare-fun choose!29410 (List!50753 Int tuple2!51052) Unit!94076)

(assert (=> d!1389245 (= lt!1692780 (choose!29410 (toList!4316 lm!1477) lambda!171413 (h!56476 (toList!4316 lm!1477))))))

(declare-fun e!2812568 () Bool)

(assert (=> d!1389245 e!2812568))

(declare-fun res!1878414 () Bool)

(assert (=> d!1389245 (=> (not res!1878414) (not e!2812568))))

(assert (=> d!1389245 (= res!1878414 (forall!10245 (toList!4316 lm!1477) lambda!171413))))

(assert (=> d!1389245 (= (forallContained!2497 (toList!4316 lm!1477) lambda!171413 (h!56476 (toList!4316 lm!1477))) lt!1692780)))

(declare-fun b!4514614 () Bool)

(assert (=> b!4514614 (= e!2812568 (contains!13341 (toList!4316 lm!1477) (h!56476 (toList!4316 lm!1477))))))

(assert (= (and d!1389245 res!1878414) b!4514614))

(declare-fun b_lambda!154093 () Bool)

(assert (=> (not b_lambda!154093) (not d!1389245)))

(declare-fun m!5257477 () Bool)

(assert (=> d!1389245 m!5257477))

(declare-fun m!5257479 () Bool)

(assert (=> d!1389245 m!5257479))

(assert (=> d!1389245 m!5257325))

(declare-fun m!5257481 () Bool)

(assert (=> b!4514614 m!5257481))

(assert (=> b!4514561 d!1389245))

(declare-fun d!1389247 () Bool)

(declare-fun e!2812577 () Bool)

(assert (=> d!1389247 e!2812577))

(declare-fun res!1878423 () Bool)

(assert (=> d!1389247 (=> (not res!1878423) (not e!2812577))))

(declare-fun lt!1692801 () ListLongMap!2947)

(assert (=> d!1389247 (= res!1878423 (contains!13342 lt!1692801 (_1!28820 lt!1692726)))))

(declare-fun lt!1692803 () List!50753)

(assert (=> d!1389247 (= lt!1692801 (ListLongMap!2948 lt!1692803))))

(declare-fun lt!1692804 () Unit!94076)

(declare-fun lt!1692802 () Unit!94076)

(assert (=> d!1389247 (= lt!1692804 lt!1692802)))

(assert (=> d!1389247 (= (getValueByKey!1079 lt!1692803 (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726)))))

(declare-fun lemmaContainsTupThenGetReturnValue!666 (List!50753 (_ BitVec 64) List!50752) Unit!94076)

(assert (=> d!1389247 (= lt!1692802 (lemmaContainsTupThenGetReturnValue!666 lt!1692803 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(declare-fun insertStrictlySorted!402 (List!50753 (_ BitVec 64) List!50752) List!50753)

(assert (=> d!1389247 (= lt!1692803 (insertStrictlySorted!402 (toList!4316 lm!1477) (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(assert (=> d!1389247 (= (+!1526 lm!1477 lt!1692726) lt!1692801)))

(declare-fun b!4514631 () Bool)

(declare-fun res!1878424 () Bool)

(assert (=> b!4514631 (=> (not res!1878424) (not e!2812577))))

(assert (=> b!4514631 (= res!1878424 (= (getValueByKey!1079 (toList!4316 lt!1692801) (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726))))))

(declare-fun b!4514632 () Bool)

(assert (=> b!4514632 (= e!2812577 (contains!13341 (toList!4316 lt!1692801) lt!1692726))))

(assert (= (and d!1389247 res!1878423) b!4514631))

(assert (= (and b!4514631 res!1878424) b!4514632))

(declare-fun m!5257527 () Bool)

(assert (=> d!1389247 m!5257527))

(declare-fun m!5257529 () Bool)

(assert (=> d!1389247 m!5257529))

(declare-fun m!5257531 () Bool)

(assert (=> d!1389247 m!5257531))

(declare-fun m!5257533 () Bool)

(assert (=> d!1389247 m!5257533))

(declare-fun m!5257535 () Bool)

(assert (=> b!4514631 m!5257535))

(declare-fun m!5257537 () Bool)

(assert (=> b!4514632 m!5257537))

(assert (=> b!4514572 d!1389247))

(declare-fun d!1389259 () Bool)

(declare-fun e!2812578 () Bool)

(assert (=> d!1389259 e!2812578))

(declare-fun res!1878425 () Bool)

(assert (=> d!1389259 (=> (not res!1878425) (not e!2812578))))

(declare-fun lt!1692805 () ListLongMap!2947)

(assert (=> d!1389259 (= res!1878425 (contains!13342 lt!1692805 (_1!28820 lt!1692742)))))

(declare-fun lt!1692807 () List!50753)

(assert (=> d!1389259 (= lt!1692805 (ListLongMap!2948 lt!1692807))))

(declare-fun lt!1692808 () Unit!94076)

(declare-fun lt!1692806 () Unit!94076)

(assert (=> d!1389259 (= lt!1692808 lt!1692806)))

(assert (=> d!1389259 (= (getValueByKey!1079 lt!1692807 (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742)))))

(assert (=> d!1389259 (= lt!1692806 (lemmaContainsTupThenGetReturnValue!666 lt!1692807 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(assert (=> d!1389259 (= lt!1692807 (insertStrictlySorted!402 (toList!4316 lt!1692737) (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(assert (=> d!1389259 (= (+!1526 lt!1692737 lt!1692742) lt!1692805)))

(declare-fun b!4514633 () Bool)

(declare-fun res!1878426 () Bool)

(assert (=> b!4514633 (=> (not res!1878426) (not e!2812578))))

(assert (=> b!4514633 (= res!1878426 (= (getValueByKey!1079 (toList!4316 lt!1692805) (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742))))))

(declare-fun b!4514634 () Bool)

(assert (=> b!4514634 (= e!2812578 (contains!13341 (toList!4316 lt!1692805) lt!1692742))))

(assert (= (and d!1389259 res!1878425) b!4514633))

(assert (= (and b!4514633 res!1878426) b!4514634))

(declare-fun m!5257539 () Bool)

(assert (=> d!1389259 m!5257539))

(declare-fun m!5257541 () Bool)

(assert (=> d!1389259 m!5257541))

(declare-fun m!5257543 () Bool)

(assert (=> d!1389259 m!5257543))

(declare-fun m!5257545 () Bool)

(assert (=> d!1389259 m!5257545))

(declare-fun m!5257547 () Bool)

(assert (=> b!4514633 m!5257547))

(declare-fun m!5257549 () Bool)

(assert (=> b!4514634 m!5257549))

(assert (=> b!4514572 d!1389259))

(declare-fun d!1389261 () Bool)

(declare-fun get!16572 (Option!11099) List!50752)

(assert (=> d!1389261 (= (apply!11891 lt!1692730 hash!344) (get!16572 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344)))))

(declare-fun bs!849750 () Bool)

(assert (= bs!849750 d!1389261))

(assert (=> bs!849750 m!5257429))

(assert (=> bs!849750 m!5257429))

(declare-fun m!5257565 () Bool)

(assert (=> bs!849750 m!5257565))

(assert (=> b!4514571 d!1389261))

(declare-fun d!1389267 () Bool)

(declare-fun res!1878431 () Bool)

(declare-fun e!2812583 () Bool)

(assert (=> d!1389267 (=> res!1878431 e!2812583)))

(assert (=> d!1389267 (= res!1878431 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389267 (= (forall!10245 (toList!4316 lm!1477) lambda!171413) e!2812583)))

(declare-fun b!4514639 () Bool)

(declare-fun e!2812584 () Bool)

(assert (=> b!4514639 (= e!2812583 e!2812584)))

(declare-fun res!1878432 () Bool)

(assert (=> b!4514639 (=> (not res!1878432) (not e!2812584))))

(assert (=> b!4514639 (= res!1878432 (dynLambda!21150 lambda!171413 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4514640 () Bool)

(assert (=> b!4514640 (= e!2812584 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171413))))

(assert (= (and d!1389267 (not res!1878431)) b!4514639))

(assert (= (and b!4514639 res!1878432) b!4514640))

(declare-fun b_lambda!154095 () Bool)

(assert (=> (not b_lambda!154095) (not b!4514639)))

(assert (=> b!4514639 m!5257477))

(declare-fun m!5257567 () Bool)

(assert (=> b!4514640 m!5257567))

(assert (=> start!446664 d!1389267))

(declare-fun d!1389269 () Bool)

(declare-fun isStrictlySorted!424 (List!50753) Bool)

(assert (=> d!1389269 (= (inv!66209 lm!1477) (isStrictlySorted!424 (toList!4316 lm!1477)))))

(declare-fun bs!849751 () Bool)

(assert (= bs!849751 d!1389269))

(declare-fun m!5257583 () Bool)

(assert (=> bs!849751 m!5257583))

(assert (=> start!446664 d!1389269))

(declare-fun d!1389273 () Bool)

(declare-fun content!8339 (List!50752) (InoxSet tuple2!51050))

(assert (=> d!1389273 (= (eq!611 lt!1692731 lt!1692736) (= (content!8339 (toList!4315 lt!1692731)) (content!8339 (toList!4315 lt!1692736))))))

(declare-fun bs!849754 () Bool)

(assert (= bs!849754 d!1389273))

(declare-fun m!5257589 () Bool)

(assert (=> bs!849754 m!5257589))

(declare-fun m!5257591 () Bool)

(assert (=> bs!849754 m!5257591))

(assert (=> b!4514562 d!1389273))

(declare-fun bs!849786 () Bool)

(declare-fun b!4514750 () Bool)

(assert (= bs!849786 (and b!4514750 d!1389235)))

(declare-fun lambda!171463 () Int)

(assert (=> bs!849786 (not (= lambda!171463 lambda!171416))))

(assert (=> b!4514750 true))

(declare-fun bs!849787 () Bool)

(declare-fun b!4514749 () Bool)

(assert (= bs!849787 (and b!4514749 d!1389235)))

(declare-fun lambda!171464 () Int)

(assert (=> bs!849787 (not (= lambda!171464 lambda!171416))))

(declare-fun bs!849788 () Bool)

(assert (= bs!849788 (and b!4514749 b!4514750)))

(assert (=> bs!849788 (= lambda!171464 lambda!171463)))

(assert (=> b!4514749 true))

(declare-fun lambda!171465 () Int)

(assert (=> bs!849787 (not (= lambda!171465 lambda!171416))))

(declare-fun lt!1692939 () ListMap!3577)

(assert (=> bs!849788 (= (= lt!1692939 lt!1692734) (= lambda!171465 lambda!171463))))

(assert (=> b!4514749 (= (= lt!1692939 lt!1692734) (= lambda!171465 lambda!171464))))

(assert (=> b!4514749 true))

(declare-fun bs!849789 () Bool)

(declare-fun d!1389279 () Bool)

(assert (= bs!849789 (and d!1389279 d!1389235)))

(declare-fun lambda!171466 () Int)

(assert (=> bs!849789 (not (= lambda!171466 lambda!171416))))

(declare-fun bs!849790 () Bool)

(assert (= bs!849790 (and d!1389279 b!4514750)))

(declare-fun lt!1692937 () ListMap!3577)

(assert (=> bs!849790 (= (= lt!1692937 lt!1692734) (= lambda!171466 lambda!171463))))

(declare-fun bs!849791 () Bool)

(assert (= bs!849791 (and d!1389279 b!4514749)))

(assert (=> bs!849791 (= (= lt!1692937 lt!1692734) (= lambda!171466 lambda!171464))))

(assert (=> bs!849791 (= (= lt!1692937 lt!1692939) (= lambda!171466 lambda!171465))))

(assert (=> d!1389279 true))

(declare-fun c!770169 () Bool)

(declare-fun call!314406 () Bool)

(declare-fun bm!314401 () Bool)

(assert (=> bm!314401 (= call!314406 (forall!10247 (ite c!770169 (toList!4315 lt!1692734) (t!357714 (_2!28820 lt!1692742))) (ite c!770169 lambda!171463 lambda!171465)))))

(declare-fun call!314407 () Bool)

(declare-fun bm!314402 () Bool)

(assert (=> bm!314402 (= call!314407 (forall!10247 (toList!4315 lt!1692734) (ite c!770169 lambda!171463 lambda!171465)))))

(declare-fun bm!314403 () Bool)

(declare-fun call!314408 () Unit!94076)

(declare-fun lemmaContainsAllItsOwnKeys!331 (ListMap!3577) Unit!94076)

(assert (=> bm!314403 (= call!314408 (lemmaContainsAllItsOwnKeys!331 lt!1692734))))

(declare-fun b!4514748 () Bool)

(declare-fun e!2812661 () Bool)

(assert (=> b!4514748 (= e!2812661 call!314407)))

(declare-fun e!2812660 () ListMap!3577)

(assert (=> b!4514749 (= e!2812660 lt!1692939)))

(declare-fun lt!1692943 () ListMap!3577)

(declare-fun +!1527 (ListMap!3577 tuple2!51050) ListMap!3577)

(assert (=> b!4514749 (= lt!1692943 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4514749 (= lt!1692939 (addToMapMapFromBucket!681 (t!357714 (_2!28820 lt!1692742)) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1692935 () Unit!94076)

(assert (=> b!4514749 (= lt!1692935 call!314408)))

(assert (=> b!4514749 (forall!10247 (toList!4315 lt!1692734) lambda!171464)))

(declare-fun lt!1692931 () Unit!94076)

(assert (=> b!4514749 (= lt!1692931 lt!1692935)))

(assert (=> b!4514749 (forall!10247 (toList!4315 lt!1692943) lambda!171465)))

(declare-fun lt!1692946 () Unit!94076)

(declare-fun Unit!94086 () Unit!94076)

(assert (=> b!4514749 (= lt!1692946 Unit!94086)))

(assert (=> b!4514749 call!314406))

(declare-fun lt!1692936 () Unit!94076)

(declare-fun Unit!94087 () Unit!94076)

(assert (=> b!4514749 (= lt!1692936 Unit!94087)))

(declare-fun lt!1692938 () Unit!94076)

(declare-fun Unit!94088 () Unit!94076)

(assert (=> b!4514749 (= lt!1692938 Unit!94088)))

(declare-fun lt!1692945 () Unit!94076)

(declare-fun forallContained!2498 (List!50752 Int tuple2!51050) Unit!94076)

(assert (=> b!4514749 (= lt!1692945 (forallContained!2498 (toList!4315 lt!1692943) lambda!171465 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4514749 (contains!13343 lt!1692943 (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1692944 () Unit!94076)

(declare-fun Unit!94089 () Unit!94076)

(assert (=> b!4514749 (= lt!1692944 Unit!94089)))

(assert (=> b!4514749 (contains!13343 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1692930 () Unit!94076)

(declare-fun Unit!94090 () Unit!94076)

(assert (=> b!4514749 (= lt!1692930 Unit!94090)))

(assert (=> b!4514749 (forall!10247 (_2!28820 lt!1692742) lambda!171465)))

(declare-fun lt!1692933 () Unit!94076)

(declare-fun Unit!94091 () Unit!94076)

(assert (=> b!4514749 (= lt!1692933 Unit!94091)))

(assert (=> b!4514749 (forall!10247 (toList!4315 lt!1692943) lambda!171465)))

(declare-fun lt!1692928 () Unit!94076)

(declare-fun Unit!94092 () Unit!94076)

(assert (=> b!4514749 (= lt!1692928 Unit!94092)))

(declare-fun lt!1692941 () Unit!94076)

(declare-fun Unit!94093 () Unit!94076)

(assert (=> b!4514749 (= lt!1692941 Unit!94093)))

(declare-fun lt!1692940 () Unit!94076)

(declare-fun addForallContainsKeyThenBeforeAdding!331 (ListMap!3577 ListMap!3577 K!12025 V!12271) Unit!94076)

(assert (=> b!4514749 (= lt!1692940 (addForallContainsKeyThenBeforeAdding!331 lt!1692734 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4514749 (forall!10247 (toList!4315 lt!1692734) lambda!171465)))

(declare-fun lt!1692926 () Unit!94076)

(assert (=> b!4514749 (= lt!1692926 lt!1692940)))

(assert (=> b!4514749 (forall!10247 (toList!4315 lt!1692734) lambda!171465)))

(declare-fun lt!1692932 () Unit!94076)

(declare-fun Unit!94094 () Unit!94076)

(assert (=> b!4514749 (= lt!1692932 Unit!94094)))

(declare-fun res!1878483 () Bool)

(assert (=> b!4514749 (= res!1878483 (forall!10247 (_2!28820 lt!1692742) lambda!171465))))

(assert (=> b!4514749 (=> (not res!1878483) (not e!2812661))))

(assert (=> b!4514749 e!2812661))

(declare-fun lt!1692929 () Unit!94076)

(declare-fun Unit!94095 () Unit!94076)

(assert (=> b!4514749 (= lt!1692929 Unit!94095)))

(declare-fun b!4514747 () Bool)

(declare-fun res!1878484 () Bool)

(declare-fun e!2812659 () Bool)

(assert (=> b!4514747 (=> (not res!1878484) (not e!2812659))))

(assert (=> b!4514747 (= res!1878484 (forall!10247 (toList!4315 lt!1692734) lambda!171466))))

(assert (=> d!1389279 e!2812659))

(declare-fun res!1878485 () Bool)

(assert (=> d!1389279 (=> (not res!1878485) (not e!2812659))))

(assert (=> d!1389279 (= res!1878485 (forall!10247 (_2!28820 lt!1692742) lambda!171466))))

(assert (=> d!1389279 (= lt!1692937 e!2812660)))

(assert (=> d!1389279 (= c!770169 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1389279 (noDuplicateKeys!1154 (_2!28820 lt!1692742))))

(assert (=> d!1389279 (= (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734) lt!1692937)))

(assert (=> b!4514750 (= e!2812660 lt!1692734)))

(declare-fun lt!1692934 () Unit!94076)

(assert (=> b!4514750 (= lt!1692934 call!314408)))

(assert (=> b!4514750 call!314407))

(declare-fun lt!1692927 () Unit!94076)

(assert (=> b!4514750 (= lt!1692927 lt!1692934)))

(assert (=> b!4514750 call!314406))

(declare-fun lt!1692942 () Unit!94076)

(declare-fun Unit!94096 () Unit!94076)

(assert (=> b!4514750 (= lt!1692942 Unit!94096)))

(declare-fun b!4514751 () Bool)

(declare-fun invariantList!1011 (List!50752) Bool)

(assert (=> b!4514751 (= e!2812659 (invariantList!1011 (toList!4315 lt!1692937)))))

(assert (= (and d!1389279 c!770169) b!4514750))

(assert (= (and d!1389279 (not c!770169)) b!4514749))

(assert (= (and b!4514749 res!1878483) b!4514748))

(assert (= (or b!4514750 b!4514749) bm!314401))

(assert (= (or b!4514750 b!4514748) bm!314402))

(assert (= (or b!4514750 b!4514749) bm!314403))

(assert (= (and d!1389279 res!1878485) b!4514747))

(assert (= (and b!4514747 res!1878484) b!4514751))

(declare-fun m!5257723 () Bool)

(assert (=> bm!314401 m!5257723))

(declare-fun m!5257725 () Bool)

(assert (=> b!4514749 m!5257725))

(declare-fun m!5257727 () Bool)

(assert (=> b!4514749 m!5257727))

(declare-fun m!5257729 () Bool)

(assert (=> b!4514749 m!5257729))

(declare-fun m!5257731 () Bool)

(assert (=> b!4514749 m!5257731))

(assert (=> b!4514749 m!5257731))

(declare-fun m!5257733 () Bool)

(assert (=> b!4514749 m!5257733))

(assert (=> b!4514749 m!5257725))

(declare-fun m!5257735 () Bool)

(assert (=> b!4514749 m!5257735))

(declare-fun m!5257737 () Bool)

(assert (=> b!4514749 m!5257737))

(assert (=> b!4514749 m!5257727))

(assert (=> b!4514749 m!5257733))

(declare-fun m!5257739 () Bool)

(assert (=> b!4514749 m!5257739))

(declare-fun m!5257741 () Bool)

(assert (=> b!4514749 m!5257741))

(declare-fun m!5257743 () Bool)

(assert (=> b!4514749 m!5257743))

(declare-fun m!5257745 () Bool)

(assert (=> bm!314402 m!5257745))

(declare-fun m!5257747 () Bool)

(assert (=> bm!314403 m!5257747))

(declare-fun m!5257749 () Bool)

(assert (=> b!4514751 m!5257749))

(declare-fun m!5257751 () Bool)

(assert (=> b!4514747 m!5257751))

(declare-fun m!5257753 () Bool)

(assert (=> d!1389279 m!5257753))

(declare-fun m!5257755 () Bool)

(assert (=> d!1389279 m!5257755))

(assert (=> b!4514562 d!1389279))

(declare-fun bs!849792 () Bool)

(declare-fun d!1389325 () Bool)

(assert (= bs!849792 (and d!1389325 start!446664)))

(declare-fun lambda!171497 () Int)

(assert (=> bs!849792 (= lambda!171497 lambda!171413)))

(declare-fun lt!1692991 () ListMap!3577)

(assert (=> d!1389325 (invariantList!1011 (toList!4315 lt!1692991))))

(declare-fun e!2812670 () ListMap!3577)

(assert (=> d!1389325 (= lt!1692991 e!2812670)))

(declare-fun c!770174 () Bool)

(assert (=> d!1389325 (= c!770174 ((_ is Cons!50629) (toList!4316 lt!1692725)))))

(assert (=> d!1389325 (forall!10245 (toList!4316 lt!1692725) lambda!171497)))

(assert (=> d!1389325 (= (extractMap!1210 (toList!4316 lt!1692725)) lt!1692991)))

(declare-fun b!4514768 () Bool)

(assert (=> b!4514768 (= e!2812670 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))))))

(declare-fun b!4514769 () Bool)

(assert (=> b!4514769 (= e!2812670 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389325 c!770174) b!4514768))

(assert (= (and d!1389325 (not c!770174)) b!4514769))

(declare-fun m!5257757 () Bool)

(assert (=> d!1389325 m!5257757))

(declare-fun m!5257759 () Bool)

(assert (=> d!1389325 m!5257759))

(declare-fun m!5257761 () Bool)

(assert (=> b!4514768 m!5257761))

(assert (=> b!4514768 m!5257761))

(declare-fun m!5257763 () Bool)

(assert (=> b!4514768 m!5257763))

(assert (=> b!4514562 d!1389325))

(declare-fun d!1389327 () Bool)

(declare-fun res!1878496 () Bool)

(declare-fun e!2812675 () Bool)

(assert (=> d!1389327 (=> res!1878496 e!2812675)))

(assert (=> d!1389327 (= res!1878496 (and ((_ is Cons!50628) lt!1692723) (= (_1!28819 (h!56475 lt!1692723)) key!3287)))))

(assert (=> d!1389327 (= (containsKey!1762 lt!1692723 key!3287) e!2812675)))

(declare-fun b!4514774 () Bool)

(declare-fun e!2812676 () Bool)

(assert (=> b!4514774 (= e!2812675 e!2812676)))

(declare-fun res!1878497 () Bool)

(assert (=> b!4514774 (=> (not res!1878497) (not e!2812676))))

(assert (=> b!4514774 (= res!1878497 ((_ is Cons!50628) lt!1692723))))

(declare-fun b!4514775 () Bool)

(assert (=> b!4514775 (= e!2812676 (containsKey!1762 (t!357714 lt!1692723) key!3287))))

(assert (= (and d!1389327 (not res!1878496)) b!4514774))

(assert (= (and b!4514774 res!1878497) b!4514775))

(declare-fun m!5257765 () Bool)

(assert (=> b!4514775 m!5257765))

(assert (=> b!4514563 d!1389327))

(declare-fun d!1389329 () Bool)

(declare-fun res!1878506 () Bool)

(declare-fun e!2812685 () Bool)

(assert (=> d!1389329 (=> res!1878506 e!2812685)))

(declare-fun e!2812683 () Bool)

(assert (=> d!1389329 (= res!1878506 e!2812683)))

(declare-fun res!1878504 () Bool)

(assert (=> d!1389329 (=> (not res!1878504) (not e!2812683))))

(assert (=> d!1389329 (= res!1878504 ((_ is Cons!50629) (t!357715 (toList!4316 lm!1477))))))

(assert (=> d!1389329 (= (containsKeyBiggerList!134 (t!357715 (toList!4316 lm!1477)) key!3287) e!2812685)))

(declare-fun b!4514782 () Bool)

(assert (=> b!4514782 (= e!2812683 (containsKey!1762 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun b!4514783 () Bool)

(declare-fun e!2812684 () Bool)

(assert (=> b!4514783 (= e!2812685 e!2812684)))

(declare-fun res!1878505 () Bool)

(assert (=> b!4514783 (=> (not res!1878505) (not e!2812684))))

(assert (=> b!4514783 (= res!1878505 ((_ is Cons!50629) (t!357715 (toList!4316 lm!1477))))))

(declare-fun b!4514784 () Bool)

(assert (=> b!4514784 (= e!2812684 (containsKeyBiggerList!134 (t!357715 (t!357715 (toList!4316 lm!1477))) key!3287))))

(assert (= (and d!1389329 res!1878504) b!4514782))

(assert (= (and d!1389329 (not res!1878506)) b!4514783))

(assert (= (and b!4514783 res!1878505) b!4514784))

(declare-fun m!5257767 () Bool)

(assert (=> b!4514782 m!5257767))

(declare-fun m!5257769 () Bool)

(assert (=> b!4514784 m!5257769))

(assert (=> b!4514574 d!1389329))

(declare-fun d!1389331 () Bool)

(declare-fun res!1878512 () Bool)

(declare-fun e!2812691 () Bool)

(assert (=> d!1389331 (=> res!1878512 e!2812691)))

(declare-fun e!2812689 () Bool)

(assert (=> d!1389331 (= res!1878512 e!2812689)))

(declare-fun res!1878510 () Bool)

(assert (=> d!1389331 (=> (not res!1878510) (not e!2812689))))

(assert (=> d!1389331 (= res!1878510 ((_ is Cons!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389331 (= (containsKeyBiggerList!134 (toList!4316 lt!1692730) key!3287) e!2812691)))

(declare-fun b!4514790 () Bool)

(assert (=> b!4514790 (= e!2812689 (containsKey!1762 (_2!28820 (h!56476 (toList!4316 lt!1692730))) key!3287))))

(declare-fun b!4514791 () Bool)

(declare-fun e!2812690 () Bool)

(assert (=> b!4514791 (= e!2812691 e!2812690)))

(declare-fun res!1878511 () Bool)

(assert (=> b!4514791 (=> (not res!1878511) (not e!2812690))))

(assert (=> b!4514791 (= res!1878511 ((_ is Cons!50629) (toList!4316 lt!1692730)))))

(declare-fun b!4514792 () Bool)

(assert (=> b!4514792 (= e!2812690 (containsKeyBiggerList!134 (t!357715 (toList!4316 lt!1692730)) key!3287))))

(assert (= (and d!1389331 res!1878510) b!4514790))

(assert (= (and d!1389331 (not res!1878512)) b!4514791))

(assert (= (and b!4514791 res!1878511) b!4514792))

(declare-fun m!5257771 () Bool)

(assert (=> b!4514790 m!5257771))

(declare-fun m!5257773 () Bool)

(assert (=> b!4514792 m!5257773))

(assert (=> b!4514574 d!1389331))

(declare-fun bs!849799 () Bool)

(declare-fun d!1389333 () Bool)

(assert (= bs!849799 (and d!1389333 start!446664)))

(declare-fun lambda!171504 () Int)

(assert (=> bs!849799 (= lambda!171504 lambda!171413)))

(declare-fun bs!849800 () Bool)

(assert (= bs!849800 (and d!1389333 d!1389325)))

(assert (=> bs!849800 (= lambda!171504 lambda!171497)))

(assert (=> d!1389333 (containsKeyBiggerList!134 (toList!4316 lt!1692730) key!3287)))

(declare-fun lt!1693015 () Unit!94076)

(declare-fun choose!29413 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> d!1389333 (= lt!1693015 (choose!29413 lt!1692730 key!3287 hashF!1107))))

(assert (=> d!1389333 (forall!10245 (toList!4316 lt!1692730) lambda!171504)))

(assert (=> d!1389333 (= (lemmaInLongMapThenContainsKeyBiggerList!70 lt!1692730 key!3287 hashF!1107) lt!1693015)))

(declare-fun bs!849801 () Bool)

(assert (= bs!849801 d!1389333))

(assert (=> bs!849801 m!5257409))

(declare-fun m!5257775 () Bool)

(assert (=> bs!849801 m!5257775))

(declare-fun m!5257777 () Bool)

(assert (=> bs!849801 m!5257777))

(assert (=> b!4514574 d!1389333))

(declare-fun d!1389335 () Bool)

(declare-fun hash!2787 (Hashable!5549 K!12025) (_ BitVec 64))

(assert (=> d!1389335 (= (hash!2783 hashF!1107 key!3287) (hash!2787 hashF!1107 key!3287))))

(declare-fun bs!849802 () Bool)

(assert (= bs!849802 d!1389335))

(declare-fun m!5257779 () Bool)

(assert (=> bs!849802 m!5257779))

(assert (=> b!4514565 d!1389335))

(declare-fun b!4514826 () Bool)

(declare-fun e!2812717 () Bool)

(declare-datatypes ((List!50755 0))(
  ( (Nil!50631) (Cons!50631 (h!56480 K!12025) (t!357717 List!50755)) )
))
(declare-fun contains!13345 (List!50755 K!12025) Bool)

(declare-fun keys!17582 (ListMap!3577) List!50755)

(assert (=> b!4514826 (= e!2812717 (contains!13345 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun d!1389337 () Bool)

(declare-fun e!2812712 () Bool)

(assert (=> d!1389337 e!2812712))

(declare-fun res!1878522 () Bool)

(assert (=> d!1389337 (=> res!1878522 e!2812712)))

(declare-fun e!2812715 () Bool)

(assert (=> d!1389337 (= res!1878522 e!2812715)))

(declare-fun res!1878523 () Bool)

(assert (=> d!1389337 (=> (not res!1878523) (not e!2812715))))

(declare-fun lt!1693045 () Bool)

(assert (=> d!1389337 (= res!1878523 (not lt!1693045))))

(declare-fun lt!1693052 () Bool)

(assert (=> d!1389337 (= lt!1693045 lt!1693052)))

(declare-fun lt!1693050 () Unit!94076)

(declare-fun e!2812714 () Unit!94076)

(assert (=> d!1389337 (= lt!1693050 e!2812714)))

(declare-fun c!770188 () Bool)

(assert (=> d!1389337 (= c!770188 lt!1693052)))

(declare-fun containsKey!1766 (List!50752 K!12025) Bool)

(assert (=> d!1389337 (= lt!1693052 (containsKey!1766 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(assert (=> d!1389337 (= (contains!13343 (extractMap!1210 (t!357715 (toList!4316 lm!1477))) key!3287) lt!1693045)))

(declare-fun b!4514827 () Bool)

(declare-fun e!2812713 () List!50755)

(assert (=> b!4514827 (= e!2812713 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4514828 () Bool)

(declare-fun getKeysList!459 (List!50752) List!50755)

(assert (=> b!4514828 (= e!2812713 (getKeysList!459 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4514829 () Bool)

(declare-fun e!2812716 () Unit!94076)

(declare-fun Unit!94098 () Unit!94076)

(assert (=> b!4514829 (= e!2812716 Unit!94098)))

(declare-fun b!4514830 () Bool)

(declare-fun lt!1693046 () Unit!94076)

(assert (=> b!4514830 (= e!2812714 lt!1693046)))

(declare-fun lt!1693048 () Unit!94076)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!985 (List!50752 K!12025) Unit!94076)

(assert (=> b!4514830 (= lt!1693048 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11101 0))(
  ( (None!11100) (Some!11100 (v!44676 V!12271)) )
))
(declare-fun isDefined!8388 (Option!11101) Bool)

(declare-fun getValueByKey!1081 (List!50752 K!12025) Option!11101)

(assert (=> b!4514830 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun lt!1693051 () Unit!94076)

(assert (=> b!4514830 (= lt!1693051 lt!1693048)))

(declare-fun lemmaInListThenGetKeysListContains!455 (List!50752 K!12025) Unit!94076)

(assert (=> b!4514830 (= lt!1693046 (lemmaInListThenGetKeysListContains!455 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun call!314421 () Bool)

(assert (=> b!4514830 call!314421))

(declare-fun b!4514831 () Bool)

(assert (=> b!4514831 (= e!2812715 (not (contains!13345 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287)))))

(declare-fun b!4514832 () Bool)

(assert (=> b!4514832 (= e!2812712 e!2812717)))

(declare-fun res!1878524 () Bool)

(assert (=> b!4514832 (=> (not res!1878524) (not e!2812717))))

(assert (=> b!4514832 (= res!1878524 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287)))))

(declare-fun b!4514833 () Bool)

(assert (=> b!4514833 (= e!2812714 e!2812716)))

(declare-fun c!770189 () Bool)

(assert (=> b!4514833 (= c!770189 call!314421)))

(declare-fun b!4514834 () Bool)

(assert (=> b!4514834 false))

(declare-fun lt!1693049 () Unit!94076)

(declare-fun lt!1693047 () Unit!94076)

(assert (=> b!4514834 (= lt!1693049 lt!1693047)))

(assert (=> b!4514834 (containsKey!1766 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!458 (List!50752 K!12025) Unit!94076)

(assert (=> b!4514834 (= lt!1693047 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun Unit!94099 () Unit!94076)

(assert (=> b!4514834 (= e!2812716 Unit!94099)))

(declare-fun bm!314416 () Bool)

(assert (=> bm!314416 (= call!314421 (contains!13345 e!2812713 key!3287))))

(declare-fun c!770187 () Bool)

(assert (=> bm!314416 (= c!770187 c!770188)))

(assert (= (and d!1389337 c!770188) b!4514830))

(assert (= (and d!1389337 (not c!770188)) b!4514833))

(assert (= (and b!4514833 c!770189) b!4514834))

(assert (= (and b!4514833 (not c!770189)) b!4514829))

(assert (= (or b!4514830 b!4514833) bm!314416))

(assert (= (and bm!314416 c!770187) b!4514828))

(assert (= (and bm!314416 (not c!770187)) b!4514827))

(assert (= (and d!1389337 res!1878523) b!4514831))

(assert (= (and d!1389337 (not res!1878522)) b!4514832))

(assert (= (and b!4514832 res!1878524) b!4514826))

(declare-fun m!5257855 () Bool)

(assert (=> bm!314416 m!5257855))

(assert (=> b!4514827 m!5257351))

(declare-fun m!5257857 () Bool)

(assert (=> b!4514827 m!5257857))

(assert (=> b!4514826 m!5257351))

(assert (=> b!4514826 m!5257857))

(assert (=> b!4514826 m!5257857))

(declare-fun m!5257859 () Bool)

(assert (=> b!4514826 m!5257859))

(declare-fun m!5257861 () Bool)

(assert (=> d!1389337 m!5257861))

(declare-fun m!5257863 () Bool)

(assert (=> b!4514830 m!5257863))

(declare-fun m!5257865 () Bool)

(assert (=> b!4514830 m!5257865))

(assert (=> b!4514830 m!5257865))

(declare-fun m!5257867 () Bool)

(assert (=> b!4514830 m!5257867))

(declare-fun m!5257869 () Bool)

(assert (=> b!4514830 m!5257869))

(assert (=> b!4514834 m!5257861))

(declare-fun m!5257871 () Bool)

(assert (=> b!4514834 m!5257871))

(declare-fun m!5257873 () Bool)

(assert (=> b!4514828 m!5257873))

(assert (=> b!4514831 m!5257351))

(assert (=> b!4514831 m!5257857))

(assert (=> b!4514831 m!5257857))

(assert (=> b!4514831 m!5257859))

(assert (=> b!4514832 m!5257865))

(assert (=> b!4514832 m!5257865))

(assert (=> b!4514832 m!5257867))

(assert (=> b!4514576 d!1389337))

(declare-fun bs!849831 () Bool)

(declare-fun d!1389349 () Bool)

(assert (= bs!849831 (and d!1389349 start!446664)))

(declare-fun lambda!171510 () Int)

(assert (=> bs!849831 (= lambda!171510 lambda!171413)))

(declare-fun bs!849832 () Bool)

(assert (= bs!849832 (and d!1389349 d!1389325)))

(assert (=> bs!849832 (= lambda!171510 lambda!171497)))

(declare-fun bs!849833 () Bool)

(assert (= bs!849833 (and d!1389349 d!1389333)))

(assert (=> bs!849833 (= lambda!171510 lambda!171504)))

(declare-fun lt!1693053 () ListMap!3577)

(assert (=> d!1389349 (invariantList!1011 (toList!4315 lt!1693053))))

(declare-fun e!2812724 () ListMap!3577)

(assert (=> d!1389349 (= lt!1693053 e!2812724)))

(declare-fun c!770190 () Bool)

(assert (=> d!1389349 (= c!770190 ((_ is Cons!50629) (t!357715 (toList!4316 lm!1477))))))

(assert (=> d!1389349 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171510)))

(assert (=> d!1389349 (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693053)))

(declare-fun b!4514841 () Bool)

(assert (=> b!4514841 (= e!2812724 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4514842 () Bool)

(assert (=> b!4514842 (= e!2812724 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389349 c!770190) b!4514841))

(assert (= (and d!1389349 (not c!770190)) b!4514842))

(declare-fun m!5257875 () Bool)

(assert (=> d!1389349 m!5257875))

(declare-fun m!5257877 () Bool)

(assert (=> d!1389349 m!5257877))

(declare-fun m!5257879 () Bool)

(assert (=> b!4514841 m!5257879))

(assert (=> b!4514841 m!5257879))

(declare-fun m!5257881 () Bool)

(assert (=> b!4514841 m!5257881))

(assert (=> b!4514576 d!1389349))

(declare-fun bs!849863 () Bool)

(declare-fun d!1389351 () Bool)

(assert (= bs!849863 (and d!1389351 start!446664)))

(declare-fun lambda!171520 () Int)

(assert (=> bs!849863 (= lambda!171520 lambda!171413)))

(declare-fun bs!849864 () Bool)

(assert (= bs!849864 (and d!1389351 d!1389325)))

(assert (=> bs!849864 (= lambda!171520 lambda!171497)))

(declare-fun bs!849865 () Bool)

(assert (= bs!849865 (and d!1389351 d!1389333)))

(assert (=> bs!849865 (= lambda!171520 lambda!171504)))

(declare-fun bs!849866 () Bool)

(assert (= bs!849866 (and d!1389351 d!1389349)))

(assert (=> bs!849866 (= lambda!171520 lambda!171510)))

(assert (=> d!1389351 (contains!13343 (extractMap!1210 (toList!4316 lt!1692730)) key!3287)))

(declare-fun lt!1693080 () Unit!94076)

(declare-fun choose!29415 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> d!1389351 (= lt!1693080 (choose!29415 lt!1692730 key!3287 hashF!1107))))

(assert (=> d!1389351 (forall!10245 (toList!4316 lt!1692730) lambda!171520)))

(assert (=> d!1389351 (= (lemmaListContainsThenExtractedMapContains!124 lt!1692730 key!3287 hashF!1107) lt!1693080)))

(declare-fun bs!849867 () Bool)

(assert (= bs!849867 d!1389351))

(assert (=> bs!849867 m!5257357))

(assert (=> bs!849867 m!5257357))

(declare-fun m!5257929 () Bool)

(assert (=> bs!849867 m!5257929))

(declare-fun m!5257931 () Bool)

(assert (=> bs!849867 m!5257931))

(declare-fun m!5257933 () Bool)

(assert (=> bs!849867 m!5257933))

(assert (=> b!4514576 d!1389351))

(declare-fun b!4514854 () Bool)

(declare-fun e!2812739 () Bool)

(assert (=> b!4514854 (= e!2812739 (contains!13345 (keys!17582 lt!1692728) key!3287))))

(declare-fun d!1389365 () Bool)

(declare-fun e!2812734 () Bool)

(assert (=> d!1389365 e!2812734))

(declare-fun res!1878540 () Bool)

(assert (=> d!1389365 (=> res!1878540 e!2812734)))

(declare-fun e!2812737 () Bool)

(assert (=> d!1389365 (= res!1878540 e!2812737)))

(declare-fun res!1878541 () Bool)

(assert (=> d!1389365 (=> (not res!1878541) (not e!2812737))))

(declare-fun lt!1693081 () Bool)

(assert (=> d!1389365 (= res!1878541 (not lt!1693081))))

(declare-fun lt!1693088 () Bool)

(assert (=> d!1389365 (= lt!1693081 lt!1693088)))

(declare-fun lt!1693086 () Unit!94076)

(declare-fun e!2812736 () Unit!94076)

(assert (=> d!1389365 (= lt!1693086 e!2812736)))

(declare-fun c!770193 () Bool)

(assert (=> d!1389365 (= c!770193 lt!1693088)))

(assert (=> d!1389365 (= lt!1693088 (containsKey!1766 (toList!4315 lt!1692728) key!3287))))

(assert (=> d!1389365 (= (contains!13343 lt!1692728 key!3287) lt!1693081)))

(declare-fun b!4514855 () Bool)

(declare-fun e!2812735 () List!50755)

(assert (=> b!4514855 (= e!2812735 (keys!17582 lt!1692728))))

(declare-fun b!4514856 () Bool)

(assert (=> b!4514856 (= e!2812735 (getKeysList!459 (toList!4315 lt!1692728)))))

(declare-fun b!4514857 () Bool)

(declare-fun e!2812738 () Unit!94076)

(declare-fun Unit!94111 () Unit!94076)

(assert (=> b!4514857 (= e!2812738 Unit!94111)))

(declare-fun b!4514858 () Bool)

(declare-fun lt!1693082 () Unit!94076)

(assert (=> b!4514858 (= e!2812736 lt!1693082)))

(declare-fun lt!1693084 () Unit!94076)

(assert (=> b!4514858 (= lt!1693084 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692728) key!3287))))

(assert (=> b!4514858 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))))

(declare-fun lt!1693087 () Unit!94076)

(assert (=> b!4514858 (= lt!1693087 lt!1693084)))

(assert (=> b!4514858 (= lt!1693082 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692728) key!3287))))

(declare-fun call!314425 () Bool)

(assert (=> b!4514858 call!314425))

(declare-fun b!4514859 () Bool)

(assert (=> b!4514859 (= e!2812737 (not (contains!13345 (keys!17582 lt!1692728) key!3287)))))

(declare-fun b!4514860 () Bool)

(assert (=> b!4514860 (= e!2812734 e!2812739)))

(declare-fun res!1878542 () Bool)

(assert (=> b!4514860 (=> (not res!1878542) (not e!2812739))))

(assert (=> b!4514860 (= res!1878542 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287)))))

(declare-fun b!4514861 () Bool)

(assert (=> b!4514861 (= e!2812736 e!2812738)))

(declare-fun c!770194 () Bool)

(assert (=> b!4514861 (= c!770194 call!314425)))

(declare-fun b!4514862 () Bool)

(assert (=> b!4514862 false))

(declare-fun lt!1693085 () Unit!94076)

(declare-fun lt!1693083 () Unit!94076)

(assert (=> b!4514862 (= lt!1693085 lt!1693083)))

(assert (=> b!4514862 (containsKey!1766 (toList!4315 lt!1692728) key!3287)))

(assert (=> b!4514862 (= lt!1693083 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692728) key!3287))))

(declare-fun Unit!94112 () Unit!94076)

(assert (=> b!4514862 (= e!2812738 Unit!94112)))

(declare-fun bm!314420 () Bool)

(assert (=> bm!314420 (= call!314425 (contains!13345 e!2812735 key!3287))))

(declare-fun c!770192 () Bool)

(assert (=> bm!314420 (= c!770192 c!770193)))

(assert (= (and d!1389365 c!770193) b!4514858))

(assert (= (and d!1389365 (not c!770193)) b!4514861))

(assert (= (and b!4514861 c!770194) b!4514862))

(assert (= (and b!4514861 (not c!770194)) b!4514857))

(assert (= (or b!4514858 b!4514861) bm!314420))

(assert (= (and bm!314420 c!770192) b!4514856))

(assert (= (and bm!314420 (not c!770192)) b!4514855))

(assert (= (and d!1389365 res!1878541) b!4514859))

(assert (= (and d!1389365 (not res!1878540)) b!4514860))

(assert (= (and b!4514860 res!1878542) b!4514854))

(declare-fun m!5257935 () Bool)

(assert (=> bm!314420 m!5257935))

(declare-fun m!5257937 () Bool)

(assert (=> b!4514855 m!5257937))

(assert (=> b!4514854 m!5257937))

(assert (=> b!4514854 m!5257937))

(declare-fun m!5257939 () Bool)

(assert (=> b!4514854 m!5257939))

(declare-fun m!5257941 () Bool)

(assert (=> d!1389365 m!5257941))

(declare-fun m!5257943 () Bool)

(assert (=> b!4514858 m!5257943))

(declare-fun m!5257945 () Bool)

(assert (=> b!4514858 m!5257945))

(assert (=> b!4514858 m!5257945))

(declare-fun m!5257947 () Bool)

(assert (=> b!4514858 m!5257947))

(declare-fun m!5257949 () Bool)

(assert (=> b!4514858 m!5257949))

(assert (=> b!4514862 m!5257941))

(declare-fun m!5257951 () Bool)

(assert (=> b!4514862 m!5257951))

(declare-fun m!5257953 () Bool)

(assert (=> b!4514856 m!5257953))

(assert (=> b!4514859 m!5257937))

(assert (=> b!4514859 m!5257937))

(assert (=> b!4514859 m!5257939))

(assert (=> b!4514860 m!5257945))

(assert (=> b!4514860 m!5257945))

(assert (=> b!4514860 m!5257947))

(assert (=> b!4514576 d!1389365))

(declare-fun bs!849868 () Bool)

(declare-fun d!1389367 () Bool)

(assert (= bs!849868 (and d!1389367 d!1389333)))

(declare-fun lambda!171521 () Int)

(assert (=> bs!849868 (= lambda!171521 lambda!171504)))

(declare-fun bs!849869 () Bool)

(assert (= bs!849869 (and d!1389367 start!446664)))

(assert (=> bs!849869 (= lambda!171521 lambda!171413)))

(declare-fun bs!849870 () Bool)

(assert (= bs!849870 (and d!1389367 d!1389351)))

(assert (=> bs!849870 (= lambda!171521 lambda!171520)))

(declare-fun bs!849871 () Bool)

(assert (= bs!849871 (and d!1389367 d!1389325)))

(assert (=> bs!849871 (= lambda!171521 lambda!171497)))

(declare-fun bs!849872 () Bool)

(assert (= bs!849872 (and d!1389367 d!1389349)))

(assert (=> bs!849872 (= lambda!171521 lambda!171510)))

(declare-fun lt!1693089 () ListMap!3577)

(assert (=> d!1389367 (invariantList!1011 (toList!4315 lt!1693089))))

(declare-fun e!2812740 () ListMap!3577)

(assert (=> d!1389367 (= lt!1693089 e!2812740)))

(declare-fun c!770195 () Bool)

(assert (=> d!1389367 (= c!770195 ((_ is Cons!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389367 (forall!10245 (toList!4316 lt!1692730) lambda!171521)))

(assert (=> d!1389367 (= (extractMap!1210 (toList!4316 lt!1692730)) lt!1693089)))

(declare-fun b!4514863 () Bool)

(assert (=> b!4514863 (= e!2812740 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692730))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))))))

(declare-fun b!4514864 () Bool)

(assert (=> b!4514864 (= e!2812740 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389367 c!770195) b!4514863))

(assert (= (and d!1389367 (not c!770195)) b!4514864))

(declare-fun m!5257955 () Bool)

(assert (=> d!1389367 m!5257955))

(declare-fun m!5257957 () Bool)

(assert (=> d!1389367 m!5257957))

(declare-fun m!5257959 () Bool)

(assert (=> b!4514863 m!5257959))

(assert (=> b!4514863 m!5257959))

(declare-fun m!5257961 () Bool)

(assert (=> b!4514863 m!5257961))

(assert (=> b!4514576 d!1389367))

(declare-fun bs!849873 () Bool)

(declare-fun d!1389369 () Bool)

(assert (= bs!849873 (and d!1389369 d!1389333)))

(declare-fun lambda!171524 () Int)

(assert (=> bs!849873 (not (= lambda!171524 lambda!171504))))

(declare-fun bs!849874 () Bool)

(assert (= bs!849874 (and d!1389369 start!446664)))

(assert (=> bs!849874 (not (= lambda!171524 lambda!171413))))

(declare-fun bs!849875 () Bool)

(assert (= bs!849875 (and d!1389369 d!1389367)))

(assert (=> bs!849875 (not (= lambda!171524 lambda!171521))))

(declare-fun bs!849876 () Bool)

(assert (= bs!849876 (and d!1389369 d!1389351)))

(assert (=> bs!849876 (not (= lambda!171524 lambda!171520))))

(declare-fun bs!849877 () Bool)

(assert (= bs!849877 (and d!1389369 d!1389325)))

(assert (=> bs!849877 (not (= lambda!171524 lambda!171497))))

(declare-fun bs!849878 () Bool)

(assert (= bs!849878 (and d!1389369 d!1389349)))

(assert (=> bs!849878 (not (= lambda!171524 lambda!171510))))

(assert (=> d!1389369 true))

(assert (=> d!1389369 (= (allKeysSameHashInMap!1261 lm!1477 hashF!1107) (forall!10245 (toList!4316 lm!1477) lambda!171524))))

(declare-fun bs!849879 () Bool)

(assert (= bs!849879 d!1389369))

(declare-fun m!5257963 () Bool)

(assert (=> bs!849879 m!5257963))

(assert (=> b!4514575 d!1389369))

(declare-fun bs!849880 () Bool)

(declare-fun d!1389371 () Bool)

(assert (= bs!849880 (and d!1389371 d!1389333)))

(declare-fun lambda!171525 () Int)

(assert (=> bs!849880 (= lambda!171525 lambda!171504)))

(declare-fun bs!849881 () Bool)

(assert (= bs!849881 (and d!1389371 start!446664)))

(assert (=> bs!849881 (= lambda!171525 lambda!171413)))

(declare-fun bs!849882 () Bool)

(assert (= bs!849882 (and d!1389371 d!1389367)))

(assert (=> bs!849882 (= lambda!171525 lambda!171521)))

(declare-fun bs!849883 () Bool)

(assert (= bs!849883 (and d!1389371 d!1389351)))

(assert (=> bs!849883 (= lambda!171525 lambda!171520)))

(declare-fun bs!849884 () Bool)

(assert (= bs!849884 (and d!1389371 d!1389325)))

(assert (=> bs!849884 (= lambda!171525 lambda!171497)))

(declare-fun bs!849885 () Bool)

(assert (= bs!849885 (and d!1389371 d!1389349)))

(assert (=> bs!849885 (= lambda!171525 lambda!171510)))

(declare-fun bs!849886 () Bool)

(assert (= bs!849886 (and d!1389371 d!1389369)))

(assert (=> bs!849886 (not (= lambda!171525 lambda!171524))))

(declare-fun lt!1693090 () ListMap!3577)

(assert (=> d!1389371 (invariantList!1011 (toList!4315 lt!1693090))))

(declare-fun e!2812741 () ListMap!3577)

(assert (=> d!1389371 (= lt!1693090 e!2812741)))

(declare-fun c!770196 () Bool)

(assert (=> d!1389371 (= c!770196 ((_ is Cons!50629) (toList!4316 lt!1692737)))))

(assert (=> d!1389371 (forall!10245 (toList!4316 lt!1692737) lambda!171525)))

(assert (=> d!1389371 (= (extractMap!1210 (toList!4316 lt!1692737)) lt!1693090)))

(declare-fun b!4514867 () Bool)

(assert (=> b!4514867 (= e!2812741 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))))))

(declare-fun b!4514868 () Bool)

(assert (=> b!4514868 (= e!2812741 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389371 c!770196) b!4514867))

(assert (= (and d!1389371 (not c!770196)) b!4514868))

(declare-fun m!5257965 () Bool)

(assert (=> d!1389371 m!5257965))

(declare-fun m!5257967 () Bool)

(assert (=> d!1389371 m!5257967))

(declare-fun m!5257969 () Bool)

(assert (=> b!4514867 m!5257969))

(assert (=> b!4514867 m!5257969))

(declare-fun m!5257971 () Bool)

(assert (=> b!4514867 m!5257971))

(assert (=> b!4514554 d!1389371))

(declare-fun d!1389373 () Bool)

(declare-fun e!2812742 () Bool)

(assert (=> d!1389373 e!2812742))

(declare-fun res!1878543 () Bool)

(assert (=> d!1389373 (=> (not res!1878543) (not e!2812742))))

(declare-fun lt!1693091 () ListLongMap!2947)

(assert (=> d!1389373 (= res!1878543 (contains!13342 lt!1693091 (_1!28820 lt!1692742)))))

(declare-fun lt!1693093 () List!50753)

(assert (=> d!1389373 (= lt!1693091 (ListLongMap!2948 lt!1693093))))

(declare-fun lt!1693094 () Unit!94076)

(declare-fun lt!1693092 () Unit!94076)

(assert (=> d!1389373 (= lt!1693094 lt!1693092)))

(assert (=> d!1389373 (= (getValueByKey!1079 lt!1693093 (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742)))))

(assert (=> d!1389373 (= lt!1693092 (lemmaContainsTupThenGetReturnValue!666 lt!1693093 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(assert (=> d!1389373 (= lt!1693093 (insertStrictlySorted!402 (toList!4316 lt!1692730) (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(assert (=> d!1389373 (= (+!1526 lt!1692730 lt!1692742) lt!1693091)))

(declare-fun b!4514869 () Bool)

(declare-fun res!1878544 () Bool)

(assert (=> b!4514869 (=> (not res!1878544) (not e!2812742))))

(assert (=> b!4514869 (= res!1878544 (= (getValueByKey!1079 (toList!4316 lt!1693091) (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742))))))

(declare-fun b!4514870 () Bool)

(assert (=> b!4514870 (= e!2812742 (contains!13341 (toList!4316 lt!1693091) lt!1692742))))

(assert (= (and d!1389373 res!1878543) b!4514869))

(assert (= (and b!4514869 res!1878544) b!4514870))

(declare-fun m!5257973 () Bool)

(assert (=> d!1389373 m!5257973))

(declare-fun m!5257975 () Bool)

(assert (=> d!1389373 m!5257975))

(declare-fun m!5257977 () Bool)

(assert (=> d!1389373 m!5257977))

(declare-fun m!5257979 () Bool)

(assert (=> d!1389373 m!5257979))

(declare-fun m!5257981 () Bool)

(assert (=> b!4514869 m!5257981))

(declare-fun m!5257983 () Bool)

(assert (=> b!4514870 m!5257983))

(assert (=> b!4514554 d!1389373))

(declare-fun d!1389375 () Bool)

(declare-fun e!2812743 () Bool)

(assert (=> d!1389375 e!2812743))

(declare-fun res!1878545 () Bool)

(assert (=> d!1389375 (=> (not res!1878545) (not e!2812743))))

(declare-fun lt!1693095 () ListLongMap!2947)

(assert (=> d!1389375 (= res!1878545 (contains!13342 lt!1693095 (_1!28820 lt!1692726)))))

(declare-fun lt!1693097 () List!50753)

(assert (=> d!1389375 (= lt!1693095 (ListLongMap!2948 lt!1693097))))

(declare-fun lt!1693098 () Unit!94076)

(declare-fun lt!1693096 () Unit!94076)

(assert (=> d!1389375 (= lt!1693098 lt!1693096)))

(assert (=> d!1389375 (= (getValueByKey!1079 lt!1693097 (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726)))))

(assert (=> d!1389375 (= lt!1693096 (lemmaContainsTupThenGetReturnValue!666 lt!1693097 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(assert (=> d!1389375 (= lt!1693097 (insertStrictlySorted!402 (toList!4316 lt!1692730) (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(assert (=> d!1389375 (= (+!1526 lt!1692730 lt!1692726) lt!1693095)))

(declare-fun b!4514871 () Bool)

(declare-fun res!1878546 () Bool)

(assert (=> b!4514871 (=> (not res!1878546) (not e!2812743))))

(assert (=> b!4514871 (= res!1878546 (= (getValueByKey!1079 (toList!4316 lt!1693095) (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726))))))

(declare-fun b!4514872 () Bool)

(assert (=> b!4514872 (= e!2812743 (contains!13341 (toList!4316 lt!1693095) lt!1692726))))

(assert (= (and d!1389375 res!1878545) b!4514871))

(assert (= (and b!4514871 res!1878546) b!4514872))

(declare-fun m!5257985 () Bool)

(assert (=> d!1389375 m!5257985))

(declare-fun m!5257987 () Bool)

(assert (=> d!1389375 m!5257987))

(declare-fun m!5257989 () Bool)

(assert (=> d!1389375 m!5257989))

(declare-fun m!5257991 () Bool)

(assert (=> d!1389375 m!5257991))

(declare-fun m!5257993 () Bool)

(assert (=> b!4514871 m!5257993))

(declare-fun m!5257995 () Bool)

(assert (=> b!4514872 m!5257995))

(assert (=> b!4514554 d!1389375))

(declare-fun d!1389377 () Bool)

(declare-fun e!2812752 () Bool)

(assert (=> d!1389377 e!2812752))

(declare-fun res!1878555 () Bool)

(assert (=> d!1389377 (=> (not res!1878555) (not e!2812752))))

(declare-fun lt!1693104 () ListMap!3577)

(assert (=> d!1389377 (= res!1878555 (not (contains!13343 lt!1693104 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!135 (List!50752 K!12025) List!50752)

(assert (=> d!1389377 (= lt!1693104 (ListMap!3578 (removePresrvNoDuplicatedKeys!135 (toList!4315 lt!1692728) key!3287)))))

(assert (=> d!1389377 (= (-!380 lt!1692728 key!3287) lt!1693104)))

(declare-fun b!4514883 () Bool)

(declare-fun content!8341 (List!50755) (InoxSet K!12025))

(assert (=> b!4514883 (= e!2812752 (= ((_ map and) (content!8341 (keys!17582 lt!1692728)) ((_ map not) (store ((as const (Array K!12025 Bool)) false) key!3287 true))) (content!8341 (keys!17582 lt!1693104))))))

(assert (= (and d!1389377 res!1878555) b!4514883))

(declare-fun m!5258005 () Bool)

(assert (=> d!1389377 m!5258005))

(declare-fun m!5258007 () Bool)

(assert (=> d!1389377 m!5258007))

(declare-fun m!5258009 () Bool)

(assert (=> b!4514883 m!5258009))

(declare-fun m!5258011 () Bool)

(assert (=> b!4514883 m!5258011))

(assert (=> b!4514883 m!5257937))

(assert (=> b!4514883 m!5257937))

(declare-fun m!5258013 () Bool)

(assert (=> b!4514883 m!5258013))

(assert (=> b!4514883 m!5258009))

(declare-fun m!5258015 () Bool)

(assert (=> b!4514883 m!5258015))

(assert (=> b!4514554 d!1389377))

(declare-fun bs!849904 () Bool)

(declare-fun d!1389385 () Bool)

(assert (= bs!849904 (and d!1389385 d!1389333)))

(declare-fun lambda!171531 () Int)

(assert (=> bs!849904 (= lambda!171531 lambda!171504)))

(declare-fun bs!849905 () Bool)

(assert (= bs!849905 (and d!1389385 start!446664)))

(assert (=> bs!849905 (= lambda!171531 lambda!171413)))

(declare-fun bs!849906 () Bool)

(assert (= bs!849906 (and d!1389385 d!1389367)))

(assert (=> bs!849906 (= lambda!171531 lambda!171521)))

(declare-fun bs!849907 () Bool)

(assert (= bs!849907 (and d!1389385 d!1389351)))

(assert (=> bs!849907 (= lambda!171531 lambda!171520)))

(declare-fun bs!849908 () Bool)

(assert (= bs!849908 (and d!1389385 d!1389325)))

(assert (=> bs!849908 (= lambda!171531 lambda!171497)))

(declare-fun bs!849909 () Bool)

(assert (= bs!849909 (and d!1389385 d!1389349)))

(assert (=> bs!849909 (= lambda!171531 lambda!171510)))

(declare-fun bs!849910 () Bool)

(assert (= bs!849910 (and d!1389385 d!1389371)))

(assert (=> bs!849910 (= lambda!171531 lambda!171525)))

(declare-fun bs!849911 () Bool)

(assert (= bs!849911 (and d!1389385 d!1389369)))

(assert (=> bs!849911 (not (= lambda!171531 lambda!171524))))

(assert (=> d!1389385 (eq!611 (extractMap!1210 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))) (-!380 (extractMap!1210 (toList!4316 lt!1692730)) key!3287))))

(declare-fun lt!1693108 () Unit!94076)

(declare-fun choose!29417 (ListLongMap!2947 (_ BitVec 64) List!50752 K!12025 Hashable!5549) Unit!94076)

(assert (=> d!1389385 (= lt!1693108 (choose!29417 lt!1692730 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1389385 (forall!10245 (toList!4316 lt!1692730) lambda!171531)))

(assert (=> d!1389385 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!139 lt!1692730 hash!344 newBucket!178 key!3287 hashF!1107) lt!1693108)))

(declare-fun bs!849912 () Bool)

(assert (= bs!849912 d!1389385))

(declare-fun m!5258027 () Bool)

(assert (=> bs!849912 m!5258027))

(assert (=> bs!849912 m!5257357))

(declare-fun m!5258029 () Bool)

(assert (=> bs!849912 m!5258029))

(declare-fun m!5258031 () Bool)

(assert (=> bs!849912 m!5258031))

(declare-fun m!5258033 () Bool)

(assert (=> bs!849912 m!5258033))

(assert (=> bs!849912 m!5258029))

(declare-fun m!5258035 () Bool)

(assert (=> bs!849912 m!5258035))

(assert (=> bs!849912 m!5257357))

(declare-fun m!5258037 () Bool)

(assert (=> bs!849912 m!5258037))

(assert (=> bs!849912 m!5258033))

(assert (=> b!4514554 d!1389385))

(declare-fun d!1389393 () Bool)

(declare-fun head!9402 (List!50753) tuple2!51052)

(assert (=> d!1389393 (= (head!9400 lm!1477) (head!9402 (toList!4316 lm!1477)))))

(declare-fun bs!849913 () Bool)

(assert (= bs!849913 d!1389393))

(declare-fun m!5258039 () Bool)

(assert (=> bs!849913 m!5258039))

(assert (=> b!4514554 d!1389393))

(declare-fun d!1389395 () Bool)

(assert (=> d!1389395 (= (eq!611 lt!1692734 lt!1692722) (= (content!8339 (toList!4315 lt!1692734)) (content!8339 (toList!4315 lt!1692722))))))

(declare-fun bs!849914 () Bool)

(assert (= bs!849914 d!1389395))

(declare-fun m!5258041 () Bool)

(assert (=> bs!849914 m!5258041))

(declare-fun m!5258043 () Bool)

(assert (=> bs!849914 m!5258043))

(assert (=> b!4514554 d!1389395))

(declare-fun bs!849915 () Bool)

(declare-fun d!1389397 () Bool)

(assert (= bs!849915 (and d!1389397 d!1389333)))

(declare-fun lambda!171532 () Int)

(assert (=> bs!849915 (= lambda!171532 lambda!171504)))

(declare-fun bs!849916 () Bool)

(assert (= bs!849916 (and d!1389397 start!446664)))

(assert (=> bs!849916 (= lambda!171532 lambda!171413)))

(declare-fun bs!849917 () Bool)

(assert (= bs!849917 (and d!1389397 d!1389367)))

(assert (=> bs!849917 (= lambda!171532 lambda!171521)))

(declare-fun bs!849918 () Bool)

(assert (= bs!849918 (and d!1389397 d!1389351)))

(assert (=> bs!849918 (= lambda!171532 lambda!171520)))

(declare-fun bs!849919 () Bool)

(assert (= bs!849919 (and d!1389397 d!1389325)))

(assert (=> bs!849919 (= lambda!171532 lambda!171497)))

(declare-fun bs!849920 () Bool)

(assert (= bs!849920 (and d!1389397 d!1389349)))

(assert (=> bs!849920 (= lambda!171532 lambda!171510)))

(declare-fun bs!849921 () Bool)

(assert (= bs!849921 (and d!1389397 d!1389385)))

(assert (=> bs!849921 (= lambda!171532 lambda!171531)))

(declare-fun bs!849922 () Bool)

(assert (= bs!849922 (and d!1389397 d!1389371)))

(assert (=> bs!849922 (= lambda!171532 lambda!171525)))

(declare-fun bs!849923 () Bool)

(assert (= bs!849923 (and d!1389397 d!1389369)))

(assert (=> bs!849923 (not (= lambda!171532 lambda!171524))))

(declare-fun lt!1693109 () ListMap!3577)

(assert (=> d!1389397 (invariantList!1011 (toList!4315 lt!1693109))))

(declare-fun e!2812761 () ListMap!3577)

(assert (=> d!1389397 (= lt!1693109 e!2812761)))

(declare-fun c!770197 () Bool)

(assert (=> d!1389397 (= c!770197 ((_ is Cons!50629) (toList!4316 (+!1526 lt!1692730 lt!1692742))))))

(assert (=> d!1389397 (forall!10245 (toList!4316 (+!1526 lt!1692730 lt!1692742)) lambda!171532)))

(assert (=> d!1389397 (= (extractMap!1210 (toList!4316 (+!1526 lt!1692730 lt!1692742))) lt!1693109)))

(declare-fun b!4514896 () Bool)

(assert (=> b!4514896 (= e!2812761 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))

(declare-fun b!4514897 () Bool)

(assert (=> b!4514897 (= e!2812761 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389397 c!770197) b!4514896))

(assert (= (and d!1389397 (not c!770197)) b!4514897))

(declare-fun m!5258045 () Bool)

(assert (=> d!1389397 m!5258045))

(declare-fun m!5258047 () Bool)

(assert (=> d!1389397 m!5258047))

(declare-fun m!5258049 () Bool)

(assert (=> b!4514896 m!5258049))

(assert (=> b!4514896 m!5258049))

(declare-fun m!5258051 () Bool)

(assert (=> b!4514896 m!5258051))

(assert (=> b!4514554 d!1389397))

(declare-fun d!1389399 () Bool)

(assert (=> d!1389399 (= (eq!611 lt!1692727 lt!1692724) (= (content!8339 (toList!4315 lt!1692727)) (content!8339 (toList!4315 lt!1692724))))))

(declare-fun bs!849924 () Bool)

(assert (= bs!849924 d!1389399))

(declare-fun m!5258053 () Bool)

(assert (=> bs!849924 m!5258053))

(declare-fun m!5258055 () Bool)

(assert (=> bs!849924 m!5258055))

(assert (=> b!4514554 d!1389399))

(declare-fun d!1389401 () Bool)

(assert (=> d!1389401 (= (head!9400 lt!1692725) (head!9402 (toList!4316 lt!1692725)))))

(declare-fun bs!849925 () Bool)

(assert (= bs!849925 d!1389401))

(declare-fun m!5258057 () Bool)

(assert (=> bs!849925 m!5258057))

(assert (=> b!4514577 d!1389401))

(declare-fun d!1389403 () Bool)

(assert (=> d!1389403 (contains!13341 (toList!4316 lm!1477) (tuple2!51053 hash!344 lt!1692723))))

(declare-fun lt!1693112 () Unit!94076)

(declare-fun choose!29419 (List!50753 (_ BitVec 64) List!50752) Unit!94076)

(assert (=> d!1389403 (= lt!1693112 (choose!29419 (toList!4316 lm!1477) hash!344 lt!1692723))))

(declare-fun e!2812764 () Bool)

(assert (=> d!1389403 e!2812764))

(declare-fun res!1878560 () Bool)

(assert (=> d!1389403 (=> (not res!1878560) (not e!2812764))))

(assert (=> d!1389403 (= res!1878560 (isStrictlySorted!424 (toList!4316 lm!1477)))))

(assert (=> d!1389403 (= (lemmaGetValueByKeyImpliesContainsTuple!666 (toList!4316 lm!1477) hash!344 lt!1692723) lt!1693112)))

(declare-fun b!4514900 () Bool)

(assert (=> b!4514900 (= e!2812764 (= (getValueByKey!1079 (toList!4316 lm!1477) hash!344) (Some!11098 lt!1692723)))))

(assert (= (and d!1389403 res!1878560) b!4514900))

(declare-fun m!5258059 () Bool)

(assert (=> d!1389403 m!5258059))

(declare-fun m!5258061 () Bool)

(assert (=> d!1389403 m!5258061))

(assert (=> d!1389403 m!5257583))

(declare-fun m!5258063 () Bool)

(assert (=> b!4514900 m!5258063))

(assert (=> b!4514556 d!1389403))

(declare-fun bs!849926 () Bool)

(declare-fun d!1389405 () Bool)

(assert (= bs!849926 (and d!1389405 d!1389333)))

(declare-fun lambda!171535 () Int)

(assert (=> bs!849926 (= lambda!171535 lambda!171504)))

(declare-fun bs!849927 () Bool)

(assert (= bs!849927 (and d!1389405 start!446664)))

(assert (=> bs!849927 (= lambda!171535 lambda!171413)))

(declare-fun bs!849928 () Bool)

(assert (= bs!849928 (and d!1389405 d!1389351)))

(assert (=> bs!849928 (= lambda!171535 lambda!171520)))

(declare-fun bs!849929 () Bool)

(assert (= bs!849929 (and d!1389405 d!1389325)))

(assert (=> bs!849929 (= lambda!171535 lambda!171497)))

(declare-fun bs!849930 () Bool)

(assert (= bs!849930 (and d!1389405 d!1389349)))

(assert (=> bs!849930 (= lambda!171535 lambda!171510)))

(declare-fun bs!849931 () Bool)

(assert (= bs!849931 (and d!1389405 d!1389385)))

(assert (=> bs!849931 (= lambda!171535 lambda!171531)))

(declare-fun bs!849932 () Bool)

(assert (= bs!849932 (and d!1389405 d!1389371)))

(assert (=> bs!849932 (= lambda!171535 lambda!171525)))

(declare-fun bs!849933 () Bool)

(assert (= bs!849933 (and d!1389405 d!1389369)))

(assert (=> bs!849933 (not (= lambda!171535 lambda!171524))))

(declare-fun bs!849934 () Bool)

(assert (= bs!849934 (and d!1389405 d!1389397)))

(assert (=> bs!849934 (= lambda!171535 lambda!171532)))

(declare-fun bs!849935 () Bool)

(assert (= bs!849935 (and d!1389405 d!1389367)))

(assert (=> bs!849935 (= lambda!171535 lambda!171521)))

(assert (=> d!1389405 (contains!13342 lm!1477 (hash!2783 hashF!1107 key!3287))))

(declare-fun lt!1693115 () Unit!94076)

(declare-fun choose!29420 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> d!1389405 (= lt!1693115 (choose!29420 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1389405 (forall!10245 (toList!4316 lm!1477) lambda!171535)))

(assert (=> d!1389405 (= (lemmaInGenMapThenLongMapContainsHash!228 lm!1477 key!3287 hashF!1107) lt!1693115)))

(declare-fun bs!849936 () Bool)

(assert (= bs!849936 d!1389405))

(assert (=> bs!849936 m!5257417))

(assert (=> bs!849936 m!5257417))

(declare-fun m!5258065 () Bool)

(assert (=> bs!849936 m!5258065))

(declare-fun m!5258067 () Bool)

(assert (=> bs!849936 m!5258067))

(declare-fun m!5258069 () Bool)

(assert (=> bs!849936 m!5258069))

(assert (=> b!4514556 d!1389405))

(declare-fun d!1389407 () Bool)

(assert (=> d!1389407 (= (apply!11891 lm!1477 hash!344) (get!16572 (getValueByKey!1079 (toList!4316 lm!1477) hash!344)))))

(declare-fun bs!849937 () Bool)

(assert (= bs!849937 d!1389407))

(assert (=> bs!849937 m!5258063))

(assert (=> bs!849937 m!5258063))

(declare-fun m!5258071 () Bool)

(assert (=> bs!849937 m!5258071))

(assert (=> b!4514556 d!1389407))

(declare-fun b!4514909 () Bool)

(declare-fun e!2812770 () List!50752)

(assert (=> b!4514909 (= e!2812770 (t!357714 lt!1692723))))

(declare-fun b!4514911 () Bool)

(declare-fun e!2812769 () List!50752)

(assert (=> b!4514911 (= e!2812769 (Cons!50628 (h!56475 lt!1692723) (removePairForKey!781 (t!357714 lt!1692723) key!3287)))))

(declare-fun b!4514912 () Bool)

(assert (=> b!4514912 (= e!2812769 Nil!50628)))

(declare-fun d!1389409 () Bool)

(declare-fun lt!1693118 () List!50752)

(assert (=> d!1389409 (not (containsKey!1762 lt!1693118 key!3287))))

(assert (=> d!1389409 (= lt!1693118 e!2812770)))

(declare-fun c!770203 () Bool)

(assert (=> d!1389409 (= c!770203 (and ((_ is Cons!50628) lt!1692723) (= (_1!28819 (h!56475 lt!1692723)) key!3287)))))

(assert (=> d!1389409 (noDuplicateKeys!1154 lt!1692723)))

(assert (=> d!1389409 (= (removePairForKey!781 lt!1692723 key!3287) lt!1693118)))

(declare-fun b!4514910 () Bool)

(assert (=> b!4514910 (= e!2812770 e!2812769)))

(declare-fun c!770202 () Bool)

(assert (=> b!4514910 (= c!770202 ((_ is Cons!50628) lt!1692723))))

(assert (= (and d!1389409 c!770203) b!4514909))

(assert (= (and d!1389409 (not c!770203)) b!4514910))

(assert (= (and b!4514910 c!770202) b!4514911))

(assert (= (and b!4514910 (not c!770202)) b!4514912))

(declare-fun m!5258073 () Bool)

(assert (=> b!4514911 m!5258073))

(declare-fun m!5258075 () Bool)

(assert (=> d!1389409 m!5258075))

(declare-fun m!5258077 () Bool)

(assert (=> d!1389409 m!5258077))

(assert (=> b!4514556 d!1389409))

(declare-fun d!1389411 () Bool)

(declare-fun lt!1693119 () Bool)

(assert (=> d!1389411 (= lt!1693119 (select (content!8338 (toList!4316 lm!1477)) lt!1692740))))

(declare-fun e!2812772 () Bool)

(assert (=> d!1389411 (= lt!1693119 e!2812772)))

(declare-fun res!1878561 () Bool)

(assert (=> d!1389411 (=> (not res!1878561) (not e!2812772))))

(assert (=> d!1389411 (= res!1878561 ((_ is Cons!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389411 (= (contains!13341 (toList!4316 lm!1477) lt!1692740) lt!1693119)))

(declare-fun b!4514913 () Bool)

(declare-fun e!2812771 () Bool)

(assert (=> b!4514913 (= e!2812772 e!2812771)))

(declare-fun res!1878562 () Bool)

(assert (=> b!4514913 (=> res!1878562 e!2812771)))

(assert (=> b!4514913 (= res!1878562 (= (h!56476 (toList!4316 lm!1477)) lt!1692740))))

(declare-fun b!4514914 () Bool)

(assert (=> b!4514914 (= e!2812771 (contains!13341 (t!357715 (toList!4316 lm!1477)) lt!1692740))))

(assert (= (and d!1389411 res!1878561) b!4514913))

(assert (= (and b!4514913 (not res!1878562)) b!4514914))

(declare-fun m!5258079 () Bool)

(assert (=> d!1389411 m!5258079))

(declare-fun m!5258081 () Bool)

(assert (=> d!1389411 m!5258081))

(assert (=> b!4514914 m!5257345))

(assert (=> b!4514556 d!1389411))

(declare-fun d!1389413 () Bool)

(assert (=> d!1389413 (dynLambda!21150 lambda!171413 lt!1692740)))

(declare-fun lt!1693120 () Unit!94076)

(assert (=> d!1389413 (= lt!1693120 (choose!29410 (toList!4316 lm!1477) lambda!171413 lt!1692740))))

(declare-fun e!2812773 () Bool)

(assert (=> d!1389413 e!2812773))

(declare-fun res!1878563 () Bool)

(assert (=> d!1389413 (=> (not res!1878563) (not e!2812773))))

(assert (=> d!1389413 (= res!1878563 (forall!10245 (toList!4316 lm!1477) lambda!171413))))

(assert (=> d!1389413 (= (forallContained!2497 (toList!4316 lm!1477) lambda!171413 lt!1692740) lt!1693120)))

(declare-fun b!4514915 () Bool)

(assert (=> b!4514915 (= e!2812773 (contains!13341 (toList!4316 lm!1477) lt!1692740))))

(assert (= (and d!1389413 res!1878563) b!4514915))

(declare-fun b_lambda!154109 () Bool)

(assert (=> (not b_lambda!154109) (not d!1389413)))

(declare-fun m!5258083 () Bool)

(assert (=> d!1389413 m!5258083))

(declare-fun m!5258085 () Bool)

(assert (=> d!1389413 m!5258085))

(assert (=> d!1389413 m!5257325))

(assert (=> b!4514915 m!5257365))

(assert (=> b!4514556 d!1389413))

(declare-fun d!1389415 () Bool)

(declare-fun e!2812775 () Bool)

(assert (=> d!1389415 e!2812775))

(declare-fun res!1878564 () Bool)

(assert (=> d!1389415 (=> res!1878564 e!2812775)))

(declare-fun lt!1693123 () Bool)

(assert (=> d!1389415 (= res!1878564 (not lt!1693123))))

(declare-fun lt!1693122 () Bool)

(assert (=> d!1389415 (= lt!1693123 lt!1693122)))

(declare-fun lt!1693124 () Unit!94076)

(declare-fun e!2812774 () Unit!94076)

(assert (=> d!1389415 (= lt!1693124 e!2812774)))

(declare-fun c!770204 () Bool)

(assert (=> d!1389415 (= c!770204 lt!1693122)))

(assert (=> d!1389415 (= lt!1693122 (containsKey!1763 (toList!4316 lm!1477) lt!1692744))))

(assert (=> d!1389415 (= (contains!13342 lm!1477 lt!1692744) lt!1693123)))

(declare-fun b!4514916 () Bool)

(declare-fun lt!1693121 () Unit!94076)

(assert (=> b!4514916 (= e!2812774 lt!1693121)))

(assert (=> b!4514916 (= lt!1693121 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lm!1477) lt!1692744))))

(assert (=> b!4514916 (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744))))

(declare-fun b!4514917 () Bool)

(declare-fun Unit!94126 () Unit!94076)

(assert (=> b!4514917 (= e!2812774 Unit!94126)))

(declare-fun b!4514918 () Bool)

(assert (=> b!4514918 (= e!2812775 (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744)))))

(assert (= (and d!1389415 c!770204) b!4514916))

(assert (= (and d!1389415 (not c!770204)) b!4514917))

(assert (= (and d!1389415 (not res!1878564)) b!4514918))

(declare-fun m!5258087 () Bool)

(assert (=> d!1389415 m!5258087))

(declare-fun m!5258089 () Bool)

(assert (=> b!4514916 m!5258089))

(declare-fun m!5258091 () Bool)

(assert (=> b!4514916 m!5258091))

(assert (=> b!4514916 m!5258091))

(declare-fun m!5258093 () Bool)

(assert (=> b!4514916 m!5258093))

(assert (=> b!4514918 m!5258091))

(assert (=> b!4514918 m!5258091))

(assert (=> b!4514918 m!5258093))

(assert (=> b!4514556 d!1389415))

(declare-fun d!1389417 () Bool)

(assert (=> d!1389417 (= (eq!611 lt!1692724 lt!1692727) (= (content!8339 (toList!4315 lt!1692724)) (content!8339 (toList!4315 lt!1692727))))))

(declare-fun bs!849938 () Bool)

(assert (= bs!849938 d!1389417))

(assert (=> bs!849938 m!5258055))

(assert (=> bs!849938 m!5258053))

(assert (=> b!4514555 d!1389417))

(declare-fun b!4514919 () Bool)

(declare-fun e!2812781 () Bool)

(assert (=> b!4514919 (= e!2812781 (contains!13345 (keys!17582 lt!1692724) key!3287))))

(declare-fun d!1389419 () Bool)

(declare-fun e!2812776 () Bool)

(assert (=> d!1389419 e!2812776))

(declare-fun res!1878565 () Bool)

(assert (=> d!1389419 (=> res!1878565 e!2812776)))

(declare-fun e!2812779 () Bool)

(assert (=> d!1389419 (= res!1878565 e!2812779)))

(declare-fun res!1878566 () Bool)

(assert (=> d!1389419 (=> (not res!1878566) (not e!2812779))))

(declare-fun lt!1693125 () Bool)

(assert (=> d!1389419 (= res!1878566 (not lt!1693125))))

(declare-fun lt!1693132 () Bool)

(assert (=> d!1389419 (= lt!1693125 lt!1693132)))

(declare-fun lt!1693130 () Unit!94076)

(declare-fun e!2812778 () Unit!94076)

(assert (=> d!1389419 (= lt!1693130 e!2812778)))

(declare-fun c!770206 () Bool)

(assert (=> d!1389419 (= c!770206 lt!1693132)))

(assert (=> d!1389419 (= lt!1693132 (containsKey!1766 (toList!4315 lt!1692724) key!3287))))

(assert (=> d!1389419 (= (contains!13343 lt!1692724 key!3287) lt!1693125)))

(declare-fun b!4514920 () Bool)

(declare-fun e!2812777 () List!50755)

(assert (=> b!4514920 (= e!2812777 (keys!17582 lt!1692724))))

(declare-fun b!4514921 () Bool)

(assert (=> b!4514921 (= e!2812777 (getKeysList!459 (toList!4315 lt!1692724)))))

(declare-fun b!4514922 () Bool)

(declare-fun e!2812780 () Unit!94076)

(declare-fun Unit!94127 () Unit!94076)

(assert (=> b!4514922 (= e!2812780 Unit!94127)))

(declare-fun b!4514923 () Bool)

(declare-fun lt!1693126 () Unit!94076)

(assert (=> b!4514923 (= e!2812778 lt!1693126)))

(declare-fun lt!1693128 () Unit!94076)

(assert (=> b!4514923 (= lt!1693128 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692724) key!3287))))

(assert (=> b!4514923 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692724) key!3287))))

(declare-fun lt!1693131 () Unit!94076)

(assert (=> b!4514923 (= lt!1693131 lt!1693128)))

(assert (=> b!4514923 (= lt!1693126 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692724) key!3287))))

(declare-fun call!314426 () Bool)

(assert (=> b!4514923 call!314426))

(declare-fun b!4514924 () Bool)

(assert (=> b!4514924 (= e!2812779 (not (contains!13345 (keys!17582 lt!1692724) key!3287)))))

(declare-fun b!4514925 () Bool)

(assert (=> b!4514925 (= e!2812776 e!2812781)))

(declare-fun res!1878567 () Bool)

(assert (=> b!4514925 (=> (not res!1878567) (not e!2812781))))

(assert (=> b!4514925 (= res!1878567 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692724) key!3287)))))

(declare-fun b!4514926 () Bool)

(assert (=> b!4514926 (= e!2812778 e!2812780)))

(declare-fun c!770207 () Bool)

(assert (=> b!4514926 (= c!770207 call!314426)))

(declare-fun b!4514927 () Bool)

(assert (=> b!4514927 false))

(declare-fun lt!1693129 () Unit!94076)

(declare-fun lt!1693127 () Unit!94076)

(assert (=> b!4514927 (= lt!1693129 lt!1693127)))

(assert (=> b!4514927 (containsKey!1766 (toList!4315 lt!1692724) key!3287)))

(assert (=> b!4514927 (= lt!1693127 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692724) key!3287))))

(declare-fun Unit!94128 () Unit!94076)

(assert (=> b!4514927 (= e!2812780 Unit!94128)))

(declare-fun bm!314421 () Bool)

(assert (=> bm!314421 (= call!314426 (contains!13345 e!2812777 key!3287))))

(declare-fun c!770205 () Bool)

(assert (=> bm!314421 (= c!770205 c!770206)))

(assert (= (and d!1389419 c!770206) b!4514923))

(assert (= (and d!1389419 (not c!770206)) b!4514926))

(assert (= (and b!4514926 c!770207) b!4514927))

(assert (= (and b!4514926 (not c!770207)) b!4514922))

(assert (= (or b!4514923 b!4514926) bm!314421))

(assert (= (and bm!314421 c!770205) b!4514921))

(assert (= (and bm!314421 (not c!770205)) b!4514920))

(assert (= (and d!1389419 res!1878566) b!4514924))

(assert (= (and d!1389419 (not res!1878565)) b!4514925))

(assert (= (and b!4514925 res!1878567) b!4514919))

(declare-fun m!5258095 () Bool)

(assert (=> bm!314421 m!5258095))

(declare-fun m!5258097 () Bool)

(assert (=> b!4514920 m!5258097))

(assert (=> b!4514919 m!5258097))

(assert (=> b!4514919 m!5258097))

(declare-fun m!5258099 () Bool)

(assert (=> b!4514919 m!5258099))

(declare-fun m!5258101 () Bool)

(assert (=> d!1389419 m!5258101))

(declare-fun m!5258103 () Bool)

(assert (=> b!4514923 m!5258103))

(declare-fun m!5258105 () Bool)

(assert (=> b!4514923 m!5258105))

(assert (=> b!4514923 m!5258105))

(declare-fun m!5258107 () Bool)

(assert (=> b!4514923 m!5258107))

(declare-fun m!5258109 () Bool)

(assert (=> b!4514923 m!5258109))

(assert (=> b!4514927 m!5258101))

(declare-fun m!5258111 () Bool)

(assert (=> b!4514927 m!5258111))

(declare-fun m!5258113 () Bool)

(assert (=> b!4514921 m!5258113))

(assert (=> b!4514924 m!5258097))

(assert (=> b!4514924 m!5258097))

(assert (=> b!4514924 m!5258099))

(assert (=> b!4514925 m!5258105))

(assert (=> b!4514925 m!5258105))

(assert (=> b!4514925 m!5258107))

(assert (=> b!4514557 d!1389419))

(declare-fun bs!849939 () Bool)

(declare-fun d!1389421 () Bool)

(assert (= bs!849939 (and d!1389421 d!1389333)))

(declare-fun lambda!171536 () Int)

(assert (=> bs!849939 (= lambda!171536 lambda!171504)))

(declare-fun bs!849940 () Bool)

(assert (= bs!849940 (and d!1389421 start!446664)))

(assert (=> bs!849940 (= lambda!171536 lambda!171413)))

(declare-fun bs!849941 () Bool)

(assert (= bs!849941 (and d!1389421 d!1389351)))

(assert (=> bs!849941 (= lambda!171536 lambda!171520)))

(declare-fun bs!849942 () Bool)

(assert (= bs!849942 (and d!1389421 d!1389325)))

(assert (=> bs!849942 (= lambda!171536 lambda!171497)))

(declare-fun bs!849943 () Bool)

(assert (= bs!849943 (and d!1389421 d!1389349)))

(assert (=> bs!849943 (= lambda!171536 lambda!171510)))

(declare-fun bs!849944 () Bool)

(assert (= bs!849944 (and d!1389421 d!1389385)))

(assert (=> bs!849944 (= lambda!171536 lambda!171531)))

(declare-fun bs!849945 () Bool)

(assert (= bs!849945 (and d!1389421 d!1389371)))

(assert (=> bs!849945 (= lambda!171536 lambda!171525)))

(declare-fun bs!849946 () Bool)

(assert (= bs!849946 (and d!1389421 d!1389405)))

(assert (=> bs!849946 (= lambda!171536 lambda!171535)))

(declare-fun bs!849947 () Bool)

(assert (= bs!849947 (and d!1389421 d!1389369)))

(assert (=> bs!849947 (not (= lambda!171536 lambda!171524))))

(declare-fun bs!849948 () Bool)

(assert (= bs!849948 (and d!1389421 d!1389397)))

(assert (=> bs!849948 (= lambda!171536 lambda!171532)))

(declare-fun bs!849949 () Bool)

(assert (= bs!849949 (and d!1389421 d!1389367)))

(assert (=> bs!849949 (= lambda!171536 lambda!171521)))

(declare-fun lt!1693133 () ListMap!3577)

(assert (=> d!1389421 (invariantList!1011 (toList!4315 lt!1693133))))

(declare-fun e!2812782 () ListMap!3577)

(assert (=> d!1389421 (= lt!1693133 e!2812782)))

(declare-fun c!770208 () Bool)

(assert (=> d!1389421 (= c!770208 ((_ is Cons!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389421 (forall!10245 (toList!4316 lm!1477) lambda!171536)))

(assert (=> d!1389421 (= (extractMap!1210 (toList!4316 lm!1477)) lt!1693133)))

(declare-fun b!4514928 () Bool)

(assert (=> b!4514928 (= e!2812782 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4514929 () Bool)

(assert (=> b!4514929 (= e!2812782 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389421 c!770208) b!4514928))

(assert (= (and d!1389421 (not c!770208)) b!4514929))

(declare-fun m!5258115 () Bool)

(assert (=> d!1389421 m!5258115))

(declare-fun m!5258117 () Bool)

(assert (=> d!1389421 m!5258117))

(assert (=> b!4514928 m!5257351))

(assert (=> b!4514928 m!5257351))

(declare-fun m!5258119 () Bool)

(assert (=> b!4514928 m!5258119))

(assert (=> b!4514557 d!1389421))

(declare-fun d!1389423 () Bool)

(assert (=> d!1389423 (= (eq!611 lt!1692731 lt!1692732) (= (content!8339 (toList!4315 lt!1692731)) (content!8339 (toList!4315 lt!1692732))))))

(declare-fun bs!849950 () Bool)

(assert (= bs!849950 d!1389423))

(assert (=> bs!849950 m!5257589))

(declare-fun m!5258121 () Bool)

(assert (=> bs!849950 m!5258121))

(assert (=> b!4514568 d!1389423))

(declare-fun d!1389425 () Bool)

(assert (=> d!1389425 (= (eq!611 lt!1692736 lt!1692732) (= (content!8339 (toList!4315 lt!1692736)) (content!8339 (toList!4315 lt!1692732))))))

(declare-fun bs!849951 () Bool)

(assert (= bs!849951 d!1389425))

(assert (=> bs!849951 m!5257591))

(assert (=> bs!849951 m!5258121))

(assert (=> b!4514568 d!1389425))

(declare-fun bs!849952 () Bool)

(declare-fun b!4514933 () Bool)

(assert (= bs!849952 (and b!4514933 b!4514749)))

(declare-fun lambda!171537 () Int)

(assert (=> bs!849952 (= (= lt!1692722 lt!1692734) (= lambda!171537 lambda!171464))))

(declare-fun bs!849953 () Bool)

(assert (= bs!849953 (and b!4514933 d!1389235)))

(assert (=> bs!849953 (not (= lambda!171537 lambda!171416))))

(assert (=> bs!849952 (= (= lt!1692722 lt!1692939) (= lambda!171537 lambda!171465))))

(declare-fun bs!849954 () Bool)

(assert (= bs!849954 (and b!4514933 d!1389279)))

(assert (=> bs!849954 (= (= lt!1692722 lt!1692937) (= lambda!171537 lambda!171466))))

(declare-fun bs!849955 () Bool)

(assert (= bs!849955 (and b!4514933 b!4514750)))

(assert (=> bs!849955 (= (= lt!1692722 lt!1692734) (= lambda!171537 lambda!171463))))

(assert (=> b!4514933 true))

(declare-fun bs!849956 () Bool)

(declare-fun b!4514932 () Bool)

(assert (= bs!849956 (and b!4514932 b!4514749)))

(declare-fun lambda!171538 () Int)

(assert (=> bs!849956 (= (= lt!1692722 lt!1692734) (= lambda!171538 lambda!171464))))

(declare-fun bs!849957 () Bool)

(assert (= bs!849957 (and b!4514932 d!1389235)))

(assert (=> bs!849957 (not (= lambda!171538 lambda!171416))))

(assert (=> bs!849956 (= (= lt!1692722 lt!1692939) (= lambda!171538 lambda!171465))))

(declare-fun bs!849958 () Bool)

(assert (= bs!849958 (and b!4514932 b!4514750)))

(assert (=> bs!849958 (= (= lt!1692722 lt!1692734) (= lambda!171538 lambda!171463))))

(declare-fun bs!849959 () Bool)

(assert (= bs!849959 (and b!4514932 b!4514933)))

(assert (=> bs!849959 (= lambda!171538 lambda!171537)))

(declare-fun bs!849960 () Bool)

(assert (= bs!849960 (and b!4514932 d!1389279)))

(assert (=> bs!849960 (= (= lt!1692722 lt!1692937) (= lambda!171538 lambda!171466))))

(assert (=> b!4514932 true))

(declare-fun lt!1693147 () ListMap!3577)

(declare-fun lambda!171539 () Int)

(assert (=> bs!849956 (= (= lt!1693147 lt!1692734) (= lambda!171539 lambda!171464))))

(assert (=> bs!849957 (not (= lambda!171539 lambda!171416))))

(assert (=> bs!849956 (= (= lt!1693147 lt!1692939) (= lambda!171539 lambda!171465))))

(assert (=> b!4514932 (= (= lt!1693147 lt!1692722) (= lambda!171539 lambda!171538))))

(assert (=> bs!849958 (= (= lt!1693147 lt!1692734) (= lambda!171539 lambda!171463))))

(assert (=> bs!849959 (= (= lt!1693147 lt!1692722) (= lambda!171539 lambda!171537))))

(assert (=> bs!849960 (= (= lt!1693147 lt!1692937) (= lambda!171539 lambda!171466))))

(assert (=> b!4514932 true))

(declare-fun bs!849961 () Bool)

(declare-fun d!1389427 () Bool)

(assert (= bs!849961 (and d!1389427 b!4514749)))

(declare-fun lambda!171540 () Int)

(declare-fun lt!1693145 () ListMap!3577)

(assert (=> bs!849961 (= (= lt!1693145 lt!1692734) (= lambda!171540 lambda!171464))))

(declare-fun bs!849962 () Bool)

(assert (= bs!849962 (and d!1389427 d!1389235)))

(assert (=> bs!849962 (not (= lambda!171540 lambda!171416))))

(declare-fun bs!849963 () Bool)

(assert (= bs!849963 (and d!1389427 b!4514932)))

(assert (=> bs!849963 (= (= lt!1693145 lt!1693147) (= lambda!171540 lambda!171539))))

(assert (=> bs!849961 (= (= lt!1693145 lt!1692939) (= lambda!171540 lambda!171465))))

(assert (=> bs!849963 (= (= lt!1693145 lt!1692722) (= lambda!171540 lambda!171538))))

(declare-fun bs!849964 () Bool)

(assert (= bs!849964 (and d!1389427 b!4514750)))

(assert (=> bs!849964 (= (= lt!1693145 lt!1692734) (= lambda!171540 lambda!171463))))

(declare-fun bs!849965 () Bool)

(assert (= bs!849965 (and d!1389427 b!4514933)))

(assert (=> bs!849965 (= (= lt!1693145 lt!1692722) (= lambda!171540 lambda!171537))))

(declare-fun bs!849966 () Bool)

(assert (= bs!849966 (and d!1389427 d!1389279)))

(assert (=> bs!849966 (= (= lt!1693145 lt!1692937) (= lambda!171540 lambda!171466))))

(assert (=> d!1389427 true))

(declare-fun bm!314422 () Bool)

(declare-fun call!314427 () Bool)

(declare-fun c!770209 () Bool)

(assert (=> bm!314422 (= call!314427 (forall!10247 (ite c!770209 (toList!4315 lt!1692722) (t!357714 (_2!28820 lt!1692742))) (ite c!770209 lambda!171537 lambda!171539)))))

(declare-fun call!314428 () Bool)

(declare-fun bm!314423 () Bool)

(assert (=> bm!314423 (= call!314428 (forall!10247 (toList!4315 lt!1692722) (ite c!770209 lambda!171537 lambda!171539)))))

(declare-fun bm!314424 () Bool)

(declare-fun call!314429 () Unit!94076)

(assert (=> bm!314424 (= call!314429 (lemmaContainsAllItsOwnKeys!331 lt!1692722))))

(declare-fun b!4514931 () Bool)

(declare-fun e!2812785 () Bool)

(assert (=> b!4514931 (= e!2812785 call!314428)))

(declare-fun e!2812784 () ListMap!3577)

(assert (=> b!4514932 (= e!2812784 lt!1693147)))

(declare-fun lt!1693151 () ListMap!3577)

(assert (=> b!4514932 (= lt!1693151 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4514932 (= lt!1693147 (addToMapMapFromBucket!681 (t!357714 (_2!28820 lt!1692742)) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693143 () Unit!94076)

(assert (=> b!4514932 (= lt!1693143 call!314429)))

(assert (=> b!4514932 (forall!10247 (toList!4315 lt!1692722) lambda!171538)))

(declare-fun lt!1693139 () Unit!94076)

(assert (=> b!4514932 (= lt!1693139 lt!1693143)))

(assert (=> b!4514932 (forall!10247 (toList!4315 lt!1693151) lambda!171539)))

(declare-fun lt!1693154 () Unit!94076)

(declare-fun Unit!94129 () Unit!94076)

(assert (=> b!4514932 (= lt!1693154 Unit!94129)))

(assert (=> b!4514932 call!314427))

(declare-fun lt!1693144 () Unit!94076)

(declare-fun Unit!94130 () Unit!94076)

(assert (=> b!4514932 (= lt!1693144 Unit!94130)))

(declare-fun lt!1693146 () Unit!94076)

(declare-fun Unit!94131 () Unit!94076)

(assert (=> b!4514932 (= lt!1693146 Unit!94131)))

(declare-fun lt!1693153 () Unit!94076)

(assert (=> b!4514932 (= lt!1693153 (forallContained!2498 (toList!4315 lt!1693151) lambda!171539 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4514932 (contains!13343 lt!1693151 (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1693152 () Unit!94076)

(declare-fun Unit!94132 () Unit!94076)

(assert (=> b!4514932 (= lt!1693152 Unit!94132)))

(assert (=> b!4514932 (contains!13343 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1693138 () Unit!94076)

(declare-fun Unit!94133 () Unit!94076)

(assert (=> b!4514932 (= lt!1693138 Unit!94133)))

(assert (=> b!4514932 (forall!10247 (_2!28820 lt!1692742) lambda!171539)))

(declare-fun lt!1693141 () Unit!94076)

(declare-fun Unit!94134 () Unit!94076)

(assert (=> b!4514932 (= lt!1693141 Unit!94134)))

(assert (=> b!4514932 (forall!10247 (toList!4315 lt!1693151) lambda!171539)))

(declare-fun lt!1693136 () Unit!94076)

(declare-fun Unit!94135 () Unit!94076)

(assert (=> b!4514932 (= lt!1693136 Unit!94135)))

(declare-fun lt!1693149 () Unit!94076)

(declare-fun Unit!94136 () Unit!94076)

(assert (=> b!4514932 (= lt!1693149 Unit!94136)))

(declare-fun lt!1693148 () Unit!94076)

(assert (=> b!4514932 (= lt!1693148 (addForallContainsKeyThenBeforeAdding!331 lt!1692722 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4514932 (forall!10247 (toList!4315 lt!1692722) lambda!171539)))

(declare-fun lt!1693134 () Unit!94076)

(assert (=> b!4514932 (= lt!1693134 lt!1693148)))

(assert (=> b!4514932 (forall!10247 (toList!4315 lt!1692722) lambda!171539)))

(declare-fun lt!1693140 () Unit!94076)

(declare-fun Unit!94137 () Unit!94076)

(assert (=> b!4514932 (= lt!1693140 Unit!94137)))

(declare-fun res!1878568 () Bool)

(assert (=> b!4514932 (= res!1878568 (forall!10247 (_2!28820 lt!1692742) lambda!171539))))

(assert (=> b!4514932 (=> (not res!1878568) (not e!2812785))))

(assert (=> b!4514932 e!2812785))

(declare-fun lt!1693137 () Unit!94076)

(declare-fun Unit!94138 () Unit!94076)

(assert (=> b!4514932 (= lt!1693137 Unit!94138)))

(declare-fun b!4514930 () Bool)

(declare-fun res!1878569 () Bool)

(declare-fun e!2812783 () Bool)

(assert (=> b!4514930 (=> (not res!1878569) (not e!2812783))))

(assert (=> b!4514930 (= res!1878569 (forall!10247 (toList!4315 lt!1692722) lambda!171540))))

(assert (=> d!1389427 e!2812783))

(declare-fun res!1878570 () Bool)

(assert (=> d!1389427 (=> (not res!1878570) (not e!2812783))))

(assert (=> d!1389427 (= res!1878570 (forall!10247 (_2!28820 lt!1692742) lambda!171540))))

(assert (=> d!1389427 (= lt!1693145 e!2812784)))

(assert (=> d!1389427 (= c!770209 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1389427 (noDuplicateKeys!1154 (_2!28820 lt!1692742))))

(assert (=> d!1389427 (= (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722) lt!1693145)))

(assert (=> b!4514933 (= e!2812784 lt!1692722)))

(declare-fun lt!1693142 () Unit!94076)

(assert (=> b!4514933 (= lt!1693142 call!314429)))

(assert (=> b!4514933 call!314428))

(declare-fun lt!1693135 () Unit!94076)

(assert (=> b!4514933 (= lt!1693135 lt!1693142)))

(assert (=> b!4514933 call!314427))

(declare-fun lt!1693150 () Unit!94076)

(declare-fun Unit!94139 () Unit!94076)

(assert (=> b!4514933 (= lt!1693150 Unit!94139)))

(declare-fun b!4514934 () Bool)

(assert (=> b!4514934 (= e!2812783 (invariantList!1011 (toList!4315 lt!1693145)))))

(assert (= (and d!1389427 c!770209) b!4514933))

(assert (= (and d!1389427 (not c!770209)) b!4514932))

(assert (= (and b!4514932 res!1878568) b!4514931))

(assert (= (or b!4514933 b!4514932) bm!314422))

(assert (= (or b!4514933 b!4514931) bm!314423))

(assert (= (or b!4514933 b!4514932) bm!314424))

(assert (= (and d!1389427 res!1878570) b!4514930))

(assert (= (and b!4514930 res!1878569) b!4514934))

(declare-fun m!5258123 () Bool)

(assert (=> bm!314422 m!5258123))

(declare-fun m!5258125 () Bool)

(assert (=> b!4514932 m!5258125))

(declare-fun m!5258127 () Bool)

(assert (=> b!4514932 m!5258127))

(declare-fun m!5258129 () Bool)

(assert (=> b!4514932 m!5258129))

(declare-fun m!5258131 () Bool)

(assert (=> b!4514932 m!5258131))

(assert (=> b!4514932 m!5258131))

(declare-fun m!5258133 () Bool)

(assert (=> b!4514932 m!5258133))

(assert (=> b!4514932 m!5258125))

(declare-fun m!5258135 () Bool)

(assert (=> b!4514932 m!5258135))

(declare-fun m!5258137 () Bool)

(assert (=> b!4514932 m!5258137))

(assert (=> b!4514932 m!5258127))

(assert (=> b!4514932 m!5258133))

(declare-fun m!5258139 () Bool)

(assert (=> b!4514932 m!5258139))

(declare-fun m!5258141 () Bool)

(assert (=> b!4514932 m!5258141))

(declare-fun m!5258143 () Bool)

(assert (=> b!4514932 m!5258143))

(declare-fun m!5258145 () Bool)

(assert (=> bm!314423 m!5258145))

(declare-fun m!5258147 () Bool)

(assert (=> bm!314424 m!5258147))

(declare-fun m!5258149 () Bool)

(assert (=> b!4514934 m!5258149))

(declare-fun m!5258151 () Bool)

(assert (=> b!4514930 m!5258151))

(declare-fun m!5258153 () Bool)

(assert (=> d!1389427 m!5258153))

(assert (=> d!1389427 m!5257755))

(assert (=> b!4514568 d!1389427))

(declare-fun d!1389429 () Bool)

(assert (=> d!1389429 (eq!611 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734) (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722))))

(declare-fun lt!1693157 () Unit!94076)

(declare-fun choose!29422 (ListMap!3577 ListMap!3577 List!50752) Unit!94076)

(assert (=> d!1389429 (= lt!1693157 (choose!29422 lt!1692734 lt!1692722 (_2!28820 lt!1692742)))))

(assert (=> d!1389429 (noDuplicateKeys!1154 (_2!28820 lt!1692742))))

(assert (=> d!1389429 (= (lemmaAddToMapFromBucketPreservesEquivalence!30 lt!1692734 lt!1692722 (_2!28820 lt!1692742)) lt!1693157)))

(declare-fun bs!849967 () Bool)

(assert (= bs!849967 d!1389429))

(assert (=> bs!849967 m!5257383))

(assert (=> bs!849967 m!5257755))

(declare-fun m!5258155 () Bool)

(assert (=> bs!849967 m!5258155))

(assert (=> bs!849967 m!5257333))

(assert (=> bs!849967 m!5257333))

(assert (=> bs!849967 m!5257383))

(declare-fun m!5258157 () Bool)

(assert (=> bs!849967 m!5258157))

(assert (=> b!4514568 d!1389429))

(declare-fun bs!849968 () Bool)

(declare-fun d!1389431 () Bool)

(assert (= bs!849968 (and d!1389431 d!1389333)))

(declare-fun lambda!171543 () Int)

(assert (=> bs!849968 (= lambda!171543 lambda!171504)))

(declare-fun bs!849969 () Bool)

(assert (= bs!849969 (and d!1389431 start!446664)))

(assert (=> bs!849969 (= lambda!171543 lambda!171413)))

(declare-fun bs!849970 () Bool)

(assert (= bs!849970 (and d!1389431 d!1389351)))

(assert (=> bs!849970 (= lambda!171543 lambda!171520)))

(declare-fun bs!849971 () Bool)

(assert (= bs!849971 (and d!1389431 d!1389349)))

(assert (=> bs!849971 (= lambda!171543 lambda!171510)))

(declare-fun bs!849972 () Bool)

(assert (= bs!849972 (and d!1389431 d!1389385)))

(assert (=> bs!849972 (= lambda!171543 lambda!171531)))

(declare-fun bs!849973 () Bool)

(assert (= bs!849973 (and d!1389431 d!1389371)))

(assert (=> bs!849973 (= lambda!171543 lambda!171525)))

(declare-fun bs!849974 () Bool)

(assert (= bs!849974 (and d!1389431 d!1389405)))

(assert (=> bs!849974 (= lambda!171543 lambda!171535)))

(declare-fun bs!849975 () Bool)

(assert (= bs!849975 (and d!1389431 d!1389369)))

(assert (=> bs!849975 (not (= lambda!171543 lambda!171524))))

(declare-fun bs!849976 () Bool)

(assert (= bs!849976 (and d!1389431 d!1389397)))

(assert (=> bs!849976 (= lambda!171543 lambda!171532)))

(declare-fun bs!849977 () Bool)

(assert (= bs!849977 (and d!1389431 d!1389367)))

(assert (=> bs!849977 (= lambda!171543 lambda!171521)))

(declare-fun bs!849978 () Bool)

(assert (= bs!849978 (and d!1389431 d!1389421)))

(assert (=> bs!849978 (= lambda!171543 lambda!171536)))

(declare-fun bs!849979 () Bool)

(assert (= bs!849979 (and d!1389431 d!1389325)))

(assert (=> bs!849979 (= lambda!171543 lambda!171497)))

(assert (=> d!1389431 (not (contains!13343 (extractMap!1210 (toList!4316 lm!1477)) key!3287))))

(declare-fun lt!1693160 () Unit!94076)

(declare-fun choose!29423 (ListLongMap!2947 K!12025 Hashable!5549) Unit!94076)

(assert (=> d!1389431 (= lt!1693160 (choose!29423 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1389431 (forall!10245 (toList!4316 lm!1477) lambda!171543)))

(assert (=> d!1389431 (= (lemmaNotInItsHashBucketThenNotInMap!142 lm!1477 key!3287 hashF!1107) lt!1693160)))

(declare-fun bs!849980 () Bool)

(assert (= bs!849980 d!1389431))

(assert (=> bs!849980 m!5257343))

(assert (=> bs!849980 m!5257343))

(declare-fun m!5258159 () Bool)

(assert (=> bs!849980 m!5258159))

(declare-fun m!5258161 () Bool)

(assert (=> bs!849980 m!5258161))

(declare-fun m!5258163 () Bool)

(assert (=> bs!849980 m!5258163))

(assert (=> b!4514578 d!1389431))

(declare-fun b!4514939 () Bool)

(declare-fun tp!1337979 () Bool)

(declare-fun e!2812788 () Bool)

(assert (=> b!4514939 (= e!2812788 (and tp_is_empty!27893 tp_is_empty!27895 tp!1337979))))

(assert (=> b!4514573 (= tp!1337967 e!2812788)))

(assert (= (and b!4514573 ((_ is Cons!50628) (t!357714 newBucket!178))) b!4514939))

(declare-fun b!4514944 () Bool)

(declare-fun e!2812791 () Bool)

(declare-fun tp!1337984 () Bool)

(declare-fun tp!1337985 () Bool)

(assert (=> b!4514944 (= e!2812791 (and tp!1337984 tp!1337985))))

(assert (=> b!4514567 (= tp!1337966 e!2812791)))

(assert (= (and b!4514567 ((_ is Cons!50629) (toList!4316 lm!1477))) b!4514944))

(declare-fun b_lambda!154111 () Bool)

(assert (= b_lambda!154093 (or start!446664 b_lambda!154111)))

(declare-fun bs!849981 () Bool)

(declare-fun d!1389433 () Bool)

(assert (= bs!849981 (and d!1389433 start!446664)))

(assert (=> bs!849981 (= (dynLambda!21150 lambda!171413 (h!56476 (toList!4316 lm!1477))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(declare-fun m!5258165 () Bool)

(assert (=> bs!849981 m!5258165))

(assert (=> d!1389245 d!1389433))

(declare-fun b_lambda!154113 () Bool)

(assert (= b_lambda!154109 (or start!446664 b_lambda!154113)))

(declare-fun bs!849982 () Bool)

(declare-fun d!1389435 () Bool)

(assert (= bs!849982 (and d!1389435 start!446664)))

(assert (=> bs!849982 (= (dynLambda!21150 lambda!171413 lt!1692740) (noDuplicateKeys!1154 (_2!28820 lt!1692740)))))

(declare-fun m!5258167 () Bool)

(assert (=> bs!849982 m!5258167))

(assert (=> d!1389413 d!1389435))

(declare-fun b_lambda!154115 () Bool)

(assert (= b_lambda!154095 (or start!446664 b_lambda!154115)))

(assert (=> b!4514639 d!1389433))

(check-sat (not d!1389393) (not b!4514855) (not bm!314422) (not b!4514593) (not bm!314416) (not b!4514587) (not d!1389241) (not b!4514831) (not d!1389427) (not b!4514915) (not d!1389335) (not d!1389325) (not b!4514928) tp_is_empty!27895 (not d!1389429) (not d!1389235) (not b!4514916) (not b!4514749) (not d!1389261) (not d!1389269) (not d!1389333) (not bm!314423) (not d!1389401) (not b!4514870) (not b!4514925) (not d!1389407) (not bm!314401) (not d!1389419) (not b!4514918) (not b!4514768) (not b!4514826) (not b!4514939) (not d!1389371) (not b!4514782) (not d!1389369) (not b!4514585) (not d!1389421) (not b!4514632) (not d!1389259) (not d!1389411) (not b!4514792) (not b_lambda!154115) (not b!4514790) (not b!4514932) (not b!4514919) (not b!4514869) (not d!1389385) (not d!1389405) (not b!4514599) (not d!1389373) (not bm!314421) (not bm!314420) (not b!4514867) (not b!4514927) (not b!4514854) (not d!1389365) (not b!4514863) (not b!4514751) (not b!4514872) (not b!4514900) (not b!4514827) (not b!4514862) (not d!1389351) (not b!4514775) (not b!4514921) (not b!4514858) (not b!4514634) (not b!4514614) (not b!4514930) (not b!4514859) (not b_lambda!154113) (not b!4514914) (not bs!849981) (not b!4514834) (not d!1389423) (not d!1389247) (not b_lambda!154111) (not b!4514640) (not b!4514896) (not d!1389245) (not b!4514747) (not b!4514856) (not d!1389425) (not d!1389225) (not d!1389403) (not d!1389417) (not b!4514860) (not d!1389229) (not d!1389409) (not bm!314424) (not d!1389415) (not b!4514784) (not d!1389399) (not b!4514871) (not d!1389227) (not d!1389337) (not b!4514830) (not b!4514883) (not d!1389367) (not d!1389395) (not d!1389375) (not d!1389397) (not b!4514598) (not b!4514841) (not d!1389377) (not b!4514924) (not b!4514828) (not b!4514832) (not d!1389273) (not b!4514934) (not bm!314402) (not b!4514911) (not b!4514923) (not d!1389431) (not d!1389413) (not b!4514631) (not bm!314403) (not d!1389279) (not d!1389349) (not b!4514633) (not b!4514944) (not b!4514920) (not bs!849982) tp_is_empty!27893)
(check-sat)
(get-model)

(declare-fun d!1389437 () Bool)

(declare-fun lt!1693163 () Bool)

(assert (=> d!1389437 (= lt!1693163 (select (content!8341 (keys!17582 lt!1692724)) key!3287))))

(declare-fun e!2812797 () Bool)

(assert (=> d!1389437 (= lt!1693163 e!2812797)))

(declare-fun res!1878576 () Bool)

(assert (=> d!1389437 (=> (not res!1878576) (not e!2812797))))

(assert (=> d!1389437 (= res!1878576 ((_ is Cons!50631) (keys!17582 lt!1692724)))))

(assert (=> d!1389437 (= (contains!13345 (keys!17582 lt!1692724) key!3287) lt!1693163)))

(declare-fun b!4514949 () Bool)

(declare-fun e!2812796 () Bool)

(assert (=> b!4514949 (= e!2812797 e!2812796)))

(declare-fun res!1878575 () Bool)

(assert (=> b!4514949 (=> res!1878575 e!2812796)))

(assert (=> b!4514949 (= res!1878575 (= (h!56480 (keys!17582 lt!1692724)) key!3287))))

(declare-fun b!4514950 () Bool)

(assert (=> b!4514950 (= e!2812796 (contains!13345 (t!357717 (keys!17582 lt!1692724)) key!3287))))

(assert (= (and d!1389437 res!1878576) b!4514949))

(assert (= (and b!4514949 (not res!1878575)) b!4514950))

(assert (=> d!1389437 m!5258097))

(declare-fun m!5258169 () Bool)

(assert (=> d!1389437 m!5258169))

(declare-fun m!5258171 () Bool)

(assert (=> d!1389437 m!5258171))

(declare-fun m!5258173 () Bool)

(assert (=> b!4514950 m!5258173))

(assert (=> b!4514919 d!1389437))

(declare-fun b!4514958 () Bool)

(assert (=> b!4514958 true))

(declare-fun d!1389439 () Bool)

(declare-fun e!2812800 () Bool)

(assert (=> d!1389439 e!2812800))

(declare-fun res!1878584 () Bool)

(assert (=> d!1389439 (=> (not res!1878584) (not e!2812800))))

(declare-fun lt!1693166 () List!50755)

(declare-fun noDuplicate!741 (List!50755) Bool)

(assert (=> d!1389439 (= res!1878584 (noDuplicate!741 lt!1693166))))

(assert (=> d!1389439 (= lt!1693166 (getKeysList!459 (toList!4315 lt!1692724)))))

(assert (=> d!1389439 (= (keys!17582 lt!1692724) lt!1693166)))

(declare-fun b!4514957 () Bool)

(declare-fun res!1878585 () Bool)

(assert (=> b!4514957 (=> (not res!1878585) (not e!2812800))))

(declare-fun length!338 (List!50755) Int)

(declare-fun length!339 (List!50752) Int)

(assert (=> b!4514957 (= res!1878585 (= (length!338 lt!1693166) (length!339 (toList!4315 lt!1692724))))))

(declare-fun res!1878583 () Bool)

(assert (=> b!4514958 (=> (not res!1878583) (not e!2812800))))

(declare-fun lambda!171548 () Int)

(declare-fun forall!10248 (List!50755 Int) Bool)

(assert (=> b!4514958 (= res!1878583 (forall!10248 lt!1693166 lambda!171548))))

(declare-fun b!4514959 () Bool)

(declare-fun lambda!171549 () Int)

(declare-fun map!11129 (List!50752 Int) List!50755)

(assert (=> b!4514959 (= e!2812800 (= (content!8341 lt!1693166) (content!8341 (map!11129 (toList!4315 lt!1692724) lambda!171549))))))

(assert (= (and d!1389439 res!1878584) b!4514957))

(assert (= (and b!4514957 res!1878585) b!4514958))

(assert (= (and b!4514958 res!1878583) b!4514959))

(declare-fun m!5258175 () Bool)

(assert (=> d!1389439 m!5258175))

(assert (=> d!1389439 m!5258113))

(declare-fun m!5258177 () Bool)

(assert (=> b!4514957 m!5258177))

(declare-fun m!5258179 () Bool)

(assert (=> b!4514957 m!5258179))

(declare-fun m!5258181 () Bool)

(assert (=> b!4514958 m!5258181))

(declare-fun m!5258183 () Bool)

(assert (=> b!4514959 m!5258183))

(declare-fun m!5258185 () Bool)

(assert (=> b!4514959 m!5258185))

(assert (=> b!4514959 m!5258185))

(declare-fun m!5258187 () Bool)

(assert (=> b!4514959 m!5258187))

(assert (=> b!4514919 d!1389439))

(declare-fun d!1389441 () Bool)

(declare-fun e!2812802 () Bool)

(assert (=> d!1389441 e!2812802))

(declare-fun res!1878586 () Bool)

(assert (=> d!1389441 (=> res!1878586 e!2812802)))

(declare-fun lt!1693169 () Bool)

(assert (=> d!1389441 (= res!1878586 (not lt!1693169))))

(declare-fun lt!1693168 () Bool)

(assert (=> d!1389441 (= lt!1693169 lt!1693168)))

(declare-fun lt!1693170 () Unit!94076)

(declare-fun e!2812801 () Unit!94076)

(assert (=> d!1389441 (= lt!1693170 e!2812801)))

(declare-fun c!770210 () Bool)

(assert (=> d!1389441 (= c!770210 lt!1693168)))

(assert (=> d!1389441 (= lt!1693168 (containsKey!1763 (toList!4316 lt!1693091) (_1!28820 lt!1692742)))))

(assert (=> d!1389441 (= (contains!13342 lt!1693091 (_1!28820 lt!1692742)) lt!1693169)))

(declare-fun b!4514962 () Bool)

(declare-fun lt!1693167 () Unit!94076)

(assert (=> b!4514962 (= e!2812801 lt!1693167)))

(assert (=> b!4514962 (= lt!1693167 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1693091) (_1!28820 lt!1692742)))))

(assert (=> b!4514962 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1693091) (_1!28820 lt!1692742)))))

(declare-fun b!4514963 () Bool)

(declare-fun Unit!94140 () Unit!94076)

(assert (=> b!4514963 (= e!2812801 Unit!94140)))

(declare-fun b!4514964 () Bool)

(assert (=> b!4514964 (= e!2812802 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1693091) (_1!28820 lt!1692742))))))

(assert (= (and d!1389441 c!770210) b!4514962))

(assert (= (and d!1389441 (not c!770210)) b!4514963))

(assert (= (and d!1389441 (not res!1878586)) b!4514964))

(declare-fun m!5258189 () Bool)

(assert (=> d!1389441 m!5258189))

(declare-fun m!5258191 () Bool)

(assert (=> b!4514962 m!5258191))

(assert (=> b!4514962 m!5257981))

(assert (=> b!4514962 m!5257981))

(declare-fun m!5258193 () Bool)

(assert (=> b!4514962 m!5258193))

(assert (=> b!4514964 m!5257981))

(assert (=> b!4514964 m!5257981))

(assert (=> b!4514964 m!5258193))

(assert (=> d!1389373 d!1389441))

(declare-fun b!4514980 () Bool)

(declare-fun e!2812811 () Option!11099)

(assert (=> b!4514980 (= e!2812811 (getValueByKey!1079 (t!357715 lt!1693093) (_1!28820 lt!1692742)))))

(declare-fun b!4514981 () Bool)

(assert (=> b!4514981 (= e!2812811 None!11098)))

(declare-fun b!4514978 () Bool)

(declare-fun e!2812810 () Option!11099)

(assert (=> b!4514978 (= e!2812810 (Some!11098 (_2!28820 (h!56476 lt!1693093))))))

(declare-fun d!1389445 () Bool)

(declare-fun c!770216 () Bool)

(assert (=> d!1389445 (= c!770216 (and ((_ is Cons!50629) lt!1693093) (= (_1!28820 (h!56476 lt!1693093)) (_1!28820 lt!1692742))))))

(assert (=> d!1389445 (= (getValueByKey!1079 lt!1693093 (_1!28820 lt!1692742)) e!2812810)))

(declare-fun b!4514979 () Bool)

(assert (=> b!4514979 (= e!2812810 e!2812811)))

(declare-fun c!770217 () Bool)

(assert (=> b!4514979 (= c!770217 (and ((_ is Cons!50629) lt!1693093) (not (= (_1!28820 (h!56476 lt!1693093)) (_1!28820 lt!1692742)))))))

(assert (= (and d!1389445 c!770216) b!4514978))

(assert (= (and d!1389445 (not c!770216)) b!4514979))

(assert (= (and b!4514979 c!770217) b!4514980))

(assert (= (and b!4514979 (not c!770217)) b!4514981))

(declare-fun m!5258195 () Bool)

(assert (=> b!4514980 m!5258195))

(assert (=> d!1389373 d!1389445))

(declare-fun d!1389447 () Bool)

(assert (=> d!1389447 (= (getValueByKey!1079 lt!1693093 (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742)))))

(declare-fun lt!1693194 () Unit!94076)

(declare-fun choose!29424 (List!50753 (_ BitVec 64) List!50752) Unit!94076)

(assert (=> d!1389447 (= lt!1693194 (choose!29424 lt!1693093 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(declare-fun e!2812814 () Bool)

(assert (=> d!1389447 e!2812814))

(declare-fun res!1878594 () Bool)

(assert (=> d!1389447 (=> (not res!1878594) (not e!2812814))))

(assert (=> d!1389447 (= res!1878594 (isStrictlySorted!424 lt!1693093))))

(assert (=> d!1389447 (= (lemmaContainsTupThenGetReturnValue!666 lt!1693093 (_1!28820 lt!1692742) (_2!28820 lt!1692742)) lt!1693194)))

(declare-fun b!4514986 () Bool)

(declare-fun res!1878595 () Bool)

(assert (=> b!4514986 (=> (not res!1878595) (not e!2812814))))

(assert (=> b!4514986 (= res!1878595 (containsKey!1763 lt!1693093 (_1!28820 lt!1692742)))))

(declare-fun b!4514987 () Bool)

(assert (=> b!4514987 (= e!2812814 (contains!13341 lt!1693093 (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742))))))

(assert (= (and d!1389447 res!1878594) b!4514986))

(assert (= (and b!4514986 res!1878595) b!4514987))

(assert (=> d!1389447 m!5257975))

(declare-fun m!5258197 () Bool)

(assert (=> d!1389447 m!5258197))

(declare-fun m!5258199 () Bool)

(assert (=> d!1389447 m!5258199))

(declare-fun m!5258201 () Bool)

(assert (=> b!4514986 m!5258201))

(declare-fun m!5258203 () Bool)

(assert (=> b!4514987 m!5258203))

(assert (=> d!1389373 d!1389447))

(declare-fun bm!314434 () Bool)

(declare-fun call!314440 () List!50753)

(declare-fun call!314441 () List!50753)

(assert (=> bm!314434 (= call!314440 call!314441)))

(declare-fun d!1389449 () Bool)

(declare-fun e!2812827 () Bool)

(assert (=> d!1389449 e!2812827))

(declare-fun res!1878600 () Bool)

(assert (=> d!1389449 (=> (not res!1878600) (not e!2812827))))

(declare-fun lt!1693198 () List!50753)

(assert (=> d!1389449 (= res!1878600 (isStrictlySorted!424 lt!1693198))))

(declare-fun e!2812826 () List!50753)

(assert (=> d!1389449 (= lt!1693198 e!2812826)))

(declare-fun c!770228 () Bool)

(assert (=> d!1389449 (= c!770228 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (bvslt (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692742))))))

(assert (=> d!1389449 (isStrictlySorted!424 (toList!4316 lt!1692730))))

(assert (=> d!1389449 (= (insertStrictlySorted!402 (toList!4316 lt!1692730) (_1!28820 lt!1692742) (_2!28820 lt!1692742)) lt!1693198)))

(declare-fun b!4515010 () Bool)

(declare-fun e!2812830 () List!50753)

(assert (=> b!4515010 (= e!2812830 call!314440)))

(declare-fun b!4515011 () Bool)

(assert (=> b!4515011 (= e!2812826 call!314441)))

(declare-fun b!4515012 () Bool)

(declare-fun e!2812829 () List!50753)

(declare-fun call!314439 () List!50753)

(assert (=> b!4515012 (= e!2812829 call!314439)))

(declare-fun b!4515013 () Bool)

(declare-fun res!1878601 () Bool)

(assert (=> b!4515013 (=> (not res!1878601) (not e!2812827))))

(assert (=> b!4515013 (= res!1878601 (containsKey!1763 lt!1693198 (_1!28820 lt!1692742)))))

(declare-fun b!4515014 () Bool)

(assert (=> b!4515014 (= e!2812827 (contains!13341 lt!1693198 (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742))))))

(declare-fun b!4515015 () Bool)

(assert (=> b!4515015 (= e!2812829 call!314439)))

(declare-fun c!770227 () Bool)

(declare-fun b!4515016 () Bool)

(declare-fun e!2812828 () List!50753)

(declare-fun c!770229 () Bool)

(assert (=> b!4515016 (= e!2812828 (ite c!770227 (t!357715 (toList!4316 lt!1692730)) (ite c!770229 (Cons!50629 (h!56476 (toList!4316 lt!1692730)) (t!357715 (toList!4316 lt!1692730))) Nil!50629)))))

(declare-fun bm!314435 () Bool)

(assert (=> bm!314435 (= call!314439 call!314440)))

(declare-fun b!4515017 () Bool)

(assert (=> b!4515017 (= c!770229 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (bvsgt (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692742))))))

(assert (=> b!4515017 (= e!2812830 e!2812829)))

(declare-fun bm!314436 () Bool)

(declare-fun $colon$colon!923 (List!50753 tuple2!51052) List!50753)

(assert (=> bm!314436 (= call!314441 ($colon$colon!923 e!2812828 (ite c!770228 (h!56476 (toList!4316 lt!1692730)) (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))))

(declare-fun c!770230 () Bool)

(assert (=> bm!314436 (= c!770230 c!770228)))

(declare-fun b!4515018 () Bool)

(assert (=> b!4515018 (= e!2812828 (insertStrictlySorted!402 (t!357715 (toList!4316 lt!1692730)) (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(declare-fun b!4515019 () Bool)

(assert (=> b!4515019 (= e!2812826 e!2812830)))

(assert (=> b!4515019 (= c!770227 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (= (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692742))))))

(assert (= (and d!1389449 c!770228) b!4515011))

(assert (= (and d!1389449 (not c!770228)) b!4515019))

(assert (= (and b!4515019 c!770227) b!4515010))

(assert (= (and b!4515019 (not c!770227)) b!4515017))

(assert (= (and b!4515017 c!770229) b!4515012))

(assert (= (and b!4515017 (not c!770229)) b!4515015))

(assert (= (or b!4515012 b!4515015) bm!314435))

(assert (= (or b!4515010 bm!314435) bm!314434))

(assert (= (or b!4515011 bm!314434) bm!314436))

(assert (= (and bm!314436 c!770230) b!4515018))

(assert (= (and bm!314436 (not c!770230)) b!4515016))

(assert (= (and d!1389449 res!1878600) b!4515013))

(assert (= (and b!4515013 res!1878601) b!4515014))

(declare-fun m!5258247 () Bool)

(assert (=> b!4515014 m!5258247))

(declare-fun m!5258249 () Bool)

(assert (=> b!4515018 m!5258249))

(declare-fun m!5258251 () Bool)

(assert (=> b!4515013 m!5258251))

(declare-fun m!5258253 () Bool)

(assert (=> bm!314436 m!5258253))

(declare-fun m!5258255 () Bool)

(assert (=> d!1389449 m!5258255))

(declare-fun m!5258257 () Bool)

(assert (=> d!1389449 m!5258257))

(assert (=> d!1389373 d!1389449))

(declare-fun d!1389455 () Bool)

(declare-fun lt!1693199 () Bool)

(assert (=> d!1389455 (= lt!1693199 (select (content!8341 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(declare-fun e!2812832 () Bool)

(assert (=> d!1389455 (= lt!1693199 e!2812832)))

(declare-fun res!1878603 () Bool)

(assert (=> d!1389455 (=> (not res!1878603) (not e!2812832))))

(assert (=> d!1389455 (= res!1878603 ((_ is Cons!50631) (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> d!1389455 (= (contains!13345 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) lt!1693199)))

(declare-fun b!4515020 () Bool)

(declare-fun e!2812831 () Bool)

(assert (=> b!4515020 (= e!2812832 e!2812831)))

(declare-fun res!1878602 () Bool)

(assert (=> b!4515020 (=> res!1878602 e!2812831)))

(assert (=> b!4515020 (= res!1878602 (= (h!56480 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(declare-fun b!4515021 () Bool)

(assert (=> b!4515021 (= e!2812831 (contains!13345 (t!357717 (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(assert (= (and d!1389455 res!1878603) b!4515020))

(assert (= (and b!4515020 (not res!1878602)) b!4515021))

(assert (=> d!1389455 m!5257857))

(declare-fun m!5258259 () Bool)

(assert (=> d!1389455 m!5258259))

(declare-fun m!5258261 () Bool)

(assert (=> d!1389455 m!5258261))

(declare-fun m!5258263 () Bool)

(assert (=> b!4515021 m!5258263))

(assert (=> b!4514831 d!1389455))

(declare-fun bs!850020 () Bool)

(declare-fun b!4515023 () Bool)

(assert (= bs!850020 (and b!4515023 b!4514958)))

(declare-fun lambda!171555 () Int)

(assert (=> bs!850020 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1692724)) (= lambda!171555 lambda!171548))))

(assert (=> b!4515023 true))

(declare-fun bs!850021 () Bool)

(declare-fun b!4515024 () Bool)

(assert (= bs!850021 (and b!4515024 b!4514959)))

(declare-fun lambda!171556 () Int)

(assert (=> bs!850021 (= lambda!171556 lambda!171549)))

(declare-fun d!1389457 () Bool)

(declare-fun e!2812833 () Bool)

(assert (=> d!1389457 e!2812833))

(declare-fun res!1878605 () Bool)

(assert (=> d!1389457 (=> (not res!1878605) (not e!2812833))))

(declare-fun lt!1693200 () List!50755)

(assert (=> d!1389457 (= res!1878605 (noDuplicate!741 lt!1693200))))

(assert (=> d!1389457 (= lt!1693200 (getKeysList!459 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> d!1389457 (= (keys!17582 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lt!1693200)))

(declare-fun b!4515022 () Bool)

(declare-fun res!1878606 () Bool)

(assert (=> b!4515022 (=> (not res!1878606) (not e!2812833))))

(assert (=> b!4515022 (= res!1878606 (= (length!338 lt!1693200) (length!339 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun res!1878604 () Bool)

(assert (=> b!4515023 (=> (not res!1878604) (not e!2812833))))

(assert (=> b!4515023 (= res!1878604 (forall!10248 lt!1693200 lambda!171555))))

(assert (=> b!4515024 (= e!2812833 (= (content!8341 lt!1693200) (content!8341 (map!11129 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171556))))))

(assert (= (and d!1389457 res!1878605) b!4515022))

(assert (= (and b!4515022 res!1878606) b!4515023))

(assert (= (and b!4515023 res!1878604) b!4515024))

(declare-fun m!5258265 () Bool)

(assert (=> d!1389457 m!5258265))

(assert (=> d!1389457 m!5257873))

(declare-fun m!5258267 () Bool)

(assert (=> b!4515022 m!5258267))

(declare-fun m!5258269 () Bool)

(assert (=> b!4515022 m!5258269))

(declare-fun m!5258271 () Bool)

(assert (=> b!4515023 m!5258271))

(declare-fun m!5258273 () Bool)

(assert (=> b!4515024 m!5258273))

(declare-fun m!5258275 () Bool)

(assert (=> b!4515024 m!5258275))

(assert (=> b!4515024 m!5258275))

(declare-fun m!5258277 () Bool)

(assert (=> b!4515024 m!5258277))

(assert (=> b!4514831 d!1389457))

(declare-fun d!1389459 () Bool)

(declare-fun lt!1693201 () Bool)

(assert (=> d!1389459 (= lt!1693201 (select (content!8338 (toList!4316 lm!1477)) (tuple2!51053 hash!344 lt!1692723)))))

(declare-fun e!2812839 () Bool)

(assert (=> d!1389459 (= lt!1693201 e!2812839)))

(declare-fun res!1878611 () Bool)

(assert (=> d!1389459 (=> (not res!1878611) (not e!2812839))))

(assert (=> d!1389459 (= res!1878611 ((_ is Cons!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389459 (= (contains!13341 (toList!4316 lm!1477) (tuple2!51053 hash!344 lt!1692723)) lt!1693201)))

(declare-fun b!4515027 () Bool)

(declare-fun e!2812836 () Bool)

(assert (=> b!4515027 (= e!2812839 e!2812836)))

(declare-fun res!1878612 () Bool)

(assert (=> b!4515027 (=> res!1878612 e!2812836)))

(assert (=> b!4515027 (= res!1878612 (= (h!56476 (toList!4316 lm!1477)) (tuple2!51053 hash!344 lt!1692723)))))

(declare-fun b!4515028 () Bool)

(assert (=> b!4515028 (= e!2812836 (contains!13341 (t!357715 (toList!4316 lm!1477)) (tuple2!51053 hash!344 lt!1692723)))))

(assert (= (and d!1389459 res!1878611) b!4515027))

(assert (= (and b!4515027 (not res!1878612)) b!4515028))

(assert (=> d!1389459 m!5258079))

(declare-fun m!5258279 () Bool)

(assert (=> d!1389459 m!5258279))

(declare-fun m!5258281 () Bool)

(assert (=> b!4515028 m!5258281))

(assert (=> d!1389403 d!1389459))

(declare-fun d!1389461 () Bool)

(assert (=> d!1389461 (contains!13341 (toList!4316 lm!1477) (tuple2!51053 hash!344 lt!1692723))))

(assert (=> d!1389461 true))

(declare-fun _$14!1143 () Unit!94076)

(assert (=> d!1389461 (= (choose!29419 (toList!4316 lm!1477) hash!344 lt!1692723) _$14!1143)))

(declare-fun bs!850022 () Bool)

(assert (= bs!850022 d!1389461))

(assert (=> bs!850022 m!5258059))

(assert (=> d!1389403 d!1389461))

(declare-fun d!1389463 () Bool)

(declare-fun res!1878624 () Bool)

(declare-fun e!2812854 () Bool)

(assert (=> d!1389463 (=> res!1878624 e!2812854)))

(assert (=> d!1389463 (= res!1878624 (or ((_ is Nil!50629) (toList!4316 lm!1477)) ((_ is Nil!50629) (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1389463 (= (isStrictlySorted!424 (toList!4316 lm!1477)) e!2812854)))

(declare-fun b!4515048 () Bool)

(declare-fun e!2812855 () Bool)

(assert (=> b!4515048 (= e!2812854 e!2812855)))

(declare-fun res!1878625 () Bool)

(assert (=> b!4515048 (=> (not res!1878625) (not e!2812855))))

(assert (=> b!4515048 (= res!1878625 (bvslt (_1!28820 (h!56476 (toList!4316 lm!1477))) (_1!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4515049 () Bool)

(assert (=> b!4515049 (= e!2812855 (isStrictlySorted!424 (t!357715 (toList!4316 lm!1477))))))

(assert (= (and d!1389463 (not res!1878624)) b!4515048))

(assert (= (and b!4515048 res!1878625) b!4515049))

(declare-fun m!5258291 () Bool)

(assert (=> b!4515049 m!5258291))

(assert (=> d!1389403 d!1389463))

(declare-fun bs!850023 () Bool)

(declare-fun b!4515053 () Bool)

(assert (= bs!850023 (and b!4515053 b!4514749)))

(declare-fun lambda!171557 () Int)

(assert (=> bs!850023 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692734) (= lambda!171557 lambda!171464))))

(declare-fun bs!850024 () Bool)

(assert (= bs!850024 (and b!4515053 b!4514932)))

(assert (=> bs!850024 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693147) (= lambda!171557 lambda!171539))))

(assert (=> bs!850023 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692939) (= lambda!171557 lambda!171465))))

(assert (=> bs!850024 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692722) (= lambda!171557 lambda!171538))))

(declare-fun bs!850025 () Bool)

(assert (= bs!850025 (and b!4515053 b!4514750)))

(assert (=> bs!850025 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692734) (= lambda!171557 lambda!171463))))

(declare-fun bs!850026 () Bool)

(assert (= bs!850026 (and b!4515053 d!1389235)))

(assert (=> bs!850026 (not (= lambda!171557 lambda!171416))))

(declare-fun bs!850027 () Bool)

(assert (= bs!850027 (and b!4515053 d!1389427)))

(assert (=> bs!850027 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693145) (= lambda!171557 lambda!171540))))

(declare-fun bs!850028 () Bool)

(assert (= bs!850028 (and b!4515053 b!4514933)))

(assert (=> bs!850028 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692722) (= lambda!171557 lambda!171537))))

(declare-fun bs!850029 () Bool)

(assert (= bs!850029 (and b!4515053 d!1389279)))

(assert (=> bs!850029 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692937) (= lambda!171557 lambda!171466))))

(assert (=> b!4515053 true))

(declare-fun bs!850030 () Bool)

(declare-fun b!4515052 () Bool)

(assert (= bs!850030 (and b!4515052 b!4514749)))

(declare-fun lambda!171558 () Int)

(assert (=> bs!850030 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692734) (= lambda!171558 lambda!171464))))

(declare-fun bs!850031 () Bool)

(assert (= bs!850031 (and b!4515052 b!4514932)))

(assert (=> bs!850031 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693147) (= lambda!171558 lambda!171539))))

(assert (=> bs!850030 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692939) (= lambda!171558 lambda!171465))))

(declare-fun bs!850032 () Bool)

(assert (= bs!850032 (and b!4515052 b!4515053)))

(assert (=> bs!850032 (= lambda!171558 lambda!171557)))

(assert (=> bs!850031 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692722) (= lambda!171558 lambda!171538))))

(declare-fun bs!850033 () Bool)

(assert (= bs!850033 (and b!4515052 b!4514750)))

(assert (=> bs!850033 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692734) (= lambda!171558 lambda!171463))))

(declare-fun bs!850034 () Bool)

(assert (= bs!850034 (and b!4515052 d!1389235)))

(assert (=> bs!850034 (not (= lambda!171558 lambda!171416))))

(declare-fun bs!850035 () Bool)

(assert (= bs!850035 (and b!4515052 d!1389427)))

(assert (=> bs!850035 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693145) (= lambda!171558 lambda!171540))))

(declare-fun bs!850036 () Bool)

(assert (= bs!850036 (and b!4515052 b!4514933)))

(assert (=> bs!850036 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692722) (= lambda!171558 lambda!171537))))

(declare-fun bs!850037 () Bool)

(assert (= bs!850037 (and b!4515052 d!1389279)))

(assert (=> bs!850037 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1692937) (= lambda!171558 lambda!171466))))

(assert (=> b!4515052 true))

(declare-fun lambda!171559 () Int)

(declare-fun lt!1693223 () ListMap!3577)

(assert (=> bs!850031 (= (= lt!1693223 lt!1693147) (= lambda!171559 lambda!171539))))

(assert (=> bs!850030 (= (= lt!1693223 lt!1692939) (= lambda!171559 lambda!171465))))

(assert (=> bs!850032 (= (= lt!1693223 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171559 lambda!171557))))

(assert (=> bs!850031 (= (= lt!1693223 lt!1692722) (= lambda!171559 lambda!171538))))

(assert (=> bs!850033 (= (= lt!1693223 lt!1692734) (= lambda!171559 lambda!171463))))

(assert (=> bs!850030 (= (= lt!1693223 lt!1692734) (= lambda!171559 lambda!171464))))

(assert (=> b!4515052 (= (= lt!1693223 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171559 lambda!171558))))

(assert (=> bs!850034 (not (= lambda!171559 lambda!171416))))

(assert (=> bs!850035 (= (= lt!1693223 lt!1693145) (= lambda!171559 lambda!171540))))

(assert (=> bs!850036 (= (= lt!1693223 lt!1692722) (= lambda!171559 lambda!171537))))

(assert (=> bs!850037 (= (= lt!1693223 lt!1692937) (= lambda!171559 lambda!171466))))

(assert (=> b!4515052 true))

(declare-fun bs!850038 () Bool)

(declare-fun d!1389469 () Bool)

(assert (= bs!850038 (and d!1389469 b!4514932)))

(declare-fun lambda!171560 () Int)

(declare-fun lt!1693221 () ListMap!3577)

(assert (=> bs!850038 (= (= lt!1693221 lt!1693147) (= lambda!171560 lambda!171539))))

(declare-fun bs!850039 () Bool)

(assert (= bs!850039 (and d!1389469 b!4514749)))

(assert (=> bs!850039 (= (= lt!1693221 lt!1692939) (= lambda!171560 lambda!171465))))

(declare-fun bs!850040 () Bool)

(assert (= bs!850040 (and d!1389469 b!4515053)))

(assert (=> bs!850040 (= (= lt!1693221 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171560 lambda!171557))))

(assert (=> bs!850038 (= (= lt!1693221 lt!1692722) (= lambda!171560 lambda!171538))))

(declare-fun bs!850041 () Bool)

(assert (= bs!850041 (and d!1389469 b!4515052)))

(assert (=> bs!850041 (= (= lt!1693221 lt!1693223) (= lambda!171560 lambda!171559))))

(declare-fun bs!850042 () Bool)

(assert (= bs!850042 (and d!1389469 b!4514750)))

(assert (=> bs!850042 (= (= lt!1693221 lt!1692734) (= lambda!171560 lambda!171463))))

(assert (=> bs!850039 (= (= lt!1693221 lt!1692734) (= lambda!171560 lambda!171464))))

(assert (=> bs!850041 (= (= lt!1693221 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171560 lambda!171558))))

(declare-fun bs!850043 () Bool)

(assert (= bs!850043 (and d!1389469 d!1389235)))

(assert (=> bs!850043 (not (= lambda!171560 lambda!171416))))

(declare-fun bs!850044 () Bool)

(assert (= bs!850044 (and d!1389469 d!1389427)))

(assert (=> bs!850044 (= (= lt!1693221 lt!1693145) (= lambda!171560 lambda!171540))))

(declare-fun bs!850045 () Bool)

(assert (= bs!850045 (and d!1389469 b!4514933)))

(assert (=> bs!850045 (= (= lt!1693221 lt!1692722) (= lambda!171560 lambda!171537))))

(declare-fun bs!850046 () Bool)

(assert (= bs!850046 (and d!1389469 d!1389279)))

(assert (=> bs!850046 (= (= lt!1693221 lt!1692937) (= lambda!171560 lambda!171466))))

(assert (=> d!1389469 true))

(declare-fun c!770234 () Bool)

(declare-fun call!314443 () Bool)

(declare-fun bm!314438 () Bool)

(assert (=> bm!314438 (= call!314443 (forall!10247 (ite c!770234 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692730))))) (ite c!770234 lambda!171557 lambda!171559)))))

(declare-fun bm!314439 () Bool)

(declare-fun call!314444 () Bool)

(assert (=> bm!314439 (= call!314444 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (ite c!770234 lambda!171557 lambda!171559)))))

(declare-fun bm!314440 () Bool)

(declare-fun call!314445 () Unit!94076)

(assert (=> bm!314440 (= call!314445 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))))))

(declare-fun b!4515051 () Bool)

(declare-fun e!2812858 () Bool)

(assert (=> b!4515051 (= e!2812858 call!314444)))

(declare-fun e!2812857 () ListMap!3577)

(assert (=> b!4515052 (= e!2812857 lt!1693223)))

(declare-fun lt!1693227 () ListMap!3577)

(assert (=> b!4515052 (= lt!1693227 (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))))))

(assert (=> b!4515052 (= lt!1693223 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692730)))) (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))))

(declare-fun lt!1693219 () Unit!94076)

(assert (=> b!4515052 (= lt!1693219 call!314445)))

(assert (=> b!4515052 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) lambda!171558)))

(declare-fun lt!1693215 () Unit!94076)

(assert (=> b!4515052 (= lt!1693215 lt!1693219)))

(assert (=> b!4515052 (forall!10247 (toList!4315 lt!1693227) lambda!171559)))

(declare-fun lt!1693230 () Unit!94076)

(declare-fun Unit!94150 () Unit!94076)

(assert (=> b!4515052 (= lt!1693230 Unit!94150)))

(assert (=> b!4515052 call!314443))

(declare-fun lt!1693220 () Unit!94076)

(declare-fun Unit!94151 () Unit!94076)

(assert (=> b!4515052 (= lt!1693220 Unit!94151)))

(declare-fun lt!1693222 () Unit!94076)

(declare-fun Unit!94152 () Unit!94076)

(assert (=> b!4515052 (= lt!1693222 Unit!94152)))

(declare-fun lt!1693229 () Unit!94076)

(assert (=> b!4515052 (= lt!1693229 (forallContained!2498 (toList!4315 lt!1693227) lambda!171559 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))))))

(assert (=> b!4515052 (contains!13343 lt!1693227 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))))))

(declare-fun lt!1693228 () Unit!94076)

(declare-fun Unit!94154 () Unit!94076)

(assert (=> b!4515052 (= lt!1693228 Unit!94154)))

(assert (=> b!4515052 (contains!13343 lt!1693223 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))))))

(declare-fun lt!1693214 () Unit!94076)

(declare-fun Unit!94156 () Unit!94076)

(assert (=> b!4515052 (= lt!1693214 Unit!94156)))

(assert (=> b!4515052 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692730))) lambda!171559)))

(declare-fun lt!1693217 () Unit!94076)

(declare-fun Unit!94157 () Unit!94076)

(assert (=> b!4515052 (= lt!1693217 Unit!94157)))

(assert (=> b!4515052 (forall!10247 (toList!4315 lt!1693227) lambda!171559)))

(declare-fun lt!1693212 () Unit!94076)

(declare-fun Unit!94158 () Unit!94076)

(assert (=> b!4515052 (= lt!1693212 Unit!94158)))

(declare-fun lt!1693225 () Unit!94076)

(declare-fun Unit!94159 () Unit!94076)

(assert (=> b!4515052 (= lt!1693225 Unit!94159)))

(declare-fun lt!1693224 () Unit!94076)

(assert (=> b!4515052 (= lt!1693224 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693223 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))))

(assert (=> b!4515052 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) lambda!171559)))

(declare-fun lt!1693210 () Unit!94076)

(assert (=> b!4515052 (= lt!1693210 lt!1693224)))

(assert (=> b!4515052 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) lambda!171559)))

(declare-fun lt!1693216 () Unit!94076)

(declare-fun Unit!94160 () Unit!94076)

(assert (=> b!4515052 (= lt!1693216 Unit!94160)))

(declare-fun res!1878626 () Bool)

(assert (=> b!4515052 (= res!1878626 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692730))) lambda!171559))))

(assert (=> b!4515052 (=> (not res!1878626) (not e!2812858))))

(assert (=> b!4515052 e!2812858))

(declare-fun lt!1693213 () Unit!94076)

(declare-fun Unit!94161 () Unit!94076)

(assert (=> b!4515052 (= lt!1693213 Unit!94161)))

(declare-fun b!4515050 () Bool)

(declare-fun res!1878627 () Bool)

(declare-fun e!2812856 () Bool)

(assert (=> b!4515050 (=> (not res!1878627) (not e!2812856))))

(assert (=> b!4515050 (= res!1878627 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) lambda!171560))))

(assert (=> d!1389469 e!2812856))

(declare-fun res!1878628 () Bool)

(assert (=> d!1389469 (=> (not res!1878628) (not e!2812856))))

(assert (=> d!1389469 (= res!1878628 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692730))) lambda!171560))))

(assert (=> d!1389469 (= lt!1693221 e!2812857)))

(assert (=> d!1389469 (= c!770234 ((_ is Nil!50628) (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(assert (=> d!1389469 (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692730))))))

(assert (=> d!1389469 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692730))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) lt!1693221)))

(assert (=> b!4515053 (= e!2812857 (extractMap!1210 (t!357715 (toList!4316 lt!1692730))))))

(declare-fun lt!1693218 () Unit!94076)

(assert (=> b!4515053 (= lt!1693218 call!314445)))

(assert (=> b!4515053 call!314444))

(declare-fun lt!1693211 () Unit!94076)

(assert (=> b!4515053 (= lt!1693211 lt!1693218)))

(assert (=> b!4515053 call!314443))

(declare-fun lt!1693226 () Unit!94076)

(declare-fun Unit!94162 () Unit!94076)

(assert (=> b!4515053 (= lt!1693226 Unit!94162)))

(declare-fun b!4515054 () Bool)

(assert (=> b!4515054 (= e!2812856 (invariantList!1011 (toList!4315 lt!1693221)))))

(assert (= (and d!1389469 c!770234) b!4515053))

(assert (= (and d!1389469 (not c!770234)) b!4515052))

(assert (= (and b!4515052 res!1878626) b!4515051))

(assert (= (or b!4515053 b!4515052) bm!314438))

(assert (= (or b!4515053 b!4515051) bm!314439))

(assert (= (or b!4515053 b!4515052) bm!314440))

(assert (= (and d!1389469 res!1878628) b!4515050))

(assert (= (and b!4515050 res!1878627) b!4515054))

(declare-fun m!5258313 () Bool)

(assert (=> bm!314438 m!5258313))

(declare-fun m!5258315 () Bool)

(assert (=> b!4515052 m!5258315))

(declare-fun m!5258317 () Bool)

(assert (=> b!4515052 m!5258317))

(declare-fun m!5258319 () Bool)

(assert (=> b!4515052 m!5258319))

(declare-fun m!5258321 () Bool)

(assert (=> b!4515052 m!5258321))

(assert (=> b!4515052 m!5258321))

(declare-fun m!5258323 () Bool)

(assert (=> b!4515052 m!5258323))

(assert (=> b!4515052 m!5258315))

(declare-fun m!5258325 () Bool)

(assert (=> b!4515052 m!5258325))

(assert (=> b!4515052 m!5257959))

(declare-fun m!5258327 () Bool)

(assert (=> b!4515052 m!5258327))

(assert (=> b!4515052 m!5257959))

(assert (=> b!4515052 m!5258317))

(assert (=> b!4515052 m!5258323))

(declare-fun m!5258329 () Bool)

(assert (=> b!4515052 m!5258329))

(declare-fun m!5258331 () Bool)

(assert (=> b!4515052 m!5258331))

(declare-fun m!5258333 () Bool)

(assert (=> b!4515052 m!5258333))

(declare-fun m!5258335 () Bool)

(assert (=> bm!314439 m!5258335))

(assert (=> bm!314440 m!5257959))

(declare-fun m!5258337 () Bool)

(assert (=> bm!314440 m!5258337))

(declare-fun m!5258339 () Bool)

(assert (=> b!4515054 m!5258339))

(declare-fun m!5258341 () Bool)

(assert (=> b!4515050 m!5258341))

(declare-fun m!5258343 () Bool)

(assert (=> d!1389469 m!5258343))

(declare-fun m!5258345 () Bool)

(assert (=> d!1389469 m!5258345))

(assert (=> b!4514863 d!1389469))

(declare-fun bs!850047 () Bool)

(declare-fun d!1389473 () Bool)

(assert (= bs!850047 (and d!1389473 d!1389333)))

(declare-fun lambda!171561 () Int)

(assert (=> bs!850047 (= lambda!171561 lambda!171504)))

(declare-fun bs!850048 () Bool)

(assert (= bs!850048 (and d!1389473 start!446664)))

(assert (=> bs!850048 (= lambda!171561 lambda!171413)))

(declare-fun bs!850049 () Bool)

(assert (= bs!850049 (and d!1389473 d!1389351)))

(assert (=> bs!850049 (= lambda!171561 lambda!171520)))

(declare-fun bs!850050 () Bool)

(assert (= bs!850050 (and d!1389473 d!1389349)))

(assert (=> bs!850050 (= lambda!171561 lambda!171510)))

(declare-fun bs!850051 () Bool)

(assert (= bs!850051 (and d!1389473 d!1389385)))

(assert (=> bs!850051 (= lambda!171561 lambda!171531)))

(declare-fun bs!850052 () Bool)

(assert (= bs!850052 (and d!1389473 d!1389371)))

(assert (=> bs!850052 (= lambda!171561 lambda!171525)))

(declare-fun bs!850053 () Bool)

(assert (= bs!850053 (and d!1389473 d!1389405)))

(assert (=> bs!850053 (= lambda!171561 lambda!171535)))

(declare-fun bs!850054 () Bool)

(assert (= bs!850054 (and d!1389473 d!1389431)))

(assert (=> bs!850054 (= lambda!171561 lambda!171543)))

(declare-fun bs!850055 () Bool)

(assert (= bs!850055 (and d!1389473 d!1389369)))

(assert (=> bs!850055 (not (= lambda!171561 lambda!171524))))

(declare-fun bs!850056 () Bool)

(assert (= bs!850056 (and d!1389473 d!1389397)))

(assert (=> bs!850056 (= lambda!171561 lambda!171532)))

(declare-fun bs!850057 () Bool)

(assert (= bs!850057 (and d!1389473 d!1389367)))

(assert (=> bs!850057 (= lambda!171561 lambda!171521)))

(declare-fun bs!850058 () Bool)

(assert (= bs!850058 (and d!1389473 d!1389421)))

(assert (=> bs!850058 (= lambda!171561 lambda!171536)))

(declare-fun bs!850059 () Bool)

(assert (= bs!850059 (and d!1389473 d!1389325)))

(assert (=> bs!850059 (= lambda!171561 lambda!171497)))

(declare-fun lt!1693231 () ListMap!3577)

(assert (=> d!1389473 (invariantList!1011 (toList!4315 lt!1693231))))

(declare-fun e!2812859 () ListMap!3577)

(assert (=> d!1389473 (= lt!1693231 e!2812859)))

(declare-fun c!770235 () Bool)

(assert (=> d!1389473 (= c!770235 ((_ is Cons!50629) (t!357715 (toList!4316 lt!1692730))))))

(assert (=> d!1389473 (forall!10245 (t!357715 (toList!4316 lt!1692730)) lambda!171561)))

(assert (=> d!1389473 (= (extractMap!1210 (t!357715 (toList!4316 lt!1692730))) lt!1693231)))

(declare-fun b!4515055 () Bool)

(assert (=> b!4515055 (= e!2812859 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 lt!1692730)))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lt!1692730))))))))

(declare-fun b!4515056 () Bool)

(assert (=> b!4515056 (= e!2812859 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389473 c!770235) b!4515055))

(assert (= (and d!1389473 (not c!770235)) b!4515056))

(declare-fun m!5258347 () Bool)

(assert (=> d!1389473 m!5258347))

(declare-fun m!5258349 () Bool)

(assert (=> d!1389473 m!5258349))

(declare-fun m!5258351 () Bool)

(assert (=> b!4515055 m!5258351))

(assert (=> b!4515055 m!5258351))

(declare-fun m!5258353 () Bool)

(assert (=> b!4515055 m!5258353))

(assert (=> b!4514863 d!1389473))

(declare-fun d!1389475 () Bool)

(declare-fun res!1878633 () Bool)

(declare-fun e!2812864 () Bool)

(assert (=> d!1389475 (=> res!1878633 e!2812864)))

(assert (=> d!1389475 (= res!1878633 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (= (_1!28820 (h!56476 (toList!4316 lm!1477))) lt!1692744)))))

(assert (=> d!1389475 (= (containsKey!1763 (toList!4316 lm!1477) lt!1692744) e!2812864)))

(declare-fun b!4515061 () Bool)

(declare-fun e!2812865 () Bool)

(assert (=> b!4515061 (= e!2812864 e!2812865)))

(declare-fun res!1878634 () Bool)

(assert (=> b!4515061 (=> (not res!1878634) (not e!2812865))))

(assert (=> b!4515061 (= res!1878634 (and (or (not ((_ is Cons!50629) (toList!4316 lm!1477))) (bvsle (_1!28820 (h!56476 (toList!4316 lm!1477))) lt!1692744)) ((_ is Cons!50629) (toList!4316 lm!1477)) (bvslt (_1!28820 (h!56476 (toList!4316 lm!1477))) lt!1692744)))))

(declare-fun b!4515062 () Bool)

(assert (=> b!4515062 (= e!2812865 (containsKey!1763 (t!357715 (toList!4316 lm!1477)) lt!1692744))))

(assert (= (and d!1389475 (not res!1878633)) b!4515061))

(assert (= (and b!4515061 res!1878634) b!4515062))

(declare-fun m!5258355 () Bool)

(assert (=> b!4515062 m!5258355))

(assert (=> d!1389415 d!1389475))

(declare-fun b!4515063 () Bool)

(declare-fun e!2812871 () Bool)

(assert (=> b!4515063 (= e!2812871 (contains!13345 (keys!17582 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(declare-fun d!1389477 () Bool)

(declare-fun e!2812866 () Bool)

(assert (=> d!1389477 e!2812866))

(declare-fun res!1878635 () Bool)

(assert (=> d!1389477 (=> res!1878635 e!2812866)))

(declare-fun e!2812869 () Bool)

(assert (=> d!1389477 (= res!1878635 e!2812869)))

(declare-fun res!1878636 () Bool)

(assert (=> d!1389477 (=> (not res!1878636) (not e!2812869))))

(declare-fun lt!1693232 () Bool)

(assert (=> d!1389477 (= res!1878636 (not lt!1693232))))

(declare-fun lt!1693239 () Bool)

(assert (=> d!1389477 (= lt!1693232 lt!1693239)))

(declare-fun lt!1693237 () Unit!94076)

(declare-fun e!2812868 () Unit!94076)

(assert (=> d!1389477 (= lt!1693237 e!2812868)))

(declare-fun c!770237 () Bool)

(assert (=> d!1389477 (= c!770237 lt!1693239)))

(assert (=> d!1389477 (= lt!1693239 (containsKey!1766 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(assert (=> d!1389477 (= (contains!13343 (extractMap!1210 (toList!4316 lt!1692730)) key!3287) lt!1693232)))

(declare-fun b!4515064 () Bool)

(declare-fun e!2812867 () List!50755)

(assert (=> b!4515064 (= e!2812867 (keys!17582 (extractMap!1210 (toList!4316 lt!1692730))))))

(declare-fun b!4515065 () Bool)

(assert (=> b!4515065 (= e!2812867 (getKeysList!459 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730)))))))

(declare-fun b!4515066 () Bool)

(declare-fun e!2812870 () Unit!94076)

(declare-fun Unit!94164 () Unit!94076)

(assert (=> b!4515066 (= e!2812870 Unit!94164)))

(declare-fun b!4515067 () Bool)

(declare-fun lt!1693233 () Unit!94076)

(assert (=> b!4515067 (= e!2812868 lt!1693233)))

(declare-fun lt!1693235 () Unit!94076)

(assert (=> b!4515067 (= lt!1693235 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(assert (=> b!4515067 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(declare-fun lt!1693238 () Unit!94076)

(assert (=> b!4515067 (= lt!1693238 lt!1693235)))

(assert (=> b!4515067 (= lt!1693233 (lemmaInListThenGetKeysListContains!455 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(declare-fun call!314446 () Bool)

(assert (=> b!4515067 call!314446))

(declare-fun b!4515068 () Bool)

(assert (=> b!4515068 (= e!2812869 (not (contains!13345 (keys!17582 (extractMap!1210 (toList!4316 lt!1692730))) key!3287)))))

(declare-fun b!4515069 () Bool)

(assert (=> b!4515069 (= e!2812866 e!2812871)))

(declare-fun res!1878637 () Bool)

(assert (=> b!4515069 (=> (not res!1878637) (not e!2812871))))

(assert (=> b!4515069 (= res!1878637 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287)))))

(declare-fun b!4515070 () Bool)

(assert (=> b!4515070 (= e!2812868 e!2812870)))

(declare-fun c!770238 () Bool)

(assert (=> b!4515070 (= c!770238 call!314446)))

(declare-fun b!4515071 () Bool)

(assert (=> b!4515071 false))

(declare-fun lt!1693236 () Unit!94076)

(declare-fun lt!1693234 () Unit!94076)

(assert (=> b!4515071 (= lt!1693236 lt!1693234)))

(assert (=> b!4515071 (containsKey!1766 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287)))

(assert (=> b!4515071 (= lt!1693234 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287))))

(declare-fun Unit!94166 () Unit!94076)

(assert (=> b!4515071 (= e!2812870 Unit!94166)))

(declare-fun bm!314441 () Bool)

(assert (=> bm!314441 (= call!314446 (contains!13345 e!2812867 key!3287))))

(declare-fun c!770236 () Bool)

(assert (=> bm!314441 (= c!770236 c!770237)))

(assert (= (and d!1389477 c!770237) b!4515067))

(assert (= (and d!1389477 (not c!770237)) b!4515070))

(assert (= (and b!4515070 c!770238) b!4515071))

(assert (= (and b!4515070 (not c!770238)) b!4515066))

(assert (= (or b!4515067 b!4515070) bm!314441))

(assert (= (and bm!314441 c!770236) b!4515065))

(assert (= (and bm!314441 (not c!770236)) b!4515064))

(assert (= (and d!1389477 res!1878636) b!4515068))

(assert (= (and d!1389477 (not res!1878635)) b!4515069))

(assert (= (and b!4515069 res!1878637) b!4515063))

(declare-fun m!5258357 () Bool)

(assert (=> bm!314441 m!5258357))

(assert (=> b!4515064 m!5257357))

(declare-fun m!5258359 () Bool)

(assert (=> b!4515064 m!5258359))

(assert (=> b!4515063 m!5257357))

(assert (=> b!4515063 m!5258359))

(assert (=> b!4515063 m!5258359))

(declare-fun m!5258361 () Bool)

(assert (=> b!4515063 m!5258361))

(declare-fun m!5258363 () Bool)

(assert (=> d!1389477 m!5258363))

(declare-fun m!5258365 () Bool)

(assert (=> b!4515067 m!5258365))

(declare-fun m!5258367 () Bool)

(assert (=> b!4515067 m!5258367))

(assert (=> b!4515067 m!5258367))

(declare-fun m!5258369 () Bool)

(assert (=> b!4515067 m!5258369))

(declare-fun m!5258371 () Bool)

(assert (=> b!4515067 m!5258371))

(assert (=> b!4515071 m!5258363))

(declare-fun m!5258373 () Bool)

(assert (=> b!4515071 m!5258373))

(declare-fun m!5258375 () Bool)

(assert (=> b!4515065 m!5258375))

(assert (=> b!4515068 m!5257357))

(assert (=> b!4515068 m!5258359))

(assert (=> b!4515068 m!5258359))

(assert (=> b!4515068 m!5258361))

(assert (=> b!4515069 m!5258367))

(assert (=> b!4515069 m!5258367))

(assert (=> b!4515069 m!5258369))

(assert (=> d!1389351 d!1389477))

(assert (=> d!1389351 d!1389367))

(declare-fun d!1389479 () Bool)

(assert (=> d!1389479 (contains!13343 (extractMap!1210 (toList!4316 lt!1692730)) key!3287)))

(assert (=> d!1389479 true))

(declare-fun _$34!661 () Unit!94076)

(assert (=> d!1389479 (= (choose!29415 lt!1692730 key!3287 hashF!1107) _$34!661)))

(declare-fun bs!850071 () Bool)

(assert (= bs!850071 d!1389479))

(assert (=> bs!850071 m!5257357))

(assert (=> bs!850071 m!5257357))

(assert (=> bs!850071 m!5257929))

(assert (=> d!1389351 d!1389479))

(declare-fun d!1389483 () Bool)

(declare-fun res!1878638 () Bool)

(declare-fun e!2812872 () Bool)

(assert (=> d!1389483 (=> res!1878638 e!2812872)))

(assert (=> d!1389483 (= res!1878638 ((_ is Nil!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389483 (= (forall!10245 (toList!4316 lt!1692730) lambda!171520) e!2812872)))

(declare-fun b!4515073 () Bool)

(declare-fun e!2812873 () Bool)

(assert (=> b!4515073 (= e!2812872 e!2812873)))

(declare-fun res!1878639 () Bool)

(assert (=> b!4515073 (=> (not res!1878639) (not e!2812873))))

(assert (=> b!4515073 (= res!1878639 (dynLambda!21150 lambda!171520 (h!56476 (toList!4316 lt!1692730))))))

(declare-fun b!4515074 () Bool)

(assert (=> b!4515074 (= e!2812873 (forall!10245 (t!357715 (toList!4316 lt!1692730)) lambda!171520))))

(assert (= (and d!1389483 (not res!1878638)) b!4515073))

(assert (= (and b!4515073 res!1878639) b!4515074))

(declare-fun b_lambda!154121 () Bool)

(assert (=> (not b_lambda!154121) (not b!4515073)))

(declare-fun m!5258385 () Bool)

(assert (=> b!4515073 m!5258385))

(declare-fun m!5258387 () Bool)

(assert (=> b!4515074 m!5258387))

(assert (=> d!1389351 d!1389483))

(declare-fun d!1389485 () Bool)

(declare-fun c!770241 () Bool)

(assert (=> d!1389485 (= c!770241 ((_ is Nil!50628) (toList!4315 lt!1692724)))))

(declare-fun e!2812876 () (InoxSet tuple2!51050))

(assert (=> d!1389485 (= (content!8339 (toList!4315 lt!1692724)) e!2812876)))

(declare-fun b!4515079 () Bool)

(assert (=> b!4515079 (= e!2812876 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515080 () Bool)

(assert (=> b!4515080 (= e!2812876 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692724)) true) (content!8339 (t!357714 (toList!4315 lt!1692724)))))))

(assert (= (and d!1389485 c!770241) b!4515079))

(assert (= (and d!1389485 (not c!770241)) b!4515080))

(declare-fun m!5258389 () Bool)

(assert (=> b!4515080 m!5258389))

(declare-fun m!5258391 () Bool)

(assert (=> b!4515080 m!5258391))

(assert (=> d!1389417 d!1389485))

(declare-fun d!1389487 () Bool)

(declare-fun c!770242 () Bool)

(assert (=> d!1389487 (= c!770242 ((_ is Nil!50628) (toList!4315 lt!1692727)))))

(declare-fun e!2812877 () (InoxSet tuple2!51050))

(assert (=> d!1389487 (= (content!8339 (toList!4315 lt!1692727)) e!2812877)))

(declare-fun b!4515081 () Bool)

(assert (=> b!4515081 (= e!2812877 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515082 () Bool)

(assert (=> b!4515082 (= e!2812877 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692727)) true) (content!8339 (t!357714 (toList!4315 lt!1692727)))))))

(assert (= (and d!1389487 c!770242) b!4515081))

(assert (= (and d!1389487 (not c!770242)) b!4515082))

(declare-fun m!5258393 () Bool)

(assert (=> b!4515082 m!5258393))

(declare-fun m!5258395 () Bool)

(assert (=> b!4515082 m!5258395))

(assert (=> d!1389417 d!1389487))

(declare-fun d!1389489 () Bool)

(declare-fun e!2812878 () Bool)

(assert (=> d!1389489 e!2812878))

(declare-fun res!1878640 () Bool)

(assert (=> d!1389489 (=> (not res!1878640) (not e!2812878))))

(declare-fun lt!1693243 () ListLongMap!2947)

(assert (=> d!1389489 (= res!1878640 (contains!13342 lt!1693243 (_1!28820 (tuple2!51053 hash!344 newBucket!178))))))

(declare-fun lt!1693245 () List!50753)

(assert (=> d!1389489 (= lt!1693243 (ListLongMap!2948 lt!1693245))))

(declare-fun lt!1693246 () Unit!94076)

(declare-fun lt!1693244 () Unit!94076)

(assert (=> d!1389489 (= lt!1693246 lt!1693244)))

(assert (=> d!1389489 (= (getValueByKey!1079 lt!1693245 (_1!28820 (tuple2!51053 hash!344 newBucket!178))) (Some!11098 (_2!28820 (tuple2!51053 hash!344 newBucket!178))))))

(assert (=> d!1389489 (= lt!1693244 (lemmaContainsTupThenGetReturnValue!666 lt!1693245 (_1!28820 (tuple2!51053 hash!344 newBucket!178)) (_2!28820 (tuple2!51053 hash!344 newBucket!178))))))

(assert (=> d!1389489 (= lt!1693245 (insertStrictlySorted!402 (toList!4316 lt!1692730) (_1!28820 (tuple2!51053 hash!344 newBucket!178)) (_2!28820 (tuple2!51053 hash!344 newBucket!178))))))

(assert (=> d!1389489 (= (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)) lt!1693243)))

(declare-fun b!4515083 () Bool)

(declare-fun res!1878641 () Bool)

(assert (=> b!4515083 (=> (not res!1878641) (not e!2812878))))

(assert (=> b!4515083 (= res!1878641 (= (getValueByKey!1079 (toList!4316 lt!1693243) (_1!28820 (tuple2!51053 hash!344 newBucket!178))) (Some!11098 (_2!28820 (tuple2!51053 hash!344 newBucket!178)))))))

(declare-fun b!4515084 () Bool)

(assert (=> b!4515084 (= e!2812878 (contains!13341 (toList!4316 lt!1693243) (tuple2!51053 hash!344 newBucket!178)))))

(assert (= (and d!1389489 res!1878640) b!4515083))

(assert (= (and b!4515083 res!1878641) b!4515084))

(declare-fun m!5258397 () Bool)

(assert (=> d!1389489 m!5258397))

(declare-fun m!5258399 () Bool)

(assert (=> d!1389489 m!5258399))

(declare-fun m!5258401 () Bool)

(assert (=> d!1389489 m!5258401))

(declare-fun m!5258403 () Bool)

(assert (=> d!1389489 m!5258403))

(declare-fun m!5258405 () Bool)

(assert (=> b!4515083 m!5258405))

(declare-fun m!5258407 () Bool)

(assert (=> b!4515084 m!5258407))

(assert (=> d!1389385 d!1389489))

(declare-fun bs!850072 () Bool)

(declare-fun d!1389491 () Bool)

(assert (= bs!850072 (and d!1389491 d!1389333)))

(declare-fun lambda!171567 () Int)

(assert (=> bs!850072 (= lambda!171567 lambda!171504)))

(declare-fun bs!850073 () Bool)

(assert (= bs!850073 (and d!1389491 start!446664)))

(assert (=> bs!850073 (= lambda!171567 lambda!171413)))

(declare-fun bs!850074 () Bool)

(assert (= bs!850074 (and d!1389491 d!1389351)))

(assert (=> bs!850074 (= lambda!171567 lambda!171520)))

(declare-fun bs!850075 () Bool)

(assert (= bs!850075 (and d!1389491 d!1389349)))

(assert (=> bs!850075 (= lambda!171567 lambda!171510)))

(declare-fun bs!850076 () Bool)

(assert (= bs!850076 (and d!1389491 d!1389385)))

(assert (=> bs!850076 (= lambda!171567 lambda!171531)))

(declare-fun bs!850077 () Bool)

(assert (= bs!850077 (and d!1389491 d!1389371)))

(assert (=> bs!850077 (= lambda!171567 lambda!171525)))

(declare-fun bs!850078 () Bool)

(assert (= bs!850078 (and d!1389491 d!1389405)))

(assert (=> bs!850078 (= lambda!171567 lambda!171535)))

(declare-fun bs!850079 () Bool)

(assert (= bs!850079 (and d!1389491 d!1389473)))

(assert (=> bs!850079 (= lambda!171567 lambda!171561)))

(declare-fun bs!850080 () Bool)

(assert (= bs!850080 (and d!1389491 d!1389431)))

(assert (=> bs!850080 (= lambda!171567 lambda!171543)))

(declare-fun bs!850081 () Bool)

(assert (= bs!850081 (and d!1389491 d!1389369)))

(assert (=> bs!850081 (not (= lambda!171567 lambda!171524))))

(declare-fun bs!850082 () Bool)

(assert (= bs!850082 (and d!1389491 d!1389397)))

(assert (=> bs!850082 (= lambda!171567 lambda!171532)))

(declare-fun bs!850083 () Bool)

(assert (= bs!850083 (and d!1389491 d!1389367)))

(assert (=> bs!850083 (= lambda!171567 lambda!171521)))

(declare-fun bs!850084 () Bool)

(assert (= bs!850084 (and d!1389491 d!1389421)))

(assert (=> bs!850084 (= lambda!171567 lambda!171536)))

(declare-fun bs!850085 () Bool)

(assert (= bs!850085 (and d!1389491 d!1389325)))

(assert (=> bs!850085 (= lambda!171567 lambda!171497)))

(declare-fun lt!1693247 () ListMap!3577)

(assert (=> d!1389491 (invariantList!1011 (toList!4315 lt!1693247))))

(declare-fun e!2812879 () ListMap!3577)

(assert (=> d!1389491 (= lt!1693247 e!2812879)))

(declare-fun c!770243 () Bool)

(assert (=> d!1389491 (= c!770243 ((_ is Cons!50629) (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))))))

(assert (=> d!1389491 (forall!10245 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178))) lambda!171567)))

(assert (=> d!1389491 (= (extractMap!1210 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))) lt!1693247)))

(declare-fun b!4515085 () Bool)

(assert (=> b!4515085 (= e!2812879 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178))))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))))))))

(declare-fun b!4515086 () Bool)

(assert (=> b!4515086 (= e!2812879 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389491 c!770243) b!4515085))

(assert (= (and d!1389491 (not c!770243)) b!4515086))

(declare-fun m!5258409 () Bool)

(assert (=> d!1389491 m!5258409))

(declare-fun m!5258411 () Bool)

(assert (=> d!1389491 m!5258411))

(declare-fun m!5258413 () Bool)

(assert (=> b!4515085 m!5258413))

(assert (=> b!4515085 m!5258413))

(declare-fun m!5258415 () Bool)

(assert (=> b!4515085 m!5258415))

(assert (=> d!1389385 d!1389491))

(declare-fun d!1389493 () Bool)

(assert (=> d!1389493 (eq!611 (extractMap!1210 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))) (-!380 (extractMap!1210 (toList!4316 lt!1692730)) key!3287))))

(assert (=> d!1389493 true))

(declare-fun _$8!635 () Unit!94076)

(assert (=> d!1389493 (= (choose!29417 lt!1692730 hash!344 newBucket!178 key!3287 hashF!1107) _$8!635)))

(declare-fun bs!850086 () Bool)

(assert (= bs!850086 d!1389493))

(assert (=> bs!850086 m!5258033))

(assert (=> bs!850086 m!5258029))

(assert (=> bs!850086 m!5258035))

(assert (=> bs!850086 m!5257357))

(assert (=> bs!850086 m!5258033))

(assert (=> bs!850086 m!5258027))

(assert (=> bs!850086 m!5257357))

(assert (=> bs!850086 m!5258029))

(assert (=> d!1389385 d!1389493))

(declare-fun d!1389497 () Bool)

(declare-fun res!1878648 () Bool)

(declare-fun e!2812883 () Bool)

(assert (=> d!1389497 (=> res!1878648 e!2812883)))

(assert (=> d!1389497 (= res!1878648 ((_ is Nil!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389497 (= (forall!10245 (toList!4316 lt!1692730) lambda!171531) e!2812883)))

(declare-fun b!4515093 () Bool)

(declare-fun e!2812884 () Bool)

(assert (=> b!4515093 (= e!2812883 e!2812884)))

(declare-fun res!1878649 () Bool)

(assert (=> b!4515093 (=> (not res!1878649) (not e!2812884))))

(assert (=> b!4515093 (= res!1878649 (dynLambda!21150 lambda!171531 (h!56476 (toList!4316 lt!1692730))))))

(declare-fun b!4515094 () Bool)

(assert (=> b!4515094 (= e!2812884 (forall!10245 (t!357715 (toList!4316 lt!1692730)) lambda!171531))))

(assert (= (and d!1389497 (not res!1878648)) b!4515093))

(assert (= (and b!4515093 res!1878649) b!4515094))

(declare-fun b_lambda!154123 () Bool)

(assert (=> (not b_lambda!154123) (not b!4515093)))

(declare-fun m!5258429 () Bool)

(assert (=> b!4515093 m!5258429))

(declare-fun m!5258431 () Bool)

(assert (=> b!4515094 m!5258431))

(assert (=> d!1389385 d!1389497))

(assert (=> d!1389385 d!1389367))

(declare-fun d!1389499 () Bool)

(assert (=> d!1389499 (= (eq!611 (extractMap!1210 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))) (-!380 (extractMap!1210 (toList!4316 lt!1692730)) key!3287)) (= (content!8339 (toList!4315 (extractMap!1210 (toList!4316 (+!1526 lt!1692730 (tuple2!51053 hash!344 newBucket!178)))))) (content!8339 (toList!4315 (-!380 (extractMap!1210 (toList!4316 lt!1692730)) key!3287)))))))

(declare-fun bs!850087 () Bool)

(assert (= bs!850087 d!1389499))

(declare-fun m!5258433 () Bool)

(assert (=> bs!850087 m!5258433))

(declare-fun m!5258435 () Bool)

(assert (=> bs!850087 m!5258435))

(assert (=> d!1389385 d!1389499))

(declare-fun d!1389501 () Bool)

(declare-fun e!2812885 () Bool)

(assert (=> d!1389501 e!2812885))

(declare-fun res!1878650 () Bool)

(assert (=> d!1389501 (=> (not res!1878650) (not e!2812885))))

(declare-fun lt!1693260 () ListMap!3577)

(assert (=> d!1389501 (= res!1878650 (not (contains!13343 lt!1693260 key!3287)))))

(assert (=> d!1389501 (= lt!1693260 (ListMap!3578 (removePresrvNoDuplicatedKeys!135 (toList!4315 (extractMap!1210 (toList!4316 lt!1692730))) key!3287)))))

(assert (=> d!1389501 (= (-!380 (extractMap!1210 (toList!4316 lt!1692730)) key!3287) lt!1693260)))

(declare-fun b!4515095 () Bool)

(assert (=> b!4515095 (= e!2812885 (= ((_ map and) (content!8341 (keys!17582 (extractMap!1210 (toList!4316 lt!1692730)))) ((_ map not) (store ((as const (Array K!12025 Bool)) false) key!3287 true))) (content!8341 (keys!17582 lt!1693260))))))

(assert (= (and d!1389501 res!1878650) b!4515095))

(declare-fun m!5258437 () Bool)

(assert (=> d!1389501 m!5258437))

(declare-fun m!5258439 () Bool)

(assert (=> d!1389501 m!5258439))

(declare-fun m!5258441 () Bool)

(assert (=> b!4515095 m!5258441))

(assert (=> b!4515095 m!5258011))

(assert (=> b!4515095 m!5257357))

(assert (=> b!4515095 m!5258359))

(assert (=> b!4515095 m!5258359))

(declare-fun m!5258443 () Bool)

(assert (=> b!4515095 m!5258443))

(assert (=> b!4515095 m!5258441))

(declare-fun m!5258445 () Bool)

(assert (=> b!4515095 m!5258445))

(assert (=> d!1389385 d!1389501))

(declare-fun bs!850088 () Bool)

(declare-fun b!4515099 () Bool)

(assert (= bs!850088 (and b!4515099 b!4514958)))

(declare-fun lambda!171568 () Int)

(assert (=> bs!850088 (= (= (toList!4315 lt!1692728) (toList!4315 lt!1692724)) (= lambda!171568 lambda!171548))))

(declare-fun bs!850089 () Bool)

(assert (= bs!850089 (and b!4515099 b!4515023)))

(assert (=> bs!850089 (= (= (toList!4315 lt!1692728) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171568 lambda!171555))))

(assert (=> b!4515099 true))

(declare-fun bs!850090 () Bool)

(declare-fun b!4515100 () Bool)

(assert (= bs!850090 (and b!4515100 b!4514959)))

(declare-fun lambda!171569 () Int)

(assert (=> bs!850090 (= lambda!171569 lambda!171549)))

(declare-fun bs!850091 () Bool)

(assert (= bs!850091 (and b!4515100 b!4515024)))

(assert (=> bs!850091 (= lambda!171569 lambda!171556)))

(declare-fun d!1389503 () Bool)

(declare-fun e!2812888 () Bool)

(assert (=> d!1389503 e!2812888))

(declare-fun res!1878654 () Bool)

(assert (=> d!1389503 (=> (not res!1878654) (not e!2812888))))

(declare-fun lt!1693261 () List!50755)

(assert (=> d!1389503 (= res!1878654 (noDuplicate!741 lt!1693261))))

(assert (=> d!1389503 (= lt!1693261 (getKeysList!459 (toList!4315 lt!1692728)))))

(assert (=> d!1389503 (= (keys!17582 lt!1692728) lt!1693261)))

(declare-fun b!4515098 () Bool)

(declare-fun res!1878655 () Bool)

(assert (=> b!4515098 (=> (not res!1878655) (not e!2812888))))

(assert (=> b!4515098 (= res!1878655 (= (length!338 lt!1693261) (length!339 (toList!4315 lt!1692728))))))

(declare-fun res!1878653 () Bool)

(assert (=> b!4515099 (=> (not res!1878653) (not e!2812888))))

(assert (=> b!4515099 (= res!1878653 (forall!10248 lt!1693261 lambda!171568))))

(assert (=> b!4515100 (= e!2812888 (= (content!8341 lt!1693261) (content!8341 (map!11129 (toList!4315 lt!1692728) lambda!171569))))))

(assert (= (and d!1389503 res!1878654) b!4515098))

(assert (= (and b!4515098 res!1878655) b!4515099))

(assert (= (and b!4515099 res!1878653) b!4515100))

(declare-fun m!5258447 () Bool)

(assert (=> d!1389503 m!5258447))

(assert (=> d!1389503 m!5257953))

(declare-fun m!5258449 () Bool)

(assert (=> b!4515098 m!5258449))

(declare-fun m!5258451 () Bool)

(assert (=> b!4515098 m!5258451))

(declare-fun m!5258453 () Bool)

(assert (=> b!4515099 m!5258453))

(declare-fun m!5258455 () Bool)

(assert (=> b!4515100 m!5258455))

(declare-fun m!5258457 () Bool)

(assert (=> b!4515100 m!5258457))

(assert (=> b!4515100 m!5258457))

(declare-fun m!5258459 () Bool)

(assert (=> b!4515100 m!5258459))

(assert (=> b!4514855 d!1389503))

(declare-fun b!4515101 () Bool)

(declare-fun e!2812890 () List!50752)

(assert (=> b!4515101 (= e!2812890 (t!357714 (t!357714 lt!1692723)))))

(declare-fun b!4515103 () Bool)

(declare-fun e!2812889 () List!50752)

(assert (=> b!4515103 (= e!2812889 (Cons!50628 (h!56475 (t!357714 lt!1692723)) (removePairForKey!781 (t!357714 (t!357714 lt!1692723)) key!3287)))))

(declare-fun b!4515104 () Bool)

(assert (=> b!4515104 (= e!2812889 Nil!50628)))

(declare-fun d!1389505 () Bool)

(declare-fun lt!1693264 () List!50752)

(assert (=> d!1389505 (not (containsKey!1762 lt!1693264 key!3287))))

(assert (=> d!1389505 (= lt!1693264 e!2812890)))

(declare-fun c!770245 () Bool)

(assert (=> d!1389505 (= c!770245 (and ((_ is Cons!50628) (t!357714 lt!1692723)) (= (_1!28819 (h!56475 (t!357714 lt!1692723))) key!3287)))))

(assert (=> d!1389505 (noDuplicateKeys!1154 (t!357714 lt!1692723))))

(assert (=> d!1389505 (= (removePairForKey!781 (t!357714 lt!1692723) key!3287) lt!1693264)))

(declare-fun b!4515102 () Bool)

(assert (=> b!4515102 (= e!2812890 e!2812889)))

(declare-fun c!770244 () Bool)

(assert (=> b!4515102 (= c!770244 ((_ is Cons!50628) (t!357714 lt!1692723)))))

(assert (= (and d!1389505 c!770245) b!4515101))

(assert (= (and d!1389505 (not c!770245)) b!4515102))

(assert (= (and b!4515102 c!770244) b!4515103))

(assert (= (and b!4515102 (not c!770244)) b!4515104))

(declare-fun m!5258461 () Bool)

(assert (=> b!4515103 m!5258461))

(declare-fun m!5258463 () Bool)

(assert (=> d!1389505 m!5258463))

(declare-fun m!5258465 () Bool)

(assert (=> d!1389505 m!5258465))

(assert (=> b!4514911 d!1389505))

(declare-fun d!1389507 () Bool)

(declare-fun res!1878664 () Bool)

(declare-fun e!2812899 () Bool)

(assert (=> d!1389507 (=> res!1878664 e!2812899)))

(assert (=> d!1389507 (= res!1878664 ((_ is Nil!50628) (ite c!770169 (toList!4315 lt!1692734) (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> d!1389507 (= (forall!10247 (ite c!770169 (toList!4315 lt!1692734) (t!357714 (_2!28820 lt!1692742))) (ite c!770169 lambda!171463 lambda!171465)) e!2812899)))

(declare-fun b!4515115 () Bool)

(declare-fun e!2812900 () Bool)

(assert (=> b!4515115 (= e!2812899 e!2812900)))

(declare-fun res!1878665 () Bool)

(assert (=> b!4515115 (=> (not res!1878665) (not e!2812900))))

(declare-fun dynLambda!21153 (Int tuple2!51050) Bool)

(assert (=> b!4515115 (= res!1878665 (dynLambda!21153 (ite c!770169 lambda!171463 lambda!171465) (h!56475 (ite c!770169 (toList!4315 lt!1692734) (t!357714 (_2!28820 lt!1692742))))))))

(declare-fun b!4515116 () Bool)

(assert (=> b!4515116 (= e!2812900 (forall!10247 (t!357714 (ite c!770169 (toList!4315 lt!1692734) (t!357714 (_2!28820 lt!1692742)))) (ite c!770169 lambda!171463 lambda!171465)))))

(assert (= (and d!1389507 (not res!1878664)) b!4515115))

(assert (= (and b!4515115 res!1878665) b!4515116))

(declare-fun b_lambda!154127 () Bool)

(assert (=> (not b_lambda!154127) (not b!4515115)))

(declare-fun m!5258473 () Bool)

(assert (=> b!4515115 m!5258473))

(declare-fun m!5258475 () Bool)

(assert (=> b!4515116 m!5258475))

(assert (=> bm!314401 d!1389507))

(declare-fun d!1389511 () Bool)

(assert (=> d!1389511 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692724) key!3287))))

(declare-fun lt!1693289 () Unit!94076)

(declare-fun choose!29427 (List!50752 K!12025) Unit!94076)

(assert (=> d!1389511 (= lt!1693289 (choose!29427 (toList!4315 lt!1692724) key!3287))))

(assert (=> d!1389511 (invariantList!1011 (toList!4315 lt!1692724))))

(assert (=> d!1389511 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692724) key!3287) lt!1693289)))

(declare-fun bs!850115 () Bool)

(assert (= bs!850115 d!1389511))

(assert (=> bs!850115 m!5258105))

(assert (=> bs!850115 m!5258105))

(assert (=> bs!850115 m!5258107))

(declare-fun m!5258477 () Bool)

(assert (=> bs!850115 m!5258477))

(declare-fun m!5258479 () Bool)

(assert (=> bs!850115 m!5258479))

(assert (=> b!4514923 d!1389511))

(declare-fun d!1389513 () Bool)

(declare-fun isEmpty!28646 (Option!11101) Bool)

(assert (=> d!1389513 (= (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692724) key!3287)) (not (isEmpty!28646 (getValueByKey!1081 (toList!4315 lt!1692724) key!3287))))))

(declare-fun bs!850116 () Bool)

(assert (= bs!850116 d!1389513))

(assert (=> bs!850116 m!5258105))

(declare-fun m!5258481 () Bool)

(assert (=> bs!850116 m!5258481))

(assert (=> b!4514923 d!1389513))

(declare-fun b!4515127 () Bool)

(declare-fun e!2812906 () Option!11101)

(assert (=> b!4515127 (= e!2812906 (getValueByKey!1081 (t!357714 (toList!4315 lt!1692724)) key!3287))))

(declare-fun d!1389515 () Bool)

(declare-fun c!770251 () Bool)

(assert (=> d!1389515 (= c!770251 (and ((_ is Cons!50628) (toList!4315 lt!1692724)) (= (_1!28819 (h!56475 (toList!4315 lt!1692724))) key!3287)))))

(declare-fun e!2812905 () Option!11101)

(assert (=> d!1389515 (= (getValueByKey!1081 (toList!4315 lt!1692724) key!3287) e!2812905)))

(declare-fun b!4515126 () Bool)

(assert (=> b!4515126 (= e!2812905 e!2812906)))

(declare-fun c!770252 () Bool)

(assert (=> b!4515126 (= c!770252 (and ((_ is Cons!50628) (toList!4315 lt!1692724)) (not (= (_1!28819 (h!56475 (toList!4315 lt!1692724))) key!3287))))))

(declare-fun b!4515128 () Bool)

(assert (=> b!4515128 (= e!2812906 None!11100)))

(declare-fun b!4515125 () Bool)

(assert (=> b!4515125 (= e!2812905 (Some!11100 (_2!28819 (h!56475 (toList!4315 lt!1692724)))))))

(assert (= (and d!1389515 c!770251) b!4515125))

(assert (= (and d!1389515 (not c!770251)) b!4515126))

(assert (= (and b!4515126 c!770252) b!4515127))

(assert (= (and b!4515126 (not c!770252)) b!4515128))

(declare-fun m!5258483 () Bool)

(assert (=> b!4515127 m!5258483))

(assert (=> b!4514923 d!1389515))

(declare-fun d!1389517 () Bool)

(assert (=> d!1389517 (contains!13345 (getKeysList!459 (toList!4315 lt!1692724)) key!3287)))

(declare-fun lt!1693292 () Unit!94076)

(declare-fun choose!29428 (List!50752 K!12025) Unit!94076)

(assert (=> d!1389517 (= lt!1693292 (choose!29428 (toList!4315 lt!1692724) key!3287))))

(assert (=> d!1389517 (invariantList!1011 (toList!4315 lt!1692724))))

(assert (=> d!1389517 (= (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692724) key!3287) lt!1693292)))

(declare-fun bs!850130 () Bool)

(assert (= bs!850130 d!1389517))

(assert (=> bs!850130 m!5258113))

(assert (=> bs!850130 m!5258113))

(declare-fun m!5258523 () Bool)

(assert (=> bs!850130 m!5258523))

(declare-fun m!5258525 () Bool)

(assert (=> bs!850130 m!5258525))

(assert (=> bs!850130 m!5258479))

(assert (=> b!4514923 d!1389517))

(declare-fun d!1389523 () Bool)

(declare-fun noDuplicatedKeys!256 (List!50752) Bool)

(assert (=> d!1389523 (= (invariantList!1011 (toList!4315 lt!1693109)) (noDuplicatedKeys!256 (toList!4315 lt!1693109)))))

(declare-fun bs!850131 () Bool)

(assert (= bs!850131 d!1389523))

(declare-fun m!5258527 () Bool)

(assert (=> bs!850131 m!5258527))

(assert (=> d!1389397 d!1389523))

(declare-fun d!1389525 () Bool)

(declare-fun res!1878671 () Bool)

(declare-fun e!2812915 () Bool)

(assert (=> d!1389525 (=> res!1878671 e!2812915)))

(assert (=> d!1389525 (= res!1878671 ((_ is Nil!50629) (toList!4316 (+!1526 lt!1692730 lt!1692742))))))

(assert (=> d!1389525 (= (forall!10245 (toList!4316 (+!1526 lt!1692730 lt!1692742)) lambda!171532) e!2812915)))

(declare-fun b!4515140 () Bool)

(declare-fun e!2812916 () Bool)

(assert (=> b!4515140 (= e!2812915 e!2812916)))

(declare-fun res!1878672 () Bool)

(assert (=> b!4515140 (=> (not res!1878672) (not e!2812916))))

(assert (=> b!4515140 (= res!1878672 (dynLambda!21150 lambda!171532 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))

(declare-fun b!4515141 () Bool)

(assert (=> b!4515141 (= e!2812916 (forall!10245 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))) lambda!171532))))

(assert (= (and d!1389525 (not res!1878671)) b!4515140))

(assert (= (and b!4515140 res!1878672) b!4515141))

(declare-fun b_lambda!154131 () Bool)

(assert (=> (not b_lambda!154131) (not b!4515140)))

(declare-fun m!5258549 () Bool)

(assert (=> b!4515140 m!5258549))

(declare-fun m!5258551 () Bool)

(assert (=> b!4515141 m!5258551))

(assert (=> d!1389397 d!1389525))

(assert (=> b!4514827 d!1389457))

(declare-fun d!1389529 () Bool)

(declare-fun e!2812920 () Bool)

(assert (=> d!1389529 e!2812920))

(declare-fun res!1878675 () Bool)

(assert (=> d!1389529 (=> res!1878675 e!2812920)))

(declare-fun lt!1693303 () Bool)

(assert (=> d!1389529 (= res!1878675 (not lt!1693303))))

(declare-fun lt!1693302 () Bool)

(assert (=> d!1389529 (= lt!1693303 lt!1693302)))

(declare-fun lt!1693304 () Unit!94076)

(declare-fun e!2812919 () Unit!94076)

(assert (=> d!1389529 (= lt!1693304 e!2812919)))

(declare-fun c!770256 () Bool)

(assert (=> d!1389529 (= c!770256 lt!1693302)))

(assert (=> d!1389529 (= lt!1693302 (containsKey!1763 (toList!4316 lm!1477) (hash!2783 hashF!1107 key!3287)))))

(assert (=> d!1389529 (= (contains!13342 lm!1477 (hash!2783 hashF!1107 key!3287)) lt!1693303)))

(declare-fun b!4515144 () Bool)

(declare-fun lt!1693301 () Unit!94076)

(assert (=> b!4515144 (= e!2812919 lt!1693301)))

(assert (=> b!4515144 (= lt!1693301 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lm!1477) (hash!2783 hashF!1107 key!3287)))))

(assert (=> b!4515144 (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) (hash!2783 hashF!1107 key!3287)))))

(declare-fun b!4515145 () Bool)

(declare-fun Unit!94179 () Unit!94076)

(assert (=> b!4515145 (= e!2812919 Unit!94179)))

(declare-fun b!4515146 () Bool)

(assert (=> b!4515146 (= e!2812920 (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) (hash!2783 hashF!1107 key!3287))))))

(assert (= (and d!1389529 c!770256) b!4515144))

(assert (= (and d!1389529 (not c!770256)) b!4515145))

(assert (= (and d!1389529 (not res!1878675)) b!4515146))

(assert (=> d!1389529 m!5257417))

(declare-fun m!5258555 () Bool)

(assert (=> d!1389529 m!5258555))

(assert (=> b!4515144 m!5257417))

(declare-fun m!5258557 () Bool)

(assert (=> b!4515144 m!5258557))

(assert (=> b!4515144 m!5257417))

(declare-fun m!5258559 () Bool)

(assert (=> b!4515144 m!5258559))

(assert (=> b!4515144 m!5258559))

(declare-fun m!5258561 () Bool)

(assert (=> b!4515144 m!5258561))

(assert (=> b!4515146 m!5257417))

(assert (=> b!4515146 m!5258559))

(assert (=> b!4515146 m!5258559))

(assert (=> b!4515146 m!5258561))

(assert (=> d!1389405 d!1389529))

(assert (=> d!1389405 d!1389335))

(declare-fun d!1389533 () Bool)

(assert (=> d!1389533 (contains!13342 lm!1477 (hash!2783 hashF!1107 key!3287))))

(assert (=> d!1389533 true))

(declare-fun _$27!1215 () Unit!94076)

(assert (=> d!1389533 (= (choose!29420 lm!1477 key!3287 hashF!1107) _$27!1215)))

(declare-fun bs!850132 () Bool)

(assert (= bs!850132 d!1389533))

(assert (=> bs!850132 m!5257417))

(assert (=> bs!850132 m!5257417))

(assert (=> bs!850132 m!5258065))

(assert (=> d!1389405 d!1389533))

(declare-fun d!1389535 () Bool)

(declare-fun res!1878676 () Bool)

(declare-fun e!2812925 () Bool)

(assert (=> d!1389535 (=> res!1878676 e!2812925)))

(assert (=> d!1389535 (= res!1878676 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389535 (= (forall!10245 (toList!4316 lm!1477) lambda!171535) e!2812925)))

(declare-fun b!4515155 () Bool)

(declare-fun e!2812926 () Bool)

(assert (=> b!4515155 (= e!2812925 e!2812926)))

(declare-fun res!1878677 () Bool)

(assert (=> b!4515155 (=> (not res!1878677) (not e!2812926))))

(assert (=> b!4515155 (= res!1878677 (dynLambda!21150 lambda!171535 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4515156 () Bool)

(assert (=> b!4515156 (= e!2812926 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171535))))

(assert (= (and d!1389535 (not res!1878676)) b!4515155))

(assert (= (and b!4515155 res!1878677) b!4515156))

(declare-fun b_lambda!154135 () Bool)

(assert (=> (not b_lambda!154135) (not b!4515155)))

(declare-fun m!5258563 () Bool)

(assert (=> b!4515155 m!5258563))

(declare-fun m!5258565 () Bool)

(assert (=> b!4515156 m!5258565))

(assert (=> d!1389405 d!1389535))

(declare-fun d!1389537 () Bool)

(assert (=> d!1389537 (= (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287)) (not (isEmpty!28646 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))))))

(declare-fun bs!850133 () Bool)

(assert (= bs!850133 d!1389537))

(assert (=> bs!850133 m!5257945))

(declare-fun m!5258567 () Bool)

(assert (=> bs!850133 m!5258567))

(assert (=> b!4514860 d!1389537))

(declare-fun b!4515159 () Bool)

(declare-fun e!2812928 () Option!11101)

(assert (=> b!4515159 (= e!2812928 (getValueByKey!1081 (t!357714 (toList!4315 lt!1692728)) key!3287))))

(declare-fun d!1389539 () Bool)

(declare-fun c!770261 () Bool)

(assert (=> d!1389539 (= c!770261 (and ((_ is Cons!50628) (toList!4315 lt!1692728)) (= (_1!28819 (h!56475 (toList!4315 lt!1692728))) key!3287)))))

(declare-fun e!2812927 () Option!11101)

(assert (=> d!1389539 (= (getValueByKey!1081 (toList!4315 lt!1692728) key!3287) e!2812927)))

(declare-fun b!4515158 () Bool)

(assert (=> b!4515158 (= e!2812927 e!2812928)))

(declare-fun c!770262 () Bool)

(assert (=> b!4515158 (= c!770262 (and ((_ is Cons!50628) (toList!4315 lt!1692728)) (not (= (_1!28819 (h!56475 (toList!4315 lt!1692728))) key!3287))))))

(declare-fun b!4515160 () Bool)

(assert (=> b!4515160 (= e!2812928 None!11100)))

(declare-fun b!4515157 () Bool)

(assert (=> b!4515157 (= e!2812927 (Some!11100 (_2!28819 (h!56475 (toList!4315 lt!1692728)))))))

(assert (= (and d!1389539 c!770261) b!4515157))

(assert (= (and d!1389539 (not c!770261)) b!4515158))

(assert (= (and b!4515158 c!770262) b!4515159))

(assert (= (and b!4515158 (not c!770262)) b!4515160))

(declare-fun m!5258569 () Bool)

(assert (=> b!4515159 m!5258569))

(assert (=> b!4514860 d!1389539))

(declare-fun b!4515163 () Bool)

(declare-fun e!2812930 () Option!11099)

(assert (=> b!4515163 (= e!2812930 (getValueByKey!1079 (t!357715 (toList!4316 lt!1692805)) (_1!28820 lt!1692742)))))

(declare-fun b!4515164 () Bool)

(assert (=> b!4515164 (= e!2812930 None!11098)))

(declare-fun b!4515161 () Bool)

(declare-fun e!2812929 () Option!11099)

(assert (=> b!4515161 (= e!2812929 (Some!11098 (_2!28820 (h!56476 (toList!4316 lt!1692805)))))))

(declare-fun d!1389541 () Bool)

(declare-fun c!770263 () Bool)

(assert (=> d!1389541 (= c!770263 (and ((_ is Cons!50629) (toList!4316 lt!1692805)) (= (_1!28820 (h!56476 (toList!4316 lt!1692805))) (_1!28820 lt!1692742))))))

(assert (=> d!1389541 (= (getValueByKey!1079 (toList!4316 lt!1692805) (_1!28820 lt!1692742)) e!2812929)))

(declare-fun b!4515162 () Bool)

(assert (=> b!4515162 (= e!2812929 e!2812930)))

(declare-fun c!770264 () Bool)

(assert (=> b!4515162 (= c!770264 (and ((_ is Cons!50629) (toList!4316 lt!1692805)) (not (= (_1!28820 (h!56476 (toList!4316 lt!1692805))) (_1!28820 lt!1692742)))))))

(assert (= (and d!1389541 c!770263) b!4515161))

(assert (= (and d!1389541 (not c!770263)) b!4515162))

(assert (= (and b!4515162 c!770264) b!4515163))

(assert (= (and b!4515162 (not c!770264)) b!4515164))

(declare-fun m!5258571 () Bool)

(assert (=> b!4515163 m!5258571))

(assert (=> b!4514633 d!1389541))

(declare-fun d!1389543 () Bool)

(declare-fun res!1878680 () Bool)

(declare-fun e!2812935 () Bool)

(assert (=> d!1389543 (=> res!1878680 e!2812935)))

(declare-fun e!2812933 () Bool)

(assert (=> d!1389543 (= res!1878680 e!2812933)))

(declare-fun res!1878678 () Bool)

(assert (=> d!1389543 (=> (not res!1878678) (not e!2812933))))

(assert (=> d!1389543 (= res!1878678 ((_ is Cons!50629) (t!357715 (toList!4316 lt!1692730))))))

(assert (=> d!1389543 (= (containsKeyBiggerList!134 (t!357715 (toList!4316 lt!1692730)) key!3287) e!2812935)))

(declare-fun b!4515169 () Bool)

(assert (=> b!4515169 (= e!2812933 (containsKey!1762 (_2!28820 (h!56476 (t!357715 (toList!4316 lt!1692730)))) key!3287))))

(declare-fun b!4515170 () Bool)

(declare-fun e!2812934 () Bool)

(assert (=> b!4515170 (= e!2812935 e!2812934)))

(declare-fun res!1878679 () Bool)

(assert (=> b!4515170 (=> (not res!1878679) (not e!2812934))))

(assert (=> b!4515170 (= res!1878679 ((_ is Cons!50629) (t!357715 (toList!4316 lt!1692730))))))

(declare-fun b!4515171 () Bool)

(assert (=> b!4515171 (= e!2812934 (containsKeyBiggerList!134 (t!357715 (t!357715 (toList!4316 lt!1692730))) key!3287))))

(assert (= (and d!1389543 res!1878678) b!4515169))

(assert (= (and d!1389543 (not res!1878680)) b!4515170))

(assert (= (and b!4515170 res!1878679) b!4515171))

(declare-fun m!5258575 () Bool)

(assert (=> b!4515169 m!5258575))

(declare-fun m!5258577 () Bool)

(assert (=> b!4515171 m!5258577))

(assert (=> b!4514792 d!1389543))

(assert (=> b!4514915 d!1389411))

(declare-fun d!1389547 () Bool)

(declare-fun lt!1693305 () Bool)

(assert (=> d!1389547 (= lt!1693305 (select (content!8341 e!2812777) key!3287))))

(declare-fun e!2812937 () Bool)

(assert (=> d!1389547 (= lt!1693305 e!2812937)))

(declare-fun res!1878682 () Bool)

(assert (=> d!1389547 (=> (not res!1878682) (not e!2812937))))

(assert (=> d!1389547 (= res!1878682 ((_ is Cons!50631) e!2812777))))

(assert (=> d!1389547 (= (contains!13345 e!2812777 key!3287) lt!1693305)))

(declare-fun b!4515172 () Bool)

(declare-fun e!2812936 () Bool)

(assert (=> b!4515172 (= e!2812937 e!2812936)))

(declare-fun res!1878681 () Bool)

(assert (=> b!4515172 (=> res!1878681 e!2812936)))

(assert (=> b!4515172 (= res!1878681 (= (h!56480 e!2812777) key!3287))))

(declare-fun b!4515173 () Bool)

(assert (=> b!4515173 (= e!2812936 (contains!13345 (t!357717 e!2812777) key!3287))))

(assert (= (and d!1389547 res!1878682) b!4515172))

(assert (= (and b!4515172 (not res!1878681)) b!4515173))

(declare-fun m!5258579 () Bool)

(assert (=> d!1389547 m!5258579))

(declare-fun m!5258581 () Bool)

(assert (=> d!1389547 m!5258581))

(declare-fun m!5258583 () Bool)

(assert (=> b!4515173 m!5258583))

(assert (=> bm!314421 d!1389547))

(declare-fun d!1389549 () Bool)

(declare-fun lt!1693306 () Bool)

(assert (=> d!1389549 (= lt!1693306 (select (content!8338 (toList!4316 lt!1693091)) lt!1692742))))

(declare-fun e!2812939 () Bool)

(assert (=> d!1389549 (= lt!1693306 e!2812939)))

(declare-fun res!1878683 () Bool)

(assert (=> d!1389549 (=> (not res!1878683) (not e!2812939))))

(assert (=> d!1389549 (= res!1878683 ((_ is Cons!50629) (toList!4316 lt!1693091)))))

(assert (=> d!1389549 (= (contains!13341 (toList!4316 lt!1693091) lt!1692742) lt!1693306)))

(declare-fun b!4515174 () Bool)

(declare-fun e!2812938 () Bool)

(assert (=> b!4515174 (= e!2812939 e!2812938)))

(declare-fun res!1878684 () Bool)

(assert (=> b!4515174 (=> res!1878684 e!2812938)))

(assert (=> b!4515174 (= res!1878684 (= (h!56476 (toList!4316 lt!1693091)) lt!1692742))))

(declare-fun b!4515175 () Bool)

(assert (=> b!4515175 (= e!2812938 (contains!13341 (t!357715 (toList!4316 lt!1693091)) lt!1692742))))

(assert (= (and d!1389549 res!1878683) b!4515174))

(assert (= (and b!4515174 (not res!1878684)) b!4515175))

(declare-fun m!5258585 () Bool)

(assert (=> d!1389549 m!5258585))

(declare-fun m!5258587 () Bool)

(assert (=> d!1389549 m!5258587))

(declare-fun m!5258589 () Bool)

(assert (=> b!4515175 m!5258589))

(assert (=> b!4514870 d!1389549))

(assert (=> d!1389399 d!1389487))

(assert (=> d!1389399 d!1389485))

(declare-fun bs!850134 () Bool)

(declare-fun b!4515225 () Bool)

(assert (= bs!850134 (and b!4515225 b!4514958)))

(declare-fun lambda!171591 () Int)

(assert (=> bs!850134 (= (= (t!357714 (toList!4315 lt!1692728)) (toList!4315 lt!1692724)) (= lambda!171591 lambda!171548))))

(declare-fun bs!850135 () Bool)

(assert (= bs!850135 (and b!4515225 b!4515023)))

(assert (=> bs!850135 (= (= (t!357714 (toList!4315 lt!1692728)) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171591 lambda!171555))))

(declare-fun bs!850137 () Bool)

(assert (= bs!850137 (and b!4515225 b!4515099)))

(assert (=> bs!850137 (= (= (t!357714 (toList!4315 lt!1692728)) (toList!4315 lt!1692728)) (= lambda!171591 lambda!171568))))

(assert (=> b!4515225 true))

(declare-fun bs!850139 () Bool)

(declare-fun b!4515227 () Bool)

(assert (= bs!850139 (and b!4515227 b!4514958)))

(declare-fun lambda!171594 () Int)

(assert (=> bs!850139 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728))) (toList!4315 lt!1692724)) (= lambda!171594 lambda!171548))))

(declare-fun bs!850141 () Bool)

(assert (= bs!850141 (and b!4515227 b!4515023)))

(assert (=> bs!850141 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728))) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171594 lambda!171555))))

(declare-fun bs!850142 () Bool)

(assert (= bs!850142 (and b!4515227 b!4515099)))

(assert (=> bs!850142 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728))) (toList!4315 lt!1692728)) (= lambda!171594 lambda!171568))))

(declare-fun bs!850143 () Bool)

(assert (= bs!850143 (and b!4515227 b!4515225)))

(assert (=> bs!850143 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728))) (t!357714 (toList!4315 lt!1692728))) (= lambda!171594 lambda!171591))))

(assert (=> b!4515227 true))

(declare-fun bs!850144 () Bool)

(declare-fun b!4515223 () Bool)

(assert (= bs!850144 (and b!4515223 b!4514958)))

(declare-fun lambda!171596 () Int)

(assert (=> bs!850144 (= (= (toList!4315 lt!1692728) (toList!4315 lt!1692724)) (= lambda!171596 lambda!171548))))

(declare-fun bs!850145 () Bool)

(assert (= bs!850145 (and b!4515223 b!4515023)))

(assert (=> bs!850145 (= (= (toList!4315 lt!1692728) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171596 lambda!171555))))

(declare-fun bs!850146 () Bool)

(assert (= bs!850146 (and b!4515223 b!4515099)))

(assert (=> bs!850146 (= lambda!171596 lambda!171568)))

(declare-fun bs!850147 () Bool)

(assert (= bs!850147 (and b!4515223 b!4515227)))

(assert (=> bs!850147 (= (= (toList!4315 lt!1692728) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171596 lambda!171594))))

(declare-fun bs!850148 () Bool)

(assert (= bs!850148 (and b!4515223 b!4515225)))

(assert (=> bs!850148 (= (= (toList!4315 lt!1692728) (t!357714 (toList!4315 lt!1692728))) (= lambda!171596 lambda!171591))))

(assert (=> b!4515223 true))

(declare-fun bs!850149 () Bool)

(declare-fun b!4515226 () Bool)

(assert (= bs!850149 (and b!4515226 b!4514959)))

(declare-fun lambda!171597 () Int)

(assert (=> bs!850149 (= lambda!171597 lambda!171549)))

(declare-fun bs!850150 () Bool)

(assert (= bs!850150 (and b!4515226 b!4515024)))

(assert (=> bs!850150 (= lambda!171597 lambda!171556)))

(declare-fun bs!850151 () Bool)

(assert (= bs!850151 (and b!4515226 b!4515100)))

(assert (=> bs!850151 (= lambda!171597 lambda!171569)))

(declare-fun b!4515221 () Bool)

(declare-fun e!2812961 () List!50755)

(assert (=> b!4515221 (= e!2812961 Nil!50631)))

(declare-fun b!4515222 () Bool)

(assert (=> b!4515222 false))

(declare-fun e!2812962 () Unit!94076)

(declare-fun Unit!94185 () Unit!94076)

(assert (=> b!4515222 (= e!2812962 Unit!94185)))

(declare-fun res!1878700 () Bool)

(declare-fun e!2812960 () Bool)

(assert (=> b!4515223 (=> (not res!1878700) (not e!2812960))))

(declare-fun lt!1693347 () List!50755)

(assert (=> b!4515223 (= res!1878700 (forall!10248 lt!1693347 lambda!171596))))

(declare-fun b!4515224 () Bool)

(declare-fun e!2812963 () Unit!94076)

(declare-fun Unit!94186 () Unit!94076)

(assert (=> b!4515224 (= e!2812963 Unit!94186)))

(assert (=> b!4515225 false))

(declare-fun lt!1693345 () Unit!94076)

(declare-fun forallContained!2501 (List!50755 Int K!12025) Unit!94076)

(assert (=> b!4515225 (= lt!1693345 (forallContained!2501 (getKeysList!459 (t!357714 (toList!4315 lt!1692728))) lambda!171591 (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(declare-fun Unit!94187 () Unit!94076)

(assert (=> b!4515225 (= e!2812963 Unit!94187)))

(assert (=> b!4515226 (= e!2812960 (= (content!8341 lt!1693347) (content!8341 (map!11129 (toList!4315 lt!1692728) lambda!171597))))))

(declare-fun d!1389551 () Bool)

(assert (=> d!1389551 e!2812960))

(declare-fun res!1878702 () Bool)

(assert (=> d!1389551 (=> (not res!1878702) (not e!2812960))))

(assert (=> d!1389551 (= res!1878702 (noDuplicate!741 lt!1693347))))

(assert (=> d!1389551 (= lt!1693347 e!2812961)))

(declare-fun c!770284 () Bool)

(assert (=> d!1389551 (= c!770284 ((_ is Cons!50628) (toList!4315 lt!1692728)))))

(assert (=> d!1389551 (invariantList!1011 (toList!4315 lt!1692728))))

(assert (=> d!1389551 (= (getKeysList!459 (toList!4315 lt!1692728)) lt!1693347)))

(assert (=> b!4515227 (= e!2812961 (Cons!50631 (_1!28819 (h!56475 (toList!4315 lt!1692728))) (getKeysList!459 (t!357714 (toList!4315 lt!1692728)))))))

(declare-fun c!770283 () Bool)

(assert (=> b!4515227 (= c!770283 (containsKey!1766 (t!357714 (toList!4315 lt!1692728)) (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(declare-fun lt!1693343 () Unit!94076)

(assert (=> b!4515227 (= lt!1693343 e!2812962)))

(declare-fun c!770282 () Bool)

(assert (=> b!4515227 (= c!770282 (contains!13345 (getKeysList!459 (t!357714 (toList!4315 lt!1692728))) (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(declare-fun lt!1693348 () Unit!94076)

(assert (=> b!4515227 (= lt!1693348 e!2812963)))

(declare-fun lt!1693346 () List!50755)

(assert (=> b!4515227 (= lt!1693346 (getKeysList!459 (t!357714 (toList!4315 lt!1692728))))))

(declare-fun lt!1693342 () Unit!94076)

(declare-fun lemmaForallContainsAddHeadPreserves!163 (List!50752 List!50755 tuple2!51050) Unit!94076)

(assert (=> b!4515227 (= lt!1693342 (lemmaForallContainsAddHeadPreserves!163 (t!357714 (toList!4315 lt!1692728)) lt!1693346 (h!56475 (toList!4315 lt!1692728))))))

(assert (=> b!4515227 (forall!10248 lt!1693346 lambda!171594)))

(declare-fun lt!1693344 () Unit!94076)

(assert (=> b!4515227 (= lt!1693344 lt!1693342)))

(declare-fun b!4515228 () Bool)

(declare-fun res!1878701 () Bool)

(assert (=> b!4515228 (=> (not res!1878701) (not e!2812960))))

(assert (=> b!4515228 (= res!1878701 (= (length!338 lt!1693347) (length!339 (toList!4315 lt!1692728))))))

(declare-fun b!4515229 () Bool)

(declare-fun Unit!94188 () Unit!94076)

(assert (=> b!4515229 (= e!2812962 Unit!94188)))

(assert (= (and d!1389551 c!770284) b!4515227))

(assert (= (and d!1389551 (not c!770284)) b!4515221))

(assert (= (and b!4515227 c!770283) b!4515222))

(assert (= (and b!4515227 (not c!770283)) b!4515229))

(assert (= (and b!4515227 c!770282) b!4515225))

(assert (= (and b!4515227 (not c!770282)) b!4515224))

(assert (= (and d!1389551 res!1878702) b!4515228))

(assert (= (and b!4515228 res!1878701) b!4515223))

(assert (= (and b!4515223 res!1878700) b!4515226))

(declare-fun m!5258619 () Bool)

(assert (=> d!1389551 m!5258619))

(declare-fun m!5258621 () Bool)

(assert (=> d!1389551 m!5258621))

(declare-fun m!5258623 () Bool)

(assert (=> b!4515227 m!5258623))

(declare-fun m!5258625 () Bool)

(assert (=> b!4515227 m!5258625))

(declare-fun m!5258627 () Bool)

(assert (=> b!4515227 m!5258627))

(declare-fun m!5258629 () Bool)

(assert (=> b!4515227 m!5258629))

(declare-fun m!5258631 () Bool)

(assert (=> b!4515227 m!5258631))

(assert (=> b!4515227 m!5258623))

(declare-fun m!5258633 () Bool)

(assert (=> b!4515223 m!5258633))

(declare-fun m!5258635 () Bool)

(assert (=> b!4515228 m!5258635))

(assert (=> b!4515228 m!5258451))

(assert (=> b!4515225 m!5258623))

(assert (=> b!4515225 m!5258623))

(declare-fun m!5258637 () Bool)

(assert (=> b!4515225 m!5258637))

(declare-fun m!5258639 () Bool)

(assert (=> b!4515226 m!5258639))

(declare-fun m!5258641 () Bool)

(assert (=> b!4515226 m!5258641))

(assert (=> b!4515226 m!5258641))

(declare-fun m!5258643 () Bool)

(assert (=> b!4515226 m!5258643))

(assert (=> b!4514856 d!1389551))

(declare-fun d!1389555 () Bool)

(assert (=> d!1389555 (dynLambda!21150 lambda!171413 lt!1692740)))

(assert (=> d!1389555 true))

(declare-fun _$7!1816 () Unit!94076)

(assert (=> d!1389555 (= (choose!29410 (toList!4316 lm!1477) lambda!171413 lt!1692740) _$7!1816)))

(declare-fun b_lambda!154139 () Bool)

(assert (=> (not b_lambda!154139) (not d!1389555)))

(declare-fun bs!850153 () Bool)

(assert (= bs!850153 d!1389555))

(assert (=> bs!850153 m!5258083))

(assert (=> d!1389413 d!1389555))

(assert (=> d!1389413 d!1389267))

(declare-fun d!1389561 () Bool)

(assert (=> d!1389561 (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744))))

(declare-fun lt!1693351 () Unit!94076)

(declare-fun choose!29431 (List!50753 (_ BitVec 64)) Unit!94076)

(assert (=> d!1389561 (= lt!1693351 (choose!29431 (toList!4316 lm!1477) lt!1692744))))

(declare-fun e!2812974 () Bool)

(assert (=> d!1389561 e!2812974))

(declare-fun res!1878713 () Bool)

(assert (=> d!1389561 (=> (not res!1878713) (not e!2812974))))

(assert (=> d!1389561 (= res!1878713 (isStrictlySorted!424 (toList!4316 lm!1477)))))

(assert (=> d!1389561 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lm!1477) lt!1692744) lt!1693351)))

(declare-fun b!4515244 () Bool)

(assert (=> b!4515244 (= e!2812974 (containsKey!1763 (toList!4316 lm!1477) lt!1692744))))

(assert (= (and d!1389561 res!1878713) b!4515244))

(assert (=> d!1389561 m!5258091))

(assert (=> d!1389561 m!5258091))

(assert (=> d!1389561 m!5258093))

(declare-fun m!5258651 () Bool)

(assert (=> d!1389561 m!5258651))

(assert (=> d!1389561 m!5257583))

(assert (=> b!4515244 m!5258087))

(assert (=> b!4514916 d!1389561))

(declare-fun d!1389565 () Bool)

(declare-fun isEmpty!28648 (Option!11099) Bool)

(assert (=> d!1389565 (= (isDefined!8385 (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744)) (not (isEmpty!28648 (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744))))))

(declare-fun bs!850154 () Bool)

(assert (= bs!850154 d!1389565))

(assert (=> bs!850154 m!5258091))

(declare-fun m!5258653 () Bool)

(assert (=> bs!850154 m!5258653))

(assert (=> b!4514916 d!1389565))

(declare-fun b!4515247 () Bool)

(declare-fun e!2812976 () Option!11099)

(assert (=> b!4515247 (= e!2812976 (getValueByKey!1079 (t!357715 (toList!4316 lm!1477)) lt!1692744))))

(declare-fun b!4515248 () Bool)

(assert (=> b!4515248 (= e!2812976 None!11098)))

(declare-fun b!4515245 () Bool)

(declare-fun e!2812975 () Option!11099)

(assert (=> b!4515245 (= e!2812975 (Some!11098 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(declare-fun d!1389567 () Bool)

(declare-fun c!770285 () Bool)

(assert (=> d!1389567 (= c!770285 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (= (_1!28820 (h!56476 (toList!4316 lm!1477))) lt!1692744)))))

(assert (=> d!1389567 (= (getValueByKey!1079 (toList!4316 lm!1477) lt!1692744) e!2812975)))

(declare-fun b!4515246 () Bool)

(assert (=> b!4515246 (= e!2812975 e!2812976)))

(declare-fun c!770286 () Bool)

(assert (=> b!4515246 (= c!770286 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (not (= (_1!28820 (h!56476 (toList!4316 lm!1477))) lt!1692744))))))

(assert (= (and d!1389567 c!770285) b!4515245))

(assert (= (and d!1389567 (not c!770285)) b!4515246))

(assert (= (and b!4515246 c!770286) b!4515247))

(assert (= (and b!4515246 (not c!770286)) b!4515248))

(declare-fun m!5258659 () Bool)

(assert (=> b!4515247 m!5258659))

(assert (=> b!4514916 d!1389567))

(declare-fun d!1389571 () Bool)

(declare-fun res!1878716 () Bool)

(declare-fun e!2812979 () Bool)

(assert (=> d!1389571 (=> res!1878716 e!2812979)))

(assert (=> d!1389571 (= res!1878716 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1389571 (= (forall!10247 (_2!28820 lt!1692742) lambda!171539) e!2812979)))

(declare-fun b!4515251 () Bool)

(declare-fun e!2812980 () Bool)

(assert (=> b!4515251 (= e!2812979 e!2812980)))

(declare-fun res!1878717 () Bool)

(assert (=> b!4515251 (=> (not res!1878717) (not e!2812980))))

(assert (=> b!4515251 (= res!1878717 (dynLambda!21153 lambda!171539 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun b!4515252 () Bool)

(assert (=> b!4515252 (= e!2812980 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171539))))

(assert (= (and d!1389571 (not res!1878716)) b!4515251))

(assert (= (and b!4515251 res!1878717) b!4515252))

(declare-fun b_lambda!154141 () Bool)

(assert (=> (not b_lambda!154141) (not b!4515251)))

(declare-fun m!5258663 () Bool)

(assert (=> b!4515251 m!5258663))

(declare-fun m!5258665 () Bool)

(assert (=> b!4515252 m!5258665))

(assert (=> b!4514932 d!1389571))

(declare-fun bs!850156 () Bool)

(declare-fun b!4515256 () Bool)

(assert (= bs!850156 (and b!4515256 b!4514932)))

(declare-fun lambda!171598 () Int)

(assert (=> bs!850156 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171598 lambda!171539))))

(declare-fun bs!850157 () Bool)

(assert (= bs!850157 (and b!4515256 b!4514749)))

(assert (=> bs!850157 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692939) (= lambda!171598 lambda!171465))))

(declare-fun bs!850158 () Bool)

(assert (= bs!850158 (and b!4515256 b!4515053)))

(assert (=> bs!850158 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171598 lambda!171557))))

(declare-fun bs!850159 () Bool)

(assert (= bs!850159 (and b!4515256 d!1389469)))

(assert (=> bs!850159 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693221) (= lambda!171598 lambda!171560))))

(assert (=> bs!850156 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171598 lambda!171538))))

(declare-fun bs!850160 () Bool)

(assert (= bs!850160 (and b!4515256 b!4515052)))

(assert (=> bs!850160 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693223) (= lambda!171598 lambda!171559))))

(declare-fun bs!850161 () Bool)

(assert (= bs!850161 (and b!4515256 b!4514750)))

(assert (=> bs!850161 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171598 lambda!171463))))

(assert (=> bs!850157 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171598 lambda!171464))))

(assert (=> bs!850160 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171598 lambda!171558))))

(declare-fun bs!850162 () Bool)

(assert (= bs!850162 (and b!4515256 d!1389235)))

(assert (=> bs!850162 (not (= lambda!171598 lambda!171416))))

(declare-fun bs!850163 () Bool)

(assert (= bs!850163 (and b!4515256 d!1389427)))

(assert (=> bs!850163 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693145) (= lambda!171598 lambda!171540))))

(declare-fun bs!850164 () Bool)

(assert (= bs!850164 (and b!4515256 b!4514933)))

(assert (=> bs!850164 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171598 lambda!171537))))

(declare-fun bs!850166 () Bool)

(assert (= bs!850166 (and b!4515256 d!1389279)))

(assert (=> bs!850166 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692937) (= lambda!171598 lambda!171466))))

(assert (=> b!4515256 true))

(declare-fun bs!850167 () Bool)

(declare-fun b!4515255 () Bool)

(assert (= bs!850167 (and b!4515255 b!4514932)))

(declare-fun lambda!171599 () Int)

(assert (=> bs!850167 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171599 lambda!171539))))

(declare-fun bs!850168 () Bool)

(assert (= bs!850168 (and b!4515255 b!4514749)))

(assert (=> bs!850168 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692939) (= lambda!171599 lambda!171465))))

(declare-fun bs!850170 () Bool)

(assert (= bs!850170 (and b!4515255 b!4515053)))

(assert (=> bs!850170 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171599 lambda!171557))))

(declare-fun bs!850171 () Bool)

(assert (= bs!850171 (and b!4515255 d!1389469)))

(assert (=> bs!850171 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693221) (= lambda!171599 lambda!171560))))

(assert (=> bs!850167 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171599 lambda!171538))))

(declare-fun bs!850172 () Bool)

(assert (= bs!850172 (and b!4515255 b!4515052)))

(assert (=> bs!850172 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693223) (= lambda!171599 lambda!171559))))

(declare-fun bs!850173 () Bool)

(assert (= bs!850173 (and b!4515255 b!4514750)))

(assert (=> bs!850173 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171599 lambda!171463))))

(assert (=> bs!850168 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171599 lambda!171464))))

(assert (=> bs!850172 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171599 lambda!171558))))

(declare-fun bs!850174 () Bool)

(assert (= bs!850174 (and b!4515255 d!1389235)))

(assert (=> bs!850174 (not (= lambda!171599 lambda!171416))))

(declare-fun bs!850175 () Bool)

(assert (= bs!850175 (and b!4515255 d!1389427)))

(assert (=> bs!850175 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693145) (= lambda!171599 lambda!171540))))

(declare-fun bs!850176 () Bool)

(assert (= bs!850176 (and b!4515255 b!4514933)))

(assert (=> bs!850176 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171599 lambda!171537))))

(declare-fun bs!850177 () Bool)

(assert (= bs!850177 (and b!4515255 b!4515256)))

(assert (=> bs!850177 (= lambda!171599 lambda!171598)))

(declare-fun bs!850178 () Bool)

(assert (= bs!850178 (and b!4515255 d!1389279)))

(assert (=> bs!850178 (= (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1692937) (= lambda!171599 lambda!171466))))

(assert (=> b!4515255 true))

(declare-fun lt!1693368 () ListMap!3577)

(declare-fun lambda!171600 () Int)

(assert (=> bs!850168 (= (= lt!1693368 lt!1692939) (= lambda!171600 lambda!171465))))

(assert (=> bs!850170 (= (= lt!1693368 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171600 lambda!171557))))

(assert (=> bs!850171 (= (= lt!1693368 lt!1693221) (= lambda!171600 lambda!171560))))

(assert (=> bs!850167 (= (= lt!1693368 lt!1692722) (= lambda!171600 lambda!171538))))

(assert (=> bs!850172 (= (= lt!1693368 lt!1693223) (= lambda!171600 lambda!171559))))

(assert (=> bs!850173 (= (= lt!1693368 lt!1692734) (= lambda!171600 lambda!171463))))

(assert (=> bs!850168 (= (= lt!1693368 lt!1692734) (= lambda!171600 lambda!171464))))

(assert (=> bs!850172 (= (= lt!1693368 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171600 lambda!171558))))

(assert (=> bs!850174 (not (= lambda!171600 lambda!171416))))

(assert (=> bs!850175 (= (= lt!1693368 lt!1693145) (= lambda!171600 lambda!171540))))

(assert (=> bs!850167 (= (= lt!1693368 lt!1693147) (= lambda!171600 lambda!171539))))

(assert (=> b!4515255 (= (= lt!1693368 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171600 lambda!171599))))

(assert (=> bs!850176 (= (= lt!1693368 lt!1692722) (= lambda!171600 lambda!171537))))

(assert (=> bs!850177 (= (= lt!1693368 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171600 lambda!171598))))

(assert (=> bs!850178 (= (= lt!1693368 lt!1692937) (= lambda!171600 lambda!171466))))

(assert (=> b!4515255 true))

(declare-fun bs!850179 () Bool)

(declare-fun d!1389575 () Bool)

(assert (= bs!850179 (and d!1389575 b!4514749)))

(declare-fun lt!1693366 () ListMap!3577)

(declare-fun lambda!171601 () Int)

(assert (=> bs!850179 (= (= lt!1693366 lt!1692939) (= lambda!171601 lambda!171465))))

(declare-fun bs!850180 () Bool)

(assert (= bs!850180 (and d!1389575 b!4515255)))

(assert (=> bs!850180 (= (= lt!1693366 lt!1693368) (= lambda!171601 lambda!171600))))

(declare-fun bs!850181 () Bool)

(assert (= bs!850181 (and d!1389575 b!4515053)))

(assert (=> bs!850181 (= (= lt!1693366 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171601 lambda!171557))))

(declare-fun bs!850182 () Bool)

(assert (= bs!850182 (and d!1389575 d!1389469)))

(assert (=> bs!850182 (= (= lt!1693366 lt!1693221) (= lambda!171601 lambda!171560))))

(declare-fun bs!850183 () Bool)

(assert (= bs!850183 (and d!1389575 b!4514932)))

(assert (=> bs!850183 (= (= lt!1693366 lt!1692722) (= lambda!171601 lambda!171538))))

(declare-fun bs!850184 () Bool)

(assert (= bs!850184 (and d!1389575 b!4515052)))

(assert (=> bs!850184 (= (= lt!1693366 lt!1693223) (= lambda!171601 lambda!171559))))

(declare-fun bs!850185 () Bool)

(assert (= bs!850185 (and d!1389575 b!4514750)))

(assert (=> bs!850185 (= (= lt!1693366 lt!1692734) (= lambda!171601 lambda!171463))))

(assert (=> bs!850179 (= (= lt!1693366 lt!1692734) (= lambda!171601 lambda!171464))))

(assert (=> bs!850184 (= (= lt!1693366 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171601 lambda!171558))))

(declare-fun bs!850186 () Bool)

(assert (= bs!850186 (and d!1389575 d!1389235)))

(assert (=> bs!850186 (not (= lambda!171601 lambda!171416))))

(declare-fun bs!850187 () Bool)

(assert (= bs!850187 (and d!1389575 d!1389427)))

(assert (=> bs!850187 (= (= lt!1693366 lt!1693145) (= lambda!171601 lambda!171540))))

(assert (=> bs!850183 (= (= lt!1693366 lt!1693147) (= lambda!171601 lambda!171539))))

(assert (=> bs!850180 (= (= lt!1693366 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171601 lambda!171599))))

(declare-fun bs!850188 () Bool)

(assert (= bs!850188 (and d!1389575 b!4514933)))

(assert (=> bs!850188 (= (= lt!1693366 lt!1692722) (= lambda!171601 lambda!171537))))

(declare-fun bs!850189 () Bool)

(assert (= bs!850189 (and d!1389575 b!4515256)))

(assert (=> bs!850189 (= (= lt!1693366 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171601 lambda!171598))))

(declare-fun bs!850190 () Bool)

(assert (= bs!850190 (and d!1389575 d!1389279)))

(assert (=> bs!850190 (= (= lt!1693366 lt!1692937) (= lambda!171601 lambda!171466))))

(assert (=> d!1389575 true))

(declare-fun c!770287 () Bool)

(declare-fun bm!314446 () Bool)

(declare-fun call!314451 () Bool)

(assert (=> bm!314446 (= call!314451 (forall!10247 (ite c!770287 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (t!357714 (t!357714 (_2!28820 lt!1692742)))) (ite c!770287 lambda!171598 lambda!171600)))))

(declare-fun bm!314447 () Bool)

(declare-fun call!314452 () Bool)

(assert (=> bm!314447 (= call!314452 (forall!10247 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (ite c!770287 lambda!171598 lambda!171600)))))

(declare-fun bm!314448 () Bool)

(declare-fun call!314453 () Unit!94076)

(assert (=> bm!314448 (= call!314453 (lemmaContainsAllItsOwnKeys!331 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun b!4515254 () Bool)

(declare-fun e!2812983 () Bool)

(assert (=> b!4515254 (= e!2812983 call!314452)))

(declare-fun e!2812982 () ListMap!3577)

(assert (=> b!4515255 (= e!2812982 lt!1693368)))

(declare-fun lt!1693372 () ListMap!3577)

(assert (=> b!4515255 (= lt!1693372 (+!1527 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> b!4515255 (= lt!1693368 (addToMapMapFromBucket!681 (t!357714 (t!357714 (_2!28820 lt!1692742))) (+!1527 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) (h!56475 (t!357714 (_2!28820 lt!1692742))))))))

(declare-fun lt!1693364 () Unit!94076)

(assert (=> b!4515255 (= lt!1693364 call!314453)))

(assert (=> b!4515255 (forall!10247 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) lambda!171599)))

(declare-fun lt!1693360 () Unit!94076)

(assert (=> b!4515255 (= lt!1693360 lt!1693364)))

(assert (=> b!4515255 (forall!10247 (toList!4315 lt!1693372) lambda!171600)))

(declare-fun lt!1693375 () Unit!94076)

(declare-fun Unit!94191 () Unit!94076)

(assert (=> b!4515255 (= lt!1693375 Unit!94191)))

(assert (=> b!4515255 call!314451))

(declare-fun lt!1693365 () Unit!94076)

(declare-fun Unit!94192 () Unit!94076)

(assert (=> b!4515255 (= lt!1693365 Unit!94192)))

(declare-fun lt!1693367 () Unit!94076)

(declare-fun Unit!94193 () Unit!94076)

(assert (=> b!4515255 (= lt!1693367 Unit!94193)))

(declare-fun lt!1693374 () Unit!94076)

(assert (=> b!4515255 (= lt!1693374 (forallContained!2498 (toList!4315 lt!1693372) lambda!171600 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> b!4515255 (contains!13343 lt!1693372 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693373 () Unit!94076)

(declare-fun Unit!94194 () Unit!94076)

(assert (=> b!4515255 (= lt!1693373 Unit!94194)))

(assert (=> b!4515255 (contains!13343 lt!1693368 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693359 () Unit!94076)

(declare-fun Unit!94195 () Unit!94076)

(assert (=> b!4515255 (= lt!1693359 Unit!94195)))

(assert (=> b!4515255 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171600)))

(declare-fun lt!1693362 () Unit!94076)

(declare-fun Unit!94196 () Unit!94076)

(assert (=> b!4515255 (= lt!1693362 Unit!94196)))

(assert (=> b!4515255 (forall!10247 (toList!4315 lt!1693372) lambda!171600)))

(declare-fun lt!1693357 () Unit!94076)

(declare-fun Unit!94197 () Unit!94076)

(assert (=> b!4515255 (= lt!1693357 Unit!94197)))

(declare-fun lt!1693370 () Unit!94076)

(declare-fun Unit!94198 () Unit!94076)

(assert (=> b!4515255 (= lt!1693370 Unit!94198)))

(declare-fun lt!1693369 () Unit!94076)

(assert (=> b!4515255 (= lt!1693369 (addForallContainsKeyThenBeforeAdding!331 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693368 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))) (_2!28819 (h!56475 (t!357714 (_2!28820 lt!1692742))))))))

(assert (=> b!4515255 (forall!10247 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) lambda!171600)))

(declare-fun lt!1693355 () Unit!94076)

(assert (=> b!4515255 (= lt!1693355 lt!1693369)))

(assert (=> b!4515255 (forall!10247 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) lambda!171600)))

(declare-fun lt!1693361 () Unit!94076)

(declare-fun Unit!94199 () Unit!94076)

(assert (=> b!4515255 (= lt!1693361 Unit!94199)))

(declare-fun res!1878718 () Bool)

(assert (=> b!4515255 (= res!1878718 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171600))))

(assert (=> b!4515255 (=> (not res!1878718) (not e!2812983))))

(assert (=> b!4515255 e!2812983))

(declare-fun lt!1693358 () Unit!94076)

(declare-fun Unit!94200 () Unit!94076)

(assert (=> b!4515255 (= lt!1693358 Unit!94200)))

(declare-fun b!4515253 () Bool)

(declare-fun res!1878719 () Bool)

(declare-fun e!2812981 () Bool)

(assert (=> b!4515253 (=> (not res!1878719) (not e!2812981))))

(assert (=> b!4515253 (= res!1878719 (forall!10247 (toList!4315 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) lambda!171601))))

(assert (=> d!1389575 e!2812981))

(declare-fun res!1878720 () Bool)

(assert (=> d!1389575 (=> (not res!1878720) (not e!2812981))))

(assert (=> d!1389575 (= res!1878720 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171601))))

(assert (=> d!1389575 (= lt!1693366 e!2812982)))

(assert (=> d!1389575 (= c!770287 ((_ is Nil!50628) (t!357714 (_2!28820 lt!1692742))))))

(assert (=> d!1389575 (noDuplicateKeys!1154 (t!357714 (_2!28820 lt!1692742)))))

(assert (=> d!1389575 (= (addToMapMapFromBucket!681 (t!357714 (_2!28820 lt!1692742)) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) lt!1693366)))

(assert (=> b!4515256 (= e!2812982 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1693363 () Unit!94076)

(assert (=> b!4515256 (= lt!1693363 call!314453)))

(assert (=> b!4515256 call!314452))

(declare-fun lt!1693356 () Unit!94076)

(assert (=> b!4515256 (= lt!1693356 lt!1693363)))

(assert (=> b!4515256 call!314451))

(declare-fun lt!1693371 () Unit!94076)

(declare-fun Unit!94201 () Unit!94076)

(assert (=> b!4515256 (= lt!1693371 Unit!94201)))

(declare-fun b!4515257 () Bool)

(assert (=> b!4515257 (= e!2812981 (invariantList!1011 (toList!4315 lt!1693366)))))

(assert (= (and d!1389575 c!770287) b!4515256))

(assert (= (and d!1389575 (not c!770287)) b!4515255))

(assert (= (and b!4515255 res!1878718) b!4515254))

(assert (= (or b!4515256 b!4515255) bm!314446))

(assert (= (or b!4515256 b!4515254) bm!314447))

(assert (= (or b!4515256 b!4515255) bm!314448))

(assert (= (and d!1389575 res!1878720) b!4515253))

(assert (= (and b!4515253 res!1878719) b!4515257))

(declare-fun m!5258675 () Bool)

(assert (=> bm!314446 m!5258675))

(declare-fun m!5258677 () Bool)

(assert (=> b!4515255 m!5258677))

(declare-fun m!5258679 () Bool)

(assert (=> b!4515255 m!5258679))

(declare-fun m!5258681 () Bool)

(assert (=> b!4515255 m!5258681))

(declare-fun m!5258685 () Bool)

(assert (=> b!4515255 m!5258685))

(assert (=> b!4515255 m!5258685))

(declare-fun m!5258689 () Bool)

(assert (=> b!4515255 m!5258689))

(assert (=> b!4515255 m!5258677))

(declare-fun m!5258691 () Bool)

(assert (=> b!4515255 m!5258691))

(assert (=> b!4515255 m!5258127))

(declare-fun m!5258693 () Bool)

(assert (=> b!4515255 m!5258693))

(assert (=> b!4515255 m!5258127))

(assert (=> b!4515255 m!5258679))

(assert (=> b!4515255 m!5258689))

(declare-fun m!5258695 () Bool)

(assert (=> b!4515255 m!5258695))

(declare-fun m!5258697 () Bool)

(assert (=> b!4515255 m!5258697))

(declare-fun m!5258699 () Bool)

(assert (=> b!4515255 m!5258699))

(declare-fun m!5258701 () Bool)

(assert (=> bm!314447 m!5258701))

(assert (=> bm!314448 m!5258127))

(declare-fun m!5258703 () Bool)

(assert (=> bm!314448 m!5258703))

(declare-fun m!5258705 () Bool)

(assert (=> b!4515257 m!5258705))

(declare-fun m!5258707 () Bool)

(assert (=> b!4515253 m!5258707))

(declare-fun m!5258709 () Bool)

(assert (=> d!1389575 m!5258709))

(declare-fun m!5258711 () Bool)

(assert (=> d!1389575 m!5258711))

(assert (=> b!4514932 d!1389575))

(declare-fun d!1389585 () Bool)

(declare-fun e!2813000 () Bool)

(assert (=> d!1389585 e!2813000))

(declare-fun res!1878730 () Bool)

(assert (=> d!1389585 (=> (not res!1878730) (not e!2813000))))

(declare-fun lt!1693400 () ListMap!3577)

(assert (=> d!1389585 (= res!1878730 (contains!13343 lt!1693400 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693399 () List!50752)

(assert (=> d!1389585 (= lt!1693400 (ListMap!3578 lt!1693399))))

(declare-fun lt!1693398 () Unit!94076)

(declare-fun lt!1693401 () Unit!94076)

(assert (=> d!1389585 (= lt!1693398 lt!1693401)))

(assert (=> d!1389585 (= (getValueByKey!1081 lt!1693399 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) (Some!11100 (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!668 (List!50752 K!12025 V!12271) Unit!94076)

(assert (=> d!1389585 (= lt!1693401 (lemmaContainsTupThenGetReturnValue!668 lt!1693399 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun insertNoDuplicatedKeys!274 (List!50752 K!12025 V!12271) List!50752)

(assert (=> d!1389585 (= lt!1693399 (insertNoDuplicatedKeys!274 (toList!4315 lt!1692722) (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1389585 (= (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742))) lt!1693400)))

(declare-fun b!4515285 () Bool)

(declare-fun res!1878731 () Bool)

(assert (=> b!4515285 (=> (not res!1878731) (not e!2813000))))

(assert (=> b!4515285 (= res!1878731 (= (getValueByKey!1081 (toList!4315 lt!1693400) (_1!28819 (h!56475 (_2!28820 lt!1692742)))) (Some!11100 (_2!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515286 () Bool)

(declare-fun contains!13347 (List!50752 tuple2!51050) Bool)

(assert (=> b!4515286 (= e!2813000 (contains!13347 (toList!4315 lt!1693400) (h!56475 (_2!28820 lt!1692742))))))

(assert (= (and d!1389585 res!1878730) b!4515285))

(assert (= (and b!4515285 res!1878731) b!4515286))

(declare-fun m!5258739 () Bool)

(assert (=> d!1389585 m!5258739))

(declare-fun m!5258741 () Bool)

(assert (=> d!1389585 m!5258741))

(declare-fun m!5258743 () Bool)

(assert (=> d!1389585 m!5258743))

(declare-fun m!5258745 () Bool)

(assert (=> d!1389585 m!5258745))

(declare-fun m!5258747 () Bool)

(assert (=> b!4515285 m!5258747))

(declare-fun m!5258749 () Bool)

(assert (=> b!4515286 m!5258749))

(assert (=> b!4514932 d!1389585))

(declare-fun b!4515287 () Bool)

(declare-fun e!2813006 () Bool)

(assert (=> b!4515287 (= e!2813006 (contains!13345 (keys!17582 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun d!1389593 () Bool)

(declare-fun e!2813001 () Bool)

(assert (=> d!1389593 e!2813001))

(declare-fun res!1878732 () Bool)

(assert (=> d!1389593 (=> res!1878732 e!2813001)))

(declare-fun e!2813004 () Bool)

(assert (=> d!1389593 (= res!1878732 e!2813004)))

(declare-fun res!1878733 () Bool)

(assert (=> d!1389593 (=> (not res!1878733) (not e!2813004))))

(declare-fun lt!1693402 () Bool)

(assert (=> d!1389593 (= res!1878733 (not lt!1693402))))

(declare-fun lt!1693409 () Bool)

(assert (=> d!1389593 (= lt!1693402 lt!1693409)))

(declare-fun lt!1693407 () Unit!94076)

(declare-fun e!2813003 () Unit!94076)

(assert (=> d!1389593 (= lt!1693407 e!2813003)))

(declare-fun c!770298 () Bool)

(assert (=> d!1389593 (= c!770298 lt!1693409)))

(assert (=> d!1389593 (= lt!1693409 (containsKey!1766 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1389593 (= (contains!13343 lt!1693151 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693402)))

(declare-fun b!4515288 () Bool)

(declare-fun e!2813002 () List!50755)

(assert (=> b!4515288 (= e!2813002 (keys!17582 lt!1693151))))

(declare-fun b!4515289 () Bool)

(assert (=> b!4515289 (= e!2813002 (getKeysList!459 (toList!4315 lt!1693151)))))

(declare-fun b!4515290 () Bool)

(declare-fun e!2813005 () Unit!94076)

(declare-fun Unit!94202 () Unit!94076)

(assert (=> b!4515290 (= e!2813005 Unit!94202)))

(declare-fun b!4515291 () Bool)

(declare-fun lt!1693403 () Unit!94076)

(assert (=> b!4515291 (= e!2813003 lt!1693403)))

(declare-fun lt!1693405 () Unit!94076)

(assert (=> b!4515291 (= lt!1693405 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4515291 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693408 () Unit!94076)

(assert (=> b!4515291 (= lt!1693408 lt!1693405)))

(assert (=> b!4515291 (= lt!1693403 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun call!314455 () Bool)

(assert (=> b!4515291 call!314455))

(declare-fun b!4515292 () Bool)

(assert (=> b!4515292 (= e!2813004 (not (contains!13345 (keys!17582 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515293 () Bool)

(assert (=> b!4515293 (= e!2813001 e!2813006)))

(declare-fun res!1878734 () Bool)

(assert (=> b!4515293 (=> (not res!1878734) (not e!2813006))))

(assert (=> b!4515293 (= res!1878734 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515294 () Bool)

(assert (=> b!4515294 (= e!2813003 e!2813005)))

(declare-fun c!770299 () Bool)

(assert (=> b!4515294 (= c!770299 call!314455)))

(declare-fun b!4515295 () Bool)

(assert (=> b!4515295 false))

(declare-fun lt!1693406 () Unit!94076)

(declare-fun lt!1693404 () Unit!94076)

(assert (=> b!4515295 (= lt!1693406 lt!1693404)))

(assert (=> b!4515295 (containsKey!1766 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4515295 (= lt!1693404 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1693151) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun Unit!94203 () Unit!94076)

(assert (=> b!4515295 (= e!2813005 Unit!94203)))

(declare-fun bm!314450 () Bool)

(assert (=> bm!314450 (= call!314455 (contains!13345 e!2813002 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun c!770297 () Bool)

(assert (=> bm!314450 (= c!770297 c!770298)))

(assert (= (and d!1389593 c!770298) b!4515291))

(assert (= (and d!1389593 (not c!770298)) b!4515294))

(assert (= (and b!4515294 c!770299) b!4515295))

(assert (= (and b!4515294 (not c!770299)) b!4515290))

(assert (= (or b!4515291 b!4515294) bm!314450))

(assert (= (and bm!314450 c!770297) b!4515289))

(assert (= (and bm!314450 (not c!770297)) b!4515288))

(assert (= (and d!1389593 res!1878733) b!4515292))

(assert (= (and d!1389593 (not res!1878732)) b!4515293))

(assert (= (and b!4515293 res!1878734) b!4515287))

(declare-fun m!5258751 () Bool)

(assert (=> bm!314450 m!5258751))

(declare-fun m!5258753 () Bool)

(assert (=> b!4515288 m!5258753))

(assert (=> b!4515287 m!5258753))

(assert (=> b!4515287 m!5258753))

(declare-fun m!5258755 () Bool)

(assert (=> b!4515287 m!5258755))

(declare-fun m!5258757 () Bool)

(assert (=> d!1389593 m!5258757))

(declare-fun m!5258759 () Bool)

(assert (=> b!4515291 m!5258759))

(declare-fun m!5258761 () Bool)

(assert (=> b!4515291 m!5258761))

(assert (=> b!4515291 m!5258761))

(declare-fun m!5258763 () Bool)

(assert (=> b!4515291 m!5258763))

(declare-fun m!5258765 () Bool)

(assert (=> b!4515291 m!5258765))

(assert (=> b!4515295 m!5258757))

(declare-fun m!5258767 () Bool)

(assert (=> b!4515295 m!5258767))

(declare-fun m!5258769 () Bool)

(assert (=> b!4515289 m!5258769))

(assert (=> b!4515292 m!5258753))

(assert (=> b!4515292 m!5258753))

(assert (=> b!4515292 m!5258755))

(assert (=> b!4515293 m!5258761))

(assert (=> b!4515293 m!5258761))

(assert (=> b!4515293 m!5258763))

(assert (=> b!4514932 d!1389593))

(declare-fun d!1389597 () Bool)

(declare-fun res!1878737 () Bool)

(declare-fun e!2813009 () Bool)

(assert (=> d!1389597 (=> res!1878737 e!2813009)))

(assert (=> d!1389597 (= res!1878737 ((_ is Nil!50628) (toList!4315 lt!1692722)))))

(assert (=> d!1389597 (= (forall!10247 (toList!4315 lt!1692722) lambda!171538) e!2813009)))

(declare-fun b!4515298 () Bool)

(declare-fun e!2813010 () Bool)

(assert (=> b!4515298 (= e!2813009 e!2813010)))

(declare-fun res!1878738 () Bool)

(assert (=> b!4515298 (=> (not res!1878738) (not e!2813010))))

(assert (=> b!4515298 (= res!1878738 (dynLambda!21153 lambda!171538 (h!56475 (toList!4315 lt!1692722))))))

(declare-fun b!4515299 () Bool)

(assert (=> b!4515299 (= e!2813010 (forall!10247 (t!357714 (toList!4315 lt!1692722)) lambda!171538))))

(assert (= (and d!1389597 (not res!1878737)) b!4515298))

(assert (= (and b!4515298 res!1878738) b!4515299))

(declare-fun b_lambda!154147 () Bool)

(assert (=> (not b_lambda!154147) (not b!4515298)))

(declare-fun m!5258771 () Bool)

(assert (=> b!4515298 m!5258771))

(declare-fun m!5258775 () Bool)

(assert (=> b!4515299 m!5258775))

(assert (=> b!4514932 d!1389597))

(declare-fun d!1389599 () Bool)

(assert (=> d!1389599 (dynLambda!21153 lambda!171539 (h!56475 (_2!28820 lt!1692742)))))

(declare-fun lt!1693412 () Unit!94076)

(declare-fun choose!29433 (List!50752 Int tuple2!51050) Unit!94076)

(assert (=> d!1389599 (= lt!1693412 (choose!29433 (toList!4315 lt!1693151) lambda!171539 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun e!2813017 () Bool)

(assert (=> d!1389599 e!2813017))

(declare-fun res!1878745 () Bool)

(assert (=> d!1389599 (=> (not res!1878745) (not e!2813017))))

(assert (=> d!1389599 (= res!1878745 (forall!10247 (toList!4315 lt!1693151) lambda!171539))))

(assert (=> d!1389599 (= (forallContained!2498 (toList!4315 lt!1693151) lambda!171539 (h!56475 (_2!28820 lt!1692742))) lt!1693412)))

(declare-fun b!4515306 () Bool)

(assert (=> b!4515306 (= e!2813017 (contains!13347 (toList!4315 lt!1693151) (h!56475 (_2!28820 lt!1692742))))))

(assert (= (and d!1389599 res!1878745) b!4515306))

(declare-fun b_lambda!154151 () Bool)

(assert (=> (not b_lambda!154151) (not d!1389599)))

(assert (=> d!1389599 m!5258663))

(declare-fun m!5258787 () Bool)

(assert (=> d!1389599 m!5258787))

(assert (=> d!1389599 m!5258133))

(declare-fun m!5258789 () Bool)

(assert (=> b!4515306 m!5258789))

(assert (=> b!4514932 d!1389599))

(declare-fun bs!850198 () Bool)

(declare-fun d!1389607 () Bool)

(assert (= bs!850198 (and d!1389607 b!4514749)))

(declare-fun lambda!171612 () Int)

(assert (=> bs!850198 (= (= lt!1693147 lt!1692939) (= lambda!171612 lambda!171465))))

(declare-fun bs!850199 () Bool)

(assert (= bs!850199 (and d!1389607 b!4515255)))

(assert (=> bs!850199 (= (= lt!1693147 lt!1693368) (= lambda!171612 lambda!171600))))

(declare-fun bs!850200 () Bool)

(assert (= bs!850200 (and d!1389607 b!4515053)))

(assert (=> bs!850200 (= (= lt!1693147 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171612 lambda!171557))))

(declare-fun bs!850201 () Bool)

(assert (= bs!850201 (and d!1389607 d!1389469)))

(assert (=> bs!850201 (= (= lt!1693147 lt!1693221) (= lambda!171612 lambda!171560))))

(declare-fun bs!850202 () Bool)

(assert (= bs!850202 (and d!1389607 b!4514932)))

(assert (=> bs!850202 (= (= lt!1693147 lt!1692722) (= lambda!171612 lambda!171538))))

(declare-fun bs!850203 () Bool)

(assert (= bs!850203 (and d!1389607 b!4515052)))

(assert (=> bs!850203 (= (= lt!1693147 lt!1693223) (= lambda!171612 lambda!171559))))

(assert (=> bs!850198 (= (= lt!1693147 lt!1692734) (= lambda!171612 lambda!171464))))

(assert (=> bs!850203 (= (= lt!1693147 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171612 lambda!171558))))

(declare-fun bs!850204 () Bool)

(assert (= bs!850204 (and d!1389607 d!1389235)))

(assert (=> bs!850204 (not (= lambda!171612 lambda!171416))))

(declare-fun bs!850205 () Bool)

(assert (= bs!850205 (and d!1389607 d!1389427)))

(assert (=> bs!850205 (= (= lt!1693147 lt!1693145) (= lambda!171612 lambda!171540))))

(assert (=> bs!850202 (= lambda!171612 lambda!171539)))

(assert (=> bs!850199 (= (= lt!1693147 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171612 lambda!171599))))

(declare-fun bs!850206 () Bool)

(assert (= bs!850206 (and d!1389607 b!4514933)))

(assert (=> bs!850206 (= (= lt!1693147 lt!1692722) (= lambda!171612 lambda!171537))))

(declare-fun bs!850207 () Bool)

(assert (= bs!850207 (and d!1389607 b!4515256)))

(assert (=> bs!850207 (= (= lt!1693147 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171612 lambda!171598))))

(declare-fun bs!850208 () Bool)

(assert (= bs!850208 (and d!1389607 d!1389279)))

(assert (=> bs!850208 (= (= lt!1693147 lt!1692937) (= lambda!171612 lambda!171466))))

(declare-fun bs!850209 () Bool)

(assert (= bs!850209 (and d!1389607 d!1389575)))

(assert (=> bs!850209 (= (= lt!1693147 lt!1693366) (= lambda!171612 lambda!171601))))

(declare-fun bs!850210 () Bool)

(assert (= bs!850210 (and d!1389607 b!4514750)))

(assert (=> bs!850210 (= (= lt!1693147 lt!1692734) (= lambda!171612 lambda!171463))))

(assert (=> d!1389607 true))

(assert (=> d!1389607 (forall!10247 (toList!4315 lt!1692722) lambda!171612)))

(declare-fun lt!1693421 () Unit!94076)

(declare-fun choose!29434 (ListMap!3577 ListMap!3577 K!12025 V!12271) Unit!94076)

(assert (=> d!1389607 (= lt!1693421 (choose!29434 lt!1692722 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1389607 (forall!10247 (toList!4315 (+!1527 lt!1692722 (tuple2!51051 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))) lambda!171612)))

(assert (=> d!1389607 (= (addForallContainsKeyThenBeforeAdding!331 lt!1692722 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693421)))

(declare-fun bs!850211 () Bool)

(assert (= bs!850211 d!1389607))

(declare-fun m!5258815 () Bool)

(assert (=> bs!850211 m!5258815))

(declare-fun m!5258817 () Bool)

(assert (=> bs!850211 m!5258817))

(declare-fun m!5258819 () Bool)

(assert (=> bs!850211 m!5258819))

(declare-fun m!5258821 () Bool)

(assert (=> bs!850211 m!5258821))

(assert (=> b!4514932 d!1389607))

(declare-fun d!1389617 () Bool)

(declare-fun res!1878765 () Bool)

(declare-fun e!2813033 () Bool)

(assert (=> d!1389617 (=> res!1878765 e!2813033)))

(assert (=> d!1389617 (= res!1878765 ((_ is Nil!50628) (toList!4315 lt!1692722)))))

(assert (=> d!1389617 (= (forall!10247 (toList!4315 lt!1692722) lambda!171539) e!2813033)))

(declare-fun b!4515333 () Bool)

(declare-fun e!2813034 () Bool)

(assert (=> b!4515333 (= e!2813033 e!2813034)))

(declare-fun res!1878766 () Bool)

(assert (=> b!4515333 (=> (not res!1878766) (not e!2813034))))

(assert (=> b!4515333 (= res!1878766 (dynLambda!21153 lambda!171539 (h!56475 (toList!4315 lt!1692722))))))

(declare-fun b!4515334 () Bool)

(assert (=> b!4515334 (= e!2813034 (forall!10247 (t!357714 (toList!4315 lt!1692722)) lambda!171539))))

(assert (= (and d!1389617 (not res!1878765)) b!4515333))

(assert (= (and b!4515333 res!1878766) b!4515334))

(declare-fun b_lambda!154155 () Bool)

(assert (=> (not b_lambda!154155) (not b!4515333)))

(declare-fun m!5258823 () Bool)

(assert (=> b!4515333 m!5258823))

(declare-fun m!5258825 () Bool)

(assert (=> b!4515334 m!5258825))

(assert (=> b!4514932 d!1389617))

(declare-fun b!4515335 () Bool)

(declare-fun e!2813040 () Bool)

(assert (=> b!4515335 (= e!2813040 (contains!13345 (keys!17582 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun d!1389619 () Bool)

(declare-fun e!2813035 () Bool)

(assert (=> d!1389619 e!2813035))

(declare-fun res!1878767 () Bool)

(assert (=> d!1389619 (=> res!1878767 e!2813035)))

(declare-fun e!2813038 () Bool)

(assert (=> d!1389619 (= res!1878767 e!2813038)))

(declare-fun res!1878768 () Bool)

(assert (=> d!1389619 (=> (not res!1878768) (not e!2813038))))

(declare-fun lt!1693422 () Bool)

(assert (=> d!1389619 (= res!1878768 (not lt!1693422))))

(declare-fun lt!1693429 () Bool)

(assert (=> d!1389619 (= lt!1693422 lt!1693429)))

(declare-fun lt!1693427 () Unit!94076)

(declare-fun e!2813037 () Unit!94076)

(assert (=> d!1389619 (= lt!1693427 e!2813037)))

(declare-fun c!770303 () Bool)

(assert (=> d!1389619 (= c!770303 lt!1693429)))

(assert (=> d!1389619 (= lt!1693429 (containsKey!1766 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1389619 (= (contains!13343 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693422)))

(declare-fun b!4515336 () Bool)

(declare-fun e!2813036 () List!50755)

(assert (=> b!4515336 (= e!2813036 (keys!17582 lt!1693147))))

(declare-fun b!4515337 () Bool)

(assert (=> b!4515337 (= e!2813036 (getKeysList!459 (toList!4315 lt!1693147)))))

(declare-fun b!4515338 () Bool)

(declare-fun e!2813039 () Unit!94076)

(declare-fun Unit!94204 () Unit!94076)

(assert (=> b!4515338 (= e!2813039 Unit!94204)))

(declare-fun b!4515339 () Bool)

(declare-fun lt!1693423 () Unit!94076)

(assert (=> b!4515339 (= e!2813037 lt!1693423)))

(declare-fun lt!1693425 () Unit!94076)

(assert (=> b!4515339 (= lt!1693425 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4515339 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693428 () Unit!94076)

(assert (=> b!4515339 (= lt!1693428 lt!1693425)))

(assert (=> b!4515339 (= lt!1693423 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun call!314456 () Bool)

(assert (=> b!4515339 call!314456))

(declare-fun b!4515340 () Bool)

(assert (=> b!4515340 (= e!2813038 (not (contains!13345 (keys!17582 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515341 () Bool)

(assert (=> b!4515341 (= e!2813035 e!2813040)))

(declare-fun res!1878769 () Bool)

(assert (=> b!4515341 (=> (not res!1878769) (not e!2813040))))

(assert (=> b!4515341 (= res!1878769 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515342 () Bool)

(assert (=> b!4515342 (= e!2813037 e!2813039)))

(declare-fun c!770304 () Bool)

(assert (=> b!4515342 (= c!770304 call!314456)))

(declare-fun b!4515343 () Bool)

(assert (=> b!4515343 false))

(declare-fun lt!1693426 () Unit!94076)

(declare-fun lt!1693424 () Unit!94076)

(assert (=> b!4515343 (= lt!1693426 lt!1693424)))

(assert (=> b!4515343 (containsKey!1766 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4515343 (= lt!1693424 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1693147) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun Unit!94205 () Unit!94076)

(assert (=> b!4515343 (= e!2813039 Unit!94205)))

(declare-fun bm!314451 () Bool)

(assert (=> bm!314451 (= call!314456 (contains!13345 e!2813036 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun c!770302 () Bool)

(assert (=> bm!314451 (= c!770302 c!770303)))

(assert (= (and d!1389619 c!770303) b!4515339))

(assert (= (and d!1389619 (not c!770303)) b!4515342))

(assert (= (and b!4515342 c!770304) b!4515343))

(assert (= (and b!4515342 (not c!770304)) b!4515338))

(assert (= (or b!4515339 b!4515342) bm!314451))

(assert (= (and bm!314451 c!770302) b!4515337))

(assert (= (and bm!314451 (not c!770302)) b!4515336))

(assert (= (and d!1389619 res!1878768) b!4515340))

(assert (= (and d!1389619 (not res!1878767)) b!4515341))

(assert (= (and b!4515341 res!1878769) b!4515335))

(declare-fun m!5258831 () Bool)

(assert (=> bm!314451 m!5258831))

(declare-fun m!5258833 () Bool)

(assert (=> b!4515336 m!5258833))

(assert (=> b!4515335 m!5258833))

(assert (=> b!4515335 m!5258833))

(declare-fun m!5258835 () Bool)

(assert (=> b!4515335 m!5258835))

(declare-fun m!5258837 () Bool)

(assert (=> d!1389619 m!5258837))

(declare-fun m!5258839 () Bool)

(assert (=> b!4515339 m!5258839))

(declare-fun m!5258841 () Bool)

(assert (=> b!4515339 m!5258841))

(assert (=> b!4515339 m!5258841))

(declare-fun m!5258843 () Bool)

(assert (=> b!4515339 m!5258843))

(declare-fun m!5258845 () Bool)

(assert (=> b!4515339 m!5258845))

(assert (=> b!4515343 m!5258837))

(declare-fun m!5258847 () Bool)

(assert (=> b!4515343 m!5258847))

(declare-fun m!5258849 () Bool)

(assert (=> b!4515337 m!5258849))

(assert (=> b!4515340 m!5258833))

(assert (=> b!4515340 m!5258833))

(assert (=> b!4515340 m!5258835))

(assert (=> b!4515341 m!5258841))

(assert (=> b!4515341 m!5258841))

(assert (=> b!4515341 m!5258843))

(assert (=> b!4514932 d!1389619))

(declare-fun d!1389623 () Bool)

(declare-fun res!1878773 () Bool)

(declare-fun e!2813043 () Bool)

(assert (=> d!1389623 (=> res!1878773 e!2813043)))

(assert (=> d!1389623 (= res!1878773 ((_ is Nil!50628) (toList!4315 lt!1693151)))))

(assert (=> d!1389623 (= (forall!10247 (toList!4315 lt!1693151) lambda!171539) e!2813043)))

(declare-fun b!4515349 () Bool)

(declare-fun e!2813044 () Bool)

(assert (=> b!4515349 (= e!2813043 e!2813044)))

(declare-fun res!1878774 () Bool)

(assert (=> b!4515349 (=> (not res!1878774) (not e!2813044))))

(assert (=> b!4515349 (= res!1878774 (dynLambda!21153 lambda!171539 (h!56475 (toList!4315 lt!1693151))))))

(declare-fun b!4515350 () Bool)

(assert (=> b!4515350 (= e!2813044 (forall!10247 (t!357714 (toList!4315 lt!1693151)) lambda!171539))))

(assert (= (and d!1389623 (not res!1878773)) b!4515349))

(assert (= (and b!4515349 res!1878774) b!4515350))

(declare-fun b_lambda!154157 () Bool)

(assert (=> (not b_lambda!154157) (not b!4515349)))

(declare-fun m!5258851 () Bool)

(assert (=> b!4515349 m!5258851))

(declare-fun m!5258853 () Bool)

(assert (=> b!4515350 m!5258853))

(assert (=> b!4514932 d!1389623))

(declare-fun b!4515353 () Bool)

(declare-fun e!2813046 () Option!11099)

(assert (=> b!4515353 (= e!2813046 (getValueByKey!1079 (t!357715 (toList!4316 lm!1477)) hash!344))))

(declare-fun b!4515354 () Bool)

(assert (=> b!4515354 (= e!2813046 None!11098)))

(declare-fun b!4515351 () Bool)

(declare-fun e!2813045 () Option!11099)

(assert (=> b!4515351 (= e!2813045 (Some!11098 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(declare-fun d!1389625 () Bool)

(declare-fun c!770306 () Bool)

(assert (=> d!1389625 (= c!770306 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (= (_1!28820 (h!56476 (toList!4316 lm!1477))) hash!344)))))

(assert (=> d!1389625 (= (getValueByKey!1079 (toList!4316 lm!1477) hash!344) e!2813045)))

(declare-fun b!4515352 () Bool)

(assert (=> b!4515352 (= e!2813045 e!2813046)))

(declare-fun c!770307 () Bool)

(assert (=> b!4515352 (= c!770307 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (not (= (_1!28820 (h!56476 (toList!4316 lm!1477))) hash!344))))))

(assert (= (and d!1389625 c!770306) b!4515351))

(assert (= (and d!1389625 (not c!770306)) b!4515352))

(assert (= (and b!4515352 c!770307) b!4515353))

(assert (= (and b!4515352 (not c!770307)) b!4515354))

(declare-fun m!5258869 () Bool)

(assert (=> b!4515353 m!5258869))

(assert (=> b!4514900 d!1389625))

(declare-fun d!1389629 () Bool)

(declare-fun c!770311 () Bool)

(assert (=> d!1389629 (= c!770311 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(declare-fun e!2813051 () (InoxSet tuple2!51052))

(assert (=> d!1389629 (= (content!8338 (toList!4316 lm!1477)) e!2813051)))

(declare-fun b!4515364 () Bool)

(assert (=> b!4515364 (= e!2813051 ((as const (Array tuple2!51052 Bool)) false))))

(declare-fun b!4515365 () Bool)

(assert (=> b!4515365 (= e!2813051 ((_ map or) (store ((as const (Array tuple2!51052 Bool)) false) (h!56476 (toList!4316 lm!1477)) true) (content!8338 (t!357715 (toList!4316 lm!1477)))))))

(assert (= (and d!1389629 c!770311) b!4515364))

(assert (= (and d!1389629 (not c!770311)) b!4515365))

(declare-fun m!5258891 () Bool)

(assert (=> b!4515365 m!5258891))

(assert (=> b!4515365 m!5257435))

(assert (=> d!1389411 d!1389629))

(declare-fun d!1389635 () Bool)

(assert (=> d!1389635 (= (invariantList!1011 (toList!4315 lt!1693089)) (noDuplicatedKeys!256 (toList!4315 lt!1693089)))))

(declare-fun bs!850226 () Bool)

(assert (= bs!850226 d!1389635))

(declare-fun m!5258895 () Bool)

(assert (=> bs!850226 m!5258895))

(assert (=> d!1389367 d!1389635))

(declare-fun d!1389637 () Bool)

(declare-fun res!1878783 () Bool)

(declare-fun e!2813055 () Bool)

(assert (=> d!1389637 (=> res!1878783 e!2813055)))

(assert (=> d!1389637 (= res!1878783 ((_ is Nil!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389637 (= (forall!10245 (toList!4316 lt!1692730) lambda!171521) e!2813055)))

(declare-fun b!4515371 () Bool)

(declare-fun e!2813056 () Bool)

(assert (=> b!4515371 (= e!2813055 e!2813056)))

(declare-fun res!1878784 () Bool)

(assert (=> b!4515371 (=> (not res!1878784) (not e!2813056))))

(assert (=> b!4515371 (= res!1878784 (dynLambda!21150 lambda!171521 (h!56476 (toList!4316 lt!1692730))))))

(declare-fun b!4515372 () Bool)

(assert (=> b!4515372 (= e!2813056 (forall!10245 (t!357715 (toList!4316 lt!1692730)) lambda!171521))))

(assert (= (and d!1389637 (not res!1878783)) b!4515371))

(assert (= (and b!4515371 res!1878784) b!4515372))

(declare-fun b_lambda!154159 () Bool)

(assert (=> (not b_lambda!154159) (not b!4515371)))

(declare-fun m!5258901 () Bool)

(assert (=> b!4515371 m!5258901))

(declare-fun m!5258903 () Bool)

(assert (=> b!4515372 m!5258903))

(assert (=> d!1389367 d!1389637))

(declare-fun d!1389641 () Bool)

(declare-fun res!1878785 () Bool)

(declare-fun e!2813057 () Bool)

(assert (=> d!1389641 (=> res!1878785 e!2813057)))

(assert (=> d!1389641 (= res!1878785 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389641 (= (forall!10245 (toList!4316 lm!1477) lambda!171524) e!2813057)))

(declare-fun b!4515373 () Bool)

(declare-fun e!2813058 () Bool)

(assert (=> b!4515373 (= e!2813057 e!2813058)))

(declare-fun res!1878786 () Bool)

(assert (=> b!4515373 (=> (not res!1878786) (not e!2813058))))

(assert (=> b!4515373 (= res!1878786 (dynLambda!21150 lambda!171524 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4515374 () Bool)

(assert (=> b!4515374 (= e!2813058 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171524))))

(assert (= (and d!1389641 (not res!1878785)) b!4515373))

(assert (= (and b!4515373 res!1878786) b!4515374))

(declare-fun b_lambda!154161 () Bool)

(assert (=> (not b_lambda!154161) (not b!4515373)))

(declare-fun m!5258905 () Bool)

(assert (=> b!4515373 m!5258905))

(declare-fun m!5258907 () Bool)

(assert (=> b!4515374 m!5258907))

(assert (=> d!1389369 d!1389641))

(declare-fun d!1389643 () Bool)

(declare-fun res!1878787 () Bool)

(declare-fun e!2813059 () Bool)

(assert (=> d!1389643 (=> res!1878787 e!2813059)))

(assert (=> d!1389643 (= res!1878787 ((_ is Nil!50628) (toList!4315 lt!1692722)))))

(assert (=> d!1389643 (= (forall!10247 (toList!4315 lt!1692722) (ite c!770209 lambda!171537 lambda!171539)) e!2813059)))

(declare-fun b!4515375 () Bool)

(declare-fun e!2813060 () Bool)

(assert (=> b!4515375 (= e!2813059 e!2813060)))

(declare-fun res!1878788 () Bool)

(assert (=> b!4515375 (=> (not res!1878788) (not e!2813060))))

(assert (=> b!4515375 (= res!1878788 (dynLambda!21153 (ite c!770209 lambda!171537 lambda!171539) (h!56475 (toList!4315 lt!1692722))))))

(declare-fun b!4515376 () Bool)

(assert (=> b!4515376 (= e!2813060 (forall!10247 (t!357714 (toList!4315 lt!1692722)) (ite c!770209 lambda!171537 lambda!171539)))))

(assert (= (and d!1389643 (not res!1878787)) b!4515375))

(assert (= (and b!4515375 res!1878788) b!4515376))

(declare-fun b_lambda!154163 () Bool)

(assert (=> (not b_lambda!154163) (not b!4515375)))

(declare-fun m!5258917 () Bool)

(assert (=> b!4515375 m!5258917))

(declare-fun m!5258921 () Bool)

(assert (=> b!4515376 m!5258921))

(assert (=> bm!314423 d!1389643))

(assert (=> d!1389269 d!1389463))

(assert (=> b!4514914 d!1389229))

(declare-fun d!1389645 () Bool)

(assert (=> d!1389645 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(declare-fun lt!1693434 () Unit!94076)

(assert (=> d!1389645 (= lt!1693434 (choose!29427 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(assert (=> d!1389645 (invariantList!1011 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1389645 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) lt!1693434)))

(declare-fun bs!850237 () Bool)

(assert (= bs!850237 d!1389645))

(assert (=> bs!850237 m!5257865))

(assert (=> bs!850237 m!5257865))

(assert (=> bs!850237 m!5257867))

(declare-fun m!5258927 () Bool)

(assert (=> bs!850237 m!5258927))

(declare-fun m!5258929 () Bool)

(assert (=> bs!850237 m!5258929))

(assert (=> b!4514830 d!1389645))

(declare-fun d!1389649 () Bool)

(assert (=> d!1389649 (= (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287)) (not (isEmpty!28646 (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))))

(declare-fun bs!850238 () Bool)

(assert (= bs!850238 d!1389649))

(assert (=> bs!850238 m!5257865))

(declare-fun m!5258935 () Bool)

(assert (=> bs!850238 m!5258935))

(assert (=> b!4514830 d!1389649))

(declare-fun b!4515381 () Bool)

(declare-fun e!2813064 () Option!11101)

(assert (=> b!4515381 (= e!2813064 (getValueByKey!1081 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(declare-fun d!1389653 () Bool)

(declare-fun c!770312 () Bool)

(assert (=> d!1389653 (= c!770312 (and ((_ is Cons!50628) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) key!3287)))))

(declare-fun e!2813063 () Option!11101)

(assert (=> d!1389653 (= (getValueByKey!1081 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) e!2813063)))

(declare-fun b!4515380 () Bool)

(assert (=> b!4515380 (= e!2813063 e!2813064)))

(declare-fun c!770313 () Bool)

(assert (=> b!4515380 (= c!770313 (and ((_ is Cons!50628) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (not (= (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) key!3287))))))

(declare-fun b!4515382 () Bool)

(assert (=> b!4515382 (= e!2813064 None!11100)))

(declare-fun b!4515379 () Bool)

(assert (=> b!4515379 (= e!2813063 (Some!11100 (_2!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))))

(assert (= (and d!1389653 c!770312) b!4515379))

(assert (= (and d!1389653 (not c!770312)) b!4515380))

(assert (= (and b!4515380 c!770313) b!4515381))

(assert (= (and b!4515380 (not c!770313)) b!4515382))

(declare-fun m!5258937 () Bool)

(assert (=> b!4515381 m!5258937))

(assert (=> b!4514830 d!1389653))

(declare-fun d!1389655 () Bool)

(assert (=> d!1389655 (contains!13345 (getKeysList!459 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287)))

(declare-fun lt!1693435 () Unit!94076)

(assert (=> d!1389655 (= lt!1693435 (choose!29428 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(assert (=> d!1389655 (invariantList!1011 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1389655 (= (lemmaInListThenGetKeysListContains!455 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) lt!1693435)))

(declare-fun bs!850239 () Bool)

(assert (= bs!850239 d!1389655))

(assert (=> bs!850239 m!5257873))

(assert (=> bs!850239 m!5257873))

(declare-fun m!5258943 () Bool)

(assert (=> bs!850239 m!5258943))

(declare-fun m!5258945 () Bool)

(assert (=> bs!850239 m!5258945))

(assert (=> bs!850239 m!5258929))

(assert (=> b!4514830 d!1389655))

(declare-fun d!1389659 () Bool)

(declare-fun res!1878805 () Bool)

(declare-fun e!2813079 () Bool)

(assert (=> d!1389659 (=> res!1878805 e!2813079)))

(assert (=> d!1389659 (= res!1878805 (and ((_ is Cons!50628) (toList!4315 lt!1692724)) (= (_1!28819 (h!56475 (toList!4315 lt!1692724))) key!3287)))))

(assert (=> d!1389659 (= (containsKey!1766 (toList!4315 lt!1692724) key!3287) e!2813079)))

(declare-fun b!4515399 () Bool)

(declare-fun e!2813080 () Bool)

(assert (=> b!4515399 (= e!2813079 e!2813080)))

(declare-fun res!1878806 () Bool)

(assert (=> b!4515399 (=> (not res!1878806) (not e!2813080))))

(assert (=> b!4515399 (= res!1878806 ((_ is Cons!50628) (toList!4315 lt!1692724)))))

(declare-fun b!4515400 () Bool)

(assert (=> b!4515400 (= e!2813080 (containsKey!1766 (t!357714 (toList!4315 lt!1692724)) key!3287))))

(assert (= (and d!1389659 (not res!1878805)) b!4515399))

(assert (= (and b!4515399 res!1878806) b!4515400))

(declare-fun m!5258953 () Bool)

(assert (=> b!4515400 m!5258953))

(assert (=> d!1389419 d!1389659))

(declare-fun d!1389665 () Bool)

(assert (=> d!1389665 (= (invariantList!1011 (toList!4315 lt!1692937)) (noDuplicatedKeys!256 (toList!4315 lt!1692937)))))

(declare-fun bs!850253 () Bool)

(assert (= bs!850253 d!1389665))

(declare-fun m!5258955 () Bool)

(assert (=> bs!850253 m!5258955))

(assert (=> b!4514751 d!1389665))

(declare-fun d!1389667 () Bool)

(declare-fun res!1878807 () Bool)

(declare-fun e!2813081 () Bool)

(assert (=> d!1389667 (=> res!1878807 e!2813081)))

(assert (=> d!1389667 (= res!1878807 (and ((_ is Cons!50628) lt!1693118) (= (_1!28819 (h!56475 lt!1693118)) key!3287)))))

(assert (=> d!1389667 (= (containsKey!1762 lt!1693118 key!3287) e!2813081)))

(declare-fun b!4515401 () Bool)

(declare-fun e!2813082 () Bool)

(assert (=> b!4515401 (= e!2813081 e!2813082)))

(declare-fun res!1878808 () Bool)

(assert (=> b!4515401 (=> (not res!1878808) (not e!2813082))))

(assert (=> b!4515401 (= res!1878808 ((_ is Cons!50628) lt!1693118))))

(declare-fun b!4515402 () Bool)

(assert (=> b!4515402 (= e!2813082 (containsKey!1762 (t!357714 lt!1693118) key!3287))))

(assert (= (and d!1389667 (not res!1878807)) b!4515401))

(assert (= (and b!4515401 res!1878808) b!4515402))

(declare-fun m!5258957 () Bool)

(assert (=> b!4515402 m!5258957))

(assert (=> d!1389409 d!1389667))

(declare-fun d!1389669 () Bool)

(declare-fun res!1878809 () Bool)

(declare-fun e!2813083 () Bool)

(assert (=> d!1389669 (=> res!1878809 e!2813083)))

(assert (=> d!1389669 (= res!1878809 (not ((_ is Cons!50628) lt!1692723)))))

(assert (=> d!1389669 (= (noDuplicateKeys!1154 lt!1692723) e!2813083)))

(declare-fun b!4515403 () Bool)

(declare-fun e!2813084 () Bool)

(assert (=> b!4515403 (= e!2813083 e!2813084)))

(declare-fun res!1878810 () Bool)

(assert (=> b!4515403 (=> (not res!1878810) (not e!2813084))))

(assert (=> b!4515403 (= res!1878810 (not (containsKey!1762 (t!357714 lt!1692723) (_1!28819 (h!56475 lt!1692723)))))))

(declare-fun b!4515404 () Bool)

(assert (=> b!4515404 (= e!2813084 (noDuplicateKeys!1154 (t!357714 lt!1692723)))))

(assert (= (and d!1389669 (not res!1878809)) b!4515403))

(assert (= (and b!4515403 res!1878810) b!4515404))

(declare-fun m!5258959 () Bool)

(assert (=> b!4515403 m!5258959))

(assert (=> b!4515404 m!5258465))

(assert (=> d!1389409 d!1389669))

(declare-fun d!1389671 () Bool)

(declare-fun res!1878811 () Bool)

(declare-fun e!2813085 () Bool)

(assert (=> d!1389671 (=> res!1878811 e!2813085)))

(assert (=> d!1389671 (= res!1878811 (and ((_ is Cons!50628) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) key!3287)))))

(assert (=> d!1389671 (= (containsKey!1766 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) e!2813085)))

(declare-fun b!4515405 () Bool)

(declare-fun e!2813086 () Bool)

(assert (=> b!4515405 (= e!2813085 e!2813086)))

(declare-fun res!1878812 () Bool)

(assert (=> b!4515405 (=> (not res!1878812) (not e!2813086))))

(assert (=> b!4515405 (= res!1878812 ((_ is Cons!50628) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4515406 () Bool)

(assert (=> b!4515406 (= e!2813086 (containsKey!1766 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(assert (= (and d!1389671 (not res!1878811)) b!4515405))

(assert (= (and b!4515405 res!1878812) b!4515406))

(declare-fun m!5258961 () Bool)

(assert (=> b!4515406 m!5258961))

(assert (=> b!4514834 d!1389671))

(declare-fun d!1389673 () Bool)

(assert (=> d!1389673 (containsKey!1766 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287)))

(declare-fun lt!1693459 () Unit!94076)

(declare-fun choose!29435 (List!50752 K!12025) Unit!94076)

(assert (=> d!1389673 (= lt!1693459 (choose!29435 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(assert (=> d!1389673 (invariantList!1011 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1389673 (= (lemmaInGetKeysListThenContainsKey!458 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) key!3287) lt!1693459)))

(declare-fun bs!850270 () Bool)

(assert (= bs!850270 d!1389673))

(assert (=> bs!850270 m!5257861))

(declare-fun m!5258963 () Bool)

(assert (=> bs!850270 m!5258963))

(assert (=> bs!850270 m!5258929))

(assert (=> b!4514834 d!1389673))

(declare-fun d!1389675 () Bool)

(declare-fun lt!1693460 () Bool)

(assert (=> d!1389675 (= lt!1693460 (select (content!8341 (keys!17582 lt!1692728)) key!3287))))

(declare-fun e!2813088 () Bool)

(assert (=> d!1389675 (= lt!1693460 e!2813088)))

(declare-fun res!1878814 () Bool)

(assert (=> d!1389675 (=> (not res!1878814) (not e!2813088))))

(assert (=> d!1389675 (= res!1878814 ((_ is Cons!50631) (keys!17582 lt!1692728)))))

(assert (=> d!1389675 (= (contains!13345 (keys!17582 lt!1692728) key!3287) lt!1693460)))

(declare-fun b!4515407 () Bool)

(declare-fun e!2813087 () Bool)

(assert (=> b!4515407 (= e!2813088 e!2813087)))

(declare-fun res!1878813 () Bool)

(assert (=> b!4515407 (=> res!1878813 e!2813087)))

(assert (=> b!4515407 (= res!1878813 (= (h!56480 (keys!17582 lt!1692728)) key!3287))))

(declare-fun b!4515408 () Bool)

(assert (=> b!4515408 (= e!2813087 (contains!13345 (t!357717 (keys!17582 lt!1692728)) key!3287))))

(assert (= (and d!1389675 res!1878814) b!4515407))

(assert (= (and b!4515407 (not res!1878813)) b!4515408))

(assert (=> d!1389675 m!5257937))

(assert (=> d!1389675 m!5258013))

(declare-fun m!5258965 () Bool)

(assert (=> d!1389675 m!5258965))

(declare-fun m!5258967 () Bool)

(assert (=> b!4515408 m!5258967))

(assert (=> b!4514854 d!1389675))

(assert (=> b!4514854 d!1389503))

(declare-fun d!1389677 () Bool)

(assert (=> d!1389677 (dynLambda!21150 lambda!171413 (h!56476 (toList!4316 lm!1477)))))

(assert (=> d!1389677 true))

(declare-fun _$7!1817 () Unit!94076)

(assert (=> d!1389677 (= (choose!29410 (toList!4316 lm!1477) lambda!171413 (h!56476 (toList!4316 lm!1477))) _$7!1817)))

(declare-fun b_lambda!154167 () Bool)

(assert (=> (not b_lambda!154167) (not d!1389677)))

(declare-fun bs!850271 () Bool)

(assert (= bs!850271 d!1389677))

(assert (=> bs!850271 m!5257477))

(assert (=> d!1389245 d!1389677))

(assert (=> d!1389245 d!1389267))

(assert (=> b!4514826 d!1389455))

(assert (=> b!4514826 d!1389457))

(declare-fun d!1389679 () Bool)

(assert (=> d!1389679 (= (get!16572 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344)) (v!44674 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344)))))

(assert (=> d!1389261 d!1389679))

(declare-fun b!4515411 () Bool)

(declare-fun e!2813090 () Option!11099)

(assert (=> b!4515411 (= e!2813090 (getValueByKey!1079 (t!357715 (toList!4316 lt!1692730)) hash!344))))

(declare-fun b!4515412 () Bool)

(assert (=> b!4515412 (= e!2813090 None!11098)))

(declare-fun b!4515409 () Bool)

(declare-fun e!2813089 () Option!11099)

(assert (=> b!4515409 (= e!2813089 (Some!11098 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(declare-fun d!1389681 () Bool)

(declare-fun c!770315 () Bool)

(assert (=> d!1389681 (= c!770315 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (= (_1!28820 (h!56476 (toList!4316 lt!1692730))) hash!344)))))

(assert (=> d!1389681 (= (getValueByKey!1079 (toList!4316 lt!1692730) hash!344) e!2813089)))

(declare-fun b!4515410 () Bool)

(assert (=> b!4515410 (= e!2813089 e!2813090)))

(declare-fun c!770316 () Bool)

(assert (=> b!4515410 (= c!770316 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (not (= (_1!28820 (h!56476 (toList!4316 lt!1692730))) hash!344))))))

(assert (= (and d!1389681 c!770315) b!4515409))

(assert (= (and d!1389681 (not c!770315)) b!4515410))

(assert (= (and b!4515410 c!770316) b!4515411))

(assert (= (and b!4515410 (not c!770316)) b!4515412))

(declare-fun m!5258969 () Bool)

(assert (=> b!4515411 m!5258969))

(assert (=> d!1389261 d!1389681))

(assert (=> d!1389333 d!1389331))

(declare-fun d!1389683 () Bool)

(assert (=> d!1389683 (containsKeyBiggerList!134 (toList!4316 lt!1692730) key!3287)))

(assert (=> d!1389683 true))

(declare-fun _$33!652 () Unit!94076)

(assert (=> d!1389683 (= (choose!29413 lt!1692730 key!3287 hashF!1107) _$33!652)))

(declare-fun bs!850275 () Bool)

(assert (= bs!850275 d!1389683))

(assert (=> bs!850275 m!5257409))

(assert (=> d!1389333 d!1389683))

(declare-fun d!1389685 () Bool)

(declare-fun res!1878815 () Bool)

(declare-fun e!2813091 () Bool)

(assert (=> d!1389685 (=> res!1878815 e!2813091)))

(assert (=> d!1389685 (= res!1878815 ((_ is Nil!50629) (toList!4316 lt!1692730)))))

(assert (=> d!1389685 (= (forall!10245 (toList!4316 lt!1692730) lambda!171504) e!2813091)))

(declare-fun b!4515413 () Bool)

(declare-fun e!2813092 () Bool)

(assert (=> b!4515413 (= e!2813091 e!2813092)))

(declare-fun res!1878816 () Bool)

(assert (=> b!4515413 (=> (not res!1878816) (not e!2813092))))

(assert (=> b!4515413 (= res!1878816 (dynLambda!21150 lambda!171504 (h!56476 (toList!4316 lt!1692730))))))

(declare-fun b!4515414 () Bool)

(assert (=> b!4515414 (= e!2813092 (forall!10245 (t!357715 (toList!4316 lt!1692730)) lambda!171504))))

(assert (= (and d!1389685 (not res!1878815)) b!4515413))

(assert (= (and b!4515413 res!1878816) b!4515414))

(declare-fun b_lambda!154169 () Bool)

(assert (=> (not b_lambda!154169) (not b!4515413)))

(declare-fun m!5258971 () Bool)

(assert (=> b!4515413 m!5258971))

(declare-fun m!5258973 () Bool)

(assert (=> b!4515414 m!5258973))

(assert (=> d!1389333 d!1389685))

(declare-fun d!1389687 () Bool)

(declare-fun res!1878817 () Bool)

(declare-fun e!2813093 () Bool)

(assert (=> d!1389687 (=> res!1878817 e!2813093)))

(assert (=> d!1389687 (= res!1878817 (and ((_ is Cons!50628) (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))) (= (_1!28819 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))) key!3287)))))

(assert (=> d!1389687 (= (containsKey!1762 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) key!3287) e!2813093)))

(declare-fun b!4515415 () Bool)

(declare-fun e!2813094 () Bool)

(assert (=> b!4515415 (= e!2813093 e!2813094)))

(declare-fun res!1878818 () Bool)

(assert (=> b!4515415 (=> (not res!1878818) (not e!2813094))))

(assert (=> b!4515415 (= res!1878818 ((_ is Cons!50628) (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4515416 () Bool)

(assert (=> b!4515416 (= e!2813094 (containsKey!1762 (t!357714 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(assert (= (and d!1389687 (not res!1878817)) b!4515415))

(assert (= (and b!4515415 res!1878818) b!4515416))

(declare-fun m!5258975 () Bool)

(assert (=> b!4515416 m!5258975))

(assert (=> b!4514782 d!1389687))

(declare-fun d!1389689 () Bool)

(declare-fun res!1878819 () Bool)

(declare-fun e!2813095 () Bool)

(assert (=> d!1389689 (=> res!1878819 e!2813095)))

(assert (=> d!1389689 (= res!1878819 ((_ is Nil!50628) (toList!4315 lt!1692734)))))

(assert (=> d!1389689 (= (forall!10247 (toList!4315 lt!1692734) lambda!171466) e!2813095)))

(declare-fun b!4515417 () Bool)

(declare-fun e!2813096 () Bool)

(assert (=> b!4515417 (= e!2813095 e!2813096)))

(declare-fun res!1878820 () Bool)

(assert (=> b!4515417 (=> (not res!1878820) (not e!2813096))))

(assert (=> b!4515417 (= res!1878820 (dynLambda!21153 lambda!171466 (h!56475 (toList!4315 lt!1692734))))))

(declare-fun b!4515418 () Bool)

(assert (=> b!4515418 (= e!2813096 (forall!10247 (t!357714 (toList!4315 lt!1692734)) lambda!171466))))

(assert (= (and d!1389689 (not res!1878819)) b!4515417))

(assert (= (and b!4515417 res!1878820) b!4515418))

(declare-fun b_lambda!154171 () Bool)

(assert (=> (not b_lambda!154171) (not b!4515417)))

(declare-fun m!5258977 () Bool)

(assert (=> b!4515417 m!5258977))

(declare-fun m!5258979 () Bool)

(assert (=> b!4515418 m!5258979))

(assert (=> b!4514747 d!1389689))

(declare-fun d!1389691 () Bool)

(assert (=> d!1389691 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344))))

(declare-fun lt!1693461 () Unit!94076)

(assert (=> d!1389691 (= lt!1693461 (choose!29431 (toList!4316 lt!1692730) hash!344))))

(declare-fun e!2813097 () Bool)

(assert (=> d!1389691 e!2813097))

(declare-fun res!1878821 () Bool)

(assert (=> d!1389691 (=> (not res!1878821) (not e!2813097))))

(assert (=> d!1389691 (= res!1878821 (isStrictlySorted!424 (toList!4316 lt!1692730)))))

(assert (=> d!1389691 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1692730) hash!344) lt!1693461)))

(declare-fun b!4515419 () Bool)

(assert (=> b!4515419 (= e!2813097 (containsKey!1763 (toList!4316 lt!1692730) hash!344))))

(assert (= (and d!1389691 res!1878821) b!4515419))

(assert (=> d!1389691 m!5257429))

(assert (=> d!1389691 m!5257429))

(assert (=> d!1389691 m!5257431))

(declare-fun m!5258981 () Bool)

(assert (=> d!1389691 m!5258981))

(assert (=> d!1389691 m!5258257))

(assert (=> b!4515419 m!5257425))

(assert (=> b!4514585 d!1389691))

(declare-fun d!1389693 () Bool)

(assert (=> d!1389693 (= (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344)) (not (isEmpty!28648 (getValueByKey!1079 (toList!4316 lt!1692730) hash!344))))))

(declare-fun bs!850289 () Bool)

(assert (= bs!850289 d!1389693))

(assert (=> bs!850289 m!5257429))

(declare-fun m!5258983 () Bool)

(assert (=> bs!850289 m!5258983))

(assert (=> b!4514585 d!1389693))

(assert (=> b!4514585 d!1389681))

(declare-fun d!1389695 () Bool)

(declare-fun lt!1693462 () Bool)

(assert (=> d!1389695 (= lt!1693462 (select (content!8338 (toList!4316 lt!1692801)) lt!1692726))))

(declare-fun e!2813099 () Bool)

(assert (=> d!1389695 (= lt!1693462 e!2813099)))

(declare-fun res!1878822 () Bool)

(assert (=> d!1389695 (=> (not res!1878822) (not e!2813099))))

(assert (=> d!1389695 (= res!1878822 ((_ is Cons!50629) (toList!4316 lt!1692801)))))

(assert (=> d!1389695 (= (contains!13341 (toList!4316 lt!1692801) lt!1692726) lt!1693462)))

(declare-fun b!4515420 () Bool)

(declare-fun e!2813098 () Bool)

(assert (=> b!4515420 (= e!2813099 e!2813098)))

(declare-fun res!1878823 () Bool)

(assert (=> b!4515420 (=> res!1878823 e!2813098)))

(assert (=> b!4515420 (= res!1878823 (= (h!56476 (toList!4316 lt!1692801)) lt!1692726))))

(declare-fun b!4515421 () Bool)

(assert (=> b!4515421 (= e!2813098 (contains!13341 (t!357715 (toList!4316 lt!1692801)) lt!1692726))))

(assert (= (and d!1389695 res!1878822) b!4515420))

(assert (= (and b!4515420 (not res!1878823)) b!4515421))

(declare-fun m!5258985 () Bool)

(assert (=> d!1389695 m!5258985))

(declare-fun m!5258987 () Bool)

(assert (=> d!1389695 m!5258987))

(declare-fun m!5258989 () Bool)

(assert (=> b!4515421 m!5258989))

(assert (=> b!4514632 d!1389695))

(declare-fun d!1389697 () Bool)

(declare-fun res!1878824 () Bool)

(declare-fun e!2813100 () Bool)

(assert (=> d!1389697 (=> res!1878824 e!2813100)))

(assert (=> d!1389697 (= res!1878824 ((_ is Nil!50628) (ite c!770209 (toList!4315 lt!1692722) (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> d!1389697 (= (forall!10247 (ite c!770209 (toList!4315 lt!1692722) (t!357714 (_2!28820 lt!1692742))) (ite c!770209 lambda!171537 lambda!171539)) e!2813100)))

(declare-fun b!4515422 () Bool)

(declare-fun e!2813101 () Bool)

(assert (=> b!4515422 (= e!2813100 e!2813101)))

(declare-fun res!1878825 () Bool)

(assert (=> b!4515422 (=> (not res!1878825) (not e!2813101))))

(assert (=> b!4515422 (= res!1878825 (dynLambda!21153 (ite c!770209 lambda!171537 lambda!171539) (h!56475 (ite c!770209 (toList!4315 lt!1692722) (t!357714 (_2!28820 lt!1692742))))))))

(declare-fun b!4515423 () Bool)

(assert (=> b!4515423 (= e!2813101 (forall!10247 (t!357714 (ite c!770209 (toList!4315 lt!1692722) (t!357714 (_2!28820 lt!1692742)))) (ite c!770209 lambda!171537 lambda!171539)))))

(assert (= (and d!1389697 (not res!1878824)) b!4515422))

(assert (= (and b!4515422 res!1878825) b!4515423))

(declare-fun b_lambda!154173 () Bool)

(assert (=> (not b_lambda!154173) (not b!4515422)))

(declare-fun m!5258997 () Bool)

(assert (=> b!4515422 m!5258997))

(declare-fun m!5259001 () Bool)

(assert (=> b!4515423 m!5259001))

(assert (=> bm!314422 d!1389697))

(declare-fun d!1389699 () Bool)

(declare-fun c!770319 () Bool)

(assert (=> d!1389699 (= c!770319 ((_ is Nil!50631) (keys!17582 lt!1692728)))))

(declare-fun e!2813104 () (InoxSet K!12025))

(assert (=> d!1389699 (= (content!8341 (keys!17582 lt!1692728)) e!2813104)))

(declare-fun b!4515428 () Bool)

(assert (=> b!4515428 (= e!2813104 ((as const (Array K!12025 Bool)) false))))

(declare-fun b!4515429 () Bool)

(assert (=> b!4515429 (= e!2813104 ((_ map or) (store ((as const (Array K!12025 Bool)) false) (h!56480 (keys!17582 lt!1692728)) true) (content!8341 (t!357717 (keys!17582 lt!1692728)))))))

(assert (= (and d!1389699 c!770319) b!4515428))

(assert (= (and d!1389699 (not c!770319)) b!4515429))

(declare-fun m!5259027 () Bool)

(assert (=> b!4515429 m!5259027))

(declare-fun m!5259029 () Bool)

(assert (=> b!4515429 m!5259029))

(assert (=> b!4514883 d!1389699))

(assert (=> b!4514883 d!1389503))

(declare-fun d!1389703 () Bool)

(declare-fun c!770320 () Bool)

(assert (=> d!1389703 (= c!770320 ((_ is Nil!50631) (keys!17582 lt!1693104)))))

(declare-fun e!2813105 () (InoxSet K!12025))

(assert (=> d!1389703 (= (content!8341 (keys!17582 lt!1693104)) e!2813105)))

(declare-fun b!4515430 () Bool)

(assert (=> b!4515430 (= e!2813105 ((as const (Array K!12025 Bool)) false))))

(declare-fun b!4515431 () Bool)

(assert (=> b!4515431 (= e!2813105 ((_ map or) (store ((as const (Array K!12025 Bool)) false) (h!56480 (keys!17582 lt!1693104)) true) (content!8341 (t!357717 (keys!17582 lt!1693104)))))))

(assert (= (and d!1389703 c!770320) b!4515430))

(assert (= (and d!1389703 (not c!770320)) b!4515431))

(declare-fun m!5259031 () Bool)

(assert (=> b!4515431 m!5259031))

(declare-fun m!5259033 () Bool)

(assert (=> b!4515431 m!5259033))

(assert (=> b!4514883 d!1389703))

(declare-fun bs!850290 () Bool)

(declare-fun b!4515433 () Bool)

(assert (= bs!850290 (and b!4515433 b!4515223)))

(declare-fun lambda!171623 () Int)

(assert (=> bs!850290 (= (= (toList!4315 lt!1693104) (toList!4315 lt!1692728)) (= lambda!171623 lambda!171596))))

(declare-fun bs!850291 () Bool)

(assert (= bs!850291 (and b!4515433 b!4514958)))

(assert (=> bs!850291 (= (= (toList!4315 lt!1693104) (toList!4315 lt!1692724)) (= lambda!171623 lambda!171548))))

(declare-fun bs!850292 () Bool)

(assert (= bs!850292 (and b!4515433 b!4515023)))

(assert (=> bs!850292 (= (= (toList!4315 lt!1693104) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171623 lambda!171555))))

(declare-fun bs!850293 () Bool)

(assert (= bs!850293 (and b!4515433 b!4515099)))

(assert (=> bs!850293 (= (= (toList!4315 lt!1693104) (toList!4315 lt!1692728)) (= lambda!171623 lambda!171568))))

(declare-fun bs!850294 () Bool)

(assert (= bs!850294 (and b!4515433 b!4515227)))

(assert (=> bs!850294 (= (= (toList!4315 lt!1693104) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171623 lambda!171594))))

(declare-fun bs!850295 () Bool)

(assert (= bs!850295 (and b!4515433 b!4515225)))

(assert (=> bs!850295 (= (= (toList!4315 lt!1693104) (t!357714 (toList!4315 lt!1692728))) (= lambda!171623 lambda!171591))))

(assert (=> b!4515433 true))

(declare-fun bs!850296 () Bool)

(declare-fun b!4515434 () Bool)

(assert (= bs!850296 (and b!4515434 b!4514959)))

(declare-fun lambda!171624 () Int)

(assert (=> bs!850296 (= lambda!171624 lambda!171549)))

(declare-fun bs!850297 () Bool)

(assert (= bs!850297 (and b!4515434 b!4515024)))

(assert (=> bs!850297 (= lambda!171624 lambda!171556)))

(declare-fun bs!850298 () Bool)

(assert (= bs!850298 (and b!4515434 b!4515100)))

(assert (=> bs!850298 (= lambda!171624 lambda!171569)))

(declare-fun bs!850299 () Bool)

(assert (= bs!850299 (and b!4515434 b!4515226)))

(assert (=> bs!850299 (= lambda!171624 lambda!171597)))

(declare-fun d!1389705 () Bool)

(declare-fun e!2813106 () Bool)

(assert (=> d!1389705 e!2813106))

(declare-fun res!1878827 () Bool)

(assert (=> d!1389705 (=> (not res!1878827) (not e!2813106))))

(declare-fun lt!1693463 () List!50755)

(assert (=> d!1389705 (= res!1878827 (noDuplicate!741 lt!1693463))))

(assert (=> d!1389705 (= lt!1693463 (getKeysList!459 (toList!4315 lt!1693104)))))

(assert (=> d!1389705 (= (keys!17582 lt!1693104) lt!1693463)))

(declare-fun b!4515432 () Bool)

(declare-fun res!1878828 () Bool)

(assert (=> b!4515432 (=> (not res!1878828) (not e!2813106))))

(assert (=> b!4515432 (= res!1878828 (= (length!338 lt!1693463) (length!339 (toList!4315 lt!1693104))))))

(declare-fun res!1878826 () Bool)

(assert (=> b!4515433 (=> (not res!1878826) (not e!2813106))))

(assert (=> b!4515433 (= res!1878826 (forall!10248 lt!1693463 lambda!171623))))

(assert (=> b!4515434 (= e!2813106 (= (content!8341 lt!1693463) (content!8341 (map!11129 (toList!4315 lt!1693104) lambda!171624))))))

(assert (= (and d!1389705 res!1878827) b!4515432))

(assert (= (and b!4515432 res!1878828) b!4515433))

(assert (= (and b!4515433 res!1878826) b!4515434))

(declare-fun m!5259035 () Bool)

(assert (=> d!1389705 m!5259035))

(declare-fun m!5259037 () Bool)

(assert (=> d!1389705 m!5259037))

(declare-fun m!5259039 () Bool)

(assert (=> b!4515432 m!5259039))

(declare-fun m!5259041 () Bool)

(assert (=> b!4515432 m!5259041))

(declare-fun m!5259043 () Bool)

(assert (=> b!4515433 m!5259043))

(declare-fun m!5259045 () Bool)

(assert (=> b!4515434 m!5259045))

(declare-fun m!5259047 () Bool)

(assert (=> b!4515434 m!5259047))

(assert (=> b!4515434 m!5259047))

(declare-fun m!5259049 () Bool)

(assert (=> b!4515434 m!5259049))

(assert (=> b!4514883 d!1389705))

(assert (=> b!4514859 d!1389675))

(assert (=> b!4514859 d!1389503))

(assert (=> b!4514927 d!1389659))

(declare-fun d!1389707 () Bool)

(assert (=> d!1389707 (containsKey!1766 (toList!4315 lt!1692724) key!3287)))

(declare-fun lt!1693464 () Unit!94076)

(assert (=> d!1389707 (= lt!1693464 (choose!29435 (toList!4315 lt!1692724) key!3287))))

(assert (=> d!1389707 (invariantList!1011 (toList!4315 lt!1692724))))

(assert (=> d!1389707 (= (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692724) key!3287) lt!1693464)))

(declare-fun bs!850300 () Bool)

(assert (= bs!850300 d!1389707))

(assert (=> bs!850300 m!5258101))

(declare-fun m!5259051 () Bool)

(assert (=> bs!850300 m!5259051))

(assert (=> bs!850300 m!5258479))

(assert (=> b!4514927 d!1389707))

(declare-fun d!1389709 () Bool)

(declare-fun lt!1693465 () Bool)

(assert (=> d!1389709 (= lt!1693465 (select (content!8338 (toList!4316 lm!1477)) (h!56476 (toList!4316 lm!1477))))))

(declare-fun e!2813108 () Bool)

(assert (=> d!1389709 (= lt!1693465 e!2813108)))

(declare-fun res!1878829 () Bool)

(assert (=> d!1389709 (=> (not res!1878829) (not e!2813108))))

(assert (=> d!1389709 (= res!1878829 ((_ is Cons!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389709 (= (contains!13341 (toList!4316 lm!1477) (h!56476 (toList!4316 lm!1477))) lt!1693465)))

(declare-fun b!4515435 () Bool)

(declare-fun e!2813107 () Bool)

(assert (=> b!4515435 (= e!2813108 e!2813107)))

(declare-fun res!1878830 () Bool)

(assert (=> b!4515435 (=> res!1878830 e!2813107)))

(assert (=> b!4515435 (= res!1878830 (= (h!56476 (toList!4316 lm!1477)) (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4515436 () Bool)

(assert (=> b!4515436 (= e!2813107 (contains!13341 (t!357715 (toList!4316 lm!1477)) (h!56476 (toList!4316 lm!1477))))))

(assert (= (and d!1389709 res!1878829) b!4515435))

(assert (= (and b!4515435 (not res!1878830)) b!4515436))

(assert (=> d!1389709 m!5258079))

(declare-fun m!5259053 () Bool)

(assert (=> d!1389709 m!5259053))

(declare-fun m!5259055 () Bool)

(assert (=> b!4515436 m!5259055))

(assert (=> b!4514614 d!1389709))

(declare-fun d!1389711 () Bool)

(declare-fun res!1878831 () Bool)

(declare-fun e!2813109 () Bool)

(assert (=> d!1389711 (=> res!1878831 e!2813109)))

(assert (=> d!1389711 (= res!1878831 ((_ is Nil!50629) (t!357715 (toList!4316 lm!1477))))))

(assert (=> d!1389711 (= (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171413) e!2813109)))

(declare-fun b!4515437 () Bool)

(declare-fun e!2813110 () Bool)

(assert (=> b!4515437 (= e!2813109 e!2813110)))

(declare-fun res!1878832 () Bool)

(assert (=> b!4515437 (=> (not res!1878832) (not e!2813110))))

(assert (=> b!4515437 (= res!1878832 (dynLambda!21150 lambda!171413 (h!56476 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4515438 () Bool)

(assert (=> b!4515438 (= e!2813110 (forall!10245 (t!357715 (t!357715 (toList!4316 lm!1477))) lambda!171413))))

(assert (= (and d!1389711 (not res!1878831)) b!4515437))

(assert (= (and b!4515437 res!1878832) b!4515438))

(declare-fun b_lambda!154175 () Bool)

(assert (=> (not b_lambda!154175) (not b!4515437)))

(declare-fun m!5259057 () Bool)

(assert (=> b!4515437 m!5259057))

(declare-fun m!5259059 () Bool)

(assert (=> b!4515438 m!5259059))

(assert (=> b!4514640 d!1389711))

(declare-fun b!4515441 () Bool)

(declare-fun e!2813112 () Option!11099)

(assert (=> b!4515441 (= e!2813112 (getValueByKey!1079 (t!357715 (toList!4316 lt!1693091)) (_1!28820 lt!1692742)))))

(declare-fun b!4515442 () Bool)

(assert (=> b!4515442 (= e!2813112 None!11098)))

(declare-fun b!4515439 () Bool)

(declare-fun e!2813111 () Option!11099)

(assert (=> b!4515439 (= e!2813111 (Some!11098 (_2!28820 (h!56476 (toList!4316 lt!1693091)))))))

(declare-fun d!1389713 () Bool)

(declare-fun c!770321 () Bool)

(assert (=> d!1389713 (= c!770321 (and ((_ is Cons!50629) (toList!4316 lt!1693091)) (= (_1!28820 (h!56476 (toList!4316 lt!1693091))) (_1!28820 lt!1692742))))))

(assert (=> d!1389713 (= (getValueByKey!1079 (toList!4316 lt!1693091) (_1!28820 lt!1692742)) e!2813111)))

(declare-fun b!4515440 () Bool)

(assert (=> b!4515440 (= e!2813111 e!2813112)))

(declare-fun c!770322 () Bool)

(assert (=> b!4515440 (= c!770322 (and ((_ is Cons!50629) (toList!4316 lt!1693091)) (not (= (_1!28820 (h!56476 (toList!4316 lt!1693091))) (_1!28820 lt!1692742)))))))

(assert (= (and d!1389713 c!770321) b!4515439))

(assert (= (and d!1389713 (not c!770321)) b!4515440))

(assert (= (and b!4515440 c!770322) b!4515441))

(assert (= (and b!4515440 (not c!770322)) b!4515442))

(declare-fun m!5259061 () Bool)

(assert (=> b!4515441 m!5259061))

(assert (=> b!4514869 d!1389713))

(declare-fun bs!850301 () Bool)

(declare-fun b!4515446 () Bool)

(assert (= bs!850301 (and b!4515446 b!4514749)))

(declare-fun lambda!171627 () Int)

(assert (=> bs!850301 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692939) (= lambda!171627 lambda!171465))))

(declare-fun bs!850303 () Bool)

(assert (= bs!850303 (and b!4515446 b!4515255)))

(assert (=> bs!850303 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693368) (= lambda!171627 lambda!171600))))

(declare-fun bs!850305 () Bool)

(assert (= bs!850305 (and b!4515446 b!4515053)))

(assert (=> bs!850305 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171627 lambda!171557))))

(declare-fun bs!850307 () Bool)

(assert (= bs!850307 (and b!4515446 d!1389607)))

(assert (=> bs!850307 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693147) (= lambda!171627 lambda!171612))))

(declare-fun bs!850308 () Bool)

(assert (= bs!850308 (and b!4515446 d!1389469)))

(assert (=> bs!850308 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693221) (= lambda!171627 lambda!171560))))

(declare-fun bs!850310 () Bool)

(assert (= bs!850310 (and b!4515446 b!4514932)))

(assert (=> bs!850310 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692722) (= lambda!171627 lambda!171538))))

(declare-fun bs!850311 () Bool)

(assert (= bs!850311 (and b!4515446 b!4515052)))

(assert (=> bs!850311 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693223) (= lambda!171627 lambda!171559))))

(assert (=> bs!850301 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692734) (= lambda!171627 lambda!171464))))

(assert (=> bs!850311 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171627 lambda!171558))))

(declare-fun bs!850315 () Bool)

(assert (= bs!850315 (and b!4515446 d!1389235)))

(assert (=> bs!850315 (not (= lambda!171627 lambda!171416))))

(declare-fun bs!850317 () Bool)

(assert (= bs!850317 (and b!4515446 d!1389427)))

(assert (=> bs!850317 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693145) (= lambda!171627 lambda!171540))))

(assert (=> bs!850310 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693147) (= lambda!171627 lambda!171539))))

(assert (=> bs!850303 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171627 lambda!171599))))

(declare-fun bs!850320 () Bool)

(assert (= bs!850320 (and b!4515446 b!4514933)))

(assert (=> bs!850320 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692722) (= lambda!171627 lambda!171537))))

(declare-fun bs!850322 () Bool)

(assert (= bs!850322 (and b!4515446 b!4515256)))

(assert (=> bs!850322 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171627 lambda!171598))))

(declare-fun bs!850324 () Bool)

(assert (= bs!850324 (and b!4515446 d!1389279)))

(assert (=> bs!850324 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692937) (= lambda!171627 lambda!171466))))

(declare-fun bs!850326 () Bool)

(assert (= bs!850326 (and b!4515446 d!1389575)))

(assert (=> bs!850326 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693366) (= lambda!171627 lambda!171601))))

(declare-fun bs!850328 () Bool)

(assert (= bs!850328 (and b!4515446 b!4514750)))

(assert (=> bs!850328 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692734) (= lambda!171627 lambda!171463))))

(assert (=> b!4515446 true))

(declare-fun bs!850332 () Bool)

(declare-fun b!4515445 () Bool)

(assert (= bs!850332 (and b!4515445 b!4514749)))

(declare-fun lambda!171629 () Int)

(assert (=> bs!850332 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692939) (= lambda!171629 lambda!171465))))

(declare-fun bs!850334 () Bool)

(assert (= bs!850334 (and b!4515445 b!4515446)))

(assert (=> bs!850334 (= lambda!171629 lambda!171627)))

(declare-fun bs!850335 () Bool)

(assert (= bs!850335 (and b!4515445 b!4515255)))

(assert (=> bs!850335 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693368) (= lambda!171629 lambda!171600))))

(declare-fun bs!850336 () Bool)

(assert (= bs!850336 (and b!4515445 b!4515053)))

(assert (=> bs!850336 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171629 lambda!171557))))

(declare-fun bs!850337 () Bool)

(assert (= bs!850337 (and b!4515445 d!1389607)))

(assert (=> bs!850337 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693147) (= lambda!171629 lambda!171612))))

(declare-fun bs!850338 () Bool)

(assert (= bs!850338 (and b!4515445 d!1389469)))

(assert (=> bs!850338 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693221) (= lambda!171629 lambda!171560))))

(declare-fun bs!850339 () Bool)

(assert (= bs!850339 (and b!4515445 b!4514932)))

(assert (=> bs!850339 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692722) (= lambda!171629 lambda!171538))))

(declare-fun bs!850340 () Bool)

(assert (= bs!850340 (and b!4515445 b!4515052)))

(assert (=> bs!850340 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693223) (= lambda!171629 lambda!171559))))

(assert (=> bs!850332 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692734) (= lambda!171629 lambda!171464))))

(assert (=> bs!850340 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171629 lambda!171558))))

(declare-fun bs!850341 () Bool)

(assert (= bs!850341 (and b!4515445 d!1389235)))

(assert (=> bs!850341 (not (= lambda!171629 lambda!171416))))

(declare-fun bs!850342 () Bool)

(assert (= bs!850342 (and b!4515445 d!1389427)))

(assert (=> bs!850342 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693145) (= lambda!171629 lambda!171540))))

(assert (=> bs!850339 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693147) (= lambda!171629 lambda!171539))))

(assert (=> bs!850335 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171629 lambda!171599))))

(declare-fun bs!850343 () Bool)

(assert (= bs!850343 (and b!4515445 b!4514933)))

(assert (=> bs!850343 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692722) (= lambda!171629 lambda!171537))))

(declare-fun bs!850344 () Bool)

(assert (= bs!850344 (and b!4515445 b!4515256)))

(assert (=> bs!850344 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171629 lambda!171598))))

(declare-fun bs!850345 () Bool)

(assert (= bs!850345 (and b!4515445 d!1389279)))

(assert (=> bs!850345 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692937) (= lambda!171629 lambda!171466))))

(declare-fun bs!850346 () Bool)

(assert (= bs!850346 (and b!4515445 d!1389575)))

(assert (=> bs!850346 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693366) (= lambda!171629 lambda!171601))))

(declare-fun bs!850347 () Bool)

(assert (= bs!850347 (and b!4515445 b!4514750)))

(assert (=> bs!850347 (= (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1692734) (= lambda!171629 lambda!171463))))

(assert (=> b!4515445 true))

(declare-fun lt!1693481 () ListMap!3577)

(declare-fun lambda!171630 () Int)

(assert (=> bs!850332 (= (= lt!1693481 lt!1692939) (= lambda!171630 lambda!171465))))

(assert (=> bs!850334 (= (= lt!1693481 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171630 lambda!171627))))

(assert (=> bs!850335 (= (= lt!1693481 lt!1693368) (= lambda!171630 lambda!171600))))

(assert (=> bs!850336 (= (= lt!1693481 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171630 lambda!171557))))

(assert (=> bs!850337 (= (= lt!1693481 lt!1693147) (= lambda!171630 lambda!171612))))

(assert (=> bs!850338 (= (= lt!1693481 lt!1693221) (= lambda!171630 lambda!171560))))

(assert (=> bs!850339 (= (= lt!1693481 lt!1692722) (= lambda!171630 lambda!171538))))

(assert (=> bs!850340 (= (= lt!1693481 lt!1693223) (= lambda!171630 lambda!171559))))

(assert (=> b!4515445 (= (= lt!1693481 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171630 lambda!171629))))

(assert (=> bs!850332 (= (= lt!1693481 lt!1692734) (= lambda!171630 lambda!171464))))

(assert (=> bs!850340 (= (= lt!1693481 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171630 lambda!171558))))

(assert (=> bs!850341 (not (= lambda!171630 lambda!171416))))

(assert (=> bs!850342 (= (= lt!1693481 lt!1693145) (= lambda!171630 lambda!171540))))

(assert (=> bs!850339 (= (= lt!1693481 lt!1693147) (= lambda!171630 lambda!171539))))

(assert (=> bs!850335 (= (= lt!1693481 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171630 lambda!171599))))

(assert (=> bs!850343 (= (= lt!1693481 lt!1692722) (= lambda!171630 lambda!171537))))

(assert (=> bs!850344 (= (= lt!1693481 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171630 lambda!171598))))

(assert (=> bs!850345 (= (= lt!1693481 lt!1692937) (= lambda!171630 lambda!171466))))

(assert (=> bs!850346 (= (= lt!1693481 lt!1693366) (= lambda!171630 lambda!171601))))

(assert (=> bs!850347 (= (= lt!1693481 lt!1692734) (= lambda!171630 lambda!171463))))

(assert (=> b!4515445 true))

(declare-fun bs!850349 () Bool)

(declare-fun d!1389715 () Bool)

(assert (= bs!850349 (and d!1389715 b!4514749)))

(declare-fun lt!1693479 () ListMap!3577)

(declare-fun lambda!171631 () Int)

(assert (=> bs!850349 (= (= lt!1693479 lt!1692939) (= lambda!171631 lambda!171465))))

(declare-fun bs!850350 () Bool)

(assert (= bs!850350 (and d!1389715 b!4515446)))

(assert (=> bs!850350 (= (= lt!1693479 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171631 lambda!171627))))

(declare-fun bs!850351 () Bool)

(assert (= bs!850351 (and d!1389715 b!4515255)))

(assert (=> bs!850351 (= (= lt!1693479 lt!1693368) (= lambda!171631 lambda!171600))))

(declare-fun bs!850352 () Bool)

(assert (= bs!850352 (and d!1389715 b!4515053)))

(assert (=> bs!850352 (= (= lt!1693479 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171631 lambda!171557))))

(declare-fun bs!850353 () Bool)

(assert (= bs!850353 (and d!1389715 d!1389607)))

(assert (=> bs!850353 (= (= lt!1693479 lt!1693147) (= lambda!171631 lambda!171612))))

(declare-fun bs!850354 () Bool)

(assert (= bs!850354 (and d!1389715 b!4514932)))

(assert (=> bs!850354 (= (= lt!1693479 lt!1692722) (= lambda!171631 lambda!171538))))

(declare-fun bs!850355 () Bool)

(assert (= bs!850355 (and d!1389715 b!4515052)))

(assert (=> bs!850355 (= (= lt!1693479 lt!1693223) (= lambda!171631 lambda!171559))))

(declare-fun bs!850356 () Bool)

(assert (= bs!850356 (and d!1389715 b!4515445)))

(assert (=> bs!850356 (= (= lt!1693479 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171631 lambda!171629))))

(assert (=> bs!850349 (= (= lt!1693479 lt!1692734) (= lambda!171631 lambda!171464))))

(assert (=> bs!850355 (= (= lt!1693479 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171631 lambda!171558))))

(declare-fun bs!850357 () Bool)

(assert (= bs!850357 (and d!1389715 d!1389235)))

(assert (=> bs!850357 (not (= lambda!171631 lambda!171416))))

(declare-fun bs!850359 () Bool)

(assert (= bs!850359 (and d!1389715 d!1389427)))

(assert (=> bs!850359 (= (= lt!1693479 lt!1693145) (= lambda!171631 lambda!171540))))

(assert (=> bs!850354 (= (= lt!1693479 lt!1693147) (= lambda!171631 lambda!171539))))

(assert (=> bs!850351 (= (= lt!1693479 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171631 lambda!171599))))

(declare-fun bs!850360 () Bool)

(assert (= bs!850360 (and d!1389715 b!4514933)))

(assert (=> bs!850360 (= (= lt!1693479 lt!1692722) (= lambda!171631 lambda!171537))))

(declare-fun bs!850361 () Bool)

(assert (= bs!850361 (and d!1389715 b!4515256)))

(assert (=> bs!850361 (= (= lt!1693479 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171631 lambda!171598))))

(declare-fun bs!850362 () Bool)

(assert (= bs!850362 (and d!1389715 d!1389279)))

(assert (=> bs!850362 (= (= lt!1693479 lt!1692937) (= lambda!171631 lambda!171466))))

(declare-fun bs!850363 () Bool)

(assert (= bs!850363 (and d!1389715 d!1389469)))

(assert (=> bs!850363 (= (= lt!1693479 lt!1693221) (= lambda!171631 lambda!171560))))

(assert (=> bs!850356 (= (= lt!1693479 lt!1693481) (= lambda!171631 lambda!171630))))

(declare-fun bs!850364 () Bool)

(assert (= bs!850364 (and d!1389715 d!1389575)))

(assert (=> bs!850364 (= (= lt!1693479 lt!1693366) (= lambda!171631 lambda!171601))))

(declare-fun bs!850365 () Bool)

(assert (= bs!850365 (and d!1389715 b!4514750)))

(assert (=> bs!850365 (= (= lt!1693479 lt!1692734) (= lambda!171631 lambda!171463))))

(assert (=> d!1389715 true))

(declare-fun bm!314455 () Bool)

(declare-fun call!314460 () Bool)

(declare-fun c!770323 () Bool)

(assert (=> bm!314455 (= call!314460 (forall!10247 (ite c!770323 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (t!357714 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))) (ite c!770323 lambda!171627 lambda!171630)))))

(declare-fun call!314461 () Bool)

(declare-fun bm!314456 () Bool)

(assert (=> bm!314456 (= call!314461 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (ite c!770323 lambda!171627 lambda!171630)))))

(declare-fun bm!314457 () Bool)

(declare-fun call!314462 () Unit!94076)

(assert (=> bm!314457 (= call!314462 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))

(declare-fun b!4515444 () Bool)

(declare-fun e!2813115 () Bool)

(assert (=> b!4515444 (= e!2813115 call!314461)))

(declare-fun e!2813114 () ListMap!3577)

(assert (=> b!4515445 (= e!2813114 lt!1693481)))

(declare-fun lt!1693485 () ListMap!3577)

(assert (=> b!4515445 (= lt!1693485 (+!1527 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))))

(assert (=> b!4515445 (= lt!1693481 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (+!1527 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))))

(declare-fun lt!1693477 () Unit!94076)

(assert (=> b!4515445 (= lt!1693477 call!314462)))

(assert (=> b!4515445 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) lambda!171629)))

(declare-fun lt!1693473 () Unit!94076)

(assert (=> b!4515445 (= lt!1693473 lt!1693477)))

(assert (=> b!4515445 (forall!10247 (toList!4315 lt!1693485) lambda!171630)))

(declare-fun lt!1693488 () Unit!94076)

(declare-fun Unit!94222 () Unit!94076)

(assert (=> b!4515445 (= lt!1693488 Unit!94222)))

(assert (=> b!4515445 call!314460))

(declare-fun lt!1693478 () Unit!94076)

(declare-fun Unit!94223 () Unit!94076)

(assert (=> b!4515445 (= lt!1693478 Unit!94223)))

(declare-fun lt!1693480 () Unit!94076)

(declare-fun Unit!94224 () Unit!94076)

(assert (=> b!4515445 (= lt!1693480 Unit!94224)))

(declare-fun lt!1693487 () Unit!94076)

(assert (=> b!4515445 (= lt!1693487 (forallContained!2498 (toList!4315 lt!1693485) lambda!171630 (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))))

(assert (=> b!4515445 (contains!13343 lt!1693485 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))))

(declare-fun lt!1693486 () Unit!94076)

(declare-fun Unit!94225 () Unit!94076)

(assert (=> b!4515445 (= lt!1693486 Unit!94225)))

(assert (=> b!4515445 (contains!13343 lt!1693481 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))))

(declare-fun lt!1693472 () Unit!94076)

(declare-fun Unit!94226 () Unit!94076)

(assert (=> b!4515445 (= lt!1693472 Unit!94226)))

(assert (=> b!4515445 (forall!10247 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lambda!171630)))

(declare-fun lt!1693475 () Unit!94076)

(declare-fun Unit!94227 () Unit!94076)

(assert (=> b!4515445 (= lt!1693475 Unit!94227)))

(assert (=> b!4515445 (forall!10247 (toList!4315 lt!1693485) lambda!171630)))

(declare-fun lt!1693470 () Unit!94076)

(declare-fun Unit!94228 () Unit!94076)

(assert (=> b!4515445 (= lt!1693470 Unit!94228)))

(declare-fun lt!1693483 () Unit!94076)

(declare-fun Unit!94229 () Unit!94076)

(assert (=> b!4515445 (= lt!1693483 Unit!94229)))

(declare-fun lt!1693482 () Unit!94076)

(assert (=> b!4515445 (= lt!1693482 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693481 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))))

(assert (=> b!4515445 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) lambda!171630)))

(declare-fun lt!1693468 () Unit!94076)

(assert (=> b!4515445 (= lt!1693468 lt!1693482)))

(assert (=> b!4515445 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) lambda!171630)))

(declare-fun lt!1693474 () Unit!94076)

(declare-fun Unit!94231 () Unit!94076)

(assert (=> b!4515445 (= lt!1693474 Unit!94231)))

(declare-fun res!1878833 () Bool)

(assert (=> b!4515445 (= res!1878833 (forall!10247 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lambda!171630))))

(assert (=> b!4515445 (=> (not res!1878833) (not e!2813115))))

(assert (=> b!4515445 e!2813115))

(declare-fun lt!1693471 () Unit!94076)

(declare-fun Unit!94232 () Unit!94076)

(assert (=> b!4515445 (= lt!1693471 Unit!94232)))

(declare-fun b!4515443 () Bool)

(declare-fun res!1878834 () Bool)

(declare-fun e!2813113 () Bool)

(assert (=> b!4515443 (=> (not res!1878834) (not e!2813113))))

(assert (=> b!4515443 (= res!1878834 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) lambda!171631))))

(assert (=> d!1389715 e!2813113))

(declare-fun res!1878835 () Bool)

(assert (=> d!1389715 (=> (not res!1878835) (not e!2813113))))

(assert (=> d!1389715 (= res!1878835 (forall!10247 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lambda!171631))))

(assert (=> d!1389715 (= lt!1693479 e!2813114)))

(assert (=> d!1389715 (= c!770323 ((_ is Nil!50628) (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))

(assert (=> d!1389715 (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))

(assert (=> d!1389715 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) lt!1693479)))

(assert (=> b!4515446 (= e!2813114 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))

(declare-fun lt!1693476 () Unit!94076)

(assert (=> b!4515446 (= lt!1693476 call!314462)))

(assert (=> b!4515446 call!314461))

(declare-fun lt!1693469 () Unit!94076)

(assert (=> b!4515446 (= lt!1693469 lt!1693476)))

(assert (=> b!4515446 call!314460))

(declare-fun lt!1693484 () Unit!94076)

(declare-fun Unit!94233 () Unit!94076)

(assert (=> b!4515446 (= lt!1693484 Unit!94233)))

(declare-fun b!4515447 () Bool)

(assert (=> b!4515447 (= e!2813113 (invariantList!1011 (toList!4315 lt!1693479)))))

(assert (= (and d!1389715 c!770323) b!4515446))

(assert (= (and d!1389715 (not c!770323)) b!4515445))

(assert (= (and b!4515445 res!1878833) b!4515444))

(assert (= (or b!4515446 b!4515445) bm!314455))

(assert (= (or b!4515446 b!4515444) bm!314456))

(assert (= (or b!4515446 b!4515445) bm!314457))

(assert (= (and d!1389715 res!1878835) b!4515443))

(assert (= (and b!4515443 res!1878834) b!4515447))

(declare-fun m!5259087 () Bool)

(assert (=> bm!314455 m!5259087))

(declare-fun m!5259089 () Bool)

(assert (=> b!4515445 m!5259089))

(declare-fun m!5259091 () Bool)

(assert (=> b!4515445 m!5259091))

(declare-fun m!5259093 () Bool)

(assert (=> b!4515445 m!5259093))

(declare-fun m!5259095 () Bool)

(assert (=> b!4515445 m!5259095))

(assert (=> b!4515445 m!5259095))

(declare-fun m!5259097 () Bool)

(assert (=> b!4515445 m!5259097))

(assert (=> b!4515445 m!5259089))

(declare-fun m!5259099 () Bool)

(assert (=> b!4515445 m!5259099))

(assert (=> b!4515445 m!5258049))

(declare-fun m!5259101 () Bool)

(assert (=> b!4515445 m!5259101))

(assert (=> b!4515445 m!5258049))

(assert (=> b!4515445 m!5259091))

(assert (=> b!4515445 m!5259097))

(declare-fun m!5259103 () Bool)

(assert (=> b!4515445 m!5259103))

(declare-fun m!5259105 () Bool)

(assert (=> b!4515445 m!5259105))

(declare-fun m!5259107 () Bool)

(assert (=> b!4515445 m!5259107))

(declare-fun m!5259109 () Bool)

(assert (=> bm!314456 m!5259109))

(assert (=> bm!314457 m!5258049))

(declare-fun m!5259111 () Bool)

(assert (=> bm!314457 m!5259111))

(declare-fun m!5259113 () Bool)

(assert (=> b!4515447 m!5259113))

(declare-fun m!5259115 () Bool)

(assert (=> b!4515443 m!5259115))

(declare-fun m!5259117 () Bool)

(assert (=> d!1389715 m!5259117))

(declare-fun m!5259119 () Bool)

(assert (=> d!1389715 m!5259119))

(assert (=> b!4514896 d!1389715))

(declare-fun bs!850366 () Bool)

(declare-fun d!1389733 () Bool)

(assert (= bs!850366 (and d!1389733 d!1389333)))

(declare-fun lambda!171632 () Int)

(assert (=> bs!850366 (= lambda!171632 lambda!171504)))

(declare-fun bs!850367 () Bool)

(assert (= bs!850367 (and d!1389733 start!446664)))

(assert (=> bs!850367 (= lambda!171632 lambda!171413)))

(declare-fun bs!850368 () Bool)

(assert (= bs!850368 (and d!1389733 d!1389351)))

(assert (=> bs!850368 (= lambda!171632 lambda!171520)))

(declare-fun bs!850369 () Bool)

(assert (= bs!850369 (and d!1389733 d!1389385)))

(assert (=> bs!850369 (= lambda!171632 lambda!171531)))

(declare-fun bs!850370 () Bool)

(assert (= bs!850370 (and d!1389733 d!1389371)))

(assert (=> bs!850370 (= lambda!171632 lambda!171525)))

(declare-fun bs!850371 () Bool)

(assert (= bs!850371 (and d!1389733 d!1389405)))

(assert (=> bs!850371 (= lambda!171632 lambda!171535)))

(declare-fun bs!850372 () Bool)

(assert (= bs!850372 (and d!1389733 d!1389473)))

(assert (=> bs!850372 (= lambda!171632 lambda!171561)))

(declare-fun bs!850373 () Bool)

(assert (= bs!850373 (and d!1389733 d!1389431)))

(assert (=> bs!850373 (= lambda!171632 lambda!171543)))

(declare-fun bs!850374 () Bool)

(assert (= bs!850374 (and d!1389733 d!1389369)))

(assert (=> bs!850374 (not (= lambda!171632 lambda!171524))))

(declare-fun bs!850375 () Bool)

(assert (= bs!850375 (and d!1389733 d!1389397)))

(assert (=> bs!850375 (= lambda!171632 lambda!171532)))

(declare-fun bs!850376 () Bool)

(assert (= bs!850376 (and d!1389733 d!1389367)))

(assert (=> bs!850376 (= lambda!171632 lambda!171521)))

(declare-fun bs!850377 () Bool)

(assert (= bs!850377 (and d!1389733 d!1389421)))

(assert (=> bs!850377 (= lambda!171632 lambda!171536)))

(declare-fun bs!850378 () Bool)

(assert (= bs!850378 (and d!1389733 d!1389325)))

(assert (=> bs!850378 (= lambda!171632 lambda!171497)))

(declare-fun bs!850379 () Bool)

(assert (= bs!850379 (and d!1389733 d!1389491)))

(assert (=> bs!850379 (= lambda!171632 lambda!171567)))

(declare-fun bs!850380 () Bool)

(assert (= bs!850380 (and d!1389733 d!1389349)))

(assert (=> bs!850380 (= lambda!171632 lambda!171510)))

(declare-fun lt!1693498 () ListMap!3577)

(assert (=> d!1389733 (invariantList!1011 (toList!4315 lt!1693498))))

(declare-fun e!2813127 () ListMap!3577)

(assert (=> d!1389733 (= lt!1693498 e!2813127)))

(declare-fun c!770329 () Bool)

(assert (=> d!1389733 (= c!770329 ((_ is Cons!50629) (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))

(assert (=> d!1389733 (forall!10245 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))) lambda!171632)))

(assert (=> d!1389733 (= (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) lt!1693498)))

(declare-fun b!4515464 () Bool)

(assert (=> b!4515464 (= e!2813127 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742)))))))))

(declare-fun b!4515465 () Bool)

(assert (=> b!4515465 (= e!2813127 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389733 c!770329) b!4515464))

(assert (= (and d!1389733 (not c!770329)) b!4515465))

(declare-fun m!5259121 () Bool)

(assert (=> d!1389733 m!5259121))

(declare-fun m!5259123 () Bool)

(assert (=> d!1389733 m!5259123))

(declare-fun m!5259125 () Bool)

(assert (=> b!4515464 m!5259125))

(assert (=> b!4515464 m!5259125))

(declare-fun m!5259127 () Bool)

(assert (=> b!4515464 m!5259127))

(assert (=> b!4514896 d!1389733))

(declare-fun d!1389735 () Bool)

(declare-fun res!1878848 () Bool)

(declare-fun e!2813131 () Bool)

(assert (=> d!1389735 (=> res!1878848 e!2813131)))

(assert (=> d!1389735 (= res!1878848 (not ((_ is Cons!50628) (t!357714 newBucket!178))))))

(assert (=> d!1389735 (= (noDuplicateKeys!1154 (t!357714 newBucket!178)) e!2813131)))

(declare-fun b!4515472 () Bool)

(declare-fun e!2813132 () Bool)

(assert (=> b!4515472 (= e!2813131 e!2813132)))

(declare-fun res!1878849 () Bool)

(assert (=> b!4515472 (=> (not res!1878849) (not e!2813132))))

(assert (=> b!4515472 (= res!1878849 (not (containsKey!1762 (t!357714 (t!357714 newBucket!178)) (_1!28819 (h!56475 (t!357714 newBucket!178))))))))

(declare-fun b!4515473 () Bool)

(assert (=> b!4515473 (= e!2813132 (noDuplicateKeys!1154 (t!357714 (t!357714 newBucket!178))))))

(assert (= (and d!1389735 (not res!1878848)) b!4515472))

(assert (= (and b!4515472 res!1878849) b!4515473))

(declare-fun m!5259135 () Bool)

(assert (=> b!4515472 m!5259135))

(declare-fun m!5259139 () Bool)

(assert (=> b!4515473 m!5259139))

(assert (=> b!4514599 d!1389735))

(declare-fun d!1389737 () Bool)

(declare-fun lt!1693502 () Bool)

(assert (=> d!1389737 (= lt!1693502 (select (content!8341 e!2812713) key!3287))))

(declare-fun e!2813134 () Bool)

(assert (=> d!1389737 (= lt!1693502 e!2813134)))

(declare-fun res!1878851 () Bool)

(assert (=> d!1389737 (=> (not res!1878851) (not e!2813134))))

(assert (=> d!1389737 (= res!1878851 ((_ is Cons!50631) e!2812713))))

(assert (=> d!1389737 (= (contains!13345 e!2812713 key!3287) lt!1693502)))

(declare-fun b!4515474 () Bool)

(declare-fun e!2813133 () Bool)

(assert (=> b!4515474 (= e!2813134 e!2813133)))

(declare-fun res!1878850 () Bool)

(assert (=> b!4515474 (=> res!1878850 e!2813133)))

(assert (=> b!4515474 (= res!1878850 (= (h!56480 e!2812713) key!3287))))

(declare-fun b!4515475 () Bool)

(assert (=> b!4515475 (= e!2813133 (contains!13345 (t!357717 e!2812713) key!3287))))

(assert (= (and d!1389737 res!1878851) b!4515474))

(assert (= (and b!4515474 (not res!1878850)) b!4515475))

(declare-fun m!5259141 () Bool)

(assert (=> d!1389737 m!5259141))

(declare-fun m!5259143 () Bool)

(assert (=> d!1389737 m!5259143))

(declare-fun m!5259145 () Bool)

(assert (=> b!4515475 m!5259145))

(assert (=> bm!314416 d!1389737))

(declare-fun d!1389741 () Bool)

(assert (=> d!1389741 (= (head!9402 (toList!4316 lt!1692725)) (h!56476 (toList!4316 lt!1692725)))))

(assert (=> d!1389401 d!1389741))

(declare-fun d!1389743 () Bool)

(declare-fun res!1878852 () Bool)

(declare-fun e!2813135 () Bool)

(assert (=> d!1389743 (=> res!1878852 e!2813135)))

(assert (=> d!1389743 (= res!1878852 (and ((_ is Cons!50628) (t!357714 lt!1692723)) (= (_1!28819 (h!56475 (t!357714 lt!1692723))) key!3287)))))

(assert (=> d!1389743 (= (containsKey!1762 (t!357714 lt!1692723) key!3287) e!2813135)))

(declare-fun b!4515476 () Bool)

(declare-fun e!2813136 () Bool)

(assert (=> b!4515476 (= e!2813135 e!2813136)))

(declare-fun res!1878853 () Bool)

(assert (=> b!4515476 (=> (not res!1878853) (not e!2813136))))

(assert (=> b!4515476 (= res!1878853 ((_ is Cons!50628) (t!357714 lt!1692723)))))

(declare-fun b!4515477 () Bool)

(assert (=> b!4515477 (= e!2813136 (containsKey!1762 (t!357714 (t!357714 lt!1692723)) key!3287))))

(assert (= (and d!1389743 (not res!1878852)) b!4515476))

(assert (= (and b!4515476 res!1878853) b!4515477))

(declare-fun m!5259147 () Bool)

(assert (=> b!4515477 m!5259147))

(assert (=> b!4514775 d!1389743))

(declare-fun d!1389745 () Bool)

(declare-fun lt!1693503 () Bool)

(assert (=> d!1389745 (= lt!1693503 (select (content!8341 e!2812735) key!3287))))

(declare-fun e!2813138 () Bool)

(assert (=> d!1389745 (= lt!1693503 e!2813138)))

(declare-fun res!1878855 () Bool)

(assert (=> d!1389745 (=> (not res!1878855) (not e!2813138))))

(assert (=> d!1389745 (= res!1878855 ((_ is Cons!50631) e!2812735))))

(assert (=> d!1389745 (= (contains!13345 e!2812735 key!3287) lt!1693503)))

(declare-fun b!4515478 () Bool)

(declare-fun e!2813137 () Bool)

(assert (=> b!4515478 (= e!2813138 e!2813137)))

(declare-fun res!1878854 () Bool)

(assert (=> b!4515478 (=> res!1878854 e!2813137)))

(assert (=> b!4515478 (= res!1878854 (= (h!56480 e!2812735) key!3287))))

(declare-fun b!4515479 () Bool)

(assert (=> b!4515479 (= e!2813137 (contains!13345 (t!357717 e!2812735) key!3287))))

(assert (= (and d!1389745 res!1878855) b!4515478))

(assert (= (and b!4515478 (not res!1878854)) b!4515479))

(declare-fun m!5259149 () Bool)

(assert (=> d!1389745 m!5259149))

(declare-fun m!5259151 () Bool)

(assert (=> d!1389745 m!5259151))

(declare-fun m!5259153 () Bool)

(assert (=> b!4515479 m!5259153))

(assert (=> bm!314420 d!1389745))

(declare-fun d!1389747 () Bool)

(declare-fun c!770330 () Bool)

(assert (=> d!1389747 (= c!770330 ((_ is Nil!50628) (toList!4315 lt!1692731)))))

(declare-fun e!2813139 () (InoxSet tuple2!51050))

(assert (=> d!1389747 (= (content!8339 (toList!4315 lt!1692731)) e!2813139)))

(declare-fun b!4515480 () Bool)

(assert (=> b!4515480 (= e!2813139 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515481 () Bool)

(assert (=> b!4515481 (= e!2813139 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692731)) true) (content!8339 (t!357714 (toList!4315 lt!1692731)))))))

(assert (= (and d!1389747 c!770330) b!4515480))

(assert (= (and d!1389747 (not c!770330)) b!4515481))

(declare-fun m!5259155 () Bool)

(assert (=> b!4515481 m!5259155))

(declare-fun m!5259157 () Bool)

(assert (=> b!4515481 m!5259157))

(assert (=> d!1389273 d!1389747))

(declare-fun d!1389749 () Bool)

(declare-fun c!770331 () Bool)

(assert (=> d!1389749 (= c!770331 ((_ is Nil!50628) (toList!4315 lt!1692736)))))

(declare-fun e!2813140 () (InoxSet tuple2!51050))

(assert (=> d!1389749 (= (content!8339 (toList!4315 lt!1692736)) e!2813140)))

(declare-fun b!4515482 () Bool)

(assert (=> b!4515482 (= e!2813140 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515483 () Bool)

(assert (=> b!4515483 (= e!2813140 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692736)) true) (content!8339 (t!357714 (toList!4315 lt!1692736)))))))

(assert (= (and d!1389749 c!770331) b!4515482))

(assert (= (and d!1389749 (not c!770331)) b!4515483))

(declare-fun m!5259159 () Bool)

(assert (=> b!4515483 m!5259159))

(declare-fun m!5259161 () Bool)

(assert (=> b!4515483 m!5259161))

(assert (=> d!1389273 d!1389749))

(declare-fun d!1389751 () Bool)

(assert (=> d!1389751 (= (invariantList!1011 (toList!4315 lt!1693090)) (noDuplicatedKeys!256 (toList!4315 lt!1693090)))))

(declare-fun bs!850381 () Bool)

(assert (= bs!850381 d!1389751))

(declare-fun m!5259163 () Bool)

(assert (=> bs!850381 m!5259163))

(assert (=> d!1389371 d!1389751))

(declare-fun d!1389753 () Bool)

(declare-fun res!1878856 () Bool)

(declare-fun e!2813141 () Bool)

(assert (=> d!1389753 (=> res!1878856 e!2813141)))

(assert (=> d!1389753 (= res!1878856 ((_ is Nil!50629) (toList!4316 lt!1692737)))))

(assert (=> d!1389753 (= (forall!10245 (toList!4316 lt!1692737) lambda!171525) e!2813141)))

(declare-fun b!4515484 () Bool)

(declare-fun e!2813142 () Bool)

(assert (=> b!4515484 (= e!2813141 e!2813142)))

(declare-fun res!1878857 () Bool)

(assert (=> b!4515484 (=> (not res!1878857) (not e!2813142))))

(assert (=> b!4515484 (= res!1878857 (dynLambda!21150 lambda!171525 (h!56476 (toList!4316 lt!1692737))))))

(declare-fun b!4515485 () Bool)

(assert (=> b!4515485 (= e!2813142 (forall!10245 (t!357715 (toList!4316 lt!1692737)) lambda!171525))))

(assert (= (and d!1389753 (not res!1878856)) b!4515484))

(assert (= (and b!4515484 res!1878857) b!4515485))

(declare-fun b_lambda!154179 () Bool)

(assert (=> (not b_lambda!154179) (not b!4515484)))

(declare-fun m!5259165 () Bool)

(assert (=> b!4515484 m!5259165))

(declare-fun m!5259167 () Bool)

(assert (=> b!4515485 m!5259167))

(assert (=> d!1389371 d!1389753))

(declare-fun d!1389755 () Bool)

(declare-fun e!2813144 () Bool)

(assert (=> d!1389755 e!2813144))

(declare-fun res!1878858 () Bool)

(assert (=> d!1389755 (=> res!1878858 e!2813144)))

(declare-fun lt!1693506 () Bool)

(assert (=> d!1389755 (= res!1878858 (not lt!1693506))))

(declare-fun lt!1693505 () Bool)

(assert (=> d!1389755 (= lt!1693506 lt!1693505)))

(declare-fun lt!1693507 () Unit!94076)

(declare-fun e!2813143 () Unit!94076)

(assert (=> d!1389755 (= lt!1693507 e!2813143)))

(declare-fun c!770332 () Bool)

(assert (=> d!1389755 (= c!770332 lt!1693505)))

(assert (=> d!1389755 (= lt!1693505 (containsKey!1763 (toList!4316 lt!1692801) (_1!28820 lt!1692726)))))

(assert (=> d!1389755 (= (contains!13342 lt!1692801 (_1!28820 lt!1692726)) lt!1693506)))

(declare-fun b!4515486 () Bool)

(declare-fun lt!1693504 () Unit!94076)

(assert (=> b!4515486 (= e!2813143 lt!1693504)))

(assert (=> b!4515486 (= lt!1693504 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1692801) (_1!28820 lt!1692726)))))

(assert (=> b!4515486 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692801) (_1!28820 lt!1692726)))))

(declare-fun b!4515487 () Bool)

(declare-fun Unit!94234 () Unit!94076)

(assert (=> b!4515487 (= e!2813143 Unit!94234)))

(declare-fun b!4515488 () Bool)

(assert (=> b!4515488 (= e!2813144 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692801) (_1!28820 lt!1692726))))))

(assert (= (and d!1389755 c!770332) b!4515486))

(assert (= (and d!1389755 (not c!770332)) b!4515487))

(assert (= (and d!1389755 (not res!1878858)) b!4515488))

(declare-fun m!5259169 () Bool)

(assert (=> d!1389755 m!5259169))

(declare-fun m!5259171 () Bool)

(assert (=> b!4515486 m!5259171))

(assert (=> b!4515486 m!5257535))

(assert (=> b!4515486 m!5257535))

(declare-fun m!5259173 () Bool)

(assert (=> b!4515486 m!5259173))

(assert (=> b!4515488 m!5257535))

(assert (=> b!4515488 m!5257535))

(assert (=> b!4515488 m!5259173))

(assert (=> d!1389247 d!1389755))

(declare-fun b!4515491 () Bool)

(declare-fun e!2813146 () Option!11099)

(assert (=> b!4515491 (= e!2813146 (getValueByKey!1079 (t!357715 lt!1692803) (_1!28820 lt!1692726)))))

(declare-fun b!4515492 () Bool)

(assert (=> b!4515492 (= e!2813146 None!11098)))

(declare-fun b!4515489 () Bool)

(declare-fun e!2813145 () Option!11099)

(assert (=> b!4515489 (= e!2813145 (Some!11098 (_2!28820 (h!56476 lt!1692803))))))

(declare-fun d!1389757 () Bool)

(declare-fun c!770333 () Bool)

(assert (=> d!1389757 (= c!770333 (and ((_ is Cons!50629) lt!1692803) (= (_1!28820 (h!56476 lt!1692803)) (_1!28820 lt!1692726))))))

(assert (=> d!1389757 (= (getValueByKey!1079 lt!1692803 (_1!28820 lt!1692726)) e!2813145)))

(declare-fun b!4515490 () Bool)

(assert (=> b!4515490 (= e!2813145 e!2813146)))

(declare-fun c!770334 () Bool)

(assert (=> b!4515490 (= c!770334 (and ((_ is Cons!50629) lt!1692803) (not (= (_1!28820 (h!56476 lt!1692803)) (_1!28820 lt!1692726)))))))

(assert (= (and d!1389757 c!770333) b!4515489))

(assert (= (and d!1389757 (not c!770333)) b!4515490))

(assert (= (and b!4515490 c!770334) b!4515491))

(assert (= (and b!4515490 (not c!770334)) b!4515492))

(declare-fun m!5259175 () Bool)

(assert (=> b!4515491 m!5259175))

(assert (=> d!1389247 d!1389757))

(declare-fun d!1389759 () Bool)

(assert (=> d!1389759 (= (getValueByKey!1079 lt!1692803 (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726)))))

(declare-fun lt!1693508 () Unit!94076)

(assert (=> d!1389759 (= lt!1693508 (choose!29424 lt!1692803 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(declare-fun e!2813147 () Bool)

(assert (=> d!1389759 e!2813147))

(declare-fun res!1878859 () Bool)

(assert (=> d!1389759 (=> (not res!1878859) (not e!2813147))))

(assert (=> d!1389759 (= res!1878859 (isStrictlySorted!424 lt!1692803))))

(assert (=> d!1389759 (= (lemmaContainsTupThenGetReturnValue!666 lt!1692803 (_1!28820 lt!1692726) (_2!28820 lt!1692726)) lt!1693508)))

(declare-fun b!4515493 () Bool)

(declare-fun res!1878860 () Bool)

(assert (=> b!4515493 (=> (not res!1878860) (not e!2813147))))

(assert (=> b!4515493 (= res!1878860 (containsKey!1763 lt!1692803 (_1!28820 lt!1692726)))))

(declare-fun b!4515494 () Bool)

(assert (=> b!4515494 (= e!2813147 (contains!13341 lt!1692803 (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726))))))

(assert (= (and d!1389759 res!1878859) b!4515493))

(assert (= (and b!4515493 res!1878860) b!4515494))

(assert (=> d!1389759 m!5257529))

(declare-fun m!5259177 () Bool)

(assert (=> d!1389759 m!5259177))

(declare-fun m!5259179 () Bool)

(assert (=> d!1389759 m!5259179))

(declare-fun m!5259181 () Bool)

(assert (=> b!4515493 m!5259181))

(declare-fun m!5259183 () Bool)

(assert (=> b!4515494 m!5259183))

(assert (=> d!1389247 d!1389759))

(declare-fun bm!314458 () Bool)

(declare-fun call!314464 () List!50753)

(declare-fun call!314465 () List!50753)

(assert (=> bm!314458 (= call!314464 call!314465)))

(declare-fun d!1389761 () Bool)

(declare-fun e!2813149 () Bool)

(assert (=> d!1389761 e!2813149))

(declare-fun res!1878861 () Bool)

(assert (=> d!1389761 (=> (not res!1878861) (not e!2813149))))

(declare-fun lt!1693509 () List!50753)

(assert (=> d!1389761 (= res!1878861 (isStrictlySorted!424 lt!1693509))))

(declare-fun e!2813148 () List!50753)

(assert (=> d!1389761 (= lt!1693509 e!2813148)))

(declare-fun c!770336 () Bool)

(assert (=> d!1389761 (= c!770336 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (bvslt (_1!28820 (h!56476 (toList!4316 lm!1477))) (_1!28820 lt!1692726))))))

(assert (=> d!1389761 (isStrictlySorted!424 (toList!4316 lm!1477))))

(assert (=> d!1389761 (= (insertStrictlySorted!402 (toList!4316 lm!1477) (_1!28820 lt!1692726) (_2!28820 lt!1692726)) lt!1693509)))

(declare-fun b!4515495 () Bool)

(declare-fun e!2813152 () List!50753)

(assert (=> b!4515495 (= e!2813152 call!314464)))

(declare-fun b!4515496 () Bool)

(assert (=> b!4515496 (= e!2813148 call!314465)))

(declare-fun b!4515497 () Bool)

(declare-fun e!2813151 () List!50753)

(declare-fun call!314463 () List!50753)

(assert (=> b!4515497 (= e!2813151 call!314463)))

(declare-fun b!4515498 () Bool)

(declare-fun res!1878862 () Bool)

(assert (=> b!4515498 (=> (not res!1878862) (not e!2813149))))

(assert (=> b!4515498 (= res!1878862 (containsKey!1763 lt!1693509 (_1!28820 lt!1692726)))))

(declare-fun b!4515499 () Bool)

(assert (=> b!4515499 (= e!2813149 (contains!13341 lt!1693509 (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726))))))

(declare-fun b!4515500 () Bool)

(assert (=> b!4515500 (= e!2813151 call!314463)))

(declare-fun c!770337 () Bool)

(declare-fun b!4515501 () Bool)

(declare-fun e!2813150 () List!50753)

(declare-fun c!770335 () Bool)

(assert (=> b!4515501 (= e!2813150 (ite c!770335 (t!357715 (toList!4316 lm!1477)) (ite c!770337 (Cons!50629 (h!56476 (toList!4316 lm!1477)) (t!357715 (toList!4316 lm!1477))) Nil!50629)))))

(declare-fun bm!314459 () Bool)

(assert (=> bm!314459 (= call!314463 call!314464)))

(declare-fun b!4515502 () Bool)

(assert (=> b!4515502 (= c!770337 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (bvsgt (_1!28820 (h!56476 (toList!4316 lm!1477))) (_1!28820 lt!1692726))))))

(assert (=> b!4515502 (= e!2813152 e!2813151)))

(declare-fun bm!314460 () Bool)

(assert (=> bm!314460 (= call!314465 ($colon$colon!923 e!2813150 (ite c!770336 (h!56476 (toList!4316 lm!1477)) (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))))

(declare-fun c!770338 () Bool)

(assert (=> bm!314460 (= c!770338 c!770336)))

(declare-fun b!4515503 () Bool)

(assert (=> b!4515503 (= e!2813150 (insertStrictlySorted!402 (t!357715 (toList!4316 lm!1477)) (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(declare-fun b!4515504 () Bool)

(assert (=> b!4515504 (= e!2813148 e!2813152)))

(assert (=> b!4515504 (= c!770335 (and ((_ is Cons!50629) (toList!4316 lm!1477)) (= (_1!28820 (h!56476 (toList!4316 lm!1477))) (_1!28820 lt!1692726))))))

(assert (= (and d!1389761 c!770336) b!4515496))

(assert (= (and d!1389761 (not c!770336)) b!4515504))

(assert (= (and b!4515504 c!770335) b!4515495))

(assert (= (and b!4515504 (not c!770335)) b!4515502))

(assert (= (and b!4515502 c!770337) b!4515497))

(assert (= (and b!4515502 (not c!770337)) b!4515500))

(assert (= (or b!4515497 b!4515500) bm!314459))

(assert (= (or b!4515495 bm!314459) bm!314458))

(assert (= (or b!4515496 bm!314458) bm!314460))

(assert (= (and bm!314460 c!770338) b!4515503))

(assert (= (and bm!314460 (not c!770338)) b!4515501))

(assert (= (and d!1389761 res!1878861) b!4515498))

(assert (= (and b!4515498 res!1878862) b!4515499))

(declare-fun m!5259185 () Bool)

(assert (=> b!4515499 m!5259185))

(declare-fun m!5259187 () Bool)

(assert (=> b!4515503 m!5259187))

(declare-fun m!5259189 () Bool)

(assert (=> b!4515498 m!5259189))

(declare-fun m!5259191 () Bool)

(assert (=> bm!314460 m!5259191))

(declare-fun m!5259193 () Bool)

(assert (=> d!1389761 m!5259193))

(assert (=> d!1389761 m!5257583))

(assert (=> d!1389247 d!1389761))

(assert (=> d!1389425 d!1389749))

(declare-fun d!1389763 () Bool)

(declare-fun c!770339 () Bool)

(assert (=> d!1389763 (= c!770339 ((_ is Nil!50628) (toList!4315 lt!1692732)))))

(declare-fun e!2813153 () (InoxSet tuple2!51050))

(assert (=> d!1389763 (= (content!8339 (toList!4315 lt!1692732)) e!2813153)))

(declare-fun b!4515505 () Bool)

(assert (=> b!4515505 (= e!2813153 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515506 () Bool)

(assert (=> b!4515506 (= e!2813153 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692732)) true) (content!8339 (t!357714 (toList!4315 lt!1692732)))))))

(assert (= (and d!1389763 c!770339) b!4515505))

(assert (= (and d!1389763 (not c!770339)) b!4515506))

(declare-fun m!5259195 () Bool)

(assert (=> b!4515506 m!5259195))

(declare-fun m!5259197 () Bool)

(assert (=> b!4515506 m!5259197))

(assert (=> d!1389425 d!1389763))

(declare-fun d!1389765 () Bool)

(assert (=> d!1389765 (= (invariantList!1011 (toList!4315 lt!1693145)) (noDuplicatedKeys!256 (toList!4315 lt!1693145)))))

(declare-fun bs!850382 () Bool)

(assert (= bs!850382 d!1389765))

(declare-fun m!5259199 () Bool)

(assert (=> bs!850382 m!5259199))

(assert (=> b!4514934 d!1389765))

(declare-fun d!1389767 () Bool)

(declare-fun res!1878863 () Bool)

(declare-fun e!2813154 () Bool)

(assert (=> d!1389767 (=> res!1878863 e!2813154)))

(assert (=> d!1389767 (= res!1878863 (and ((_ is Cons!50628) (toList!4315 lt!1692728)) (= (_1!28819 (h!56475 (toList!4315 lt!1692728))) key!3287)))))

(assert (=> d!1389767 (= (containsKey!1766 (toList!4315 lt!1692728) key!3287) e!2813154)))

(declare-fun b!4515507 () Bool)

(declare-fun e!2813155 () Bool)

(assert (=> b!4515507 (= e!2813154 e!2813155)))

(declare-fun res!1878864 () Bool)

(assert (=> b!4515507 (=> (not res!1878864) (not e!2813155))))

(assert (=> b!4515507 (= res!1878864 ((_ is Cons!50628) (toList!4315 lt!1692728)))))

(declare-fun b!4515508 () Bool)

(assert (=> b!4515508 (= e!2813155 (containsKey!1766 (t!357714 (toList!4315 lt!1692728)) key!3287))))

(assert (= (and d!1389767 (not res!1878863)) b!4515507))

(assert (= (and b!4515507 res!1878864) b!4515508))

(declare-fun m!5259201 () Bool)

(assert (=> b!4515508 m!5259201))

(assert (=> d!1389365 d!1389767))

(declare-fun bs!850383 () Bool)

(declare-fun d!1389769 () Bool)

(assert (= bs!850383 (and d!1389769 b!4514749)))

(declare-fun lambda!171635 () Int)

(assert (=> bs!850383 (= (= lt!1692734 lt!1692939) (= lambda!171635 lambda!171465))))

(declare-fun bs!850384 () Bool)

(assert (= bs!850384 (and d!1389769 b!4515446)))

(assert (=> bs!850384 (= (= lt!1692734 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171635 lambda!171627))))

(declare-fun bs!850385 () Bool)

(assert (= bs!850385 (and d!1389769 b!4515255)))

(assert (=> bs!850385 (= (= lt!1692734 lt!1693368) (= lambda!171635 lambda!171600))))

(declare-fun bs!850386 () Bool)

(assert (= bs!850386 (and d!1389769 b!4515053)))

(assert (=> bs!850386 (= (= lt!1692734 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171635 lambda!171557))))

(declare-fun bs!850387 () Bool)

(assert (= bs!850387 (and d!1389769 d!1389715)))

(assert (=> bs!850387 (= (= lt!1692734 lt!1693479) (= lambda!171635 lambda!171631))))

(declare-fun bs!850388 () Bool)

(assert (= bs!850388 (and d!1389769 d!1389607)))

(assert (=> bs!850388 (= (= lt!1692734 lt!1693147) (= lambda!171635 lambda!171612))))

(declare-fun bs!850389 () Bool)

(assert (= bs!850389 (and d!1389769 b!4514932)))

(assert (=> bs!850389 (= (= lt!1692734 lt!1692722) (= lambda!171635 lambda!171538))))

(declare-fun bs!850390 () Bool)

(assert (= bs!850390 (and d!1389769 b!4515052)))

(assert (=> bs!850390 (= (= lt!1692734 lt!1693223) (= lambda!171635 lambda!171559))))

(declare-fun bs!850391 () Bool)

(assert (= bs!850391 (and d!1389769 b!4515445)))

(assert (=> bs!850391 (= (= lt!1692734 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171635 lambda!171629))))

(assert (=> bs!850383 (= lambda!171635 lambda!171464)))

(assert (=> bs!850390 (= (= lt!1692734 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171635 lambda!171558))))

(declare-fun bs!850392 () Bool)

(assert (= bs!850392 (and d!1389769 d!1389235)))

(assert (=> bs!850392 (not (= lambda!171635 lambda!171416))))

(declare-fun bs!850393 () Bool)

(assert (= bs!850393 (and d!1389769 d!1389427)))

(assert (=> bs!850393 (= (= lt!1692734 lt!1693145) (= lambda!171635 lambda!171540))))

(assert (=> bs!850389 (= (= lt!1692734 lt!1693147) (= lambda!171635 lambda!171539))))

(assert (=> bs!850385 (= (= lt!1692734 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171635 lambda!171599))))

(declare-fun bs!850394 () Bool)

(assert (= bs!850394 (and d!1389769 b!4514933)))

(assert (=> bs!850394 (= (= lt!1692734 lt!1692722) (= lambda!171635 lambda!171537))))

(declare-fun bs!850395 () Bool)

(assert (= bs!850395 (and d!1389769 b!4515256)))

(assert (=> bs!850395 (= (= lt!1692734 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171635 lambda!171598))))

(declare-fun bs!850396 () Bool)

(assert (= bs!850396 (and d!1389769 d!1389279)))

(assert (=> bs!850396 (= (= lt!1692734 lt!1692937) (= lambda!171635 lambda!171466))))

(declare-fun bs!850397 () Bool)

(assert (= bs!850397 (and d!1389769 d!1389469)))

(assert (=> bs!850397 (= (= lt!1692734 lt!1693221) (= lambda!171635 lambda!171560))))

(assert (=> bs!850391 (= (= lt!1692734 lt!1693481) (= lambda!171635 lambda!171630))))

(declare-fun bs!850398 () Bool)

(assert (= bs!850398 (and d!1389769 d!1389575)))

(assert (=> bs!850398 (= (= lt!1692734 lt!1693366) (= lambda!171635 lambda!171601))))

(declare-fun bs!850399 () Bool)

(assert (= bs!850399 (and d!1389769 b!4514750)))

(assert (=> bs!850399 (= lambda!171635 lambda!171463)))

(assert (=> d!1389769 true))

(assert (=> d!1389769 (forall!10247 (toList!4315 lt!1692734) lambda!171635)))

(declare-fun lt!1693514 () Unit!94076)

(declare-fun choose!29439 (ListMap!3577) Unit!94076)

(assert (=> d!1389769 (= lt!1693514 (choose!29439 lt!1692734))))

(assert (=> d!1389769 (= (lemmaContainsAllItsOwnKeys!331 lt!1692734) lt!1693514)))

(declare-fun bs!850400 () Bool)

(assert (= bs!850400 d!1389769))

(declare-fun m!5259213 () Bool)

(assert (=> bs!850400 m!5259213))

(declare-fun m!5259215 () Bool)

(assert (=> bs!850400 m!5259215))

(assert (=> bm!314403 d!1389769))

(declare-fun d!1389773 () Bool)

(declare-fun c!770355 () Bool)

(assert (=> d!1389773 (= c!770355 ((_ is Nil!50629) (t!357715 (toList!4316 lm!1477))))))

(declare-fun e!2813175 () (InoxSet tuple2!51052))

(assert (=> d!1389773 (= (content!8338 (t!357715 (toList!4316 lm!1477))) e!2813175)))

(declare-fun b!4515548 () Bool)

(assert (=> b!4515548 (= e!2813175 ((as const (Array tuple2!51052 Bool)) false))))

(declare-fun b!4515549 () Bool)

(assert (=> b!4515549 (= e!2813175 ((_ map or) (store ((as const (Array tuple2!51052 Bool)) false) (h!56476 (t!357715 (toList!4316 lm!1477))) true) (content!8338 (t!357715 (t!357715 (toList!4316 lm!1477))))))))

(assert (= (and d!1389773 c!770355) b!4515548))

(assert (= (and d!1389773 (not c!770355)) b!4515549))

(declare-fun m!5259217 () Bool)

(assert (=> b!4515549 m!5259217))

(declare-fun m!5259219 () Bool)

(assert (=> b!4515549 m!5259219))

(assert (=> d!1389229 d!1389773))

(declare-fun bs!850409 () Bool)

(declare-fun b!4515553 () Bool)

(assert (= bs!850409 (and b!4515553 b!4514749)))

(declare-fun lambda!171638 () Int)

(assert (=> bs!850409 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692939) (= lambda!171638 lambda!171465))))

(declare-fun bs!850411 () Bool)

(assert (= bs!850411 (and b!4515553 b!4515446)))

(assert (=> bs!850411 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171638 lambda!171627))))

(declare-fun bs!850413 () Bool)

(assert (= bs!850413 (and b!4515553 b!4515255)))

(assert (=> bs!850413 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693368) (= lambda!171638 lambda!171600))))

(declare-fun bs!850415 () Bool)

(assert (= bs!850415 (and b!4515553 b!4515053)))

(assert (=> bs!850415 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171638 lambda!171557))))

(declare-fun bs!850417 () Bool)

(assert (= bs!850417 (and b!4515553 d!1389715)))

(assert (=> bs!850417 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693479) (= lambda!171638 lambda!171631))))

(declare-fun bs!850419 () Bool)

(assert (= bs!850419 (and b!4515553 d!1389607)))

(assert (=> bs!850419 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693147) (= lambda!171638 lambda!171612))))

(declare-fun bs!850421 () Bool)

(assert (= bs!850421 (and b!4515553 b!4514932)))

(assert (=> bs!850421 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692722) (= lambda!171638 lambda!171538))))

(declare-fun bs!850423 () Bool)

(assert (= bs!850423 (and b!4515553 b!4515052)))

(assert (=> bs!850423 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693223) (= lambda!171638 lambda!171559))))

(declare-fun bs!850424 () Bool)

(assert (= bs!850424 (and b!4515553 b!4515445)))

(assert (=> bs!850424 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171638 lambda!171629))))

(assert (=> bs!850409 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171638 lambda!171464))))

(assert (=> bs!850423 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171638 lambda!171558))))

(declare-fun bs!850427 () Bool)

(assert (= bs!850427 (and b!4515553 d!1389235)))

(assert (=> bs!850427 (not (= lambda!171638 lambda!171416))))

(declare-fun bs!850429 () Bool)

(assert (= bs!850429 (and b!4515553 d!1389427)))

(assert (=> bs!850429 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693145) (= lambda!171638 lambda!171540))))

(assert (=> bs!850421 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693147) (= lambda!171638 lambda!171539))))

(assert (=> bs!850413 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171638 lambda!171599))))

(declare-fun bs!850433 () Bool)

(assert (= bs!850433 (and b!4515553 b!4514933)))

(assert (=> bs!850433 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692722) (= lambda!171638 lambda!171537))))

(declare-fun bs!850435 () Bool)

(assert (= bs!850435 (and b!4515553 d!1389769)))

(assert (=> bs!850435 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171638 lambda!171635))))

(declare-fun bs!850437 () Bool)

(assert (= bs!850437 (and b!4515553 b!4515256)))

(assert (=> bs!850437 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171638 lambda!171598))))

(declare-fun bs!850439 () Bool)

(assert (= bs!850439 (and b!4515553 d!1389279)))

(assert (=> bs!850439 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692937) (= lambda!171638 lambda!171466))))

(declare-fun bs!850440 () Bool)

(assert (= bs!850440 (and b!4515553 d!1389469)))

(assert (=> bs!850440 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693221) (= lambda!171638 lambda!171560))))

(assert (=> bs!850424 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693481) (= lambda!171638 lambda!171630))))

(declare-fun bs!850442 () Bool)

(assert (= bs!850442 (and b!4515553 d!1389575)))

(assert (=> bs!850442 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693366) (= lambda!171638 lambda!171601))))

(declare-fun bs!850444 () Bool)

(assert (= bs!850444 (and b!4515553 b!4514750)))

(assert (=> bs!850444 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171638 lambda!171463))))

(assert (=> b!4515553 true))

(declare-fun bs!850448 () Bool)

(declare-fun b!4515552 () Bool)

(assert (= bs!850448 (and b!4515552 b!4514749)))

(declare-fun lambda!171641 () Int)

(assert (=> bs!850448 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692939) (= lambda!171641 lambda!171465))))

(declare-fun bs!850449 () Bool)

(assert (= bs!850449 (and b!4515552 b!4515446)))

(assert (=> bs!850449 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171641 lambda!171627))))

(declare-fun bs!850450 () Bool)

(assert (= bs!850450 (and b!4515552 b!4515255)))

(assert (=> bs!850450 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693368) (= lambda!171641 lambda!171600))))

(declare-fun bs!850451 () Bool)

(assert (= bs!850451 (and b!4515552 b!4515053)))

(assert (=> bs!850451 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171641 lambda!171557))))

(declare-fun bs!850452 () Bool)

(assert (= bs!850452 (and b!4515552 b!4515553)))

(assert (=> bs!850452 (= lambda!171641 lambda!171638)))

(declare-fun bs!850453 () Bool)

(assert (= bs!850453 (and b!4515552 d!1389715)))

(assert (=> bs!850453 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693479) (= lambda!171641 lambda!171631))))

(declare-fun bs!850454 () Bool)

(assert (= bs!850454 (and b!4515552 d!1389607)))

(assert (=> bs!850454 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693147) (= lambda!171641 lambda!171612))))

(declare-fun bs!850455 () Bool)

(assert (= bs!850455 (and b!4515552 b!4514932)))

(assert (=> bs!850455 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692722) (= lambda!171641 lambda!171538))))

(declare-fun bs!850456 () Bool)

(assert (= bs!850456 (and b!4515552 b!4515052)))

(assert (=> bs!850456 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693223) (= lambda!171641 lambda!171559))))

(declare-fun bs!850457 () Bool)

(assert (= bs!850457 (and b!4515552 b!4515445)))

(assert (=> bs!850457 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171641 lambda!171629))))

(assert (=> bs!850448 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171641 lambda!171464))))

(assert (=> bs!850456 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171641 lambda!171558))))

(declare-fun bs!850458 () Bool)

(assert (= bs!850458 (and b!4515552 d!1389235)))

(assert (=> bs!850458 (not (= lambda!171641 lambda!171416))))

(declare-fun bs!850459 () Bool)

(assert (= bs!850459 (and b!4515552 d!1389427)))

(assert (=> bs!850459 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693145) (= lambda!171641 lambda!171540))))

(assert (=> bs!850455 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693147) (= lambda!171641 lambda!171539))))

(assert (=> bs!850450 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171641 lambda!171599))))

(declare-fun bs!850460 () Bool)

(assert (= bs!850460 (and b!4515552 b!4514933)))

(assert (=> bs!850460 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692722) (= lambda!171641 lambda!171537))))

(declare-fun bs!850462 () Bool)

(assert (= bs!850462 (and b!4515552 d!1389769)))

(assert (=> bs!850462 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171641 lambda!171635))))

(declare-fun bs!850463 () Bool)

(assert (= bs!850463 (and b!4515552 b!4515256)))

(assert (=> bs!850463 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171641 lambda!171598))))

(declare-fun bs!850464 () Bool)

(assert (= bs!850464 (and b!4515552 d!1389279)))

(assert (=> bs!850464 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692937) (= lambda!171641 lambda!171466))))

(declare-fun bs!850465 () Bool)

(assert (= bs!850465 (and b!4515552 d!1389469)))

(assert (=> bs!850465 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693221) (= lambda!171641 lambda!171560))))

(assert (=> bs!850457 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693481) (= lambda!171641 lambda!171630))))

(declare-fun bs!850466 () Bool)

(assert (= bs!850466 (and b!4515552 d!1389575)))

(assert (=> bs!850466 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693366) (= lambda!171641 lambda!171601))))

(declare-fun bs!850467 () Bool)

(assert (= bs!850467 (and b!4515552 b!4514750)))

(assert (=> bs!850467 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1692734) (= lambda!171641 lambda!171463))))

(assert (=> b!4515552 true))

(declare-fun lt!1693536 () ListMap!3577)

(declare-fun lambda!171642 () Int)

(assert (=> bs!850448 (= (= lt!1693536 lt!1692939) (= lambda!171642 lambda!171465))))

(assert (=> bs!850449 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171642 lambda!171627))))

(assert (=> bs!850450 (= (= lt!1693536 lt!1693368) (= lambda!171642 lambda!171600))))

(assert (=> bs!850452 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171642 lambda!171638))))

(assert (=> bs!850453 (= (= lt!1693536 lt!1693479) (= lambda!171642 lambda!171631))))

(assert (=> bs!850454 (= (= lt!1693536 lt!1693147) (= lambda!171642 lambda!171612))))

(assert (=> bs!850455 (= (= lt!1693536 lt!1692722) (= lambda!171642 lambda!171538))))

(assert (=> bs!850456 (= (= lt!1693536 lt!1693223) (= lambda!171642 lambda!171559))))

(assert (=> bs!850457 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171642 lambda!171629))))

(assert (=> bs!850448 (= (= lt!1693536 lt!1692734) (= lambda!171642 lambda!171464))))

(assert (=> bs!850456 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171642 lambda!171558))))

(assert (=> bs!850458 (not (= lambda!171642 lambda!171416))))

(assert (=> bs!850459 (= (= lt!1693536 lt!1693145) (= lambda!171642 lambda!171540))))

(assert (=> bs!850455 (= (= lt!1693536 lt!1693147) (= lambda!171642 lambda!171539))))

(assert (=> bs!850450 (= (= lt!1693536 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171642 lambda!171599))))

(assert (=> bs!850460 (= (= lt!1693536 lt!1692722) (= lambda!171642 lambda!171537))))

(assert (=> bs!850462 (= (= lt!1693536 lt!1692734) (= lambda!171642 lambda!171635))))

(assert (=> bs!850463 (= (= lt!1693536 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171642 lambda!171598))))

(assert (=> bs!850464 (= (= lt!1693536 lt!1692937) (= lambda!171642 lambda!171466))))

(assert (=> bs!850451 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171642 lambda!171557))))

(assert (=> b!4515552 (= (= lt!1693536 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171642 lambda!171641))))

(assert (=> bs!850465 (= (= lt!1693536 lt!1693221) (= lambda!171642 lambda!171560))))

(assert (=> bs!850457 (= (= lt!1693536 lt!1693481) (= lambda!171642 lambda!171630))))

(assert (=> bs!850466 (= (= lt!1693536 lt!1693366) (= lambda!171642 lambda!171601))))

(assert (=> bs!850467 (= (= lt!1693536 lt!1692734) (= lambda!171642 lambda!171463))))

(assert (=> b!4515552 true))

(declare-fun bs!850469 () Bool)

(declare-fun d!1389775 () Bool)

(assert (= bs!850469 (and d!1389775 b!4514749)))

(declare-fun lt!1693534 () ListMap!3577)

(declare-fun lambda!171643 () Int)

(assert (=> bs!850469 (= (= lt!1693534 lt!1692939) (= lambda!171643 lambda!171465))))

(declare-fun bs!850470 () Bool)

(assert (= bs!850470 (and d!1389775 b!4515446)))

(assert (=> bs!850470 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171643 lambda!171627))))

(declare-fun bs!850471 () Bool)

(assert (= bs!850471 (and d!1389775 b!4515255)))

(assert (=> bs!850471 (= (= lt!1693534 lt!1693368) (= lambda!171643 lambda!171600))))

(declare-fun bs!850472 () Bool)

(assert (= bs!850472 (and d!1389775 b!4515553)))

(assert (=> bs!850472 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171643 lambda!171638))))

(declare-fun bs!850473 () Bool)

(assert (= bs!850473 (and d!1389775 d!1389715)))

(assert (=> bs!850473 (= (= lt!1693534 lt!1693479) (= lambda!171643 lambda!171631))))

(declare-fun bs!850474 () Bool)

(assert (= bs!850474 (and d!1389775 d!1389607)))

(assert (=> bs!850474 (= (= lt!1693534 lt!1693147) (= lambda!171643 lambda!171612))))

(declare-fun bs!850475 () Bool)

(assert (= bs!850475 (and d!1389775 b!4515552)))

(assert (=> bs!850475 (= (= lt!1693534 lt!1693536) (= lambda!171643 lambda!171642))))

(declare-fun bs!850476 () Bool)

(assert (= bs!850476 (and d!1389775 b!4514932)))

(assert (=> bs!850476 (= (= lt!1693534 lt!1692722) (= lambda!171643 lambda!171538))))

(declare-fun bs!850477 () Bool)

(assert (= bs!850477 (and d!1389775 b!4515052)))

(assert (=> bs!850477 (= (= lt!1693534 lt!1693223) (= lambda!171643 lambda!171559))))

(declare-fun bs!850478 () Bool)

(assert (= bs!850478 (and d!1389775 b!4515445)))

(assert (=> bs!850478 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171643 lambda!171629))))

(assert (=> bs!850469 (= (= lt!1693534 lt!1692734) (= lambda!171643 lambda!171464))))

(assert (=> bs!850477 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171643 lambda!171558))))

(declare-fun bs!850479 () Bool)

(assert (= bs!850479 (and d!1389775 d!1389235)))

(assert (=> bs!850479 (not (= lambda!171643 lambda!171416))))

(declare-fun bs!850480 () Bool)

(assert (= bs!850480 (and d!1389775 d!1389427)))

(assert (=> bs!850480 (= (= lt!1693534 lt!1693145) (= lambda!171643 lambda!171540))))

(assert (=> bs!850476 (= (= lt!1693534 lt!1693147) (= lambda!171643 lambda!171539))))

(assert (=> bs!850471 (= (= lt!1693534 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171643 lambda!171599))))

(declare-fun bs!850481 () Bool)

(assert (= bs!850481 (and d!1389775 b!4514933)))

(assert (=> bs!850481 (= (= lt!1693534 lt!1692722) (= lambda!171643 lambda!171537))))

(declare-fun bs!850482 () Bool)

(assert (= bs!850482 (and d!1389775 d!1389769)))

(assert (=> bs!850482 (= (= lt!1693534 lt!1692734) (= lambda!171643 lambda!171635))))

(declare-fun bs!850483 () Bool)

(assert (= bs!850483 (and d!1389775 b!4515256)))

(assert (=> bs!850483 (= (= lt!1693534 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171643 lambda!171598))))

(declare-fun bs!850484 () Bool)

(assert (= bs!850484 (and d!1389775 d!1389279)))

(assert (=> bs!850484 (= (= lt!1693534 lt!1692937) (= lambda!171643 lambda!171466))))

(declare-fun bs!850485 () Bool)

(assert (= bs!850485 (and d!1389775 b!4515053)))

(assert (=> bs!850485 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171643 lambda!171557))))

(assert (=> bs!850475 (= (= lt!1693534 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171643 lambda!171641))))

(declare-fun bs!850486 () Bool)

(assert (= bs!850486 (and d!1389775 d!1389469)))

(assert (=> bs!850486 (= (= lt!1693534 lt!1693221) (= lambda!171643 lambda!171560))))

(assert (=> bs!850478 (= (= lt!1693534 lt!1693481) (= lambda!171643 lambda!171630))))

(declare-fun bs!850487 () Bool)

(assert (= bs!850487 (and d!1389775 d!1389575)))

(assert (=> bs!850487 (= (= lt!1693534 lt!1693366) (= lambda!171643 lambda!171601))))

(declare-fun bs!850488 () Bool)

(assert (= bs!850488 (and d!1389775 b!4514750)))

(assert (=> bs!850488 (= (= lt!1693534 lt!1692734) (= lambda!171643 lambda!171463))))

(assert (=> d!1389775 true))

(declare-fun c!770356 () Bool)

(declare-fun bm!314470 () Bool)

(declare-fun call!314475 () Bool)

(assert (=> bm!314470 (= call!314475 (forall!10247 (ite c!770356 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692737))))) (ite c!770356 lambda!171638 lambda!171642)))))

(declare-fun call!314476 () Bool)

(declare-fun bm!314471 () Bool)

(assert (=> bm!314471 (= call!314476 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (ite c!770356 lambda!171638 lambda!171642)))))

(declare-fun bm!314472 () Bool)

(declare-fun call!314477 () Unit!94076)

(assert (=> bm!314472 (= call!314477 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))))))

(declare-fun b!4515551 () Bool)

(declare-fun e!2813178 () Bool)

(assert (=> b!4515551 (= e!2813178 call!314476)))

(declare-fun e!2813177 () ListMap!3577)

(assert (=> b!4515552 (= e!2813177 lt!1693536)))

(declare-fun lt!1693540 () ListMap!3577)

(assert (=> b!4515552 (= lt!1693540 (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737))))))))

(assert (=> b!4515552 (= lt!1693536 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692737)))) (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737)))))))))

(declare-fun lt!1693532 () Unit!94076)

(assert (=> b!4515552 (= lt!1693532 call!314477)))

(assert (=> b!4515552 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) lambda!171641)))

(declare-fun lt!1693528 () Unit!94076)

(assert (=> b!4515552 (= lt!1693528 lt!1693532)))

(assert (=> b!4515552 (forall!10247 (toList!4315 lt!1693540) lambda!171642)))

(declare-fun lt!1693543 () Unit!94076)

(declare-fun Unit!94243 () Unit!94076)

(assert (=> b!4515552 (= lt!1693543 Unit!94243)))

(assert (=> b!4515552 call!314475))

(declare-fun lt!1693533 () Unit!94076)

(declare-fun Unit!94245 () Unit!94076)

(assert (=> b!4515552 (= lt!1693533 Unit!94245)))

(declare-fun lt!1693535 () Unit!94076)

(declare-fun Unit!94246 () Unit!94076)

(assert (=> b!4515552 (= lt!1693535 Unit!94246)))

(declare-fun lt!1693542 () Unit!94076)

(assert (=> b!4515552 (= lt!1693542 (forallContained!2498 (toList!4315 lt!1693540) lambda!171642 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737))))))))

(assert (=> b!4515552 (contains!13343 lt!1693540 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737))))))))

(declare-fun lt!1693541 () Unit!94076)

(declare-fun Unit!94248 () Unit!94076)

(assert (=> b!4515552 (= lt!1693541 Unit!94248)))

(assert (=> b!4515552 (contains!13343 lt!1693536 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737))))))))

(declare-fun lt!1693527 () Unit!94076)

(declare-fun Unit!94249 () Unit!94076)

(assert (=> b!4515552 (= lt!1693527 Unit!94249)))

(assert (=> b!4515552 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692737))) lambda!171642)))

(declare-fun lt!1693530 () Unit!94076)

(declare-fun Unit!94251 () Unit!94076)

(assert (=> b!4515552 (= lt!1693530 Unit!94251)))

(assert (=> b!4515552 (forall!10247 (toList!4315 lt!1693540) lambda!171642)))

(declare-fun lt!1693525 () Unit!94076)

(declare-fun Unit!94252 () Unit!94076)

(assert (=> b!4515552 (= lt!1693525 Unit!94252)))

(declare-fun lt!1693538 () Unit!94076)

(declare-fun Unit!94253 () Unit!94076)

(assert (=> b!4515552 (= lt!1693538 Unit!94253)))

(declare-fun lt!1693537 () Unit!94076)

(assert (=> b!4515552 (= lt!1693537 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693536 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692737)))))))))

(assert (=> b!4515552 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) lambda!171642)))

(declare-fun lt!1693523 () Unit!94076)

(assert (=> b!4515552 (= lt!1693523 lt!1693537)))

(assert (=> b!4515552 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) lambda!171642)))

(declare-fun lt!1693529 () Unit!94076)

(declare-fun Unit!94254 () Unit!94076)

(assert (=> b!4515552 (= lt!1693529 Unit!94254)))

(declare-fun res!1878874 () Bool)

(assert (=> b!4515552 (= res!1878874 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692737))) lambda!171642))))

(assert (=> b!4515552 (=> (not res!1878874) (not e!2813178))))

(assert (=> b!4515552 e!2813178))

(declare-fun lt!1693526 () Unit!94076)

(declare-fun Unit!94255 () Unit!94076)

(assert (=> b!4515552 (= lt!1693526 Unit!94255)))

(declare-fun b!4515550 () Bool)

(declare-fun res!1878875 () Bool)

(declare-fun e!2813176 () Bool)

(assert (=> b!4515550 (=> (not res!1878875) (not e!2813176))))

(assert (=> b!4515550 (= res!1878875 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) lambda!171643))))

(assert (=> d!1389775 e!2813176))

(declare-fun res!1878876 () Bool)

(assert (=> d!1389775 (=> (not res!1878876) (not e!2813176))))

(assert (=> d!1389775 (= res!1878876 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692737))) lambda!171643))))

(assert (=> d!1389775 (= lt!1693534 e!2813177)))

(assert (=> d!1389775 (= c!770356 ((_ is Nil!50628) (_2!28820 (h!56476 (toList!4316 lt!1692737)))))))

(assert (=> d!1389775 (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692737))))))

(assert (=> d!1389775 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692737))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) lt!1693534)))

(assert (=> b!4515553 (= e!2813177 (extractMap!1210 (t!357715 (toList!4316 lt!1692737))))))

(declare-fun lt!1693531 () Unit!94076)

(assert (=> b!4515553 (= lt!1693531 call!314477)))

(assert (=> b!4515553 call!314476))

(declare-fun lt!1693524 () Unit!94076)

(assert (=> b!4515553 (= lt!1693524 lt!1693531)))

(assert (=> b!4515553 call!314475))

(declare-fun lt!1693539 () Unit!94076)

(declare-fun Unit!94256 () Unit!94076)

(assert (=> b!4515553 (= lt!1693539 Unit!94256)))

(declare-fun b!4515554 () Bool)

(assert (=> b!4515554 (= e!2813176 (invariantList!1011 (toList!4315 lt!1693534)))))

(assert (= (and d!1389775 c!770356) b!4515553))

(assert (= (and d!1389775 (not c!770356)) b!4515552))

(assert (= (and b!4515552 res!1878874) b!4515551))

(assert (= (or b!4515553 b!4515552) bm!314470))

(assert (= (or b!4515553 b!4515551) bm!314471))

(assert (= (or b!4515553 b!4515552) bm!314472))

(assert (= (and d!1389775 res!1878876) b!4515550))

(assert (= (and b!4515550 res!1878875) b!4515554))

(declare-fun m!5259293 () Bool)

(assert (=> bm!314470 m!5259293))

(declare-fun m!5259295 () Bool)

(assert (=> b!4515552 m!5259295))

(declare-fun m!5259297 () Bool)

(assert (=> b!4515552 m!5259297))

(declare-fun m!5259299 () Bool)

(assert (=> b!4515552 m!5259299))

(declare-fun m!5259301 () Bool)

(assert (=> b!4515552 m!5259301))

(assert (=> b!4515552 m!5259301))

(declare-fun m!5259303 () Bool)

(assert (=> b!4515552 m!5259303))

(assert (=> b!4515552 m!5259295))

(declare-fun m!5259305 () Bool)

(assert (=> b!4515552 m!5259305))

(assert (=> b!4515552 m!5257969))

(declare-fun m!5259307 () Bool)

(assert (=> b!4515552 m!5259307))

(assert (=> b!4515552 m!5257969))

(assert (=> b!4515552 m!5259297))

(assert (=> b!4515552 m!5259303))

(declare-fun m!5259309 () Bool)

(assert (=> b!4515552 m!5259309))

(declare-fun m!5259311 () Bool)

(assert (=> b!4515552 m!5259311))

(declare-fun m!5259313 () Bool)

(assert (=> b!4515552 m!5259313))

(declare-fun m!5259315 () Bool)

(assert (=> bm!314471 m!5259315))

(assert (=> bm!314472 m!5257969))

(declare-fun m!5259317 () Bool)

(assert (=> bm!314472 m!5259317))

(declare-fun m!5259319 () Bool)

(assert (=> b!4515554 m!5259319))

(declare-fun m!5259321 () Bool)

(assert (=> b!4515550 m!5259321))

(declare-fun m!5259323 () Bool)

(assert (=> d!1389775 m!5259323))

(declare-fun m!5259325 () Bool)

(assert (=> d!1389775 m!5259325))

(assert (=> b!4514867 d!1389775))

(declare-fun bs!850491 () Bool)

(declare-fun d!1389807 () Bool)

(assert (= bs!850491 (and d!1389807 d!1389333)))

(declare-fun lambda!171644 () Int)

(assert (=> bs!850491 (= lambda!171644 lambda!171504)))

(declare-fun bs!850492 () Bool)

(assert (= bs!850492 (and d!1389807 start!446664)))

(assert (=> bs!850492 (= lambda!171644 lambda!171413)))

(declare-fun bs!850493 () Bool)

(assert (= bs!850493 (and d!1389807 d!1389351)))

(assert (=> bs!850493 (= lambda!171644 lambda!171520)))

(declare-fun bs!850494 () Bool)

(assert (= bs!850494 (and d!1389807 d!1389385)))

(assert (=> bs!850494 (= lambda!171644 lambda!171531)))

(declare-fun bs!850495 () Bool)

(assert (= bs!850495 (and d!1389807 d!1389371)))

(assert (=> bs!850495 (= lambda!171644 lambda!171525)))

(declare-fun bs!850496 () Bool)

(assert (= bs!850496 (and d!1389807 d!1389405)))

(assert (=> bs!850496 (= lambda!171644 lambda!171535)))

(declare-fun bs!850497 () Bool)

(assert (= bs!850497 (and d!1389807 d!1389473)))

(assert (=> bs!850497 (= lambda!171644 lambda!171561)))

(declare-fun bs!850498 () Bool)

(assert (= bs!850498 (and d!1389807 d!1389431)))

(assert (=> bs!850498 (= lambda!171644 lambda!171543)))

(declare-fun bs!850499 () Bool)

(assert (= bs!850499 (and d!1389807 d!1389369)))

(assert (=> bs!850499 (not (= lambda!171644 lambda!171524))))

(declare-fun bs!850500 () Bool)

(assert (= bs!850500 (and d!1389807 d!1389733)))

(assert (=> bs!850500 (= lambda!171644 lambda!171632)))

(declare-fun bs!850501 () Bool)

(assert (= bs!850501 (and d!1389807 d!1389397)))

(assert (=> bs!850501 (= lambda!171644 lambda!171532)))

(declare-fun bs!850502 () Bool)

(assert (= bs!850502 (and d!1389807 d!1389367)))

(assert (=> bs!850502 (= lambda!171644 lambda!171521)))

(declare-fun bs!850503 () Bool)

(assert (= bs!850503 (and d!1389807 d!1389421)))

(assert (=> bs!850503 (= lambda!171644 lambda!171536)))

(declare-fun bs!850504 () Bool)

(assert (= bs!850504 (and d!1389807 d!1389325)))

(assert (=> bs!850504 (= lambda!171644 lambda!171497)))

(declare-fun bs!850505 () Bool)

(assert (= bs!850505 (and d!1389807 d!1389491)))

(assert (=> bs!850505 (= lambda!171644 lambda!171567)))

(declare-fun bs!850506 () Bool)

(assert (= bs!850506 (and d!1389807 d!1389349)))

(assert (=> bs!850506 (= lambda!171644 lambda!171510)))

(declare-fun lt!1693551 () ListMap!3577)

(assert (=> d!1389807 (invariantList!1011 (toList!4315 lt!1693551))))

(declare-fun e!2813200 () ListMap!3577)

(assert (=> d!1389807 (= lt!1693551 e!2813200)))

(declare-fun c!770364 () Bool)

(assert (=> d!1389807 (= c!770364 ((_ is Cons!50629) (t!357715 (toList!4316 lt!1692737))))))

(assert (=> d!1389807 (forall!10245 (t!357715 (toList!4316 lt!1692737)) lambda!171644)))

(assert (=> d!1389807 (= (extractMap!1210 (t!357715 (toList!4316 lt!1692737))) lt!1693551)))

(declare-fun b!4515583 () Bool)

(assert (=> b!4515583 (= e!2813200 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 lt!1692737)))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lt!1692737))))))))

(declare-fun b!4515584 () Bool)

(assert (=> b!4515584 (= e!2813200 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389807 c!770364) b!4515583))

(assert (= (and d!1389807 (not c!770364)) b!4515584))

(declare-fun m!5259339 () Bool)

(assert (=> d!1389807 m!5259339))

(declare-fun m!5259341 () Bool)

(assert (=> d!1389807 m!5259341))

(declare-fun m!5259343 () Bool)

(assert (=> b!4515583 m!5259343))

(assert (=> b!4515583 m!5259343))

(declare-fun m!5259345 () Bool)

(assert (=> b!4515583 m!5259345))

(assert (=> b!4514867 d!1389807))

(declare-fun bs!850507 () Bool)

(declare-fun b!4515597 () Bool)

(assert (= bs!850507 (and b!4515597 b!4515223)))

(declare-fun lambda!171645 () Int)

(assert (=> bs!850507 (= (= (t!357714 (toList!4315 lt!1692724)) (toList!4315 lt!1692728)) (= lambda!171645 lambda!171596))))

(declare-fun bs!850508 () Bool)

(assert (= bs!850508 (and b!4515597 b!4514958)))

(assert (=> bs!850508 (= (= (t!357714 (toList!4315 lt!1692724)) (toList!4315 lt!1692724)) (= lambda!171645 lambda!171548))))

(declare-fun bs!850509 () Bool)

(assert (= bs!850509 (and b!4515597 b!4515023)))

(assert (=> bs!850509 (= (= (t!357714 (toList!4315 lt!1692724)) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171645 lambda!171555))))

(declare-fun bs!850510 () Bool)

(assert (= bs!850510 (and b!4515597 b!4515099)))

(assert (=> bs!850510 (= (= (t!357714 (toList!4315 lt!1692724)) (toList!4315 lt!1692728)) (= lambda!171645 lambda!171568))))

(declare-fun bs!850511 () Bool)

(assert (= bs!850511 (and b!4515597 b!4515227)))

(assert (=> bs!850511 (= (= (t!357714 (toList!4315 lt!1692724)) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171645 lambda!171594))))

(declare-fun bs!850512 () Bool)

(assert (= bs!850512 (and b!4515597 b!4515225)))

(assert (=> bs!850512 (= (= (t!357714 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692728))) (= lambda!171645 lambda!171591))))

(declare-fun bs!850513 () Bool)

(assert (= bs!850513 (and b!4515597 b!4515433)))

(assert (=> bs!850513 (= (= (t!357714 (toList!4315 lt!1692724)) (toList!4315 lt!1693104)) (= lambda!171645 lambda!171623))))

(assert (=> b!4515597 true))

(declare-fun bs!850514 () Bool)

(declare-fun b!4515599 () Bool)

(assert (= bs!850514 (and b!4515599 b!4515223)))

(declare-fun lambda!171646 () Int)

(assert (=> bs!850514 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (toList!4315 lt!1692728)) (= lambda!171646 lambda!171596))))

(declare-fun bs!850515 () Bool)

(assert (= bs!850515 (and b!4515599 b!4514958)))

(assert (=> bs!850515 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (toList!4315 lt!1692724)) (= lambda!171646 lambda!171548))))

(declare-fun bs!850516 () Bool)

(assert (= bs!850516 (and b!4515599 b!4515023)))

(assert (=> bs!850516 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171646 lambda!171555))))

(declare-fun bs!850517 () Bool)

(assert (= bs!850517 (and b!4515599 b!4515099)))

(assert (=> bs!850517 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (toList!4315 lt!1692728)) (= lambda!171646 lambda!171568))))

(declare-fun bs!850518 () Bool)

(assert (= bs!850518 (and b!4515599 b!4515227)))

(assert (=> bs!850518 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171646 lambda!171594))))

(declare-fun bs!850520 () Bool)

(assert (= bs!850520 (and b!4515599 b!4515225)))

(assert (=> bs!850520 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (t!357714 (toList!4315 lt!1692728))) (= lambda!171646 lambda!171591))))

(declare-fun bs!850521 () Bool)

(assert (= bs!850521 (and b!4515599 b!4515433)))

(assert (=> bs!850521 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (toList!4315 lt!1693104)) (= lambda!171646 lambda!171623))))

(declare-fun bs!850523 () Bool)

(assert (= bs!850523 (and b!4515599 b!4515597)))

(assert (=> bs!850523 (= (= (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724))) (t!357714 (toList!4315 lt!1692724))) (= lambda!171646 lambda!171645))))

(assert (=> b!4515599 true))

(declare-fun bs!850524 () Bool)

(declare-fun b!4515595 () Bool)

(assert (= bs!850524 (and b!4515595 b!4515223)))

(declare-fun lambda!171647 () Int)

(assert (=> bs!850524 (= (= (toList!4315 lt!1692724) (toList!4315 lt!1692728)) (= lambda!171647 lambda!171596))))

(declare-fun bs!850525 () Bool)

(assert (= bs!850525 (and b!4515595 b!4514958)))

(assert (=> bs!850525 (= lambda!171647 lambda!171548)))

(declare-fun bs!850526 () Bool)

(assert (= bs!850526 (and b!4515595 b!4515023)))

(assert (=> bs!850526 (= (= (toList!4315 lt!1692724) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171647 lambda!171555))))

(declare-fun bs!850527 () Bool)

(assert (= bs!850527 (and b!4515595 b!4515599)))

(assert (=> bs!850527 (= (= (toList!4315 lt!1692724) (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724)))) (= lambda!171647 lambda!171646))))

(declare-fun bs!850528 () Bool)

(assert (= bs!850528 (and b!4515595 b!4515099)))

(assert (=> bs!850528 (= (= (toList!4315 lt!1692724) (toList!4315 lt!1692728)) (= lambda!171647 lambda!171568))))

(declare-fun bs!850529 () Bool)

(assert (= bs!850529 (and b!4515595 b!4515227)))

(assert (=> bs!850529 (= (= (toList!4315 lt!1692724) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171647 lambda!171594))))

(declare-fun bs!850530 () Bool)

(assert (= bs!850530 (and b!4515595 b!4515225)))

(assert (=> bs!850530 (= (= (toList!4315 lt!1692724) (t!357714 (toList!4315 lt!1692728))) (= lambda!171647 lambda!171591))))

(declare-fun bs!850531 () Bool)

(assert (= bs!850531 (and b!4515595 b!4515433)))

(assert (=> bs!850531 (= (= (toList!4315 lt!1692724) (toList!4315 lt!1693104)) (= lambda!171647 lambda!171623))))

(declare-fun bs!850532 () Bool)

(assert (= bs!850532 (and b!4515595 b!4515597)))

(assert (=> bs!850532 (= (= (toList!4315 lt!1692724) (t!357714 (toList!4315 lt!1692724))) (= lambda!171647 lambda!171645))))

(assert (=> b!4515595 true))

(declare-fun bs!850533 () Bool)

(declare-fun b!4515598 () Bool)

(assert (= bs!850533 (and b!4515598 b!4514959)))

(declare-fun lambda!171648 () Int)

(assert (=> bs!850533 (= lambda!171648 lambda!171549)))

(declare-fun bs!850534 () Bool)

(assert (= bs!850534 (and b!4515598 b!4515226)))

(assert (=> bs!850534 (= lambda!171648 lambda!171597)))

(declare-fun bs!850535 () Bool)

(assert (= bs!850535 (and b!4515598 b!4515024)))

(assert (=> bs!850535 (= lambda!171648 lambda!171556)))

(declare-fun bs!850536 () Bool)

(assert (= bs!850536 (and b!4515598 b!4515434)))

(assert (=> bs!850536 (= lambda!171648 lambda!171624)))

(declare-fun bs!850537 () Bool)

(assert (= bs!850537 (and b!4515598 b!4515100)))

(assert (=> bs!850537 (= lambda!171648 lambda!171569)))

(declare-fun b!4515593 () Bool)

(declare-fun e!2813208 () List!50755)

(assert (=> b!4515593 (= e!2813208 Nil!50631)))

(declare-fun b!4515594 () Bool)

(assert (=> b!4515594 false))

(declare-fun e!2813209 () Unit!94076)

(declare-fun Unit!94257 () Unit!94076)

(assert (=> b!4515594 (= e!2813209 Unit!94257)))

(declare-fun res!1878895 () Bool)

(declare-fun e!2813207 () Bool)

(assert (=> b!4515595 (=> (not res!1878895) (not e!2813207))))

(declare-fun lt!1693557 () List!50755)

(assert (=> b!4515595 (= res!1878895 (forall!10248 lt!1693557 lambda!171647))))

(declare-fun b!4515596 () Bool)

(declare-fun e!2813210 () Unit!94076)

(declare-fun Unit!94258 () Unit!94076)

(assert (=> b!4515596 (= e!2813210 Unit!94258)))

(assert (=> b!4515597 false))

(declare-fun lt!1693555 () Unit!94076)

(assert (=> b!4515597 (= lt!1693555 (forallContained!2501 (getKeysList!459 (t!357714 (toList!4315 lt!1692724))) lambda!171645 (_1!28819 (h!56475 (toList!4315 lt!1692724)))))))

(declare-fun Unit!94259 () Unit!94076)

(assert (=> b!4515597 (= e!2813210 Unit!94259)))

(assert (=> b!4515598 (= e!2813207 (= (content!8341 lt!1693557) (content!8341 (map!11129 (toList!4315 lt!1692724) lambda!171648))))))

(declare-fun d!1389815 () Bool)

(assert (=> d!1389815 e!2813207))

(declare-fun res!1878897 () Bool)

(assert (=> d!1389815 (=> (not res!1878897) (not e!2813207))))

(assert (=> d!1389815 (= res!1878897 (noDuplicate!741 lt!1693557))))

(assert (=> d!1389815 (= lt!1693557 e!2813208)))

(declare-fun c!770369 () Bool)

(assert (=> d!1389815 (= c!770369 ((_ is Cons!50628) (toList!4315 lt!1692724)))))

(assert (=> d!1389815 (invariantList!1011 (toList!4315 lt!1692724))))

(assert (=> d!1389815 (= (getKeysList!459 (toList!4315 lt!1692724)) lt!1693557)))

(assert (=> b!4515599 (= e!2813208 (Cons!50631 (_1!28819 (h!56475 (toList!4315 lt!1692724))) (getKeysList!459 (t!357714 (toList!4315 lt!1692724)))))))

(declare-fun c!770368 () Bool)

(assert (=> b!4515599 (= c!770368 (containsKey!1766 (t!357714 (toList!4315 lt!1692724)) (_1!28819 (h!56475 (toList!4315 lt!1692724)))))))

(declare-fun lt!1693553 () Unit!94076)

(assert (=> b!4515599 (= lt!1693553 e!2813209)))

(declare-fun c!770367 () Bool)

(assert (=> b!4515599 (= c!770367 (contains!13345 (getKeysList!459 (t!357714 (toList!4315 lt!1692724))) (_1!28819 (h!56475 (toList!4315 lt!1692724)))))))

(declare-fun lt!1693558 () Unit!94076)

(assert (=> b!4515599 (= lt!1693558 e!2813210)))

(declare-fun lt!1693556 () List!50755)

(assert (=> b!4515599 (= lt!1693556 (getKeysList!459 (t!357714 (toList!4315 lt!1692724))))))

(declare-fun lt!1693552 () Unit!94076)

(assert (=> b!4515599 (= lt!1693552 (lemmaForallContainsAddHeadPreserves!163 (t!357714 (toList!4315 lt!1692724)) lt!1693556 (h!56475 (toList!4315 lt!1692724))))))

(assert (=> b!4515599 (forall!10248 lt!1693556 lambda!171646)))

(declare-fun lt!1693554 () Unit!94076)

(assert (=> b!4515599 (= lt!1693554 lt!1693552)))

(declare-fun b!4515600 () Bool)

(declare-fun res!1878896 () Bool)

(assert (=> b!4515600 (=> (not res!1878896) (not e!2813207))))

(assert (=> b!4515600 (= res!1878896 (= (length!338 lt!1693557) (length!339 (toList!4315 lt!1692724))))))

(declare-fun b!4515601 () Bool)

(declare-fun Unit!94260 () Unit!94076)

(assert (=> b!4515601 (= e!2813209 Unit!94260)))

(assert (= (and d!1389815 c!770369) b!4515599))

(assert (= (and d!1389815 (not c!770369)) b!4515593))

(assert (= (and b!4515599 c!770368) b!4515594))

(assert (= (and b!4515599 (not c!770368)) b!4515601))

(assert (= (and b!4515599 c!770367) b!4515597))

(assert (= (and b!4515599 (not c!770367)) b!4515596))

(assert (= (and d!1389815 res!1878897) b!4515600))

(assert (= (and b!4515600 res!1878896) b!4515595))

(assert (= (and b!4515595 res!1878895) b!4515598))

(declare-fun m!5259363 () Bool)

(assert (=> d!1389815 m!5259363))

(assert (=> d!1389815 m!5258479))

(declare-fun m!5259365 () Bool)

(assert (=> b!4515599 m!5259365))

(declare-fun m!5259367 () Bool)

(assert (=> b!4515599 m!5259367))

(declare-fun m!5259369 () Bool)

(assert (=> b!4515599 m!5259369))

(declare-fun m!5259371 () Bool)

(assert (=> b!4515599 m!5259371))

(declare-fun m!5259375 () Bool)

(assert (=> b!4515599 m!5259375))

(assert (=> b!4515599 m!5259365))

(declare-fun m!5259379 () Bool)

(assert (=> b!4515595 m!5259379))

(declare-fun m!5259381 () Bool)

(assert (=> b!4515600 m!5259381))

(assert (=> b!4515600 m!5258179))

(assert (=> b!4515597 m!5259365))

(assert (=> b!4515597 m!5259365))

(declare-fun m!5259383 () Bool)

(assert (=> b!4515597 m!5259383))

(declare-fun m!5259385 () Bool)

(assert (=> b!4515598 m!5259385))

(declare-fun m!5259387 () Bool)

(assert (=> b!4515598 m!5259387))

(assert (=> b!4515598 m!5259387))

(declare-fun m!5259389 () Bool)

(assert (=> b!4515598 m!5259389))

(assert (=> b!4514921 d!1389815))

(declare-fun d!1389833 () Bool)

(declare-fun e!2813224 () Bool)

(assert (=> d!1389833 e!2813224))

(declare-fun res!1878910 () Bool)

(assert (=> d!1389833 (=> res!1878910 e!2813224)))

(declare-fun lt!1693563 () Bool)

(assert (=> d!1389833 (= res!1878910 (not lt!1693563))))

(declare-fun lt!1693562 () Bool)

(assert (=> d!1389833 (= lt!1693563 lt!1693562)))

(declare-fun lt!1693564 () Unit!94076)

(declare-fun e!2813223 () Unit!94076)

(assert (=> d!1389833 (= lt!1693564 e!2813223)))

(declare-fun c!770370 () Bool)

(assert (=> d!1389833 (= c!770370 lt!1693562)))

(assert (=> d!1389833 (= lt!1693562 (containsKey!1763 (toList!4316 lt!1693095) (_1!28820 lt!1692726)))))

(assert (=> d!1389833 (= (contains!13342 lt!1693095 (_1!28820 lt!1692726)) lt!1693563)))

(declare-fun b!4515614 () Bool)

(declare-fun lt!1693561 () Unit!94076)

(assert (=> b!4515614 (= e!2813223 lt!1693561)))

(assert (=> b!4515614 (= lt!1693561 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1693095) (_1!28820 lt!1692726)))))

(assert (=> b!4515614 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1693095) (_1!28820 lt!1692726)))))

(declare-fun b!4515615 () Bool)

(declare-fun Unit!94261 () Unit!94076)

(assert (=> b!4515615 (= e!2813223 Unit!94261)))

(declare-fun b!4515616 () Bool)

(assert (=> b!4515616 (= e!2813224 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1693095) (_1!28820 lt!1692726))))))

(assert (= (and d!1389833 c!770370) b!4515614))

(assert (= (and d!1389833 (not c!770370)) b!4515615))

(assert (= (and d!1389833 (not res!1878910)) b!4515616))

(declare-fun m!5259397 () Bool)

(assert (=> d!1389833 m!5259397))

(declare-fun m!5259399 () Bool)

(assert (=> b!4515614 m!5259399))

(assert (=> b!4515614 m!5257993))

(assert (=> b!4515614 m!5257993))

(declare-fun m!5259401 () Bool)

(assert (=> b!4515614 m!5259401))

(assert (=> b!4515616 m!5257993))

(assert (=> b!4515616 m!5257993))

(assert (=> b!4515616 m!5259401))

(assert (=> d!1389375 d!1389833))

(declare-fun b!4515621 () Bool)

(declare-fun e!2813228 () Option!11099)

(assert (=> b!4515621 (= e!2813228 (getValueByKey!1079 (t!357715 lt!1693097) (_1!28820 lt!1692726)))))

(declare-fun b!4515622 () Bool)

(assert (=> b!4515622 (= e!2813228 None!11098)))

(declare-fun b!4515619 () Bool)

(declare-fun e!2813227 () Option!11099)

(assert (=> b!4515619 (= e!2813227 (Some!11098 (_2!28820 (h!56476 lt!1693097))))))

(declare-fun d!1389839 () Bool)

(declare-fun c!770371 () Bool)

(assert (=> d!1389839 (= c!770371 (and ((_ is Cons!50629) lt!1693097) (= (_1!28820 (h!56476 lt!1693097)) (_1!28820 lt!1692726))))))

(assert (=> d!1389839 (= (getValueByKey!1079 lt!1693097 (_1!28820 lt!1692726)) e!2813227)))

(declare-fun b!4515620 () Bool)

(assert (=> b!4515620 (= e!2813227 e!2813228)))

(declare-fun c!770372 () Bool)

(assert (=> b!4515620 (= c!770372 (and ((_ is Cons!50629) lt!1693097) (not (= (_1!28820 (h!56476 lt!1693097)) (_1!28820 lt!1692726)))))))

(assert (= (and d!1389839 c!770371) b!4515619))

(assert (= (and d!1389839 (not c!770371)) b!4515620))

(assert (= (and b!4515620 c!770372) b!4515621))

(assert (= (and b!4515620 (not c!770372)) b!4515622))

(declare-fun m!5259407 () Bool)

(assert (=> b!4515621 m!5259407))

(assert (=> d!1389375 d!1389839))

(declare-fun d!1389843 () Bool)

(assert (=> d!1389843 (= (getValueByKey!1079 lt!1693097 (_1!28820 lt!1692726)) (Some!11098 (_2!28820 lt!1692726)))))

(declare-fun lt!1693566 () Unit!94076)

(assert (=> d!1389843 (= lt!1693566 (choose!29424 lt!1693097 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(declare-fun e!2813231 () Bool)

(assert (=> d!1389843 e!2813231))

(declare-fun res!1878915 () Bool)

(assert (=> d!1389843 (=> (not res!1878915) (not e!2813231))))

(assert (=> d!1389843 (= res!1878915 (isStrictlySorted!424 lt!1693097))))

(assert (=> d!1389843 (= (lemmaContainsTupThenGetReturnValue!666 lt!1693097 (_1!28820 lt!1692726) (_2!28820 lt!1692726)) lt!1693566)))

(declare-fun b!4515625 () Bool)

(declare-fun res!1878916 () Bool)

(assert (=> b!4515625 (=> (not res!1878916) (not e!2813231))))

(assert (=> b!4515625 (= res!1878916 (containsKey!1763 lt!1693097 (_1!28820 lt!1692726)))))

(declare-fun b!4515626 () Bool)

(assert (=> b!4515626 (= e!2813231 (contains!13341 lt!1693097 (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726))))))

(assert (= (and d!1389843 res!1878915) b!4515625))

(assert (= (and b!4515625 res!1878916) b!4515626))

(assert (=> d!1389843 m!5257987))

(declare-fun m!5259415 () Bool)

(assert (=> d!1389843 m!5259415))

(declare-fun m!5259417 () Bool)

(assert (=> d!1389843 m!5259417))

(declare-fun m!5259419 () Bool)

(assert (=> b!4515625 m!5259419))

(declare-fun m!5259421 () Bool)

(assert (=> b!4515626 m!5259421))

(assert (=> d!1389375 d!1389843))

(declare-fun bm!314473 () Bool)

(declare-fun call!314479 () List!50753)

(declare-fun call!314480 () List!50753)

(assert (=> bm!314473 (= call!314479 call!314480)))

(declare-fun d!1389847 () Bool)

(declare-fun e!2813234 () Bool)

(assert (=> d!1389847 e!2813234))

(declare-fun res!1878917 () Bool)

(assert (=> d!1389847 (=> (not res!1878917) (not e!2813234))))

(declare-fun lt!1693568 () List!50753)

(assert (=> d!1389847 (= res!1878917 (isStrictlySorted!424 lt!1693568))))

(declare-fun e!2813233 () List!50753)

(assert (=> d!1389847 (= lt!1693568 e!2813233)))

(declare-fun c!770375 () Bool)

(assert (=> d!1389847 (= c!770375 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (bvslt (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692726))))))

(assert (=> d!1389847 (isStrictlySorted!424 (toList!4316 lt!1692730))))

(assert (=> d!1389847 (= (insertStrictlySorted!402 (toList!4316 lt!1692730) (_1!28820 lt!1692726) (_2!28820 lt!1692726)) lt!1693568)))

(declare-fun b!4515629 () Bool)

(declare-fun e!2813237 () List!50753)

(assert (=> b!4515629 (= e!2813237 call!314479)))

(declare-fun b!4515630 () Bool)

(assert (=> b!4515630 (= e!2813233 call!314480)))

(declare-fun b!4515631 () Bool)

(declare-fun e!2813236 () List!50753)

(declare-fun call!314478 () List!50753)

(assert (=> b!4515631 (= e!2813236 call!314478)))

(declare-fun b!4515632 () Bool)

(declare-fun res!1878918 () Bool)

(assert (=> b!4515632 (=> (not res!1878918) (not e!2813234))))

(assert (=> b!4515632 (= res!1878918 (containsKey!1763 lt!1693568 (_1!28820 lt!1692726)))))

(declare-fun b!4515633 () Bool)

(assert (=> b!4515633 (= e!2813234 (contains!13341 lt!1693568 (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726))))))

(declare-fun b!4515634 () Bool)

(assert (=> b!4515634 (= e!2813236 call!314478)))

(declare-fun c!770374 () Bool)

(declare-fun e!2813235 () List!50753)

(declare-fun b!4515635 () Bool)

(declare-fun c!770376 () Bool)

(assert (=> b!4515635 (= e!2813235 (ite c!770374 (t!357715 (toList!4316 lt!1692730)) (ite c!770376 (Cons!50629 (h!56476 (toList!4316 lt!1692730)) (t!357715 (toList!4316 lt!1692730))) Nil!50629)))))

(declare-fun bm!314474 () Bool)

(assert (=> bm!314474 (= call!314478 call!314479)))

(declare-fun b!4515636 () Bool)

(assert (=> b!4515636 (= c!770376 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (bvsgt (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692726))))))

(assert (=> b!4515636 (= e!2813237 e!2813236)))

(declare-fun bm!314475 () Bool)

(assert (=> bm!314475 (= call!314480 ($colon$colon!923 e!2813235 (ite c!770375 (h!56476 (toList!4316 lt!1692730)) (tuple2!51053 (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))))

(declare-fun c!770377 () Bool)

(assert (=> bm!314475 (= c!770377 c!770375)))

(declare-fun b!4515637 () Bool)

(assert (=> b!4515637 (= e!2813235 (insertStrictlySorted!402 (t!357715 (toList!4316 lt!1692730)) (_1!28820 lt!1692726) (_2!28820 lt!1692726)))))

(declare-fun b!4515638 () Bool)

(assert (=> b!4515638 (= e!2813233 e!2813237)))

(assert (=> b!4515638 (= c!770374 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (= (_1!28820 (h!56476 (toList!4316 lt!1692730))) (_1!28820 lt!1692726))))))

(assert (= (and d!1389847 c!770375) b!4515630))

(assert (= (and d!1389847 (not c!770375)) b!4515638))

(assert (= (and b!4515638 c!770374) b!4515629))

(assert (= (and b!4515638 (not c!770374)) b!4515636))

(assert (= (and b!4515636 c!770376) b!4515631))

(assert (= (and b!4515636 (not c!770376)) b!4515634))

(assert (= (or b!4515631 b!4515634) bm!314474))

(assert (= (or b!4515629 bm!314474) bm!314473))

(assert (= (or b!4515630 bm!314473) bm!314475))

(assert (= (and bm!314475 c!770377) b!4515637))

(assert (= (and bm!314475 (not c!770377)) b!4515635))

(assert (= (and d!1389847 res!1878917) b!4515632))

(assert (= (and b!4515632 res!1878918) b!4515633))

(declare-fun m!5259423 () Bool)

(assert (=> b!4515633 m!5259423))

(declare-fun m!5259425 () Bool)

(assert (=> b!4515637 m!5259425))

(declare-fun m!5259427 () Bool)

(assert (=> b!4515632 m!5259427))

(declare-fun m!5259429 () Bool)

(assert (=> bm!314475 m!5259429))

(declare-fun m!5259431 () Bool)

(assert (=> d!1389847 m!5259431))

(assert (=> d!1389847 m!5258257))

(assert (=> d!1389375 d!1389847))

(declare-fun d!1389849 () Bool)

(declare-fun lt!1693569 () Bool)

(assert (=> d!1389849 (= lt!1693569 (select (content!8338 (toList!4316 lt!1693095)) lt!1692726))))

(declare-fun e!2813239 () Bool)

(assert (=> d!1389849 (= lt!1693569 e!2813239)))

(declare-fun res!1878919 () Bool)

(assert (=> d!1389849 (=> (not res!1878919) (not e!2813239))))

(assert (=> d!1389849 (= res!1878919 ((_ is Cons!50629) (toList!4316 lt!1693095)))))

(assert (=> d!1389849 (= (contains!13341 (toList!4316 lt!1693095) lt!1692726) lt!1693569)))

(declare-fun b!4515639 () Bool)

(declare-fun e!2813238 () Bool)

(assert (=> b!4515639 (= e!2813239 e!2813238)))

(declare-fun res!1878920 () Bool)

(assert (=> b!4515639 (=> res!1878920 e!2813238)))

(assert (=> b!4515639 (= res!1878920 (= (h!56476 (toList!4316 lt!1693095)) lt!1692726))))

(declare-fun b!4515640 () Bool)

(assert (=> b!4515640 (= e!2813238 (contains!13341 (t!357715 (toList!4316 lt!1693095)) lt!1692726))))

(assert (= (and d!1389849 res!1878919) b!4515639))

(assert (= (and b!4515639 (not res!1878920)) b!4515640))

(declare-fun m!5259441 () Bool)

(assert (=> d!1389849 m!5259441))

(declare-fun m!5259443 () Bool)

(assert (=> d!1389849 m!5259443))

(declare-fun m!5259445 () Bool)

(assert (=> b!4515640 m!5259445))

(assert (=> b!4514872 d!1389849))

(declare-fun d!1389853 () Bool)

(assert (=> d!1389853 (= (tail!7723 (toList!4316 lm!1477)) (t!357715 (toList!4316 lm!1477)))))

(assert (=> d!1389227 d!1389853))

(declare-fun b!4515641 () Bool)

(declare-fun e!2813245 () Bool)

(assert (=> b!4515641 (= e!2813245 (contains!13345 (keys!17582 lt!1693104) key!3287))))

(declare-fun d!1389855 () Bool)

(declare-fun e!2813240 () Bool)

(assert (=> d!1389855 e!2813240))

(declare-fun res!1878921 () Bool)

(assert (=> d!1389855 (=> res!1878921 e!2813240)))

(declare-fun e!2813243 () Bool)

(assert (=> d!1389855 (= res!1878921 e!2813243)))

(declare-fun res!1878922 () Bool)

(assert (=> d!1389855 (=> (not res!1878922) (not e!2813243))))

(declare-fun lt!1693570 () Bool)

(assert (=> d!1389855 (= res!1878922 (not lt!1693570))))

(declare-fun lt!1693577 () Bool)

(assert (=> d!1389855 (= lt!1693570 lt!1693577)))

(declare-fun lt!1693575 () Unit!94076)

(declare-fun e!2813242 () Unit!94076)

(assert (=> d!1389855 (= lt!1693575 e!2813242)))

(declare-fun c!770379 () Bool)

(assert (=> d!1389855 (= c!770379 lt!1693577)))

(assert (=> d!1389855 (= lt!1693577 (containsKey!1766 (toList!4315 lt!1693104) key!3287))))

(assert (=> d!1389855 (= (contains!13343 lt!1693104 key!3287) lt!1693570)))

(declare-fun b!4515642 () Bool)

(declare-fun e!2813241 () List!50755)

(assert (=> b!4515642 (= e!2813241 (keys!17582 lt!1693104))))

(declare-fun b!4515643 () Bool)

(assert (=> b!4515643 (= e!2813241 (getKeysList!459 (toList!4315 lt!1693104)))))

(declare-fun b!4515644 () Bool)

(declare-fun e!2813244 () Unit!94076)

(declare-fun Unit!94267 () Unit!94076)

(assert (=> b!4515644 (= e!2813244 Unit!94267)))

(declare-fun b!4515645 () Bool)

(declare-fun lt!1693571 () Unit!94076)

(assert (=> b!4515645 (= e!2813242 lt!1693571)))

(declare-fun lt!1693573 () Unit!94076)

(assert (=> b!4515645 (= lt!1693573 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1693104) key!3287))))

(assert (=> b!4515645 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693104) key!3287))))

(declare-fun lt!1693576 () Unit!94076)

(assert (=> b!4515645 (= lt!1693576 lt!1693573)))

(assert (=> b!4515645 (= lt!1693571 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1693104) key!3287))))

(declare-fun call!314481 () Bool)

(assert (=> b!4515645 call!314481))

(declare-fun b!4515646 () Bool)

(assert (=> b!4515646 (= e!2813243 (not (contains!13345 (keys!17582 lt!1693104) key!3287)))))

(declare-fun b!4515647 () Bool)

(assert (=> b!4515647 (= e!2813240 e!2813245)))

(declare-fun res!1878923 () Bool)

(assert (=> b!4515647 (=> (not res!1878923) (not e!2813245))))

(assert (=> b!4515647 (= res!1878923 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1693104) key!3287)))))

(declare-fun b!4515648 () Bool)

(assert (=> b!4515648 (= e!2813242 e!2813244)))

(declare-fun c!770380 () Bool)

(assert (=> b!4515648 (= c!770380 call!314481)))

(declare-fun b!4515649 () Bool)

(assert (=> b!4515649 false))

(declare-fun lt!1693574 () Unit!94076)

(declare-fun lt!1693572 () Unit!94076)

(assert (=> b!4515649 (= lt!1693574 lt!1693572)))

(assert (=> b!4515649 (containsKey!1766 (toList!4315 lt!1693104) key!3287)))

(assert (=> b!4515649 (= lt!1693572 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1693104) key!3287))))

(declare-fun Unit!94273 () Unit!94076)

(assert (=> b!4515649 (= e!2813244 Unit!94273)))

(declare-fun bm!314476 () Bool)

(assert (=> bm!314476 (= call!314481 (contains!13345 e!2813241 key!3287))))

(declare-fun c!770378 () Bool)

(assert (=> bm!314476 (= c!770378 c!770379)))

(assert (= (and d!1389855 c!770379) b!4515645))

(assert (= (and d!1389855 (not c!770379)) b!4515648))

(assert (= (and b!4515648 c!770380) b!4515649))

(assert (= (and b!4515648 (not c!770380)) b!4515644))

(assert (= (or b!4515645 b!4515648) bm!314476))

(assert (= (and bm!314476 c!770378) b!4515643))

(assert (= (and bm!314476 (not c!770378)) b!4515642))

(assert (= (and d!1389855 res!1878922) b!4515646))

(assert (= (and d!1389855 (not res!1878921)) b!4515647))

(assert (= (and b!4515647 res!1878923) b!4515641))

(declare-fun m!5259447 () Bool)

(assert (=> bm!314476 m!5259447))

(assert (=> b!4515642 m!5258009))

(assert (=> b!4515641 m!5258009))

(assert (=> b!4515641 m!5258009))

(declare-fun m!5259449 () Bool)

(assert (=> b!4515641 m!5259449))

(declare-fun m!5259451 () Bool)

(assert (=> d!1389855 m!5259451))

(declare-fun m!5259453 () Bool)

(assert (=> b!4515645 m!5259453))

(declare-fun m!5259455 () Bool)

(assert (=> b!4515645 m!5259455))

(assert (=> b!4515645 m!5259455))

(declare-fun m!5259457 () Bool)

(assert (=> b!4515645 m!5259457))

(declare-fun m!5259459 () Bool)

(assert (=> b!4515645 m!5259459))

(assert (=> b!4515649 m!5259451))

(declare-fun m!5259461 () Bool)

(assert (=> b!4515649 m!5259461))

(assert (=> b!4515643 m!5259037))

(assert (=> b!4515646 m!5258009))

(assert (=> b!4515646 m!5258009))

(assert (=> b!4515646 m!5259449))

(assert (=> b!4515647 m!5259455))

(assert (=> b!4515647 m!5259455))

(assert (=> b!4515647 m!5259457))

(assert (=> d!1389377 d!1389855))

(declare-fun b!4515742 () Bool)

(declare-fun res!1878956 () Bool)

(declare-fun e!2813300 () Bool)

(assert (=> b!4515742 (=> (not res!1878956) (not e!2813300))))

(declare-fun lt!1693682 () List!50752)

(assert (=> b!4515742 (= res!1878956 (not (containsKey!1766 lt!1693682 key!3287)))))

(declare-fun b!4515743 () Bool)

(declare-fun e!2813308 () Unit!94076)

(declare-fun Unit!94275 () Unit!94076)

(assert (=> b!4515743 (= e!2813308 Unit!94275)))

(declare-fun b!4515744 () Bool)

(declare-fun call!314505 () (InoxSet tuple2!51050))

(declare-fun call!314503 () (InoxSet tuple2!51050))

(declare-fun get!16574 (Option!11101) V!12271)

(assert (=> b!4515744 (= call!314503 ((_ map and) call!314505 ((_ map not) (store ((as const (Array tuple2!51050 Bool)) false) (tuple2!51051 key!3287 (get!16574 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))) true))))))

(declare-fun lt!1693670 () Unit!94076)

(assert (=> b!4515744 (= lt!1693670 e!2813308)))

(declare-fun c!770417 () Bool)

(assert (=> b!4515744 (= c!770417 (contains!13347 (t!357714 (toList!4315 lt!1692728)) (tuple2!51051 key!3287 (get!16574 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287)))))))

(declare-fun e!2813307 () Unit!94076)

(declare-fun Unit!94276 () Unit!94076)

(assert (=> b!4515744 (= e!2813307 Unit!94276)))

(declare-fun d!1389857 () Bool)

(assert (=> d!1389857 e!2813300))

(declare-fun res!1878955 () Bool)

(assert (=> d!1389857 (=> (not res!1878955) (not e!2813300))))

(assert (=> d!1389857 (= res!1878955 (invariantList!1011 lt!1693682))))

(declare-fun e!2813304 () List!50752)

(assert (=> d!1389857 (= lt!1693682 e!2813304)))

(declare-fun c!770415 () Bool)

(assert (=> d!1389857 (= c!770415 (and ((_ is Cons!50628) (toList!4315 lt!1692728)) (= (_1!28819 (h!56475 (toList!4315 lt!1692728))) key!3287)))))

(assert (=> d!1389857 (invariantList!1011 (toList!4315 lt!1692728))))

(assert (=> d!1389857 (= (removePresrvNoDuplicatedKeys!135 (toList!4315 lt!1692728) key!3287) lt!1693682)))

(declare-fun b!4515745 () Bool)

(declare-fun e!2813305 () Unit!94076)

(declare-fun Unit!94277 () Unit!94076)

(assert (=> b!4515745 (= e!2813305 Unit!94277)))

(declare-fun lt!1693679 () List!50752)

(assert (=> b!4515745 (= lt!1693679 (removePresrvNoDuplicatedKeys!135 (t!357714 (toList!4315 lt!1692728)) key!3287))))

(declare-fun lt!1693678 () Unit!94076)

(assert (=> b!4515745 (= lt!1693678 (lemmaInListThenGetKeysListContains!455 lt!1693679 (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(assert (=> b!4515745 (contains!13345 (getKeysList!459 lt!1693679) (_1!28819 (h!56475 (toList!4315 lt!1692728))))))

(declare-fun lt!1693676 () Unit!94076)

(assert (=> b!4515745 (= lt!1693676 lt!1693678)))

(assert (=> b!4515745 false))

(declare-fun b!4515746 () Bool)

(declare-fun e!2813303 () List!50752)

(assert (=> b!4515746 (= e!2813303 (t!357714 (toList!4315 lt!1692728)))))

(declare-fun b!4515747 () Bool)

(declare-fun e!2813301 () Unit!94076)

(declare-fun Unit!94278 () Unit!94076)

(assert (=> b!4515747 (= e!2813301 Unit!94278)))

(declare-fun b!4515748 () Bool)

(declare-fun e!2813302 () Bool)

(assert (=> b!4515748 (= e!2813300 e!2813302)))

(declare-fun c!770418 () Bool)

(assert (=> b!4515748 (= c!770418 (containsKey!1766 (toList!4315 lt!1692728) key!3287))))

(declare-fun b!4515749 () Bool)

(assert (=> b!4515749 (= e!2813303 (removePresrvNoDuplicatedKeys!135 (t!357714 (toList!4315 lt!1692728)) key!3287))))

(declare-fun bm!314498 () Bool)

(declare-fun call!314504 () (InoxSet tuple2!51050))

(assert (=> bm!314498 (= call!314504 (content!8339 lt!1693682))))

(declare-fun b!4515750 () Bool)

(declare-fun res!1878954 () Bool)

(assert (=> b!4515750 (=> (not res!1878954) (not e!2813300))))

(assert (=> b!4515750 (= res!1878954 (= (content!8341 (getKeysList!459 lt!1693682)) ((_ map and) (content!8341 (getKeysList!459 (toList!4315 lt!1692728))) ((_ map not) (store ((as const (Array K!12025 Bool)) false) key!3287 true)))))))

(declare-fun b!4515751 () Bool)

(assert (=> b!4515751 (= e!2813304 (t!357714 (toList!4315 lt!1692728)))))

(declare-fun c!770414 () Bool)

(declare-fun call!314506 () Bool)

(assert (=> b!4515751 (= c!770414 call!314506)))

(declare-fun lt!1693684 () Unit!94076)

(assert (=> b!4515751 (= lt!1693684 e!2813307)))

(declare-fun b!4515752 () Bool)

(declare-fun Unit!94279 () Unit!94076)

(assert (=> b!4515752 (= e!2813301 Unit!94279)))

(declare-fun lt!1693683 () Unit!94076)

(assert (=> b!4515752 (= lt!1693683 (lemmaInGetKeysListThenContainsKey!458 (t!357714 (toList!4315 lt!1692728)) (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(assert (=> b!4515752 call!314506))

(declare-fun lt!1693674 () Unit!94076)

(assert (=> b!4515752 (= lt!1693674 lt!1693683)))

(assert (=> b!4515752 false))

(declare-fun bm!314499 () Bool)

(assert (=> bm!314499 (= call!314503 (content!8339 (t!357714 (toList!4315 lt!1692728))))))

(declare-fun b!4515753 () Bool)

(assert (=> b!4515753 (= call!314503 call!314505)))

(declare-fun Unit!94280 () Unit!94076)

(assert (=> b!4515753 (= e!2813307 Unit!94280)))

(declare-fun b!4515754 () Bool)

(declare-fun e!2813306 () List!50752)

(assert (=> b!4515754 (= e!2813304 e!2813306)))

(declare-fun c!770413 () Bool)

(assert (=> b!4515754 (= c!770413 (and ((_ is Cons!50628) (toList!4315 lt!1692728)) (not (= (_1!28819 (h!56475 (toList!4315 lt!1692728))) key!3287))))))

(declare-fun b!4515755 () Bool)

(declare-fun Unit!94281 () Unit!94076)

(assert (=> b!4515755 (= e!2813305 Unit!94281)))

(declare-fun b!4515756 () Bool)

(declare-fun call!314508 () (InoxSet tuple2!51050))

(assert (=> b!4515756 (= e!2813302 (= call!314504 call!314508))))

(declare-fun bm!314500 () Bool)

(assert (=> bm!314500 (= call!314505 (content!8339 (toList!4315 lt!1692728)))))

(declare-fun b!4515757 () Bool)

(declare-fun Unit!94282 () Unit!94076)

(assert (=> b!4515757 (= e!2813308 Unit!94282)))

(declare-fun lt!1693681 () V!12271)

(assert (=> b!4515757 (= lt!1693681 (get!16574 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287)))))

(declare-fun lt!1693675 () K!12025)

(assert (=> b!4515757 (= lt!1693675 key!3287)))

(declare-fun lt!1693685 () K!12025)

(assert (=> b!4515757 (= lt!1693685 key!3287)))

(declare-fun lt!1693673 () Unit!94076)

(declare-fun lemmaContainsTupleThenContainsKey!56 (List!50752 K!12025 V!12271) Unit!94076)

(assert (=> b!4515757 (= lt!1693673 (lemmaContainsTupleThenContainsKey!56 (t!357714 (toList!4315 lt!1692728)) lt!1693675 (get!16574 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))))))

(declare-fun call!314507 () Bool)

(assert (=> b!4515757 call!314507))

(declare-fun lt!1693686 () Unit!94076)

(assert (=> b!4515757 (= lt!1693686 lt!1693673)))

(assert (=> b!4515757 false))

(declare-fun b!4515758 () Bool)

(declare-fun lt!1693672 () Unit!94076)

(assert (=> b!4515758 (= lt!1693672 e!2813305)))

(declare-fun c!770412 () Bool)

(assert (=> b!4515758 (= c!770412 call!314507)))

(declare-fun lt!1693671 () Unit!94076)

(assert (=> b!4515758 (= lt!1693671 e!2813301)))

(declare-fun c!770416 () Bool)

(assert (=> b!4515758 (= c!770416 (contains!13345 (getKeysList!459 (t!357714 (toList!4315 lt!1692728))) (_1!28819 (h!56475 (toList!4315 lt!1692728)))))))

(declare-fun lt!1693677 () List!50752)

(declare-fun $colon$colon!925 (List!50752 tuple2!51050) List!50752)

(assert (=> b!4515758 (= lt!1693677 ($colon$colon!925 (removePresrvNoDuplicatedKeys!135 (t!357714 (toList!4315 lt!1692728)) key!3287) (h!56475 (toList!4315 lt!1692728))))))

(assert (=> b!4515758 (= e!2813306 lt!1693677)))

(declare-fun b!4515759 () Bool)

(assert (=> b!4515759 (= e!2813302 (= call!314504 ((_ map and) call!314508 ((_ map not) (store ((as const (Array tuple2!51050 Bool)) false) (tuple2!51051 key!3287 (get!16574 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))) true)))))))

(assert (=> b!4515759 (containsKey!1766 (toList!4315 lt!1692728) key!3287)))

(declare-fun lt!1693680 () Unit!94076)

(assert (=> b!4515759 (= lt!1693680 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692728) key!3287))))

(assert (=> b!4515759 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))))

(declare-fun lt!1693669 () Unit!94076)

(assert (=> b!4515759 (= lt!1693669 lt!1693680)))

(declare-fun b!4515760 () Bool)

(assert (=> b!4515760 (= e!2813306 Nil!50628)))

(declare-fun bm!314501 () Bool)

(assert (=> bm!314501 (= call!314506 (containsKey!1766 (ite c!770415 (toList!4315 lt!1692728) (t!357714 (toList!4315 lt!1692728))) (ite c!770415 key!3287 (_1!28819 (h!56475 (toList!4315 lt!1692728))))))))

(declare-fun bm!314502 () Bool)

(assert (=> bm!314502 (= call!314507 (containsKey!1766 e!2813303 (ite c!770415 lt!1693675 (_1!28819 (h!56475 (toList!4315 lt!1692728))))))))

(declare-fun c!770419 () Bool)

(assert (=> bm!314502 (= c!770419 c!770415)))

(declare-fun bm!314503 () Bool)

(assert (=> bm!314503 (= call!314508 (content!8339 (toList!4315 lt!1692728)))))

(assert (= (and d!1389857 c!770415) b!4515751))

(assert (= (and d!1389857 (not c!770415)) b!4515754))

(assert (= (and b!4515751 c!770414) b!4515744))

(assert (= (and b!4515751 (not c!770414)) b!4515753))

(assert (= (and b!4515744 c!770417) b!4515757))

(assert (= (and b!4515744 (not c!770417)) b!4515743))

(assert (= (or b!4515744 b!4515753) bm!314499))

(assert (= (or b!4515744 b!4515753) bm!314500))

(assert (= (and b!4515754 c!770413) b!4515758))

(assert (= (and b!4515754 (not c!770413)) b!4515760))

(assert (= (and b!4515758 c!770416) b!4515752))

(assert (= (and b!4515758 (not c!770416)) b!4515747))

(assert (= (and b!4515758 c!770412) b!4515745))

(assert (= (and b!4515758 (not c!770412)) b!4515755))

(assert (= (or b!4515751 b!4515752) bm!314501))

(assert (= (or b!4515757 b!4515758) bm!314502))

(assert (= (and bm!314502 c!770419) b!4515746))

(assert (= (and bm!314502 (not c!770419)) b!4515749))

(assert (= (and d!1389857 res!1878955) b!4515742))

(assert (= (and b!4515742 res!1878956) b!4515750))

(assert (= (and b!4515750 res!1878954) b!4515748))

(assert (= (and b!4515748 c!770418) b!4515759))

(assert (= (and b!4515748 (not c!770418)) b!4515756))

(assert (= (or b!4515759 b!4515756) bm!314498))

(assert (= (or b!4515759 b!4515756) bm!314503))

(assert (=> b!4515744 m!5257945))

(assert (=> b!4515744 m!5257945))

(declare-fun m!5259637 () Bool)

(assert (=> b!4515744 m!5259637))

(declare-fun m!5259639 () Bool)

(assert (=> b!4515744 m!5259639))

(declare-fun m!5259641 () Bool)

(assert (=> b!4515744 m!5259641))

(declare-fun m!5259645 () Bool)

(assert (=> b!4515750 m!5259645))

(assert (=> b!4515750 m!5257953))

(assert (=> b!4515750 m!5259645))

(declare-fun m!5259649 () Bool)

(assert (=> b!4515750 m!5259649))

(assert (=> b!4515750 m!5257953))

(declare-fun m!5259651 () Bool)

(assert (=> b!4515750 m!5259651))

(assert (=> b!4515750 m!5258011))

(assert (=> b!4515748 m!5257941))

(declare-fun m!5259653 () Bool)

(assert (=> bm!314500 m!5259653))

(declare-fun m!5259655 () Bool)

(assert (=> b!4515745 m!5259655))

(declare-fun m!5259657 () Bool)

(assert (=> b!4515745 m!5259657))

(declare-fun m!5259661 () Bool)

(assert (=> b!4515745 m!5259661))

(assert (=> b!4515745 m!5259661))

(declare-fun m!5259665 () Bool)

(assert (=> b!4515745 m!5259665))

(declare-fun m!5259667 () Bool)

(assert (=> d!1389857 m!5259667))

(assert (=> d!1389857 m!5258621))

(declare-fun m!5259669 () Bool)

(assert (=> bm!314498 m!5259669))

(assert (=> b!4515758 m!5258623))

(assert (=> b!4515758 m!5258623))

(assert (=> b!4515758 m!5258625))

(assert (=> b!4515758 m!5259655))

(assert (=> b!4515758 m!5259655))

(declare-fun m!5259671 () Bool)

(assert (=> b!4515758 m!5259671))

(assert (=> bm!314503 m!5259653))

(declare-fun m!5259675 () Bool)

(assert (=> bm!314502 m!5259675))

(declare-fun m!5259677 () Bool)

(assert (=> b!4515742 m!5259677))

(assert (=> b!4515759 m!5257941))

(assert (=> b!4515759 m!5257945))

(assert (=> b!4515759 m!5257945))

(assert (=> b!4515759 m!5259637))

(assert (=> b!4515759 m!5259639))

(assert (=> b!4515759 m!5257945))

(assert (=> b!4515759 m!5257947))

(assert (=> b!4515759 m!5257943))

(declare-fun m!5259683 () Bool)

(assert (=> b!4515752 m!5259683))

(assert (=> b!4515749 m!5259655))

(assert (=> b!4515757 m!5257945))

(assert (=> b!4515757 m!5257945))

(assert (=> b!4515757 m!5259637))

(assert (=> b!4515757 m!5259637))

(declare-fun m!5259685 () Bool)

(assert (=> b!4515757 m!5259685))

(declare-fun m!5259687 () Bool)

(assert (=> bm!314501 m!5259687))

(declare-fun m!5259689 () Bool)

(assert (=> bm!314499 m!5259689))

(assert (=> d!1389377 d!1389857))

(declare-fun d!1389915 () Bool)

(declare-fun choose!29440 (Hashable!5549 K!12025) (_ BitVec 64))

(assert (=> d!1389915 (= (hash!2787 hashF!1107 key!3287) (choose!29440 hashF!1107 key!3287))))

(declare-fun bs!850713 () Bool)

(assert (= bs!850713 d!1389915))

(declare-fun m!5259695 () Bool)

(assert (=> bs!850713 m!5259695))

(assert (=> d!1389335 d!1389915))

(declare-fun d!1389921 () Bool)

(assert (=> d!1389921 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692728) key!3287))))

(declare-fun lt!1693690 () Unit!94076)

(assert (=> d!1389921 (= lt!1693690 (choose!29427 (toList!4315 lt!1692728) key!3287))))

(assert (=> d!1389921 (invariantList!1011 (toList!4315 lt!1692728))))

(assert (=> d!1389921 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692728) key!3287) lt!1693690)))

(declare-fun bs!850714 () Bool)

(assert (= bs!850714 d!1389921))

(assert (=> bs!850714 m!5257945))

(assert (=> bs!850714 m!5257945))

(assert (=> bs!850714 m!5257947))

(declare-fun m!5259701 () Bool)

(assert (=> bs!850714 m!5259701))

(assert (=> bs!850714 m!5258621))

(assert (=> b!4514858 d!1389921))

(assert (=> b!4514858 d!1389537))

(assert (=> b!4514858 d!1389539))

(declare-fun d!1389925 () Bool)

(assert (=> d!1389925 (contains!13345 (getKeysList!459 (toList!4315 lt!1692728)) key!3287)))

(declare-fun lt!1693691 () Unit!94076)

(assert (=> d!1389925 (= lt!1693691 (choose!29428 (toList!4315 lt!1692728) key!3287))))

(assert (=> d!1389925 (invariantList!1011 (toList!4315 lt!1692728))))

(assert (=> d!1389925 (= (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692728) key!3287) lt!1693691)))

(declare-fun bs!850715 () Bool)

(assert (= bs!850715 d!1389925))

(assert (=> bs!850715 m!5257953))

(assert (=> bs!850715 m!5257953))

(declare-fun m!5259707 () Bool)

(assert (=> bs!850715 m!5259707))

(declare-fun m!5259709 () Bool)

(assert (=> bs!850715 m!5259709))

(assert (=> bs!850715 m!5258621))

(assert (=> b!4514858 d!1389925))

(assert (=> b!4514918 d!1389565))

(assert (=> b!4514918 d!1389567))

(declare-fun d!1389929 () Bool)

(declare-fun res!1878964 () Bool)

(declare-fun e!2813321 () Bool)

(assert (=> d!1389929 (=> res!1878964 e!2813321)))

(assert (=> d!1389929 (= res!1878964 (not ((_ is Cons!50628) (_2!28820 lt!1692740))))))

(assert (=> d!1389929 (= (noDuplicateKeys!1154 (_2!28820 lt!1692740)) e!2813321)))

(declare-fun b!4515778 () Bool)

(declare-fun e!2813322 () Bool)

(assert (=> b!4515778 (= e!2813321 e!2813322)))

(declare-fun res!1878965 () Bool)

(assert (=> b!4515778 (=> (not res!1878965) (not e!2813322))))

(assert (=> b!4515778 (= res!1878965 (not (containsKey!1762 (t!357714 (_2!28820 lt!1692740)) (_1!28819 (h!56475 (_2!28820 lt!1692740))))))))

(declare-fun b!4515779 () Bool)

(assert (=> b!4515779 (= e!2813322 (noDuplicateKeys!1154 (t!357714 (_2!28820 lt!1692740))))))

(assert (= (and d!1389929 (not res!1878964)) b!4515778))

(assert (= (and b!4515778 res!1878965) b!4515779))

(declare-fun m!5259715 () Bool)

(assert (=> b!4515778 m!5259715))

(declare-fun m!5259717 () Bool)

(assert (=> b!4515779 m!5259717))

(assert (=> bs!849982 d!1389929))

(declare-fun d!1389931 () Bool)

(declare-fun res!1878966 () Bool)

(declare-fun e!2813323 () Bool)

(assert (=> d!1389931 (=> res!1878966 e!2813323)))

(assert (=> d!1389931 (= res!1878966 (and ((_ is Cons!50628) (t!357714 newBucket!178)) (= (_1!28819 (h!56475 (t!357714 newBucket!178))) (_1!28819 (h!56475 newBucket!178)))))))

(assert (=> d!1389931 (= (containsKey!1762 (t!357714 newBucket!178) (_1!28819 (h!56475 newBucket!178))) e!2813323)))

(declare-fun b!4515780 () Bool)

(declare-fun e!2813324 () Bool)

(assert (=> b!4515780 (= e!2813323 e!2813324)))

(declare-fun res!1878967 () Bool)

(assert (=> b!4515780 (=> (not res!1878967) (not e!2813324))))

(assert (=> b!4515780 (= res!1878967 ((_ is Cons!50628) (t!357714 newBucket!178)))))

(declare-fun b!4515781 () Bool)

(assert (=> b!4515781 (= e!2813324 (containsKey!1762 (t!357714 (t!357714 newBucket!178)) (_1!28819 (h!56475 newBucket!178))))))

(assert (= (and d!1389931 (not res!1878966)) b!4515780))

(assert (= (and b!4515780 res!1878967) b!4515781))

(declare-fun m!5259721 () Bool)

(assert (=> b!4515781 m!5259721))

(assert (=> b!4514598 d!1389931))

(declare-fun bs!850716 () Bool)

(declare-fun b!4515789 () Bool)

(assert (= bs!850716 (and b!4515789 b!4514749)))

(declare-fun lambda!171660 () Int)

(assert (=> bs!850716 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692939) (= lambda!171660 lambda!171465))))

(declare-fun bs!850717 () Bool)

(assert (= bs!850717 (and b!4515789 b!4515446)))

(assert (=> bs!850717 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171660 lambda!171627))))

(declare-fun bs!850718 () Bool)

(assert (= bs!850718 (and b!4515789 b!4515255)))

(assert (=> bs!850718 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693368) (= lambda!171660 lambda!171600))))

(declare-fun bs!850719 () Bool)

(assert (= bs!850719 (and b!4515789 b!4515553)))

(assert (=> bs!850719 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171660 lambda!171638))))

(declare-fun bs!850720 () Bool)

(assert (= bs!850720 (and b!4515789 d!1389715)))

(assert (=> bs!850720 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693479) (= lambda!171660 lambda!171631))))

(declare-fun bs!850721 () Bool)

(assert (= bs!850721 (and b!4515789 d!1389607)))

(assert (=> bs!850721 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693147) (= lambda!171660 lambda!171612))))

(declare-fun bs!850723 () Bool)

(assert (= bs!850723 (and b!4515789 b!4515552)))

(assert (=> bs!850723 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693536) (= lambda!171660 lambda!171642))))

(declare-fun bs!850724 () Bool)

(assert (= bs!850724 (and b!4515789 b!4514932)))

(assert (=> bs!850724 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692722) (= lambda!171660 lambda!171538))))

(declare-fun bs!850726 () Bool)

(assert (= bs!850726 (and b!4515789 b!4515052)))

(assert (=> bs!850726 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693223) (= lambda!171660 lambda!171559))))

(declare-fun bs!850728 () Bool)

(assert (= bs!850728 (and b!4515789 d!1389775)))

(assert (=> bs!850728 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693534) (= lambda!171660 lambda!171643))))

(declare-fun bs!850729 () Bool)

(assert (= bs!850729 (and b!4515789 b!4515445)))

(assert (=> bs!850729 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171660 lambda!171629))))

(assert (=> bs!850716 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171660 lambda!171464))))

(assert (=> bs!850726 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171660 lambda!171558))))

(declare-fun bs!850733 () Bool)

(assert (= bs!850733 (and b!4515789 d!1389235)))

(assert (=> bs!850733 (not (= lambda!171660 lambda!171416))))

(declare-fun bs!850735 () Bool)

(assert (= bs!850735 (and b!4515789 d!1389427)))

(assert (=> bs!850735 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693145) (= lambda!171660 lambda!171540))))

(assert (=> bs!850724 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693147) (= lambda!171660 lambda!171539))))

(assert (=> bs!850718 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171660 lambda!171599))))

(declare-fun bs!850738 () Bool)

(assert (= bs!850738 (and b!4515789 b!4514933)))

(assert (=> bs!850738 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692722) (= lambda!171660 lambda!171537))))

(declare-fun bs!850740 () Bool)

(assert (= bs!850740 (and b!4515789 d!1389769)))

(assert (=> bs!850740 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171660 lambda!171635))))

(declare-fun bs!850742 () Bool)

(assert (= bs!850742 (and b!4515789 b!4515256)))

(assert (=> bs!850742 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171660 lambda!171598))))

(declare-fun bs!850744 () Bool)

(assert (= bs!850744 (and b!4515789 d!1389279)))

(assert (=> bs!850744 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692937) (= lambda!171660 lambda!171466))))

(declare-fun bs!850746 () Bool)

(assert (= bs!850746 (and b!4515789 b!4515053)))

(assert (=> bs!850746 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171660 lambda!171557))))

(assert (=> bs!850723 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171660 lambda!171641))))

(declare-fun bs!850749 () Bool)

(assert (= bs!850749 (and b!4515789 d!1389469)))

(assert (=> bs!850749 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693221) (= lambda!171660 lambda!171560))))

(assert (=> bs!850729 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693481) (= lambda!171660 lambda!171630))))

(declare-fun bs!850752 () Bool)

(assert (= bs!850752 (and b!4515789 d!1389575)))

(assert (=> bs!850752 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693366) (= lambda!171660 lambda!171601))))

(declare-fun bs!850754 () Bool)

(assert (= bs!850754 (and b!4515789 b!4514750)))

(assert (=> bs!850754 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171660 lambda!171463))))

(assert (=> b!4515789 true))

(declare-fun bs!850760 () Bool)

(declare-fun b!4515788 () Bool)

(assert (= bs!850760 (and b!4515788 b!4514749)))

(declare-fun lambda!171662 () Int)

(assert (=> bs!850760 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692939) (= lambda!171662 lambda!171465))))

(declare-fun bs!850761 () Bool)

(assert (= bs!850761 (and b!4515788 b!4515446)))

(assert (=> bs!850761 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171662 lambda!171627))))

(declare-fun bs!850763 () Bool)

(assert (= bs!850763 (and b!4515788 b!4515255)))

(assert (=> bs!850763 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693368) (= lambda!171662 lambda!171600))))

(declare-fun bs!850764 () Bool)

(assert (= bs!850764 (and b!4515788 b!4515553)))

(assert (=> bs!850764 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171662 lambda!171638))))

(declare-fun bs!850765 () Bool)

(assert (= bs!850765 (and b!4515788 d!1389715)))

(assert (=> bs!850765 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693479) (= lambda!171662 lambda!171631))))

(declare-fun bs!850766 () Bool)

(assert (= bs!850766 (and b!4515788 d!1389607)))

(assert (=> bs!850766 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693147) (= lambda!171662 lambda!171612))))

(declare-fun bs!850767 () Bool)

(assert (= bs!850767 (and b!4515788 b!4515552)))

(assert (=> bs!850767 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693536) (= lambda!171662 lambda!171642))))

(declare-fun bs!850768 () Bool)

(assert (= bs!850768 (and b!4515788 b!4514932)))

(assert (=> bs!850768 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692722) (= lambda!171662 lambda!171538))))

(declare-fun bs!850769 () Bool)

(assert (= bs!850769 (and b!4515788 b!4515052)))

(assert (=> bs!850769 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693223) (= lambda!171662 lambda!171559))))

(declare-fun bs!850770 () Bool)

(assert (= bs!850770 (and b!4515788 d!1389775)))

(assert (=> bs!850770 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693534) (= lambda!171662 lambda!171643))))

(declare-fun bs!850771 () Bool)

(assert (= bs!850771 (and b!4515788 b!4515445)))

(assert (=> bs!850771 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171662 lambda!171629))))

(assert (=> bs!850760 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171662 lambda!171464))))

(assert (=> bs!850769 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171662 lambda!171558))))

(declare-fun bs!850773 () Bool)

(assert (= bs!850773 (and b!4515788 d!1389235)))

(assert (=> bs!850773 (not (= lambda!171662 lambda!171416))))

(declare-fun bs!850774 () Bool)

(assert (= bs!850774 (and b!4515788 d!1389427)))

(assert (=> bs!850774 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693145) (= lambda!171662 lambda!171540))))

(assert (=> bs!850768 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693147) (= lambda!171662 lambda!171539))))

(assert (=> bs!850763 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171662 lambda!171599))))

(declare-fun bs!850775 () Bool)

(assert (= bs!850775 (and b!4515788 b!4515789)))

(assert (=> bs!850775 (= lambda!171662 lambda!171660)))

(declare-fun bs!850776 () Bool)

(assert (= bs!850776 (and b!4515788 b!4514933)))

(assert (=> bs!850776 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692722) (= lambda!171662 lambda!171537))))

(declare-fun bs!850777 () Bool)

(assert (= bs!850777 (and b!4515788 d!1389769)))

(assert (=> bs!850777 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171662 lambda!171635))))

(declare-fun bs!850778 () Bool)

(assert (= bs!850778 (and b!4515788 b!4515256)))

(assert (=> bs!850778 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171662 lambda!171598))))

(declare-fun bs!850779 () Bool)

(assert (= bs!850779 (and b!4515788 d!1389279)))

(assert (=> bs!850779 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692937) (= lambda!171662 lambda!171466))))

(declare-fun bs!850781 () Bool)

(assert (= bs!850781 (and b!4515788 b!4515053)))

(assert (=> bs!850781 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171662 lambda!171557))))

(assert (=> bs!850767 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171662 lambda!171641))))

(declare-fun bs!850783 () Bool)

(assert (= bs!850783 (and b!4515788 d!1389469)))

(assert (=> bs!850783 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693221) (= lambda!171662 lambda!171560))))

(assert (=> bs!850771 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693481) (= lambda!171662 lambda!171630))))

(declare-fun bs!850786 () Bool)

(assert (= bs!850786 (and b!4515788 d!1389575)))

(assert (=> bs!850786 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693366) (= lambda!171662 lambda!171601))))

(declare-fun bs!850788 () Bool)

(assert (= bs!850788 (and b!4515788 b!4514750)))

(assert (=> bs!850788 (= (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1692734) (= lambda!171662 lambda!171463))))

(assert (=> b!4515788 true))

(declare-fun lt!1693706 () ListMap!3577)

(declare-fun lambda!171664 () Int)

(assert (=> bs!850760 (= (= lt!1693706 lt!1692939) (= lambda!171664 lambda!171465))))

(assert (=> bs!850761 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171664 lambda!171627))))

(assert (=> bs!850763 (= (= lt!1693706 lt!1693368) (= lambda!171664 lambda!171600))))

(assert (=> bs!850764 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171664 lambda!171638))))

(assert (=> bs!850765 (= (= lt!1693706 lt!1693479) (= lambda!171664 lambda!171631))))

(assert (=> bs!850766 (= (= lt!1693706 lt!1693147) (= lambda!171664 lambda!171612))))

(assert (=> bs!850767 (= (= lt!1693706 lt!1693536) (= lambda!171664 lambda!171642))))

(assert (=> bs!850768 (= (= lt!1693706 lt!1692722) (= lambda!171664 lambda!171538))))

(assert (=> bs!850769 (= (= lt!1693706 lt!1693223) (= lambda!171664 lambda!171559))))

(assert (=> bs!850770 (= (= lt!1693706 lt!1693534) (= lambda!171664 lambda!171643))))

(assert (=> b!4515788 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171664 lambda!171662))))

(assert (=> bs!850771 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171664 lambda!171629))))

(assert (=> bs!850760 (= (= lt!1693706 lt!1692734) (= lambda!171664 lambda!171464))))

(assert (=> bs!850769 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171664 lambda!171558))))

(assert (=> bs!850773 (not (= lambda!171664 lambda!171416))))

(assert (=> bs!850774 (= (= lt!1693706 lt!1693145) (= lambda!171664 lambda!171540))))

(assert (=> bs!850768 (= (= lt!1693706 lt!1693147) (= lambda!171664 lambda!171539))))

(assert (=> bs!850763 (= (= lt!1693706 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171664 lambda!171599))))

(assert (=> bs!850775 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171664 lambda!171660))))

(assert (=> bs!850776 (= (= lt!1693706 lt!1692722) (= lambda!171664 lambda!171537))))

(assert (=> bs!850777 (= (= lt!1693706 lt!1692734) (= lambda!171664 lambda!171635))))

(assert (=> bs!850778 (= (= lt!1693706 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171664 lambda!171598))))

(assert (=> bs!850779 (= (= lt!1693706 lt!1692937) (= lambda!171664 lambda!171466))))

(assert (=> bs!850781 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171664 lambda!171557))))

(assert (=> bs!850767 (= (= lt!1693706 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171664 lambda!171641))))

(assert (=> bs!850783 (= (= lt!1693706 lt!1693221) (= lambda!171664 lambda!171560))))

(assert (=> bs!850771 (= (= lt!1693706 lt!1693481) (= lambda!171664 lambda!171630))))

(assert (=> bs!850786 (= (= lt!1693706 lt!1693366) (= lambda!171664 lambda!171601))))

(assert (=> bs!850788 (= (= lt!1693706 lt!1692734) (= lambda!171664 lambda!171463))))

(assert (=> b!4515788 true))

(declare-fun bs!850822 () Bool)

(declare-fun d!1389935 () Bool)

(assert (= bs!850822 (and d!1389935 b!4514749)))

(declare-fun lambda!171666 () Int)

(declare-fun lt!1693704 () ListMap!3577)

(assert (=> bs!850822 (= (= lt!1693704 lt!1692939) (= lambda!171666 lambda!171465))))

(declare-fun bs!850824 () Bool)

(assert (= bs!850824 (and d!1389935 b!4515446)))

(assert (=> bs!850824 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171666 lambda!171627))))

(declare-fun bs!850826 () Bool)

(assert (= bs!850826 (and d!1389935 b!4515255)))

(assert (=> bs!850826 (= (= lt!1693704 lt!1693368) (= lambda!171666 lambda!171600))))

(declare-fun bs!850828 () Bool)

(assert (= bs!850828 (and d!1389935 b!4515553)))

(assert (=> bs!850828 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171666 lambda!171638))))

(declare-fun bs!850830 () Bool)

(assert (= bs!850830 (and d!1389935 d!1389715)))

(assert (=> bs!850830 (= (= lt!1693704 lt!1693479) (= lambda!171666 lambda!171631))))

(declare-fun bs!850832 () Bool)

(assert (= bs!850832 (and d!1389935 b!4515788)))

(assert (=> bs!850832 (= (= lt!1693704 lt!1693706) (= lambda!171666 lambda!171664))))

(declare-fun bs!850834 () Bool)

(assert (= bs!850834 (and d!1389935 d!1389607)))

(assert (=> bs!850834 (= (= lt!1693704 lt!1693147) (= lambda!171666 lambda!171612))))

(declare-fun bs!850835 () Bool)

(assert (= bs!850835 (and d!1389935 b!4515552)))

(assert (=> bs!850835 (= (= lt!1693704 lt!1693536) (= lambda!171666 lambda!171642))))

(declare-fun bs!850837 () Bool)

(assert (= bs!850837 (and d!1389935 b!4514932)))

(assert (=> bs!850837 (= (= lt!1693704 lt!1692722) (= lambda!171666 lambda!171538))))

(declare-fun bs!850838 () Bool)

(assert (= bs!850838 (and d!1389935 b!4515052)))

(assert (=> bs!850838 (= (= lt!1693704 lt!1693223) (= lambda!171666 lambda!171559))))

(declare-fun bs!850840 () Bool)

(assert (= bs!850840 (and d!1389935 d!1389775)))

(assert (=> bs!850840 (= (= lt!1693704 lt!1693534) (= lambda!171666 lambda!171643))))

(assert (=> bs!850832 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171666 lambda!171662))))

(declare-fun bs!850843 () Bool)

(assert (= bs!850843 (and d!1389935 b!4515445)))

(assert (=> bs!850843 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171666 lambda!171629))))

(assert (=> bs!850822 (= (= lt!1693704 lt!1692734) (= lambda!171666 lambda!171464))))

(assert (=> bs!850838 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171666 lambda!171558))))

(declare-fun bs!850846 () Bool)

(assert (= bs!850846 (and d!1389935 d!1389235)))

(assert (=> bs!850846 (not (= lambda!171666 lambda!171416))))

(declare-fun bs!850847 () Bool)

(assert (= bs!850847 (and d!1389935 d!1389427)))

(assert (=> bs!850847 (= (= lt!1693704 lt!1693145) (= lambda!171666 lambda!171540))))

(assert (=> bs!850837 (= (= lt!1693704 lt!1693147) (= lambda!171666 lambda!171539))))

(assert (=> bs!850826 (= (= lt!1693704 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171666 lambda!171599))))

(declare-fun bs!850849 () Bool)

(assert (= bs!850849 (and d!1389935 b!4515789)))

(assert (=> bs!850849 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171666 lambda!171660))))

(declare-fun bs!850850 () Bool)

(assert (= bs!850850 (and d!1389935 b!4514933)))

(assert (=> bs!850850 (= (= lt!1693704 lt!1692722) (= lambda!171666 lambda!171537))))

(declare-fun bs!850851 () Bool)

(assert (= bs!850851 (and d!1389935 d!1389769)))

(assert (=> bs!850851 (= (= lt!1693704 lt!1692734) (= lambda!171666 lambda!171635))))

(declare-fun bs!850852 () Bool)

(assert (= bs!850852 (and d!1389935 b!4515256)))

(assert (=> bs!850852 (= (= lt!1693704 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171666 lambda!171598))))

(declare-fun bs!850853 () Bool)

(assert (= bs!850853 (and d!1389935 d!1389279)))

(assert (=> bs!850853 (= (= lt!1693704 lt!1692937) (= lambda!171666 lambda!171466))))

(declare-fun bs!850854 () Bool)

(assert (= bs!850854 (and d!1389935 b!4515053)))

(assert (=> bs!850854 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171666 lambda!171557))))

(assert (=> bs!850835 (= (= lt!1693704 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171666 lambda!171641))))

(declare-fun bs!850855 () Bool)

(assert (= bs!850855 (and d!1389935 d!1389469)))

(assert (=> bs!850855 (= (= lt!1693704 lt!1693221) (= lambda!171666 lambda!171560))))

(assert (=> bs!850843 (= (= lt!1693704 lt!1693481) (= lambda!171666 lambda!171630))))

(declare-fun bs!850856 () Bool)

(assert (= bs!850856 (and d!1389935 d!1389575)))

(assert (=> bs!850856 (= (= lt!1693704 lt!1693366) (= lambda!171666 lambda!171601))))

(declare-fun bs!850857 () Bool)

(assert (= bs!850857 (and d!1389935 b!4514750)))

(assert (=> bs!850857 (= (= lt!1693704 lt!1692734) (= lambda!171666 lambda!171463))))

(assert (=> d!1389935 true))

(declare-fun call!314509 () Bool)

(declare-fun c!770425 () Bool)

(declare-fun bm!314504 () Bool)

(assert (=> bm!314504 (= call!314509 (forall!10247 (ite c!770425 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692725))))) (ite c!770425 lambda!171660 lambda!171664)))))

(declare-fun bm!314505 () Bool)

(declare-fun call!314510 () Bool)

(assert (=> bm!314505 (= call!314510 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (ite c!770425 lambda!171660 lambda!171664)))))

(declare-fun bm!314506 () Bool)

(declare-fun call!314511 () Unit!94076)

(assert (=> bm!314506 (= call!314511 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))))))

(declare-fun b!4515787 () Bool)

(declare-fun e!2813329 () Bool)

(assert (=> b!4515787 (= e!2813329 call!314510)))

(declare-fun e!2813328 () ListMap!3577)

(assert (=> b!4515788 (= e!2813328 lt!1693706)))

(declare-fun lt!1693712 () ListMap!3577)

(assert (=> b!4515788 (= lt!1693712 (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725))))))))

(assert (=> b!4515788 (= lt!1693706 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692725)))) (+!1527 (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725)))))))))

(declare-fun lt!1693702 () Unit!94076)

(assert (=> b!4515788 (= lt!1693702 call!314511)))

(assert (=> b!4515788 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) lambda!171662)))

(declare-fun lt!1693698 () Unit!94076)

(assert (=> b!4515788 (= lt!1693698 lt!1693702)))

(assert (=> b!4515788 (forall!10247 (toList!4315 lt!1693712) lambda!171664)))

(declare-fun lt!1693717 () Unit!94076)

(declare-fun Unit!94284 () Unit!94076)

(assert (=> b!4515788 (= lt!1693717 Unit!94284)))

(assert (=> b!4515788 call!314509))

(declare-fun lt!1693703 () Unit!94076)

(declare-fun Unit!94285 () Unit!94076)

(assert (=> b!4515788 (= lt!1693703 Unit!94285)))

(declare-fun lt!1693705 () Unit!94076)

(declare-fun Unit!94286 () Unit!94076)

(assert (=> b!4515788 (= lt!1693705 Unit!94286)))

(declare-fun lt!1693715 () Unit!94076)

(assert (=> b!4515788 (= lt!1693715 (forallContained!2498 (toList!4315 lt!1693712) lambda!171664 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725))))))))

(assert (=> b!4515788 (contains!13343 lt!1693712 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725))))))))

(declare-fun lt!1693713 () Unit!94076)

(declare-fun Unit!94287 () Unit!94076)

(assert (=> b!4515788 (= lt!1693713 Unit!94287)))

(assert (=> b!4515788 (contains!13343 lt!1693706 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725))))))))

(declare-fun lt!1693697 () Unit!94076)

(declare-fun Unit!94288 () Unit!94076)

(assert (=> b!4515788 (= lt!1693697 Unit!94288)))

(assert (=> b!4515788 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692725))) lambda!171664)))

(declare-fun lt!1693700 () Unit!94076)

(declare-fun Unit!94289 () Unit!94076)

(assert (=> b!4515788 (= lt!1693700 Unit!94289)))

(assert (=> b!4515788 (forall!10247 (toList!4315 lt!1693712) lambda!171664)))

(declare-fun lt!1693695 () Unit!94076)

(declare-fun Unit!94290 () Unit!94076)

(assert (=> b!4515788 (= lt!1693695 Unit!94290)))

(declare-fun lt!1693708 () Unit!94076)

(declare-fun Unit!94291 () Unit!94076)

(assert (=> b!4515788 (= lt!1693708 Unit!94291)))

(declare-fun lt!1693707 () Unit!94076)

(assert (=> b!4515788 (= lt!1693707 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693706 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692725)))))))))

(assert (=> b!4515788 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) lambda!171664)))

(declare-fun lt!1693693 () Unit!94076)

(assert (=> b!4515788 (= lt!1693693 lt!1693707)))

(assert (=> b!4515788 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) lambda!171664)))

(declare-fun lt!1693699 () Unit!94076)

(declare-fun Unit!94292 () Unit!94076)

(assert (=> b!4515788 (= lt!1693699 Unit!94292)))

(declare-fun res!1878970 () Bool)

(assert (=> b!4515788 (= res!1878970 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692725))) lambda!171664))))

(assert (=> b!4515788 (=> (not res!1878970) (not e!2813329))))

(assert (=> b!4515788 e!2813329))

(declare-fun lt!1693696 () Unit!94076)

(declare-fun Unit!94293 () Unit!94076)

(assert (=> b!4515788 (= lt!1693696 Unit!94293)))

(declare-fun b!4515786 () Bool)

(declare-fun res!1878971 () Bool)

(declare-fun e!2813327 () Bool)

(assert (=> b!4515786 (=> (not res!1878971) (not e!2813327))))

(assert (=> b!4515786 (= res!1878971 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) lambda!171666))))

(assert (=> d!1389935 e!2813327))

(declare-fun res!1878972 () Bool)

(assert (=> d!1389935 (=> (not res!1878972) (not e!2813327))))

(assert (=> d!1389935 (= res!1878972 (forall!10247 (_2!28820 (h!56476 (toList!4316 lt!1692725))) lambda!171666))))

(assert (=> d!1389935 (= lt!1693704 e!2813328)))

(assert (=> d!1389935 (= c!770425 ((_ is Nil!50628) (_2!28820 (h!56476 (toList!4316 lt!1692725)))))))

(assert (=> d!1389935 (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692725))))))

(assert (=> d!1389935 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lt!1692725))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) lt!1693704)))

(assert (=> b!4515789 (= e!2813328 (extractMap!1210 (t!357715 (toList!4316 lt!1692725))))))

(declare-fun lt!1693701 () Unit!94076)

(assert (=> b!4515789 (= lt!1693701 call!314511)))

(assert (=> b!4515789 call!314510))

(declare-fun lt!1693694 () Unit!94076)

(assert (=> b!4515789 (= lt!1693694 lt!1693701)))

(assert (=> b!4515789 call!314509))

(declare-fun lt!1693711 () Unit!94076)

(declare-fun Unit!94294 () Unit!94076)

(assert (=> b!4515789 (= lt!1693711 Unit!94294)))

(declare-fun b!4515790 () Bool)

(assert (=> b!4515790 (= e!2813327 (invariantList!1011 (toList!4315 lt!1693704)))))

(assert (= (and d!1389935 c!770425) b!4515789))

(assert (= (and d!1389935 (not c!770425)) b!4515788))

(assert (= (and b!4515788 res!1878970) b!4515787))

(assert (= (or b!4515789 b!4515788) bm!314504))

(assert (= (or b!4515789 b!4515787) bm!314505))

(assert (= (or b!4515789 b!4515788) bm!314506))

(assert (= (and d!1389935 res!1878972) b!4515786))

(assert (= (and b!4515786 res!1878971) b!4515790))

(declare-fun m!5259745 () Bool)

(assert (=> bm!314504 m!5259745))

(declare-fun m!5259747 () Bool)

(assert (=> b!4515788 m!5259747))

(declare-fun m!5259749 () Bool)

(assert (=> b!4515788 m!5259749))

(declare-fun m!5259751 () Bool)

(assert (=> b!4515788 m!5259751))

(declare-fun m!5259753 () Bool)

(assert (=> b!4515788 m!5259753))

(assert (=> b!4515788 m!5259753))

(declare-fun m!5259755 () Bool)

(assert (=> b!4515788 m!5259755))

(assert (=> b!4515788 m!5259747))

(declare-fun m!5259757 () Bool)

(assert (=> b!4515788 m!5259757))

(assert (=> b!4515788 m!5257761))

(declare-fun m!5259759 () Bool)

(assert (=> b!4515788 m!5259759))

(assert (=> b!4515788 m!5257761))

(assert (=> b!4515788 m!5259749))

(assert (=> b!4515788 m!5259755))

(declare-fun m!5259761 () Bool)

(assert (=> b!4515788 m!5259761))

(declare-fun m!5259763 () Bool)

(assert (=> b!4515788 m!5259763))

(declare-fun m!5259765 () Bool)

(assert (=> b!4515788 m!5259765))

(declare-fun m!5259767 () Bool)

(assert (=> bm!314505 m!5259767))

(assert (=> bm!314506 m!5257761))

(declare-fun m!5259769 () Bool)

(assert (=> bm!314506 m!5259769))

(declare-fun m!5259771 () Bool)

(assert (=> b!4515790 m!5259771))

(declare-fun m!5259773 () Bool)

(assert (=> b!4515786 m!5259773))

(declare-fun m!5259775 () Bool)

(assert (=> d!1389935 m!5259775))

(declare-fun m!5259777 () Bool)

(assert (=> d!1389935 m!5259777))

(assert (=> b!4514768 d!1389935))

(declare-fun bs!850858 () Bool)

(declare-fun d!1389943 () Bool)

(assert (= bs!850858 (and d!1389943 d!1389333)))

(declare-fun lambda!171668 () Int)

(assert (=> bs!850858 (= lambda!171668 lambda!171504)))

(declare-fun bs!850859 () Bool)

(assert (= bs!850859 (and d!1389943 start!446664)))

(assert (=> bs!850859 (= lambda!171668 lambda!171413)))

(declare-fun bs!850860 () Bool)

(assert (= bs!850860 (and d!1389943 d!1389351)))

(assert (=> bs!850860 (= lambda!171668 lambda!171520)))

(declare-fun bs!850861 () Bool)

(assert (= bs!850861 (and d!1389943 d!1389385)))

(assert (=> bs!850861 (= lambda!171668 lambda!171531)))

(declare-fun bs!850862 () Bool)

(assert (= bs!850862 (and d!1389943 d!1389371)))

(assert (=> bs!850862 (= lambda!171668 lambda!171525)))

(declare-fun bs!850863 () Bool)

(assert (= bs!850863 (and d!1389943 d!1389405)))

(assert (=> bs!850863 (= lambda!171668 lambda!171535)))

(declare-fun bs!850865 () Bool)

(assert (= bs!850865 (and d!1389943 d!1389473)))

(assert (=> bs!850865 (= lambda!171668 lambda!171561)))

(declare-fun bs!850867 () Bool)

(assert (= bs!850867 (and d!1389943 d!1389807)))

(assert (=> bs!850867 (= lambda!171668 lambda!171644)))

(declare-fun bs!850869 () Bool)

(assert (= bs!850869 (and d!1389943 d!1389431)))

(assert (=> bs!850869 (= lambda!171668 lambda!171543)))

(declare-fun bs!850871 () Bool)

(assert (= bs!850871 (and d!1389943 d!1389369)))

(assert (=> bs!850871 (not (= lambda!171668 lambda!171524))))

(declare-fun bs!850872 () Bool)

(assert (= bs!850872 (and d!1389943 d!1389733)))

(assert (=> bs!850872 (= lambda!171668 lambda!171632)))

(declare-fun bs!850874 () Bool)

(assert (= bs!850874 (and d!1389943 d!1389397)))

(assert (=> bs!850874 (= lambda!171668 lambda!171532)))

(declare-fun bs!850876 () Bool)

(assert (= bs!850876 (and d!1389943 d!1389367)))

(assert (=> bs!850876 (= lambda!171668 lambda!171521)))

(declare-fun bs!850878 () Bool)

(assert (= bs!850878 (and d!1389943 d!1389421)))

(assert (=> bs!850878 (= lambda!171668 lambda!171536)))

(declare-fun bs!850880 () Bool)

(assert (= bs!850880 (and d!1389943 d!1389325)))

(assert (=> bs!850880 (= lambda!171668 lambda!171497)))

(declare-fun bs!850882 () Bool)

(assert (= bs!850882 (and d!1389943 d!1389491)))

(assert (=> bs!850882 (= lambda!171668 lambda!171567)))

(declare-fun bs!850884 () Bool)

(assert (= bs!850884 (and d!1389943 d!1389349)))

(assert (=> bs!850884 (= lambda!171668 lambda!171510)))

(declare-fun lt!1693740 () ListMap!3577)

(assert (=> d!1389943 (invariantList!1011 (toList!4315 lt!1693740))))

(declare-fun e!2813334 () ListMap!3577)

(assert (=> d!1389943 (= lt!1693740 e!2813334)))

(declare-fun c!770427 () Bool)

(assert (=> d!1389943 (= c!770427 ((_ is Cons!50629) (t!357715 (toList!4316 lt!1692725))))))

(assert (=> d!1389943 (forall!10245 (t!357715 (toList!4316 lt!1692725)) lambda!171668)))

(assert (=> d!1389943 (= (extractMap!1210 (t!357715 (toList!4316 lt!1692725))) lt!1693740)))

(declare-fun b!4515796 () Bool)

(assert (=> b!4515796 (= e!2813334 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 lt!1692725)))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lt!1692725))))))))

(declare-fun b!4515797 () Bool)

(assert (=> b!4515797 (= e!2813334 (ListMap!3578 Nil!50628))))

(assert (= (and d!1389943 c!770427) b!4515796))

(assert (= (and d!1389943 (not c!770427)) b!4515797))

(declare-fun m!5259779 () Bool)

(assert (=> d!1389943 m!5259779))

(declare-fun m!5259781 () Bool)

(assert (=> d!1389943 m!5259781))

(declare-fun m!5259783 () Bool)

(assert (=> b!4515796 m!5259783))

(assert (=> b!4515796 m!5259783))

(declare-fun m!5259785 () Bool)

(assert (=> b!4515796 m!5259785))

(assert (=> b!4514768 d!1389943))

(declare-fun d!1389945 () Bool)

(declare-fun res!1878978 () Bool)

(declare-fun e!2813335 () Bool)

(assert (=> d!1389945 (=> res!1878978 e!2813335)))

(assert (=> d!1389945 (= res!1878978 ((_ is Nil!50628) (toList!4315 lt!1692722)))))

(assert (=> d!1389945 (= (forall!10247 (toList!4315 lt!1692722) lambda!171540) e!2813335)))

(declare-fun b!4515798 () Bool)

(declare-fun e!2813336 () Bool)

(assert (=> b!4515798 (= e!2813335 e!2813336)))

(declare-fun res!1878979 () Bool)

(assert (=> b!4515798 (=> (not res!1878979) (not e!2813336))))

(assert (=> b!4515798 (= res!1878979 (dynLambda!21153 lambda!171540 (h!56475 (toList!4315 lt!1692722))))))

(declare-fun b!4515799 () Bool)

(assert (=> b!4515799 (= e!2813336 (forall!10247 (t!357714 (toList!4315 lt!1692722)) lambda!171540))))

(assert (= (and d!1389945 (not res!1878978)) b!4515798))

(assert (= (and b!4515798 res!1878979) b!4515799))

(declare-fun b_lambda!154211 () Bool)

(assert (=> (not b_lambda!154211) (not b!4515798)))

(declare-fun m!5259787 () Bool)

(assert (=> b!4515798 m!5259787))

(declare-fun m!5259789 () Bool)

(assert (=> b!4515799 m!5259789))

(assert (=> b!4514930 d!1389945))

(declare-fun d!1389947 () Bool)

(assert (=> d!1389947 (= (get!16572 (getValueByKey!1079 (toList!4316 lm!1477) hash!344)) (v!44674 (getValueByKey!1079 (toList!4316 lm!1477) hash!344)))))

(assert (=> d!1389407 d!1389947))

(assert (=> d!1389407 d!1389625))

(assert (=> b!4514862 d!1389767))

(declare-fun d!1389949 () Bool)

(assert (=> d!1389949 (containsKey!1766 (toList!4315 lt!1692728) key!3287)))

(declare-fun lt!1693741 () Unit!94076)

(assert (=> d!1389949 (= lt!1693741 (choose!29435 (toList!4315 lt!1692728) key!3287))))

(assert (=> d!1389949 (invariantList!1011 (toList!4315 lt!1692728))))

(assert (=> d!1389949 (= (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692728) key!3287) lt!1693741)))

(declare-fun bs!850899 () Bool)

(assert (= bs!850899 d!1389949))

(assert (=> bs!850899 m!5257941))

(declare-fun m!5259791 () Bool)

(assert (=> bs!850899 m!5259791))

(assert (=> bs!850899 m!5258621))

(assert (=> b!4514862 d!1389949))

(declare-fun b!4515800 () Bool)

(declare-fun e!2813342 () Bool)

(assert (=> b!4515800 (= e!2813342 (contains!13345 (keys!17582 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(declare-fun d!1389951 () Bool)

(declare-fun e!2813337 () Bool)

(assert (=> d!1389951 e!2813337))

(declare-fun res!1878980 () Bool)

(assert (=> d!1389951 (=> res!1878980 e!2813337)))

(declare-fun e!2813340 () Bool)

(assert (=> d!1389951 (= res!1878980 e!2813340)))

(declare-fun res!1878981 () Bool)

(assert (=> d!1389951 (=> (not res!1878981) (not e!2813340))))

(declare-fun lt!1693742 () Bool)

(assert (=> d!1389951 (= res!1878981 (not lt!1693742))))

(declare-fun lt!1693749 () Bool)

(assert (=> d!1389951 (= lt!1693742 lt!1693749)))

(declare-fun lt!1693747 () Unit!94076)

(declare-fun e!2813339 () Unit!94076)

(assert (=> d!1389951 (= lt!1693747 e!2813339)))

(declare-fun c!770429 () Bool)

(assert (=> d!1389951 (= c!770429 lt!1693749)))

(assert (=> d!1389951 (= lt!1693749 (containsKey!1766 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(assert (=> d!1389951 (= (contains!13343 (extractMap!1210 (toList!4316 lm!1477)) key!3287) lt!1693742)))

(declare-fun b!4515801 () Bool)

(declare-fun e!2813338 () List!50755)

(assert (=> b!4515801 (= e!2813338 (keys!17582 (extractMap!1210 (toList!4316 lm!1477))))))

(declare-fun b!4515802 () Bool)

(assert (=> b!4515802 (= e!2813338 (getKeysList!459 (toList!4315 (extractMap!1210 (toList!4316 lm!1477)))))))

(declare-fun b!4515803 () Bool)

(declare-fun e!2813341 () Unit!94076)

(declare-fun Unit!94295 () Unit!94076)

(assert (=> b!4515803 (= e!2813341 Unit!94295)))

(declare-fun b!4515804 () Bool)

(declare-fun lt!1693743 () Unit!94076)

(assert (=> b!4515804 (= e!2813339 lt!1693743)))

(declare-fun lt!1693745 () Unit!94076)

(assert (=> b!4515804 (= lt!1693745 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(assert (=> b!4515804 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(declare-fun lt!1693748 () Unit!94076)

(assert (=> b!4515804 (= lt!1693748 lt!1693745)))

(assert (=> b!4515804 (= lt!1693743 (lemmaInListThenGetKeysListContains!455 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(declare-fun call!314515 () Bool)

(assert (=> b!4515804 call!314515))

(declare-fun b!4515805 () Bool)

(assert (=> b!4515805 (= e!2813340 (not (contains!13345 (keys!17582 (extractMap!1210 (toList!4316 lm!1477))) key!3287)))))

(declare-fun b!4515806 () Bool)

(assert (=> b!4515806 (= e!2813337 e!2813342)))

(declare-fun res!1878982 () Bool)

(assert (=> b!4515806 (=> (not res!1878982) (not e!2813342))))

(assert (=> b!4515806 (= res!1878982 (isDefined!8388 (getValueByKey!1081 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287)))))

(declare-fun b!4515807 () Bool)

(assert (=> b!4515807 (= e!2813339 e!2813341)))

(declare-fun c!770430 () Bool)

(assert (=> b!4515807 (= c!770430 call!314515)))

(declare-fun b!4515808 () Bool)

(assert (=> b!4515808 false))

(declare-fun lt!1693746 () Unit!94076)

(declare-fun lt!1693744 () Unit!94076)

(assert (=> b!4515808 (= lt!1693746 lt!1693744)))

(assert (=> b!4515808 (containsKey!1766 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287)))

(assert (=> b!4515808 (= lt!1693744 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 (extractMap!1210 (toList!4316 lm!1477))) key!3287))))

(declare-fun Unit!94296 () Unit!94076)

(assert (=> b!4515808 (= e!2813341 Unit!94296)))

(declare-fun bm!314510 () Bool)

(assert (=> bm!314510 (= call!314515 (contains!13345 e!2813338 key!3287))))

(declare-fun c!770428 () Bool)

(assert (=> bm!314510 (= c!770428 c!770429)))

(assert (= (and d!1389951 c!770429) b!4515804))

(assert (= (and d!1389951 (not c!770429)) b!4515807))

(assert (= (and b!4515807 c!770430) b!4515808))

(assert (= (and b!4515807 (not c!770430)) b!4515803))

(assert (= (or b!4515804 b!4515807) bm!314510))

(assert (= (and bm!314510 c!770428) b!4515802))

(assert (= (and bm!314510 (not c!770428)) b!4515801))

(assert (= (and d!1389951 res!1878981) b!4515805))

(assert (= (and d!1389951 (not res!1878980)) b!4515806))

(assert (= (and b!4515806 res!1878982) b!4515800))

(declare-fun m!5259793 () Bool)

(assert (=> bm!314510 m!5259793))

(assert (=> b!4515801 m!5257343))

(declare-fun m!5259795 () Bool)

(assert (=> b!4515801 m!5259795))

(assert (=> b!4515800 m!5257343))

(assert (=> b!4515800 m!5259795))

(assert (=> b!4515800 m!5259795))

(declare-fun m!5259797 () Bool)

(assert (=> b!4515800 m!5259797))

(declare-fun m!5259799 () Bool)

(assert (=> d!1389951 m!5259799))

(declare-fun m!5259801 () Bool)

(assert (=> b!4515804 m!5259801))

(declare-fun m!5259803 () Bool)

(assert (=> b!4515804 m!5259803))

(assert (=> b!4515804 m!5259803))

(declare-fun m!5259805 () Bool)

(assert (=> b!4515804 m!5259805))

(declare-fun m!5259807 () Bool)

(assert (=> b!4515804 m!5259807))

(assert (=> b!4515808 m!5259799))

(declare-fun m!5259809 () Bool)

(assert (=> b!4515808 m!5259809))

(declare-fun m!5259811 () Bool)

(assert (=> b!4515802 m!5259811))

(assert (=> b!4515805 m!5257343))

(assert (=> b!4515805 m!5259795))

(assert (=> b!4515805 m!5259795))

(assert (=> b!4515805 m!5259797))

(assert (=> b!4515806 m!5259803))

(assert (=> b!4515806 m!5259803))

(assert (=> b!4515806 m!5259805))

(assert (=> d!1389431 d!1389951))

(assert (=> d!1389431 d!1389421))

(declare-fun d!1389953 () Bool)

(assert (=> d!1389953 (not (contains!13343 (extractMap!1210 (toList!4316 lm!1477)) key!3287))))

(assert (=> d!1389953 true))

(declare-fun _$26!359 () Unit!94076)

(assert (=> d!1389953 (= (choose!29423 lm!1477 key!3287 hashF!1107) _$26!359)))

(declare-fun bs!850904 () Bool)

(assert (= bs!850904 d!1389953))

(assert (=> bs!850904 m!5257343))

(assert (=> bs!850904 m!5257343))

(assert (=> bs!850904 m!5258159))

(assert (=> d!1389431 d!1389953))

(declare-fun d!1389973 () Bool)

(declare-fun res!1878993 () Bool)

(declare-fun e!2813364 () Bool)

(assert (=> d!1389973 (=> res!1878993 e!2813364)))

(assert (=> d!1389973 (= res!1878993 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389973 (= (forall!10245 (toList!4316 lm!1477) lambda!171543) e!2813364)))

(declare-fun b!4515841 () Bool)

(declare-fun e!2813365 () Bool)

(assert (=> b!4515841 (= e!2813364 e!2813365)))

(declare-fun res!1878994 () Bool)

(assert (=> b!4515841 (=> (not res!1878994) (not e!2813365))))

(assert (=> b!4515841 (= res!1878994 (dynLambda!21150 lambda!171543 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4515842 () Bool)

(assert (=> b!4515842 (= e!2813365 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171543))))

(assert (= (and d!1389973 (not res!1878993)) b!4515841))

(assert (= (and b!4515841 res!1878994) b!4515842))

(declare-fun b_lambda!154215 () Bool)

(assert (=> (not b_lambda!154215) (not b!4515841)))

(declare-fun m!5259903 () Bool)

(assert (=> b!4515841 m!5259903))

(declare-fun m!5259905 () Bool)

(assert (=> b!4515842 m!5259905))

(assert (=> d!1389431 d!1389973))

(declare-fun d!1389977 () Bool)

(declare-fun res!1878995 () Bool)

(declare-fun e!2813366 () Bool)

(assert (=> d!1389977 (=> res!1878995 e!2813366)))

(assert (=> d!1389977 (= res!1878995 (and ((_ is Cons!50628) (_2!28820 (h!56476 (toList!4316 lt!1692730)))) (= (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lt!1692730))))) key!3287)))))

(assert (=> d!1389977 (= (containsKey!1762 (_2!28820 (h!56476 (toList!4316 lt!1692730))) key!3287) e!2813366)))

(declare-fun b!4515843 () Bool)

(declare-fun e!2813367 () Bool)

(assert (=> b!4515843 (= e!2813366 e!2813367)))

(declare-fun res!1878996 () Bool)

(assert (=> b!4515843 (=> (not res!1878996) (not e!2813367))))

(assert (=> b!4515843 (= res!1878996 ((_ is Cons!50628) (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(declare-fun b!4515844 () Bool)

(assert (=> b!4515844 (= e!2813367 (containsKey!1762 (t!357714 (_2!28820 (h!56476 (toList!4316 lt!1692730)))) key!3287))))

(assert (= (and d!1389977 (not res!1878995)) b!4515843))

(assert (= (and b!4515843 res!1878996) b!4515844))

(declare-fun m!5259907 () Bool)

(assert (=> b!4515844 m!5259907))

(assert (=> b!4514790 d!1389977))

(declare-fun b!4515847 () Bool)

(declare-fun e!2813369 () Option!11099)

(assert (=> b!4515847 (= e!2813369 (getValueByKey!1079 (t!357715 (toList!4316 lt!1692801)) (_1!28820 lt!1692726)))))

(declare-fun b!4515848 () Bool)

(assert (=> b!4515848 (= e!2813369 None!11098)))

(declare-fun b!4515845 () Bool)

(declare-fun e!2813368 () Option!11099)

(assert (=> b!4515845 (= e!2813368 (Some!11098 (_2!28820 (h!56476 (toList!4316 lt!1692801)))))))

(declare-fun d!1389979 () Bool)

(declare-fun c!770442 () Bool)

(assert (=> d!1389979 (= c!770442 (and ((_ is Cons!50629) (toList!4316 lt!1692801)) (= (_1!28820 (h!56476 (toList!4316 lt!1692801))) (_1!28820 lt!1692726))))))

(assert (=> d!1389979 (= (getValueByKey!1079 (toList!4316 lt!1692801) (_1!28820 lt!1692726)) e!2813368)))

(declare-fun b!4515846 () Bool)

(assert (=> b!4515846 (= e!2813368 e!2813369)))

(declare-fun c!770443 () Bool)

(assert (=> b!4515846 (= c!770443 (and ((_ is Cons!50629) (toList!4316 lt!1692801)) (not (= (_1!28820 (h!56476 (toList!4316 lt!1692801))) (_1!28820 lt!1692726)))))))

(assert (= (and d!1389979 c!770442) b!4515845))

(assert (= (and d!1389979 (not c!770442)) b!4515846))

(assert (= (and b!4515846 c!770443) b!4515847))

(assert (= (and b!4515846 (not c!770443)) b!4515848))

(declare-fun m!5259909 () Bool)

(assert (=> b!4515847 m!5259909))

(assert (=> b!4514631 d!1389979))

(declare-fun d!1389981 () Bool)

(declare-fun res!1878997 () Bool)

(declare-fun e!2813370 () Bool)

(assert (=> d!1389981 (=> res!1878997 e!2813370)))

(assert (=> d!1389981 (= res!1878997 ((_ is Nil!50628) newBucket!178))))

(assert (=> d!1389981 (= (forall!10247 newBucket!178 lambda!171416) e!2813370)))

(declare-fun b!4515849 () Bool)

(declare-fun e!2813371 () Bool)

(assert (=> b!4515849 (= e!2813370 e!2813371)))

(declare-fun res!1878998 () Bool)

(assert (=> b!4515849 (=> (not res!1878998) (not e!2813371))))

(assert (=> b!4515849 (= res!1878998 (dynLambda!21153 lambda!171416 (h!56475 newBucket!178)))))

(declare-fun b!4515850 () Bool)

(assert (=> b!4515850 (= e!2813371 (forall!10247 (t!357714 newBucket!178) lambda!171416))))

(assert (= (and d!1389981 (not res!1878997)) b!4515849))

(assert (= (and b!4515849 res!1878998) b!4515850))

(declare-fun b_lambda!154217 () Bool)

(assert (=> (not b_lambda!154217) (not b!4515849)))

(declare-fun m!5259911 () Bool)

(assert (=> b!4515849 m!5259911))

(declare-fun m!5259913 () Bool)

(assert (=> b!4515850 m!5259913))

(assert (=> d!1389235 d!1389981))

(declare-fun d!1389983 () Bool)

(declare-fun res!1879001 () Bool)

(declare-fun e!2813374 () Bool)

(assert (=> d!1389983 (=> res!1879001 e!2813374)))

(declare-fun e!2813372 () Bool)

(assert (=> d!1389983 (= res!1879001 e!2813372)))

(declare-fun res!1878999 () Bool)

(assert (=> d!1389983 (=> (not res!1878999) (not e!2813372))))

(assert (=> d!1389983 (= res!1878999 ((_ is Cons!50629) (t!357715 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1389983 (= (containsKeyBiggerList!134 (t!357715 (t!357715 (toList!4316 lm!1477))) key!3287) e!2813374)))

(declare-fun b!4515851 () Bool)

(assert (=> b!4515851 (= e!2813372 (containsKey!1762 (_2!28820 (h!56476 (t!357715 (t!357715 (toList!4316 lm!1477))))) key!3287))))

(declare-fun b!4515852 () Bool)

(declare-fun e!2813373 () Bool)

(assert (=> b!4515852 (= e!2813374 e!2813373)))

(declare-fun res!1879000 () Bool)

(assert (=> b!4515852 (=> (not res!1879000) (not e!2813373))))

(assert (=> b!4515852 (= res!1879000 ((_ is Cons!50629) (t!357715 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4515853 () Bool)

(assert (=> b!4515853 (= e!2813373 (containsKeyBiggerList!134 (t!357715 (t!357715 (t!357715 (toList!4316 lm!1477)))) key!3287))))

(assert (= (and d!1389983 res!1878999) b!4515851))

(assert (= (and d!1389983 (not res!1879001)) b!4515852))

(assert (= (and b!4515852 res!1879000) b!4515853))

(declare-fun m!5259915 () Bool)

(assert (=> b!4515851 m!5259915))

(declare-fun m!5259917 () Bool)

(assert (=> b!4515853 m!5259917))

(assert (=> b!4514784 d!1389983))

(declare-fun d!1389985 () Bool)

(declare-fun res!1879006 () Bool)

(declare-fun e!2813379 () Bool)

(assert (=> d!1389985 (=> res!1879006 e!2813379)))

(assert (=> d!1389985 (= res!1879006 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1389985 (= (forall!10247 (_2!28820 lt!1692742) lambda!171540) e!2813379)))

(declare-fun b!4515858 () Bool)

(declare-fun e!2813380 () Bool)

(assert (=> b!4515858 (= e!2813379 e!2813380)))

(declare-fun res!1879007 () Bool)

(assert (=> b!4515858 (=> (not res!1879007) (not e!2813380))))

(assert (=> b!4515858 (= res!1879007 (dynLambda!21153 lambda!171540 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun b!4515859 () Bool)

(assert (=> b!4515859 (= e!2813380 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171540))))

(assert (= (and d!1389985 (not res!1879006)) b!4515858))

(assert (= (and b!4515858 res!1879007) b!4515859))

(declare-fun b_lambda!154219 () Bool)

(assert (=> (not b_lambda!154219) (not b!4515858)))

(declare-fun m!5259919 () Bool)

(assert (=> b!4515858 m!5259919))

(declare-fun m!5259921 () Bool)

(assert (=> b!4515859 m!5259921))

(assert (=> d!1389427 d!1389985))

(declare-fun d!1389987 () Bool)

(declare-fun res!1879008 () Bool)

(declare-fun e!2813381 () Bool)

(assert (=> d!1389987 (=> res!1879008 e!2813381)))

(assert (=> d!1389987 (= res!1879008 (not ((_ is Cons!50628) (_2!28820 lt!1692742))))))

(assert (=> d!1389987 (= (noDuplicateKeys!1154 (_2!28820 lt!1692742)) e!2813381)))

(declare-fun b!4515860 () Bool)

(declare-fun e!2813382 () Bool)

(assert (=> b!4515860 (= e!2813381 e!2813382)))

(declare-fun res!1879009 () Bool)

(assert (=> b!4515860 (=> (not res!1879009) (not e!2813382))))

(assert (=> b!4515860 (= res!1879009 (not (containsKey!1762 (t!357714 (_2!28820 lt!1692742)) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515861 () Bool)

(assert (=> b!4515861 (= e!2813382 (noDuplicateKeys!1154 (t!357714 (_2!28820 lt!1692742))))))

(assert (= (and d!1389987 (not res!1879008)) b!4515860))

(assert (= (and b!4515860 res!1879009) b!4515861))

(declare-fun m!5259923 () Bool)

(assert (=> b!4515860 m!5259923))

(assert (=> b!4515861 m!5258711))

(assert (=> d!1389427 d!1389987))

(declare-fun d!1389989 () Bool)

(assert (=> d!1389989 (dynLambda!21153 lambda!171465 (h!56475 (_2!28820 lt!1692742)))))

(declare-fun lt!1693768 () Unit!94076)

(assert (=> d!1389989 (= lt!1693768 (choose!29433 (toList!4315 lt!1692943) lambda!171465 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun e!2813383 () Bool)

(assert (=> d!1389989 e!2813383))

(declare-fun res!1879010 () Bool)

(assert (=> d!1389989 (=> (not res!1879010) (not e!2813383))))

(assert (=> d!1389989 (= res!1879010 (forall!10247 (toList!4315 lt!1692943) lambda!171465))))

(assert (=> d!1389989 (= (forallContained!2498 (toList!4315 lt!1692943) lambda!171465 (h!56475 (_2!28820 lt!1692742))) lt!1693768)))

(declare-fun b!4515862 () Bool)

(assert (=> b!4515862 (= e!2813383 (contains!13347 (toList!4315 lt!1692943) (h!56475 (_2!28820 lt!1692742))))))

(assert (= (and d!1389989 res!1879010) b!4515862))

(declare-fun b_lambda!154221 () Bool)

(assert (=> (not b_lambda!154221) (not d!1389989)))

(declare-fun m!5259925 () Bool)

(assert (=> d!1389989 m!5259925))

(declare-fun m!5259927 () Bool)

(assert (=> d!1389989 m!5259927))

(assert (=> d!1389989 m!5257733))

(declare-fun m!5259929 () Bool)

(assert (=> b!4515862 m!5259929))

(assert (=> b!4514749 d!1389989))

(declare-fun bs!850906 () Bool)

(declare-fun b!4515868 () Bool)

(assert (= bs!850906 (and b!4515868 b!4514749)))

(declare-fun lambda!171670 () Int)

(assert (=> bs!850906 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692939) (= lambda!171670 lambda!171465))))

(declare-fun bs!850907 () Bool)

(assert (= bs!850907 (and b!4515868 b!4515446)))

(assert (=> bs!850907 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171670 lambda!171627))))

(declare-fun bs!850908 () Bool)

(assert (= bs!850908 (and b!4515868 b!4515255)))

(assert (=> bs!850908 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693368) (= lambda!171670 lambda!171600))))

(declare-fun bs!850909 () Bool)

(assert (= bs!850909 (and b!4515868 b!4515553)))

(assert (=> bs!850909 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171670 lambda!171638))))

(declare-fun bs!850910 () Bool)

(assert (= bs!850910 (and b!4515868 d!1389715)))

(assert (=> bs!850910 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693479) (= lambda!171670 lambda!171631))))

(declare-fun bs!850911 () Bool)

(assert (= bs!850911 (and b!4515868 b!4515788)))

(assert (=> bs!850911 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693706) (= lambda!171670 lambda!171664))))

(declare-fun bs!850912 () Bool)

(assert (= bs!850912 (and b!4515868 d!1389607)))

(assert (=> bs!850912 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171670 lambda!171612))))

(declare-fun bs!850913 () Bool)

(assert (= bs!850913 (and b!4515868 b!4515552)))

(assert (=> bs!850913 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693536) (= lambda!171670 lambda!171642))))

(declare-fun bs!850914 () Bool)

(assert (= bs!850914 (and b!4515868 b!4514932)))

(assert (=> bs!850914 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171670 lambda!171538))))

(declare-fun bs!850915 () Bool)

(assert (= bs!850915 (and b!4515868 b!4515052)))

(assert (=> bs!850915 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693223) (= lambda!171670 lambda!171559))))

(declare-fun bs!850916 () Bool)

(assert (= bs!850916 (and b!4515868 d!1389775)))

(assert (=> bs!850916 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693534) (= lambda!171670 lambda!171643))))

(assert (=> bs!850911 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171670 lambda!171662))))

(declare-fun bs!850917 () Bool)

(assert (= bs!850917 (and b!4515868 b!4515445)))

(assert (=> bs!850917 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171670 lambda!171629))))

(assert (=> bs!850906 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171670 lambda!171464))))

(assert (=> bs!850915 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171670 lambda!171558))))

(declare-fun bs!850918 () Bool)

(assert (= bs!850918 (and b!4515868 d!1389235)))

(assert (=> bs!850918 (not (= lambda!171670 lambda!171416))))

(declare-fun bs!850919 () Bool)

(assert (= bs!850919 (and b!4515868 d!1389427)))

(assert (=> bs!850919 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693145) (= lambda!171670 lambda!171540))))

(assert (=> bs!850914 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171670 lambda!171539))))

(assert (=> bs!850908 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171670 lambda!171599))))

(declare-fun bs!850920 () Bool)

(assert (= bs!850920 (and b!4515868 b!4515789)))

(assert (=> bs!850920 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171670 lambda!171660))))

(declare-fun bs!850921 () Bool)

(assert (= bs!850921 (and b!4515868 b!4514933)))

(assert (=> bs!850921 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171670 lambda!171537))))

(declare-fun bs!850922 () Bool)

(assert (= bs!850922 (and b!4515868 d!1389769)))

(assert (=> bs!850922 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171670 lambda!171635))))

(declare-fun bs!850923 () Bool)

(assert (= bs!850923 (and b!4515868 b!4515256)))

(assert (=> bs!850923 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171670 lambda!171598))))

(declare-fun bs!850924 () Bool)

(assert (= bs!850924 (and b!4515868 d!1389279)))

(assert (=> bs!850924 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692937) (= lambda!171670 lambda!171466))))

(declare-fun bs!850925 () Bool)

(assert (= bs!850925 (and b!4515868 b!4515053)))

(assert (=> bs!850925 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171670 lambda!171557))))

(assert (=> bs!850913 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171670 lambda!171641))))

(declare-fun bs!850926 () Bool)

(assert (= bs!850926 (and b!4515868 d!1389469)))

(assert (=> bs!850926 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693221) (= lambda!171670 lambda!171560))))

(assert (=> bs!850917 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693481) (= lambda!171670 lambda!171630))))

(declare-fun bs!850927 () Bool)

(assert (= bs!850927 (and b!4515868 d!1389575)))

(assert (=> bs!850927 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693366) (= lambda!171670 lambda!171601))))

(declare-fun bs!850928 () Bool)

(assert (= bs!850928 (and b!4515868 b!4514750)))

(assert (=> bs!850928 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171670 lambda!171463))))

(declare-fun bs!850929 () Bool)

(assert (= bs!850929 (and b!4515868 d!1389935)))

(assert (=> bs!850929 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693704) (= lambda!171670 lambda!171666))))

(assert (=> b!4515868 true))

(declare-fun bs!850930 () Bool)

(declare-fun b!4515867 () Bool)

(assert (= bs!850930 (and b!4515867 b!4514749)))

(declare-fun lambda!171671 () Int)

(assert (=> bs!850930 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692939) (= lambda!171671 lambda!171465))))

(declare-fun bs!850932 () Bool)

(assert (= bs!850932 (and b!4515867 b!4515446)))

(assert (=> bs!850932 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171671 lambda!171627))))

(declare-fun bs!850933 () Bool)

(assert (= bs!850933 (and b!4515867 b!4515255)))

(assert (=> bs!850933 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693368) (= lambda!171671 lambda!171600))))

(declare-fun bs!850934 () Bool)

(assert (= bs!850934 (and b!4515867 b!4515553)))

(assert (=> bs!850934 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171671 lambda!171638))))

(declare-fun bs!850935 () Bool)

(assert (= bs!850935 (and b!4515867 d!1389715)))

(assert (=> bs!850935 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693479) (= lambda!171671 lambda!171631))))

(declare-fun bs!850936 () Bool)

(assert (= bs!850936 (and b!4515867 b!4515788)))

(assert (=> bs!850936 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693706) (= lambda!171671 lambda!171664))))

(declare-fun bs!850937 () Bool)

(assert (= bs!850937 (and b!4515867 d!1389607)))

(assert (=> bs!850937 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171671 lambda!171612))))

(declare-fun bs!850938 () Bool)

(assert (= bs!850938 (and b!4515867 b!4515552)))

(assert (=> bs!850938 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693536) (= lambda!171671 lambda!171642))))

(declare-fun bs!850939 () Bool)

(assert (= bs!850939 (and b!4515867 b!4514932)))

(assert (=> bs!850939 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171671 lambda!171538))))

(declare-fun bs!850940 () Bool)

(assert (= bs!850940 (and b!4515867 b!4515052)))

(assert (=> bs!850940 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693223) (= lambda!171671 lambda!171559))))

(declare-fun bs!850941 () Bool)

(assert (= bs!850941 (and b!4515867 d!1389775)))

(assert (=> bs!850941 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693534) (= lambda!171671 lambda!171643))))

(assert (=> bs!850936 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171671 lambda!171662))))

(declare-fun bs!850942 () Bool)

(assert (= bs!850942 (and b!4515867 b!4515445)))

(assert (=> bs!850942 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171671 lambda!171629))))

(assert (=> bs!850930 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171671 lambda!171464))))

(assert (=> bs!850940 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171671 lambda!171558))))

(declare-fun bs!850943 () Bool)

(assert (= bs!850943 (and b!4515867 d!1389235)))

(assert (=> bs!850943 (not (= lambda!171671 lambda!171416))))

(declare-fun bs!850944 () Bool)

(assert (= bs!850944 (and b!4515867 d!1389427)))

(assert (=> bs!850944 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693145) (= lambda!171671 lambda!171540))))

(assert (=> bs!850939 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693147) (= lambda!171671 lambda!171539))))

(assert (=> bs!850933 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171671 lambda!171599))))

(declare-fun bs!850945 () Bool)

(assert (= bs!850945 (and b!4515867 b!4515789)))

(assert (=> bs!850945 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171671 lambda!171660))))

(declare-fun bs!850946 () Bool)

(assert (= bs!850946 (and b!4515867 b!4514933)))

(assert (=> bs!850946 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692722) (= lambda!171671 lambda!171537))))

(declare-fun bs!850947 () Bool)

(assert (= bs!850947 (and b!4515867 d!1389769)))

(assert (=> bs!850947 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171671 lambda!171635))))

(declare-fun bs!850948 () Bool)

(assert (= bs!850948 (and b!4515867 b!4515256)))

(assert (=> bs!850948 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171671 lambda!171598))))

(declare-fun bs!850949 () Bool)

(assert (= bs!850949 (and b!4515867 d!1389279)))

(assert (=> bs!850949 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692937) (= lambda!171671 lambda!171466))))

(declare-fun bs!850950 () Bool)

(assert (= bs!850950 (and b!4515867 b!4515053)))

(assert (=> bs!850950 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171671 lambda!171557))))

(assert (=> bs!850938 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171671 lambda!171641))))

(declare-fun bs!850951 () Bool)

(assert (= bs!850951 (and b!4515867 d!1389469)))

(assert (=> bs!850951 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693221) (= lambda!171671 lambda!171560))))

(assert (=> bs!850942 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693481) (= lambda!171671 lambda!171630))))

(declare-fun bs!850952 () Bool)

(assert (= bs!850952 (and b!4515867 b!4515868)))

(assert (=> bs!850952 (= lambda!171671 lambda!171670)))

(declare-fun bs!850953 () Bool)

(assert (= bs!850953 (and b!4515867 d!1389575)))

(assert (=> bs!850953 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693366) (= lambda!171671 lambda!171601))))

(declare-fun bs!850954 () Bool)

(assert (= bs!850954 (and b!4515867 b!4514750)))

(assert (=> bs!850954 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1692734) (= lambda!171671 lambda!171463))))

(declare-fun bs!850956 () Bool)

(assert (= bs!850956 (and b!4515867 d!1389935)))

(assert (=> bs!850956 (= (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693704) (= lambda!171671 lambda!171666))))

(assert (=> b!4515867 true))

(declare-fun lt!1693782 () ListMap!3577)

(declare-fun lambda!171673 () Int)

(assert (=> bs!850930 (= (= lt!1693782 lt!1692939) (= lambda!171673 lambda!171465))))

(assert (=> bs!850932 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171673 lambda!171627))))

(assert (=> bs!850933 (= (= lt!1693782 lt!1693368) (= lambda!171673 lambda!171600))))

(assert (=> bs!850934 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171673 lambda!171638))))

(assert (=> bs!850935 (= (= lt!1693782 lt!1693479) (= lambda!171673 lambda!171631))))

(assert (=> bs!850936 (= (= lt!1693782 lt!1693706) (= lambda!171673 lambda!171664))))

(assert (=> bs!850937 (= (= lt!1693782 lt!1693147) (= lambda!171673 lambda!171612))))

(assert (=> bs!850938 (= (= lt!1693782 lt!1693536) (= lambda!171673 lambda!171642))))

(assert (=> bs!850939 (= (= lt!1693782 lt!1692722) (= lambda!171673 lambda!171538))))

(assert (=> bs!850940 (= (= lt!1693782 lt!1693223) (= lambda!171673 lambda!171559))))

(assert (=> bs!850941 (= (= lt!1693782 lt!1693534) (= lambda!171673 lambda!171643))))

(assert (=> bs!850942 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171673 lambda!171629))))

(assert (=> bs!850930 (= (= lt!1693782 lt!1692734) (= lambda!171673 lambda!171464))))

(assert (=> bs!850940 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171673 lambda!171558))))

(assert (=> bs!850943 (not (= lambda!171673 lambda!171416))))

(assert (=> bs!850944 (= (= lt!1693782 lt!1693145) (= lambda!171673 lambda!171540))))

(assert (=> bs!850939 (= (= lt!1693782 lt!1693147) (= lambda!171673 lambda!171539))))

(assert (=> bs!850933 (= (= lt!1693782 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171673 lambda!171599))))

(assert (=> bs!850945 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171673 lambda!171660))))

(assert (=> bs!850946 (= (= lt!1693782 lt!1692722) (= lambda!171673 lambda!171537))))

(assert (=> bs!850947 (= (= lt!1693782 lt!1692734) (= lambda!171673 lambda!171635))))

(assert (=> bs!850948 (= (= lt!1693782 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171673 lambda!171598))))

(assert (=> bs!850949 (= (= lt!1693782 lt!1692937) (= lambda!171673 lambda!171466))))

(assert (=> bs!850950 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171673 lambda!171557))))

(assert (=> bs!850938 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171673 lambda!171641))))

(assert (=> bs!850951 (= (= lt!1693782 lt!1693221) (= lambda!171673 lambda!171560))))

(assert (=> bs!850942 (= (= lt!1693782 lt!1693481) (= lambda!171673 lambda!171630))))

(assert (=> bs!850952 (= (= lt!1693782 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171673 lambda!171670))))

(assert (=> bs!850953 (= (= lt!1693782 lt!1693366) (= lambda!171673 lambda!171601))))

(assert (=> bs!850954 (= (= lt!1693782 lt!1692734) (= lambda!171673 lambda!171463))))

(assert (=> bs!850956 (= (= lt!1693782 lt!1693704) (= lambda!171673 lambda!171666))))

(assert (=> b!4515867 (= (= lt!1693782 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171673 lambda!171671))))

(assert (=> bs!850936 (= (= lt!1693782 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171673 lambda!171662))))

(assert (=> b!4515867 true))

(declare-fun bs!850990 () Bool)

(declare-fun d!1389991 () Bool)

(assert (= bs!850990 (and d!1389991 b!4514749)))

(declare-fun lt!1693780 () ListMap!3577)

(declare-fun lambda!171675 () Int)

(assert (=> bs!850990 (= (= lt!1693780 lt!1692939) (= lambda!171675 lambda!171465))))

(declare-fun bs!850993 () Bool)

(assert (= bs!850993 (and d!1389991 b!4515446)))

(assert (=> bs!850993 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171675 lambda!171627))))

(declare-fun bs!850995 () Bool)

(assert (= bs!850995 (and d!1389991 b!4515255)))

(assert (=> bs!850995 (= (= lt!1693780 lt!1693368) (= lambda!171675 lambda!171600))))

(declare-fun bs!850997 () Bool)

(assert (= bs!850997 (and d!1389991 b!4515553)))

(assert (=> bs!850997 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171675 lambda!171638))))

(declare-fun bs!850999 () Bool)

(assert (= bs!850999 (and d!1389991 d!1389715)))

(assert (=> bs!850999 (= (= lt!1693780 lt!1693479) (= lambda!171675 lambda!171631))))

(declare-fun bs!851000 () Bool)

(assert (= bs!851000 (and d!1389991 b!4515788)))

(assert (=> bs!851000 (= (= lt!1693780 lt!1693706) (= lambda!171675 lambda!171664))))

(declare-fun bs!851002 () Bool)

(assert (= bs!851002 (and d!1389991 d!1389607)))

(assert (=> bs!851002 (= (= lt!1693780 lt!1693147) (= lambda!171675 lambda!171612))))

(declare-fun bs!851004 () Bool)

(assert (= bs!851004 (and d!1389991 b!4515552)))

(assert (=> bs!851004 (= (= lt!1693780 lt!1693536) (= lambda!171675 lambda!171642))))

(declare-fun bs!851006 () Bool)

(assert (= bs!851006 (and d!1389991 b!4514932)))

(assert (=> bs!851006 (= (= lt!1693780 lt!1692722) (= lambda!171675 lambda!171538))))

(declare-fun bs!851008 () Bool)

(assert (= bs!851008 (and d!1389991 b!4515052)))

(assert (=> bs!851008 (= (= lt!1693780 lt!1693223) (= lambda!171675 lambda!171559))))

(declare-fun bs!851010 () Bool)

(assert (= bs!851010 (and d!1389991 b!4515867)))

(assert (=> bs!851010 (= (= lt!1693780 lt!1693782) (= lambda!171675 lambda!171673))))

(declare-fun bs!851012 () Bool)

(assert (= bs!851012 (and d!1389991 d!1389775)))

(assert (=> bs!851012 (= (= lt!1693780 lt!1693534) (= lambda!171675 lambda!171643))))

(declare-fun bs!851014 () Bool)

(assert (= bs!851014 (and d!1389991 b!4515445)))

(assert (=> bs!851014 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171675 lambda!171629))))

(assert (=> bs!850990 (= (= lt!1693780 lt!1692734) (= lambda!171675 lambda!171464))))

(assert (=> bs!851008 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171675 lambda!171558))))

(declare-fun bs!851017 () Bool)

(assert (= bs!851017 (and d!1389991 d!1389235)))

(assert (=> bs!851017 (not (= lambda!171675 lambda!171416))))

(declare-fun bs!851019 () Bool)

(assert (= bs!851019 (and d!1389991 d!1389427)))

(assert (=> bs!851019 (= (= lt!1693780 lt!1693145) (= lambda!171675 lambda!171540))))

(assert (=> bs!851006 (= (= lt!1693780 lt!1693147) (= lambda!171675 lambda!171539))))

(assert (=> bs!850995 (= (= lt!1693780 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171675 lambda!171599))))

(declare-fun bs!851022 () Bool)

(assert (= bs!851022 (and d!1389991 b!4515789)))

(assert (=> bs!851022 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171675 lambda!171660))))

(declare-fun bs!851023 () Bool)

(assert (= bs!851023 (and d!1389991 b!4514933)))

(assert (=> bs!851023 (= (= lt!1693780 lt!1692722) (= lambda!171675 lambda!171537))))

(declare-fun bs!851025 () Bool)

(assert (= bs!851025 (and d!1389991 d!1389769)))

(assert (=> bs!851025 (= (= lt!1693780 lt!1692734) (= lambda!171675 lambda!171635))))

(declare-fun bs!851027 () Bool)

(assert (= bs!851027 (and d!1389991 b!4515256)))

(assert (=> bs!851027 (= (= lt!1693780 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171675 lambda!171598))))

(declare-fun bs!851029 () Bool)

(assert (= bs!851029 (and d!1389991 d!1389279)))

(assert (=> bs!851029 (= (= lt!1693780 lt!1692937) (= lambda!171675 lambda!171466))))

(declare-fun bs!851031 () Bool)

(assert (= bs!851031 (and d!1389991 b!4515053)))

(assert (=> bs!851031 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171675 lambda!171557))))

(assert (=> bs!851004 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171675 lambda!171641))))

(declare-fun bs!851033 () Bool)

(assert (= bs!851033 (and d!1389991 d!1389469)))

(assert (=> bs!851033 (= (= lt!1693780 lt!1693221) (= lambda!171675 lambda!171560))))

(assert (=> bs!851014 (= (= lt!1693780 lt!1693481) (= lambda!171675 lambda!171630))))

(declare-fun bs!851035 () Bool)

(assert (= bs!851035 (and d!1389991 b!4515868)))

(assert (=> bs!851035 (= (= lt!1693780 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171675 lambda!171670))))

(declare-fun bs!851036 () Bool)

(assert (= bs!851036 (and d!1389991 d!1389575)))

(assert (=> bs!851036 (= (= lt!1693780 lt!1693366) (= lambda!171675 lambda!171601))))

(declare-fun bs!851037 () Bool)

(assert (= bs!851037 (and d!1389991 b!4514750)))

(assert (=> bs!851037 (= (= lt!1693780 lt!1692734) (= lambda!171675 lambda!171463))))

(declare-fun bs!851038 () Bool)

(assert (= bs!851038 (and d!1389991 d!1389935)))

(assert (=> bs!851038 (= (= lt!1693780 lt!1693704) (= lambda!171675 lambda!171666))))

(assert (=> bs!851010 (= (= lt!1693780 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171675 lambda!171671))))

(assert (=> bs!851000 (= (= lt!1693780 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171675 lambda!171662))))

(assert (=> d!1389991 true))

(declare-fun call!314518 () Bool)

(declare-fun bm!314513 () Bool)

(declare-fun c!770444 () Bool)

(assert (=> bm!314513 (= call!314518 (forall!10247 (ite c!770444 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (t!357714 (t!357714 (_2!28820 lt!1692742)))) (ite c!770444 lambda!171670 lambda!171673)))))

(declare-fun bm!314514 () Bool)

(declare-fun call!314519 () Bool)

(assert (=> bm!314514 (= call!314519 (forall!10247 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (ite c!770444 lambda!171670 lambda!171673)))))

(declare-fun bm!314515 () Bool)

(declare-fun call!314520 () Unit!94076)

(assert (=> bm!314515 (= call!314520 (lemmaContainsAllItsOwnKeys!331 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun b!4515866 () Bool)

(declare-fun e!2813388 () Bool)

(assert (=> b!4515866 (= e!2813388 call!314519)))

(declare-fun e!2813387 () ListMap!3577)

(assert (=> b!4515867 (= e!2813387 lt!1693782)))

(declare-fun lt!1693786 () ListMap!3577)

(assert (=> b!4515867 (= lt!1693786 (+!1527 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> b!4515867 (= lt!1693782 (addToMapMapFromBucket!681 (t!357714 (t!357714 (_2!28820 lt!1692742))) (+!1527 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) (h!56475 (t!357714 (_2!28820 lt!1692742))))))))

(declare-fun lt!1693778 () Unit!94076)

(assert (=> b!4515867 (= lt!1693778 call!314520)))

(assert (=> b!4515867 (forall!10247 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) lambda!171671)))

(declare-fun lt!1693774 () Unit!94076)

(assert (=> b!4515867 (= lt!1693774 lt!1693778)))

(assert (=> b!4515867 (forall!10247 (toList!4315 lt!1693786) lambda!171673)))

(declare-fun lt!1693789 () Unit!94076)

(declare-fun Unit!94313 () Unit!94076)

(assert (=> b!4515867 (= lt!1693789 Unit!94313)))

(assert (=> b!4515867 call!314518))

(declare-fun lt!1693779 () Unit!94076)

(declare-fun Unit!94314 () Unit!94076)

(assert (=> b!4515867 (= lt!1693779 Unit!94314)))

(declare-fun lt!1693781 () Unit!94076)

(declare-fun Unit!94315 () Unit!94076)

(assert (=> b!4515867 (= lt!1693781 Unit!94315)))

(declare-fun lt!1693788 () Unit!94076)

(assert (=> b!4515867 (= lt!1693788 (forallContained!2498 (toList!4315 lt!1693786) lambda!171673 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(assert (=> b!4515867 (contains!13343 lt!1693786 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693787 () Unit!94076)

(declare-fun Unit!94316 () Unit!94076)

(assert (=> b!4515867 (= lt!1693787 Unit!94316)))

(assert (=> b!4515867 (contains!13343 lt!1693782 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693773 () Unit!94076)

(declare-fun Unit!94317 () Unit!94076)

(assert (=> b!4515867 (= lt!1693773 Unit!94317)))

(assert (=> b!4515867 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171673)))

(declare-fun lt!1693776 () Unit!94076)

(declare-fun Unit!94318 () Unit!94076)

(assert (=> b!4515867 (= lt!1693776 Unit!94318)))

(assert (=> b!4515867 (forall!10247 (toList!4315 lt!1693786) lambda!171673)))

(declare-fun lt!1693771 () Unit!94076)

(declare-fun Unit!94319 () Unit!94076)

(assert (=> b!4515867 (= lt!1693771 Unit!94319)))

(declare-fun lt!1693784 () Unit!94076)

(declare-fun Unit!94320 () Unit!94076)

(assert (=> b!4515867 (= lt!1693784 Unit!94320)))

(declare-fun lt!1693783 () Unit!94076)

(assert (=> b!4515867 (= lt!1693783 (addForallContainsKeyThenBeforeAdding!331 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693782 (_1!28819 (h!56475 (t!357714 (_2!28820 lt!1692742)))) (_2!28819 (h!56475 (t!357714 (_2!28820 lt!1692742))))))))

(assert (=> b!4515867 (forall!10247 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) lambda!171673)))

(declare-fun lt!1693769 () Unit!94076)

(assert (=> b!4515867 (= lt!1693769 lt!1693783)))

(assert (=> b!4515867 (forall!10247 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) lambda!171673)))

(declare-fun lt!1693775 () Unit!94076)

(declare-fun Unit!94321 () Unit!94076)

(assert (=> b!4515867 (= lt!1693775 Unit!94321)))

(declare-fun res!1879013 () Bool)

(assert (=> b!4515867 (= res!1879013 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171673))))

(assert (=> b!4515867 (=> (not res!1879013) (not e!2813388))))

(assert (=> b!4515867 e!2813388))

(declare-fun lt!1693772 () Unit!94076)

(declare-fun Unit!94322 () Unit!94076)

(assert (=> b!4515867 (= lt!1693772 Unit!94322)))

(declare-fun b!4515865 () Bool)

(declare-fun res!1879014 () Bool)

(declare-fun e!2813386 () Bool)

(assert (=> b!4515865 (=> (not res!1879014) (not e!2813386))))

(assert (=> b!4515865 (= res!1879014 (forall!10247 (toList!4315 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) lambda!171675))))

(assert (=> d!1389991 e!2813386))

(declare-fun res!1879015 () Bool)

(assert (=> d!1389991 (=> (not res!1879015) (not e!2813386))))

(assert (=> d!1389991 (= res!1879015 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171675))))

(assert (=> d!1389991 (= lt!1693780 e!2813387)))

(assert (=> d!1389991 (= c!770444 ((_ is Nil!50628) (t!357714 (_2!28820 lt!1692742))))))

(assert (=> d!1389991 (noDuplicateKeys!1154 (t!357714 (_2!28820 lt!1692742)))))

(assert (=> d!1389991 (= (addToMapMapFromBucket!681 (t!357714 (_2!28820 lt!1692742)) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) lt!1693780)))

(assert (=> b!4515868 (= e!2813387 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun lt!1693777 () Unit!94076)

(assert (=> b!4515868 (= lt!1693777 call!314520)))

(assert (=> b!4515868 call!314519))

(declare-fun lt!1693770 () Unit!94076)

(assert (=> b!4515868 (= lt!1693770 lt!1693777)))

(assert (=> b!4515868 call!314518))

(declare-fun lt!1693785 () Unit!94076)

(declare-fun Unit!94323 () Unit!94076)

(assert (=> b!4515868 (= lt!1693785 Unit!94323)))

(declare-fun b!4515869 () Bool)

(assert (=> b!4515869 (= e!2813386 (invariantList!1011 (toList!4315 lt!1693780)))))

(assert (= (and d!1389991 c!770444) b!4515868))

(assert (= (and d!1389991 (not c!770444)) b!4515867))

(assert (= (and b!4515867 res!1879013) b!4515866))

(assert (= (or b!4515868 b!4515867) bm!314513))

(assert (= (or b!4515868 b!4515866) bm!314514))

(assert (= (or b!4515868 b!4515867) bm!314515))

(assert (= (and d!1389991 res!1879015) b!4515865))

(assert (= (and b!4515865 res!1879014) b!4515869))

(declare-fun m!5259973 () Bool)

(assert (=> bm!314513 m!5259973))

(declare-fun m!5259975 () Bool)

(assert (=> b!4515867 m!5259975))

(declare-fun m!5259977 () Bool)

(assert (=> b!4515867 m!5259977))

(declare-fun m!5259979 () Bool)

(assert (=> b!4515867 m!5259979))

(declare-fun m!5259981 () Bool)

(assert (=> b!4515867 m!5259981))

(assert (=> b!4515867 m!5259981))

(declare-fun m!5259983 () Bool)

(assert (=> b!4515867 m!5259983))

(assert (=> b!4515867 m!5259975))

(declare-fun m!5259985 () Bool)

(assert (=> b!4515867 m!5259985))

(assert (=> b!4515867 m!5257727))

(declare-fun m!5259987 () Bool)

(assert (=> b!4515867 m!5259987))

(assert (=> b!4515867 m!5257727))

(assert (=> b!4515867 m!5259977))

(assert (=> b!4515867 m!5259983))

(declare-fun m!5259989 () Bool)

(assert (=> b!4515867 m!5259989))

(declare-fun m!5259991 () Bool)

(assert (=> b!4515867 m!5259991))

(declare-fun m!5259993 () Bool)

(assert (=> b!4515867 m!5259993))

(declare-fun m!5259995 () Bool)

(assert (=> bm!314514 m!5259995))

(assert (=> bm!314515 m!5257727))

(declare-fun m!5259997 () Bool)

(assert (=> bm!314515 m!5259997))

(declare-fun m!5259999 () Bool)

(assert (=> b!4515869 m!5259999))

(declare-fun m!5260001 () Bool)

(assert (=> b!4515865 m!5260001))

(declare-fun m!5260003 () Bool)

(assert (=> d!1389991 m!5260003))

(assert (=> d!1389991 m!5258711))

(assert (=> b!4514749 d!1389991))

(declare-fun b!4515902 () Bool)

(declare-fun e!2813413 () Bool)

(assert (=> b!4515902 (= e!2813413 (contains!13345 (keys!17582 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun d!1390015 () Bool)

(declare-fun e!2813408 () Bool)

(assert (=> d!1390015 e!2813408))

(declare-fun res!1879028 () Bool)

(assert (=> d!1390015 (=> res!1879028 e!2813408)))

(declare-fun e!2813411 () Bool)

(assert (=> d!1390015 (= res!1879028 e!2813411)))

(declare-fun res!1879029 () Bool)

(assert (=> d!1390015 (=> (not res!1879029) (not e!2813411))))

(declare-fun lt!1693818 () Bool)

(assert (=> d!1390015 (= res!1879029 (not lt!1693818))))

(declare-fun lt!1693825 () Bool)

(assert (=> d!1390015 (= lt!1693818 lt!1693825)))

(declare-fun lt!1693823 () Unit!94076)

(declare-fun e!2813410 () Unit!94076)

(assert (=> d!1390015 (= lt!1693823 e!2813410)))

(declare-fun c!770456 () Bool)

(assert (=> d!1390015 (= c!770456 lt!1693825)))

(assert (=> d!1390015 (= lt!1693825 (containsKey!1766 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390015 (= (contains!13343 lt!1692943 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693818)))

(declare-fun b!4515903 () Bool)

(declare-fun e!2813409 () List!50755)

(assert (=> b!4515903 (= e!2813409 (keys!17582 lt!1692943))))

(declare-fun b!4515904 () Bool)

(assert (=> b!4515904 (= e!2813409 (getKeysList!459 (toList!4315 lt!1692943)))))

(declare-fun b!4515905 () Bool)

(declare-fun e!2813412 () Unit!94076)

(declare-fun Unit!94324 () Unit!94076)

(assert (=> b!4515905 (= e!2813412 Unit!94324)))

(declare-fun b!4515906 () Bool)

(declare-fun lt!1693819 () Unit!94076)

(assert (=> b!4515906 (= e!2813410 lt!1693819)))

(declare-fun lt!1693821 () Unit!94076)

(assert (=> b!4515906 (= lt!1693821 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4515906 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693824 () Unit!94076)

(assert (=> b!4515906 (= lt!1693824 lt!1693821)))

(assert (=> b!4515906 (= lt!1693819 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun call!314527 () Bool)

(assert (=> b!4515906 call!314527))

(declare-fun b!4515907 () Bool)

(assert (=> b!4515907 (= e!2813411 (not (contains!13345 (keys!17582 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515908 () Bool)

(assert (=> b!4515908 (= e!2813408 e!2813413)))

(declare-fun res!1879030 () Bool)

(assert (=> b!4515908 (=> (not res!1879030) (not e!2813413))))

(assert (=> b!4515908 (= res!1879030 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515909 () Bool)

(assert (=> b!4515909 (= e!2813410 e!2813412)))

(declare-fun c!770457 () Bool)

(assert (=> b!4515909 (= c!770457 call!314527)))

(declare-fun b!4515910 () Bool)

(assert (=> b!4515910 false))

(declare-fun lt!1693822 () Unit!94076)

(declare-fun lt!1693820 () Unit!94076)

(assert (=> b!4515910 (= lt!1693822 lt!1693820)))

(assert (=> b!4515910 (containsKey!1766 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4515910 (= lt!1693820 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692943) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun Unit!94325 () Unit!94076)

(assert (=> b!4515910 (= e!2813412 Unit!94325)))

(declare-fun bm!314522 () Bool)

(assert (=> bm!314522 (= call!314527 (contains!13345 e!2813409 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun c!770455 () Bool)

(assert (=> bm!314522 (= c!770455 c!770456)))

(assert (= (and d!1390015 c!770456) b!4515906))

(assert (= (and d!1390015 (not c!770456)) b!4515909))

(assert (= (and b!4515909 c!770457) b!4515910))

(assert (= (and b!4515909 (not c!770457)) b!4515905))

(assert (= (or b!4515906 b!4515909) bm!314522))

(assert (= (and bm!314522 c!770455) b!4515904))

(assert (= (and bm!314522 (not c!770455)) b!4515903))

(assert (= (and d!1390015 res!1879029) b!4515907))

(assert (= (and d!1390015 (not res!1879028)) b!4515908))

(assert (= (and b!4515908 res!1879030) b!4515902))

(declare-fun m!5260005 () Bool)

(assert (=> bm!314522 m!5260005))

(declare-fun m!5260007 () Bool)

(assert (=> b!4515903 m!5260007))

(assert (=> b!4515902 m!5260007))

(assert (=> b!4515902 m!5260007))

(declare-fun m!5260009 () Bool)

(assert (=> b!4515902 m!5260009))

(declare-fun m!5260011 () Bool)

(assert (=> d!1390015 m!5260011))

(declare-fun m!5260013 () Bool)

(assert (=> b!4515906 m!5260013))

(declare-fun m!5260015 () Bool)

(assert (=> b!4515906 m!5260015))

(assert (=> b!4515906 m!5260015))

(declare-fun m!5260017 () Bool)

(assert (=> b!4515906 m!5260017))

(declare-fun m!5260019 () Bool)

(assert (=> b!4515906 m!5260019))

(assert (=> b!4515910 m!5260011))

(declare-fun m!5260021 () Bool)

(assert (=> b!4515910 m!5260021))

(declare-fun m!5260023 () Bool)

(assert (=> b!4515904 m!5260023))

(assert (=> b!4515907 m!5260007))

(assert (=> b!4515907 m!5260007))

(assert (=> b!4515907 m!5260009))

(assert (=> b!4515908 m!5260015))

(assert (=> b!4515908 m!5260015))

(assert (=> b!4515908 m!5260017))

(assert (=> b!4514749 d!1390015))

(declare-fun d!1390017 () Bool)

(declare-fun res!1879031 () Bool)

(declare-fun e!2813414 () Bool)

(assert (=> d!1390017 (=> res!1879031 e!2813414)))

(assert (=> d!1390017 (= res!1879031 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1390017 (= (forall!10247 (_2!28820 lt!1692742) lambda!171465) e!2813414)))

(declare-fun b!4515911 () Bool)

(declare-fun e!2813415 () Bool)

(assert (=> b!4515911 (= e!2813414 e!2813415)))

(declare-fun res!1879032 () Bool)

(assert (=> b!4515911 (=> (not res!1879032) (not e!2813415))))

(assert (=> b!4515911 (= res!1879032 (dynLambda!21153 lambda!171465 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun b!4515912 () Bool)

(assert (=> b!4515912 (= e!2813415 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171465))))

(assert (= (and d!1390017 (not res!1879031)) b!4515911))

(assert (= (and b!4515911 res!1879032) b!4515912))

(declare-fun b_lambda!154225 () Bool)

(assert (=> (not b_lambda!154225) (not b!4515911)))

(assert (=> b!4515911 m!5259925))

(declare-fun m!5260025 () Bool)

(assert (=> b!4515912 m!5260025))

(assert (=> b!4514749 d!1390017))

(declare-fun b!4515913 () Bool)

(declare-fun e!2813421 () Bool)

(assert (=> b!4515913 (= e!2813421 (contains!13345 (keys!17582 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun d!1390019 () Bool)

(declare-fun e!2813416 () Bool)

(assert (=> d!1390019 e!2813416))

(declare-fun res!1879033 () Bool)

(assert (=> d!1390019 (=> res!1879033 e!2813416)))

(declare-fun e!2813419 () Bool)

(assert (=> d!1390019 (= res!1879033 e!2813419)))

(declare-fun res!1879034 () Bool)

(assert (=> d!1390019 (=> (not res!1879034) (not e!2813419))))

(declare-fun lt!1693826 () Bool)

(assert (=> d!1390019 (= res!1879034 (not lt!1693826))))

(declare-fun lt!1693833 () Bool)

(assert (=> d!1390019 (= lt!1693826 lt!1693833)))

(declare-fun lt!1693831 () Unit!94076)

(declare-fun e!2813418 () Unit!94076)

(assert (=> d!1390019 (= lt!1693831 e!2813418)))

(declare-fun c!770459 () Bool)

(assert (=> d!1390019 (= c!770459 lt!1693833)))

(assert (=> d!1390019 (= lt!1693833 (containsKey!1766 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390019 (= (contains!13343 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693826)))

(declare-fun b!4515914 () Bool)

(declare-fun e!2813417 () List!50755)

(assert (=> b!4515914 (= e!2813417 (keys!17582 lt!1692939))))

(declare-fun b!4515915 () Bool)

(assert (=> b!4515915 (= e!2813417 (getKeysList!459 (toList!4315 lt!1692939)))))

(declare-fun b!4515916 () Bool)

(declare-fun e!2813420 () Unit!94076)

(declare-fun Unit!94326 () Unit!94076)

(assert (=> b!4515916 (= e!2813420 Unit!94326)))

(declare-fun b!4515917 () Bool)

(declare-fun lt!1693827 () Unit!94076)

(assert (=> b!4515917 (= e!2813418 lt!1693827)))

(declare-fun lt!1693829 () Unit!94076)

(assert (=> b!4515917 (= lt!1693829 (lemmaContainsKeyImpliesGetValueByKeyDefined!985 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> b!4515917 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693832 () Unit!94076)

(assert (=> b!4515917 (= lt!1693832 lt!1693829)))

(assert (=> b!4515917 (= lt!1693827 (lemmaInListThenGetKeysListContains!455 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun call!314528 () Bool)

(assert (=> b!4515917 call!314528))

(declare-fun b!4515918 () Bool)

(assert (=> b!4515918 (= e!2813419 (not (contains!13345 (keys!17582 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515919 () Bool)

(assert (=> b!4515919 (= e!2813416 e!2813421)))

(declare-fun res!1879035 () Bool)

(assert (=> b!4515919 (=> (not res!1879035) (not e!2813421))))

(assert (=> b!4515919 (= res!1879035 (isDefined!8388 (getValueByKey!1081 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515920 () Bool)

(assert (=> b!4515920 (= e!2813418 e!2813420)))

(declare-fun c!770460 () Bool)

(assert (=> b!4515920 (= c!770460 call!314528)))

(declare-fun b!4515921 () Bool)

(assert (=> b!4515921 false))

(declare-fun lt!1693830 () Unit!94076)

(declare-fun lt!1693828 () Unit!94076)

(assert (=> b!4515921 (= lt!1693830 lt!1693828)))

(assert (=> b!4515921 (containsKey!1766 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742))))))

(assert (=> b!4515921 (= lt!1693828 (lemmaInGetKeysListThenContainsKey!458 (toList!4315 lt!1692939) (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun Unit!94327 () Unit!94076)

(assert (=> b!4515921 (= e!2813420 Unit!94327)))

(declare-fun bm!314523 () Bool)

(assert (=> bm!314523 (= call!314528 (contains!13345 e!2813417 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun c!770458 () Bool)

(assert (=> bm!314523 (= c!770458 c!770459)))

(assert (= (and d!1390019 c!770459) b!4515917))

(assert (= (and d!1390019 (not c!770459)) b!4515920))

(assert (= (and b!4515920 c!770460) b!4515921))

(assert (= (and b!4515920 (not c!770460)) b!4515916))

(assert (= (or b!4515917 b!4515920) bm!314523))

(assert (= (and bm!314523 c!770458) b!4515915))

(assert (= (and bm!314523 (not c!770458)) b!4515914))

(assert (= (and d!1390019 res!1879034) b!4515918))

(assert (= (and d!1390019 (not res!1879033)) b!4515919))

(assert (= (and b!4515919 res!1879035) b!4515913))

(declare-fun m!5260027 () Bool)

(assert (=> bm!314523 m!5260027))

(declare-fun m!5260029 () Bool)

(assert (=> b!4515914 m!5260029))

(assert (=> b!4515913 m!5260029))

(assert (=> b!4515913 m!5260029))

(declare-fun m!5260031 () Bool)

(assert (=> b!4515913 m!5260031))

(declare-fun m!5260033 () Bool)

(assert (=> d!1390019 m!5260033))

(declare-fun m!5260035 () Bool)

(assert (=> b!4515917 m!5260035))

(declare-fun m!5260037 () Bool)

(assert (=> b!4515917 m!5260037))

(assert (=> b!4515917 m!5260037))

(declare-fun m!5260039 () Bool)

(assert (=> b!4515917 m!5260039))

(declare-fun m!5260041 () Bool)

(assert (=> b!4515917 m!5260041))

(assert (=> b!4515921 m!5260033))

(declare-fun m!5260043 () Bool)

(assert (=> b!4515921 m!5260043))

(declare-fun m!5260045 () Bool)

(assert (=> b!4515915 m!5260045))

(assert (=> b!4515918 m!5260029))

(assert (=> b!4515918 m!5260029))

(assert (=> b!4515918 m!5260031))

(assert (=> b!4515919 m!5260037))

(assert (=> b!4515919 m!5260037))

(assert (=> b!4515919 m!5260039))

(assert (=> b!4514749 d!1390019))

(declare-fun bs!851061 () Bool)

(declare-fun d!1390021 () Bool)

(assert (= bs!851061 (and d!1390021 b!4514749)))

(declare-fun lambda!171678 () Int)

(assert (=> bs!851061 (= lambda!171678 lambda!171465)))

(declare-fun bs!851063 () Bool)

(assert (= bs!851063 (and d!1390021 b!4515446)))

(assert (=> bs!851063 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171678 lambda!171627))))

(declare-fun bs!851065 () Bool)

(assert (= bs!851065 (and d!1390021 b!4515255)))

(assert (=> bs!851065 (= (= lt!1692939 lt!1693368) (= lambda!171678 lambda!171600))))

(declare-fun bs!851066 () Bool)

(assert (= bs!851066 (and d!1390021 b!4515553)))

(assert (=> bs!851066 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171678 lambda!171638))))

(declare-fun bs!851068 () Bool)

(assert (= bs!851068 (and d!1390021 d!1389715)))

(assert (=> bs!851068 (= (= lt!1692939 lt!1693479) (= lambda!171678 lambda!171631))))

(declare-fun bs!851070 () Bool)

(assert (= bs!851070 (and d!1390021 b!4515788)))

(assert (=> bs!851070 (= (= lt!1692939 lt!1693706) (= lambda!171678 lambda!171664))))

(declare-fun bs!851072 () Bool)

(assert (= bs!851072 (and d!1390021 d!1389607)))

(assert (=> bs!851072 (= (= lt!1692939 lt!1693147) (= lambda!171678 lambda!171612))))

(declare-fun bs!851074 () Bool)

(assert (= bs!851074 (and d!1390021 d!1389991)))

(assert (=> bs!851074 (= (= lt!1692939 lt!1693780) (= lambda!171678 lambda!171675))))

(declare-fun bs!851076 () Bool)

(assert (= bs!851076 (and d!1390021 b!4515552)))

(assert (=> bs!851076 (= (= lt!1692939 lt!1693536) (= lambda!171678 lambda!171642))))

(declare-fun bs!851077 () Bool)

(assert (= bs!851077 (and d!1390021 b!4514932)))

(assert (=> bs!851077 (= (= lt!1692939 lt!1692722) (= lambda!171678 lambda!171538))))

(declare-fun bs!851079 () Bool)

(assert (= bs!851079 (and d!1390021 b!4515052)))

(assert (=> bs!851079 (= (= lt!1692939 lt!1693223) (= lambda!171678 lambda!171559))))

(declare-fun bs!851080 () Bool)

(assert (= bs!851080 (and d!1390021 b!4515867)))

(assert (=> bs!851080 (= (= lt!1692939 lt!1693782) (= lambda!171678 lambda!171673))))

(declare-fun bs!851081 () Bool)

(assert (= bs!851081 (and d!1390021 d!1389775)))

(assert (=> bs!851081 (= (= lt!1692939 lt!1693534) (= lambda!171678 lambda!171643))))

(declare-fun bs!851082 () Bool)

(assert (= bs!851082 (and d!1390021 b!4515445)))

(assert (=> bs!851082 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171678 lambda!171629))))

(assert (=> bs!851061 (= (= lt!1692939 lt!1692734) (= lambda!171678 lambda!171464))))

(assert (=> bs!851079 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171678 lambda!171558))))

(declare-fun bs!851083 () Bool)

(assert (= bs!851083 (and d!1390021 d!1389235)))

(assert (=> bs!851083 (not (= lambda!171678 lambda!171416))))

(declare-fun bs!851084 () Bool)

(assert (= bs!851084 (and d!1390021 d!1389427)))

(assert (=> bs!851084 (= (= lt!1692939 lt!1693145) (= lambda!171678 lambda!171540))))

(assert (=> bs!851077 (= (= lt!1692939 lt!1693147) (= lambda!171678 lambda!171539))))

(assert (=> bs!851065 (= (= lt!1692939 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171678 lambda!171599))))

(declare-fun bs!851085 () Bool)

(assert (= bs!851085 (and d!1390021 b!4515789)))

(assert (=> bs!851085 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171678 lambda!171660))))

(declare-fun bs!851086 () Bool)

(assert (= bs!851086 (and d!1390021 b!4514933)))

(assert (=> bs!851086 (= (= lt!1692939 lt!1692722) (= lambda!171678 lambda!171537))))

(declare-fun bs!851087 () Bool)

(assert (= bs!851087 (and d!1390021 d!1389769)))

(assert (=> bs!851087 (= (= lt!1692939 lt!1692734) (= lambda!171678 lambda!171635))))

(declare-fun bs!851088 () Bool)

(assert (= bs!851088 (and d!1390021 b!4515256)))

(assert (=> bs!851088 (= (= lt!1692939 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171678 lambda!171598))))

(declare-fun bs!851089 () Bool)

(assert (= bs!851089 (and d!1390021 d!1389279)))

(assert (=> bs!851089 (= (= lt!1692939 lt!1692937) (= lambda!171678 lambda!171466))))

(declare-fun bs!851090 () Bool)

(assert (= bs!851090 (and d!1390021 b!4515053)))

(assert (=> bs!851090 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171678 lambda!171557))))

(assert (=> bs!851076 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171678 lambda!171641))))

(declare-fun bs!851091 () Bool)

(assert (= bs!851091 (and d!1390021 d!1389469)))

(assert (=> bs!851091 (= (= lt!1692939 lt!1693221) (= lambda!171678 lambda!171560))))

(assert (=> bs!851082 (= (= lt!1692939 lt!1693481) (= lambda!171678 lambda!171630))))

(declare-fun bs!851092 () Bool)

(assert (= bs!851092 (and d!1390021 b!4515868)))

(assert (=> bs!851092 (= (= lt!1692939 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171678 lambda!171670))))

(declare-fun bs!851093 () Bool)

(assert (= bs!851093 (and d!1390021 d!1389575)))

(assert (=> bs!851093 (= (= lt!1692939 lt!1693366) (= lambda!171678 lambda!171601))))

(declare-fun bs!851094 () Bool)

(assert (= bs!851094 (and d!1390021 b!4514750)))

(assert (=> bs!851094 (= (= lt!1692939 lt!1692734) (= lambda!171678 lambda!171463))))

(declare-fun bs!851095 () Bool)

(assert (= bs!851095 (and d!1390021 d!1389935)))

(assert (=> bs!851095 (= (= lt!1692939 lt!1693704) (= lambda!171678 lambda!171666))))

(assert (=> bs!851080 (= (= lt!1692939 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171678 lambda!171671))))

(assert (=> bs!851070 (= (= lt!1692939 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171678 lambda!171662))))

(assert (=> d!1390021 true))

(assert (=> d!1390021 (forall!10247 (toList!4315 lt!1692734) lambda!171678)))

(declare-fun lt!1693834 () Unit!94076)

(assert (=> d!1390021 (= lt!1693834 (choose!29434 lt!1692734 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390021 (forall!10247 (toList!4315 (+!1527 lt!1692734 (tuple2!51051 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))) lambda!171678)))

(assert (=> d!1390021 (= (addForallContainsKeyThenBeforeAdding!331 lt!1692734 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))) lt!1693834)))

(declare-fun bs!851096 () Bool)

(assert (= bs!851096 d!1390021))

(declare-fun m!5260075 () Bool)

(assert (=> bs!851096 m!5260075))

(declare-fun m!5260079 () Bool)

(assert (=> bs!851096 m!5260079))

(declare-fun m!5260084 () Bool)

(assert (=> bs!851096 m!5260084))

(declare-fun m!5260087 () Bool)

(assert (=> bs!851096 m!5260087))

(assert (=> b!4514749 d!1390021))

(declare-fun d!1390025 () Bool)

(declare-fun e!2813422 () Bool)

(assert (=> d!1390025 e!2813422))

(declare-fun res!1879036 () Bool)

(assert (=> d!1390025 (=> (not res!1879036) (not e!2813422))))

(declare-fun lt!1693838 () ListMap!3577)

(assert (=> d!1390025 (= res!1879036 (contains!13343 lt!1693838 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun lt!1693836 () List!50752)

(assert (=> d!1390025 (= lt!1693838 (ListMap!3578 lt!1693836))))

(declare-fun lt!1693835 () Unit!94076)

(declare-fun lt!1693839 () Unit!94076)

(assert (=> d!1390025 (= lt!1693835 lt!1693839)))

(assert (=> d!1390025 (= (getValueByKey!1081 lt!1693836 (_1!28819 (h!56475 (_2!28820 lt!1692742)))) (Some!11100 (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390025 (= lt!1693839 (lemmaContainsTupThenGetReturnValue!668 lt!1693836 (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390025 (= lt!1693836 (insertNoDuplicatedKeys!274 (toList!4315 lt!1692734) (_1!28819 (h!56475 (_2!28820 lt!1692742))) (_2!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> d!1390025 (= (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742))) lt!1693838)))

(declare-fun b!4515922 () Bool)

(declare-fun res!1879037 () Bool)

(assert (=> b!4515922 (=> (not res!1879037) (not e!2813422))))

(assert (=> b!4515922 (= res!1879037 (= (getValueByKey!1081 (toList!4315 lt!1693838) (_1!28819 (h!56475 (_2!28820 lt!1692742)))) (Some!11100 (_2!28819 (h!56475 (_2!28820 lt!1692742))))))))

(declare-fun b!4515923 () Bool)

(assert (=> b!4515923 (= e!2813422 (contains!13347 (toList!4315 lt!1693838) (h!56475 (_2!28820 lt!1692742))))))

(assert (= (and d!1390025 res!1879036) b!4515922))

(assert (= (and b!4515922 res!1879037) b!4515923))

(declare-fun m!5260089 () Bool)

(assert (=> d!1390025 m!5260089))

(declare-fun m!5260091 () Bool)

(assert (=> d!1390025 m!5260091))

(declare-fun m!5260093 () Bool)

(assert (=> d!1390025 m!5260093))

(declare-fun m!5260095 () Bool)

(assert (=> d!1390025 m!5260095))

(declare-fun m!5260097 () Bool)

(assert (=> b!4515922 m!5260097))

(declare-fun m!5260099 () Bool)

(assert (=> b!4515923 m!5260099))

(assert (=> b!4514749 d!1390025))

(declare-fun d!1390027 () Bool)

(declare-fun res!1879038 () Bool)

(declare-fun e!2813424 () Bool)

(assert (=> d!1390027 (=> res!1879038 e!2813424)))

(assert (=> d!1390027 (= res!1879038 ((_ is Nil!50628) (toList!4315 lt!1692734)))))

(assert (=> d!1390027 (= (forall!10247 (toList!4315 lt!1692734) lambda!171465) e!2813424)))

(declare-fun b!4515926 () Bool)

(declare-fun e!2813425 () Bool)

(assert (=> b!4515926 (= e!2813424 e!2813425)))

(declare-fun res!1879039 () Bool)

(assert (=> b!4515926 (=> (not res!1879039) (not e!2813425))))

(assert (=> b!4515926 (= res!1879039 (dynLambda!21153 lambda!171465 (h!56475 (toList!4315 lt!1692734))))))

(declare-fun b!4515927 () Bool)

(assert (=> b!4515927 (= e!2813425 (forall!10247 (t!357714 (toList!4315 lt!1692734)) lambda!171465))))

(assert (= (and d!1390027 (not res!1879038)) b!4515926))

(assert (= (and b!4515926 res!1879039) b!4515927))

(declare-fun b_lambda!154227 () Bool)

(assert (=> (not b_lambda!154227) (not b!4515926)))

(declare-fun m!5260101 () Bool)

(assert (=> b!4515926 m!5260101))

(declare-fun m!5260103 () Bool)

(assert (=> b!4515927 m!5260103))

(assert (=> b!4514749 d!1390027))

(declare-fun d!1390029 () Bool)

(declare-fun res!1879040 () Bool)

(declare-fun e!2813426 () Bool)

(assert (=> d!1390029 (=> res!1879040 e!2813426)))

(assert (=> d!1390029 (= res!1879040 ((_ is Nil!50628) (toList!4315 lt!1692943)))))

(assert (=> d!1390029 (= (forall!10247 (toList!4315 lt!1692943) lambda!171465) e!2813426)))

(declare-fun b!4515928 () Bool)

(declare-fun e!2813427 () Bool)

(assert (=> b!4515928 (= e!2813426 e!2813427)))

(declare-fun res!1879041 () Bool)

(assert (=> b!4515928 (=> (not res!1879041) (not e!2813427))))

(assert (=> b!4515928 (= res!1879041 (dynLambda!21153 lambda!171465 (h!56475 (toList!4315 lt!1692943))))))

(declare-fun b!4515929 () Bool)

(assert (=> b!4515929 (= e!2813427 (forall!10247 (t!357714 (toList!4315 lt!1692943)) lambda!171465))))

(assert (= (and d!1390029 (not res!1879040)) b!4515928))

(assert (= (and b!4515928 res!1879041) b!4515929))

(declare-fun b_lambda!154229 () Bool)

(assert (=> (not b_lambda!154229) (not b!4515928)))

(declare-fun m!5260105 () Bool)

(assert (=> b!4515928 m!5260105))

(declare-fun m!5260107 () Bool)

(assert (=> b!4515929 m!5260107))

(assert (=> b!4514749 d!1390029))

(declare-fun d!1390031 () Bool)

(declare-fun res!1879042 () Bool)

(declare-fun e!2813428 () Bool)

(assert (=> d!1390031 (=> res!1879042 e!2813428)))

(assert (=> d!1390031 (= res!1879042 ((_ is Nil!50628) (toList!4315 lt!1692734)))))

(assert (=> d!1390031 (= (forall!10247 (toList!4315 lt!1692734) lambda!171464) e!2813428)))

(declare-fun b!4515930 () Bool)

(declare-fun e!2813429 () Bool)

(assert (=> b!4515930 (= e!2813428 e!2813429)))

(declare-fun res!1879043 () Bool)

(assert (=> b!4515930 (=> (not res!1879043) (not e!2813429))))

(assert (=> b!4515930 (= res!1879043 (dynLambda!21153 lambda!171464 (h!56475 (toList!4315 lt!1692734))))))

(declare-fun b!4515931 () Bool)

(assert (=> b!4515931 (= e!2813429 (forall!10247 (t!357714 (toList!4315 lt!1692734)) lambda!171464))))

(assert (= (and d!1390031 (not res!1879042)) b!4515930))

(assert (= (and b!4515930 res!1879043) b!4515931))

(declare-fun b_lambda!154231 () Bool)

(assert (=> (not b_lambda!154231) (not b!4515930)))

(declare-fun m!5260109 () Bool)

(assert (=> b!4515930 m!5260109))

(declare-fun m!5260111 () Bool)

(assert (=> b!4515931 m!5260111))

(assert (=> b!4514749 d!1390031))

(assert (=> b!4514587 d!1389693))

(assert (=> b!4514587 d!1389681))

(assert (=> b!4514832 d!1389649))

(assert (=> b!4514832 d!1389653))

(assert (=> d!1389337 d!1389671))

(declare-fun d!1390033 () Bool)

(assert (=> d!1390033 (= (isEmpty!28644 (toList!4316 lm!1477)) ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1389241 d!1390033))

(declare-fun d!1390039 () Bool)

(declare-fun e!2813435 () Bool)

(assert (=> d!1390039 e!2813435))

(declare-fun res!1879048 () Bool)

(assert (=> d!1390039 (=> res!1879048 e!2813435)))

(declare-fun lt!1693842 () Bool)

(assert (=> d!1390039 (= res!1879048 (not lt!1693842))))

(declare-fun lt!1693841 () Bool)

(assert (=> d!1390039 (= lt!1693842 lt!1693841)))

(declare-fun lt!1693843 () Unit!94076)

(declare-fun e!2813434 () Unit!94076)

(assert (=> d!1390039 (= lt!1693843 e!2813434)))

(declare-fun c!770462 () Bool)

(assert (=> d!1390039 (= c!770462 lt!1693841)))

(assert (=> d!1390039 (= lt!1693841 (containsKey!1763 (toList!4316 lt!1692805) (_1!28820 lt!1692742)))))

(assert (=> d!1390039 (= (contains!13342 lt!1692805 (_1!28820 lt!1692742)) lt!1693842)))

(declare-fun b!4515936 () Bool)

(declare-fun lt!1693840 () Unit!94076)

(assert (=> b!4515936 (= e!2813434 lt!1693840)))

(assert (=> b!4515936 (= lt!1693840 (lemmaContainsKeyImpliesGetValueByKeyDefined!982 (toList!4316 lt!1692805) (_1!28820 lt!1692742)))))

(assert (=> b!4515936 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692805) (_1!28820 lt!1692742)))))

(declare-fun b!4515937 () Bool)

(declare-fun Unit!94328 () Unit!94076)

(assert (=> b!4515937 (= e!2813434 Unit!94328)))

(declare-fun b!4515938 () Bool)

(assert (=> b!4515938 (= e!2813435 (isDefined!8385 (getValueByKey!1079 (toList!4316 lt!1692805) (_1!28820 lt!1692742))))))

(assert (= (and d!1390039 c!770462) b!4515936))

(assert (= (and d!1390039 (not c!770462)) b!4515937))

(assert (= (and d!1390039 (not res!1879048)) b!4515938))

(declare-fun m!5260125 () Bool)

(assert (=> d!1390039 m!5260125))

(declare-fun m!5260129 () Bool)

(assert (=> b!4515936 m!5260129))

(assert (=> b!4515936 m!5257547))

(assert (=> b!4515936 m!5257547))

(declare-fun m!5260133 () Bool)

(assert (=> b!4515936 m!5260133))

(assert (=> b!4515938 m!5257547))

(assert (=> b!4515938 m!5257547))

(assert (=> b!4515938 m!5260133))

(assert (=> d!1389259 d!1390039))

(declare-fun b!4515948 () Bool)

(declare-fun e!2813442 () Option!11099)

(assert (=> b!4515948 (= e!2813442 (getValueByKey!1079 (t!357715 lt!1692807) (_1!28820 lt!1692742)))))

(declare-fun b!4515949 () Bool)

(assert (=> b!4515949 (= e!2813442 None!11098)))

(declare-fun b!4515946 () Bool)

(declare-fun e!2813441 () Option!11099)

(assert (=> b!4515946 (= e!2813441 (Some!11098 (_2!28820 (h!56476 lt!1692807))))))

(declare-fun d!1390045 () Bool)

(declare-fun c!770465 () Bool)

(assert (=> d!1390045 (= c!770465 (and ((_ is Cons!50629) lt!1692807) (= (_1!28820 (h!56476 lt!1692807)) (_1!28820 lt!1692742))))))

(assert (=> d!1390045 (= (getValueByKey!1079 lt!1692807 (_1!28820 lt!1692742)) e!2813441)))

(declare-fun b!4515947 () Bool)

(assert (=> b!4515947 (= e!2813441 e!2813442)))

(declare-fun c!770466 () Bool)

(assert (=> b!4515947 (= c!770466 (and ((_ is Cons!50629) lt!1692807) (not (= (_1!28820 (h!56476 lt!1692807)) (_1!28820 lt!1692742)))))))

(assert (= (and d!1390045 c!770465) b!4515946))

(assert (= (and d!1390045 (not c!770465)) b!4515947))

(assert (= (and b!4515947 c!770466) b!4515948))

(assert (= (and b!4515947 (not c!770466)) b!4515949))

(declare-fun m!5260139 () Bool)

(assert (=> b!4515948 m!5260139))

(assert (=> d!1389259 d!1390045))

(declare-fun d!1390051 () Bool)

(assert (=> d!1390051 (= (getValueByKey!1079 lt!1692807 (_1!28820 lt!1692742)) (Some!11098 (_2!28820 lt!1692742)))))

(declare-fun lt!1693844 () Unit!94076)

(assert (=> d!1390051 (= lt!1693844 (choose!29424 lt!1692807 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(declare-fun e!2813445 () Bool)

(assert (=> d!1390051 e!2813445))

(declare-fun res!1879052 () Bool)

(assert (=> d!1390051 (=> (not res!1879052) (not e!2813445))))

(assert (=> d!1390051 (= res!1879052 (isStrictlySorted!424 lt!1692807))))

(assert (=> d!1390051 (= (lemmaContainsTupThenGetReturnValue!666 lt!1692807 (_1!28820 lt!1692742) (_2!28820 lt!1692742)) lt!1693844)))

(declare-fun b!4515954 () Bool)

(declare-fun res!1879053 () Bool)

(assert (=> b!4515954 (=> (not res!1879053) (not e!2813445))))

(assert (=> b!4515954 (= res!1879053 (containsKey!1763 lt!1692807 (_1!28820 lt!1692742)))))

(declare-fun b!4515955 () Bool)

(assert (=> b!4515955 (= e!2813445 (contains!13341 lt!1692807 (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742))))))

(assert (= (and d!1390051 res!1879052) b!4515954))

(assert (= (and b!4515954 res!1879053) b!4515955))

(assert (=> d!1390051 m!5257541))

(declare-fun m!5260143 () Bool)

(assert (=> d!1390051 m!5260143))

(declare-fun m!5260145 () Bool)

(assert (=> d!1390051 m!5260145))

(declare-fun m!5260147 () Bool)

(assert (=> b!4515954 m!5260147))

(declare-fun m!5260149 () Bool)

(assert (=> b!4515955 m!5260149))

(assert (=> d!1389259 d!1390051))

(declare-fun bm!314524 () Bool)

(declare-fun call!314530 () List!50753)

(declare-fun call!314531 () List!50753)

(assert (=> bm!314524 (= call!314530 call!314531)))

(declare-fun d!1390055 () Bool)

(declare-fun e!2813449 () Bool)

(assert (=> d!1390055 e!2813449))

(declare-fun res!1879056 () Bool)

(assert (=> d!1390055 (=> (not res!1879056) (not e!2813449))))

(declare-fun lt!1693846 () List!50753)

(assert (=> d!1390055 (= res!1879056 (isStrictlySorted!424 lt!1693846))))

(declare-fun e!2813448 () List!50753)

(assert (=> d!1390055 (= lt!1693846 e!2813448)))

(declare-fun c!770470 () Bool)

(assert (=> d!1390055 (= c!770470 (and ((_ is Cons!50629) (toList!4316 lt!1692737)) (bvslt (_1!28820 (h!56476 (toList!4316 lt!1692737))) (_1!28820 lt!1692742))))))

(assert (=> d!1390055 (isStrictlySorted!424 (toList!4316 lt!1692737))))

(assert (=> d!1390055 (= (insertStrictlySorted!402 (toList!4316 lt!1692737) (_1!28820 lt!1692742) (_2!28820 lt!1692742)) lt!1693846)))

(declare-fun b!4515958 () Bool)

(declare-fun e!2813452 () List!50753)

(assert (=> b!4515958 (= e!2813452 call!314530)))

(declare-fun b!4515959 () Bool)

(assert (=> b!4515959 (= e!2813448 call!314531)))

(declare-fun b!4515960 () Bool)

(declare-fun e!2813451 () List!50753)

(declare-fun call!314529 () List!50753)

(assert (=> b!4515960 (= e!2813451 call!314529)))

(declare-fun b!4515961 () Bool)

(declare-fun res!1879057 () Bool)

(assert (=> b!4515961 (=> (not res!1879057) (not e!2813449))))

(assert (=> b!4515961 (= res!1879057 (containsKey!1763 lt!1693846 (_1!28820 lt!1692742)))))

(declare-fun b!4515962 () Bool)

(assert (=> b!4515962 (= e!2813449 (contains!13341 lt!1693846 (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742))))))

(declare-fun b!4515963 () Bool)

(assert (=> b!4515963 (= e!2813451 call!314529)))

(declare-fun e!2813450 () List!50753)

(declare-fun c!770469 () Bool)

(declare-fun c!770471 () Bool)

(declare-fun b!4515964 () Bool)

(assert (=> b!4515964 (= e!2813450 (ite c!770469 (t!357715 (toList!4316 lt!1692737)) (ite c!770471 (Cons!50629 (h!56476 (toList!4316 lt!1692737)) (t!357715 (toList!4316 lt!1692737))) Nil!50629)))))

(declare-fun bm!314525 () Bool)

(assert (=> bm!314525 (= call!314529 call!314530)))

(declare-fun b!4515965 () Bool)

(assert (=> b!4515965 (= c!770471 (and ((_ is Cons!50629) (toList!4316 lt!1692737)) (bvsgt (_1!28820 (h!56476 (toList!4316 lt!1692737))) (_1!28820 lt!1692742))))))

(assert (=> b!4515965 (= e!2813452 e!2813451)))

(declare-fun bm!314526 () Bool)

(assert (=> bm!314526 (= call!314531 ($colon$colon!923 e!2813450 (ite c!770470 (h!56476 (toList!4316 lt!1692737)) (tuple2!51053 (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))))

(declare-fun c!770472 () Bool)

(assert (=> bm!314526 (= c!770472 c!770470)))

(declare-fun b!4515966 () Bool)

(assert (=> b!4515966 (= e!2813450 (insertStrictlySorted!402 (t!357715 (toList!4316 lt!1692737)) (_1!28820 lt!1692742) (_2!28820 lt!1692742)))))

(declare-fun b!4515967 () Bool)

(assert (=> b!4515967 (= e!2813448 e!2813452)))

(assert (=> b!4515967 (= c!770469 (and ((_ is Cons!50629) (toList!4316 lt!1692737)) (= (_1!28820 (h!56476 (toList!4316 lt!1692737))) (_1!28820 lt!1692742))))))

(assert (= (and d!1390055 c!770470) b!4515959))

(assert (= (and d!1390055 (not c!770470)) b!4515967))

(assert (= (and b!4515967 c!770469) b!4515958))

(assert (= (and b!4515967 (not c!770469)) b!4515965))

(assert (= (and b!4515965 c!770471) b!4515960))

(assert (= (and b!4515965 (not c!770471)) b!4515963))

(assert (= (or b!4515960 b!4515963) bm!314525))

(assert (= (or b!4515958 bm!314525) bm!314524))

(assert (= (or b!4515959 bm!314524) bm!314526))

(assert (= (and bm!314526 c!770472) b!4515966))

(assert (= (and bm!314526 (not c!770472)) b!4515964))

(assert (= (and d!1390055 res!1879056) b!4515961))

(assert (= (and b!4515961 res!1879057) b!4515962))

(declare-fun m!5260163 () Bool)

(assert (=> b!4515962 m!5260163))

(declare-fun m!5260165 () Bool)

(assert (=> b!4515966 m!5260165))

(declare-fun m!5260167 () Bool)

(assert (=> b!4515961 m!5260167))

(declare-fun m!5260171 () Bool)

(assert (=> bm!314526 m!5260171))

(declare-fun m!5260173 () Bool)

(assert (=> d!1390055 m!5260173))

(declare-fun m!5260175 () Bool)

(assert (=> d!1390055 m!5260175))

(assert (=> d!1389259 d!1390055))

(declare-fun d!1390065 () Bool)

(declare-fun c!770473 () Bool)

(assert (=> d!1390065 (= c!770473 ((_ is Nil!50628) (toList!4315 lt!1692734)))))

(declare-fun e!2813457 () (InoxSet tuple2!51050))

(assert (=> d!1390065 (= (content!8339 (toList!4315 lt!1692734)) e!2813457)))

(declare-fun b!4515972 () Bool)

(assert (=> b!4515972 (= e!2813457 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515973 () Bool)

(assert (=> b!4515973 (= e!2813457 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692734)) true) (content!8339 (t!357714 (toList!4315 lt!1692734)))))))

(assert (= (and d!1390065 c!770473) b!4515972))

(assert (= (and d!1390065 (not c!770473)) b!4515973))

(declare-fun m!5260181 () Bool)

(assert (=> b!4515973 m!5260181))

(declare-fun m!5260183 () Bool)

(assert (=> b!4515973 m!5260183))

(assert (=> d!1389395 d!1390065))

(declare-fun d!1390069 () Bool)

(declare-fun c!770477 () Bool)

(assert (=> d!1390069 (= c!770477 ((_ is Nil!50628) (toList!4315 lt!1692722)))))

(declare-fun e!2813462 () (InoxSet tuple2!51050))

(assert (=> d!1390069 (= (content!8339 (toList!4315 lt!1692722)) e!2813462)))

(declare-fun b!4515981 () Bool)

(assert (=> b!4515981 (= e!2813462 ((as const (Array tuple2!51050 Bool)) false))))

(declare-fun b!4515982 () Bool)

(assert (=> b!4515982 (= e!2813462 ((_ map or) (store ((as const (Array tuple2!51050 Bool)) false) (h!56475 (toList!4315 lt!1692722)) true) (content!8339 (t!357714 (toList!4315 lt!1692722)))))))

(assert (= (and d!1390069 c!770477) b!4515981))

(assert (= (and d!1390069 (not c!770477)) b!4515982))

(declare-fun m!5260185 () Bool)

(assert (=> b!4515982 m!5260185))

(declare-fun m!5260187 () Bool)

(assert (=> b!4515982 m!5260187))

(assert (=> d!1389395 d!1390069))

(assert (=> b!4514924 d!1389437))

(assert (=> b!4514924 d!1389439))

(declare-fun d!1390071 () Bool)

(declare-fun res!1879065 () Bool)

(declare-fun e!2813463 () Bool)

(assert (=> d!1390071 (=> res!1879065 e!2813463)))

(assert (=> d!1390071 (= res!1879065 ((_ is Nil!50628) (toList!4315 lt!1692734)))))

(assert (=> d!1390071 (= (forall!10247 (toList!4315 lt!1692734) (ite c!770169 lambda!171463 lambda!171465)) e!2813463)))

(declare-fun b!4515985 () Bool)

(declare-fun e!2813464 () Bool)

(assert (=> b!4515985 (= e!2813463 e!2813464)))

(declare-fun res!1879066 () Bool)

(assert (=> b!4515985 (=> (not res!1879066) (not e!2813464))))

(assert (=> b!4515985 (= res!1879066 (dynLambda!21153 (ite c!770169 lambda!171463 lambda!171465) (h!56475 (toList!4315 lt!1692734))))))

(declare-fun b!4515986 () Bool)

(assert (=> b!4515986 (= e!2813464 (forall!10247 (t!357714 (toList!4315 lt!1692734)) (ite c!770169 lambda!171463 lambda!171465)))))

(assert (= (and d!1390071 (not res!1879065)) b!4515985))

(assert (= (and b!4515985 res!1879066) b!4515986))

(declare-fun b_lambda!154235 () Bool)

(assert (=> (not b_lambda!154235) (not b!4515985)))

(declare-fun m!5260189 () Bool)

(assert (=> b!4515985 m!5260189))

(declare-fun m!5260191 () Bool)

(assert (=> b!4515986 m!5260191))

(assert (=> bm!314402 d!1390071))

(declare-fun bs!851135 () Bool)

(declare-fun b!4515991 () Bool)

(assert (= bs!851135 (and b!4515991 b!4515595)))

(declare-fun lambda!171682 () Int)

(assert (=> bs!851135 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 lt!1692724)) (= lambda!171682 lambda!171647))))

(declare-fun bs!851138 () Bool)

(assert (= bs!851138 (and b!4515991 b!4515223)))

(assert (=> bs!851138 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 lt!1692728)) (= lambda!171682 lambda!171596))))

(declare-fun bs!851140 () Bool)

(assert (= bs!851140 (and b!4515991 b!4514958)))

(assert (=> bs!851140 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 lt!1692724)) (= lambda!171682 lambda!171548))))

(declare-fun bs!851141 () Bool)

(assert (= bs!851141 (and b!4515991 b!4515023)))

(assert (=> bs!851141 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171682 lambda!171555))))

(declare-fun bs!851142 () Bool)

(assert (= bs!851142 (and b!4515991 b!4515599)))

(assert (=> bs!851142 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724)))) (= lambda!171682 lambda!171646))))

(declare-fun bs!851143 () Bool)

(assert (= bs!851143 (and b!4515991 b!4515099)))

(assert (=> bs!851143 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 lt!1692728)) (= lambda!171682 lambda!171568))))

(declare-fun bs!851145 () Bool)

(assert (= bs!851145 (and b!4515991 b!4515227)))

(assert (=> bs!851145 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171682 lambda!171594))))

(declare-fun bs!851147 () Bool)

(assert (= bs!851147 (and b!4515991 b!4515225)))

(assert (=> bs!851147 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 lt!1692728))) (= lambda!171682 lambda!171591))))

(declare-fun bs!851149 () Bool)

(assert (= bs!851149 (and b!4515991 b!4515433)))

(assert (=> bs!851149 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (toList!4315 lt!1693104)) (= lambda!171682 lambda!171623))))

(declare-fun bs!851151 () Bool)

(assert (= bs!851151 (and b!4515991 b!4515597)))

(assert (=> bs!851151 (= (= (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 lt!1692724))) (= lambda!171682 lambda!171645))))

(assert (=> b!4515991 true))

(declare-fun bs!851158 () Bool)

(declare-fun b!4515993 () Bool)

(assert (= bs!851158 (and b!4515993 b!4515595)))

(declare-fun lambda!171684 () Int)

(assert (=> bs!851158 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 lt!1692724)) (= lambda!171684 lambda!171647))))

(declare-fun bs!851160 () Bool)

(assert (= bs!851160 (and b!4515993 b!4515223)))

(assert (=> bs!851160 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 lt!1692728)) (= lambda!171684 lambda!171596))))

(declare-fun bs!851162 () Bool)

(assert (= bs!851162 (and b!4515993 b!4514958)))

(assert (=> bs!851162 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 lt!1692724)) (= lambda!171684 lambda!171548))))

(declare-fun bs!851163 () Bool)

(assert (= bs!851163 (and b!4515993 b!4515991)))

(assert (=> bs!851163 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (= lambda!171684 lambda!171682))))

(declare-fun bs!851164 () Bool)

(assert (= bs!851164 (and b!4515993 b!4515023)))

(assert (=> bs!851164 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (= lambda!171684 lambda!171555))))

(declare-fun bs!851166 () Bool)

(assert (= bs!851166 (and b!4515993 b!4515599)))

(assert (=> bs!851166 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724)))) (= lambda!171684 lambda!171646))))

(declare-fun bs!851168 () Bool)

(assert (= bs!851168 (and b!4515993 b!4515099)))

(assert (=> bs!851168 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 lt!1692728)) (= lambda!171684 lambda!171568))))

(declare-fun bs!851169 () Bool)

(assert (= bs!851169 (and b!4515993 b!4515227)))

(assert (=> bs!851169 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171684 lambda!171594))))

(declare-fun bs!851170 () Bool)

(assert (= bs!851170 (and b!4515993 b!4515225)))

(assert (=> bs!851170 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (t!357714 (toList!4315 lt!1692728))) (= lambda!171684 lambda!171591))))

(declare-fun bs!851171 () Bool)

(assert (= bs!851171 (and b!4515993 b!4515433)))

(assert (=> bs!851171 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (toList!4315 lt!1693104)) (= lambda!171684 lambda!171623))))

(declare-fun bs!851172 () Bool)

(assert (= bs!851172 (and b!4515993 b!4515597)))

(assert (=> bs!851172 (= (= (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (t!357714 (toList!4315 lt!1692724))) (= lambda!171684 lambda!171645))))

(assert (=> b!4515993 true))

(declare-fun bs!851177 () Bool)

(declare-fun b!4515989 () Bool)

(assert (= bs!851177 (and b!4515989 b!4515595)))

(declare-fun lambda!171686 () Int)

(assert (=> bs!851177 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1692724)) (= lambda!171686 lambda!171647))))

(declare-fun bs!851178 () Bool)

(assert (= bs!851178 (and b!4515989 b!4515223)))

(assert (=> bs!851178 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1692728)) (= lambda!171686 lambda!171596))))

(declare-fun bs!851179 () Bool)

(assert (= bs!851179 (and b!4515989 b!4514958)))

(assert (=> bs!851179 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1692724)) (= lambda!171686 lambda!171548))))

(declare-fun bs!851180 () Bool)

(assert (= bs!851180 (and b!4515989 b!4515991)))

(assert (=> bs!851180 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (= lambda!171686 lambda!171682))))

(declare-fun bs!851181 () Bool)

(assert (= bs!851181 (and b!4515989 b!4515023)))

(assert (=> bs!851181 (= lambda!171686 lambda!171555)))

(declare-fun bs!851182 () Bool)

(assert (= bs!851182 (and b!4515989 b!4515599)))

(assert (=> bs!851182 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (Cons!50628 (h!56475 (toList!4315 lt!1692724)) (t!357714 (toList!4315 lt!1692724)))) (= lambda!171686 lambda!171646))))

(declare-fun bs!851183 () Bool)

(assert (= bs!851183 (and b!4515989 b!4515099)))

(assert (=> bs!851183 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1692728)) (= lambda!171686 lambda!171568))))

(declare-fun bs!851184 () Bool)

(assert (= bs!851184 (and b!4515989 b!4515227)))

(assert (=> bs!851184 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (Cons!50628 (h!56475 (toList!4315 lt!1692728)) (t!357714 (toList!4315 lt!1692728)))) (= lambda!171686 lambda!171594))))

(declare-fun bs!851185 () Bool)

(assert (= bs!851185 (and b!4515989 b!4515993)))

(assert (=> bs!851185 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (Cons!50628 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))) (= lambda!171686 lambda!171684))))

(declare-fun bs!851186 () Bool)

(assert (= bs!851186 (and b!4515989 b!4515225)))

(assert (=> bs!851186 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (t!357714 (toList!4315 lt!1692728))) (= lambda!171686 lambda!171591))))

(declare-fun bs!851187 () Bool)

(assert (= bs!851187 (and b!4515989 b!4515433)))

(assert (=> bs!851187 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (toList!4315 lt!1693104)) (= lambda!171686 lambda!171623))))

(declare-fun bs!851188 () Bool)

(assert (= bs!851188 (and b!4515989 b!4515597)))

(assert (=> bs!851188 (= (= (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (t!357714 (toList!4315 lt!1692724))) (= lambda!171686 lambda!171645))))

(assert (=> b!4515989 true))

(declare-fun bs!851189 () Bool)

(declare-fun b!4515992 () Bool)

(assert (= bs!851189 (and b!4515992 b!4514959)))

(declare-fun lambda!171687 () Int)

(assert (=> bs!851189 (= lambda!171687 lambda!171549)))

(declare-fun bs!851190 () Bool)

(assert (= bs!851190 (and b!4515992 b!4515226)))

(assert (=> bs!851190 (= lambda!171687 lambda!171597)))

(declare-fun bs!851191 () Bool)

(assert (= bs!851191 (and b!4515992 b!4515024)))

(assert (=> bs!851191 (= lambda!171687 lambda!171556)))

(declare-fun bs!851192 () Bool)

(assert (= bs!851192 (and b!4515992 b!4515434)))

(assert (=> bs!851192 (= lambda!171687 lambda!171624)))

(declare-fun bs!851193 () Bool)

(assert (= bs!851193 (and b!4515992 b!4515100)))

(assert (=> bs!851193 (= lambda!171687 lambda!171569)))

(declare-fun bs!851194 () Bool)

(assert (= bs!851194 (and b!4515992 b!4515598)))

(assert (=> bs!851194 (= lambda!171687 lambda!171648)))

(declare-fun b!4515987 () Bool)

(declare-fun e!2813466 () List!50755)

(assert (=> b!4515987 (= e!2813466 Nil!50631)))

(declare-fun b!4515988 () Bool)

(assert (=> b!4515988 false))

(declare-fun e!2813467 () Unit!94076)

(declare-fun Unit!94340 () Unit!94076)

(assert (=> b!4515988 (= e!2813467 Unit!94340)))

(declare-fun res!1879067 () Bool)

(declare-fun e!2813465 () Bool)

(assert (=> b!4515989 (=> (not res!1879067) (not e!2813465))))

(declare-fun lt!1693861 () List!50755)

(assert (=> b!4515989 (= res!1879067 (forall!10248 lt!1693861 lambda!171686))))

(declare-fun b!4515990 () Bool)

(declare-fun e!2813468 () Unit!94076)

(declare-fun Unit!94341 () Unit!94076)

(assert (=> b!4515990 (= e!2813468 Unit!94341)))

(assert (=> b!4515991 false))

(declare-fun lt!1693859 () Unit!94076)

(assert (=> b!4515991 (= lt!1693859 (forallContained!2501 (getKeysList!459 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) lambda!171682 (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))))

(declare-fun Unit!94342 () Unit!94076)

(assert (=> b!4515991 (= e!2813468 Unit!94342)))

(assert (=> b!4515992 (= e!2813465 (= (content!8341 lt!1693861) (content!8341 (map!11129 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171687))))))

(declare-fun d!1390073 () Bool)

(assert (=> d!1390073 e!2813465))

(declare-fun res!1879069 () Bool)

(assert (=> d!1390073 (=> (not res!1879069) (not e!2813465))))

(assert (=> d!1390073 (= res!1879069 (noDuplicate!741 lt!1693861))))

(assert (=> d!1390073 (= lt!1693861 e!2813466)))

(declare-fun c!770480 () Bool)

(assert (=> d!1390073 (= c!770480 ((_ is Cons!50628) (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> d!1390073 (invariantList!1011 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1390073 (= (getKeysList!459 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) lt!1693861)))

(assert (=> b!4515993 (= e!2813466 (Cons!50631 (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (getKeysList!459 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))))

(declare-fun c!770479 () Bool)

(assert (=> b!4515993 (= c!770479 (containsKey!1766 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))))

(declare-fun lt!1693857 () Unit!94076)

(assert (=> b!4515993 (= lt!1693857 e!2813467)))

(declare-fun c!770478 () Bool)

(assert (=> b!4515993 (= c!770478 (contains!13345 (getKeysList!459 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))) (_1!28819 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))))))

(declare-fun lt!1693862 () Unit!94076)

(assert (=> b!4515993 (= lt!1693862 e!2813468)))

(declare-fun lt!1693860 () List!50755)

(assert (=> b!4515993 (= lt!1693860 (getKeysList!459 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun lt!1693856 () Unit!94076)

(assert (=> b!4515993 (= lt!1693856 (lemmaForallContainsAddHeadPreserves!163 (t!357714 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))) lt!1693860 (h!56475 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))))

(assert (=> b!4515993 (forall!10248 lt!1693860 lambda!171684)))

(declare-fun lt!1693858 () Unit!94076)

(assert (=> b!4515993 (= lt!1693858 lt!1693856)))

(declare-fun b!4515994 () Bool)

(declare-fun res!1879068 () Bool)

(assert (=> b!4515994 (=> (not res!1879068) (not e!2813465))))

(assert (=> b!4515994 (= res!1879068 (= (length!338 lt!1693861) (length!339 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun b!4515995 () Bool)

(declare-fun Unit!94343 () Unit!94076)

(assert (=> b!4515995 (= e!2813467 Unit!94343)))

(assert (= (and d!1390073 c!770480) b!4515993))

(assert (= (and d!1390073 (not c!770480)) b!4515987))

(assert (= (and b!4515993 c!770479) b!4515988))

(assert (= (and b!4515993 (not c!770479)) b!4515995))

(assert (= (and b!4515993 c!770478) b!4515991))

(assert (= (and b!4515993 (not c!770478)) b!4515990))

(assert (= (and d!1390073 res!1879069) b!4515994))

(assert (= (and b!4515994 res!1879068) b!4515989))

(assert (= (and b!4515989 res!1879067) b!4515992))

(declare-fun m!5260221 () Bool)

(assert (=> d!1390073 m!5260221))

(assert (=> d!1390073 m!5258929))

(declare-fun m!5260223 () Bool)

(assert (=> b!4515993 m!5260223))

(declare-fun m!5260225 () Bool)

(assert (=> b!4515993 m!5260225))

(declare-fun m!5260227 () Bool)

(assert (=> b!4515993 m!5260227))

(declare-fun m!5260229 () Bool)

(assert (=> b!4515993 m!5260229))

(declare-fun m!5260231 () Bool)

(assert (=> b!4515993 m!5260231))

(assert (=> b!4515993 m!5260223))

(declare-fun m!5260233 () Bool)

(assert (=> b!4515989 m!5260233))

(declare-fun m!5260235 () Bool)

(assert (=> b!4515994 m!5260235))

(assert (=> b!4515994 m!5258269))

(assert (=> b!4515991 m!5260223))

(assert (=> b!4515991 m!5260223))

(declare-fun m!5260237 () Bool)

(assert (=> b!4515991 m!5260237))

(declare-fun m!5260239 () Bool)

(assert (=> b!4515992 m!5260239))

(declare-fun m!5260241 () Bool)

(assert (=> b!4515992 m!5260241))

(assert (=> b!4515992 m!5260241))

(declare-fun m!5260243 () Bool)

(assert (=> b!4515992 m!5260243))

(assert (=> b!4514828 d!1390073))

(declare-fun d!1390079 () Bool)

(declare-fun res!1879075 () Bool)

(declare-fun e!2813474 () Bool)

(assert (=> d!1390079 (=> res!1879075 e!2813474)))

(assert (=> d!1390079 (= res!1879075 (not ((_ is Cons!50628) (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(assert (=> d!1390079 (= (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477)))) e!2813474)))

(declare-fun b!4516003 () Bool)

(declare-fun e!2813475 () Bool)

(assert (=> b!4516003 (= e!2813474 e!2813475)))

(declare-fun res!1879076 () Bool)

(assert (=> b!4516003 (=> (not res!1879076) (not e!2813475))))

(assert (=> b!4516003 (= res!1879076 (not (containsKey!1762 (t!357714 (_2!28820 (h!56476 (toList!4316 lm!1477)))) (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))))

(declare-fun b!4516004 () Bool)

(assert (=> b!4516004 (= e!2813475 (noDuplicateKeys!1154 (t!357714 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(assert (= (and d!1390079 (not res!1879075)) b!4516003))

(assert (= (and b!4516003 res!1879076) b!4516004))

(declare-fun m!5260245 () Bool)

(assert (=> b!4516003 m!5260245))

(declare-fun m!5260247 () Bool)

(assert (=> b!4516004 m!5260247))

(assert (=> bs!849981 d!1390079))

(assert (=> b!4514920 d!1389439))

(declare-fun d!1390081 () Bool)

(assert (=> d!1390081 (= (invariantList!1011 (toList!4315 lt!1693133)) (noDuplicatedKeys!256 (toList!4315 lt!1693133)))))

(declare-fun bs!851208 () Bool)

(assert (= bs!851208 d!1390081))

(declare-fun m!5260249 () Bool)

(assert (=> bs!851208 m!5260249))

(assert (=> d!1389421 d!1390081))

(declare-fun d!1390083 () Bool)

(declare-fun res!1879077 () Bool)

(declare-fun e!2813476 () Bool)

(assert (=> d!1390083 (=> res!1879077 e!2813476)))

(assert (=> d!1390083 (= res!1879077 ((_ is Nil!50629) (toList!4316 lm!1477)))))

(assert (=> d!1390083 (= (forall!10245 (toList!4316 lm!1477) lambda!171536) e!2813476)))

(declare-fun b!4516005 () Bool)

(declare-fun e!2813477 () Bool)

(assert (=> b!4516005 (= e!2813476 e!2813477)))

(declare-fun res!1879078 () Bool)

(assert (=> b!4516005 (=> (not res!1879078) (not e!2813477))))

(assert (=> b!4516005 (= res!1879078 (dynLambda!21150 lambda!171536 (h!56476 (toList!4316 lm!1477))))))

(declare-fun b!4516006 () Bool)

(assert (=> b!4516006 (= e!2813477 (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171536))))

(assert (= (and d!1390083 (not res!1879077)) b!4516005))

(assert (= (and b!4516005 res!1879078) b!4516006))

(declare-fun b_lambda!154239 () Bool)

(assert (=> (not b_lambda!154239) (not b!4516005)))

(declare-fun m!5260251 () Bool)

(assert (=> b!4516005 m!5260251))

(declare-fun m!5260253 () Bool)

(assert (=> b!4516006 m!5260253))

(assert (=> d!1389421 d!1390083))

(declare-fun d!1390085 () Bool)

(assert (=> d!1390085 (= (head!9402 (toList!4316 lm!1477)) (h!56476 (toList!4316 lm!1477)))))

(assert (=> d!1389393 d!1390085))

(declare-fun b!4516009 () Bool)

(declare-fun e!2813479 () Option!11099)

(assert (=> b!4516009 (= e!2813479 (getValueByKey!1079 (t!357715 (toList!4316 lt!1693095)) (_1!28820 lt!1692726)))))

(declare-fun b!4516010 () Bool)

(assert (=> b!4516010 (= e!2813479 None!11098)))

(declare-fun b!4516007 () Bool)

(declare-fun e!2813478 () Option!11099)

(assert (=> b!4516007 (= e!2813478 (Some!11098 (_2!28820 (h!56476 (toList!4316 lt!1693095)))))))

(declare-fun d!1390087 () Bool)

(declare-fun c!770482 () Bool)

(assert (=> d!1390087 (= c!770482 (and ((_ is Cons!50629) (toList!4316 lt!1693095)) (= (_1!28820 (h!56476 (toList!4316 lt!1693095))) (_1!28820 lt!1692726))))))

(assert (=> d!1390087 (= (getValueByKey!1079 (toList!4316 lt!1693095) (_1!28820 lt!1692726)) e!2813478)))

(declare-fun b!4516008 () Bool)

(assert (=> b!4516008 (= e!2813478 e!2813479)))

(declare-fun c!770483 () Bool)

(assert (=> b!4516008 (= c!770483 (and ((_ is Cons!50629) (toList!4316 lt!1693095)) (not (= (_1!28820 (h!56476 (toList!4316 lt!1693095))) (_1!28820 lt!1692726)))))))

(assert (= (and d!1390087 c!770482) b!4516007))

(assert (= (and d!1390087 (not c!770482)) b!4516008))

(assert (= (and b!4516008 c!770483) b!4516009))

(assert (= (and b!4516008 (not c!770483)) b!4516010))

(declare-fun m!5260255 () Bool)

(assert (=> b!4516009 m!5260255))

(assert (=> b!4514871 d!1390087))

(declare-fun d!1390089 () Bool)

(assert (=> d!1390089 (= (invariantList!1011 (toList!4315 lt!1692991)) (noDuplicatedKeys!256 (toList!4315 lt!1692991)))))

(declare-fun bs!851221 () Bool)

(assert (= bs!851221 d!1390089))

(declare-fun m!5260257 () Bool)

(assert (=> bs!851221 m!5260257))

(assert (=> d!1389325 d!1390089))

(declare-fun d!1390091 () Bool)

(declare-fun res!1879079 () Bool)

(declare-fun e!2813480 () Bool)

(assert (=> d!1390091 (=> res!1879079 e!2813480)))

(assert (=> d!1390091 (= res!1879079 ((_ is Nil!50629) (toList!4316 lt!1692725)))))

(assert (=> d!1390091 (= (forall!10245 (toList!4316 lt!1692725) lambda!171497) e!2813480)))

(declare-fun b!4516011 () Bool)

(declare-fun e!2813481 () Bool)

(assert (=> b!4516011 (= e!2813480 e!2813481)))

(declare-fun res!1879080 () Bool)

(assert (=> b!4516011 (=> (not res!1879080) (not e!2813481))))

(assert (=> b!4516011 (= res!1879080 (dynLambda!21150 lambda!171497 (h!56476 (toList!4316 lt!1692725))))))

(declare-fun b!4516012 () Bool)

(assert (=> b!4516012 (= e!2813481 (forall!10245 (t!357715 (toList!4316 lt!1692725)) lambda!171497))))

(assert (= (and d!1390091 (not res!1879079)) b!4516011))

(assert (= (and b!4516011 res!1879080) b!4516012))

(declare-fun b_lambda!154241 () Bool)

(assert (=> (not b_lambda!154241) (not b!4516011)))

(declare-fun m!5260259 () Bool)

(assert (=> b!4516011 m!5260259))

(declare-fun m!5260261 () Bool)

(assert (=> b!4516012 m!5260261))

(assert (=> d!1389325 d!1390091))

(declare-fun d!1390093 () Bool)

(declare-fun lt!1693884 () Bool)

(assert (=> d!1390093 (= lt!1693884 (select (content!8338 (toList!4316 lt!1692805)) lt!1692742))))

(declare-fun e!2813483 () Bool)

(assert (=> d!1390093 (= lt!1693884 e!2813483)))

(declare-fun res!1879081 () Bool)

(assert (=> d!1390093 (=> (not res!1879081) (not e!2813483))))

(assert (=> d!1390093 (= res!1879081 ((_ is Cons!50629) (toList!4316 lt!1692805)))))

(assert (=> d!1390093 (= (contains!13341 (toList!4316 lt!1692805) lt!1692742) lt!1693884)))

(declare-fun b!4516013 () Bool)

(declare-fun e!2813482 () Bool)

(assert (=> b!4516013 (= e!2813483 e!2813482)))

(declare-fun res!1879082 () Bool)

(assert (=> b!4516013 (=> res!1879082 e!2813482)))

(assert (=> b!4516013 (= res!1879082 (= (h!56476 (toList!4316 lt!1692805)) lt!1692742))))

(declare-fun b!4516014 () Bool)

(assert (=> b!4516014 (= e!2813482 (contains!13341 (t!357715 (toList!4316 lt!1692805)) lt!1692742))))

(assert (= (and d!1390093 res!1879081) b!4516013))

(assert (= (and b!4516013 (not res!1879082)) b!4516014))

(declare-fun m!5260263 () Bool)

(assert (=> d!1390093 m!5260263))

(declare-fun m!5260265 () Bool)

(assert (=> d!1390093 m!5260265))

(declare-fun m!5260267 () Bool)

(assert (=> b!4516014 m!5260267))

(assert (=> b!4514634 d!1390093))

(assert (=> d!1389429 d!1389279))

(assert (=> d!1389429 d!1389427))

(assert (=> d!1389429 d!1389987))

(declare-fun d!1390095 () Bool)

(assert (=> d!1390095 (eq!611 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734) (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722))))

(assert (=> d!1390095 true))

(declare-fun _$16!200 () Unit!94076)

(assert (=> d!1390095 (= (choose!29422 lt!1692734 lt!1692722 (_2!28820 lt!1692742)) _$16!200)))

(declare-fun bs!851260 () Bool)

(assert (= bs!851260 d!1390095))

(assert (=> bs!851260 m!5257333))

(assert (=> bs!851260 m!5257383))

(assert (=> bs!851260 m!5257333))

(assert (=> bs!851260 m!5257383))

(assert (=> bs!851260 m!5258157))

(assert (=> d!1389429 d!1390095))

(declare-fun d!1390097 () Bool)

(assert (=> d!1390097 (= (eq!611 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734) (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722)) (= (content!8339 (toList!4315 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692734))) (content!8339 (toList!4315 (addToMapMapFromBucket!681 (_2!28820 lt!1692742) lt!1692722)))))))

(declare-fun bs!851261 () Bool)

(assert (= bs!851261 d!1390097))

(declare-fun m!5260269 () Bool)

(assert (=> bs!851261 m!5260269))

(declare-fun m!5260271 () Bool)

(assert (=> bs!851261 m!5260271))

(assert (=> d!1389429 d!1390097))

(assert (=> b!4514925 d!1389513))

(assert (=> b!4514925 d!1389515))

(declare-fun d!1390099 () Bool)

(declare-fun lt!1693885 () Bool)

(assert (=> d!1390099 (= lt!1693885 (select (content!8338 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692740))))

(declare-fun e!2813485 () Bool)

(assert (=> d!1390099 (= lt!1693885 e!2813485)))

(declare-fun res!1879083 () Bool)

(assert (=> d!1390099 (=> (not res!1879083) (not e!2813485))))

(assert (=> d!1390099 (= res!1879083 ((_ is Cons!50629) (t!357715 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1390099 (= (contains!13341 (t!357715 (t!357715 (toList!4316 lm!1477))) lt!1692740) lt!1693885)))

(declare-fun b!4516015 () Bool)

(declare-fun e!2813484 () Bool)

(assert (=> b!4516015 (= e!2813485 e!2813484)))

(declare-fun res!1879084 () Bool)

(assert (=> b!4516015 (=> res!1879084 e!2813484)))

(assert (=> b!4516015 (= res!1879084 (= (h!56476 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692740))))

(declare-fun b!4516016 () Bool)

(assert (=> b!4516016 (= e!2813484 (contains!13341 (t!357715 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692740))))

(assert (= (and d!1390099 res!1879083) b!4516015))

(assert (= (and b!4516015 (not res!1879084)) b!4516016))

(assert (=> d!1390099 m!5259219))

(declare-fun m!5260273 () Bool)

(assert (=> d!1390099 m!5260273))

(declare-fun m!5260275 () Bool)

(assert (=> b!4516016 m!5260275))

(assert (=> b!4514593 d!1390099))

(declare-fun bs!851275 () Bool)

(declare-fun b!4516020 () Bool)

(assert (= bs!851275 (and b!4516020 b!4514749)))

(declare-fun lambda!171692 () Int)

(assert (=> bs!851275 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692939) (= lambda!171692 lambda!171465))))

(declare-fun bs!851278 () Bool)

(assert (= bs!851278 (and b!4516020 b!4515446)))

(assert (=> bs!851278 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171692 lambda!171627))))

(declare-fun bs!851280 () Bool)

(assert (= bs!851280 (and b!4516020 b!4515255)))

(assert (=> bs!851280 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693368) (= lambda!171692 lambda!171600))))

(declare-fun bs!851282 () Bool)

(assert (= bs!851282 (and b!4516020 b!4515553)))

(assert (=> bs!851282 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171692 lambda!171638))))

(declare-fun bs!851284 () Bool)

(assert (= bs!851284 (and b!4516020 d!1389715)))

(assert (=> bs!851284 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693479) (= lambda!171692 lambda!171631))))

(declare-fun bs!851286 () Bool)

(assert (= bs!851286 (and b!4516020 b!4515788)))

(assert (=> bs!851286 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693706) (= lambda!171692 lambda!171664))))

(declare-fun bs!851288 () Bool)

(assert (= bs!851288 (and b!4516020 d!1389607)))

(assert (=> bs!851288 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693147) (= lambda!171692 lambda!171612))))

(declare-fun bs!851290 () Bool)

(assert (= bs!851290 (and b!4516020 d!1389991)))

(assert (=> bs!851290 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693780) (= lambda!171692 lambda!171675))))

(declare-fun bs!851291 () Bool)

(assert (= bs!851291 (and b!4516020 b!4515552)))

(assert (=> bs!851291 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693536) (= lambda!171692 lambda!171642))))

(declare-fun bs!851293 () Bool)

(assert (= bs!851293 (and b!4516020 b!4514932)))

(assert (=> bs!851293 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692722) (= lambda!171692 lambda!171538))))

(declare-fun bs!851295 () Bool)

(assert (= bs!851295 (and b!4516020 b!4515052)))

(assert (=> bs!851295 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693223) (= lambda!171692 lambda!171559))))

(declare-fun bs!851297 () Bool)

(assert (= bs!851297 (and b!4516020 b!4515867)))

(assert (=> bs!851297 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693782) (= lambda!171692 lambda!171673))))

(declare-fun bs!851299 () Bool)

(assert (= bs!851299 (and b!4516020 d!1389775)))

(assert (=> bs!851299 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693534) (= lambda!171692 lambda!171643))))

(declare-fun bs!851300 () Bool)

(assert (= bs!851300 (and b!4516020 b!4515445)))

(assert (=> bs!851300 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171692 lambda!171629))))

(assert (=> bs!851275 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171692 lambda!171464))))

(assert (=> bs!851295 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171692 lambda!171558))))

(declare-fun bs!851304 () Bool)

(assert (= bs!851304 (and b!4516020 d!1389235)))

(assert (=> bs!851304 (not (= lambda!171692 lambda!171416))))

(declare-fun bs!851306 () Bool)

(assert (= bs!851306 (and b!4516020 d!1389427)))

(assert (=> bs!851306 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693145) (= lambda!171692 lambda!171540))))

(assert (=> bs!851293 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693147) (= lambda!171692 lambda!171539))))

(assert (=> bs!851280 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171692 lambda!171599))))

(declare-fun bs!851308 () Bool)

(assert (= bs!851308 (and b!4516020 b!4515789)))

(assert (=> bs!851308 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171692 lambda!171660))))

(declare-fun bs!851310 () Bool)

(assert (= bs!851310 (and b!4516020 b!4514933)))

(assert (=> bs!851310 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692722) (= lambda!171692 lambda!171537))))

(declare-fun bs!851311 () Bool)

(assert (= bs!851311 (and b!4516020 d!1389769)))

(assert (=> bs!851311 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171692 lambda!171635))))

(declare-fun bs!851312 () Bool)

(assert (= bs!851312 (and b!4516020 b!4515256)))

(assert (=> bs!851312 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171692 lambda!171598))))

(declare-fun bs!851314 () Bool)

(assert (= bs!851314 (and b!4516020 d!1389279)))

(assert (=> bs!851314 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692937) (= lambda!171692 lambda!171466))))

(declare-fun bs!851316 () Bool)

(assert (= bs!851316 (and b!4516020 b!4515053)))

(assert (=> bs!851316 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171692 lambda!171557))))

(assert (=> bs!851291 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171692 lambda!171641))))

(declare-fun bs!851317 () Bool)

(assert (= bs!851317 (and b!4516020 d!1389469)))

(assert (=> bs!851317 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693221) (= lambda!171692 lambda!171560))))

(assert (=> bs!851300 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693481) (= lambda!171692 lambda!171630))))

(declare-fun bs!851318 () Bool)

(assert (= bs!851318 (and b!4516020 d!1390021)))

(assert (=> bs!851318 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692939) (= lambda!171692 lambda!171678))))

(declare-fun bs!851319 () Bool)

(assert (= bs!851319 (and b!4516020 b!4515868)))

(assert (=> bs!851319 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171692 lambda!171670))))

(declare-fun bs!851320 () Bool)

(assert (= bs!851320 (and b!4516020 d!1389575)))

(assert (=> bs!851320 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693366) (= lambda!171692 lambda!171601))))

(declare-fun bs!851321 () Bool)

(assert (= bs!851321 (and b!4516020 b!4514750)))

(assert (=> bs!851321 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171692 lambda!171463))))

(declare-fun bs!851322 () Bool)

(assert (= bs!851322 (and b!4516020 d!1389935)))

(assert (=> bs!851322 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693704) (= lambda!171692 lambda!171666))))

(assert (=> bs!851297 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171692 lambda!171671))))

(assert (=> bs!851286 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171692 lambda!171662))))

(assert (=> b!4516020 true))

(declare-fun bs!851323 () Bool)

(declare-fun b!4516019 () Bool)

(assert (= bs!851323 (and b!4516019 b!4514749)))

(declare-fun lambda!171693 () Int)

(assert (=> bs!851323 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692939) (= lambda!171693 lambda!171465))))

(declare-fun bs!851324 () Bool)

(assert (= bs!851324 (and b!4516019 b!4515446)))

(assert (=> bs!851324 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171693 lambda!171627))))

(declare-fun bs!851325 () Bool)

(assert (= bs!851325 (and b!4516019 b!4515255)))

(assert (=> bs!851325 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693368) (= lambda!171693 lambda!171600))))

(declare-fun bs!851326 () Bool)

(assert (= bs!851326 (and b!4516019 b!4515553)))

(assert (=> bs!851326 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171693 lambda!171638))))

(declare-fun bs!851327 () Bool)

(assert (= bs!851327 (and b!4516019 d!1389715)))

(assert (=> bs!851327 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693479) (= lambda!171693 lambda!171631))))

(declare-fun bs!851328 () Bool)

(assert (= bs!851328 (and b!4516019 b!4515788)))

(assert (=> bs!851328 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693706) (= lambda!171693 lambda!171664))))

(declare-fun bs!851329 () Bool)

(assert (= bs!851329 (and b!4516019 d!1389607)))

(assert (=> bs!851329 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693147) (= lambda!171693 lambda!171612))))

(declare-fun bs!851330 () Bool)

(assert (= bs!851330 (and b!4516019 d!1389991)))

(assert (=> bs!851330 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693780) (= lambda!171693 lambda!171675))))

(declare-fun bs!851331 () Bool)

(assert (= bs!851331 (and b!4516019 b!4514932)))

(assert (=> bs!851331 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692722) (= lambda!171693 lambda!171538))))

(declare-fun bs!851332 () Bool)

(assert (= bs!851332 (and b!4516019 b!4515052)))

(assert (=> bs!851332 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693223) (= lambda!171693 lambda!171559))))

(declare-fun bs!851333 () Bool)

(assert (= bs!851333 (and b!4516019 b!4515867)))

(assert (=> bs!851333 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693782) (= lambda!171693 lambda!171673))))

(declare-fun bs!851334 () Bool)

(assert (= bs!851334 (and b!4516019 d!1389775)))

(assert (=> bs!851334 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693534) (= lambda!171693 lambda!171643))))

(declare-fun bs!851335 () Bool)

(assert (= bs!851335 (and b!4516019 b!4515445)))

(assert (=> bs!851335 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171693 lambda!171629))))

(assert (=> bs!851323 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171693 lambda!171464))))

(assert (=> bs!851332 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171693 lambda!171558))))

(declare-fun bs!851336 () Bool)

(assert (= bs!851336 (and b!4516019 d!1389235)))

(assert (=> bs!851336 (not (= lambda!171693 lambda!171416))))

(declare-fun bs!851337 () Bool)

(assert (= bs!851337 (and b!4516019 d!1389427)))

(assert (=> bs!851337 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693145) (= lambda!171693 lambda!171540))))

(assert (=> bs!851331 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693147) (= lambda!171693 lambda!171539))))

(assert (=> bs!851325 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171693 lambda!171599))))

(declare-fun bs!851338 () Bool)

(assert (= bs!851338 (and b!4516019 b!4515789)))

(assert (=> bs!851338 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171693 lambda!171660))))

(declare-fun bs!851340 () Bool)

(assert (= bs!851340 (and b!4516019 b!4514933)))

(assert (=> bs!851340 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692722) (= lambda!171693 lambda!171537))))

(declare-fun bs!851342 () Bool)

(assert (= bs!851342 (and b!4516019 d!1389769)))

(assert (=> bs!851342 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171693 lambda!171635))))

(declare-fun bs!851344 () Bool)

(assert (= bs!851344 (and b!4516019 b!4515256)))

(assert (=> bs!851344 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171693 lambda!171598))))

(declare-fun bs!851346 () Bool)

(assert (= bs!851346 (and b!4516019 d!1389279)))

(assert (=> bs!851346 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692937) (= lambda!171693 lambda!171466))))

(declare-fun bs!851347 () Bool)

(assert (= bs!851347 (and b!4516019 b!4515053)))

(assert (=> bs!851347 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171693 lambda!171557))))

(declare-fun bs!851349 () Bool)

(assert (= bs!851349 (and b!4516019 b!4515552)))

(assert (=> bs!851349 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171693 lambda!171641))))

(assert (=> bs!851349 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693536) (= lambda!171693 lambda!171642))))

(declare-fun bs!851352 () Bool)

(assert (= bs!851352 (and b!4516019 b!4516020)))

(assert (=> bs!851352 (= lambda!171693 lambda!171692)))

(declare-fun bs!851354 () Bool)

(assert (= bs!851354 (and b!4516019 d!1389469)))

(assert (=> bs!851354 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693221) (= lambda!171693 lambda!171560))))

(assert (=> bs!851335 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693481) (= lambda!171693 lambda!171630))))

(declare-fun bs!851357 () Bool)

(assert (= bs!851357 (and b!4516019 d!1390021)))

(assert (=> bs!851357 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692939) (= lambda!171693 lambda!171678))))

(declare-fun bs!851359 () Bool)

(assert (= bs!851359 (and b!4516019 b!4515868)))

(assert (=> bs!851359 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171693 lambda!171670))))

(declare-fun bs!851361 () Bool)

(assert (= bs!851361 (and b!4516019 d!1389575)))

(assert (=> bs!851361 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693366) (= lambda!171693 lambda!171601))))

(declare-fun bs!851363 () Bool)

(assert (= bs!851363 (and b!4516019 b!4514750)))

(assert (=> bs!851363 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1692734) (= lambda!171693 lambda!171463))))

(declare-fun bs!851365 () Bool)

(assert (= bs!851365 (and b!4516019 d!1389935)))

(assert (=> bs!851365 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693704) (= lambda!171693 lambda!171666))))

(assert (=> bs!851333 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171693 lambda!171671))))

(assert (=> bs!851328 (= (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171693 lambda!171662))))

(assert (=> b!4516019 true))

(declare-fun lt!1693899 () ListMap!3577)

(declare-fun lambda!171695 () Int)

(assert (=> bs!851323 (= (= lt!1693899 lt!1692939) (= lambda!171695 lambda!171465))))

(assert (=> bs!851324 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171695 lambda!171627))))

(assert (=> bs!851325 (= (= lt!1693899 lt!1693368) (= lambda!171695 lambda!171600))))

(assert (=> bs!851326 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171695 lambda!171638))))

(assert (=> b!4516019 (= (= lt!1693899 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171695 lambda!171693))))

(assert (=> bs!851327 (= (= lt!1693899 lt!1693479) (= lambda!171695 lambda!171631))))

(assert (=> bs!851328 (= (= lt!1693899 lt!1693706) (= lambda!171695 lambda!171664))))

(assert (=> bs!851329 (= (= lt!1693899 lt!1693147) (= lambda!171695 lambda!171612))))

(assert (=> bs!851330 (= (= lt!1693899 lt!1693780) (= lambda!171695 lambda!171675))))

(assert (=> bs!851331 (= (= lt!1693899 lt!1692722) (= lambda!171695 lambda!171538))))

(assert (=> bs!851332 (= (= lt!1693899 lt!1693223) (= lambda!171695 lambda!171559))))

(assert (=> bs!851333 (= (= lt!1693899 lt!1693782) (= lambda!171695 lambda!171673))))

(assert (=> bs!851334 (= (= lt!1693899 lt!1693534) (= lambda!171695 lambda!171643))))

(assert (=> bs!851335 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171695 lambda!171629))))

(assert (=> bs!851323 (= (= lt!1693899 lt!1692734) (= lambda!171695 lambda!171464))))

(assert (=> bs!851332 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171695 lambda!171558))))

(assert (=> bs!851336 (not (= lambda!171695 lambda!171416))))

(assert (=> bs!851337 (= (= lt!1693899 lt!1693145) (= lambda!171695 lambda!171540))))

(assert (=> bs!851331 (= (= lt!1693899 lt!1693147) (= lambda!171695 lambda!171539))))

(assert (=> bs!851325 (= (= lt!1693899 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171695 lambda!171599))))

(assert (=> bs!851338 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171695 lambda!171660))))

(assert (=> bs!851340 (= (= lt!1693899 lt!1692722) (= lambda!171695 lambda!171537))))

(assert (=> bs!851342 (= (= lt!1693899 lt!1692734) (= lambda!171695 lambda!171635))))

(assert (=> bs!851344 (= (= lt!1693899 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171695 lambda!171598))))

(assert (=> bs!851346 (= (= lt!1693899 lt!1692937) (= lambda!171695 lambda!171466))))

(assert (=> bs!851347 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171695 lambda!171557))))

(assert (=> bs!851349 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171695 lambda!171641))))

(assert (=> bs!851349 (= (= lt!1693899 lt!1693536) (= lambda!171695 lambda!171642))))

(assert (=> bs!851352 (= (= lt!1693899 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171695 lambda!171692))))

(assert (=> bs!851354 (= (= lt!1693899 lt!1693221) (= lambda!171695 lambda!171560))))

(assert (=> bs!851335 (= (= lt!1693899 lt!1693481) (= lambda!171695 lambda!171630))))

(assert (=> bs!851357 (= (= lt!1693899 lt!1692939) (= lambda!171695 lambda!171678))))

(assert (=> bs!851359 (= (= lt!1693899 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171695 lambda!171670))))

(assert (=> bs!851361 (= (= lt!1693899 lt!1693366) (= lambda!171695 lambda!171601))))

(assert (=> bs!851363 (= (= lt!1693899 lt!1692734) (= lambda!171695 lambda!171463))))

(assert (=> bs!851365 (= (= lt!1693899 lt!1693704) (= lambda!171695 lambda!171666))))

(assert (=> bs!851333 (= (= lt!1693899 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171695 lambda!171671))))

(assert (=> bs!851328 (= (= lt!1693899 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171695 lambda!171662))))

(assert (=> b!4516019 true))

(declare-fun bs!851370 () Bool)

(declare-fun d!1390101 () Bool)

(assert (= bs!851370 (and d!1390101 b!4514749)))

(declare-fun lambda!171696 () Int)

(declare-fun lt!1693897 () ListMap!3577)

(assert (=> bs!851370 (= (= lt!1693897 lt!1692939) (= lambda!171696 lambda!171465))))

(declare-fun bs!851371 () Bool)

(assert (= bs!851371 (and d!1390101 b!4515446)))

(assert (=> bs!851371 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171696 lambda!171627))))

(declare-fun bs!851372 () Bool)

(assert (= bs!851372 (and d!1390101 b!4515255)))

(assert (=> bs!851372 (= (= lt!1693897 lt!1693368) (= lambda!171696 lambda!171600))))

(declare-fun bs!851373 () Bool)

(assert (= bs!851373 (and d!1390101 b!4516019)))

(assert (=> bs!851373 (= (= lt!1693897 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171696 lambda!171693))))

(declare-fun bs!851374 () Bool)

(assert (= bs!851374 (and d!1390101 d!1389715)))

(assert (=> bs!851374 (= (= lt!1693897 lt!1693479) (= lambda!171696 lambda!171631))))

(declare-fun bs!851375 () Bool)

(assert (= bs!851375 (and d!1390101 b!4515788)))

(assert (=> bs!851375 (= (= lt!1693897 lt!1693706) (= lambda!171696 lambda!171664))))

(declare-fun bs!851376 () Bool)

(assert (= bs!851376 (and d!1390101 d!1389607)))

(assert (=> bs!851376 (= (= lt!1693897 lt!1693147) (= lambda!171696 lambda!171612))))

(declare-fun bs!851377 () Bool)

(assert (= bs!851377 (and d!1390101 d!1389991)))

(assert (=> bs!851377 (= (= lt!1693897 lt!1693780) (= lambda!171696 lambda!171675))))

(declare-fun bs!851378 () Bool)

(assert (= bs!851378 (and d!1390101 b!4514932)))

(assert (=> bs!851378 (= (= lt!1693897 lt!1692722) (= lambda!171696 lambda!171538))))

(declare-fun bs!851379 () Bool)

(assert (= bs!851379 (and d!1390101 b!4515052)))

(assert (=> bs!851379 (= (= lt!1693897 lt!1693223) (= lambda!171696 lambda!171559))))

(declare-fun bs!851380 () Bool)

(assert (= bs!851380 (and d!1390101 b!4515867)))

(assert (=> bs!851380 (= (= lt!1693897 lt!1693782) (= lambda!171696 lambda!171673))))

(declare-fun bs!851381 () Bool)

(assert (= bs!851381 (and d!1390101 d!1389775)))

(assert (=> bs!851381 (= (= lt!1693897 lt!1693534) (= lambda!171696 lambda!171643))))

(declare-fun bs!851382 () Bool)

(assert (= bs!851382 (and d!1390101 b!4515445)))

(assert (=> bs!851382 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171696 lambda!171629))))

(assert (=> bs!851370 (= (= lt!1693897 lt!1692734) (= lambda!171696 lambda!171464))))

(assert (=> bs!851379 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171696 lambda!171558))))

(declare-fun bs!851383 () Bool)

(assert (= bs!851383 (and d!1390101 d!1389235)))

(assert (=> bs!851383 (not (= lambda!171696 lambda!171416))))

(declare-fun bs!851384 () Bool)

(assert (= bs!851384 (and d!1390101 d!1389427)))

(assert (=> bs!851384 (= (= lt!1693897 lt!1693145) (= lambda!171696 lambda!171540))))

(assert (=> bs!851378 (= (= lt!1693897 lt!1693147) (= lambda!171696 lambda!171539))))

(assert (=> bs!851372 (= (= lt!1693897 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171696 lambda!171599))))

(declare-fun bs!851385 () Bool)

(assert (= bs!851385 (and d!1390101 b!4515789)))

(assert (=> bs!851385 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171696 lambda!171660))))

(declare-fun bs!851386 () Bool)

(assert (= bs!851386 (and d!1390101 b!4514933)))

(assert (=> bs!851386 (= (= lt!1693897 lt!1692722) (= lambda!171696 lambda!171537))))

(declare-fun bs!851387 () Bool)

(assert (= bs!851387 (and d!1390101 d!1389769)))

(assert (=> bs!851387 (= (= lt!1693897 lt!1692734) (= lambda!171696 lambda!171635))))

(declare-fun bs!851388 () Bool)

(assert (= bs!851388 (and d!1390101 b!4515256)))

(assert (=> bs!851388 (= (= lt!1693897 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171696 lambda!171598))))

(declare-fun bs!851389 () Bool)

(assert (= bs!851389 (and d!1390101 d!1389279)))

(assert (=> bs!851389 (= (= lt!1693897 lt!1692937) (= lambda!171696 lambda!171466))))

(declare-fun bs!851390 () Bool)

(assert (= bs!851390 (and d!1390101 b!4515053)))

(assert (=> bs!851390 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171696 lambda!171557))))

(declare-fun bs!851391 () Bool)

(assert (= bs!851391 (and d!1390101 b!4515552)))

(assert (=> bs!851391 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171696 lambda!171641))))

(assert (=> bs!851373 (= (= lt!1693897 lt!1693899) (= lambda!171696 lambda!171695))))

(declare-fun bs!851392 () Bool)

(assert (= bs!851392 (and d!1390101 b!4515553)))

(assert (=> bs!851392 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171696 lambda!171638))))

(assert (=> bs!851391 (= (= lt!1693897 lt!1693536) (= lambda!171696 lambda!171642))))

(declare-fun bs!851393 () Bool)

(assert (= bs!851393 (and d!1390101 b!4516020)))

(assert (=> bs!851393 (= (= lt!1693897 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171696 lambda!171692))))

(declare-fun bs!851394 () Bool)

(assert (= bs!851394 (and d!1390101 d!1389469)))

(assert (=> bs!851394 (= (= lt!1693897 lt!1693221) (= lambda!171696 lambda!171560))))

(assert (=> bs!851382 (= (= lt!1693897 lt!1693481) (= lambda!171696 lambda!171630))))

(declare-fun bs!851395 () Bool)

(assert (= bs!851395 (and d!1390101 d!1390021)))

(assert (=> bs!851395 (= (= lt!1693897 lt!1692939) (= lambda!171696 lambda!171678))))

(declare-fun bs!851396 () Bool)

(assert (= bs!851396 (and d!1390101 b!4515868)))

(assert (=> bs!851396 (= (= lt!1693897 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171696 lambda!171670))))

(declare-fun bs!851397 () Bool)

(assert (= bs!851397 (and d!1390101 d!1389575)))

(assert (=> bs!851397 (= (= lt!1693897 lt!1693366) (= lambda!171696 lambda!171601))))

(declare-fun bs!851398 () Bool)

(assert (= bs!851398 (and d!1390101 b!4514750)))

(assert (=> bs!851398 (= (= lt!1693897 lt!1692734) (= lambda!171696 lambda!171463))))

(declare-fun bs!851399 () Bool)

(assert (= bs!851399 (and d!1390101 d!1389935)))

(assert (=> bs!851399 (= (= lt!1693897 lt!1693704) (= lambda!171696 lambda!171666))))

(assert (=> bs!851380 (= (= lt!1693897 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171696 lambda!171671))))

(assert (=> bs!851375 (= (= lt!1693897 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171696 lambda!171662))))

(assert (=> d!1390101 true))

(declare-fun c!770484 () Bool)

(declare-fun bm!314530 () Bool)

(declare-fun call!314535 () Bool)

(assert (=> bm!314530 (= call!314535 (forall!10247 (ite c!770484 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (t!357714 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))) (ite c!770484 lambda!171692 lambda!171695)))))

(declare-fun bm!314531 () Bool)

(declare-fun call!314536 () Bool)

(assert (=> bm!314531 (= call!314536 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (ite c!770484 lambda!171692 lambda!171695)))))

(declare-fun bm!314532 () Bool)

(declare-fun call!314537 () Unit!94076)

(assert (=> bm!314532 (= call!314537 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))))))

(declare-fun b!4516018 () Bool)

(declare-fun e!2813488 () Bool)

(assert (=> b!4516018 (= e!2813488 call!314536)))

(declare-fun e!2813487 () ListMap!3577)

(assert (=> b!4516019 (= e!2813487 lt!1693899)))

(declare-fun lt!1693903 () ListMap!3577)

(assert (=> b!4516019 (= lt!1693903 (+!1527 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))))))

(assert (=> b!4516019 (= lt!1693899 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))) (+!1527 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))))

(declare-fun lt!1693895 () Unit!94076)

(assert (=> b!4516019 (= lt!1693895 call!314537)))

(assert (=> b!4516019 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) lambda!171693)))

(declare-fun lt!1693891 () Unit!94076)

(assert (=> b!4516019 (= lt!1693891 lt!1693895)))

(assert (=> b!4516019 (forall!10247 (toList!4315 lt!1693903) lambda!171695)))

(declare-fun lt!1693906 () Unit!94076)

(declare-fun Unit!94348 () Unit!94076)

(assert (=> b!4516019 (= lt!1693906 Unit!94348)))

(assert (=> b!4516019 call!314535))

(declare-fun lt!1693896 () Unit!94076)

(declare-fun Unit!94349 () Unit!94076)

(assert (=> b!4516019 (= lt!1693896 Unit!94349)))

(declare-fun lt!1693898 () Unit!94076)

(declare-fun Unit!94350 () Unit!94076)

(assert (=> b!4516019 (= lt!1693898 Unit!94350)))

(declare-fun lt!1693905 () Unit!94076)

(assert (=> b!4516019 (= lt!1693905 (forallContained!2498 (toList!4315 lt!1693903) lambda!171695 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))))))

(assert (=> b!4516019 (contains!13343 lt!1693903 (_1!28819 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun lt!1693904 () Unit!94076)

(declare-fun Unit!94351 () Unit!94076)

(assert (=> b!4516019 (= lt!1693904 Unit!94351)))

(assert (=> b!4516019 (contains!13343 lt!1693899 (_1!28819 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun lt!1693890 () Unit!94076)

(declare-fun Unit!94352 () Unit!94076)

(assert (=> b!4516019 (= lt!1693890 Unit!94352)))

(assert (=> b!4516019 (forall!10247 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) lambda!171695)))

(declare-fun lt!1693893 () Unit!94076)

(declare-fun Unit!94353 () Unit!94076)

(assert (=> b!4516019 (= lt!1693893 Unit!94353)))

(assert (=> b!4516019 (forall!10247 (toList!4315 lt!1693903) lambda!171695)))

(declare-fun lt!1693888 () Unit!94076)

(declare-fun Unit!94354 () Unit!94076)

(assert (=> b!4516019 (= lt!1693888 Unit!94354)))

(declare-fun lt!1693901 () Unit!94076)

(declare-fun Unit!94355 () Unit!94076)

(assert (=> b!4516019 (= lt!1693901 Unit!94355)))

(declare-fun lt!1693900 () Unit!94076)

(assert (=> b!4516019 (= lt!1693900 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693899 (_1!28819 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))))

(assert (=> b!4516019 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) lambda!171695)))

(declare-fun lt!1693886 () Unit!94076)

(assert (=> b!4516019 (= lt!1693886 lt!1693900)))

(assert (=> b!4516019 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) lambda!171695)))

(declare-fun lt!1693892 () Unit!94076)

(declare-fun Unit!94356 () Unit!94076)

(assert (=> b!4516019 (= lt!1693892 Unit!94356)))

(declare-fun res!1879085 () Bool)

(assert (=> b!4516019 (= res!1879085 (forall!10247 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) lambda!171695))))

(assert (=> b!4516019 (=> (not res!1879085) (not e!2813488))))

(assert (=> b!4516019 e!2813488))

(declare-fun lt!1693889 () Unit!94076)

(declare-fun Unit!94357 () Unit!94076)

(assert (=> b!4516019 (= lt!1693889 Unit!94357)))

(declare-fun b!4516017 () Bool)

(declare-fun res!1879086 () Bool)

(declare-fun e!2813486 () Bool)

(assert (=> b!4516017 (=> (not res!1879086) (not e!2813486))))

(assert (=> b!4516017 (= res!1879086 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) lambda!171696))))

(assert (=> d!1390101 e!2813486))

(declare-fun res!1879087 () Bool)

(assert (=> d!1390101 (=> (not res!1879087) (not e!2813486))))

(assert (=> d!1390101 (= res!1879087 (forall!10247 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) lambda!171696))))

(assert (=> d!1390101 (= lt!1693897 e!2813487)))

(assert (=> d!1390101 (= c!770484 ((_ is Nil!50628) (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> d!1390101 (noDuplicateKeys!1154 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1390101 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477)))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) lt!1693897)))

(assert (=> b!4516020 (= e!2813487 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun lt!1693894 () Unit!94076)

(assert (=> b!4516020 (= lt!1693894 call!314537)))

(assert (=> b!4516020 call!314536))

(declare-fun lt!1693887 () Unit!94076)

(assert (=> b!4516020 (= lt!1693887 lt!1693894)))

(assert (=> b!4516020 call!314535))

(declare-fun lt!1693902 () Unit!94076)

(declare-fun Unit!94358 () Unit!94076)

(assert (=> b!4516020 (= lt!1693902 Unit!94358)))

(declare-fun b!4516021 () Bool)

(assert (=> b!4516021 (= e!2813486 (invariantList!1011 (toList!4315 lt!1693897)))))

(assert (= (and d!1390101 c!770484) b!4516020))

(assert (= (and d!1390101 (not c!770484)) b!4516019))

(assert (= (and b!4516019 res!1879085) b!4516018))

(assert (= (or b!4516020 b!4516019) bm!314530))

(assert (= (or b!4516020 b!4516018) bm!314531))

(assert (= (or b!4516020 b!4516019) bm!314532))

(assert (= (and d!1390101 res!1879087) b!4516017))

(assert (= (and b!4516017 res!1879086) b!4516021))

(declare-fun m!5260337 () Bool)

(assert (=> bm!314530 m!5260337))

(declare-fun m!5260339 () Bool)

(assert (=> b!4516019 m!5260339))

(declare-fun m!5260341 () Bool)

(assert (=> b!4516019 m!5260341))

(declare-fun m!5260343 () Bool)

(assert (=> b!4516019 m!5260343))

(declare-fun m!5260345 () Bool)

(assert (=> b!4516019 m!5260345))

(assert (=> b!4516019 m!5260345))

(declare-fun m!5260347 () Bool)

(assert (=> b!4516019 m!5260347))

(assert (=> b!4516019 m!5260339))

(declare-fun m!5260349 () Bool)

(assert (=> b!4516019 m!5260349))

(assert (=> b!4516019 m!5257879))

(declare-fun m!5260351 () Bool)

(assert (=> b!4516019 m!5260351))

(assert (=> b!4516019 m!5257879))

(assert (=> b!4516019 m!5260341))

(assert (=> b!4516019 m!5260347))

(declare-fun m!5260353 () Bool)

(assert (=> b!4516019 m!5260353))

(declare-fun m!5260355 () Bool)

(assert (=> b!4516019 m!5260355))

(declare-fun m!5260357 () Bool)

(assert (=> b!4516019 m!5260357))

(declare-fun m!5260359 () Bool)

(assert (=> bm!314531 m!5260359))

(assert (=> bm!314532 m!5257879))

(declare-fun m!5260361 () Bool)

(assert (=> bm!314532 m!5260361))

(declare-fun m!5260363 () Bool)

(assert (=> b!4516021 m!5260363))

(declare-fun m!5260365 () Bool)

(assert (=> b!4516017 m!5260365))

(declare-fun m!5260367 () Bool)

(assert (=> d!1390101 m!5260367))

(declare-fun m!5260369 () Bool)

(assert (=> d!1390101 m!5260369))

(assert (=> b!4514841 d!1390101))

(declare-fun bs!851400 () Bool)

(declare-fun d!1390109 () Bool)

(assert (= bs!851400 (and d!1390109 d!1389333)))

(declare-fun lambda!171697 () Int)

(assert (=> bs!851400 (= lambda!171697 lambda!171504)))

(declare-fun bs!851401 () Bool)

(assert (= bs!851401 (and d!1390109 start!446664)))

(assert (=> bs!851401 (= lambda!171697 lambda!171413)))

(declare-fun bs!851402 () Bool)

(assert (= bs!851402 (and d!1390109 d!1389351)))

(assert (=> bs!851402 (= lambda!171697 lambda!171520)))

(declare-fun bs!851403 () Bool)

(assert (= bs!851403 (and d!1390109 d!1389385)))

(assert (=> bs!851403 (= lambda!171697 lambda!171531)))

(declare-fun bs!851404 () Bool)

(assert (= bs!851404 (and d!1390109 d!1389405)))

(assert (=> bs!851404 (= lambda!171697 lambda!171535)))

(declare-fun bs!851405 () Bool)

(assert (= bs!851405 (and d!1390109 d!1389473)))

(assert (=> bs!851405 (= lambda!171697 lambda!171561)))

(declare-fun bs!851406 () Bool)

(assert (= bs!851406 (and d!1390109 d!1389807)))

(assert (=> bs!851406 (= lambda!171697 lambda!171644)))

(declare-fun bs!851407 () Bool)

(assert (= bs!851407 (and d!1390109 d!1389431)))

(assert (=> bs!851407 (= lambda!171697 lambda!171543)))

(declare-fun bs!851408 () Bool)

(assert (= bs!851408 (and d!1390109 d!1389369)))

(assert (=> bs!851408 (not (= lambda!171697 lambda!171524))))

(declare-fun bs!851409 () Bool)

(assert (= bs!851409 (and d!1390109 d!1389733)))

(assert (=> bs!851409 (= lambda!171697 lambda!171632)))

(declare-fun bs!851410 () Bool)

(assert (= bs!851410 (and d!1390109 d!1389397)))

(assert (=> bs!851410 (= lambda!171697 lambda!171532)))

(declare-fun bs!851412 () Bool)

(assert (= bs!851412 (and d!1390109 d!1389367)))

(assert (=> bs!851412 (= lambda!171697 lambda!171521)))

(declare-fun bs!851413 () Bool)

(assert (= bs!851413 (and d!1390109 d!1389421)))

(assert (=> bs!851413 (= lambda!171697 lambda!171536)))

(declare-fun bs!851414 () Bool)

(assert (= bs!851414 (and d!1390109 d!1389325)))

(assert (=> bs!851414 (= lambda!171697 lambda!171497)))

(declare-fun bs!851415 () Bool)

(assert (= bs!851415 (and d!1390109 d!1389491)))

(assert (=> bs!851415 (= lambda!171697 lambda!171567)))

(declare-fun bs!851416 () Bool)

(assert (= bs!851416 (and d!1390109 d!1389349)))

(assert (=> bs!851416 (= lambda!171697 lambda!171510)))

(declare-fun bs!851417 () Bool)

(assert (= bs!851417 (and d!1390109 d!1389371)))

(assert (=> bs!851417 (= lambda!171697 lambda!171525)))

(declare-fun bs!851418 () Bool)

(assert (= bs!851418 (and d!1390109 d!1389943)))

(assert (=> bs!851418 (= lambda!171697 lambda!171668)))

(declare-fun lt!1693916 () ListMap!3577)

(assert (=> d!1390109 (invariantList!1011 (toList!4315 lt!1693916))))

(declare-fun e!2813496 () ListMap!3577)

(assert (=> d!1390109 (= lt!1693916 e!2813496)))

(declare-fun c!770489 () Bool)

(assert (=> d!1390109 (= c!770489 ((_ is Cons!50629) (t!357715 (t!357715 (toList!4316 lm!1477)))))))

(assert (=> d!1390109 (forall!10245 (t!357715 (t!357715 (toList!4316 lm!1477))) lambda!171697)))

(assert (=> d!1390109 (= (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477)))) lt!1693916)))

(declare-fun b!4516033 () Bool)

(assert (=> b!4516033 (= e!2813496 (addToMapMapFromBucket!681 (_2!28820 (h!56476 (t!357715 (t!357715 (toList!4316 lm!1477))))) (extractMap!1210 (t!357715 (t!357715 (t!357715 (toList!4316 lm!1477)))))))))

(declare-fun b!4516034 () Bool)

(assert (=> b!4516034 (= e!2813496 (ListMap!3578 Nil!50628))))

(assert (= (and d!1390109 c!770489) b!4516033))

(assert (= (and d!1390109 (not c!770489)) b!4516034))

(declare-fun m!5260375 () Bool)

(assert (=> d!1390109 m!5260375))

(declare-fun m!5260379 () Bool)

(assert (=> d!1390109 m!5260379))

(declare-fun m!5260381 () Bool)

(assert (=> b!4516033 m!5260381))

(assert (=> b!4516033 m!5260381))

(declare-fun m!5260383 () Bool)

(assert (=> b!4516033 m!5260383))

(assert (=> b!4514841 d!1390109))

(declare-fun d!1390117 () Bool)

(declare-fun res!1879095 () Bool)

(declare-fun e!2813501 () Bool)

(assert (=> d!1390117 (=> res!1879095 e!2813501)))

(assert (=> d!1390117 (= res!1879095 (and ((_ is Cons!50629) (toList!4316 lt!1692730)) (= (_1!28820 (h!56476 (toList!4316 lt!1692730))) hash!344)))))

(assert (=> d!1390117 (= (containsKey!1763 (toList!4316 lt!1692730) hash!344) e!2813501)))

(declare-fun b!4516039 () Bool)

(declare-fun e!2813502 () Bool)

(assert (=> b!4516039 (= e!2813501 e!2813502)))

(declare-fun res!1879096 () Bool)

(assert (=> b!4516039 (=> (not res!1879096) (not e!2813502))))

(assert (=> b!4516039 (= res!1879096 (and (or (not ((_ is Cons!50629) (toList!4316 lt!1692730))) (bvsle (_1!28820 (h!56476 (toList!4316 lt!1692730))) hash!344)) ((_ is Cons!50629) (toList!4316 lt!1692730)) (bvslt (_1!28820 (h!56476 (toList!4316 lt!1692730))) hash!344)))))

(declare-fun b!4516040 () Bool)

(assert (=> b!4516040 (= e!2813502 (containsKey!1763 (t!357715 (toList!4316 lt!1692730)) hash!344))))

(assert (= (and d!1390117 (not res!1879095)) b!4516039))

(assert (= (and b!4516039 res!1879096) b!4516040))

(declare-fun m!5260391 () Bool)

(assert (=> b!4516040 m!5260391))

(assert (=> d!1389225 d!1390117))

(declare-fun bs!851426 () Bool)

(declare-fun b!4516044 () Bool)

(assert (= bs!851426 (and b!4516044 b!4514749)))

(declare-fun lambda!171699 () Int)

(assert (=> bs!851426 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692939) (= lambda!171699 lambda!171465))))

(declare-fun bs!851428 () Bool)

(assert (= bs!851428 (and b!4516044 b!4515446)))

(assert (=> bs!851428 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171699 lambda!171627))))

(declare-fun bs!851430 () Bool)

(assert (= bs!851430 (and b!4516044 b!4515255)))

(assert (=> bs!851430 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693368) (= lambda!171699 lambda!171600))))

(declare-fun bs!851432 () Bool)

(assert (= bs!851432 (and b!4516044 b!4516019)))

(assert (=> bs!851432 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171699 lambda!171693))))

(declare-fun bs!851434 () Bool)

(assert (= bs!851434 (and b!4516044 d!1389715)))

(assert (=> bs!851434 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693479) (= lambda!171699 lambda!171631))))

(declare-fun bs!851436 () Bool)

(assert (= bs!851436 (and b!4516044 b!4515788)))

(assert (=> bs!851436 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693706) (= lambda!171699 lambda!171664))))

(declare-fun bs!851438 () Bool)

(assert (= bs!851438 (and b!4516044 d!1389607)))

(assert (=> bs!851438 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693147) (= lambda!171699 lambda!171612))))

(declare-fun bs!851439 () Bool)

(assert (= bs!851439 (and b!4516044 d!1389991)))

(assert (=> bs!851439 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693780) (= lambda!171699 lambda!171675))))

(declare-fun bs!851441 () Bool)

(assert (= bs!851441 (and b!4516044 b!4514932)))

(assert (=> bs!851441 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692722) (= lambda!171699 lambda!171538))))

(declare-fun bs!851443 () Bool)

(assert (= bs!851443 (and b!4516044 b!4515052)))

(assert (=> bs!851443 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693223) (= lambda!171699 lambda!171559))))

(declare-fun bs!851445 () Bool)

(assert (= bs!851445 (and b!4516044 d!1389775)))

(assert (=> bs!851445 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693534) (= lambda!171699 lambda!171643))))

(declare-fun bs!851447 () Bool)

(assert (= bs!851447 (and b!4516044 b!4515445)))

(assert (=> bs!851447 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171699 lambda!171629))))

(assert (=> bs!851426 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171699 lambda!171464))))

(assert (=> bs!851443 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171699 lambda!171558))))

(declare-fun bs!851450 () Bool)

(assert (= bs!851450 (and b!4516044 d!1389235)))

(assert (=> bs!851450 (not (= lambda!171699 lambda!171416))))

(declare-fun bs!851453 () Bool)

(assert (= bs!851453 (and b!4516044 d!1389427)))

(assert (=> bs!851453 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693145) (= lambda!171699 lambda!171540))))

(assert (=> bs!851441 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693147) (= lambda!171699 lambda!171539))))

(assert (=> bs!851430 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171699 lambda!171599))))

(declare-fun bs!851456 () Bool)

(assert (= bs!851456 (and b!4516044 b!4515789)))

(assert (=> bs!851456 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171699 lambda!171660))))

(declare-fun bs!851457 () Bool)

(assert (= bs!851457 (and b!4516044 b!4514933)))

(assert (=> bs!851457 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692722) (= lambda!171699 lambda!171537))))

(declare-fun bs!851459 () Bool)

(assert (= bs!851459 (and b!4516044 d!1389769)))

(assert (=> bs!851459 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171699 lambda!171635))))

(declare-fun bs!851461 () Bool)

(assert (= bs!851461 (and b!4516044 b!4515256)))

(assert (=> bs!851461 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171699 lambda!171598))))

(declare-fun bs!851463 () Bool)

(assert (= bs!851463 (and b!4516044 d!1389279)))

(assert (=> bs!851463 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692937) (= lambda!171699 lambda!171466))))

(declare-fun bs!851465 () Bool)

(assert (= bs!851465 (and b!4516044 b!4515053)))

(assert (=> bs!851465 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171699 lambda!171557))))

(declare-fun bs!851466 () Bool)

(assert (= bs!851466 (and b!4516044 b!4515552)))

(assert (=> bs!851466 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171699 lambda!171641))))

(assert (=> bs!851432 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693899) (= lambda!171699 lambda!171695))))

(declare-fun bs!851468 () Bool)

(assert (= bs!851468 (and b!4516044 b!4515553)))

(assert (=> bs!851468 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171699 lambda!171638))))

(assert (=> bs!851466 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693536) (= lambda!171699 lambda!171642))))

(declare-fun bs!851471 () Bool)

(assert (= bs!851471 (and b!4516044 b!4516020)))

(assert (=> bs!851471 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171699 lambda!171692))))

(declare-fun bs!851473 () Bool)

(assert (= bs!851473 (and b!4516044 d!1389469)))

(assert (=> bs!851473 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693221) (= lambda!171699 lambda!171560))))

(assert (=> bs!851447 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693481) (= lambda!171699 lambda!171630))))

(declare-fun bs!851475 () Bool)

(assert (= bs!851475 (and b!4516044 d!1390021)))

(assert (=> bs!851475 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692939) (= lambda!171699 lambda!171678))))

(declare-fun bs!851476 () Bool)

(assert (= bs!851476 (and b!4516044 b!4515868)))

(assert (=> bs!851476 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171699 lambda!171670))))

(declare-fun bs!851478 () Bool)

(assert (= bs!851478 (and b!4516044 d!1389575)))

(assert (=> bs!851478 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693366) (= lambda!171699 lambda!171601))))

(declare-fun bs!851479 () Bool)

(assert (= bs!851479 (and b!4516044 b!4514750)))

(assert (=> bs!851479 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171699 lambda!171463))))

(declare-fun bs!851481 () Bool)

(assert (= bs!851481 (and b!4516044 d!1389935)))

(assert (=> bs!851481 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693704) (= lambda!171699 lambda!171666))))

(declare-fun bs!851483 () Bool)

(assert (= bs!851483 (and b!4516044 b!4515867)))

(assert (=> bs!851483 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693782) (= lambda!171699 lambda!171673))))

(declare-fun bs!851484 () Bool)

(assert (= bs!851484 (and b!4516044 d!1390101)))

(assert (=> bs!851484 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693897) (= lambda!171699 lambda!171696))))

(assert (=> bs!851483 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171699 lambda!171671))))

(assert (=> bs!851436 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171699 lambda!171662))))

(assert (=> b!4516044 true))

(declare-fun bs!851486 () Bool)

(declare-fun b!4516043 () Bool)

(assert (= bs!851486 (and b!4516043 b!4514749)))

(declare-fun lambda!171700 () Int)

(assert (=> bs!851486 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692939) (= lambda!171700 lambda!171465))))

(declare-fun bs!851487 () Bool)

(assert (= bs!851487 (and b!4516043 b!4515446)))

(assert (=> bs!851487 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171700 lambda!171627))))

(declare-fun bs!851488 () Bool)

(assert (= bs!851488 (and b!4516043 b!4515255)))

(assert (=> bs!851488 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693368) (= lambda!171700 lambda!171600))))

(declare-fun bs!851489 () Bool)

(assert (= bs!851489 (and b!4516043 b!4516019)))

(assert (=> bs!851489 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171700 lambda!171693))))

(declare-fun bs!851490 () Bool)

(assert (= bs!851490 (and b!4516043 d!1389715)))

(assert (=> bs!851490 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693479) (= lambda!171700 lambda!171631))))

(declare-fun bs!851491 () Bool)

(assert (= bs!851491 (and b!4516043 b!4515788)))

(assert (=> bs!851491 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693706) (= lambda!171700 lambda!171664))))

(declare-fun bs!851492 () Bool)

(assert (= bs!851492 (and b!4516043 b!4516044)))

(assert (=> bs!851492 (= lambda!171700 lambda!171699)))

(declare-fun bs!851493 () Bool)

(assert (= bs!851493 (and b!4516043 d!1389607)))

(assert (=> bs!851493 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693147) (= lambda!171700 lambda!171612))))

(declare-fun bs!851494 () Bool)

(assert (= bs!851494 (and b!4516043 d!1389991)))

(assert (=> bs!851494 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693780) (= lambda!171700 lambda!171675))))

(declare-fun bs!851495 () Bool)

(assert (= bs!851495 (and b!4516043 b!4514932)))

(assert (=> bs!851495 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692722) (= lambda!171700 lambda!171538))))

(declare-fun bs!851496 () Bool)

(assert (= bs!851496 (and b!4516043 b!4515052)))

(assert (=> bs!851496 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693223) (= lambda!171700 lambda!171559))))

(declare-fun bs!851497 () Bool)

(assert (= bs!851497 (and b!4516043 d!1389775)))

(assert (=> bs!851497 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693534) (= lambda!171700 lambda!171643))))

(declare-fun bs!851498 () Bool)

(assert (= bs!851498 (and b!4516043 b!4515445)))

(assert (=> bs!851498 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171700 lambda!171629))))

(assert (=> bs!851486 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171700 lambda!171464))))

(assert (=> bs!851496 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171700 lambda!171558))))

(declare-fun bs!851499 () Bool)

(assert (= bs!851499 (and b!4516043 d!1389235)))

(assert (=> bs!851499 (not (= lambda!171700 lambda!171416))))

(declare-fun bs!851500 () Bool)

(assert (= bs!851500 (and b!4516043 d!1389427)))

(assert (=> bs!851500 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693145) (= lambda!171700 lambda!171540))))

(assert (=> bs!851495 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693147) (= lambda!171700 lambda!171539))))

(assert (=> bs!851488 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171700 lambda!171599))))

(declare-fun bs!851501 () Bool)

(assert (= bs!851501 (and b!4516043 b!4515789)))

(assert (=> bs!851501 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171700 lambda!171660))))

(declare-fun bs!851502 () Bool)

(assert (= bs!851502 (and b!4516043 b!4514933)))

(assert (=> bs!851502 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692722) (= lambda!171700 lambda!171537))))

(declare-fun bs!851503 () Bool)

(assert (= bs!851503 (and b!4516043 d!1389769)))

(assert (=> bs!851503 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171700 lambda!171635))))

(declare-fun bs!851504 () Bool)

(assert (= bs!851504 (and b!4516043 b!4515256)))

(assert (=> bs!851504 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171700 lambda!171598))))

(declare-fun bs!851505 () Bool)

(assert (= bs!851505 (and b!4516043 d!1389279)))

(assert (=> bs!851505 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692937) (= lambda!171700 lambda!171466))))

(declare-fun bs!851506 () Bool)

(assert (= bs!851506 (and b!4516043 b!4515053)))

(assert (=> bs!851506 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171700 lambda!171557))))

(declare-fun bs!851507 () Bool)

(assert (= bs!851507 (and b!4516043 b!4515552)))

(assert (=> bs!851507 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171700 lambda!171641))))

(assert (=> bs!851489 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693899) (= lambda!171700 lambda!171695))))

(declare-fun bs!851508 () Bool)

(assert (= bs!851508 (and b!4516043 b!4515553)))

(assert (=> bs!851508 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171700 lambda!171638))))

(assert (=> bs!851507 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693536) (= lambda!171700 lambda!171642))))

(declare-fun bs!851509 () Bool)

(assert (= bs!851509 (and b!4516043 b!4516020)))

(assert (=> bs!851509 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171700 lambda!171692))))

(declare-fun bs!851510 () Bool)

(assert (= bs!851510 (and b!4516043 d!1389469)))

(assert (=> bs!851510 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693221) (= lambda!171700 lambda!171560))))

(assert (=> bs!851498 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693481) (= lambda!171700 lambda!171630))))

(declare-fun bs!851511 () Bool)

(assert (= bs!851511 (and b!4516043 d!1390021)))

(assert (=> bs!851511 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692939) (= lambda!171700 lambda!171678))))

(declare-fun bs!851512 () Bool)

(assert (= bs!851512 (and b!4516043 b!4515868)))

(assert (=> bs!851512 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171700 lambda!171670))))

(declare-fun bs!851513 () Bool)

(assert (= bs!851513 (and b!4516043 d!1389575)))

(assert (=> bs!851513 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693366) (= lambda!171700 lambda!171601))))

(declare-fun bs!851514 () Bool)

(assert (= bs!851514 (and b!4516043 b!4514750)))

(assert (=> bs!851514 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1692734) (= lambda!171700 lambda!171463))))

(declare-fun bs!851515 () Bool)

(assert (= bs!851515 (and b!4516043 d!1389935)))

(assert (=> bs!851515 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693704) (= lambda!171700 lambda!171666))))

(declare-fun bs!851516 () Bool)

(assert (= bs!851516 (and b!4516043 b!4515867)))

(assert (=> bs!851516 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693782) (= lambda!171700 lambda!171673))))

(declare-fun bs!851517 () Bool)

(assert (= bs!851517 (and b!4516043 d!1390101)))

(assert (=> bs!851517 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693897) (= lambda!171700 lambda!171696))))

(assert (=> bs!851516 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171700 lambda!171671))))

(assert (=> bs!851491 (= (= (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171700 lambda!171662))))

(assert (=> b!4516043 true))

(declare-fun lt!1693932 () ListMap!3577)

(declare-fun lambda!171701 () Int)

(assert (=> bs!851486 (= (= lt!1693932 lt!1692939) (= lambda!171701 lambda!171465))))

(assert (=> bs!851487 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171701 lambda!171627))))

(assert (=> bs!851488 (= (= lt!1693932 lt!1693368) (= lambda!171701 lambda!171600))))

(assert (=> bs!851489 (= (= lt!1693932 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171701 lambda!171693))))

(assert (=> bs!851490 (= (= lt!1693932 lt!1693479) (= lambda!171701 lambda!171631))))

(assert (=> bs!851491 (= (= lt!1693932 lt!1693706) (= lambda!171701 lambda!171664))))

(assert (=> bs!851492 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171701 lambda!171699))))

(assert (=> bs!851493 (= (= lt!1693932 lt!1693147) (= lambda!171701 lambda!171612))))

(assert (=> bs!851494 (= (= lt!1693932 lt!1693780) (= lambda!171701 lambda!171675))))

(assert (=> bs!851495 (= (= lt!1693932 lt!1692722) (= lambda!171701 lambda!171538))))

(assert (=> bs!851496 (= (= lt!1693932 lt!1693223) (= lambda!171701 lambda!171559))))

(assert (=> bs!851497 (= (= lt!1693932 lt!1693534) (= lambda!171701 lambda!171643))))

(assert (=> bs!851498 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171701 lambda!171629))))

(assert (=> bs!851486 (= (= lt!1693932 lt!1692734) (= lambda!171701 lambda!171464))))

(assert (=> bs!851496 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171701 lambda!171558))))

(assert (=> bs!851499 (not (= lambda!171701 lambda!171416))))

(assert (=> bs!851500 (= (= lt!1693932 lt!1693145) (= lambda!171701 lambda!171540))))

(assert (=> bs!851495 (= (= lt!1693932 lt!1693147) (= lambda!171701 lambda!171539))))

(assert (=> bs!851488 (= (= lt!1693932 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171701 lambda!171599))))

(assert (=> bs!851501 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171701 lambda!171660))))

(assert (=> bs!851502 (= (= lt!1693932 lt!1692722) (= lambda!171701 lambda!171537))))

(assert (=> bs!851503 (= (= lt!1693932 lt!1692734) (= lambda!171701 lambda!171635))))

(assert (=> bs!851504 (= (= lt!1693932 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171701 lambda!171598))))

(assert (=> bs!851505 (= (= lt!1693932 lt!1692937) (= lambda!171701 lambda!171466))))

(assert (=> bs!851506 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171701 lambda!171557))))

(assert (=> bs!851507 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171701 lambda!171641))))

(assert (=> bs!851489 (= (= lt!1693932 lt!1693899) (= lambda!171701 lambda!171695))))

(assert (=> bs!851508 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171701 lambda!171638))))

(assert (=> bs!851507 (= (= lt!1693932 lt!1693536) (= lambda!171701 lambda!171642))))

(assert (=> bs!851509 (= (= lt!1693932 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171701 lambda!171692))))

(assert (=> bs!851510 (= (= lt!1693932 lt!1693221) (= lambda!171701 lambda!171560))))

(assert (=> bs!851498 (= (= lt!1693932 lt!1693481) (= lambda!171701 lambda!171630))))

(assert (=> bs!851511 (= (= lt!1693932 lt!1692939) (= lambda!171701 lambda!171678))))

(assert (=> bs!851512 (= (= lt!1693932 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171701 lambda!171670))))

(assert (=> bs!851513 (= (= lt!1693932 lt!1693366) (= lambda!171701 lambda!171601))))

(assert (=> bs!851514 (= (= lt!1693932 lt!1692734) (= lambda!171701 lambda!171463))))

(assert (=> bs!851515 (= (= lt!1693932 lt!1693704) (= lambda!171701 lambda!171666))))

(assert (=> bs!851516 (= (= lt!1693932 lt!1693782) (= lambda!171701 lambda!171673))))

(assert (=> bs!851517 (= (= lt!1693932 lt!1693897) (= lambda!171701 lambda!171696))))

(assert (=> b!4516043 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171701 lambda!171700))))

(assert (=> bs!851516 (= (= lt!1693932 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171701 lambda!171671))))

(assert (=> bs!851491 (= (= lt!1693932 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171701 lambda!171662))))

(assert (=> b!4516043 true))

(declare-fun bs!851520 () Bool)

(declare-fun d!1390121 () Bool)

(assert (= bs!851520 (and d!1390121 b!4514749)))

(declare-fun lt!1693930 () ListMap!3577)

(declare-fun lambda!171702 () Int)

(assert (=> bs!851520 (= (= lt!1693930 lt!1692939) (= lambda!171702 lambda!171465))))

(declare-fun bs!851521 () Bool)

(assert (= bs!851521 (and d!1390121 b!4515446)))

(assert (=> bs!851521 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171702 lambda!171627))))

(declare-fun bs!851522 () Bool)

(assert (= bs!851522 (and d!1390121 b!4515255)))

(assert (=> bs!851522 (= (= lt!1693930 lt!1693368) (= lambda!171702 lambda!171600))))

(declare-fun bs!851523 () Bool)

(assert (= bs!851523 (and d!1390121 b!4516019)))

(assert (=> bs!851523 (= (= lt!1693930 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171702 lambda!171693))))

(declare-fun bs!851524 () Bool)

(assert (= bs!851524 (and d!1390121 d!1389715)))

(assert (=> bs!851524 (= (= lt!1693930 lt!1693479) (= lambda!171702 lambda!171631))))

(declare-fun bs!851525 () Bool)

(assert (= bs!851525 (and d!1390121 b!4515788)))

(assert (=> bs!851525 (= (= lt!1693930 lt!1693706) (= lambda!171702 lambda!171664))))

(declare-fun bs!851526 () Bool)

(assert (= bs!851526 (and d!1390121 b!4516044)))

(assert (=> bs!851526 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171702 lambda!171699))))

(declare-fun bs!851527 () Bool)

(assert (= bs!851527 (and d!1390121 d!1389607)))

(assert (=> bs!851527 (= (= lt!1693930 lt!1693147) (= lambda!171702 lambda!171612))))

(declare-fun bs!851528 () Bool)

(assert (= bs!851528 (and d!1390121 d!1389991)))

(assert (=> bs!851528 (= (= lt!1693930 lt!1693780) (= lambda!171702 lambda!171675))))

(declare-fun bs!851529 () Bool)

(assert (= bs!851529 (and d!1390121 b!4514932)))

(assert (=> bs!851529 (= (= lt!1693930 lt!1692722) (= lambda!171702 lambda!171538))))

(declare-fun bs!851530 () Bool)

(assert (= bs!851530 (and d!1390121 b!4515052)))

(assert (=> bs!851530 (= (= lt!1693930 lt!1693223) (= lambda!171702 lambda!171559))))

(declare-fun bs!851531 () Bool)

(assert (= bs!851531 (and d!1390121 d!1389775)))

(assert (=> bs!851531 (= (= lt!1693930 lt!1693534) (= lambda!171702 lambda!171643))))

(declare-fun bs!851532 () Bool)

(assert (= bs!851532 (and d!1390121 b!4516043)))

(assert (=> bs!851532 (= (= lt!1693930 lt!1693932) (= lambda!171702 lambda!171701))))

(declare-fun bs!851533 () Bool)

(assert (= bs!851533 (and d!1390121 b!4515445)))

(assert (=> bs!851533 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171702 lambda!171629))))

(assert (=> bs!851520 (= (= lt!1693930 lt!1692734) (= lambda!171702 lambda!171464))))

(assert (=> bs!851530 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171702 lambda!171558))))

(declare-fun bs!851534 () Bool)

(assert (= bs!851534 (and d!1390121 d!1389235)))

(assert (=> bs!851534 (not (= lambda!171702 lambda!171416))))

(declare-fun bs!851535 () Bool)

(assert (= bs!851535 (and d!1390121 d!1389427)))

(assert (=> bs!851535 (= (= lt!1693930 lt!1693145) (= lambda!171702 lambda!171540))))

(assert (=> bs!851529 (= (= lt!1693930 lt!1693147) (= lambda!171702 lambda!171539))))

(assert (=> bs!851522 (= (= lt!1693930 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171702 lambda!171599))))

(declare-fun bs!851536 () Bool)

(assert (= bs!851536 (and d!1390121 b!4515789)))

(assert (=> bs!851536 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171702 lambda!171660))))

(declare-fun bs!851537 () Bool)

(assert (= bs!851537 (and d!1390121 b!4514933)))

(assert (=> bs!851537 (= (= lt!1693930 lt!1692722) (= lambda!171702 lambda!171537))))

(declare-fun bs!851538 () Bool)

(assert (= bs!851538 (and d!1390121 d!1389769)))

(assert (=> bs!851538 (= (= lt!1693930 lt!1692734) (= lambda!171702 lambda!171635))))

(declare-fun bs!851539 () Bool)

(assert (= bs!851539 (and d!1390121 b!4515256)))

(assert (=> bs!851539 (= (= lt!1693930 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171702 lambda!171598))))

(declare-fun bs!851540 () Bool)

(assert (= bs!851540 (and d!1390121 d!1389279)))

(assert (=> bs!851540 (= (= lt!1693930 lt!1692937) (= lambda!171702 lambda!171466))))

(declare-fun bs!851541 () Bool)

(assert (= bs!851541 (and d!1390121 b!4515053)))

(assert (=> bs!851541 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171702 lambda!171557))))

(declare-fun bs!851542 () Bool)

(assert (= bs!851542 (and d!1390121 b!4515552)))

(assert (=> bs!851542 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171702 lambda!171641))))

(assert (=> bs!851523 (= (= lt!1693930 lt!1693899) (= lambda!171702 lambda!171695))))

(declare-fun bs!851543 () Bool)

(assert (= bs!851543 (and d!1390121 b!4515553)))

(assert (=> bs!851543 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171702 lambda!171638))))

(assert (=> bs!851542 (= (= lt!1693930 lt!1693536) (= lambda!171702 lambda!171642))))

(declare-fun bs!851544 () Bool)

(assert (= bs!851544 (and d!1390121 b!4516020)))

(assert (=> bs!851544 (= (= lt!1693930 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171702 lambda!171692))))

(declare-fun bs!851545 () Bool)

(assert (= bs!851545 (and d!1390121 d!1389469)))

(assert (=> bs!851545 (= (= lt!1693930 lt!1693221) (= lambda!171702 lambda!171560))))

(assert (=> bs!851533 (= (= lt!1693930 lt!1693481) (= lambda!171702 lambda!171630))))

(declare-fun bs!851546 () Bool)

(assert (= bs!851546 (and d!1390121 d!1390021)))

(assert (=> bs!851546 (= (= lt!1693930 lt!1692939) (= lambda!171702 lambda!171678))))

(declare-fun bs!851547 () Bool)

(assert (= bs!851547 (and d!1390121 b!4515868)))

(assert (=> bs!851547 (= (= lt!1693930 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171702 lambda!171670))))

(declare-fun bs!851548 () Bool)

(assert (= bs!851548 (and d!1390121 d!1389575)))

(assert (=> bs!851548 (= (= lt!1693930 lt!1693366) (= lambda!171702 lambda!171601))))

(declare-fun bs!851549 () Bool)

(assert (= bs!851549 (and d!1390121 b!4514750)))

(assert (=> bs!851549 (= (= lt!1693930 lt!1692734) (= lambda!171702 lambda!171463))))

(declare-fun bs!851550 () Bool)

(assert (= bs!851550 (and d!1390121 d!1389935)))

(assert (=> bs!851550 (= (= lt!1693930 lt!1693704) (= lambda!171702 lambda!171666))))

(declare-fun bs!851551 () Bool)

(assert (= bs!851551 (and d!1390121 b!4515867)))

(assert (=> bs!851551 (= (= lt!1693930 lt!1693782) (= lambda!171702 lambda!171673))))

(declare-fun bs!851552 () Bool)

(assert (= bs!851552 (and d!1390121 d!1390101)))

(assert (=> bs!851552 (= (= lt!1693930 lt!1693897) (= lambda!171702 lambda!171696))))

(assert (=> bs!851532 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171702 lambda!171700))))

(assert (=> bs!851551 (= (= lt!1693930 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171702 lambda!171671))))

(assert (=> bs!851525 (= (= lt!1693930 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171702 lambda!171662))))

(assert (=> d!1390121 true))

(declare-fun bm!314534 () Bool)

(declare-fun call!314539 () Bool)

(declare-fun c!770490 () Bool)

(assert (=> bm!314534 (= call!314539 (forall!10247 (ite c!770490 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (t!357714 (_2!28820 (h!56476 (toList!4316 lm!1477))))) (ite c!770490 lambda!171699 lambda!171701)))))

(declare-fun bm!314535 () Bool)

(declare-fun call!314540 () Bool)

(assert (=> bm!314535 (= call!314540 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (ite c!770490 lambda!171699 lambda!171701)))))

(declare-fun bm!314536 () Bool)

(declare-fun call!314541 () Unit!94076)

(assert (=> bm!314536 (= call!314541 (lemmaContainsAllItsOwnKeys!331 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4516042 () Bool)

(declare-fun e!2813505 () Bool)

(assert (=> b!4516042 (= e!2813505 call!314540)))

(declare-fun e!2813504 () ListMap!3577)

(assert (=> b!4516043 (= e!2813504 lt!1693932)))

(declare-fun lt!1693936 () ListMap!3577)

(assert (=> b!4516043 (= lt!1693936 (+!1527 (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(assert (=> b!4516043 (= lt!1693932 (addToMapMapFromBucket!681 (t!357714 (_2!28820 (h!56476 (toList!4316 lm!1477)))) (+!1527 (extractMap!1210 (t!357715 (toList!4316 lm!1477))) (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))))

(declare-fun lt!1693928 () Unit!94076)

(assert (=> b!4516043 (= lt!1693928 call!314541)))

(assert (=> b!4516043 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171700)))

(declare-fun lt!1693924 () Unit!94076)

(assert (=> b!4516043 (= lt!1693924 lt!1693928)))

(assert (=> b!4516043 (forall!10247 (toList!4315 lt!1693936) lambda!171701)))

(declare-fun lt!1693939 () Unit!94076)

(declare-fun Unit!94373 () Unit!94076)

(assert (=> b!4516043 (= lt!1693939 Unit!94373)))

(assert (=> b!4516043 call!314539))

(declare-fun lt!1693929 () Unit!94076)

(declare-fun Unit!94374 () Unit!94076)

(assert (=> b!4516043 (= lt!1693929 Unit!94374)))

(declare-fun lt!1693931 () Unit!94076)

(declare-fun Unit!94375 () Unit!94076)

(assert (=> b!4516043 (= lt!1693931 Unit!94375)))

(declare-fun lt!1693938 () Unit!94076)

(assert (=> b!4516043 (= lt!1693938 (forallContained!2498 (toList!4315 lt!1693936) lambda!171701 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(assert (=> b!4516043 (contains!13343 lt!1693936 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(declare-fun lt!1693937 () Unit!94076)

(declare-fun Unit!94376 () Unit!94076)

(assert (=> b!4516043 (= lt!1693937 Unit!94376)))

(assert (=> b!4516043 (contains!13343 lt!1693932 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))))))

(declare-fun lt!1693923 () Unit!94076)

(declare-fun Unit!94377 () Unit!94076)

(assert (=> b!4516043 (= lt!1693923 Unit!94377)))

(assert (=> b!4516043 (forall!10247 (_2!28820 (h!56476 (toList!4316 lm!1477))) lambda!171701)))

(declare-fun lt!1693926 () Unit!94076)

(declare-fun Unit!94378 () Unit!94076)

(assert (=> b!4516043 (= lt!1693926 Unit!94378)))

(assert (=> b!4516043 (forall!10247 (toList!4315 lt!1693936) lambda!171701)))

(declare-fun lt!1693921 () Unit!94076)

(declare-fun Unit!94379 () Unit!94076)

(assert (=> b!4516043 (= lt!1693921 Unit!94379)))

(declare-fun lt!1693934 () Unit!94076)

(declare-fun Unit!94380 () Unit!94076)

(assert (=> b!4516043 (= lt!1693934 Unit!94380)))

(declare-fun lt!1693933 () Unit!94076)

(assert (=> b!4516043 (= lt!1693933 (addForallContainsKeyThenBeforeAdding!331 (extractMap!1210 (t!357715 (toList!4316 lm!1477))) lt!1693932 (_1!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477))))) (_2!28819 (h!56475 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))))

(assert (=> b!4516043 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171701)))

(declare-fun lt!1693919 () Unit!94076)

(assert (=> b!4516043 (= lt!1693919 lt!1693933)))

(assert (=> b!4516043 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171701)))

(declare-fun lt!1693925 () Unit!94076)

(declare-fun Unit!94381 () Unit!94076)

(assert (=> b!4516043 (= lt!1693925 Unit!94381)))

(declare-fun res!1879097 () Bool)

(assert (=> b!4516043 (= res!1879097 (forall!10247 (_2!28820 (h!56476 (toList!4316 lm!1477))) lambda!171701))))

(assert (=> b!4516043 (=> (not res!1879097) (not e!2813505))))

(assert (=> b!4516043 e!2813505))

(declare-fun lt!1693922 () Unit!94076)

(declare-fun Unit!94382 () Unit!94076)

(assert (=> b!4516043 (= lt!1693922 Unit!94382)))

(declare-fun b!4516041 () Bool)

(declare-fun res!1879098 () Bool)

(declare-fun e!2813503 () Bool)

(assert (=> b!4516041 (=> (not res!1879098) (not e!2813503))))

(assert (=> b!4516041 (= res!1879098 (forall!10247 (toList!4315 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lambda!171702))))

(assert (=> d!1390121 e!2813503))

(declare-fun res!1879099 () Bool)

(assert (=> d!1390121 (=> (not res!1879099) (not e!2813503))))

(assert (=> d!1390121 (= res!1879099 (forall!10247 (_2!28820 (h!56476 (toList!4316 lm!1477))) lambda!171702))))

(assert (=> d!1390121 (= lt!1693930 e!2813504)))

(assert (=> d!1390121 (= c!770490 ((_ is Nil!50628) (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(assert (=> d!1390121 (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477))))))

(assert (=> d!1390121 (= (addToMapMapFromBucket!681 (_2!28820 (h!56476 (toList!4316 lm!1477))) (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) lt!1693930)))

(assert (=> b!4516044 (= e!2813504 (extractMap!1210 (t!357715 (toList!4316 lm!1477))))))

(declare-fun lt!1693927 () Unit!94076)

(assert (=> b!4516044 (= lt!1693927 call!314541)))

(assert (=> b!4516044 call!314540))

(declare-fun lt!1693920 () Unit!94076)

(assert (=> b!4516044 (= lt!1693920 lt!1693927)))

(assert (=> b!4516044 call!314539))

(declare-fun lt!1693935 () Unit!94076)

(declare-fun Unit!94383 () Unit!94076)

(assert (=> b!4516044 (= lt!1693935 Unit!94383)))

(declare-fun b!4516045 () Bool)

(assert (=> b!4516045 (= e!2813503 (invariantList!1011 (toList!4315 lt!1693930)))))

(assert (= (and d!1390121 c!770490) b!4516044))

(assert (= (and d!1390121 (not c!770490)) b!4516043))

(assert (= (and b!4516043 res!1879097) b!4516042))

(assert (= (or b!4516044 b!4516043) bm!314534))

(assert (= (or b!4516044 b!4516042) bm!314535))

(assert (= (or b!4516044 b!4516043) bm!314536))

(assert (= (and d!1390121 res!1879099) b!4516041))

(assert (= (and b!4516041 res!1879098) b!4516045))

(declare-fun m!5260437 () Bool)

(assert (=> bm!314534 m!5260437))

(declare-fun m!5260439 () Bool)

(assert (=> b!4516043 m!5260439))

(declare-fun m!5260441 () Bool)

(assert (=> b!4516043 m!5260441))

(declare-fun m!5260443 () Bool)

(assert (=> b!4516043 m!5260443))

(declare-fun m!5260447 () Bool)

(assert (=> b!4516043 m!5260447))

(assert (=> b!4516043 m!5260447))

(declare-fun m!5260451 () Bool)

(assert (=> b!4516043 m!5260451))

(assert (=> b!4516043 m!5260439))

(declare-fun m!5260453 () Bool)

(assert (=> b!4516043 m!5260453))

(assert (=> b!4516043 m!5257351))

(declare-fun m!5260455 () Bool)

(assert (=> b!4516043 m!5260455))

(assert (=> b!4516043 m!5257351))

(assert (=> b!4516043 m!5260441))

(assert (=> b!4516043 m!5260451))

(declare-fun m!5260457 () Bool)

(assert (=> b!4516043 m!5260457))

(declare-fun m!5260459 () Bool)

(assert (=> b!4516043 m!5260459))

(declare-fun m!5260461 () Bool)

(assert (=> b!4516043 m!5260461))

(declare-fun m!5260463 () Bool)

(assert (=> bm!314535 m!5260463))

(assert (=> bm!314536 m!5257351))

(declare-fun m!5260465 () Bool)

(assert (=> bm!314536 m!5260465))

(declare-fun m!5260467 () Bool)

(assert (=> b!4516045 m!5260467))

(declare-fun m!5260469 () Bool)

(assert (=> b!4516041 m!5260469))

(declare-fun m!5260471 () Bool)

(assert (=> d!1390121 m!5260471))

(assert (=> d!1390121 m!5258165))

(assert (=> b!4514928 d!1390121))

(assert (=> b!4514928 d!1389349))

(assert (=> d!1389423 d!1389747))

(assert (=> d!1389423 d!1389763))

(declare-fun bs!851554 () Bool)

(declare-fun d!1390147 () Bool)

(assert (= bs!851554 (and d!1390147 b!4514749)))

(declare-fun lambda!171703 () Int)

(assert (=> bs!851554 (= (= lt!1692722 lt!1692939) (= lambda!171703 lambda!171465))))

(declare-fun bs!851555 () Bool)

(assert (= bs!851555 (and d!1390147 b!4515446)))

(assert (=> bs!851555 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171703 lambda!171627))))

(declare-fun bs!851556 () Bool)

(assert (= bs!851556 (and d!1390147 b!4515255)))

(assert (=> bs!851556 (= (= lt!1692722 lt!1693368) (= lambda!171703 lambda!171600))))

(declare-fun bs!851557 () Bool)

(assert (= bs!851557 (and d!1390147 b!4516019)))

(assert (=> bs!851557 (= (= lt!1692722 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171703 lambda!171693))))

(declare-fun bs!851558 () Bool)

(assert (= bs!851558 (and d!1390147 d!1389715)))

(assert (=> bs!851558 (= (= lt!1692722 lt!1693479) (= lambda!171703 lambda!171631))))

(declare-fun bs!851559 () Bool)

(assert (= bs!851559 (and d!1390147 b!4515788)))

(assert (=> bs!851559 (= (= lt!1692722 lt!1693706) (= lambda!171703 lambda!171664))))

(declare-fun bs!851560 () Bool)

(assert (= bs!851560 (and d!1390147 b!4516044)))

(assert (=> bs!851560 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171703 lambda!171699))))

(declare-fun bs!851561 () Bool)

(assert (= bs!851561 (and d!1390147 d!1389607)))

(assert (=> bs!851561 (= (= lt!1692722 lt!1693147) (= lambda!171703 lambda!171612))))

(declare-fun bs!851562 () Bool)

(assert (= bs!851562 (and d!1390147 d!1389991)))

(assert (=> bs!851562 (= (= lt!1692722 lt!1693780) (= lambda!171703 lambda!171675))))

(declare-fun bs!851563 () Bool)

(assert (= bs!851563 (and d!1390147 b!4514932)))

(assert (=> bs!851563 (= lambda!171703 lambda!171538)))

(declare-fun bs!851564 () Bool)

(assert (= bs!851564 (and d!1390147 b!4515052)))

(assert (=> bs!851564 (= (= lt!1692722 lt!1693223) (= lambda!171703 lambda!171559))))

(declare-fun bs!851565 () Bool)

(assert (= bs!851565 (and d!1390147 d!1389775)))

(assert (=> bs!851565 (= (= lt!1692722 lt!1693534) (= lambda!171703 lambda!171643))))

(declare-fun bs!851566 () Bool)

(assert (= bs!851566 (and d!1390147 b!4516043)))

(assert (=> bs!851566 (= (= lt!1692722 lt!1693932) (= lambda!171703 lambda!171701))))

(declare-fun bs!851567 () Bool)

(assert (= bs!851567 (and d!1390147 b!4515445)))

(assert (=> bs!851567 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 (+!1526 lt!1692730 lt!1692742))))) (= lambda!171703 lambda!171629))))

(assert (=> bs!851554 (= (= lt!1692722 lt!1692734) (= lambda!171703 lambda!171464))))

(assert (=> bs!851564 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171703 lambda!171558))))

(declare-fun bs!851568 () Bool)

(assert (= bs!851568 (and d!1390147 d!1389235)))

(assert (=> bs!851568 (not (= lambda!171703 lambda!171416))))

(declare-fun bs!851569 () Bool)

(assert (= bs!851569 (and d!1390147 d!1389427)))

(assert (=> bs!851569 (= (= lt!1692722 lt!1693145) (= lambda!171703 lambda!171540))))

(assert (=> bs!851563 (= (= lt!1692722 lt!1693147) (= lambda!171703 lambda!171539))))

(assert (=> bs!851556 (= (= lt!1692722 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171703 lambda!171599))))

(declare-fun bs!851570 () Bool)

(assert (= bs!851570 (and d!1390147 b!4515789)))

(assert (=> bs!851570 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171703 lambda!171660))))

(declare-fun bs!851571 () Bool)

(assert (= bs!851571 (and d!1390147 b!4514933)))

(assert (=> bs!851571 (= lambda!171703 lambda!171537)))

(declare-fun bs!851572 () Bool)

(assert (= bs!851572 (and d!1390147 d!1389769)))

(assert (=> bs!851572 (= (= lt!1692722 lt!1692734) (= lambda!171703 lambda!171635))))

(declare-fun bs!851573 () Bool)

(assert (= bs!851573 (and d!1390147 b!4515256)))

(assert (=> bs!851573 (= (= lt!1692722 (+!1527 lt!1692722 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171703 lambda!171598))))

(declare-fun bs!851574 () Bool)

(assert (= bs!851574 (and d!1390147 d!1389279)))

(assert (=> bs!851574 (= (= lt!1692722 lt!1692937) (= lambda!171703 lambda!171466))))

(declare-fun bs!851575 () Bool)

(assert (= bs!851575 (and d!1390147 b!4515053)))

(assert (=> bs!851575 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692730)))) (= lambda!171703 lambda!171557))))

(declare-fun bs!851576 () Bool)

(assert (= bs!851576 (and d!1390147 b!4515552)))

(assert (=> bs!851576 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171703 lambda!171641))))

(assert (=> bs!851557 (= (= lt!1692722 lt!1693899) (= lambda!171703 lambda!171695))))

(declare-fun bs!851577 () Bool)

(assert (= bs!851577 (and d!1390147 b!4515553)))

(assert (=> bs!851577 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692737)))) (= lambda!171703 lambda!171638))))

(assert (=> bs!851576 (= (= lt!1692722 lt!1693536) (= lambda!171703 lambda!171642))))

(declare-fun bs!851578 () Bool)

(assert (= bs!851578 (and d!1390147 b!4516020)))

(assert (=> bs!851578 (= (= lt!1692722 (extractMap!1210 (t!357715 (t!357715 (toList!4316 lm!1477))))) (= lambda!171703 lambda!171692))))

(declare-fun bs!851579 () Bool)

(assert (= bs!851579 (and d!1390147 d!1390121)))

(assert (=> bs!851579 (= (= lt!1692722 lt!1693930) (= lambda!171703 lambda!171702))))

(declare-fun bs!851580 () Bool)

(assert (= bs!851580 (and d!1390147 d!1389469)))

(assert (=> bs!851580 (= (= lt!1692722 lt!1693221) (= lambda!171703 lambda!171560))))

(assert (=> bs!851567 (= (= lt!1692722 lt!1693481) (= lambda!171703 lambda!171630))))

(declare-fun bs!851581 () Bool)

(assert (= bs!851581 (and d!1390147 d!1390021)))

(assert (=> bs!851581 (= (= lt!1692722 lt!1692939) (= lambda!171703 lambda!171678))))

(declare-fun bs!851582 () Bool)

(assert (= bs!851582 (and d!1390147 b!4515868)))

(assert (=> bs!851582 (= (= lt!1692722 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171703 lambda!171670))))

(declare-fun bs!851583 () Bool)

(assert (= bs!851583 (and d!1390147 d!1389575)))

(assert (=> bs!851583 (= (= lt!1692722 lt!1693366) (= lambda!171703 lambda!171601))))

(declare-fun bs!851584 () Bool)

(assert (= bs!851584 (and d!1390147 b!4514750)))

(assert (=> bs!851584 (= (= lt!1692722 lt!1692734) (= lambda!171703 lambda!171463))))

(declare-fun bs!851585 () Bool)

(assert (= bs!851585 (and d!1390147 d!1389935)))

(assert (=> bs!851585 (= (= lt!1692722 lt!1693704) (= lambda!171703 lambda!171666))))

(declare-fun bs!851586 () Bool)

(assert (= bs!851586 (and d!1390147 b!4515867)))

(assert (=> bs!851586 (= (= lt!1692722 lt!1693782) (= lambda!171703 lambda!171673))))

(declare-fun bs!851587 () Bool)

(assert (= bs!851587 (and d!1390147 d!1390101)))

(assert (=> bs!851587 (= (= lt!1692722 lt!1693897) (= lambda!171703 lambda!171696))))

(assert (=> bs!851566 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lm!1477)))) (= lambda!171703 lambda!171700))))

(assert (=> bs!851586 (= (= lt!1692722 (+!1527 lt!1692734 (h!56475 (_2!28820 lt!1692742)))) (= lambda!171703 lambda!171671))))

(assert (=> bs!851559 (= (= lt!1692722 (extractMap!1210 (t!357715 (toList!4316 lt!1692725)))) (= lambda!171703 lambda!171662))))

(assert (=> d!1390147 true))

(assert (=> d!1390147 (forall!10247 (toList!4315 lt!1692722) lambda!171703)))

(declare-fun lt!1693955 () Unit!94076)

(assert (=> d!1390147 (= lt!1693955 (choose!29439 lt!1692722))))

(assert (=> d!1390147 (= (lemmaContainsAllItsOwnKeys!331 lt!1692722) lt!1693955)))

(declare-fun bs!851588 () Bool)

(assert (= bs!851588 d!1390147))

(declare-fun m!5260489 () Bool)

(assert (=> bs!851588 m!5260489))

(declare-fun m!5260491 () Bool)

(assert (=> bs!851588 m!5260491))

(assert (=> bm!314424 d!1390147))

(declare-fun d!1390151 () Bool)

(declare-fun res!1879114 () Bool)

(declare-fun e!2813529 () Bool)

(assert (=> d!1390151 (=> res!1879114 e!2813529)))

(assert (=> d!1390151 (= res!1879114 ((_ is Nil!50628) (_2!28820 lt!1692742)))))

(assert (=> d!1390151 (= (forall!10247 (_2!28820 lt!1692742) lambda!171466) e!2813529)))

(declare-fun b!4516082 () Bool)

(declare-fun e!2813530 () Bool)

(assert (=> b!4516082 (= e!2813529 e!2813530)))

(declare-fun res!1879115 () Bool)

(assert (=> b!4516082 (=> (not res!1879115) (not e!2813530))))

(assert (=> b!4516082 (= res!1879115 (dynLambda!21153 lambda!171466 (h!56475 (_2!28820 lt!1692742))))))

(declare-fun b!4516083 () Bool)

(assert (=> b!4516083 (= e!2813530 (forall!10247 (t!357714 (_2!28820 lt!1692742)) lambda!171466))))

(assert (= (and d!1390151 (not res!1879114)) b!4516082))

(assert (= (and b!4516082 res!1879115) b!4516083))

(declare-fun b_lambda!154247 () Bool)

(assert (=> (not b_lambda!154247) (not b!4516082)))

(declare-fun m!5260493 () Bool)

(assert (=> b!4516082 m!5260493))

(declare-fun m!5260495 () Bool)

(assert (=> b!4516083 m!5260495))

(assert (=> d!1389279 d!1390151))

(assert (=> d!1389279 d!1389987))

(declare-fun d!1390153 () Bool)

(assert (=> d!1390153 (= (invariantList!1011 (toList!4315 lt!1693053)) (noDuplicatedKeys!256 (toList!4315 lt!1693053)))))

(declare-fun bs!851589 () Bool)

(assert (= bs!851589 d!1390153))

(declare-fun m!5260497 () Bool)

(assert (=> bs!851589 m!5260497))

(assert (=> d!1389349 d!1390153))

(declare-fun d!1390155 () Bool)

(declare-fun res!1879116 () Bool)

(declare-fun e!2813531 () Bool)

(assert (=> d!1390155 (=> res!1879116 e!2813531)))

(assert (=> d!1390155 (= res!1879116 ((_ is Nil!50629) (t!357715 (toList!4316 lm!1477))))))

(assert (=> d!1390155 (= (forall!10245 (t!357715 (toList!4316 lm!1477)) lambda!171510) e!2813531)))

(declare-fun b!4516084 () Bool)

(declare-fun e!2813532 () Bool)

(assert (=> b!4516084 (= e!2813531 e!2813532)))

(declare-fun res!1879117 () Bool)

(assert (=> b!4516084 (=> (not res!1879117) (not e!2813532))))

(assert (=> b!4516084 (= res!1879117 (dynLambda!21150 lambda!171510 (h!56476 (t!357715 (toList!4316 lm!1477)))))))

(declare-fun b!4516085 () Bool)

(assert (=> b!4516085 (= e!2813532 (forall!10245 (t!357715 (t!357715 (toList!4316 lm!1477))) lambda!171510))))

(assert (= (and d!1390155 (not res!1879116)) b!4516084))

(assert (= (and b!4516084 res!1879117) b!4516085))

(declare-fun b_lambda!154249 () Bool)

(assert (=> (not b_lambda!154249) (not b!4516084)))

(declare-fun m!5260499 () Bool)

(assert (=> b!4516084 m!5260499))

(declare-fun m!5260501 () Bool)

(assert (=> b!4516085 m!5260501))

(assert (=> d!1389349 d!1390155))

(declare-fun b!4516086 () Bool)

(declare-fun tp!1337986 () Bool)

(declare-fun e!2813533 () Bool)

(assert (=> b!4516086 (= e!2813533 (and tp_is_empty!27893 tp_is_empty!27895 tp!1337986))))

(assert (=> b!4514944 (= tp!1337984 e!2813533)))

(assert (= (and b!4514944 ((_ is Cons!50628) (_2!28820 (h!56476 (toList!4316 lm!1477))))) b!4516086))

(declare-fun b!4516087 () Bool)

(declare-fun e!2813534 () Bool)

(declare-fun tp!1337987 () Bool)

(declare-fun tp!1337988 () Bool)

(assert (=> b!4516087 (= e!2813534 (and tp!1337987 tp!1337988))))

(assert (=> b!4514944 (= tp!1337985 e!2813534)))

(assert (= (and b!4514944 ((_ is Cons!50629) (t!357715 (toList!4316 lm!1477)))) b!4516087))

(declare-fun b!4516088 () Bool)

(declare-fun tp!1337989 () Bool)

(declare-fun e!2813535 () Bool)

(assert (=> b!4516088 (= e!2813535 (and tp_is_empty!27893 tp_is_empty!27895 tp!1337989))))

(assert (=> b!4514939 (= tp!1337979 e!2813535)))

(assert (= (and b!4514939 ((_ is Cons!50628) (t!357714 (t!357714 newBucket!178)))) b!4516088))

(declare-fun b_lambda!154251 () Bool)

(assert (= b_lambda!154231 (or b!4514749 b_lambda!154251)))

(declare-fun bs!851590 () Bool)

(declare-fun d!1390157 () Bool)

(assert (= bs!851590 (and d!1390157 b!4514749)))

(assert (=> bs!851590 (= (dynLambda!21153 lambda!171464 (h!56475 (toList!4315 lt!1692734))) (contains!13343 lt!1692734 (_1!28819 (h!56475 (toList!4315 lt!1692734)))))))

(declare-fun m!5260503 () Bool)

(assert (=> bs!851590 m!5260503))

(assert (=> b!4515930 d!1390157))

(declare-fun b_lambda!154253 () Bool)

(assert (= b_lambda!154157 (or b!4514932 b_lambda!154253)))

(declare-fun bs!851591 () Bool)

(declare-fun d!1390159 () Bool)

(assert (= bs!851591 (and d!1390159 b!4514932)))

(assert (=> bs!851591 (= (dynLambda!21153 lambda!171539 (h!56475 (toList!4315 lt!1693151))) (contains!13343 lt!1693147 (_1!28819 (h!56475 (toList!4315 lt!1693151)))))))

(declare-fun m!5260505 () Bool)

(assert (=> bs!851591 m!5260505))

(assert (=> b!4515349 d!1390159))

(declare-fun b_lambda!154255 () Bool)

(assert (= b_lambda!154229 (or b!4514749 b_lambda!154255)))

(declare-fun bs!851592 () Bool)

(declare-fun d!1390161 () Bool)

(assert (= bs!851592 (and d!1390161 b!4514749)))

(assert (=> bs!851592 (= (dynLambda!21153 lambda!171465 (h!56475 (toList!4315 lt!1692943))) (contains!13343 lt!1692939 (_1!28819 (h!56475 (toList!4315 lt!1692943)))))))

(declare-fun m!5260507 () Bool)

(assert (=> bs!851592 m!5260507))

(assert (=> b!4515928 d!1390161))

(declare-fun b_lambda!154257 () Bool)

(assert (= b_lambda!154221 (or b!4514749 b_lambda!154257)))

(declare-fun bs!851593 () Bool)

(declare-fun d!1390163 () Bool)

(assert (= bs!851593 (and d!1390163 b!4514749)))

(assert (=> bs!851593 (= (dynLambda!21153 lambda!171465 (h!56475 (_2!28820 lt!1692742))) (contains!13343 lt!1692939 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> bs!851593 m!5257741))

(assert (=> d!1389989 d!1390163))

(declare-fun b_lambda!154259 () Bool)

(assert (= b_lambda!154159 (or d!1389367 b_lambda!154259)))

(declare-fun bs!851594 () Bool)

(declare-fun d!1390165 () Bool)

(assert (= bs!851594 (and d!1390165 d!1389367)))

(assert (=> bs!851594 (= (dynLambda!21150 lambda!171521 (h!56476 (toList!4316 lt!1692730))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(assert (=> bs!851594 m!5258345))

(assert (=> b!4515371 d!1390165))

(declare-fun b_lambda!154261 () Bool)

(assert (= b_lambda!154247 (or d!1389279 b_lambda!154261)))

(declare-fun bs!851595 () Bool)

(declare-fun d!1390167 () Bool)

(assert (= bs!851595 (and d!1390167 d!1389279)))

(assert (=> bs!851595 (= (dynLambda!21153 lambda!171466 (h!56475 (_2!28820 lt!1692742))) (contains!13343 lt!1692937 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun m!5260509 () Bool)

(assert (=> bs!851595 m!5260509))

(assert (=> b!4516082 d!1390167))

(declare-fun b_lambda!154263 () Bool)

(assert (= b_lambda!154211 (or d!1389427 b_lambda!154263)))

(declare-fun bs!851596 () Bool)

(declare-fun d!1390169 () Bool)

(assert (= bs!851596 (and d!1390169 d!1389427)))

(assert (=> bs!851596 (= (dynLambda!21153 lambda!171540 (h!56475 (toList!4315 lt!1692722))) (contains!13343 lt!1693145 (_1!28819 (h!56475 (toList!4315 lt!1692722)))))))

(declare-fun m!5260511 () Bool)

(assert (=> bs!851596 m!5260511))

(assert (=> b!4515798 d!1390169))

(declare-fun b_lambda!154265 () Bool)

(assert (= b_lambda!154123 (or d!1389385 b_lambda!154265)))

(declare-fun bs!851597 () Bool)

(declare-fun d!1390171 () Bool)

(assert (= bs!851597 (and d!1390171 d!1389385)))

(assert (=> bs!851597 (= (dynLambda!21150 lambda!171531 (h!56476 (toList!4316 lt!1692730))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(assert (=> bs!851597 m!5258345))

(assert (=> b!4515093 d!1390171))

(declare-fun b_lambda!154267 () Bool)

(assert (= b_lambda!154147 (or b!4514932 b_lambda!154267)))

(declare-fun bs!851598 () Bool)

(declare-fun d!1390173 () Bool)

(assert (= bs!851598 (and d!1390173 b!4514932)))

(assert (=> bs!851598 (= (dynLambda!21153 lambda!171538 (h!56475 (toList!4315 lt!1692722))) (contains!13343 lt!1692722 (_1!28819 (h!56475 (toList!4315 lt!1692722)))))))

(declare-fun m!5260513 () Bool)

(assert (=> bs!851598 m!5260513))

(assert (=> b!4515298 d!1390173))

(declare-fun b_lambda!154269 () Bool)

(assert (= b_lambda!154179 (or d!1389371 b_lambda!154269)))

(declare-fun bs!851599 () Bool)

(declare-fun d!1390175 () Bool)

(assert (= bs!851599 (and d!1390175 d!1389371)))

(assert (=> bs!851599 (= (dynLambda!21150 lambda!171525 (h!56476 (toList!4316 lt!1692737))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692737)))))))

(assert (=> bs!851599 m!5259325))

(assert (=> b!4515484 d!1390175))

(declare-fun b_lambda!154271 () Bool)

(assert (= b_lambda!154225 (or b!4514749 b_lambda!154271)))

(assert (=> b!4515911 d!1390163))

(declare-fun b_lambda!154273 () Bool)

(assert (= b_lambda!154219 (or d!1389427 b_lambda!154273)))

(declare-fun bs!851600 () Bool)

(declare-fun d!1390177 () Bool)

(assert (= bs!851600 (and d!1390177 d!1389427)))

(assert (=> bs!851600 (= (dynLambda!21153 lambda!171540 (h!56475 (_2!28820 lt!1692742))) (contains!13343 lt!1693145 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(declare-fun m!5260515 () Bool)

(assert (=> bs!851600 m!5260515))

(assert (=> b!4515858 d!1390177))

(declare-fun b_lambda!154275 () Bool)

(assert (= b_lambda!154155 (or b!4514932 b_lambda!154275)))

(declare-fun bs!851601 () Bool)

(declare-fun d!1390179 () Bool)

(assert (= bs!851601 (and d!1390179 b!4514932)))

(assert (=> bs!851601 (= (dynLambda!21153 lambda!171539 (h!56475 (toList!4315 lt!1692722))) (contains!13343 lt!1693147 (_1!28819 (h!56475 (toList!4315 lt!1692722)))))))

(declare-fun m!5260517 () Bool)

(assert (=> bs!851601 m!5260517))

(assert (=> b!4515333 d!1390179))

(declare-fun b_lambda!154277 () Bool)

(assert (= b_lambda!154217 (or d!1389235 b_lambda!154277)))

(declare-fun bs!851602 () Bool)

(declare-fun d!1390181 () Bool)

(assert (= bs!851602 (and d!1390181 d!1389235)))

(assert (=> bs!851602 (= (dynLambda!21153 lambda!171416 (h!56475 newBucket!178)) (= (hash!2783 hashF!1107 (_1!28819 (h!56475 newBucket!178))) hash!344))))

(declare-fun m!5260519 () Bool)

(assert (=> bs!851602 m!5260519))

(assert (=> b!4515849 d!1390181))

(declare-fun b_lambda!154279 () Bool)

(assert (= b_lambda!154241 (or d!1389325 b_lambda!154279)))

(declare-fun bs!851603 () Bool)

(declare-fun d!1390183 () Bool)

(assert (= bs!851603 (and d!1390183 d!1389325)))

(assert (=> bs!851603 (= (dynLambda!21150 lambda!171497 (h!56476 (toList!4316 lt!1692725))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692725)))))))

(assert (=> bs!851603 m!5259777))

(assert (=> b!4516011 d!1390183))

(declare-fun b_lambda!154281 () Bool)

(assert (= b_lambda!154175 (or start!446664 b_lambda!154281)))

(declare-fun bs!851604 () Bool)

(declare-fun d!1390185 () Bool)

(assert (= bs!851604 (and d!1390185 start!446664)))

(assert (=> bs!851604 (= (dynLambda!21150 lambda!171413 (h!56476 (t!357715 (toList!4316 lm!1477)))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> bs!851604 m!5260369))

(assert (=> b!4515437 d!1390185))

(declare-fun b_lambda!154283 () Bool)

(assert (= b_lambda!154131 (or d!1389397 b_lambda!154283)))

(declare-fun bs!851605 () Bool)

(declare-fun d!1390187 () Bool)

(assert (= bs!851605 (and d!1390187 d!1389397)))

(assert (=> bs!851605 (= (dynLambda!21150 lambda!171532 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742)))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 (+!1526 lt!1692730 lt!1692742))))))))

(assert (=> bs!851605 m!5259119))

(assert (=> b!4515140 d!1390187))

(declare-fun b_lambda!154285 () Bool)

(assert (= b_lambda!154151 (or b!4514932 b_lambda!154285)))

(declare-fun bs!851606 () Bool)

(declare-fun d!1390189 () Bool)

(assert (= bs!851606 (and d!1390189 b!4514932)))

(assert (=> bs!851606 (= (dynLambda!21153 lambda!171539 (h!56475 (_2!28820 lt!1692742))) (contains!13343 lt!1693147 (_1!28819 (h!56475 (_2!28820 lt!1692742)))))))

(assert (=> bs!851606 m!5258141))

(assert (=> d!1389599 d!1390189))

(declare-fun b_lambda!154287 () Bool)

(assert (= b_lambda!154167 (or start!446664 b_lambda!154287)))

(assert (=> d!1389677 d!1389433))

(declare-fun b_lambda!154289 () Bool)

(assert (= b_lambda!154135 (or d!1389405 b_lambda!154289)))

(declare-fun bs!851607 () Bool)

(declare-fun d!1390191 () Bool)

(assert (= bs!851607 (and d!1390191 d!1389405)))

(assert (=> bs!851607 (= (dynLambda!21150 lambda!171535 (h!56476 (toList!4316 lm!1477))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(assert (=> bs!851607 m!5258165))

(assert (=> b!4515155 d!1390191))

(declare-fun b_lambda!154291 () Bool)

(assert (= b_lambda!154227 (or b!4514749 b_lambda!154291)))

(declare-fun bs!851608 () Bool)

(declare-fun d!1390193 () Bool)

(assert (= bs!851608 (and d!1390193 b!4514749)))

(assert (=> bs!851608 (= (dynLambda!21153 lambda!171465 (h!56475 (toList!4315 lt!1692734))) (contains!13343 lt!1692939 (_1!28819 (h!56475 (toList!4315 lt!1692734)))))))

(declare-fun m!5260521 () Bool)

(assert (=> bs!851608 m!5260521))

(assert (=> b!4515926 d!1390193))

(declare-fun b_lambda!154293 () Bool)

(assert (= b_lambda!154141 (or b!4514932 b_lambda!154293)))

(assert (=> b!4515251 d!1390189))

(declare-fun b_lambda!154295 () Bool)

(assert (= b_lambda!154121 (or d!1389351 b_lambda!154295)))

(declare-fun bs!851609 () Bool)

(declare-fun d!1390195 () Bool)

(assert (= bs!851609 (and d!1390195 d!1389351)))

(assert (=> bs!851609 (= (dynLambda!21150 lambda!171520 (h!56476 (toList!4316 lt!1692730))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(assert (=> bs!851609 m!5258345))

(assert (=> b!4515073 d!1390195))

(declare-fun b_lambda!154297 () Bool)

(assert (= b_lambda!154161 (or d!1389369 b_lambda!154297)))

(declare-fun bs!851610 () Bool)

(declare-fun d!1390197 () Bool)

(assert (= bs!851610 (and d!1390197 d!1389369)))

(assert (=> bs!851610 (= (dynLambda!21150 lambda!171524 (h!56476 (toList!4316 lm!1477))) (allKeysSameHash!1008 (_2!28820 (h!56476 (toList!4316 lm!1477))) (_1!28820 (h!56476 (toList!4316 lm!1477))) hashF!1107))))

(declare-fun m!5260523 () Bool)

(assert (=> bs!851610 m!5260523))

(assert (=> b!4515373 d!1390197))

(declare-fun b_lambda!154299 () Bool)

(assert (= b_lambda!154169 (or d!1389333 b_lambda!154299)))

(declare-fun bs!851611 () Bool)

(declare-fun d!1390199 () Bool)

(assert (= bs!851611 (and d!1390199 d!1389333)))

(assert (=> bs!851611 (= (dynLambda!21150 lambda!171504 (h!56476 (toList!4316 lt!1692730))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lt!1692730)))))))

(assert (=> bs!851611 m!5258345))

(assert (=> b!4515413 d!1390199))

(declare-fun b_lambda!154301 () Bool)

(assert (= b_lambda!154171 (or d!1389279 b_lambda!154301)))

(declare-fun bs!851612 () Bool)

(declare-fun d!1390201 () Bool)

(assert (= bs!851612 (and d!1390201 d!1389279)))

(assert (=> bs!851612 (= (dynLambda!21153 lambda!171466 (h!56475 (toList!4315 lt!1692734))) (contains!13343 lt!1692937 (_1!28819 (h!56475 (toList!4315 lt!1692734)))))))

(declare-fun m!5260525 () Bool)

(assert (=> bs!851612 m!5260525))

(assert (=> b!4515417 d!1390201))

(declare-fun b_lambda!154303 () Bool)

(assert (= b_lambda!154215 (or d!1389431 b_lambda!154303)))

(declare-fun bs!851613 () Bool)

(declare-fun d!1390203 () Bool)

(assert (= bs!851613 (and d!1390203 d!1389431)))

(assert (=> bs!851613 (= (dynLambda!21150 lambda!171543 (h!56476 (toList!4316 lm!1477))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(assert (=> bs!851613 m!5258165))

(assert (=> b!4515841 d!1390203))

(declare-fun b_lambda!154305 () Bool)

(assert (= b_lambda!154249 (or d!1389349 b_lambda!154305)))

(declare-fun bs!851614 () Bool)

(declare-fun d!1390205 () Bool)

(assert (= bs!851614 (and d!1390205 d!1389349)))

(assert (=> bs!851614 (= (dynLambda!21150 lambda!171510 (h!56476 (t!357715 (toList!4316 lm!1477)))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (t!357715 (toList!4316 lm!1477))))))))

(assert (=> bs!851614 m!5260369))

(assert (=> b!4516084 d!1390205))

(declare-fun b_lambda!154307 () Bool)

(assert (= b_lambda!154239 (or d!1389421 b_lambda!154307)))

(declare-fun bs!851615 () Bool)

(declare-fun d!1390207 () Bool)

(assert (= bs!851615 (and d!1390207 d!1389421)))

(assert (=> bs!851615 (= (dynLambda!21150 lambda!171536 (h!56476 (toList!4316 lm!1477))) (noDuplicateKeys!1154 (_2!28820 (h!56476 (toList!4316 lm!1477)))))))

(assert (=> bs!851615 m!5258165))

(assert (=> b!4516005 d!1390207))

(declare-fun b_lambda!154309 () Bool)

(assert (= b_lambda!154139 (or start!446664 b_lambda!154309)))

(assert (=> d!1389555 d!1389435))

(check-sat (not b!4515922) (not b!4515626) (not b!4515804) (not b!4515637) (not d!1389551) (not b!4515023) (not b!4515372) (not d!1389441) (not b!4515779) (not b!4515646) (not b!4515805) (not b!4515790) (not b!4516086) (not b_lambda!154259) (not b!4515991) (not b!4515929) (not d!1389769) (not b!4515752) (not bs!851601) (not bm!314440) (not bm!314447) (not b!4515869) tp_is_empty!27895 (not b!4515116) (not d!1389575) (not b!4515621) (not b!4515788) (not b!4515094) (not b_lambda!154279) (not bm!314536) (not d!1389459) (not d!1389491) (not d!1389857) (not b!4515337) (not d!1390089) (not b!4515966) (not b!4515374) (not b!4515286) (not d!1389645) (not b!4515171) (not bm!314438) (not b!4515806) (not b!4515903) (not b!4515098) (not d!1389469) (not d!1390153) (not b!4515175) (not b!4515853) (not b!4515408) (not d!1389935) (not b!4515931) (not b!4516041) (not d!1389949) (not b!4515914) (not b!4515645) (not d!1390097) (not bm!314515) (not b!4515014) (not b!4515071) (not bm!314451) (not d!1389695) (not bm!314475) (not bm!314439) (not bm!314510) (not b_lambda!154303) (not d!1389849) (not d!1389843) (not b!4515402) (not b!4515084) (not b!4515989) (not bm!314506) (not b!4515642) (not d!1390101) (not b!4515473) (not b!4515225) (not b!4515479) (not bs!851596) (not d!1389585) (not bs!851608) (not b!4515381) (not b!4515433) (not d!1389655) (not b!4516033) (not b!4515757) (not b!4516004) (not bs!851591) (not b!4515842) (not bs!851599) (not b!4515913) (not b!4515649) (not b!4515912) (not d!1389561) (not b!4515334) (not b!4515491) (not b!4515289) (not b!4515099) (not d!1389847) (not b!4515486) (not b!4515336) (not b!4515625) (not d!1390015) (not d!1389499) (not bs!851597) (not b!4515285) (not b_lambda!154277) (not d!1389925) (not b_lambda!154115) (not bs!851614) (not b!4515778) (not bs!851615) (not b!4514959) (not d!1389547) (not b_lambda!154295) (not b!4515938) (not b!4515050) (not b!4515844) (not b!4515065) (not b!4515598) (not bs!851598) (not b!4515583) (not bs!851593) (not b_lambda!154235) (not b!4516043) (not b!4515226) (not b!4516019) (not b_lambda!154271) (not bm!314470) (not b!4515049) (not d!1389599) (not b!4515962) (not b!4515750) (not d!1389745) (not b!4515013) (not b_lambda!154251) (not b!4515227) (not b!4515744) (not b!4515599) (not b!4515063) (not b!4515859) (not b!4515862) (not b!4515064) (not bm!314532) (not b!4516087) (not b!4515021) (not b!4515472) (not b_lambda!154267) (not d!1390121) (not b!4515936) (not d!1389607) (not b!4515847) (not b!4515156) (not b!4515052) (not d!1389991) (not b!4515948) (not b!4515103) (not d!1389951) (not b!4515252) (not d!1389761) (not b!4515973) (not b!4515406) (not bm!314446) (not b!4515350) (not d!1390109) (not b!4515850) (not b!4515917) (not d!1389533) (not d!1389649) (not b!4515799) (not b_lambda!154263) (not b!4515748) (not d!1390147) (not b!4515549) (not bm!314448) (not b!4514962) (not bm!314526) (not b!4515341) (not b!4515421) (not bm!314500) (not b!4515054) (not b!4515647) (not b!4516040) (not d!1389675) (not b!4515144) (not bs!851609) (not b!4515024) (not b!4515597) (not d!1389511) (not d!1389673) (not b!4516003) (not bm!314523) (not b!4515902) (not d!1389619) (not b!4515068) (not b_lambda!154273) (not d!1390025) (not b_lambda!154283) (not b!4516017) (not b!4514950) (not b!4515069) (not b!4516012) (not b!4515062) (not b!4515904) (not d!1389943) (not d!1389505) (not b!4515464) (not b!4515419) (not b!4515919) (not bm!314441) (not b!4515498) (not b!4515483) (not b!4515986) (not b_lambda!154275) (not b!4515494) (not d!1389437) (not bm!314530) (not b!4515083) (not b!4515340) (not b!4515343) (not d!1389989) (not d!1389455) (not b!4515291) (not b_lambda!154281) (not b!4515802) (not d!1389457) (not b!4515759) (not b!4515906) (not bs!851592) (not b!4515376) (not b!4515429) (not b!4515403) (not b!4514987) (not d!1389493) (not b_lambda!154127) (not b!4515982) (not b!4515552) (not b!4516085) (not b!4515796) (not b!4515353) (not b!4515808) (not bm!314534) (not b!4515335) (not b!4514957) (not d!1389755) (not b!4515441) (not b!4515432) (not b_lambda!154113) (not b!4515493) (not b!4515257) (not b!4514980) (not b!4515643) (not d!1389513) (not d!1389953) (not b!4515418) (not b_lambda!154255) (not d!1390055) (not b!4515781) (not d!1389565) (not b!4515244) (not b!4515074) (not b!4515306) (not b_lambda!154111) (not b_lambda!154291) (not d!1389733) (not d!1389635) (not b!4515416) (not b!4515055) (not b!4514958) (not b!4515067) (not b!4515022) (not bs!851602) (not bm!314501) (not b!4515400) (not b!4516083) (not b!4515255) (not d!1389705) (not d!1389737) (not b!4515247) (not d!1390099) (not b!4515907) (not b!4515477) (not bm!314513) (not b_lambda!154173) (not b!4515173) (not b!4515127) (not bm!314455) (not d!1390095) (not b!4515434) (not b!4515616) (not b!4515018) (not b!4515867) (not b!4515865) (not b!4515640) (not b!4515915) (not d!1389449) (not b!4515287) (not bm!314472) (not b!4515955) (not bm!314504) (not b!4515908) (not d!1389715) (not bs!851604) (not d!1389503) (not d!1389523) (not b!4515758) (not b!4515861) (not d!1389833) (not b!4515253) (not b!4515993) (not bm!314436) (not bs!851600) (not b!4515801) (not b_lambda!154163) (not bs!851611) (not bm!314498) (not b!4515921) (not d!1390081) (not d!1389691) (not b!4515508) (not bm!314531) (not d!1390021) (not b!4515954) (not b!4515100) (not b!4515028) (not bs!851612) (not b_lambda!154297) (not b!4515159) (not d!1389549) (not b_lambda!154269) (not b!4515745) (not d!1389759) (not b!4515851) (not b!4516088) (not b!4515800) (not b!4515481) (not b!4516021) (not d!1389707) (not b!4515223) (not d!1389751) (not b!4515503) (not b!4515339) (not b!4515414) (not d!1389461) (not d!1389921) (not b!4515436) (not b!4515595) (not bm!314456) (not b!4515299) (not b!4515438) (not b!4515633) (not bs!851607) (not d!1389665) (not d!1389529) (not b!4515423) (not b!4515923) (not b!4515742) (not b!4515994) (not b_lambda!154307) (not b!4516014) (not d!1389709) (not b!4515641) (not bs!851610) (not bs!851594) (not d!1389447) (not b!4515411) (not b!4515910) (not b!4515927) (not d!1389683) (not b_lambda!154285) (not b!4515365) (not b!4515085) (not d!1390039) (not d!1389775) (not b!4515632) (not d!1389807) (not b_lambda!154257) (not b!4515485) (not b_lambda!154253) (not d!1389489) (not b!4515163) (not b!4515082) (not d!1389439) (not bs!851605) (not b!4515506) (not bm!314535) (not b_lambda!154309) (not b!4515554) (not d!1389815) (not bs!851590) (not b!4516016) (not b!4515445) (not b!4516009) (not b!4515475) (not b!4515600) (not b!4515961) (not b!4514964) (not b_lambda!154287) (not d!1389477) (not b!4515499) (not bm!314503) (not b!4515080) (not b_lambda!154305) (not b_lambda!154265) (not d!1390093) (not b!4515169) (not b!4515992) (not b!4515443) (not d!1390019) (not bm!314514) (not b_lambda!154261) (not b!4515146) (not b!4514986) (not b!4515488) (not d!1389517) (not d!1390051) (not d!1389593) (not b!4515786) (not b!4515749) (not b_lambda!154289) (not bm!314522) (not bm!314476) (not b!4515293) (not b!4515447) (not b!4515228) (not bs!851613) (not b!4515918) (not bs!851603) (not d!1389479) (not b!4515404) (not b!4515860) (not b!4515141) (not b!4515095) (not bs!851595) (not b!4515292) (not d!1389915) (not b_lambda!154299) (not d!1389855) (not d!1389537) (not bm!314460) (not d!1389693) (not b!4516045) (not b_lambda!154293) (not d!1389765) (not bm!314457) (not bm!314499) (not d!1390073) tp_is_empty!27893 (not b!4515295) (not bm!314505) (not d!1389473) (not bm!314471) (not b!4516006) (not b!4515431) (not b_lambda!154301) (not bs!851606) (not bm!314502) (not b!4515288) (not b!4515614) (not d!1389501) (not bm!314450) (not b!4515550))
(check-sat)
